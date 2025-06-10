	.include "macro.inc"
	.syntax unified

	thumb_func_start sub_0806C9B4
sub_0806C9B4: @ 0x0806C9B4
	ldr r1, _0806C9BC @ =0x00000A8C
	str r1, [r0, #0x2c]
	bx lr
	.align 2, 0
_0806C9BC: .4byte 0x00000A8C

	thumb_func_start sub_0806C9C0
sub_0806C9C0: @ 0x0806C9C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803B18C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0806CA1C
	ldr r0, [r4, #0x2c]
	subs r0, #1
	str r0, [r4, #0x2c]
	cmp r0, #0
	bge _0806C9EE
	ldr r0, _0806CA24 @ =gUnknown_08581E10
	bl Proc_Find
	movs r1, #0
	str r1, [r0, #0x34]
	bl sub_0803B5E8
	adds r0, r4, #0
	bl Proc_Break
_0806C9EE:
	ldr r0, _0806CA28 @ =gUnknown_0202F2C4
	ldr r1, [r0]
	ldr r0, _0806CA2C @ =0x00000A8C
	subs r0, r0, r1
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bhi _0806CA1C
	ldr r0, _0806CA30 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0806CA1C
	movs r0, #0x71
	bl sub_0803B4DC
	bl sub_08030ED4
	ldr r1, _0806CA34 @ =gUnknown_08581C90
	adds r0, r4, #0
	bl Proc_GotoScript
_0806CA1C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CA24: .4byte gUnknown_08581E10
_0806CA28: .4byte gUnknown_0202F2C4
_0806CA2C: .4byte 0x00000A8C
_0806CA30: .4byte gUnknown_03002EE0
_0806CA34: .4byte gUnknown_08581C90

	thumb_func_start sub_0806CA38
sub_0806CA38: @ 0x0806CA38
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080137AC
	movs r0, #0x20
	str r0, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CA50
sub_0806CA50: @ 0x0806CA50
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CA80 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0806CA7A
	bl sub_080718F0
	bl sub_080135A4
	ldr r0, [r4, #0x30]
	subs r0, #1
	str r0, [r4, #0x30]
	cmp r0, #0
	bne _0806CA7A
	bl Proc_Init
	bl sub_0806A454
_0806CA7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CA80: .4byte gUnknown_03004008

	thumb_func_start sub_0806CA84
sub_0806CA84: @ 0x0806CA84
	push {lr}
	ldr r0, _0806CA94 @ =gUnknown_0849E818
	movs r1, #3
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0806CA94: .4byte gUnknown_0849E818

	thumb_func_start sub_0806CA98
sub_0806CA98: @ 0x0806CA98
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0806CB2C @ =gUnknown_08581CB8
	bl sub_08012C58
	ldr r5, _0806CB30 @ =gUnknown_030030CC
	ldrb r0, [r5]
	movs r3, #8
	rsbs r3, r3, #0
	ands r3, r0
	ldrb r0, [r5, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, _0806CB34 @ =gUnknown_03002B6C
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0x40
	orrs r3, r0
	strb r3, [r5]
	bl sub_0801237C
	bl sub_08012358
	bl sub_08063994
	ldr r0, _0806CB38 @ =gUnknown_08190B68
	movs r4, #0x80
	lsls r4, r4, #2
	adds r1, r4, #0
	movs r2, #0xa0
	bl sub_08013618
	ldr r0, _0806CB3C @ =gUnknown_0818E164
	movs r1, #0
	adds r2, r4, #0
	bl sub_08013618
	ldr r0, _0806CB40 @ =gUnknown_08186F4C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08011CAC
	ldr r0, _0806CB44 @ =gUnknown_0818DA8C
	ldr r1, _0806CB48 @ =0x0600D800
	bl sub_08011CAC
	bl sub_0806CC64
	movs r0, #0x7f
	str r0, [r6, #0x30]
	ldrb r1, [r5]
	ands r0, r1
	strb r0, [r5]
	ldr r0, [r6, #0x34]
	cmp r0, #0
	beq _0806CB4C
	movs r0, #0
	movs r1, #0x40
	movs r2, #0
	bl sub_08072C40
	b _0806CB54
	.align 2, 0
_0806CB2C: .4byte gUnknown_08581CB8
_0806CB30: .4byte gUnknown_030030CC
_0806CB34: .4byte gUnknown_03002B6C
_0806CB38: .4byte gUnknown_08190B68
_0806CB3C: .4byte gUnknown_0818E164
_0806CB40: .4byte gUnknown_08186F4C
_0806CB44: .4byte gUnknown_0818DA8C
_0806CB48: .4byte 0x0600D800
_0806CB4C:
	adds r0, r6, #0
	movs r1, #0
	bl Proc_Goto
_0806CB54:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CB5C
sub_0806CB5C: @ 0x0806CB5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0806CB76
	ldr r0, _0806CB84 @ =gUnknown_08581E28
	adds r1, r4, #0
	bl Proc_Start
	ldr r1, [r4, #0x34]
	str r1, [r0, #0x34]
	bl sub_0803B5E8
_0806CB76:
	movs r0, #0
	str r0, [r4, #0x30]
	bl sub_0806CC4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CB84: .4byte gUnknown_08581E28

	thumb_func_start sub_0806CB88
sub_0806CB88: @ 0x0806CB88
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080139C4
	bl sub_080718F0
	bl sub_080135A4
	movs r0, #0x7f
	str r0, [r4, #0x30]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CBA8
sub_0806CBA8: @ 0x0806CBA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	blt _0806CBDC
	asrs r0, r0, #1
	movs r1, #0x40
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0
	movs r2, #0
	bl sub_08072C40
	ldr r0, [r4, #0x30]
	movs r1, #3
	ands r0, r1
	cmp r0, #2
	bne _0806CBD6
	bl sub_080718F0
	bl sub_080135A4
_0806CBD6:
	ldr r0, [r4, #0x30]
	subs r0, #1
	str r0, [r4, #0x30]
_0806CBDC:
	ldr r0, [r4, #0x30]
	cmp r0, #0xa
	bne _0806CBF2
	ldr r0, _0806CBFC @ =gUnknown_08581E28
	adds r1, r4, #0
	bl Proc_Start
	ldr r1, [r4, #0x34]
	str r1, [r0, #0x34]
	bl sub_0803B5E8
_0806CBF2:
	bl sub_0806CC4C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CBFC: .4byte gUnknown_08581E28

	thumb_func_start sub_0806CC00
sub_0806CC00: @ 0x0806CC00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0806CC18 @ =gUnknown_08581CF8
	movs r1, #3
	bl Proc_Start
	str r4, [r0, #0x34]
	cmp r4, #0
	beq _0806CC20
	ldr r1, _0806CC1C @ =gUnknown_0202F2C4
	movs r0, #0xb4
	b _0806CC26
	.align 2, 0
_0806CC18: .4byte gUnknown_08581CF8
_0806CC1C: .4byte gUnknown_0202F2C4
_0806CC20:
	ldr r1, _0806CC30 @ =gUnknown_0202F2C4
	movs r0, #0xb4
	lsls r0, r0, #1
_0806CC26:
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CC30: .4byte gUnknown_0202F2C4

	thumb_func_start sub_0806CC34
sub_0806CC34: @ 0x0806CC34
	push {lr}
	ldr r0, _0806CC48 @ =gUnknown_08581CF8
	bl Proc_Find
	cmp r0, #0
	beq _0806CC42
	movs r0, #1
_0806CC42:
	pop {r1}
	bx r1
	.align 2, 0
_0806CC48: .4byte gUnknown_08581CF8

	thumb_func_start sub_0806CC4C
sub_0806CC4C: @ 0x0806CC4C
	push {lr}
	ldr r2, _0806CC60 @ =gUnknown_08581D40
	movs r0, #0x28
	movs r1, #0x8c
	movs r3, #0
	bl sub_0801BD00
	pop {r0}
	bx r0
	.align 2, 0
_0806CC60: .4byte gUnknown_08581D40

	thumb_func_start sub_0806CC64
sub_0806CC64: @ 0x0806CC64
	push {lr}
	ldr r0, _0806CC74 @ =gUnknown_0818E590
	ldr r1, _0806CC78 @ =0x06010000
	bl sub_08011CAC
	pop {r0}
	bx r0
	.align 2, 0
_0806CC74: .4byte gUnknown_0818E590
_0806CC78: .4byte 0x06010000

	thumb_func_start sub_0806CC7C
sub_0806CC7C: @ 0x0806CC7C
	push {r4, lr}
	ldr r3, _0806CCD8 @ =gUnknown_030030E0
	ldrb r2, [r3]
	movs r1, #0x3f
	ands r1, r2
	movs r2, #0x40
	orrs r1, r2
	movs r2, #2
	rsbs r2, r2, #0
	ands r1, r2
	subs r2, #1
	ands r1, r2
	subs r2, #2
	ands r1, r2
	subs r2, #4
	ands r1, r2
	movs r4, #0x11
	rsbs r4, r4, #0
	ands r1, r4
	strb r1, [r3]
	ldrb r1, [r3, #1]
	movs r2, #1
	orrs r1, r2
	movs r2, #2
	orrs r1, r2
	movs r2, #4
	orrs r1, r2
	movs r2, #8
	orrs r1, r2
	ands r1, r4
	strb r1, [r3, #1]
	ldr r2, _0806CCDC @ =gUnknown_03002020
	movs r1, #0
	strh r1, [r2]
	ldr r2, _0806CCE0 @ =gUnknown_03002B28
	movs r1, #0x10
	strh r1, [r2]
	movs r1, #0
	str r1, [r0, #0x34]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x3c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CCD8: .4byte gUnknown_030030E0
_0806CCDC: .4byte gUnknown_03002020
_0806CCE0: .4byte gUnknown_03002B28

	thumb_func_start sub_0806CCE4
sub_0806CCE4: @ 0x0806CCE4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	adds r1, r0, #0
	subs r0, #1
	str r0, [r4, #0x2c]
	movs r0, #3
	ands r1, r0
	cmp r1, #0
	bne _0806CD26
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0806CD56
	ldr r1, _0806CD6C @ =gUnknown_030020C0
	ldr r0, [r4, #0x3c]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r1, r1, r2
	strh r0, [r1]
	bl sub_080135A4
	ldr r0, [r4, #0x3c]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	str r0, [r4, #0x3c]
_0806CD26:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0806CD56
	ldr r0, [r4, #0x30]
	adds r0, #1
	str r0, [r4, #0x30]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	cmp r2, #0x1f
	ble _0806CD44
	movs r0, #0x40
	subs r2, r0, r2
_0806CD44:
	cmp r2, #0x10
	ble _0806CD4A
	movs r2, #0x10
_0806CD4A:
	ldr r0, _0806CD70 @ =gUnknown_03002020
	strh r2, [r0]
	ldr r1, _0806CD74 @ =gUnknown_03002B28
	movs r0, #0x10
	subs r0, r0, r2
	strh r0, [r1]
_0806CD56:
	ldr r3, _0806CD78 @ =gUnknown_08581DEC
	movs r0, #0
	str r0, [sp]
	movs r1, #0x38
	movs r2, #0x64
	bl sub_0801BEBC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CD6C: .4byte gUnknown_030020C0
_0806CD70: .4byte gUnknown_03002020
_0806CD74: .4byte gUnknown_03002B28
_0806CD78: .4byte gUnknown_08581DEC

	thumb_func_start sub_0806CD7C
sub_0806CD7C: @ 0x0806CD7C
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1, #0x30]
	ldr r0, [r1, #0x34]
	cmp r0, #0
	beq _0806CD94
	adds r0, r1, #0
	movs r1, #0
	bl Proc_Goto
	b _0806CD9A
_0806CD94:
	ldr r0, _0806CDA0 @ =0x000001CF
	bl sub_0803B4DC
_0806CD9A:
	pop {r0}
	bx r0
	.align 2, 0
_0806CDA0: .4byte 0x000001CF

	thumb_func_start sub_0806CDA4
sub_0806CDA4: @ 0x0806CDA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r1, #0x80
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, [r7, #0x30]
	movs r0, #0x14
	str r0, [sp]
	movs r0, #0
	bl sub_08074234
	mov sb, r0
	ldr r4, _0806CE54 @ =gUnknown_0808F100
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #4
	mov r8, r1
	mov r0, r8
	mov r1, sb
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r0, #0
	ldrsh r4, [r4, r0]
	rsbs r0, r4, #0
	lsls r0, r0, #4
	mov r1, sb
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #4
	adds r0, r4, #0
	mov r1, sb
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	mov r1, sb
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0801E108
	movs r2, #0xf8
	lsls r2, r2, #2
	ldr r3, _0806CE58 @ =gUnknown_08581D38
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0x38
	bl sub_0801BEFC
	ldr r0, [r7, #0x30]
	adds r0, #1
	str r0, [r7, #0x30]
	cmp r0, #0x14
	bne _0806CE44
	str r4, [r7, #0x30]
	adds r0, r7, #0
	bl Proc_Break
_0806CE44:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CE54: .4byte gUnknown_0808F100
_0806CE58: .4byte gUnknown_08581D38

	thumb_func_start sub_0806CE5C
sub_0806CE5C: @ 0x0806CE5C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0x58
	mov r8, r0
	ldr r3, [r5, #0x30]
	movs r4, #0x16
	str r4, [sp]
	movs r0, #1
	movs r1, #0xf0
	movs r2, #0x16
	bl sub_08074234
	adds r7, r0, #0
	movs r1, #0xf0
	rsbs r1, r1, #0
	ldr r3, [r5, #0x30]
	str r4, [sp]
	movs r0, #1
	movs r2, #8
	bl sub_08074234
	adds r6, r0, #0
	ldr r3, [r5, #0x30]
	cmp r3, #0xd
	ble _0806CEA6
	subs r3, #0xe
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x58
	movs r2, #0xb0
	bl sub_08074234
	mov r8, r0
_0806CEA6:
	ldr r3, _0806CEF8 @ =gUnknown_08581D60
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	adds r1, r6, #0
	movs r2, #0x10
	bl sub_0801BEBC
	ldr r3, _0806CEFC @ =gUnknown_08581D38
	str r4, [sp]
	movs r0, #0
	mov r1, r8
	movs r2, #0
	bl sub_0801BEBC
	ldr r3, _0806CF00 @ =gUnknown_08581DA4
	str r4, [sp]
	movs r0, #0
	adds r1, r7, #0
	movs r2, #0xf
	bl sub_0801BEBC
	ldr r0, [r5, #0x30]
	cmp r0, #0x16
	bne _0806CEE4
	movs r0, #0x79
	bl sub_0803B4DC
	adds r0, r5, #0
	bl Proc_Break
_0806CEE4:
	ldr r0, [r5, #0x30]
	adds r0, #1
	str r0, [r5, #0x30]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0806CEF8: .4byte gUnknown_08581D60
_0806CEFC: .4byte gUnknown_08581D38
_0806CF00: .4byte gUnknown_08581DA4

	thumb_func_start sub_0806CF04
sub_0806CF04: @ 0x0806CF04
	push {lr}
	movs r1, #0x20
	str r1, [r0, #0x30]
	movs r1, #0xad
	str r1, [r0, #0x2c]
	bl sub_080136C4
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080139C4
	bl sub_080718F0
	bl sub_080135A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0806CF28
sub_0806CF28: @ 0x0806CF28
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0806CFB0 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0806CF4E
	ldr r0, [r4, #0x30]
	cmp r0, #0
	ble _0806CF4E
	bl sub_080718F0
	bl sub_080135A4
	ldr r0, [r4, #0x30]
	subs r0, #1
	str r0, [r4, #0x30]
_0806CF4E:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0806CF6C
	ldr r0, _0806CFB4 @ =gUnknown_08581E10
	bl Proc_Find
	movs r1, #1
	str r1, [r0, #0x34]
	movs r0, #0xd5
	lsls r0, r0, #1
	bl sub_0803B524
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
_0806CF6C:
	ldr r3, _0806CFB8 @ =gUnknown_08581D60
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #8
	movs r2, #0x10
	bl sub_0801BEBC
	ldr r3, _0806CFBC @ =gUnknown_08581D38
	str r4, [sp]
	movs r0, #0
	movs r1, #0xb0
	movs r2, #0
	bl sub_0801BEBC
	ldr r3, _0806CFC0 @ =gUnknown_08581DA4
	str r4, [sp]
	movs r0, #0
	movs r1, #0x16
	movs r2, #0xf
	bl sub_0801BEBC
	ldr r3, _0806CFC4 @ =gUnknown_08581E06
	str r4, [sp]
	movs r0, #0
	movs r1, #0xca
	movs r2, #0x22
	bl sub_0801BEBC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0806CFB0: .4byte gUnknown_03004008
_0806CFB4: .4byte gUnknown_08581E10
_0806CFB8: .4byte gUnknown_08581D60
_0806CFBC: .4byte gUnknown_08581D38
_0806CFC0: .4byte gUnknown_08581DA4
_0806CFC4: .4byte gUnknown_08581E06

	.align 2, 0
