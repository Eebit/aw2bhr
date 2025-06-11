#ifndef UNKNOWN_FUNCS_H
#define UNKNOWN_FUNCS_H

#include "global.h"

void sub_08011550(s16);
void sub_0801156C(s16);
void sub_08011588(s16);
void sub_080115B4(s16);
void sub_080115E0(s16, ProcPtr);
void sub_080115F8(s16, ProcPtr);
void sub_08011610(s16, ProcPtr);
void sub_0801163C(s16, ProcPtr);
void Decompress(u8 *, void *);

void sub_08012358(void);
void sub_0801237C(void);
void sub_08012C58(void *); // possibly "SetupBackgrounds"

void sub_08013098(s16, ProcPtr);
void sub_080130B0(s16, ProcPtr);
void sub_080135A4(void);
void ApplyPaletteExt(u16 *, u32, u32);
void sub_080136C4(void);
void sub_080137AC(s32);
void sub_080139C4(s32);

void sub_080152C0(s32, u8);
s8 sub_08015BD0(s32);

void sub_0801BD00(s32, s32, void *, s32);
void PutSprite(u32, u32, u32, u16 *, u32);
void PutSpriteExt(u32, u32, u32, u16 *, u32);

void SetObjAffine(s32 index, s16 pa, s16 pb, s16 pc, s16 pd);

void sub_08030ED4(void);

bool8 sub_0803B18C(void);
void sub_0803B4DC(s16);
void sub_0803B524(s16);
void sub_0803B5A4(s16);
void sub_0803B5E8(void);

void sub_08063994(void);
void sub_0806A454(void);
void sub_0806CC4C(void);
void sub_0806CC64(void);

void sub_080718F0(void);
void sub_08072C40(u32, u16, u32);
s32 Interpolate(s32, s32, s32, s32, s32);

s32 Div(s32, s32);

#endif // UNKNOWN_FUNCS_H