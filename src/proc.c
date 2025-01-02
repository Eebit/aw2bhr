#include "global.h"

#include "proc.h"

enum
{
    PROC_COUNT = 32,
};

enum
{
    PROC_FLAG_ENDED    = (1 << 0),
    PROC_FLAG_BLOCKING = (1 << 1),
    PROC_FLAG_UNK2     = (1 << 2),
    PROC_FLAG_STARTING = (1 << 3),
};

struct Proc EWRAM_DATA sProcArray[PROC_COUNT] = {};
struct Proc * EWRAM_DATA sProcAllocList[PROC_COUNT + 1] = {};
struct Proc ** EWRAM_DATA sProcAllocListHead = NULL;
struct Proc * EWRAM_DATA gProcTreeRootArray[8] = {};

s32 IWRAM_DATA gUnknown_03001FDC;

void Proc_Init(void)
{
    s32 i;

    for (i = 0; i < PROC_COUNT; i++)
    {
        struct Proc * proc = &sProcArray[i];
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

        sProcAllocList[i] = proc;
    }

    sProcAllocList[PROC_COUNT] = NULL;
    sProcAllocListHead = sProcAllocList;

    for (i = 0; i < 8; i++)
    {
        gProcTreeRootArray[i] = NULL;
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
    proc->proc_flags = PROC_FLAG_STARTING;

    if ((s32)parent < 8)
    {
        InsertRootProcess(proc, (s32)parent);
    }
    else
    {
        InsertChildProcess(proc, parent);
    }
    
    RunProcessScript(proc);

    proc->proc_flags &= ~PROC_FLAG_STARTING;

    return proc;
}

ProcPtr Proc_StartBlocking(const struct ProcCmd * script, ProcPtr parent)
{
    struct Proc * proc = Proc_Start(script, parent);

    if (!proc->proc_script)
    {
        return NULL;
    }

    proc->proc_flags |= PROC_FLAG_BLOCKING;
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

    if (!(proc->proc_flags & PROC_FLAG_ENDED))
    {
        if (proc->proc_endCb)
        {
            proc->proc_endCb(proc);
        }

        FreeProcess(proc);

        proc->proc_script = NULL;
        proc->proc_scrCur = NULL;
        proc->proc_idleCb = NULL;

        proc->proc_flags |= PROC_FLAG_ENDED;

        if (proc->proc_flags & PROC_FLAG_BLOCKING)
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
    ProcPtr proc = *sProcAllocListHead;
    sProcAllocListHead++;

    return proc;
}

void FreeProcess(ProcPtr proc)
{
    sProcAllocListHead--;
    *sProcAllocListHead = proc;
    return;
}

void InsertRootProcess(struct Proc * proc, s32 treeNum)
{
    if (gProcTreeRootArray[treeNum] != NULL)
    {
        gProcTreeRootArray[treeNum]->proc_next = proc;
        proc->proc_prev = gProcTreeRootArray[treeNum];
    }

    proc->proc_parent = (ProcPtr)treeNum;
    gProcTreeRootArray[treeNum] = proc;

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

        if (gProcTreeRootArray[treeNum] == proc)
        {
            gProcTreeRootArray[treeNum] = proc->proc_prev;
        }
    }

    proc->proc_next = NULL;
    proc->proc_prev = NULL;

    return;
}

void RunProcCore(struct Proc * proc)
{
    if (proc == gProcTreeRootArray[0] && gUnknown_03001FDC == 0)
    {
        return;
    }

    if (proc->proc_prev)
    {
        RunProcCore(proc->proc_prev);
    }

    if (proc->proc_lockCnt == 0 && !(proc->proc_flags & PROC_FLAG_STARTING))
    {
        if (proc->proc_idleCb == NULL)
        {
            RunProcessScript(proc);
        }

        if (proc->proc_idleCb)
        {
            proc->proc_idleCb(proc);
        }

        if (proc->proc_flags & PROC_FLAG_ENDED)
        {
            return;
        }
    }

    if (proc->proc_child)
    {
        RunProcCore(proc->proc_child);
    }

    return;
}

void Proc_Run(ProcPtr proc)
{
    if (proc != NULL)
    {
        RunProcCore(proc);
    }

    return;
}

void Proc_Break(ProcPtr proc)
{
    ((struct Proc *)proc)->proc_idleCb = NULL;
    return;
}

ProcPtr Proc_Find(const struct ProcCmd * script)
{
    s32 i;

    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
    {
        if (it->proc_script == script)
        {
            return it;
        }
    }

    return NULL;
}

s32 Proc_Count(const struct ProcCmd * script)
{
    s32 i;

    struct Proc * it = sProcArray;
    s32 count = 0;

    for (i = 0; i < PROC_COUNT; i++, it++)
    {
        if (it->proc_script != script)
        {
            continue;
        }

        count++;
    }

    return count;
}

ProcPtr Proc_FindUnblocked(const struct ProcCmd * script)
{
    s32 i;

    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
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

ProcPtr Proc_FindWithMark(s32 mark)
{
    s32 i;

    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
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

void Proc_Goto(ProcPtr proc, s32 label)
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

void Proc_GotoScript(ProcPtr proc, const struct ProcCmd * script)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_scrCur = script;
    p->proc_scrUnk = script;
    p->proc_idleCb = NULL;

    return;
}

void Proc_Mark(ProcPtr proc, u8 mark)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_mark = mark;

    return;
}

void Proc_SetEndFunc(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_endCb = func;

    return;
}

void Proc_ForAll(ProcFunc func)
{
    s32 i;

    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
    {
        if (it->proc_script != NULL)
        {
            func(it);
        }
    }

    return;
}

void Proc_ForEach(const struct ProcCmd * script, ProcFunc func)
{
    s32 i;

    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
    {
        if (it->proc_script == script)
        {
            func(it);
        }
    }

    return;
}

void Proc_ForEachMarked(s32 mark, ProcFunc func)
{
    s32 i;

    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
    {
        if (it->proc_mark == mark)
        {
            func(it);
        }
    }

    return;
}

void Proc_LockEachMarked(s32 mark)
{
    s32 i;

    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
    {
        if (it->proc_mark == mark)
        {
            it->proc_lockCnt++;
        }
    }

    return;
}

void Proc_ReleaseEachMarked(s32 mark)
{
    s32 i;

    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
    {
        if (it->proc_mark == mark)
        {
            it->proc_lockCnt--;
        }
    }

    return;
}

void Proc_EndEachMarked(s32 mark)
{
    s32 i;

    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
    {
        if (it->proc_mark == mark)
        {
            Proc_End(it);
        }
    }

    return;
}

void EndProc(ProcPtr proc)
{
    Proc_End(proc);
    return;
}

void Proc_EndEach(const struct ProcCmd * script)
{
    Proc_ForEach(script, EndProc);
    return;
}

void BreakProc(ProcPtr proc)
{
    Proc_Break(proc);
    return;
}

void Proc_BreakEach(const struct ProcCmd * script)
{
    Proc_ForEach(script, BreakProc);
    return;
}

void WalkProcSubtree(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc *)proc);

    if (p->proc_prev)
    {
        WalkProcSubtree(p->proc_prev, func);
    }

    func(proc);

    if (p->proc_child)
    {
        WalkProcSubtree(p->proc_child, func);
    }

    return;
}

void Proc_ForSubtree(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc *)proc);

    func(proc);

    if (p->proc_child)
    {
        WalkProcSubtree(p->proc_child, func);
    }

    return;
}

bool8 ProcCmd_End(ProcPtr proc)
{
    Proc_End(proc);
    return 0;
}

bool8 ProcCmd_01_0801CD90(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);
    p->proc_scrUnk++;
    return 1;
}

bool8 ProcCmd_Call(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    ProcFunc func = p->proc_scrUnk->dataPtr;

    p->proc_scrUnk++;
    func(p);

    return 1;
}

bool8 ProcCmd_CallRet(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    bool8 (*func)(ProcPtr) = p->proc_scrUnk->dataPtr;

    p->proc_scrUnk++;
    return func(p);
}

bool8 ProcCmd_CallArg(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    s16 arg = p->proc_scrUnk->dataImm;
    bool8 (*func)(s16, ProcPtr) = p->proc_scrUnk->dataPtr;

    p->proc_scrUnk++;
    return func(arg, p);
}

bool8 ProcCmd_While(ProcPtr proc)
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

bool8 ProcCmd_Repeat(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_idleCb = p->proc_scrUnk->dataPtr;
    p->proc_scrUnk++;

    return 0;
}

bool8 ProcCmd_SetEndFunc(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    ProcFunc func = p->proc_scrUnk->dataPtr;
    Proc_SetEndFunc(p, func);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_SpawnChild(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    Proc_Start(cmd, p);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_SpawnBlockingChild(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    Proc_StartBlocking(cmd, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 ProcCmd_SpawnBugged(ProcPtr proc)
{
    // BUG - This uses the proc's sleep timer to choose the tree
    // in which to put the new proc, which makes no sense

    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    Proc_Start(cmd, (ProcPtr)(s32)p->proc_sleepTime);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_WhileExists(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;

    if (Proc_Exists(cmd) == TRUE)
    {
        return 0;
    }

    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_EndEach(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    Proc_EndEach(cmd);

    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_BreakEach(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    Proc_BreakEach(cmd);

    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_Label(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_GotoScript(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd * cmd = p->proc_scrUnk->dataPtr;
    Proc_GotoScript(proc, cmd);

    return 1;
}

bool8 ProcCmd_Goto(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    Proc_Goto(proc, p->proc_scrUnk->dataImm);

    return 1;
}

bool8 ProcCmd_GotoIfYes(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    bool8 (*func)(void) = p->proc_scrUnk->dataPtr;

    if (func == NULL || func() == TRUE)
    {
        s16 label = p->proc_scrUnk->dataImm;
        Proc_Goto(p, label);
        return 1;
    }

    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_GotoIfNo(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    bool8 (*func)(void) = p->proc_scrUnk->dataPtr;

    if (func == NULL || func() == FALSE)
    {
        s16 label = p->proc_scrUnk->dataImm;
        Proc_Goto(p, label);
        return 1;
    }

    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_29_0801CF90(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0803B5A4(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

void SleepRepeatFunc(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_sleepTime--;

    if (p->proc_sleepTime == 0)
    {
        Proc_Break(p);
    }

    return;
}

bool8 ProcCmd_Sleep(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    const struct ProcCmd ** proc_scrUnk = &p->proc_scrUnk;

    if ((*proc_scrUnk)->dataImm != 0)
    {
        p->proc_sleepTime = (*proc_scrUnk)->dataImm;
        p->proc_idleCb = SleepRepeatFunc;
    }

    (*proc_scrUnk)++;

    return 0;
}

bool8 ProcCmd_Mark(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_mark = p->proc_scrUnk->dataImm;
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_13_Nop(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_Block(ProcPtr proc)
{
    return 0;
}

bool8 ProcCmd_EndIfDuplicate(ProcPtr proc)
{
    s32 i;
    s32 j;

    struct Proc * p = ((struct Proc *)proc);
    struct Proc * ptr = sProcArray;

    for (i = 0, j = 0; i < PROC_COUNT; i++, ptr++)
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

bool8 ProcCmd_EndDuplicates(ProcPtr proc)
{
    s32 i;
    s32 j;

    struct Proc * p = ((struct Proc *)proc);
    struct Proc * it = sProcArray;

    for (i = 0; i < PROC_COUNT; i++, it++)
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

bool8 ProcCmd_15_Nop(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_SetFlag2(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    p->proc_flags |= PROC_FLAG_UNK2;
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_1B_0801D0AC(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0803B524(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_1C_0801D0C8(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0803B4DC(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_1D_0801D0E4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_08013098(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 ProcCmd_1E_0801D104(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_080130B0(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 ProcCmd_1F_0801D124(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_08011550(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_20_0801D140(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0801156C(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_21_0801D15C(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_08011588(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_22_0801D178(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_080115B4(p->proc_scrUnk->dataImm);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_23_0801D194(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_080115E0(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 ProcCmd_24_0801D1B4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_080115F8(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 ProcCmd_25_0801D1D4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_08011610(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 ProcCmd_26_0801D1F4(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);

    sub_0801163C(p->proc_scrUnk->dataImm, p);
    p->proc_scrUnk++;

    return 0;
}

bool8 ProcCmd_19_0801D214(ProcPtr proc)
{
    struct Proc * p = ((struct Proc *)proc);
    s32 arg_0 = (s32)p->proc_scrUnk->dataPtr;
    s32 arg_1 = p->proc_sleepTime;

    sub_080152C0(arg_0, arg_1);
    p->proc_scrUnk++;

    return 1;
}

bool8 ProcCmd_1A_0801D238(ProcPtr proc)
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
    [0x00] = ProcCmd_End,
    [0x01] = ProcCmd_01_0801CD90,
    [0x02] = ProcCmd_Call,
    [0x03] = ProcCmd_Repeat,
    [0x04] = ProcCmd_SetEndFunc,
    [0x05] = ProcCmd_SpawnChild,
    [0x06] = ProcCmd_SpawnBlockingChild,
    [0x07] = ProcCmd_SpawnBugged,
    [0x08] = ProcCmd_WhileExists,
    [0x09] = ProcCmd_EndEach,
    [0x0A] = ProcCmd_BreakEach,
    [0x0B] = ProcCmd_Label,
    [0x0C] = ProcCmd_Goto,
    [0x0D] = ProcCmd_GotoScript,
    [0x0E] = ProcCmd_Sleep,
    [0x0F] = ProcCmd_Mark,
    [0x10] = ProcCmd_Block,
    [0x11] = ProcCmd_EndIfDuplicate,
    [0x12] = ProcCmd_SetFlag2,
    [0x13] = ProcCmd_13_Nop,
    [0x14] = ProcCmd_While,
    [0x15] = ProcCmd_15_Nop,
    [0x16] = ProcCmd_CallRet,
    [0x17] = ProcCmd_EndDuplicates,
    [0x18] = ProcCmd_CallArg,
    [0x19] = ProcCmd_19_0801D214,
    [0x1A] = ProcCmd_1A_0801D238,
    [0x1B] = ProcCmd_1B_0801D0AC,
    [0x1C] = ProcCmd_1C_0801D0C8,
    [0x1D] = ProcCmd_1D_0801D0E4,
    [0x1E] = ProcCmd_1E_0801D104,
    [0x1F] = ProcCmd_1F_0801D124,
    [0x20] = ProcCmd_20_0801D140,
    [0x21] = ProcCmd_21_0801D15C,
    [0x22] = ProcCmd_22_0801D178,
    [0x23] = ProcCmd_23_0801D194,
    [0x24] = ProcCmd_24_0801D1B4,
    [0x25] = ProcCmd_25_0801D1D4,
    [0x26] = ProcCmd_26_0801D1F4,
    [0x27] = ProcCmd_GotoIfYes,
    [0x28] = ProcCmd_GotoIfNo,
    [0x29] = ProcCmd_29_0801CF90,
    [0x2A] = ProcCmd_Label,
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

void PrintProcInfo(struct Proc * proc)
{
    return;
}

void WalkPrintProcInfo(struct Proc * proc, s32 * indent)
{
    if (proc->proc_prev != NULL)
    {
        WalkPrintProcInfo(proc->proc_prev, indent);
    }

    PrintProcInfo(proc);

    if (proc->proc_child != NULL)
    {
        *indent += 2;
        WalkPrintProcInfo(proc->proc_child, indent);
        *indent -= 2;
    }
}

void Proc_PrintSubtreeInfo(struct Proc * proc)
{
    s32 indent = 4;

    PrintProcInfo(proc);

    if (proc->proc_child != NULL)
    {
        indent += 2;
        WalkPrintProcInfo(proc->proc_child, &indent);
        indent -= 2;
    }
}

void NOP_0801D324(void)
{
    return;
}

void Proc_SetRepeatFunc(ProcPtr proc, ProcFunc func)
{
    struct Proc * p = ((struct Proc *) proc);
    p->proc_idleCb = func;
    return;
}

void Proc_Lock(struct Proc * proc)
{
    proc->proc_lockCnt++;
    return;
}

void Proc_Release(struct Proc * proc)
{
    proc->proc_lockCnt--;
    return;
}

void sub_0801D344(void)
{
    do { } while (1);
}
