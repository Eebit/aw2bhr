#include "global.h"

#include "hardware.h"
#include "oam.h"
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

extern u16 gUnknown_08190B68[]; // pal
extern u16 gUnknown_0818E164[]; // pal
extern u8 gUnknown_08186F4C[]; // img
extern u8 gUnknown_0818DA8C[]; // img

extern u8 gUnknown_0818E590[]; // img?

extern struct ProcCmd gUnknown_0849E818[];

extern struct ProcCmd gUnknown_08581C90[];
extern struct ProcCmd gUnknown_08581E10[];
extern struct ProcCmd gUnknown_08581E28[];
extern struct ProcCmd gUnknown_08581CF8[];

void sub_0806C9B4(struct ProcTitleScreen * proc)
{
    proc->unk_2C = 2700;
}

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

// clang-format off

struct ProcCmd CONST_DATA ProcScr_Unk_08581C68[] =
{
    PROC_CALL(sub_0806C9B4),
    PROC_REPEAT(sub_0806C9C0),

    PROC_CALL(sub_0806CA38),
    PROC_REPEAT(sub_0806CA50),

    PROC_END,
};

// clang-format on

void sub_0806CA84(void)
{
    Proc_Start(gUnknown_0849E818, PROC_TREE_3);
}

// clang-format off

struct ProcCmd CONST_DATA gUnknown_08581C90[] =
{
    PROC_29(2),
    PROC_1D(30),
    PROC_END_EACH(gUnknown_08581CF8),
    PROC_CALL(sub_0806CA84),
    PROC_END,
};

// unknown - maybe "SetupBackgrounds" input?
u32 CONST_DATA gUnknown_08581CB8[] =
{
    0x06000000, 0x0600D800, 0x00000000, 0x00000001,
    0x06000000, 0x0600E000, 0x00000000, 0x00000000,
    0x06000000, 0x0600E800, 0x00000000, 0x00000000,
    0x06008000, 0x0600F000, 0x00000000, 0x00000000,
};

// clang-format on

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
        sub_08072C40(0, 64 - (proc->unk_30 >> 1), 0);

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

// clang-format off

struct ProcCmd CONST_DATA gUnknown_08581CF8[] =
{
    PROC_YIELD,
    PROC_START_BUGGED(ProcScr_Unk_08581C68, 3),

    PROC_CALL(sub_0806CA98),
    PROC_REPEAT(sub_0806CB5C),

PROC_LABEL(0),
    PROC_CALL(sub_0806CB88),
    PROC_REPEAT(sub_0806CBA8),

    PROC_END,
};

// clang-format on

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

// clang-format off

u16 CONST_DATA gUnknown_08581D38[] =
{
    1,
    OAM0_SHAPE_64x64, OAM1_SIZE_64x64, 0,
};

u16 CONST_DATA gUnknown_08581D40[] =
{
    5,
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16, OAM2_CHR(0x148) + OAM2_PAL(3),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(+32), OAM2_CHR(0x150) + OAM2_PAL(3),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(+64), OAM2_CHR(0x158) + OAM2_PAL(3),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(+96), OAM2_CHR(0x160) + OAM2_PAL(3),
    OAM0_SHAPE_32x16, OAM1_SIZE_32x16 + OAM1_X(+128), OAM2_CHR(0x168) + OAM2_PAL(3),
};

// clang-format on

void sub_0806CC4C(void)
{
    sub_0801BD00(40, 140, gUnknown_08581D40, 0);
}

void sub_0806CC64(void)
{
    sub_08011CAC(gUnknown_0818E590, (void *)0x06010000);
}

// clang-format off

u16 CONST_DATA gUnknown_08581D60[] =
{
    11,
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32, OAM2_CHR(0x40) + OAM2_PAL(2),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_X(+64), OAM2_CHR(0x60) + OAM2_PAL(2),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_X(+128), OAM2_CHR(0x80) + OAM2_PAL(2),
    OAM0_SHAPE_32x32, OAM1_SIZE_32x32 + OAM1_X(+192), OAM2_CHR(0xA0) + OAM2_PAL(2),
    OAM0_SHAPE_32x16 + OAM0_Y(+32), OAM1_SIZE_32x16, OAM2_CHR(0xB0) + OAM2_PAL(2),
    OAM0_SHAPE_32x16 + OAM0_Y(+32), OAM1_SIZE_32x16 + OAM1_X(+32), OAM2_CHR(0xB8) + OAM2_PAL(2),
    OAM0_SHAPE_32x16 + OAM0_Y(+32), OAM1_SIZE_32x16 + OAM1_X(+64), OAM2_CHR(0xC0) + OAM2_PAL(2),
    OAM0_SHAPE_32x16 + OAM0_Y(+32), OAM1_SIZE_32x16 + OAM1_X(+96), OAM2_CHR(0xC8) + OAM2_PAL(2),
    OAM0_SHAPE_32x16 + OAM0_Y(+32), OAM1_SIZE_32x16 + OAM1_X(+128), OAM2_CHR(0xD0) + OAM2_PAL(2),
    OAM0_SHAPE_32x16 + OAM0_Y(+32), OAM1_SIZE_32x16 + OAM1_X(+160), OAM2_CHR(0xD8) + OAM2_PAL(2),
    OAM0_SHAPE_32x16 + OAM0_Y(+32), OAM1_SIZE_32x16 + OAM1_X(+192), OAM2_CHR(0xE0) + OAM2_PAL(2),
};

u16 CONST_DATA gUnknown_08581DA4[] =
{
    3,
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32, OAM2_CHR(0xE8) + OAM2_PAL(1),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_X(+64), OAM2_CHR(0x108) + OAM2_PAL(1),
    OAM0_SHAPE_64x32, OAM1_SIZE_64x32 + OAM1_X(+128), OAM2_CHR(0x128) + OAM2_PAL(1),
};

u16 CONST_DATA gUnknown_08581DB8[] = { 0 }; // TODO: padding?

u16 CONST_DATA gUnknown_08581DBA[] =
{
    8,
    OAM0_SHAPE_16x8 + OAM0_BLEND, OAM1_SIZE_16x8, OAM2_CHR(0x1C0),
    OAM0_SHAPE_16x8 + OAM0_BLEND, OAM1_SIZE_16x8 + OAM1_X(+16), OAM2_CHR(0x1C2),
    OAM0_SHAPE_16x8 + OAM0_BLEND, OAM1_SIZE_16x8 + OAM1_X(+32), OAM2_CHR(0x1C4),
    OAM0_SHAPE_16x8 + OAM0_BLEND, OAM1_SIZE_16x8 + OAM1_X(+48), OAM2_CHR(0x1C6),
    OAM0_SHAPE_16x8 + OAM0_BLEND, OAM1_SIZE_16x8 + OAM1_X(+64) + OAM1_HFLIP, OAM2_CHR(0x1C6),
    OAM0_SHAPE_16x8 + OAM0_BLEND, OAM1_SIZE_16x8 + OAM1_X(+80) + OAM1_HFLIP, OAM2_CHR(0x1C4),
    OAM0_SHAPE_16x8 + OAM0_BLEND, OAM1_SIZE_16x8 + OAM1_X(+96) + OAM1_HFLIP, OAM2_CHR(0x1C2),
    OAM0_SHAPE_16x8 + OAM0_BLEND, OAM1_SIZE_16x8 + OAM1_X(+112) + OAM1_HFLIP, OAM2_CHR(0x1C0),
};

u16 CONST_DATA gUnknown_08581DEC[] =
{
    4,
    OAM0_SHAPE_32x16 + OAM0_BLEND, OAM1_SIZE_32x16, OAM2_CHR(0x170) + OAM2_PAL(3),
    OAM0_SHAPE_32x16 + OAM0_BLEND, OAM1_SIZE_32x16 + OAM1_X(+32), OAM2_CHR(0x178) + OAM2_PAL(3),
    OAM0_SHAPE_32x16 + OAM0_BLEND, OAM1_SIZE_32x16 + OAM1_X(+64), OAM2_CHR(0x180) + OAM2_PAL(3),
    OAM0_SHAPE_32x16 + OAM0_BLEND, OAM1_SIZE_32x16 + OAM1_X(+96), OAM2_CHR(0x188) + OAM2_PAL(3),
};

u16 CONST_DATA gUnknown_08581E06[] =
{
    1,
    OAM0_SHAPE_16x8, OAM1_SIZE_16x8, OAM2_CHR(0x190) + OAM2_PAL(1),
};

// clang-format on

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

// clang-format off

struct ProcCmd CONST_DATA gUnknown_08581E10[] =
{
    PROC_CALL(sub_0806CC7C),
    PROC_REPEAT(sub_0806CCE4),

    PROC_END,
};

// clang-format on

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

// clang-format off

struct ProcCmd CONST_DATA gUnknown_08581E28[] =
{
    PROC_YIELD,

    PROC_CALL(sub_0806CD7C),

    PROC_REPEAT(sub_0806CDA4),
    PROC_REPEAT(sub_0806CE5C),

PROC_LABEL(0),
    PROC_START_CHILD(gUnknown_08581E10),

    PROC_CALL(sub_0806CF04),
    PROC_REPEAT(sub_0806CF28),

    PROC_END,
};

// clang-format on
