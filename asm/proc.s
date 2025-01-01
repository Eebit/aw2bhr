	.include "macro.inc"
	.syntax unified

	thumb_func_start Proc_Init
Proc_Init: @ 0x0801C878
	push {r4, r5, r6, r7, lr}
	ldr r6, _0801C8DC @ =gUnknown_0808F094
	ldr r0, _0801C8E0 @ =gUnknown_0200D610
	movs r1, #0
	ldr r5, [r6]
	adds r3, r0, #0
	adds r3, #0xc
	adds r2, r0, #0
	ldr r7, _0801C8E4 @ =0x00000D14
	adds r4, r0, r7
_0801C88C:
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r3]
	str r1, [r3, #4]
	str r1, [r3, #8]
	str r1, [r3, #0xc]
	str r1, [r3, #0x10]
	str r1, [r3, #0x14]
	strh r1, [r3, #0x18]
	strb r1, [r3, #0x1a]
	strb r1, [r3, #0x1b]
	strb r1, [r3, #0x1c]
	stm r5!, {r2}
	adds r3, #0x6c
	adds r0, #0x6c
	adds r2, #0x6c
	cmp r0, r4
	ble _0801C88C
	ldr r2, [r6]
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #0
	str r0, [r1]
	ldr r0, _0801C8E8 @ =gUnknown_0200E414
	str r2, [r0]
	ldr r1, _0801C8EC @ =gUnknown_0200E418
	movs r2, #0
	adds r0, r1, #0
	adds r0, #0x1c
_0801C8C8:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge _0801C8C8
	ldr r1, _0801C8F0 @ =gUnknown_03001FDC
	movs r0, #1
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801C8DC: .4byte gUnknown_0808F094
_0801C8E0: .4byte gUnknown_0200D610
_0801C8E4: .4byte 0x00000D14
_0801C8E8: .4byte gUnknown_0200E414
_0801C8EC: .4byte gUnknown_0200E418
_0801C8F0: .4byte gUnknown_03001FDC

	thumb_func_start Proc_Start
Proc_Start: @ 0x0801C8F4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	bl AllocateProcess
	adds r5, r0, #0
	str r4, [r5]
	str r4, [r5, #4]
	str r4, [r5, #8]
	movs r0, #0
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	str r0, [r5, #0x14]
	str r0, [r5, #0x18]
	str r0, [r5, #0x1c]
	str r0, [r5, #0x20]
	movs r1, #0
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x26
	strb r1, [r0]
	adds r0, #2
	strb r1, [r0]
	adds r1, r5, #0
	adds r1, #0x27
	movs r0, #8
	strb r0, [r1]
	cmp r6, #7
	bgt _0801C938
	adds r0, r5, #0
	adds r1, r6, #0
	bl InsertRootProcess
	b _0801C940
_0801C938:
	adds r0, r5, #0
	adds r1, r6, #0
	bl InsertChildProcess
_0801C940:
	adds r0, r5, #0
	bl RunProcessScript
	adds r2, r5, #0
	adds r2, #0x27
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start Proc_StartBlocking
Proc_StartBlocking: @ 0x0801C95C
	push {lr}
	bl Proc_Start
	adds r2, r0, #0
	ldr r0, [r2]
	cmp r0, #0
	beq _0801C984
	adds r3, r2, #0
	adds r3, #0x27
	ldrb r1, [r3]
	movs r0, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, [r2, #0x14]
	adds r1, #0x28
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	b _0801C986
_0801C984:
	movs r0, #0
_0801C986:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start DeleteProcessRecursive
DeleteProcessRecursive: @ 0x0801C98C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0801C99A
	bl DeleteProcessRecursive
_0801C99A:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0801C9A4
	bl DeleteProcessRecursive
_0801C9A4:
	adds r6, r4, #0
	adds r6, #0x27
	ldrb r0, [r6]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	bne _0801C9E4
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0801C9BE
	adds r0, r4, #0
	bl _call_via_r1
_0801C9BE:
	adds r0, r4, #0
	bl sub_0801CA14
	str r5, [r4]
	str r5, [r4, #4]
	str r5, [r4, #0x10]
	ldrb r0, [r6]
	movs r1, #1
	orrs r0, r1
	strb r0, [r6]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0801C9E4
	ldr r1, [r4, #0x14]
	adds r1, #0x28
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_0801C9E4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start Proc_End
Proc_End: @ 0x0801C9EC
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0
	beq _0801C9FE
	bl UnlinkProcess
	adds r0, r4, #0
	bl DeleteProcessRecursive
_0801C9FE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start AllocateProcess
AllocateProcess: @ 0x0801CA04
	ldr r1, _0801CA10 @ =gUnknown_0200E414
	ldr r2, [r1]
	ldm r2!, {r0}
	str r2, [r1]
	bx lr
	.align 2, 0
_0801CA10: .4byte gUnknown_0200E414

	thumb_func_start sub_0801CA14
sub_0801CA14: @ 0x0801CA14
	ldr r2, _0801CA20 @ =gUnknown_0200E414
	ldr r1, [r2]
	subs r1, #4
	str r1, [r2]
	str r0, [r1]
	bx lr
	.align 2, 0
_0801CA20: .4byte gUnknown_0200E414

	thumb_func_start InsertRootProcess
InsertRootProcess: @ 0x0801CA24
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, _0801CA40 @ =gUnknown_0200E418
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0801CA38
	str r2, [r1, #0x1c]
	str r1, [r2, #0x20]
_0801CA38:
	str r3, [r2, #0x14]
	str r2, [r0]
	bx lr
	.align 2, 0
_0801CA40: .4byte gUnknown_0200E418

	thumb_func_start InsertChildProcess
InsertChildProcess: @ 0x0801CA44
	adds r2, r0, #0
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _0801CA52
	str r2, [r0, #0x1c]
	ldr r0, [r1, #0x18]
	str r0, [r2, #0x20]
_0801CA52:
	str r2, [r1, #0x18]
	str r1, [r2, #0x14]
	bx lr

	thumb_func_start UnlinkProcess
UnlinkProcess: @ 0x0801CA58
	adds r2, r0, #0
	ldr r1, [r2, #0x1c]
	cmp r1, #0
	beq _0801CA64
	ldr r0, [r2, #0x20]
	str r0, [r1, #0x20]
_0801CA64:
	ldr r1, [r2, #0x20]
	cmp r1, #0
	beq _0801CA6E
	ldr r0, [r2, #0x1c]
	str r0, [r1, #0x1c]
_0801CA6E:
	ldr r1, [r2, #0x14]
	cmp r1, #8
	ble _0801CA80
	ldr r0, [r1, #0x18]
	cmp r0, r2
	bne _0801CA90
	ldr r0, [r2, #0x20]
	str r0, [r1, #0x18]
	b _0801CA90
_0801CA80:
	ldr r0, _0801CA98 @ =gUnknown_0200E418
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, r2
	bne _0801CA90
	ldr r0, [r2, #0x20]
	str r0, [r1]
_0801CA90:
	movs r0, #0
	str r0, [r2, #0x1c]
	str r0, [r2, #0x20]
	bx lr
	.align 2, 0
_0801CA98: .4byte gUnknown_0200E418

	thumb_func_start sub_0801CA9C
sub_0801CA9C: @ 0x0801CA9C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0801CB08 @ =gUnknown_0200E418
	ldr r0, [r0]
	cmp r4, r0
	bne _0801CAB0
	ldr r0, _0801CB0C @ =gUnknown_03001FDC
	ldr r0, [r0]
	cmp r0, #0
	beq _0801CB02
_0801CAB0:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0801CABA
	bl sub_0801CA9C
_0801CABA:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801CAF8
	adds r2, r4, #0
	adds r2, #0x27
	ldrb r1, [r2]
	movs r0, #8
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	bne _0801CAF8
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0801CAE6
	adds r0, r4, #0
	bl RunProcessScript
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0801CAEE
_0801CAE6:
	ldr r1, [r4, #0x10]
	adds r0, r4, #0
	bl _call_via_r1
_0801CAEE:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801CB02
_0801CAF8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0801CB02
	bl sub_0801CA9C
_0801CB02:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801CB08: .4byte gUnknown_0200E418
_0801CB0C: .4byte gUnknown_03001FDC

	thumb_func_start sub_0801CB10
sub_0801CB10: @ 0x0801CB10
	push {lr}
	cmp r0, #0
	beq _0801CB1A
	bl sub_0801CA9C
_0801CB1A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CB20
sub_0801CB20: @ 0x0801CB20
	movs r1, #0
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801CB28
sub_0801CB28: @ 0x0801CB28
	adds r3, r0, #0
	ldr r1, _0801CB38 @ =gUnknown_0200D610
	movs r2, #0
_0801CB2E:
	ldr r0, [r1]
	cmp r0, r3
	bne _0801CB3C
	adds r0, r1, #0
	b _0801CB46
	.align 2, 0
_0801CB38: .4byte gUnknown_0200D610
_0801CB3C:
	adds r2, #1
	adds r1, #0x6c
	cmp r2, #0x1f
	ble _0801CB2E
	movs r0, #0
_0801CB46:
	bx lr

	thumb_func_start sub_0801CB48
sub_0801CB48: @ 0x0801CB48
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0801CB6C @ =gUnknown_0200D610
	movs r3, #0
	movs r1, #0x1f
_0801CB52:
	ldr r0, [r2]
	cmp r0, r4
	bne _0801CB5A
	adds r3, #1
_0801CB5A:
	subs r1, #1
	adds r2, #0x6c
	cmp r1, #0
	bge _0801CB52
	adds r0, r3, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0801CB6C: .4byte gUnknown_0200D610

	thumb_func_start sub_0801CB70
sub_0801CB70: @ 0x0801CB70
	adds r3, r0, #0
	ldr r1, _0801CB8C @ =gUnknown_0200D610
	movs r2, #0
_0801CB76:
	ldr r0, [r1]
	cmp r0, r3
	bne _0801CB90
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0801CB90
	adds r0, r1, #0
	b _0801CB9A
	.align 2, 0
_0801CB8C: .4byte gUnknown_0200D610
_0801CB90:
	adds r2, #1
	adds r1, #0x6c
	cmp r2, #0x1f
	ble _0801CB76
	movs r0, #0
_0801CB9A:
	bx lr

	thumb_func_start sub_0801CB9C
sub_0801CB9C: @ 0x0801CB9C
	adds r3, r0, #0
	ldr r1, _0801CBB8 @ =gUnknown_0200D610
	movs r2, #0
_0801CBA2:
	ldr r0, [r1]
	cmp r0, #0
	beq _0801CBBC
	adds r0, r1, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, r3
	bne _0801CBBC
	adds r0, r1, #0
	b _0801CBC6
	.align 2, 0
_0801CBB8: .4byte gUnknown_0200D610
_0801CBBC:
	adds r2, #1
	adds r1, #0x6c
	cmp r2, #0x1f
	ble _0801CBA2
	movs r0, #0
_0801CBC6:
	bx lr

	thumb_func_start sub_0801CBC8
sub_0801CBC8: @ 0x0801CBC8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r1, r0, #0
	ldr r2, [r1, #4]
	ldrh r3, [r2]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	beq _0801CBFA
	movs r5, #0
_0801CBDC:
	cmp r3, #0xb
	bne _0801CBEE
	movs r6, #2
	ldrsh r0, [r2, r6]
	cmp r0, r4
	bne _0801CBEE
	str r2, [r1, #8]
	str r5, [r1, #0x10]
	b _0801CBFA
_0801CBEE:
	adds r2, #8
	ldrh r3, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #0
	bne _0801CBDC
_0801CBFA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801CC00
sub_0801CC00: @ 0x0801CC00
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801CC0C
sub_0801CC0C: @ 0x0801CC0C
	adds r0, #0x26
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801CC14
sub_0801CC14: @ 0x0801CC14
	str r1, [r0, #0xc]
	bx lr

	thumb_func_start sub_0801CC18
sub_0801CC18: @ 0x0801CC18
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _0801CC3C @ =gUnknown_0200D610
	movs r5, #0x1f
_0801CC20:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801CC2C
	adds r0, r4, #0
	bl _call_via_r6
_0801CC2C:
	subs r5, #1
	adds r4, #0x6c
	cmp r5, #0
	bge _0801CC20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC3C: .4byte gUnknown_0200D610

	thumb_func_start sub_0801CC40
sub_0801CC40: @ 0x0801CC40
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, _0801CC64 @ =gUnknown_0200D610
	movs r5, #0x1f
_0801CC4A:
	ldr r0, [r4]
	cmp r0, r7
	bne _0801CC56
	adds r0, r4, #0
	bl _call_via_r6
_0801CC56:
	subs r5, #1
	adds r4, #0x6c
	cmp r5, #0
	bge _0801CC4A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC64: .4byte gUnknown_0200D610

	thumb_func_start sub_0801CC68
sub_0801CC68: @ 0x0801CC68
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, _0801CC90 @ =gUnknown_0200D610
	movs r5, #0x1f
_0801CC72:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, r7
	bne _0801CC82
	adds r0, r4, #0
	bl _call_via_r6
_0801CC82:
	subs r5, #1
	adds r4, #0x6c
	cmp r5, #0
	bge _0801CC72
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801CC90: .4byte gUnknown_0200D610

	thumb_func_start sub_0801CC94
sub_0801CC94: @ 0x0801CC94
	adds r3, r0, #0
	movs r2, #0x1f
	ldr r0, _0801CCB4 @ =gUnknown_0200D610
	adds r1, r0, #0
	adds r1, #0x26
_0801CC9E:
	ldrb r0, [r1]
	cmp r0, r3
	bne _0801CCAA
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
_0801CCAA:
	subs r2, #1
	adds r1, #0x6c
	cmp r2, #0
	bge _0801CC9E
	bx lr
	.align 2, 0
_0801CCB4: .4byte gUnknown_0200D610

	thumb_func_start sub_0801CCB8
sub_0801CCB8: @ 0x0801CCB8
	adds r3, r0, #0
	movs r2, #0x1f
	ldr r0, _0801CCD8 @ =gUnknown_0200D610
	adds r1, r0, #0
	adds r1, #0x26
_0801CCC2:
	ldrb r0, [r1]
	cmp r0, r3
	bne _0801CCCE
	ldrb r0, [r1, #2]
	subs r0, #1
	strb r0, [r1, #2]
_0801CCCE:
	subs r2, #1
	adds r1, #0x6c
	cmp r2, #0
	bge _0801CCC2
	bx lr
	.align 2, 0
_0801CCD8: .4byte gUnknown_0200D610

	thumb_func_start sub_0801CCDC
sub_0801CCDC: @ 0x0801CCDC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _0801CD04 @ =gUnknown_0200D610
	movs r5, #0x1f
_0801CCE4:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, r6
	bne _0801CCF4
	adds r0, r4, #0
	bl Proc_End
_0801CCF4:
	subs r5, #1
	adds r4, #0x6c
	cmp r5, #0
	bge _0801CCE4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801CD04: .4byte gUnknown_0200D610

	thumb_func_start sub_0801CD08
sub_0801CD08: @ 0x0801CD08
	push {lr}
	bl Proc_End
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CD14
sub_0801CD14: @ 0x0801CD14
	push {lr}
	ldr r1, _0801CD20 @ =sub_0801CD08
	bl sub_0801CC40
	pop {r0}
	bx r0
	.align 2, 0
_0801CD20: .4byte sub_0801CD08

	thumb_func_start sub_0801CD24
sub_0801CD24: @ 0x0801CD24
	push {lr}
	bl sub_0801CB20
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CD30
sub_0801CD30: @ 0x0801CD30
	push {lr}
	ldr r1, _0801CD3C @ =sub_0801CD24
	bl sub_0801CC40
	pop {r0}
	bx r0
	.align 2, 0
_0801CD3C: .4byte sub_0801CD24

	thumb_func_start sub_0801CD40
sub_0801CD40: @ 0x0801CD40
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0801CD50
	bl sub_0801CD40
_0801CD50:
	adds r0, r4, #0
	bl _call_via_r5
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0801CD62
	adds r1, r5, #0
	bl sub_0801CD40
_0801CD62:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0801CD68
sub_0801CD68: @ 0x0801CD68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl _call_via_r5
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0801CD7E
	adds r1, r5, #0
	bl sub_0801CD40
_0801CD7E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0801CD84
sub_0801CD84: @ 0x0801CD84
	push {lr}
	bl Proc_End
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start sub_0801CD90
sub_0801CD90: @ 0x0801CD90
	ldr r1, [r0, #8]
	adds r1, #8
	str r1, [r0, #8]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_0801CD9C
sub_0801CD9C: @ 0x0801CD9C
	push {lr}
	ldr r1, [r0, #8]
	ldr r2, [r1, #4]
	adds r1, #8
	str r1, [r0, #8]
	bl _call_via_r2
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_0801CDB0
sub_0801CDB0: @ 0x0801CDB0
	push {lr}
	ldr r1, [r0, #8]
	ldr r2, [r1, #4]
	adds r1, #8
	str r1, [r0, #8]
	bl _call_via_r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801CDC8
sub_0801CDC8: @ 0x0801CDC8
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #8]
	ldrh r0, [r2, #2]
	ldr r3, [r2, #4]
	adds r2, #8
	str r2, [r1, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl _call_via_r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801CDE8
sub_0801CDE8: @ 0x0801CDE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	adds r0, #8
	str r0, [r4, #8]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0801CE06
	movs r0, #1
	b _0801CE0E
_0801CE06:
	ldr r0, [r4, #8]
	subs r0, #8
	str r0, [r4, #8]
	movs r0, #0
_0801CE0E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801CE14
sub_0801CE14: @ 0x0801CE14
	ldr r1, [r0, #8]
	ldr r2, [r1, #4]
	str r2, [r0, #0x10]
	adds r1, #8
	str r1, [r0, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_0801CE24
sub_0801CE24: @ 0x0801CE24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl sub_0801CC14
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801CE40
sub_0801CE40: @ 0x0801CE40
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	adds r1, r4, #0
	bl Proc_Start
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801CE5C
sub_0801CE5C: @ 0x0801CE5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	adds r1, r4, #0
	bl Proc_StartBlocking
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801CE78
sub_0801CE78: @ 0x0801CE78
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	bl Proc_Start
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801CE98
sub_0801CE98: @ 0x0801CE98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_0801CB28
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt _0801CEB6
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	b _0801CEB8
_0801CEB6:
	movs r0, #0
_0801CEB8:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801CEC0
sub_0801CEC0: @ 0x0801CEC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_0801CD14
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801CEDC
sub_0801CEDC: @ 0x0801CEDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_0801CD30
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801CEF8
sub_0801CEF8: @ 0x0801CEF8
	ldr r1, [r0, #8]
	adds r1, #8
	str r1, [r0, #8]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_0801CF04
sub_0801CF04: @ 0x0801CF04
	push {lr}
	ldr r1, [r0, #8]
	ldr r1, [r1, #4]
	bl sub_0801CC00
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_0801CF14
sub_0801CF14: @ 0x0801CF14
	push {lr}
	ldr r1, [r0, #8]
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_0801CBC8
	movs r0, #1
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801CF28
sub_0801CF28: @ 0x0801CF28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0801CF40
	bl _call_via_r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0801CF4E
_0801CF40:
	ldr r0, [r4, #8]
	movs r2, #2
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	bl sub_0801CBC8
	b _0801CF54
_0801CF4E:
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
_0801CF54:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801CF5C
sub_0801CF5C: @ 0x0801CF5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _0801CF72
	bl _call_via_r0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801CF80
_0801CF72:
	ldr r0, [r4, #8]
	movs r2, #2
	ldrsh r1, [r0, r2]
	adds r0, r4, #0
	bl sub_0801CBC8
	b _0801CF86
_0801CF80:
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
_0801CF86:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801CF90
sub_0801CF90: @ 0x0801CF90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_0803B5A4
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801CFAC
sub_0801CFAC: @ 0x0801CFAC
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0x24]
	subs r0, #1
	strh r0, [r1, #0x24]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0801CFC2
	adds r0, r1, #0
	bl sub_0801CB20
_0801CFC2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801CFC8
sub_0801CFC8: @ 0x0801CFC8
	adds r1, r0, #0
	ldr r0, [r1, #8]
	ldrh r2, [r0, #2]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0801CFDC
	strh r2, [r1, #0x24]
	ldr r0, _0801CFE8 @ =sub_0801CFAC
	str r0, [r1, #0x10]
_0801CFDC:
	ldr r0, [r1, #8]
	adds r0, #8
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0
_0801CFE8: .4byte sub_0801CFAC

	thumb_func_start sub_0801CFEC
sub_0801CFEC: @ 0x0801CFEC
	ldr r1, [r0, #8]
	ldrh r1, [r1, #2]
	adds r2, r0, #0
	adds r2, #0x26
	strb r1, [r2]
	ldr r1, [r0, #8]
	adds r1, #8
	str r1, [r0, #8]
	movs r0, #1
	bx lr

	thumb_func_start sub_0801D000
sub_0801D000: @ 0x0801D000
	ldr r1, [r0, #8]
	adds r1, #8
	str r1, [r0, #8]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D00C
sub_0801D00C: @ 0x0801D00C
	movs r0, #0
	bx lr

	thumb_func_start sub_0801D010
sub_0801D010: @ 0x0801D010
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _0801D03C @ =gUnknown_0200D610
	movs r4, #0
	ldr r5, [r3]
	movs r1, #0x1f
_0801D01C:
	ldr r0, [r2]
	cmp r0, r5
	bne _0801D024
	adds r4, #1
_0801D024:
	subs r1, #1
	adds r2, #0x6c
	cmp r1, #0
	bge _0801D01C
	cmp r4, #1
	bgt _0801D040
	ldr r0, [r3, #8]
	adds r0, #8
	str r0, [r3, #8]
	movs r0, #1
	b _0801D048
	.align 2, 0
_0801D03C: .4byte gUnknown_0200D610
_0801D040:
	adds r0, r3, #0
	bl Proc_End
	movs r0, #0
_0801D048:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D050
sub_0801D050: @ 0x0801D050
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0801D05C @ =gUnknown_0200D610
	movs r3, #0
	b _0801D064
	.align 2, 0
_0801D05C: .4byte gUnknown_0200D610
_0801D060:
	adds r3, #1
	adds r2, #0x6c
_0801D064:
	cmp r3, #0x1f
	bgt _0801D07A
	cmp r2, r4
	beq _0801D060
	ldr r1, [r2]
	ldr r0, [r4]
	cmp r1, r0
	bne _0801D060
	adds r0, r2, #0
	bl Proc_End
_0801D07A:
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D088
sub_0801D088: @ 0x0801D088
	ldr r1, [r0, #8]
	adds r1, #8
	str r1, [r0, #8]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D094
sub_0801D094: @ 0x0801D094
	adds r3, r0, #0
	adds r3, #0x27
	ldrb r2, [r3]
	movs r1, #4
	orrs r1, r2
	strb r1, [r3]
	ldr r1, [r0, #8]
	adds r1, #8
	str r1, [r0, #8]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D0AC
sub_0801D0AC: @ 0x0801D0AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_0803B524
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D0C8
sub_0801D0C8: @ 0x0801D0C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_0803B4DC
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D0E4
sub_0801D0E4: @ 0x0801D0E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_08013098
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D104
sub_0801D104: @ 0x0801D104
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_080130B0
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D124
sub_0801D124: @ 0x0801D124
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08011550
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D140
sub_0801D140: @ 0x0801D140
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_0801156C
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D15C
sub_0801D15C: @ 0x0801D15C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_08011588
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D178
sub_0801D178: @ 0x0801D178
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	bl sub_080115B4
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D194
sub_0801D194: @ 0x0801D194
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_080115E0
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D1B4
sub_0801D1B4: @ 0x0801D1B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_080115F8
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D1D4
sub_0801D1D4: @ 0x0801D1D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_08011610
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D1F4
sub_0801D1F4: @ 0x0801D1F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r1, r4, #0
	bl sub_0801163C
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D214
sub_0801D214: @ 0x0801D214
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	movs r2, #0x24
	ldrsh r1, [r4, r2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_080152C0
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D238
sub_0801D238: @ 0x0801D238
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0801D25A
	ldr r0, [r4, #8]
	adds r0, #8
	str r0, [r4, #8]
	movs r0, #1
	b _0801D25C
_0801D25A:
	movs r0, #0
_0801D25C:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start RunProcessScript
RunProcessScript: @ 0x0801D264
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0801D2AE
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _0801D2AE
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0801D2AE
	ldr r5, _0801D284 @ =gUnknown_0808F098
	b _0801D294
	.align 2, 0
_0801D284: .4byte gUnknown_0808F098
_0801D288:
	ldr r0, [r4]
	cmp r0, #0
	beq _0801D2AE
	ldrb r0, [r6]
	cmp r0, #0
	bne _0801D2AE
_0801D294:
	ldr r1, [r5]
	ldr r0, [r4, #8]
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0801D288
_0801D2AE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801D2B4
sub_0801D2B4: @ 0x0801D2B4
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D2B8
sub_0801D2B8: @ 0x0801D2B8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0801D2C8
	bl sub_0801D2B8
_0801D2C8:
	adds r0, r4, #0
	bl sub_0801D2B4
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0801D2E8
	ldr r0, [r5]
	adds r0, #2
	str r0, [r5]
	adds r0, r1, #0
	adds r1, r5, #0
	bl sub_0801D2B8
	ldr r0, [r5]
	subs r0, #2
	str r0, [r5]
_0801D2E8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D2F0
sub_0801D2F0: @ 0x0801D2F0
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	bl sub_0801D2B4
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _0801D31A
	ldr r0, [sp]
	adds r0, #2
	str r0, [sp]
	adds r0, r1, #0
	mov r1, sp
	bl sub_0801D2B8
	ldr r0, [sp]
	subs r0, #2
	str r0, [sp]
_0801D31A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D324
sub_0801D324: @ 0x0801D324
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D328
sub_0801D328: @ 0x0801D328
	str r1, [r0, #0x10]
	bx lr

	thumb_func_start sub_0801D32C
sub_0801D32C: @ 0x0801D32C
	adds r0, #0x28
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D338
sub_0801D338: @ 0x0801D338
	adds r0, #0x28
	ldrb r1, [r0]
	subs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0801D344
sub_0801D344: @ 0x0801D344
	b sub_0801D344
	.align 2, 0

	.align 2, 0
