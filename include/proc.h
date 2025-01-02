#ifndef PROC_H
#define PROC_H

struct Proc;

struct ProcCmd
{
    /* 00 */ s16 opcode;
    /* 02 */ s16 dataImm;
    /* 04 */ const void * dataPtr;
};

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
void sub_0801CA14(ProcPtr proc);
void InsertRootProcess(struct Proc * proc, s32 treeNum);
void InsertChildProcess(struct Proc * proc, struct Proc * parent);
void UnlinkProcess(struct Proc * proc);
void sub_0801CA9C(struct Proc * proc);
void sub_0801CB10(ProcPtr proc);
void sub_0801CB20(ProcPtr proc);
ProcPtr sub_0801CB28(const struct ProcCmd * script);
s32 sub_0801CB48(const struct ProcCmd * script);
ProcPtr sub_0801CB70(const struct ProcCmd * script);
ProcPtr sub_0801CB9C(s32 mark);
void sub_0801CBC8(ProcPtr proc, s32 label);
void sub_0801CC00(ProcPtr proc, const struct ProcCmd * script);
void sub_0801CC0C(ProcPtr proc, u8 mark);
void sub_0801CC14(ProcPtr proc, ProcFunc func);
void sub_0801CC18(ProcFunc func);
void sub_0801CC40(const struct ProcCmd * script, ProcFunc func);
void sub_0801CC68(s32 mark, ProcFunc func);
void sub_0801CC94(s32 mark);
void sub_0801CCB8(s32 mark);
void sub_0801CCDC(s32 mark);
void sub_0801CD08(ProcPtr proc);
void sub_0801CD14(const struct ProcCmd * script);
void sub_0801CD24(ProcPtr proc);
void sub_0801CD30(const struct ProcCmd * script);
void sub_0801CD40(ProcPtr proc, ProcFunc func);
void sub_0801CD68(ProcPtr proc, ProcFunc func);
bool8 sub_0801CD84(ProcPtr proc);
bool8 sub_0801CD90(ProcPtr proc);
bool8 sub_0801CD9C(ProcPtr proc);
bool8 sub_0801CDB0(ProcPtr proc);
bool8 sub_0801CDC8(ProcPtr proc);
bool8 sub_0801CDE8(ProcPtr proc);
bool8 sub_0801CE14(ProcPtr proc);
bool8 sub_0801CE24(ProcPtr proc);
bool8 sub_0801CE40(ProcPtr proc);
bool8 sub_0801CE5C(ProcPtr proc);
bool8 sub_0801CE78(ProcPtr proc);
bool8 sub_0801CE98(ProcPtr proc);
bool8 sub_0801CEC0(ProcPtr proc);
bool8 sub_0801CEDC(ProcPtr proc);
bool8 sub_0801CEF8(ProcPtr proc);
bool8 sub_0801CF04(ProcPtr proc);
bool8 sub_0801CF14(ProcPtr proc);
bool8 sub_0801CF28(ProcPtr proc);
bool8 sub_0801CF5C(ProcPtr proc);
bool8 sub_0801CF90(ProcPtr proc);
void sub_0801CFAC(ProcPtr proc);
bool8 sub_0801CFC8(ProcPtr proc);
bool8 sub_0801CFEC(ProcPtr proc);
bool8 sub_0801D000(ProcPtr proc);
bool8 sub_0801D00C(ProcPtr proc);
bool8 sub_0801D010(ProcPtr proc);
bool8 sub_0801D050(ProcPtr proc);
bool8 sub_0801D088(ProcPtr proc);
bool8 sub_0801D094(ProcPtr proc);
bool8 sub_0801D0AC(ProcPtr proc);
bool8 sub_0801D0C8(ProcPtr proc);
bool8 sub_0801D0E4(ProcPtr proc);
bool8 sub_0801D104(ProcPtr proc);
bool8 sub_0801D124(ProcPtr proc);
bool8 sub_0801D140(ProcPtr proc);
bool8 sub_0801D15C(ProcPtr proc);
bool8 sub_0801D178(ProcPtr proc);
bool8 sub_0801D194(ProcPtr proc);
bool8 sub_0801D1B4(ProcPtr proc);
bool8 sub_0801D1D4(ProcPtr proc);
bool8 sub_0801D1F4(ProcPtr proc);
bool8 sub_0801D214(ProcPtr proc);
bool8 sub_0801D238(ProcPtr proc);
void RunProcessScript(ProcPtr proc);
void sub_0801D2B4(struct Proc * proc);
void sub_0801D2B8(struct Proc * proc, s32 * indent);
void sub_0801D2F0(struct Proc * proc);
void sub_0801D324(void);
void sub_0801D328(ProcPtr proc, ProcFunc func);
void sub_0801D32C(struct Proc * proc);
void sub_0801D338(struct Proc * proc);
void sub_0801D344(void);

#endif // PROC_H
