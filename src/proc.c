#include "global.h"

#include "proc.h"

extern struct Proc gUnknown_0200D610[0x20];
extern struct Proc * gUnknown_0200E390[0x20 + 1];
extern struct Proc ** gUnknown_0200E414;
extern struct Proc * gUnknown_0200E418[8];

extern int gUnknown_03001FDC;

void Proc_Init(void)
{
    int i;

    for (i = 0; i < 0x20; i++)
    {
        struct Proc * proc = &gUnknown_0200D610[i];
        proc->proc_script = NULL;
        proc->proc_scrCur = NULL;
        proc->proc_scrUnk = NULL;
        proc->proc_endCb = NULL;
        proc->proc_idleCb = NULL;
        proc->proc_parent = NULL;
        proc->proc_child = NULL;
        proc->proc_next = NULL;
        proc->proc_prev = NULL;
        proc->proc_sleepTime = 0;
        proc->proc_mark = 0;
        proc->proc_flags = 0;
        proc->proc_lockCnt = 0;

        gUnknown_0200E390[i] = proc;
    }

    gUnknown_0200E390[0x20] = NULL;
    gUnknown_0200E414 = gUnknown_0200E390;

    for (i = 0; i < 8; i++)
    {
        gUnknown_0200E418[i] = NULL;
    }

    gUnknown_03001FDC = 1;

    return;
}

ProcPtr Proc_Start(const struct ProcCmd * script, ProcPtr parent)
{
    struct Proc * proc = AllocateProcess();

    proc->proc_script = script;
    proc->proc_scrCur = script;
    proc->proc_scrUnk = script;
    proc->proc_endCb = NULL;
    proc->proc_idleCb = NULL;
    proc->proc_parent = NULL;
    proc->proc_child = NULL;
    proc->proc_next = NULL;
    proc->proc_prev = NULL;
    proc->proc_sleepTime = 0;
    proc->proc_mark = 0;
    proc->proc_lockCnt = 0;
    proc->proc_flags = (1 << 3);

    if ((s32)parent < 8)
    {
        InsertRootProcess(proc, (s32)parent);
    }
    else
    {
        InsertChildProcess(proc, parent);
    }
    
    RunProcessScript(proc);

    proc->proc_flags &= ~(1 << 3);

    return proc;
}

ProcPtr Proc_StartBlocking(const struct ProcCmd * script, ProcPtr parent)
{
    struct Proc * proc = Proc_Start(script, parent);

    if (!proc->proc_script)
    {
        return 0;
    }

    proc->proc_flags |= 2;
    ((struct Proc *)proc->proc_parent)->proc_lockCnt++;

    return proc;
}

void DeleteProcessRecursive(struct Proc * proc)
{
    if (proc->proc_prev)
    {
        DeleteProcessRecursive(proc->proc_prev);
    }

    if (proc->proc_child)
    {
        DeleteProcessRecursive(proc->proc_child);
    }

    if (!(proc->proc_flags & 1))
    {
        if (proc->proc_endCb)
        {
            proc->proc_endCb(proc);
        }

        sub_0801CA14(proc);

        proc->proc_script = NULL;
        proc->proc_scrCur = NULL;
        proc->proc_idleCb = NULL;

        proc->proc_flags |= 1;

        if (proc->proc_flags & 2)
        {
            ((struct Proc *)proc->proc_parent)->proc_lockCnt--;
        }
    }

    return;
}

void Proc_End(ProcPtr proc)
{
    if (proc)
    {
        UnlinkProcess(proc);
        DeleteProcessRecursive(proc);
    }

    return;
}

ProcPtr AllocateProcess(void)
{
    ProcPtr proc = *gUnknown_0200E414;
    gUnknown_0200E414++;

    return proc;
}

void sub_0801CA14(ProcPtr proc)
{
    gUnknown_0200E414--;
    *gUnknown_0200E414 = proc;
    return;
}

void InsertRootProcess(struct Proc * proc, s32 treeNum)
{
    if (gUnknown_0200E418[treeNum] != NULL)
    {
        gUnknown_0200E418[treeNum]->proc_next = proc;
        proc->proc_prev = gUnknown_0200E418[treeNum];
    }

    proc->proc_parent = (ProcPtr)treeNum;
    gUnknown_0200E418[treeNum] = proc;

    return;
}

void InsertChildProcess(struct Proc * proc, struct Proc * parent)
{
    if (parent->proc_child)
    {
        ((struct Proc *)parent->proc_child)->proc_next = proc;
        proc->proc_prev = parent->proc_child;
    }

    parent->proc_child = proc;
    proc->proc_parent = parent;

    return;
}

void UnlinkProcess(struct Proc * proc)
{
    if (proc->proc_next)
    {
        ((struct Proc *)proc->proc_next)->proc_prev = proc->proc_prev;
    }

    if (proc->proc_prev)
    {
        ((struct Proc *)proc->proc_prev)->proc_next = proc->proc_next;
    }

    if ((s32)proc->proc_parent > 8)
    {
        if (((struct Proc *)proc->proc_parent)->proc_child == proc)
        {
            ((struct Proc *)proc->proc_parent)->proc_child = proc->proc_prev;
        }
    }
    else
    {
        s32 treeNum = (s32)proc->proc_parent;

        if (gUnknown_0200E418[treeNum] == proc)
        {
            gUnknown_0200E418[treeNum] = proc->proc_prev;
        }
    }

    proc->proc_next = NULL;
    proc->proc_prev = NULL;

    return;
}

void sub_0801CA9C(struct Proc * proc)
{
    if (proc == gUnknown_0200E418[0] && gUnknown_03001FDC == 0)
    {
        return;
    }

    if (proc->proc_prev)
    {
        sub_0801CA9C(proc->proc_prev);
    }

    if (proc->proc_lockCnt == 0 && !(proc->proc_flags & 8))
    {
        if (proc->proc_idleCb == NULL)
        {
            RunProcessScript(proc);
        }

        if (proc->proc_idleCb)
        {
            proc->proc_idleCb(proc);
        }

        if (proc->proc_flags & 1)
        {
            return;
        }
    }

    if (proc->proc_child)
    {
        sub_0801CA9C(proc->proc_child);
    }

    return;
}

void sub_0801CB10(ProcPtr proc)
{
    if (proc != NULL)
    {
        sub_0801CA9C(proc);
    }

    return;
}

void sub_0801CB20(ProcPtr proc)
{
    ((struct Proc *)proc)->proc_idleCb = NULL;
    return;
}

ProcPtr sub_0801CB28(const struct ProcCmd * script)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_script == script)
        {
            return it;
        }
    }

    return NULL;
}

s32 sub_0801CB48(const struct ProcCmd * script)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;
    s32 count = 0;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_script != script)
        {
            continue;
        }

        count++;
    }

    return count;
}

ProcPtr sub_0801CB70(const struct ProcCmd * script)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_script != script)
        {
            continue;
        }

        if (it->proc_lockCnt != 0)
        {
            continue;
        }

        return it;
    }

    return NULL;
}

ProcPtr sub_0801CB9C(s32 mark)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_script == NULL)
        {
            continue;
        }

        if (it->proc_mark != mark)
        {
            continue;
        }

        return it;
    }

    return NULL;
}

void sub_0801CBC8(ProcPtr proc, s32 label)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrCur;

    for (; cmd->opcode != 0; cmd++)
    {
        if (cmd->opcode != 0xB)
        {
            continue;
        }

        if (cmd->dataImm != label)
        {
            continue;
        }

        p->proc_scrUnk = cmd;
        p->proc_idleCb = NULL;

        return;
    }

    return;
}

void sub_0801CC00(ProcPtr proc, const struct ProcCmd * script)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_scrCur = script;
    p->proc_scrUnk = script;
    p->proc_idleCb = NULL;

    return;
}

void sub_0801CC0C(ProcPtr proc, u8 mark)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_mark = mark;

    return;
}

void sub_0801CC14(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_endCb = func;

    return;
}

void sub_0801CC18(ProcFunc func)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_script != NULL)
        {
            func(it);
        }
    }

    return;
}

void sub_0801CC40(const struct ProcCmd * script, ProcFunc func)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_script == script)
        {
            func(it);
        }
    }

    return;
}

void sub_0801CC68(s32 mark, ProcFunc func)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_mark == mark)
        {
            func(it);
        }
    }

    return;
}

void sub_0801CC94(s32 mark)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_mark == mark)
        {
            it->proc_lockCnt++;
        }
    }

    return;
}

void sub_0801CCB8(s32 mark)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_mark == mark)
        {
            it->proc_lockCnt--;
        }
    }

    return;
}

void sub_0801CCDC(s32 mark)
{
    s32 i;

    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it->proc_mark == mark)
        {
            Proc_End(it);
        }
    }

    return;
}

void sub_0801CD08(ProcPtr proc)
{
    Proc_End(proc);
    return;
}

void sub_0801CD14(const struct ProcCmd * script)
{
    sub_0801CC40(script, sub_0801CD08);
    return;
}

void sub_0801CD24(ProcPtr proc)
{
    sub_0801CB20(proc);
    return;
}

void sub_0801CD30(const struct ProcCmd * script)
{
    sub_0801CC40(script, sub_0801CD24);
    return;
}

void sub_0801CD40(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc *)proc);

    if (p->proc_prev)
    {
        sub_0801CD40(p->proc_prev, func);
    }

    func(proc);

    if (p->proc_child)
    {
        sub_0801CD40(p->proc_child, func);
    }

    return;
}

void sub_0801CD68(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc *)proc);

    func(proc);

    if (p->proc_child)
    {
        sub_0801CD40(p->proc_child, func);
    }

    return;
}

bool8 sub_0801CD84(ProcPtr proc)
{
    Proc_End(proc);
    return 0;
}

bool8 sub_0801CD90(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);
    p->proc_scrUnk++;
    return 1;
}

bool8 sub_0801CD9C(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    ProcFunc func = p->proc_scrUnk->dataPtr;

    p->proc_scrUnk++;
    func(p);

    return 1;
}

bool8 sub_0801CDB0(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    bool8 (*func)(ProcPtr) = p->proc_scrUnk->dataPtr;

    p->proc_scrUnk++;
    return func(p);
}

bool8 sub_0801CDC8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    s16 arg = p->proc_scrUnk->dataImm;
    bool8 (*func)(s16, ProcPtr) = p->proc_scrUnk->dataPtr;

    p->proc_scrUnk++;
    return func(arg, p);
}

bool8 sub_0801CDE8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    bool8 (*func)(ProcPtr) = p->proc_scrUnk->dataPtr;

    p->proc_scrUnk++;

    if (func(p) == TRUE)
    {
        p->proc_scrUnk--;
        return 0;
    }

    return 1;
}

bool8 sub_0801CE14(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_idleCb = p->proc_scrUnk->dataPtr;
    p->proc_scrUnk++;

    return 0;
}

bool8 sub_0801CE24(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    ProcFunc func = p->proc_scrUnk->dataPtr;
    sub_0801CC14(p, func);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801CE40(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    Proc_Start(cmd, p);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801CE5C(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    Proc_StartBlocking(cmd, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 sub_0801CE78(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    Proc_Start(cmd, (ProcPtr)(s32)p->proc_sleepTime);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801CE98(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;

    s32 ret = (s32)sub_0801CB28(cmd);

    if (((0 - ret) | ret) < 0) // ???
    {
        return 0;
    }

    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801CEC0(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    sub_0801CD14(cmd);

    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801CEDC(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    sub_0801CD30(cmd);

    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801CEF8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801CF04(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    sub_0801CC00(proc, cmd);

    return 1;
}

bool8 sub_0801CF14(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0801CBC8(proc, p->proc_scrUnk->dataImm);

    return 1;
}

bool8 sub_0801CF28(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    bool8 (*func)(void) = p->proc_scrUnk->dataPtr;

    if (func == NULL || func() == TRUE)
    {
        s16 label = p->proc_scrUnk->dataImm;
        sub_0801CBC8(p, label);
        return 1;
    }

    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801CF5C(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    bool8 (*func)(void) = p->proc_scrUnk->dataPtr;

    if (func == NULL || func() == FALSE)
    {
        s16 label = p->proc_scrUnk->dataImm;
        sub_0801CBC8(p, label);
        return 1;
    }

    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801CF90(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0803B5A4(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

void sub_0801CFAC(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_sleepTime--;

    if (p->proc_sleepTime == 0)
    {
        sub_0801CB20(p);
    }

    return;
}

bool8 sub_0801CFC8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd ** proc_scrUnk = &p->proc_scrUnk;

    if ((*proc_scrUnk)->dataImm != 0)
    {
        p->proc_sleepTime = (*proc_scrUnk)->dataImm;
        p->proc_idleCb = sub_0801CFAC;
    }

    (*proc_scrUnk)++;

    return 0;
}

bool8 sub_0801CFEC(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_mark = p->proc_scrUnk->dataImm;
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D000(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D00C(ProcPtr proc)
{
    return 0;
}

bool8 sub_0801D010(ProcPtr proc)
{
    s32 i;
    s32 j;

    struct Proc * p = ((struct Proc *)proc);
    struct Proc * ptr = gUnknown_0200D610;

    for (i = 0, j = 0; i < 0x20; i++, ptr++)
    {
        if (ptr->proc_script == p->proc_script)
        {
            j++;
        }
    }

    if (j > 1)
    {
        Proc_End(p);
        return 0;
    }

    p->proc_scrUnk++;
    return 1;
}

bool8 sub_0801D050(ProcPtr proc)
{
    s32 i;
    s32 j;

    struct Proc * p = ((struct Proc *)proc);
    struct Proc * it = gUnknown_0200D610;

    for (i = 0; i < 0x20; i++, it++)
    {
        if (it == p)
        {
            continue;
        }

        if (it->proc_script != p->proc_script)
        {
            continue;
        }

        Proc_End(it);
        break;
    }

    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D088(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D094(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_flags |= 4;
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D0AC(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0803B524(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D0C8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0803B4DC(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D0E4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_08013098(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 sub_0801D104(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_080130B0(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 sub_0801D124(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_08011550(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D140(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0801156C(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D15C(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_08011588(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D178(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_080115B4(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D194(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_080115E0(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 sub_0801D1B4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_080115F8(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 sub_0801D1D4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_08011610(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 sub_0801D1F4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0801163C(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 sub_0801D214(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);
    s32 arg_0 = (s32)p->proc_scrUnk->dataPtr;
    s32 arg_1 = p->proc_sleepTime;

    sub_080152C0(arg_0, arg_1);
    p->proc_scrUnk++;

    return 1;
}

bool8 sub_0801D238(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);
    s32 arg_0 = (s32)p->proc_scrUnk->dataPtr;

    if (sub_08015BD0(arg_0) != -1)
    {
        return 0;
    }

    p->proc_scrUnk++;

    return 1;
}

bool8 (*gUnknown_0848B5DC[])(ProcPtr) =
{
    [0x00] = sub_0801CD84,
    [0x01] = sub_0801CD90,
    [0x02] = sub_0801CD9C,
    [0x03] = sub_0801CE14,
    [0x04] = sub_0801CE24,
    [0x05] = sub_0801CE40,
    [0x06] = sub_0801CE5C,
    [0x07] = sub_0801CE78,
    [0x08] = sub_0801CE98,
    [0x09] = sub_0801CEC0,
    [0x0A] = sub_0801CEDC,
    [0x0B] = sub_0801CEF8,
    [0x0C] = sub_0801CF14,
    [0x0D] = sub_0801CF04,
    [0x0E] = sub_0801CFC8,
    [0x0F] = sub_0801CFEC,
    [0x10] = sub_0801D00C,
    [0x11] = sub_0801D010,
    [0x12] = sub_0801D094,
    [0x13] = sub_0801D000,
    [0x14] = sub_0801CDE8,
    [0x15] = sub_0801D088,
    [0x16] = sub_0801CDB0,
    [0x17] = sub_0801D050,
    [0x18] = sub_0801CDC8,
    [0x19] = sub_0801D214,
    [0x1A] = sub_0801D238,
    [0x1B] = sub_0801D0AC,
    [0x1C] = sub_0801D0C8,
    [0x1D] = sub_0801D0E4,
    [0x1E] = sub_0801D104,
    [0x1F] = sub_0801D124,
    [0x20] = sub_0801D140,
    [0x21] = sub_0801D15C,
    [0x22] = sub_0801D178,
    [0x23] = sub_0801D194,
    [0x24] = sub_0801D1B4,
    [0x25] = sub_0801D1D4,
    [0x26] = sub_0801D1F4,
    [0x27] = sub_0801CF28,
    [0x28] = sub_0801CF5C,
    [0x29] = sub_0801CF90,
    [0x2A] = sub_0801CEF8,
};

void RunProcessScript(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    if (p->proc_script == NULL)
    {
        return;
    }

    if (p->proc_lockCnt != 0)
    {
        return;
    }

    if (p->proc_idleCb != NULL)
    {
        return;
    }

    while (gUnknown_0848B5DC[p->proc_scrUnk->opcode](p))
    {
        if (p->proc_script == NULL || p->proc_lockCnt != 0)
        {
            return;
        }
    }
}

void sub_0801D2B4(struct Proc * proc)
{
    return;
}

void sub_0801D2B8(struct Proc * proc, s32 * indent)
{
    if (proc->proc_prev != NULL)
    {
        sub_0801D2B8(proc->proc_prev, indent);
    }

    sub_0801D2B4(proc);

    if (proc->proc_child != NULL)
    {
        *indent += 2;
        sub_0801D2B8(proc->proc_child, indent);
        *indent -= 2;
    }
}

void sub_0801D2F0(struct Proc * proc)
{
    s32 indent = 4;

    sub_0801D2B4(proc);

    if (proc->proc_child != NULL)
    {
        indent += 2;
        sub_0801D2B8(proc->proc_child, &indent);
        indent -= 2;
    }
}

void sub_0801D324(void)
{
    return;
}

void sub_0801D328(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc *) proc);
    p->proc_idleCb = func;
    return;
}

void sub_0801D32C(struct Proc * proc)
{
    proc->proc_lockCnt++;
    return;
}

void sub_0801D338(struct Proc * proc)
{
    proc->proc_lockCnt--;
    return;
}

void sub_0801D344(void)
{
    do { } while (1);
}
