#ifndef PROC_H
#define PROC_H

struct Proc;

struct ProcCmd
{
    /* 00 */ s16 opcode;
    /* 02 */ s16 dataImm;
    /* 04 */ const void * dataPtr;
};

enum
{
    PROC_CMD_END = 0x00,
    PROC_CMD_01 = 0x01,
    PROC_CMD_CALL = 0x02,
    PROC_CMD_REPEAT = 0x03,
    PROC_CMD_ONEND = 0x04,
    PROC_CMD_START_CHILD = 0x05,
    PROC_CMD_START_CHILD_BLOCKING = 0x06,
    PROC_CMD_START_BUGGED = 0x07,
    PROC_CMD_WHILE_EXISTS = 0x08,
    PROC_CMD_END_EACH = 0x09,
    PROC_CMD_BREAK_EACH = 0x0A,
    PROC_CMD_LABEL = 0x0B,
    PROC_CMD_GOTO = 0x0C,
    PROC_CMD_GOTO_SCR = 0x0D,
    PROC_CMD_SLEEP = 0x0E,
    PROC_CMD_MARK = 0x0F,
    PROC_CMD_BLOCK = 0x10,
    PROC_CMD_END_IF_DUP = 0x11,
    PROC_CMD_SET_FLAG2 = 0x12,
    PROC_CMD_13 = 0x13,
    PROC_CMD_WHILE = 0x14,
    PROC_CMD_15 = 0x15,
    PROC_CMD_CALL_RET = 0x16,
    PROC_CMD_END_DUPS = 0x17,
    PROC_CMD_CALL_ARG = 0x18,
    PROC_CMD_19 = 0x19,
    PROC_CMD_1A = 0x1A,
    PROC_CMD_1B = 0x1B,
    PROC_CMD_1C = 0x1C,
    PROC_CMD_1D = 0x1D,
    PROC_CMD_1E = 0x1E,
    PROC_CMD_1F = 0x1F,
    PROC_CMD_20 = 0x20,
    PROC_CMD_21 = 0x21,
    PROC_CMD_22 = 0x22,
    PROC_CMD_23 = 0x23,
    PROC_CMD_24 = 0x24,
    PROC_CMD_25 = 0x25,
    PROC_CMD_26 = 0x26,
    PROC_CMD_GOTO_IF_YES = 0x27,
    PROC_CMD_GOTO_IF_NO = 0x28,
    PROC_CMD_29 = 0x29,
    PROC_CMD_2A = 0x2A,
};

#define PROC_END                          { PROC_CMD_END, 0, 0 }
// PROC_01
#define PROC_CALL(func)                   { PROC_CMD_CALL, 0, (func) }
#define PROC_REPEAT(func)                 { PROC_CMD_REPEAT, 0, (func) }
#define PROC_ONEND(func)                  { PROC_CMD_ONEND, 0, (func) }
#define PROC_START_CHILD(procscr)         { PROC_CMD_START_CHILD, 0, (procscr) }
#define PROC_START_CHILD_LOCKING(procscr) { PROC_CMD_START_CHILD_BLOCKING, 1, (procscr) }
#define PROC_START_BUGGED(procscr)        { PROC_CMD_START_BUGGED, 0, (procscr) }
#define PROC_WHILE_EXISTS(procscr)        { PROC_CMD_WHILE_EXISTS, 0, (procscr) }
#define PROC_END_EACH(procscr)            { PROC_CMD_END_EACH, 0, (procscr) }
#define PROC_BREAK_EACH(procscr)          { PROC_CMD_BREAK_EACH, 0, (procscr) }
#define PROC_LABEL(label)                 { PROC_CMD_LABEL, (label), 0 }
#define PROC_GOTO(label)                  { PROC_CMD_GOTO, (label), 0 }
#define PROC_GOTO_SCR(procscr)            { PROC_CMD_GOTO_SCR, 0, (procscr) }
#define PROC_SLEEP(duration)              { PROC_CMD_SLEEP, (duration), 0 }
#define PROC_MARK(mark)                   { PROC_CMD_MARK, (mark), 0 }
#define PROC_BLOCK                        { PROC_CMD_BLOCK, 0, 0 }
#define PROC_END_IF_DUP                   { PROC_CMD_END_IF_DUP, 0, 0 }
#define PROC_SET_FLAG2                    { PROC_CMD_SET_FLAG2, 0, 0 }
#define PROC_13                           { PROC_CMD_13, 0, 0 }
#define PROC_WHILE(func)                  { PROC_CMD_WHILE, 0, (func) }
#define PROC_15                           { PROC_CMD_15, 0, 0 }
#define PROC_CALL_2(func)                 { PROC_CMD_CALL_2, 0, (func) }
#define PROC_END_DUPS                     { PROC_CMD_END_DUPS, 0, 0 }
#define PROC_CALL_ARG(func, arg)          { PROC_CMD_CALL_ARG, (arg), (func) }
#define PROC_19                           { PROC_CMD_19, 0, 0 }
// PROC_1A
// PROC_1B
// PROC_1C
// PROC_1D
// PROC_1E
// PROC_1F
// PROC_20
// PROC_21
// PROC_22
// PROC_23
// PROC_24
// PROC_25
// PROC_26
// PROC_GOTO_IF_YES
// PROC_GOTO_IF_NO
// PROC_29
// PROC_2A

#define PROC_YIELD                        PROC_SLEEP(0)

#define PROC_HEADER                                                                        \
    const struct ProcCmd * proc_script; /* pointer to proc script */                        \
    const struct ProcCmd * proc_scrCur; /* pointer to currently executing script command */ \
    const struct ProcCmd * proc_scrUnk;                                                     \
    ProcFunc proc_endCb; /* callback to run upon deleting the process */                   \
    ProcFunc proc_idleCb; /* callback to run once each frame. */                           \
                          /* disables script execution when not null */                    \
    ProcPtr proc_parent; /* pointer to parent proc. If this proc is a root proc, */        \
                         /* this member is an integer which is the root index. */          \
    ProcPtr proc_child; /* pointer to most recently added child */                         \
    ProcPtr proc_next; /* next sibling */                                                  \
    ProcPtr proc_prev; /* previous sibling */                                              \
    s16 proc_sleepTime;                                                                    \
    u8 proc_mark;                                                                          \
    u8 proc_flags;                                                                         \
    u8 proc_lockCnt; /* wait semaphore. Process execution */                               \
                     /* is blocked when this is nonzero. */                                \

struct Proc
{
    /* 00 */ PROC_HEADER;
    /* 29 */ STRUCT_PAD(0x29, 0x6C);
};

void Proc_Init(void);
ProcPtr Proc_Start(const struct ProcCmd * script, ProcPtr parent);
ProcPtr Proc_StartBlocking(const struct ProcCmd * script, ProcPtr parent);
void DeleteProcessRecursive(struct Proc * proc);
void Proc_End(ProcPtr proc);
ProcPtr AllocateProcess(void);
void FreeProcess(ProcPtr proc);
void InsertRootProcess(struct Proc * proc, s32 treeNum);
void InsertChildProcess(struct Proc * proc, struct Proc * parent);
void UnlinkProcess(struct Proc * proc);
void RunProcCore(struct Proc * proc);
void Proc_Run(ProcPtr proc);
void Proc_Break(ProcPtr proc);
ProcPtr Proc_Find(const struct ProcCmd * script);
s32 Proc_Count(const struct ProcCmd * script);
ProcPtr Proc_FindUnblocked(const struct ProcCmd * script);
ProcPtr Proc_FindWithMark(s32 mark);
void Proc_Goto(ProcPtr proc, s32 label);
void Proc_GotoScript(ProcPtr proc, const struct ProcCmd * script);
void Proc_Mark(ProcPtr proc, u8 mark);
void Proc_SetEndFunc(ProcPtr proc, ProcFunc func);
void Proc_ForAll(ProcFunc func);
void Proc_ForEach(const struct ProcCmd * script, ProcFunc func);
void Proc_ForEachMarked(s32 mark, ProcFunc func);
void Proc_LockEachMarked(s32 mark);
void Proc_ReleaseEachMarked(s32 mark);
void Proc_EndEachMarked(s32 mark);
void EndProc(ProcPtr proc);
void Proc_EndEach(const struct ProcCmd * script);
void BreakProc(ProcPtr proc);
void Proc_BreakEach(const struct ProcCmd * script);
void WalkProcSubtree(ProcPtr proc, ProcFunc func);
void Proc_ForSubtree(ProcPtr proc, ProcFunc func);
bool8 ProcCmd_End(ProcPtr proc);
bool8 ProcCmd_01_0801CD90(ProcPtr proc);
bool8 ProcCmd_Call(ProcPtr proc);
bool8 ProcCmd_CallRet(ProcPtr proc);
bool8 ProcCmd_CallArg(ProcPtr proc);
bool8 ProcCmd_While(ProcPtr proc);
bool8 ProcCmd_Repeat(ProcPtr proc);
bool8 ProcCmd_SetEndFunc(ProcPtr proc);
bool8 ProcCmd_SpawnChild(ProcPtr proc);
bool8 ProcCmd_SpawnBlockingChild(ProcPtr proc);
bool8 ProcCmd_SpawnBugged(ProcPtr proc);
bool8 ProcCmd_WhileExists(ProcPtr proc);
bool8 ProcCmd_EndEach(ProcPtr proc);
bool8 ProcCmd_BreakEach(ProcPtr proc);
bool8 ProcCmd_Label(ProcPtr proc);
bool8 ProcCmd_GotoScript(ProcPtr proc);
bool8 ProcCmd_Goto(ProcPtr proc);
bool8 ProcCmd_GotoIfYes(ProcPtr proc);
bool8 ProcCmd_GotoIfNo(ProcPtr proc);
bool8 ProcCmd_29_0801CF90(ProcPtr proc);
void SleepRepeatFunc(ProcPtr proc);
bool8 ProcCmd_Sleep(ProcPtr proc);
bool8 ProcCmd_Mark(ProcPtr proc);
bool8 ProcCmd_13_Nop(ProcPtr proc);
bool8 ProcCmd_Block(ProcPtr proc);
bool8 ProcCmd_EndIfDuplicate(ProcPtr proc);
bool8 ProcCmd_EndDuplicates(ProcPtr proc);
bool8 ProcCmd_15_Nop(ProcPtr proc);
bool8 ProcCmd_SetFlag2(ProcPtr proc);
bool8 ProcCmd_1B_0801D0AC(ProcPtr proc);
bool8 ProcCmd_1C_0801D0C8(ProcPtr proc);
bool8 ProcCmd_1D_0801D0E4(ProcPtr proc);
bool8 ProcCmd_1E_0801D104(ProcPtr proc);
bool8 ProcCmd_1F_0801D124(ProcPtr proc);
bool8 ProcCmd_20_0801D140(ProcPtr proc);
bool8 ProcCmd_21_0801D15C(ProcPtr proc);
bool8 ProcCmd_22_0801D178(ProcPtr proc);
bool8 ProcCmd_23_0801D194(ProcPtr proc);
bool8 ProcCmd_24_0801D1B4(ProcPtr proc);
bool8 ProcCmd_25_0801D1D4(ProcPtr proc);
bool8 ProcCmd_26_0801D1F4(ProcPtr proc);
bool8 ProcCmd_19_0801D214(ProcPtr proc);
bool8 ProcCmd_1A_0801D238(ProcPtr proc);
void RunProcessScript(ProcPtr proc);
void PrintProcInfo(struct Proc * proc);
void WalkPrintProcInfo(struct Proc * proc, s32 * indent);
void Proc_PrintSubtreeInfo(struct Proc * proc);
void NOP_0801D324(void);
void Proc_SetRepeatFunc(ProcPtr proc, ProcFunc func);
void Proc_Lock(struct Proc * proc);
void Proc_Release(struct Proc * proc);
void sub_0801D344(void);

#define Proc_Exists(script) (Proc_Find((script)) ? TRUE : FALSE)

#endif // PROC_H
