#ifndef HARDWARE_H
#define HARDWARE_H

#include "global.h"

#if MODERN
#define IO_ALIGNED(n) ALIGNED(n)
#else
#define IO_ALIGNED(n) ALIGNED(4)
#endif

struct IO_ALIGNED(2) DispCnt
{
    /* bit  0 */ u16 mode : 3;
    /* bit  3 */ u16 : 1;
    /* bit  4 */ u16 bitmap_frame : 1;
    /* bit  5 */ u16 hblank_interval_free : 1;
    /* bit  6 */ u16 obj_mapping : 1;
    /* bit  7 */ u16 forced_blank : 1;
    /* bit  8 */ u16 bg0_enable : 1;
    /* bit  9 */ u16 bg1_enable : 1;
    /* bit 10 */ u16 bg2_enable : 1;
    /* bit 11 */ u16 bg3_enable : 1;
    /* bit 12 */ u16 obj_enable : 1;
    /* bit 13 */ u16 win0_enable : 1;
    /* bit 14 */ u16 win1_enable : 1;
    /* bit 15 */ u16 objwin_enable : 1;
};

struct IO_ALIGNED(2) DispStat
{
    /* bit  0 */ u16 vblank : 1;
    /* bit  1 */ u16 hblank : 1;
    /* bit  2 */ u16 vcount : 1;
    /* bit  3 */ u16 vblank_int_enable : 1;
    /* bit  4 */ u16 hblank_int_enable : 1;
    /* bit  5 */ u16 vcount_int_enable : 1;
    /* bit  6 */ u16 : 2;
    /* bit  8 */ u16 vcount_compare : 8;
};

struct IO_ALIGNED(2) BgCnt
{
    /* bit  0 */ u16 priority : 2;
    /* bit  2 */ u16 chr_block : 2;
    /* bit  4 */ u16 : 2;
    /* bit  6 */ u16 mosaic : 1;
    /* bit  7 */ u16 color_depth : 1;
    /* bit  8 */ u16 tm_block : 5;
    /* bit 13 */ u16 wrap : 1;
    /* bit 14 */ u16 size : 2;
};

struct IO_ALIGNED(4) WinCnt
{
    u8 win0_enable_bg0 : 1;
    u8 win0_enable_bg1 : 1;
    u8 win0_enable_bg2 : 1;
    u8 win0_enable_bg3 : 1;
    u8 win0_enable_obj : 1;
    u8 win0_enable_blend : 1;
    u8 : 2;

    u8 win1_enable_bg0 : 1;
    u8 win1_enable_bg1 : 1;
    u8 win1_enable_bg2 : 1;
    u8 win1_enable_bg3 : 1;
    u8 win1_enable_obj : 1;
    u8 win1_enable_blend : 1;
    u8 : 2;

    u8 wout_enable_bg0 : 1;
    u8 wout_enable_bg1 : 1;
    u8 wout_enable_bg2 : 1;
    u8 wout_enable_bg3 : 1;
    u8 wout_enable_obj : 1;
    u8 wout_enable_blend : 1;
    u8 : 2;

    u8 wobj_enable_bg0 : 1;
    u8 wobj_enable_bg1 : 1;
    u8 wobj_enable_bg2 : 1;
    u8 wobj_enable_bg3 : 1;
    u8 wobj_enable_obj : 1;
    u8 wobj_enable_blend : 1;
    u8 : 2;
};

struct IO_ALIGNED(2) BlendCnt
{
    u16 target1_enable_bg0 : 1;
    u16 target1_enable_bg1 : 1;
    u16 target1_enable_bg2 : 1;
    u16 target1_enable_bg3 : 1;
    u16 target1_enable_obj : 1;
    u16 target1_enable_bd : 1;
    u16 effect : 2;
    u16 target2_enable_bg0 : 1;
    u16 target2_enable_bg1 : 1;
    u16 target2_enable_bg2 : 1;
    u16 target2_enable_bg3 : 1;
    u16 target2_enable_obj : 1;
    u16 target2_enable_bd : 1;
};

struct DispIo
{
    /* 00 */ struct DispCnt disp_ct;
    /* 04 */ struct DispStat disp_stat;
    /* 08 */ STRUCT_PAD(0x08, 0x0C);
    /* 0C */ struct WinCnt win_ct;
    /* 10 */ u16 mosaic;
    /* 12 */ STRUCT_PAD(0x3A, 0x3C);
    /* 14 */ struct BlendCnt blend_ct;
    /* 18 */ STRUCT_PAD(0x40, 0x44);
    /* 1C */ u8 blend_coef_a;
    /* 1D */ u8 blend_coef_b;
    /* 1E */ u8 blend_y;
    /* 20 */ struct BgAffineDstData bg2affin;
    /* 30 */ struct BgAffineDstData bg3affin;
    /* 40 */ s8 color_addition;
#if 0
// TODO: Are these actually in the struct in AW2?
    /* 0C */ struct BgCnt bg0_ct;
    /* 10 */ struct BgCnt bg1_ct;
    /* 14 */ struct BgCnt bg2_ct;
    /* 18 */ struct BgCnt bg3_ct;
    /* 1C */ struct Vec2u bg_off[4];
    /* 2C */ u8 win0_right, win0_left, win1_right, win1_left;
    /* 30 */ u8 win0_bottom, win0_top, win1_bottom, win1_top;
    /* 34 */ struct WinCnt win_ct;
    /* 38 */ u16 mosaic;
    /* 3A */ STRUCT_PAD(0x3A, 0x3C);
    /* 3C */ struct BlendCnt blend_ct;
    /* 40 */ STRUCT_PAD(0x40, 0x44);
    /* 44 */ u8 blend_coef_a;
    /* 45 */ u8 blend_coef_b;
    /* 46 */ u8 blend_y;
    /* 48 */ struct BgAffineDstData bg2affin;
    /* 58 */ struct BgAffineDstData bg3affin;
    /* 68 */ s8 color_addition;
#endif
};

extern u16 gUnknown_03002020;
extern u16 gUnknown_03002B28;
extern u8 gUnknown_03002B6C;
extern struct DispIo gUnknown_030030CC;

struct KeySt
{
    /* 00 */ u8 repeat_delay; // initial delay before generating auto-repeat presses
    /* 01 */ u8 repeat_interval; // time between auto-repeat presses
    /* 02 */ u8 repeat_clock; // (decreased by one each frame, reset to repeat_delay when Presses change and repeat_interval when reaches 0)
    /* 04 */ u16 held; // keys that are currently held down
    /* 06 */ u16 repeated; // auto-repeated keys
    /* 08 */ u16 pressed; // keys that went down this frame
    /* 0A */ u16 previous; // keys that were held down last frame
    /* 0C */ u16 last;
    /* 0E */ u16 ablr_pressed; // 1 for Release (A B L R Only), 0 Otherwise
    /* 10 */ u16 pressed2;
    /* 12 */ u16 time_since_start_select; // Time since last Non-Start Non-Select Button was pressed
};

enum
{
    BG0_SYNC_BIT = (1 << 0),
    BG1_SYNC_BIT = (1 << 1),
    BG2_SYNC_BIT = (1 << 2),
    BG3_SYNC_BIT = (1 << 3),
};

enum
{
    BG_0 = 0,
    BG_1,
    BG_2,
    BG_3,

    BG_INVALID = -1,
};

extern struct KeySt * gUnknown_03002EE0;

extern u16 gUnknown_030020C0[];

#define RGB_GET_RED(color) ((color) & 0x1F)
#define RGB_GET_GREEN(color) (((color) >> 5) & 0x1F)
#define RGB_GET_BLUE(color) (((color) >> 10) & 0x1F)

#define TM_OFFSET_(x, y) ((x) + ((y) << 5))
#define TM_OFFSET(x, y) (((y) * 0x20) + (x))

#define TILE_CHR_SAFE(chr) ((chr) & 0x3FF)
#define TILE_PAL_SAFE(pal) (((pal) & 0xF) << 12)
#define TILEREF(chr, pal) ((chr) + ((pal) << 12))
#define TILE_HFLIP 0x0400
#define TILE_VFLIP 0x0800

#define RED_MASK 0x1F
#define GREEN_MASK (0x1F << 5)
#define BLUE_MASK (0x1F << 10)

#define PAL_COLOR_OFFSET(palid, colornum) (palid) * 0x10 + (colornum)
#define PAL_OFFSET(palid) PAL_COLOR_OFFSET((palid), 0)
#define BGPAL_OFFSET(bgpal) PAL_OFFSET(0x00 + (bgpal))
#define OBPAL_OFFSET(obpal) PAL_OFFSET(0x10 + (obpal))

#define PAL_BUF_COLOR(buf, palid, colornum) buf[PAL_COLOR_OFFSET((palid), (colornum))]
#define PAL_COLOR(palid, colornum) PAL_BUF_COLOR(gUnknown_030020C0, palid, colornum)
#define PAL_BG_COLOR(palid, colornum) PAL_COLOR(palid, colornum)
#define PAL_OBJ_COLOR(palid, colornum) PAL_COLOR((palid) + 0x10, colornum)

#define PAL_BG(palid) (&PAL_BG_COLOR(palid, 0))
#define PAL_OBJ(palid) (&PAL_OBJ_COLOR(palid, 0))

#define SIN_Q12(angle) (gUnknown_0808F100[(angle) & 0xFF])
#define COS_Q12(angle) (gUnknown_0808F100[0x40 + ((angle) & 0xFF)])

#define ApplyPalettes(src, num, count) ApplyPaletteExt((src), 0x20 * (num), 0x20 * (count))
#define ApplyPalette(src, num) ApplyPalettes((src), (num), 1)

#define SetDispEnable(bg0, bg1, bg2, bg3, obj) \
    gUnknown_030030CC.disp_ct.bg0_enable = (bg0); \
    gUnknown_030030CC.disp_ct.bg1_enable = (bg1); \
    gUnknown_030030CC.disp_ct.bg2_enable = (bg2); \
    gUnknown_030030CC.disp_ct.bg3_enable = (bg3); \
    gUnknown_030030CC.disp_ct.obj_enable = (obj)

#define SetWinEnable(win0, win1, objwin) \
    gUnknown_030030CC.disp_ct.win0_enable = (win0); \
    gUnknown_030030CC.disp_ct.win1_enable = (win1); \
    gUnknown_030030CC.disp_ct.objwin_enable = (objwin)

#define SetWin0Box(left, top, right, bottom) \
    gUnknown_030030CC.win0_left = (left); \
    gUnknown_030030CC.win0_top = (top); \
    gUnknown_030030CC.win0_right = (right); \
    gUnknown_030030CC.win0_bottom = (bottom)

#define SetWin1Box(left, top, right, bottom) \
    gUnknown_030030CC.win1_left = (left); \
    gUnknown_030030CC.win1_top = (top); \
    gUnknown_030030CC.win1_right = (right); \
    gUnknown_030030CC.win1_bottom = (bottom)

#define SetWin0Layers(bg0, bg1, bg2, bg3, obj) \
    gUnknown_030030CC.win_ct.win0_enable_bg0 = (bg0); \
    gUnknown_030030CC.win_ct.win0_enable_bg1 = (bg1); \
    gUnknown_030030CC.win_ct.win0_enable_bg2 = (bg2); \
    gUnknown_030030CC.win_ct.win0_enable_bg3 = (bg3); \
    gUnknown_030030CC.win_ct.win0_enable_obj = (obj)

#define SetWin1Layers(bg0, bg1, bg2, bg3, obj) \
    gUnknown_030030CC.win_ct.win1_enable_bg0 = (bg0); \
    gUnknown_030030CC.win_ct.win1_enable_bg1 = (bg1); \
    gUnknown_030030CC.win_ct.win1_enable_bg2 = (bg2); \
    gUnknown_030030CC.win_ct.win1_enable_bg3 = (bg3); \
    gUnknown_030030CC.win_ct.win1_enable_obj = (obj)

#define SetWObjLayers(bg0, bg1, bg2, bg3, obj) \
    gUnknown_030030CC.win_ct.wobj_enable_bg0 = (bg0); \
    gUnknown_030030CC.win_ct.wobj_enable_bg1 = (bg1); \
    gUnknown_030030CC.win_ct.wobj_enable_bg2 = (bg2); \
    gUnknown_030030CC.win_ct.wobj_enable_bg3 = (bg3); \
    gUnknown_030030CC.win_ct.wobj_enable_obj = (obj)

#define SetWOutLayers(bg0, bg1, bg2, bg3, obj) \
    gUnknown_030030CC.win_ct.wout_enable_bg0 = (bg0); \
    gUnknown_030030CC.win_ct.wout_enable_bg1 = (bg1); \
    gUnknown_030030CC.win_ct.wout_enable_bg2 = (bg2); \
    gUnknown_030030CC.win_ct.wout_enable_bg3 = (bg3); \
    gUnknown_030030CC.win_ct.wout_enable_obj = (obj)

#define SetBlendConfig(eff, ca, cb, cy) \
    gUnknown_030030CC.blend_ct.effect = (eff); \
    gUnknown_030030CC.blend_coef_a = (ca); \
    gUnknown_030030CC.blend_coef_b = (cb); \
    gUnknown_030030CC.blend_y = (cy)

#define SetBlendAlpha(ca, cb) \
    SetBlendConfig(BLEND_EFFECT_ALPHA, (ca), (cb), 0)

#define SetBlendBrighten(cy) \
    SetBlendConfig(BLEND_EFFECT_BRIGHTEN, 0, 0, (cy))

#define SetBlendDarken(cy) \
    SetBlendConfig(BLEND_EFFECT_DARKEN, 0, 0, (cy))

#define SetBlendNone() \
    SetBlendConfig(BLEND_EFFECT_NONE, 0x10, 0, 0)

#define SetBlendTargetA(bg0, bg1, bg2, bg3, obj) \
    gUnknown_030030CC.blend_ct.target1_enable_bg0 = (bg0); \
    gUnknown_030030CC.blend_ct.target1_enable_bg1 = (bg1); \
    gUnknown_030030CC.blend_ct.target1_enable_bg2 = (bg2); \
    gUnknown_030030CC.blend_ct.target1_enable_bg3 = (bg3); \
    gUnknown_030030CC.blend_ct.target1_enable_obj = (obj)

#define SetBlendTargetB(bg0, bg1, bg2, bg3, obj) \
    gUnknown_030030CC.blend_ct.target2_enable_bg0 = (bg0); \
    gUnknown_030030CC.blend_ct.target2_enable_bg1 = (bg1); \
    gUnknown_030030CC.blend_ct.target2_enable_bg2 = (bg2); \
    gUnknown_030030CC.blend_ct.target2_enable_bg3 = (bg3); \
    gUnknown_030030CC.blend_ct.target2_enable_obj = (obj)

#define SetBlendBackdropA(enable) \
    gUnknown_030030CC.blend_ct.target1_enable_bd = (enable)

#define SetBlendBackdropB(enable) \
    gUnknown_030030CC.blend_ct.target2_enable_bd = (enable)


extern const s16 gUnknown_0808F100[0x40]; // gSinLut
extern const s16 gCosLut[0x100];

#endif // HARDWARE_H
