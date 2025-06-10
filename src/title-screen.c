#include "global.h"

#include "hardware.h"
#include "proc.h"

struct ProcTitleScreen
{
    /* 00 */ PROC_HEADER;
    /* 2C */ s32 unk_2C;
    /* 30 */ s32 unk_30;
    /* 34 */ s32 unk_34;
};

struct UnkProc08581E28
{
    /* 00 */ PROC_HEADER;
    /* 29 */ STRUCT_PAD(0x29, 0x2C);
    /* 2C */ u32 unk_2C;
    /* 30 */ s32 unk_30;
    /* 34 */ u32 unk_34;
};

struct UnkProc08581CF8
{
    /* 00 */ PROC_HEADER;
    /* 29 */ STRUCT_PAD(0x29, 0x34);
    /* 34 */ u32 unk_34;
};

struct UnkProc08581E10
{
    /* 00 */ PROC_HEADER;
    /* 29 */ STRUCT_PAD(0x29, 0x2C);
    /* 2C */ u32 unk_2C;
    /* 30 */ u32 unk_30;
    /* 34 */ u32 unk_34;
    /* 38 */ STRUCT_PAD(0x38, 0x3C);
    /* 3C */ u32 unk_3C;
};

extern u32 gUnknown_0202F2C4;

extern s32 gUnknown_03004008;

extern u32 gUnknown_08581CB8[]; // unk? maybe SetupBackgrounds input

extern u16 gUnknown_08190B68[]; // pal
extern u16 gUnknown_0818E164[]; // pal
extern u8 gUnknown_08186F4C[]; // img
extern u8 gUnknown_0818DA8C[]; // img

extern u32 gUnknown_08581D40[]; // unk
extern u8 gUnknown_0818E590[]; // img?
extern u16 gUnknown_08581DEC[]; // sprite
extern u16 gUnknown_08581D38[]; // sprite
extern u16 gUnknown_08581D60[]; // sprite
extern u16 gUnknown_08581D38[]; // sprite
extern u16 gUnknown_08581DA4[]; // sprite
extern u16 gUnknown_08581E06[]; // sprite

void sub_0806C9B4(struct ProcTitleScreen * proc)
{
    proc->unk_2C = 2700;
}

extern struct ProcCmd gUnknown_08581C90[];
extern struct ProcCmd gUnknown_08581E10[];

void sub_0806C9C0(struct ProcTitleScreen * proc)
{
    if (sub_0803B18C() == 1)
    {
        return;
    }

    proc->unk_2C--;

    if (proc->unk_2C < 0)
    {
        ((struct UnkProc08581E10 *)(Proc_Find(gUnknown_08581E10)))->unk_34 = 0;
        sub_0803B5E8();
        Proc_Break(proc);
    }

    if ((proc->unk_2C <= (2700 - gUnknown_0202F2C4)) && (gUnknown_03002EE0->held & 9))
    {
        sub_0803B4DC(0x71);
        sub_08030ED4();
        Proc_GotoScript(proc, gUnknown_08581C90);
    }
}

void sub_0806CA38(struct ProcTitleScreen * proc)
{
    sub_080137AC(-1);
    proc->unk_30 = 0x20;
}

void sub_0806CA50(struct ProcTitleScreen * proc)
{
    if (gUnknown_03004008 & 1)
    {
        return;
    }

    sub_080718F0();
    sub_080135A4();

    proc->unk_30--;

    if (proc->unk_30 == 0)
    {
        Proc_Init();
        sub_0806A454();
    }
}

extern struct ProcCmd gUnknown_0849E818[];

void sub_0806CA84(void)
{
    Proc_Start(gUnknown_0849E818, PROC_TREE_3);
}

void sub_0806CA98(struct ProcTitleScreen * proc)
{
    sub_08012C58(gUnknown_08581CB8);

    gUnknown_030030CC.disp_ct.mode = 0;
    SetDispEnable(1, 0, 0, 0, 1);
    gUnknown_03002B6C |= 0x80;
    gUnknown_030030CC.disp_ct.obj_mapping = 1;

    sub_0801237C();
    sub_08012358();

    sub_08063994();

    sub_08013618(gUnknown_08190B68, 0x200, 0xA0);
    sub_08013618(gUnknown_0818E164, 0, 0x200);
    sub_08011CAC(gUnknown_08186F4C, (void *)0x06000000);
    sub_08011CAC(gUnknown_0818DA8C, (void *)0x0600D800);

    sub_0806CC64();

    proc->unk_30 = 127;

    gUnknown_030030CC.disp_ct.forced_blank = 0;

    if (proc->unk_34 != 0)
    {
        sub_08072C40(0, 0x40, 0);
        return;
    }

    Proc_Goto(proc, 0);
}

extern struct ProcCmd gUnknown_08581E28[];

void sub_0806CB5C(struct ProcTitleScreen * proc)
{
    if (proc->unk_30 != 0)
    {
        ((struct UnkProc08581E28 *)(Proc_Start(gUnknown_08581E28, proc)))->unk_34 = proc->unk_34;
        sub_0803B5E8();
    }

    proc->unk_30 = 0;
    sub_0806CC4C();
}

void sub_0806CB88(struct ProcTitleScreen * proc)
{
    sub_080139C4(-1);
    sub_080718F0();
    sub_080135A4();
    proc->unk_30 = 127;
}

void sub_0806CBA8(struct ProcTitleScreen * proc)
{
    if (proc->unk_30 >= 0)
    {
        sub_08072C40(0, 0x40 - (proc->unk_30 >> 1), 0);

        if ((proc->unk_30 & 3) == 2)
        {
            sub_080718F0();
            sub_080135A4();
        }

        proc->unk_30--;
    }

    if (proc->unk_30 == 10)
    {
        ((struct UnkProc08581E28 *)(Proc_Start(gUnknown_08581E28, proc)))->unk_34 = proc->unk_34;
        sub_0803B5E8();
    }

    sub_0806CC4C();
}

extern struct ProcCmd gUnknown_08581CF8[];

void sub_0806CC00(s32 arg0)
{
    ((struct UnkProc08581CF8 *)(Proc_Start(gUnknown_08581CF8, PROC_TREE_3)))->unk_34 = arg0;

    if (arg0 != 0)
    {
        gUnknown_0202F2C4 = 180;
    }
    else
    {
        gUnknown_0202F2C4 = 360;
    }
}

bool8 sub_0806CC34(void)
{
    return Proc_Exists(gUnknown_08581CF8);
}

void sub_0806CC4C(void)
{
    sub_0801BD00(40, 140, gUnknown_08581D40, 0);
}

void sub_0806CC64(void)
{
    sub_08011CAC(gUnknown_0818E590, (void *)0x06010000);
}

void sub_0806CC7C(struct UnkProc08581E10 * proc)
{
    (&gUnknown_030030CC.blend_ct)->effect = 1; // TODO: macro?
    SetBlendTargetA(0, 0, 0, 0, 0);
    SetBlendTargetB(1, 1, 1, 1, 0);

    gUnknown_03002020 = 0;
    gUnknown_03002B28 = 16;

    proc->unk_34 = 0;
    proc->unk_2C = 0;
    proc->unk_30 = 0;
    proc->unk_3C = 0;
}

void sub_0806CCE4(struct UnkProc08581E10 * proc)
{
    s32 var_r2;

    s32 r1 = proc->unk_2C--;

    if (!(r1 % 4) && (proc->unk_34 != 0))
    {
        gUnknown_030020C0[0x13C] = gUnknown_030020C0[0x140 + proc->unk_3C];
        sub_080135A4();
        proc->unk_3C = ((proc->unk_3C + 1) & 15);
    }

    if (proc->unk_34 != 0)
    {
        proc->unk_30++;
        var_r2 = ((s32)(proc->unk_30 + (proc->unk_30 >> 0x1F)) >> 1) & 63;

        if (var_r2 > 31)
        {
            var_r2 = 64 - var_r2;
        }

        if (var_r2 > 16)
        {
            var_r2 = 16;
        }

        gUnknown_03002020 = var_r2;
        gUnknown_03002B28 = 16 - var_r2;
    }

    sub_0801BEBC(0, 56, 100, gUnknown_08581DEC, 0); // press start sprite
}

void sub_0806CD7C(struct UnkProc08581E28 * proc)
{
    proc->unk_30 = 0;

    if (proc->unk_34 != 0)
    {
        Proc_Goto(proc, 0);
        return;
    }

    sub_0803B4DC(0x1CF);
}

void sub_0806CDA4(struct UnkProc08581E28 * proc)
{
    s32 temp_r0 = sub_08074234(0, 512, 256, proc->unk_30, 20);

    // clang-format off
    sub_0801E108(
        0,
        Div(+COS_Q12(0) << 4, temp_r0),
        Div(-SIN_Q12(0) << 4, temp_r0),
        Div(+SIN_Q12(0) << 4, temp_r0),
        Div(+COS_Q12(0) << 4, temp_r0)
    );
    // clang-format on

    sub_0801BEFC(0, 56, 992, gUnknown_08581D38, 0);

    proc->unk_30++;

    if (proc->unk_30 == 20)
    {
        proc->unk_30 = 0;
        Proc_Break(proc);
    }
}

void sub_0806CE5C(struct UnkProc08581E28 * proc)
{
    s32 var_r8 = 88;

    s32 temp_r7 = sub_08074234(1, 240, 22, proc->unk_30, 22);
    s32 temp_r6 = sub_08074234(1, -240, 8, proc->unk_30, 22);

    if (proc->unk_30 > 13)
    {
        var_r8 = sub_08074234(0, 88, 176, proc->unk_30 - 14, 8);
    }

    sub_0801BEBC(0, temp_r6, 16, gUnknown_08581D60, 0);
    sub_0801BEBC(0, var_r8, 0, gUnknown_08581D38, 0);
    sub_0801BEBC(0, temp_r7, 15, gUnknown_08581DA4, 0);

    if (proc->unk_30 == 22)
    {
        sub_0803B4DC(0x79);
        Proc_Break(proc);
    }

    proc->unk_30++;
}

void sub_0806CF04(struct UnkProc08581E28 * proc)
{
    proc->unk_30 = 32;
    proc->unk_2C = 173;

    sub_080136C4();
    sub_080139C4(-1);
    sub_080718F0();
    sub_080135A4();
}

void sub_0806CF28(struct UnkProc08581E28 * proc)
{
    if (!(gUnknown_03004008 & 3) && (proc->unk_30 > 0))
    {
        sub_080718F0();
        sub_080135A4();
        proc->unk_30--;
    }

    if (proc->unk_30 == 0)
    {
        ((struct UnkProc08581E10 *)(Proc_Find(gUnknown_08581E10)))->unk_34 = 1;
        sub_0803B524(0x1AA);
        proc->unk_30 = -1;
    }

    sub_0801BEBC(0, 8, 16, gUnknown_08581D60, 0); // Black Hole Rising
    sub_0801BEBC(0, 176, 0, gUnknown_08581D38, 0); // 2
    sub_0801BEBC(0, 22, 15, gUnknown_08581DA4, 0); // Advance Wars
    sub_0801BEBC(0, 202, 34, gUnknown_08581E06, 0); // TM
}
