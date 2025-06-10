#ifndef TYPES_H
#define TYPES_H

#include "gba/types.h"

struct ProcCmd;
typedef void * ProcPtr;
typedef void (*ProcFunc)(ProcPtr proc);

struct Vec2  { s16 x, y; };
struct Vec2u { u16 x, y; };

#endif // TYPES_H
