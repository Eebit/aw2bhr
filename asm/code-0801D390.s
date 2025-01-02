	.include "macro.inc"
	.syntax unified

	thumb_func_start sub_0801D348
sub_0801D348: @ 0x0801D348
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r6, [sp, #0x1c]
	ldr r1, [sp, #0x2c]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0801D370
	ldr r0, [sp, #0x20]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801E4B0
	b _0801D388
_0801D370:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0801E338
_0801D388:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0801D390
sub_0801D390: @ 0x0801D390
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0x14]
	mov sl, r1
	ldr r0, _0801D3EC @ =gUnknown_03003040
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r0]
	ldr r1, _0801D3F0 @ =gUnknown_0200E438
	movs r0, #0x4c
	ldr r2, [sp, #0x14]
	muls r0, r2, r0
	adds r0, r0, r1
	mov r8, r0
	ldr r7, [r0, #8]
	cmp r7, #0
	bne _0801D3BC
	b _0801D6D8
_0801D3BC:
	movs r3, #0x28
	add r3, r8
	mov sb, r3
_0801D3C2:
	ldrh r1, [r7]
	ldr r4, _0801D3F4 @ =0xFFFFF000
	adds r0, r4, #0
	adds r2, r0, #0
	ands r2, r1
	movs r0, #0xa0
	lsls r0, r0, #7
	cmp r2, r0
	bne _0801D3D6
	b _0801D4FA
_0801D3D6:
	cmp r2, r0
	bgt _0801D402
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r2, r0
	beq _0801D488
	cmp r2, r0
	bgt _0801D3F8
	cmp r2, #0
	beq _0801D432
	b _0801D6CC
	.align 2, 0
_0801D3EC: .4byte gUnknown_03003040
_0801D3F0: .4byte gUnknown_0200E438
_0801D3F4: .4byte 0xFFFFF000
_0801D3F8:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r2, r0
	beq _0801D474
	b _0801D6CC
_0801D402:
	movs r0, #0xd0
	lsls r0, r0, #8
	cmp r2, r0
	bne _0801D40C
	b _0801D60C
_0801D40C:
	cmp r2, r0
	bgt _0801D41C
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r2, r0
	bne _0801D41A
	b _0801D556
_0801D41A:
	b _0801D6CC
_0801D41C:
	movs r0, #0xe0
	lsls r0, r0, #8
	cmp r2, r0
	bne _0801D426
	b _0801D5FA
_0801D426:
	movs r0, #0xf0
	lsls r0, r0, #8
	cmp r2, r0
	bne _0801D430
	b _0801D61C
_0801D430:
	b _0801D6CC
_0801D432:
	mov r6, sl
	cmp r6, #0
	bne _0801D43A
	b _0801D6D8
_0801D43A:
	mov r0, r8
	ldrh r2, [r0, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _0801D44E
	subs r0, r2, #1
	mov r4, r8
	strh r0, [r4, #0x1c]
	b _0801D458
_0801D44E:
	ldr r0, _0801D470 @ =0x00000FFF
	ands r0, r1
	subs r0, #1
	mov r6, r8
	strh r0, [r6, #0x1c]
_0801D458:
	mov r0, r8
	movs r2, #0x1c
	ldrsh r1, [r0, r2]
	cmp r1, #0
	beq _0801D464
	b _0801D6D8
_0801D464:
	adds r0, r7, #2
	mov r3, r8
	str r0, [r3, #8]
	strh r1, [r3, #2]
	b _0801D6D8
	.align 2, 0
_0801D470: .4byte 0x00000FFF
_0801D474:
	ldr r4, _0801D484 @ =0x00000FFF
	ands r1, r4
	mov r6, r8
	ldr r7, [r6, #4]
	lsls r0, r1, #1
	adds r7, r7, r0
	b _0801D6CC
	.align 2, 0
_0801D484: .4byte 0x00000FFF
_0801D488:
	movs r0, #0xff
	ands r0, r1
	mov r1, r8
	strh r0, [r1, #0x24]
	adds r7, #2
	mov r2, sl
	cmp r2, #0
	beq _0801D49A
	b _0801D6CC
_0801D49A:
	ldr r3, [r1, #0x20]
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #2
	adds r3, r3, r0
	mov r0, r8
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge _0801D4B0
	b _0801D6CC
_0801D4B0:
	ldrh r5, [r1, #0x26]
	ldr r1, [r1, #0x14]
	mov r4, r8
	ldr r0, [r4, #0xc]
	adds r1, r1, r0
	cmp r1, #0
	bge _0801D4C0
	adds r1, #0xff
_0801D4C0:
	asrs r4, r1, #8
	mov r6, r8
	ldr r1, [r6, #0x18]
	ldr r0, [r6, #0x10]
	adds r1, r1, r0
	cmp r1, #0
	bge _0801D4D0
	adds r1, #0xff
_0801D4D0:
	asrs r2, r1, #8
	ldr r3, [r3]
	mov r1, r8
	ldrb r0, [r1, #0x1e]
	str r0, [sp]
	mov r6, sb
	ldrb r0, [r6]
	str r0, [sp, #4]
	ldr r0, [r1, #0x30]
	ldr r1, [r1, #0x34]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, r8
	movs r6, #0x38
	ldrsh r0, [r1, r6]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801D348
	b _0801D6CC
_0801D4FA:
	ldr r0, _0801D52C @ =0x00000FFF
	ands r1, r0
	adds r7, #2
	cmp r1, #0
	beq _0801D530
	mov r3, r8
	ldrh r2, [r3, #2]
	movs r3, #8
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0801D514
	b _0801D614
_0801D514:
	adds r0, r2, #0
	orrs r0, r3
	mov r4, r8
	strh r0, [r4, #2]
	mov r6, sb
	ldrb r0, [r6]
	movs r3, #0
	ldrsh r2, [r7, r3]
	adds r7, #2
	bl sub_0801E294
	b _0801D6CC
	.align 2, 0
_0801D52C: .4byte 0x00000FFF
_0801D530:
	mov r4, r8
	ldrh r1, [r4, #2]
	movs r2, #4
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0801D614
	adds r0, r1, #0
	orrs r0, r2
	mov r6, r8
	strh r0, [r6, #2]
	mov r1, sb
	ldrb r0, [r1]
	movs r2, #0
	ldrsh r1, [r7, r2]
	adds r7, #2
	bl sub_0801E264
	b _0801D6CC
_0801D556:
	ldr r3, _0801D5B0 @ =0x00000FFF
	ands r1, r3
	adds r7, #2
	movs r6, #0
	ldrsh r4, [r7, r6]
	adds r7, #2
	cmp r1, #0
	beq _0801D5B4
	mov r0, r8
	ldrh r2, [r0, #2]
	movs r3, #0x20
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	bne _0801D614
	adds r0, r2, #0
	orrs r0, r3
	mov r2, r8
	strh r0, [r2, #2]
	mov r3, sb
	ldrb r5, [r3]
	adds r6, r1, #0
	lsls r0, r4, #8
	movs r1, #0x64
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	movs r1, #0x64
	bl __divsi3
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r7, #2
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_0801E27C
	b _0801D6CC
	.align 2, 0
_0801D5B0: .4byte 0x00000FFF
_0801D5B4:
	mov r2, r8
	ldrh r1, [r2, #2]
	movs r2, #0x10
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0801D614
	adds r0, r1, #0
	orrs r0, r2
	mov r3, r8
	strh r0, [r3, #2]
	mov r6, sb
	ldrb r5, [r6]
	lsls r0, r4, #8
	movs r1, #0x64
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	movs r1, #0x64
	bl __divsi3
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r7, #2
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801E248
	b _0801D6CC
_0801D5FA:
	ldr r0, _0801D608 @ =0x00000FFF
	ands r0, r1
	mov r2, r8
	str r0, [r2, #0x2c]
	adds r7, #2
	str r7, [r2, #8]
	b _0801D6CC
	.align 2, 0
_0801D608: .4byte 0x00000FFF
_0801D60C:
	ldr r0, _0801D618 @ =0x00000FFF
	ands r0, r1
	mov r3, r8
	strh r0, [r3, #0x26]
_0801D614:
	adds r7, #2
	b _0801D6CC
	.align 2, 0
_0801D618: .4byte 0x00000FFF
_0801D61C:
	movs r3, #0xf0
	lsls r3, r3, #4
	adds r2, r3, #0
	ands r2, r1
	movs r0, #0xa0
	lsls r0, r0, #4
	cmp r2, r0
	beq _0801D6BA
	cmp r2, r0
	bgt _0801D63A
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r2, r0
	beq _0801D6C0
	b _0801D6CC
_0801D63A:
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r2, r0
	beq _0801D6AC
	cmp r2, r3
	bne _0801D6CC
	mov r4, r8
	str r7, [r4, #8]
	mov r6, sl
	cmp r6, #0
	bne _0801D6D8
	ldr r3, [r4, #0x20]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #2
	adds r3, r3, r0
	mov r0, r8
	adds r0, #0x31
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt _0801D6D8
	ldrh r5, [r4, #0x26]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	adds r1, r1, r0
	cmp r1, #0
	bge _0801D672
	adds r1, #0xff
_0801D672:
	asrs r4, r1, #8
	mov r0, r8
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x10]
	adds r1, r1, r0
	cmp r1, #0
	bge _0801D682
	adds r1, #0xff
_0801D682:
	asrs r2, r1, #8
	ldr r3, [r3]
	mov r1, r8
	ldrb r0, [r1, #0x1e]
	str r0, [sp]
	mov r6, sb
	ldrb r0, [r6]
	str r0, [sp, #4]
	ldr r0, [r1, #0x30]
	ldr r1, [r1, #0x34]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r1, r8
	movs r6, #0x38
	ldrsh r0, [r1, r6]
	str r0, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0801D348
	b _0801D6D8
_0801D6AC:
	mov r0, sl
	cmp r0, #0
	beq _0801D6D8
	ldr r0, [sp, #0x14]
	bl sub_0801D81C
	b _0801D6D8
_0801D6BA:
	mov r2, r8
	strb r1, [r2, #0x1e]
	b _0801D614
_0801D6C0:
	mov r3, r8
	str r7, [r3, #8]
	adds r7, #2
	ldr r0, [r3, #8]
	adds r0, #2
	str r0, [r3, #8]
_0801D6CC:
	movs r4, #0
	cmp r4, #0
	bne _0801D6D8
	cmp r7, #0
	beq _0801D6D8
	b _0801D3C2
_0801D6D8:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801D6E8
sub_0801D6E8: @ 0x0801D6E8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r3, [sp, #0x14]
	cmp r3, #0x1f
	ble _0801D70A
	bl sub_0801E13C
	adds r3, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	bne _0801D70A
	adds r0, r3, #0
	b _0801D766
_0801D70A:
	ldr r1, _0801D76C @ =gUnknown_0200E438
	movs r0, #0x4c
	muls r0, r4, r0
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2, #2]
	strh r1, [r2]
	str r5, [r2, #8]
	str r5, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0xc]
	str r1, [r2, #0x18]
	str r1, [r2, #0x14]
	strh r1, [r2, #0x1c]
	str r6, [r2, #0x20]
	strb r7, [r2, #0x1e]
	adds r0, r2, #0
	adds r0, #0x28
	strb r3, [r0]
	strh r1, [r2, #0x26]
	str r1, [r2, #0x2c]
	strh r1, [r2, #0x24]
	ldr r0, _0801D770 @ =0x0000FFFF
	strh r0, [r2, #0x38]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x3c]
	strh r0, [r2, #0x3e]
	adds r0, r2, #0
	adds r0, #0x40
	strh r1, [r0]
	str r1, [r2, #0x44]
	movs r0, #0
	movs r1, #0
	str r0, [r2, #0x30]
	str r1, [r2, #0x34]
	ldr r1, _0801D774 @ =gUnknown_03003034
	ldr r0, [r1]
	cmp r4, r0
	blt _0801D764
	adds r0, r4, #1
	str r0, [r1]
_0801D764:
	adds r0, r4, #0
_0801D766:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801D76C: .4byte gUnknown_0200E438
_0801D770: .4byte 0x0000FFFF
_0801D774: .4byte gUnknown_03003034

	thumb_func_start sub_0801D778
sub_0801D778: @ 0x0801D778
	push {r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	bl sub_0801D6E8
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D78C
sub_0801D78C: @ 0x0801D78C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	cmp r1, r2
	bgt _0801D7C6
	ldr r4, _0801D7BC @ =gUnknown_0200E440
_0801D7A0:
	movs r0, #0x4c
	muls r0, r1, r0
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _0801D7C0
	str r3, [sp]
	adds r0, r1, #0
	adds r1, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0801D6E8
	b _0801D7CA
	.align 2, 0
_0801D7BC: .4byte gUnknown_0200E440
_0801D7C0:
	adds r1, #1
	cmp r1, r2
	ble _0801D7A0
_0801D7C6:
	movs r0, #1
	rsbs r0, r0, #0
_0801D7CA:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801D7D4
sub_0801D7D4: @ 0x0801D7D4
	push {r4, lr}
	sub sp, #8
	movs r4, #0
	str r4, [sp]
	movs r4, #0x1d
	str r4, [sp, #4]
	bl sub_0801D78C
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D7EC
sub_0801D7EC: @ 0x0801D7EC
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r3, [sp]
	str r4, [sp, #4]
	movs r3, #0
	bl sub_0801D78C
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0801D804
sub_0801D804: @ 0x0801D804
	push {lr}
	sub sp, #8
	movs r3, #0
	str r3, [sp]
	movs r3, #0x1d
	str r3, [sp, #4]
	movs r3, #0
	bl sub_0801D78C
	add sp, #8
	pop {r1}
	bx r1

	thumb_func_start sub_0801D81C
sub_0801D81C: @ 0x0801D81C
	push {lr}
	adds r3, r0, #0
	ldr r1, _0801D83C @ =gUnknown_0200E438
	movs r0, #0x4c
	muls r0, r3, r0
	adds r2, r0, r1
	movs r0, #0x38
	ldrsh r1, [r2, r0]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801D840
	adds r0, r1, #0
	bl sub_08015328
	b _0801D846
	.align 2, 0
_0801D83C: .4byte gUnknown_0200E438
_0801D840:
	adds r0, r3, #0
	bl sub_0801D84C
_0801D846:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801D84C
sub_0801D84C: @ 0x0801D84C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _0801D888 @ =gUnknown_0808F09C
	ldr r1, [r3]
	movs r7, #0x4c
	adds r0, r4, #0
	muls r0, r7, r0
	adds r6, r1, #0
	adds r6, #8
	adds r0, r0, r6
	movs r1, #0
	str r1, [r0]
	ldr r1, _0801D88C @ =gUnknown_0808F0A0
	ldr r5, [r1]
	adds r2, r4, #1
	ldr r0, [r5]
	mov ip, r1
	cmp r0, r2
	bne _0801D8AE
	subs r2, r4, #1
	cmp r2, #0
	blt _0801D8AE
	adds r0, r2, #0
	muls r0, r7, r0
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r0, #0
	beq _0801D890
	str r4, [r5]
	b _0801D8AE
	.align 2, 0
_0801D888: .4byte gUnknown_0808F09C
_0801D88C: .4byte gUnknown_0808F0A0
_0801D890:
	subs r2, #1
	cmp r2, #0
	blt _0801D8AE
	ldr r1, [r3]
	movs r0, #0x4c
	muls r0, r2, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _0801D890
	mov r0, ip
	ldr r1, [r0]
	adds r0, r2, #1
	str r0, [r1]
_0801D8AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801D8B4
sub_0801D8B4: @ 0x0801D8B4
	push {lr}
	ldr r0, _0801D8D8 @ =gUnknown_03003034
	movs r1, #0
	str r1, [r0]
	ldr r0, _0801D8DC @ =gUnknown_0200E438
	movs r2, #0
	movs r1, #0x1d
	ldr r3, _0801D8E0 @ =0x000008A4
	adds r0, r0, r3
_0801D8C6:
	str r2, [r0]
	subs r0, #0x4c
	subs r1, #1
	cmp r1, #0
	bge _0801D8C6
	bl sub_0801DA94
	pop {r0}
	bx r0
	.align 2, 0
_0801D8D8: .4byte gUnknown_03003034
_0801D8DC: .4byte gUnknown_0200E438
_0801D8E0: .4byte 0x000008A4

	thumb_func_start sub_0801D8E4
sub_0801D8E4: @ 0x0801D8E4
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r0, _0801D91C @ =gUnknown_0808F0A4
	ldr r1, [r0]
	ldr r1, [r1]
	adds r6, r0, #0
	cmp r4, r1
	bge _0801D914
	ldr r5, _0801D920 @ =gUnknown_0200E440
_0801D8F6:
	movs r0, #0x4c
	muls r0, r4, r0
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0801D90A
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801D390
_0801D90A:
	adds r4, #1
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r4, r0
	blt _0801D8F6
_0801D914:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801D91C: .4byte gUnknown_0808F0A4
_0801D920: .4byte gUnknown_0200E440

	thumb_func_start sub_0801D924
sub_0801D924: @ 0x0801D924
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r0, _0801D964 @ =gUnknown_0808F0A8
	ldr r1, [r0]
	ldr r1, [r1]
	adds r6, r0, #0
	cmp r4, r1
	bge _0801D95C
	ldr r5, _0801D968 @ =gUnknown_0200E440
_0801D936:
	movs r0, #0x4c
	muls r0, r4, r0
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0801D952
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801D390
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_0801DB04
_0801D952:
	adds r4, #1
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r4, r0
	blt _0801D936
_0801D95C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801D964: .4byte gUnknown_0808F0A8
_0801D968: .4byte gUnknown_0200E440

	thumb_func_start sub_0801D96C
sub_0801D96C: @ 0x0801D96C
	push {r4, lr}
	ldr r4, _0801D988 @ =gUnknown_0200E438
	movs r3, #0x4c
	muls r0, r3, r0
	adds r0, r0, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	str r1, [r0, #0x14]
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r0, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D988: .4byte gUnknown_0200E438

	thumb_func_start sub_0801D98C
sub_0801D98C: @ 0x0801D98C
	push {r4, lr}
	ldr r4, _0801D9A8 @ =gUnknown_0200E438
	movs r3, #0x4c
	muls r0, r3, r0
	adds r0, r0, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #8
	str r1, [r0, #0xc]
	lsls r2, r2, #0x10
	asrs r2, r2, #8
	str r2, [r0, #0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D9A8: .4byte gUnknown_0200E438

	thumb_func_start sub_0801D9AC
sub_0801D9AC: @ 0x0801D9AC
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	ldr r2, _0801D9E0 @ =gUnknown_0200E438
	movs r1, #0x4c
	muls r0, r1, r0
	adds r2, r0, r2
	ldr r1, [r2, #0x14]
	ldr r0, [r2, #0xc]
	adds r0, r1, r0
	cmp r0, #0
	bge _0801D9C6
	adds r0, #0xff
_0801D9C6:
	asrs r0, r0, #8
	strh r0, [r3]
	ldr r1, [r2, #0x18]
	ldr r0, [r2, #0x10]
	adds r0, r1, r0
	cmp r0, #0
	bge _0801D9D6
	adds r0, #0xff
_0801D9D6:
	asrs r0, r0, #8
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801D9E0: .4byte gUnknown_0200E438

	thumb_func_start sub_0801D9E4
sub_0801D9E4: @ 0x0801D9E4
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	ldr r2, _0801DA10 @ =gUnknown_0200E438
	movs r1, #0x4c
	muls r0, r1, r0
	adds r1, r0, r2
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bge _0801D9FA
	adds r0, #0xff
_0801D9FA:
	asrs r0, r0, #8
	strh r0, [r3]
	ldr r0, [r1, #0x18]
	cmp r0, #0
	bge _0801DA06
	adds r0, #0xff
_0801DA06:
	asrs r0, r0, #8
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA10: .4byte gUnknown_0200E438

	thumb_func_start sub_0801DA14
sub_0801DA14: @ 0x0801DA14
	push {r4, lr}
	adds r3, r1, #0
	adds r4, r2, #0
	ldr r2, _0801DA40 @ =gUnknown_0200E438
	movs r1, #0x4c
	muls r0, r1, r0
	adds r1, r0, r2
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bge _0801DA2A
	adds r0, #0xff
_0801DA2A:
	asrs r0, r0, #8
	strh r0, [r3]
	ldr r0, [r1, #0x10]
	cmp r0, #0
	bge _0801DA36
	adds r0, #0xff
_0801DA36:
	asrs r0, r0, #8
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801DA40: .4byte gUnknown_0200E438

	thumb_func_start sub_0801DA44
sub_0801DA44: @ 0x0801DA44
	ldr r2, _0801DA50 @ =gUnknown_0200E438
	movs r1, #0x4c
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r0, [r0, #0x2c]
	bx lr
	.align 2, 0
_0801DA50: .4byte gUnknown_0200E438

	thumb_func_start sub_0801DA54
sub_0801DA54: @ 0x0801DA54
	ldr r2, _0801DA64 @ =gUnknown_0200E438
	movs r1, #0x4c
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r1, #0x2c]
	movs r2, #0
	str r2, [r1, #0x2c]
	bx lr
	.align 2, 0
_0801DA64: .4byte gUnknown_0200E438

	thumb_func_start sub_0801DA68
sub_0801DA68: @ 0x0801DA68
	ldr r2, _0801DA74 @ =gUnknown_0200E438
	movs r1, #0x4c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0, #0x1e]
	bx lr
	.align 2, 0
_0801DA74: .4byte gUnknown_0200E438

	thumb_func_start sub_0801DA78
sub_0801DA78: @ 0x0801DA78
	ldr r0, _0801DA7C @ =0x00000000
	bx lr
	.align 2, 0
_0801DA7C: .4byte 0x00000000

	thumb_func_start sub_0801DA80
sub_0801DA80: @ 0x0801DA80
	ldr r2, _0801DA90 @ =gUnknown_0200E438
	movs r1, #0x4c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x28
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_0801DA90: .4byte gUnknown_0200E438

	thumb_func_start sub_0801DA94
sub_0801DA94: @ 0x0801DA94
	movs r1, #0
	ldr r3, _0801DAAC @ =gUnknown_03001430
	movs r2, #0
_0801DA9A:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0x1f
	bls _0801DA9A
	bx lr
	.align 2, 0
_0801DAAC: .4byte gUnknown_03001430

	thumb_func_start sub_0801DAB0
sub_0801DAB0: @ 0x0801DAB0
	push {r4, r5, lr}
	movs r1, #0x1f
	ldr r3, _0801DAD0 @ =gUnknown_03001430
	movs r4, #1
_0801DAB8:
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	lsls r0, r1, #1
	adds r2, r0, r3
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bne _0801DAD4
	strh r4, [r2]
	adds r0, r1, #0
	b _0801DAE2
	.align 2, 0
_0801DAD0: .4byte gUnknown_03001430
_0801DAD4:
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _0801DAB8
	movs r0, #1
	rsbs r0, r0, #0
_0801DAE2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0801DAE8
sub_0801DAE8: @ 0x0801DAE8
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0801DAFE
	ldr r0, _0801DB00 @ =gUnknown_03001430
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #0
	strh r0, [r1]
_0801DAFE:
	bx lr
	.align 2, 0
_0801DB00: .4byte gUnknown_03001430

	thumb_func_start sub_0801DB04
sub_0801DB04: @ 0x0801DB04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0801DBFC @ =gUnknown_0200E438
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x4c
	muls r0, r1, r0
	adds r0, r0, r2
	mov r8, r0
	movs r1, #0x3a
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _0801DBEC
	mov r2, r8
	ldrh r4, [r2, #0x3e]
	ldrh r1, [r2, #0x3c]
	movs r3, #0x3c
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bne _0801DB36
	movs r1, #2
_0801DB36:
	cmp r4, #0
	bne _0801DB3C
	movs r4, #2
_0801DB3C:
	ldr r0, _0801DC00 @ =gUnknown_0808F100
	mov sb, r0
	mov r7, r8
	adds r7, #0x40
	movs r6, #0xff
	ldrb r0, [r7]
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #4
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	movs r1, #2
	cmp r5, #0
	beq _0801DB60
	adds r1, r5, #0
_0801DB60:
	adds r0, r2, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	ldrh r1, [r7]
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #1
	add r0, sb
	movs r3, #0
	ldrsh r0, [r0, r3]
	rsbs r0, r0, #0
	lsls r2, r0, #4
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	movs r1, #2
	cmp r4, #0
	beq _0801DB8A
	adds r1, r4, #0
_0801DB8A:
	adds r0, r2, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	ldrh r1, [r7]
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #1
	add r0, sb
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #2
	cmp r5, #0
	beq _0801DBAE
	adds r1, r5, #0
_0801DBAE:
	bl Div
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	ldrh r0, [r7]
	ands r6, r0
	adds r0, r6, #0
	adds r0, #0x40
	lsls r0, r0, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	movs r1, #2
	cmp r4, #0
	beq _0801DBD0
	adds r1, r4, #0
_0801DBD0:
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	movs r2, #0x3a
	ldrsh r1, [r3, r2]
	str r0, [sp]
	adds r0, r1, #0
	ldr r1, [sp, #4]
	mov r2, sl
	adds r3, r5, #0
	bl sub_0801E108
_0801DBEC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DBFC: .4byte gUnknown_0200E438
_0801DC00: .4byte gUnknown_0808F100

	thumb_func_start sub_0801DC04
sub_0801DC04: @ 0x0801DC04
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r3, #0
	ldr r7, _0801DC34 @ =gUnknown_0200E440
	lsls r4, r1, #0x10
	lsls r5, r2, #0x10
_0801DC10:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x4c
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #0
	bne _0801DC38
	adds r0, r1, #0
	adds r1, r6, #0
	asrs r2, r4, #0x10
	asrs r3, r5, #0x10
	bl sub_0801DC50
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	b _0801DC48
	.align 2, 0
_0801DC34: .4byte gUnknown_0200E440
_0801DC38:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _0801DC10
	movs r0, #1
	rsbs r0, r0, #0
_0801DC48:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801DC50
sub_0801DC50: @ 0x0801DC50
	push {r4, r5, r6, lr}
	ldr r4, _0801DCC8 @ =gUnknown_0200E438
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	movs r0, #0x4c
	muls r0, r6, r0
	adds r0, r0, r4
	mov ip, r0
	movs r5, #0
	movs r4, #0
	strh r4, [r0, #2]
	strh r4, [r0]
	str r4, [r0, #0x10]
	str r4, [r0, #0xc]
	str r4, [r0, #0x18]
	str r4, [r0, #0x14]
	strh r4, [r0, #0x1c]
	str r1, [r0, #0x48]
	lsls r2, r2, #0x10
	asrs r2, r2, #0xe
	adds r2, r2, r1
	ldr r0, [r2, #4]
	mov r2, ip
	str r0, [r2, #4]
	str r0, [r2, #8]
	ldr r0, [r1]
	str r0, [r2, #0x20]
	strb r3, [r2, #0x1e]
	strh r4, [r2, #0x26]
	str r4, [r2, #0x2c]
	strh r4, [r2, #0x24]
	ldr r0, _0801DCCC @ =0x0000FFFF
	strh r0, [r2, #0x38]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r2, #0x3a]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x3c]
	strh r0, [r2, #0x3e]
	mov r0, ip
	adds r0, #0x40
	strh r4, [r0]
	subs r0, #0x18
	strb r5, [r0]
	str r4, [r2, #0x44]
	movs r0, #0
	movs r1, #0
	str r0, [r2, #0x30]
	str r1, [r2, #0x34]
	ldr r1, _0801DCD0 @ =gUnknown_03003034
	ldr r0, [r1]
	cmp r6, r0
	blt _0801DCC0
	adds r0, r6, #1
	str r0, [r1]
_0801DCC0:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801DCC8: .4byte gUnknown_0200E438
_0801DCCC: .4byte 0x0000FFFF
_0801DCD0: .4byte gUnknown_03003034

	thumb_func_start sub_0801DCD4
sub_0801DCD4: @ 0x0801DCD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sb, r0
	mov r8, r1
	ldr r0, _0801DD28 @ =gUnknown_03003040
	mov r1, sb
	strh r1, [r0]
	ldr r1, _0801DD2C @ =gUnknown_0200E438
	movs r0, #0x4c
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	adds r4, r0, r1
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _0801DCFE
	b _0801DEC6
_0801DCFE:
	ldr r3, _0801DD30 @ =0x00000FFF
	mov sl, r3
_0801DD02:
	ldrh r2, [r5]
	ldr r1, _0801DD34 @ =0xFFFFF000
	adds r0, r1, #0
	adds r1, r0, #0
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	beq _0801DD78
	cmp r1, r0
	bgt _0801DD38
	cmp r1, #0
	beq _0801DD4A
	movs r0, #0x80
	lsls r0, r0, #5
	cmp r1, r0
	beq _0801DD84
	b _0801DEBA
	.align 2, 0
_0801DD28: .4byte gUnknown_03003040
_0801DD2C: .4byte gUnknown_0200E438
_0801DD30: .4byte 0x00000FFF
_0801DD34: .4byte 0xFFFFF000
_0801DD38:
	movs r0, #0xe0
	lsls r0, r0, #8
	cmp r1, r0
	beq _0801DDFC
	movs r0, #0xf0
	lsls r0, r0, #8
	cmp r1, r0
	beq _0801DE08
	b _0801DEBA
_0801DD4A:
	mov r3, r8
	cmp r3, #0
	bne _0801DD52
	b _0801DEC6
_0801DD52:
	ldrh r1, [r4, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0801DD60
	subs r0, r1, #1
	b _0801DD66
_0801DD60:
	mov r0, sl
	ands r0, r2
	subs r0, #1
_0801DD66:
	strh r0, [r4, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0801DD72
	b _0801DEC6
_0801DD72:
	adds r0, r5, #2
	str r0, [r4, #8]
	b _0801DEC6
_0801DD78:
	mov r0, sl
	ands r0, r2
	ldr r5, [r4, #4]
	lsls r0, r0, #1
	adds r5, r5, r0
	b _0801DEBA
_0801DD84:
	movs r0, #0xff
	ands r0, r2
	strh r0, [r4, #0x24]
	adds r5, #2
	mov r2, r8
	cmp r2, #0
	beq _0801DD94
	b _0801DEBA
_0801DD94:
	ldr r3, [r4, #0x20]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #2
	adds r3, r3, r0
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r1, [r0]
	lsls r0, r1, #0x1b
	cmp r0, #0
	bge _0801DDAA
	b _0801DEBA
_0801DDAA:
	lsls r0, r1, #0x1a
	cmp r0, #0
	bge _0801DDBE
	ldr r0, _0801DDF8 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0801DDBE
	b _0801DEBA
_0801DDBE:
	ldrb r7, [r4, #0x1e]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	adds r1, r1, r0
	cmp r1, #0
	bge _0801DDCC
	adds r1, #0xff
_0801DDCC:
	asrs r6, r1, #8
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	adds r1, r1, r0
	cmp r1, #0
	bge _0801DDDA
	adds r1, #0xff
_0801DDDA:
	asrs r2, r1, #8
	ldr r3, [r3]
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	str r0, [sp]
	str r1, [sp, #4]
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0801ECE8
	b _0801DEBA
	.align 2, 0
_0801DDF8: .4byte gUnknown_03004008
_0801DDFC:
	mov r0, sl
	ands r0, r2
	str r0, [r4, #0x2c]
	adds r5, #2
	str r5, [r4, #8]
	b _0801DEBA
_0801DE08:
	movs r3, #0xf0
	lsls r3, r3, #4
	adds r1, r3, #0
	ands r1, r2
	movs r0, #0xa0
	lsls r0, r0, #4
	cmp r1, r0
	beq _0801DEAA
	cmp r1, r0
	bgt _0801DE26
	movs r0, #0x90
	lsls r0, r0, #4
	cmp r1, r0
	beq _0801DEB0
	b _0801DEBA
_0801DE26:
	movs r0, #0xe0
	lsls r0, r0, #4
	cmp r1, r0
	beq _0801DE9C
	cmp r1, r3
	bne _0801DEBA
	str r5, [r4, #8]
	mov r2, r8
	cmp r2, #0
	bne _0801DEC6
	ldr r3, [r4, #0x20]
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #2
	adds r3, r3, r0
	adds r0, r4, #0
	adds r0, #0x31
	ldrb r1, [r0]
	lsls r0, r1, #0x1b
	cmp r0, #0
	blt _0801DEC6
	lsls r0, r1, #0x1a
	cmp r0, #0
	bge _0801DE60
	ldr r0, _0801DE98 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0801DEC6
_0801DE60:
	ldrb r6, [r4, #0x1e]
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	adds r1, r1, r0
	cmp r1, #0
	bge _0801DE6E
	adds r1, #0xff
_0801DE6E:
	asrs r5, r1, #8
	ldr r1, [r4, #0x18]
	ldr r0, [r4, #0x10]
	adds r1, r1, r0
	cmp r1, #0
	bge _0801DE7C
	adds r1, #0xff
_0801DE7C:
	asrs r2, r1, #8
	ldr r3, [r3]
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	str r0, [sp]
	str r1, [sp, #4]
	movs r1, #0x38
	ldrsh r0, [r4, r1]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0801ECE8
	b _0801DEC6
	.align 2, 0
_0801DE98: .4byte gUnknown_03004008
_0801DE9C:
	mov r2, r8
	cmp r2, #0
	beq _0801DEC6
	mov r0, sb
	bl sub_0801D81C
	b _0801DEC6
_0801DEAA:
	strb r2, [r4, #0x1e]
	adds r5, #2
	b _0801DEBA
_0801DEB0:
	str r5, [r4, #8]
	adds r5, #2
	ldr r0, [r4, #8]
	adds r0, #2
	str r0, [r4, #8]
_0801DEBA:
	movs r3, #0
	cmp r3, #0
	bne _0801DEC6
	cmp r5, #0
	beq _0801DEC6
	b _0801DD02
_0801DEC6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801DED8
sub_0801DED8: @ 0x0801DED8
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r0, _0801DF18 @ =gUnknown_0808F0AC
	ldr r1, [r0]
	ldr r1, [r1]
	adds r6, r0, #0
	cmp r4, r1
	bge _0801DF10
	ldr r5, _0801DF1C @ =gUnknown_0200E440
_0801DEEA:
	movs r0, #0x4c
	muls r0, r4, r0
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0801DF06
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801DCD4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	bl sub_0801DB04
_0801DF06:
	adds r4, #1
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r4, r0
	blt _0801DEEA
_0801DF10:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF18: .4byte gUnknown_0808F0AC
_0801DF1C: .4byte gUnknown_0200E440

	thumb_func_start sub_0801DF20
sub_0801DF20: @ 0x0801DF20
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r0, _0801DF58 @ =gUnknown_0808F0B0
	ldr r1, [r0]
	ldr r1, [r1]
	adds r6, r0, #0
	cmp r4, r1
	bge _0801DF50
	ldr r5, _0801DF5C @ =gUnknown_0200E440
_0801DF32:
	movs r0, #0x4c
	muls r0, r4, r0
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	beq _0801DF46
	adds r0, r4, #0
	movs r1, #1
	bl sub_0801DCD4
_0801DF46:
	adds r4, #1
	ldr r0, [r6]
	ldr r0, [r0]
	cmp r4, r0
	blt _0801DF32
_0801DF50:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF58: .4byte gUnknown_0808F0B0
_0801DF5C: .4byte gUnknown_0200E440

	thumb_func_start sub_0801DF60
sub_0801DF60: @ 0x0801DF60
	ldr r2, _0801DF6C @ =gUnknown_03002520
	ldr r1, _0801DF70 @ =0x000003FF
	ands r1, r0
	adds r1, r1, r2
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_0801DF6C: .4byte gUnknown_03002520
_0801DF70: .4byte 0x000003FF

	thumb_func_start sub_0801DF74
sub_0801DF74: @ 0x0801DF74
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _0801DF84 @ =gUnknown_03002520
	ldr r2, _0801DF88 @ =0x000003FF
	ands r2, r0
	adds r2, r2, r3
	strb r1, [r2]
	bx lr
	.align 2, 0
_0801DF84: .4byte gUnknown_03002520
_0801DF88: .4byte 0x000003FF

	thumb_func_start sub_0801DF8C
sub_0801DF8C: @ 0x0801DF8C
	ldr r0, _0801DF90 @ =gUnknown_03002520
	bx lr
	.align 2, 0
_0801DF90: .4byte gUnknown_03002520

	thumb_func_start sub_0801DF94
sub_0801DF94: @ 0x0801DF94
	push {r4, r5, r6, lr}
	ldr r0, _0801DFD8 @ =gUnknown_03002510
	movs r4, #0
	str r4, [r0]
	bl sub_0801A6C0
	ldr r1, _0801DFDC @ =gUnknown_03002B54
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0801DFE0 @ =gUnknown_03001FE4
	strh r4, [r0]
	movs r5, #0x80
	lsls r5, r5, #1
	ldr r6, _0801DFE4 @ =gUnknown_030024F0
_0801DFB0:
	adds r0, r4, r6
	ldrb r1, [r0]
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r5, #0
	movs r3, #0
	bl sub_0801E22C
	adds r4, #1
	cmp r4, #0x1f
	ble _0801DFB0
	bl sub_0801E0F0
	bl sub_0801E0A4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFD8: .4byte gUnknown_03002510
_0801DFDC: .4byte gUnknown_03002B54
_0801DFE0: .4byte gUnknown_03001FE4
_0801DFE4: .4byte gUnknown_030024F0

	thumb_func_start sub_0801DFE8
sub_0801DFE8: @ 0x0801DFE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl sub_0801A700
	adds r5, r0, #0
	cmp r5, #0
	beq _0801E08E
	ldr r7, _0801E018 @ =gUnknown_03002B54
_0801DFF8:
	ldr r6, [r5, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x18
	ands r1, r6
	ldr r0, _0801E01C @ =0x3FFFFFFF
	ands r6, r0
	cmp r1, #0
	beq _0801E02A
	cmp r1, #0
	bgt _0801E020
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	beq _0801E066
	b _0801E07C
	.align 2, 0
_0801E018: .4byte gUnknown_03002B54
_0801E01C: .4byte 0x3FFFFFFF
_0801E020:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _0801E04E
	b _0801E07C
_0801E02A:
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	ldr r3, [r5, #0xc]
	ldr r4, [r5, #0x10]
	str r3, [sp]
	str r4, [sp, #4]
	movs r4, #0xa
	ldrsh r3, [r5, r4]
	str r3, [sp, #8]
	adds r3, r6, #0
	bl sub_0801E9B0
	b _0801E07C
_0801E04E:
	ldrh r0, [r7]
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r4, #8
	ldrsh r3, [r5, r4]
	str r3, [sp]
	adds r3, r6, #0
	bl sub_0801E3E8
	b _0801E07C
_0801E066:
	ldrh r0, [r7]
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	movs r4, #8
	ldrsh r3, [r5, r4]
	str r3, [sp]
	adds r3, r6, #0
	bl sub_0801E508
_0801E07C:
	ldrh r0, [r7]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r7]
	bl sub_0801A700
	adds r5, r0, #0
	cmp r5, #0
	bne _0801DFF8
_0801E08E:
	ldr r1, _0801E0A0 @ =gUnknown_03002510
	movs r0, #0
	str r0, [r1]
	bl sub_0801A6C0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E0A0: .4byte gUnknown_03002510

	thumb_func_start sub_0801E0A4
sub_0801E0A4: @ 0x0801E0A4
	push {lr}
	ldr r0, _0801E0B8 @ =gUnknown_03002520
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08011C90
	pop {r0}
	bx r0
	.align 2, 0
_0801E0B8: .4byte gUnknown_03002520

	thumb_func_start sub_0801E0BC
sub_0801E0BC: @ 0x0801E0BC
	ldr r0, _0801E0C4 @ =gUnknown_03002B54
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_0801E0C4: .4byte gUnknown_03002B54

	thumb_func_start sub_0801E0C8
sub_0801E0C8: @ 0x0801E0C8
	ldr r2, _0801E0EC @ =gUnknown_03002520
	lsls r0, r0, #3
	adds r2, r0, r2
	cmp r1, #0
	ble _0801E0E8
	movs r3, #0xa0
	movs r0, #0
_0801E0D6:
	strh r3, [r2]
	adds r2, #2
	strh r0, [r2]
	adds r2, #2
	strh r0, [r2]
	adds r2, #4
	subs r1, #1
	cmp r1, #0
	bne _0801E0D6
_0801E0E8:
	bx lr
	.align 2, 0
_0801E0EC: .4byte gUnknown_03002520

	thumb_func_start sub_0801E0F0
sub_0801E0F0: @ 0x0801E0F0
	push {lr}
	movs r0, #0
	movs r1, #0x80
	bl sub_0801E0C8
	ldr r1, _0801E104 @ =gUnknown_03002B54
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801E104: .4byte gUnknown_03002B54

	thumb_func_start sub_0801E108
sub_0801E108: @ 0x0801E108
	push {r4, r5, r6, lr}
	ldr r6, [sp, #0x10]
	ldr r5, _0801E138 @ =gUnknown_03002520
	lsls r0, r0, #4
	adds r4, r0, #3
	lsls r4, r4, #1
	adds r4, r4, r5
	strh r1, [r4]
	adds r1, r0, #7
	lsls r1, r1, #1
	adds r1, r1, r5
	strh r2, [r1]
	adds r1, r0, #0
	adds r1, #0xb
	lsls r1, r1, #1
	adds r1, r1, r5
	strh r3, [r1]
	adds r0, #0xf
	lsls r0, r0, #1
	adds r0, r0, r5
	strh r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E138: .4byte gUnknown_03002520

	thumb_func_start sub_0801E13C
sub_0801E13C: @ 0x0801E13C
	push {r4, r5, r6, lr}
	movs r4, #0
	ldr r6, _0801E160 @ =gUnknown_030024F0
	ldr r0, _0801E164 @ =gUnknown_0200F720
	adds r3, r0, #6
	movs r5, #1
_0801E148:
	adds r2, r4, r6
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	bne _0801E168
	ldrb r0, [r2]
	strb r5, [r2]
	strh r1, [r3]
	strh r1, [r3, #6]
	adds r0, r4, #0
	b _0801E174
	.align 2, 0
_0801E160: .4byte gUnknown_030024F0
_0801E164: .4byte gUnknown_0200F720
_0801E168:
	adds r3, #0x10
	adds r4, #1
	cmp r4, #0x1f
	ble _0801E148
	movs r0, #1
	rsbs r0, r0, #0
_0801E174:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801E17C
sub_0801E17C: @ 0x0801E17C
	ldr r1, _0801E188 @ =gUnknown_030024F0
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_0801E188: .4byte gUnknown_030024F0

	thumb_func_start sub_0801E18C
sub_0801E18C: @ 0x0801E18C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	ldr r0, _0801E228 @ =gUnknown_0200F720
	mov r1, sb
	lsls r4, r1, #4
	adds r4, r4, r0
	movs r2, #4
	ldrsh r0, [r4, r2]
	bl sub_0801BAA8
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl __divsi3
	mov r8, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	movs r1, #4
	ldrsh r0, [r4, r1]
	bl sub_0801BA4C
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	rsbs r0, r0, #0
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl __divsi3
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	movs r1, #4
	ldrsh r0, [r4, r1]
	bl sub_0801BA4C
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl __divsi3
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	movs r1, #4
	ldrsh r0, [r4, r1]
	bl sub_0801BAA8
	lsls r0, r0, #0x10
	asrs r0, r0, #0xe
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl sub_0801E108
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E228: .4byte gUnknown_0200F720

	thumb_func_start sub_0801E22C
sub_0801E22C: @ 0x0801E22C
	push {r4, r5, lr}
	ldr r5, _0801E244 @ =gUnknown_0200F720
	lsls r4, r0, #4
	adds r4, r4, r5
	strh r1, [r4]
	strh r2, [r4, #2]
	strh r3, [r4, #4]
	bl sub_0801E18C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E244: .4byte gUnknown_0200F720

	thumb_func_start sub_0801E248
sub_0801E248: @ 0x0801E248
	push {r4, lr}
	ldr r4, _0801E260 @ =gUnknown_0200F720
	lsls r3, r0, #4
	adds r3, r3, r4
	strh r1, [r3]
	strh r2, [r3, #2]
	bl sub_0801E18C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E260: .4byte gUnknown_0200F720

	thumb_func_start sub_0801E264
sub_0801E264: @ 0x0801E264
	push {lr}
	ldr r3, _0801E278 @ =gUnknown_0200F720
	lsls r2, r0, #4
	adds r2, r2, r3
	strh r1, [r2, #4]
	bl sub_0801E18C
	pop {r0}
	bx r0
	.align 2, 0
_0801E278: .4byte gUnknown_0200F720

	thumb_func_start sub_0801E27C
sub_0801E27C: @ 0x0801E27C
	push {r4, lr}
	ldr r4, _0801E290 @ =gUnknown_0200F720
	lsls r0, r0, #4
	adds r0, r0, r4
	strh r1, [r0, #6]
	strh r2, [r0, #8]
	strh r3, [r0, #0xa]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E290: .4byte gUnknown_0200F720

	thumb_func_start sub_0801E294
sub_0801E294: @ 0x0801E294
	ldr r3, _0801E2A0 @ =gUnknown_0200F720
	lsls r0, r0, #4
	adds r0, r0, r3
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	.align 2, 0
_0801E2A0: .4byte gUnknown_0200F720

	thumb_func_start sub_0801E2A4
sub_0801E2A4: @ 0x0801E2A4
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _0801E330 @ =gUnknown_0808F0B4
_0801E2AA:
	movs r2, #0
	ldr r0, [r7]
	lsls r1, r6, #4
	adds r4, r1, r0
	ldrh r5, [r4, #6]
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0801E2F2
	movs r2, #8
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl __divsi3
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r4]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	movs r2, #6
	ldrsh r1, [r4, r2]
	bl __divsi3
	ldrh r1, [r4, #2]
	adds r1, r1, r0
	strh r1, [r4, #2]
	subs r0, r5, #1
	strh r0, [r4, #6]
	movs r2, #1
_0801E2F2:
	ldrh r5, [r4, #0xc]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq _0801E31A
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	movs r2, #4
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	bl __divsi3
	ldrh r1, [r4, #4]
	adds r1, r1, r0
	strh r1, [r4, #4]
	subs r0, r5, #1
	strh r0, [r4, #0xc]
	movs r2, #1
_0801E31A:
	cmp r2, #0
	beq _0801E324
	adds r0, r6, #0
	bl sub_0801E18C
_0801E324:
	adds r6, #1
	cmp r6, #0x1f
	ble _0801E2AA
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801E330: .4byte gUnknown_0808F0B4

	thumb_func_start sub_0801E334
sub_0801E334: @ 0x0801E334
	ldrh r0, [r0]
	bx lr

	thumb_func_start sub_0801E338
sub_0801E338: @ 0x0801E338
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov sl, r1
	ldr r0, [sp, #0x28]
	mov sb, r0
	ldr r5, _0801E39C @ =gUnknown_0200ED20
	ldr r7, _0801E3A0 @ =gUnknown_03002510
	ldr r0, [r7]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r0, r4, r5
	movs r1, #0
	mov r8, r1
	mov r1, sl
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r5, #4
	adds r4, r4, r5
	str r3, [r4]
	mov r2, r8
	strh r2, [r0, #8]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	mov r2, sb
	strh r2, [r0, #0xa]
	mov r1, ip
	lsls r6, r1, #0x10
	asrs r6, r6, #0x10
	adds r1, r6, #0
	bl sub_0801A718
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801E3A4
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	movs r0, #0
	b _0801E3A6
	.align 2, 0
_0801E39C: .4byte gUnknown_0200ED20
_0801E3A0: .4byte gUnknown_03002510
_0801E3A4:
	movs r0, #1
_0801E3A6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801E3B4
sub_0801E3B4: @ 0x0801E3B4
	adds r1, r0, #0
	movs r2, #0xc0
	lsls r2, r2, #8
	ands r1, r2
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	beq _0801E3DC
	cmp r1, r0
	bgt _0801E3D2
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _0801E3D8
	b _0801E3E4
_0801E3D2:
	cmp r1, r2
	beq _0801E3E0
	b _0801E3E4
_0801E3D8:
	movs r0, #0x10
	b _0801E3E6
_0801E3DC:
	movs r0, #0x20
	b _0801E3E6
_0801E3E0:
	movs r0, #0x40
	b _0801E3E6
_0801E3E4:
	movs r0, #8
_0801E3E6:
	bx lr

	thumb_func_start sub_0801E3E8
sub_0801E3E8: @ 0x0801E3E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	mov sb, r2
	adds r4, r3, #0
	ldrh r3, [r4]
	adds r4, #2
	adds r0, r6, r3
	cmp r0, #0x80
	ble _0801E408
	movs r0, #1
	b _0801E49E
_0801E408:
	ldr r5, _0801E460 @ =gUnknown_03002520
	lsls r0, r6, #3
	adds r5, r0, r5
	cmp r3, #0
	beq _0801E49C
	movs r0, #0xff
	mov ip, r0
	ldr r1, _0801E464 @ =gUnknown_0808F0B8
	ldr r0, [sp, #0x20]
	lsls r0, r0, #1
	adds r0, r0, r1
	mov r8, r0
	ldr r7, _0801E468 @ =0x000001FF
	adds r6, r3, #0
_0801E424:
	ldrh r3, [r4]
	adds r4, #2
	adds r0, r3, #0
	mov r1, ip
	ands r0, r1
	mov r1, sb
	adds r2, r0, r1
	mov r0, ip
	ands r2, r0
	ldr r0, _0801E46C @ =0xFFFFFF00
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5]
	adds r5, #2
	movs r0, #0x80
	lsls r0, r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0801E474
	ldrh r3, [r4]
	adds r4, #2
	ldr r0, _0801E470 @ =0x0000C1FF
	ands r3, r0
	mov r1, r8
	ldrh r0, [r1]
	orrs r3, r0
	b _0801E478
	.align 2, 0
_0801E460: .4byte gUnknown_03002520
_0801E464: .4byte gUnknown_0808F0B8
_0801E468: .4byte 0x000001FF
_0801E46C: .4byte 0xFFFFFF00
_0801E470: .4byte 0x0000C1FF
_0801E474:
	ldrh r3, [r4]
	adds r4, #2
_0801E478:
	adds r0, r3, #0
	ands r0, r7
	mov r1, sl
	adds r2, r0, r1
	ldr r1, _0801E4AC @ =0xFFFFFE00
	adds r0, r1, #0
	ands r3, r0
	ands r2, r7
	orrs r3, r2
	strh r3, [r5]
	adds r5, #2
	ldrh r0, [r4]
	strh r0, [r5]
	adds r4, #2
	adds r5, #4
	subs r6, #1
	cmp r6, #0
	bne _0801E424
_0801E49C:
	movs r0, #0
_0801E49E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801E4AC: .4byte 0xFFFFFE00

	thumb_func_start sub_0801E4B0
sub_0801E4B0: @ 0x0801E4B0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, _0801E4F8 @ =gUnknown_0200ED20
	ldr r7, _0801E4FC @ =gUnknown_03002510
	ldr r0, [r7]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r0, r4, r5
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r5, #4
	adds r4, r4, r5
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r1, r3
	str r1, [r4]
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r0, #8]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r1, r6, #0
	bl sub_0801A718
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801E500
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	movs r0, #0
	b _0801E502
	.align 2, 0
_0801E4F8: .4byte gUnknown_0200ED20
_0801E4FC: .4byte gUnknown_03002510
_0801E500:
	movs r0, #1
_0801E502:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801E508
sub_0801E508: @ 0x0801E508
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	ldrh r2, [r3]
	adds r0, r3, #0
	adds r0, #2
	str r0, [sp, #8]
	adds r0, r4, r2
	cmp r0, #0x80
	ble _0801E52C
	movs r0, #1
	b _0801E8BA
_0801E52C:
	ldr r1, _0801E590 @ =gUnknown_03002520
	lsls r0, r4, #3
	adds r1, r0, r1
	str r1, [sp, #0x14]
	cmp r2, #0
	bne _0801E53A
	b _0801E8B8
_0801E53A:
	ldr r1, _0801E594 @ =gUnknown_0200F720
	ldr r3, [sp, #0x44]
	lsls r0, r3, #4
	adds r0, r0, r1
	mov sb, r0
	str r2, [sp, #0xc]
_0801E546:
	ldr r0, [sp, #8]
	ldrh r0, [r0]
	mov r8, r0
	ldr r1, [sp, #8]
	adds r1, #2
	str r1, [sp, #8]
	movs r2, #0xff
	ands r0, r2
	mov sl, r0
	movs r0, #0x80
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq _0801E568
	ldr r0, _0801E598 @ =0xFFFFFF00
	orrs r3, r0
	mov sl, r3
_0801E568:
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0801E5A4
	ldr r2, [sp, #8]
	ldrh r7, [r2]
	adds r2, #2
	str r2, [sp, #8]
	ldr r0, _0801E59C @ =0x0000C1FF
	ands r7, r0
	ldr r1, _0801E5A0 @ =gUnknown_0808F0B8
	ldr r3, [sp, #0x44]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	orrs r7, r0
	b _0801E5AC
	.align 2, 0
_0801E590: .4byte gUnknown_03002520
_0801E594: .4byte gUnknown_0200F720
_0801E598: .4byte 0xFFFFFF00
_0801E59C: .4byte 0x0000C1FF
_0801E5A0: .4byte gUnknown_0808F0B8
_0801E5A4:
	ldr r0, [sp, #8]
	ldrh r7, [r0]
	adds r0, #2
	str r0, [sp, #8]
_0801E5AC:
	ldr r1, _0801E708 @ =0x000001FF
	ands r1, r7
	str r1, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0801E5C2
	ldr r0, _0801E70C @ =0xFFFFFE00
	orrs r1, r0
	str r1, [sp, #0x10]
_0801E5C2:
	movs r1, #0xc0
	lsls r1, r1, #2
	mov r0, r8
	ands r0, r1
	cmp r0, r1
	beq _0801E5D0
	b _0801E710
_0801E5D0:
	adds r0, r7, #0
	bl sub_0801E3B4
	ldr r2, [sp, #0x10]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	mov r0, r8
	bl sub_0801E3B4
	add sl, r0
	adds r0, r7, #0
	bl sub_0801E3B4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	bl __floatsisf
	adds r4, r0, #0
	mov r3, sb
	movs r1, #4
	ldrsh r0, [r3, r1]
	bl __floatsisf
	bl sub_0808B91C
	adds r1, r0, #0
	adds r0, r4, #0
	bl __mulsf3
	adds r4, r0, #0
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	adds r5, r0, #0
	mov r0, sl
	bl __floatsisf
	adds r6, r0, #0
	mov r1, sb
	movs r2, #4
	ldrsh r0, [r1, r2]
	bl __floatsisf
	bl sub_0808B710
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	adds r4, r0, #0
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	adds r4, r0, #0
	ldr r0, [sp]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __addsf3
	adds r4, r0, #0
	ldr r0, [sp, #0x18]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __subsf3
	bl __fixsfsi
	mov sl, r0
	mov r0, r8
	bl sub_0801E3B4
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x10]
	rsbs r0, r2, #0
	bl __floatsisf
	adds r4, r0, #0
	mov r3, sb
	movs r1, #4
	ldrsh r0, [r3, r1]
	bl __floatsisf
	bl sub_0808B710
	adds r1, r0, #0
	adds r0, r4, #0
	bl __mulsf3
	adds r4, r0, #0
	mov r2, sb
	movs r3, #2
	ldrsh r0, [r2, r3]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	adds r5, r0, #0
	mov r1, sb
	movs r2, #4
	ldrsh r0, [r1, r2]
	bl __floatsisf
	bl sub_0808B91C
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	adds r4, r0, #0
	mov r3, sb
	movs r1, #2
	ldrsh r0, [r3, r1]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	adds r4, r0, #0
	ldr r0, [sp, #4]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __addsf3
	adds r4, r0, #0
	ldr r0, [sp, #0x1c]
	b _0801E85C
	.align 2, 0
_0801E708: .4byte 0x000001FF
_0801E70C: .4byte 0xFFFFFE00
_0801E710:
	adds r0, r7, #0
	bl sub_0801E3B4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	ldr r2, [sp, #0x10]
	adds r2, r2, r0
	str r2, [sp, #0x10]
	mov r0, r8
	bl sub_0801E3B4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	add sl, r0
	adds r0, r7, #0
	bl sub_0801E3B4
	adds r5, r0, #0
	ldr r0, [sp, #0x10]
	bl __floatsisf
	adds r4, r0, #0
	mov r3, sb
	movs r1, #4
	ldrsh r0, [r3, r1]
	bl __floatsisf
	bl sub_0808B91C
	adds r1, r0, #0
	adds r0, r4, #0
	bl __mulsf3
	adds r4, r0, #0
	mov r2, sb
	movs r3, #0
	ldrsh r0, [r2, r3]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	adds r6, r0, #0
	mov r0, sl
	bl __floatsisf
	str r0, [sp, #0x20]
	mov r1, sb
	movs r2, #4
	ldrsh r0, [r1, r2]
	bl __floatsisf
	bl sub_0808B710
	adds r1, r0, #0
	ldr r0, [sp, #0x20]
	bl __mulsf3
	adds r4, r0, #0
	mov r3, sb
	movs r1, #0
	ldrsh r0, [r3, r1]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __addsf3
	adds r4, r0, #0
	ldr r0, [sp]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __addsf3
	adds r4, r0, #0
	lsrs r0, r5, #0x1f
	adds r5, r5, r0
	asrs r5, r5, #1
	adds r0, r5, #0
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __subsf3
	bl __fixsfsi
	mov sl, r0
	mov r0, r8
	bl sub_0801E3B4
	adds r5, r0, #0
	ldr r2, [sp, #0x10]
	rsbs r0, r2, #0
	bl __floatsisf
	adds r4, r0, #0
	mov r3, sb
	movs r1, #4
	ldrsh r0, [r3, r1]
	bl __floatsisf
	bl sub_0808B710
	adds r1, r0, #0
	adds r0, r4, #0
	bl __mulsf3
	adds r4, r0, #0
	mov r2, sb
	movs r3, #2
	ldrsh r0, [r2, r3]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	adds r6, r0, #0
	mov r1, sb
	movs r2, #4
	ldrsh r0, [r1, r2]
	bl __floatsisf
	bl sub_0808B91C
	adds r1, r0, #0
	ldr r0, [sp, #0x20]
	bl __mulsf3
	adds r4, r0, #0
	mov r3, sb
	movs r1, #2
	ldrsh r0, [r3, r1]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __divsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __addsf3
	adds r4, r0, #0
	ldr r0, [sp, #4]
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __addsf3
	adds r4, r0, #0
	lsrs r0, r5, #0x1f
	adds r5, r5, r0
	asrs r5, r5, #1
	adds r0, r5, #0
_0801E85C:
	bl __floatsisf
	adds r1, r0, #0
	adds r0, r4, #0
	bl __subsf3
	bl __fixsfsi
	adds r1, r0, #0
	ldr r2, _0801E8CC @ =0xFFFFFF00
	adds r0, r2, #0
	mov r3, r8
	ands r3, r0
	movs r0, #0xff
	ands r1, r0
	orrs r3, r1
	ldr r0, [sp, #0x14]
	strh r3, [r0]
	adds r0, #2
	str r0, [sp, #0x14]
	ldr r1, _0801E8D0 @ =0xFFFFFE00
	adds r0, r1, #0
	ands r7, r0
	ldr r2, _0801E8D4 @ =0x000001FF
	adds r0, r2, #0
	mov r3, sl
	ands r3, r0
	orrs r7, r3
	ldr r0, [sp, #0x14]
	strh r7, [r0]
	adds r0, #2
	str r0, [sp, #0x14]
	ldr r1, [sp, #8]
	ldrh r0, [r1]
	ldr r2, [sp, #0x14]
	strh r0, [r2]
	adds r1, #2
	str r1, [sp, #8]
	adds r2, #4
	str r2, [sp, #0x14]
	ldr r3, [sp, #0xc]
	subs r3, #1
	str r3, [sp, #0xc]
	cmp r3, #0
	beq _0801E8B8
	b _0801E546
_0801E8B8:
	movs r0, #0
_0801E8BA:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801E8CC: .4byte 0xFFFFFF00
_0801E8D0: .4byte 0xFFFFFE00
_0801E8D4: .4byte 0x000001FF

	thumb_func_start sub_0801E8D8
sub_0801E8D8: @ 0x0801E8D8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r5, _0801E920 @ =gUnknown_0200ED20
	ldr r7, _0801E924 @ =gUnknown_03002510
	ldr r0, [r7]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r0, r4, r5
	strh r1, [r0]
	strh r2, [r0, #2]
	adds r5, #4
	adds r4, r4, r5
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r3
	str r1, [r4]
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r0, #8]
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	adds r1, r6, #0
	bl sub_0801A718
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801E928
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	movs r0, #0
	b _0801E92A
	.align 2, 0
_0801E920: .4byte gUnknown_0200ED20
_0801E924: .4byte gUnknown_03002510
_0801E928:
	movs r0, #1
_0801E92A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0801E930
sub_0801E930: @ 0x0801E930
	push {r4, r5, lr}
	sub sp, #0xc
	movs r4, #0
	movs r5, #0
	str r4, [sp]
	str r5, [sp, #4]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #8]
	bl sub_0801E338
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801E950
sub_0801E950: @ 0x0801E950
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl sub_0801E334
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0801E0C8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0801E968
sub_0801E968: @ 0x0801E968
	push {r4, r5, lr}
	ldr r5, _0801E99C @ =gUnknown_03000550
	ldr r2, _0801E9A0 @ =gUnknown_0200E438
	ldr r3, _0801E9A4 @ =gUnknown_03001470
	ldr r4, _0801E9A8 @ =gUnknown_0300054E
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	ldrh r1, [r0, #0x26]
	movs r0, #0x4c
	muls r0, r1, r0
	adds r2, #0x44
	adds r0, r0, r2
	ldr r2, [r0]
	str r2, [r5]
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r1, _0801E9AC @ =gUnknown_03000548
	bl _call_via_r2
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E99C: .4byte gUnknown_03000550
_0801E9A0: .4byte gUnknown_0200E438
_0801E9A4: .4byte gUnknown_03001470
_0801E9A8: .4byte gUnknown_0300054E
_0801E9AC: .4byte gUnknown_03000548

	thumb_func_start sub_0801E9B0
sub_0801E9B0: @ 0x0801E9B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov sb, r3
	ldr r3, [sp, #0x54]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	str r1, [sp, #0x1c]
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x20]
	mov r4, sb
	ldrh r4, [r4]
	str r4, [sp, #4]
	movs r1, #2
	add sb, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	lsls r0, r4, #0x10
	asrs r6, r0, #0x10
	adds r0, r5, r6
	cmp r0, #0x80
	ble _0801E9F8
	movs r0, #1
	b _0801ECD2
_0801E9F8:
	ldr r0, _0801EB60 @ =gUnknown_0300054E
	strh r3, [r0]
	lsls r0, r3, #0x10
	asrs r4, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	str r0, [sp, #0x28]
	cmp r4, r1
	beq _0801EA26
	ldr r2, _0801EB64 @ =gUnknown_0200E438
	ldr r1, _0801EB68 @ =gUnknown_03001470
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r0, r0, r1
	ldrh r1, [r0, #0x26]
	movs r0, #0x4c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r2, [r0, #0x3c]
	str r2, [sp, #0x18]
	ldrh r0, [r0, #0x3e]
	str r0, [sp, #0x1c]
_0801EA26:
	add r1, sp, #0x4c
	adds r0, r1, #0
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	ldrh r4, [r1, #2]
	str r4, [sp, #0x10]
	ldrh r1, [r1, #4]
	str r1, [sp, #0x14]
	ldr r1, _0801EB6C @ =gUnknown_03002520
	lsls r0, r5, #3
	adds r7, r0, r1
	movs r0, #0
	str r0, [sp, #8]
	cmp r0, r6
	blt _0801EA46
	b _0801ECD0
_0801EA46:
	ldr r0, _0801EB70 @ =gUnknown_0808F0F8
	ldr r1, [r0]
	mov r8, r1
	movs r2, #0xc0
	lsls r2, r2, #8
	mov sl, r2
	mov r4, ip
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #0x24]
_0801EA5A:
	mov r0, sb
	ldrh r2, [r0]
	ldrh r4, [r0, #2]
	ldrh r5, [r0, #4]
	movs r3, #0xff
	lsls r3, r3, #8
	adds r1, r2, #0
	ands r1, r3
	ldr r0, [sp, #0xc]
	ands r0, r3
	adds r6, r1, r0
	movs r3, #0xff
	movs r1, #0xff
	ands r2, r1
	ldr r0, [sp, #0xc]
	ands r0, r1
	adds r2, r2, r0
	ands r2, r3
	orrs r6, r2
	mov r1, r8
	strh r6, [r1]
	movs r2, #0xce
	lsls r2, r2, #8
	adds r1, r4, #0
	ands r1, r2
	ldr r0, [sp, #0x10]
	ands r0, r2
	adds r3, r1, r0
	ldr r2, _0801EB74 @ =0x000001FF
	adds r1, r4, #0
	ands r1, r2
	ldr r0, [sp, #0x10]
	ands r0, r2
	adds r1, r1, r0
	ands r1, r2
	orrs r3, r1
	movs r0, #0xc0
	lsls r0, r0, #6
	ldr r2, [sp, #0x10]
	eors r4, r2
	ands r4, r0
	orrs r3, r4
	mov r4, r8
	strh r3, [r4, #2]
	ldr r1, [sp, #0x14]
	adds r5, r5, r1
	strh r5, [r4, #4]
	mov ip, r3
	mov r2, ip
	ands r2, r0
	mov ip, r2
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r4, #0
	ldr r0, [sp, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0801EAD6
	movs r0, #0
	mov ip, r0
	movs r1, #1
	str r1, [sp, #0x20]
_0801EAD6:
	movs r5, #0x7f
	ands r5, r6
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq _0801EAE8
	movs r0, #0x80
	rsbs r0, r0, #0
	orrs r5, r0
_0801EAE8:
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _0801EB14
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	ldr r0, [sp, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _0801EB14
	mov r0, sl
	ands r3, r0
	lsrs r1, r3, #0xc
	ands r6, r0
	lsrs r0, r6, #0xa
	adds r1, r1, r0
	ldr r2, _0801EB78 @ =gUnknown_0848B6F8
	adds r1, r1, r2
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r5, r0
	rsbs r5, r0, #0
_0801EB14:
	ldr r6, _0801EB7C @ =gUnknown_03000548
	ldrh r4, [r6, #2]
	ldrb r3, [r6, #2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _0801EB2A
	ldr r0, _0801EB80 @ =0xFFFFFF00
	orrs r3, r0
_0801EB2A:
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _0801EB88
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	ldr r0, [sp, #0x10]
	ands r0, r1
	cmp r0, #0
	bne _0801EB40
	b _0801EC5C
_0801EB40:
	mov r1, sl
	ands r1, r4
	lsrs r1, r1, #0xc
	ldrh r2, [r6]
	mov r0, sl
	ands r0, r2
	lsrs r0, r0, #0xa
	adds r1, r1, r0
	ldr r2, _0801EB84 @ =gUnknown_0848B6F6
	adds r1, r1, r2
	movs r4, #0
	ldrsh r0, [r1, r4]
	adds r0, r3, r0
	rsbs r3, r0, #0
	b _0801EC5C
	.align 2, 0
_0801EB60: .4byte gUnknown_0300054E
_0801EB64: .4byte gUnknown_0200E438
_0801EB68: .4byte gUnknown_03001470
_0801EB6C: .4byte gUnknown_03002520
_0801EB70: .4byte gUnknown_0808F0F8
_0801EB74: .4byte 0x000001FF
_0801EB78: .4byte gUnknown_0848B6F8
_0801EB7C: .4byte gUnknown_03000548
_0801EB80: .4byte 0xFFFFFF00
_0801EB84: .4byte gUnknown_0848B6F6
_0801EB88:
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0801EBF0
	mov r1, sl
	ands r1, r4
	lsrs r1, r1, #0xc
	ldrh r2, [r6]
	mov r0, sl
	ands r0, r2
	lsrs r0, r0, #0xa
	adds r1, r1, r0
	ldr r2, _0801EBE8 @ =gUnknown_0848B6F6
	adds r0, r1, r2
	movs r4, #0
	ldrsh r2, [r0, r4]
	adds r3, r3, r2
	ldr r0, _0801EBEC @ =gUnknown_0848B6F8
	adds r1, r1, r0
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r5, r5, r1
	ldr r4, [sp, #0x18]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	cmp r0, #0
	bge _0801EBC8
	adds r0, #0xff
_0801EBC8:
	asrs r3, r0, #8
	ldr r4, [sp, #0x1c]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	muls r0, r5, r0
	cmp r0, #0
	bge _0801EBD8
	adds r0, #0xff
_0801EBD8:
	asrs r5, r0, #8
	ldr r4, [sp, #0x24]
	adds r0, r3, r4
	subs r3, r0, r2
	ldr r2, [sp]
	lsls r0, r2, #0x10
	b _0801EC4A
	.align 2, 0
_0801EBE8: .4byte gUnknown_0848B6F6
_0801EBEC: .4byte gUnknown_0848B6F8
_0801EBF0:
	mov r2, sl
	ands r2, r4
	lsrs r2, r2, #0xc
	ldrh r1, [r6]
	mov r0, sl
	ands r0, r1
	lsrs r0, r0, #0xa
	adds r2, r2, r0
	ldr r4, _0801EC54 @ =gUnknown_0848B6F6
	adds r0, r2, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r4, r0, #1
	adds r3, r3, r4
	ldr r0, _0801EC58 @ =gUnknown_0848B6F8
	adds r2, r2, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	adds r5, r5, r1
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	muls r0, r3, r0
	cmp r0, #0
	bge _0801EC2E
	adds r0, #0xff
_0801EC2E:
	asrs r3, r0, #8
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	muls r0, r5, r0
	cmp r0, #0
	bge _0801EC3E
	adds r0, #0xff
_0801EC3E:
	asrs r5, r0, #8
	ldr r2, [sp, #0x24]
	adds r0, r3, r2
	subs r3, r0, r4
	ldr r4, [sp]
	lsls r0, r4, #0x10
_0801EC4A:
	asrs r0, r0, #0x10
	adds r0, r5, r0
	subs r5, r0, r1
	b _0801EC68
	.align 2, 0
_0801EC54: .4byte gUnknown_0848B6F6
_0801EC58: .4byte gUnknown_0848B6F8
_0801EC5C:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r5, r5, r0
	ldr r2, [sp, #0x24]
	adds r3, r3, r2
_0801EC68:
	mov r4, r8
	ldrh r1, [r4]
	movs r2, #0xff
	lsls r2, r2, #8
	adds r0, r2, #0
	ands r1, r0
	movs r0, #0xff
	ands r5, r0
	orrs r1, r5
	strh r1, [r4]
	ldrh r1, [r4, #2]
	movs r4, #0xfe
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r1, r0
	ldr r2, _0801ECE4 @ =0x000001FF
	adds r0, r2, #0
	ands r3, r0
	orrs r1, r3
	mov r4, ip
	orrs r4, r1
	mov r0, r8
	strh r4, [r0, #2]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #0x10
	mov r1, r8
	bl sub_080169A4
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r7]
	adds r7, #2
	ldrh r0, [r2, #2]
	strh r0, [r7]
	adds r7, #2
	ldrh r0, [r2, #4]
	strh r0, [r7]
	movs r4, #6
	add sb, r4
	adds r7, #4
	ldr r0, [sp, #8]
	lsls r1, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r1, r2
	lsrs r4, r1, #0x10
	str r4, [sp, #8]
	ldr r2, [sp, #4]
	lsls r0, r2, #0x10
	cmp r1, r0
	bge _0801ECD0
	b _0801EA5A
_0801ECD0:
	movs r0, #0
_0801ECD2:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0801ECE4: .4byte 0x000001FF

	thumb_func_start sub_0801ECE8
sub_0801ECE8: @ 0x0801ECE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	str r3, [sp]
	ldr r5, [sp, #0x24]
	ldr r6, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	mov ip, r0
	ldr r3, _0801ED5C @ =gUnknown_0200ED20
	mov r8, r3
	ldr r7, _0801ED60 @ =gUnknown_03002510
	ldr r0, [r7]
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r0, r4, r3
	movs r3, #0
	mov sl, r3
	strh r1, [r0]
	strh r2, [r0, #2]
	movs r1, #4
	add r8, r1
	add r4, r8
	ldr r3, [sp]
	str r3, [r4]
	mov r1, sl
	strh r1, [r0, #8]
	ldr r1, _0801ED64 @ =0xFFFFDFFF
	ands r1, r5
	ldr r2, _0801ED68 @ =0xFFFFEFFF
	adds r5, r1, #0
	ands r5, r2
	str r5, [r0, #0xc]
	str r6, [r0, #0x10]
	mov r3, ip
	strh r3, [r0, #0xa]
	mov r1, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov sb, r1
	bl sub_0801A718
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0801ED6C
	ldr r0, [r7]
	adds r0, #1
	str r0, [r7]
	movs r0, #0
	b _0801ED6E
	.align 2, 0
_0801ED5C: .4byte gUnknown_0200ED20
_0801ED60: .4byte gUnknown_03002510
_0801ED64: .4byte 0xFFFFDFFF
_0801ED68: .4byte 0xFFFFEFFF
_0801ED6C:
	movs r0, #1
_0801ED6E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801ED80
sub_0801ED80: @ 0x0801ED80
	sub sp, #4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	str r3, [sp, #0x20]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	movs r7, #1
	rsbs r7, r7, #0
	str r7, [sp, #8]
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0801ECE8
	cmp r0, #0
	bne _0801EDB4
	movs r0, #0
	b _0801EDB6
_0801EDB4:
	adds r0, r7, #0
_0801EDB6:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #4
	bx r3

	thumb_func_start sub_0801EDC0
sub_0801EDC0: @ 0x0801EDC0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r2, r0, #0
	movs r4, #0
	movs r5, #0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #0x18
	orrs r3, r2
	str r4, [sp]
	str r5, [sp, #4]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #8]
	movs r1, #0
	movs r2, #0
	bl sub_0801ECE8
	cmp r0, #0
	bne _0801EDEE
	movs r0, #0
	b _0801EDF0
_0801EDEE:
	adds r0, r4, #0
_0801EDF0:
	add sp, #0xc
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0801EDF8
sub_0801EDF8: @ 0x0801EDF8
	push {lr}
	sub sp, #8
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r3, [sp, #4]
	movs r3, #0
	str r3, [sp]
	bl sub_0801ED80
	add sp, #8
	pop {r1}
	bx r1

	thumb_func_start sub_0801EE10
sub_0801EE10: @ 0x0801EE10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	b _0801EE5C
_0801EE16:
	ldr r6, [r5, #4]
	cmp r6, #0
	bge _0801EE2C
	ldr r0, _0801EE28 @ =0x7FFFFFFF
	ands r6, r0
	bl _call_via_r6
	b _0801EE5C
	.align 2, 0
_0801EE28: .4byte 0x7FFFFFFF
_0801EE2C:
	ldr r7, _0801EE78 @ =gUnknown_03002B54
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #2
	ldrsh r2, [r5, r3]
	ldr r3, [r5, #0xc]
	ldr r4, [r5, #0x10]
	str r3, [sp]
	str r4, [sp, #4]
	movs r4, #0xa
	ldrsh r3, [r5, r4]
	str r3, [sp, #8]
	adds r3, r6, #0
	bl sub_0801E9B0
	cmp r0, #0
	bne _0801EE5C
	ldrh r0, [r7]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r7]
_0801EE5C:
	bl sub_0801A700
	adds r5, r0, #0
	cmp r5, #0
	bne _0801EE16
	ldr r1, _0801EE7C @ =gUnknown_03002510
	movs r0, #0
	str r0, [r1]
	bl sub_0801A6C0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EE78: .4byte gUnknown_03002B54
_0801EE7C: .4byte gUnknown_03002510

	thumb_func_start sub_0801EE80
sub_0801EE80: @ 0x0801EE80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r2, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	ldrh r2, [r4]
	ldr r1, _0801EF50 @ =gUnknown_0808F0FC
	ldr r6, [r1]
	ldrh r0, [r6]
	lsls r5, r2, #0x10
	asrs r2, r5, #0x10
	adds r0, r0, r2
	cmp r0, #0x10
	bgt _0801EF40
	ldr r1, _0801EF54 @ =gUnknown_03002520
	ldrh r0, [r6]
	lsls r0, r0, #3
	adds r3, r0, r1
	adds r4, #2
	cmp r2, #0
	beq _0801EF40
	movs r0, #0xff
	mov sb, r0
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	mov r2, sb
	ands r1, r2
	str r1, [sp, #4]
	ldr r7, _0801EF58 @ =0x000001FF
	mov ip, r7
	ldr r1, _0801EF5C @ =0xFFFFFF00
	mov r8, r1
	mov r2, r8
	ands r2, r0
	mov r8, r2
	mov r7, sl
	lsls r0, r7, #0x10
	asrs r6, r0, #0x10
_0801EEE2:
	ldrh r2, [r4]
	movs r1, #0xff
	lsls r1, r1, #8
	ands r1, r2
	mov r0, sb
	ands r0, r2
	ldr r2, [sp, #4]
	adds r0, r0, r2
	movs r7, #0xff
	ands r0, r7
	orrs r1, r0
	mov r0, r8
	orrs r1, r0
	strh r1, [r3]
	adds r3, #2
	ldrh r0, [r4, #2]
	movs r2, #0xfe
	lsls r2, r2, #8
	ands r2, r0
	mov r1, ip
	ands r1, r0
	adds r0, r6, #0
	mov r7, ip
	ands r0, r7
	adds r1, r1, r0
	ands r1, r7
	orrs r2, r1
	ldr r0, _0801EF60 @ =0xFFFFFE00
	ands r0, r6
	orrs r2, r0
	strh r2, [r3]
	adds r3, #2
	ldrh r0, [r4, #4]
	ldr r1, [sp]
	adds r0, r1, r0
	strh r0, [r3]
	adds r3, #4
	ldr r1, _0801EF64 @ =gUnknown_03001FE4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	adds r4, #6
	ldr r2, _0801EF68 @ =0xFFFF0000
	adds r5, r5, r2
	asrs r0, r5, #0x10
	cmp r0, #0
	bne _0801EEE2
_0801EF40:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801EF50: .4byte gUnknown_0808F0FC
_0801EF54: .4byte gUnknown_03002520
_0801EF58: .4byte 0x000001FF
_0801EF5C: .4byte 0xFFFFFF00
_0801EF60: .4byte 0xFFFFFE00
_0801EF64: .4byte gUnknown_03001FE4
_0801EF68: .4byte 0xFFFF0000

	thumb_func_start sub_0801EF6C
sub_0801EF6C: @ 0x0801EF6C
	push {lr}
	movs r0, #0
	movs r1, #0x80
	bl sub_0801E0C8
	ldr r1, _0801EF88 @ =gUnknown_03002B54
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0801EF8C @ =gUnknown_03001FE4
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801EF88: .4byte gUnknown_03002B54
_0801EF8C: .4byte gUnknown_03001FE4

	thumb_func_start sub_0801EF90
sub_0801EF90: @ 0x0801EF90
	push {lr}
	movs r0, #0x10
	movs r1, #0x70
	bl sub_0801E0C8
	ldr r1, _0801EFA4 @ =gUnknown_03002B54
	movs r0, #0x10
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801EFA4: .4byte gUnknown_03002B54

	thumb_func_start sub_0801EFA8
sub_0801EFA8: @ 0x0801EFA8
	push {lr}
	movs r0, #0
	movs r1, #0x10
	bl sub_0801E0C8
	ldr r1, _0801EFBC @ =gUnknown_03001FE4
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0801EFBC: .4byte gUnknown_03001FE4

	thumb_func_start sub_0801EFC0
sub_0801EFC0: @ 0x0801EFC0
	push {lr}
	ldr r0, _0801EFD4 @ =gUnknown_03002520
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08011C90
	pop {r0}
	bx r0
	.align 2, 0
_0801EFD4: .4byte gUnknown_03002520

	thumb_func_start sub_0801EFD8
sub_0801EFD8: @ 0x0801EFD8
	push {lr}
	ldr r0, _0801EFEC @ =gUnknown_030025A0
	ldr r1, _0801EFF0 @ =0x07000080
	movs r2, #0xe0
	lsls r2, r2, #2
	bl sub_08011C90
	pop {r0}
	bx r0
	.align 2, 0
_0801EFEC: .4byte gUnknown_030025A0
_0801EFF0: .4byte 0x07000080

	thumb_func_start sub_0801EFF4
sub_0801EFF4: @ 0x0801EFF4
	push {lr}
	ldr r0, _0801F008 @ =gUnknown_03002520
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl sub_08011C90
	pop {r0}
	bx r0
	.align 2, 0
_0801F008: .4byte gUnknown_03002520

	thumb_func_start sub_0801F00C
sub_0801F00C: @ 0x0801F00C
	ldr r1, _0801F014 @ =gUnknown_03001FE0
	movs r0, #1
	str r0, [r1]
	bx lr
	.align 2, 0
_0801F014: .4byte gUnknown_03001FE0

	thumb_func_start sub_0801F018
sub_0801F018: @ 0x0801F018
	ldr r1, _0801F020 @ =gUnknown_03001FE0
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_0801F020: .4byte gUnknown_03001FE0

	thumb_func_start sub_0801F024
sub_0801F024: @ 0x0801F024
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _0801F03C @ =gUnknown_03001FE0
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F040
	bl _call_via_r2
	b _0801F04A
	.align 2, 0
_0801F03C: .4byte gUnknown_03001FE0
_0801F040:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r2, #0
	bl sub_0801EDC0
_0801F04A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0801F050
sub_0801F050: @ 0x0801F050
	push {lr}
	ldr r0, _0801F060 @ =gUnknown_03001FE0
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F064
	bl sub_0801BCA8
	b _0801F068
	.align 2, 0
_0801F060: .4byte gUnknown_03001FE0
_0801F064:
	bl sub_0801E0F0
_0801F068:
	pop {r0}
	bx r0

	thumb_func_start sub_0801F06C
sub_0801F06C: @ 0x0801F06C
	push {lr}
	ldr r0, _0801F080 @ =gUnknown_03001FE0
	ldr r0, [r0]
	cmp r0, #0
	bne _0801F07A
	bl sub_08015550
_0801F07A:
	pop {r0}
	bx r0
	.align 2, 0
_0801F080: .4byte gUnknown_03001FE0

	thumb_func_start sub_0801F084
sub_0801F084: @ 0x0801F084
	push {lr}
	ldr r0, _0801F0A0 @ =gUnknown_03001FE0
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F0A4
	movs r0, #0
	bl sub_0801BF2C
	movs r0, #5
	bl sub_0801BF2C
	bl sub_0801BE78
	b _0801F0A8
	.align 2, 0
_0801F0A0: .4byte gUnknown_03001FE0
_0801F0A4:
	bl sub_0801EE10
_0801F0A8:
	pop {r0}
	bx r0

	thumb_func_start sub_0801F0AC
sub_0801F0AC: @ 0x0801F0AC
	push {lr}
	ldr r0, _0801F0BC @ =gUnknown_03001FE0
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F0C0
	bl sub_0801BC08
	b _0801F0C4
	.align 2, 0
_0801F0BC: .4byte gUnknown_03001FE0
_0801F0C0:
	bl sub_0801EFF4
_0801F0C4:
	pop {r0}
	bx r0

	thumb_func_start sub_0801F0C8
sub_0801F0C8: @ 0x0801F0C8
	push {lr}
	ldr r0, _0801F0DC @ =gUnknown_03001FE0
	ldr r0, [r0]
	cmp r0, #0
	bne _0801F0D6
	bl sub_0801EFA8
_0801F0D6:
	pop {r0}
	bx r0
	.align 2, 0
_0801F0DC: .4byte gUnknown_03001FE0

	thumb_func_start sub_0801F0E0
sub_0801F0E0: @ 0x0801F0E0
	push {lr}
	ldr r0, _0801F0F0 @ =gUnknown_03001FE0
	ldr r0, [r0]
	cmp r0, #0
	beq _0801F0F4
	bl sub_0801BBC4
	b _0801F0F8
	.align 2, 0
_0801F0F0: .4byte gUnknown_03001FE0
_0801F0F4:
	bl sub_0801EFD8
_0801F0F8:
	pop {r0}
	bx r0

	thumb_func_start sub_0801F0FC
sub_0801F0FC: @ 0x0801F0FC
	push {lr}
	ldr r0, _0801F110 @ =gUnknown_03001FE0
	ldr r0, [r0]
	cmp r0, #0
	bne _0801F10A
	bl sub_0801555C
_0801F10A:
	pop {r0}
	bx r0
	.align 2, 0
_0801F110: .4byte gUnknown_03001FE0

	thumb_func_start sub_0801F114
sub_0801F114: @ 0x0801F114
	push {r4, r5, lr}
	movs r1, #0
	ldr r0, _0801F148 @ =gUnknown_0200F920
	adds r5, r0, #0
	adds r5, #8
	ldr r0, _0801F14C @ =0x0000FFFF
	adds r4, r0, #0
_0801F122:
	lsls r0, r1, #4
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r0, r5
	movs r2, #0x1f
_0801F12E:
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
	adds r1, #4
	subs r2, #1
	cmp r2, #0
	bge _0801F12E
	adds r1, r3, #0
	cmp r1, #5
	ble _0801F122
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F148: .4byte gUnknown_0200F920
_0801F14C: .4byte 0x0000FFFF

	thumb_func_start sub_0801F150
sub_0801F150: @ 0x0801F150
	push {r4, r5, lr}
	ldr r5, _0801F174 @ =gUnknown_0200F920
	lsls r4, r0, #4
	adds r4, r4, r0
	lsls r4, r4, #3
	adds r4, r4, r5
	str r1, [r4]
	movs r1, #0
	strb r3, [r4, #4]
	strb r1, [r4, #5]
	strh r2, [r4, #8]
	adds r1, r3, #0
	bl sub_0801F178
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801F174: .4byte gUnknown_0200F920

	thumb_func_start sub_0801F178
sub_0801F178: @ 0x0801F178
	push {lr}
	ldr r3, _0801F198 @ =gUnknown_0848B738
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #2
	adds r3, #4
	adds r2, r2, r3
	ldr r0, [r2]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x10
	movs r2, #0x20
	bl sub_08013618
	pop {r0}
	bx r0
	.align 2, 0
_0801F198: .4byte gUnknown_0848B738

	thumb_func_start sub_0801F19C
sub_0801F19C: @ 0x0801F19C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	bl sub_0801F3D4
	adds r1, r0, #0
	ldr r2, _0801F1E4 @ =gUnknown_0848B780
	lsls r0, r6, #2
	adds r0, r0, r2
	ldrb r2, [r0]
	ldrb r0, [r0, #1]
	adds r4, r2, #0
	muls r4, r0, r4
	adds r0, r6, #0
	bl sub_0801F444
	adds r3, r0, #0
	ldr r0, _0801F1E8 @ =0x000003FF
	ands r5, r0
	lsls r5, r5, #5
	mov r2, r8
	adds r1, r2, r5
	ands r4, r0
	lsls r2, r4, #5
	lsrs r2, r2, #2
	adds r0, r3, #0
	bl CpuFastSet
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801F1E4: .4byte gUnknown_0848B780
_0801F1E8: .4byte 0x000003FF

	thumb_func_start sub_0801F1EC
sub_0801F1EC: @ 0x0801F1EC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_0801F3D4
	ldr r2, _0801F220 @ =gUnknown_0200F920
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	movs r3, #0
	ldrb r0, [r1, #5]
	cmp r3, r0
	bge _0801F22E
	adds r2, r1, #0
	adds r2, #8
_0801F20C:
	ldrh r0, [r2, #2]
	cmp r0, r4
	bne _0801F224
	ldr r1, [r1]
	ldrh r2, [r2]
	adds r0, r5, #0
	bl sub_0801F19C
	b _0801F22E
	.align 2, 0
_0801F220: .4byte gUnknown_0200F920
_0801F224:
	adds r2, #4
	adds r3, #1
	ldrb r0, [r1, #5]
	cmp r3, r0
	blt _0801F20C
_0801F22E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0801F234
sub_0801F234: @ 0x0801F234
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0801F3D4
	adds r1, r0, #0
	ldr r2, _0801F2A0 @ =gUnknown_0200F920
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r0, r2
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldrh r7, [r0, #8]
	ldr r2, _0801F2A4 @ =gUnknown_0848B780
	lsls r0, r5, #2
	adds r0, r0, r2
	ldrb r2, [r0]
	ldrb r0, [r0, #1]
	adds r6, r2, #0
	muls r6, r0, r6
	adds r0, r5, #0
	bl sub_0801F444
	adds r3, r0, #0
	ldr r2, _0801F2A8 @ =0x000003FF
	adds r0, r7, #0
	ands r0, r2
	lsls r0, r0, #5
	ldr r1, [r4]
	adds r1, r1, r0
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #5
	lsrs r2, r0, #2
	adds r0, r3, #0
	bl CpuFastSet
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r4, r0
	strh r5, [r0, #0xa]
	ldrb r0, [r4, #5]
	adds r0, #1
	strb r0, [r4, #5]
	ldrb r0, [r4, #5]
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r7, r6
	strh r1, [r0, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F2A0: .4byte gUnknown_0200F920
_0801F2A4: .4byte gUnknown_0848B780
_0801F2A8: .4byte 0x000003FF

	thumb_func_start sub_0801F2AC
sub_0801F2AC: @ 0x0801F2AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r8, r1
	bl sub_0801F3D4
	ldr r2, _0801F32C @ =gUnknown_0200F920
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r4, r1, r2
	movs r3, #0
	ldrb r0, [r4, #5]
	cmp r3, r0
	bge _0801F33E
	ldr r1, _0801F330 @ =gUnknown_0848B780
	lsls r0, r5, #2
	adds r6, r0, r1
	adds r2, r4, #0
	adds r2, #8
	mov ip, r1
_0801F2DA:
	ldrh r0, [r2, #2]
	cmp r0, r5
	bne _0801F334
	ldrh r3, [r2]
	ldrb r0, [r4, #4]
	lsls r0, r0, #0xc
	orrs r3, r0
	movs r1, #0
	lsls r0, r5, #2
	ldrb r6, [r6, #1]
	cmp r1, r6
	bge _0801F33E
	mov sb, r0
	mov r4, sb
	add r4, ip
	ldr r7, _0801F330 @ =gUnknown_0848B780
	mov ip, r7
_0801F2FC:
	movs r2, #0
	mov r6, r8
	adds r6, #0x40
	adds r5, r1, #1
	ldrb r0, [r4]
	cmp r2, r0
	bge _0801F31E
	mov r0, sb
	add r0, ip
	mov r1, r8
_0801F310:
	strh r3, [r1]
	adds r3, #1
	adds r1, #2
	adds r2, #1
	ldrb r7, [r0]
	cmp r2, r7
	blt _0801F310
_0801F31E:
	mov r8, r6
	adds r1, r5, #0
	ldrb r0, [r4, #1]
	cmp r1, r0
	blt _0801F2FC
	b _0801F33E
	.align 2, 0
_0801F32C: .4byte gUnknown_0200F920
_0801F330: .4byte gUnknown_0848B780
_0801F334:
	adds r2, #4
	adds r3, #1
	ldrb r7, [r4, #5]
	cmp r3, r7
	blt _0801F2DA
_0801F33E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801F34C
sub_0801F34C: @ 0x0801F34C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	mov r8, r2
	adds r5, r3, #0
	bl sub_0801F3D4
	ldr r2, _0801F3B0 @ =gUnknown_0200F920
	lsls r1, r0, #4
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r2, r1, r2
	movs r3, #0
	ldrb r0, [r2, #5]
	cmp r3, r0
	bge _0801F3C6
	ldr r0, _0801F3B4 @ =gUnknown_0848BAE4
	mov ip, r0
	ldr r1, _0801F3B8 @ =gUnknown_0848B780
	lsls r0, r6, #2
	adds r4, r0, r1
	adds r1, r2, #0
	adds r1, #8
_0801F380:
	ldrh r0, [r1, #2]
	cmp r0, r6
	bne _0801F3BC
	ldrh r1, [r1]
	adds r1, r5, r1
	ldrb r0, [r2, #4]
	subs r0, #0x10
	lsls r0, r0, #0xc
	adds r5, r1, r0
	ldrb r1, [r4, #1]
	lsls r0, r1, #4
	adds r0, r0, r1
	ldrb r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, ip
	ldr r3, [r0]
	str r5, [sp]
	ldr r0, [sp, #0x1c]
	adds r1, r7, #0
	mov r2, r8
	bl sub_0801BEFC
	b _0801F3C6
	.align 2, 0
_0801F3B0: .4byte gUnknown_0200F920
_0801F3B4: .4byte gUnknown_0848BAE4
_0801F3B8: .4byte gUnknown_0848B780
_0801F3BC:
	adds r1, #4
	adds r3, #1
	ldrb r0, [r2, #5]
	cmp r3, r0
	blt _0801F380
_0801F3C6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0801F3D4
sub_0801F3D4: @ 0x0801F3D4
	cmp r0, #0xbb
	ble _0801F3DC
	movs r0, #5
	b _0801F3FE
_0801F3DC:
	cmp r0, #0xb7
	ble _0801F3E4
	movs r0, #4
	b _0801F3FE
_0801F3E4:
	cmp r0, #0xab
	ble _0801F3EC
	movs r0, #3
	b _0801F3FE
_0801F3EC:
	cmp r0, #0x42
	ble _0801F3F4
	movs r0, #2
	b _0801F3FE
_0801F3F4:
	cmp r0, #0x3d
	bgt _0801F3FC
	movs r0, #0
	b _0801F3FE
_0801F3FC:
	movs r0, #1
_0801F3FE:
	bx lr

	thumb_func_start sub_0801F400
sub_0801F400: @ 0x0801F400
	adds r1, r0, #0
	cmp r1, #5
	bhi _0801F442
	lsls r0, r1, #2
	ldr r1, _0801F410 @ =_0801F414
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F410: .4byte _0801F414
_0801F414: @ jump table
	.4byte _0801F42C @ case 0
	.4byte _0801F430 @ case 1
	.4byte _0801F434 @ case 2
	.4byte _0801F438 @ case 3
	.4byte _0801F43C @ case 4
	.4byte _0801F440 @ case 5
_0801F42C:
	movs r0, #0
	b _0801F442
_0801F430:
	movs r0, #0x3e
	b _0801F442
_0801F434:
	movs r0, #0x43
	b _0801F442
_0801F438:
	movs r0, #0xac
	b _0801F442
_0801F43C:
	movs r0, #0xb8
	b _0801F442
_0801F440:
	movs r0, #0xbc
_0801F442:
	bx lr

	thumb_func_start sub_0801F444
sub_0801F444: @ 0x0801F444
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r2, _0801F480 @ =gUnknown_0848B738
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r3, [r0, #8]
	ldr r6, [r0]
	cmp r3, r5
	beq _0801F472
	ldr r1, _0801F484 @ =gUnknown_0848B780
	lsls r0, r3, #2
	adds r2, r0, r1
_0801F462:
	ldrb r0, [r2]
	ldrb r1, [r2, #1]
	muls r0, r1, r0
	adds r4, r4, r0
	adds r2, #4
	adds r3, #1
	cmp r3, r5
	bne _0801F462
_0801F472:
	ldr r0, _0801F488 @ =0x000003FF
	ands r4, r0
	lsls r0, r4, #5
	adds r0, r6, r0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0801F480: .4byte gUnknown_0848B738
_0801F484: .4byte gUnknown_0848B780
_0801F488: .4byte 0x000003FF

	thumb_func_start sub_0801F48C
sub_0801F48C: @ 0x0801F48C
	ldr r0, _0801F490 @ =gUnknown_08126244
	bx lr
	.align 2, 0
_0801F490: .4byte gUnknown_08126244

	thumb_func_start sub_0801F494
sub_0801F494: @ 0x0801F494
	ldr r0, _0801F498 @ =gUnknown_0812653C
	bx lr
	.align 2, 0
_0801F498: .4byte gUnknown_0812653C

	thumb_func_start sub_0801F49C
sub_0801F49C: @ 0x0801F49C
	ldr r0, _0801F4A0 @ =gUnknown_081268F8
	bx lr
	.align 2, 0
_0801F4A0: .4byte gUnknown_081268F8

	thumb_func_start sub_0801F4A4
sub_0801F4A4: @ 0x0801F4A4
	ldr r1, _0801F4AC @ =gUnknown_030013EC
	ldr r0, _0801F4B0 @ =sub_0801F4B4
	str r0, [r1]
	bx lr
	.align 2, 0
_0801F4AC: .4byte gUnknown_030013EC
_0801F4B0: .4byte sub_0801F4B4

	thumb_func_start sub_0801F4B4
sub_0801F4B4: @ 0x0801F4B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r6, r1, #0
	str r2, [sp]
	ldr r0, _0801F598 @ =gUnknown_030040E0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0801F59C @ =gUnknown_03003FBC
	strb r1, [r0]
	ldr r5, _0801F5A0 @ =gUnknown_03003F64
	ldr r4, _0801F5A4 @ =gUnknown_084999C8
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x2c
	str r1, [r5]
	ldr r2, _0801F5A8 @ =gUnknown_0300409C
	ldr r7, _0801F5AC @ =0x000005A4
	adds r1, r0, r7
	str r1, [r2]
	movs r1, #0
	mov r8, r1
	strh r3, [r0, #0x20]
	mov r2, sp
	ldrh r2, [r2, #0x24]
	strh r2, [r0, #0x22]
	adds r0, #0x24
	movs r7, #1
	mov sb, r7
	mov r1, sb
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x25
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x26
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r4]
	adds r0, #0x27
	movs r1, #8
	strb r1, [r0]
	ldr r2, [r4]
	ldr r0, _0801F5B0 @ =gUnknown_03004480
	ldrh r1, [r0]
	ldr r0, _0801F5B4 @ =gUnknown_08499598
	ldr r3, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r2, #0x2a
	strb r0, [r2]
	movs r0, #0xff
	bl sub_0801F838
	ldr r0, [sp]
	bl sub_0801F888
	ldr r0, [r5]
	mov r2, sl
	strb r2, [r0]
	ldr r0, [r5]
	strb r6, [r0, #1]
	ldr r0, [r5]
	mov r7, sb
	strb r7, [r0, #2]
	ldr r0, [r5]
	mov r1, r8
	strb r1, [r0, #3]
	ldr r0, _0801F5B8 @ =gUnknown_03003340
	lsls r6, r6, #2
	adds r6, r6, r0
	ldr r0, [r6]
	add r0, sl
	strb r1, [r0]
	ldr r1, [r5]
	adds r0, r1, #4
	str r0, [r5]
	mov r2, r8
	strb r2, [r1, #6]
	ldr r7, _0801F5BC @ =gUnknown_0809091C
	mov r8, r7
	ldr r0, _0801F5C0 @ =gUnknown_08090920
	mov sb, r0
	ldr r5, _0801F5C4 @ =gUnknown_08090924
	ldr r4, _0801F5C8 @ =gUnknown_08090928
_0801F570:
	mov r1, sb
	ldr r6, [r1]
	ldrb r3, [r6]
	cmp r3, #0
	bne _0801F5CC
	ldr r2, [r5]
	ldr r0, _0801F5A4 @ =gUnknown_084999C8
	ldr r1, [r0]
	ldr r7, _0801F5AC @ =0x000005A4
	adds r0, r1, r7
	str r0, [r2]
	ldr r0, [r4]
	adds r1, #0x2c
	str r1, [r0]
	movs r0, #1
	strb r0, [r6]
	mov r1, r8
	ldr r0, [r1]
	str r3, [r0]
	b _0801F5EC
	.align 2, 0
_0801F598: .4byte gUnknown_030040E0
_0801F59C: .4byte gUnknown_03003FBC
_0801F5A0: .4byte gUnknown_03003F64
_0801F5A4: .4byte gUnknown_084999C8
_0801F5A8: .4byte gUnknown_0300409C
_0801F5AC: .4byte 0x000005A4
_0801F5B0: .4byte gUnknown_03004480
_0801F5B4: .4byte gUnknown_08499598
_0801F5B8: .4byte gUnknown_03003340
_0801F5BC: .4byte gUnknown_0809091C
_0801F5C0: .4byte gUnknown_08090920
_0801F5C4: .4byte gUnknown_08090924
_0801F5C8: .4byte gUnknown_08090928
_0801F5CC:
	ldr r2, [r5]
	ldr r0, _0801F610 @ =gUnknown_084999C8
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	str r0, [r2]
	ldr r0, [r4]
	ldr r2, _0801F614 @ =0x000005A4
	adds r1, r1, r2
	str r1, [r0]
	movs r0, #0
	strb r0, [r6]
	mov r7, r8
	ldr r1, [r7]
	movs r0, #0
	str r0, [r1]
_0801F5EC:
	adds r1, r4, #0
	ldr r0, [r1]
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0801F6E0
_0801F5F8:
	ldr r0, [r1]
	ldr r0, [r0]
	ldrb r0, [r0, #2]
	subs r0, #1
	cmp r0, #4
	bhi _0801F6C6
	lsls r0, r0, #2
	ldr r1, _0801F618 @ =_0801F61C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0801F610: .4byte gUnknown_084999C8
_0801F614: .4byte 0x000005A4
_0801F618: .4byte _0801F61C
_0801F61C: @ jump table
	.4byte _0801F630 @ case 0
	.4byte _0801F654 @ case 1
	.4byte _0801F66E @ case 2
	.4byte _0801F688 @ case 3
	.4byte _0801F6A8 @ case 4
_0801F630:
	movs r0, #2
	movs r1, #0
	movs r2, #0xff
	bl sub_0801F6F0
	movs r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_0801F6F0
	movs r0, #4
	movs r1, #0xff
	movs r2, #0
	bl sub_0801F6F0
	movs r0, #5
	movs r1, #1
	b _0801F6A0
_0801F654:
	movs r0, #2
	movs r1, #0
	movs r2, #0xff
	bl sub_0801F6F0
	movs r0, #4
	movs r1, #0xff
	movs r2, #0
	bl sub_0801F6F0
	movs r0, #5
	movs r1, #1
	b _0801F6A0
_0801F66E:
	movs r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_0801F6F0
	movs r0, #4
	movs r1, #0xff
	movs r2, #0
	bl sub_0801F6F0
	movs r0, #5
	movs r1, #1
	b _0801F6A0
_0801F688:
	movs r0, #2
	movs r1, #0
	movs r2, #0xff
	bl sub_0801F6F0
	movs r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_0801F6F0
	movs r0, #4
	movs r1, #0xff
_0801F6A0:
	movs r2, #0
	bl sub_0801F6F0
	b _0801F6C6
_0801F6A8:
	movs r0, #2
	movs r1, #0
	movs r2, #0xff
	bl sub_0801F6F0
	movs r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_0801F6F0
	movs r0, #5
	movs r1, #1
	movs r2, #0
	bl sub_0801F6F0
_0801F6C6:
	ldr r0, [r5]
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #2]
	ldr r1, [r4]
	ldr r2, [r1]
	adds r0, r2, #4
	str r0, [r1]
	adds r1, r4, #0
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _0801F5F8
	b _0801F570
_0801F6E0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801F6F0
sub_0801F6F0: @ 0x0801F6F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r0, _0801F818 @ =gUnknown_0300409C
	ldr r3, [r0]
	lsrs r1, r1, #0x18
	ldrb r0, [r3]
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsrs r2, r2, #0x18
	ldrb r1, [r3, #1]
	adds r2, r2, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	ldr r6, _0801F81C @ =gUnknown_0809092C
	ldr r0, [r6]
	ldr r5, [r0]
	ldr r0, _0801F820 @ =gUnknown_08499590
	ldr r7, [r0]
	lsls r1, r2, #1
	ldr r2, _0801F824 @ =0x0000417A
	adds r0, r7, r2
	adds r0, r0, r1
	ldrh r0, [r0]
	add r0, r8
	mov sb, r0
	ldr r1, _0801F828 @ =0x00001432
	adds r0, r7, r1
	add r0, sb
	ldrb r0, [r0]
	movs r2, #0x1f
	ands r2, r0
	adds r2, r5, r2
	ldr r0, _0801F82C @ =gUnknown_08090930
	mov sl, r0
	ldr r4, [r0]
	ldrb r0, [r3, #1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r3]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldrb r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	mov r2, ip
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	add r0, r8
	mov r4, sl
	ldrb r0, [r0]
	cmp r1, r0
	bge _0801F808
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0801F7A6
	adds r0, r7, #0
	adds r0, #0x12
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0801F7A6
	adds r2, r5, #0
	adds r2, #0x2a
	lsrs r1, r0, #0x1e
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r1
	ldrb r1, [r2]
	ldrb r0, [r0]
	ands r0, r1
	cmp r0, #0
	bne _0801F808
_0801F7A6:
	ldr r0, [r6]
	ldr r6, [r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x20
	ldrsh r1, [r6, r2]
	cmp r0, r1
	bgt _0801F808
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r8, r0
	bhs _0801F808
	adds r0, r6, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp ip, r0
	bhs _0801F808
	ldr r2, _0801F830 @ =gUnknown_030040E0
	ldr r1, [r2]
	movs r0, #0xae
	lsls r0, r0, #1
	cmp r1, r0
	bgt _0801F808
	adds r0, r1, #1
	str r0, [r2]
	ldr r1, _0801F834 @ =gUnknown_03003F64
	ldr r0, [r1]
	mov r5, r8
	strb r5, [r0]
	ldr r0, [r1]
	mov r2, ip
	strb r2, [r0, #1]
	ldr r0, [r1]
	mov r5, sp
	ldrb r5, [r5]
	strb r5, [r0, #2]
	ldr r0, [r1]
	strb r3, [r0, #3]
	ldr r0, [r1]
	adds r0, #4
	str r0, [r1]
	ldr r1, [r4]
	mov r2, ip
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	add r0, r8
	strb r3, [r0]
_0801F808:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F818: .4byte gUnknown_0300409C
_0801F81C: .4byte gUnknown_0809092C
_0801F820: .4byte gUnknown_08499590
_0801F824: .4byte 0x0000417A
_0801F828: .4byte 0x00001432
_0801F82C: .4byte gUnknown_08090930
_0801F830: .4byte gUnknown_030040E0
_0801F834: .4byte gUnknown_03003F64

	thumb_func_start sub_0801F838
sub_0801F838: @ 0x0801F838
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r2, #0
	ldr r1, _0801F880 @ =gUnknown_08499590
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	cmp r2, r0
	bge _0801F87A
	adds r6, r1, #0
	ldr r7, _0801F884 @ =gUnknown_03003340
_0801F84E:
	movs r1, #0
	ldr r0, [r6]
	adds r4, r2, #1
	ldrh r0, [r0]
	cmp r1, r0
	bge _0801F870
	lsls r0, r2, #2
	adds r2, r0, r7
	ldr r3, _0801F880 @ =gUnknown_08499590
_0801F860:
	ldr r0, [r2]
	adds r0, r0, r1
	strb r5, [r0]
	adds r1, #1
	ldr r0, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	blt _0801F860
_0801F870:
	adds r2, r4, #0
	ldr r0, [r6]
	ldrh r0, [r0, #2]
	cmp r2, r0
	blt _0801F84E
_0801F87A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F880: .4byte gUnknown_08499590
_0801F884: .4byte gUnknown_03003340

	thumb_func_start sub_0801F888
sub_0801F888: @ 0x0801F888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r4, #0
	ldr r0, _0801F8E4 @ =gUnknown_085D3DD0
	ldr r1, _0801F8E8 @ =gUnknown_03003FC0
	mov ip, r1
	adds r0, #0x50
	mov sl, r0
	ldr r0, _0801F8EC @ =gUnknown_03004480
	mov sb, r0
	ldr r1, _0801F8F0 @ =gUnknown_08499598
	mov r8, r1
	ldr r7, _0801F8F4 @ =gUnknown_085D5ABC
_0801F8AA:
	ldr r1, _0801F8F8 @ =gUnknown_084999C8
	ldr r0, [r1]
	adds r5, r0, r4
	mov r3, ip
	adds r3, #0x2c
	mov r0, sb
	ldrh r1, [r0]
	mov r0, r8
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrb r1, [r2, #0x1e]
	lsls r0, r1, #4
	adds r0, r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	lsls r3, r0, #2
	mov r1, ip
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0801F8FC
	ldrb r1, [r2, #0x1d]
	lsls r0, r1, #6
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r3, r0
	b _0801F902
	.align 2, 0
_0801F8E4: .4byte gUnknown_085D3DD0
_0801F8E8: .4byte gUnknown_03003FC0
_0801F8EC: .4byte gUnknown_03004480
_0801F8F0: .4byte gUnknown_08499598
_0801F8F4: .4byte gUnknown_085D5ABC
_0801F8F8: .4byte gUnknown_084999C8
_0801F8FC:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r3, r1
_0801F902:
	add r0, sl
	ldr r1, [r0]
	movs r0, #0x5c
	muls r0, r6, r0
	adds r0, r0, r7
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #5
	adds r0, r4, r0
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r5]
	adds r4, #1
	cmp r4, #0x1f
	ble _0801F8AA
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0801F92C
sub_0801F92C: @ 0x0801F92C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r3, #0
	ldr r0, _0801F97C @ =gUnknown_08090934
	ldr r2, [r0]
	ldr r1, [r2]
	mov ip, r0
	ldrh r1, [r1, #2]
	cmp r3, r1
	bge _0801F95C
	ldr r7, _0801F980 @ =gUnknown_03003340
	adds r6, r2, #0
	ldr r4, _0801F984 @ =0x0000417A
_0801F946:
	ldr r2, [r6]
	lsls r1, r3, #1
	adds r0, r2, r4
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r5, r0
	stm r7!, {r0}
	adds r3, #1
	ldrh r2, [r2, #2]
	cmp r3, r2
	blt _0801F946
_0801F95C:
	ldr r3, _0801F988 @ =gUnknown_084999C8
	ldr r1, [r3]
	mov r0, ip
	ldr r2, [r0]
	ldr r0, [r2]
	ldrh r0, [r0]
	adds r1, #0x28
	strb r0, [r1]
	ldr r0, [r3]
	ldr r1, [r2]
	ldrh r1, [r1, #2]
	adds r0, #0x29
	strb r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801F97C: .4byte gUnknown_08090934
_0801F980: .4byte gUnknown_03003340
_0801F984: .4byte 0x0000417A
_0801F988: .4byte gUnknown_084999C8

	thumb_func_start sub_0801F98C
sub_0801F98C: @ 0x0801F98C
	push {r4, lr}
	movs r1, #0
	ldr r0, _0801F9BC @ =gUnknown_08499590
	ldr r2, [r0]
	ldrh r3, [r2, #2]
	cmp r1, r3
	bge _0801F9B4
	ldrh r4, [r2]
	adds r2, r3, #0
	adds r3, r0, #0
_0801F9A0:
	adds r1, #1
	cmp r4, #0
	beq _0801F9B0
	ldr r0, [r3]
	ldrh r0, [r0]
_0801F9AA:
	subs r0, #1
	cmp r0, #0
	bne _0801F9AA
_0801F9B0:
	cmp r1, r2
	blt _0801F9A0
_0801F9B4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801F9BC: .4byte gUnknown_08499590

	thumb_func_start sub_0801F9C0
sub_0801F9C0: @ 0x0801F9C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov ip, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	mov r5, ip
	mov r4, r8
	adds r0, r4, r5
	cmp r4, r0
	bgt _0801FA48
	ldr r6, _0801FABC @ =gUnknown_08499590
	ldr r0, [r6]
	ldrh r0, [r0, #2]
	cmp r4, r0
	bge _0801FA48
	mov sl, r6
_0801F9FA:
	ldr r0, [sp]
	subs r1, r0, r5
	lsls r0, r5, #1
	adds r0, #1
	cmp r1, #0
	bge _0801FA0A
	adds r0, r0, r1
	movs r1, #0
_0801FA0A:
	adds r2, r1, r0
	mov r3, sl
	ldr r0, [r3]
	ldrh r0, [r0]
	cmp r2, r0
	ble _0801FA18
	adds r2, r0, #0
_0801FA18:
	subs r5, #1
	adds r7, r4, #1
	mov r6, r8
	add r6, ip
	cmp r1, r2
	bge _0801FA38
	lsls r0, r4, #2
	ldr r4, _0801FAC0 @ =gUnknown_03003340
	adds r3, r0, r4
_0801FA2A:
	ldr r0, [r3]
	adds r0, r0, r1
	mov r4, sb
	strb r4, [r0]
	adds r1, #1
	cmp r1, r2
	blt _0801FA2A
_0801FA38:
	adds r4, r7, #0
	cmp r4, r6
	bgt _0801FA48
	mov r7, sl
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	cmp r4, r0
	blt _0801F9FA
_0801FA48:
	mov r5, ip
	subs r5, #1
	mov r4, r8
	subs r4, #1
	mov r0, r8
	mov r1, ip
	subs r6, r0, r1
	cmp r4, r6
	blt _0801FAAA
	cmp r4, #0
	blt _0801FAAA
	ldr r3, _0801FABC @ =gUnknown_08499590
	mov r8, r3
	ldr r7, _0801FAC0 @ =gUnknown_03003340
	mov sl, r7
_0801FA66:
	ldr r0, [sp]
	subs r1, r0, r5
	lsls r0, r5, #1
	adds r0, #1
	cmp r1, #0
	bge _0801FA76
	adds r0, r0, r1
	movs r1, #0
_0801FA76:
	adds r2, r1, r0
	mov r3, r8
	ldr r0, [r3]
	ldrh r0, [r0]
	cmp r2, r0
	ble _0801FA84
	adds r2, r0, #0
_0801FA84:
	subs r5, #1
	subs r3, r4, #1
	cmp r1, r2
	bge _0801FAA0
	lsls r0, r4, #2
	mov r7, sl
	adds r4, r0, r7
_0801FA92:
	ldr r0, [r4]
	adds r0, r0, r1
	mov r7, sb
	strb r7, [r0]
	adds r1, #1
	cmp r1, r2
	blt _0801FA92
_0801FAA0:
	adds r4, r3, #0
	cmp r3, r6
	blt _0801FAAA
	cmp r3, #0
	bge _0801FA66
_0801FAAA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FABC: .4byte gUnknown_08499590
_0801FAC0: .4byte gUnknown_03003340

	thumb_func_start sub_0801FAC4
sub_0801FAC4: @ 0x0801FAC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r4, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov ip, r4
	movs r5, #1
	cmp r2, #1
	beq _0801FB0C
	cmp r2, #1
	bgt _0801FB00
	cmp r2, #0
	beq _0801FB78
	b _0801FCC6
_0801FB00:
	cmp r0, #2
	beq _0801FBF0
	cmp r0, #3
	bne _0801FB0A
	b _0801FC5C
_0801FB0A:
	b _0801FCC6
_0801FB0C:
	mov r2, sb
	mov r1, r8
	subs r0, r2, r1
	cmp r2, r0
	bgt _0801FB18
	b _0801FCC6
_0801FB18:
	cmp r2, #0
	bge _0801FB1E
	b _0801FCC6
_0801FB1E:
	mov r0, sl
	adds r0, #1
	subs r1, r0, r5
	lsls r0, r5, #1
	subs r0, #1
	cmp r1, #0
	bge _0801FB30
	adds r0, r0, r1
	movs r1, #0
_0801FB30:
	adds r4, r1, r0
	ldr r3, _0801FB70 @ =gUnknown_08499590
	ldr r0, [r3]
	ldrh r0, [r0]
	cmp r4, r0
	ble _0801FB3E
	adds r4, r0, #0
_0801FB3E:
	adds r3, r1, #0
	adds r5, #1
	subs r1, r2, #1
	mov r7, sb
	mov r0, r8
	subs r6, r7, r0
	cmp r3, r4
	bge _0801FB62
	lsls r0, r2, #2
	ldr r7, _0801FB74 @ =gUnknown_03003340
	adds r2, r0, r7
_0801FB54:
	ldr r0, [r2]
	adds r0, r0, r3
	mov r7, ip
	strb r7, [r0]
	adds r3, #1
	cmp r3, r4
	blt _0801FB54
_0801FB62:
	adds r2, r1, #0
	cmp r2, r6
	bgt _0801FB6A
	b _0801FCC6
_0801FB6A:
	cmp r2, #0
	bge _0801FB1E
	b _0801FCC6
	.align 2, 0
_0801FB70: .4byte gUnknown_08499590
_0801FB74: .4byte gUnknown_03003340
_0801FB78:
	mov r2, sb
	mov r1, r8
	adds r0, r2, r1
	cmp r2, r0
	blt _0801FB84
	b _0801FCC6
_0801FB84:
	ldr r6, _0801FBE8 @ =gUnknown_08499590
	ldr r0, [r6]
	ldrh r0, [r0, #2]
	cmp r2, r0
	blt _0801FB90
	b _0801FCC6
_0801FB90:
	adds r7, r6, #0
_0801FB92:
	mov r0, sl
	adds r0, #1
	subs r1, r0, r5
	lsls r0, r5, #1
	subs r0, #1
	cmp r1, #0
	bge _0801FBA4
	adds r0, r0, r1
	movs r1, #0
_0801FBA4:
	adds r4, r1, r0
	ldr r0, [r7]
	ldrh r0, [r0]
	cmp r4, r0
	ble _0801FBB0
	adds r4, r0, #0
_0801FBB0:
	adds r3, r1, #0
	adds r5, #1
	adds r1, r2, #1
	mov r6, sb
	add r6, r8
	str r6, [sp, #4]
	cmp r3, r4
	bge _0801FBD4
	lsls r0, r2, #2
	ldr r6, _0801FBEC @ =gUnknown_03003340
	adds r2, r0, r6
_0801FBC6:
	ldr r0, [r2]
	adds r0, r0, r3
	mov r6, ip
	strb r6, [r0]
	adds r3, #1
	cmp r3, r4
	blt _0801FBC6
_0801FBD4:
	adds r2, r1, #0
	ldr r0, [sp, #4]
	cmp r2, r0
	bge _0801FCC6
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	cmp r2, r0
	blt _0801FB92
	b _0801FCC6
	.align 2, 0
_0801FBE8: .4byte gUnknown_08499590
_0801FBEC: .4byte gUnknown_03003340
_0801FBF0:
	mov r3, sl
	mov r1, r8
	subs r0, r3, r1
	cmp r3, r0
	ble _0801FCC6
	cmp r3, #0
	blt _0801FCC6
_0801FBFE:
	mov r0, sb
	adds r0, #1
	subs r2, r0, r5
	lsls r0, r5, #1
	subs r0, #1
	cmp r2, #0
	bge _0801FC10
	adds r0, r0, r2
	movs r2, #0
_0801FC10:
	adds r1, r2, r0
	ldr r4, _0801FC54 @ =gUnknown_08499590
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r1, r0
	ble _0801FC1E
	adds r1, r0, #0
_0801FC1E:
	adds r5, #1
	subs r4, r3, #1
	mov r6, sl
	mov r7, r8
	subs r6, r6, r7
	str r6, [sp]
	cmp r2, r1
	bge _0801FC44
	lsls r0, r2, #2
	ldr r7, _0801FC58 @ =gUnknown_03003340
	adds r6, r0, r7
	subs r2, r1, r2
_0801FC36:
	ldm r6!, {r0}
	adds r0, r0, r3
	mov r1, ip
	strb r1, [r0]
	subs r2, #1
	cmp r2, #0
	bne _0801FC36
_0801FC44:
	adds r3, r4, #0
	ldr r4, [sp]
	cmp r3, r4
	ble _0801FCC6
	cmp r3, #0
	bge _0801FBFE
	b _0801FCC6
	.align 2, 0
_0801FC54: .4byte gUnknown_08499590
_0801FC58: .4byte gUnknown_03003340
_0801FC5C:
	mov r3, sl
	mov r6, r8
	adds r0, r3, r6
	cmp r3, r0
	bge _0801FCC6
	ldr r2, _0801FCD8 @ =gUnknown_08499590
	ldr r0, [r2]
	ldrh r0, [r0]
	cmp r3, r0
	bge _0801FCC6
_0801FC70:
	mov r0, sb
	adds r0, #1
	subs r2, r0, r5
	lsls r0, r5, #1
	subs r0, #1
	cmp r2, #0
	bge _0801FC82
	adds r0, r0, r2
	movs r2, #0
_0801FC82:
	adds r1, r2, r0
	ldr r7, _0801FCD8 @ =gUnknown_08499590
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	cmp r1, r0
	ble _0801FC90
	adds r1, r0, #0
_0801FC90:
	adds r4, r3, #1
	adds r5, #1
	mov r0, sl
	add r0, r8
	str r0, [sp]
	cmp r2, r1
	bge _0801FCB4
	lsls r0, r2, #2
	ldr r7, _0801FCDC @ =gUnknown_03003340
	adds r6, r0, r7
	subs r2, r1, r2
_0801FCA6:
	ldm r6!, {r0}
	adds r0, r0, r3
	mov r1, ip
	strb r1, [r0]
	subs r2, #1
	cmp r2, #0
	bne _0801FCA6
_0801FCB4:
	adds r3, r4, #0
	ldr r6, [sp]
	cmp r4, r6
	bge _0801FCC6
	ldr r7, _0801FCD8 @ =gUnknown_08499590
	ldr r0, [r7]
	ldrh r0, [r0]
	cmp r4, r0
	blt _0801FC70
_0801FCC6:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FCD8: .4byte gUnknown_08499590
_0801FCDC: .4byte gUnknown_03003340

	thumb_func_start sub_0801FCE0
sub_0801FCE0: @ 0x0801FCE0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r2, _0801FD28 @ =gUnknown_08499590
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	cmp r1, r0
	bhs _0801FD22
	ldr r0, _0801FD2C @ =gUnknown_03003340
	mov ip, r0
	adds r7, r2, #0
_0801FCFE:
	movs r3, #0
	lsls r0, r1, #2
	adds r4, r1, #1
	mov r1, ip
	adds r2, r0, r1
_0801FD08:
	ldr r0, [r2]
	adds r1, r6, r3
	adds r0, r0, r1
	strb r5, [r0]
	adds r3, #1
	cmp r3, #2
	ble _0801FD08
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	cmp r1, r0
	blo _0801FCFE
_0801FD22:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD28: .4byte gUnknown_08499590
_0801FD2C: .4byte gUnknown_03003340

	thumb_func_start sub_0801FD30
sub_0801FD30: @ 0x0801FD30
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r3, #0
	ldr r0, _0801FD94 @ =gUnknown_08090938
	ldr r6, [r0]
	ldr r1, [r6]
	adds r7, r0, #0
	ldrh r1, [r1]
	cmp r3, r1
	bge _0801FD68
	ldr r1, _0801FD98 @ =gUnknown_03003340
	lsls r0, r5, #2
	adds r1, r0, r1
_0801FD54:
	cmp r3, r4
	beq _0801FD5E
	ldr r0, [r1]
	adds r0, r0, r3
	strb r2, [r0]
_0801FD5E:
	adds r3, #1
	ldr r0, [r6]
	ldrh r0, [r0]
	cmp r3, r0
	blt _0801FD54
_0801FD68:
	movs r3, #0
	ldr r1, [r7]
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	cmp r3, r0
	bge _0801FD8E
	adds r6, r1, #0
	ldr r1, _0801FD98 @ =gUnknown_03003340
_0801FD78:
	cmp r3, r5
	beq _0801FD82
	ldr r0, [r1]
	adds r0, r0, r4
	strb r2, [r0]
_0801FD82:
	adds r1, #4
	adds r3, #1
	ldr r0, [r6]
	ldrh r0, [r0, #2]
	cmp r3, r0
	blt _0801FD78
_0801FD8E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FD94: .4byte gUnknown_08090938
_0801FD98: .4byte gUnknown_03003340

	thumb_func_start sub_0801FD9C
sub_0801FD9C: @ 0x0801FD9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r4, #0
	ldr r1, _0801FE60 @ =gUnknown_08499590
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	cmp r4, r0
	bge _0801FE54
	mov sb, r1
_0801FDB6:
	movs r2, #0
	mov r1, sb
	ldr r0, [r1]
	adds r7, r4, #1
	mov ip, r7
	ldrh r0, [r0]
	cmp r2, r0
	bge _0801FE48
	ldr r1, _0801FE64 @ =gUnknown_03003340
	lsls r0, r4, #2
	adds r5, r0, r1
	ldr r6, _0801FE60 @ =gUnknown_08499590
	subs r0, r4, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	mov r8, r0
	lsls r0, r7, #2
	adds r7, r0, r1
_0801FDDA:
	ldr r0, [r5]
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	blt _0801FE3E
	cmp r0, r3
	beq _0801FE3E
	subs r1, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0801FDFA
	cmp r2, #0
	beq _0801FDFA
	strb r3, [r1]
_0801FDFA:
	ldr r0, [r5]
	adds r1, r2, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0801FE12
	ldr r0, [r6]
	ldrh r0, [r0]
	subs r0, #1
	cmp r2, r0
	beq _0801FE12
	strb r3, [r1, #1]
_0801FE12:
	mov r1, r8
	ldr r0, [r1]
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0801FE26
	cmp r4, #0
	beq _0801FE26
	strb r3, [r1]
_0801FE26:
	ldr r0, [r7]
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0801FE3E
	ldr r0, [r6]
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r4, r0
	beq _0801FE3E
	strb r3, [r1]
_0801FE3E:
	adds r2, #1
	ldr r0, [r6]
	ldrh r0, [r0]
	cmp r2, r0
	blt _0801FDDA
_0801FE48:
	mov r4, ip
	mov r7, sb
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	cmp r4, r0
	blt _0801FDB6
_0801FE54:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801FE60: .4byte gUnknown_08499590
_0801FE64: .4byte gUnknown_03003340

	thumb_func_start sub_0801FE68
sub_0801FE68: @ 0x0801FE68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r5, #0
	ldr r0, _08020010 @ =gUnknown_0809093C
	ldr r2, [r0]
	ldr r1, [r2]
	ldrh r1, [r1, #2]
	cmp r5, r1
	blo _0801FE84
	b _0801FF9E
_0801FE84:
	movs r0, #0x40
	mov sb, r0
_0801FE88:
	movs r4, #0
	ldr r1, _08020014 @ =gUnknown_08499590
	ldr r0, [r1]
	adds r2, r5, #1
	mov ip, r2
	ldrh r0, [r0]
	cmp r4, r0
	bhs _0801FF8C
	ldr r6, _08020018 @ =gUnknown_03003340
	mov r8, r6
	lsls r0, r5, #2
	mov sl, r0
	add r0, r8
	str r0, [sp]
	adds r7, r1, #0
_0801FEA6:
	ldr r1, [sp]
	ldr r0, [r1]
	adds r3, r0, r4
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	blt _0801FF7E
	cmp r0, #0x40
	beq _0801FF7E
	cmp r0, #0
	beq _0801FED4
	ldr r1, [r7]
	lsls r2, r5, #1
	ldr r6, _0802001C @ =0x0000417A
	adds r0, r1, r6
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r4
	adds r1, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0801FF7E
_0801FED4:
	cmp r4, #0
	beq _0801FEF8
	subs r1, r3, #1
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0x40
	beq _0801FEF8
	adds r0, r2, #1
	strb r0, [r1]
	ldr r0, [sp]
	ldr r1, [r0]
	adds r1, r4, r1
	subs r1, #1
	ldrb r0, [r1]
	mov r2, sb
	orrs r0, r2
	strb r0, [r1]
_0801FEF8:
	ldr r0, [r7]
	ldrh r0, [r0]
	subs r0, #1
	cmp r4, r0
	beq _0801FF24
	mov r1, sl
	add r1, r8
	ldr r0, [r1]
	adds r2, r4, r0
	ldrb r3, [r2, #1]
	movs r0, #1
	ldrsb r0, [r2, r0]
	cmp r0, #0x40
	beq _0801FF24
	adds r0, r3, #1
	strb r0, [r2, #1]
	ldr r1, [r1]
	adds r1, r4, r1
	ldrb r0, [r1, #1]
	mov r6, sb
	orrs r0, r6
	strb r0, [r1, #1]
_0801FF24:
	cmp r5, #0
	beq _0801FF4E
	subs r0, r5, #1
	lsls r0, r0, #2
	mov r2, r8
	adds r1, r0, r2
	ldr r0, [r1]
	adds r2, r0, r4
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x40
	beq _0801FF4E
	adds r0, r3, #1
	strb r0, [r2]
	ldr r1, [r1]
	adds r1, r1, r4
	ldrb r0, [r1]
	mov r6, sb
	orrs r0, r6
	strb r0, [r1]
_0801FF4E:
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r5, r0
	beq _0801FF7E
	mov r1, ip
	lsls r0, r1, #2
	mov r2, r8
	adds r1, r0, r2
	ldr r0, [r1]
	adds r2, r0, r4
	ldrb r3, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0x40
	beq _0801FF7E
	adds r0, r3, #1
	strb r0, [r2]
	ldr r1, [r1]
	adds r1, r1, r4
	ldrb r0, [r1]
	mov r6, sb
	orrs r0, r6
	strb r0, [r1]
_0801FF7E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r7]
	ldrh r0, [r0]
	cmp r4, r0
	blo _0801FEA6
_0801FF8C:
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	ldr r2, _08020014 @ =gUnknown_08499590
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	cmp r5, r0
	bhs _0801FF9E
	b _0801FE88
_0801FF9E:
	movs r5, #0
	ldr r1, _08020014 @ =gUnknown_08499590
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	cmp r5, r0
	bhs _0801FFFE
	mov r8, r1
	ldr r6, _08020018 @ =gUnknown_03003340
	mov sb, r6
_0801FFB0:
	movs r4, #0
	mov r1, r8
	ldr r0, [r1]
	adds r2, r5, #1
	mov ip, r2
	ldrh r0, [r0]
	cmp r4, r0
	bhs _0801FFEE
	lsls r0, r5, #2
	mov r6, sb
	adds r2, r0, r6
	ldr r6, _08020014 @ =gUnknown_08499590
	movs r7, #0x40
	movs r0, #1
	rsbs r0, r0, #0
	adds r5, r0, #0
_0801FFD0:
	ldr r0, [r2]
	adds r3, r0, r4
	ldrb r1, [r3]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0801FFE0
	strb r5, [r3]
_0801FFE0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [r6]
	ldrh r0, [r0]
	cmp r4, r0
	blo _0801FFD0
_0801FFEE:
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	mov r2, r8
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	cmp r5, r0
	blo _0801FFB0
_0801FFFE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020010: .4byte gUnknown_0809093C
_08020014: .4byte gUnknown_08499590
_08020018: .4byte gUnknown_03003340
_0802001C: .4byte 0x0000417A

	thumb_func_start sub_08020020
sub_08020020: @ 0x08020020
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r1, _080200E4 @ =gUnknown_08499590
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	cmp r3, r0
	bge _080200D6
	mov sb, r1
_08020036:
	movs r2, #0
	mov r1, sb
	ldr r0, [r1]
	adds r7, r3, #1
	mov r8, r7
	ldrh r0, [r0]
	cmp r2, r0
	bge _080200CA
	ldr r1, _080200E8 @ =gUnknown_03003340
	lsls r0, r3, #2
	adds r4, r0, r1
	movs r5, #1
	ldr r6, _080200E4 @ =gUnknown_08499590
	subs r0, r3, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	mov ip, r0
	lsls r0, r7, #2
	adds r7, r0, r1
_0802005C:
	ldr r0, [r4]
	adds r0, r0, r2
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #0
	blt _080200C0
	cmp r1, #1
	beq _080200C0
	subs r1, r0, #1
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0802007C
	cmp r2, #0
	beq _0802007C
	strb r5, [r1]
_0802007C:
	ldr r0, [r4]
	adds r1, r2, r0
	movs r0, #1
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _08020094
	ldr r0, [r6]
	ldrh r0, [r0]
	subs r0, #1
	cmp r2, r0
	beq _08020094
	strb r5, [r1, #1]
_08020094:
	mov r1, ip
	ldr r0, [r1]
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080200A8
	cmp r3, #0
	beq _080200A8
	strb r5, [r1]
_080200A8:
	ldr r0, [r7]
	adds r1, r0, r2
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080200C0
	ldr r0, [r6]
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r3, r0
	beq _080200C0
	strb r5, [r1]
_080200C0:
	adds r2, #1
	ldr r0, [r6]
	ldrh r0, [r0]
	cmp r2, r0
	blt _0802005C
_080200CA:
	mov r3, r8
	mov r7, sb
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	cmp r3, r0
	blt _08020036
_080200D6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080200E4: .4byte gUnknown_08499590
_080200E8: .4byte gUnknown_03003340

	thumb_func_start sub_080200EC
sub_080200EC: @ 0x080200EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	lsls r5, r2, #0x10
	asrs r2, r5, #0x10
	rsbs r0, r5, #0
	lsrs r6, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [sp]
	asrs r1, r1, #0x10
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r3, r4, #0x10
	asrs r0, r3, #0x10
	adds r1, r1, r2
	cmp r0, r1
	bgt _080201C8
	mov r1, sl
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
_08020132:
	asrs r2, r3, #0x10
	mov r0, sb
	lsls r7, r0, #0x10
	ldr r1, [sp]
	lsls r1, r1, #0x10
	mov ip, r1
	lsls r4, r4, #0x10
	lsls r6, r6, #0x10
	cmp r2, #0
	blt _080201AA
	ldr r1, _08020168 @ =gUnknown_08499590
	ldr r0, [r1]
	ldrh r0, [r0, #2]
	cmp r2, r0
	bge _080201AA
	asrs r0, r5, #0x10
	ldr r1, [sp, #4]
	subs r2, r1, r0
	asrs r0, r6, #0x10
	mov r1, sl
	lsls r5, r1, #0x10
	cmp r0, #0
	bge _08020162
	rsbs r0, r0, #0
_08020162:
	adds r0, r2, r0
	lsls r0, r0, #0x10
	b _08020190
	.align 2, 0
_08020168: .4byte gUnknown_08499590
_0802016C:
	cmp r2, #0
	blt _08020188
	ldr r1, _080201D8 @ =gUnknown_08499590
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r2, r0
	bge _08020188
	asrs r0, r4, #0xe
	ldr r1, _080201DC @ =gUnknown_03003340
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r2
	mov r1, r8
	strb r1, [r0]
_08020188:
	lsls r0, r3, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
_08020190:
	lsrs r3, r0, #0x10
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	asrs r1, r5, #0x10
	asrs r0, r7, #0x10
	adds r1, r1, r0
	asrs r0, r6, #0x10
	cmp r0, #0
	bge _080201A4
	rsbs r0, r0, #0
_080201A4:
	subs r0, r1, r0
	cmp r2, r0
	ble _0802016C
_080201AA:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r4, r0, #0x10
	adds r0, r6, r1
	lsrs r6, r0, #0x10
	lsls r3, r4, #0x10
	asrs r2, r3, #0x10
	mov r0, ip
	asrs r1, r0, #0x10
	adds r5, r7, #0
	asrs r0, r5, #0x10
	adds r1, r1, r0
	cmp r2, r1
	ble _08020132
_080201C8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080201D8: .4byte gUnknown_08499590
_080201DC: .4byte gUnknown_03003340

	thumb_func_start sub_080201E0
sub_080201E0: @ 0x080201E0
	push {r4, r5, r6, r7, lr}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	ldr r4, _08020264 @ =gUnknown_08499594
	ldr r1, [r4]
	subs r1, r5, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	ldrb r1, [r5]
	bl sub_08042D50
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	movs r3, #1
	bl sub_080200EC
	ldr r1, [r4]
	subs r1, r5, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	ldrb r1, [r5]
	bl sub_08042D50
	cmp r0, #1
	beq _0802025C
	ldr r2, _08020268 @ =gUnknown_085D5ABC
	ldrb r1, [r5]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r2, [r0, #0xe]
	subs r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_080200EC
_0802025C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020264: .4byte gUnknown_08499594
_08020268: .4byte gUnknown_085D5ABC

	thumb_func_start sub_0802026C
sub_0802026C: @ 0x0802026C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r3, #0
	ldr r3, [sp, #0x14]
	ldr r4, [sp, #0x18]
	ldr r5, _08020298 @ =gUnknown_03004480
	strh r0, [r5]
	ldr r0, _0802029C @ =gUnknown_030013EC
	str r4, [sp]
	ldr r4, [r0]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r6, #0
	bl _call_via_r4
	ldr r0, _080202A0 @ =gUnknown_030033EC
	ldrh r0, [r0]
	strh r0, [r5]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020298: .4byte gUnknown_03004480
_0802029C: .4byte gUnknown_030013EC
_080202A0: .4byte gUnknown_030033EC

	thumb_func_start sub_080202A4
sub_080202A4: @ 0x080202A4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldrb r4, [r6, #6]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x19
	ldr r5, _080202E0 @ =gUnknown_08499594
	ldr r1, [r5]
	subs r1, r6, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	ldrb r1, [r6]
	bl sub_08042D1C
	cmp r4, r0
	bge _080202E4
	ldrb r0, [r6, #6]
	lsls r0, r0, #0x19
	lsrs r3, r0, #0x19
	b _08020308
	.align 2, 0
_080202E0: .4byte gUnknown_08499594
_080202E4:
	ldr r1, [r5]
	subs r1, r6, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	ldrb r1, [r6]
	bl sub_08042D1C
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08020308:
	ldr r5, _08020328 @ =gUnknown_030013EC
	ldrb r0, [r6, #2]
	ldrb r1, [r6, #3]
	ldrb r2, [r6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r4, #1
	str r4, [sp]
	ldr r4, [r5]
	bl _call_via_r4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020328: .4byte gUnknown_030013EC

	thumb_func_start sub_0802032C
sub_0802032C: @ 0x0802032C
	push {r4, r5, lr}
	sub sp, #4
	ldr r3, _08020350 @ =gUnknown_030013EC
	ldrb r5, [r0, #2]
	ldrb r1, [r0, #3]
	ldrb r2, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r4, [r3]
	adds r0, r5, #0
	movs r3, #0x78
	bl _call_via_r4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08020350: .4byte gUnknown_030013EC

	thumb_func_start sub_08020354
sub_08020354: @ 0x08020354
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _080203B8 @ =gUnknown_08499594
	ldr r1, [r0]
	subs r1, r6, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	ldrb r1, [r6]
	bl sub_08042D50
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_0801F9C0
	ldr r2, _080203BC @ =gUnknown_085D5ABC
	ldrb r1, [r6]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r2, [r0, #0xe]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0xff
	bl sub_0801F9C0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080203B8: .4byte gUnknown_08499594
_080203BC: .4byte gUnknown_085D5ABC

	thumb_func_start sub_080203C0
sub_080203C0: @ 0x080203C0
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r3, #0
	ble _080203DA
	ldr r1, _08020424 @ =gUnknown_03003340
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r3, r0
	subs r0, #1
	movs r1, #0
	strb r1, [r0]
_080203DA:
	ldr r4, _08020428 @ =gUnknown_08499590
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r3, r0
	bgt _080203F2
	ldr r1, _08020424 @ =gUnknown_03003340
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r3, r0
	movs r1, #0
	strb r1, [r0, #1]
_080203F2:
	cmp r2, #0
	ble _08020406
	ldr r1, _08020424 @ =gUnknown_03003340
	subs r0, r2, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
_08020406:
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r2, r0
	bgt _0802041E
	ldr r1, _08020424 @ =gUnknown_03003340
	adds r0, r2, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0]
_0802041E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08020424: .4byte gUnknown_03003340
_08020428: .4byte gUnknown_08499590

	thumb_func_start sub_0802042C
sub_0802042C: @ 0x0802042C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r5, r0, #0
	adds r7, r1, #0
	mov sb, r2
	mov r0, sb
	str r0, [sp, #0x10]
	movs r1, #0
	mov sl, r1
	ldr r2, _08020480 @ =gUnknown_03004074
	ldr r3, _08020484 @ =gUnknown_03003340
	lsls r1, r7, #2
	adds r1, r1, r3
	ldr r0, [r1]
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r2]
	ldr r0, [r1]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08020466
	b _08020618
_08020466:
	mov r2, sp
	adds r2, #8
	str r2, [sp, #0x14]
_0802046C:
	ldr r0, _08020488 @ =gUnknown_08499590
	ldr r0, [r0]
	adds r6, r5, #1
	str r6, [sp, #0x18]
	ldrh r0, [r0]
	cmp r6, r0
	bne _0802048C
	movs r0, #0xff
	b _08020498
	.align 2, 0
_08020480: .4byte gUnknown_03004074
_08020484: .4byte gUnknown_03003340
_08020488: .4byte gUnknown_08499590
_0802048C:
	lsls r0, r7, #2
	ldr r6, _080204B0 @ =gUnknown_03003340
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0, #1]
_08020498:
	ldr r1, [sp, #0x14]
	strh r0, [r1]
	add r2, sp, #8
	mov ip, r2
	cmp r5, #0
	bne _080204B4
	mov r1, sp
	adds r1, #0xa
	movs r0, #0xff
	strh r0, [r1]
	b _080204C8
	.align 2, 0
_080204B0: .4byte gUnknown_03003340
_080204B4:
	lsls r0, r7, #2
	ldr r6, _080204E0 @ =gUnknown_03003340
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, r5, r0
	subs r0, #1
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0xa
	strh r1, [r0]
_080204C8:
	ldr r0, _080204E4 @ =gUnknown_08499590
	ldr r0, [r0]
	adds r1, r7, #1
	mov r8, r1
	ldrh r0, [r0, #2]
	cmp r8, r0
	bne _080204E8
	mov r1, sp
	adds r1, #0xe
	movs r0, #0xff
	strh r0, [r1]
	b _080204FC
	.align 2, 0
_080204E0: .4byte gUnknown_03003340
_080204E4: .4byte gUnknown_08499590
_080204E8:
	mov r2, r8
	lsls r0, r2, #2
	ldr r6, _08020508 @ =gUnknown_03003340
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r1, [r0]
	mov r0, sp
	adds r0, #0xe
	strh r1, [r0]
_080204FC:
	cmp r7, #0
	bne _0802050C
	add r1, sp, #0xc
	movs r0, #0xff
	strh r0, [r1]
	b _0802051E
	.align 2, 0
_08020508: .4byte gUnknown_03003340
_0802050C:
	subs r0, r7, #1
	lsls r0, r0, #2
	ldr r1, _08020588 @ =gUnknown_03003340
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r1, [r0]
	add r0, sp, #0xc
	strh r1, [r0]
_0802051E:
	movs r4, #0x80
	lsls r4, r4, #1
	movs r2, #0
	str r2, [sp, #0x20]
	mov r6, sb
	adds r6, #1
	str r6, [sp, #0x1c]
	mov r2, ip
	movs r3, #3
_08020530:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	cmp r0, r1
	ble _0802053E
	ldrh r4, [r2]
_0802053E:
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08020530
	movs r3, #0
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	mov r2, ip
_0802054E:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r4, r0
	bne _0802056C
	ldr r0, [sp, #0x20]
	lsls r1, r0, #0x10
	movs r6, #0x80
	lsls r6, r6, #9
	adds r1, r1, r6
	lsrs r1, r1, #0x10
	str r1, [sp, #0x20]
	lsls r0, r0, #0x10
	asrs r0, r0, #0xf
	add r0, sp
	strh r3, [r0]
_0802056C:
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	ble _0802054E
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	beq _0802059A
	cmp r0, #2
	bgt _0802058C
	cmp r0, #1
	beq _08020596
	b _080205CC
	.align 2, 0
_08020588: .4byte gUnknown_03003340
_0802058C:
	cmp r0, #3
	beq _080205AA
	cmp r0, #4
	beq _080205BA
	b _080205CC
_08020596:
	mov r0, sp
	b _080205C8
_0802059A:
	bl sub_080129E0
	lsrs r0, r0, #0xe
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	add r0, sp
	b _080205C8
_080205AA:
	bl sub_080129E0
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #1
	add r0, sp
	b _080205C8
_080205BA:
	bl sub_080129E0
	movs r1, #3
	ands r1, r0
	lsls r1, r1, #1
	mov r2, sp
	adds r0, r2, r1
_080205C8:
	ldrh r0, [r0]
	mov sl, r0
_080205CC:
	mov r0, sl
	mov r6, sb
	strb r0, [r6]
	ldr r1, [sp, #0x1c]
	mov sb, r1
	mov r2, sl
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	beq _080205F8
	cmp r0, #1
	bgt _080205EA
	cmp r0, #0
	beq _080205F4
	b _08020602
_080205EA:
	cmp r0, #2
	beq _08020600
	cmp r0, #3
	beq _080205FC
	b _08020602
_080205F4:
	ldr r5, [sp, #0x18]
	b _08020602
_080205F8:
	subs r5, #1
	b _08020602
_080205FC:
	mov r7, r8
	b _08020602
_08020600:
	subs r7, #1
_08020602:
	lsls r0, r7, #2
	ldr r6, _08020630 @ =gUnknown_03003340
	adds r0, r0, r6
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08020618
	b _0802046C
_08020618:
	ldr r0, [sp, #0x10]
	mov r1, sb
	bl sub_08020634
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020630: .4byte gUnknown_03003340

	thumb_func_start sub_08020634
sub_08020634: @ 0x08020634
	push {r4, lr}
	sub sp, #0x14
	adds r3, r0, #0
	adds r2, r1, #0
	movs r4, #0
	cmp r2, r3
	beq _08020652
_08020642:
	mov r0, sp
	adds r1, r0, r4
	subs r2, #1
	ldrb r0, [r2]
	strb r0, [r1]
	adds r4, #1
	cmp r2, r3
	bne _08020642
_08020652:
	mov r0, sp
	adds r1, r0, r4
	movs r0, #4
	strb r0, [r1]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r3]
	movs r4, #1
	b _08020670
_08020664:
	adds r3, #1
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	strb r0, [r3]
	adds r4, #1
_08020670:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _08020664
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08020680
sub_08020680: @ 0x08020680
	ldr r1, _08020694 @ =_08020698
_08020682:
	ldrb r0, [r2]
	adds r2, #1
	cmp r0, #4
	bhi _08020682
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08020694: .4byte _08020698
_08020698: @ jump table
	.4byte _08020682 @ case 0
	.4byte _08020682 @ case 1
	.4byte _08020682 @ case 2
	.4byte _08020682 @ case 3
	.4byte _080206AC @ case 4
_080206AC:
	bx lr
	.align 2, 0

	thumb_func_start sub_080206B0
sub_080206B0: @ 0x080206B0
	push {r4, lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r3, _080206E0 @ =gUnknown_085C77A0
	ldr r0, [r3, #0x2c]
	cmp r0, r2
	beq _080206D8
	movs r4, #0x5c
	adds r3, #0x2c
_080206C2:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xbf
	bhi _080206D8
	adds r0, r1, #0
	muls r0, r4, r0
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, r2
	bne _080206C2
_080206D8:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080206E0: .4byte gUnknown_085C77A0

	thumb_func_start sub_080206E4
sub_080206E4: @ 0x080206E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r1, #0
	ldr r2, _0802074C @ =gUnknown_08499590
	ldr r0, [r2]
	ldrh r3, [r0, #2]
	cmp r1, r3
	bge _08020740
	adds r6, r0, #0
	mov r8, r2
_08020700:
	movs r2, #0
	lsls r5, r1, #0x10
	ldrh r4, [r6]
	cmp r2, r4
	bge _08020730
	mov r0, r8
	ldr r3, [r0]
	asrs r1, r5, #0xf
	ldr r4, _08020750 @ =0x0000417A
	adds r0, r3, r4
	adds r4, r0, r1
_08020716:
	ldrh r1, [r4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	add r1, ip
	strb r7, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r3]
	cmp r0, r1
	blt _08020716
_08020730:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r5, r2
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r6, #2]
	cmp r0, r3
	blt _08020700
_08020740:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802074C: .4byte gUnknown_08499590
_08020750: .4byte 0x0000417A

	thumb_func_start sub_08020754
sub_08020754: @ 0x08020754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r1, #0
	ldr r0, _080207E8 @ =gUnknown_08499590
	ldr r0, [r0]
	ldrh r2, [r0, #2]
	cmp r1, r2
	bge _08020814
	mov sl, r0
_08020770:
	movs r3, #0
	adds r7, r1, #1
	str r7, [sp]
	mov r0, sl
	ldrh r0, [r0]
	cmp r3, r0
	bge _0802080A
	ldr r2, _080207E8 @ =gUnknown_08499590
	ldr r4, [r2]
	lsls r6, r1, #1
	ldr r7, _080207EC @ =0x0000417A
	adds r0, r4, r7
	adds r0, r0, r6
	mov sb, r0
	ldr r0, _080207F0 @ =0x00001432
	adds r0, r0, r4
	mov r8, r0
	ldr r1, _080207F4 @ =0x0000051A
	adds r1, r1, r4
	mov ip, r1
_08020798:
	mov r2, sb
	ldrh r0, [r2]
	adds r2, r0, r3
	mov r7, r8
	adds r0, r7, r2
	ldrb r0, [r0]
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #4
	beq _080207B0
	cmp r1, #0x13
	bne _080207FC
_080207B0:
	mov r0, ip
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _080207D4
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r7, _080207F8 @ =gUnknown_08499594
	ldr r1, [r7]
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _080207FC
_080207D4:
	ldr r2, _080207E8 @ =gUnknown_08499590
	ldr r0, [r2]
	ldr r7, _080207EC @ =0x0000417A
	adds r0, r0, r7
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r0, r0, r3
	adds r0, r5, r0
	movs r1, #0
	b _08020800
	.align 2, 0
_080207E8: .4byte gUnknown_08499590
_080207EC: .4byte 0x0000417A
_080207F0: .4byte 0x00001432
_080207F4: .4byte 0x0000051A
_080207F8: .4byte gUnknown_08499594
_080207FC:
	adds r0, r5, r2
	movs r1, #1
_08020800:
	strb r1, [r0]
	adds r3, #1
	ldrh r2, [r4]
	cmp r3, r2
	blt _08020798
_0802080A:
	ldr r1, [sp]
	mov r7, sl
	ldrh r7, [r7, #2]
	cmp r1, r7
	blt _08020770
_08020814:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08020824
sub_08020824: @ 0x08020824
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _08020844 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrb r0, [r1, #0x1b]
	cmp r0, #0
	bne _08020848
	movs r0, #0
	b _08020862
	.align 2, 0
_08020844: .4byte gUnknown_08499598
_08020848:
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x2a
	adds r1, #0x2a
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08020860
	movs r0, #2
	b _08020862
_08020860:
	movs r0, #1
_08020862:
	bx lr

	thumb_func_start sub_08020864
sub_08020864: @ 0x08020864
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r5, #1
	ldr r7, _08020878 @ =gUnknown_08499598
_0802086E:
	adds r4, r6, r5
	cmp r4, #4
	bgt _0802087C
	lsls r0, r4, #0x10
	b _08020880
	.align 2, 0
_08020878: .4byte gUnknown_08499598
_0802087C:
	subs r0, r4, #4
	lsls r0, r0, #0x10
_08020880:
	lsrs r1, r0, #0x10
	adds r0, r6, #0
	bl sub_08020824
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _080208B6
	cmp r4, #4
	bgt _080208A0
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r7]
	adds r0, r1, r0
	b _080208AC
_080208A0:
	subs r0, r4, #4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r0, r0, r1
_080208AC:
	ldrb r0, [r0, #0x1b]
	cmp r0, #1
	bne _080208B6
	movs r0, #1
	b _080208C2
_080208B6:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0802086E
	movs r0, #0
_080208C2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080208C8
sub_080208C8: @ 0x080208C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, _0802093C @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r3, _08020940 @ =gUnknown_08090940
	ldr r0, [r3]
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1b]
	mov sl, r3
	cmp r0, #1
	beq _08020972
	movs r0, #0
	mov sb, r0
	mov r8, r0
	movs r4, #1
	lsls r0, r7, #4
	subs r0, r0, r7
	lsls r6, r0, #2
	movs r5, #0x3c
_080208FE:
	cmp r4, r7
	beq _0802096A
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802096A
	mov r1, r8
	cmp r1, #0
	beq _08020944
	mov r1, sl
	ldr r0, [r1]
	ldr r2, [r0]
	adds r1, r5, r2
	ldrb r0, [r1, #0x1b]
	cmp r0, #1
	bne _0802096A
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	cmp sb, r1
	beq _0802096A
	adds r0, r6, r2
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, r1
	beq _0802096A
	movs r0, #1
	b _08020974
	.align 2, 0
_0802093C: .4byte gUnknown_030033EC
_08020940: .4byte gUnknown_08090940
_08020944:
	mov r1, sl
	ldr r0, [r1]
	ldr r2, [r0]
	adds r1, r5, r2
	ldrb r0, [r1, #0x1b]
	cmp r0, #1
	bne _0802096A
	adds r3, r1, #0
	adds r3, #0x2a
	adds r0, r6, r2
	adds r0, #0x2a
	ldrb r1, [r3]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802096A
	adds r3, r1, #0
	mov sb, r3
	movs r0, #1
	mov r8, r0
_0802096A:
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #4
	ble _080208FE
_08020972:
	movs r0, #0
_08020974:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08020984
sub_08020984: @ 0x08020984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08020A9C @ =gUnknown_08090954
	ldr r3, [r2]
	ldr r1, [r3]
	movs r0, #0
	strb r0, [r1, #0x1c]
	movs r4, #1
	ldr r0, _08020AA0 @ =gUnknown_08090958
	mov sl, r0
	movs r2, #0
_080209A0:
	ldr r0, [r3]
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	strb r2, [r1, #0x1c]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _080209A0
	ldr r2, _08020AA4 @ =gUnknown_08090944
	mov r1, sl
	ldr r0, [r1]
	ldrh r3, [r0]
	ldr r0, _08020AA8 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r6, [r0]
	cmp r6, #1
	bne _080209E4
	adds r0, r3, #0
	bl sub_08020864
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080209E4
	movs r6, #3
_080209E4:
	mov r0, sl
	ldr r3, [r0]
	ldrh r1, [r3]
	ldr r0, _08020AA8 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	strb r6, [r0, #0x1c]
	movs r4, #1
	adds r7, r3, #0
_080209FC:
	ldrh r0, [r7]
	adds r0, r0, r4
	cmp r0, #4
	ble _08020A06
	subs r0, #4
_08020A06:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	ldrh r0, [r7]
	adds r1, r5, #0
	bl sub_08020824
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _08020A2A
	ldr r0, _08020AA8 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r6, [r0, #0x1c]
_08020A2A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _080209FC
	mov r1, sl
	ldr r0, [r1]
	ldrh r0, [r0]
	bl sub_080208C8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08020AF4
	movs r4, #1
	movs r0, #3
	eors r6, r0
	mov r8, r6
_08020A4C:
	mov r1, sl
	ldr r0, [r1]
	ldrh r0, [r0]
	adds r0, r0, r4
	cmp r0, #4
	ble _08020A5A
	subs r0, #4
_08020A5A:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r0, #0
	mov r1, sl
	ldr r0, [r1]
	ldrh r0, [r0]
	adds r1, r5, #0
	bl sub_08020824
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #1
	mov sb, r4
	cmp r0, #1
	bne _08020AEA
	ldr r2, _08020AA8 @ =gUnknown_08499598
	ldr r0, [r2]
	lsls r1, r5, #4
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1b]
	cmp r0, #1
	bne _08020AEA
	mov r0, r8
	strb r0, [r1, #0x1c]
	movs r6, #1
	adds r7, r2, #0
_08020A92:
	adds r4, r5, r6
	cmp r4, #4
	bgt _08020AAC
	lsls r0, r4, #0x10
	b _08020AB0
	.align 2, 0
_08020A9C: .4byte gUnknown_08090954
_08020AA0: .4byte gUnknown_08090958
_08020AA4: .4byte gUnknown_08090944
_08020AA8: .4byte gUnknown_08499598
_08020AAC:
	subs r0, r4, #4
	lsls r0, r0, #0x10
_08020AB0:
	lsrs r1, r0, #0x10
	adds r0, r5, #0
	bl sub_08020824
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bne _08020AE0
	cmp r4, #4
	bgt _08020AD0
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r7]
	adds r0, r1, r0
	b _08020ADC
_08020AD0:
	subs r0, r4, #4
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r0, r0, r1
_08020ADC:
	mov r1, r8
	strb r1, [r0, #0x1c]
_08020AE0:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _08020A92
_08020AEA:
	mov r1, sb
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08020A4C
_08020AF4:
	movs r4, #1
	ldr r6, _08020B18 @ =gUnknown_08499598
_08020AF8:
	cmp r4, #4
	bls _08020B1C
	mov r1, sl
	ldr r0, [r1]
	ldrh r0, [r0]
	ldr r2, [r6]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1, #0x1c]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1, #0x1c]
	b _08020B66
	.align 2, 0
_08020B18: .4byte gUnknown_08499598
_08020B1C:
	lsls r0, r4, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08020B3C
	ldr r0, [r6]
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1b]
	cmp r0, #1
	beq _08020B66
_08020B3C:
	adds r0, r5, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08020B5C
	ldr r1, [r6]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #0x1c]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08020B66
_08020B5C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #5
	bls _08020AF8
_08020B66:
	ldr r1, _08020B80 @ =gUnknown_03004070
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08020B84 @ =gUnknown_03004088
	movs r0, #1
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020B80: .4byte gUnknown_03004070
_08020B84: .4byte gUnknown_03004088

	thumb_func_start sub_08020B88
sub_08020B88: @ 0x08020B88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #0xc]
	lsls r5, r2, #0x10
	asrs r2, r5, #0x10
	rsbs r0, r5, #0
	lsrs r6, r0, #0x10
	lsrs r0, r1, #0x10
	str r0, [sp, #4]
	asrs r1, r1, #0x10
	subs r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r3, r4, #0x10
	asrs r0, r3, #0x10
	adds r1, r1, r2
	cmp r0, r1
	ble _08020BC8
	b _08020D30
_08020BC8:
	asrs r2, r3, #0x10
	ldr r1, [sp, #8]
	lsls r1, r1, #0x10
	str r1, [sp, #0x18]
	ldr r3, [sp, #4]
	lsls r3, r3, #0x10
	str r3, [sp, #0x14]
	lsls r4, r4, #0x10
	mov sl, r4
	lsls r6, r6, #0x10
	mov sb, r6
	cmp r2, #0
	bge _08020BE4
	b _08020D0C
_08020BE4:
	ldr r0, _08020C0C @ =gUnknown_08499590
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	cmp r2, r0
	blt _08020BF0
	b _08020D0C
_08020BF0:
	ldr r0, [sp]
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	asrs r0, r5, #0x10
	subs r1, r1, r0
	asrs r0, r6, #0x10
	str r2, [sp, #0x10]
	cmp r0, #0
	bge _08020C04
	rsbs r0, r0, #0
_08020C04:
	adds r0, r1, r0
	lsls r0, r0, #0x10
	b _08020CE8
	.align 2, 0
_08020C0C: .4byte gUnknown_08499590
_08020C10:
	cmp r6, #0
	blt _08020CDE
	ldr r4, _08020C80 @ =gUnknown_08499590
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r6, r0
	bge _08020CDE
	mov r1, sl
	asrs r7, r1, #0x10
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_0803DF54
	adds r3, r0, #0
	ldr r2, _08020C84 @ =gUnknown_020288B4
	ldr r4, [r4]
	lsls r1, r7, #1
	ldr r5, _08020C88 @ =0x0000417A
	adds r0, r4, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r0, r6
	adds r2, r1, r2
	ldrb r2, [r2]
	movs r0, #0
	cmp r3, #0
	beq _08020C4C
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
_08020C4C:
	cmp r2, #0
	beq _08020C52
	movs r0, #6
_08020C52:
	cmp r0, #0
	beq _08020C9C
	ldr r0, _08020C8C @ =gUnknown_03003F38
	ldrb r0, [r0]
	movs r1, #0
	ldr r2, _08020C90 @ =gUnknown_03003100
	bl sub_080251BC
	ldr r0, _08020C94 @ =gUnknown_030013D0
	movs r1, #0x18
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08020CDE
	ldr r0, _08020C98 @ =gUnknown_03003340
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r6
	mov r2, sp
	ldrb r2, [r2, #0xc]
	strb r2, [r0]
	b _08020CDE
	.align 2, 0
_08020C80: .4byte gUnknown_08499590
_08020C84: .4byte gUnknown_020288B4
_08020C88: .4byte 0x0000417A
_08020C8C: .4byte gUnknown_03003F38
_08020C90: .4byte gUnknown_03003100
_08020C94: .4byte gUnknown_030013D0
_08020C98: .4byte gUnknown_03003340
_08020C9C:
	adds r0, r4, #0
	adds r0, #0x12
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _08020CDE
	ldr r5, _08020D40 @ =gUnknown_03003F38
	ldrb r0, [r5]
	adds r1, r4, #0
	bl sub_08026F9C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _08020CDE
	ldrb r0, [r5]
	adds r1, r4, #0
	ldr r2, _08020D44 @ =gUnknown_03003100
	bl sub_080251BC
	ldr r0, _08020D48 @ =gUnknown_030013D0
	movs r3, #0x18
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq _08020CDE
	ldr r0, _08020D4C @ =gUnknown_03003340
	lsls r1, r7, #2
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r6
	mov r5, sp
	ldrb r5, [r5, #0xc]
	strb r5, [r0]
_08020CDE:
	mov r1, r8
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
_08020CE8:
	lsrs r0, r0, #0x10
	mov r8, r0
	mov r3, r8
	lsls r0, r3, #0x10
	asrs r6, r0, #0x10
	ldr r5, [sp, #0x10]
	asrs r1, r5, #0x10
	ldr r2, [sp, #0x18]
	asrs r0, r2, #0x10
	adds r1, r1, r0
	mov r3, sb
	asrs r0, r3, #0x10
	cmp r0, #0
	bge _08020D06
	rsbs r0, r0, #0
_08020D06:
	subs r0, r1, r0
	cmp r6, r0
	ble _08020C10
_08020D0C:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sl
	lsrs r4, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r6, r0, #0x10
	lsls r3, r4, #0x10
	asrs r2, r3, #0x10
	ldr r5, [sp, #0x14]
	asrs r1, r5, #0x10
	ldr r5, [sp, #0x18]
	asrs r0, r5, #0x10
	adds r1, r1, r0
	cmp r2, r1
	bgt _08020D30
	b _08020BC8
_08020D30:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08020D40: .4byte gUnknown_03003F38
_08020D44: .4byte gUnknown_03003100
_08020D48: .4byte gUnknown_030013D0
_08020D4C: .4byte gUnknown_03003340

	thumb_func_start sub_08020D50
sub_08020D50: @ 0x08020D50
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	ldr r0, _08020DB4 @ =gUnknown_08499594
	ldr r1, [r0]
	subs r1, r4, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	ldrb r1, [r4]
	bl sub_08042D50
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_08020B88
	ldr r2, _08020DB8 @ =gUnknown_085D5ABC
	ldrb r1, [r4]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r1, r0, r2
	ldrb r0, [r1, #0xf]
	cmp r0, #1
	beq _08020DAE
	ldrb r2, [r1, #0xe]
	subs r2, #1
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08020B88
_08020DAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08020DB4: .4byte gUnknown_08499594
_08020DB8: .4byte gUnknown_085D5ABC

	thumb_func_start sub_08020DBC
sub_08020DBC: @ 0x08020DBC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r6, #0
	ldr r0, _08020EB4 @ =gUnknown_03003FC0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08020ECC
	ldr r7, _08020EB8 @ =gUnknown_08499590
	ldr r1, [r7]
	lsls r0, r4, #1
	mov r8, r0
	ldr r2, _08020EBC @ =0x0000417A
	mov sb, r2
	adds r0, r1, r2
	add r0, r8
	ldrh r0, [r0]
	adds r2, r0, r5
	ldr r3, _08020EC0 @ =0x00001E42
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08020EB0
	ldr r3, _08020EC4 @ =0x00001432
	adds r0, r1, r3
	adds r0, r0, r2
	ldrb r0, [r0]
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #4
	beq _08020E10
	cmp r1, #0x13
	bne _08020ECC
_08020E10:
	mov r0, ip
	bl sub_08043050
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08020ECC
	cmp r5, #0
	beq _08020E2E
	subs r0, r5, #1
	adds r1, r4, #0
	bl sub_08025744
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08020E2E:
	cmp r4, #0
	beq _08020E44
	subs r1, r4, #1
	adds r0, r5, #0
	bl sub_08025744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08020E44:
	ldr r0, [r7]
	ldrh r0, [r0]
	subs r0, #1
	cmp r5, r0
	bge _08020E60
	adds r0, r5, #1
	adds r1, r4, #0
	bl sub_08025744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08020E60:
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r4, r0
	bge _08020E7C
	adds r1, r4, #1
	adds r0, r5, #0
	bl sub_08025744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08020E7C:
	cmp r6, #0
	bne _08020ECC
	ldr r1, [r7]
	mov r2, sb
	adds r0, r1, r2
	add r0, r8
	ldrh r0, [r0]
	adds r0, r0, r5
	adds r1, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08020EB0
	ldr r2, _08020EC8 @ =gUnknown_08499594
	ldrb r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bls _08020ECC
_08020EB0:
	movs r0, #0
	b _08020ECE
	.align 2, 0
_08020EB4: .4byte gUnknown_03003FC0
_08020EB8: .4byte gUnknown_08499590
_08020EBC: .4byte 0x0000417A
_08020EC0: .4byte 0x00001E42
_08020EC4: .4byte 0x00001432
_08020EC8: .4byte gUnknown_08499594
_08020ECC:
	movs r0, #1
_08020ECE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08020EDC
sub_08020EDC: @ 0x08020EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r3, [sp, #8]
	ldr r3, [sp, #0x3c]
	ldr r4, [sp, #0x40]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0xc]
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x10]
	lsrs r0, r2, #0x10
	str r0, [sp, #4]
	asrs r4, r2, #0x10
	cmp r4, #0
	bne _08020F40
	ldr r0, _08020F38 @ =gUnknown_08499590
	ldr r1, [r0]
	lsls r0, r5, #0x10
	asrs r0, r0, #0xf
	ldr r2, _08020F3C @ =0x0000417A
	adds r1, r1, r2
	adds r1, r1, r0
	ldr r3, [sp]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r4, [sp, #8]
	adds r0, r4, r0
	ldrb r1, [r0]
	ldr r2, [sp, #0xc]
	adds r1, r1, r2
	strb r1, [r0]
	b _080210A4
	.align 2, 0
_08020F38: .4byte gUnknown_08499590
_08020F3C: .4byte 0x0000417A
_08020F40:
	rsbs r0, r4, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r2, r5, #0x10
	asrs r1, r2, #0x10
	subs r0, r1, r4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r3, r5, #0x10
	asrs r0, r3, #0x10
	adds r1, r1, r4
	str r2, [sp, #0x18]
	cmp r0, r1
	ble _08020F5E
	b _080210A4
_08020F5E:
	asrs r2, r3, #0x10
	ldr r3, [sp, #4]
	lsls r3, r3, #0x10
	mov sl, r3
	lsls r5, r5, #0x10
	mov r8, r5
	lsls r6, r6, #0x10
	mov sb, r6
	cmp r2, #0
	bge _08020F74
	b _08021080
_08020F74:
	ldr r4, _08020F9C @ =gUnknown_08499590
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r2, r0
	blt _08020F80
	b _08021080
_08020F80:
	ldr r0, [sp]
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	asrs r0, r3, #0x10
	subs r1, r1, r0
	asrs r0, r6, #0x10
	str r2, [sp, #0x14]
	cmp r0, #0
	bge _08020F94
	rsbs r0, r0, #0
_08020F94:
	adds r0, r1, r0
	lsls r0, r0, #0x10
	b _0802105E
	.align 2, 0
_08020F9C: .4byte gUnknown_08499590
_08020FA0:
	cmp r4, #0
	blt _08021056
	ldr r1, _08020FDC @ =gUnknown_08499590
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r4, r0
	bge _08021056
	ldr r0, [sp, #0x10]
	bl sub_08043050
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	bne _08021036
	subs r3, r4, r5
	cmp r3, #0
	bge _08020FC4
	subs r3, r5, r4
_08020FC4:
	mov r4, r8
	asrs r2, r4, #0x10
	ldr r0, [sp, #0x18]
	asrs r1, r0, #0x10
	subs r0, r2, r1
	cmp r0, #0
	blt _08020FE0
	adds r0, r3, r0
	cmp r0, #1
	bgt _08020FE8
	b _08021036
	.align 2, 0
_08020FDC: .4byte gUnknown_08499590
_08020FE0:
	subs r0, r1, r2
	adds r0, r3, r0
	cmp r0, #1
	ble _08021036
_08020FE8:
	ldr r1, _080210B4 @ =gUnknown_08499590
	ldr r3, [r1]
	mov r2, r8
	asrs r1, r2, #0xf
	ldr r4, _080210B8 @ =0x0000417A
	adds r0, r3, r4
	adds r0, r0, r1
	asrs r1, r7, #0x10
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r2, _080210BC @ =0x00001432
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r2, #0x1f
	ands r2, r0
	cmp r2, #4
	beq _08021010
	cmp r2, #0x13
	bne _08021036
_08021010:
	ldr r4, _080210C0 @ =0x0000051A
	adds r0, r3, r4
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08021056
	ldr r2, _080210C4 @ =gUnknown_08499594
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r1, r1, r0
	ldrb r0, [r1]
	subs r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08021056
_08021036:
	ldr r1, _080210B4 @ =gUnknown_08499590
	ldr r0, [r1]
	mov r2, r8
	asrs r1, r2, #0xf
	ldr r3, _080210B8 @ =0x0000417A
	adds r0, r0, r3
	adds r0, r0, r1
	asrs r1, r7, #0x10
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r4, [sp, #8]
	adds r1, r4, r1
	ldrb r0, [r1]
	ldr r2, [sp, #0xc]
	adds r0, r0, r2
	strb r0, [r1]
_08021056:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
_0802105E:
	lsrs r6, r0, #0x10
	lsls r1, r6, #0x10
	asrs r4, r1, #0x10
	ldr r0, [sp, #0x14]
	asrs r5, r0, #0x10
	mov r2, sl
	asrs r0, r2, #0x10
	adds r2, r5, r0
	mov r3, sb
	asrs r0, r3, #0x10
	adds r7, r1, #0
	cmp r0, #0
	bge _0802107A
	rsbs r0, r0, #0
_0802107A:
	subs r0, r2, r0
	cmp r4, r0
	ble _08020FA0
_08021080:
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, r8
	lsrs r5, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	add r0, sb
	lsrs r6, r0, #0x10
	lsls r3, r5, #0x10
	asrs r2, r3, #0x10
	ldr r4, [sp, #0x18]
	asrs r0, r4, #0x10
	mov r4, sl
	asrs r1, r4, #0x10
	adds r0, r0, r1
	cmp r2, r0
	bgt _080210A4
	b _08020F5E
_080210A4:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080210B4: .4byte gUnknown_08499590
_080210B8: .4byte 0x0000417A
_080210BC: .4byte 0x00001432
_080210C0: .4byte 0x0000051A
_080210C4: .4byte gUnknown_08499594

	thumb_func_start sub_080210C8
sub_080210C8: @ 0x080210C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r4, [sp, #0x24]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov sb, r4
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	cmp r3, #1
	beq _080210FE
	cmp r3, #1
	ble _080211BC
	cmp r3, #2
	beq _08021182
	cmp r3, #3
	beq _08021148
	b _080211BC
_080210FE:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r5, _0802113C @ =gUnknown_08499590
	ldr r3, _08021140 @ =gUnknown_03004070
	ldrh r3, [r3]
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #5
	adds r4, r4, r3
	lsls r4, r4, #3
	ldr r3, _08021144 @ =0x00001E42
	adds r4, r4, r3
	ldr r3, [r5]
	adds r3, r3, r4
	mov r5, sb
	lsls r4, r5, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	ldr r5, [sp, #0x28]
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	bl sub_08020EDC
	b _080211BC
	.align 2, 0
_0802113C: .4byte gUnknown_08499590
_08021140: .4byte gUnknown_03004070
_08021144: .4byte 0x00001E42
_08021148:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r5, _080211CC @ =gUnknown_08499590
	ldr r3, _080211D0 @ =gUnknown_03004070
	ldrh r3, [r3]
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #5
	adds r4, r4, r3
	lsls r4, r4, #3
	ldr r3, _080211D4 @ =0x00001E42
	adds r4, r4, r3
	ldr r3, [r5]
	adds r3, r3, r4
	mov r5, sb
	lsls r4, r5, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	ldr r5, [sp, #0x28]
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	bl sub_08020EDC
_08021182:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x10
	asrs r2, r2, #0x10
	ldr r5, _080211CC @ =gUnknown_08499590
	ldr r3, _080211D8 @ =gUnknown_03004088
	ldrh r3, [r3]
	lsls r4, r3, #2
	adds r4, r4, r3
	lsls r4, r4, #5
	adds r4, r4, r3
	lsls r4, r4, #3
	ldr r3, _080211D4 @ =0x00001E42
	adds r4, r4, r3
	ldr r3, [r5]
	adds r3, r3, r4
	mov r5, sb
	lsls r4, r5, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	ldr r5, [sp, #0x28]
	lsls r4, r5, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	bl sub_08020EDC
_080211BC:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080211CC: .4byte gUnknown_08499590
_080211D0: .4byte gUnknown_03004070
_080211D4: .4byte 0x00001E42
_080211D8: .4byte gUnknown_03004088

	thumb_func_start sub_080211DC
sub_080211DC: @ 0x080211DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r2, _08021298 @ =gUnknown_0809095C
	ldr r1, [r2]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r4, r1, r0
	movs r7, #0
	ldrb r3, [r4]
	adds r6, r2, #0
	cmp r3, #0
	beq _0802128A
	ldrb r1, [r4, #1]
	movs r0, #6
	ands r0, r1
	cmp r0, #2
	beq _0802128A
	cmp r3, #2
	bhi _0802123A
	ldr r0, _0802129C @ =gUnknown_08499590
	ldr r2, [r0]
	ldrb r1, [r4, #3]
	lsls r1, r1, #1
	ldr r3, _080212A0 @ =0x0000417A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	ldr r1, _080212A4 @ =0x00001432
	adds r2, r2, r1
	adds r2, r2, r0
	ldrb r1, [r2]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #3
	bne _0802123A
	movs r7, #3
_0802123A:
	ldr r0, [r6]
	ldr r1, [r0]
	subs r1, r4, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	ldrb r1, [r4]
	bl sub_08042D84
	adds r2, r0, #0
	adds r2, r7, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	lsrs r5, r5, #6
	ldr r3, _080212A8 @ =gUnknown_08499598
	ldr r4, [r3]
	lsls r3, r5, #4
	subs r3, r3, r5
	lsls r3, r3, #2
	adds r3, r3, r4
	adds r3, #0x58
	ldrb r3, [r3]
	mov r6, r8
	lsls r4, r6, #0x18
	asrs r4, r4, #0x18
	str r4, [sp]
	adds r5, #1
	str r5, [sp, #4]
	bl sub_080210C8
_0802128A:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021298: .4byte gUnknown_0809095C
_0802129C: .4byte gUnknown_08499590
_080212A0: .4byte 0x0000417A
_080212A4: .4byte 0x00001432
_080212A8: .4byte gUnknown_08499598

	thumb_func_start sub_080212AC
sub_080212AC: @ 0x080212AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r2, _08021300 @ =gUnknown_08090960
	ldr r0, [r2]
	ldr r1, [r0]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrb r0, [r1, #0x1b]
	cmp r0, #0
	beq _08021386
	ldrb r0, [r1, #0x1c]
	cmp r0, #0
	beq _08021386
	movs r4, #0
	lsls r0, r5, #1
	str r0, [sp, #8]
	ldr r0, _08021304 @ =gUnknown_084995FE
	ldr r1, [sp, #8]
	adds r6, r1, r0
_080212E2:
	ldrb r0, [r6]
	adds r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #1
	bl sub_080211DC
	adds r4, #1
	cmp r4, #0x32
	ble _080212E2
	movs r6, #0
	ldr r1, _08021308 @ =gUnknown_08499590
	ldr r0, [r1]
	b _08021380
	.align 2, 0
_08021300: .4byte gUnknown_08090960
_08021304: .4byte gUnknown_084995FE
_08021308: .4byte gUnknown_08499590
_0802130C:
	movs r4, #0
	ldr r2, _08021398 @ =gUnknown_08499590
	ldr r0, [r2]
	adds r3, r6, #1
	mov sl, r3
	ldrh r0, [r0]
	cmp r4, r0
	bge _0802137A
	adds r7, r2, #0
	ldr r0, _0802139C @ =gUnknown_084995F4
	ldr r1, [sp, #8]
	adds r1, r1, r0
	mov sb, r1
	lsls r2, r6, #0x10
	mov r8, r2
_0802132A:
	ldr r1, [r7]
	lsls r2, r6, #1
	ldr r3, _080213A0 @ =0x0000417A
	adds r0, r1, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r4
	ldr r2, _080213A4 @ =0x00001432
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #0xe0
	ands r0, r1
	mov r3, sb
	ldrh r3, [r3]
	cmp r0, r3
	bne _08021370
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080213A8 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r5, #4
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r3, [r1, #0x1c]
	movs r1, #1
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov r2, r8
	asrs r1, r2, #0x10
	movs r2, #0
	bl sub_080210C8
_08021370:
	adds r4, #1
	ldr r0, [r7]
	ldrh r0, [r0]
	cmp r4, r0
	blt _0802132A
_0802137A:
	mov r6, sl
	ldr r3, _08021398 @ =gUnknown_08499590
	ldr r0, [r3]
_08021380:
	ldrh r0, [r0, #2]
	cmp r6, r0
	blt _0802130C
_08021386:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021398: .4byte gUnknown_08499590
_0802139C: .4byte gUnknown_084995F4
_080213A0: .4byte 0x0000417A
_080213A4: .4byte 0x00001432
_080213A8: .4byte gUnknown_08499598

	thumb_func_start sub_080213AC
sub_080213AC: @ 0x080213AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _080213FC @ =gUnknown_08090964
	ldr r1, [r0]
	ldrb r1, [r1, #0xd]
	adds r5, r0, #0
	cmp r1, #0
	beq _08021414
	ldr r0, _08021400 @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _08021404 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1b]
	cmp r0, #2
	bne _08021414
	ldr r4, _08021408 @ =gUnknown_08090968
	ldr r2, [r4]
	ldr r0, _0802140C @ =gUnknown_03004070
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08021410 @ =0x00001E42
	adds r1, r1, r0
	ldr r0, [r2]
	adds r0, r0, r1
	bl sub_08020754
	b _0802143A
	.align 2, 0
_080213FC: .4byte gUnknown_08090964
_08021400: .4byte gUnknown_030033EC
_08021404: .4byte gUnknown_08499598
_08021408: .4byte gUnknown_08090968
_0802140C: .4byte gUnknown_03004070
_08021410: .4byte 0x00001E42
_08021414:
	ldr r4, _0802148C @ =gUnknown_08090968
	ldr r2, [r4]
	ldr r0, _08021490 @ =gUnknown_03004070
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08021494 @ =0x00001E42
	adds r1, r1, r0
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r1, [r5]
	ldrb r2, [r1, #0xd]
	movs r1, #1
	subs r1, r1, r2
	bl sub_080206E4
_0802143A:
	ldr r2, [r4]
	ldr r0, _08021498 @ =gUnknown_03004088
	ldrh r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _08021494 @ =0x00001E42
	adds r1, r1, r0
	ldr r0, [r2]
	adds r0, r0, r1
	ldr r4, [r5]
	ldrb r2, [r4, #0xd]
	movs r1, #1
	subs r1, r1, r2
	bl sub_080206E4
	ldrb r0, [r4, #0xd]
	cmp r0, #0
	beq _080214F8
	movs r0, #1
	bl sub_080212AC
	movs r0, #2
	bl sub_080212AC
	movs r0, #3
	bl sub_080212AC
	movs r0, #4
	bl sub_080212AC
	movs r0, #0
	bl sub_0803F5C8
	adds r5, r0, #0
	ldrh r1, [r5, #2]
	movs r0, #0xf0
	lsls r0, r0, #2
	b _080214F2
	.align 2, 0
_0802148C: .4byte gUnknown_08090968
_08021490: .4byte gUnknown_03004070
_08021494: .4byte 0x00001E42
_08021498: .4byte gUnknown_03004088
_0802149C:
	ldrb r2, [r5]
	ldrb r1, [r5, #2]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1d
	adds r0, r0, r2
	mov sb, r0
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1d
	ldrb r0, [r5, #1]
	adds r6, r1, r0
	movs r0, #8
	adds r0, r0, r5
	mov sl, r0
	cmp r2, sb
	bge _080214E8
_080214BA:
	ldrb r4, [r5, #1]
	adds r0, r2, #1
	mov r8, r0
	cmp r4, r6
	bge _080214E2
	lsls r7, r2, #0x10
_080214C6:
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	asrs r0, r7, #0x10
	movs r2, #0
	movs r3, #3
	bl sub_080210C8
	adds r4, #1
	cmp r4, r6
	blt _080214C6
_080214E2:
	mov r2, r8
	cmp r2, sb
	blt _080214BA
_080214E8:
	mov r5, sl
	ldrh r1, [r5, #2]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r2, #0
_080214F2:
	ands r0, r1
	cmp r0, #0
	bne _0802149C
_080214F8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08021508
sub_08021508: @ 0x08021508
	bx lr
	.align 2, 0

	thumb_func_start sub_0802150C
sub_0802150C: @ 0x0802150C
	push {r4, r5, lr}
	ldr r0, _08021564 @ =gUnknown_030033E4
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, _08021568 @ =gUnknown_030033E0
	strh r4, [r0]
	strh r4, [r0, #2]
	bl sub_0802BB98
	ldr r0, _0802156C @ =gUnknown_030040F0
	str r4, [r0]
	ldr r0, _08021570 @ =gUnknown_030044A0
	str r4, [r0]
	bl sub_08034FA4
	ldr r0, _08021574 @ =gUnknown_030040E4
	strh r4, [r0]
	ldr r0, _08021578 @ =gUnknown_030040E8
	strh r4, [r0]
	ldr r0, _0802157C @ =gUnknown_03003F60
	strh r4, [r0]
	ldr r0, _08021580 @ =gUnknown_03003F3C
	movs r2, #1
	str r2, [r0]
	ldr r1, _08021584 @ =gUnknown_030032D8
	movs r0, #5
	strh r0, [r1]
	ldr r0, _08021588 @ =gUnknown_03003334
	strh r4, [r0]
	ldr r0, _0802158C @ =gUnknown_030033EC
	strh r4, [r0]
	ldr r0, _08021590 @ =gUnknown_03004080
	strh r2, [r0]
	ldr r0, _08021594 @ =gUnknown_030030F8
	strb r5, [r0]
	bl sub_08025E74
	bl sub_0803DE68
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08021564: .4byte gUnknown_030033E4
_08021568: .4byte gUnknown_030033E0
_0802156C: .4byte gUnknown_030040F0
_08021570: .4byte gUnknown_030044A0
_08021574: .4byte gUnknown_030040E4
_08021578: .4byte gUnknown_030040E8
_0802157C: .4byte gUnknown_03003F60
_08021580: .4byte gUnknown_03003F3C
_08021584: .4byte gUnknown_030032D8
_08021588: .4byte gUnknown_03003334
_0802158C: .4byte gUnknown_030033EC
_08021590: .4byte gUnknown_03004080
_08021594: .4byte gUnknown_030030F8

	thumb_func_start sub_08021598
sub_08021598: @ 0x08021598
	push {lr}
	bl sub_08026BAC
	bl sub_08026924
	bl sub_08026768
	bl sub_08035490
	bl sub_0803E3D8
	bl sub_080455CC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080215B8
sub_080215B8: @ 0x080215B8
	push {lr}
	bl sub_080219AC
	bl sub_08026D68
	bl sub_08061F34
	bl sub_08062038
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080215D0
sub_080215D0: @ 0x080215D0
	push {r4, r5, lr}
	ldr r5, _080215F0 @ =gUnknown_080C1BC4
	ldr r0, _080215F4 @ =gUnknown_0849959C
	ldr r3, [r0]
	movs r2, #0
	ldr r4, _080215F8 @ =0x000003FF
_080215DC:
	adds r0, r3, r2
	adds r1, r5, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r4
	ble _080215DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080215F0: .4byte gUnknown_080C1BC4
_080215F4: .4byte gUnknown_0849959C
_080215F8: .4byte 0x000003FF

	thumb_func_start sub_080215FC
sub_080215FC: @ 0x080215FC
	push {r4, r5, r6, lr}
	movs r3, #0
	ldr r2, _08021634 @ =gUnknown_08499590
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	cmp r3, r0
	bhs _0802162C
	adds r5, r2, #0
	ldr r4, _08021638 @ =0x0000417A
_0802160E:
	ldr r2, [r5]
	lsls r0, r3, #1
	adds r1, r2, r4
	adds r1, r1, r0
	ldrh r0, [r2]
	adds r6, r0, #0
	muls r6, r3, r6
	adds r0, r6, #0
	strh r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrh r2, [r2, #2]
	cmp r3, r2
	blo _0802160E
_0802162C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021634: .4byte gUnknown_08499590
_08021638: .4byte 0x0000417A

	thumb_func_start sub_0802163C
sub_0802163C: @ 0x0802163C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	subs r0, #0xb4
	cmp r0, #0xb
	bhi _08021658
	adds r0, r5, #0
	bl sub_08021750
	b _0802171E
_08021658:
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r5, #0
	bl sub_080247A4
	ldr r6, _08021730 @ =gUnknown_08499590
	ldr r4, [r6]
	ldr r0, _08021734 @ =gUnknown_03003F68
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #0
	strh r1, [r4]
	ldrb r1, [r2, #1]
	strh r1, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	strh r0, [r4, #0xa]
	strh r0, [r4, #0xc]
	strh r0, [r4, #0xe]
	strh r0, [r4, #0x10]
	ldr r0, _08021738 @ =0x0000421A
	adds r4, r4, r0
	adds r0, r5, #0
	bl sub_08024944
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_0803CC84
	adds r0, r5, #0
	bl sub_0802490C
	ldr r1, [r6]
	ldr r2, _0802173C @ =0x00004233
	adds r1, r1, r2
	strb r0, [r1]
	bl sub_080215FC
	movs r1, #0
	ldr r0, [r6]
	ldrh r0, [r0, #2]
	cmp r1, r0
	bge _0802171A
	mov sl, r6
_080216B2:
	movs r5, #0
	mov r7, sl
	ldr r0, [r7]
	adds r2, r1, #1
	mov ip, r2
	ldrh r0, [r0]
	cmp r5, r0
	bge _0802170E
	ldr r7, _08021734 @ =gUnknown_03003F68
	mov sb, r7
	ldr r6, _08021730 @ =gUnknown_08499590
	lsls r1, r1, #1
	str r1, [sp]
	ldr r0, _08021740 @ =gUnknown_0849959C
	mov r8, r0
_080216D0:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, [r6]
	ldr r7, _08021744 @ =0x0000417A
	adds r3, r2, r7
	ldr r1, [sp]
	adds r3, r3, r1
	ldrh r1, [r3]
	adds r1, r1, r5
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r4, [r0, #2]
	ldr r7, _08021748 @ =0x00000A22
	adds r0, r2, r7
	adds r0, r0, r1
	strh r4, [r0]
	ldrh r0, [r3]
	adds r0, r0, r5
	ldr r1, _0802174C @ =0x00001432
	adds r2, r2, r1
	adds r2, r2, r0
	mov r7, r8
	ldr r0, [r7]
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2]
	adds r5, #1
	ldr r0, [r6]
	ldrh r0, [r0]
	cmp r5, r0
	blt _080216D0
_0802170E:
	mov r1, ip
	mov r2, sl
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	cmp r1, r0
	blt _080216B2
_0802171A:
	bl sub_0802481C
_0802171E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021730: .4byte gUnknown_08499590
_08021734: .4byte gUnknown_03003F68
_08021738: .4byte 0x0000421A
_0802173C: .4byte 0x00004233
_08021740: .4byte gUnknown_0849959C
_08021744: .4byte 0x0000417A
_08021748: .4byte 0x00000A22
_0802174C: .4byte 0x00001432

	thumb_func_start sub_08021750
sub_08021750: @ 0x08021750
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r0, #0x4c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _080217F8 @ =gUnknown_08499590
	ldr r1, [r4]
	ldr r2, _080217FC @ =0x0000421A
	adds r1, r1, r2
	bl sub_0803CF3C
	ldr r1, [r4]
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0xe]
	strh r0, [r1, #0x10]
	movs r2, #0
	ldrh r1, [r1, #2]
	cmp r2, r1
	bge _080217E6
	mov sl, r4
_0802178A:
	movs r4, #0
	mov r7, sl
	ldr r0, [r7]
	adds r1, r2, #1
	str r1, [sp]
	ldrh r0, [r0]
	cmp r4, r0
	bge _080217DA
	ldr r5, _080217F8 @ =gUnknown_08499590
	lsls r6, r2, #1
	ldr r2, _08021800 @ =gUnknown_0849959C
	mov sb, r2
	ldr r7, _08021804 @ =0x0000417A
	mov r8, r7
	ldr r0, _08021808 @ =0x00000A22
	mov ip, r0
_080217AA:
	ldr r1, [r5]
	mov r2, r8
	adds r0, r1, r2
	adds r0, r0, r6
	ldrh r2, [r0]
	adds r2, r2, r4
	lsls r3, r2, #1
	mov r7, ip
	adds r0, r1, r7
	adds r0, r0, r3
	ldrh r3, [r0]
	ldr r0, _0802180C @ =0x00001432
	adds r1, r1, r0
	adds r1, r1, r2
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r4, #1
	ldr r0, [r5]
	ldrh r0, [r0]
	cmp r4, r0
	blt _080217AA
_080217DA:
	ldr r2, [sp]
	mov r7, sl
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	cmp r2, r0
	blt _0802178A
_080217E6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080217F8: .4byte gUnknown_08499590
_080217FC: .4byte 0x0000421A
_08021800: .4byte gUnknown_0849959C
_08021804: .4byte 0x0000417A
_08021808: .4byte 0x00000A22
_0802180C: .4byte 0x00001432

	thumb_func_start sub_08021810
sub_08021810: @ 0x08021810
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sb, r0
	mov r8, r1
	ldr r3, _08021854 @ =gUnknown_03003FC0
	ldrb r0, [r3, #2]
	adds r0, #0x4c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bhi _0802185C
	ldr r2, _08021858 @ =gUnknown_020280C0
	ldrb r1, [r3, #2]
	subs r1, #0xb4
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x19]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r3, #2]
	subs r1, #0xb4
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1a]
	mov r2, sb
	strb r0, [r2]
	b _08021996
	.align 2, 0
_08021854: .4byte gUnknown_03003FC0
_08021858: .4byte gUnknown_020280C0
_0802185C:
	ldrb r0, [r3, #2]
	bl sub_0802163C
	movs r3, #0
	ldr r4, _08021880 @ =gUnknown_0809096C
	mov ip, r4
	ldr r5, _08021884 @ =gUnknown_08090970
	ldr r2, [r4]
	movs r1, #0
_0802186E:
	adds r0, r3, r2
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	bls _0802186E
	movs r6, #0
	b _0802194E
	.align 2, 0
_08021880: .4byte gUnknown_0809096C
_08021884: .4byte gUnknown_08090970
_08021888:
	movs r3, #0
	ldr r0, [r1]
	ldr r0, [r0]
	adds r7, r6, #1
	mov sl, r7
	b _08021942
_08021894:
	ldr r0, [r1]
	ldr r1, [r0]
	lsls r2, r6, #1
	ldr r4, _080218C4 @ =0x0000417A
	adds r0, r1, r4
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r3
	ldr r7, _080218C8 @ =0x00001432
	adds r1, r1, r7
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #0x1f
	ands r0, r1
	subs r0, #6
	adds r4, r2, #0
	cmp r0, #0xe
	bhi _08021936
	lsls r0, r0, #2
	ldr r1, _080218CC @ =_080218D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080218C4: .4byte 0x0000417A
_080218C8: .4byte 0x00001432
_080218CC: .4byte _080218D0
_080218D0: @ jump table
	.4byte _0802190C @ case 0
	.4byte _08021936 @ case 1
	.4byte _0802190C @ case 2
	.4byte _08021936 @ case 3
	.4byte _0802190C @ case 4
	.4byte _0802190C @ case 5
	.4byte _08021936 @ case 6
	.4byte _08021936 @ case 7
	.4byte _0802190C @ case 8
	.4byte _08021936 @ case 9
	.4byte _08021936 @ case 10
	.4byte _08021936 @ case 11
	.4byte _08021936 @ case 12
	.4byte _08021936 @ case 13
	.4byte _0802190C @ case 14
_0802190C:
	mov r0, ip
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	adds r0, #1
	strb r0, [r2, #5]
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r7, _080219A4 @ =0x0000417A
	adds r0, r1, r7
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r0, r0, r3
	ldr r4, _080219A8 @ =0x00001432
	adds r1, r1, r4
	adds r1, r1, r0
	ldrb r1, [r1]
	lsrs r1, r1, #5
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08021936:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r1, r5, #0
	ldr r0, [r5]
	ldr r0, [r0]
_08021942:
	ldrh r0, [r0]
	cmp r3, r0
	blo _08021894
	mov r7, sl
	lsls r0, r7, #0x18
	lsrs r6, r0, #0x18
_0802194E:
	adds r1, r5, #0
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	cmp r6, r0
	blo _08021888
	mov r0, ip
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1]
	movs r3, #0
_08021964:
	adds r0, r3, r1
	ldrb r2, [r0]
	ldrb r0, [r1]
	cmp r0, r2
	bhs _08021970
	strb r2, [r1]
_08021970:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #4
	bls _08021964
	mov r2, ip
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	mov r4, r8
	strb r0, [r4]
	ldrb r0, [r1]
	ldrb r7, [r1, #5]
	cmp r0, r7
	bhs _08021990
	adds r0, #1
	strb r0, [r1]
_08021990:
	ldrb r0, [r1]
	mov r1, sb
	strb r0, [r1]
_08021996:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080219A4: .4byte 0x0000417A
_080219A8: .4byte 0x00001432

	thumb_func_start sub_080219AC
sub_080219AC: @ 0x080219AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov sl, r0
	ldr r4, _080219F8 @ =gUnknown_08090974
	ldr r0, [r4]
	ldr r0, [r0]
	ldr r1, _080219FC @ =0x0000193A
	adds r0, r0, r1
	bl sub_0801F92C
	movs r0, #0xff
	bl sub_0801F838
	ldr r3, _08021A00 @ =gUnknown_08499598
	movs r2, #0
	movs r1, #0
	movs r6, #4
_080219D8:
	ldr r0, [r3]
	adds r0, r1, r0
	strb r2, [r0, #0x11]
	adds r1, #0x3c
	subs r6, #1
	cmp r6, #0
	bge _080219D8
	movs r2, #0
	str r2, [sp]
	ldr r1, _080219F8 @ =gUnknown_08090974
	ldr r0, _08021A04 @ =gUnknown_08499590
	ldr r0, [r0]
	mov r3, sl
	lsls r2, r3, #3
	b _08021B34
	.align 2, 0
_080219F8: .4byte gUnknown_08090974
_080219FC: .4byte 0x0000193A
_08021A00: .4byte gUnknown_08499598
_08021A04: .4byte gUnknown_08499590
_08021A08:
	movs r6, #0
	ldr r0, [r1]
	ldr r0, [r0]
	ldr r3, [sp]
	adds r3, #1
	str r3, [sp, #4]
	b _08021B22
_08021A16:
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r0, [sp]
	lsls r2, r0, #1
	ldr r3, _08021A48 @ =0x0000417A
	adds r0, r1, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r6
	ldr r3, _08021A4C @ =0x00001432
	adds r1, r1, r3
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #0x1f
	ands r0, r1
	subs r0, #6
	adds r7, r2, #0
	cmp r0, #0xe
	bhi _08021B16
	lsls r0, r0, #2
	ldr r1, _08021A50 @ =_08021A54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021A48: .4byte 0x0000417A
_08021A4C: .4byte 0x00001432
_08021A50: .4byte _08021A54
_08021A54: @ jump table
	.4byte _08021A90 @ case 0
	.4byte _08021B16 @ case 1
	.4byte _08021A90 @ case 2
	.4byte _08021B16 @ case 3
	.4byte _08021A90 @ case 4
	.4byte _08021A90 @ case 5
	.4byte _08021B16 @ case 6
	.4byte _08021B16 @ case 7
	.4byte _08021A90 @ case 8
	.4byte _08021B16 @ case 9
	.4byte _08021B16 @ case 10
	.4byte _08021A90 @ case 11
	.4byte _08021B16 @ case 12
	.4byte _08021B16 @ case 13
	.4byte _08021A90 @ case 14
_08021A90:
	ldr r0, _08021B74 @ =gUnknown_08499590
	mov ip, r0
	ldr r1, [r0]
	ldr r4, _08021B78 @ =0x0000417A
	adds r0, r1, r4
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	ldr r2, _08021B7C @ =0x00001432
	mov r8, r2
	add r1, r8
	adds r1, r1, r0
	ldrb r1, [r1]
	lsrs r1, r1, #5
	ldr r0, _08021B80 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x11]
	adds r1, #1
	movs r3, #0
	mov sb, r3
	strb r1, [r0, #0x11]
	mov r0, ip
	ldr r1, [r0]
	adds r0, r1, r4
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	ldr r2, _08021B84 @ =0x0000193A
	adds r1, r1, r2
	adds r1, r1, r0
	mov r3, sl
	strb r3, [r1]
	ldr r5, _08021B88 @ =gUnknown_084995A0
	ldr r3, [r5]
	mov r0, sl
	lsls r2, r0, #3
	adds r3, r2, r3
	mov r1, ip
	ldr r0, [r1]
	adds r4, r0, r4
	adds r4, r4, r7
	ldrh r1, [r4]
	adds r1, r1, r6
	add r0, r8
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	strb r0, [r3]
	ldr r0, [r5]
	adds r0, r2, r0
	strb r6, [r0, #1]
	ldr r0, [r5]
	adds r0, r2, r0
	mov r3, sp
	ldrb r3, [r3]
	strb r3, [r0, #2]
	ldr r0, [r5]
	adds r2, r2, r0
	mov r0, sb
	strb r0, [r2, #3]
	movs r1, #1
	add sl, r1
_08021B16:
	adds r6, #1
	ldr r1, _08021B8C @ =gUnknown_08090974
	ldr r0, _08021B74 @ =gUnknown_08499590
	ldr r0, [r0]
	mov r3, sl
	lsls r2, r3, #3
_08021B22:
	ldrh r0, [r0]
	cmp r6, r0
	bge _08021B2A
	b _08021A16
_08021B2A:
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r1, _08021B8C @ =gUnknown_08090974
	ldr r0, _08021B74 @ =gUnknown_08499590
	ldr r0, [r0]
_08021B34:
	ldr r3, [sp]
	ldrh r0, [r0, #2]
	cmp r3, r0
	bge _08021B3E
	b _08021A08
_08021B3E:
	ldr r0, _08021B88 @ =gUnknown_084995A0
	ldr r0, [r0]
	adds r0, r2, r0
	movs r1, #0xff
	strb r1, [r0]
	ldr r0, _08021B90 @ =gUnknown_03003FC0
	adds r0, #0x47
	movs r1, #0
	strb r1, [r0]
	mov sl, r1
	movs r0, #0
	str r0, [sp]
	ldr r1, _08021B8C @ =gUnknown_08090974
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	cmp sl, r0
	blt _08021B64
	b _08021C7A
_08021B64:
	movs r6, #0
	ldr r0, [r1]
	ldr r0, [r0]
	ldr r2, [sp]
	adds r2, #1
	str r2, [sp, #4]
	b _08021C62
	.align 2, 0
_08021B74: .4byte gUnknown_08499590
_08021B78: .4byte 0x0000417A
_08021B7C: .4byte 0x00001432
_08021B80: .4byte gUnknown_08499598
_08021B84: .4byte 0x0000193A
_08021B88: .4byte gUnknown_084995A0
_08021B8C: .4byte gUnknown_08090974
_08021B90: .4byte gUnknown_03003FC0
_08021B94:
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r3, [sp]
	lsls r2, r3, #1
	ldr r3, _08021BC4 @ =0x0000417A
	adds r0, r1, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r6
	ldr r3, _08021BC8 @ =0x00001432
	adds r1, r1, r3
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r0, #0x1f
	ands r0, r1
	subs r0, #6
	adds r7, r2, #0
	cmp r0, #0x13
	bhi _08021C5A
	lsls r0, r0, #2
	ldr r1, _08021BCC @ =_08021BD0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021BC4: .4byte 0x0000417A
_08021BC8: .4byte 0x00001432
_08021BCC: .4byte _08021BD0
_08021BD0: @ jump table
	.4byte _08021C28 @ case 0
	.4byte _08021C5A @ case 1
	.4byte _08021C28 @ case 2
	.4byte _08021C5A @ case 3
	.4byte _08021C28 @ case 4
	.4byte _08021C28 @ case 5
	.4byte _08021C5A @ case 6
	.4byte _08021C5A @ case 7
	.4byte _08021C28 @ case 8
	.4byte _08021C5A @ case 9
	.4byte _08021C20 @ case 10
	.4byte _08021C28 @ case 11
	.4byte _08021C28 @ case 12
	.4byte _08021C5A @ case 13
	.4byte _08021C28 @ case 14
	.4byte _08021C28 @ case 15
	.4byte _08021C28 @ case 16
	.4byte _08021C28 @ case 17
	.4byte _08021C28 @ case 18
	.4byte _08021C28 @ case 19
_08021C20:
	ldr r0, _08021C9C @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	cmp r0, #5
	bne _08021C5A
_08021C28:
	mov r0, sl
	cmp r0, #0x5b
	bgt _08021C56
	ldr r0, _08021CA0 @ =gUnknown_03003150
	mov r1, sl
	lsls r2, r1, #2
	adds r2, r2, r0
	ldr r0, _08021CA4 @ =gUnknown_08499590
	ldr r1, [r0]
	ldr r3, _08021CA8 @ =0x0000417A
	adds r0, r1, r3
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r6
	ldr r3, _08021CAC @ =0x00001432
	adds r1, r1, r3
	adds r1, r1, r0
	ldrb r0, [r1]
	strb r0, [r2]
	strb r6, [r2, #1]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r2, #2]
_08021C56:
	movs r1, #1
	add sl, r1
_08021C5A:
	adds r6, #1
	ldr r1, _08021CB0 @ =gUnknown_08090974
	ldr r0, _08021CA4 @ =gUnknown_08499590
	ldr r0, [r0]
_08021C62:
	ldrh r0, [r0]
	cmp r6, r0
	blt _08021B94
	ldr r2, [sp, #4]
	str r2, [sp]
	ldr r1, _08021CB0 @ =gUnknown_08090974
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	cmp r2, r0
	bge _08021C7A
	b _08021B64
_08021C7A:
	mov r3, sl
	cmp r3, #0x5b
	bgt _08021C8A
	ldr r0, _08021CA0 @ =gUnknown_03003150
	lsls r1, r3, #2
	adds r1, r1, r0
	movs r0, #0xff
	strb r0, [r1]
_08021C8A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08021C9C: .4byte gUnknown_03003FC0
_08021CA0: .4byte gUnknown_03003150
_08021CA4: .4byte gUnknown_08499590
_08021CA8: .4byte 0x0000417A
_08021CAC: .4byte 0x00001432
_08021CB0: .4byte gUnknown_08090974

	thumb_func_start sub_08021CB4
sub_08021CB4: @ 0x08021CB4
	push {r4, r5, r6, lr}
	ldr r1, _08021CF8 @ =gUnknown_03003150
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _08021CF0
	ldr r6, _08021CFC @ =gUnknown_08499590
	adds r3, r1, #0
	ldr r5, _08021D00 @ =0x0000417A
	movs r0, #0xb6
	lsls r0, r0, #1
	adds r4, r3, r0
_08021CCA:
	ldr r2, [r6]
	ldrb r1, [r3, #2]
	lsls r1, r1, #1
	adds r0, r2, r5
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r0, [r3, #1]
	adds r1, r1, r0
	ldr r0, _08021D04 @ =0x00001432
	adds r2, r2, r0
	adds r2, r2, r1
	ldrb r0, [r2]
	strb r0, [r3]
	adds r3, #4
	cmp r3, r4
	bgt _08021CF0
	ldrb r0, [r3]
	cmp r0, #0xff
	bne _08021CCA
_08021CF0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021CF8: .4byte gUnknown_03003150
_08021CFC: .4byte gUnknown_08499590
_08021D00: .4byte 0x0000417A
_08021D04: .4byte 0x00001432

	thumb_func_start sub_08021D08
sub_08021D08: @ 0x08021D08
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0

	thumb_func_start sub_08021D10
sub_08021D10: @ 0x08021D10
	push {r4, r5, r6, lr}
	movs r5, #0
	ldr r6, _08021D60 @ =gUnknown_08090978
_08021D16:
	ldr r0, [r6]
	ldr r1, [r0]
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	ldrh r0, [r1, #0xc]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r1, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x14
	ldrh r1, [r1, #0xe]
	subs r1, r3, r1
	lsls r4, r5, #0x10
	asrs r4, r4, #0x10
	adds r1, r4, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r3, r4, r3
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_08023BAC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xf
	ble _08021D16
	bl sub_08013B1C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08021D60: .4byte gUnknown_08090978

	thumb_func_start sub_08021D64
sub_08021D64: @ 0x08021D64
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08021D94 @ =gUnknown_080C1FC4
	lsls r3, r0, #0xc
	adds r3, r3, r1
	ldr r1, _08021D98 @ =gUnknown_0300251C
	ldr r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	movs r2, #1
	ands r2, r0
	lsls r2, r2, #0xc
	ldr r0, _08021D9C @ =0x06002000
	adds r2, r2, r0
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r3, #0
	bl sub_08011C68
	pop {r0}
	bx r0
	.align 2, 0
_08021D94: .4byte gUnknown_080C1FC4
_08021D98: .4byte gUnknown_0300251C
_08021D9C: .4byte 0x06002000

	thumb_func_start sub_08021DA0
sub_08021DA0: @ 0x08021DA0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08021DCC @ =gUnknown_080C9FC4
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #0xa
	adds r3, r3, r1
	ldr r0, _08021DD0 @ =gUnknown_0300251C
	ldr r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r0, _08021DD4 @ =0x06004000
	adds r1, r1, r0
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r3, #0
	bl sub_08011C68
	pop {r0}
	bx r0
	.align 2, 0
_08021DCC: .4byte gUnknown_080C9FC4
_08021DD0: .4byte gUnknown_0300251C
_08021DD4: .4byte 0x06004000

	thumb_func_start sub_08021DD8
sub_08021DD8: @ 0x08021DD8
	push {lr}
	bl sub_08011BD4
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x15
	cmp r0, r1
	ble _08021DEA
	b _08022042
_08021DEA:
	ldr r0, _08021E10 @ =gUnknown_030043F0
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, [r0]
	movs r1, #0x70
	bl __umodsi3
	cmp r0, #0x2a
	beq _08021E4A
	cmp r0, #0x2a
	bhi _08021E1A
	cmp r0, #0xe
	beq _08021E3A
	cmp r0, #0xe
	bhi _08021E14
	cmp r0, #0
	beq _08021E32
	b _08021E72
	.align 2, 0
_08021E10: .4byte gUnknown_030043F0
_08021E14:
	cmp r0, #0x1c
	beq _08021E42
	b _08021E72
_08021E1A:
	cmp r0, #0x46
	beq _08021E5A
	cmp r0, #0x46
	bhi _08021E28
	cmp r0, #0x38
	beq _08021E52
	b _08021E72
_08021E28:
	cmp r0, #0x54
	beq _08021E62
	cmp r0, #0x62
	beq _08021E6A
	b _08021E72
_08021E32:
	movs r0, #0
	bl sub_08021DA0
	b _08022042
_08021E3A:
	movs r0, #1
	bl sub_08021DA0
	b _08022042
_08021E42:
	movs r0, #2
	bl sub_08021DA0
	b _08022042
_08021E4A:
	movs r0, #3
	bl sub_08021DA0
	b _08022042
_08021E52:
	movs r0, #4
	bl sub_08021DA0
	b _08022042
_08021E5A:
	movs r0, #5
	bl sub_08021DA0
	b _08022042
_08021E62:
	movs r0, #6
	bl sub_08021DA0
	b _08022042
_08021E6A:
	movs r0, #7
	bl sub_08021DA0
	b _08022042
_08021E72:
	ldr r0, _08021E94 @ =gUnknown_03004078
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, [r0]
	movs r1, #0x64
	bl __umodsi3
	cmp r0, #0x57
	bls _08021E88
	b _08022042
_08021E88:
	lsls r0, r0, #2
	ldr r1, _08021E98 @ =_08021E9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08021E94: .4byte gUnknown_03004078
_08021E98: .4byte _08021E9C
_08021E9C: @ jump table
	.4byte _08021FFC @ case 0
	.4byte _08022004 @ case 1
	.4byte _08022042 @ case 2
	.4byte _08022042 @ case 3
	.4byte _08022042 @ case 4
	.4byte _08022042 @ case 5
	.4byte _08022042 @ case 6
	.4byte _08022042 @ case 7
	.4byte _08022042 @ case 8
	.4byte _08022042 @ case 9
	.4byte _08022042 @ case 10
	.4byte _08022042 @ case 11
	.4byte _08022042 @ case 12
	.4byte _08022042 @ case 13
	.4byte _08022042 @ case 14
	.4byte _08022042 @ case 15
	.4byte _08022042 @ case 16
	.4byte _08022042 @ case 17
	.4byte _08022042 @ case 18
	.4byte _08022042 @ case 19
	.4byte _08022042 @ case 20
	.4byte _08022042 @ case 21
	.4byte _08022034 @ case 22
	.4byte _0802200C @ case 23
	.4byte _08022042 @ case 24
	.4byte _08022042 @ case 25
	.4byte _08022042 @ case 26
	.4byte _08022042 @ case 27
	.4byte _08022042 @ case 28
	.4byte _08022042 @ case 29
	.4byte _08022042 @ case 30
	.4byte _08022042 @ case 31
	.4byte _08022042 @ case 32
	.4byte _08022042 @ case 33
	.4byte _08022042 @ case 34
	.4byte _08022042 @ case 35
	.4byte _08022024 @ case 36
	.4byte _0802202C @ case 37
	.4byte _08022042 @ case 38
	.4byte _08022042 @ case 39
	.4byte _08022042 @ case 40
	.4byte _08022042 @ case 41
	.4byte _08022042 @ case 42
	.4byte _08022042 @ case 43
	.4byte _08022042 @ case 44
	.4byte _08022042 @ case 45
	.4byte _08022042 @ case 46
	.4byte _08022042 @ case 47
	.4byte _08022042 @ case 48
	.4byte _08022042 @ case 49
	.4byte _08022014 @ case 50
	.4byte _0802201C @ case 51
	.4byte _08022042 @ case 52
	.4byte _08022042 @ case 53
	.4byte _08022042 @ case 54
	.4byte _08022042 @ case 55
	.4byte _08022042 @ case 56
	.4byte _08022042 @ case 57
	.4byte _08022042 @ case 58
	.4byte _08022042 @ case 59
	.4byte _08022042 @ case 60
	.4byte _08022042 @ case 61
	.4byte _08022042 @ case 62
	.4byte _08022042 @ case 63
	.4byte _08022042 @ case 64
	.4byte _08022042 @ case 65
	.4byte _08022042 @ case 66
	.4byte _08022042 @ case 67
	.4byte _08022042 @ case 68
	.4byte _08022042 @ case 69
	.4byte _08022042 @ case 70
	.4byte _08022042 @ case 71
	.4byte _08022024 @ case 72
	.4byte _0802202C @ case 73
	.4byte _08022042 @ case 74
	.4byte _08022042 @ case 75
	.4byte _08022042 @ case 76
	.4byte _08022042 @ case 77
	.4byte _08022042 @ case 78
	.4byte _08022042 @ case 79
	.4byte _08022042 @ case 80
	.4byte _08022042 @ case 81
	.4byte _08022042 @ case 82
	.4byte _08022042 @ case 83
	.4byte _08022042 @ case 84
	.4byte _08022042 @ case 85
	.4byte _08022034 @ case 86
	.4byte _0802203C @ case 87
_08021FFC:
	movs r0, #0
	bl sub_08021D64
	b _08022042
_08022004:
	movs r0, #1
	bl sub_08021D64
	b _08022042
_0802200C:
	movs r0, #3
	bl sub_08021D64
	b _08022042
_08022014:
	movs r0, #6
	bl sub_08021D64
	b _08022042
_0802201C:
	movs r0, #7
	bl sub_08021D64
	b _08022042
_08022024:
	movs r0, #4
	bl sub_08021D64
	b _08022042
_0802202C:
	movs r0, #5
	bl sub_08021D64
	b _08022042
_08022034:
	movs r0, #2
	bl sub_08021D64
	b _08022042
_0802203C:
	movs r0, #3
	bl sub_08021D64
_08022042:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08022048
sub_08022048: @ 0x08022048
	push {r4, r5, r6, lr}
	bl sub_08011BD4
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x15
	cmp r0, r1
	ble _0802205A
	b _0802215A
_0802205A:
	ldr r0, _08022078 @ =gUnknown_03003330
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, [r0]
	movs r1, #0x32
	bl __umodsi3
	cmp r0, #0x11
	beq _080220B8
	cmp r0, #0x11
	bhi _0802207C
	cmp r0, #0
	beq _08022086
	b _0802215A
	.align 2, 0
_08022078: .4byte gUnknown_03003330
_0802207C:
	cmp r0, #0x19
	beq _080220E8
	cmp r0, #0x2a
	beq _08022128
	b _0802215A
_08022086:
	bl sub_080261A0
	bl sub_08026190
	adds r5, r0, #0
	ldr r0, _080220AC @ =gUnknown_03001FE8
	ldr r4, [r0]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1e
	lsls r4, r4, #0xe
	ldr r0, _080220B0 @ =0x060046A0
	adds r4, r4, r0
	bl sub_080261A0
	adds r2, r0, #0
	ldr r1, _080220B4 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	b _08022110
	.align 2, 0
_080220AC: .4byte gUnknown_03001FE8
_080220B0: .4byte 0x060046A0
_080220B4: .4byte 0x000003FF
_080220B8:
	bl sub_08026190
	adds r5, r0, #0
	bl sub_080261A0
	ldr r6, _080220DC @ =0x000003FF
	ands r0, r6
	lsls r0, r0, #5
	adds r5, r5, r0
	ldr r0, _080220E0 @ =gUnknown_03001FE8
	ldr r4, [r0]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1e
	lsls r4, r4, #0xe
	ldr r0, _080220E4 @ =0x060046A0
	adds r4, r4, r0
	b _08022108
	.align 2, 0
_080220DC: .4byte 0x000003FF
_080220E0: .4byte gUnknown_03001FE8
_080220E4: .4byte 0x060046A0
_080220E8:
	bl sub_08026190
	adds r5, r0, #0
	bl sub_080261A0
	ldr r6, _0802211C @ =0x000003FF
	ands r0, r6
	lsls r0, r0, #6
	adds r5, r5, r0
	ldr r0, _08022120 @ =gUnknown_03001FE8
	ldr r4, [r0]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1e
	lsls r4, r4, #0xe
	ldr r1, _08022124 @ =0x060046A0
	adds r4, r4, r1
_08022108:
	bl sub_080261A0
	adds r2, r0, #0
	ands r2, r6
_08022110:
	lsls r2, r2, #5
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08011C68
	b _0802215A
	.align 2, 0
_0802211C: .4byte 0x000003FF
_08022120: .4byte gUnknown_03001FE8
_08022124: .4byte 0x060046A0
_08022128:
	bl sub_08026190
	adds r5, r0, #0
	bl sub_080261A0
	ldr r6, _08022160 @ =0x000003FF
	ands r0, r6
	lsls r0, r0, #5
	adds r5, r5, r0
	ldr r0, _08022164 @ =gUnknown_03001FE8
	ldr r4, [r0]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1e
	lsls r4, r4, #0xe
	ldr r0, _08022168 @ =0x060046A0
	adds r4, r4, r0
	bl sub_080261A0
	adds r2, r0, #0
	ands r2, r6
	lsls r2, r2, #5
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08011C68
_0802215A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08022160: .4byte 0x000003FF
_08022164: .4byte gUnknown_03001FE8
_08022168: .4byte 0x060046A0

	thumb_func_start sub_0802216C
sub_0802216C: @ 0x0802216C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r0, [sp, #0x34]
	ldr r4, [sp, #0x38]
	ldr r5, [sp, #0x3c]
	ldr r6, [sp, #0x40]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r2, r2, #0x10
	mov ip, r2
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #4]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	str r5, [sp, #8]
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	str r6, [sp, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bne _080221C4
	ldr r0, _080221BC @ =gUnknown_03003F2C
	ldrh r2, [r0]
	ldr r0, _080221C0 @ =gUnknown_0809097C
	b _080221D0
	.align 2, 0
_080221BC: .4byte gUnknown_03003F2C
_080221C0: .4byte gUnknown_0809097C
_080221C4:
	ldr r1, _08022228 @ =gUnknown_0809097C
	mov r3, ip
	lsrs r0, r3, #0x16
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
_080221D0:
	ldrh r5, [r0]
	mov r0, sb
	cmp r0, #0
	beq _080221DC
	movs r1, #1
	mov sb, r1
_080221DC:
	lsrs r4, r2, #6
	adds r0, r4, #1
	mov r1, sl
	str r2, [sp, #0x10]
	bl sub_080261A4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _080221F6
	cmp r2, #0x80
	bne _080222CA
_080221F6:
	adds r0, r6, #1
	adds r0, r5, r0
	movs r2, #0x80
	lsls r2, r2, #3
	mov r8, r2
	add r0, r8
	strh r0, [r7]
	adds r0, r6, r5
	add r0, r8
	strh r0, [r7, #2]
	ldr r0, _0802222C @ =gUnknown_030033EC
	ldrh r1, [r0]
	adds r2, r4, #1
	mov r0, sl
	bl sub_0802706C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022230
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x79
	b _0802226A
	.align 2, 0
_08022228: .4byte gUnknown_0809097C
_0802222C: .4byte gUnknown_030033EC
_08022230:
	mov r3, sb
	cmp r3, #0
	beq _08022240
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x76
	b _0802226A
_08022240:
	ldr r0, [sp]
	cmp r0, #0
	beq _08022250
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x77
	b _0802226A
_08022250:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08022260
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x78
	b _0802226A
_08022260:
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r6, #3
	adds r0, r5, r0
	add r0, r8
_0802226A:
	strh r0, [r1]
	ldr r0, _08022294 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08022298
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _08022298
	adds r1, r7, #0
	adds r1, #0x42
	adds r0, r5, #0
	adds r0, #0x7a
	b _08022388
	.align 2, 0
_08022294: .4byte gUnknown_08499598
_08022298:
	ldr r0, _080222B4 @ =gUnknown_08090986
	ldr r3, [sp, #4]
	lsls r1, r3, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _080222BC
	adds r1, r7, #0
	adds r1, #0x42
	adds r0, r6, r5
	ldr r3, _080222B8 @ =0x00000402
	adds r0, r0, r3
	b _08022388
	.align 2, 0
_080222B4: .4byte gUnknown_08090986
_080222B8: .4byte 0x00000402
_080222BC:
	adds r1, r7, #0
	adds r1, #0x42
	adds r0, r5, #0
	adds r0, #0x6c
	ldr r2, [sp, #4]
	adds r0, r2, r0
	b _08022388
_080222CA:
	adds r0, r6, r5
	strh r0, [r7]
	adds r0, r5, #1
	adds r0, r6, r0
	strh r0, [r7, #2]
	ldr r0, _080222F0 @ =gUnknown_030033EC
	ldrh r1, [r0]
	adds r2, r4, #1
	mov r0, sl
	bl sub_0802706C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080222F4
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x79
	b _0802232C
	.align 2, 0
_080222F0: .4byte gUnknown_030033EC
_080222F4:
	mov r3, sb
	cmp r3, #0
	beq _08022304
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x76
	b _0802232C
_08022304:
	ldr r0, [sp]
	cmp r0, #0
	beq _08022314
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x77
	b _0802232C
_08022314:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08022324
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x78
	b _0802232C
_08022324:
	adds r1, r7, #0
	adds r1, #0x40
	adds r0, r5, #2
	adds r0, r6, r0
_0802232C:
	strh r0, [r1]
	ldr r0, _08022358 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0802235C
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _0802235C
	adds r1, r7, #0
	adds r1, #0x42
	adds r0, r5, #0
	adds r0, #0x7a
	b _08022388
	.align 2, 0
_08022358: .4byte gUnknown_08499598
_0802235C:
	ldr r0, _08022378 @ =gUnknown_08090986
	ldr r3, [sp, #4]
	lsls r1, r3, #1
	adds r1, r1, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _0802237C
	adds r1, r7, #0
	adds r1, #0x42
	adds r0, r5, #3
	adds r0, r6, r0
	b _08022388
	.align 2, 0
_08022378: .4byte gUnknown_08090986
_0802237C:
	adds r1, r7, #0
	adds r1, #0x42
	adds r0, r5, #0
	adds r0, #0x6c
	ldr r3, [sp, #4]
	adds r0, r3, r0
_08022388:
	strh r0, [r1]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802239C
sub_0802239C: @ 0x0802239C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r3, #0
	ldr r6, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r4, [sp, #0x28]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsrs r1, r1, #0xf
	adds r0, r0, r1
	lsrs r2, r2, #0xa
	adds r0, r0, r2
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0802216C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080223E0
sub_080223E0: @ 0x080223E0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08022420 @ =gUnknown_08499590
	ldr r4, [r2]
	ldrh r2, [r4, #0xc]
	subs r0, r0, r2
	movs r3, #0xf
	ands r0, r3
	ldrh r2, [r4, #0xe]
	subs r1, r1, r2
	ands r1, r3
	ldr r2, _08022424 @ =gUnknown_0849957C
	ldr r2, [r2]
	lsls r1, r1, #7
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r1, #0x42
	strh r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022420: .4byte gUnknown_08499590
_08022424: .4byte gUnknown_0849957C

	thumb_func_start sub_08022428
sub_08022428: @ 0x08022428
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, _080224A0 @ =gUnknown_0809099C
	ldr r0, [r1]
	ldr r2, [r0]
	adds r7, r1, #0
	ldrh r0, [r2, #2]
	cmp r5, r0
	bhs _08022494
	lsls r1, r5, #1
	ldr r3, _080224A4 @ =0x0000417A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r0, r6
	ldr r3, _080224A8 @ =0x0000051A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq _08022494
	ldr r3, _080224AC @ =0x0000234A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08022494
	adds r0, r4, #0
	bl sub_0802571C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022494
	ldr r3, _080224B0 @ =gUnknown_080909A0
	ldr r0, [r3]
	ldr r1, [r0]
	lsls r2, r4, #1
	adds r0, r2, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r0, #4
	ands r0, r1
	str r2, [sp, #0x10]
	cmp r0, #0
	beq _080224B4
_08022494:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080223E0
	b _08022568
	.align 2, 0
_080224A0: .4byte gUnknown_0809099C
_080224A4: .4byte 0x0000417A
_080224A8: .4byte 0x0000051A
_080224AC: .4byte 0x0000234A
_080224B0: .4byte gUnknown_080909A0
_080224B4:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080224C4
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	b _080224CE
_080224C4:
	movs r2, #0xc0
	mov r8, r2
	mov r3, r8
	ands r3, r4
	mov r8, r3
_080224CE:
	ldr r0, [r7]
	ldr r2, [r0]
	ldrh r0, [r2, #0xc]
	subs r0, r6, r0
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	mov sb, r0
	ldrh r0, [r2, #0xe]
	subs r0, r5, r0
	ands r0, r1
	lsls r0, r0, #1
	mov sl, r0
	ldr r1, _08022514 @ =gUnknown_08499594
	ldr r2, [sp, #0x10]
	adds r0, r2, r4
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r6, r1, r0
	ldrb r1, [r6, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08022518
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	b _0802251A
	.align 2, 0
_08022514: .4byte gUnknown_08499594
_08022518:
	movs r7, #0
_0802251A:
	lsrs r0, r4, #6
	adds r0, #1
	bl sub_08043050
	adds r5, r0, #0
	movs r0, #1
	ands r5, r0
	ldr r0, _08022578 @ =gUnknown_0849957C
	mov r3, sb
	lsls r1, r3, #1
	ldr r0, [r0]
	adds r0, r0, r1
	mov r2, sl
	lsls r1, r2, #6
	adds r0, r0, r1
	ldr r1, _0802257C @ =gUnknown_08499594
	ldr r2, [r1]
	ldr r3, [sp, #0x10]
	adds r1, r3, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1]
	ldrb r2, [r6, #7]
	ldrb r3, [r6, #8]
	orrs r3, r2
	ldrb r2, [r6, #5]
	lsrs r2, r2, #3
	str r2, [sp]
	str r7, [sp, #4]
	ldrb r4, [r6, #1]
	movs r2, #0x20
	ands r2, r4
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	str r5, [sp, #0xc]
	mov r2, r8
	bl sub_0802216C
_08022568:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022578: .4byte gUnknown_0849957C
_0802257C: .4byte gUnknown_08499594

	thumb_func_start sub_08022580
sub_08022580: @ 0x08022580
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _080225C8 @ =gUnknown_080909A4
_08022586:
	movs r4, #0
	adds r6, r5, #1
_0802258A:
	ldr r0, [r7]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	adds r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08022428
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0802258A
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _08022586
	bl sub_08013AFC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080225C8: .4byte gUnknown_080909A4

	thumb_func_start sub_080225CC
sub_080225CC: @ 0x080225CC
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08022610 @ =gUnknown_08499590
	ldr r4, [r2]
	ldrh r2, [r4, #0xc]
	subs r0, r0, r2
	movs r3, #0xf
	ands r0, r3
	ldrh r2, [r4, #0xe]
	subs r1, r1, r2
	ands r1, r3
	ldr r2, _08022614 @ =gUnknown_08499580
	ldr r2, [r2]
	lsls r1, r1, #7
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #0xd8
	lsls r0, r0, #2
	adds r2, r0, #0
	strh r2, [r1]
	strh r2, [r1, #2]
	adds r0, r1, #0
	adds r0, #0x40
	strh r2, [r0]
	adds r1, #0x42
	strh r2, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08022610: .4byte gUnknown_08499590
_08022614: .4byte gUnknown_08499580

	thumb_func_start sub_08022618
sub_08022618: @ 0x08022618
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _080226A4 @ =gUnknown_08499590
	ldr r2, [r0]
	ldrh r0, [r2, #2]
	cmp r4, r0
	blo _08022636
	b _08022798
_08022636:
	ldrh r0, [r2, #0xc]
	subs r0, r5, r0
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	mov sl, r0
	ldrh r0, [r2, #0xe]
	subs r0, r4, r0
	ands r0, r1
	lsls r0, r0, #1
	mov sb, r0
	lsls r1, r4, #1
	ldr r3, _080226A8 @ =0x0000417A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r0, r5
	ldr r3, _080226AC @ =0x0000051A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r0, #0
	beq _0802269A
	ldr r3, _080226B0 @ =0x0000234A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802269A
	lsls r6, r7, #0x10
	lsrs r0, r6, #0x10
	bl sub_0802571C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802269A
	asrs r1, r6, #0x10
	ldr r0, _080226B4 @ =gUnknown_08499594
	ldr r2, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrb r1, [r2, #1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080226B8
_0802269A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080225CC
	b _08022798
	.align 2, 0
_080226A4: .4byte gUnknown_08499590
_080226A8: .4byte 0x0000417A
_080226AC: .4byte 0x0000051A
_080226B0: .4byte 0x0000234A
_080226B4: .4byte gUnknown_08499594
_080226B8:
	mov r8, r2
	mov r0, sl
	lsls r4, r0, #0x10
	mov r1, sb
	lsls r5, r1, #0x10
	ldr r6, _08022754 @ =gUnknown_080909A8
	ldr r0, [r6]
	ldr r2, [r0]
	lsrs r1, r5, #0xa
	lsrs r0, r4, #0xf
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	movs r7, #0
	ldr r3, _08022758 @ =gUnknown_080909AC
	ldr r2, [r3]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r1, r0, r2
	ldrb r0, [r1, #0xb]
	mov sb, r4
	mov sl, r6
	adds r6, r3, #0
	cmp r0, #0
	beq _08022708
	mov r2, r8
	ldrh r4, [r2, #4]
	lsls r4, r4, #0x15
	lsrs r4, r4, #0x1c
	movs r1, #3
	bl Div
	cmp r4, r0
	bgt _08022708
	movs r7, #1
_08022708:
	ldr r2, [r6]
	mov r3, r8
	ldrb r1, [r3]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r2, r0, r2
	ldrb r0, [r2, #0x10]
	cmp r0, #0
	beq _08022734
	ldrb r4, [r3, #6]
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x19
	movs r1, #3
	bl Div
	cmp r4, r0
	bgt _08022734
	lsls r0, r7, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xa
	adds r0, r0, r4
	lsrs r7, r0, #0x10
_08022734:
	lsls r0, r7, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _08022760
	mov r1, sl
	ldr r0, [r1]
	ldr r2, [r0]
	lsrs r1, r5, #0xa
	mov r4, sb
	lsrs r0, r4, #0xf
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r2, _0802275C @ =0xFFFFA33C
	adds r0, r3, r2
	b _08022776
	.align 2, 0
_08022754: .4byte gUnknown_080909A8
_08022758: .4byte gUnknown_080909AC
_0802275C: .4byte 0xFFFFA33C
_08022760:
	mov r3, sl
	ldr r0, [r3]
	ldr r2, [r0]
	lsrs r1, r5, #0xa
	mov r4, sb
	lsrs r0, r4, #0xf
	adds r0, r0, r2
	adds r1, r1, r0
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r0, r2, #0
_08022776:
	strh r0, [r1, #2]
	mov r3, sl
	ldr r0, [r3]
	ldr r2, [r0]
	lsrs r1, r5, #0xa
	mov r4, sb
	lsrs r0, r4, #0xf
	adds r0, r0, r2
	adds r1, r1, r0
	adds r2, r1, #0
	adds r2, #0x42
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	adds r1, #0x40
	strh r0, [r1]
_08022798:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080227A8
sub_080227A8: @ 0x080227A8
	push {r4, r5, r6, r7, lr}
	movs r5, #0
	ldr r7, _080227F0 @ =gUnknown_080909B0
_080227AE:
	movs r4, #0
	adds r6, r5, #1
_080227B2:
	ldr r0, [r7]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	adds r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08022618
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080227B2
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _080227AE
	bl sub_08013B0C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080227F0: .4byte gUnknown_080909B0

	thumb_func_start sub_080227F4
sub_080227F4: @ 0x080227F4
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, _08022840 @ =gUnknown_08499578
	ldr r2, _08022844 @ =gUnknown_08499590
	ldr r5, [r2]
	ldrh r2, [r5, #0xc]
	subs r2, r0, r2
	movs r4, #0xf
	ands r2, r4
	lsls r2, r2, #2
	ldr r3, [r3]
	adds r3, r3, r2
	ldrh r2, [r5, #0xe]
	subs r2, r1, r2
	ands r2, r4
	lsls r2, r2, #7
	adds r3, r3, r2
	ldr r2, _08022848 @ =gUnknown_03003340
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, r1, r0
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0802284C
	movs r0, #0
	strh r0, [r3]
	strh r0, [r3, #2]
	adds r1, r3, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r1, #2
	b _08022868
	.align 2, 0
_08022840: .4byte gUnknown_08499578
_08022844: .4byte gUnknown_08499590
_08022848: .4byte gUnknown_03003340
_0802284C:
	ldr r1, _08022870 @ =0x000081B0
	adds r0, r1, #0
	strh r0, [r3]
	ldr r2, _08022874 @ =0x000081B1
	adds r0, r2, #0
	strh r0, [r3, #2]
	adds r1, r3, #0
	adds r1, #0x40
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	adds r2, #1
	adds r0, r2, #0
_08022868:
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08022870: .4byte 0x000081B0
_08022874: .4byte 0x000081B1

	thumb_func_start sub_08022878
sub_08022878: @ 0x08022878
	push {lr}
	ldr r0, _08022894 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080228A0
	ldr r0, _08022898 @ =gUnknown_08091B9C
	ldr r1, _0802289C @ =0x06003600
	movs r2, #0x80
	bl sub_08011C68
	b _080228AA
	.align 2, 0
_08022894: .4byte gUnknown_03004008
_08022898: .4byte gUnknown_08091B9C
_0802289C: .4byte 0x06003600
_080228A0:
	ldr r0, _080228B0 @ =gUnknown_0809181C
	ldr r1, _080228B4 @ =0x06003600
	movs r2, #0x80
	bl sub_08011C68
_080228AA:
	pop {r0}
	bx r0
	.align 2, 0
_080228B0: .4byte gUnknown_0809181C
_080228B4: .4byte 0x06003600

	thumb_func_start sub_080228B8
sub_080228B8: @ 0x080228B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080228D0 @ =gUnknown_0809181C
	ldr r1, _080228D4 @ =0x06003600
	movs r2, #0x80
	bl sub_08011E54
	movs r0, #2
	strh r0, [r4, #0x20]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080228D0: .4byte gUnknown_0809181C
_080228D4: .4byte 0x06003600

	thumb_func_start sub_080228D8
sub_080228D8: @ 0x080228D8
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	cmp r0, #7
	bgt _080228F8
	ldr r1, _08022930 @ =gUnknown_0809181C
	lsls r0, r0, #7
	adds r0, r0, r1
	ldr r1, _08022934 @ =0x06003600
	movs r2, #0x80
	bl sub_08011E54
	ldrh r0, [r4, #0x20]
	adds r0, #1
	strh r0, [r4, #0x20]
_080228F8:
	ldr r2, _08022938 @ =gUnknown_03001470
	ldr r0, _0802293C @ =gUnknown_03001FBC
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08022948
	ldr r0, _08022940 @ =gUnknown_03004008
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #0xf
	bl __umodsi3
	lsls r0, r0, #1
	ldr r1, _08022944 @ =gUnknown_08091C9E
	adds r0, r0, r1
	movs r1, #0x81
	lsls r1, r1, #1
	movs r2, #0x1e
	bl sub_08013664
	b _08022964
	.align 2, 0
_08022930: .4byte gUnknown_0809181C
_08022934: .4byte 0x06003600
_08022938: .4byte gUnknown_03001470
_0802293C: .4byte gUnknown_03001FBC
_08022940: .4byte gUnknown_03004008
_08022944: .4byte gUnknown_08091C9E
_08022948:
	ldr r0, _0802296C @ =gUnknown_03004008
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #0xf
	bl __umodsi3
	lsls r0, r0, #1
	ldr r1, _08022970 @ =gUnknown_08091C5E
	adds r0, r0, r1
	movs r1, #0x81
	lsls r1, r1, #1
	movs r2, #0x1e
	bl sub_08013664
_08022964:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802296C: .4byte gUnknown_03004008
_08022970: .4byte gUnknown_08091C5E

	thumb_func_start sub_08022974
sub_08022974: @ 0x08022974
	push {lr}
	movs r0, #0
	movs r1, #0xa
	bl sub_0801F178
	ldr r0, _0802298C @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_0801A548
	pop {r0}
	bx r0
	.align 2, 0
_0802298C: .4byte gUnknown_030033EC

	thumb_func_start sub_08022990
sub_08022990: @ 0x08022990
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	bl sub_08013C00
	movs r5, #0
	ldr r7, _080229FC @ =gUnknown_080909B4
_080229A4:
	movs r4, #0
	adds r6, r5, #1
_080229A8:
	ldr r0, [r7]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	adds r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_080227F4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _080229A8
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xa
	bls _080229A4
	bl sub_08013AEC
	ldr r1, _08022A00 @ =gUnknown_03000559
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08022A04 @ =gUnknown_08499B4C
	movs r1, #0xff
	bl sub_080152EC
	mov r1, r8
	strh r1, [r0, #0x1e]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080229FC: .4byte gUnknown_080909B4
_08022A00: .4byte gUnknown_03000559
_08022A04: .4byte gUnknown_08499B4C

	thumb_func_start sub_08022A08
sub_08022A08: @ 0x08022A08
	push {lr}
	bl sub_08013C00
	bl sub_08013AEC
	bl sub_080227A8
	bl sub_08024584
	ldr r0, _08022A2C @ =gUnknown_03000559
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08022A30 @ =gUnknown_08499B4C
	bl sub_0801537C
	pop {r0}
	bx r0
	.align 2, 0
_08022A2C: .4byte gUnknown_03000559
_08022A30: .4byte gUnknown_08499B4C

	thumb_func_start sub_08022A34
sub_08022A34: @ 0x08022A34
	push {lr}
	ldr r0, _08022A58 @ =gUnknown_081019C4
	ldr r1, _08022A5C @ =0x06016CA0
	bl sub_08011CAC
	ldr r0, _08022A60 @ =gUnknown_08101904
	movs r1, #0x88
	lsls r1, r1, #2
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _08022A64 @ =gUnknown_08124268
	ldr r1, _08022A68 @ =0x06016A40
	bl sub_08011CAC
	pop {r0}
	bx r0
	.align 2, 0
_08022A58: .4byte gUnknown_081019C4
_08022A5C: .4byte 0x06016CA0
_08022A60: .4byte gUnknown_08101904
_08022A64: .4byte gUnknown_08124268
_08022A68: .4byte 0x06016A40

	thumb_func_start sub_08022A6C
sub_08022A6C: @ 0x08022A6C
	push {r4, r5, r6, lr}
	ldr r4, _08022AA4 @ =gUnknown_08101984
	ldr r6, _08022AA8 @ =gUnknown_03004008
	ldr r0, [r6]
	lsrs r0, r0, #2
	movs r5, #0xf
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r1, #0x8a
	lsls r1, r1, #2
	movs r2, #2
	bl sub_0801368C
	ldr r0, [r6]
	lsrs r0, r0, #2
	ands r0, r5
	lsls r0, r0, #1
	adds r4, #0x20
	adds r0, r0, r4
	movs r1, #0x8e
	lsls r1, r1, #2
	movs r2, #2
	bl sub_0801368C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08022AA4: .4byte gUnknown_08101984
_08022AA8: .4byte gUnknown_03004008

	thumb_func_start sub_08022AAC
sub_08022AAC: @ 0x08022AAC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08022AC8 @ =gUnknown_030033E4
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r2, _08022ACC @ =gUnknown_030033E0
	lsls r0, r0, #4
	strh r0, [r2]
	lsls r1, r1, #4
	strh r1, [r2, #2]
	bx lr
	.align 2, 0
_08022AC8: .4byte gUnknown_030033E4
_08022ACC: .4byte gUnknown_030033E0

	thumb_func_start sub_08022AD0
sub_08022AD0: @ 0x08022AD0
	ldr r2, _08022AD8 @ =gUnknown_030033E0
	strh r0, [r2]
	strh r1, [r2, #2]
	bx lr
	.align 2, 0
_08022AD8: .4byte gUnknown_030033E0

	thumb_func_start sub_08022ADC
sub_08022ADC: @ 0x08022ADC
	ldr r2, _08022AF0 @ =gUnknown_030033E0
	ldr r1, _08022AF4 @ =gUnknown_030033E4
	ldrh r0, [r1]
	lsls r0, r0, #4
	strh r0, [r2]
	ldrh r0, [r1, #2]
	lsls r0, r0, #4
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_08022AF0: .4byte gUnknown_030033E0
_08022AF4: .4byte gUnknown_030033E4

	thumb_func_start sub_08022AF8
sub_08022AF8: @ 0x08022AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _08022B30 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x21
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #4
	bhi _08022B34
	movs r7, #2
	b _08022B42
	.align 2, 0
_08022B30: .4byte gUnknown_03004008
_08022B34:
	cmp r7, #8
	bls _08022B40
	cmp r7, #0x1c
	bhi _08022B40
	movs r7, #0
	b _08022B42
_08022B40:
	movs r7, #1
_08022B42:
	adds r0, r5, r7
	mov sb, r0
	mov r0, sl
	adds r4, r0, r7
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	orrs r4, r0
	ldr r2, _08022BA4 @ =gUnknown_08499B6C
	ldr r6, _08022BA8 @ =0x00001365
	mov r0, sb
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_0801BD00
	ldr r0, [sp]
	adds r5, r5, r0
	subs r5, r5, r7
	ldr r2, _08022BAC @ =gUnknown_08499B74
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_0801BD00
	ldr r4, [sp, #4]
	add r4, sl
	subs r4, r4, r7
	mov r0, r8
	orrs r4, r0
	ldr r2, _08022BB0 @ =gUnknown_08499B7C
	mov r0, sb
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_0801BD00
	ldr r2, _08022BB4 @ =gUnknown_08499B84
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r6, #0
	bl sub_0801BD00
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022BA4: .4byte gUnknown_08499B6C
_08022BA8: .4byte 0x00001365
_08022BAC: .4byte gUnknown_08499B74
_08022BB0: .4byte gUnknown_08499B7C
_08022BB4: .4byte gUnknown_08499B84

	thumb_func_start sub_08022BB8
sub_08022BB8: @ 0x08022BB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r0, #0
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _08022BE8 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x21
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bhi _08022BEC
	movs r4, #0
	b _08022BFA
	.align 2, 0
_08022BE8: .4byte gUnknown_03004008
_08022BEC:
	cmp r4, #8
	bls _08022BF8
	cmp r4, #0x1c
	bhi _08022BF8
	movs r4, #4
	b _08022BFA
_08022BF8:
	movs r4, #2
_08022BFA:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	beq _08022C6C
	cmp r0, #5
	bgt _08022C0C
	cmp r0, #4
	beq _08022C14
	b _08022DBA
_08022C0C:
	cmp r0, #6
	bne _08022C12
	b _08022D1C
_08022C12:
	b _08022DBA
_08022C14:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r1, #0xcf
	ble _08022C40
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x8f
	ble _08022C38
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08022C34 @ =gUnknown_08499BA0
	b _08022CBE
	.align 2, 0
_08022C34: .4byte gUnknown_08499BA0
_08022C38:
	ldr r6, _08022C3C @ =gUnknown_08499BB4
	b _08022CBE
	.align 2, 0
_08022C3C: .4byte gUnknown_08499BB4
_08022C40:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x7f
	ble _08022C5C
	adds r0, r4, #0
	adds r0, #0x12
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08022C58 @ =gUnknown_08499BC8
	b _08022CBE
	.align 2, 0
_08022C58: .4byte gUnknown_08499BC8
_08022C5C:
	adds r0, r4, #0
	adds r0, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08022C68 @ =gUnknown_08499B8C
	b _08022CBE
	.align 2, 0
_08022C68: .4byte gUnknown_08499B8C
_08022C6C:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r1, #0xcf
	ble _08022C98
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x8f
	ble _08022C90
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08022C8C @ =gUnknown_08499BF0
	b _08022CBE
	.align 2, 0
_08022C8C: .4byte gUnknown_08499BF0
_08022C90:
	ldr r6, _08022C94 @ =gUnknown_08499C04
	b _08022CBE
	.align 2, 0
_08022C94: .4byte gUnknown_08499C04
_08022C98:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x7f
	ble _08022CB4
	adds r0, r4, #0
	adds r0, #0x12
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08022CB0 @ =gUnknown_08499C18
	b _08022CBE
	.align 2, 0
_08022CB0: .4byte gUnknown_08499C18
_08022CB4:
	adds r0, r4, #0
	adds r0, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08022D0C @ =gUnknown_08499BDC
_08022CBE:
	add r2, sp, #8
	ldrh r1, [r2, #4]
	ldr r0, _08022D10 @ =0xFFFFFC00
	ands r0, r1
	ldr r3, _08022D14 @ =0x00000365
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r2, #5]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r3, _08022D18 @ =gUnknown_080909B8
	lsls r1, r4, #1
	adds r1, r1, r3
	asrs r0, r7, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r4, #1
	lsls r2, r2, #1
	adds r2, r2, r3
	asrs r1, r5, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [sp, #8]
	ldr r4, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #4]
	str r4, [sp]
	adds r2, r6, #0
	bl sub_0801C01C
	b _08022DBA
	.align 2, 0
_08022D0C: .4byte gUnknown_08499BDC
_08022D10: .4byte 0xFFFFFC00
_08022D14: .4byte 0x00000365
_08022D18: .4byte gUnknown_080909B8
_08022D1C:
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r1, #0xcf
	ble _08022D48
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x8f
	ble _08022D40
	adds r0, r4, #6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08022D3C @ =gUnknown_08499C40
	b _08022D6E
	.align 2, 0
_08022D3C: .4byte gUnknown_08499C40
_08022D40:
	ldr r6, _08022D44 @ =gUnknown_08499C54
	b _08022D6E
	.align 2, 0
_08022D44: .4byte gUnknown_08499C54
_08022D48:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r5, r0, #0
	cmp r1, #0x7f
	ble _08022D64
	adds r0, r4, #0
	adds r0, #0x12
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08022D60 @ =gUnknown_08499C68
	b _08022D6E
	.align 2, 0
_08022D60: .4byte gUnknown_08499C68
_08022D64:
	adds r0, r4, #0
	adds r0, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08022DC4 @ =gUnknown_08499C2C
_08022D6E:
	add r2, sp, #8
	ldrh r1, [r2, #4]
	ldr r0, _08022DC8 @ =0xFFFFFC00
	ands r0, r1
	ldr r3, _08022DCC @ =0x00000365
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r2, #5]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	ldr r3, _08022DD0 @ =gUnknown_080909B8
	lsls r1, r4, #1
	adds r1, r1, r3
	asrs r0, r7, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r4, #1
	lsls r2, r2, #1
	adds r2, r2, r3
	asrs r1, r5, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [sp, #8]
	ldr r4, [sp, #0xc]
	movs r2, #1
	str r2, [sp, #4]
	str r4, [sp]
	adds r2, r6, #0
	bl sub_0801C01C
_08022DBA:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08022DC4: .4byte gUnknown_08499C2C
_08022DC8: .4byte 0xFFFFFC00
_08022DCC: .4byte 0x00000365
_08022DD0: .4byte gUnknown_080909B8

	thumb_func_start sub_08022DD4
sub_08022DD4: @ 0x08022DD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	movs r5, #0
	movs r0, #0
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r3, sp, #8
	ldrh r1, [r3, #4]
	ldr r0, _08022E24 @ =0xFFFFFC00
	ands r0, r1
	ldr r4, _08022E28 @ =0x00000365
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r3, #5]
	lsrs r7, r2, #0x10
	asrs r0, r2, #0x10
	cmp r0, #0xd
	bls _08022E18
	b _08023012
_08022E18:
	lsls r0, r0, #2
	ldr r1, _08022E2C @ =_08022E30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08022E24: .4byte 0xFFFFFC00
_08022E28: .4byte 0x00000365
_08022E2C: .4byte _08022E30
_08022E30: @ jump table
	.4byte _08022E68 @ case 0
	.4byte _08022EE6 @ case 1
	.4byte _08022EF8 @ case 2
	.4byte _08022F24 @ case 3
	.4byte _08023012 @ case 4
	.4byte _08022F4C @ case 5
	.4byte _08022F60 @ case 6
	.4byte _08022F88 @ case 7
	.4byte _08022FB0 @ case 8
	.4byte _08022FB0 @ case 9
	.4byte _08022FB0 @ case 10
	.4byte _08022FB0 @ case 11
	.4byte _08022FDE @ case 12
	.4byte _08022FDE @ case 13
_08022E68:
	ldr r0, _08022ECC @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x21
	bl __umodsi3
	adds r5, r0, #0
	ldr r0, _08022ED0 @ =gUnknown_08499590
	ldr r2, [r0]
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r3, #6
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	asrs r4, r0, #4
	lsls r1, r4, #1
	ldr r3, _08022ED4 @ =0x0000417A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	mov ip, r0
	mov r1, r8
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r3, #4
	ldrsh r1, [r2, r3]
	adds r0, r0, r1
	asrs r1, r0, #4
	mov r0, ip
	adds r3, r0, r1
	adds r2, #0x12
	adds r2, r2, r3
	ldrb r0, [r2]
	cmp r0, #0
	bne _08022ED8
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08042424
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08022ED8
	movs r7, #4
_08022EBC:
	cmp r5, #4
	ble _08022F70
	cmp r5, #8
	ble _08022F84
	cmp r5, #0x1c
	ble _08022F80
	b _08022F84
	.align 2, 0
_08022ECC: .4byte gUnknown_03004008
_08022ED0: .4byte gUnknown_08499590
_08022ED4: .4byte 0x0000417A
_08022ED8:
	cmp r5, #4
	ble _08022F98
	cmp r5, #8
	ble _08022FAC
	cmp r5, #0x1c
	ble _08022FA8
	b _08022FAC
_08022EE6:
	ldr r0, _08022EF4 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x21
	bl __umodsi3
	adds r5, r0, #0
	b _08022ED8
	.align 2, 0
_08022EF4: .4byte gUnknown_03004008
_08022EF8:
	ldr r0, _08022F0C @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x14
	bl __umodsi3
	adds r5, r0, #0
	cmp r5, #4
	bgt _08022F10
	movs r5, #6
	b _08023012
	.align 2, 0
_08022F0C: .4byte gUnknown_03004008
_08022F10:
	cmp r5, #9
	bgt _08022F18
	movs r5, #7
	b _08023012
_08022F18:
	cmp r5, #0xe
	bgt _08022F20
	movs r5, #8
	b _08023012
_08022F20:
	movs r5, #9
	b _08023012
_08022F24:
	ldr r0, _08022F38 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x1c
	bl __umodsi3
	adds r5, r0, #0
	cmp r5, #5
	bgt _08022F3C
	movs r5, #3
	b _08023012
	.align 2, 0
_08022F38: .4byte gUnknown_03004008
_08022F3C:
	cmp r5, #8
	bgt _08022F44
_08022F40:
	movs r5, #4
	b _08023012
_08022F44:
	cmp r5, #0x19
	bgt _08022F40
	movs r5, #5
	b _08023012
_08022F4C:
	ldr r0, _08022F5C @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x21
	bl __umodsi3
	adds r5, r0, #0
	b _08022EBC
	.align 2, 0
_08022F5C: .4byte gUnknown_03004008
_08022F60:
	ldr r0, _08022F74 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x21
	bl __umodsi3
	adds r5, r0, #0
	cmp r5, #4
	bgt _08022F78
_08022F70:
	movs r5, #0xa
	b _08023012
	.align 2, 0
_08022F74: .4byte gUnknown_03004008
_08022F78:
	cmp r5, #8
	ble _08022F84
	cmp r5, #0x1c
	bgt _08022F84
_08022F80:
	movs r5, #0xc
	b _08023012
_08022F84:
	movs r5, #0xb
	b _08023012
_08022F88:
	ldr r0, _08022F9C @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x1a
	bl __umodsi3
	adds r5, r0, #0
	cmp r5, #0xf
	bgt _08022FA0
_08022F98:
	movs r5, #0
	b _08023012
	.align 2, 0
_08022F9C: .4byte gUnknown_03004008
_08022FA0:
	cmp r5, #0x12
	ble _08022FAC
	cmp r5, #0x16
	bgt _08022FAC
_08022FA8:
	movs r5, #2
	b _08023012
_08022FAC:
	movs r5, #1
	b _08023012
_08022FB0:
	ldr r0, _08022FC8 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	adds r5, r0, #0
	cmp r5, #3
	ble _08022FD4
	cmp r5, #5
	bgt _08022FCC
	movs r5, #4
	b _08022FD6
	.align 2, 0
_08022FC8: .4byte gUnknown_03004008
_08022FCC:
	cmp r5, #0x15
	bgt _08022FD4
	movs r5, #5
	b _08022FD6
_08022FD4:
	movs r5, #3
_08022FD6:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r1, #8
	b _0802300C
_08022FDE:
	ldr r0, _08022FF4 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x18
	bl __umodsi3
	adds r5, r0, #0
	cmp r5, #3
	bgt _08022FF8
	movs r5, #0xf
	b _08023006
	.align 2, 0
_08022FF4: .4byte gUnknown_03004008
_08022FF8:
	cmp r5, #5
	ble _08023004
	cmp r5, #0x15
	bgt _08023004
	movs r5, #0x11
	b _08023006
_08023004:
	movs r5, #0x10
_08023006:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r1, #0xc
_0802300C:
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r5, r5, r0
_08023012:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r1, #6
	ble _08023060
	ldr r2, _08023054 @ =gUnknown_03003F58
	mov r1, r8
	strh r1, [r2]
	strh r6, [r2, #2]
	strh r5, [r2, #4]
	movs r3, #0
	ldrsh r0, [r2, r3]
	movs r4, #0x80
	lsls r4, r4, #3
	adds r3, r4, #0
	adds r1, r6, #0
	orrs r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08023058 @ =gUnknown_0848ABF4
	movs r4, #4
	ldrsh r2, [r2, r4]
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	ldr r3, _0802305C @ =0x00000365
	bl sub_0801BD00
	lsls r6, r6, #0x10
	mov r1, r8
	lsls r0, r1, #0x10
	b _080230A0
	.align 2, 0
_08023054: .4byte gUnknown_03003F58
_08023058: .4byte gUnknown_0848ABF4
_0802305C: .4byte 0x00000365
_08023060:
	add r2, sp, #8
	ldrh r1, [r2, #4]
	ldr r0, _080230B8 @ =0xFFFFFC00
	ands r0, r1
	ldr r3, _080230BC @ =0x00000365
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r2, #5]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #5]
	mov r4, r8
	lsls r4, r4, #0x10
	mov r8, r4
	lsrs r0, r4, #0x10
	lsls r6, r6, #0x10
	lsrs r1, r6, #0x10
	ldr r3, _080230C0 @ =gUnknown_0848AE98
	lsls r2, r5, #2
	adds r2, r2, r3
	ldr r2, [r2]
	ldr r3, [sp, #8]
	ldr r4, [sp, #0xc]
	movs r5, #1
	str r5, [sp, #4]
	str r4, [sp]
	bl sub_0801C01C
	mov r0, r8
_080230A0:
	asrs r0, r0, #0x10
	asrs r1, r6, #0x10
	asrs r2, r7, #0x10
	bl sub_08022BB8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080230B8: .4byte 0xFFFFFC00
_080230BC: .4byte 0x00000365
_080230C0: .4byte gUnknown_0848AE98

	thumb_func_start sub_080230C4
sub_080230C4: @ 0x080230C4
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08022DD4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080230DC
sub_080230DC: @ 0x080230DC
	push {r4, r5, r6, r7, lr}
	adds r7, r3, #0
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r2, _08023100 @ =gUnknown_080909E8
	ldr r1, [r2]
	ldrh r3, [r1]
	ldrh r4, [r1, #2]
	lsrs r5, r0, #0x10
	asrs r1, r0, #0x10
	subs r0, r1, r3
	mov ip, r2
	cmp r0, #0
	blt _08023104
	cmp r0, #0
	bgt _0802310A
	b _08023120
	.align 2, 0
_08023100: .4byte gUnknown_080909E8
_08023104:
	subs r0, r3, r1
	cmp r0, #0
	ble _08023120
_0802310A:
	cmp r0, #1
	bne _08023112
	adds r3, r5, #0
	b _08023120
_08023112:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	subs r0, r0, r3
	asrs r0, r0, #1
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08023120:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	subs r1, r2, r4
	adds r5, r0, #0
	cmp r1, #0
	blt _08023132
	cmp r1, #0
	bgt _0802313E
	b _08023152
_08023132:
	subs r0, r4, r2
	cmp r0, #0
	ble _08023152
	cmp r0, #1
	bne _08023146
	b _08023142
_0802313E:
	cmp r1, #1
	bne _08023146
_08023142:
	lsrs r4, r5, #0x10
	b _08023152
_08023146:
	asrs r0, r5, #0x10
	subs r0, r0, r4
	asrs r0, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08023152:
	mov r1, ip
	ldr r0, [r1]
	strh r3, [r0]
	strh r4, [r0, #2]
	strh r3, [r7]
	ldr r0, [sp, #0x14]
	strh r4, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023168
sub_08023168: @ 0x08023168
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r3
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r2, _08023194 @ =gUnknown_080909EC
	ldr r1, [r2]
	ldrh r4, [r1]
	ldrh r3, [r1, #2]
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	subs r1, r0, r4
	mov r8, r2
	cmp r1, #0
	blt _08023198
	lsls r6, r5, #0x10
	cmp r1, #0x10
	bgt _080231B8
	b _080231A0
	.align 2, 0
_08023194: .4byte gUnknown_080909EC
_08023198:
	subs r0, r4, r0
	lsls r6, r5, #0x10
	cmp r0, #0x10
	bgt _080231B8
_080231A0:
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	subs r1, r2, r3
	adds r6, r0, #0
	cmp r1, #0
	blt _080231B2
	cmp r1, #0x10
	bgt _080231B8
	b _080231BE
_080231B2:
	subs r0, r3, r2
	cmp r0, #0x10
	ble _080231BE
_080231B8:
	adds r4, r7, #0
	lsrs r3, r6, #0x10
	b _08023222
_080231BE:
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	subs r1, r2, r4
	adds r5, r0, #0
	cmp r1, #0
	blt _080231D0
	cmp r1, #0
	bgt _080231D6
	b _080231F2
_080231D0:
	subs r0, r4, r2
	cmp r0, #0
	ble _080231F2
_080231D6:
	asrs r0, r5, #0x10
	subs r0, r0, r4
	cmp r0, #0
	bgt _080231EA
	cmp r0, #0
	bge _080231E6
	subs r0, r4, #4
	b _080231EC
_080231E6:
	lsls r0, r4, #0x10
	b _080231EE
_080231EA:
	adds r0, r4, #4
_080231EC:
	lsls r0, r0, #0x10
_080231EE:
	lsrs r0, r0, #0x10
	adds r4, r0, #0
_080231F2:
	asrs r1, r6, #0x10
	subs r0, r1, r3
	cmp r0, #0
	blt _08023200
	cmp r0, #0
	bgt _08023206
	b _08023222
_08023200:
	subs r0, r3, r1
	cmp r0, #0
	ble _08023222
_08023206:
	asrs r0, r6, #0x10
	subs r0, r0, r3
	cmp r0, #0
	bgt _0802321A
	cmp r0, #0
	bge _08023216
	subs r0, r3, #4
	b _0802321C
_08023216:
	lsls r0, r3, #0x10
	b _0802321E
_0802321A:
	adds r0, r3, #4
_0802321C:
	lsls r0, r0, #0x10
_0802321E:
	lsrs r0, r0, #0x10
	adds r3, r0, #0
_08023222:
	mov r1, r8
	ldr r0, [r1]
	strh r4, [r0]
	strh r3, [r0, #2]
	mov r0, ip
	strh r4, [r0]
	ldr r0, [sp, #0x18]
	strh r3, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802323C
sub_0802323C: @ 0x0802323C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r2, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r5, sp
	adds r5, #6
	str r5, [sp]
	adds r2, r4, #0
	add r3, sp, #4
	bl sub_080230DC
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl sub_08043418
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08023274
sub_08023274: @ 0x08023274
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r1, _080232C4 @ =gUnknown_030033E4
	ldrh r0, [r1]
	lsls r0, r0, #0x14
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r5, sp
	adds r5, #6
	str r5, [sp]
	adds r2, r4, #0
	add r3, sp, #4
	bl sub_08023168
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _080232C8 @ =gUnknown_08499590
	ldr r2, [r1]
	movs r3, #4
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	movs r3, #0
	ldrsh r1, [r5, r3]
	movs r3, #6
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	adds r2, r4, #0
	bl sub_08043418
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080232C4: .4byte gUnknown_030033E4
_080232C8: .4byte gUnknown_08499590

	thumb_func_start sub_080232CC
sub_080232CC: @ 0x080232CC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r1, _08023340 @ =gUnknown_030033E4
	ldrh r0, [r1]
	lsls r0, r0, #0x14
	asrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r4, sp
	adds r4, #6
	str r4, [sp]
	add r3, sp, #4
	bl sub_08023168
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r5, _08023344 @ =gUnknown_08499590
	ldr r2, [r5]
	movs r3, #4
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r3, #6
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	adds r2, r6, #0
	bl sub_08043418
	add r0, sp, #4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [r5]
	movs r3, #4
	ldrsh r1, [r2, r3]
	subs r0, r0, r1
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r3, #6
	ldrsh r2, [r2, r3]
	subs r1, r1, r2
	mov r2, r8
	bl sub_08043418
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08023340: .4byte gUnknown_030033E4
_08023344: .4byte gUnknown_08499590

	thumb_func_start sub_08023348
sub_08023348: @ 0x08023348
	push {lr}
	movs r0, #1
	bl sub_08023360
	pop {r0}
	bx r0

	thumb_func_start sub_08023354
sub_08023354: @ 0x08023354
	push {lr}
	movs r0, #0
	bl sub_08023360
	pop {r0}
	bx r0

	thumb_func_start sub_08023360
sub_08023360: @ 0x08023360
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl sub_08011B18
	cmp r4, #1
	bne _08023370
	bl sub_08010FE0
_08023370:
	cmp r4, #0
	bne _08023378
	bl sub_08011018
_08023378:
	ldr r0, _080234C0 @ =gUnknown_0849D16C
	bl sub_08012C58
	bl sub_08023860
	bl sub_080128D0
	ldr r4, _080234C4 @ =gUnknown_0809175C
	ldr r1, _080234C8 @ =0x06003600
	adds r0, r4, #0
	movs r2, #0xa0
	bl sub_08011C68
	bl sub_08026190
	adds r5, r0, #0
	ldr r6, _080234CC @ =0x060046A0
	bl sub_080261A0
	adds r2, r0, #0
	ldr r1, _080234D0 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	lsls r2, r2, #5
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08011C68
	bl sub_08026198
	ldr r1, _080234D4 @ =0x06005440
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_08011C68
	ldr r0, _080234D8 @ =gUnknown_080BD1EC
	ldr r1, _080234DC @ =0x06008000
	bl sub_08011CAC
	adds r4, #0xa0
	ldr r1, _080234E0 @ =0x0600E780
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08011C68
	ldr r0, _080234E4 @ =gUnknown_08499578
	ldr r0, [r0]
	ldr r1, _080234E8 @ =0x06007000
	movs r6, #0x80
	lsls r6, r6, #4
	adds r2, r6, #0
	bl sub_08011C68
	ldr r0, _080234EC @ =gUnknown_0849957C
	ldr r0, [r0]
	ldr r1, _080234F0 @ =0x0600F000
	adds r2, r6, #0
	bl sub_08011C68
	ldr r0, _080234F4 @ =gUnknown_08499580
	ldr r0, [r0]
	ldr r1, _080234F8 @ =0x06007800
	adds r2, r6, #0
	bl sub_08011C68
	ldr r5, _080234FC @ =gUnknown_0810E6E0
	ldr r4, _08023500 @ =gUnknown_08499598
	ldr r0, [r4]
	adds r0, #0x56
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0x20
	bl sub_08013618
	ldr r0, [r4]
	adds r0, #0x92
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0xd0
	lsls r1, r1, #1
	movs r2, #0x20
	bl sub_08013618
	ldr r0, [r4]
	adds r0, #0xce
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl sub_08013618
	ldr r0, [r4]
	movs r1, #0x85
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, #0xd6
	movs r2, #0x20
	bl sub_08013618
	movs r0, #8
	bl sub_0803F80C
	bl sub_0802D2EC
	ldr r0, _08023504 @ =gUnknown_0809163C
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl sub_08013618
	movs r0, #0xd3
	lsls r0, r0, #1
	bl sub_08037150
	bl sub_08024268
	bl sub_08022A08
	ldr r0, _08023508 @ =gUnknown_08499584
	ldr r0, [r0]
	ldr r1, _0802350C @ =0x0600F800
	adds r2, r6, #0
	bl sub_08011C68
	bl sub_08035568
	bl sub_080116E8
	bl sub_080354FC
	ldr r0, _08023510 @ =gUnknown_03003FC0
	adds r0, #0x2c
	ldrb r0, [r0]
	bl sub_08035020
	bl sub_08022A34
	ldr r4, _08023514 @ =gUnknown_030033EC
	ldrh r0, [r4]
	bl sub_0801A5B0
	ldrh r0, [r4]
	bl sub_08043834
	ldrh r0, [r4]
	bl sub_0801A57C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080234C0: .4byte gUnknown_0849D16C
_080234C4: .4byte gUnknown_0809175C
_080234C8: .4byte 0x06003600
_080234CC: .4byte 0x060046A0
_080234D0: .4byte 0x000003FF
_080234D4: .4byte 0x06005440
_080234D8: .4byte gUnknown_080BD1EC
_080234DC: .4byte 0x06008000
_080234E0: .4byte 0x0600E780
_080234E4: .4byte gUnknown_08499578
_080234E8: .4byte 0x06007000
_080234EC: .4byte gUnknown_0849957C
_080234F0: .4byte 0x0600F000
_080234F4: .4byte gUnknown_08499580
_080234F8: .4byte 0x06007800
_080234FC: .4byte gUnknown_0810E6E0
_08023500: .4byte gUnknown_08499598
_08023504: .4byte gUnknown_0809163C
_08023508: .4byte gUnknown_08499584
_0802350C: .4byte 0x0600F800
_08023510: .4byte gUnknown_03003FC0
_08023514: .4byte gUnknown_030033EC

	thumb_func_start sub_08023518
sub_08023518: @ 0x08023518
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08023608 @ =gUnknown_080909F0
	ldr r7, [r2]
	ldr r6, [r7]
	ldrh r1, [r6, #0x10]
	movs r0, #0xf
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	bne _080235FA
	ldr r0, _0802360C @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r0, [r0]
	lsrs r4, r0, #4
	movs r0, #0xf
	ands r4, r0
	ldr r1, _08023610 @ =gUnknown_080909F4
	ldr r0, [r1]
	mov ip, r0
	lsls r3, r4, #2
	adds r2, r3, r0
	movs r5, #0
	ldrsh r0, [r2, r5]
	mov r8, r1
	ldr r5, _08023614 @ =gUnknown_080909F8
	cmp r0, #0
	bge _08023560
	ldr r1, [r5]
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, #2
	strh r0, [r1]
_08023560:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _08023576
	ldr r1, [r5]
	ldr r0, [r7]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, #0xc
	strh r0, [r1]
_08023576:
	mov r0, ip
	adds r0, #2
	adds r3, r3, r0
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08023592
	ldr r1, [r5]
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, #2
	strh r0, [r1, #2]
_08023592:
	movs r1, #0
	ldrsh r0, [r3, r1]
	cmp r0, #0
	ble _080235A8
	ldr r1, [r5]
	ldr r0, [r7]
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, #7
	strh r0, [r1, #2]
_080235A8:
	ldr r6, [r5]
	ldrh r0, [r6]
	movs r1, #0
	ldrsh r2, [r2, r1]
	adds r3, r0, r2
	cmp r3, #0
	blt _080235CA
	ldr r0, [r7]
	ldrh r0, [r0]
	cmp r3, r0
	bge _080235CA
	ldr r1, _08023618 @ =gUnknown_030032C4
	lsls r0, r2, #2
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	strh r3, [r6]
_080235CA:
	ldr r5, [r5]
	ldrh r0, [r5, #2]
	mov r2, r8
	ldr r1, [r2]
	lsls r2, r4, #2
	adds r1, #2
	adds r2, r2, r1
	movs r1, #0
	ldrsh r2, [r2, r1]
	adds r3, r0, r2
	cmp r3, #0
	blt _080235FA
	mov r1, sb
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	cmp r3, r0
	bge _080235FA
	ldr r1, _08023618 @ =gUnknown_030032C4
	lsls r0, r2, #2
	ldrh r2, [r1, #2]
	adds r0, r0, r2
	strh r0, [r1, #2]
	strh r3, [r5, #2]
_080235FA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023608: .4byte gUnknown_080909F0
_0802360C: .4byte gUnknown_03002EE0
_08023610: .4byte gUnknown_080909F4
_08023614: .4byte gUnknown_080909F8
_08023618: .4byte gUnknown_030032C4

	thumb_func_start sub_0802361C
sub_0802361C: @ 0x0802361C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _080236D4 @ =gUnknown_080909FC
	ldr r0, [r2]
	ldr r7, [r0]
	ldrh r1, [r7, #0x10]
	movs r0, #0xf
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	bne _080236C4
	ldr r0, _080236D8 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	lsrs r5, r0, #4
	movs r0, #0xf
	ands r5, r0
	ldr r3, _080236DC @ =gUnknown_08090A00
	ldr r0, [r3]
	mov ip, r0
	ldrh r4, [r0]
	ldr r2, _080236E0 @ =gUnknown_08090A04
	ldr r1, [r2]
	lsls r0, r5, #2
	adds r6, r0, r1
	movs r0, #0
	ldrsh r1, [r6, r0]
	adds r4, r4, r1
	mov r8, r3
	mov sb, r2
	cmp r4, #0
	blt _08023684
	ldrh r7, [r7]
	cmp r4, r7
	bge _08023684
	ldr r0, _080236E4 @ =gUnknown_030032C4
	lsls r1, r1, #2
	ldrh r2, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	mov r0, ip
	strh r4, [r0]
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	beq _08023684
	movs r0, #0x6a
	bl sub_0803B4DC
_08023684:
	mov r2, r8
	ldr r3, [r2]
	ldrh r0, [r3, #2]
	mov r4, sb
	ldr r1, [r4]
	lsls r2, r5, #2
	adds r1, #2
	adds r2, r2, r1
	movs r5, #0
	ldrsh r1, [r2, r5]
	adds r4, r0, r1
	cmp r4, #0
	blt _080236C4
	mov r5, sl
	ldr r0, [r5]
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	cmp r4, r0
	bge _080236C4
	ldr r0, _080236E4 @ =gUnknown_030032C4
	lsls r1, r1, #2
	ldrh r5, [r0, #2]
	adds r1, r1, r5
	strh r1, [r0, #2]
	strh r4, [r3, #2]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _080236C4
	movs r0, #0x6a
	bl sub_0803B4DC
_080236C4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080236D4: .4byte gUnknown_080909FC
_080236D8: .4byte gUnknown_03002EE0
_080236DC: .4byte gUnknown_08090A00
_080236E0: .4byte gUnknown_08090A04
_080236E4: .4byte gUnknown_030032C4

	thumb_func_start sub_080236E8
sub_080236E8: @ 0x080236E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08023804 @ =gUnknown_08090A08
	ldr r0, [r2]
	ldr r6, [r0]
	ldrh r1, [r6, #0x10]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080237F6
	ldr r0, _08023808 @ =gUnknown_03002EE0
	ldr r0, [r0]
	mov ip, r0
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov sl, r1
	lsrs r5, r0, #0x14
	movs r0, #0xf
	ands r5, r0
	ldr r2, _0802380C @ =gUnknown_08090A0C
	mov sb, r2
	ldr r4, [r2]
	ldr r0, _08023810 @ =gUnknown_08090A10
	mov r8, r0
	ldr r2, [r0]
	lsls r3, r5, #2
	adds r0, r3, r2
	ldrh r1, [r0]
	ldrh r0, [r4]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	adds r2, #2
	adds r3, r3, r2
	ldrh r0, [r3]
	ldrh r2, [r4, #2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r1, #0x10
	orrs r3, r0
	ldrh r0, [r4, #2]
	lsls r0, r0, #1
	ldr r1, _08023814 @ =0x0000417A
	adds r7, r6, r1
	adds r0, r7, r0
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	ldr r4, _08023818 @ =0x00002852
	adds r2, r6, r4
	adds r0, r2, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0802377C
	lsrs r0, r3, #0x10
	lsls r0, r0, #1
	adds r0, r7, r0
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r1, r2, r1
	ldrb r0, [r1]
	cmp r0, #0x78
	bls _0802377C
	mov r0, ip
	ldrh r0, [r0, #4]
	cmp sl, r0
	bne _080237F6
_0802377C:
	mov r1, sb
	ldr r6, [r1]
	ldrh r0, [r6]
	mov r2, r8
	ldr r1, [r2]
	lsls r2, r5, #2
	adds r3, r2, r1
	movs r4, #0
	ldrsh r1, [r3, r4]
	adds r4, r0, r1
	adds r7, r2, #0
	cmp r4, #0
	blt _080237BA
	ldr r0, _0802381C @ =gUnknown_08499590
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r4, r0
	bge _080237BA
	ldr r0, _08023820 @ =gUnknown_030032C4
	lsls r1, r1, #2
	ldrh r2, [r0]
	adds r1, r1, r2
	strh r1, [r0]
	strh r4, [r6]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	beq _080237BA
	movs r0, #0x6a
	bl sub_0803B4DC
_080237BA:
	mov r0, sb
	ldr r6, [r0]
	ldrh r1, [r6, #2]
	mov r2, r8
	ldr r0, [r2]
	adds r0, #2
	adds r3, r7, r0
	movs r4, #0
	ldrsh r2, [r3, r4]
	adds r4, r1, r2
	cmp r4, #0
	blt _080237F6
	ldr r0, _0802381C @ =gUnknown_08499590
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	cmp r4, r0
	bge _080237F6
	ldr r0, _08023820 @ =gUnknown_030032C4
	lsls r1, r2, #2
	ldrh r2, [r0, #2]
	adds r1, r1, r2
	strh r1, [r0, #2]
	strh r4, [r6, #2]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0
	beq _080237F6
	movs r0, #0x6a
	bl sub_0803B4DC
_080237F6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023804: .4byte gUnknown_08090A08
_08023808: .4byte gUnknown_03002EE0
_0802380C: .4byte gUnknown_08090A0C
_08023810: .4byte gUnknown_08090A10
_08023814: .4byte 0x0000417A
_08023818: .4byte 0x00002852
_0802381C: .4byte gUnknown_08499590
_08023820: .4byte gUnknown_030032C4

	thumb_func_start sub_08023824
sub_08023824: @ 0x08023824
	ldr r1, _08023858 @ =gUnknown_03004090
	ldr r2, _0802385C @ =gUnknown_030032C4
	ldrh r0, [r1]
	ldrh r3, [r2]
	cmp r0, r3
	bhs _08023834
	adds r0, #1
	strh r0, [r1]
_08023834:
	ldrh r0, [r1]
	ldrh r3, [r2]
	cmp r0, r3
	bls _08023840
	subs r0, #1
	strh r0, [r1]
_08023840:
	ldrh r0, [r1, #2]
	ldrh r2, [r2, #2]
	cmp r0, r2
	bhs _0802384C
	adds r0, #1
	strh r0, [r1, #2]
_0802384C:
	ldrh r0, [r1, #2]
	cmp r0, r2
	bls _08023856
	subs r0, #1
	strh r0, [r1, #2]
_08023856:
	bx lr
	.align 2, 0
_08023858: .4byte gUnknown_03004090
_0802385C: .4byte gUnknown_030032C4

	thumb_func_start sub_08023860
sub_08023860: @ 0x08023860
	push {r4, lr}
	ldr r0, _080238E0 @ =gUnknown_08499B4C
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	ldr r4, _080238E4 @ =gUnknown_08090A14
	cmp r0, r1
	beq _08023892
	ldr r3, _080238E8 @ =gUnknown_03001FF8
	ldr r0, [r4]
	ldr r2, [r0]
	ldrh r1, [r2, #0xc]
	lsls r1, r1, #4
	ldrh r0, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3]
	ldr r3, _080238EC @ =gUnknown_03001418
	ldrh r1, [r2, #0xe]
	lsls r1, r1, #4
	ldrh r0, [r2, #6]
	subs r0, r0, r1
	strh r0, [r3]
_08023892:
	ldr r2, _080238F0 @ =gUnknown_03002B34
	ldr r0, [r4]
	ldr r1, [r0]
	ldrh r0, [r1, #0xc]
	lsls r0, r0, #4
	ldrh r3, [r1, #4]
	subs r0, r3, r0
	strh r0, [r2]
	ldr r4, _080238F4 @ =gUnknown_03002F18
	ldrh r0, [r1, #0xe]
	lsls r0, r0, #4
	ldrh r2, [r1, #6]
	subs r0, r2, r0
	adds r0, #3
	strh r0, [r4]
	ldr r4, _080238F8 @ =gUnknown_030030A0
	ldrh r0, [r1, #0xc]
	lsls r0, r0, #4
	subs r0, r3, r0
	strh r0, [r4]
	ldr r4, _080238FC @ =gUnknown_03001400
	ldrh r0, [r1, #0xe]
	lsls r0, r0, #4
	subs r0, r2, r0
	strh r0, [r4]
	ldr r4, _08023900 @ =gUnknown_0300200C
	ldrh r0, [r1, #0xc]
	lsls r0, r0, #4
	subs r3, r3, r0
	strh r3, [r4]
	ldr r3, _08023904 @ =gUnknown_03002000
	ldrh r0, [r1, #0xe]
	lsls r0, r0, #4
	subs r2, r2, r0
	strh r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080238E0: .4byte gUnknown_08499B4C
_080238E4: .4byte gUnknown_08090A14
_080238E8: .4byte gUnknown_03001FF8
_080238EC: .4byte gUnknown_03001418
_080238F0: .4byte gUnknown_03002B34
_080238F4: .4byte gUnknown_03002F18
_080238F8: .4byte gUnknown_030030A0
_080238FC: .4byte gUnknown_03001400
_08023900: .4byte gUnknown_0300200C
_08023904: .4byte gUnknown_03002000

	thumb_func_start sub_08023908
sub_08023908: @ 0x08023908
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r1, _08023A44 @ =gUnknown_08090A18
	ldr r2, [r1]
	ldr r3, [r2]
	ldrh r4, [r3, #0x10]
	movs r0, #3
	ands r0, r4
	adds r7, r1, #0
	cmp r0, #0
	bne _08023948
	ldr r0, _08023A48 @ =gUnknown_030033E4
	ldrh r1, [r3, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r0, [r0]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r1, #1
	bhi _0802393A
	movs r0, #2
	orrs r0, r4
	strh r0, [r3, #0x10]
_0802393A:
	cmp r1, #0xc
	bls _08023948
	ldr r2, [r2]
	ldrh r1, [r2, #0x10]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0x10]
_08023948:
	ldr r2, [r7]
	ldr r3, [r2]
	ldrh r4, [r3, #0x10]
	movs r0, #0xc
	ands r0, r4
	cmp r0, #0
	bne _08023980
	ldr r0, _08023A48 @ =gUnknown_030033E4
	ldrh r1, [r3, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	ldrh r0, [r0, #2]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	cmp r1, #1
	bhi _08023972
	movs r0, #4
	orrs r0, r4
	strh r0, [r3, #0x10]
_08023972:
	cmp r1, #7
	bls _08023980
	ldr r2, [r2]
	ldrh r1, [r2, #0x10]
	movs r0, #8
	orrs r0, r1
	strh r0, [r2, #0x10]
_08023980:
	ldr r0, [r7]
	ldr r2, [r0]
	ldrh r4, [r2, #0x10]
	movs r5, #1
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _080239B0
	ldrh r1, [r2]
	ldrh r3, [r2, #4]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	subs r1, r1, r0
	cmp r1, #0xf
	beq _080239AA
	adds r0, r3, r6
	strh r0, [r2, #4]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080239B0
_080239AA:
	adds r0, r4, #0
	eors r0, r5
	strh r0, [r2, #0x10]
_080239B0:
	ldr r0, [r7]
	ldr r2, [r0]
	ldrh r3, [r2, #0x10]
	movs r4, #2
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _080239DC
	ldrh r1, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	beq _080239D6
	subs r0, r1, r6
	strh r0, [r2, #4]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080239DC
_080239D6:
	adds r0, r3, #0
	eors r0, r4
	strh r0, [r2, #0x10]
_080239DC:
	ldr r0, [r7]
	ldr r2, [r0]
	ldrh r3, [r2, #0x10]
	movs r4, #4
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq _08023A08
	ldrh r1, [r2, #6]
	movs r5, #6
	ldrsh r0, [r2, r5]
	cmp r0, #0
	beq _08023A02
	subs r0, r1, r6
	strh r0, [r2, #6]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08023A08
_08023A02:
	adds r0, r3, #0
	eors r0, r4
	strh r0, [r2, #0x10]
_08023A08:
	ldr r0, [r7]
	ldr r2, [r0]
	ldrh r4, [r2, #0x10]
	movs r5, #8
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq _08023A38
	ldrh r1, [r2, #2]
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x14
	subs r1, r1, r0
	cmp r1, #0xa
	beq _08023A32
	adds r0, r3, r6
	strh r0, [r2, #6]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08023A38
_08023A32:
	adds r0, r4, #0
	eors r0, r5
	strh r0, [r2, #0x10]
_08023A38:
	bl sub_08023860
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023A44: .4byte gUnknown_08090A18
_08023A48: .4byte gUnknown_030033E4

	thumb_func_start sub_08023A4C
sub_08023A4C: @ 0x08023A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp]
	movs r2, #0xf
	ands r1, r2
	lsls r7, r1, #6
	ldr r1, _08023B04 @ =gUnknown_08499584
	ands r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	mov sl, r1
	movs r0, #0
	mov sb, r0
	ldr r1, _08023B08 @ =gUnknown_080BFBC4
	mov ip, r1
	movs r2, #0x80
	lsls r2, r2, #7
	mov r8, r2
_08023A82:
	ldr r0, _08023B0C @ =gUnknown_08499590
	ldr r3, [r0]
	ldr r0, [sp]
	add r0, sb
	lsls r0, r0, #1
	ldr r2, _08023B10 @ =0x0000417A
	adds r1, r3, r2
	adds r5, r1, r0
	ldrh r0, [r5]
	adds r1, r0, r6
	ldr r2, _08023B14 @ =0x0000234A
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023B20
	lsls r2, r7, #1
	add r2, sl
	lsls r0, r1, #1
	ldr r1, _08023B18 @ =0x00000A22
	adds r3, r3, r1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	add r0, ip
	ldrh r0, [r0]
	add r0, r8
	strh r0, [r2]
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	add r0, r8
	strh r0, [r2, #2]
	adds r4, r2, #0
	adds r4, #0x40
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	add r0, r8
	strh r0, [r4]
	adds r2, #0x42
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #3
	ldr r1, _08023B1C @ =gUnknown_080BFBCA
	adds r0, r0, r1
	ldrh r0, [r0]
	add r0, r8
	b _08023B78
	.align 2, 0
_08023B04: .4byte gUnknown_08499584
_08023B08: .4byte gUnknown_080BFBC4
_08023B0C: .4byte gUnknown_08499590
_08023B10: .4byte 0x0000417A
_08023B14: .4byte 0x0000234A
_08023B18: .4byte 0x00000A22
_08023B1C: .4byte gUnknown_080BFBCA
_08023B20:
	lsls r2, r7, #1
	add r2, sl
	lsls r0, r1, #1
	ldr r1, _08023BA4 @ =0x00000A22
	adds r3, r3, r1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r2]
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r4, r2, #0
	adds r4, #0x40
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	adds r2, #0x42
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #3
	ldr r1, _08023BA8 @ =gUnknown_080BFBCA
	adds r0, r0, r1
	ldrh r0, [r0]
_08023B78:
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0x40
	lsls r0, r0, #0x16
	lsrs r7, r0, #0x16
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xa
	bhi _08023B92
	b _08023A82
_08023B92:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023BA4: .4byte 0x00000A22
_08023BA8: .4byte gUnknown_080BFBCA

	thumb_func_start sub_08023BAC
sub_08023BAC: @ 0x08023BAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r3, [sp, #4]
	movs r2, #0xf
	ands r0, r2
	lsls r7, r0, #1
	ldr r0, _08023C68 @ =gUnknown_08499584
	ands r1, r2
	lsls r1, r1, #7
	ldr r0, [r0]
	adds r0, r0, r1
	mov sl, r0
	movs r0, #0
	mov sb, r0
	ldr r1, _08023C6C @ =gUnknown_080BFBC4
	mov ip, r1
	movs r2, #0x80
	lsls r2, r2, #7
	mov r8, r2
_08023BE4:
	ldr r0, _08023C70 @ =gUnknown_08499590
	ldr r3, [r0]
	ldr r0, [sp, #4]
	lsls r1, r0, #1
	ldr r2, _08023C74 @ =0x0000417A
	adds r0, r3, r2
	adds r5, r0, r1
	ldrh r0, [r5]
	ldr r6, [sp]
	add r6, sb
	adds r1, r0, r6
	ldr r2, _08023C78 @ =0x0000234A
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08023C84
	lsls r2, r7, #1
	add r2, sl
	lsls r0, r1, #1
	ldr r1, _08023C7C @ =0x00000A22
	adds r3, r3, r1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	add r0, ip
	ldrh r0, [r0]
	add r0, r8
	strh r0, [r2]
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	add r0, r8
	strh r0, [r2, #2]
	adds r4, r2, #0
	adds r4, #0x40
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	add r0, r8
	strh r0, [r4]
	adds r2, #0x42
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #3
	ldr r1, _08023C80 @ =gUnknown_080BFBCA
	adds r0, r0, r1
	ldrh r0, [r0]
	add r0, r8
	b _08023CDC
	.align 2, 0
_08023C68: .4byte gUnknown_08499584
_08023C6C: .4byte gUnknown_080BFBC4
_08023C70: .4byte gUnknown_08499590
_08023C74: .4byte 0x0000417A
_08023C78: .4byte 0x0000234A
_08023C7C: .4byte 0x00000A22
_08023C80: .4byte gUnknown_080BFBCA
_08023C84:
	lsls r2, r7, #1
	add r2, sl
	lsls r0, r1, #1
	ldr r1, _08023D0C @ =0x00000A22
	adds r3, r3, r1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	add r0, ip
	ldrh r0, [r0]
	strh r0, [r2]
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	mov r1, ip
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r4, r2, #0
	adds r4, #0x40
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, r3, r0
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	adds r2, #0x42
	ldrh r0, [r5]
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r0, r0, #3
	ldr r1, _08023D10 @ =gUnknown_080BFBCA
	adds r0, r0, r1
	ldrh r0, [r0]
_08023CDC:
	strh r0, [r2]
	adds r0, r7, #2
	lsls r0, r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #0xd
	ands r1, r0
	lsrs r7, r1, #0x10
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp r0, #0xf
	bhi _08023CFA
	b _08023BE4
_08023CFA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023D0C: .4byte 0x00000A22
_08023D10: .4byte gUnknown_080BFBCA

	thumb_func_start sub_08023D14
sub_08023D14: @ 0x08023D14
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	movs r5, #0
_08023D20:
	adds r4, r7, r5
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08022428
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08022618
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bls _08023D20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023D48
sub_08023D48: @ 0x08023D48
	push {r4, r5, r6, r7, lr}
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	movs r5, #0
_08023D54:
	adds r4, r7, r5
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08022428
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_08022618
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xa
	bls _08023D54
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08023D7C
sub_08023D7C: @ 0x08023D7C
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	movs r4, #0
_08023D88:
	adds r0, r6, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_080227F4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _08023D88
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08023DA4
sub_08023DA4: @ 0x08023DA4
	push {r4, r5, r6, lr}
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	movs r4, #0
_08023DB0:
	adds r1, r5, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_080227F4
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xa
	bls _08023DB0
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08023DCC
sub_08023DCC: @ 0x08023DCC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023A4C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023D48
	ldr r0, _08023E10 @ =gUnknown_03000559
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023E0A
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023DA4
_08023E0A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023E10: .4byte gUnknown_03000559

	thumb_func_start sub_08023E14
sub_08023E14: @ 0x08023E14
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023A4C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023D48
	ldr r0, _08023E58 @ =gUnknown_03000559
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023E52
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023DA4
_08023E52:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023E58: .4byte gUnknown_03000559

	thumb_func_start sub_08023E5C
sub_08023E5C: @ 0x08023E5C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023BAC
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023D14
	ldr r0, _08023EA0 @ =gUnknown_03000559
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023E9A
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023D7C
_08023E9A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023EA0: .4byte gUnknown_03000559

	thumb_func_start sub_08023EA4
sub_08023EA4: @ 0x08023EA4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r4, r3, #0x10
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023BAC
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023D14
	ldr r0, _08023EE8 @ =gUnknown_03000559
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023EE2
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_08023D7C
_08023EE2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08023EE8: .4byte gUnknown_03000559

	thumb_func_start sub_08023EEC
sub_08023EEC: @ 0x08023EEC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08023F58 @ =gUnknown_08090A1C
	ldr r0, [r2]
	ldr r4, [r0]
	ldrh r0, [r4, #4]
	ldrh r1, [r4, #8]
	lsls r3, r0, #0x10
	asrs r6, r3, #0x10
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	adds r7, r2, #0
	cmp r6, r5
	bge _08023F0E
	asrs r1, r3, #0x14
	asrs r0, r0, #0x14
	cmp r1, r0
	bne _08023F20
_08023F0E:
	cmp r6, r5
	ble _08023F9A
	asrs r1, r3, #0x14
	movs r2, #8
	ldrsh r0, [r4, r2]
	subs r0, #1
	asrs r0, r0, #4
	cmp r1, r0
	beq _08023F9A
_08023F20:
	ldr r0, [r7]
	ldr r4, [r0]
	ldrh r0, [r4, #4]
	lsls r2, r0, #0x10
	asrs r1, r2, #0x10
	movs r3, #8
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bge _08023F5C
	asrs r2, r2, #0x14
	ldrh r0, [r4, #0xc]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r4, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x14
	ldrh r1, [r4, #0xe]
	subs r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_08023DCC
	b _08023F82
	.align 2, 0
_08023F58: .4byte gUnknown_08090A1C
_08023F5C:
	asrs r2, r2, #0x14
	adds r2, #0xf
	ldrh r0, [r4, #0xc]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r4, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x14
	ldrh r1, [r4, #0xe]
	subs r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_08023E14
_08023F82:
	bl sub_08013AFC
	bl sub_08013B0C
	bl sub_08013B1C
	ldr r0, _08024000 @ =gUnknown_03000559
	ldrb r0, [r0]
	cmp r0, #1
	bne _08023F9A
	bl sub_08013AEC
_08023F9A:
	ldr r0, [r7]
	ldr r3, [r0]
	ldrh r0, [r3, #6]
	ldrh r1, [r3, #0xa]
	lsls r2, r0, #0x10
	asrs r5, r2, #0x10
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	cmp r5, r4
	bge _08023FB6
	asrs r1, r2, #0x14
	asrs r0, r0, #0x14
	cmp r1, r0
	bne _08023FC8
_08023FB6:
	cmp r5, r4
	ble _08024042
	asrs r1, r2, #0x14
	movs r2, #0xa
	ldrsh r0, [r3, r2]
	subs r0, #1
	asrs r0, r0, #4
	cmp r1, r0
	beq _08024042
_08023FC8:
	ldr r0, [r7]
	ldr r4, [r0]
	ldrh r0, [r4, #6]
	lsls r3, r0, #0x10
	asrs r1, r3, #0x10
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bge _08024004
	ldrh r2, [r4, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	ldrh r0, [r4, #0xc]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r3, r3, #0x14
	ldrh r1, [r4, #0xe]
	subs r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_08023E5C
	b _0802402A
	.align 2, 0
_08024000: .4byte gUnknown_03000559
_08024004:
	ldrh r2, [r4, #4]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	ldrh r0, [r4, #0xc]
	subs r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r3, r3, #0x14
	adds r3, #0xa
	ldrh r1, [r4, #0xe]
	subs r1, r3, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_08023EA4
_0802402A:
	bl sub_08013AFC
	bl sub_08013B0C
	bl sub_08013B1C
	ldr r0, _08024054 @ =gUnknown_03000559
	ldrb r0, [r0]
	cmp r0, #1
	bne _08024042
	bl sub_08013AEC
_08024042:
	ldr r0, [r7]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	strh r1, [r0, #8]
	ldrh r1, [r0, #6]
	strh r1, [r0, #0xa]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024054: .4byte gUnknown_03000559

	thumb_func_start sub_08024058
sub_08024058: @ 0x08024058
	push {r4, r5, lr}
	ldr r2, _080240A4 @ =gUnknown_08499590
	ldr r4, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r3, r1, #1
	ldr r5, _080240A8 @ =0x0000417A
	adds r2, r4, r5
	adds r2, r2, r3
	ldrh r2, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r2, r0
	ldr r3, _080240AC @ =0x00001432
	adds r4, r4, r3
	adds r4, r4, r2
	ldrb r5, [r4]
	movs r3, #0x1f
	ldr r2, _080240B0 @ =gUnknown_03004084
	ands r3, r5
	ldrb r2, [r2]
	adds r3, r3, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	strb r3, [r4]
	movs r2, #0xe0
	ands r2, r3
	bl sub_080240B4
	bl sub_08024268
	bl sub_080219AC
	bl sub_08026D68
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080240A4: .4byte gUnknown_08499590
_080240A8: .4byte 0x0000417A
_080240AC: .4byte 0x00001432
_080240B0: .4byte gUnknown_03004084

	thumb_func_start sub_080240B4
sub_080240B4: @ 0x080240B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp]
	ldr r4, _08024180 @ =gUnknown_030033F8
	ldr r3, _08024184 @ =gUnknown_08090A20
	ldr r2, [r3]
	ldr r5, [r2]
	lsrs r2, r1, #0x10
	mov r8, r2
	asrs r1, r1, #0xf
	ldr r6, _08024188 @ =0x0000417A
	adds r2, r5, r6
	adds r2, r2, r1
	mov ip, r2
	ldrh r1, [r2]
	lsrs r2, r0, #0x10
	mov sl, r2
	asrs r2, r0, #0x10
	adds r1, r1, r2
	lsls r1, r1, #1
	ldr r6, _0802418C @ =0x00000A22
	adds r0, r5, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r4]
	movs r4, #0
	ldr r1, _08024190 @ =gUnknown_08090A24
	ldr r7, [r1]
	ldr r0, _08024194 @ =0x0000FFFF
	adds r6, r0, #0
	ldrh r0, [r7]
	mov sb, r3
	cmp r0, r6
	beq _0802412A
	adds r3, r7, #0
	mov r1, ip
	ldrh r0, [r1]
	adds r0, r0, r2
	lsls r2, r0, #1
_08024112:
	ldr r1, _0802418C @ =0x00000A22
	adds r0, r5, r1
	adds r0, r0, r2
	ldrh r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	beq _0802412A
	adds r3, #2
	adds r4, #1
	ldrh r0, [r3]
	cmp r0, r6
	bne _08024112
_0802412A:
	adds r0, r4, #0
	movs r1, #5
	bl __divsi3
	lsls r2, r0, #2
	adds r2, r2, r0
	mov r4, sb
	ldr r0, [r4]
	ldr r3, [r0]
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r0, r0, #0xf
	ldr r4, _08024188 @ =0x0000417A
	adds r1, r3, r4
	adds r1, r1, r0
	mov r6, sl
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _0802418C @ =0x00000A22
	adds r3, r3, r1
	adds r3, r3, r0
	ldr r1, _08024198 @ =gUnknown_08499B0C
	ldr r4, [sp]
	lsrs r0, r4, #5
	adds r0, r2, r0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r2, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08024180: .4byte gUnknown_030033F8
_08024184: .4byte gUnknown_08090A20
_08024188: .4byte 0x0000417A
_0802418C: .4byte 0x00000A22
_08024190: .4byte gUnknown_08090A24
_08024194: .4byte 0x0000FFFF
_08024198: .4byte gUnknown_08499B0C

	thumb_func_start sub_0802419C
sub_0802419C: @ 0x0802419C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	movs r5, #0
	ldr r1, _08024254 @ =gUnknown_08090A28
	ldr r2, [r1]
	ldr r0, _08024258 @ =0x0000FFFF
	adds r6, r0, #0
	ldrh r0, [r2]
	mov sl, r1
	cmp r0, r6
	beq _080241FA
	ldr r0, _0802425C @ =gUnknown_08499590
	ldr r3, [r0]
	lsls r0, r7, #0x10
	asrs r0, r0, #0xf
	ldr r4, _08024260 @ =0x0000417A
	adds r1, r3, r4
	adds r1, r1, r0
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r4, r0, #1
_080241E2:
	ldr r1, _08024264 @ =0x00000A22
	adds r0, r3, r1
	adds r0, r0, r4
	ldrh r1, [r2]
	ldrh r0, [r0]
	cmp r1, r0
	beq _080241FA
	adds r2, #2
	adds r5, #1
	ldrh r0, [r2]
	cmp r0, r6
	bne _080241E2
_080241FA:
	adds r0, r5, #0
	movs r1, #5
	bl __divsi3
	lsls r1, r0, #2
	adds r3, r1, r0
	adds r4, r3, #0
	cmp r3, #4
	bgt _08024240
	ldr r0, _0802425C @ =gUnknown_08499590
	ldr r2, [r0]
	lsls r0, r7, #0x10
	asrs r0, r0, #0xf
	ldr r5, _08024260 @ =0x0000417A
	adds r1, r2, r5
	adds r1, r1, r0
	mov r5, r8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08024264 @ =0x00000A22
	adds r2, r2, r1
	adds r2, r2, r0
	mov r5, sl
	ldr r1, [r5]
	mov r5, sb
	lsrs r0, r5, #5
	adds r0, #0xa
	adds r0, r3, r0
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
_08024240:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08024254: .4byte gUnknown_08090A28
_08024258: .4byte 0x0000FFFF
_0802425C: .4byte gUnknown_08499590
_08024260: .4byte 0x0000417A
_08024264: .4byte 0x00000A22

	thumb_func_start sub_08024268
sub_08024268: @ 0x08024268
	push {lr}
	bl sub_080258CC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024274
sub_08024274: @ 0x08024274
	ldr r2, _08024284 @ =gUnknown_030040A4
	ldr r1, _08024288 @ =gUnknown_030033E4
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_08024284: .4byte gUnknown_030040A4
_08024288: .4byte gUnknown_030033E4

	thumb_func_start sub_0802428C
sub_0802428C: @ 0x0802428C
	ldr r2, _080242A4 @ =gUnknown_030033E4
	ldr r1, _080242A8 @ =gUnknown_030040A4
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r1, [r1, #2]
	strh r1, [r2, #2]
	ldr r2, _080242AC @ =gUnknown_030033E0
	lsls r0, r0, #4
	strh r0, [r2]
	lsls r1, r1, #4
	strh r1, [r2, #2]
	bx lr
	.align 2, 0
_080242A4: .4byte gUnknown_030033E4
_080242A8: .4byte gUnknown_030040A4
_080242AC: .4byte gUnknown_030033E0

	thumb_func_start sub_080242B0
sub_080242B0: @ 0x080242B0
	push {r4, lr}
	ldr r2, _080242F8 @ =gUnknown_08499590
	ldr r3, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	ldr r4, _080242FC @ =0x0000417A
	adds r2, r3, r4
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r2, _08024300 @ =0x00001432
	adds r1, r3, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	movs r4, #0xe0
	ands r4, r1
	movs r2, #0x1f
	ands r2, r1
	adds r3, #0x12
	adds r3, r3, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _08024328
	ldr r0, _08024304 @ =gUnknown_03004084
	ldrh r0, [r0]
	cmp r4, r0
	bne _08024328
	cmp r2, #0xb
	bgt _08024308
	cmp r2, #0xa
	bge _0802431E
	cmp r2, #6
	beq _0802430E
	b _08024328
	.align 2, 0
_080242F8: .4byte gUnknown_08499590
_080242FC: .4byte 0x0000417A
_08024300: .4byte 0x00001432
_08024304: .4byte gUnknown_03004084
_08024308:
	cmp r2, #0xe
	bne _08024328
	b _0802431E
_0802430E:
	ldr r0, _08024324 @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_08043050
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq _08024328
_0802431E:
	movs r0, #1
	b _0802432A
	.align 2, 0
_08024324: .4byte gUnknown_030033EC
_08024328:
	movs r0, #0
_0802432A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08024330
sub_08024330: @ 0x08024330
	push {lr}
	ldr r0, _08024348 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x28
	bl __umodsi3
	cmp r0, #0
	beq _0802434C
	cmp r0, #4
	beq _08024360
	b _0802436A
	.align 2, 0
_08024348: .4byte gUnknown_03004008
_0802434C:
	ldr r0, _08024358 @ =gUnknown_0810E6E0
	ldr r1, _0802435C @ =0x050001C0
	movs r2, #0x20
	bl sub_08011C68
	b _0802436A
	.align 2, 0
_08024358: .4byte gUnknown_0810E6E0
_0802435C: .4byte 0x050001C0
_08024360:
	ldr r0, _08024370 @ =gUnknown_0810E720
	ldr r1, _08024374 @ =0x050001C0
	movs r2, #0x20
	bl sub_08011C68
_0802436A:
	pop {r0}
	bx r0
	.align 2, 0
_08024370: .4byte gUnknown_0810E720
_08024374: .4byte 0x050001C0

	thumb_func_start sub_08024378
sub_08024378: @ 0x08024378
	push {r4, r5, lr}
	ldr r3, _080243E8 @ =gUnknown_03002B6C
	ldrb r2, [r3]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	ldr r3, _080243EC @ =gUnknown_03001FE8
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	movs r5, #2
	orrs r0, r5
	strb r0, [r3]
	ldr r2, _080243F0 @ =gUnknown_030030B4
	ldrb r0, [r2]
	ands r1, r0
	movs r4, #1
	orrs r1, r4
	strb r1, [r2]
	ldr r2, _080243F4 @ =gUnknown_0300251C
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08012358
	ldr r2, _080243F8 @ =gUnknown_030030E0
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldrb r0, [r2, #1]
	orrs r0, r5
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r1, _080243FC @ =gUnknown_03002020
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08024400 @ =gUnknown_03002B28
	movs r0, #0x10
	strh r0, [r1]
	bl sub_0801237C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080243E8: .4byte gUnknown_03002B6C
_080243EC: .4byte gUnknown_03001FE8
_080243F0: .4byte gUnknown_030030B4
_080243F4: .4byte gUnknown_0300251C
_080243F8: .4byte gUnknown_030030E0
_080243FC: .4byte gUnknown_03002020
_08024400: .4byte gUnknown_03002B28

	thumb_func_start sub_08024404
sub_08024404: @ 0x08024404
	push {lr}
	ldr r3, _08024444 @ =gUnknown_030030B4
	ldrb r1, [r3]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _08024448 @ =gUnknown_03001FE8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _0802444C @ =gUnknown_03002B6C
	ldrb r0, [r1]
	ands r2, r0
	movs r0, #2
	orrs r2, r0
	strb r2, [r1]
	ldr r2, _08024450 @ =gUnknown_0300251C
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08012358
	bl sub_0801237C
	pop {r0}
	bx r0
	.align 2, 0
_08024444: .4byte gUnknown_030030B4
_08024448: .4byte gUnknown_03001FE8
_0802444C: .4byte gUnknown_03002B6C
_08024450: .4byte gUnknown_0300251C

	thumb_func_start sub_08024454
sub_08024454: @ 0x08024454
	push {r4, lr}
	ldr r3, _080244C0 @ =gUnknown_030030B4
	ldrb r2, [r3]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	ldr r3, _080244C4 @ =gUnknown_03001FE8
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	movs r4, #1
	orrs r0, r4
	strb r0, [r3]
	ldr r2, _080244C8 @ =gUnknown_03002B6C
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2]
	ldr r2, _080244CC @ =gUnknown_0300251C
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08012358
	ldr r2, _080244D0 @ =gUnknown_030030E0
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldrb r0, [r2, #1]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r0, _080244D4 @ =gUnknown_03003FC0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	bne _080244E0
	ldr r1, _080244D8 @ =gUnknown_03002020
	movs r0, #0xa
	strh r0, [r1]
	ldr r1, _080244DC @ =gUnknown_03002B28
	movs r0, #8
	b _080244EA
	.align 2, 0
_080244C0: .4byte gUnknown_030030B4
_080244C4: .4byte gUnknown_03001FE8
_080244C8: .4byte gUnknown_03002B6C
_080244CC: .4byte gUnknown_0300251C
_080244D0: .4byte gUnknown_030030E0
_080244D4: .4byte gUnknown_03003FC0
_080244D8: .4byte gUnknown_03002020
_080244DC: .4byte gUnknown_03002B28
_080244E0:
	ldr r1, _080244F8 @ =gUnknown_03002020
	movs r0, #6
	strh r0, [r1]
	ldr r1, _080244FC @ =gUnknown_03002B28
	movs r0, #0x10
_080244EA:
	strh r0, [r1]
	bl sub_0801237C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080244F8: .4byte gUnknown_03002020
_080244FC: .4byte gUnknown_03002B28

	thumb_func_start sub_08024500
sub_08024500: @ 0x08024500
	push {r4, lr}
	ldr r3, _08024568 @ =gUnknown_03002B6C
	ldrb r1, [r3]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r3, _0802456C @ =gUnknown_03001FE8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	movs r4, #1
	orrs r0, r4
	strb r0, [r3]
	ldr r1, _08024570 @ =gUnknown_030030B4
	ldrb r0, [r1]
	ands r2, r0
	strb r2, [r1]
	ldr r2, _08024574 @ =gUnknown_0300251C
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08012358
	ldr r2, _08024578 @ =gUnknown_030030E0
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldrb r0, [r2, #1]
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r0, _0802457C @ =gUnknown_03002020
	movs r1, #0x10
	strh r1, [r0]
	ldr r0, _08024580 @ =gUnknown_03002B28
	strh r1, [r0]
	bl sub_0801237C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024568: .4byte gUnknown_03002B6C
_0802456C: .4byte gUnknown_03001FE8
_08024570: .4byte gUnknown_030030B4
_08024574: .4byte gUnknown_0300251C
_08024578: .4byte gUnknown_030030E0
_0802457C: .4byte gUnknown_03002020
_08024580: .4byte gUnknown_03002B28

	thumb_func_start sub_08024584
sub_08024584: @ 0x08024584
	push {lr}
	ldr r3, _080245C4 @ =gUnknown_03002B6C
	ldrb r1, [r3]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _080245C8 @ =gUnknown_03001FE8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _080245CC @ =gUnknown_030030B4
	ldrb r0, [r1]
	ands r2, r0
	movs r0, #1
	orrs r2, r0
	strb r2, [r1]
	ldr r2, _080245D0 @ =gUnknown_0300251C
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08012358
	bl sub_0801237C
	pop {r0}
	bx r0
	.align 2, 0
_080245C4: .4byte gUnknown_03002B6C
_080245C8: .4byte gUnknown_03001FE8
_080245CC: .4byte gUnknown_030030B4
_080245D0: .4byte gUnknown_0300251C

	thumb_func_start sub_080245D4
sub_080245D4: @ 0x080245D4
	push {r4, lr}
	ldr r3, _08024640 @ =gUnknown_03002B6C
	ldrb r2, [r3]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3]
	ldr r3, _08024644 @ =gUnknown_03001FE8
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	movs r4, #2
	orrs r0, r4
	strb r0, [r3]
	ldr r2, _08024648 @ =gUnknown_030030B4
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2]
	ldr r2, _0802464C @ =gUnknown_0300251C
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08012358
	ldr r2, _08024650 @ =gUnknown_030030E0
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	orrs r0, r4
	strb r0, [r2]
	ldrb r0, [r2, #1]
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r1, _08024654 @ =gUnknown_03002020
	movs r0, #6
	strh r0, [r1]
	ldr r1, _08024658 @ =gUnknown_03002B28
	movs r0, #0x10
	strh r0, [r1]
	bl sub_0801237C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08024640: .4byte gUnknown_03002B6C
_08024644: .4byte gUnknown_03001FE8
_08024648: .4byte gUnknown_030030B4
_0802464C: .4byte gUnknown_0300251C
_08024650: .4byte gUnknown_030030E0
_08024654: .4byte gUnknown_03002020
_08024658: .4byte gUnknown_03002B28

	thumb_func_start sub_0802465C
sub_0802465C: @ 0x0802465C
	push {lr}
	ldr r3, _08024698 @ =gUnknown_03002B6C
	ldrb r1, [r3]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _0802469C @ =gUnknown_03001FE8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r3]
	ldr r1, _080246A0 @ =gUnknown_030030B4
	ldrb r0, [r1]
	ands r2, r0
	movs r0, #1
	orrs r2, r0
	strb r2, [r1]
	ldr r2, _080246A4 @ =gUnknown_0300251C
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08012358
	pop {r0}
	bx r0
	.align 2, 0
_08024698: .4byte gUnknown_03002B6C
_0802469C: .4byte gUnknown_03001FE8
_080246A0: .4byte gUnknown_030030B4
_080246A4: .4byte gUnknown_0300251C

	thumb_func_start sub_080246A8
sub_080246A8: @ 0x080246A8
	push {lr}
	bl sub_08024584
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080246B4
sub_080246B4: @ 0x080246B4
	push {r4, lr}
	ldr r3, _080246D8 @ =gUnknown_08499CBC
	ldr r2, _080246DC @ =gUnknown_08090A2C
	ldr r0, [r2]
	ldr r0, [r0]
	lsrs r0, r0, #2
	movs r1, #0xf
	ands r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	adds r4, r2, #0
	cmp r0, #1
	beq _080246E0
	cmp r0, #1
	ble _080246F2
	cmp r0, #2
	beq _080246EA
	b _080246F2
	.align 2, 0
_080246D8: .4byte gUnknown_08499CBC
_080246DC: .4byte gUnknown_08090A2C
_080246E0:
	movs r0, #1
	movs r1, #8
	bl sub_0803F880
	b _080246F2
_080246EA:
	movs r0, #0
	movs r1, #8
	bl sub_0803F880
_080246F2:
	ldr r4, [r4]
	ldr r0, [r4]
	movs r1, #0x14
	bl Div
	adds r1, r0, #0
	cmp r0, #0
	bge _08024704
	adds r1, r0, #3
_08024704:
	asrs r1, r1, #2
	lsls r1, r1, #2
	subs r1, r0, r1
	movs r0, #0x48
	bl sub_0803F8E0
	ldr r1, [r4]
	movs r0, #0x48
	bl sub_0803FE50
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08024720
sub_08024720: @ 0x08024720
	push {r4, r5, r6, lr}
	ldr r0, _08024770 @ =gUnknown_03004008
	ldr r0, [r0]
	lsrs r5, r0, #2
	movs r0, #0xf
	ands r5, r0
	movs r4, #1
	ldr r6, _08024774 @ =gUnknown_08090A30
_08024730:
	ldr r0, [r6]
	ldr r1, [r0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _08024790
	adds r0, r4, #0
	bl sub_0804415C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802477C
	adds r0, r5, #0
	cmp r0, #0
	blt _0802477C
	ldr r1, _08024778 @ =gUnknown_0809139C
	lsls r0, r0, #1
	adds r0, r0, r1
	adds r1, r4, #0
	adds r1, #0xb
	lsls r1, r1, #5
	adds r1, #0x1e
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #2
	bl sub_0801368C
	b _08024790
	.align 2, 0
_08024770: .4byte gUnknown_03004008
_08024774: .4byte gUnknown_08090A30
_08024778: .4byte gUnknown_0809139C
_0802477C:
	adds r1, r4, #0
	adds r1, #0xb
	lsls r1, r1, #5
	adds r1, #0x1e
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, _080247A0 @ =gUnknown_0809139C
	movs r2, #2
	bl sub_0801368C
_08024790:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08024730
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080247A0: .4byte gUnknown_0809139C

	thumb_func_start sub_080247A4
sub_080247A4: @ 0x080247A4
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, _080247CC @ =0xFF4C0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xb
	bhi _080247D8
	ldr r0, _080247D0 @ =0x00000724
	bl sub_08014E44
	bl sub_08037B84
	ldr r0, _080247D4 @ =gUnknown_03003F68
	ldr r1, [r0]
	movs r0, #8
	bl sub_0801AC58
	b _0802480A
	.align 2, 0
_080247CC: .4byte 0xFF4C0000
_080247D0: .4byte 0x00000724
_080247D4: .4byte gUnknown_03003F68
_080247D8:
	ldr r0, _08024810 @ =0x00000A14
	bl sub_08014E44
	bl sub_08037B84
	ldr r4, _08024814 @ =gUnknown_085C77A0
	bl sub_0803866C
	lsls r0, r0, #2
	movs r1, #0x5c
	muls r1, r5, r1
	adds r0, r0, r1
	adds r2, r4, #0
	adds r2, #0x2c
	adds r0, r0, r2
	ldr r4, [r0]
	cmp r4, #0
	bne _08024800
	adds r0, r1, r2
	ldr r4, [r0]
_08024800:
	ldr r0, _08024818 @ =gUnknown_03003F68
	ldr r1, [r0]
	adds r0, r4, #0
	bl LZ77UnCompWram
_0802480A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08024810: .4byte 0x00000A14
_08024814: .4byte gUnknown_085C77A0
_08024818: .4byte gUnknown_03003F68

	thumb_func_start sub_0802481C
sub_0802481C: @ 0x0802481C
	push {lr}
	ldr r0, _0802482C @ =gUnknown_03003F68
	ldr r0, [r0]
	bl sub_08014ED4
	pop {r0}
	bx r0
	.align 2, 0
_0802482C: .4byte gUnknown_03003F68

	thumb_func_start sub_08024830
sub_08024830: @ 0x08024830
	push {r4, r5, lr}
	ldr r5, _080248D0 @ =gUnknown_0810E6E0
	ldr r4, _080248D4 @ =gUnknown_08499598
	ldr r0, [r4]
	adds r0, #0x56
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0x20
	bl sub_08013618
	ldr r0, [r4]
	adds r0, #0x92
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0xd0
	lsls r1, r1, #1
	movs r2, #0x20
	bl sub_08013618
	ldr r0, [r4]
	adds r0, #0xce
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0xe0
	lsls r1, r1, #1
	movs r2, #0x20
	bl sub_08013618
	ldr r0, [r4]
	movs r1, #0x85
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r5
	adds r1, #0xd6
	movs r2, #0x20
	bl sub_08013618
	movs r0, #8
	bl sub_0803F80C
	bl sub_0802D2EC
	ldr r0, _080248D8 @ =gUnknown_0809163C
	movs r1, #0x90
	lsls r1, r1, #2
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _080248DC @ =gUnknown_03003FC0
	adds r0, #0x2c
	ldrb r0, [r0]
	bl sub_08035020
	bl sub_08022A34
	ldr r4, _080248E0 @ =gUnknown_030033EC
	ldrh r0, [r4]
	bl sub_0801A5B0
	ldrh r0, [r4]
	bl sub_08043834
	ldrh r0, [r4]
	bl sub_0801A57C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080248D0: .4byte gUnknown_0810E6E0
_080248D4: .4byte gUnknown_08499598
_080248D8: .4byte gUnknown_0809163C
_080248DC: .4byte gUnknown_03003FC0
_080248E0: .4byte gUnknown_030033EC

	thumb_func_start sub_080248E4
sub_080248E4: @ 0x080248E4
	ldr r0, _080248F0 @ =gUnknown_08499590
	ldr r0, [r0]
	ldr r1, _080248F4 @ =0x0000421A
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080248F0: .4byte gUnknown_08499590
_080248F4: .4byte 0x0000421A

	thumb_func_start sub_080248F8
sub_080248F8: @ 0x080248F8
	ldr r0, _08024904 @ =gUnknown_08499590
	ldr r0, [r0]
	ldr r1, _08024908 @ =0x00004233
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08024904: .4byte gUnknown_08499590
_08024908: .4byte 0x00004233

	thumb_func_start sub_0802490C
sub_0802490C: @ 0x0802490C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r1, _08024928 @ =0xFF4C0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xb
	bls _08024930
	ldr r1, _0802492C @ =gUnknown_085C77A0
	movs r0, #0x5c
	muls r0, r2, r0
	adds r0, r0, r1
	ldrb r0, [r0, #0x18]
	b _08024940
	.align 2, 0
_08024928: .4byte 0xFF4C0000
_0802492C: .4byte gUnknown_085C77A0
_08024930:
	adds r0, r2, #0
	adds r0, #0x4c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CD14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_08024940:
	pop {r1}
	bx r1

	thumb_func_start sub_08024944
sub_08024944: @ 0x08024944
	push {lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r1, _08024968 @ =0xFF4C0000
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	cmp r0, #0xb
	bls _08024974
	ldr r2, _0802496C @ =gUnknown_08610A38
	ldr r1, _08024970 @ =gUnknown_085C77A0
	movs r0, #0x5c
	muls r0, r3, r0
	adds r0, r0, r1
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	b _08024980
	.align 2, 0
_08024968: .4byte 0xFF4C0000
_0802496C: .4byte gUnknown_08610A38
_08024970: .4byte gUnknown_085C77A0
_08024974:
	adds r0, r3, #0
	adds r0, #0x4c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0803CCEC
_08024980:
	pop {r1}
	bx r1

	thumb_func_start sub_08024984
sub_08024984: @ 0x08024984
	push {lr}
	adds r3, r0, #0
	ldr r2, _080249B8 @ =gUnknown_085C77A0
	ldr r0, _080249BC @ =gUnknown_03003FC0
	ldrb r1, [r0, #2]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x58
	ldrb r1, [r0]
	cmp r1, #0
	beq _080249A4
	movs r0, #0x1f
	ands r0, r3
	cmp r0, #8
	bne _080249C2
_080249A4:
	movs r0, #0xe0
	ands r0, r3
	cmp r0, #0
	beq _080249C0
	asrs r0, r0, #5
	bl sub_08042DE0
	adds r1, r0, #0
	b _080249C2
	.align 2, 0
_080249B8: .4byte gUnknown_085C77A0
_080249BC: .4byte gUnknown_03003FC0
_080249C0:
	movs r1, #0
_080249C2:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080249C8
sub_080249C8: @ 0x080249C8
	adds r1, r0, #0
	movs r0, #0xe0
	ands r1, r0
	cmp r1, #0
	beq _080249E8
	asrs r1, r1, #5
	ldr r0, _080249E4 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1a]
	b _080249EA
	.align 2, 0
_080249E4: .4byte gUnknown_08499598
_080249E8:
	movs r0, #0
_080249EA:
	bx lr

	thumb_func_start sub_080249EC
sub_080249EC: @ 0x080249EC
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r1, _08024A20 @ =gUnknown_085D5ABC
	movs r0, #0x5c
	muls r0, r2, r0
	adds r0, r0, r1
	ldrb r0, [r0, #0x1a]
	cmp r0, #0x10
	beq _08024A28
	ldr r2, _08024A24 @ =gUnknown_085D583C
	lsls r1, r3, #0x18
	asrs r1, r1, #0x18
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x19
	asrs r0, r0, #0x18
	b _08024A2A
	.align 2, 0
_08024A20: .4byte gUnknown_085D5ABC
_08024A24: .4byte gUnknown_085D583C
_08024A28:
	movs r0, #0
_08024A2A:
	bx lr

	thumb_func_start sub_08024A2C
sub_08024A2C: @ 0x08024A2C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _08024AAC @ =gUnknown_08499594
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #2
	ldr r4, [r0]
	adds r3, r4, r3
	str r3, [r5]
	ldr r0, _08024AB0 @ =gUnknown_08499590
	ldr r2, [r0]
	ldrb r1, [r3, #3]
	lsls r1, r1, #1
	ldr r6, _08024AB4 @ =0x0000417A
	adds r0, r2, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r1, [r3, #2]
	adds r0, r0, r1
	ldr r1, _08024AB8 @ =0x00001432
	adds r2, r2, r1
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x1f
	ands r1, r0
	movs r6, #0
	strh r1, [r5, #4]
	subs r4, r3, r4
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r2, r0, #4
	adds r0, r0, r2
	lsls r2, r0, #8
	adds r0, r0, r2
	lsls r2, r0, #0x10
	adds r0, r0, r2
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r2, [r3]
	bl sub_080249EC
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r5, #6]
	ldr r1, [r5]
	ldrb r0, [r1, #4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	strh r0, [r5, #8]
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x1c
	strh r0, [r5, #0xa]
	strh r6, [r5, #0x18]
	strh r6, [r5, #0x10]
	strh r6, [r5, #0x12]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08024AAC: .4byte gUnknown_08499594
_08024AB0: .4byte gUnknown_08499590
_08024AB4: .4byte 0x0000417A
_08024AB8: .4byte 0x00001432

	thumb_func_start sub_08024ABC
sub_08024ABC: @ 0x08024ABC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	mov r8, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #4]
	ldr r0, _08024B94 @ =gUnknown_08499594
	ldr r3, [r6]
	ldr r1, [r0]
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	mov sl, r4
	movs r7, #0
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	ldr r1, _08024B98 @ =gUnknown_085D5ABC
	ldrb r3, [r3]
	movs r0, #0x5c
	muls r0, r3, r0
	adds r0, r0, r1
	mov sb, r0
	lsls r2, r2, #0x10
	asrs r5, r2, #0x10
	cmp r5, #1
	bne _08024BAC
	mov r2, r8
	ldr r0, [r2]
	ldrb r1, [r0]
	adds r0, r3, #0
	movs r2, #1
	bl sub_080433F8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	str r3, [sp, #0xc]
	cmp r0, #0
	beq _08024B58
	ldr r0, _08024B9C @ =gUnknown_08499598
	ldr r0, [r0]
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1d]
	ldrb r1, [r1, #0x1e]
	ldr r2, [r6]
	ldrb r2, [r2]
	mov ip, r2
	mov r2, r8
	ldr r2, [r2]
	ldrb r3, [r2]
	mov sl, r3
	str r5, [sp]
	mov r2, ip
	bl sub_08043070
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
_08024B58:
	mov r1, sb
	ldrb r0, [r1, #0xe]
	cmp r0, #1
	bne _08024C20
	ldr r2, [r6]
	ldrh r1, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08024C20
	mov r0, r8
	ldr r3, [r0]
	ldrb r1, [r3, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08024BA0
	ldr r0, _08024B9C @ =gUnknown_08499598
	ldr r0, [r0]
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1d]
	ldrb r1, [r1, #0x1e]
	ldrb r2, [r2]
	str r7, [sp]
	movs r3, #0x19
	b _08024C18
	.align 2, 0
_08024B94: .4byte gUnknown_08499594
_08024B98: .4byte gUnknown_085D5ABC
_08024B9C: .4byte gUnknown_08499598
_08024BA0:
	ldr r0, _08024BA8 @ =gUnknown_08499598
	ldr r0, [r0]
	b _08024C06
	.align 2, 0
_08024BA8: .4byte gUnknown_08499598
_08024BAC:
	mov r1, sb
	ldrb r0, [r1, #0xe]
	cmp r0, r5
	bgt _08024C20
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_08042D50
	cmp r5, r0
	bgt _08024C20
	ldr r2, [r6]
	ldrh r1, [r2, #4]
	movs r0, #0xf0
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08024C20
	ldr r3, [sp, #4]
	cmp r3, #1
	bne _08024C20
	mov r0, r8
	ldr r3, [r0]
	ldrb r1, [r3, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08024C00
	ldr r0, _08024BFC @ =gUnknown_08499598
	ldr r0, [r0]
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1d]
	ldrb r1, [r1, #0x1e]
	ldrb r2, [r2]
	str r7, [sp]
	movs r3, #0x19
	b _08024C18
	.align 2, 0
_08024BFC: .4byte gUnknown_08499598
_08024C00:
	ldr r0, _08024C38 @ =gUnknown_08499598
	ldr r0, [r0]
	mov r4, sl
_08024C06:
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1d]
	ldrb r1, [r1, #0x1e]
	ldrb r2, [r2]
	ldrb r3, [r3]
	str r7, [sp]
_08024C18:
	bl sub_08043070
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08024C20:
	ldr r0, [sp, #8]
	cmp r7, r0
	bhi _08024C3C
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _08024C48
	movs r0, #5
	strh r0, [r6, #0x18]
	mov r2, sp
	ldrh r2, [r2, #8]
	strh r2, [r6, #0x10]
	b _08024C48
	.align 2, 0
_08024C38: .4byte gUnknown_08499598
_08024C3C:
	movs r0, #1
	strh r0, [r6, #0x18]
	strh r7, [r6, #0x10]
	ldrh r0, [r6, #0xa]
	subs r0, #1
	strh r0, [r6, #0xa]
_08024C48:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08024C58
sub_08024C58: @ 0x08024C58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp]
	ldr r4, _08024CC8 @ =gUnknown_08090A34
	ldr r0, [r4]
	ldr r3, [r5]
	ldr r1, [r0]
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	ldr r1, _08024CCC @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r0, r1, #0
	adds r0, #0x62
	movs r6, #0
	ldrsh r2, [r0, r6]
	mov sb, r2
	adds r1, #0x64
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r8, r0
	movs r6, #0x64
	ldrb r1, [r3, #4]
	movs r0, #0x7f
	ands r0, r1
	adds r7, r4, #0
	cmp r0, #0
	beq _08024CD0
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r4, r0, #1
	b _08024CD2
	.align 2, 0
_08024CC8: .4byte gUnknown_08090A34
_08024CCC: .4byte gUnknown_08499598
_08024CD0:
	movs r4, #0
_08024CD2:
	adds r0, r5, #0
	bl sub_08043304
	strh r0, [r5, #6]
	movs r1, #6
	ldrsh r0, [r5, r1]
	muls r0, r4, r0
	movs r1, #0xa
	bl Div
	strh r0, [r5, #0xe]
	ldr r7, [r7]
	ldr r2, [r5]
	ldr r1, [r7]
	subs r1, r2, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	ldrb r1, [r2]
	bl sub_08042CF8
	ldrh r1, [r5, #0xe]
	adds r1, r1, r0
	add r1, r8
	strh r1, [r5, #0xe]
	ldrh r0, [r5, #0x10]
	strh r0, [r5, #0xc]
	mov r2, sl
	cmp r2, #1
	bne _08024D26
	adds r0, r5, #0
	bl sub_0804338C
	adds r6, r6, r0
_08024D26:
	adds r0, r5, #0
	bl sub_0804334C
	adds r6, r6, r0
	add r6, sb
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	muls r0, r6, r0
	movs r1, #0x64
	bl Div
	strh r0, [r5, #0xc]
	strh r0, [r5, #0x14]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08024DC8
	ldr r0, _08024DD8 @ =gUnknown_03003FC0
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _08024D54
	ldr r2, [sp]
	cmp r2, #0
	beq _08024DC8
_08024D54:
	bl sub_080129E0
	adds r4, r0, #0
	ldr r1, [r5]
	ldr r0, [r7]
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	bl sub_08042E64
	adds r1, r0, #0
	adds r0, r4, #0
	bl DivRem
	adds r6, r0, #0
	ldr r1, [r5]
	ldr r0, [r7]
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	bl sub_08042EBC
	adds r4, r0, #0
	cmp r4, #0
	beq _08024DB6
	bl sub_080129E0
	adds r1, r4, #0
	bl DivRem
	adds r4, r0, #0
_08024DB6:
	ldrh r0, [r5, #0xc]
	adds r0, r0, r6
	subs r0, r0, r4
	strh r0, [r5, #0xc]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08024DC8
	movs r0, #0
	strh r0, [r5, #0xc]
_08024DC8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024DD8: .4byte gUnknown_03003FC0

	thumb_func_start sub_08024DDC
sub_08024DDC: @ 0x08024DDC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r0, [r4]
	ldrb r1, [r0, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08024DFE
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r5, r0, #1
	b _08024E00
_08024DFE:
	movs r5, #0
_08024E00:
	movs r1, #0xe
	ldrsh r0, [r6, r1]
	movs r7, #0xc8
	subs r0, r7, r0
	movs r2, #0x14
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	movs r1, #0x64
	bl Div
	strh r0, [r4, #0x14]
	movs r1, #0x14
	ldrsh r0, [r4, r1]
	muls r0, r5, r0
	movs r1, #0xa
	bl Div
	strh r0, [r4, #0x14]
	lsls r0, r0, #0x10
	ldr r1, _08024E58 @ =0x03E60000
	cmp r0, r1
	ble _08024E30
	ldr r0, _08024E5C @ =0x000003E7
	strh r0, [r4, #0x14]
_08024E30:
	movs r2, #0xe
	ldrsh r0, [r6, r2]
	subs r0, r7, r0
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	muls r0, r1, r0
	movs r1, #0x64
	bl Div
	strh r0, [r6, #0x12]
	ldr r1, [r6]
	ldrb r1, [r1, #4]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x19
	subs r1, r1, r0
	strh r1, [r6, #8]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08024E58: .4byte 0x03E60000
_08024E5C: .4byte 0x000003E7

	thumb_func_start sub_08024E60
sub_08024E60: @ 0x08024E60
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08024E88
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	movs r2, #0xc
	ldrsh r1, [r5, r2]
	adds r0, #1
	muls r0, r1, r0
	b _08024E8A
_08024E88:
	movs r0, #0
_08024E8A:
	movs r1, #0xa
	bl Div
	strh r0, [r5, #0xc]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08024DDC
	movs r1, #8
	ldrsh r0, [r4, r1]
	movs r1, #0
	cmp r0, #0
	blt _08024EA6
	ldrh r1, [r4, #8]
_08024EA6:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _08024EC0
	subs r0, #1
	movs r1, #0xa
	bl Div
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	adds r0, #1
	muls r0, r1, r0
	b _08024EC2
_08024EC0:
	movs r0, #0
_08024EC2:
	movs r1, #0xa
	bl Div
	strh r0, [r4, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08024DDC
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08024ED8
sub_08024ED8: @ 0x08024ED8
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r1, #8
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bgt _08024F0E
	movs r4, #8
	ldrsh r1, [r3, r4]
	cmp r1, #0
	bgt _08024F06
	cmp r0, r1
	bge _08024EFC
	movs r1, #0
	movs r0, #1
	strh r0, [r3, #8]
	strh r1, [r2, #8]
	b _08024F1A
_08024EFC:
	movs r1, #0
	movs r0, #1
	strh r0, [r2, #8]
	strh r1, [r3, #8]
	b _08024F1A
_08024F06:
	cmp r0, #0
	bge _08024F0E
	movs r0, #0
	strh r0, [r2, #8]
_08024F0E:
	movs r1, #8
	ldrsh r0, [r3, r1]
	cmp r0, #0
	bge _08024F1A
	movs r0, #0
	strh r0, [r3, #8]
_08024F1A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08024F20
sub_08024F20: @ 0x08024F20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsrs r0, r4, #0x10
	str r0, [sp]
	asrs r4, r4, #0x10
	ldr r0, _08025004 @ =gUnknown_08499594
	ldr r3, [r0]
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r3, r1, r3
	ldrb r0, [r3, #2]
	mov sl, r0
	ldrh r0, [r2]
	strb r0, [r3, #2]
	ldr r3, _08025004 @ =gUnknown_08499594
	ldr r0, [r3]
	adds r1, r1, r0
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x10
	mov r3, sl
	orrs r3, r0
	mov sl, r3
	ldrh r0, [r2, #2]
	strb r0, [r1, #3]
	ldr r6, _08025008 @ =gUnknown_08090A38
	ldr r0, [r6]
	mov sb, r0
	adds r1, r4, #0
	bl sub_08024A2C
	ldr r4, _0802500C @ =gUnknown_08090A3C
	ldr r7, [r4]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08024A2C
	mov r1, sb
	ldr r5, [r1]
	ldrb r1, [r5, #2]
	ldr r3, [r7]
	ldrb r0, [r3, #2]
	subs r2, r1, r0
	mov r8, r4
	cmp r2, #0
	bge _08024F94
	rsbs r2, r2, #0
_08024F94:
	ldrb r1, [r5, #3]
	ldrb r0, [r3, #3]
	subs r1, r1, r0
	cmp r1, #0
	bge _08024FA0
	rsbs r1, r1, #0
_08024FA0:
	adds r4, r2, r1
	mov r0, sb
	adds r1, r7, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_08024ABC
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	movs r3, #0
	bl sub_08024ABC
	mov r0, sb
	movs r1, #0
	movs r2, #1
	bl sub_08024C58
	adds r0, r7, #0
	movs r1, #1
	movs r2, #1
	bl sub_08024C58
	ldr r1, [r7]
	ldr r2, _08025004 @ =gUnknown_08499594
	ldr r0, [r2]
	subs r1, r1, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	bl sub_08043050
	movs r1, #4
	ands r1, r0
	cmp r1, #0
	beq _08025010
	adds r0, r7, #0
	mov r1, sb
	bl sub_08024E60
	b _08025018
	.align 2, 0
_08025004: .4byte gUnknown_08499594
_08025008: .4byte gUnknown_08090A38
_0802500C: .4byte gUnknown_08090A3C
_08025010:
	mov r0, sb
	adds r1, r7, #0
	bl sub_08024E60
_08025018:
	ldr r0, [r6]
	mov r3, r8
	ldr r1, [r3]
	bl sub_08024ED8
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	ldr r3, _08025054 @ =gUnknown_08499594
	ldr r2, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r2
	mov r1, sl
	strb r1, [r2, #2]
	ldr r1, [r3]
	adds r0, r0, r1
	mov r2, sl
	lsrs r1, r2, #0x10
	strb r1, [r0, #3]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025054: .4byte gUnknown_08499594

	thumb_func_start sub_08025058
sub_08025058: @ 0x08025058
	bx lr
	.align 2, 0

	thumb_func_start sub_0802505C
sub_0802505C: @ 0x0802505C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0802507C
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r4, r0, #1
	b _0802507E
_0802507C:
	movs r4, #0
_0802507E:
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _08025098
	subs r0, #1
	movs r1, #0xa
	bl Div
	subs r1, r4, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	b _0802509C
_08025098:
	lsls r0, r4, #0x10
	lsrs r1, r0, #0x10
_0802509C:
	ldr r0, [r5]
	bl sub_08025B24
	ldr r3, [r5]
	movs r0, #0x7f
	ldrb r1, [r5, #8]
	ands r1, r0
	ldrb r2, [r3, #4]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #4]
	ldr r3, [r5]
	ldrh r0, [r5, #0xa]
	movs r1, #0xf
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r3, #4]
	ldr r0, _080250E4 @ =0xFFFFF87F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r3, [r5]
	ldrb r1, [r3, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _080250DC
	adds r0, r3, #0
	bl sub_0804018C
_080250DC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080250E4: .4byte 0xFFFFF87F

	thumb_func_start sub_080250E8
sub_080250E8: @ 0x080250E8
	push {r4, r5, lr}
	ldr r5, _080251A0 @ =gUnknown_030013D0
	movs r1, #8
	ldrsh r0, [r5, r1]
	ldr r4, _080251A4 @ =gUnknown_08090A40
	cmp r0, #0
	bgt _0802513E
	ldr r0, [r4]
	ldr r2, _080251A8 @ =gUnknown_08499594
	ldr r1, [r0]
	ldr r2, [r2]
	subs r1, r1, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [r5]
	subs r2, r3, r2
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r2, r1, #4
	adds r1, r1, r2
	lsls r2, r1, #8
	adds r1, r1, r2
	lsls r2, r1, #0x10
	adds r1, r1, r2
	rsbs r1, r1, #0
	asrs r1, r1, #8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r3]
	bl sub_08026588
_0802513E:
	ldr r4, [r4]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0802518E
	ldr r0, _080251A8 @ =gUnknown_08499594
	ldr r1, [r5]
	ldr r2, [r0]
	subs r1, r1, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, [r4]
	subs r2, r3, r2
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r2, r1, #4
	adds r1, r1, r2
	lsls r2, r1, #8
	adds r1, r1, r2
	lsls r2, r1, #0x10
	adds r1, r1, r2
	rsbs r1, r1, #0
	asrs r1, r1, #8
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r3]
	bl sub_08026588
_0802518E:
	adds r0, r5, #0
	bl sub_0802505C
	adds r0, r4, #0
	bl sub_0802505C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080251A0: .4byte gUnknown_030013D0
_080251A4: .4byte gUnknown_08090A40
_080251A8: .4byte gUnknown_08499594

	thumb_func_start sub_080251AC
sub_080251AC: @ 0x080251AC
	push {lr}
	ldr r0, _080251B8 @ =gUnknown_030013D0
	bl sub_0802505C
	pop {r0}
	bx r0
	.align 2, 0
_080251B8: .4byte gUnknown_030013D0

	thumb_func_start sub_080251BC
sub_080251BC: @ 0x080251BC
	push {lr}
	cmp r1, #0
	bne _080251C8
	bl sub_080251D8
	b _080251D4
_080251C8:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08024F20
_080251D4:
	pop {r0}
	bx r0

	thumb_func_start sub_080251D8
sub_080251D8: @ 0x080251D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r1, r0, #0
	movs r6, #0
	movs r7, #0
	movs r0, #0
	mov r8, r0
	ldr r2, _08025230 @ =gUnknown_08499594
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, [r2]
	adds r5, r2, r0
	ldr r4, _08025234 @ =gUnknown_08090A44
	ldr r0, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_08024A2C
	ldrh r1, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08025240
	ldr r0, _08025238 @ =gUnknown_030033EC
	ldrh r2, [r0]
	ldr r0, _0802523C @ =gUnknown_08499598
	ldr r0, [r0]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1d]
	ldrb r1, [r1, #0x1e]
	ldrb r2, [r5]
	str r6, [sp]
	movs r3, #3
	bl sub_08043070
	adds r6, r0, #0
	b _08025272
	.align 2, 0
_08025230: .4byte gUnknown_08499594
_08025234: .4byte gUnknown_08090A44
_08025238: .4byte gUnknown_030033EC
_0802523C: .4byte gUnknown_08499598
_08025240:
	ldrb r0, [r5]
	movs r1, #3
	movs r2, #1
	bl sub_080433F8
	mov r8, r0
	cmp r0, #0
	beq _08025272
	ldr r0, _08025288 @ =gUnknown_030033EC
	ldrh r2, [r0]
	ldr r0, _0802528C @ =gUnknown_08499598
	ldr r0, [r0]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1d]
	ldrb r1, [r1, #0x1e]
	ldrb r2, [r5]
	movs r3, #1
	str r3, [sp]
	movs r3, #3
	bl sub_08043070
	adds r7, r0, #0
_08025272:
	cmp r6, r7
	bgt _08025290
	mov r2, r8
	cmp r2, #0
	beq _0802529E
	ldr r1, [r4]
	movs r0, #5
	strh r0, [r1, #0x18]
	strh r7, [r1, #0x10]
	b _0802529E
	.align 2, 0
_08025288: .4byte gUnknown_030033EC
_0802528C: .4byte gUnknown_08499598
_08025290:
	ldr r1, [r4]
	movs r0, #1
	strh r0, [r1, #0x18]
	strh r6, [r1, #0x10]
	ldrh r0, [r1, #0xa]
	subs r0, #1
	strh r0, [r1, #0xa]
_0802529E:
	ldr r5, [r4]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_08024C58
	ldr r0, [r5]
	ldrb r1, [r0, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080252CC
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	movs r2, #0x14
	ldrsh r1, [r5, r2]
	adds r0, #1
	muls r0, r1, r0
	b _080252CE
_080252CC:
	movs r0, #0
_080252CE:
	movs r1, #0xa
	bl Div
	ldr r1, [r4]
	strh r0, [r1, #0xc]
	strh r0, [r1, #0x14]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080252E8
sub_080252E8: @ 0x080252E8
	bx lr
	.align 2, 0

	thumb_func_start sub_080252EC
sub_080252EC: @ 0x080252EC
	push {lr}
	ldr r0, _08025300 @ =gUnknown_030013D0
	bl sub_080252E8
	ldr r0, _08025304 @ =gUnknown_030013B0
	bl sub_080252E8
	pop {r0}
	bx r0
	.align 2, 0
_08025300: .4byte gUnknown_030013D0
_08025304: .4byte gUnknown_030013B0

	thumb_func_start sub_08025308
sub_08025308: @ 0x08025308
	push {r4, lr}
	movs r4, #0
	movs r3, #1
	ldr r1, _08025338 @ =gUnknown_08499594
	ldr r2, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #8
	adds r2, r2, r1
	ldr r0, _0802533C @ =0xFFFFFD0C
	adds r2, r2, r0
_0802531E:
	ldrb r0, [r2]
	cmp r0, #0
	beq _08025326
	adds r4, #1
_08025326:
	adds r2, #0xc
	adds r3, #1
	cmp r3, #0x32
	ble _0802531E
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08025338: .4byte gUnknown_08499594
_0802533C: .4byte 0xFFFFFD0C

	thumb_func_start sub_08025340
sub_08025340: @ 0x08025340
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _08025370 @ =gUnknown_08499594
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	ldrb r2, [r1, #1]
	movs r0, #2
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r0, _08025374 @ =gUnknown_03003FC0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _0802536C
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r3, #0
	bl sub_080211DC
_0802536C:
	pop {r0}
	bx r0
	.align 2, 0
_08025370: .4byte gUnknown_08499594
_08025374: .4byte gUnknown_03003FC0

	thumb_func_start sub_08025378
sub_08025378: @ 0x08025378
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _080253A8 @ =gUnknown_08499594
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	ldrb r2, [r1, #1]
	movs r0, #0xfd
	ands r0, r2
	strb r0, [r1, #1]
	ldr r0, _080253AC @ =gUnknown_03003FC0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _080253A2
	adds r0, r3, #0
	movs r1, #1
	bl sub_080211DC
_080253A2:
	pop {r0}
	bx r0
	.align 2, 0
_080253A8: .4byte gUnknown_08499594
_080253AC: .4byte gUnknown_03003FC0

	thumb_func_start sub_080253B0
sub_080253B0: @ 0x080253B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _0802544C @ =gUnknown_08499590
	ldr r2, [r0]
	ldrb r1, [r4, #3]
	lsls r1, r1, #1
	ldr r3, _08025450 @ =0x0000417A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	ldr r1, _08025454 @ =0x00001432
	adds r2, r2, r1
	adds r2, r2, r0
	ldrb r3, [r2]
	ldr r2, _08025458 @ =gUnknown_08090A48
	ldr r1, [r2]
	ldrb r7, [r4]
	movs r0, #0x5c
	muls r0, r7, r0
	adds r1, #0x58
	adds r0, r0, r1
	movs r6, #0x1f
	ands r6, r3
	ldr r0, [r0]
	adds r0, r0, r6
	ldrb r5, [r0]
	ldrb r1, [r4, #1]
	movs r0, #8
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	bne _0802549E
	ldr r0, _0802545C @ =gUnknown_03004084
	movs r1, #0xe0
	ldrh r0, [r0]
	ands r3, r1
	cmp r0, r3
	bne _0802540E
	ldr r0, _08025460 @ =gUnknown_084995DA
	adds r0, r7, r0
	ldrb r0, [r0]
	cmp r0, r6
	beq _0802549E
_0802540E:
	ldrb r1, [r4, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0802541A
	movs r5, #5
_0802541A:
	ldr r0, _08025464 @ =gUnknown_030033EC
	ldrh r0, [r0]
	ldrb r1, [r4]
	bl sub_08042C68
	lsls r1, r5, #0x18
	asrs r1, r1, #0x18
	adds r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	cmp r1, #0
	bge _08025434
	movs r5, #0
_08025434:
	ldrb r2, [r4, #6]
	lsls r3, r2, #0x19
	lsrs r1, r3, #0x19
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bgt _08025468
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r4, #6]
	b _0802547A
	.align 2, 0
_0802544C: .4byte gUnknown_08499590
_08025450: .4byte 0x0000417A
_08025454: .4byte 0x00001432
_08025458: .4byte gUnknown_08090A48
_0802545C: .4byte gUnknown_03004084
_08025460: .4byte gUnknown_084995DA
_08025464: .4byte gUnknown_030033EC
_08025468:
	lsrs r0, r3, #0x19
	subs r0, r0, r5
	movs r1, #0x7f
	ands r0, r1
	movs r1, #0x80
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #6]
_0802547A:
	ldrb r1, [r4, #6]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	bne _0802549E
	mov r3, r8
	ldr r2, [r3]
	ldrb r1, [r4]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r1, [r0, #0x1a]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _0802549E
	movs r0, #1
	b _080254A0
_0802549E:
	movs r0, #0
_080254A0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080254AC
sub_080254AC: @ 0x080254AC
	push {r4, r5, r6, r7, lr}
	ldr r1, _080254F4 @ =gUnknown_08090A4C
	ldr r0, [r1]
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r7, r1, #0
	cmp r2, #0x32
	bhi _0802550A
	ldr r4, _080254F8 @ =gUnknown_03003F2C
	ldr r6, _080254FC @ =gUnknown_08499594
	ldr r5, [r6]
_080254C6:
	ldrh r0, [r4]
	adds r0, r2, r0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08025500
	ldrb r0, [r1, #1]
	movs r3, #1
	ands r3, r0
	cmp r3, #0
	bne _08025500
	ldr r1, [r7]
	strh r2, [r1]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x31
	ble _0802554A
	strh r3, [r1]
	b _0802554A
	.align 2, 0
_080254F4: .4byte gUnknown_08090A4C
_080254F8: .4byte gUnknown_03003F2C
_080254FC: .4byte gUnknown_08499594
_08025500:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x32
	bls _080254C6
_0802550A:
	movs r2, #1
	adds r3, r7, #0
	ldr r0, [r3]
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #1
	cmp r2, r0
	bge _08025578
	ldr r4, _0802555C @ =gUnknown_03003F2C
	ldr r6, _08025560 @ =gUnknown_08499594
	ldr r5, [r6]
_08025520:
	ldrh r0, [r4]
	adds r0, r2, r0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldrb r0, [r1]
	cmp r0, #0
	beq _08025564
	ldrb r0, [r1, #1]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _08025564
	ldr r3, [r3]
	strh r2, [r3]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x31
	ble _0802554A
	strh r1, [r3]
_0802554A:
	ldrh r0, [r4]
	adds r0, r2, r0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r6]
	adds r0, r0, r1
	b _0802557A
	.align 2, 0
_0802555C: .4byte gUnknown_03003F2C
_08025560: .4byte gUnknown_08499594
_08025564:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r7, #0
	ldr r0, [r3]
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #1
	cmp r2, r0
	blt _08025520
_08025578:
	movs r0, #0
_0802557A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08025580
sub_08025580: @ 0x08025580
	push {r4, r5, lr}
	ldr r4, _08025594 @ =gUnknown_030032C0
	ldrh r5, [r4]
	bl sub_080254AC
	strh r5, [r4]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08025594: .4byte gUnknown_030032C0

	thumb_func_start sub_08025598
sub_08025598: @ 0x08025598
	push {r4, lr}
	ldr r2, _080255DC @ =gUnknown_08499590
	ldr r3, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	ldr r4, _080255E0 @ =0x0000417A
	adds r2, r3, r4
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r1, _080255E4 @ =0x0000051A
	adds r3, r3, r1
	adds r3, r3, r0
	ldrb r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080255D8
	lsrs r1, r0, #0x16
	ldr r0, _080255E8 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080255EC
_080255D8:
	movs r0, #0
	b _080255EE
	.align 2, 0
_080255DC: .4byte gUnknown_08499590
_080255E0: .4byte 0x0000417A
_080255E4: .4byte 0x0000051A
_080255E8: .4byte gUnknown_08499598
_080255EC:
	movs r0, #1
_080255EE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080255F4
sub_080255F4: @ 0x080255F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x10
	lsrs r4, r2, #0x10
	movs r6, #0
	ldr r0, _080256FC @ =gUnknown_08499594
	ldr r1, [r0]
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	lsls r2, r0, #0x10
	cmp r3, #0
	beq _08025710
	ldrb r1, [r3, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08025710
	lsrs r1, r2, #0x16
	ldr r0, _08025700 @ =gUnknown_08499598
	ldr r3, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x58
	ldrb r1, [r0]
	movs r0, #2
	mov ip, r0
	ands r0, r1
	cmp r0, #0
	bne _08025710
	ldr r7, _08025704 @ =gUnknown_08499590
	ldr r2, [r7]
	lsls r0, r4, #0x10
	asrs r5, r0, #0x10
	lsls r1, r5, #1
	ldr r4, _08025708 @ =0x0000417A
	adds r0, r2, r4
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r4, r8
	lsls r0, r4, #0x10
	asrs r4, r0, #0x10
	adds r1, r1, r4
	ldr r0, _0802570C @ =0x00001432
	adds r2, r2, r0
	adds r2, r2, r1
	ldrb r1, [r2]
	lsrs r1, r1, #5
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r1, [r0, #0x1c]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	bne _08025710
	cmp r4, #0
	ble _08025698
	subs r0, r4, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_08025598
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08025698:
	cmp r5, #0
	ble _080256B2
	subs r1, r5, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08025598
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080256B2:
	ldr r0, [r7]
	ldrh r0, [r0]
	subs r0, #1
	cmp r4, r0
	bge _080256D2
	adds r0, r4, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r5, #0
	bl sub_08025598
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080256D2:
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r5, r0
	bge _080256F2
	adds r1, r5, #1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	bl sub_08025598
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080256F2:
	cmp r6, #0
	bne _08025710
	movs r0, #0
	b _08025712
	.align 2, 0
_080256FC: .4byte gUnknown_08499594
_08025700: .4byte gUnknown_08499598
_08025704: .4byte gUnknown_08499590
_08025708: .4byte 0x0000417A
_0802570C: .4byte 0x00001432
_08025710:
	movs r0, #1
_08025712:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802571C
sub_0802571C: @ 0x0802571C
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08025740 @ =gUnknown_08499594
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #3]
	bl sub_080255F4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1
	.align 2, 0
_08025740: .4byte gUnknown_08499594

	thumb_func_start sub_08025744
sub_08025744: @ 0x08025744
	push {r4, lr}
	ldr r2, _0802579C @ =gUnknown_08499590
	ldr r3, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	ldr r4, _080257A0 @ =0x0000417A
	adds r2, r3, r4
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r2, r0, r2
	ldr r1, _080257A4 @ =0x0000051A
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r4, [r0]
	cmp r4, #0
	beq _08025796
	ldr r1, _080257A8 @ =0x00001E42
	adds r0, r3, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025796
	adds r0, r3, #0
	adds r0, #0x12
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080257B0
	ldr r0, _080257AC @ =gUnknown_08499594
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080257B0
_08025796:
	movs r0, #0
	b _080257BA
	.align 2, 0
_0802579C: .4byte gUnknown_08499590
_080257A0: .4byte 0x0000417A
_080257A4: .4byte 0x0000051A
_080257A8: .4byte 0x00001E42
_080257AC: .4byte gUnknown_08499594
_080257B0:
	adds r0, r4, #0
	bl sub_08026F5C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
_080257BA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080257C0
sub_080257C0: @ 0x080257C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _080258A8 @ =gUnknown_08499594
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, [r2]
	adds r3, r2, r1
	movs r6, #0
	ldrb r0, [r3, #2]
	mov r8, r0
	ldrb r4, [r3, #3]
	cmp r3, #0
	beq _080258C0
	ldrb r1, [r3, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080258C0
	subs r1, r3, r2
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	lsls r0, r0, #0xe
	asrs r0, r0, #0x10
	bl sub_08026F5C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080258C0
	ldr r1, _080258AC @ =gUnknown_084995FE
	ldr r0, _080258B0 @ =gUnknown_030033EC
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r7, _080258B4 @ =gUnknown_08499590
	ldr r2, [r7]
	adds r5, r4, #0
	lsls r3, r5, #1
	ldr r4, _080258B8 @ =0x0000417A
	adds r1, r2, r4
	adds r1, r1, r3
	ldrh r1, [r1]
	mov r4, r8
	adds r1, r1, r4
	ldr r3, _080258BC @ =0x00001432
	adds r2, r2, r3
	adds r2, r2, r1
	ldrb r1, [r2]
	bl sub_08026FD0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080258C0
	cmp r4, #0
	ble _08025852
	subs r0, r4, #1
	adds r1, r5, #0
	bl sub_08025744
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08025852:
	cmp r5, #0
	ble _08025868
	subs r1, r5, #1
	adds r0, r4, #0
	bl sub_08025744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08025868:
	ldr r0, [r7]
	ldrh r0, [r0]
	subs r0, #1
	cmp r4, r0
	bge _08025884
	adds r0, r4, #1
	adds r1, r5, #0
	bl sub_08025744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_08025884:
	ldr r0, [r7]
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r5, r0
	bge _080258A0
	adds r1, r5, #1
	adds r0, r4, #0
	bl sub_08025744
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r6, r0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080258A0:
	cmp r6, #0
	bne _080258C0
	movs r0, #0
	b _080258C2
	.align 2, 0
_080258A8: .4byte gUnknown_08499594
_080258AC: .4byte gUnknown_084995FE
_080258B0: .4byte gUnknown_030033EC
_080258B4: .4byte gUnknown_08499590
_080258B8: .4byte 0x0000417A
_080258BC: .4byte 0x00001432
_080258C0:
	movs r0, #1
_080258C2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080258CC
sub_080258CC: @ 0x080258CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08025ACC @ =gUnknown_08090A50
	ldr r4, [r0]
	ldr r2, [r4]
	movs r3, #4
	ldrsh r1, [r2, r3]
	mov sb, r0
	cmp r1, #0
	bge _080258E6
	adds r1, #0xf
_080258E6:
	asrs r0, r1, #4
	strh r0, [r2, #0xc]
	movs r7, #6
	ldrsh r0, [r2, r7]
	cmp r0, #0
	bge _080258F4
	adds r0, #0xf
_080258F4:
	asrs r0, r0, #4
	strh r0, [r2, #0xe]
	ldrh r0, [r2, #4]
	strh r0, [r2, #8]
	ldrh r0, [r2, #6]
	strh r0, [r2, #0xa]
	bl sub_08023860
	bl sub_080213AC
	movs r1, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r1, r0
	bge _08025964
	mov r8, r4
_08025914:
	movs r2, #0
	mov r3, r8
	ldr r0, [r3]
	adds r7, r1, #1
	ldrh r0, [r0]
	cmp r2, r0
	bge _08025958
	ldr r4, _08025AD0 @ =gUnknown_08499590
	lsls r3, r1, #1
	ldr r6, _08025AD4 @ =0x0000417A
	movs r5, #0
	ldr r0, _08025AD8 @ =0x0000051A
	mov ip, r0
_0802592E:
	ldr r1, [r4]
	adds r0, r1, r6
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r0, r0, r2
	adds r1, #0x12
	adds r1, r1, r0
	strb r5, [r1]
	ldr r1, [r4]
	adds r0, r1, r6
	adds r0, r0, r3
	ldrh r0, [r0]
	adds r0, r0, r2
	add r1, ip
	adds r1, r1, r0
	strb r5, [r1]
	adds r2, #1
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r2, r0
	blt _0802592E
_08025958:
	adds r1, r7, #0
	mov r2, r8
	ldr r0, [r2]
	ldrh r0, [r0, #2]
	cmp r1, r0
	blt _08025914
_08025964:
	movs r5, #1
	ldr r3, _08025ADC @ =gUnknown_08499594
	mov ip, r3
	movs r7, #0xc
_0802596C:
	mov r0, ip
	ldr r4, [r0]
	adds r3, r7, r4
	ldrb r0, [r3]
	cmp r0, #0
	beq _08025A12
	ldrb r1, [r3, #1]
	movs r0, #6
	ands r0, r1
	cmp r0, #2
	beq _08025A12
	mov r1, sb
	ldr r1, [r1]
	mov r8, r1
	ldr r2, [r1]
	ldrb r1, [r3, #3]
	lsls r1, r1, #1
	ldr r6, _08025AD4 @ =0x0000417A
	adds r0, r2, r6
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r0, [r3, #2]
	adds r1, r1, r0
	ldr r3, _08025AD8 @ =0x0000051A
	adds r2, r2, r3
	adds r2, r2, r1
	ldrb r1, [r2]
	cmp r1, #0
	beq _080259B8
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0, #1]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08025A12
_080259B8:
	strb r5, [r2]
	mov r1, ip
	ldr r0, [r1]
	adds r3, r7, r0
	ldrb r1, [r3, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08025A12
	ldr r0, _08025AE0 @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _08025AE4 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1b]
	mov r1, r8
	ldr r2, [r1]
	ldrb r4, [r3, #3]
	ldrb r3, [r3, #2]
	cmp r0, #2
	beq _08025A00
	lsls r1, r4, #1
	adds r0, r2, r6
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, r1, r3
	mov r8, r1
	ldr r1, _08025AE8 @ =0x00001E42
	adds r0, r2, r1
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025A12
_08025A00:
	lsls r1, r4, #1
	adds r0, r2, r6
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, r1, r3
	adds r0, r2, #0
	adds r0, #0x12
	adds r0, r0, r1
	strb r5, [r0]
_08025A12:
	adds r7, #0xc
	adds r5, #1
	cmp r5, #0xff
	ble _0802596C
	movs r5, #1
	ldr r2, _08025ADC @ =gUnknown_08499594
	mov r8, r2
	movs r4, #0xc
_08025A22:
	mov r3, r8
	ldr r0, [r3]
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08025AAA
	ldrb r1, [r1, #1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne _08025AAA
	ldr r0, _08025AE0 @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _08025AE4 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1b]
	cmp r0, #2
	beq _08025AAA
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	bl sub_0802571C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08025A88
	mov r7, sb
	ldr r0, [r7]
	ldr r3, [r0]
	mov r0, r8
	ldr r2, [r0]
	adds r2, r4, r2
	ldrb r1, [r2, #3]
	lsls r1, r1, #1
	ldr r7, _08025AD4 @ =0x0000417A
	adds r0, r3, r7
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r0, [r2, #2]
	adds r1, r1, r0
	ldr r0, _08025AE8 @ =0x00001E42
	adds r3, r3, r0
	adds r3, r3, r1
	ldrb r0, [r3]
	cmp r0, #0
	bne _08025AAA
_08025A88:
	mov r1, sb
	ldr r0, [r1]
	ldr r3, [r0]
	mov r7, r8
	ldr r2, [r7]
	adds r2, r4, r2
	ldrb r1, [r2, #3]
	lsls r1, r1, #1
	ldr r7, _08025AD4 @ =0x0000417A
	adds r0, r3, r7
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r0, [r2, #2]
	adds r1, r1, r0
	adds r3, #0x12
	adds r3, r3, r1
	strb r6, [r3]
_08025AAA:
	adds r4, #0xc
	adds r5, #1
	cmp r5, #0xff
	ble _08025A22
	bl sub_08021D10
	bl sub_08022580
	bl sub_080227A8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025ACC: .4byte gUnknown_08090A50
_08025AD0: .4byte gUnknown_08499590
_08025AD4: .4byte 0x0000417A
_08025AD8: .4byte 0x0000051A
_08025ADC: .4byte gUnknown_08499594
_08025AE0: .4byte gUnknown_030033EC
_08025AE4: .4byte gUnknown_08499598
_08025AE8: .4byte 0x00001E42

	thumb_func_start sub_08025AEC
sub_08025AEC: @ 0x08025AEC
	ldr r0, _08025B10 @ =gUnknown_03003F2C
	ldrh r0, [r0]
	adds r2, r0, #1
	adds r3, r0, #0
	adds r3, #0x33
	cmp r2, r3
	bge _08025B20
	ldr r0, _08025B14 @ =gUnknown_08499594
	ldr r1, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r0, r1
_08025B06:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08025B18
	adds r0, r1, #0
	b _08025B22
	.align 2, 0
_08025B10: .4byte gUnknown_03003F2C
_08025B14: .4byte gUnknown_08499594
_08025B18:
	adds r1, #0xc
	adds r2, #1
	cmp r2, r3
	blt _08025B06
_08025B20:
	movs r0, #0
_08025B22:
	bx lr

	thumb_func_start sub_08025B24
sub_08025B24: @ 0x08025B24
	bx lr
	.align 2, 0

	thumb_func_start sub_08025B28
sub_08025B28: @ 0x08025B28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08025B50 @ =gUnknown_08499598
	ldr r3, [r2]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, [r2, #4]
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r1, _08025B54 @ =0x000F423F
	cmp r0, r1
	bls _08025B4C
	str r1, [r2, #4]
_08025B4C:
	bx lr
	.align 2, 0
_08025B50: .4byte gUnknown_08499598
_08025B54: .4byte 0x000F423F

	thumb_func_start sub_08025B58
sub_08025B58: @ 0x08025B58
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08025B78 @ =gUnknown_08499598
	ldr r3, [r2]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, _08025B7C @ =0x000F423F
	cmp r0, r1
	bls _08025B76
	str r1, [r2]
_08025B76:
	bx lr
	.align 2, 0
_08025B78: .4byte gUnknown_08499598
_08025B7C: .4byte 0x000F423F

	thumb_func_start sub_08025B80
sub_08025B80: @ 0x08025B80
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r4, #6]
	lsls r3, r2, #0x19
	lsrs r0, r3, #0x19
	cmp r0, r1
	blo _08025BA4
	subs r0, r0, r1
	movs r1, #0x7f
	ands r0, r1
	movs r1, #0x80
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #6]
	b _08025BAC
_08025BA4:
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r4, #6]
_08025BAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025BB4
sub_08025BB4: @ 0x08025BB4
	push {lr}
	bl sub_08035740
	ldr r0, _08025BD4 @ =gUnknown_03003FC0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _08025BCE
	ldr r0, _08025BD8 @ =gUnknown_030040D8
	ldr r0, [r0]
	ldr r1, _08025BDC @ =gUnknown_03004074
	ldrb r1, [r1]
	bl sub_08025B80
_08025BCE:
	pop {r0}
	bx r0
	.align 2, 0
_08025BD4: .4byte gUnknown_03003FC0
_08025BD8: .4byte gUnknown_030040D8
_08025BDC: .4byte gUnknown_03004074

	thumb_func_start sub_08025BE0
sub_08025BE0: @ 0x08025BE0
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r5, #0
	strb r4, [r3]
	strb r5, [r3, #1]
	ldrb r1, [r3, #6]
	movs r2, #0x7f
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3, #6]
	ldrb r1, [r3, #4]
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x64
	orrs r0, r1
	strb r0, [r3, #4]
	ldr r1, _08025C48 @ =gUnknown_085D5ABC
	movs r0, #0x5c
	muls r0, r4, r0
	adds r0, r0, r1
	ldrb r1, [r0, #0x10]
	ands r2, r1
	strb r2, [r3, #6]
	ldrb r1, [r0, #0xb]
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #7
	ldrh r2, [r3, #4]
	ldr r0, _08025C4C @ =0xFFFFF87F
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldrb r1, [r3, #5]
	movs r0, #7
	ands r0, r1
	strb r0, [r3, #5]
	strb r5, [r3, #7]
	strb r5, [r3, #8]
	movs r0, #0
	strb r0, [r3, #9]
	strb r5, [r3, #0xa]
	movs r0, #1
	strb r0, [r3, #0xb]
	cmp r4, #2
	bgt _08025C50
	cmp r4, #1
	blt _08025C50
	strb r5, [r3, #0xb]
	b _08025C54
	.align 2, 0
_08025C48: .4byte gUnknown_085D5ABC
_08025C4C: .4byte 0xFFFFF87F
_08025C50:
	movs r0, #4
	strb r0, [r3, #0xb]
_08025C54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08025C5C
sub_08025C5C: @ 0x08025C5C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	bl sub_08025AEC
	adds r4, r0, #0
	cmp r4, #0
	beq _08025C90
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	bl sub_08025BE0
	strb r7, [r4, #2]
	strb r6, [r4, #3]
	ldr r0, _08025C8C @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_08025D20
	adds r0, r4, #0
	b _08025C92
	.align 2, 0
_08025C8C: .4byte gUnknown_030033EC
_08025C90:
	movs r0, #0
_08025C92:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08025C98
sub_08025C98: @ 0x08025C98
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08025C5C
	adds r4, r0, #0
	cmp r4, #0
	beq _08025CC0
	ldrb r1, [r4, #1]
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #1]
	bl sub_080258CC
	adds r0, r4, #0
	b _08025CC2
_08025CC0:
	movs r0, #0
_08025CC2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08025CC8
sub_08025CC8: @ 0x08025CC8
	push {r4, lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_08025C5C
	adds r4, r0, #0
	cmp r4, #0
	beq _08025CE8
	bl sub_080258CC
	adds r0, r4, #0
	b _08025CEA
_08025CE8:
	movs r0, #0
_08025CEA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08025CF0
sub_08025CF0: @ 0x08025CF0
	ldr r1, _08025D04 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x3a
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_08025D04: .4byte gUnknown_08499598

	thumb_func_start sub_08025D08
sub_08025D08: @ 0x08025D08
	ldr r1, _08025D1C @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x3b
	ldrb r0, [r1]
	bx lr
	.align 2, 0
_08025D1C: .4byte gUnknown_08499598

	thumb_func_start sub_08025D20
sub_08025D20: @ 0x08025D20
	ldr r1, _08025D3C @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x3a
	ldrb r2, [r1]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _08025D3A
	adds r0, r2, #1
	strb r0, [r1]
_08025D3A:
	bx lr
	.align 2, 0
_08025D3C: .4byte gUnknown_08499598

	thumb_func_start sub_08025D40
sub_08025D40: @ 0x08025D40
	ldr r1, _08025D5C @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x3b
	ldrb r2, [r1]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _08025D5A
	adds r0, r2, #1
	strb r0, [r1]
_08025D5A:
	bx lr
	.align 2, 0
_08025D5C: .4byte gUnknown_08499598

	thumb_func_start sub_08025D60
sub_08025D60: @ 0x08025D60
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, _08025DB0 @ =gUnknown_08090A54
	ldr r7, [r5]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r7]
	adds r6, r1, r0
	adds r0, r6, #0
	bl sub_0802A5C4
	asrs r4, r4, #6
	adds r4, #1
	adds r0, r4, #0
	bl sub_08025D40
	ldrb r0, [r6, #7]
	adds r4, r5, #0
	cmp r0, #0
	beq _08025DC2
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r7]
	adds r5, r1, r0
	ldrb r1, [r5, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08025DB4
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r1, r0, #1
	b _08025DB6
	.align 2, 0
_08025DB0: .4byte gUnknown_08090A54
_08025DB4:
	movs r1, #0
_08025DB6:
	adds r0, r5, #0
	bl sub_08025B24
	ldrb r0, [r6, #7]
	bl sub_08025D60
_08025DC2:
	ldrb r0, [r6, #8]
	cmp r0, #0
	beq _08025DFE
	ldr r2, [r4]
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r5, r1, r0
	ldrb r1, [r5, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08025DF0
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r1, r0, #1
	b _08025DF2
_08025DF0:
	movs r1, #0
_08025DF2:
	adds r0, r5, #0
	bl sub_08025B24
	ldrb r0, [r6, #8]
	bl sub_08025D60
_08025DFE:
	movs r0, #0
	strb r0, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08025E08
sub_08025E08: @ 0x08025E08
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r1
	adds r4, r2, #0
	ldr r5, _08025E60 @ =gUnknown_030033EC
	ldrh r0, [r5]
	adds r1, r4, #0
	bl sub_08042C9C
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r6, r1, #0
	ldrh r1, [r5]
	ldr r0, _08025E64 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, r6
	blo _08025E68
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	mov r2, r8
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r2, r4, #0x10
	asrs r2, r2, #0x10
	bl sub_08025C98
	adds r4, r0, #0
	cmp r4, #0
	beq _08025E68
	ldrh r0, [r5]
	adds r1, r6, #0
	bl sub_08025B28
	adds r0, r4, #0
	b _08025E6A
	.align 2, 0
_08025E60: .4byte gUnknown_030033EC
_08025E64: .4byte gUnknown_08499598
_08025E68:
	movs r0, #0
_08025E6A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08025E74
sub_08025E74: @ 0x08025E74
	push {r4, lr}
	ldr r4, _08025E98 @ =gUnknown_08499594
	movs r3, #0
	movs r2, #0
	movs r1, #0xff
_08025E7E:
	ldr r0, [r4]
	adds r0, r2, r0
	strb r3, [r0]
	adds r2, #0xc
	subs r1, #1
	cmp r1, #0
	bge _08025E7E
	movs r1, #0
	ldr r0, _08025E9C @ =gUnknown_030032C0
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08025E98: .4byte gUnknown_08499594
_08025E9C: .4byte gUnknown_030032C0

	thumb_func_start sub_08025EA0
sub_08025EA0: @ 0x08025EA0
	push {r4, r5, r6, r7, lr}
	ldr r1, _08025EE8 @ =gUnknown_03003F2C
	ldrh r3, [r1]
	adds r0, r3, #0
	adds r0, #0x33
	cmp r3, r0
	bge _08025EE0
	ldr r7, _08025EEC @ =gUnknown_08499594
	adds r6, r1, #0
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r4, r0, #2
	movs r5, #8
_08025EBA:
	ldr r0, [r7]
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08025ED4
	ldrb r2, [r1, #1]
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	bne _08025ED4
	movs r0, #0xfe
	ands r0, r2
	strb r0, [r1, #1]
_08025ED4:
	adds r4, #0xc
	adds r3, #1
	ldrh r0, [r6]
	adds r0, #0x33
	cmp r3, r0
	blt _08025EBA
_08025EE0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025EE8: .4byte gUnknown_03003F2C
_08025EEC: .4byte gUnknown_08499594

	thumb_func_start sub_08025EF0
sub_08025EF0: @ 0x08025EF0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r2, #0xc0
	adds r1, r6, #0
	ands r1, r2
	adds r0, r5, #0
	ands r0, r2
	cmp r1, r0
	bne _08025F5E
	ldr r2, _08025F64 @ =gUnknown_085D5ABC
	ldr r4, _08025F68 @ =gUnknown_08090A58
	ldr r0, [r4]
	ldr r7, [r0]
	lsls r3, r6, #1
	adds r0, r3, r6
	lsls r0, r0, #2
	adds r0, r0, r7
	mov ip, r0
	ldrb r1, [r0]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r2, #0x14
	adds r0, r0, r2
	ldr r2, [r0]
	cmp r2, #0
	beq _08025F5E
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r7
	adds r1, r2, #1
	ldrb r0, [r0]
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08025F5E
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #1
	bne _08025F4A
	mov r2, ip
	ldrb r0, [r2, #7]
	cmp r0, #0
	bne _08025F5E
_08025F4A:
	cmp r1, #2
	bne _08025F6C
	ldr r0, [r4]
	ldr r1, [r0]
	adds r0, r3, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _08025F6C
_08025F5E:
	movs r0, #0
	b _08025F6E
	.align 2, 0
_08025F64: .4byte gUnknown_085D5ABC
_08025F68: .4byte gUnknown_08090A58
_08025F6C:
	movs r0, #1
_08025F6E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08025F74
sub_08025F74: @ 0x08025F74
	push {r4, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r1, _08025FB4 @ =gUnknown_085D5ABC
	ldrb r2, [r3]
	movs r0, #0x5c
	muls r0, r2, r0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08025FB0
	adds r0, r1, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08025FB0
	ldrb r0, [r1]
	adds r1, r0, #0
	cmp r1, #2
	bne _08025FA6
	ldrb r0, [r3, #8]
	cmp r0, #0
	bne _08025FB0
_08025FA6:
	cmp r1, #1
	bne _08025FB8
	ldrb r0, [r3, #7]
	cmp r0, #0
	beq _08025FB8
_08025FB0:
	movs r0, #0
	b _08025FBA
	.align 2, 0
_08025FB4: .4byte gUnknown_085D5ABC
_08025FB8:
	movs r0, #1
_08025FBA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08025FC0
sub_08025FC0: @ 0x08025FC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r0, [r5]
	ldrb r1, [r4]
	cmp r0, r1
	bne _0802602E
	ldr r0, _08026034 @ =gUnknown_08499594
	ldr r2, [r0]
	subs r0, r5, r2
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #4
	adds r1, r1, r0
	lsls r0, r1, #8
	adds r1, r1, r0
	lsls r0, r1, #0x10
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #2
	movs r3, #0xc0
	ands r1, r3
	subs r2, r4, r2
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r2, r0, #4
	adds r0, r0, r2
	lsls r2, r0, #8
	adds r0, r0, r2
	lsls r2, r0, #0x10
	adds r0, r0, r2
	rsbs r0, r0, #0
	asrs r0, r0, #2
	ands r0, r3
	cmp r1, r0
	bne _0802602E
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0802602E
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0802602E
	ldrb r1, [r4, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08026038
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	cmp r0, #9
	bne _08026038
_0802602E:
	movs r0, #0
	b _0802603A
	.align 2, 0
_08026034: .4byte gUnknown_08499594
_08026038:
	movs r0, #1
_0802603A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08026040
sub_08026040: @ 0x08026040
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	str r1, [sp]
	mov r8, r2
	mov sb, r3
	cmp r0, #1
	bne _08026064
	cmp r1, #2
	bne _08026064
	cmp r2, #3
	bne _08026064
	cmp r3, #4
	beq _080260BC
_08026064:
	movs r0, #0xc0
	lsls r0, r0, #4
	bl sub_08014E44
	str r0, [sp, #4]
	ldr r4, _080260CC @ =gUnknown_02022684
	adds r2, r0, #0
	movs r3, #0xff
_08026074:
	adds r1, r2, #0
	adds r0, r4, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	adds r4, #0xc
	adds r2, #0xc
	subs r3, #1
	cmp r3, #0
	bge _08026074
	ldr r0, [sp, #4]
	mov r1, sl
	bl sub_080260D0
	ldr r1, [sp, #4]
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r1, [sp]
	bl sub_080260D0
	ldr r5, [sp, #4]
	movs r6, #0xc0
	lsls r6, r6, #3
	adds r0, r5, r6
	mov r1, r8
	bl sub_080260D0
	movs r7, #0x90
	lsls r7, r7, #4
	adds r0, r5, r7
	mov r1, sb
	bl sub_080260D0
	ldr r0, [sp, #4]
	bl sub_08014ED4
_080260BC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080260CC: .4byte gUnknown_02022684

	thumb_func_start sub_080260D0
sub_080260D0: @ 0x080260D0
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	ldr r2, _080260FC @ =gUnknown_08499594
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2]
	adds r2, r1, r0
	movs r4, #0x3f
_080260E4:
	adds r1, r2, #0
	adds r0, r3, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	adds r3, #0xc
	adds r2, #0xc
	subs r4, #1
	cmp r4, #0
	bge _080260E4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080260FC: .4byte gUnknown_08499594

	thumb_func_start sub_08026100
sub_08026100: @ 0x08026100
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r2, #0
	cmp r4, #0
	blt _0802618A
	cmp r1, #0
	blt _0802618A
	ldr r0, _08026168 @ =gUnknown_08499590
	ldr r3, [r0]
	ldrh r0, [r3]
	cmp r4, r0
	bge _0802618A
	ldrh r6, [r3, #2]
	cmp r1, r6
	bge _0802618A
	ldr r2, _0802616C @ =gUnknown_08499594
	lsls r1, r1, #1
	ldr r6, _08026170 @ =0x0000417A
	adds r0, r3, r6
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r1, r1, r4
	ldr r4, _08026174 @ =0x0000051A
	adds r0, r3, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r4, r1, r0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802618A
	ldrb r1, [r4, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0802618A
	ldrb r2, [r4, #4]
	lsls r3, r2, #0x19
	lsrs r1, r3, #0x19
	adds r0, r5, #1
	cmp r1, r0
	bge _08026178
	movs r0, #0x80
	rsbs r0, r0, #0
	ands r0, r2
	movs r1, #1
	orrs r0, r1
	strb r0, [r4, #4]
	b _0802618A
	.align 2, 0
_08026168: .4byte gUnknown_08499590
_0802616C: .4byte gUnknown_08499594
_08026170: .4byte 0x0000417A
_08026174: .4byte 0x0000051A
_08026178:
	lsrs r0, r3, #0x19
	subs r0, r0, r5
	movs r1, #0x7f
	ands r0, r1
	movs r1, #0x80
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #4]
_0802618A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08026190
sub_08026190: @ 0x08026190
	ldr r0, _08026194 @ =gUnknown_0810BE60
	bx lr
	.align 2, 0
_08026194: .4byte gUnknown_0810BE60

	thumb_func_start sub_08026198
sub_08026198: @ 0x08026198
	ldr r0, _0802619C @ =gUnknown_0810E820
	bx lr
	.align 2, 0
_0802619C: .4byte gUnknown_0810E820

	thumb_func_start sub_080261A0
sub_080261A0: @ 0x080261A0
	movs r0, #0x6c
	bx lr

	thumb_func_start sub_080261A4
sub_080261A4: @ 0x080261A4
	push {r4, lr}
	adds r4, r1, #0
	bl sub_08042DE0
	ldr r2, _080261C4 @ =gUnknown_08499608
	lsls r4, r4, #1
	subs r0, #1
	movs r1, #0x32
	muls r0, r1, r0
	adds r4, r4, r0
	adds r4, r4, r2
	ldrh r0, [r4]
	lsls r0, r0, #2
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080261C4: .4byte gUnknown_08499608

	thumb_func_start sub_080261C8
sub_080261C8: @ 0x080261C8
	ldr r3, _080261E0 @ =gUnknown_0810E6E0
	ldr r1, _080261E4 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1, #0x1a]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r3
	bx lr
	.align 2, 0
_080261E0: .4byte gUnknown_0810E6E0
_080261E4: .4byte gUnknown_08499598

	thumb_func_start sub_080261E8
sub_080261E8: @ 0x080261E8
	push {lr}
	adds r2, r0, #0
	ldr r0, _08026214 @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0802624A
	ldr r0, _08026218 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1a]
	subs r0, #1
	cmp r0, #4
	bhi _0802624E
	lsls r0, r0, #2
	ldr r1, _0802621C @ =_08026220
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08026214: .4byte gUnknown_03003FC0
_08026218: .4byte gUnknown_08499598
_0802621C: .4byte _08026220
_08026220: @ jump table
	.4byte _08026234 @ case 0
	.4byte _08026238 @ case 1
	.4byte _0802623C @ case 2
	.4byte _08026240 @ case 3
	.4byte _0802624A @ case 4
_08026234:
	movs r0, #0x65
	b _08026242
_08026238:
	movs r0, #0x66
	b _08026242
_0802623C:
	movs r0, #0x68
	b _08026242
_08026240:
	movs r0, #0x67
_08026242:
	bl sub_0803CBD8
	cmp r0, #0
	beq _0802624E
_0802624A:
	movs r0, #1
	b _08026250
_0802624E:
	movs r0, #0
_08026250:
	pop {r1}
	bx r1

	thumb_func_start sub_08026254
sub_08026254: @ 0x08026254
	push {r4, r5, lr}
	movs r5, #0
	ldr r0, _0802628C @ =gUnknown_08090A5C
	ldr r2, [r0]
	ldrb r1, [r2]
	adds r4, r0, #0
	cmp r1, #0xff
	beq _08026274
	adds r1, r2, #0
_08026266:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08026266
_08026274:
	ldr r4, [r4]
	bl sub_080129E0
	adds r1, r5, #0
	bl __umodsi3
	adds r0, r0, r4
	ldrb r0, [r0]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802628C: .4byte gUnknown_08090A5C

	thumb_func_start sub_08026290
sub_08026290: @ 0x08026290
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080262F8 @ =gUnknown_08090A60
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	bl sub_0802490C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r5, #1
	cmp r5, r8
	bhi _08026330
_080262B0:
	ldr r2, _080262FC @ =gUnknown_03003FC0
	adds r3, r2, #0
	adds r3, #0x38
	adds r1, r5, r3
	ldrb r0, [r1]
	adds r4, r5, #1
	mov sb, r4
	cmp r0, #0
	bne _08026326
	movs r0, #2
	strb r0, [r1]
	mov r4, r8
	adds r4, #1
	adds r6, r2, #0
	adds r6, #0x3d
	adds r7, r5, r6
	mov sl, r3
_080262D2:
	bl sub_08026254
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r1, #1
	cmp r1, r4
	bge _08026320
	cmp r5, #1
	beq _08026300
	ldr r2, _080262FC @ =gUnknown_03003FC0
	adds r0, r2, #0
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026300
	adds r0, r2, #0
	adds r0, #0x3e
	b _0802631A
	.align 2, 0
_080262F8: .4byte gUnknown_08090A60
_080262FC: .4byte gUnknown_03003FC0
_08026300:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r4
	bge _08026320
	cmp r5, r1
	beq _08026300
	mov r2, sl
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026300
	adds r0, r1, r6
_0802631A:
	ldrb r0, [r0]
	cmp r0, r3
	bne _08026300
_08026320:
	cmp r1, r4
	bne _080262D2
	strb r3, [r7]
_08026326:
	mov r4, sb
	lsls r0, r4, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	bls _080262B0
_08026330:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026340
sub_08026340: @ 0x08026340
	movs r2, #0
	movs r1, #1
	ldr r3, _08026364 @ =gUnknown_03003FF8
_08026346:
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026354
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_08026354:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _08026346
	adds r0, r2, #0
	bx lr
	.align 2, 0
_08026364: .4byte gUnknown_03003FF8

	thumb_func_start sub_08026368
sub_08026368: @ 0x08026368
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08026398 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r2, r1, r2
	adds r0, r2, #0
	adds r0, #0x34
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x35
	ldrb r1, [r1]
	adds r2, #0x36
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r1, r0, r2
	ldr r0, _0802639C @ =0x000003E7
	cmp r1, r0
	bls _08026394
	ldr r1, _080263A0 @ =0x0000270F
_08026394:
	adds r0, r1, #0
	bx lr
	.align 2, 0
_08026398: .4byte gUnknown_08499598
_0802639C: .4byte 0x000003E7
_080263A0: .4byte 0x0000270F

	thumb_func_start sub_080263A4
sub_080263A4: @ 0x080263A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _080263E8 @ =gUnknown_085C77A0
	mov r8, r0
	ldr r6, _080263EC @ =gUnknown_03003FC0
	ldrb r0, [r6, #2]
	movs r5, #0x5c
	muls r0, r5, r0
	add r0, r8
	ldrh r4, [r0, #0x20]
	bl sub_0803866C
	cmp r0, #0
	beq _080263CE
	ldrb r0, [r6, #2]
	muls r0, r5, r0
	add r0, r8
	ldrh r4, [r0, #0x22]
_080263CE:
	adds r0, r7, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08026416
	ldr r1, _080263F0 @ =gUnknown_03004080
	ldrh r0, [r1]
	cmp r0, r4
	bhi _080263F4
	movs r0, #0x64
	b _08026418
	.align 2, 0
_080263E8: .4byte gUnknown_085C77A0
_080263EC: .4byte gUnknown_03003FC0
_080263F0: .4byte gUnknown_03004080
_080263F4:
	ldrh r1, [r1]
	lsls r0, r4, #2
	cmp r1, r0
	bge _08026416
	subs r1, r1, r4
	movs r0, #0x64
	muls r0, r1, r0
	lsls r1, r4, #1
	adds r1, r1, r4
	bl __divsi3
	adds r1, r0, #0
	movs r0, #0x64
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _08026418
_08026416:
	movs r0, #0
_08026418:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08026424
sub_08026424: @ 0x08026424
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r6, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08026480
	movs r5, #0
	movs r4, #1
	ldr r7, _08026484 @ =gUnknown_08090A64
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	mov r8, r0
_08026448:
	ldr r0, [r7]
	ldr r2, [r0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r1, r0, r2
	ldrb r0, [r1, #0x1b]
	cmp r0, #0
	beq _08026472
	mov r3, r8
	adds r0, r3, r2
	adds r0, #0x2a
	adds r1, #0x2a
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08026472
	adds r0, r4, #0
	bl sub_08025CF0
	adds r5, r5, r0
_08026472:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _08026448
	cmp r5, #0
	bne _08026488
_08026480:
	movs r0, #0
	b _080264B2
	.align 2, 0
_08026484: .4byte gUnknown_08090A64
_08026488:
	ldr r0, [r7]
	ldr r1, [r0]
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0x18]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r5, #0
	bl Div
	adds r5, r0, #0
	cmp r5, #0x64
	bls _080264AE
	movs r5, #0x64
_080264AE:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
_080264B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080264BC
sub_080264BC: @ 0x080264BC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r0, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08026516
	ldr r0, _08026508 @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	movs r6, #0xa
	cmp r0, #1
	bne _080264DA
	movs r6, #0x14
_080264DA:
	adds r0, r5, #0
	bl sub_08025CF0
	adds r4, r0, #0
	adds r0, r5, #0
	bl sub_08025D08
	adds r1, r0, #0
	cmp r4, #0
	beq _08026516
	cmp r4, r1
	blt _08026516
	movs r0, #0x64
	muls r0, r1, r0
	adds r1, r4, #0
	bl __divsi3
	subs r0, #0x64
	subs r4, r6, r0
	cmp r4, #0x63
	ble _0802650C
	movs r0, #0x64
	b _08026518
	.align 2, 0
_08026508: .4byte gUnknown_03003FC0
_0802650C:
	cmp r4, #0
	blt _08026516
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	b _08026518
_08026516:
	movs r0, #0
_08026518:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08026520
sub_08026520: @ 0x08026520
	push {r4, r5, r6, lr}
	movs r5, #1
	ldr r6, _08026580 @ =gUnknown_08499598
_08026526:
	adds r0, r5, #0
	bl sub_080263A4
	ldr r1, [r6]
	lsls r4, r5, #4
	subs r4, r4, r5
	lsls r4, r4, #2
	adds r1, r4, r1
	adds r1, #0x34
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08026424
	ldr r1, [r6]
	adds r1, r4, r1
	adds r1, #0x35
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_080264BC
	ldr r1, [r6]
	adds r1, r4, r1
	adds r1, #0x36
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_08026368
	ldr r1, [r6]
	adds r1, r4, r1
	strh r0, [r1, #0x38]
	ldrh r0, [r1, #0x38]
	bl sub_08037D80
	ldr r1, [r6]
	adds r4, r4, r1
	adds r4, #0x33
	strb r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08026526
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026580: .4byte gUnknown_08499598

	thumb_func_start sub_08026584
sub_08026584: @ 0x08026584
	bx lr
	.align 2, 0

	thumb_func_start sub_08026588
sub_08026588: @ 0x08026588
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080265AC @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1, #0x16]
	adds r2, r0, #1
	strh r2, [r1, #0x16]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r1, #0x18]
	cmp r0, r3
	bls _080265AA
	strh r2, [r1, #0x18]
_080265AA:
	bx lr
	.align 2, 0
_080265AC: .4byte gUnknown_08499598

	thumb_func_start sub_080265B0
sub_080265B0: @ 0x080265B0
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	cmp r1, #0
	bne _080265C4
	movs r1, #5
	bl sub_08026584
	b _080265CA
_080265C4:
	movs r1, #0xa
	bl sub_08026584
_080265CA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080265D0
sub_080265D0: @ 0x080265D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r4, #0
	ldr r3, _080266B8 @ =gUnknown_08090A68
	ldr r6, [r3]
	ldr r2, _080266BC @ =gUnknown_08090A6C
	ldr r1, [r2]
	movs r0, #0x5c
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r0, r1
	ldrh r0, [r6]
	adds r7, r3, #0
	mov sb, r2
	ldrh r2, [r1, #0x20]
	cmp r0, r2
	bhs _08026654
	movs r4, #0xfa
	lsls r4, r4, #1
	movs r5, #0
	ldrh r1, [r1, #0x20]
	subs r0, r1, r0
	cmp r5, r0
	bge _08026654
	adds r6, r1, #0
_08026616:
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _08026628
	ldr r2, _080266C0 @ =0x41F00000
	ldr r3, _080266C4 @ =0x00000000
	bl __adddf3
_08026628:
	ldr r2, _080266C8 @ =0x3FF33333
	ldr r3, _080266CC @ =0x33333333
	bl __muldf3
	bl __fixunsdfsi
	adds r4, r0, #0
	lsls r1, r5, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r1, r1, r5
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r7]
	ldrh r0, [r0]
	subs r0, r6, r0
	cmp r1, r0
	bge _08026654
	ldr r0, _080266D0 @ =0x0000270F
	cmp r4, r0
	bls _08026616
	adds r4, r0, #0
_08026654:
	ldr r3, [r7]
	mov r1, sb
	ldr r0, [r1]
	movs r1, #0x5c
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r2, r1, r0
	ldrh r0, [r3]
	ldrh r1, [r2, #0x20]
	cmp r0, r1
	bne _08026670
	movs r4, #0xfa
	lsls r4, r4, #1
_08026670:
	cmp r0, r1
	bls _0802669E
	movs r4, #0xfa
	lsls r4, r4, #1
	movs r5, #0
	ldrh r1, [r3]
	ldrh r0, [r2, #0x20]
	subs r0, r1, r0
	cmp r5, r0
	bge _0802669E
	adds r1, r0, #0
_08026686:
	subs r4, #0x96
	lsls r0, r5, #0x10
	movs r5, #0x80
	lsls r5, r5, #9
	adds r0, r0, r5
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bge _0802669E
	cmp r4, #0x95
	bhi _08026686
	movs r4, #0
_0802669E:
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	mov r0, sl
	bl sub_08026584
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080266B8: .4byte gUnknown_08090A68
_080266BC: .4byte gUnknown_08090A6C
_080266C0: .4byte 0x41F00000
_080266C4: .4byte 0x00000000
_080266C8: .4byte 0x3FF33333
_080266CC: .4byte 0x33333333
_080266D0: .4byte 0x0000270F

	thumb_func_start sub_080266D4
sub_080266D4: @ 0x080266D4
	ldr r0, _080266D8 @ =gUnknown_0810BE60
	bx lr
	.align 2, 0
_080266D8: .4byte gUnknown_0810BE60

	thumb_func_start sub_080266DC
sub_080266DC: @ 0x080266DC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080266FC @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r0, [r1, #0x1b]
	cmp r0, #0
	beq _08026700
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	bne _08026700
	movs r0, #1
	b _08026702
	.align 2, 0
_080266FC: .4byte gUnknown_08499598
_08026700:
	movs r0, #0
_08026702:
	bx lr

	thumb_func_start sub_08026704
sub_08026704: @ 0x08026704
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0802670A:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #5
	bne _08026716
	movs r4, #1
_08026716:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802670A
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802672C
sub_0802672C: @ 0x0802672C
	push {r4, r5, lr}
	ldr r1, _0802675C @ =gUnknown_08090A70
	ldr r0, [r1]
	ldrh r4, [r0]
	adds r5, r1, #0
_08026736:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #5
	bne _08026742
	movs r4, #1
_08026742:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08026736
	ldr r0, [r5]
	ldrh r0, [r0]
	cmp r4, r0
	blo _08026760
	movs r0, #0
	b _08026762
	.align 2, 0
_0802675C: .4byte gUnknown_08090A70
_08026760:
	movs r0, #1
_08026762:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08026768
sub_08026768: @ 0x08026768
	push {r4, lr}
	ldr r4, _08026794 @ =gUnknown_030033EC
_0802676C:
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bne _08026782
	bl sub_080176A8
	movs r0, #1
	strh r0, [r4]
_08026782:
	ldrb r0, [r4]
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802676C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08026794: .4byte gUnknown_030033EC

	thumb_func_start sub_08026798
sub_08026798: @ 0x08026798
	push {lr}
	ldr r1, _080267A8 @ =gUnknown_030032C0
	movs r0, #0
	strh r0, [r1]
	bl sub_08020984
	pop {r0}
	bx r0
	.align 2, 0
_080267A8: .4byte gUnknown_030032C0

	thumb_func_start sub_080267AC
sub_080267AC: @ 0x080267AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r1, _0802684C @ =gUnknown_03004084
	ldr r5, _08026850 @ =gUnknown_08090A74
	ldr r6, [r5]
	ldrh r2, [r6]
	lsls r0, r2, #5
	strh r0, [r1]
	ldr r1, _08026854 @ =gUnknown_03003F2C
	ldrh r0, [r6]
	subs r0, #1
	lsls r0, r0, #6
	strh r0, [r1]
	ldr r0, _08026858 @ =gUnknown_03004480
	strh r2, [r0]
	ldr r0, _0802685C @ =gUnknown_030032C0
	movs r3, #0
	strh r3, [r0]
	ldrh r1, [r6]
	ldr r4, _08026860 @ =gUnknown_08090A78
	ldr r7, [r4]
	ldr r2, [r7]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0, #0x16]
	ldrh r1, [r6]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x24
	strb r3, [r0]
	bl sub_08020984
	bl sub_08026F04
	ldrh r0, [r6]
	bl sub_0801A548
	ldrh r0, [r6]
	bl sub_0801A57C
	ldrh r0, [r6]
	bl sub_08043834
	ldr r0, _08026864 @ =gUnknown_03004080
	ldrh r0, [r0]
	mov r8, r5
	mov sb, r4
	cmp r0, #1
	bne _080268BC
	ldrh r0, [r6]
	bl sub_08026D44
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08026868
	ldrh r0, [r6]
	ldr r1, [r7]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r1
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r3, [r0]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r3
	adds r2, #0x2e
	ldrb r2, [r2]
	ands r1, r2
	bl sub_08022AAC
	b _0802688E
	.align 2, 0
_0802684C: .4byte gUnknown_03004084
_08026850: .4byte gUnknown_08090A74
_08026854: .4byte gUnknown_03003F2C
_08026858: .4byte gUnknown_03004480
_0802685C: .4byte gUnknown_030032C0
_08026860: .4byte gUnknown_08090A78
_08026864: .4byte gUnknown_03004080
_08026868:
	ldr r0, _080268EC @ =gUnknown_08499590
	ldr r1, [r0]
	movs r2, #4
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge _08026876
	adds r0, #0xf
_08026876:
	asrs r0, r0, #4
	adds r2, r0, #7
	movs r3, #6
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08026884
	adds r0, #0xf
_08026884:
	asrs r1, r0, #4
	adds r1, #4
	adds r0, r2, #0
	bl sub_08022AAC
_0802688E:
	mov r0, r8
	ldr r5, [r0]
	ldrh r1, [r5]
	mov r2, sb
	ldr r4, [r2]
	ldr r2, [r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r3, _080268F0 @ =gUnknown_030033E4
	ldrh r1, [r3]
	adds r0, #0x2f
	strb r1, [r0]
	ldrh r1, [r5]
	ldr r2, [r4]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r3, #2]
	adds r0, #0x30
	strb r1, [r0]
_080268BC:
	mov r3, r8
	ldr r0, [r3]
	ldrh r2, [r0]
	mov r1, sb
	ldr r0, [r1]
	ldr r0, [r0]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, #0x30
	ldrb r1, [r1]
	bl sub_08022AAC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080268EC: .4byte gUnknown_08499590
_080268F0: .4byte gUnknown_030033E4

	thumb_func_start sub_080268F4
sub_080268F4: @ 0x080268F4
	push {lr}
	bl sub_080267AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026900
sub_08026900: @ 0x08026900
	ldr r2, _08026920 @ =gUnknown_03003FC0
	adds r1, r2, #0
	adds r1, #0x43
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #3
	strb r0, [r1]
	bx lr
	.align 2, 0
_08026920: .4byte gUnknown_03003FC0

	thumb_func_start sub_08026924
sub_08026924: @ 0x08026924
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_080248F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #4
	subs r1, r1, r0
	lsls r1, r1, #0x10
	ldr r0, _08026A34 @ =gUnknown_08090A7C
	mov r8, r0
	cmp r1, #0
	ble _08026956
	movs r4, #5
	ldr r3, _08026A38 @ =gUnknown_03003FF8
	movs r2, #0
_08026946:
	asrs r1, r1, #0x10
	subs r0, r4, r1
	adds r0, r0, r3
	strb r2, [r0]
	subs r1, #1
	lsls r1, r1, #0x10
	cmp r1, #0
	bgt _08026946
_08026956:
	ldr r2, _08026A3C @ =gUnknown_08499598
	ldr r0, [r2]
	ldr r3, _08026A40 @ =gUnknown_03003FC0
	adds r1, r3, #0
	adds r1, #0x39
	ldrb r1, [r1]
	adds r0, #0x57
	strb r1, [r0]
	ldr r0, [r2]
	adds r1, r3, #0
	adds r1, #0x3a
	ldrb r1, [r1]
	adds r0, #0x93
	strb r1, [r0]
	ldr r0, [r2]
	adds r1, r3, #0
	adds r1, #0x3b
	ldrb r1, [r1]
	adds r0, #0xcf
	strb r1, [r0]
	ldr r1, [r2]
	adds r0, r3, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	ldr r4, _08026A44 @ =0x0000010B
	adds r1, r1, r4
	strb r0, [r1]
	movs r1, #1
	adds r5, r2, #0
	adds r4, r3, #0
	movs r7, #0
	adds r6, r4, #0
	adds r6, #0x42
_08026998:
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldr r1, [r5]
	lsls r2, r3, #4
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r1, r2, r1
	adds r0, r4, #0
	adds r0, #0x33
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r1, [r5]
	adds r1, r2, r1
	adds r0, r4, #0
	adds r0, #0x3d
	adds r0, r3, r0
	ldrb r0, [r0]
	strb r0, [r1, #0x1d]
	ldr r1, [r5]
	adds r1, r2, r1
	adds r0, r3, r6
	ldrb r0, [r0]
	adds r1, #0x2a
	strb r0, [r1]
	ldr r0, [r5]
	adds r0, r2, r0
	adds r0, #0x2c
	strb r7, [r0]
	ldr r0, [r5]
	adds r2, r2, r0
	ldrb r0, [r2, #0x1b]
	cmp r0, #0
	bne _080269E0
	movs r0, #1
	strb r0, [r2, #0x1d]
_080269E0:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08026998
	bl sub_08026A48
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _080269F8
	strb r0, [r4, #7]
_080269F8:
	bl sub_08026B28
	movs r1, #1
_080269FE:
	lsls r2, r1, #0x10
	asrs r4, r2, #0x10
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08026A1E
	asrs r0, r2, #0x16
	adds r0, #1
	bl sub_08025D20
_08026A1E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	ble _080269FE
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026A34: .4byte gUnknown_08090A7C
_08026A38: .4byte gUnknown_03003FF8
_08026A3C: .4byte gUnknown_08499598
_08026A40: .4byte gUnknown_03003FC0
_08026A44: .4byte 0x0000010B

	thumb_func_start sub_08026A48
sub_08026A48: @ 0x08026A48
	push {r4, r5, r6, lr}
	ldr r0, _08026A80 @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	cmp r0, #2
	bgt _08026A7A
	cmp r0, #1
	blt _08026A7A
	movs r4, #1
	ldr r6, _08026A84 @ =gUnknown_08090A80
	movs r5, #0x3c
_08026A5C:
	adds r0, r4, #0
	bl sub_08042DFC
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08026AC0
	ldr r1, [r6]
	ldr r1, [r1]
	adds r1, r5, r1
	strb r0, [r1, #0x1a]
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #4
	ble _08026A5C
_08026A7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08026A80: .4byte gUnknown_03003FC0
_08026A84: .4byte gUnknown_08090A80

	thumb_func_start sub_08026A88
sub_08026A88: @ 0x08026A88
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #1
	bne _08026A96
	b _08026AB2
_08026A92:
	movs r0, #0
	b _08026AB4
_08026A96:
	movs r3, #1
	cmp r3, r4
	bge _08026AB2
	ldr r0, _08026ABC @ =gUnknown_08499598
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x3c
_08026AA4:
	ldrb r0, [r2, #0x1a]
	cmp r0, r1
	beq _08026A92
	adds r2, #0x3c
	adds r3, #1
	cmp r3, r4
	blt _08026AA4
_08026AB2:
	movs r0, #1
_08026AB4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08026ABC: .4byte gUnknown_08499598

	thumb_func_start sub_08026AC0
sub_08026AC0: @ 0x08026AC0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r1, #0
	ldr r3, _08026AE4 @ =gUnknown_085C77A0
	ldr r0, _08026AE8 @ =gUnknown_03003FC0
	ldrb r1, [r0, #2]
	movs r0, #0x5c
	muls r0, r1, r0
	subs r0, #1
	adds r1, r5, r0
	adds r0, r3, #0
	adds r0, #0x3c
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08026AEC
	adds r4, r2, #0
	b _08026AF4
	.align 2, 0
_08026AE4: .4byte gUnknown_085C77A0
_08026AE8: .4byte gUnknown_03003FC0
_08026AEC:
	adds r0, r3, #0
	adds r0, #0x40
	adds r0, r1, r0
	ldrb r4, [r0]
_08026AF4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08026A88
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08026B20
	movs r4, #1
	b _08026B08
_08026B06:
	adds r4, #1
_08026B08:
	cmp r4, #4
	bgt _08026B1A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08026A88
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08026B06
_08026B1A:
	cmp r4, #5
	ble _08026B20
	movs r4, #5
_08026B20:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08026B28
sub_08026B28: @ 0x08026B28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r5, #1
	ldr r0, _08026BA4 @ =gUnknown_08499598
	mov sb, r0
_08026B36:
	mov r1, sb
	ldr r0, [r1]
	lsls r1, r5, #4
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r0, r1, r0
	ldrb r0, [r0, #0x1b]
	adds r7, r5, #1
	cmp r0, #0
	beq _08026B8E
	movs r4, #1
	ldr r0, _08026BA4 @ =gUnknown_08499598
	mov r8, r0
	adds r6, r1, #0
	ldr r1, _08026BA8 @ =gUnknown_08090A84
	mov ip, r1
_08026B56:
	cmp r5, r4
	beq _08026B84
	mov r1, r8
	ldr r0, [r1]
	adds r2, r6, r0
	adds r3, r2, #0
	adds r3, #0x2a
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, #0x2a
	ldrb r0, [r3]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08026B84
	adds r2, #0x2c
	mov r0, ip
	adds r1, r4, r0
	ldrb r0, [r2]
	ldrb r1, [r1]
	orrs r0, r1
	strb r0, [r2]
_08026B84:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08026B56
_08026B8E:
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _08026B36
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026BA4: .4byte gUnknown_08499598
_08026BA8: .4byte gUnknown_08090A84

	thumb_func_start sub_08026BAC
sub_08026BAC: @ 0x08026BAC
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08026C64 @ =gUnknown_08090A8C
	ldr r2, [r5]
	movs r1, #0
	movs r3, #0
_08026BB8:
	ldr r0, [r2]
	adds r0, r3, r0
	str r1, [r0]
	str r1, [r0, #4]
	strb r1, [r0, #0x11]
	ldr r0, [r2]
	adds r0, r3, r0
	strb r1, [r0, #0x12]
	ldr r0, [r2]
	adds r0, r3, r0
	strb r1, [r0, #0x13]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r1, [r0, #0x14]
	strh r1, [r0, #0x16]
	strh r1, [r0, #0x18]
	strb r1, [r0, #0x1a]
	ldr r0, [r2]
	adds r0, r3, r0
	strb r1, [r0, #0x1b]
	ldr r0, [r2]
	adds r0, r3, r0
	strb r1, [r0, #0x1c]
	ldr r0, [r2]
	adds r0, r3, r0
	strb r1, [r0, #0x1e]
	ldr r0, [r2]
	adds r0, r3, r0
	strb r1, [r0, #0x1f]
	ldr r0, [r2]
	adds r0, r3, r0
	str r1, [r0, #0x20]
	adds r0, #0x24
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, #0x25
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	strh r1, [r0, #0x26]
	strh r1, [r0, #0x28]
	adds r0, #0x2a
	strb r4, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, #0x31
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, #0x32
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, #0x3a
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, r3, r0
	adds r0, #0x3b
	strb r1, [r0]
	adds r3, #0x3c
	adds r4, #1
	cmp r4, #4
	ble _08026BB8
	ldr r2, [r5]
	ldr r0, [r2]
	adds r0, #0x67
	movs r1, #1
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0xa3
	movs r1, #2
	strb r1, [r0]
	ldr r0, [r2]
	adds r0, #0xdf
	movs r1, #4
	strb r1, [r0]
	ldr r0, [r2]
	ldr r2, _08026C68 @ =0x0000011B
	adds r1, r0, r2
	movs r0, #8
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08026C64: .4byte gUnknown_08090A8C
_08026C68: .4byte 0x0000011B

	thumb_func_start sub_08026C6C
sub_08026C6C: @ 0x08026C6C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #6
	cmp r0, #0xe
	bhi _08026CCC
	lsls r0, r0, #2
	ldr r1, _08026C80 @ =_08026C84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08026C80: .4byte _08026C84
_08026C84: @ jump table
	.4byte _08026CC0 @ case 0
	.4byte _08026CCC @ case 1
	.4byte _08026CC0 @ case 2
	.4byte _08026CCC @ case 3
	.4byte _08026CC0 @ case 4
	.4byte _08026CC0 @ case 5
	.4byte _08026CCC @ case 6
	.4byte _08026CCC @ case 7
	.4byte _08026CC0 @ case 8
	.4byte _08026CCC @ case 9
	.4byte _08026CCC @ case 10
	.4byte _08026CCC @ case 11
	.4byte _08026CCC @ case 12
	.4byte _08026CCC @ case 13
	.4byte _08026CC0 @ case 14
_08026CC0:
	ldr r0, _08026CC8 @ =gUnknown_03003FC0
	ldr r0, [r0, #0x28]
	b _08026CCE
	.align 2, 0
_08026CC8: .4byte gUnknown_03003FC0
_08026CCC:
	movs r0, #0
_08026CCE:
	bx lr

	thumb_func_start sub_08026CD0
sub_08026CD0: @ 0x08026CD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08026D38 @ =gUnknown_085C77A0
	mov r8, r0
	ldr r1, _08026D3C @ =gUnknown_03003FC0
	mov ip, r1
	movs r7, #0x5c
	ldr r6, _08026D40 @ =gUnknown_08499598
	movs r4, #0
	movs r3, #4
	rsbs r3, r3, #0
	movs r5, #4
_08026CEA:
	mov r1, ip
	ldrb r0, [r1, #2]
	muls r0, r7, r0
	adds r0, r3, r0
	add r0, r8
	adds r0, #0x48
	ldrb r2, [r0]
	adds r0, r2, #0
	cmp r0, #0xff
	beq _08026D24
	ldr r1, [r6]
	adds r1, r4, r1
	adds r1, #0x2d
	ldrb r0, [r1]
	orrs r0, r2
	strb r0, [r1]
	ldr r2, [r6]
	adds r2, r4, r2
	adds r2, #0x2e
	mov r1, ip
	ldrb r0, [r1, #2]
	muls r0, r7, r0
	adds r0, r3, r0
	add r0, r8
	adds r0, #0x49
	ldrb r1, [r2]
	ldrb r0, [r0]
	orrs r1, r0
	strb r1, [r2]
_08026D24:
	adds r4, #0x3c
	adds r3, #4
	subs r5, #1
	cmp r5, #0
	bge _08026CEA
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08026D38: .4byte gUnknown_085C77A0
_08026D3C: .4byte gUnknown_03003FC0
_08026D40: .4byte gUnknown_08499598

	thumb_func_start sub_08026D44
sub_08026D44: @ 0x08026D44
	ldr r1, _08026D60 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x2d
	ldrb r1, [r1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08026D64
	movs r0, #1
	b _08026D66
	.align 2, 0
_08026D60: .4byte gUnknown_08499598
_08026D64:
	movs r0, #0
_08026D66:
	bx lr

	thumb_func_start sub_08026D68
sub_08026D68: @ 0x08026D68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08026DB4 @ =gUnknown_08090A90
	mov sb, r0
	ldr r7, _08026DB8 @ =gUnknown_08090A94
	ldr r4, [r0]
	movs r3, #0
	movs r2, #0
	movs r6, #0x80
	movs r5, #4
_08026D80:
	ldr r0, [r4]
	adds r0, r2, r0
	str r3, [r0, #8]
	strb r3, [r0, #0xc]
	ldr r0, [r4]
	adds r0, r2, r0
	strb r3, [r0, #0xd]
	ldr r0, [r4]
	adds r0, r2, r0
	strb r3, [r0, #0xe]
	ldr r0, [r4]
	adds r0, r2, r0
	strb r3, [r0, #0xf]
	ldr r1, [r4]
	adds r1, r2, r1
	adds r1, #0x2d
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	adds r2, #0x3c
	subs r5, #1
	cmp r5, #0
	bge _08026D80
	movs r6, #0
	b _08026EE4
	.align 2, 0
_08026DB4: .4byte gUnknown_08090A90
_08026DB8: .4byte gUnknown_08090A94
_08026DBC:
	movs r5, #0
	ldr r0, [r1]
	ldr r0, [r0]
	adds r2, r6, #1
	mov r8, r2
	b _08026EDA
_08026DC8:
	ldr r0, [r1]
	ldr r1, [r0]
	lsls r2, r6, #1
	ldr r3, _08026E10 @ =0x0000417A
	adds r0, r1, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r5
	ldr r2, _08026E14 @ =0x00001432
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r3, [r1]
	movs r0, #0xe0
	ands r0, r3
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08026ED2
	mov r1, sb
	ldr r2, [r1]
	lsrs r1, r0, #0x1d
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r4, r1, r0
	movs r2, #0x1f
	ands r2, r3
	subs r0, r2, #6
	cmp r0, #0xe
	bhi _08026ED2
	lsls r0, r0, #2
	ldr r1, _08026E18 @ =_08026E1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08026E10: .4byte 0x0000417A
_08026E14: .4byte 0x00001432
_08026E18: .4byte _08026E1C
_08026E1C: @ jump table
	.4byte _08026E98 @ case 0
	.4byte _08026ED2 @ case 1
	.4byte _08026E58 @ case 2
	.4byte _08026ED2 @ case 3
	.4byte _08026EAC @ case 4
	.4byte _08026EC0 @ case 5
	.4byte _08026ED2 @ case 6
	.4byte _08026ED2 @ case 7
	.4byte _08026E70 @ case 8
	.4byte _08026ED2 @ case 9
	.4byte _08026ED2 @ case 10
	.4byte _08026ED2 @ case 11
	.4byte _08026ED2 @ case 12
	.4byte _08026ED2 @ case 13
	.4byte _08026E84 @ case 14
_08026E58:
	adds r0, r2, #0
	bl sub_08026C6C
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x2d
	strb r5, [r0]
	adds r0, #1
	strb r6, [r0]
	b _08026ED2
_08026E70:
	adds r0, r2, #0
	bl sub_08026C6C
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldrb r0, [r4, #0xc]
	adds r0, #1
	strb r0, [r4, #0xc]
	b _08026ED2
_08026E84:
	adds r0, r2, #0
	bl sub_08026C6C
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldrb r0, [r4, #0x10]
	adds r0, #1
	strb r0, [r4, #0x10]
	b _08026ED2
_08026E98:
	adds r0, r2, #0
	bl sub_08026C6C
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldrb r0, [r4, #0xd]
	adds r0, #1
	strb r0, [r4, #0xd]
	b _08026ED2
_08026EAC:
	adds r0, r2, #0
	bl sub_08026C6C
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldrb r0, [r4, #0xe]
	adds r0, #1
	strb r0, [r4, #0xe]
	b _08026ED2
_08026EC0:
	adds r0, r2, #0
	bl sub_08026C6C
	ldr r1, [r4, #8]
	adds r1, r1, r0
	str r1, [r4, #8]
	ldrb r0, [r4, #0xf]
	adds r0, #1
	strb r0, [r4, #0xf]
_08026ED2:
	adds r5, #1
	adds r1, r7, #0
	ldr r0, [r7]
	ldr r0, [r0]
_08026EDA:
	ldrh r0, [r0]
	cmp r5, r0
	bge _08026EE2
	b _08026DC8
_08026EE2:
	mov r6, r8
_08026EE4:
	adds r1, r7, #0
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	cmp r6, r0
	bge _08026EF2
	b _08026DBC
_08026EF2:
	bl sub_08026CD0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08026F04
sub_08026F04: @ 0x08026F04
	push {lr}
	ldr r0, _08026F20 @ =gUnknown_030033EC
	ldrh r0, [r0]
	ldr r1, _08026F24 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #8]
	bl sub_08025B58
	pop {r0}
	bx r0
	.align 2, 0
_08026F20: .4byte gUnknown_030033EC
_08026F24: .4byte gUnknown_08499598

	thumb_func_start sub_08026F28
sub_08026F28: @ 0x08026F28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _08026F54 @ =gUnknown_08499598
	ldr r3, [r2]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	adds r2, #0x2a
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x2a
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08026F58
	movs r0, #0
	b _08026F5A
	.align 2, 0
_08026F54: .4byte gUnknown_08499598
_08026F58:
	movs r0, #1
_08026F5A:
	bx lr

	thumb_func_start sub_08026F5C
sub_08026F5C: @ 0x08026F5C
	push {r4, lr}
	ldr r1, _08026F8C @ =gUnknown_030033EC
	ldrh r3, [r1]
	ldr r1, _08026F90 @ =gUnknown_08499598
	ldr r4, [r1]
	lsls r2, r3, #4
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, r2, r4
	adds r2, #0x2a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r4
	adds r1, #0x66
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08026F94
	movs r0, #0
	b _08026F96
	.align 2, 0
_08026F8C: .4byte gUnknown_030033EC
_08026F90: .4byte gUnknown_08499598
_08026F94:
	movs r0, #1
_08026F96:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08026F9C
sub_08026F9C: @ 0x08026F9C
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r2, _08026FC8 @ =gUnknown_08499598
	ldr r3, [r2]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	adds r2, #0x66
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x66
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08026FCC
	movs r0, #0
	b _08026FCE
	.align 2, 0
_08026FC8: .4byte gUnknown_08499598
_08026FCC:
	movs r0, #1
_08026FCE:
	bx lr

	thumb_func_start sub_08026FD0
sub_08026FD0: @ 0x08026FD0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x1d
	cmp r3, #0
	beq _08027000
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r1, _08027004 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x66
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08027008
_08027000:
	movs r0, #0
	b _0802700A
	.align 2, 0
_08027004: .4byte gUnknown_08499598
_08027008:
	movs r0, #1
_0802700A:
	bx lr

	thumb_func_start sub_0802700C
sub_0802700C: @ 0x0802700C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _08027054 @ =gUnknown_08499590
	ldr r3, [r0]
	lsls r2, r2, #1
	ldr r5, _08027058 @ =0x0000417A
	adds r0, r3, r5
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r1
	ldr r1, _0802705C @ =0x00001432
	adds r3, r3, r1
	adds r3, r3, r0
	ldrb r3, [r3]
	asrs r3, r3, #5
	cmp r3, #0
	beq _0802704E
	ldr r0, _08027060 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x2a
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x2a
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08027064
_0802704E:
	movs r0, #0
	b _08027066
	.align 2, 0
_08027054: .4byte gUnknown_08499590
_08027058: .4byte 0x0000417A
_0802705C: .4byte 0x00001432
_08027060: .4byte gUnknown_08499598
_08027064:
	movs r0, #1
_08027066:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802706C
sub_0802706C: @ 0x0802706C
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, _080270A8 @ =gUnknown_03003FC0
	ldrb r0, [r0, #0xd]
	cmp r0, #0
	beq _080270B4
	ldr r0, _080270AC @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r1, [r0, #0x1c]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080270B4
	ldr r1, _080270B0 @ =gUnknown_085D5ABC
	movs r0, #0x5c
	muls r0, r3, r0
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080270B4
	movs r0, #1
	b _080270B6
	.align 2, 0
_080270A8: .4byte gUnknown_03003FC0
_080270AC: .4byte gUnknown_08499598
_080270B0: .4byte gUnknown_085D5ABC
_080270B4:
	movs r0, #0
_080270B6:
	bx lr

	thumb_func_start sub_080270B8
sub_080270B8: @ 0x080270B8
	push {r4, lr}
	movs r3, #1
	ldr r0, _080270DC @ =gUnknown_08499598
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x4f
	movs r4, #0x20
_080270C6:
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _080270E0
	ldrb r1, [r2]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080270E0
	movs r0, #1
	b _080270EA
	.align 2, 0
_080270DC: .4byte gUnknown_08499598
_080270E0:
	adds r2, #0x3c
	adds r3, #1
	cmp r3, #4
	ble _080270C6
	movs r0, #0
_080270EA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080270F0
sub_080270F0: @ 0x080270F0
	movs r2, #1
	ldr r0, _08027108 @ =gUnknown_08499598
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x3c
_080270FA:
	ldrb r0, [r1, #0x1b]
	cmp r0, #1
	bne _0802710C
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	b _08027116
	.align 2, 0
_08027108: .4byte gUnknown_08499598
_0802710C:
	adds r1, #0x3c
	adds r2, #1
	cmp r2, #4
	ble _080270FA
	movs r0, #0
_08027116:
	bx lr

	thumb_func_start sub_08027118
sub_08027118: @ 0x08027118
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r4, #1
_08027120:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	adds r1, r4, #1
	mov ip, r1
	cmp r0, #0
	beq _0802716C
	movs r5, #1
	ldr r0, _0802717C @ =gUnknown_08499598
	mov r8, r0
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r7, r0, #2
	movs r6, #0x3c
_08027140:
	cmp r5, r4
	beq _08027164
	mov r0, r8
	ldr r1, [r0]
	adds r3, r6, r1
	ldrb r0, [r3, #0x1b]
	cmp r0, #0
	beq _08027164
	adds r2, r3, #0
	adds r2, #0x2a
	adds r0, r7, r1
	adds r0, #0x2a
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bne _08027164
	movs r0, #0
	strh r0, [r3, #0x14]
_08027164:
	adds r6, #0x3c
	adds r5, #1
	cmp r5, #4
	ble _08027140
_0802716C:
	mov r4, ip
	cmp r4, #4
	ble _08027120
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802717C: .4byte gUnknown_08499598

	thumb_func_start sub_08027180
sub_08027180: @ 0x08027180
	ldr r1, _08027194 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x3b
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08027194: .4byte gUnknown_08499598

	thumb_func_start sub_08027198
sub_08027198: @ 0x08027198
	push {r4, lr}
	adds r4, r0, #0
	movs r3, #1
	ldr r1, _080271B8 @ =gUnknown_08499598
	ldr r1, [r1]
	adds r2, r1, #0
	adds r2, #0x56
_080271A6:
	ldrb r1, [r2, #1]
	cmp r1, #0
	beq _080271BC
	ldrb r1, [r2]
	cmp r1, r4
	bne _080271BC
	adds r0, r3, #0
	b _080271C4
	.align 2, 0
_080271B8: .4byte gUnknown_08499598
_080271BC:
	adds r2, #0x3c
	adds r3, #1
	cmp r3, #4
	ble _080271A6
_080271C4:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080271CC
sub_080271CC: @ 0x080271CC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08027226
	adds r0, r4, #0
	bl sub_08025CF0
	cmp r0, #0
	beq _08027234
	movs r2, #1
	ldr r5, _0802722C @ =gUnknown_08499594
	ldr r1, _08027230 @ =gUnknown_084995FE
	lsls r0, r4, #1
	adds r3, r0, r1
	ldrh r0, [r3]
	adds r0, #1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027222
	adds r4, r5, #0
_08027208:
	adds r2, #1
	cmp r2, #0x32
	bgt _08027222
	ldrh r0, [r3]
	adds r0, r2, r0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08027208
_08027222:
	cmp r2, #0x33
	bne _08027234
_08027226:
	movs r0, #0
	b _08027236
	.align 2, 0
_0802722C: .4byte gUnknown_08499594
_08027230: .4byte gUnknown_084995FE
_08027234:
	movs r0, #1
_08027236:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802723C
sub_0802723C: @ 0x0802723C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08027270 @ =gUnknown_08499D2C
	movs r1, #3
	bl Proc_Start
	lsls r4, r4, #4
	ldr r1, _08027274 @ =gUnknown_08499590
	ldr r2, [r1]
	movs r3, #4
	ldrsh r1, [r2, r3]
	subs r4, r4, r1
	subs r4, #0x18
	str r4, [r0, #0x2c]
	lsls r5, r5, #4
	movs r3, #6
	ldrsh r1, [r2, r3]
	subs r5, r5, r1
	str r5, [r0, #0x30]
	movs r1, #2
	str r1, [r0, #0x54]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027270: .4byte gUnknown_08499D2C
_08027274: .4byte gUnknown_08499590

	thumb_func_start sub_08027278
sub_08027278: @ 0x08027278
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080272AC @ =gUnknown_08499CFC
	movs r1, #3
	bl Proc_Start
	lsls r4, r4, #4
	ldr r1, _080272B0 @ =gUnknown_08499590
	ldr r2, [r1]
	movs r3, #4
	ldrsh r1, [r2, r3]
	subs r4, r4, r1
	subs r4, #0x18
	str r4, [r0, #0x2c]
	lsls r5, r5, #4
	movs r3, #6
	ldrsh r1, [r2, r3]
	subs r5, r5, r1
	str r5, [r0, #0x30]
	movs r1, #0
	str r1, [r0, #0x54]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080272AC: .4byte gUnknown_08499CFC
_080272B0: .4byte gUnknown_08499590

	thumb_func_start sub_080272B4
sub_080272B4: @ 0x080272B4
	push {lr}
	ldr r0, _080272C0 @ =gUnknown_08499D2C
	bl sub_0801CD14
	pop {r0}
	bx r0
	.align 2, 0
_080272C0: .4byte gUnknown_08499D2C

	thumb_func_start sub_080272C4
sub_080272C4: @ 0x080272C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080272FC @ =gUnknown_08112614
	movs r1, #1
	movs r2, #1
	bl sub_0801C210
	str r0, [r4, #0x50]
	ldr r1, _08027300 @ =0x000031CA
	strh r1, [r0, #0x22]
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x54]
	ldr r3, [r4, #0x50]
	bl sub_08027560
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r4, #0x44
	ldr r0, _08027304 @ =0x0000FFFF
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080272FC: .4byte gUnknown_08112614
_08027300: .4byte 0x000031CA
_08027304: .4byte 0x0000FFFF

	thumb_func_start sub_08027308
sub_08027308: @ 0x08027308
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r4, _080273D8 @ =gUnknown_0808F100
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	mov sb, r0
	adds r7, r6, #0
	adds r7, #0x64
	movs r2, #0
	ldrsh r0, [r7, r2]
	movs r1, #2
	cmp r0, #0
	beq _08027334
	adds r1, r0, #0
_08027334:
	mov r0, sb
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	rsbs r0, r5, #0
	lsls r2, r0, #4
	movs r1, #0
	ldrsh r0, [r7, r1]
	movs r1, #2
	adds r4, r7, #0
	cmp r0, #0
	beq _08027358
	movs r0, #0
	ldrsh r1, [r4, r0]
_08027358:
	adds r0, r2, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r2, r5, #4
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #2
	cmp r0, #0
	beq _08027372
	adds r1, r0, #0
_08027372:
	adds r0, r2, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #2
	cmp r0, #0
	beq _08027388
	adds r1, r0, #0
_08027388:
	mov r0, sb
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0801E108
	ldr r0, [r6, #0x50]
	ldr r1, [r6, #0x2c]
	ldr r2, _080273DC @ =0x000001FF
	ands r1, r2
	ldr r2, [r6, #0x30]
	movs r3, #0xff
	ands r2, r3
	movs r3, #0xc0
	lsls r3, r3, #2
	orrs r2, r3
	bl sub_0801C254
	adds r4, r6, #0
	adds r4, #0x44
	ldrh r1, [r4]
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _080273E0
	subs r0, r1, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08027400
	adds r0, r6, #0
	bl sub_0801CB20
	b _08027400
	.align 2, 0
_080273D8: .4byte gUnknown_0808F100
_080273DC: .4byte 0x000001FF
_080273E0:
	movs r0, #0
	ldrsh r3, [r7, r0]
	ldr r0, _08027410 @ =0xFFFFFF00
	adds r1, r3, r0
	lsrs r2, r1, #0x1f
	adds r1, r1, r2
	asrs r1, r1, #1
	subs r3, r3, r1
	adds r0, r3, r0
	cmp r0, #4
	bne _080273FE
	movs r3, #0x80
	lsls r3, r3, #1
	movs r0, #0x3c
	strh r0, [r4]
_080273FE:
	strh r3, [r7]
_08027400:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027410: .4byte 0xFFFFFF00

	thumb_func_start sub_08027414
sub_08027414: @ 0x08027414
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08034F8C
	ldr r0, [r4, #0x50]
	bl sub_0801C240
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08027428
sub_08027428: @ 0x08027428
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08027460 @ =gUnknown_08112614
	movs r1, #1
	movs r2, #1
	bl sub_0801C210
	str r0, [r4, #0x50]
	ldr r1, _08027464 @ =0x000031CA
	strh r1, [r0, #0x22]
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x30]
	ldr r2, [r4, #0x54]
	ldr r3, [r4, #0x50]
	bl sub_08027560
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	adds r4, #0x44
	ldr r0, _08027468 @ =0x0000FFFF
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027460: .4byte gUnknown_08112614
_08027464: .4byte 0x000031CA
_08027468: .4byte 0x0000FFFF

	thumb_func_start sub_0802746C
sub_0802746C: @ 0x0802746C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r4, _08027548 @ =gUnknown_0808F100
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	mov sb, r0
	adds r6, r7, #0
	adds r6, #0x64
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #2
	cmp r0, #0
	beq _08027498
	adds r1, r0, #0
_08027498:
	mov r0, sb
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	movs r1, #0
	ldrsh r5, [r4, r1]
	rsbs r0, r5, #0
	lsls r2, r0, #4
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #2
	adds r4, r6, #0
	cmp r0, #0
	beq _080274BC
	movs r0, #0
	ldrsh r1, [r4, r0]
_080274BC:
	adds r0, r2, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	lsls r2, r5, #4
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #2
	cmp r0, #0
	beq _080274D6
	adds r1, r0, #0
_080274D6:
	adds r0, r2, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r1, #2
	cmp r0, #0
	beq _080274EC
	adds r1, r0, #0
_080274EC:
	mov r0, sb
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	mov r1, sl
	mov r2, r8
	adds r3, r5, #0
	bl sub_0801E108
	ldr r0, [r7, #0x50]
	ldr r1, [r7, #0x2c]
	ldr r2, _0802754C @ =0x000001FF
	ands r1, r2
	ldr r2, [r7, #0x30]
	movs r3, #0xff
	ands r2, r3
	movs r3, #0xc0
	lsls r3, r3, #2
	orrs r2, r3
	bl sub_0801C254
	movs r1, #0
	ldrsh r3, [r6, r1]
	ldr r2, _08027550 @ =0xFFFFFF00
	adds r0, r3, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r3, r3, r0
	adds r2, r3, r2
	cmp r2, #4
	bne _08027536
	movs r3, #0x80
	lsls r3, r3, #1
_08027536:
	strh r3, [r6]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027548: .4byte gUnknown_0808F100
_0802754C: .4byte 0x000001FF
_08027550: .4byte 0xFFFFFF00

	thumb_func_start sub_08027554
sub_08027554: @ 0x08027554
	push {lr}
	ldr r0, [r0, #0x50]
	bl sub_0801C240
	pop {r0}
	bx r0

	thumb_func_start sub_08027560
sub_08027560: @ 0x08027560
	push {lr}
	adds r1, r2, #0
	cmp r0, #0x7f
	ble _08027572
	adds r1, #1
	adds r0, r3, #0
	bl sub_0801C4D4
	b _08027578
_08027572:
	adds r0, r3, #0
	bl sub_0801C4D4
_08027578:
	ldr r0, _08027590 @ =gUnknown_081121D0
	ldr r1, _08027594 @ =0x06013940
	bl sub_08011CAC
	ldr r0, _08027598 @ =gUnknown_081126E4
	movs r1, #0x98
	lsls r1, r1, #2
	movs r2, #0x20
	bl sub_08013618
	pop {r0}
	bx r0
	.align 2, 0
_08027590: .4byte gUnknown_081121D0
_08027594: .4byte 0x06013940
_08027598: .4byte gUnknown_081126E4

	thumb_func_start sub_0802759C
sub_0802759C: @ 0x0802759C
	push {lr}
	ldr r0, _080275B0 @ =gUnknown_08499CFC
	bl sub_0801CB28
	cmp r0, #0
	beq _080275AA
	movs r0, #1
_080275AA:
	pop {r1}
	bx r1
	.align 2, 0
_080275B0: .4byte gUnknown_08499CFC

	thumb_func_start sub_080275B4
sub_080275B4: @ 0x080275B4
	push {r4, lr}
	ldr r0, _08027604 @ =gUnknown_08090A9C
	ldr r3, [r0]
	ldr r2, [r3, #4]
	adds r4, r0, #0
	cmp r2, #3
	bgt _080275E0
	movs r0, #1
	strb r0, [r3]
	adds r0, r2, #0
	adds r0, #0x57
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r2, r0
	str r0, [r3, #4]
	movs r1, #0x56
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _080275E0
	movs r0, #0xfa
	str r0, [r3, #4]
_080275E0:
	ldr r3, [r4]
	ldr r2, [r3, #4]
	cmp r2, #0xad
	ble _080275FE
	adds r0, r2, #0
	subs r0, #0xad
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r2, r0
	str r0, [r3, #4]
	cmp r0, #0xae
	bgt _080275FE
	movs r0, #0xad
	str r0, [r3, #4]
_080275FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027604: .4byte gUnknown_08090A9C

	thumb_func_start sub_08027608
sub_08027608: @ 0x08027608
	push {r4, lr}
	ldr r0, _08027654 @ =gUnknown_08090AA0
	ldr r3, [r0]
	ldr r2, [r3, #4]
	adds r4, r0, #0
	cmp r2, #0xac
	ble _08027632
	movs r0, #0
	strb r0, [r3]
	adds r0, r2, #0
	subs r0, #0xfa
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r2, r0
	str r0, [r3, #4]
	cmp r0, #0xf8
	ble _08027632
	movs r0, #0x57
	rsbs r0, r0, #0
	str r0, [r3, #4]
_08027632:
	ldr r3, [r4]
	ldr r2, [r3, #4]
	cmp r2, #2
	bgt _0802764E
	subs r0, r2, #3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r2, r0
	str r0, [r3, #4]
	cmp r0, #1
	ble _0802764E
	movs r0, #3
	str r0, [r3, #4]
_0802764E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027654: .4byte gUnknown_08090AA0

	thumb_func_start sub_08027658
sub_08027658: @ 0x08027658
	push {r4, lr}
	ldr r3, _0802768C @ =gUnknown_030033E4
	ldrh r0, [r3]
	lsls r0, r0, #4
	ldr r1, _08027690 @ =gUnknown_08499590
	ldr r2, [r1]
	ldrh r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	lsls r0, r0, #4
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	bgt _080276A4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7f
	bgt _08027698
	bl sub_080275B4
	ldr r4, _08027694 @ =gUnknown_08090AA4
	b _080276C0
	.align 2, 0
_0802768C: .4byte gUnknown_030033E4
_08027690: .4byte gUnknown_08499590
_08027694: .4byte gUnknown_08090AA4
_08027698:
	bl sub_08027608
	ldr r4, _080276A0 @ =gUnknown_08090AA4
	b _080276C0
	.align 2, 0
_080276A0: .4byte gUnknown_08090AA4
_080276A4:
	ldr r0, _080276B8 @ =gUnknown_08090AA4
	ldr r1, [r0]
	ldrb r1, [r1]
	adds r4, r0, #0
	cmp r1, #1
	bne _080276BC
	bl sub_080275B4
	b _080276C0
	.align 2, 0
_080276B8: .4byte gUnknown_08090AA4
_080276BC:
	bl sub_08027608
_080276C0:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl sub_0804360C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080276D0
sub_080276D0: @ 0x080276D0
	push {lr}
	ldr r1, _080276E8 @ =gUnknown_03003130
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080276EC @ =gUnknown_08090A98
	movs r2, #0
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	bl sub_0804360C
	pop {r0}
	bx r0
	.align 2, 0
_080276E8: .4byte gUnknown_03003130
_080276EC: .4byte gUnknown_08090A98

	thumb_func_start sub_080276F0
sub_080276F0: @ 0x080276F0
	push {lr}
	ldr r1, _08027708 @ =gUnknown_03003130
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0802770C @ =gUnknown_08090A98
	movs r2, #2
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	bl sub_0804360C
	pop {r0}
	bx r0
	.align 2, 0
_08027708: .4byte gUnknown_03003130
_0802770C: .4byte gUnknown_08090A98

	thumb_func_start sub_08027710
sub_08027710: @ 0x08027710
	push {r4, lr}
	ldr r3, _08027744 @ =gUnknown_030033E4
	ldrh r0, [r3]
	lsls r0, r0, #4
	ldr r1, _08027748 @ =gUnknown_08499590
	ldr r2, [r1]
	ldrh r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	lsls r0, r0, #4
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4f
	bgt _0802774C
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7f
	bgt _08027754
	bl sub_080276F0
	b _08027764
	.align 2, 0
_08027744: .4byte gUnknown_030033E4
_08027748: .4byte gUnknown_08499590
_0802774C:
	ldr r0, _0802775C @ =gUnknown_03003130
	ldrb r0, [r0]
	cmp r0, #0
	bne _08027760
_08027754:
	bl sub_080276D0
	b _08027764
	.align 2, 0
_0802775C: .4byte gUnknown_03003130
_08027760:
	bl sub_080276F0
_08027764:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802776C
sub_0802776C: @ 0x0802776C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #1
	beq _08027794
	cmp r0, #1
	bgt _08027782
	cmp r0, #0
	beq _0802778C
	b _080277B4
_08027782:
	cmp r1, #2
	beq _0802779C
	cmp r1, #3
	beq _080277AC
	b _080277B4
_0802778C:
	ldr r0, _08027790 @ =sub_08027658
	b _0802779E
	.align 2, 0
_08027790: .4byte sub_08027658
_08027794:
	ldr r0, _08027798 @ =sub_080276D0
	b _0802779E
	.align 2, 0
_08027798: .4byte sub_080276D0
_0802779C:
	ldr r0, _080277A8 @ =sub_080276F0
_0802779E:
	movs r1, #0
	bl sub_0801F024
	b _080277B4
	.align 2, 0
_080277A8: .4byte sub_080276F0
_080277AC:
	ldr r0, _080277B8 @ =sub_08027710
	movs r1, #0
	bl sub_0801F024
_080277B4:
	pop {r0}
	bx r0
	.align 2, 0
_080277B8: .4byte sub_08027710

	thumb_func_start sub_080277BC
sub_080277BC: @ 0x080277BC
	push {r4, r5, r6, lr}
	ldr r5, _08027838 @ =gUnknown_03001470
	ldr r6, _0802783C @ =gUnknown_03001FBC
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r5
	ldrh r1, [r0, #0x24]
	adds r1, #1
	strh r1, [r0, #0x24]
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r4, _08027840 @ =gUnknown_08090AA8
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #0x24
	ldrsh r1, [r1, r2]
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_080157A4
	movs r1, #0
	ldrsh r0, [r6, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #0x24
	ldrsh r1, [r1, r2]
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r1, [r1, r2]
	bl sub_080157F4
	movs r0, #0
	ldrsh r1, [r6, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bne _08027832
	ldrb r0, [r6]
	bl sub_08015C30
_08027832:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027838: .4byte gUnknown_03001470
_0802783C: .4byte gUnknown_03001FBC
_08027840: .4byte gUnknown_08090AA8

	thumb_func_start sub_08027844
sub_08027844: @ 0x08027844
	push {r4, lr}
	ldr r4, _08027878 @ =gUnknown_03001FBC
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_08015820
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x10
	bgt _0802787C
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r1, #1
	bl sub_080157F4
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_08015328
	b _08027884
	.align 2, 0
_08027878: .4byte gUnknown_03001FBC
_0802787C:
	movs r2, #0
	ldrsh r0, [r4, r2]
	bl sub_080157F4
_08027884:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802788C
sub_0802788C: @ 0x0802788C
	push {r4, r5, lr}
	ldr r4, _080278F4 @ =gUnknown_03002020
	ldr r3, _080278F8 @ =gUnknown_03001470
	ldr r2, _080278FC @ =gUnknown_03001FBC
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080278AA
	adds r0, #3
_080278AA:
	asrs r0, r0, #2
	strh r0, [r4]
	ldr r4, _08027900 @ =gUnknown_03002B28
	movs r5, #0
	ldrsh r1, [r2, r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	movs r5, #0x1e
	ldrsh r1, [r0, r5]
	cmp r1, #0
	bge _080278C6
	adds r1, #3
_080278C6:
	asrs r1, r1, #2
	movs r0, #0x10
	subs r0, r0, r1
	strh r0, [r4]
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r3
	ldrh r0, [r1, #0x1e]
	adds r0, #1
	strh r0, [r1, #0x1e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _080278EE
	ldrb r0, [r2]
	bl sub_08015C30
_080278EE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080278F4: .4byte gUnknown_03002020
_080278F8: .4byte gUnknown_03001470
_080278FC: .4byte gUnknown_03001FBC
_08027900: .4byte gUnknown_03002B28

	thumb_func_start sub_08027904
sub_08027904: @ 0x08027904
	push {r4, r5, lr}
	ldr r4, _08027970 @ =gUnknown_03002020
	ldr r3, _08027974 @ =gUnknown_03001470
	ldr r2, _08027978 @ =gUnknown_03001FBC
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	movs r5, #0x1e
	ldrsh r1, [r0, r5]
	cmp r1, #0
	bge _08027922
	adds r1, #3
_08027922:
	asrs r1, r1, #2
	movs r0, #8
	subs r0, r0, r1
	strh r0, [r4]
	ldr r4, _0802797C @ =gUnknown_03002B28
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08027942
	adds r0, #3
_08027942:
	asrs r0, r0, #2
	adds r0, #8
	strh r0, [r4]
	movs r5, #0
	ldrsh r0, [r2, r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r3
	ldrh r0, [r1, #0x1e]
	adds r0, #1
	strh r0, [r1, #0x1e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _08027968
	ldrb r0, [r2]
	bl sub_08015C30
_08027968:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08027970: .4byte gUnknown_03002020
_08027974: .4byte gUnknown_03001470
_08027978: .4byte gUnknown_03001FBC
_0802797C: .4byte gUnknown_03002B28

	thumb_func_start sub_08027980
sub_08027980: @ 0x08027980
	bx lr
	.align 2, 0

	thumb_func_start sub_08027984
sub_08027984: @ 0x08027984
	push {r4, r5, lr}
	ldr r5, _080279FC @ =gUnknown_03001FBC
	movs r1, #0
	ldrsh r0, [r5, r1]
	bl sub_080157D0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r2, _08027A00 @ =0xFFF00000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	bl sub_080157A4
	movs r1, #0
	ldrsh r0, [r5, r1]
	bl sub_08015820
	adds r1, r0, #0
	lsls r1, r1, #0x10
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r2, _08027A00 @ =0xFFF00000
	adds r1, r1, r2
	asrs r1, r1, #0x10
	bl sub_080157F4
	movs r1, #0
	ldrsh r0, [r5, r1]
	bl sub_08015900
	adds r4, r0, #0
	lsls r4, r4, #0x10
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldr r1, _08027A04 @ =0xFFFE0000
	adds r4, r4, r1
	asrs r4, r4, #0x10
	adds r1, r4, #0
	bl sub_080158D4
	cmp r4, #0
	bne _080279F4
	movs r2, #0
	ldrsh r0, [r5, r2]
	bl sub_08016974
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r1, #1
	bl sub_080156FC
	ldrb r0, [r5]
	bl sub_08015C30
_080279F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080279FC: .4byte gUnknown_03001FBC
_08027A00: .4byte 0xFFF00000
_08027A04: .4byte 0xFFFE0000

	thumb_func_start sub_08027A08
sub_08027A08: @ 0x08027A08
	push {r4, lr}
	ldr r4, _08027A3C @ =gUnknown_03001FBC
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_080157D0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	lsrs r0, r0, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	bgt _08027A40
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r1, #1
	bl sub_080157A4
	movs r1, #0
	ldrsh r0, [r4, r1]
	bl sub_08015328
	b _08027A48
	.align 2, 0
_08027A3C: .4byte gUnknown_03001FBC
_08027A40:
	movs r2, #0
	ldrsh r0, [r4, r2]
	bl sub_080157A4
_08027A48:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08027A50
sub_08027A50: @ 0x08027A50
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0xc
	adds r6, r0, #0
	mov r8, r1
	adds r5, r2, #0
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08027AFC @ =gUnknown_08499DE8
	ldr r2, _08027B00 @ =gUnknown_08499DDC
	movs r1, #0
	str r1, [sp]
	movs r3, #0
	bl sub_08015438
	adds r4, r0, #0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_08015638
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r0, _08027B04 @ =0xFFFF0FFF
	ands r0, r2
	movs r3, #0xc0
	lsls r3, r3, #6
	orrs r0, r3
	movs r3, #0xe5
	lsls r3, r3, #1
	adds r5, r5, r3
	ldr r3, _08027B08 @ =0x000003FF
	ands r5, r3
	ldr r3, _08027B0C @ =0xFFFFFC00
	ands r0, r3
	adds r2, r0, #0
	orrs r2, r5
	adds r0, r4, #0
	bl sub_08015608
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r0, r8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_080155C0
	adds r0, r4, #0
	bl sub_08016824
	adds r0, r4, #0
	bl sub_08016944
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080157A4
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080157F4
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_080158D4
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027AFC: .4byte gUnknown_08499DE8
_08027B00: .4byte gUnknown_08499DDC
_08027B04: .4byte 0xFFFF0FFF
_08027B08: .4byte 0x000003FF
_08027B0C: .4byte 0xFFFFFC00

	thumb_func_start sub_08027B10
sub_08027B10: @ 0x08027B10
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r1, [sp, #0x14]
	ldr r0, _08027B64 @ =gUnknown_08499E18
	bl Proc_Start
	adds r2, r0, #0
	str r5, [r2, #0x2c]
	str r6, [r2, #0x30]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2, #0x34]
	str r0, [r2, #0x38]
	adds r1, r2, #0
	adds r1, #0x48
	movs r0, #0x20
	strh r0, [r1]
	movs r0, #0xe5
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r1, #0xc0
	lsls r1, r1, #6
	adds r0, r1, #0
	adds r1, r2, #0
	adds r1, #0x4a
	orrs r4, r0
	strh r4, [r1]
	adds r0, r2, #0
	adds r0, #0x6a
	mov r1, r8
	strh r1, [r0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08027B64: .4byte gUnknown_08499E18

	thumb_func_start sub_08027B68
sub_08027B68: @ 0x08027B68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	subs r0, #0x10
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	subs r0, #0x10
	str r0, [r4, #0x38]
	adds r6, r4, #0
	adds r6, #0x48
	ldrh r0, [r6]
	subs r0, #2
	strh r0, [r6]
	ldr r5, _08027C80 @ =gUnknown_0808F100
	movs r1, #0xff
	mov r8, r1
	ands r0, r1
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	ldr r1, [r4, #0x34]
	cmp r1, #0
	bne _08027BA8
	movs r1, #2
_08027BA8:
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	ldrh r1, [r6]
	mov r0, r8
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #4
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _08027BCC
	movs r1, #2
_08027BCC:
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldrh r1, [r6]
	mov r0, r8
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	ldr r1, [r4, #0x34]
	cmp r1, #0
	bne _08027BEE
	movs r1, #2
_08027BEE:
	bl Div
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	ldrh r1, [r6]
	mov r0, r8
	ands r0, r1
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _08027C10
	movs r1, #2
_08027C10:
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x6a
	movs r2, #0
	ldrsh r1, [r5, r2]
	str r0, [sp]
	adds r0, r1, #0
	mov r1, sl
	mov r2, sb
	adds r3, r7, #0
	bl sub_0801E108
	ldr r1, [r4, #0x2c]
	ldr r0, _08027C84 @ =0x000001FF
	ands r1, r0
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #9
	orrs r1, r0
	ldr r2, [r4, #0x30]
	mov r0, r8
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r2, r0
	ldr r3, _08027C88 @ =gUnknown_08499E10
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0
	bl sub_0801BEFC
	movs r1, #0
	ldrsh r0, [r6, r1]
	cmp r0, #0
	bne _08027C6E
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0x32
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0801CB20
_08027C6E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027C80: .4byte gUnknown_0808F100
_08027C84: .4byte 0x000001FF
_08027C88: .4byte gUnknown_08499E10

	thumb_func_start sub_08027C8C
sub_08027C8C: @ 0x08027C8C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x2c]
	ldr r2, [r4, #0x30]
	ldr r3, _08027CC4 @ =gUnknown_08499E08
	adds r0, #0x4a
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0
	bl sub_0801BEBC
	adds r1, r4, #0
	adds r1, #0x64
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08027CBA
	adds r0, r4, #0
	bl sub_0801CB20
_08027CBA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08027CC4: .4byte gUnknown_08499E08

	thumb_func_start sub_08027CC8
sub_08027CC8: @ 0x08027CC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	movs r1, #2
	bl Div
	ldr r1, [r4, #0x34]
	subs r1, r1, r0
	str r1, [r4, #0x34]
	cmp r1, #4
	bgt _08027CF0
	adds r0, r4, #0
	bl Proc_End
	b _08027DBC
_08027CF0:
	ldr r7, _08027DCC @ =gUnknown_0808F100
	adds r5, r4, #0
	adds r5, #0x48
	movs r6, #0xff
	ldrb r0, [r5]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	cmp r1, #0
	bne _08027D0C
	movs r1, #2
_08027D0C:
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	ldrh r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #4
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _08027D30
	movs r1, #2
_08027D30:
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
	ldrh r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	ldr r1, [r4, #0x34]
	cmp r1, #0
	bne _08027D52
	movs r1, #2
_08027D52:
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	ldrh r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _08027D76
	movs r1, #2
_08027D76:
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x6a
	movs r2, #0
	ldrsh r1, [r5, r2]
	str r0, [sp]
	adds r0, r1, #0
	mov r1, sl
	mov r2, sb
	mov r3, r8
	bl sub_0801E108
	ldr r1, [r4, #0x2c]
	ldr r0, _08027DD0 @ =0x000001FF
	ands r1, r0
	movs r2, #0
	ldrsh r0, [r5, r2]
	lsls r0, r0, #9
	orrs r1, r0
	ldr r2, [r4, #0x30]
	ands r2, r6
	movs r0, #0xc0
	lsls r0, r0, #2
	orrs r2, r0
	ldr r3, _08027DD4 @ =gUnknown_08499E10
	adds r0, r4, #0
	adds r0, #0x4a
	ldrh r0, [r0]
	str r0, [sp]
	movs r0, #0
	bl sub_0801BEFC
_08027DBC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08027DCC: .4byte gUnknown_0808F100
_08027DD0: .4byte 0x000001FF
_08027DD4: .4byte gUnknown_08499E10

	thumb_func_start sub_08027DD8
sub_08027DD8: @ 0x08027DD8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08027E04 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _08027E14
	ldr r0, _08027E08 @ =gUnknown_08499E18
	bl sub_0801CD14
	ldr r0, _08027E0C @ =gUnknown_08499D90
	bl sub_0801537C
	ldr r1, _08027E10 @ =gUnknown_03002F1C
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [r5, #8]
	b _08027FB4
	.align 2, 0
_08027E04: .4byte gUnknown_03002EE0
_08027E08: .4byte gUnknown_08499E18
_08027E0C: .4byte gUnknown_08499D90
_08027E10: .4byte gUnknown_03002F1C
_08027E14:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r0, #0x4b
	bls _08027E1E
	b _08027FAE
_08027E1E:
	lsls r0, r0, #2
	ldr r1, _08027E28 @ =_08027E2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08027E28: .4byte _08027E2C
_08027E2C: @ jump table
	.4byte _08027F80 @ case 0
	.4byte _08027FAE @ case 1
	.4byte _08027FAE @ case 2
	.4byte _08027FAE @ case 3
	.4byte _08027FAE @ case 4
	.4byte _08027F80 @ case 5
	.4byte _08027FAE @ case 6
	.4byte _08027FAE @ case 7
	.4byte _08027FAE @ case 8
	.4byte _08027FAE @ case 9
	.4byte _08027F80 @ case 10
	.4byte _08027FAE @ case 11
	.4byte _08027FAE @ case 12
	.4byte _08027FAE @ case 13
	.4byte _08027FAE @ case 14
	.4byte _08027F78 @ case 15
	.4byte _08027FAE @ case 16
	.4byte _08027FAE @ case 17
	.4byte _08027FAE @ case 18
	.4byte _08027FAE @ case 19
	.4byte _08027F5C @ case 20
	.4byte _08027FAE @ case 21
	.4byte _08027FAE @ case 22
	.4byte _08027FAE @ case 23
	.4byte _08027FAE @ case 24
	.4byte _08027F6A @ case 25
	.4byte _08027FAE @ case 26
	.4byte _08027FAE @ case 27
	.4byte _08027FAE @ case 28
	.4byte _08027FAE @ case 29
	.4byte _08027F80 @ case 30
	.4byte _08027FAE @ case 31
	.4byte _08027FAE @ case 32
	.4byte _08027FAE @ case 33
	.4byte _08027FAE @ case 34
	.4byte _08027FAE @ case 35
	.4byte _08027FAE @ case 36
	.4byte _08027FAE @ case 37
	.4byte _08027FAE @ case 38
	.4byte _08027FAE @ case 39
	.4byte _08027FAE @ case 40
	.4byte _08027FAE @ case 41
	.4byte _08027FAE @ case 42
	.4byte _08027FAE @ case 43
	.4byte _08027FAE @ case 44
	.4byte _08027FAE @ case 45
	.4byte _08027FAE @ case 46
	.4byte _08027FAE @ case 47
	.4byte _08027FAE @ case 48
	.4byte _08027FAE @ case 49
	.4byte _08027FAE @ case 50
	.4byte _08027FAE @ case 51
	.4byte _08027FAE @ case 52
	.4byte _08027FAE @ case 53
	.4byte _08027FAE @ case 54
	.4byte _08027FAE @ case 55
	.4byte _08027FAE @ case 56
	.4byte _08027FAE @ case 57
	.4byte _08027FAE @ case 58
	.4byte _08027FAE @ case 59
	.4byte _08027FAE @ case 60
	.4byte _08027FAE @ case 61
	.4byte _08027FAE @ case 62
	.4byte _08027FAE @ case 63
	.4byte _08027FAE @ case 64
	.4byte _08027FAE @ case 65
	.4byte _08027FAE @ case 66
	.4byte _08027FAE @ case 67
	.4byte _08027FAE @ case 68
	.4byte _08027FAE @ case 69
	.4byte _08027FAE @ case 70
	.4byte _08027FAE @ case 71
	.4byte _08027FAE @ case 72
	.4byte _08027FAE @ case 73
	.4byte _08027FAE @ case 74
	.4byte _08027FAA @ case 75
_08027F5C:
	ldrh r0, [r5, #0x20]
	adds r0, #0x10
	strh r0, [r5, #0x20]
	ldr r0, _08027F74 @ =gUnknown_03004080
	ldrh r0, [r0]
	cmp r0, #0x63
	bls _08027FAE
_08027F6A:
	ldr r0, _08027F74 @ =gUnknown_03004080
	ldrh r0, [r0]
	cmp r0, #9
	bls _08027FAE
	b _08027F80
	.align 2, 0
_08027F74: .4byte gUnknown_03004080
_08027F78:
	bl sub_0802813C
	cmp r0, #4
	bne _08027FAE
_08027F80:
	movs r0, #0x20
	ldrsh r4, [r5, r0]
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	movs r1, #5
	bl __divsi3
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	lsls r2, r3, #4
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x50
	bl sub_08027B10
	ldrh r0, [r5, #0x20]
	adds r0, #0x18
	strh r0, [r5, #0x20]
	b _08027FAE
_08027FAA:
	movs r0, #0
	str r0, [r5, #8]
_08027FAE:
	ldrh r0, [r5, #0x1e]
	adds r0, #1
	strh r0, [r5, #0x1e]
_08027FB4:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08027FBC
sub_08027FBC: @ 0x08027FBC
	push {lr}
	adds r3, r2, #0
	lsls r1, r1, #0x10
	lsls r3, r3, #0x10
	lsrs r1, r1, #0xc
	ldr r2, _08027FEC @ =0x000003FF
	ands r1, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	lsrs r3, r3, #0xc
	movs r1, #0xe5
	lsls r1, r1, #1
	adds r3, r3, r1
	ands r3, r2
	lsls r3, r3, #5
	ldr r1, _08027FF0 @ =0x06010000
	adds r3, r3, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r3, #0
	bl sub_08011E54
	pop {r0}
	bx r0
	.align 2, 0
_08027FEC: .4byte 0x000003FF
_08027FF0: .4byte 0x06010000

	thumb_func_start sub_08027FF4
sub_08027FF4: @ 0x08027FF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov sb, r0
	ldr r0, _0802810C @ =gUnknown_08090ABC
	mov r8, r0
	ldr r0, [r0]
	ldrh r7, [r0]
	movs r6, #6
	ldr r0, _08028110 @ =gUnknown_08125A8C
	ldr r5, _08028114 @ =gUnknown_08090AC0
	ldr r4, [r5]
	adds r1, r4, #0
	bl sub_08011CAC
	bl sub_0801F48C
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r4, r4, r1
	adds r1, r4, #0
	bl sub_08011CAC
_08028026:
	adds r0, r7, #0
	movs r1, #0xa
	bl __umodsi3
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r0, [r5]
	adds r2, r6, #0
	bl sub_08027FBC
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0
	bne _08028026
	ldr r4, [r5]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl sub_08027FBC
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #1
	bl sub_08027FBC
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #2
	bl sub_08027FBC
	adds r0, r4, #0
	movs r1, #0xd
	movs r2, #3
	bl sub_08027FBC
	ldr r0, _08028118 @ =gUnknown_081268B8
	movs r1, #0x98
	lsls r1, r1, #2
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _0802811C @ =gUnknown_080A1178
	ldr r1, _08028120 @ =0x060045E0
	movs r2, #0xc0
	bl sub_08011E54
	ldr r3, _08028124 @ =gUnknown_080A1238
	ldr r0, _08028128 @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _0802812C @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1a]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r3
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _08028130 @ =gUnknown_08499578
	ldr r0, [r0]
	ldr r1, _08028134 @ =gUnknown_080A12B8
	ldr r2, _08028138 @ =0x0000922F
	str r2, [sp]
	movs r2, #0
	movs r3, #7
	bl sub_08012B70
	bl sub_08013AEC
	bl sub_08024378
	movs r4, #1
	mov r1, r8
	ldr r0, [r1]
	ldrh r0, [r0]
	cmp r0, #9
	bls _080280DE
	movs r4, #2
_080280DE:
	cmp r0, #0x63
	bls _080280E4
	movs r4, #3
_080280E4:
	bl sub_0802813C
	adds r0, r0, r4
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r1
	asrs r0, r0, #1
	mov r1, sb
	strh r0, [r1, #0x20]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802810C: .4byte gUnknown_08090ABC
_08028110: .4byte gUnknown_08125A8C
_08028114: .4byte gUnknown_08090AC0
_08028118: .4byte gUnknown_081268B8
_0802811C: .4byte gUnknown_080A1178
_08028120: .4byte 0x060045E0
_08028124: .4byte gUnknown_080A1238
_08028128: .4byte gUnknown_030033EC
_0802812C: .4byte gUnknown_08499598
_08028130: .4byte gUnknown_08499578
_08028134: .4byte gUnknown_080A12B8
_08028138: .4byte 0x0000922F

	thumb_func_start sub_0802813C
sub_0802813C: @ 0x0802813C
	ldr r1, _0802814C @ =gUnknown_08499E38
	ldr r0, _08028150 @ =gUnknown_02028E40
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0802814C: .4byte gUnknown_08499E38
_08028150: .4byte gUnknown_02028E40

	thumb_func_start sub_08028154
sub_08028154: @ 0x08028154
	push {lr}
	bl sub_08013C00
	bl sub_08013AEC
	bl sub_08024584
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08028168
sub_08028168: @ 0x08028168
	push {lr}
	ldr r0, _08028178 @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_0801A5B0
	pop {r0}
	bx r0
	.align 2, 0
_08028178: .4byte gUnknown_030033EC

	thumb_func_start sub_0802817C
sub_0802817C: @ 0x0802817C
	push {lr}
	ldr r0, _0802818C @ =gUnknown_08499E4C
	movs r1, #0
	bl sub_080152EC
	pop {r0}
	bx r0
	.align 2, 0
_0802818C: .4byte gUnknown_08499E4C

	thumb_func_start sub_08028190
sub_08028190: @ 0x08028190
	push {lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _0802819C
	bl sub_080196F4
_0802819C:
	pop {r0}
	bx r0

	thumb_func_start sub_080281A0
sub_080281A0: @ 0x080281A0
	push {lr}
	ldr r0, _080281B8 @ =gUnknown_08499EE4
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080281BC
	movs r0, #1
	b _080281BE
	.align 2, 0
_080281B8: .4byte gUnknown_08499EE4
_080281BC:
	movs r0, #0
_080281BE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080281C4
sub_080281C4: @ 0x080281C4
	push {lr}
	ldr r0, _080281D4 @ =gUnknown_08499EE4
	movs r1, #0
	bl sub_080152EC
	pop {r0}
	bx r0
	.align 2, 0
_080281D4: .4byte gUnknown_08499EE4

	thumb_func_start sub_080281D8
sub_080281D8: @ 0x080281D8
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, _080281EC @ =gUnknown_08499EE4
	movs r1, #0
	bl sub_080152EC
	str r4, [r0, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080281EC: .4byte gUnknown_08499EE4

	thumb_func_start sub_080281F0
sub_080281F0: @ 0x080281F0
	push {r4, r5, r6, r7, lr}
	ldr r1, _08028210 @ =gUnknown_08090AF4
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r2, [r0, #4]
	movs r0, #9
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	beq _08028218
	ldr r0, _08028214 @ =gUnknown_03001FBC
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08015328
	b _080283C6
	.align 2, 0
_08028210: .4byte gUnknown_08090AF4
_08028214: .4byte gUnknown_03001FBC
_08028218:
	movs r0, #0x40
	ands r0, r2
	ldr r4, _080282A0 @ =gUnknown_08090AF8
	ldr r3, _080282A4 @ =gUnknown_08090AFC
	cmp r0, #0
	beq _08028242
	ldr r2, [r3]
	ldr r0, [r4]
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r1, r0, r2
	ldrh r2, [r1, #0x1e]
	movs r7, #0x1e
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble _08028242
	subs r0, r2, #1
	strh r0, [r1, #0x1e]
_08028242:
	ldr r0, [r5]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802826E
	ldr r2, [r3]
	ldr r0, [r4]
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r1, r0, r2
	ldrh r2, [r1, #0x1e]
	movs r7, #0x1e
	ldrsh r0, [r1, r7]
	cmp r0, #1
	bgt _0802826E
	adds r0, r2, #1
	strh r0, [r1, #0x1e]
_0802826E:
	ldr r0, [r5]
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	movs r0, #0x20
	ands r0, r1
	ldr r6, _080282A8 @ =gUnknown_08090B00
	cmp r0, #0
	beq _080282F0
	ldr r2, [r3]
	ldr r0, [r4]
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	cmp r0, #1
	beq _080282C8
	cmp r0, #1
	bgt _080282AC
	cmp r0, #0
	beq _080282B2
	b _080282F0
	.align 2, 0
_080282A0: .4byte gUnknown_08090AF8
_080282A4: .4byte gUnknown_08090AFC
_080282A8: .4byte gUnknown_08090B00
_080282AC:
	cmp r0, #2
	beq _080282E0
	b _080282F0
_080282B2:
	ldr r0, _080282C4 @ =gUnknown_08499F4C
	ldr r2, [r6]
	ldrb r1, [r2, #2]
	ldrh r0, [r0]
	cmp r0, r1
	bhs _080282F0
	subs r0, r1, #1
	strb r0, [r2, #2]
	b _080282F0
	.align 2, 0
_080282C4: .4byte gUnknown_08499F4C
_080282C8:
	ldr r0, _080282DC @ =gUnknown_08499F4C
	ldr r1, [r6]
	adds r1, #0x2c
	ldrb r2, [r1]
	ldrh r0, [r0, #4]
	cmp r0, r2
	bhs _080282F0
	subs r0, r2, #1
	strb r0, [r1]
	b _080282F0
	.align 2, 0
_080282DC: .4byte gUnknown_08499F4C
_080282E0:
	ldr r0, _08028320 @ =gUnknown_08499F4C
	ldr r2, [r6]
	ldrb r1, [r2, #0xd]
	ldrh r0, [r0, #8]
	cmp r0, r1
	bhs _080282F0
	subs r0, r1, #1
	strb r0, [r2, #0xd]
_080282F0:
	ldr r0, [r5]
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08028368
	ldr r2, [r3]
	ldr r0, [r4]
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r7, #0x1e
	ldrsh r0, [r0, r7]
	cmp r0, #1
	beq _08028340
	cmp r0, #1
	bgt _08028324
	cmp r0, #0
	beq _0802832A
	b _08028368
	.align 2, 0
_08028320: .4byte gUnknown_08499F4C
_08028324:
	cmp r0, #2
	beq _08028358
	b _08028368
_0802832A:
	ldr r0, _0802833C @ =gUnknown_08499F4C
	ldr r2, [r6]
	ldrb r1, [r2, #2]
	ldrh r0, [r0, #2]
	cmp r0, r1
	bls _08028368
	adds r0, r1, #1
	strb r0, [r2, #2]
	b _08028368
	.align 2, 0
_0802833C: .4byte gUnknown_08499F4C
_08028340:
	ldr r0, _08028354 @ =gUnknown_08499F4C
	ldr r1, [r6]
	adds r1, #0x2c
	ldrb r2, [r1]
	ldrh r0, [r0, #6]
	cmp r0, r2
	bls _08028368
	adds r0, r2, #1
	strb r0, [r1]
	b _08028368
	.align 2, 0
_08028354: .4byte gUnknown_08499F4C
_08028358:
	ldr r0, _080283CC @ =gUnknown_08499F4C
	ldr r2, [r6]
	ldrb r1, [r2, #0xd]
	ldrh r0, [r0, #0xa]
	cmp r0, r1
	bls _08028368
	adds r0, r1, #1
	strb r0, [r2, #0xd]
_08028368:
	ldr r2, [r3]
	ldr r0, [r4]
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r5, #0x1e
	ldrsh r1, [r0, r5]
	lsls r1, r1, #0x11
	movs r7, #0xe0
	lsls r7, r7, #0xc
	adds r1, r1, r7
	asrs r1, r1, #0x10
	ldr r2, _080283D0 @ =gUnknown_08090AD4
	movs r0, #8
	bl sub_08013428
	ldr r2, _080283D4 @ =gUnknown_08090AD8
	ldr r4, [r6]
	ldrb r3, [r4, #2]
	movs r0, #0xa
	movs r1, #0xe
	bl sub_08013428
	ldr r2, _080283D8 @ =gUnknown_08090AE4
	ldr r5, _080283DC @ =gUnknown_08090AC4
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r3, [r0]
	movs r0, #0xa
	movs r1, #0x10
	bl sub_08013428
	ldr r2, _080283E0 @ =gUnknown_08090AEC
	ldrb r0, [r4, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r3, [r0]
	movs r0, #0xa
	movs r1, #0x12
	bl sub_08013428
_080283C6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080283CC: .4byte gUnknown_08499F4C
_080283D0: .4byte gUnknown_08090AD4
_080283D4: .4byte gUnknown_08090AD8
_080283D8: .4byte gUnknown_08090AE4
_080283DC: .4byte gUnknown_08090AC4
_080283E0: .4byte gUnknown_08090AEC

	thumb_func_start sub_080283E4
sub_080283E4: @ 0x080283E4
	push {r4, r5, r6, r7, lr}
	ldr r4, _08028488 @ =gUnknown_03002EE0
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #9
	ands r0, r1
	ldr r5, _0802848C @ =gUnknown_08090B44
	ldr r7, _08028490 @ =gUnknown_08090B48
	cmp r0, #0
	beq _0802841A
	ldr r3, _08028494 @ =gUnknown_08499598
	ldr r0, [r3]
	ldr r1, [r5]
	adds r2, r1, #0
	adds r2, #0x39
	ldrb r2, [r2]
	adds r0, #0x57
	strb r2, [r0]
	ldr r0, [r3]
	adds r1, #0x3a
	ldrb r1, [r1]
	adds r0, #0x93
	strb r1, [r0]
	ldr r0, [r7]
	ldrb r0, [r0]
	bl sub_08015C30
_0802841A:
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08028432
	ldr r2, [r5]
	ldrb r1, [r2, #0xd]
	movs r0, #1
	subs r0, r0, r1
	strb r0, [r2, #0xd]
_08028432:
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #0x30
	ands r0, r1
	ldr r6, _08028498 @ =gUnknown_08090B4C
	cmp r0, #0
	beq _08028458
	ldr r2, [r6]
	ldr r0, [r7]
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r2
	ldrh r2, [r1, #0x38]
	movs r0, #1
	subs r0, r0, r2
	strh r0, [r1, #0x38]
_08028458:
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq _080284A0
	ldr r2, [r5]
	ldr r3, [r6]
	ldr r0, [r7]
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	movs r1, #0x38
	ldrsh r0, [r0, r1]
	adds r2, r2, r0
	adds r2, #0x39
	ldrb r0, [r2]
	cmp r0, #1
	bne _0802849C
	movs r0, #2
	b _0802849E
	.align 2, 0
_08028488: .4byte gUnknown_03002EE0
_0802848C: .4byte gUnknown_08090B44
_08028490: .4byte gUnknown_08090B48
_08028494: .4byte gUnknown_08499598
_08028498: .4byte gUnknown_08090B4C
_0802849C:
	movs r0, #1
_0802849E:
	strb r0, [r2]
_080284A0:
	ldr r0, [r5]
	ldrb r0, [r0, #0xd]
	cmp r0, #1
	bne _080284B8
	ldr r2, _080284B4 @ =gUnknown_08090B04
	movs r0, #8
	movs r1, #0xd
	bl sub_08013428
	b _080284C2
	.align 2, 0
_080284B4: .4byte gUnknown_08090B04
_080284B8:
	ldr r2, _080284D8 @ =gUnknown_08090B14
	movs r0, #8
	movs r1, #0xd
	bl sub_08013428
_080284C2:
	ldr r0, [r5]
	adds r0, #0x39
	ldrb r0, [r0]
	cmp r0, #1
	bne _080284E0
	ldr r2, _080284DC @ =gUnknown_08090B28
	movs r0, #0xb
	movs r1, #0xa
	bl sub_08013428
	b _080284EA
	.align 2, 0
_080284D8: .4byte gUnknown_08090B14
_080284DC: .4byte gUnknown_08090B28
_080284E0:
	ldr r2, _08028500 @ =gUnknown_08090B2C
	movs r0, #0xb
	movs r1, #0xa
	bl sub_08013428
_080284EA:
	ldr r0, [r5]
	adds r0, #0x3a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08028508
	ldr r2, _08028504 @ =gUnknown_08090B30
	movs r0, #0x11
	movs r1, #0xa
	bl sub_08013428
	b _08028512
	.align 2, 0
_08028500: .4byte gUnknown_08090B2C
_08028504: .4byte gUnknown_08090B30
_08028508:
	ldr r2, _08028558 @ =gUnknown_08090B2C
	movs r0, #0x11
	movs r1, #0xa
	bl sub_08013428
_08028512:
	ldr r2, _0802855C @ =gUnknown_08090B34
	movs r0, #0xe
	movs r1, #0xa
	bl sub_08013428
	ldr r2, [r6]
	ldr r0, [r7]
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r4, #0x38
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x11
	movs r1, #0xb0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	asrs r0, r0, #0x10
	ldr r2, _08028560 @ =gUnknown_08090B38
	movs r1, #0xb
	bl sub_08013428
	ldr r2, _08028564 @ =gUnknown_08090B3C
	movs r0, #0xc
	movs r1, #6
	bl sub_08013428
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028558: .4byte gUnknown_08090B2C
_0802855C: .4byte gUnknown_08090B34
_08028560: .4byte gUnknown_08090B38
_08028564: .4byte gUnknown_08090B3C

	thumb_func_start sub_08028568
sub_08028568: @ 0x08028568
	push {lr}
	bl sub_08027118
	bl sub_0807443C
	ldr r1, _0802857C @ =gUnknown_030032D8
	movs r0, #0x12
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0802857C: .4byte gUnknown_030032D8

	thumb_func_start sub_08028580
sub_08028580: @ 0x08028580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	ldr r3, _08028644 @ =gUnknown_08499FA0
	adds r7, r0, #0
	adds r7, #0x64
	movs r0, #0
	ldrsh r1, [r7, r0]
	ldr r4, _08028648 @ =gUnknown_08090B50
	ldr r2, [r4]
	mov r8, r2
	ldr r2, [r2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1a]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_08019818
	ldr r0, [sp]
	adds r0, #0x66
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #2
	bne _0802865C
	ldr r0, _0802864C @ =gUnknown_08499590
	ldr r5, [r0]
	movs r6, #0
	ldrsh r4, [r7, r6]
	mov r1, r8
	ldr r0, [r1]
	lsls r2, r4, #4
	subs r2, r2, r4
	lsls r2, r2, #2
	adds r2, r2, r0
	adds r0, r2, #0
	adds r0, #0x2e
	ldrb r3, [r0]
	movs r1, #0x7f
	adds r0, r1, #0
	ands r0, r3
	lsls r0, r0, #1
	ldr r6, _08028650 @ =0x0000417A
	adds r3, r5, r6
	adds r3, r3, r0
	adds r2, #0x2d
	ldrb r2, [r2]
	adds r0, r1, #0
	ands r0, r2
	ldrh r3, [r3]
	adds r0, r0, r3
	ldr r2, _08028654 @ =0x00001432
	adds r5, r5, r2
	adds r5, r5, r0
	ldrb r0, [r5]
	lsrs r0, r0, #5
	mov sb, r0
	ldr r6, _08028658 @ =gUnknown_084995F4
	lsls r4, r4, #1
	adds r4, r4, r6
	ldrb r2, [r4]
	movs r0, #8
	orrs r0, r2
	strb r0, [r5]
	movs r0, #0
	ldrsh r3, [r7, r0]
	mov r2, r8
	ldr r0, [r2]
	lsls r2, r3, #4
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, r2, r0
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r4, [r0]
	adds r0, r1, #0
	ands r0, r4
	adds r2, #0x2e
	ldrb r2, [r2]
	ands r1, r2
	lsls r3, r3, #1
	adds r3, r3, r6
	ldrb r2, [r3]
	bl sub_080240B4
	bl sub_080219AC
	b _08028660
	.align 2, 0
_08028644: .4byte gUnknown_08499FA0
_08028648: .4byte gUnknown_08090B50
_0802864C: .4byte gUnknown_08499590
_08028650: .4byte 0x0000417A
_08028654: .4byte 0x00001432
_08028658: .4byte gUnknown_084995F4
_0802865C:
	movs r3, #0
	mov sb, r3
_08028660:
	movs r6, #0
	mov r8, r6
	ldr r1, _08028740 @ =gUnknown_03003150
	ldrb r0, [r1]
	ldr r2, [sp]
	adds r2, #0x68
	str r2, [sp, #4]
	cmp r0, #0xff
	bne _08028674
	b _080287A6
_08028674:
	mov sl, r1
	mov r3, sb
	lsls r0, r3, #1
	ldr r6, _08028744 @ =gUnknown_084995F4
	adds r5, r0, r6
_0802867E:
	mov r0, r8
	lsls r2, r0, #2
	mov r1, sl
	adds r4, r2, r1
	ldrb r3, [r4]
	movs r1, #0xe0
	ldr r0, [sp]
	adds r0, #0x64
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #1
	ldr r6, _08028744 @ =gUnknown_084995F4
	adds r0, r0, r6
	ands r1, r3
	adds r6, r2, #0
	ldrh r0, [r0]
	cmp r1, r0
	bne _0802878C
	ldr r0, _08028748 @ =gUnknown_08499590
	ldr r2, [r0]
	ldrb r1, [r4, #2]
	lsls r1, r1, #1
	ldr r3, _0802874C @ =0x0000417A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r0, [r4, #1]
	adds r1, r1, r0
	adds r2, #0x12
	adds r2, r2, r1
	ldrb r4, [r2]
	ldr r7, _08028750 @ =gUnknown_08090B54
	cmp r4, #0
	beq _080286FA
	lsrs r2, r4, #6
	ldr r0, _08028754 @ =gUnknown_08499598
	ldr r3, [r0]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	adds r1, #0x66
	mov r2, sb
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x2a
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	bne _080286FA
	ldr r1, _08028758 @ =gUnknown_08499594
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r1, r1, r0
	ldrb r2, [r1, #5]
	movs r0, #7
	ands r0, r2
	strb r0, [r1, #5]
_080286FA:
	mov r3, sl
	adds r4, r6, r3
	ldrb r0, [r4]
	movs r3, #0x1f
	ands r3, r0
	cmp r3, #8
	bne _08028760
	ldr r0, [r7]
	ldr r2, [r0]
	ldrb r1, [r4, #2]
	lsls r1, r1, #1
	ldr r6, _0802874C @ =0x0000417A
	adds r0, r2, r6
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r0, [r4, #1]
	adds r1, r1, r0
	ldr r0, _0802875C @ =0x00001432
	adds r2, r2, r0
	adds r2, r2, r1
	ldrb r1, [r5]
	movs r0, #6
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	movs r2, #0
	bl sub_0802419C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r2, [r5]
	bl sub_080240B4
	b _0802878C
	.align 2, 0
_08028740: .4byte gUnknown_03003150
_08028744: .4byte gUnknown_084995F4
_08028748: .4byte gUnknown_08499590
_0802874C: .4byte 0x0000417A
_08028750: .4byte gUnknown_08090B54
_08028754: .4byte gUnknown_08499598
_08028758: .4byte gUnknown_08499594
_0802875C: .4byte 0x00001432
_08028760:
	ldr r0, [r7]
	ldr r2, [r0]
	ldrb r1, [r4, #2]
	lsls r1, r1, #1
	ldr r6, _080287C8 @ =0x0000417A
	adds r0, r2, r6
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r0, [r4, #1]
	adds r1, r1, r0
	ldr r0, _080287CC @ =0x00001432
	adds r2, r2, r0
	adds r2, r2, r1
	ldrb r1, [r5]
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r2, [r5]
	bl sub_080240B4
_0802878C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x5b
	bhi _080287A6
	lsls r0, r0, #2
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080287A6
	b _0802867E
_080287A6:
	bl sub_08024268
	bl sub_080219AC
	bl sub_08026D68
	movs r0, #1
	ldr r1, [sp, #4]
	strh r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080287C8: .4byte 0x0000417A
_080287CC: .4byte 0x00001432

	thumb_func_start sub_080287D0
sub_080287D0: @ 0x080287D0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	beq _080287E2
	cmp r0, #0x10
	bne _080287EA
_080287E2:
	adds r0, r4, #0
	bl sub_0801CB20
	b _08028842
_080287EA:
	ldr r0, _08028830 @ =gUnknown_0849A198
	bl sub_0801CB28
	cmp r0, #0
	bne _08028842
	adds r5, r4, #0
	adds r5, #0x68
	ldrh r6, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0x32
	bgt _0802883C
	ldr r3, _08028834 @ =gUnknown_08499594
	ldr r2, _08028838 @ =gUnknown_084995FE
	adds r0, r4, #0
	adds r0, #0x64
	movs r7, #0
	ldrsh r1, [r0, r7]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r5, r2]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r3]
	adds r0, r0, r1
	adds r1, r6, #1
	strh r1, [r5]
	adds r1, r4, #0
	bl sub_0802A54C
	b _08028842
	.align 2, 0
_08028830: .4byte gUnknown_0849A198
_08028834: .4byte gUnknown_08499594
_08028838: .4byte gUnknown_084995FE
_0802883C:
	adds r0, r4, #0
	bl sub_0801CB20
_08028842:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08028848
sub_08028848: @ 0x08028848
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08028870 @ =gUnknown_08499FAC
	movs r1, #3
	bl Proc_Start
	adds r1, r0, #0
	adds r1, #0x64
	strh r4, [r1]
	adds r0, #0x66
	strh r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028870: .4byte gUnknown_08499FAC

	thumb_func_start sub_08028874
sub_08028874: @ 0x08028874
	ldr r2, _0802888C @ =gUnknown_08499598
	ldr r3, [r2]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r0, _08028890 @ =gUnknown_03004080
	ldrh r0, [r0]
	strh r0, [r2, #0x14]
	strb r1, [r2, #0x13]
	bx lr
	.align 2, 0
_0802888C: .4byte gUnknown_08499598
_08028890: .4byte gUnknown_03004080

	thumb_func_start sub_08028894
sub_08028894: @ 0x08028894
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	bl sub_08028848
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08028874
	ldr r0, _080288D0 @ =gUnknown_030033EC
	ldrh r0, [r0]
	cmp r0, r4
	bne _080288C0
	ldr r1, _080288D4 @ =gUnknown_030032D8
	movs r0, #1
	strh r0, [r1]
	bl sub_08025EA0
_080288C0:
	cmp r5, #2
	bne _080288C8
	bl sub_08028CD8
_080288C8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080288D0: .4byte gUnknown_030033EC
_080288D4: .4byte gUnknown_030032D8

	thumb_func_start sub_080288D8
sub_080288D8: @ 0x080288D8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080288FC
	ldr r0, _080288F8 @ =gUnknown_030030F8
	ldrb r0, [r0]
	cmp r0, r4
	beq _080288FC
	movs r0, #1
	b _080288FE
	.align 2, 0
_080288F8: .4byte gUnknown_030030F8
_080288FC:
	movs r0, #0
_080288FE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08028904
sub_08028904: @ 0x08028904
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028934
	ldr r0, _08028938 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r1, r0, r1
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	bne _0802893C
	adds r0, r1, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802893C
_08028934:
	movs r0, #0
	b _0802893E
	.align 2, 0
_08028938: .4byte gUnknown_08499598
_0802893C:
	movs r0, #1
_0802893E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08028944
sub_08028944: @ 0x08028944
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r4, r2, #0
	ldr r0, _08028980 @ =gUnknown_03003FC0
	ldrb r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802897A
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028988
	ldr r0, _08028984 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028988
_0802897A:
	movs r0, #1
	b _0802898A
	.align 2, 0
_08028980: .4byte gUnknown_03003FC0
_08028984: .4byte gUnknown_08499598
_08028988:
	movs r0, #0
_0802898A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08028990
sub_08028990: @ 0x08028990
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _080289B0 @ =gUnknown_03003FC0
	ldrb r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080289B4
	adds r0, r2, #0
	bl sub_080271CC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080289B6
	.align 2, 0
_080289B0: .4byte gUnknown_03003FC0
_080289B4:
	movs r0, #1
_080289B6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080289BC
sub_080289BC: @ 0x080289BC
	push {lr}
	adds r2, r0, #0
	ldr r0, _080289EC @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1b]
	cmp r0, #1
	bne _080289F4
	ldr r0, _080289F0 @ =gUnknown_03003FC0
	ldrb r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080289F4
	adds r0, r2, #0
	bl sub_080271CC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _080289F6
	.align 2, 0
_080289EC: .4byte gUnknown_08499598
_080289F0: .4byte gUnknown_03003FC0
_080289F4:
	movs r0, #1
_080289F6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080289FC
sub_080289FC: @ 0x080289FC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _08028A20 @ =gUnknown_03003FC0
	ldrb r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08028A5C
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028A24
_08028A1A:
	movs r0, #0
	b _08028A5E
	.align 2, 0
_08028A20: .4byte gUnknown_03003FC0
_08028A24:
	movs r4, #1
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r7, r0, #2
	movs r6, #0x3c
_08028A2E:
	cmp r5, r4
	beq _08028A54
	ldr r0, _08028A64 @ =gUnknown_08499598
	ldr r1, [r0]
	adds r0, r7, r1
	adds r0, #0x2a
	adds r1, r6, r1
	adds r1, #0x2a
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08028A54
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028A1A
_08028A54:
	adds r6, #0x3c
	adds r4, #1
	cmp r4, #4
	ble _08028A2E
_08028A5C:
	movs r0, #1
_08028A5E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08028A64: .4byte gUnknown_08499598

	thumb_func_start sub_08028A68
sub_08028A68: @ 0x08028A68
	push {r4, r5, r6, lr}
	movs r4, #1
_08028A6C:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	lsls r6, r4, #0x10
	cmp r0, #0
	beq _08028AD6
	lsrs r5, r6, #0x10
	adds r0, r5, #0
	bl sub_08028904
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028A94
	asrs r0, r6, #0x10
	movs r1, #8
	bl sub_08028894
	b _08028AD6
_08028A94:
	asrs r4, r6, #0x10
	adds r0, r4, #0
	bl sub_080289BC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028AAC
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08028894
	b _08028AD6
_08028AAC:
	adds r0, r5, #0
	bl sub_08028990
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028AC2
	adds r0, r4, #0
	movs r1, #1
	bl sub_08028894
	b _08028AD6
_08028AC2:
	adds r0, r5, #0
	bl sub_08028944
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028AD6
	adds r0, r4, #0
	movs r1, #2
	bl sub_08028894
_08028AD6:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08028A6C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08028AEC
sub_08028AEC: @ 0x08028AEC
	push {r4, r5, r6, lr}
	movs r4, #1
_08028AF0:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	lsls r6, r4, #0x10
	cmp r0, #0
	beq _08028B5A
	lsrs r5, r6, #0x10
	adds r0, r5, #0
	bl sub_08028904
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028B18
	asrs r0, r6, #0x10
	movs r1, #8
	bl sub_08028874
	b _08028B5A
_08028B18:
	asrs r4, r6, #0x10
	adds r0, r4, #0
	bl sub_080289BC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028B30
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_08028874
	b _08028B5A
_08028B30:
	adds r0, r5, #0
	bl sub_08028990
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028B46
	adds r0, r4, #0
	movs r1, #1
	bl sub_08028874
	b _08028B5A
_08028B46:
	adds r0, r5, #0
	bl sub_08028944
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08028B5A
	adds r0, r4, #0
	movs r1, #2
	bl sub_08028874
_08028B5A:
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08028AF0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08028B70
sub_08028B70: @ 0x08028B70
	ldr r0, _08028B7C @ =gUnknown_03003FC0
	adds r0, #0x31
	ldrb r2, [r0]
	cmp r2, #0
	bne _08028B84
	b _08028BA2
	.align 2, 0
_08028B7C: .4byte gUnknown_03003FC0
_08028B80:
	adds r0, r1, #0
	b _08028BA4
_08028B84:
	movs r1, #1
	ldr r0, _08028BA8 @ =gUnknown_08499598
	ldr r3, [r0]
_08028B8A:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #0x11]
	cmp r0, r2
	bhs _08028B80
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _08028B8A
_08028BA2:
	movs r0, #0
_08028BA4:
	bx lr
	.align 2, 0
_08028BA8: .4byte gUnknown_08499598

	thumb_func_start sub_08028BAC
sub_08028BAC: @ 0x08028BAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	movs r5, #1
_08028BB6:
	mov r0, sp
	adds r6, r0, r5
	movs r0, #0
	strb r0, [r6]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028C04
	lsls r0, r5, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	bl sub_08028904
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028C04
	adds r0, r5, #0
	bl sub_080289BC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028C04
	adds r0, r4, #0
	bl sub_08028990
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028C04
	adds r0, r4, #0
	bl sub_08028944
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028C04
	movs r0, #1
	strb r0, [r6]
_08028C04:
	adds r5, #1
	cmp r5, #4
	ble _08028BB6
	ldr r0, _08028CB8 @ =gUnknown_03003FC0
	ldrb r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08028C6C
	movs r5, #1
_08028C18:
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	adds r7, r0, #0
	adds r0, r5, #1
	mov r8, r0
	cmp r1, #0
	beq _08028C66
	movs r4, #1
	lsls r6, r5, #0x10
_08028C2C:
	cmp r5, r4
	beq _08028C60
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028C60
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r6, #0x10
	bl sub_08026F28
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028C60
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08028C60
	strb r0, [r7]
	adds r0, r5, #0
	bl sub_0802C154
_08028C60:
	adds r4, #1
	cmp r4, #4
	ble _08028C2C
_08028C66:
	mov r5, r8
	cmp r5, #4
	ble _08028C18
_08028C6C:
	movs r5, #1
	movs r0, #0x3c
	mov r8, r0
_08028C72:
	mov r1, sp
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028CC0
	movs r3, #0
	movs r4, #1
	ldr r7, _08028CBC @ =gUnknown_08499598
	mov r6, r8
	movs r2, #0x3c
_08028C86:
	cmp r5, r4
	beq _08028CA8
	mov r1, sp
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08028CA8
	ldr r0, [r7]
	adds r1, r6, r0
	adds r1, #0x2a
	adds r0, r2, r0
	adds r0, #0x2a
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08028CA8
	adds r3, #1
_08028CA8:
	adds r2, #0x3c
	adds r4, #1
	cmp r4, #4
	ble _08028C86
	cmp r3, #0
	bne _08028CC0
	movs r0, #1
	b _08028CCC
	.align 2, 0
_08028CB8: .4byte gUnknown_03003FC0
_08028CBC: .4byte gUnknown_08499598
_08028CC0:
	movs r0, #0x3c
	add r8, r0
	adds r5, #1
	cmp r5, #4
	ble _08028C72
	movs r0, #0
_08028CCC:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08028CD8
sub_08028CD8: @ 0x08028CD8
	ldr r2, _08028CEC @ =gUnknown_030032D8
	ldrh r1, [r2]
	cmp r1, #0x10
	beq _08028CE8
	ldr r0, _08028CF0 @ =gUnknown_030044DC
	strh r1, [r0]
	movs r0, #0x10
	strh r0, [r2]
_08028CE8:
	bx lr
	.align 2, 0
_08028CEC: .4byte gUnknown_030032D8
_08028CF0: .4byte gUnknown_030044DC

	thumb_func_start sub_08028CF4
sub_08028CF4: @ 0x08028CF4
	push {lr}
	bl sub_08028BAC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08028D0A
	bl sub_08028AEC
	bl sub_08028568
	b _08028D22
_08028D0A:
	bl sub_08028B70
	cmp r0, #0
	beq _08028D1E
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x20
	bl sub_08019940
	b _08028D22
_08028D1E:
	bl sub_08028A68
_08028D22:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08028D28
sub_08028D28: @ 0x08028D28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	movs r0, #0xcc
	lsls r0, r0, #3
	bl sub_08014E44
	mov r1, sb
	str r0, [r1, #0x4c]
	adds r4, r0, #0
	mov r0, sb
	adds r0, #0x64
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r2, #0
	ldr r1, _08028E0C @ =gUnknown_08499590
	ldr r0, [r1]
	ldrh r3, [r0, #2]
	cmp r2, r3
	bge _08028DFA
	mov sl, r1
	mov r8, r0
_08028D60:
	movs r3, #0
	lsls r2, r2, #0x10
	str r2, [sp]
	mov r7, r8
	ldrh r7, [r7]
	cmp r3, r7
	bge _08028DE6
	asrs r6, r2, #0x10
	lsls r0, r6, #2
	ldr r1, _08028E10 @ =gUnknown_03003340
	adds r0, r0, r1
	mov ip, r0
	mov r2, sb
	adds r2, #0x64
	ldr r5, _08028E14 @ =gUnknown_03003100
_08028D7E:
	lsls r0, r3, #0x10
	asrs r3, r0, #0x10
	mov r7, ip
	ldr r0, [r7]
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _08028DD4
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrh r0, [r5]
	lsls r0, r0, #4
	strh r0, [r1]
	movs r7, #0
	ldrsh r1, [r2, r7]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrh r0, [r5, #2]
	lsls r0, r0, #4
	strh r0, [r1, #2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrh r0, [r5]
	subs r0, r3, r0
	lsls r0, r0, #1
	strh r0, [r1, #4]
	movs r7, #0
	ldrsh r1, [r2, r7]
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrh r0, [r5, #2]
	subs r0, r6, r0
	lsls r0, r0, #1
	strh r0, [r1, #6]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08028DD4:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	mov r7, sl
	ldr r1, [r7]
	ldrh r1, [r1]
	cmp r0, r1
	blt _08028D7E
_08028DE6:
	ldr r1, [sp]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	mov r3, r8
	ldrh r3, [r3, #2]
	cmp r0, r3
	blt _08028D60
_08028DFA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028E0C: .4byte gUnknown_08499590
_08028E10: .4byte gUnknown_03003340
_08028E14: .4byte gUnknown_03003100

	thumb_func_start sub_08028E18
sub_08028E18: @ 0x08028E18
	push {lr}
	ldr r0, [r0, #0x4c]
	bl sub_08014ED4
	pop {r0}
	bx r0

	thumb_func_start sub_08028E24
sub_08028E24: @ 0x08028E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [r4, #0x4c]
	adds r1, r4, #0
	adds r1, #0x66
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #8
	bne _08028E58
	ldr r1, _08028E54 @ =gUnknown_03003100
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	movs r2, #1
	bl sub_08022990
	adds r0, r4, #0
	bl Proc_End
	b _08028EBA
	.align 2, 0
_08028E54: .4byte gUnknown_03003100
_08028E58:
	adds r0, r2, #1
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x64
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r5, r0, #0
	cmp r1, #0x10
	bgt _08028EBA
	movs r2, #0
	cmp r2, r1
	bge _08028EBA
	mov r8, r2
_08028E72:
	lsls r4, r2, #0x10
	asrs r4, r4, #0x10
	lsls r2, r4, #3
	adds r2, r2, r6
	ldrh r0, [r2, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	ldrh r0, [r2, #6]
	ldrh r3, [r2, #2]
	adds r0, r0, r3
	strh r0, [r2, #2]
	ldrh r1, [r2]
	ldr r0, _08028EC8 @ =gUnknown_08499590
	ldr r3, [r0]
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	ldrh r2, [r2, #2]
	movs r7, #6
	ldrsh r0, [r3, r7]
	subs r2, r2, r0
	mov r0, r8
	str r0, [sp]
	movs r0, #0
	ldr r3, _08028ECC @ =gUnknown_08499FE4
	bl sub_0801BEBC
	adds r4, #1
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r4, r0
	blt _08028E72
_08028EBA:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08028EC8: .4byte gUnknown_08499590
_08028ECC: .4byte gUnknown_08499FE4

	thumb_func_start sub_08028ED0
sub_08028ED0: @ 0x08028ED0
	push {lr}
	adds r1, r0, #0
	ldr r0, _08028EE0 @ =gUnknown_08499FEC
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_08028EE0: .4byte gUnknown_08499FEC

	thumb_func_start sub_08028EE4
sub_08028EE4: @ 0x08028EE4
	push {lr}
	bl sub_08022A08
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08028EF0
sub_08028EF0: @ 0x08028EF0
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _08028F7C @ =gUnknown_08499590
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	strh r0, [r3, #0x1e]
	ldrh r0, [r2, #6]
	strh r0, [r3, #0x20]
	ldrh r0, [r3, #0x22]
	ldrh r1, [r2, #4]
	subs r0, r0, r1
	strh r0, [r3, #0x26]
	ldrh r0, [r3, #0x24]
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	strh r0, [r3, #0x28]
	movs r0, #0x26
	ldrsh r1, [r3, r0]
	adds r4, r1, #0
	cmp r1, #0
	bge _08028F1C
	rsbs r4, r1, #0
_08028F1C:
	movs r2, #0x28
	ldrsh r0, [r3, r2]
	adds r2, r0, #0
	cmp r0, #0
	bge _08028F28
	rsbs r2, r0, #0
_08028F28:
	cmp r4, r2
	ble _08028F2E
	adds r0, r1, #0
_08028F2E:
	cmp r0, #0
	bge _08028F34
	rsbs r0, r0, #0
_08028F34:
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r1, #1
	movs r0, #0
	strh r0, [r3, #0x2a]
	subs r0, r2, #1
	ldr r5, _08028F80 @ =gUnknown_08090B58
	cmp r0, #0
	blt _08028F6A
	ldr r4, [r5]
_08028F48:
	subs r0, r2, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r3, #0x2a]
	adds r0, r0, r4
	strb r1, [r0]
	cmp r1, #7
	bhi _08028F5E
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_08028F5E:
	ldrh r0, [r3, #0x2a]
	adds r0, #1
	strh r0, [r3, #0x2a]
	subs r0, r2, r1
	cmp r0, #0
	bge _08028F48
_08028F6A:
	ldr r0, [r5]
	ldrh r1, [r3, #0x2a]
	adds r1, r1, r0
	movs r0, #0
	strb r2, [r1]
	strh r0, [r3, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08028F7C: .4byte gUnknown_08499590
_08028F80: .4byte gUnknown_08090B58

	thumb_func_start sub_08028F84
sub_08028F84: @ 0x08028F84
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _08028F92
	rsbs r1, r1, #0
_08028F92:
	movs r2, #0x28
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bge _08028F9C
	rsbs r0, r0, #0
_08028F9C:
	cmp r1, r0
	ble _08028FEE
	ldr r0, _08028FC4 @ =gUnknown_020237B0
	ldrh r1, [r4, #0x2a]
	adds r1, r1, r0
	ldrh r0, [r4, #0x2c]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x2c]
	ldrh r1, [r4, #0x2c]
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _08028FC8
	movs r5, #0
	cmp r0, #0
	bge _08028FCA
	rsbs r5, r1, #0
	b _08028FCA
	.align 2, 0
_08028FC4: .4byte gUnknown_020237B0
_08028FC8:
	adds r5, r1, #0
_08028FCA:
	movs r1, #0x28
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0x10
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	bl __divsi3
	adds r1, r0, #0
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	adds r0, r0, r5
	lsls r2, r0, #0x10
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0x10
	muls r1, r5, r1
	adds r1, r0, r1
	b _08029038
_08028FEE:
	ldr r0, _08029010 @ =gUnknown_020237B0
	ldrh r1, [r4, #0x2a]
	adds r1, r1, r0
	ldrh r0, [r4, #0x2c]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r4, #0x2c]
	ldrh r1, [r4, #0x2c]
	movs r2, #0x28
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt _08029014
	movs r5, #0
	cmp r0, #0
	bge _08029016
	rsbs r5, r1, #0
	b _08029016
	.align 2, 0
_08029010: .4byte gUnknown_020237B0
_08029014:
	adds r5, r1, #0
_08029016:
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0x10
	movs r2, #0x28
	ldrsh r1, [r4, r2]
	bl __divsi3
	adds r1, r0, #0
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	lsls r0, r0, #0x10
	muls r1, r5, r1
	adds r2, r0, r1
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	adds r0, r0, r5
	lsls r1, r0, #0x10
_08029038:
	ldr r3, _08029070 @ =gUnknown_0201E450
	adds r0, r2, #0
	cmp r0, #0
	bge _08029044
	ldr r2, _08029074 @ =0x0000FFFF
	adds r0, r0, r2
_08029044:
	asrs r0, r0, #0x10
	strh r0, [r3, #4]
	adds r0, r1, #0
	cmp r0, #0
	bge _08029052
	ldr r1, _08029074 @ =0x0000FFFF
	adds r0, r0, r1
_08029052:
	asrs r0, r0, #0x10
	strh r0, [r3, #6]
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	bne _08029078
	ldrh r0, [r4, #0x22]
	strh r0, [r3, #4]
	ldrh r0, [r4, #0x24]
	strh r0, [r3, #6]
	adds r0, r4, #0
	bl sub_080153B8
	bl sub_08034F8C
	b _0802907C
	.align 2, 0
_08029070: .4byte gUnknown_0201E450
_08029074: .4byte 0x0000FFFF
_08029078:
	subs r0, #1
	strh r0, [r4, #0x2a]
_0802907C:
	bl sub_08023860
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08029088
sub_08029088: @ 0x08029088
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0
	bl sub_080290B0
	pop {r0}
	bx r0

	thumb_func_start sub_0802909C
sub_0802909C: @ 0x0802909C
	push {lr}
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_080290B0
	pop {r0}
	bx r0

	thumb_func_start sub_080290B0
sub_080290B0: @ 0x080290B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	lsls r1, r5, #0x10
	asrs r1, r1, #0x10
	bl sub_08022AAC
	movs r0, #0
	mov ip, r0
	mov r8, r0
	ldr r1, _08029138 @ =gUnknown_08090B5C
	ldr r0, [r1]
	ldr r2, [r0]
	movs r3, #4
	ldrsh r0, [r2, r3]
	mov sb, r1
	cmp r0, #0
	bge _080290E4
	adds r0, #0xf
_080290E4:
	lsls r0, r0, #0xc
	lsrs r3, r0, #0x10
	movs r1, #6
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _080290F2
	adds r0, #0xf
_080290F2:
	lsls r0, r0, #0xc
	lsrs r7, r0, #0x10
	cmp r6, #0
	beq _0802913C
	subs r4, #7
	subs r5, #4
	cmp r4, #0
	bge _08029104
	movs r4, #0
_08029104:
	cmp r5, #0
	bge _0802910A
	movs r5, #0
_0802910A:
	adds r0, r4, #0
	adds r0, #0xf
	ldrh r1, [r2]
	cmp r0, r1
	ble _08029118
	adds r4, r1, #0
	subs r4, #0xf
_08029118:
	adds r0, r5, #0
	adds r0, #0xa
	ldrh r1, [r2, #2]
	cmp r0, r1
	ble _08029126
	adds r5, r1, #0
	subs r5, #0xa
_08029126:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _08029202
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, r5
	beq _08029220
	b _08029202
	.align 2, 0
_08029138: .4byte gUnknown_08090B5C
_0802913C:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #2
	adds r6, r0, #0
	cmp r4, r1
	bge _08029150
	cmp r2, #0
	beq _08029150
	ldr r2, _080291AC @ =0x0000FFFE
	mov ip, r2
_08029150:
	asrs r1, r6, #0x10
	adds r0, r1, #0
	adds r0, #0xc
	cmp r4, r0
	ble _0802916C
	adds r0, #3
	mov r3, sb
	ldr r1, [r3]
	ldr r1, [r1]
	ldrh r1, [r1]
	cmp r0, r1
	bge _0802916C
	ldr r0, _080291B0 @ =0x0000FFF4
	mov ip, r0
_0802916C:
	lsls r0, r7, #0x10
	asrs r2, r0, #0x10
	adds r1, r2, #2
	adds r3, r0, #0
	cmp r5, r1
	bge _08029180
	cmp r2, #0
	beq _08029180
	ldr r1, _080291AC @ =0x0000FFFE
	mov r8, r1
_08029180:
	asrs r1, r3, #0x10
	adds r0, r1, #7
	cmp r5, r0
	ble _0802919A
	adds r0, #3
	mov r2, sb
	ldr r1, [r2]
	ldr r1, [r1]
	ldrh r1, [r1, #2]
	cmp r0, r1
	bge _0802919A
	ldr r0, _080291B4 @ =0x0000FFF9
	mov r8, r0
_0802919A:
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r1, #0
	beq _080291B8
	adds r4, r4, r1
	b _080291BA
	.align 2, 0
_080291AC: .4byte 0x0000FFFE
_080291B0: .4byte 0x0000FFF4
_080291B4: .4byte 0x0000FFF9
_080291B8:
	asrs r4, r6, #0x10
_080291BA:
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	adds r6, r0, #0
	cmp r1, #0
	beq _080291CA
	adds r5, r5, r1
	b _080291CC
_080291CA:
	asrs r5, r3, #0x10
_080291CC:
	cmp r4, #0
	bge _080291D2
	movs r4, #0
_080291D2:
	cmp r5, #0
	bge _080291D8
	movs r5, #0
_080291D8:
	adds r1, r4, #0
	adds r1, #0xf
	mov r3, sb
	ldr r0, [r3]
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r1, r0
	ble _080291EC
	adds r4, r0, #0
	subs r4, #0xf
_080291EC:
	adds r0, r5, #0
	adds r0, #0xa
	ldrh r1, [r2, #2]
	cmp r0, r1
	ble _080291FA
	adds r5, r1, #0
	subs r5, #0xa
_080291FA:
	cmp r7, #0
	bne _08029202
	cmp r6, #0
	beq _08029220
_08029202:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	ldr r0, _0802922C @ =gUnknown_0849A00C
	movs r1, #0
	bl sub_080152EC
	lsls r1, r4, #4
	strh r1, [r0, #0x22]
	lsls r1, r5, #4
	strh r1, [r0, #0x24]
	bl sub_08034F7C
_08029220:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802922C: .4byte gUnknown_0849A00C

	thumb_func_start sub_08029230
sub_08029230: @ 0x08029230
	bx lr
	.align 2, 0

	thumb_func_start sub_08029234
sub_08029234: @ 0x08029234
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0
	strh r0, [r1]
	bl sub_08041398
	adds r1, r4, #0
	adds r1, #0x66
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_08028ED0
	movs r0, #0x77
	bl sub_0803B4DC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802925C
sub_0802925C: @ 0x0802925C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r4, _080292B8 @ =gUnknown_08090B60
	ldr r0, [r4]
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r3, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r4
	cmp r3, r0
	beq _0802927C
	b _08029396
_0802927C:
	ldr r1, _080292BC @ =gUnknown_08090B64
	ldr r0, [r1]
	ldr r4, [r0]
	ldrh r2, [r4, #4]
	movs r0, #2
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #0
	beq _080292CC
	ldr r4, _080292C0 @ =gUnknown_030033E4
	ldr r1, _080292C4 @ =gUnknown_03003100
	ldrh r0, [r1]
	strh r0, [r4]
	ldrh r0, [r1, #2]
	strh r0, [r4, #2]
	ldr r0, _080292C8 @ =gUnknown_03003F40
	str r3, [r0]
	adds r0, r5, #0
	bl Proc_End
	bl sub_08028EE4
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	bl sub_08029088
	b _08029396
	.align 2, 0
_080292B8: .4byte gUnknown_08090B60
_080292BC: .4byte gUnknown_08090B64
_080292C0: .4byte gUnknown_030033E4
_080292C4: .4byte gUnknown_03003100
_080292C8: .4byte gUnknown_03003F40
_080292CC:
	movs r3, #1
	ands r3, r2
	cmp r3, #0
	beq _080292F0
	ldr r0, _080292EC @ =gUnknown_03003F40
	adds r1, r5, #0
	adds r1, #0x64
	movs r3, #0
	ldrsh r1, [r1, r3]
	str r1, [r0]
	adds r0, r5, #0
	bl Proc_End
	bl sub_08028EE4
	b _08029396
	.align 2, 0
_080292EC: .4byte gUnknown_03003F40
_080292F0:
	adds r2, r5, #0
	adds r2, #0x64
	ldrh r6, [r2]
	ldrh r1, [r4, #2]
	movs r0, #0x90
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08029318
	adds r0, r6, #1
	strh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x66
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bne _08029318
	strh r3, [r4]
_08029318:
	ldr r0, [r7]
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _0802933C
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bgt _08029336
	adds r0, r5, #0
	adds r0, #0x66
	ldrh r0, [r0]
	strh r0, [r4]
_08029336:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
_0802933C:
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _0802934E
	movs r0, #0x77
	bl sub_0803B4DC
_0802934E:
	movs r3, #0
	ldrsh r0, [r4, r3]
	bl sub_080413A4
	ldr r2, _08029388 @ =gUnknown_030033E4
	ldrh r1, [r0, #4]
	strh r1, [r2]
	ldrh r1, [r0, #6]
	strh r1, [r2, #2]
	movs r1, #4
	ldrsh r2, [r0, r1]
	movs r3, #6
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl sub_08029088
	mov r1, r8
	ldr r0, [r1]
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802938C
	bl sub_0802DCA4
	b _08029396
	.align 2, 0
_08029388: .4byte gUnknown_030033E4
_0802938C:
	movs r0, #2
	bl sub_08023274
	bl sub_0802A7C4
_08029396:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080293A0
sub_080293A0: @ 0x080293A0
	push {lr}
	ldr r2, _080293BC @ =gUnknown_03003F40
	movs r1, #0
	str r1, [r2]
	ldr r3, _080293C0 @ =gUnknown_030033E4
	ldr r2, _080293C4 @ =gUnknown_03003100
	ldrh r1, [r2]
	strh r1, [r3]
	ldrh r1, [r2, #2]
	strh r1, [r3, #2]
	bl sub_08028ED0
	pop {r0}
	bx r0
	.align 2, 0
_080293BC: .4byte gUnknown_03003F40
_080293C0: .4byte gUnknown_030033E4
_080293C4: .4byte gUnknown_03003100

	thumb_func_start sub_080293C8
sub_080293C8: @ 0x080293C8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08023824
	bl sub_080236E8
	movs r0, #4
	bl sub_08023908
	adds r0, r4, #0
	bl sub_08029490
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08029444
	movs r0, #2
	bl sub_08023274
	ldr r2, _0802942C @ =gUnknown_08090B68
	ldr r0, [r2]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802944C
	adds r0, r4, #0
	bl Proc_End
	ldr r4, _08029430 @ =gUnknown_03003F40
	ldr r0, _08029434 @ =gUnknown_08499590
	ldr r2, [r0]
	ldr r3, _08029438 @ =gUnknown_030033E4
	ldrh r1, [r3, #2]
	lsls r1, r1, #1
	ldr r5, _0802943C @ =0x0000417A
	adds r0, r2, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	ldr r1, _08029440 @ =0x0000051A
	adds r2, r2, r1
	adds r2, r2, r0
	ldrb r0, [r2]
	str r0, [r4]
	bl sub_08028EE4
	b _08029478
	.align 2, 0
_0802942C: .4byte gUnknown_08090B68
_08029430: .4byte gUnknown_03003F40
_08029434: .4byte gUnknown_08499590
_08029438: .4byte gUnknown_030033E4
_0802943C: .4byte 0x0000417A
_08029440: .4byte 0x0000051A
_08029444:
	movs r0, #1
	bl sub_08023274
	ldr r2, _08029480 @ =gUnknown_08090B68
_0802944C:
	ldr r0, [r2]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08029478
	ldr r2, _08029484 @ =gUnknown_030033E4
	ldr r1, _08029488 @ =gUnknown_03003100
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	ldr r1, _0802948C @ =gUnknown_03003F40
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl Proc_End
	bl sub_08028EE4
_08029478:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029480: .4byte gUnknown_08090B68
_08029484: .4byte gUnknown_030033E4
_08029488: .4byte gUnknown_03003100
_0802948C: .4byte gUnknown_03003F40

	thumb_func_start sub_08029490
sub_08029490: @ 0x08029490
	push {r4, lr}
	ldr r0, _080294E0 @ =gUnknown_08499590
	ldr r3, [r0]
	ldr r2, _080294E4 @ =gUnknown_030033E4
	ldrh r1, [r2, #2]
	lsls r1, r1, #1
	ldr r4, _080294E8 @ =0x0000417A
	adds r0, r3, r4
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r2]
	adds r1, r1, r0
	ldr r2, _080294EC @ =0x00002852
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	blt _080294F4
	ldr r4, _080294F0 @ =0x00001E42
	adds r0, r3, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080294DA
	adds r0, r3, #0
	adds r0, #0x12
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _080294F4
	bl sub_08026F5C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080294F4
_080294DA:
	movs r0, #1
	b _080294F6
	.align 2, 0
_080294E0: .4byte gUnknown_08499590
_080294E4: .4byte gUnknown_030033E4
_080294E8: .4byte 0x0000417A
_080294EC: .4byte 0x00002852
_080294F0: .4byte 0x00001E42
_080294F4:
	movs r0, #0
_080294F6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080294FC
sub_080294FC: @ 0x080294FC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08029564 @ =gUnknown_03001470
	ldr r3, _08029568 @ =gUnknown_03001FBC
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, r2, #0
	ldr r6, _0802956C @ =gUnknown_0849A06C
_08029518:
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r1, [r0, #0x20]
	adds r1, #1
	movs r2, #3
	ands r1, r2
	strh r1, [r0, #0x20]
	movs r7, #0
	ldrsh r1, [r3, r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	movs r2, #0x1e
	ldrsh r1, [r0, r2]
	movs r7, #0x20
	ldrsh r2, [r0, r7]
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08029518
	cmp r5, r2
	beq _0802955E
	movs r0, #0x6a
	bl sub_0803B4DC
_0802955E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029564: .4byte gUnknown_03001470
_08029568: .4byte gUnknown_03001FBC
_0802956C: .4byte gUnknown_0849A06C

	thumb_func_start sub_08029570
sub_08029570: @ 0x08029570
	push {r4, r5, r6, r7, lr}
	ldr r2, _080295D8 @ =gUnknown_03001470
	ldr r3, _080295DC @ =gUnknown_03001FBC
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r4, r2, #0
	ldr r6, _080295E0 @ =gUnknown_0849A06C
_0802958C:
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r1, [r0, #0x20]
	subs r1, #1
	movs r2, #3
	ands r1, r2
	strh r1, [r0, #0x20]
	movs r7, #0
	ldrsh r1, [r3, r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	movs r2, #0x1e
	ldrsh r1, [r0, r2]
	movs r7, #0x20
	ldrsh r2, [r0, r7]
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _0802958C
	cmp r5, r2
	beq _080295D2
	movs r0, #0x6a
	bl sub_0803B4DC
_080295D2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080295D8: .4byte gUnknown_03001470
_080295DC: .4byte gUnknown_03001FBC
_080295E0: .4byte gUnknown_0849A06C

	thumb_func_start sub_080295E4
sub_080295E4: @ 0x080295E4
	push {r4, r5, r6, lr}
	ldr r1, _08029658 @ =gUnknown_03003100
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, _0802965C @ =gUnknown_030040D8
	ldr r4, [r2]
	ldr r6, _08029660 @ =gUnknown_03001470
	ldr r5, _08029664 @ =gUnknown_03001FBC
	movs r2, #0
	ldrsh r3, [r5, r2]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #5
	adds r2, r2, r6
	movs r3, #0x22
	ldrsh r2, [r2, r3]
	adds r4, #7
	adds r4, r4, r2
	ldrb r2, [r4]
	bl sub_08041F38
	movs r1, #0
	ldrsh r2, [r5, r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #5
	adds r1, r1, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	strh r0, [r1, #0x1e]
	movs r3, #0
	ldrsh r1, [r5, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	movs r1, #3
	strh r1, [r0, #0x20]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	strh r2, [r0, #0x24]
	ldr r0, _08029668 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802964E
	bl sub_0803446C
_0802964E:
	bl sub_080294FC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08029658: .4byte gUnknown_03003100
_0802965C: .4byte gUnknown_030040D8
_08029660: .4byte gUnknown_03001470
_08029664: .4byte gUnknown_03001FBC
_08029668: .4byte gUnknown_03003FC0

	thumb_func_start sub_0802966C
sub_0802966C: @ 0x0802966C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r7, _08029724 @ =gUnknown_03002EE0
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	movs r0, #0x50
	ands r0, r1
	cmp r0, #0
	beq _0802968A
	bl sub_080294FC
_0802968A:
	ldr r0, [r7]
	ldrh r1, [r0, #2]
	movs r0, #0xa0
	ands r0, r1
	cmp r0, #0
	beq _0802969A
	bl sub_08029570
_0802969A:
	ldr r6, _08029728 @ =gUnknown_030033E4
	ldr r0, _0802972C @ =gUnknown_03003100
	mov r8, r0
	ldr r3, _08029730 @ =gUnknown_0849A06C
	ldr r5, _08029734 @ =gUnknown_03001470
	ldr r4, _08029738 @ =gUnknown_03001FBC
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r2, #0x20
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #1
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r8
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r6]
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r2, #0x20
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, r8
	ldrh r1, [r1, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	movs r0, #1
	str r3, [sp, #4]
	bl sub_08023274
	ldr r0, [r7]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	ldr r3, [sp, #4]
	cmp r0, #0
	beq _08029740
	movs r2, #0
	ldrsh r0, [r4, r2]
	bl sub_08015328
	bl sub_08034F8C
	bl sub_0802D558
	ldr r1, _0802973C @ =gUnknown_03003F24
	ldrh r0, [r1]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r6, #2]
	b _08029840
	.align 2, 0
_08029724: .4byte gUnknown_03002EE0
_08029728: .4byte gUnknown_030033E4
_0802972C: .4byte gUnknown_03003100
_08029730: .4byte gUnknown_0849A06C
_08029734: .4byte gUnknown_03001470
_08029738: .4byte gUnknown_03001FBC
_0802973C: .4byte gUnknown_03003F24
_08029740:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08029840
	ldr r2, _08029850 @ =gUnknown_03003F40
	movs r6, #0
	ldrsh r1, [r4, r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	str r0, [r2]
	ldr r2, _08029854 @ =gUnknown_030040D8
	ldr r1, [r2]
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r5
	movs r6, #0x22
	ldrsh r0, [r2, r6]
	adds r1, #7
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r6, _08029858 @ =gUnknown_08499594
	ldr r1, [r6]
	adds r7, r1, r0
	ldr r0, _0802985C @ =gUnknown_030033E8
	mov sl, r0
	ldr r1, _08029860 @ =gUnknown_03000558
	mov sb, r1
	ldrb r1, [r1]
	add r1, sl
	ldrh r0, [r2, #0x20]
	adds r0, #1
	strb r0, [r1]
	ldr r6, _08029864 @ =gUnknown_03003110
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r2, #0x20
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #3
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r6]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r2, #0x20
	ldrsh r1, [r0, r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	adds r0, #4
	adds r0, r0, r3
	ldrb r0, [r0]
	strb r0, [r6, #1]
	mov r3, r8
	movs r1, #0
	ldrsh r0, [r3, r1]
	movs r2, #2
	ldrsh r1, [r3, r2]
	movs r3, #1
	rsbs r3, r3, #0
	adds r2, r6, #0
	bl sub_0802E7C8
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bne _08029802
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r5
	strh r2, [r0, #0x24]
	mov r5, sb
	ldrb r0, [r5]
	add r0, sl
	movs r1, #5
	strb r1, [r0]
_08029802:
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, _08029854 @ =gUnknown_030040D8
	ldr r3, [r2]
	ldr r5, _08029858 @ =gUnknown_08499594
	ldr r2, [r5]
	subs r3, r3, r2
	lsls r2, r3, #2
	adds r2, r2, r3
	lsls r3, r2, #4
	adds r2, r2, r3
	lsls r3, r2, #8
	adds r2, r2, r3
	lsls r3, r2, #0x10
	adds r2, r2, r3
	rsbs r2, r2, #0
	asrs r2, r2, #2
	movs r3, #0xc0
	ands r2, r3
	lsrs r2, r2, #6
	ldrb r3, [r7]
	str r6, [sp]
	bl sub_080357E0
	ldrb r0, [r4]
	bl sub_08015C30
	ldrb r0, [r7]
	bl sub_08029868
_08029840:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029850: .4byte gUnknown_03003F40
_08029854: .4byte gUnknown_030040D8
_08029858: .4byte gUnknown_08499594
_0802985C: .4byte gUnknown_030033E8
_08029860: .4byte gUnknown_03000558
_08029864: .4byte gUnknown_03003110

	thumb_func_start sub_08029868
sub_08029868: @ 0x08029868
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bgt _0802987C
	cmp r0, #1
	blt _0802987C
	movs r0, #0x50
	bl sub_0803B4DC
_0802987C:
	pop {r0}
	bx r0

	thumb_func_start sub_08029880
sub_08029880: @ 0x08029880
	push {r4, r5, lr}
	ldr r0, _080298F8 @ =gUnknown_030040E4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08029932
	ldr r4, _080298FC @ =gUnknown_03001FBC
	movs r2, #0
	ldrsh r0, [r4, r2]
	bl sub_08015328
	ldr r5, _08029900 @ =gUnknown_03001470
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r1, r0, r5
	movs r2, #0x24
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _080298B4
	movs r2, #0x22
	ldrsh r0, [r1, r2]
	bl sub_080428F0
_080298B4:
	bl sub_08034F48
	bl sub_08034F8C
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #0x24
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bne _08029910
	bl sub_080258CC
	bl sub_0802CBC8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029910
	ldr r2, _08029904 @ =gUnknown_030033E4
	ldr r1, _08029908 @ =gUnknown_03003100
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	bl sub_0802D558
	ldr r1, _0802990C @ =gUnknown_03003334
	movs r0, #5
	strh r0, [r1]
	b _08029932
	.align 2, 0
_080298F8: .4byte gUnknown_030040E4
_080298FC: .4byte gUnknown_03001FBC
_08029900: .4byte gUnknown_03001470
_08029904: .4byte gUnknown_030033E4
_08029908: .4byte gUnknown_03003100
_0802990C: .4byte gUnknown_03003334
_08029910:
	ldr r1, _08029938 @ =gUnknown_03003334
	movs r0, #0
	strh r0, [r1]
	bl sub_080424FC
	ldr r0, _0802993C @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029932
	ldr r0, _08029940 @ =gUnknown_03003F38
	ldrb r0, [r0]
	ldr r2, _08029944 @ =gUnknown_030033E8
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	bl sub_080344B4
_08029932:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08029938: .4byte gUnknown_03003334
_0802993C: .4byte gUnknown_03003FC0
_08029940: .4byte gUnknown_03003F38
_08029944: .4byte gUnknown_030033E8

	thumb_func_start sub_08029948
sub_08029948: @ 0x08029948
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08029970 @ =gUnknown_0849A080
	movs r1, #0
	bl sub_080152C0
	lsls r0, r0, #0x18
	ldr r2, _08029974 @ =gUnknown_03001470
	asrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r2
	strh r4, [r1, #0x22]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029970: .4byte gUnknown_0849A080
_08029974: .4byte gUnknown_03001470

	thumb_func_start sub_08029978
sub_08029978: @ 0x08029978
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r6, #0
	ldrb r1, [r5, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _080299BC
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r0, #1
	ldr r4, _080299B8 @ =gUnknown_08090B6C
	ldr r3, [r4]
	ldrb r2, [r5]
	movs r1, #0x5c
	muls r1, r2, r1
	adds r1, r1, r3
	ldrh r1, [r1, #8]
	muls r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _080299BE
	.align 2, 0
_080299B8: .4byte gUnknown_08090B6C
_080299BC:
	movs r1, #0
_080299BE:
	ldr r0, _08029A38 @ =gUnknown_08090B6C
	adds r4, r1, #0
	ldrh r1, [r5, #4]
	lsls r1, r1, #0x15
	ldr r3, [r0]
	ldrb r2, [r5]
	movs r0, #0x5c
	muls r0, r2, r0
	adds r0, r0, r3
	lsrs r1, r1, #0x1c
	ldrb r0, [r0, #0xb]
	cmp r1, r0
	beq _08029A2A
	adds r7, r3, #0
_080299DA:
	mov r0, r8
	cmp r0, #0
	beq _080299FE
	ldr r0, _08029A3C @ =gUnknown_030033EC
	ldrh r2, [r0]
	ldr r0, _08029A40 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r4
	blo _08029A2A
	adds r0, r2, #0
	adds r1, r4, #0
	bl sub_08025B28
_080299FE:
	adds r6, r6, r4
	ldrh r2, [r5, #4]
	lsls r0, r2, #0x15
	lsrs r0, r0, #0x1c
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #7
	ldr r3, _08029A44 @ =0xFFFFF87F
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strh r2, [r5, #4]
	lsls r2, r2, #0x15
	ldrb r1, [r5]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r7
	lsrs r2, r2, #0x1c
	ldrb r0, [r0, #0xb]
	cmp r2, r0
	bne _080299DA
_08029A2A:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029A38: .4byte gUnknown_08090B6C
_08029A3C: .4byte gUnknown_030033EC
_08029A40: .4byte gUnknown_08499598
_08029A44: .4byte 0xFFFFF87F

	thumb_func_start sub_08029A48
sub_08029A48: @ 0x08029A48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	movs r6, #0
	ldrb r1, [r4, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08029A74
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	b _08029A76
_08029A74:
	movs r1, #0
_08029A76:
	adds r5, r1, #0
	ldrb r1, [r4, #6]
	lsls r1, r1, #0x19
	ldr r3, _08029AEC @ =gUnknown_085D5ABC
	ldrb r2, [r4]
	movs r0, #0x5c
	muls r0, r2, r0
	adds r0, r0, r3
	lsrs r1, r1, #0x19
	ldrb r0, [r0, #0x10]
	cmp r1, r0
	beq _08029ADE
	mov r8, r3
_08029A90:
	cmp r7, #0
	beq _08029AB2
	ldr r0, _08029AF0 @ =gUnknown_030033EC
	ldrh r2, [r0]
	ldr r0, _08029AF4 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r5
	blo _08029ADE
	adds r0, r2, #0
	adds r1, r5, #0
	bl sub_08025B28
_08029AB2:
	adds r6, r6, r5
	ldrb r2, [r4, #6]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x19
	adds r0, #1
	movs r1, #0x7f
	ands r0, r1
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r4, #6]
	lsls r2, r2, #0x19
	ldrb r1, [r4]
	movs r0, #0x5c
	muls r0, r1, r0
	add r0, r8
	lsrs r2, r2, #0x19
	ldrb r0, [r0, #0x10]
	cmp r2, r0
	bne _08029A90
_08029ADE:
	adds r0, r6, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08029AEC: .4byte gUnknown_085D5ABC
_08029AF0: .4byte gUnknown_030033EC
_08029AF4: .4byte gUnknown_08499598

	thumb_func_start sub_08029AF8
sub_08029AF8: @ 0x08029AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	movs r0, #0
	mov r8, r0
	ldr r4, _08029BC0 @ =gUnknown_08090B70
	ldr r0, [r4]
	ldrh r0, [r0]
	ldrb r1, [r5]
	bl sub_08042C9C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov sl, r4
	cmp r7, #0
	beq _08029B9E
	movs r4, #0x7f
_08029B2A:
	ldrb r1, [r5, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08029B44
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	cmp r0, #9
	beq _08029B9E
_08029B44:
	mov r1, sb
	cmp r1, #0
	beq _08029B6A
	mov r1, sl
	ldr r0, [r1]
	ldrh r2, [r0]
	ldr r0, _08029BC4 @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, r6
	blo _08029B9E
	adds r0, r2, #0
	adds r1, r6, #0
	bl sub_08025B28
_08029B6A:
	add r8, r6
	ldrb r1, [r5, #4]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	adds r0, #0xa
	ands r0, r4
	movs r3, #0x80
	rsbs r3, r3, #0
	adds r2, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #4]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x19
	cmp r0, #0x64
	bls _08029B92
	ands r2, r3
	movs r0, #0x64
	orrs r2, r0
	strb r2, [r5, #4]
_08029B92:
	lsls r0, r7, #0x10
	ldr r1, _08029BC8 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	cmp r0, #0
	bne _08029B2A
_08029B9E:
	ldrb r1, [r5, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _08029BCC
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r0, #1
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	b _08029BCE
	.align 2, 0
_08029BC0: .4byte gUnknown_08090B70
_08029BC4: .4byte gUnknown_08499598
_08029BC8: .4byte 0xFFFF0000
_08029BCC:
	movs r1, #0
_08029BCE:
	movs r0, #0x7f
	ands r0, r1
	ldrb r2, [r5, #4]
	movs r1, #0x80
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r5, #4]
	mov r0, r8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08029BF0
sub_08029BF0: @ 0x08029BF0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	movs r2, #0x22
	ldrsh r1, [r4, r2]
	bl sub_08029088
	ldr r1, [r4, #0x24]
	ldr r0, _08029C0C @ =0x000003E7
	cmp r1, r0
	ble _08029C10
	movs r0, #0x32
	b _08029C1A
	.align 2, 0
_08029C0C: .4byte 0x000003E7
_08029C10:
	asrs r0, r1, #4
	str r0, [r4, #0x2c]
	cmp r0, #0
	bne _08029C1C
	movs r0, #1
_08029C1A:
	str r0, [r4, #0x2c]
_08029C1C:
	movs r0, #0x6b
	bl sub_0803B4DC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08029C28
sub_08029C28: @ 0x08029C28
	push {lr}
	ldrh r2, [r0, #0x20]
	ldrh r1, [r0, #0x22]
	adds r0, r2, #0
	bl sub_0802723C
	pop {r0}
	bx r0

	thumb_func_start sub_08029C38
sub_08029C38: @ 0x08029C38
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x24]
	ldr r4, [r3, #0x2c]
	subs r0, r0, r4
	str r0, [r3, #0x24]
	cmp r0, #0
	ble _08029C74
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	bne _08029CA6
	ldr r0, _08029C6C @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _08029C70 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0]
	subs r1, r1, r4
	str r1, [r0]
	b _08029CA6
	.align 2, 0
_08029C6C: .4byte gUnknown_030033EC
_08029C70: .4byte gUnknown_08499598
_08029C74:
	adds r0, r3, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #1
	bne _08029C92
	ldr r0, _08029CAC @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _08029CB0 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r3, #0x28]
	str r1, [r0]
_08029C92:
	bl sub_080272B4
	ldr r0, _08029CB4 @ =gUnknown_03001FBC
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_08015328
	movs r0, #0x6c
	bl sub_0803B4DC
_08029CA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08029CAC: .4byte gUnknown_030033EC
_08029CB0: .4byte gUnknown_08499598
_08029CB4: .4byte gUnknown_03001FBC

	thumb_func_start sub_08029CB8
sub_08029CB8: @ 0x08029CB8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _08029D00 @ =gUnknown_0849A0A8
	movs r1, #0
	bl sub_080152EC
	adds r3, r0, #0
	str r4, [r3, #0x24]
	ldr r0, _08029D04 @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _08029D08 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	subs r0, r0, r4
	str r0, [r3, #0x28]
	ldrh r0, [r5]
	strh r0, [r3, #0x20]
	ldrh r0, [r5, #2]
	strh r0, [r3, #0x22]
	ldr r0, _08029D0C @ =gUnknown_03003FC0
	adds r0, #0x47
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029D10
	adds r1, r3, #0
	adds r1, #0x30
	movs r0, #0
	strb r0, [r1]
	b _08029D16
	.align 2, 0
_08029D00: .4byte gUnknown_0849A0A8
_08029D04: .4byte gUnknown_030033EC
_08029D08: .4byte gUnknown_08499598
_08029D0C: .4byte gUnknown_03003FC0
_08029D10:
	adds r0, r3, #0
	adds r0, #0x30
	strb r6, [r0]
_08029D16:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08029D1C
sub_08029D1C: @ 0x08029D1C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	bl sub_08029978
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_08029A48
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08029D3C
sub_08029D3C: @ 0x08029D3C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	ldr r1, _08029DB0 @ =gUnknown_03003F40
	movs r0, #0
	str r0, [r1]
	movs r5, #0
	adds r2, r1, #0
	ldr r7, _08029DB4 @ =gUnknown_03003100
	ldr r6, _08029DB8 @ =gUnknown_0849A0D8
_08029D54:
	lsls r4, r5, #1
	adds r4, r4, r5
	adds r0, r4, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #2
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r1, [r1]
	ldrh r3, [r7, #2]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r2, [sp]
	bl sub_0804209C
	lsls r4, r4, #1
	adds r4, r4, r6
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	muls r1, r0, r1
	ldr r2, [sp]
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08029D54
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #0x1e]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08029DB0: .4byte gUnknown_03003F40
_08029DB4: .4byte gUnknown_03003100
_08029DB8: .4byte gUnknown_0849A0D8

	thumb_func_start sub_08029DBC
sub_08029DBC: @ 0x08029DBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08029DEC @ =gUnknown_08499590
	ldr r2, [r0]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x14
	cmp r4, r3
	blt _08029DE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x14
	cmp r1, r2
	blt _08029DE8
	adds r0, r3, #0
	adds r0, #0xe
	cmp r4, r0
	bgt _08029DE8
	adds r0, r2, #0
	adds r0, #9
	cmp r1, r0
	ble _08029DF0
_08029DE8:
	movs r0, #0
	b _08029DF2
	.align 2, 0
_08029DEC: .4byte gUnknown_08499590
_08029DF0:
	movs r0, #1
_08029DF2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08029DF8
sub_08029DF8: @ 0x08029DF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08029E70 @ =gUnknown_0849A0A8
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08029E18
	b _08029FB4
_08029E18:
	ldr r0, _08029E74 @ =gUnknown_08499594
	mov sb, r0
_08029E1C:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r0, #3
	ble _08029E8C
	movs r3, #0x20
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne _08029E38
	ldr r2, _08029E78 @ =gUnknown_030033E4
	ldr r1, _08029E7C @ =gUnknown_03003100
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
_08029E38:
	ldr r0, _08029E80 @ =gUnknown_03001FBC
	movs r4, #0
	ldrsh r0, [r0, r4]
	bl sub_08015328
	bl sub_080424FC
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne _08029E66
	ldr r0, _08029E84 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _08029E66
	ldr r0, _08029E88 @ =gUnknown_03003F38
	ldrb r1, [r0]
	movs r0, #6
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_08029E66:
	bl sub_08034F48
	bl sub_08034F8C
	b _08029FB4
	.align 2, 0
_08029E70: .4byte gUnknown_0849A0A8
_08029E74: .4byte gUnknown_08499594
_08029E78: .4byte gUnknown_030033E4
_08029E7C: .4byte gUnknown_03003100
_08029E80: .4byte gUnknown_03001FBC
_08029E84: .4byte gUnknown_03003FC0
_08029E88: .4byte gUnknown_03003F38
_08029E8C:
	ldr r2, _08029F1C @ =gUnknown_03003F40
	ldr r6, _08029F20 @ =gUnknown_0849A0D8
	movs r3, #0x1e
	ldrsh r1, [r5, r3]
	lsls r0, r1, #1
	adds r4, r0, r1
	lsls r0, r4, #1
	adds r0, r0, r6
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08029EAA
	b _08029FAC
_08029EAA:
	ldr r0, _08029F24 @ =gUnknown_08499590
	ldr r2, [r0]
	ldr r7, _08029F28 @ =gUnknown_03003100
	adds r0, r4, #2
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldrh r3, [r7, #2]
	adds r0, r0, r3
	lsls r0, r0, #1
	ldr r1, _08029F2C @ =0x0000417A
	adds r3, r2, r1
	adds r0, r3, r0
	ldrh r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldrh r4, [r7]
	adds r0, r0, r4
	adds r1, r1, r0
	ldr r4, _08029F30 @ =0x0000051A
	adds r0, r2, r4
	adds r0, r0, r1
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r4, sb
	ldr r1, [r4]
	adds r4, r1, r0
	ldrb r1, [r4, #3]
	lsls r0, r1, #1
	adds r3, r3, r0
	ldrh r0, [r3]
	ldrb r3, [r4, #2]
	adds r0, r0, r3
	mov r8, r0
	ldr r0, _08029F34 @ =0x0000234A
	adds r2, r2, r0
	add r2, r8
	ldrb r0, [r2]
	cmp r0, #0
	beq _08029F12
	adds r0, r3, #0
	bl sub_08029DBC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08029F38
_08029F12:
	adds r0, r4, #0
	bl sub_08029D1C
	b _08029FAC
	.align 2, 0
_08029F1C: .4byte gUnknown_03003F40
_08029F20: .4byte gUnknown_0849A0D8
_08029F24: .4byte gUnknown_08499590
_08029F28: .4byte gUnknown_03003100
_08029F2C: .4byte 0x0000417A
_08029F30: .4byte 0x0000051A
_08029F34: .4byte 0x0000234A
_08029F38:
	ldr r1, _08029FA0 @ =gUnknown_030033EC
	mov r8, r1
	adds r0, r4, #0
	bl sub_08029D1C
	adds r3, r0, #0
	cmp r3, #0
	beq _08029FAC
	movs r4, #0x1e
	ldrsh r1, [r5, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	ldrh r1, [r7]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08029FA4 @ =0xFFFF0000
	ldr r2, [sp]
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	movs r4, #0x1e
	ldrsh r1, [r5, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	adds r0, #2
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	ldrh r7, [r7, #2]
	adds r1, r1, r7
	lsls r1, r1, #0x10
	ldr r0, _08029FA8 @ =0x0000FFFF
	ands r2, r0
	orrs r2, r1
	str r2, [sp]
	mov r0, r8
	ldrb r1, [r0]
	mov r0, sp
	adds r2, r3, #0
	movs r3, #0
	bl sub_08029CB8
	ldrh r0, [r5, #0x1e]
	adds r0, #1
	strh r0, [r5, #0x1e]
	b _08029FB4
	.align 2, 0
_08029FA0: .4byte gUnknown_030033EC
_08029FA4: .4byte 0xFFFF0000
_08029FA8: .4byte 0x0000FFFF
_08029FAC:
	ldrh r0, [r5, #0x1e]
	adds r0, #1
	strh r0, [r5, #0x1e]
	b _08029E1C
_08029FB4:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08029FC4
sub_08029FC4: @ 0x08029FC4
	ldr r2, _08029FDC @ =gUnknown_03001470
	ldr r0, _08029FE0 @ =gUnknown_03001FBC
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r1, #1
	strh r1, [r0, #0x38]
	bx lr
	.align 2, 0
_08029FDC: .4byte gUnknown_03001470
_08029FE0: .4byte gUnknown_03001FBC

	thumb_func_start sub_08029FE4
sub_08029FE4: @ 0x08029FE4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0802A0C8 @ =gUnknown_0849A0A8
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802A004
	b _0802A1D0
_0802A004:
	ldr r3, _0802A0CC @ =gUnknown_08090B74
	ldr r4, [r3]
	ldr r2, _0802A0D0 @ =gUnknown_08090B78
	ldr r0, [r2]
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r4
	ldrh r7, [r0, #0x38]
	cmp r7, #0x32
	bls _0802A020
	b _0802A1C0
_0802A020:
	ldr r0, _0802A0D4 @ =gUnknown_03004007
	mov sl, r0
_0802A024:
	ldr r2, _0802A0D8 @ =gUnknown_08499594
	ldr r0, _0802A0DC @ =gUnknown_03003F2C
	ldrh r0, [r0]
	adds r0, r0, r7
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne _0802A03E
	b _0802A1B4
_0802A03E:
	ldrb r1, [r4, #1]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0802A04A
	b _0802A1B4
_0802A04A:
	ldr r0, _0802A0E0 @ =gUnknown_08499590
	ldr r3, [r0]
	ldrb r1, [r4, #3]
	lsls r1, r1, #1
	ldr r2, _0802A0E4 @ =0x0000417A
	adds r0, r3, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrb r0, [r4, #2]
	adds r6, r1, r0
	ldr r5, _0802A0E8 @ =0x00001432
	adds r0, r3, r5
	adds r0, r0, r6
	ldrb r5, [r0]
	movs r0, #0xe0
	ldr r1, _0802A0EC @ =gUnknown_03004084
	ands r0, r5
	ldrh r1, [r1]
	cmp r0, r1
	beq _0802A074
	b _0802A1B4
_0802A074:
	ldr r1, _0802A0F0 @ =gUnknown_085D5ABC
	ldrb r2, [r4]
	movs r0, #0x5c
	muls r0, r2, r0
	adds r1, #0x54
	adds r0, r0, r1
	movs r1, #0x1f
	ands r1, r5
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0802A094
	b _0802A1B4
_0802A094:
	ldr r1, _0802A0F4 @ =0x0000234A
	adds r0, r3, r1
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802A0F8
	adds r0, r4, #0
	movs r1, #0
	bl sub_08029978
	adds r0, r4, #0
	movs r1, #0
	bl sub_08029A48
	mov r2, sl
	ldrb r0, [r2]
	movs r2, #1
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #2
	bl sub_08029AF8
	b _0802A1B4
	.align 2, 0
_0802A0C8: .4byte gUnknown_0849A0A8
_0802A0CC: .4byte gUnknown_08090B74
_0802A0D0: .4byte gUnknown_08090B78
_0802A0D4: .4byte gUnknown_03004007
_0802A0D8: .4byte gUnknown_08499594
_0802A0DC: .4byte gUnknown_03003F2C
_0802A0E0: .4byte gUnknown_08499590
_0802A0E4: .4byte 0x0000417A
_0802A0E8: .4byte 0x00001432
_0802A0EC: .4byte gUnknown_03004084
_0802A0F0: .4byte gUnknown_085D5ABC
_0802A0F4: .4byte 0x0000234A
_0802A0F8:
	ldr r3, _0802A19C @ =gUnknown_030033EC
	mov r8, r3
	ldrh r1, [r3]
	ldr r5, _0802A1A0 @ =gUnknown_08499598
	mov sb, r5
	ldr r2, [r5]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r6, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08029978
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08029A48
	adds r5, r5, r0
	mov r1, sl
	ldrb r0, [r1]
	movs r2, #1
	subs r2, r2, r0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	movs r1, #2
	bl sub_08029AF8
	adds r3, r0, #0
	cmp r5, #0
	bne _0802A140
	cmp r3, #0
	beq _0802A1B4
_0802A140:
	movs r2, #0
	mov ip, r2
	cmp r3, #0
	beq _0802A160
	movs r5, #1
	mov ip, r5
	mov r1, r8
	ldrh r0, [r1]
	mov r5, sb
	ldr r2, [r5]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	str r6, [r1]
	movs r5, #0
_0802A160:
	ldrb r2, [r4, #2]
	ldr r1, _0802A1A4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	ldrb r2, [r4, #3]
	lsls r2, r2, #0x10
	ldr r1, _0802A1A8 @ =0x0000FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r0, r8
	ldrb r1, [r0]
	adds r2, r3, r5
	mov r0, sp
	mov r3, ip
	bl sub_08029CB8
	ldr r2, _0802A1AC @ =gUnknown_03001470
	ldr r0, _0802A1B0 @ =gUnknown_03001FBC
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	adds r1, r7, #1
	strh r1, [r0, #0x38]
	b _0802A1C0
	.align 2, 0
_0802A19C: .4byte gUnknown_030033EC
_0802A1A0: .4byte gUnknown_08499598
_0802A1A4: .4byte 0xFFFF0000
_0802A1A8: .4byte 0x0000FFFF
_0802A1AC: .4byte gUnknown_03001470
_0802A1B0: .4byte gUnknown_03001FBC
_0802A1B4:
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x32
	bhi _0802A1C0
	b _0802A024
_0802A1C0:
	cmp r7, #0x33
	bne _0802A1D0
	bl sub_08029FC4
	ldr r0, _0802A1E0 @ =gUnknown_03001FBC
	ldrb r0, [r0]
	bl sub_08015C30
_0802A1D0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A1E0: .4byte gUnknown_03001FBC

	thumb_func_start sub_0802A1E4
sub_0802A1E4: @ 0x0802A1E4
	push {r4, r5, lr}
	ldr r4, _0802A240 @ =gUnknown_08499594
	ldr r2, _0802A244 @ =gUnknown_08499590
	ldr r3, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	ldr r5, _0802A248 @ =0x0000417A
	adds r2, r3, r5
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	adds r3, #0x12
	adds r3, r3, r0
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r4]
	adds r3, r1, r0
	ldr r0, _0802A24C @ =gUnknown_03003F2C
	ldrh r2, [r0]
	subs r1, r3, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	movs r1, #0xc0
	ands r0, r1
	cmp r2, r0
	bne _0802A250
	adds r0, r3, #0
	bl sub_08042084
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802A250
	movs r0, #1
	b _0802A252
	.align 2, 0
_0802A240: .4byte gUnknown_08499594
_0802A244: .4byte gUnknown_08499590
_0802A248: .4byte 0x0000417A
_0802A24C: .4byte gUnknown_03003F2C
_0802A250:
	movs r0, #0
_0802A252:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802A258
sub_0802A258: @ 0x0802A258
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0802A2D4 @ =gUnknown_084995A8
	ldrb r1, [r4]
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802A2DC
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0802A27C
	subs r0, #1
	ldrb r1, [r4, #3]
	bl sub_0802A1E4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802A2CE
_0802A27C:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _0802A292
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	subs r1, #1
	bl sub_0802A1E4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802A2CE
_0802A292:
	ldrb r2, [r4, #2]
	ldr r1, _0802A2D8 @ =gUnknown_08090B7C
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r0, [r0]
	subs r0, #1
	adds r5, r1, #0
	cmp r2, r0
	bge _0802A2B2
	adds r0, r2, #1
	ldrb r1, [r4, #3]
	bl sub_0802A1E4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802A2CE
_0802A2B2:
	ldrb r1, [r4, #3]
	ldr r0, [r5]
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	subs r0, #1
	cmp r1, r0
	bge _0802A2DC
	ldrb r0, [r4, #2]
	adds r1, #1
	bl sub_0802A1E4
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A2DC
_0802A2CE:
	movs r0, #1
	b _0802A2DE
	.align 2, 0
_0802A2D4: .4byte gUnknown_084995A8
_0802A2D8: .4byte gUnknown_08090B7C
_0802A2DC:
	movs r0, #0
_0802A2DE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802A2E4
sub_0802A2E4: @ 0x0802A2E4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	bl sub_08029978
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_08029A48
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802A304
sub_0802A304: @ 0x0802A304
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r5, #0
	movs r6, #0
	ldr r2, _0802A384 @ =gUnknown_085D5ABC
	ldrb r1, [r7]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r2, #0x14
	adds r0, r0, r2
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0802A376
	ldr r0, _0802A388 @ =gUnknown_08499594
	mov r8, r0
	mov sb, r2
_0802A32C:
	adds r0, r7, #7
	adds r4, r0, r6
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802A360
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0
	bl sub_08029978
	adds r5, r5, r0
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r2, r8
	ldr r0, [r2]
	adds r0, r0, r1
	movs r1, #0
	bl sub_08029A48
	adds r5, r5, r0
_0802A360:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldrb r1, [r7]
	movs r0, #0x5c
	muls r0, r1, r0
	add r0, sb
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r6, r0
	blo _0802A32C
_0802A376:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802A384: .4byte gUnknown_085D5ABC
_0802A388: .4byte gUnknown_08499594

	thumb_func_start sub_0802A38C
sub_0802A38C: @ 0x0802A38C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r3, r1, #0
	ldr r0, _0802A3DC @ =gUnknown_08499590
	ldr r2, [r0]
	ldrb r1, [r4, #3]
	lsls r1, r1, #1
	ldr r5, _0802A3E0 @ =0x0000417A
	adds r0, r2, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrb r1, [r4, #2]
	adds r0, r0, r1
	ldr r1, _0802A3E4 @ =0x0000234A
	adds r2, r2, r1
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802A3EC
	ldr r5, _0802A3E8 @ =gUnknown_030033EC
	adds r0, r4, #0
	bl _call_via_r3
	adds r2, r0, #0
	cmp r2, #0
	beq _0802A3F2
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x10
	ldrb r1, [r4, #2]
	orrs r1, r0
	str r1, [sp]
	ldrb r1, [r5]
	mov r0, sp
	movs r3, #0
	bl sub_08029CB8
	movs r0, #1
	b _0802A3F4
	.align 2, 0
_0802A3DC: .4byte gUnknown_08499590
_0802A3E0: .4byte 0x0000417A
_0802A3E4: .4byte 0x0000234A
_0802A3E8: .4byte gUnknown_030033EC
_0802A3EC:
	adds r0, r4, #0
	bl _call_via_r3
_0802A3F2:
	movs r0, #0
_0802A3F4:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802A3FC
sub_0802A3FC: @ 0x0802A3FC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0802A470 @ =gUnknown_0849A0A8
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802A4D2
	ldr r3, _0802A474 @ =gUnknown_03001470
	ldr r2, _0802A478 @ =gUnknown_08090B80
	ldr r0, [r2]
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r3
	ldrh r5, [r0, #0x38]
	adds r7, r2, #0
	cmp r5, #0x32
	bhi _0802A4C6
	ldr r0, _0802A47C @ =gUnknown_08499594
	mov r8, r0
	adds r6, r3, #0
_0802A434:
	ldr r0, _0802A480 @ =gUnknown_03003F2C
	ldrh r0, [r0]
	adds r0, r0, r5
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	mov r2, r8
	ldr r0, [r2]
	adds r4, r0, r1
	ldrb r2, [r4]
	cmp r2, #0
	beq _0802A4BC
	ldrb r1, [r4, #1]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	bne _0802A4BC
	cmp r2, #0x16
	bne _0802A488
	adds r0, r4, #0
	ldr r1, _0802A484 @ =sub_0802A304
	bl sub_0802A38C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802A488
	ldr r0, [r7]
	movs r4, #0
	ldrsh r1, [r0, r4]
	b _0802A4A8
	.align 2, 0
_0802A470: .4byte gUnknown_0849A0A8
_0802A474: .4byte gUnknown_03001470
_0802A478: .4byte gUnknown_08090B80
_0802A47C: .4byte gUnknown_08499594
_0802A480: .4byte gUnknown_03003F2C
_0802A484: .4byte sub_0802A304
_0802A488:
	adds r0, r4, #0
	bl sub_0802A258
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0802A4BC
	adds r0, r4, #0
	ldr r1, _0802A4B8 @ =sub_0802A2E4
	bl sub_0802A38C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802A4BC
	ldr r0, [r7]
	movs r2, #0
	ldrsh r1, [r0, r2]
_0802A4A8:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	adds r1, r5, #1
	strh r1, [r0, #0x38]
	b _0802A4C6
	.align 2, 0
_0802A4B8: .4byte sub_0802A2E4
_0802A4BC:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x32
	bls _0802A434
_0802A4C6:
	cmp r5, #0x33
	bne _0802A4D2
	ldr r0, [r7]
	ldrb r0, [r0]
	bl sub_08015C30
_0802A4D2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802A4DC
sub_0802A4DC: @ 0x0802A4DC
	push {lr}
	ldr r0, _0802A500 @ =gUnknown_030033EC
	ldrh r2, [r0]
	ldr r0, _0802A504 @ =gUnknown_08499598
	ldr r0, [r0]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, #0x30
	ldrb r1, [r1]
	bl sub_08029088
	pop {r0}
	bx r0
	.align 2, 0
_0802A500: .4byte gUnknown_030033EC
_0802A504: .4byte gUnknown_08499598

	thumb_func_start sub_0802A508
sub_0802A508: @ 0x0802A508
	push {lr}
	movs r0, #0
	bl sub_0802776C
	pop {r0}
	bx r0

	thumb_func_start sub_0802A514
sub_0802A514: @ 0x0802A514
	push {lr}
	ldr r0, _0802A524 @ =gUnknown_0849A108
	movs r1, #1
	bl sub_080152C0
	pop {r0}
	bx r0
	.align 2, 0
_0802A524: .4byte gUnknown_0849A108

	thumb_func_start sub_0802A528
sub_0802A528: @ 0x0802A528
	push {lr}
	ldr r0, _0802A534 @ =gUnknown_0849A108
	bl sub_0801537C
	pop {r0}
	bx r0
	.align 2, 0
_0802A534: .4byte gUnknown_0849A108

	thumb_func_start sub_0802A538
sub_0802A538: @ 0x0802A538
	push {lr}
	ldr r0, _0802A548 @ =gUnknown_0849A128
	movs r1, #0
	bl sub_080152C0
	pop {r0}
	bx r0
	.align 2, 0
_0802A548: .4byte gUnknown_0849A128

	thumb_func_start sub_0802A54C
sub_0802A54C: @ 0x0802A54C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802A56C
	ldrb r1, [r4, #1]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0802A56C
	ldr r0, _0802A574 @ =gUnknown_0849A198
	adds r1, r2, #0
	bl Proc_Start
	str r4, [r0, #0x4c]
_0802A56C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A574: .4byte gUnknown_0849A198

	thumb_func_start sub_0802A578
sub_0802A578: @ 0x0802A578
	push {lr}
	ldr r1, [r0, #0x4c]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_08029088
	pop {r0}
	bx r0

	thumb_func_start sub_0802A588
sub_0802A588: @ 0x0802A588
	push {r4, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0x4c]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	bl sub_0803FECC
	ldr r0, _0802A5C0 @ =gUnknown_08499594
	ldr r0, [r0]
	subs r4, r4, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	bl sub_08025D60
	bl sub_080258CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802A5C0: .4byte gUnknown_08499594

	thumb_func_start sub_0802A5C4
sub_0802A5C4: @ 0x0802A5C4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802A5F2
	ldr r2, _0802A684 @ =gUnknown_030030F8
	ldr r0, _0802A688 @ =gUnknown_08499594
	ldr r1, [r0]
	subs r1, r4, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	strb r0, [r2]
_0802A5F2:
	ldrb r1, [r4, #1]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802A67E
	ldr r2, _0802A68C @ =gUnknown_08090B84
	ldr r0, [r2]
	ldr r5, [r0]
	subs r1, r4, r5
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #2
	mov ip, r0
	movs r0, #0xc0
	mov r1, ip
	ands r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #1
	adds r3, r0, #0
	adds r0, #0x32
	adds r6, r2, #0
	cmp r3, r0
	bge _0802A65E
	adds r2, r5, #0
	movs r5, #0x80
_0802A634:
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802A650
	cmp r1, r4
	beq _0802A650
	ldrb r1, [r1, #1]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _0802A67E
_0802A650:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, ip
	adds r0, #0x33
	cmp r3, r0
	blt _0802A634
_0802A65E:
	ldr r2, _0802A684 @ =gUnknown_030030F8
	ldr r0, [r6]
	ldr r1, [r0]
	subs r1, r4, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	strb r0, [r2]
_0802A67E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802A684: .4byte gUnknown_030030F8
_0802A688: .4byte gUnknown_08499594
_0802A68C: .4byte gUnknown_08090B84

	thumb_func_start sub_0802A690
sub_0802A690: @ 0x0802A690
	ldr r2, _0802A6A8 @ =gUnknown_03001470
	ldr r0, _0802A6AC @ =gUnknown_03001FBC
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r1, #0
	strh r1, [r0, #0x38]
	bx lr
	.align 2, 0
_0802A6A8: .4byte gUnknown_03001470
_0802A6AC: .4byte gUnknown_03001FBC

	thumb_func_start sub_0802A6B0
sub_0802A6B0: @ 0x0802A6B0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0802A734 @ =gUnknown_0849FB44
	bl sub_0801CB28
	cmp r0, #0
	bne _0802A7A4
	ldr r3, _0802A738 @ =gUnknown_08090B88
	ldr r5, [r3]
	ldr r2, _0802A73C @ =gUnknown_08090B8C
	ldr r4, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r5
	movs r1, #0x38
	ldrsh r0, [r0, r1]
	mov sb, r3
	mov r8, r2
	cmp r0, #0x32
	bgt _0802A79A
	ldr r7, _0802A740 @ =gUnknown_08499594
	adds r6, r5, #0
	adds r5, r4, #0
_0802A6E8:
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, _0802A744 @ =gUnknown_03003F2C
	movs r3, #0x38
	ldrsh r0, [r0, r3]
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r7]
	adds r4, r0, r1
	ldrb r0, [r4]
	cmp r0, #0
	beq _0802A758
	adds r0, r4, #0
	bl sub_080253B0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802A758
	ldrb r1, [r4, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0802A748
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r1, r0, #1
	b _0802A74A
	.align 2, 0
_0802A734: .4byte gUnknown_0849FB44
_0802A738: .4byte gUnknown_08090B88
_0802A73C: .4byte gUnknown_08090B8C
_0802A740: .4byte gUnknown_08499594
_0802A744: .4byte gUnknown_03003F2C
_0802A748:
	movs r1, #0
_0802A74A:
	adds r0, r4, #0
	bl sub_08025B24
	adds r0, r4, #0
	bl sub_0804018C
	b _0802A7A4
_0802A758:
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	ldrh r1, [r0, #0x38]
	adds r1, #1
	strh r1, [r0, #0x38]
	movs r2, #0
	ldrsh r1, [r5, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r6
	movs r3, #0x38
	ldrsh r0, [r0, r3]
	cmp r0, #0x32
	ble _0802A6E8
	mov r0, sb
	ldr r2, [r0]
	mov r1, r8
	ldr r0, [r1]
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r1, #0x38
	ldrsh r0, [r0, r1]
	cmp r0, #0x32
	ble _0802A7A4
_0802A79A:
	mov r2, r8
	ldr r0, [r2]
	ldrb r0, [r0]
	bl sub_08015C30
_0802A7A4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802A7B0
sub_0802A7B0: @ 0x0802A7B0
	push {lr}
	ldr r0, _0802A7C0 @ =gUnknown_0849A1C0
	movs r1, #0
	bl sub_080152C0
	pop {r0}
	bx r0
	.align 2, 0
_0802A7C0: .4byte gUnknown_0849A1C0

	thumb_func_start sub_0802A7C4
sub_0802A7C4: @ 0x0802A7C4
	push {r4, r5, r6, lr}
	ldr r0, _0802A820 @ =gUnknown_03003FC0
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _0802A818
	ldr r0, _0802A824 @ =sub_0802AA78
	movs r1, #1
	bl sub_0801F024
	bl sub_08012358
	ldr r2, _0802A828 @ =gUnknown_030030E0
	ldrb r0, [r2]
	movs r1, #0xc0
	orrs r0, r1
	movs r6, #1
	orrs r0, r6
	movs r5, #2
	orrs r0, r5
	movs r4, #4
	orrs r0, r4
	movs r3, #8
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #1]
	orrs r0, r6
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r1, _0802A82C @ =gUnknown_03001FFC
	movs r0, #5
	strh r0, [r1]
	ldr r1, _0802A830 @ =gUnknown_03002020
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, _0802A834 @ =gUnknown_03002B28
	movs r0, #0
	strh r0, [r1]
_0802A818:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802A820: .4byte gUnknown_03003FC0
_0802A824: .4byte sub_0802AA78
_0802A828: .4byte gUnknown_030030E0
_0802A82C: .4byte gUnknown_03001FFC
_0802A830: .4byte gUnknown_03002020
_0802A834: .4byte gUnknown_03002B28

	thumb_func_start sub_0802A838
sub_0802A838: @ 0x0802A838
	ldr r2, _0802A850 @ =gUnknown_08108264
	ldr r1, _0802A854 @ =gUnknown_0849A354
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _0802A858 @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	bx lr
	.align 2, 0
_0802A850: .4byte gUnknown_08108264
_0802A854: .4byte gUnknown_0849A354
_0802A858: .4byte 0x000003FF

	thumb_func_start sub_0802A85C
sub_0802A85C: @ 0x0802A85C
	ldr r2, _0802A874 @ =gUnknown_08106A64
	ldr r1, _0802A878 @ =gUnknown_0849A2C8
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #3
	ldr r1, _0802A87C @ =0x000003FF
	ands r0, r1
	lsls r0, r0, #5
	adds r0, r0, r2
	bx lr
	.align 2, 0
_0802A874: .4byte gUnknown_08106A64
_0802A878: .4byte gUnknown_0849A2C8
_0802A87C: .4byte 0x000003FF

	thumb_func_start sub_0802A880
sub_0802A880: @ 0x0802A880
	adds r2, r1, #0
	cmp r0, #8
	beq _0802A890
	ldr r1, _0802A88C @ =gUnknown_08104464
	subs r0, #1
	b _0802A896
	.align 2, 0
_0802A88C: .4byte gUnknown_08104464
_0802A890:
	ldr r1, _0802A8A4 @ =gUnknown_08104464
	adds r0, r2, #0
	adds r0, #0x1e
_0802A896:
	lsls r0, r0, #3
	ldr r2, _0802A8A8 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #5
	adds r0, r0, r1
	bx lr
	.align 2, 0
_0802A8A4: .4byte gUnknown_08104464
_0802A8A8: .4byte 0x000003FF

	thumb_func_start sub_0802A8AC
sub_0802A8AC: @ 0x0802A8AC
	adds r3, r0, #0
	adds r0, r1, #0
	cmp r0, #0
	bne _0802A8CC
	ldr r2, _0802A8C4 @ =gUnknown_08106864
	ldr r1, _0802A8C8 @ =gUnknown_0849A2C8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	lsls r0, r0, #5
	adds r0, r0, r2
	b _0802A8D4
	.align 2, 0
_0802A8C4: .4byte gUnknown_08106864
_0802A8C8: .4byte gUnknown_0849A2C8
_0802A8CC:
	ldr r1, _0802A8D8 @ =gUnknown_08106864
	adds r0, #8
	lsls r0, r0, #5
	adds r0, r0, r1
_0802A8D4:
	bx lr
	.align 2, 0
_0802A8D8: .4byte gUnknown_08106864

	thumb_func_start sub_0802A8DC
sub_0802A8DC: @ 0x0802A8DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	bl sub_0803EED4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r7, #0x1f
	ands r7, r4
	adds r0, r4, #0
	bl sub_080249C8
	adds r6, r0, #0
	adds r0, r4, #0
	bl sub_08024984
	mov sl, r0
	adds r0, r7, #0
	bl sub_0802A85C
	ldr r1, _0802A9E4 @ =0x06013940
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08011E54
	ldr r0, _0802A9E8 @ =gUnknown_08090B90
	mov sb, r0
	ldr r1, [r0]
	ldr r2, [sp, #0x28]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r4, _0802A9EC @ =gUnknown_08090B94
	ldr r2, [r4]
	ldr r1, [sp]
	adds r0, r1, r0
	ldrb r1, [r2, #0x14]
	adds r0, r0, r1
	ldr r1, _0802A9F0 @ =0x000001FF
	ands r0, r1
	ldrb r1, [r2, #0x15]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	ldr r2, _0802A9F4 @ =gUnknown_0849A240
	ldr r3, _0802A9F8 @ =0x000011CA
	bl sub_0801BD00
	ldr r0, _0802A9FC @ =gUnknown_08499590
	ldr r1, [r0]
	lsls r5, r5, #1
	ldr r2, _0802AA00 @ =0x0000417A
	adds r0, r1, r2
	adds r0, r0, r5
	ldrh r0, [r0]
	add r0, r8
	ldr r2, _0802AA04 @ =0x0000234A
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	mov r5, sb
	cmp r0, #0
	bne _0802A97A
	cmp r7, #8
	beq _0802A97A
	movs r6, #0
_0802A97A:
	adds r0, r7, #0
	mov r1, sl
	bl sub_0802A880
	ldr r1, _0802AA08 @ =0x06013CC0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08011E54
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_0802A8AC
	movs r1, #0xb0
	lsls r1, r1, #2
	movs r2, #0x20
	bl sub_08013618
	ldr r1, [r5]
	ldr r2, [sp, #0x28]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [r4]
	ldr r1, [sp]
	adds r0, r1, r0
	ldrb r1, [r2, #0x12]
	adds r0, r0, r1
	ldr r1, _0802A9F0 @ =0x000001FF
	ands r0, r1
	ldrb r1, [r2, #0x13]
	ldr r2, [sp, #4]
	adds r1, r2, r1
	movs r2, #0xff
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	ldr r2, _0802AA0C @ =gUnknown_0849A1F0
	ldr r3, _0802AA10 @ =0x000061E6
	bl sub_0801BD00
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802A9E4: .4byte 0x06013940
_0802A9E8: .4byte gUnknown_08090B90
_0802A9EC: .4byte gUnknown_08090B94
_0802A9F0: .4byte 0x000001FF
_0802A9F4: .4byte gUnknown_0849A240
_0802A9F8: .4byte 0x000011CA
_0802A9FC: .4byte gUnknown_08499590
_0802AA00: .4byte 0x0000417A
_0802AA04: .4byte 0x0000234A
_0802AA08: .4byte 0x06013CC0
_0802AA0C: .4byte gUnknown_0849A1F0
_0802AA10: .4byte 0x000061E6

	thumb_func_start sub_0802AA14
sub_0802AA14: @ 0x0802AA14
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	bl sub_0802A838
	ldr r1, _0802AA64 @ =0x06013A40
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08011E54
	ldr r1, _0802AA68 @ =gUnknown_0849A2A6
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r1, #2
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _0802AA6C @ =gUnknown_0849A284
	adds r4, r4, r0
	ldrb r0, [r1, #2]
	adds r4, r4, r0
	ldr r0, _0802AA70 @ =0x000001FF
	ands r4, r0
	ldrb r0, [r1, #3]
	adds r5, r5, r0
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r5, r0
	ldr r2, _0802AA74 @ =gUnknown_0849A248
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801BD00
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802AA64: .4byte 0x06013A40
_0802AA68: .4byte gUnknown_0849A2A6
_0802AA6C: .4byte gUnknown_0849A284
_0802AA70: .4byte 0x000001FF
_0802AA74: .4byte gUnknown_0849A248

	thumb_func_start sub_0802AA78
sub_0802AA78: @ 0x0802AA78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	bl sub_0802B868
	ldr r4, _0802AB00 @ =gUnknown_03003130
	ldrb r7, [r4, #0x10]
	ldrb r0, [r4, #0x11]
	mov r8, r0
	adds r0, r7, #0
	mov r1, r8
	bl sub_0802B6C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r6, _0802AB04 @ =gUnknown_08090B98
	ldr r1, [r6]
	mov sb, r1
	ldr r5, _0802AB08 @ =gUnknown_08090B9C
	ldr r0, [r5]
	ldr r1, [r0]
	mov r3, r8
	lsls r2, r3, #1
	ldr r3, _0802AB0C @ =0x0000417A
	adds r0, r1, r3
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r0, r0, r7
	adds r1, #0x12
	adds r1, r1, r0
	ldrb r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r2, sb
	ldr r1, [r2]
	adds r0, r0, r1
	mov sl, r0
	subs r1, r0, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldrh r2, [r4, #0xc]
	movs r3, #0xc
	ldrsh r0, [r4, r3]
	ldr r1, _0802AB10 @ =gUnknown_0849A2BE
	ldrh r4, [r1]
	cmp r0, r4
	bgt _0802AB14
	ldrh r1, [r1, #2]
	str r1, [sp, #0x10]
	movs r4, #0
	b _0802AB1A
	.align 2, 0
_0802AB00: .4byte gUnknown_03003130
_0802AB04: .4byte gUnknown_08090B98
_0802AB08: .4byte gUnknown_08090B9C
_0802AB0C: .4byte 0x0000417A
_0802AB10: .4byte gUnknown_0849A2BE
_0802AB14:
	ldrh r1, [r1, #6]
	str r1, [sp, #0x10]
	movs r4, #1
_0802AB1A:
	ldr r0, _0802ABE4 @ =gUnknown_03002F90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne _0802AB34
	ldr r0, _0802ABE8 @ =gUnknown_0300309C
	ldrh r0, [r0]
	adds r0, #0xa0
	ldr r3, [sp, #0x10]
	subs r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
_0802AB34:
	lsls r0, r7, #0x10
	str r0, [sp, #0x20]
	asrs r6, r0, #0x10
	mov r1, r8
	lsls r1, r1, #0x10
	str r1, [sp, #0x24]
	asrs r5, r1, #0x10
	lsls r2, r2, #0x10
	str r2, [sp, #0x28]
	asrs r2, r2, #0x10
	mov r8, r2
	ldr r2, [sp, #0x10]
	lsls r2, r2, #0x10
	str r2, [sp, #0x2c]
	asrs r3, r2, #0x10
	lsls r7, r4, #0x10
	asrs r4, r7, #0x10
	str r4, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_0802A8DC
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0803EED4
	movs r6, #0x1f
	ldr r2, _0802ABEC @ =gUnknown_0849A2A6
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r5, [r1]
	ldr r3, _0802ABF0 @ =gUnknown_08090BA0
	ldr r1, [r3]
	add r5, r8
	ldrb r4, [r1, #0x18]
	adds r5, r5, r4
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldrb r4, [r1, #0x19]
	ldr r1, [sp, #0x10]
	adds r4, r4, r1
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _0802ABF4 @ =gUnknown_085D583C
	ands r6, r0
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, #0x10
	adds r0, r0, r1
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0xa
	bl Div
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0802BAFC
	movs r2, #0
	str r2, [sp, #0x18]
	subs r6, #6
	lsls r6, r6, #0x10
	asrs r0, r6, #0x10
	ldr r3, [sp, #0x24]
	str r3, [sp, #0x38]
	ldr r4, [sp, #0x20]
	str r4, [sp, #0x34]
	ldr r1, [sp, #0x28]
	str r1, [sp, #0x3c]
	ldr r2, [sp, #0x2c]
	str r2, [sp, #0x40]
	str r7, [sp, #0x48]
	cmp r0, #0xe
	bhi _0802AC3C
	lsls r0, r0, #2
	ldr r1, _0802ABF8 @ =_0802ABFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802ABE4: .4byte gUnknown_03002F90
_0802ABE8: .4byte gUnknown_0300309C
_0802ABEC: .4byte gUnknown_0849A2A6
_0802ABF0: .4byte gUnknown_08090BA0
_0802ABF4: .4byte gUnknown_085D583C
_0802ABF8: .4byte _0802ABFC
_0802ABFC: @ jump table
	.4byte _0802AC38 @ case 0
	.4byte _0802AC3C @ case 1
	.4byte _0802AC38 @ case 2
	.4byte _0802AC3C @ case 3
	.4byte _0802AC38 @ case 4
	.4byte _0802AC38 @ case 5
	.4byte _0802AC3C @ case 6
	.4byte _0802AC3C @ case 7
	.4byte _0802AC38 @ case 8
	.4byte _0802AC3C @ case 9
	.4byte _0802AC3C @ case 10
	.4byte _0802AC3C @ case 11
	.4byte _0802AC3C @ case 12
	.4byte _0802AC3C @ case 13
	.4byte _0802AC38 @ case 14
_0802AC38:
	movs r3, #0x14
	str r3, [sp, #0x18]
_0802AC3C:
	ldr r4, [sp, #0x14]
	lsls r0, r4, #0x10
	str r0, [sp, #0x44]
	cmp r0, #0
	bne _0802AC48
	b _0802B0AC
_0802AC48:
	mov r1, sl
	ldrb r0, [r1]
	ldr r2, [sp, #0x3c]
	asrs r6, r2, #0x10
	ldr r3, [sp, #0x40]
	asrs r3, r3, #0x10
	mov r8, r3
	ldr r1, [sp, #0x48]
	asrs r4, r1, #0x10
	adds r1, r6, #0
	mov r2, r8
	adds r3, r4, #0
	bl sub_0802AA14
	ldr r2, _0802AD18 @ =gUnknown_0810E6E0
	ldr r0, _0802AD1C @ =gUnknown_08499598
	ldr r1, [r0]
	ldr r3, [sp, #0x1c]
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1a]
	subs r0, #1
	lsls r0, r0, #5
	adds r0, r0, r2
	movs r1, #0xf8
	lsls r1, r1, #2
	movs r2, #0x20
	bl sub_08013618
	ldr r1, _0802AD20 @ =gUnknown_0849A2A6
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #1
	adds r1, #2
	adds r5, r0, r1
	ldrh r0, [r5]
	ldr r7, _0802AD24 @ =gUnknown_0849A284
	adds r0, r0, r6
	ldrb r4, [r7]
	adds r0, r0, r4
	ldr r2, _0802AD28 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	ldrb r1, [r7, #1]
	ldr r3, [sp, #0x10]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r4, sl
	ldrb r2, [r4]
	ldrb r3, [r4, #7]
	mov sb, r3
	ldrb r3, [r4, #8]
	mov r4, sb
	orrs r3, r4
	str r3, [sp]
	mov r4, sl
	ldrb r3, [r4, #5]
	lsrs r3, r3, #3
	str r3, [sp, #4]
	ldrb r3, [r4, #1]
	str r3, [sp, #8]
	movs r3, #0
	mov sb, r3
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	bl sub_0802B91C
	ldr r3, _0802AD2C @ =gUnknown_08090BA4
	ldr r2, [r3]
	ldrb r1, [r4]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r4, [r0, #0xb]
	cmp r4, #0
	beq _0802AD38
	ldr r0, _0802AD30 @ =gUnknown_081243C4
	movs r4, #0
	ldrsh r3, [r5, r4]
	adds r3, r6, r3
	ldrb r1, [r7, #4]
	adds r3, r3, r1
	ldr r1, _0802AD28 @ =0x000001FF
	ands r3, r1
	ldrb r1, [r7, #5]
	add r1, r8
	movs r2, #0xff
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [sp]
	ldr r1, _0802AD34 @ =0x00001352
	str r1, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	movs r1, #3
	movs r2, #1
	bl sub_0801C7DC
	b _0802AD66
	.align 2, 0
_0802AD18: .4byte gUnknown_0810E6E0
_0802AD1C: .4byte gUnknown_08499598
_0802AD20: .4byte gUnknown_0849A2A6
_0802AD24: .4byte gUnknown_0849A284
_0802AD28: .4byte 0x000001FF
_0802AD2C: .4byte gUnknown_08090BA4
_0802AD30: .4byte gUnknown_081243C4
_0802AD34: .4byte 0x00001352
_0802AD38:
	ldr r0, _0802ADF4 @ =gUnknown_081243C4
	movs r1, #0
	ldrsh r3, [r5, r1]
	adds r3, r6, r3
	ldrb r2, [r7, #4]
	adds r3, r3, r2
	ldr r1, _0802ADF8 @ =0x000001FF
	ands r3, r1
	ldrb r1, [r7, #5]
	add r1, r8
	movs r2, #0xff
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [sp]
	ldr r1, _0802ADFC @ =0x00001352
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #4
	movs r2, #1
	bl sub_0801C7DC
_0802AD66:
	ldr r4, _0802AE00 @ =gUnknown_08090BA8
	ldr r0, [r4]
	ldrh r0, [r0]
	ldr r5, _0802AE04 @ =gUnknown_08499594
	ldr r2, [r5]
	mov r3, sl
	subs r2, r3, r2
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r2, r1, #4
	adds r1, r1, r2
	lsls r2, r1, #8
	adds r1, r1, r2
	lsls r2, r1, #0x10
	adds r1, r1, r2
	rsbs r1, r1, #0
	asrs r1, r1, #8
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_08026F28
	lsls r0, r0, #0x18
	adds r7, r4, #0
	cmp r0, #0
	bne _0802AE10
	ldr r1, [r5]
	mov r4, sl
	subs r1, r4, r1
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	lsls r1, r0, #0x10
	adds r0, r0, r1
	rsbs r0, r0, #0
	asrs r0, r0, #8
	adds r0, #1
	bl sub_08043050
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0802AE10
	ldr r2, _0802AE08 @ =gUnknown_0849A2A6
	ldr r0, [sp, #0x48]
	asrs r1, r0, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldr r2, [sp, #0x3c]
	asrs r1, r2, #0x10
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r2, _0802AE0C @ =gUnknown_0849A284
	ldrb r0, [r2, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r2, #7]
	ldr r3, [sp, #0x10]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0802BB74
	b _0802AE6E
	.align 2, 0
_0802ADF4: .4byte gUnknown_081243C4
_0802ADF8: .4byte 0x000001FF
_0802ADFC: .4byte 0x00001352
_0802AE00: .4byte gUnknown_08090BA8
_0802AE04: .4byte gUnknown_08499594
_0802AE08: .4byte gUnknown_0849A2A6
_0802AE0C: .4byte gUnknown_0849A284
_0802AE10:
	ldr r2, _0802AE5C @ =gUnknown_0849A2A6
	ldr r4, [sp, #0x48]
	asrs r1, r4, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldr r2, [sp, #0x3c]
	asrs r1, r2, #0x10
	ldrh r0, [r0]
	adds r1, r1, r0
	ldr r2, _0802AE60 @ =gUnknown_0849A284
	ldrb r0, [r2, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrb r0, [r2, #7]
	ldr r3, [sp, #0x10]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	mov r4, sl
	ldrb r1, [r4, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0802AE64
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r0, #1
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	b _0802AE66
	.align 2, 0
_0802AE5C: .4byte gUnknown_0849A2A6
_0802AE60: .4byte gUnknown_0849A284
_0802AE64:
	movs r2, #0
_0802AE66:
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_0802BAFC
_0802AE6E:
	ldr r4, _0802AF50 @ =gUnknown_0849A2A6
	ldr r0, [sp, #0x48]
	asrs r1, r0, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	str r0, [sp, #0x30]
	adds r0, r4, #2
	ldr r1, [sp, #0x30]
	adds r6, r1, r0
	ldrh r0, [r6]
	ldr r2, [sp, #0x3c]
	asrs r2, r2, #0x10
	mov sb, r2
	ldr r3, _0802AF54 @ =gUnknown_0849A284
	mov r8, r3
	add r0, sb
	ldrb r1, [r3, #8]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r3, #9]
	ldr r2, [sp, #0x10]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sl
	ldrb r2, [r3, #6]
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x19
	bl sub_0802BAFC
	mov r1, sl
	ldrb r0, [r1]
	movs r5, #0x5c
	muls r0, r5, r0
	ldr r2, _0802AF58 @ =gUnknown_085D5ABC
	adds r0, r0, r2
	ldrb r0, [r0, #0xb]
	cmp r0, #0
	beq _0802AEE6
	ldrh r0, [r6]
	add r0, sb
	mov r3, r8
	ldrb r3, [r3, #0xa]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, r8
	ldrb r1, [r2, #0xb]
	ldr r3, [sp, #0x10]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, sl
	ldrh r2, [r3, #4]
	lsls r2, r2, #0x15
	lsrs r2, r2, #0x1c
	bl sub_0802BAFC
_0802AEE6:
	mov r1, sl
	ldrb r0, [r1]
	ldr r1, [r7]
	ldrh r1, [r1]
	ldr r2, _0802AF5C @ =gUnknown_08499594
	ldr r3, [r2]
	mov r2, sl
	subs r3, r2, r3
	lsls r2, r3, #2
	adds r2, r2, r3
	lsls r3, r2, #4
	adds r2, r2, r3
	lsls r3, r2, #8
	adds r2, r2, r3
	lsls r3, r2, #0x10
	adds r2, r2, r3
	rsbs r2, r2, #0
	asrs r2, r2, #8
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_0802706C
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq _0802AFB0
	mov r3, sl
	ldrb r0, [r3]
	muls r0, r5, r0
	ldr r1, _0802AF58 @ =gUnknown_085D5ABC
	adds r1, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0802AF64
	adds r0, r4, #4
	ldr r4, [sp, #0x30]
	adds r0, r4, r0
	ldrh r0, [r0]
	add r0, sb
	mov r1, r8
	ldrb r1, [r1, #0xc]
	adds r0, r0, r1
	ldr r2, _0802AF60 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	mov r3, r8
	ldrb r1, [r3, #0xd]
	ldr r4, [sp, #0x10]
	adds r1, r1, r4
	b _0802AFA0
	.align 2, 0
_0802AF50: .4byte gUnknown_0849A2A6
_0802AF54: .4byte gUnknown_0849A284
_0802AF58: .4byte gUnknown_085D5ABC
_0802AF5C: .4byte gUnknown_08499594
_0802AF60: .4byte 0x000001FF
_0802AF64:
	adds r4, #4
	ldr r0, [sp, #0x30]
	adds r4, r0, r4
	ldrh r0, [r4]
	add r0, sb
	mov r1, r8
	ldrb r1, [r1, #0xe]
	adds r0, r0, r1
	ldr r2, _0802AFAC @ =0x000001FF
	adds r5, r2, #0
	ands r0, r5
	mov r3, r8
	ldrb r1, [r3, #0xf]
	ldr r2, [sp, #0x10]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #2
	bl sub_0802B8C4
	ldrh r0, [r4]
	add r0, sb
	mov r3, r8
	ldrb r3, [r3, #0x10]
	adds r0, r0, r3
	ands r0, r5
	mov r4, r8
	ldrb r1, [r4, #0x11]
	ldr r2, [sp, #0x10]
	adds r1, r1, r2
_0802AFA0:
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #1
	bl sub_0802B8C4
	b _0802B09C
	.align 2, 0
_0802AFAC: .4byte 0x000001FF
_0802AFB0:
	mov r3, sl
	ldrb r6, [r3, #8]
	cmp r6, #0
	beq _0802B04C
	ldrb r1, [r3, #7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0802B044 @ =gUnknown_08499594
	ldr r1, [r2]
	adds r3, r1, r0
	adds r5, r4, #4
	ldr r4, [sp, #0x30]
	adds r5, r4, r5
	ldrh r0, [r5]
	add r0, sb
	mov r1, r8
	ldrb r1, [r1, #0xe]
	adds r0, r0, r1
	ldr r2, _0802B048 @ =0x000001FF
	adds r6, r2, #0
	ands r0, r6
	mov r4, r8
	ldrb r1, [r4, #0xf]
	ldr r2, [sp, #0x10]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r3]
	ldrb r4, [r3, #7]
	ldrb r3, [r3, #8]
	orrs r3, r4
	str r3, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	movs r3, #1
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	bl sub_0802B91C
	mov r3, sl
	ldrb r1, [r3, #8]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r4, _0802B044 @ =gUnknown_08499594
	ldr r1, [r4]
	adds r3, r1, r0
	ldrh r0, [r5]
	add r0, sb
	mov r1, r8
	ldrb r1, [r1, #0x10]
	adds r0, r0, r1
	ands r0, r6
	mov r2, r8
	ldrb r1, [r2, #0x11]
	ldr r4, [sp, #0x10]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r3]
	ldrb r4, [r3, #7]
	ldrb r3, [r3, #8]
	orrs r3, r4
	str r3, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	movs r3, #2
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	bl sub_0802B91C
	b _0802B09C
	.align 2, 0
_0802B044: .4byte gUnknown_08499594
_0802B048: .4byte 0x000001FF
_0802B04C:
	mov r1, sl
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _0802B09C
	adds r1, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, _0802B10C @ =gUnknown_08499594
	ldr r1, [r2]
	adds r3, r1, r0
	adds r0, r4, #4
	ldr r4, [sp, #0x30]
	adds r0, r4, r0
	ldrh r0, [r0]
	add r0, sb
	mov r1, r8
	ldrb r1, [r1, #0xc]
	adds r0, r0, r1
	ldr r2, _0802B110 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	mov r4, r8
	ldrb r1, [r4, #0xd]
	ldr r2, [sp, #0x10]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r2, [r3]
	ldrb r4, [r3, #7]
	ldrb r3, [r3, #8]
	orrs r3, r4
	str r3, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r3, #1
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	bl sub_0802B91C
_0802B09C:
	mov r3, sl
	ldrb r0, [r3, #5]
	lsrs r0, r0, #3
	ldr r4, [sp, #0x18]
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
_0802B0AC:
	ldr r0, [sp, #0x3c]
	asrs r4, r0, #0x10
	ldr r1, [sp, #0x40]
	asrs r5, r1, #0x10
	ldr r2, [sp, #0x48]
	asrs r6, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0802B4D4
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_0802B3AC
	ldr r2, _0802B114 @ =gUnknown_030030CC
	ldrb r0, [r2, #1]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r7, _0802B118 @ =gUnknown_03002B40
	movs r1, #0
	strb r1, [r7]
	ldr r5, _0802B11C @ =gUnknown_08090BAC
	ldr r0, [r5]
	strb r1, [r0]
	ldr r3, _0802B120 @ =gUnknown_08090BB0
	ldr r2, [r3]
	ldr r0, [sp, #0x44]
	lsrs r1, r0, #0xf
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	adds r0, #1
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r6, r4, #0x10
	asrs r4, r4, #0x10
	adds r1, r3, #0
	cmp r4, #0xef
	ble _0802B124
	movs r0, #0xef
	strb r0, [r7]
	b _0802B12A
	.align 2, 0
_0802B10C: .4byte gUnknown_08499594
_0802B110: .4byte 0x000001FF
_0802B114: .4byte gUnknown_030030CC
_0802B118: .4byte gUnknown_03002B40
_0802B11C: .4byte gUnknown_08090BAC
_0802B120: .4byte gUnknown_08090BB0
_0802B124:
	cmp r4, #0
	ble _0802B12A
	strb r6, [r7]
_0802B12A:
	ldr r2, [sp, #0x3c]
	asrs r3, r2, #0x10
	ldr r4, [r1]
	ldr r0, [sp, #0x44]
	lsrs r2, r0, #0xf
	ldr r0, [sp, #0x48]
	asrs r1, r0, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r2, r0
	adds r0, r0, r4
	adds r3, #1
	ldrh r0, [r0]
	adds r3, r3, r0
	ldr r0, _0802B164 @ =gUnknown_0849A2A0
	adds r2, r2, r0
	ldrh r0, [r2]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _0802B168
	ldr r1, [r5]
	movs r0, #0xef
	strb r0, [r1]
	b _0802B170
	.align 2, 0
_0802B164: .4byte gUnknown_0849A2A0
_0802B168:
	cmp r0, #0
	ble _0802B170
	ldr r0, [r5]
	strb r6, [r0]
_0802B170:
	ldr r0, _0802B26C @ =gUnknown_03002EFC
	mov r1, sp
	ldrb r1, [r1, #0x10]
	strb r1, [r0]
	ldr r1, _0802B270 @ =gUnknown_03002B44
	ldr r0, [sp, #0x10]
	adds r0, #0x38
	strb r0, [r1]
	ldr r2, _0802B274 @ =gUnknown_030030A4
	ldrb r0, [r2]
	movs r3, #1
	mov r8, r3
	mov r4, r8
	orrs r0, r4
	movs r6, #2
	orrs r0, r6
	movs r5, #4
	orrs r0, r5
	movs r4, #8
	orrs r0, r4
	movs r3, #0x10
	orrs r0, r3
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r2]
	ldr r2, _0802B278 @ =gUnknown_030030DC
	ldrb r0, [r2]
	mov r1, r8
	orrs r0, r1
	orrs r0, r6
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	movs r6, #0
	ldr r2, [sp, #0x34]
	asrs r4, r2, #0x10
	ldr r3, [sp, #0x38]
	asrs r5, r3, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0803DF54
	cmp r0, #0
	beq _0802B1D2
	ldrb r6, [r0, #4]
_0802B1D2:
	ldr r2, _0802B27C @ =gUnknown_020288B4
	ldr r0, _0802B280 @ =gUnknown_08499590
	ldr r0, [r0]
	lsls r1, r5, #1
	ldr r3, _0802B284 @ =0x0000417A
	adds r0, r0, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r4
	adds r1, r0, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802B1EE
	adds r6, r0, #0
_0802B1EE:
	lsls r0, r6, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0
	beq _0802B2A0
	ldr r0, _0802B288 @ =gUnknown_081243C4
	ldr r1, [sp, #0x3c]
	asrs r7, r1, #0x10
	ldr r3, _0802B28C @ =gUnknown_0849A2A6
	ldr r1, [sp, #0x48]
	asrs r2, r1, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r6, r1, r3
	movs r2, #0
	ldrsh r3, [r6, r2]
	ldr r5, _0802B290 @ =gUnknown_0849A284
	adds r3, r7, r3
	ldrb r1, [r5, #0x16]
	adds r3, r3, r1
	ldr r1, _0802B294 @ =0x000001FF
	ands r3, r1
	ldr r2, [sp, #0x40]
	asrs r1, r2, #0x10
	ldrb r2, [r5, #0x17]
	adds r1, r1, r2
	movs r2, #0xff
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [sp]
	ldr r1, _0802B298 @ =0x00001352
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #2
	movs r2, #1
	bl sub_0801C7DC
	ldr r0, _0802B29C @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x1e
	bl __umodsi3
	cmp r0, #9
	bhi _0802B24E
	b _0802B386
_0802B24E:
	ldrh r0, [r6]
	adds r0, r0, r7
	ldrb r3, [r5, #0x1a]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r5, #0x1b]
	ldr r2, [sp, #0x10]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r4, #0
	bl sub_0802BAFC
	b _0802B386
	.align 2, 0
_0802B26C: .4byte gUnknown_03002EFC
_0802B270: .4byte gUnknown_03002B44
_0802B274: .4byte gUnknown_030030A4
_0802B278: .4byte gUnknown_030030DC
_0802B27C: .4byte gUnknown_020288B4
_0802B280: .4byte gUnknown_08499590
_0802B284: .4byte 0x0000417A
_0802B288: .4byte gUnknown_081243C4
_0802B28C: .4byte gUnknown_0849A2A6
_0802B290: .4byte gUnknown_0849A284
_0802B294: .4byte 0x000001FF
_0802B298: .4byte 0x00001352
_0802B29C: .4byte gUnknown_03004008
_0802B2A0:
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	asrs r7, r0, #0x10
	cmp r7, #0
	beq _0802B340
	ldr r0, _0802B328 @ =gUnknown_081243C4
	ldr r1, [sp, #0x3c]
	asrs r1, r1, #0x10
	mov r8, r1
	ldr r3, _0802B32C @ =gUnknown_0849A2A6
	ldr r1, [sp, #0x48]
	asrs r2, r1, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r6, r1, r3
	movs r2, #0
	ldrsh r3, [r6, r2]
	ldr r5, _0802B330 @ =gUnknown_0849A284
	add r3, r8
	ldrb r1, [r5, #0x16]
	adds r3, r3, r1
	ldr r1, _0802B334 @ =0x000001FF
	ands r3, r1
	ldr r2, [sp, #0x40]
	asrs r1, r2, #0x10
	ldrb r2, [r5, #0x17]
	adds r1, r1, r2
	movs r2, #0xff
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [sp]
	ldr r1, _0802B338 @ =0x00001352
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #1
	movs r2, #1
	bl sub_0801C7DC
	subs r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x12
	bhi _0802B30A
	ldr r0, _0802B33C @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x1e
	bl __umodsi3
	cmp r0, #9
	bls _0802B386
_0802B30A:
	ldrh r0, [r6]
	add r0, r8
	ldrb r3, [r5, #0x1a]
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r5, #0x1b]
	ldr r4, [sp, #0x10]
	adds r1, r1, r4
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r7, #0
	bl sub_0802BAFC
	b _0802B386
	.align 2, 0
_0802B328: .4byte gUnknown_081243C4
_0802B32C: .4byte gUnknown_0849A2A6
_0802B330: .4byte gUnknown_0849A284
_0802B334: .4byte 0x000001FF
_0802B338: .4byte 0x00001352
_0802B33C: .4byte gUnknown_03004008
_0802B340:
	ldr r0, _0802B398 @ =gUnknown_081243C4
	ldr r1, [sp, #0x3c]
	asrs r3, r1, #0x10
	ldr r4, _0802B39C @ =gUnknown_0849A2A6
	ldr r1, [sp, #0x48]
	asrs r2, r1, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r4
	movs r2, #0
	ldrsh r1, [r1, r2]
	ldr r2, _0802B3A0 @ =gUnknown_0849A284
	adds r3, r3, r1
	ldrb r4, [r2, #0x16]
	adds r3, r3, r4
	ldr r1, _0802B3A4 @ =0x000001FF
	ands r3, r1
	ldr r4, [sp, #0x40]
	asrs r1, r4, #0x10
	ldrb r2, [r2, #0x17]
	adds r1, r1, r2
	movs r2, #0xff
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	str r1, [sp]
	ldr r1, _0802B3A8 @ =0x00001352
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r1, #0
	movs r2, #1
	bl sub_0801C7DC
_0802B386:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B398: .4byte gUnknown_081243C4
_0802B39C: .4byte gUnknown_0849A2A6
_0802B3A0: .4byte gUnknown_0849A284
_0802B3A4: .4byte 0x000001FF
_0802B3A8: .4byte 0x00001352

	thumb_func_start sub_0802B3AC
sub_0802B3AC: @ 0x0802B3AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	bl sub_08012E4C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, _0802B448 @ =gUnknown_0849A02C
	bl sub_0801CB28
	cmp r0, #0
	beq _0802B4B8
	ldr r4, _0802B44C @ =gUnknown_030033E4
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_0803DE94
	cmp r0, #0
	bne _0802B402
	ldr r2, _0802B450 @ =gUnknown_020288B4
	ldr r0, _0802B454 @ =gUnknown_08499590
	ldr r5, [r0]
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	ldr r3, _0802B458 @ =0x0000417A
	adds r0, r5, r3
	adds r0, r0, r1
	ldrh r1, [r0]
	ldrh r0, [r4]
	adds r3, r1, r0
	adds r2, r3, r2
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802B468
_0802B402:
	ldr r0, _0802B45C @ =gUnknown_03003F38
	ldrb r0, [r0]
	bl sub_080251D8
	ldr r2, _0802B460 @ =gUnknown_0849A2A6
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x14
	mov r3, r8
	lsls r2, r3, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0802B464 @ =gUnknown_030013D0
	ldrh r2, [r2, #0x14]
	movs r3, #0xd3
	lsls r3, r3, #1
	bl sub_08037200
	b _0802B4B8
	.align 2, 0
_0802B448: .4byte gUnknown_0849A02C
_0802B44C: .4byte gUnknown_030033E4
_0802B450: .4byte gUnknown_020288B4
_0802B454: .4byte gUnknown_08499590
_0802B458: .4byte 0x0000417A
_0802B45C: .4byte gUnknown_03003F38
_0802B460: .4byte gUnknown_0849A2A6
_0802B464: .4byte gUnknown_030013D0
_0802B468:
	ldr r0, _0802B4C4 @ =gUnknown_03003F38
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x12
	adds r1, r1, r3
	ldrb r1, [r1]
	ldr r2, _0802B4C8 @ =gUnknown_03003100
	bl sub_080251BC
	ldr r2, _0802B4CC @ =gUnknown_0849A2A6
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r2, #2
	adds r1, r1, r2
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	adds r0, #0x1b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r1, #0x14
	mov r3, r8
	lsls r2, r3, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0802B4D0 @ =gUnknown_030013D0
	ldrh r2, [r2, #0x14]
	movs r3, #0xd3
	lsls r3, r3, #1
	bl sub_08037200
_0802B4B8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B4C4: .4byte gUnknown_03003F38
_0802B4C8: .4byte gUnknown_03003100
_0802B4CC: .4byte gUnknown_0849A2A6
_0802B4D0: .4byte gUnknown_030013D0

	thumb_func_start sub_0802B4D4
sub_0802B4D4: @ 0x0802B4D4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp]
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _0802B5E0 @ =gUnknown_0849A02C
	bl sub_0801CB28
	cmp r0, #0
	beq _0802B4FA
	b _0802B6A2
_0802B4FA:
	ldr r1, _0802B5E4 @ =gUnknown_08090BB4
	ldr r2, [r1]
	adds r0, r2, #0
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0802B50A
	b _0802B608
_0802B50A:
	movs r6, #7
	movs r1, #4
	lsls r4, r4, #0x10
	str r4, [sp, #4]
	lsls r5, r5, #0x10
	str r5, [sp, #0xc]
	ldr r0, [sp]
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	asrs r4, r4, #0x10
	mov sl, r4
	asrs r5, r5, #0x10
	mov sb, r5
_0802B524:
	lsls r7, r1, #0x18
	lsrs r0, r7, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802B59E
	mov r1, sb
	lsls r4, r1, #1
	add r4, sb
	lsls r4, r4, #1
	ldr r2, _0802B5E8 @ =gUnknown_0849A2A6
	adds r4, r4, r2
	movs r3, #0
	ldrsh r0, [r4, r3]
	add r0, sl
	adds r0, #4
	ldr r1, _0802B5EC @ =0x000001FF
	ands r0, r1
	ldr r1, [sp, #8]
	asrs r5, r1, #0x10
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	subs r5, r5, r6
	movs r1, #0xff
	ands r1, r5
	asrs r2, r7, #0x18
	mov r8, r2
	mov r3, r8
	adds r3, #8
	lsls r3, r3, #0xc
	ldr r2, _0802B5F0 @ =0x00000361
	orrs r3, r2
	ldr r2, _0802B5F4 @ =gUnknown_0848B688
	bl sub_0801BD00
	ldrh r0, [r4]
	add r0, sl
	adds r0, #0x15
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, _0802B5F8 @ =gUnknown_03003FC0
	adds r1, #0x31
	ldrb r2, [r1]
	ldr r1, _0802B5FC @ =gUnknown_08499598
	ldr r3, [r1]
	mov r4, r8
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrb r1, [r1, #0x11]
	subs r2, r2, r1
	adds r1, r5, #0
	bl sub_0802BAFC
	adds r6, #7
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
_0802B59E:
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r7, r1
	lsrs r1, r0, #0x18
	cmp r0, #0
	bgt _0802B524
	ldr r2, [sp, #4]
	asrs r0, r2, #0x10
	ldr r3, _0802B5E8 @ =gUnknown_0849A2A6
	ldr r4, [sp, #0xc]
	asrs r2, r4, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r3
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	adds r0, #1
	ldr r1, _0802B5EC @ =0x000001FF
	ands r0, r1
	ldr r3, [sp, #8]
	asrs r1, r3, #0x10
	lsls r2, r6, #0x18
	asrs r2, r2, #0x18
	subs r1, r1, r2
	movs r2, #0xff
	ands r1, r2
	ldr r2, _0802B600 @ =gUnknown_0848B6B0
	ldr r3, _0802B604 @ =0x00001362
	bl sub_0801BD00
	b _0802B6A2
	.align 2, 0
_0802B5E0: .4byte gUnknown_0849A02C
_0802B5E4: .4byte gUnknown_08090BB4
_0802B5E8: .4byte gUnknown_0849A2A6
_0802B5EC: .4byte 0x000001FF
_0802B5F0: .4byte 0x00000361
_0802B5F4: .4byte gUnknown_0848B688
_0802B5F8: .4byte gUnknown_03003FC0
_0802B5FC: .4byte gUnknown_08499598
_0802B600: .4byte gUnknown_0848B6B0
_0802B604: .4byte 0x00001362
_0802B608:
	adds r0, r2, #0
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802B6A2
	movs r6, #7
	movs r1, #4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	mov sl, r0
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov sb, r0
_0802B622:
	lsls r7, r1, #0x18
	lsrs r0, r7, #0x18
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802B696
	mov r0, sb
	lsls r4, r0, #1
	add r4, sb
	lsls r4, r4, #1
	ldr r1, _0802B6B4 @ =gUnknown_0849A2A6
	adds r4, r4, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	add r0, sl
	adds r0, #4
	ldr r1, _0802B6B8 @ =0x000001FF
	ands r0, r1
	ldr r3, [sp]
	lsls r5, r3, #0x10
	asrs r5, r5, #0x10
	lsls r6, r6, #0x18
	asrs r6, r6, #0x18
	subs r5, r5, r6
	movs r1, #0xff
	ands r1, r5
	asrs r2, r7, #0x18
	mov r8, r2
	mov r3, r8
	adds r3, #8
	lsls r3, r3, #0xc
	ldr r2, _0802B6BC @ =0x00000361
	orrs r3, r2
	ldr r2, _0802B6C0 @ =gUnknown_0848B688
	bl sub_0801BD00
	ldrh r0, [r4]
	add r0, sl
	adds r0, #0x15
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r1, _0802B6C4 @ =gUnknown_08499598
	ldr r2, [r1]
	mov r3, r8
	lsls r1, r3, #4
	subs r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r2, [r1, #0x11]
	adds r1, r5, #0
	bl sub_0802BAFC
	adds r6, #7
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
_0802B696:
	movs r4, #0xff
	lsls r4, r4, #0x18
	adds r0, r7, r4
	lsrs r1, r0, #0x18
	cmp r0, #0
	bgt _0802B622
_0802B6A2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802B6B4: .4byte gUnknown_0849A2A6
_0802B6B8: .4byte 0x000001FF
_0802B6BC: .4byte 0x00000361
_0802B6C0: .4byte gUnknown_0848B688
_0802B6C4: .4byte gUnknown_08499598

	thumb_func_start sub_0802B6C8
sub_0802B6C8: @ 0x0802B6C8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	ldr r2, _0802B6F0 @ =gUnknown_08499590
	ldr r3, [r2]
	lsrs r1, r1, #0x17
	ldr r4, _0802B6F4 @ =0x0000417A
	adds r2, r3, r4
	adds r2, r2, r1
	lsrs r0, r0, #0x18
	ldrh r2, [r2]
	adds r0, r0, r2
	adds r3, #0x12
	adds r3, r3, r0
	ldrb r0, [r3]
	cmp r0, #0
	bne _0802B6F8
	movs r0, #0
	b _0802B74A
	.align 2, 0
_0802B6F0: .4byte gUnknown_08499590
_0802B6F4: .4byte 0x0000417A
_0802B6F8:
	ldr r2, _0802B740 @ =gUnknown_08499594
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r4, r1, r0
	subs r1, r4, r1
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r0, r2, #4
	adds r2, r2, r0
	lsls r0, r2, #8
	adds r2, r2, r0
	lsls r0, r2, #0x10
	adds r2, r2, r0
	rsbs r2, r2, #0
	asrs r2, r2, #8
	adds r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldrb r0, [r4]
	ldr r1, _0802B744 @ =gUnknown_030033EC
	ldrh r1, [r1]
	bl sub_0802706C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802B748
	ldrb r1, [r4, #7]
	ldrb r0, [r4, #8]
	orrs r0, r1
	cmp r0, #0
	bne _0802B748
	movs r0, #1
	b _0802B74A
	.align 2, 0
_0802B740: .4byte gUnknown_08499594
_0802B744: .4byte gUnknown_030033EC
_0802B748:
	movs r0, #2
_0802B74A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802B750
sub_0802B750: @ 0x0802B750
	ldr r2, _0802B760 @ =gUnknown_03003130
	ldr r1, _0802B764 @ =gUnknown_030033E4
	ldrh r0, [r1]
	strb r0, [r2, #0x10]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x11]
	bx lr
	.align 2, 0
_0802B760: .4byte gUnknown_03003130
_0802B764: .4byte gUnknown_030033E4

	thumb_func_start sub_0802B768
sub_0802B768: @ 0x0802B768
	push {r4, r5, r6, lr}
	ldr r5, _0802B7A0 @ =gUnknown_0849A2A0
	ldr r4, _0802B7A4 @ =gUnknown_08090BB8
	ldr r6, [r4]
	ldrb r0, [r6, #0x10]
	ldrb r1, [r6, #0x11]
	bl sub_0802B6C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r5
	ldrh r0, [r0]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, [r6, #0xc]
	cmp r2, #3
	bgt _0802B7B4
	movs r0, #1
	strb r0, [r6, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	adds r0, r1, #1
	cmp r2, r0
	bgt _0802B7A8
	movs r0, #0xf2
	b _0802B7B2
	.align 2, 0
_0802B7A0: .4byte gUnknown_0849A2A0
_0802B7A4: .4byte gUnknown_08090BB8
_0802B7A8:
	subs r0, r2, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r2, r0
_0802B7B2:
	str r0, [r6, #0xc]
_0802B7B4:
	ldr r3, [r4]
	ldr r2, [r3, #0xc]
	cmp r2, #0x94
	ble _0802B7D6
	cmp r2, #0x95
	bgt _0802B7C4
	movs r0, #0x94
	b _0802B7D0
_0802B7C4:
	adds r0, r2, #0
	subs r0, #0x94
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r2, r0
_0802B7D0:
	str r0, [r3, #0xc]
	bl sub_0802B750
_0802B7D6:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	cmp r0, #0x94
	bne _0802B7E2
	bl sub_0802B750
_0802B7E2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802B7E8
sub_0802B7E8: @ 0x0802B7E8
	push {r4, r5, lr}
	ldr r4, _0802B820 @ =gUnknown_08090BBC
	ldr r5, [r4]
	ldrb r0, [r5, #0x10]
	ldrb r1, [r5, #0x11]
	bl sub_0802B6C8
	ldr r1, _0802B824 @ =gUnknown_0849A2A0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, #0x98
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r2, [r5, #0xc]
	cmp r2, #0x93
	ble _0802B834
	movs r0, #0
	strb r0, [r5, #8]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	subs r0, r1, #1
	cmp r2, r0
	blt _0802B828
	movs r0, #0x5a
	rsbs r0, r0, #0
	b _0802B832
	.align 2, 0
_0802B820: .4byte gUnknown_08090BBC
_0802B824: .4byte gUnknown_0849A2A0
_0802B828:
	subs r0, r2, r1
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r2, r0
_0802B832:
	str r0, [r5, #0xc]
_0802B834:
	ldr r3, [r4]
	ldr r2, [r3, #0xc]
	cmp r2, #2
	bgt _0802B854
	cmp r2, #1
	ble _0802B844
	movs r0, #3
	b _0802B84E
_0802B844:
	subs r0, r2, #3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	subs r0, r2, r0
_0802B84E:
	str r0, [r3, #0xc]
	bl sub_0802B750
_0802B854:
	ldr r0, [r4]
	ldr r0, [r0, #0xc]
	cmp r0, #3
	bne _0802B860
	bl sub_0802B750
_0802B860:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802B868
sub_0802B868: @ 0x0802B868
	push {r4, lr}
	ldr r3, _0802B89C @ =gUnknown_030033E4
	ldrh r0, [r3]
	lsls r0, r0, #4
	ldr r1, _0802B8A0 @ =gUnknown_08499590
	ldr r2, [r1]
	ldrh r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	lsls r0, r0, #4
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _0802B8A4
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7f
	ble _0802B8AC
	bl sub_0802B7E8
	b _0802B8BC
	.align 2, 0
_0802B89C: .4byte gUnknown_030033E4
_0802B8A0: .4byte gUnknown_08499590
_0802B8A4:
	ldr r0, _0802B8B4 @ =gUnknown_03003130
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0802B8B8
_0802B8AC:
	bl sub_0802B768
	b _0802B8BC
	.align 2, 0
_0802B8B4: .4byte gUnknown_03003130
_0802B8B8:
	bl sub_0802B7E8
_0802B8BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802B8C4
sub_0802B8C4: @ 0x0802B8C4
	push {r4, lr}
	adds r4, r2, #0
	lsls r4, r4, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	orrs r1, r2
	ldr r2, _0802B90C @ =gUnknown_0849A22C
	ldr r2, [r2, #4]
	lsrs r4, r4, #0xe
	movs r3, #0xf0
	lsls r3, r3, #8
	orrs r3, r4
	bl sub_0801BD00
	ldr r0, _0802B910 @ =gUnknown_0810E9E0
	movs r1, #0xed
	lsls r1, r1, #1
	adds r4, r4, r1
	ldr r1, _0802B914 @ =0x000003FF
	ands r4, r1
	lsls r4, r4, #5
	ldr r1, _0802B918 @ =0x06010000
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0x80
	bl sub_08011E54
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802B90C: .4byte gUnknown_0849A22C
_0802B910: .4byte gUnknown_0810E9E0
_0802B914: .4byte 0x000003FF
_0802B918: .4byte 0x06010000

	thumb_func_start sub_0802B91C
sub_0802B91C: @ 0x0802B91C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r6, [sp, #0x34]
	ldr r7, [sp, #0x38]
	mov r8, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #8]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r4, r4, #0x18
	lsrs r7, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov sl, r5
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov sb, r6
	mov r0, r8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r1, #0
	mov r8, r1
	cmp r7, #0
	beq _0802B968
	movs r7, #1
_0802B968:
	ldr r1, [sp, #8]
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0802B9BC @ =gUnknown_030033EC
	ldrh r1, [r1]
	lsls r4, r3, #0x10
	lsrs r2, r4, #0x10
	bl sub_0802706C
	lsls r0, r0, #0x18
	adds r6, r4, #0
	cmp r0, #0
	beq _0802B9C4
	bl sub_08026198
	adds r4, r0, #0
	bl sub_080261A0
	movs r1, #0x78
	subs r1, r1, r0
	lsls r1, r1, #5
	adds r4, r4, r1
	lsls r5, r5, #0x10
	asrs r1, r5, #0xe
	asrs r0, r6, #0x10
	movs r2, #1
	ands r0, r2
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r3, _0802B9C0 @ =0x06010000
	adds r1, r1, r3
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08011E54
	movs r7, #1
	mov r8, r7
	b _0802BA76
	.align 2, 0
_0802B9BC: .4byte gUnknown_030033EC
_0802B9C0: .4byte 0x06010000
_0802B9C4:
	lsls r5, r5, #0x10
	cmp r7, #0
	beq _0802B9FE
	bl sub_08026198
	adds r4, r0, #0
	bl sub_080261A0
	movs r1, #0x75
	subs r1, r1, r0
	lsls r1, r1, #5
	adds r4, r4, r1
	asrs r1, r5, #0xe
	asrs r0, r6, #0x10
	movs r2, #1
	ands r0, r2
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, _0802BAAC @ =0x06010000
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08011E54
	movs r1, #1
	mov r8, r1
_0802B9FE:
	mov r3, sl
	cmp r3, #0
	beq _0802BA38
	bl sub_08026198
	adds r4, r0, #0
	bl sub_080261A0
	movs r1, #0x76
	subs r1, r1, r0
	lsls r1, r1, #5
	adds r4, r4, r1
	asrs r1, r5, #0xe
	asrs r0, r6, #0x10
	movs r2, #1
	ands r0, r2
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r7, _0802BAAC @ =0x06010000
	adds r1, r1, r7
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08011E54
	movs r0, #1
	add r8, r0
_0802BA38:
	movs r0, #0x20
	mov r1, sb
	ands r1, r0
	cmp r1, #0
	beq _0802BA76
	bl sub_08026198
	adds r4, r0, #0
	bl sub_080261A0
	movs r1, #0x77
	subs r1, r1, r0
	lsls r1, r1, #5
	adds r4, r4, r1
	asrs r1, r5, #0xe
	asrs r0, r6, #0x10
	movs r2, #1
	ands r0, r2
	movs r2, #0xee
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r3, _0802BAAC @ =0x06010000
	adds r1, r1, r3
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08011E54
	movs r7, #1
	add r8, r7
_0802BA76:
	bl sub_08026190
	adds r4, r0, #0
	asrs r6, r6, #0x10
	ldr r0, [sp, #8]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	adds r0, r6, #0
	bl sub_080261A4
	ldr r1, _0802BAB0 @ =0x000003FF
	ands r1, r0
	lsls r1, r1, #5
	adds r4, r4, r1
	asrs r1, r5, #9
	ldr r3, _0802BAB4 @ =0x06013B40
	adds r1, r1, r3
	adds r0, r4, #0
	movs r2, #0x80
	bl sub_08011E54
	mov r7, r8
	cmp r7, #0
	beq _0802BABC
	ldr r1, _0802BAB8 @ =gUnknown_0849A218
	b _0802BABE
	.align 2, 0
_0802BAAC: .4byte 0x06010000
_0802BAB0: .4byte 0x000003FF
_0802BAB4: .4byte 0x06013B40
_0802BAB8: .4byte gUnknown_0849A218
_0802BABC:
	ldr r1, _0802BAF8 @ =gUnknown_0849A22C
_0802BABE:
	subs r0, r6, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	ldr r7, [sp, #4]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	orrs r1, r2
	asrs r3, r5, #0xe
	movs r2, #0xf0
	lsls r2, r2, #8
	orrs r3, r2
	adds r2, r4, #0
	bl sub_0801BD00
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BAF8: .4byte gUnknown_0849A22C

	thumb_func_start sub_0802BAFC
sub_0802BAFC: @ 0x0802BAFC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _0802BB6C @ =0x000001FF
	mov sb, r0
	adds r4, r7, #0
	ands r4, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r6, r0
	ldr r0, _0802BB70 @ =gUnknown_0849A3B8
	mov r8, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	movs r1, #0xa
	bl __modsi3
	adds r3, r0, #0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r3, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, r8
	bl sub_0801BD00
	adds r0, r5, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	beq _0802BB60
	subs r0, r7, #7
	mov r1, sb
	ands r0, r1
	adds r3, #0x10
	adds r1, r6, #0
	mov r2, r8
	bl sub_0801BD00
_0802BB60:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BB6C: .4byte 0x000001FF
_0802BB70: .4byte gUnknown_0849A3B8

	thumb_func_start sub_0802BB74
sub_0802BB74: @ 0x0802BB74
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x17
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	orrs r1, r2
	ldr r2, _0802BB94 @ =gUnknown_0849A3B8
	movs r3, #0x1c
	bl sub_0801BD00
	pop {r0}
	bx r0
	.align 2, 0
_0802BB94: .4byte gUnknown_0849A3B8

	thumb_func_start sub_0802BB98
sub_0802BB98: @ 0x0802BB98
	ldr r0, _0802BBB4 @ =gUnknown_08090BC0
	ldr r1, [r0]
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #7
	bhi _0802BBBC
	ldr r2, _0802BBB8 @ =gUnknown_08090BC4
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xad
	str r0, [r1, #4]
	movs r0, #0x94
	b _0802BBC8
	.align 2, 0
_0802BBB4: .4byte gUnknown_08090BC0
_0802BBB8: .4byte gUnknown_08090BC4
_0802BBBC:
	ldr r2, _0802BBD8 @ =gUnknown_08090BC4
	ldr r1, [r2]
	movs r0, #0
	strb r0, [r1, #8]
	movs r0, #3
	str r0, [r1, #4]
_0802BBC8:
	str r0, [r1, #0xc]
	ldr r2, [r2]
	ldr r1, [r3]
	ldrh r0, [r1]
	strb r0, [r2, #0x10]
	ldrh r0, [r1, #2]
	strb r0, [r2, #0x11]
	bx lr
	.align 2, 0
_0802BBD8: .4byte gUnknown_08090BC4

	thumb_func_start sub_0802BBDC
sub_0802BBDC: @ 0x0802BBDC
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	movs r1, #0x8c
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	ldr r1, _0802BC40 @ =gUnknown_030033EC
	ldrh r2, [r1]
	ldr r1, _0802BC44 @ =gUnknown_08499598
	ldr r3, [r1]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldr r2, [r1]
	movs r1, #5
	bl sub_0802BD54
	adds r0, r4, #0
	adds r0, #0xe
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _0802BC48 @ =gUnknown_03004080
	ldrh r2, [r1]
	movs r1, #5
	bl sub_0802BD54
	adds r0, r4, #0
	adds r0, #0x16
	ldr r5, _0802BC4C @ =gUnknown_0849A3B8
	ldr r3, _0802BC50 @ =0x0000700A
	movs r1, #5
	adds r2, r5, #0
	bl sub_0801BD00
	adds r4, #0x4e
	ldr r3, _0802BC54 @ =0x0000700B
	adds r0, r4, #0
	movs r1, #6
	adds r2, r5, #0
	bl sub_0801BD00
	ldr r1, _0802BC58 @ =gUnknown_030033F0
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BC40: .4byte gUnknown_030033EC
_0802BC44: .4byte gUnknown_08499598
_0802BC48: .4byte gUnknown_03004080
_0802BC4C: .4byte gUnknown_0849A3B8
_0802BC50: .4byte 0x0000700A
_0802BC54: .4byte 0x0000700B
_0802BC58: .4byte gUnknown_030033F0

	thumb_func_start sub_0802BC5C
sub_0802BC5C: @ 0x0802BC5C
	push {lr}
	ldr r1, _0802BC78 @ =gUnknown_08090A98
	ldr r0, _0802BC7C @ =gUnknown_030033EC
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_0802BBDC
	pop {r0}
	bx r0
	.align 2, 0
_0802BC78: .4byte gUnknown_08090A98
_0802BC7C: .4byte gUnknown_030033EC

	thumb_func_start sub_0802BC80
sub_0802BC80: @ 0x0802BC80
	push {r4, lr}
	ldr r3, _0802BCB4 @ =gUnknown_030033E4
	ldrh r0, [r3]
	lsls r0, r0, #4
	ldr r1, _0802BCB8 @ =gUnknown_08499590
	ldr r2, [r1]
	ldrh r1, [r2, #4]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldrh r0, [r3, #2]
	lsls r0, r0, #4
	ldrh r1, [r2, #6]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	bgt _0802BCC0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x7f
	bgt _0802BCC0
	ldr r0, _0802BCBC @ =gUnknown_08090A98
	ldrh r0, [r0, #2]
	b _0802BCC4
	.align 2, 0
_0802BCB4: .4byte gUnknown_030033E4
_0802BCB8: .4byte gUnknown_08499590
_0802BCBC: .4byte gUnknown_08090A98
_0802BCC0:
	ldr r0, _0802BCD4 @ =gUnknown_08090A98
	ldrh r0, [r0]
_0802BCC4:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0802BBDC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802BCD4: .4byte gUnknown_08090A98

	thumb_func_start sub_0802BCD8
sub_0802BCD8: @ 0x0802BCD8
	push {lr}
	ldr r0, _0802BCE8 @ =sub_0802BC5C
	movs r1, #0
	bl sub_0801F024
	pop {r0}
	bx r0
	.align 2, 0
_0802BCE8: .4byte sub_0802BC5C

	thumb_func_start sub_0802BCEC
sub_0802BCEC: @ 0x0802BCEC
	bx lr
	.align 2, 0

	thumb_func_start sub_0802BCF0
sub_0802BCF0: @ 0x0802BCF0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	ldr r0, _0802BD40 @ =gUnknown_08090BC8
	mov sb, r0
	movs r7, #0xff
	lsls r7, r7, #0x10
	ands r7, r1
	ldr r4, _0802BD44 @ =0x000001FF
	mov r8, r4
_0802BD0E:
	adds r4, r6, #0
	mov r0, r8
	ands r4, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r3, r0, #0
	adds r0, r4, #0
	lsrs r1, r7, #0x10
	mov r4, sb
	ldr r2, [r4]
	bl sub_0801BD00
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	cmp r5, #0
	beq _0802BD48
	subs r0, r6, #7
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0802BD0E
	.align 2, 0
_0802BD40: .4byte gUnknown_08090BC8
_0802BD44: .4byte 0x000001FF
_0802BD48:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802BD54
sub_0802BD54: @ 0x0802BD54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r2, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	ldr r0, _0802BDA8 @ =gUnknown_08090BCC
	mov sb, r0
	movs r7, #0xff
	lsls r7, r7, #0x10
	ands r7, r1
	ldr r4, _0802BDAC @ =0x000001FF
	mov r8, r4
_0802BD72:
	adds r4, r6, #0
	mov r0, r8
	ands r4, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r3, r0, #0
	adds r3, #0x10
	adds r0, r4, #0
	lsrs r1, r7, #0x10
	mov r4, sb
	ldr r2, [r4]
	bl sub_0801BD00
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	cmp r5, #0
	beq _0802BDB0
	subs r0, r6, #7
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _0802BD72
	.align 2, 0
_0802BDA8: .4byte gUnknown_08090BCC
_0802BDAC: .4byte 0x000001FF
_0802BDB0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0802BDBC
sub_0802BDBC: @ 0x0802BDBC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #5
	ble _0802BDD2
	movs r2, #6
_0802BDD2:
	lsls r0, r2, #0x10
	cmp r0, #0
	bge _0802BDDA
	movs r2, #0
_0802BDDA:
	ldr r0, _0802BE20 @ =gUnknown_08499578
	lsls r1, r3, #2
	ldr r0, [r0]
	adds r3, r0, r1
	lsls r0, r2, #0x10
	asrs r0, r0, #0xe
	ldr r1, _0802BE24 @ =0xFFFF82B0
	adds r0, r0, r1
	lsls r1, r5, #0xa
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0
	subs r1, r5, #1
	adds r2, r0, r5
	subs r7, r0, r1
	adds r6, r2, #2
	adds r0, #1
	subs r0, r0, r5
	adds r1, r0, #2
_0802BE02:
	strh r2, [r3]
	strh r7, [r3, #2]
	adds r0, r3, #0
	adds r0, #0x40
	strh r6, [r0]
	strh r1, [r0, #2]
	adds r3, #0x80
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _0802BE02
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802BE20: .4byte gUnknown_08499578
_0802BE24: .4byte 0xFFFF82B0

	thumb_func_start sub_0802BE28
sub_0802BE28: @ 0x0802BE28
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802BE6C @ =gUnknown_03001418
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0802BE70 @ =gUnknown_03001FF8
	strh r1, [r0]
	ldr r0, _0802BE74 @ =gUnknown_0810BDC0
	ldr r1, _0802BE78 @ =gUnknown_03002B6C
	ldr r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r2, _0802BE7C @ =0x06005600
	adds r1, r1, r2
	bl sub_08011CAC
	movs r4, #0
_0802BE4C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl sub_0802BDBC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0802BE4C
	movs r0, #0
	strh r0, [r5, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BE6C: .4byte gUnknown_03001418
_0802BE70: .4byte gUnknown_03001FF8
_0802BE74: .4byte gUnknown_0810BDC0
_0802BE78: .4byte gUnknown_03002B6C
_0802BE7C: .4byte 0x06005600

	thumb_func_start sub_0802BE80
sub_0802BE80: @ 0x0802BE80
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0802BEB8 @ =gUnknown_0810BDC0
	ldr r1, _0802BEBC @ =gUnknown_03002B6C
	ldr r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r2, _0802BEC0 @ =0x06005600
	adds r1, r1, r2
	bl sub_08011CAC
	movs r4, #0
_0802BE9A:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	bl sub_0802BDBC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0802BE9A
	movs r0, #0
	strh r0, [r5, #0x1e]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802BEB8: .4byte gUnknown_0810BDC0
_0802BEBC: .4byte gUnknown_03002B6C
_0802BEC0: .4byte 0x06005600

	thumb_func_start sub_0802BEC4
sub_0802BEC4: @ 0x0802BEC4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r6, [r5, #0x1e]
	movs r4, #0
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r4, r0
	bge _0802BEFC
_0802BED4:
	adds r1, r6, #0
	lsls r0, r1, #0x10
	ldr r2, _0802BF10 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #1
	bl sub_0802BDBC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r4, r0
	bge _0802BEFC
	cmp r4, #0xe
	bls _0802BED4
_0802BEFC:
	bl sub_08013AEC
	ldrh r1, [r5, #0x1e]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	cmp r0, #0x15
	bne _0802BF14
	movs r0, #0
	str r0, [r5, #8]
	b _0802BF18
	.align 2, 0
_0802BF10: .4byte 0xFFFF0000
_0802BF14:
	adds r0, r1, #1
	strh r0, [r5, #0x1e]
_0802BF18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802BF20
sub_0802BF20: @ 0x0802BF20
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x1e]
	movs r1, #6
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r4, #0
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r4, r0
	bgt _0802BF62
_0802BF38:
	adds r1, r6, #0
	lsls r0, r1, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_0802BDBC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	cmp r4, r0
	bgt _0802BF62
	cmp r4, #0xe
	bls _0802BF38
_0802BF62:
	bl sub_08013AEC
	ldrh r1, [r5, #0x1e]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	cmp r0, #0x15
	bne _0802BF76
	movs r0, #0
	str r0, [r5, #8]
	b _0802BF7A
_0802BF76:
	adds r0, r1, #1
	strh r0, [r5, #0x1e]
_0802BF7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_0802BF80
sub_0802BF80: @ 0x0802BF80
	push {lr}
	ldr r0, _0802BF90 @ =gUnknown_0849A3C0
	movs r1, #0
	bl sub_080152EC
	pop {r0}
	bx r0
	.align 2, 0
_0802BF90: .4byte gUnknown_0849A3C0

	thumb_func_start sub_0802BF94
sub_0802BF94: @ 0x0802BF94
	push {lr}
	ldr r0, _0802BFA4 @ =gUnknown_0849A3F0
	movs r1, #0
	bl sub_080152EC
	pop {r0}
	bx r0
	.align 2, 0
_0802BFA4: .4byte gUnknown_0849A3F0

	thumb_func_start sub_0802BFA8
sub_0802BFA8: @ 0x0802BFA8
	push {lr}
	ldr r0, _0802BFB8 @ =gUnknown_0849A428
	movs r1, #0
	bl sub_080152EC
	pop {r0}
	bx r0
	.align 2, 0
_0802BFB8: .4byte gUnknown_0849A428

	thumb_func_start sub_0802BFBC
sub_0802BFBC: @ 0x0802BFBC
	push {lr}
	ldr r0, _0802BFCC @ =gUnknown_0849A450
	movs r1, #0
	bl sub_080152EC
	pop {r0}
	bx r0
	.align 2, 0
_0802BFCC: .4byte gUnknown_0849A450

	thumb_func_start sub_0802BFD0
sub_0802BFD0: @ 0x0802BFD0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0802C09C @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _0802C0A0 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x1c]
	movs r0, #2
	ands r0, r1
	ldr r5, _0802C0A4 @ =gUnknown_08090BD0
	ldr r4, _0802C0A8 @ =gUnknown_08090BD4
	cmp r0, #0
	bne _0802C016
	ldr r0, [r5]
	ldr r2, [r0]
	ldr r3, [r4]
	ldrh r1, [r3, #2]
	lsls r1, r1, #1
	ldr r7, _0802C0AC @ =0x0000417A
	adds r0, r2, r7
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	ldr r1, _0802C0B0 @ =0x0000234A
	adds r2, r2, r1
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802C094
_0802C016:
	ldr r4, [r4]
	ldrh r1, [r4]
	ldr r5, [r5]
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r1, r1, r0
	cmp r1, #0xe
	bhi _0802C094
	ldrh r1, [r4, #2]
	ldrh r0, [r2, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	subs r1, r1, r0
	cmp r1, #0
	blt _0802C094
	cmp r1, #9
	bgt _0802C094
	cmp r6, #0
	bne _0802C046
	movs r0, #0x37
	bl sub_0803B4DC
_0802C046:
	cmp r6, #1
	bne _0802C050
	movs r0, #0x36
	bl sub_0803B4DC
_0802C050:
	ldr r0, _0802C0B4 @ =gUnknown_081248F8
	ldr r1, _0802C0B8 @ =0x06013940
	bl sub_08011CAC
	ldr r0, _0802C0BC @ =gUnknown_08125190
	movs r1, #0x98
	lsls r1, r1, #2
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _0802C0C0 @ =gUnknown_08124FB8
	ldrh r1, [r4]
	lsls r1, r1, #4
	ldr r3, [r5]
	movs r5, #4
	ldrsh r2, [r3, r5]
	subs r1, r1, r2
	adds r1, #8
	ldrh r2, [r4, #2]
	lsls r2, r2, #4
	movs r7, #6
	ldrsh r3, [r3, r7]
	subs r2, r2, r3
	adds r2, #8
	ldr r3, _0802C0C4 @ =0x000031CA
	str r6, [sp]
	movs r4, #0
	str r4, [sp, #4]
	bl sub_0801C70C
	ldr r0, _0802C0C8 @ =gUnknown_0849A480
	movs r1, #3
	bl Proc_Start
_0802C094:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802C09C: .4byte gUnknown_030033EC
_0802C0A0: .4byte gUnknown_08499598
_0802C0A4: .4byte gUnknown_08090BD0
_0802C0A8: .4byte gUnknown_08090BD4
_0802C0AC: .4byte 0x0000417A
_0802C0B0: .4byte 0x0000234A
_0802C0B4: .4byte gUnknown_081248F8
_0802C0B8: .4byte 0x06013940
_0802C0BC: .4byte gUnknown_08125190
_0802C0C0: .4byte gUnknown_08124FB8
_0802C0C4: .4byte 0x000031CA
_0802C0C8: .4byte gUnknown_0849A480

	thumb_func_start sub_0802C0CC
sub_0802C0CC: @ 0x0802C0CC
	push {lr}
	movs r0, #0
	bl sub_0802BFD0
	pop {r0}
	bx r0

	thumb_func_start sub_0802C0D8
sub_0802C0D8: @ 0x0802C0D8
	push {lr}
	movs r0, #1
	bl sub_0802BFD0
	pop {r0}
	bx r0

	thumb_func_start sub_0802C0E4
sub_0802C0E4: @ 0x0802C0E4
	bx lr
	.align 2, 0

	thumb_func_start sub_0802C0E8
sub_0802C0E8: @ 0x0802C0E8
	push {lr}
	ldr r0, _0802C0FC @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _0802C10A
	cmp r0, #2
	bgt _0802C100
	cmp r0, #1
	beq _0802C106
	b _0802C114
	.align 2, 0
_0802C0FC: .4byte gUnknown_03003FC0
_0802C100:
	cmp r0, #3
	beq _0802C110
	b _0802C114
_0802C106:
	bl sub_08016ED8
_0802C10A:
	bl sub_0803B828
	b _0802C114
_0802C110:
	bl sub_0803B828
_0802C114:
	pop {r0}
	bx r0

	thumb_func_start sub_0802C118
sub_0802C118: @ 0x0802C118
	push {lr}
	bl sub_080366A4
	ldr r0, _0802C12C @ =gUnknown_030033EC
	ldrb r0, [r0]
	bl sub_0802C0E8
	pop {r0}
	bx r0
	.align 2, 0
_0802C12C: .4byte gUnknown_030033EC

	thumb_func_start sub_0802C130
sub_0802C130: @ 0x0802C130
	push {lr}
	ldr r0, _0802C140 @ =gUnknown_0849A4A0
	movs r1, #0
	bl sub_080152EC
	pop {r0}
	bx r0
	.align 2, 0
_0802C140: .4byte gUnknown_0849A4A0

	thumb_func_start sub_0802C144
sub_0802C144: @ 0x0802C144
	push {lr}
	ldr r0, _0802C150 @ =gUnknown_0849A520
	bl sub_080193B0
	pop {r0}
	bx r0
	.align 2, 0
_0802C150: .4byte gUnknown_0849A520

	thumb_func_start sub_0802C154
sub_0802C154: @ 0x0802C154
	ldr r1, _0802C168 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	adds r1, #0x31
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0802C168: .4byte gUnknown_08499598

	thumb_func_start sub_0802C16C
sub_0802C16C: @ 0x0802C16C
	push {lr}
	ldr r0, _0802C180 @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_0802C154
	bl sub_08028CD8
	pop {r0}
	bx r0
	.align 2, 0
_0802C180: .4byte gUnknown_030033EC

	thumb_func_start sub_0802C184
sub_0802C184: @ 0x0802C184
	push {lr}
	ldr r0, _0802C1A8 @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_0802C154
	ldr r0, _0802C1AC @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C1A4
	movs r0, #0x13
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_0802C1A4:
	pop {r0}
	bx r0
	.align 2, 0
_0802C1A8: .4byte gUnknown_030033EC
_0802C1AC: .4byte gUnknown_03003FC0

	thumb_func_start sub_0802C1B0
sub_0802C1B0: @ 0x0802C1B0
	push {lr}
	ldr r0, _0802C1BC @ =gUnknown_0849A5E0
	bl sub_080193B0
	pop {r0}
	bx r0
	.align 2, 0
_0802C1BC: .4byte gUnknown_0849A5E0

	thumb_func_start sub_0802C1C0
sub_0802C1C0: @ 0x0802C1C0
	push {lr}
	ldr r0, _0802C1CC @ =gUnknown_0849A6B0
	bl sub_080193B0
	pop {r0}
	bx r0
	.align 2, 0
_0802C1CC: .4byte gUnknown_0849A6B0

	thumb_func_start sub_0802C1D0
sub_0802C1D0: @ 0x0802C1D0
	push {lr}
	ldr r0, _0802C1EC @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	bl sub_08016D04
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	lsrs r0, r0, #0x10
	movs r1, #0
	bl sub_08016D30
	pop {r0}
	bx r0
	.align 2, 0
_0802C1EC: .4byte gUnknown_03003FC0

	thumb_func_start sub_0802C1F0
sub_0802C1F0: @ 0x0802C1F0
	push {r4, lr}
	adds r3, r0, #0
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0802C20E
	adds r4, r0, #0
_0802C200:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r1, #1
	subs r2, #1
	cmp r2, r4
	bne _0802C200
_0802C20E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802C214
sub_0802C214: @ 0x0802C214
	push {r4, r5, lr}
	ldr r0, _0802C250 @ =gUnknown_08499588
	ldr r0, [r0]
	ldr r1, _0802C254 @ =gUnknown_08499578
	ldr r1, [r1]
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r1, r1, r4
	movs r5, #0xc0
	lsls r5, r5, #1
	adds r2, r5, #0
	bl sub_0802C1F0
	ldr r0, _0802C258 @ =gUnknown_0849958C
	ldr r0, [r0]
	ldr r1, _0802C25C @ =gUnknown_08499580
	ldr r1, [r1]
	adds r1, r1, r4
	adds r2, r5, #0
	bl sub_0802C1F0
	movs r0, #0
	bl sub_08013AD4
	movs r0, #2
	bl sub_08013AD4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C250: .4byte gUnknown_08499588
_0802C254: .4byte gUnknown_08499578
_0802C258: .4byte gUnknown_0849958C
_0802C25C: .4byte gUnknown_08499580

	thumb_func_start sub_0802C260
sub_0802C260: @ 0x0802C260
	push {lr}
	ldr r0, _0802C26C @ =sub_080184C8
	bl sub_08011AAC
	pop {r0}
	bx r0
	.align 2, 0
_0802C26C: .4byte sub_080184C8

	thumb_func_start sub_0802C270
sub_0802C270: @ 0x0802C270
	push {lr}
	ldr r0, _0802C27C @ =sub_080184A4
	bl sub_08011AAC
	pop {r0}
	bx r0
	.align 2, 0
_0802C27C: .4byte sub_080184A4

	thumb_func_start sub_0802C280
sub_0802C280: @ 0x0802C280
	push {lr}
	ldr r0, _0802C28C @ =gUnknown_0849A8F0
	bl sub_080193B0
	pop {r0}
	bx r0
	.align 2, 0
_0802C28C: .4byte gUnknown_0849A8F0

	thumb_func_start sub_0802C290
sub_0802C290: @ 0x0802C290
	push {lr}
	ldr r0, _0802C29C @ =gUnknown_0849A8F0
	bl sub_0801930C
	pop {r0}
	bx r0
	.align 2, 0
_0802C29C: .4byte gUnknown_0849A8F0

	thumb_func_start sub_0802C2A0
sub_0802C2A0: @ 0x0802C2A0
	ldr r1, _0802C2AC @ =gUnknown_0849A8F0
	cmp r0, r1
	beq _0802C2B0
	movs r0, #0
	b _0802C2B2
	.align 2, 0
_0802C2AC: .4byte gUnknown_0849A8F0
_0802C2B0:
	movs r0, #1
_0802C2B2:
	bx lr

	thumb_func_start sub_0802C2B4
sub_0802C2B4: @ 0x0802C2B4
	push {lr}
	ldr r0, _0802C2D0 @ =gUnknown_0849A990
	movs r1, #0
	bl sub_080152EC
	ldr r2, _0802C2D4 @ =gUnknown_030030CC
	ldrb r1, [r2, #1]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #1]
	pop {r0}
	bx r0
	.align 2, 0
_0802C2D0: .4byte gUnknown_0849A990
_0802C2D4: .4byte gUnknown_030030CC

	thumb_func_start sub_0802C2D8
sub_0802C2D8: @ 0x0802C2D8
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_08024268
	ldr r0, _0802C370 @ =gUnknown_08499590
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	movs r5, #0
	strh r0, [r4, #0x20]
	ldrh r0, [r1, #6]
	strh r0, [r4, #0x22]
	bl sub_0803D6D0
	ldr r4, _0802C374 @ =gUnknown_03002B6C
	ldr r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	ldr r1, _0802C378 @ =gUnknown_08499578
	ldr r1, [r1]
	movs r2, #1
	movs r3, #9
	bl sub_08037638
	movs r0, #0
	bl sub_08013AD4
	bl sub_0801237C
	bl sub_08012358
	ldrb r2, [r4]
	movs r1, #4
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4]
	ldr r3, _0802C37C @ =gUnknown_03001FE8
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	movs r4, #2
	orrs r0, r4
	strb r0, [r3]
	ldr r2, _0802C380 @ =gUnknown_030030B4
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #1
	orrs r1, r0
	strb r1, [r2]
	ldr r2, _0802C384 @ =gUnknown_0300251C
	ldrb r0, [r2]
	movs r1, #3
	orrs r0, r1
	strb r0, [r2]
	bl sub_08012358
	ldr r2, _0802C388 @ =gUnknown_030030E0
	ldrb r0, [r2]
	movs r1, #0xc0
	orrs r0, r1
	orrs r0, r4
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r0, _0802C38C @ =gUnknown_03001FFC
	strh r5, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802C370: .4byte gUnknown_08499590
_0802C374: .4byte gUnknown_03002B6C
_0802C378: .4byte gUnknown_08499578
_0802C37C: .4byte gUnknown_03001FE8
_0802C380: .4byte gUnknown_030030B4
_0802C384: .4byte gUnknown_0300251C
_0802C388: .4byte gUnknown_030030E0
_0802C38C: .4byte gUnknown_03001FFC

	thumb_func_start sub_0802C390
sub_0802C390: @ 0x0802C390
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802C3B8 @ =gUnknown_03001FFC
	ldrh r3, [r4, #0x1e]
	lsls r1, r3, #0x10
	asrs r2, r1, #0x10
	asrs r1, r1, #0x11
	strh r1, [r0]
	cmp r2, #0xb
	ble _0802C3C4
	ldr r2, _0802C3BC @ =gUnknown_030030CC
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r0, _0802C3C0 @ =gUnknown_03001FBC
	ldrb r0, [r0]
	bl sub_08015C30
	b _0802C3C8
	.align 2, 0
_0802C3B8: .4byte gUnknown_03001FFC
_0802C3BC: .4byte gUnknown_030030CC
_0802C3C0: .4byte gUnknown_03001FBC
_0802C3C4:
	adds r0, r3, #1
	strh r0, [r4, #0x1e]
_0802C3C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802C3D0
sub_0802C3D0: @ 0x0802C3D0
	push {lr}
	bl sub_08023824
	bl sub_08023518
	movs r0, #8
	bl sub_08023908
	ldr r0, _0802C41C @ =gUnknown_08499590
	ldr r0, [r0]
	ldrh r1, [r0, #0x10]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802C416
	ldr r0, _0802C420 @ =gUnknown_030033E0
	ldr r0, [r0]
	ldr r1, _0802C424 @ =0x00070007
	ands r0, r1
	cmp r0, #0
	bne _0802C416
	ldr r0, _0802C428 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0802C416
	movs r0, #0x66
	bl sub_0803B4DC
	ldr r0, _0802C42C @ =gUnknown_03001FBC
	ldrb r0, [r0]
	bl sub_08015C30
_0802C416:
	pop {r0}
	bx r0
	.align 2, 0
_0802C41C: .4byte gUnknown_08499590
_0802C420: .4byte gUnknown_030033E0
_0802C424: .4byte 0x00070007
_0802C428: .4byte gUnknown_03002EE0
_0802C42C: .4byte gUnknown_03001FBC

	thumb_func_start sub_0802C430
sub_0802C430: @ 0x0802C430
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08024268
	bl sub_08013C00
	bl sub_08013AEC
	bl sub_08037678
	movs r0, #6
	strh r0, [r4, #0x1e]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802C450
sub_0802C450: @ 0x0802C450
	push {lr}
	adds r2, r0, #0
	ldr r0, _0802C470 @ =gUnknown_03001FFC
	ldrh r1, [r2, #0x1e]
	strh r1, [r0]
	lsls r0, r1, #0x10
	cmp r0, #0
	bne _0802C478
	bl sub_08012358
	ldr r0, _0802C474 @ =gUnknown_03001FBC
	ldrb r0, [r0]
	bl sub_08015C30
	b _0802C47C
	.align 2, 0
_0802C470: .4byte gUnknown_03001FFC
_0802C474: .4byte gUnknown_03001FBC
_0802C478:
	subs r0, r1, #1
	strh r0, [r2, #0x1e]
_0802C47C:
	pop {r0}
	bx r0

	thumb_func_start sub_0802C480
sub_0802C480: @ 0x0802C480
	ldr r1, [r0, #0x20]
	ldr r0, _0802C4AC @ =gUnknown_08499590
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _0802C4A2
	ldr r0, _0802C4B0 @ =gUnknown_030033E4
	ldrh r1, [r2, #4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	adds r1, #7
	strh r1, [r0]
	ldrh r1, [r2, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	adds r1, #5
	strh r1, [r0, #2]
_0802C4A2:
	ldr r1, _0802C4B4 @ =gUnknown_03003334
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802C4AC: .4byte gUnknown_08499590
_0802C4B0: .4byte gUnknown_030033E4
_0802C4B4: .4byte gUnknown_03003334

	thumb_func_start sub_0802C4B8
sub_0802C4B8: @ 0x0802C4B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080413E8
	ldr r0, _0802C4D0 @ =gUnknown_0849A02C
	adds r1, r4, #0
	bl Proc_StartBlocking
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C4D0: .4byte gUnknown_0849A02C

	thumb_func_start sub_0802C4D4
sub_0802C4D4: @ 0x0802C4D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080413E8
	ldr r0, _0802C4EC @ =gUnknown_0849A04C
	adds r1, r4, #0
	bl Proc_StartBlocking
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802C4EC: .4byte gUnknown_0849A04C

	thumb_func_start sub_0802C4F0
sub_0802C4F0: @ 0x0802C4F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0802C520 @ =gUnknown_0849A00C
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0802C54A
	ldr r0, _0802C524 @ =gUnknown_03003F40
	ldr r0, [r0]
	cmp r0, #0
	bge _0802C528
	bl sub_08034F8C
	adds r0, r4, #0
	bl Proc_End
	bl sub_0802D558
	b _0802C54A
	.align 2, 0
_0802C520: .4byte gUnknown_0849A00C
_0802C524: .4byte gUnknown_03003F40
_0802C528:
	bl sub_080413A4
	adds r1, r0, #0
	ldrh r0, [r1, #2]
	cmp r0, #0
	bne _0802C53C
	ldrb r0, [r1]
	bl sub_080425E0
	b _0802C544
_0802C53C:
	ldrh r0, [r1, #4]
	ldrh r1, [r1, #6]
	bl sub_08042618
_0802C544:
	adds r0, r4, #0
	bl sub_0801CB20
_0802C54A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802C550
sub_0802C550: @ 0x0802C550
	push {lr}
	ldr r0, _0802C56C @ =gUnknown_0849FEF8
	bl sub_0801CB28
	cmp r0, #0
	bne _0802C566
	ldr r0, _0802C570 @ =gUnknown_0849FFB0
	bl sub_0801CB28
	cmp r0, #0
	beq _0802C574
_0802C566:
	movs r0, #1
	b _0802C576
	.align 2, 0
_0802C56C: .4byte gUnknown_0849FEF8
_0802C570: .4byte gUnknown_0849FFB0
_0802C574:
	movs r0, #0
_0802C576:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C57C
sub_0802C57C: @ 0x0802C57C
	ldr r2, _0802C58C @ =gUnknown_030044A4
	ldr r1, _0802C590 @ =gUnknown_03003F24
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0802C58C: .4byte gUnknown_030044A4
_0802C590: .4byte gUnknown_03003F24

	thumb_func_start sub_0802C594
sub_0802C594: @ 0x0802C594
	ldr r2, _0802C5A4 @ =gUnknown_03003F24
	ldr r1, _0802C5A8 @ =gUnknown_030044A4
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	bx lr
	.align 2, 0
_0802C5A4: .4byte gUnknown_03003F24
_0802C5A8: .4byte gUnknown_030044A4

	thumb_func_start sub_0802C5AC
sub_0802C5AC: @ 0x0802C5AC
	push {lr}
	bl sub_0801A168
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802C5B8
sub_0802C5B8: @ 0x0802C5B8
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802C5D0 @ =gUnknown_030044A0
	str r1, [r0]
	bl sub_0801A168
	bl sub_0802D4A0
	pop {r0}
	bx r0
	.align 2, 0
_0802C5D0: .4byte gUnknown_030044A0

	thumb_func_start sub_0802C5D4
sub_0802C5D4: @ 0x0802C5D4
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802C5EC @ =gUnknown_030040F0
	str r1, [r0]
	bl sub_0801A168
	bl sub_0802D4A0
	pop {r0}
	bx r0
	.align 2, 0
_0802C5EC: .4byte gUnknown_030040F0

	thumb_func_start sub_0802C5F0
sub_0802C5F0: @ 0x0802C5F0
	ldr r0, _0802C5FC @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	cmp r0, #3
	beq _0802C600
	movs r0, #1
	b _0802C602
	.align 2, 0
_0802C5FC: .4byte gUnknown_03003FC0
_0802C600:
	movs r0, #0
_0802C602:
	bx lr

	thumb_func_start sub_0802C604
sub_0802C604: @ 0x0802C604
	push {lr}
	ldr r0, _0802C620 @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	cmp r0, #1
	bne _0802C624
	bl sub_08078E14
	cmp r0, #3
	bgt _0802C624
	cmp r0, #1
	blt _0802C624
	movs r0, #1
	b _0802C626
	.align 2, 0
_0802C620: .4byte gUnknown_03003FC0
_0802C624:
	movs r0, #0
_0802C626:
	pop {r1}
	bx r1

	non_word_aligned_thumb_func_start sub_0802C62A
sub_0802C62A: @ 0x0802C62A
	movs r0, r0

	thumb_func_start sub_0802C62C
sub_0802C62C: @ 0x0802C62C
	ldr r0, _0802C63C @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C640
	movs r0, #1
	b _0802C642
	.align 2, 0
_0802C63C: .4byte gUnknown_03003FC0
_0802C640:
	movs r0, #0
_0802C642:
	bx lr

	thumb_func_start sub_0802C644
sub_0802C644: @ 0x0802C644
	ldr r0, _0802C654 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C658
	movs r0, #1
	b _0802C65A
	.align 2, 0
_0802C654: .4byte gUnknown_03003FC0
_0802C658:
	movs r0, #0
_0802C65A:
	bx lr

	thumb_func_start sub_0802C65C
sub_0802C65C: @ 0x0802C65C
	movs r0, #0
	bx lr

	thumb_func_start sub_0802C660
sub_0802C660: @ 0x0802C660
	ldr r2, _0802C678 @ =gUnknown_085C77A0
	ldr r0, _0802C67C @ =gUnknown_03003FC0
	ldrb r1, [r0, #2]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _0802C680
	movs r0, #0
	b _0802C682
	.align 2, 0
_0802C678: .4byte gUnknown_085C77A0
_0802C67C: .4byte gUnknown_03003FC0
_0802C680:
	movs r0, #1
_0802C682:
	bx lr

	thumb_func_start sub_0802C684
sub_0802C684: @ 0x0802C684
	push {lr}
	bl sub_0802C62C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802C694
	movs r0, #1
	b _0802C696
_0802C694:
	movs r0, #0
_0802C696:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C69C
sub_0802C69C: @ 0x0802C69C
	push {lr}
	bl sub_0802C62C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802C6C4
	bl sub_0802C660
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C6C4
	ldr r0, _0802C6C0 @ =gUnknown_03003FC0
	ldrb r0, [r0, #9]
	cmp r0, #0
	beq _0802C6C4
	movs r0, #0
	b _0802C6C6
	.align 2, 0
_0802C6C0: .4byte gUnknown_03003FC0
_0802C6C4:
	movs r0, #1
_0802C6C6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C6CC
sub_0802C6CC: @ 0x0802C6CC
	push {lr}
	bl sub_0802C62C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802C6F4
	bl sub_0802C660
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C6F4
	ldr r0, _0802C6F0 @ =gUnknown_03003FC0
	ldrb r0, [r0, #9]
	cmp r0, #0
	bne _0802C6F4
	movs r0, #0
	b _0802C6F6
	.align 2, 0
_0802C6F0: .4byte gUnknown_03003FC0
_0802C6F4:
	movs r0, #1
_0802C6F6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C6FC
sub_0802C6FC: @ 0x0802C6FC
	push {lr}
	bl sub_0802C62C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802C724
	bl sub_0802C660
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C724
	ldr r0, _0802C720 @ =gUnknown_03003FC0
	ldrb r0, [r0, #9]
	cmp r0, #1
	bne _0802C724
	movs r0, #0
	b _0802C726
	.align 2, 0
_0802C720: .4byte gUnknown_03003FC0
_0802C724:
	movs r0, #1
_0802C726:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C72C
sub_0802C72C: @ 0x0802C72C
	push {lr}
	bl sub_0802C62C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802C754
	bl sub_0802C660
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C754
	ldr r0, _0802C750 @ =gUnknown_03003FC0
	ldrb r0, [r0, #9]
	cmp r0, #2
	bne _0802C754
	movs r0, #0
	b _0802C756
	.align 2, 0
_0802C750: .4byte gUnknown_03003FC0
_0802C754:
	movs r0, #1
_0802C756:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C75C
sub_0802C75C: @ 0x0802C75C
	push {lr}
	bl sub_0802C62C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802C784
	bl sub_0802C660
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C784
	ldr r0, _0802C780 @ =gUnknown_03003FC0
	ldrb r0, [r0, #9]
	cmp r0, #3
	bne _0802C784
	movs r0, #0
	b _0802C786
	.align 2, 0
_0802C780: .4byte gUnknown_03003FC0
_0802C784:
	movs r0, #1
_0802C786:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C78C
sub_0802C78C: @ 0x0802C78C
	ldr r0, _0802C798 @ =gUnknown_03003FC0
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	beq _0802C79C
	movs r0, #1
	b _0802C79E
	.align 2, 0
_0802C798: .4byte gUnknown_03003FC0
_0802C79C:
	movs r0, #0
_0802C79E:
	bx lr

	thumb_func_start sub_0802C7A0
sub_0802C7A0: @ 0x0802C7A0
	ldr r0, _0802C7AC @ =gUnknown_03003FC0
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	beq _0802C7B0
	movs r0, #1
	b _0802C7B2
	.align 2, 0
_0802C7AC: .4byte gUnknown_03003FC0
_0802C7B0:
	movs r0, #0
_0802C7B2:
	bx lr

	thumb_func_start sub_0802C7B4
sub_0802C7B4: @ 0x0802C7B4
	push {lr}
	bl sub_0801A168
	ldr r1, _0802C7D4 @ =gUnknown_085C77A0
	ldr r0, _0802C7D8 @ =gUnknown_03003FC0
	ldrb r2, [r0, #2]
	movs r0, #0x5c
	muls r0, r2, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_080193B0
	pop {r0}
	bx r0
	.align 2, 0
_0802C7D4: .4byte gUnknown_085C77A0
_0802C7D8: .4byte gUnknown_03003FC0

	thumb_func_start sub_0802C7DC
sub_0802C7DC: @ 0x0802C7DC
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802C7F4 @ =gUnknown_030044A0
	str r1, [r0]
	bl sub_0801A168
	ldr r1, _0802C7F8 @ =gUnknown_03003334
	movs r0, #2
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0802C7F4: .4byte gUnknown_030044A0
_0802C7F8: .4byte gUnknown_03003334

	thumb_func_start sub_0802C7FC
sub_0802C7FC: @ 0x0802C7FC
	ldr r1, _0802C814 @ =gUnknown_085C77A0
	ldr r0, _0802C818 @ =gUnknown_03003FC0
	ldrb r2, [r0, #2]
	movs r0, #0x5c
	muls r0, r2, r0
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0802C81C
	movs r0, #1
	b _0802C81E
	.align 2, 0
_0802C814: .4byte gUnknown_085C77A0
_0802C818: .4byte gUnknown_03003FC0
_0802C81C:
	movs r0, #0
_0802C81E:
	bx lr

	thumb_func_start sub_0802C820
sub_0802C820: @ 0x0802C820
	push {lr}
	ldr r0, _0802C838 @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_080442AC
	ldr r1, _0802C83C @ =gUnknown_03003FC0
	ldrb r1, [r1, #7]
	ands r1, r0
	cmp r1, #0
	bne _0802C840
	movs r0, #1
	b _0802C842
	.align 2, 0
_0802C838: .4byte gUnknown_030033EC
_0802C83C: .4byte gUnknown_03003FC0
_0802C840:
	movs r0, #0
_0802C842:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C848
sub_0802C848: @ 0x0802C848
	push {lr}
	ldr r0, _0802C860 @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_08044280
	ldr r1, _0802C864 @ =gUnknown_03003FC0
	ldrb r1, [r1, #7]
	ands r1, r0
	cmp r1, #0
	bne _0802C868
	movs r0, #1
	b _0802C86A
	.align 2, 0
_0802C860: .4byte gUnknown_030033EC
_0802C864: .4byte gUnknown_03003FC0
_0802C868:
	movs r0, #0
_0802C86A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C870
sub_0802C870: @ 0x0802C870
	push {r4, lr}
	movs r2, #1
	ldr r4, _0802C880 @ =gUnknown_08499594
	ldr r3, _0802C884 @ =gUnknown_03003F2C
	ldrh r0, [r3]
	adds r0, #1
	b _0802C89C
	.align 2, 0
_0802C880: .4byte gUnknown_08499594
_0802C884: .4byte gUnknown_03003F2C
_0802C888:
	lsls r0, r2, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0x32
	bgt _0802C8AC
	ldrh r0, [r3]
	adds r0, r0, r1
_0802C89C:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r4]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802C888
_0802C8AC:
	cmp r2, #0x33
	beq _0802C8B4
	movs r0, #0
	b _0802C8B6
_0802C8B4:
	movs r0, #2
_0802C8B6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802C8BC
sub_0802C8BC: @ 0x0802C8BC
	push {r4, lr}
	ldr r0, _0802C8E4 @ =gUnknown_08499590
	ldr r2, [r0]
	ldr r3, _0802C8E8 @ =gUnknown_03003100
	ldrh r1, [r3, #2]
	lsls r1, r1, #1
	ldr r4, _0802C8EC @ =0x0000417A
	adds r0, r2, r4
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	adds r2, #0x12
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802C8F0
	movs r0, #1
	b _0802C8F2
	.align 2, 0
_0802C8E4: .4byte gUnknown_08499590
_0802C8E8: .4byte gUnknown_03003100
_0802C8EC: .4byte 0x0000417A
_0802C8F0:
	movs r0, #0
_0802C8F2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802C8F8
sub_0802C8F8: @ 0x0802C8F8
	push {r4, lr}
	ldr r0, _0802C93C @ =gUnknown_08499590
	ldr r2, [r0]
	ldr r3, _0802C940 @ =gUnknown_03003100
	ldrh r1, [r3, #2]
	lsls r1, r1, #1
	ldr r4, _0802C944 @ =0x0000417A
	adds r0, r2, r4
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	adds r2, #0x12
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802C950
	ldr r2, _0802C948 @ =gUnknown_08499594
	ldrb r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r2]
	adds r1, r1, r0
	ldr r0, _0802C94C @ =gUnknown_030040D8
	ldr r0, [r0]
	bl sub_08025FC0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802C950
	movs r0, #0
	b _0802C952
	.align 2, 0
_0802C93C: .4byte gUnknown_08499590
_0802C940: .4byte gUnknown_03003100
_0802C944: .4byte 0x0000417A
_0802C948: .4byte gUnknown_08499594
_0802C94C: .4byte gUnknown_030040D8
_0802C950:
	movs r0, #1
_0802C952:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802C958
sub_0802C958: @ 0x0802C958
	push {lr}
	bl sub_0802C8F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802C990
	bl sub_0802CBA0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802C990
	movs r0, #0xff
	bl sub_0801F838
	ldr r2, _0802C994 @ =gUnknown_03003340
	ldr r1, _0802C998 @ =gUnknown_03003100
	ldrh r0, [r1, #2]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r1]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bl sub_0804151C
	cmp r0, #0
	bne _0802C99C
_0802C990:
	movs r0, #1
	b _0802C99E
	.align 2, 0
_0802C994: .4byte gUnknown_03003340
_0802C998: .4byte gUnknown_03003100
_0802C99C:
	movs r0, #0
_0802C99E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C9A4
sub_0802C9A4: @ 0x0802C9A4
	push {lr}
	ldr r0, _0802C9D4 @ =gUnknown_03003FC0
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0802C9E0
	bl sub_0802C958
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802C9E0
	ldr r0, _0802C9D8 @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _0802C9DC @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1d]
	cmp r0, #4
	bne _0802C9E0
	movs r0, #0
	b _0802C9E2
	.align 2, 0
_0802C9D4: .4byte gUnknown_03003FC0
_0802C9D8: .4byte gUnknown_030033EC
_0802C9DC: .4byte gUnknown_08499598
_0802C9E0:
	movs r0, #1
_0802C9E2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802C9E8
sub_0802C9E8: @ 0x0802C9E8
	push {lr}
	bl sub_0802C958
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802CA24
	ldr r0, _0802CA18 @ =gUnknown_03003FC0
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _0802CA12
	ldr r0, _0802CA1C @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _0802CA20 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1d]
	cmp r0, #4
	beq _0802CA24
_0802CA12:
	movs r0, #0
	b _0802CA26
	.align 2, 0
_0802CA18: .4byte gUnknown_03003FC0
_0802CA1C: .4byte gUnknown_030033EC
_0802CA20: .4byte gUnknown_08499598
_0802CA24:
	movs r0, #1
_0802CA26:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802CA2C
sub_0802CA2C: @ 0x0802CA2C
	push {lr}
	bl sub_0802C8F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CA64
	bl sub_0802CBA0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CA64
	movs r0, #0xff
	bl sub_0801F838
	ldr r2, _0802CA68 @ =gUnknown_03003340
	ldr r1, _0802CA6C @ =gUnknown_03003100
	ldrh r0, [r1, #2]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r1]
	ldr r0, [r0]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bl sub_08041758
	cmp r0, #0
	bne _0802CA70
_0802CA64:
	movs r0, #1
	b _0802CA72
	.align 2, 0
_0802CA68: .4byte gUnknown_03003340
_0802CA6C: .4byte gUnknown_03003100
_0802CA70:
	movs r0, #0
_0802CA72:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802CA78
sub_0802CA78: @ 0x0802CA78
	push {r4, r5, lr}
	ldr r0, _0802CAFC @ =gUnknown_030033E8
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	cmn r1, r0
	bne _0802CB18
	ldr r0, _0802CB00 @ =gUnknown_08499590
	ldr r2, [r0]
	ldr r3, _0802CB04 @ =gUnknown_08090BD8
	ldr r4, [r3]
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	ldr r5, _0802CB08 @ =0x0000417A
	adds r0, r2, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	adds r2, #0x12
	adds r2, r2, r0
	ldrb r0, [r2]
	adds r5, r3, #0
	cmp r0, #0
	bne _0802CB18
	ldr r0, [r4]
	ldr r1, _0802CB0C @ =gUnknown_03003F24
	ldr r1, [r1]
	ldr r3, _0802CB10 @ =gUnknown_08090BDC
	ldr r4, _0802CB14 @ =gUnknown_08090BE0
	cmp r0, r1
	beq _0802CACA
	ldr r2, [r3]
	ldr r0, [r4]
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _0802CB18
_0802CACA:
	ldr r2, [r3]
	ldr r4, [r4]
	ldr r0, [r4]
	ldrb r1, [r0]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0802CB18
	movs r0, #0xff
	bl sub_0801F838
	ldr r1, [r5]
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, [r4]
	bl sub_08020354
	bl sub_080413E8
	cmp r0, #0
	beq _0802CB18
	movs r0, #0
	b _0802CB1A
	.align 2, 0
_0802CAFC: .4byte gUnknown_030033E8
_0802CB00: .4byte gUnknown_08499590
_0802CB04: .4byte gUnknown_08090BD8
_0802CB08: .4byte 0x0000417A
_0802CB0C: .4byte gUnknown_03003F24
_0802CB10: .4byte gUnknown_08090BDC
_0802CB14: .4byte gUnknown_08090BE0
_0802CB18:
	movs r0, #1
_0802CB1A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802CB20
sub_0802CB20: @ 0x0802CB20
	push {r4, r5, r6, lr}
	ldr r2, _0802CB80 @ =gUnknown_085D5ABC
	ldr r5, _0802CB84 @ =gUnknown_030040D8
	ldr r0, [r5]
	ldrb r1, [r0]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r3, [r0, #0xe]
	cmp r3, #1
	beq _0802CB7C
	ldr r0, _0802CB88 @ =gUnknown_08499590
	ldr r2, [r0]
	ldr r4, _0802CB8C @ =gUnknown_03003100
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	ldr r6, _0802CB90 @ =0x0000417A
	adds r0, r2, r6
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	adds r2, #0x12
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	bne _0802CB7C
	ldr r0, [r4]
	ldr r1, _0802CB94 @ =gUnknown_03003F24
	ldr r1, [r1]
	cmp r0, r1
	bne _0802CB7C
	cmp r3, #0
	beq _0802CB7C
	movs r0, #0xff
	bl sub_0801F838
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, [r5]
	bl sub_08020354
	bl sub_080413E8
	cmp r0, #0
	beq _0802CB98
_0802CB7C:
	movs r0, #1
	b _0802CB9A
	.align 2, 0
_0802CB80: .4byte gUnknown_085D5ABC
_0802CB84: .4byte gUnknown_030040D8
_0802CB88: .4byte gUnknown_08499590
_0802CB8C: .4byte gUnknown_03003100
_0802CB90: .4byte 0x0000417A
_0802CB94: .4byte gUnknown_03003F24
_0802CB98:
	movs r0, #2
_0802CB9A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_0802CBA0
sub_0802CBA0: @ 0x0802CBA0
	push {lr}
	ldr r1, _0802CBBC @ =gUnknown_03003100
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_080422A8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802CBC0
	movs r0, #1
	b _0802CBC2
	.align 2, 0
_0802CBBC: .4byte gUnknown_03003100
_0802CBC0:
	movs r0, #0
_0802CBC2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802CBC8
sub_0802CBC8: @ 0x0802CBC8
	push {lr}
	bl sub_0802CBA0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CBEE
	ldr r0, _0802CBF4 @ =gUnknown_030040D8
	ldr r0, [r0]
	ldr r2, _0802CBF8 @ =gUnknown_03003100
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #2
	ldrsh r2, [r2, r3]
	bl sub_080421D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802CBFC
_0802CBEE:
	movs r0, #1
	b _0802CBFE
	.align 2, 0
_0802CBF4: .4byte gUnknown_030040D8
_0802CBF8: .4byte gUnknown_03003100
_0802CBFC:
	movs r0, #0
_0802CBFE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802CC04
sub_0802CC04: @ 0x0802CC04
	push {lr}
	bl sub_0802CBA0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CC2A
	ldr r0, _0802CC30 @ =gUnknown_030040D8
	ldr r0, [r0]
	ldr r2, _0802CC34 @ =gUnknown_03003100
	movs r3, #0
	ldrsh r1, [r2, r3]
	movs r3, #2
	ldrsh r2, [r2, r3]
	bl sub_0804223C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802CC38
_0802CC2A:
	movs r0, #1
	b _0802CC3A
	.align 2, 0
_0802CC30: .4byte gUnknown_030040D8
_0802CC34: .4byte gUnknown_03003100
_0802CC38:
	movs r0, #0
_0802CC3A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802CC40
sub_0802CC40: @ 0x0802CC40
	push {lr}
	bl sub_0802C8F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CC7C
	bl sub_0802CBA0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CC7C
	ldr r0, _0802CC80 @ =gUnknown_030040D8
	ldr r0, [r0]
	bl sub_08042084
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CC7C
	movs r0, #0xff
	bl sub_0801F838
	ldr r1, _0802CC84 @ =gUnknown_03003100
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	bl sub_080203C0
	bl sub_080416A4
	cmp r0, #0
	bne _0802CC88
_0802CC7C:
	movs r0, #1
	b _0802CC8A
	.align 2, 0
_0802CC80: .4byte gUnknown_030040D8
_0802CC84: .4byte gUnknown_03003100
_0802CC88:
	movs r0, #0
_0802CC8A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802CC90
sub_0802CC90: @ 0x0802CC90
	push {lr}
	ldr r0, _0802CCC0 @ =gUnknown_030040D8
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0x18
	bne _0802CCC4
	ldrb r1, [r1, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802CCC4
	bl sub_0802C8F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CCC4
	bl sub_0802CBA0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CCC4
	movs r0, #0
	b _0802CCC6
	.align 2, 0
_0802CCC0: .4byte gUnknown_030040D8
_0802CCC4:
	movs r0, #1
_0802CCC6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802CCCC
sub_0802CCCC: @ 0x0802CCCC
	push {lr}
	bl sub_0802C8F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CCF0
	bl sub_0802CBA0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802CCF0
	ldr r0, _0802CCF4 @ =gUnknown_030040D8
	ldr r0, [r0]
	ldrb r1, [r0, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0802CCF8
_0802CCF0:
	movs r0, #1
	b _0802CCFA
	.align 2, 0
_0802CCF4: .4byte gUnknown_030040D8
_0802CCF8:
	movs r0, #0
_0802CCFA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802CD00
sub_0802CD00: @ 0x0802CD00
	push {lr}
	bl sub_0801A614
	bl sub_0801A168
	bl sub_0802D4B0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802CD14
sub_0802CD14: @ 0x0802CD14
	push {lr}
	bl sub_0801A614
	bl sub_0801A168
	bl sub_0802D504
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802CD28
sub_0802CD28: @ 0x0802CD28
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802CD4C @ =gUnknown_030040F0
	str r1, [r0]
	bl sub_0801A614
	bl sub_0801A168
	bl sub_08034F10
	ldr r0, _0802CD50 @ =gUnknown_0849AA68
	movs r1, #3
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0802CD4C: .4byte gUnknown_030040F0
_0802CD50: .4byte gUnknown_0849AA68

	thumb_func_start sub_0802CD54
sub_0802CD54: @ 0x0802CD54
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802CD74 @ =gUnknown_030040F0
	str r1, [r0]
	bl sub_0801A614
	bl sub_0801A168
	bl sub_08034F10
	bl sub_08046764
	pop {r0}
	bx r0
	.align 2, 0
_0802CD74: .4byte gUnknown_030040F0

	thumb_func_start sub_0802CD78
sub_0802CD78: @ 0x0802CD78
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802CD9C @ =gUnknown_030040F0
	str r1, [r0]
	bl sub_0801A614
	bl sub_0801A168
	bl sub_08034F10
	ldr r0, _0802CDA0 @ =gUnknown_0849ADD0
	movs r1, #0
	bl sub_080152EC
	pop {r0}
	bx r0
	.align 2, 0
_0802CD9C: .4byte gUnknown_030040F0
_0802CDA0: .4byte gUnknown_0849ADD0

	thumb_func_start sub_0802CDA4
sub_0802CDA4: @ 0x0802CDA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r1, sp
	ldr r0, _0802CDF8 @ =gUnknown_08090BE4
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldr r0, [r0]
	str r0, [r1]
	ldr r4, _0802CDFC @ =gUnknown_03003FC0
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0802CDD4
	movs r0, #0
	strb r0, [r4, #9]
_0802CDD4:
	ldrb r0, [r4, #9]
	lsls r0, r0, #2
	add r0, sp
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	bl sub_08019E68
	ldr r1, _0802CE00 @ =gUnknown_0200C420
	ldrb r0, [r4, #9]
	strb r0, [r1, #0xe]
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802CDF8: .4byte gUnknown_08090BE4
_0802CDFC: .4byte gUnknown_03003FC0
_0802CE00: .4byte gUnknown_0200C420

	thumb_func_start sub_0802CE04
sub_0802CE04: @ 0x0802CE04
	push {r4, lr}
	ldr r3, _0802CE20 @ =gUnknown_08090BF4
	ldr r1, [r3]
	ldrb r2, [r1, #0xc]
	movs r0, #1
	subs r0, r0, r2
	strb r0, [r1, #0xc]
	ldrb r0, [r1, #0xc]
	adds r4, r3, #0
	cmp r0, #0
	beq _0802CE24
	cmp r0, #1
	beq _0802CE2A
	b _0802CE32
	.align 2, 0
_0802CE20: .4byte gUnknown_08090BF4
_0802CE24:
	bl sub_0803B5E8
	b _0802CE32
_0802CE2A:
	ldr r0, _0802CE4C @ =gUnknown_030033EC
	ldrb r0, [r0]
	bl sub_08043DAC
_0802CE32:
	bl sub_08019E68
	ldr r2, _0802CE50 @ =gUnknown_0200C420
	movs r1, #0
	ldr r0, [r4]
	ldrb r0, [r0, #0xc]
	cmp r0, #0
	bne _0802CE44
	movs r1, #1
_0802CE44:
	strb r1, [r2, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CE4C: .4byte gUnknown_030033EC
_0802CE50: .4byte gUnknown_0200C420

	thumb_func_start sub_0802CE54
sub_0802CE54: @ 0x0802CE54
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802CE6C @ =gUnknown_030044A0
	str r1, [r0]
	bl sub_0801A168
	bl sub_0802C144
	pop {r0}
	bx r0
	.align 2, 0
_0802CE6C: .4byte gUnknown_030044A0

	thumb_func_start sub_0802CE70
sub_0802CE70: @ 0x0802CE70
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802CE8C @ =gUnknown_030044A0
	str r1, [r0]
	bl sub_0801A168
	ldr r0, _0802CE90 @ =gUnknown_030033EC
	ldrb r0, [r0]
	movs r1, #8
	bl sub_08019940
	pop {r0}
	bx r0
	.align 2, 0
_0802CE8C: .4byte gUnknown_030044A0
_0802CE90: .4byte gUnknown_030033EC

	thumb_func_start sub_0802CE94
sub_0802CE94: @ 0x0802CE94
	push {lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, _0802CEAC @ =gUnknown_030044A0
	str r1, [r0]
	bl sub_0801A168
	bl sub_0802C1B0
	pop {r0}
	bx r0
	.align 2, 0
_0802CEAC: .4byte gUnknown_030044A0

	thumb_func_start sub_0802CEB0
sub_0802CEB0: @ 0x0802CEB0
	push {r4, lr}
	bl sub_0801A168
	ldr r1, _0802CEEC @ =gUnknown_030044B0
	ldr r0, _0802CEF0 @ =gUnknown_03001FD4
	ldr r0, [r0]
	str r0, [r1, #8]
	ldr r0, _0802CEF4 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	ldr r4, _0802CEF8 @ =gUnknown_08090BF8
	cmp r0, #0
	beq _0802CED8
	ldr r0, [r4]
	ldrb r2, [r0]
	movs r0, #0xf
	movs r1, #0
	movs r3, #0
	bl sub_08034534
_0802CED8:
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #1
	bl sub_0804438C
	bl sub_08024268
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CEEC: .4byte gUnknown_030044B0
_0802CEF0: .4byte gUnknown_03001FD4
_0802CEF4: .4byte gUnknown_03003FC0
_0802CEF8: .4byte gUnknown_08090BF8

	thumb_func_start sub_0802CEFC
sub_0802CEFC: @ 0x0802CEFC
	push {r4, lr}
	bl sub_0801A168
	ldr r1, _0802CF38 @ =gUnknown_030044B0
	ldr r0, _0802CF3C @ =gUnknown_03001FD4
	ldr r0, [r0]
	str r0, [r1, #8]
	ldr r0, _0802CF40 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	ldr r4, _0802CF44 @ =gUnknown_08090BFC
	cmp r0, #0
	beq _0802CF24
	ldr r0, [r4]
	ldrb r2, [r0]
	movs r0, #0x10
	movs r1, #0
	movs r3, #0
	bl sub_08034534
_0802CF24:
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #2
	bl sub_0804438C
	bl sub_08024268
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802CF38: .4byte gUnknown_030044B0
_0802CF3C: .4byte gUnknown_03001FD4
_0802CF40: .4byte gUnknown_03003FC0
_0802CF44: .4byte gUnknown_08090BFC

	thumb_func_start sub_0802CF48
sub_0802CF48: @ 0x0802CF48
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	bne _0802CF66
	bl sub_0801A614
	bl sub_0801A168
	bl sub_08034F10
	bl sub_080485AC
_0802CF66:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802CF6C
sub_0802CF6C: @ 0x0802CF6C
	push {lr}
	bl sub_0801A168
	bl sub_08042B9C
	ldr r1, _0802CF90 @ =gUnknown_03003FC0
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802CF8C
	adds r0, r1, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	bl sub_080344F0
_0802CF8C:
	pop {r0}
	bx r0
	.align 2, 0
_0802CF90: .4byte gUnknown_03003FC0

	thumb_func_start sub_0802CF94
sub_0802CF94: @ 0x0802CF94
	push {lr}
	ldr r1, _0802CFA8 @ =gUnknown_08090C00
	ldr r0, [r1]
	adds r2, r0, #0
	adds r2, #0x2c
	ldrb r0, [r2]
	cmp r0, #1
	bls _0802CFAC
	movs r0, #0
	b _0802CFAE
	.align 2, 0
_0802CFA8: .4byte gUnknown_08090C00
_0802CFAC:
	adds r0, #1
_0802CFAE:
	strb r0, [r2]
	ldr r0, [r1]
	adds r0, #0x2c
	ldrb r0, [r0]
	bl sub_08035020
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802CFC0
sub_0802CFC0: @ 0x0802CFC0
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	bne _0802CFD6
	bl sub_0801A168
	bl sub_0802C280
_0802CFD6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802CFDC
sub_0802CFDC: @ 0x0802CFDC
	push {lr}
	bl sub_0801A168
	ldr r0, _0802CFF8 @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	bl sub_08016D04
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	lsrs r0, r0, #0x10
	bl sub_08016DB8
	pop {r0}
	bx r0
	.align 2, 0
_0802CFF8: .4byte gUnknown_03003FC0

	thumb_func_start sub_0802CFFC
sub_0802CFFC: @ 0x0802CFFC
	push {lr}
	bl sub_08034F48
	bl sub_0801A168
	bl sub_0802C57C
	bl sub_080424FC
	bl sub_0802C594
	ldr r0, _0802D040 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D05A
	ldr r0, _0802D044 @ =gUnknown_08090C04
	ldr r3, [r0]
	ldrb r1, [r3]
	adds r2, r0, #0
	cmp r1, #0
	bne _0802D04C
	ldrb r0, [r3, #1]
	cmp r0, #0
	bne _0802D04C
	ldr r0, _0802D048 @ =gUnknown_03003F38
	ldrb r1, [r0]
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_08034534
	b _0802D05A
	.align 2, 0
_0802D040: .4byte gUnknown_03003FC0
_0802D044: .4byte gUnknown_08090C04
_0802D048: .4byte gUnknown_03003F38
_0802D04C:
	ldr r0, _0802D060 @ =gUnknown_03003F38
	ldrb r0, [r0]
	ldr r2, [r2]
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	bl sub_080344B4
_0802D05A:
	pop {r0}
	bx r0
	.align 2, 0
_0802D060: .4byte gUnknown_03003F38

	thumb_func_start sub_0802D064
sub_0802D064: @ 0x0802D064
	push {lr}
	bl sub_08034F48
	bl sub_0801A168
	bl sub_0802C57C
	bl sub_08042650
	bl sub_080424FC
	bl sub_0802C594
	ldr r0, _0802D09C @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D096
	ldr r0, _0802D0A0 @ =gUnknown_03003F38
	ldrb r1, [r0]
	movs r0, #3
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_0802D096:
	pop {r0}
	bx r0
	.align 2, 0
_0802D09C: .4byte gUnknown_03003FC0
_0802D0A0: .4byte gUnknown_03003F38

	thumb_func_start sub_0802D0A4
sub_0802D0A4: @ 0x0802D0A4
	push {lr}
	bl sub_08042C10
	bl sub_0801A168
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D0B4
sub_0802D0B4: @ 0x0802D0B4
	push {lr}
	bl sub_08034F48
	bl sub_0801A168
	bl sub_0802C57C
	bl sub_08042864
	bl sub_080424FC
	bl sub_0802C594
	ldr r0, _0802D0EC @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D0E6
	ldr r0, _0802D0F0 @ =gUnknown_03003F38
	ldrb r1, [r0]
	movs r0, #7
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_0802D0E6:
	pop {r0}
	bx r0
	.align 2, 0
_0802D0EC: .4byte gUnknown_03003FC0
_0802D0F0: .4byte gUnknown_03003F38

	thumb_func_start sub_0802D0F4
sub_0802D0F4: @ 0x0802D0F4
	push {r4, r5, r6, lr}
	bl sub_08034F48
	bl sub_0801A168
	ldr r1, _0802D148 @ =gUnknown_03003FC0
	adds r6, r1, #0
	adds r6, #0x32
	ldrb r0, [r6]
	cmp r0, #0
	beq _0802D132
	ldrb r5, [r1, #0xd]
	cmp r5, #0
	bne _0802D11E
	ldr r0, _0802D14C @ =gUnknown_030040D8
	ldr r0, [r0]
	ldr r4, _0802D150 @ =gUnknown_03004074
	ldrb r1, [r4]
	bl sub_08025B80
	strb r5, [r4]
_0802D11E:
	ldrb r0, [r6]
	cmp r0, #0
	beq _0802D132
	ldr r0, _0802D154 @ =gUnknown_03003F38
	ldrb r1, [r0]
	movs r0, #0xa
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_0802D132:
	bl sub_0802C57C
	bl sub_08042998
	bl sub_080424FC
	bl sub_0802C594
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D148: .4byte gUnknown_03003FC0
_0802D14C: .4byte gUnknown_030040D8
_0802D150: .4byte gUnknown_03004074
_0802D154: .4byte gUnknown_03003F38

	thumb_func_start sub_0802D158
sub_0802D158: @ 0x0802D158
	push {lr}
	bl sub_08042B70
	bl sub_0801A168
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D168
sub_0802D168: @ 0x0802D168
	push {lr}
	ldr r0, _0802D17C @ =gUnknown_030033E8
	ldrb r1, [r0]
	cmp r1, #0
	beq _0802D184
	ldr r1, _0802D180 @ =gUnknown_03000558
	movs r0, #1
	strb r0, [r1]
	b _0802D188
	.align 2, 0
_0802D17C: .4byte gUnknown_030033E8
_0802D180: .4byte gUnknown_03000558
_0802D184:
	ldr r0, _0802D19C @ =gUnknown_03000558
	strb r1, [r0]
_0802D188:
	movs r0, #0
	bl sub_08029948
	bl sub_0801A168
	bl sub_08034F7C
	pop {r0}
	bx r0
	.align 2, 0
_0802D19C: .4byte gUnknown_03000558

	thumb_func_start sub_0802D1A0
sub_0802D1A0: @ 0x0802D1A0
	push {lr}
	ldr r1, _0802D1BC @ =gUnknown_03000558
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	bl sub_08029948
	bl sub_0801A168
	bl sub_08034F7C
	pop {r0}
	bx r0
	.align 2, 0
_0802D1BC: .4byte gUnknown_03000558

	thumb_func_start sub_0802D1C0
sub_0802D1C0: @ 0x0802D1C0
	push {lr}
	bl sub_08034F48
	bl sub_0801A168
	bl sub_08060684
	bl sub_080424FC
	ldr r0, _0802D1F0 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D1EA
	ldr r0, _0802D1F4 @ =gUnknown_03003F38
	ldrb r1, [r0]
	movs r0, #0xb
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_0802D1EA:
	pop {r0}
	bx r0
	.align 2, 0
_0802D1F0: .4byte gUnknown_03003FC0
_0802D1F4: .4byte gUnknown_03003F38

	thumb_func_start sub_0802D1F8
sub_0802D1F8: @ 0x0802D1F8
	push {lr}
	bl sub_08034F48
	bl sub_0801A168
	bl sub_080606A0
	bl sub_080424FC
	ldr r0, _0802D228 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D222
	ldr r0, _0802D22C @ =gUnknown_03003F38
	ldrb r1, [r0]
	movs r0, #0xc
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_0802D222:
	pop {r0}
	bx r0
	.align 2, 0
_0802D228: .4byte gUnknown_03003FC0
_0802D22C: .4byte gUnknown_03003F38

	thumb_func_start sub_0802D230
sub_0802D230: @ 0x0802D230
	push {r4, lr}
	bl sub_08034F48
	bl sub_0801A168
	ldr r4, _0802D270 @ =gUnknown_030040D8
	ldr r0, [r4]
	ldrb r1, [r0, #4]
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0
	beq _0802D278
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x19
	subs r0, #1
	movs r1, #0xa
	bl Div
	adds r0, #1
	ldr r3, _0802D274 @ =gUnknown_085D5ABC
	ldr r1, [r4]
	ldrb r2, [r1]
	movs r1, #0x5c
	muls r1, r2, r1
	adds r1, r1, r3
	ldrh r1, [r1, #6]
	muls r0, r1, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r1, r0, #1
	b _0802D27A
	.align 2, 0
_0802D270: .4byte gUnknown_030040D8
_0802D274: .4byte gUnknown_085D5ABC
_0802D278:
	movs r1, #0
_0802D27A:
	ldr r0, _0802D298 @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_08025B58
	bl sub_0804256C
	ldr r0, _0802D29C @ =gUnknown_03003F38
	ldrb r0, [r0]
	bl sub_08025D60
	bl sub_080258CC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D298: .4byte gUnknown_030033EC
_0802D29C: .4byte gUnknown_03003F38

	thumb_func_start sub_0802D2A0
sub_0802D2A0: @ 0x0802D2A0
	push {lr}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	bne _0802D2DA
	movs r0, #0xff
	bl sub_0801F838
	ldr r1, _0802D2E0 @ =gUnknown_03003100
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r1, r2]
	ldr r2, _0802D2E4 @ =gUnknown_030040D8
	ldr r2, [r2]
	bl sub_08020D50
	ldr r0, _0802D2E8 @ =gUnknown_0849A9F8
	movs r1, #3
	bl Proc_Start
	bl sub_0801A168
	bl sub_08024500
	bl sub_08034F7C
_0802D2DA:
	pop {r0}
	bx r0
	.align 2, 0
_0802D2E0: .4byte gUnknown_03003100
_0802D2E4: .4byte gUnknown_030040D8
_0802D2E8: .4byte gUnknown_0849A9F8

	thumb_func_start sub_0802D2EC
sub_0802D2EC: @ 0x0802D2EC
	push {r4, r5, lr}
	ldr r0, _0802D334 @ =gUnknown_03002B6C
	ldr r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	movs r2, #0xda
	lsls r2, r2, #1
	movs r0, #0
	movs r3, #0xa
	bl sub_0801F150
	movs r4, #0
	ldr r1, _0802D338 @ =gUnknown_0849AAA8
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0802D32C
	adds r5, r1, #0
_0802D316:
	adds r0, r4, r5
	ldrb r0, [r0]
	bl sub_0801F234
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0802D316
_0802D32C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D334: .4byte gUnknown_03002B6C
_0802D338: .4byte gUnknown_0849AAA8

	thumb_func_start sub_0802D33C
sub_0802D33C: @ 0x0802D33C
	push {lr}
	ldr r0, _0802D350 @ =gUnknown_0848A42C
	bl sub_080637AC
	adds r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0xf
	bhi _0802D354
	movs r0, #1
	b _0802D356
	.align 2, 0
_0802D350: .4byte gUnknown_0848A42C
_0802D354:
	movs r0, #0x10
_0802D356:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802D35C
sub_0802D35C: @ 0x0802D35C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	bl sub_0802D33C
	adds r4, r0, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xe
	movs r2, #0xd
	movs r3, #6
	bl sub_0801A444
	ldr r0, _0802D3A8 @ =gUnknown_08489568
	bl sub_0801537C
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, _0802D3AC @ =gUnknown_08499578
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xf
	adds r3, r5, #0
	bl sub_080146D4
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D3A8: .4byte gUnknown_08489568
_0802D3AC: .4byte gUnknown_08499578

	thumb_func_start sub_0802D3B0
sub_0802D3B0: @ 0x0802D3B0
	push {r4, r5, lr}
	sub sp, #8
	bl sub_0802D33C
	adds r4, r0, #0
	ldr r0, _0802D400 @ =gUnknown_08489568
	bl sub_0801537C
	ldr r0, _0802D404 @ =gUnknown_08499578
	ldr r0, [r0]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r5, #6
	str r5, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r1, r4, #0
	movs r2, #0xe
	movs r3, #0xd
	bl sub_08012BC8
	ldr r0, _0802D408 @ =gUnknown_08499580
	ldr r0, [r0]
	str r5, [sp]
	movs r1, #0xd8
	lsls r1, r1, #2
	str r1, [sp, #4]
	adds r1, r4, #0
	movs r2, #0xe
	movs r3, #0xd
	bl sub_08012BC8
	bl sub_08013AEC
	bl sub_08013B0C
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D400: .4byte gUnknown_08489568
_0802D404: .4byte gUnknown_08499578
_0802D408: .4byte gUnknown_08499580

	thumb_func_start sub_0802D40C
sub_0802D40C: @ 0x0802D40C
	push {lr}
	ldr r0, _0802D418 @ =0x00000C9A
	bl sub_0802D35C
	pop {r0}
	bx r0
	.align 2, 0
_0802D418: .4byte 0x00000C9A

	thumb_func_start sub_0802D41C
sub_0802D41C: @ 0x0802D41C
	push {lr}
	ldr r0, _0802D428 @ =0x00000C9B
	bl sub_0802D35C
	pop {r0}
	bx r0
	.align 2, 0
_0802D428: .4byte 0x00000C9B

	thumb_func_start sub_0802D42C
sub_0802D42C: @ 0x0802D42C
	push {lr}
	ldr r0, _0802D438 @ =0x00000C9C
	bl sub_0802D35C
	pop {r0}
	bx r0
	.align 2, 0
_0802D438: .4byte 0x00000C9C

	thumb_func_start sub_0802D43C
sub_0802D43C: @ 0x0802D43C
	push {lr}
	ldr r0, _0802D448 @ =0x00000C9D
	bl sub_0802D35C
	pop {r0}
	bx r0
	.align 2, 0
_0802D448: .4byte 0x00000C9D

	thumb_func_start sub_0802D44C
sub_0802D44C: @ 0x0802D44C
	push {lr}
	bl sub_0802D3B0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D458
sub_0802D458: @ 0x0802D458
	push {r4, lr}
	movs r4, #1
	ldr r0, _0802D494 @ =gUnknown_030033E4
	ldrh r1, [r0]
	ldr r0, _0802D498 @ =gUnknown_08499590
	ldr r0, [r0]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802D46E
	adds r0, #0xf
_0802D46E:
	asrs r0, r0, #4
	subs r0, r1, r0
	cmp r0, #6
	bgt _0802D478
	movs r4, #0x14
_0802D478:
	bl sub_08024268
	ldr r0, _0802D49C @ =gUnknown_0849AAC0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_0801A104
	bl sub_08034F7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D494: .4byte gUnknown_030033E4
_0802D498: .4byte gUnknown_08499590
_0802D49C: .4byte gUnknown_0849AAC0

	thumb_func_start sub_0802D4A0
sub_0802D4A0: @ 0x0802D4A0
	push {lr}
	bl sub_0801A664
	bl sub_08034F7C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802D4B0
sub_0802D4B0: @ 0x0802D4B0
	push {r4, lr}
	sub sp, #4
	movs r4, #1
	ldr r0, _0802D4F4 @ =gUnknown_030033E4
	ldrh r1, [r0]
	ldr r0, _0802D4F8 @ =gUnknown_08499590
	ldr r0, [r0]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802D4C8
	adds r0, #0xf
_0802D4C8:
	asrs r0, r0, #4
	subs r0, r1, r0
	cmp r0, #6
	bgt _0802D4D2
	movs r4, #0x14
_0802D4D2:
	bl sub_08024268
	ldr r0, _0802D4FC @ =gUnknown_0849AC60
	ldr r1, _0802D500 @ =gUnknown_030044A0
	ldrh r1, [r1]
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_08019F2C
	bl sub_08034F7C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D4F4: .4byte gUnknown_030033E4
_0802D4F8: .4byte gUnknown_08499590
_0802D4FC: .4byte gUnknown_0849AC60
_0802D500: .4byte gUnknown_030044A0

	thumb_func_start sub_0802D504
sub_0802D504: @ 0x0802D504
	push {r4, lr}
	sub sp, #4
	movs r4, #1
	ldr r0, _0802D548 @ =gUnknown_030033E4
	ldrh r1, [r0]
	ldr r0, _0802D54C @ =gUnknown_08499590
	ldr r0, [r0]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802D51C
	adds r0, #0xf
_0802D51C:
	asrs r0, r0, #4
	subs r0, r1, r0
	cmp r0, #6
	bgt _0802D526
	movs r4, #0x14
_0802D526:
	bl sub_08024268
	ldr r0, _0802D550 @ =gUnknown_0849ABC0
	ldr r1, _0802D554 @ =gUnknown_030040F0
	ldrh r1, [r1]
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_08019F2C
	bl sub_08034F7C
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D548: .4byte gUnknown_030033E4
_0802D54C: .4byte gUnknown_08499590
_0802D550: .4byte gUnknown_0849ABC0
_0802D554: .4byte gUnknown_030040F0

	thumb_func_start sub_0802D558
sub_0802D558: @ 0x0802D558
	push {r4, lr}
	movs r4, #1
	ldr r0, _0802D594 @ =gUnknown_030033E4
	ldrh r1, [r0]
	ldr r0, _0802D598 @ =gUnknown_08499590
	ldr r0, [r0]
	movs r2, #4
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _0802D56E
	adds r0, #0xf
_0802D56E:
	asrs r0, r0, #4
	subs r0, r1, r0
	cmp r0, #6
	bgt _0802D578
	movs r4, #0x14
_0802D578:
	bl sub_08024268
	ldr r0, _0802D59C @ =gUnknown_0849AE28
	adds r1, r4, #0
	movs r2, #1
	movs r3, #1
	bl sub_0801A104
	bl sub_08034F7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802D594: .4byte gUnknown_030033E4
_0802D598: .4byte gUnknown_08499590
_0802D59C: .4byte gUnknown_0849AE28

	thumb_func_start sub_0802D5A0
sub_0802D5A0: @ 0x0802D5A0
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_0802D5B8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0802D5CC
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0802D5B8
sub_0802D5B8: @ 0x0802D5B8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08037250
	adds r1, r4, #0
	bl sub_08011CAC
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802D5CC
sub_0802D5CC: @ 0x0802D5CC
	push {lr}
	ldr r2, _0802D5E4 @ =gUnknown_080D4188
	lsls r0, r0, #5
	adds r0, r0, r2
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x10
	movs r2, #0x20
	bl sub_08013618
	pop {r0}
	bx r0
	.align 2, 0
_0802D5E4: .4byte gUnknown_080D4188

	thumb_func_start sub_0802D5E8
sub_0802D5E8: @ 0x0802D5E8
	push {r4, r5, lr}
	movs r4, #0
	ldr r2, _0802D620 @ =gUnknown_08499590
	ldr r3, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0xf
	ldr r5, _0802D624 @ =0x0000417A
	adds r2, r3, r5
	adds r2, r2, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r2, [r2]
	adds r0, r0, r2
	ldr r1, _0802D628 @ =0x00001432
	adds r3, r3, r1
	adds r3, r3, r0
	ldrb r1, [r3]
	movs r0, #0x1f
	ands r0, r1
	subs r0, #6
	cmp r0, #8
	bhi _0802D65E
	lsls r0, r0, #2
	ldr r1, _0802D62C @ =_0802D630
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802D620: .4byte gUnknown_08499590
_0802D624: .4byte 0x0000417A
_0802D628: .4byte 0x00001432
_0802D62C: .4byte _0802D630
_0802D630: @ jump table
	.4byte _0802D654 @ case 0
	.4byte _0802D65E @ case 1
	.4byte _0802D654 @ case 2
	.4byte _0802D65E @ case 3
	.4byte _0802D658 @ case 4
	.4byte _0802D65C @ case 5
	.4byte _0802D65E @ case 6
	.4byte _0802D65E @ case 7
	.4byte _0802D654 @ case 8
_0802D654:
	movs r4, #7
	b _0802D65E
_0802D658:
	movs r4, #0x10
	b _0802D65E
_0802D65C:
	movs r4, #0x20
_0802D65E:
	adds r0, r4, #0
	bl sub_0802D67C
	ldr r0, _0802D678 @ =gUnknown_0849AFE8
	movs r1, #0
	bl sub_080152C0
	bl sub_08034F7C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802D678: .4byte gUnknown_0849AFE8

	thumb_func_start sub_0802D67C
sub_0802D67C: @ 0x0802D67C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r6, #0
	movs r7, #0
	ldr r1, _0802D700 @ =gUnknown_08090C08
	ldr r0, [r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	beq _0802D744
	ldr r0, _0802D704 @ =gUnknown_02023830
	mov r8, r0
	mov sl, r2
_0802D6A8:
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r5, [r0]
	ldr r1, _0802D708 @ =gUnknown_085D5ABC
	movs r0, #0x5c
	muls r0, r5, r0
	adds r0, r0, r1
	ldrb r0, [r0, #0x1a]
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0802D72E
	ldr r4, _0802D70C @ =gUnknown_08090C0C
	cmp r5, #8
	bne _0802D6D4
	ldr r0, _0802D710 @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_080261E8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802D72E
_0802D6D4:
	ldr r0, [r4]
	ldrh r0, [r0]
	ldr r1, _0802D714 @ =gUnknown_08499598
	ldr r1, [r1]
	lsls r4, r0, #4
	subs r4, r4, r0
	lsls r4, r4, #2
	adds r4, r4, r1
	adds r1, r5, #0
	bl sub_08042C9C
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, [r4]
	cmp r0, r1
	bhs _0802D718
	lsls r0, r6, #2
	add r0, r8
	movs r1, #2
	b _0802D71E
	.align 2, 0
_0802D700: .4byte gUnknown_08090C08
_0802D704: .4byte gUnknown_02023830
_0802D708: .4byte gUnknown_085D5ABC
_0802D70C: .4byte gUnknown_08090C0C
_0802D710: .4byte gUnknown_030033EC
_0802D714: .4byte gUnknown_08499598
_0802D718:
	lsls r0, r6, #2
	add r0, r8
	movs r1, #0
_0802D71E:
	strb r1, [r0, #1]
	adds r1, r6, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #2
	add r1, r8
	strb r5, [r1]
_0802D72E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r1, _0802D760 @ =gUnknown_08090C08
	ldr r0, [r1]
	adds r0, r7, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, sl
	bne _0802D6A8
_0802D744:
	ldr r0, _0802D764 @ =gUnknown_0300055A
	strh r6, [r0]
	ldr r1, _0802D768 @ =gUnknown_02023830
	lsls r0, r6, #2
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D760: .4byte gUnknown_08090C08
_0802D764: .4byte gUnknown_0300055A
_0802D768: .4byte gUnknown_02023830

	thumb_func_start sub_0802D76C
sub_0802D76C: @ 0x0802D76C
	push {r4, r5, r6, lr}
	movs r2, #5
	ldr r6, _0802D7AC @ =gUnknown_08499578
	movs r5, #0
_0802D774:
	movs r1, #1
	lsls r4, r2, #0x10
	asrs r3, r4, #0xb
_0802D77A:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r1, r3, r0
	ldr r2, [r6]
	lsls r1, r1, #1
	adds r1, r1, r2
	strh r5, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _0802D77A
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r4, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x12
	ble _0802D774
	bl sub_08013AEC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802D7AC: .4byte gUnknown_08499578

	thumb_func_start sub_0802D7B0
sub_0802D7B0: @ 0x0802D7B0
	bx lr
	.align 2, 0

	thumb_func_start sub_0802D7B4
sub_0802D7B4: @ 0x0802D7B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x1c]
	movs r0, #0
	mov r8, r0
	ldr r1, _0802D7D8 @ =gUnknown_08090C10
	ldr r3, [r1]
	ldr r0, [sp, #0x1c]
	lsls r2, r0, #0x10
	asrs r0, r2, #0xe
	adds r0, r0, r3
	b _0802D8E8
	.align 2, 0
_0802D7D8: .4byte gUnknown_08090C10
_0802D7DC:
	asrs r0, r2, #0x10
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _0802D7F8 @ =gUnknown_02023830
	adds r0, r0, r1
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0802D800
	movs r0, #0
	mov sl, r0
	ldr r0, _0802D7FC @ =gUnknown_03003F2C
	ldrh r0, [r0]
	b _0802D808
	.align 2, 0
_0802D7F8: .4byte gUnknown_02023830
_0802D7FC: .4byte gUnknown_03003F2C
_0802D800:
	movs r1, #1
	mov sl, r1
	movs r0, #0x80
	lsls r0, r0, #1
_0802D808:
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	lsls r2, r1, #0x10
	asrs r0, r2, #0x10
	add r0, r8
	lsls r0, r0, #2
	ldr r1, _0802D904 @ =gUnknown_02023830
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x5c
	muls r0, r1, r0
	ldr r1, _0802D908 @ =gUnknown_085D5ABC
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	ldr r1, _0802D90C @ =gUnknown_08610A38
	adds r0, r0, r1
	ldr r3, [r0]
	add r1, sp, #0xc
	movs r0, #0x19
	strb r0, [r1]
	movs r4, #0
	ldrb r0, [r3]
	mov sb, r2
	mov r1, r8
	lsls r5, r1, #1
	ldr r7, _0802D910 @ =gUnknown_08090C14
	adds r1, #1
	str r1, [sp, #0x24]
	cmp r0, #0
	beq _0802D85C
	adds r1, r3, #0
	mov r2, sp
	adds r2, #0xd
_0802D84C:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	adds r4, #1
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802D84C
_0802D85C:
	adds r0, r4, #1
	add r0, sp
	adds r0, #0xc
	movs r1, #0
	strb r1, [r0]
	adds r5, #5
	lsls r5, r5, #0x10
	asrs r6, r5, #0x10
	ldr r0, _0802D914 @ =gUnknown_08499578
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [sp]
	mov r0, sl
	str r0, [sp, #4]
	movs r0, #4
	adds r1, r6, #0
	add r3, sp, #0xc
	bl sub_080149C0
	ldr r0, [r7]
	ldrh r0, [r0]
	mov r1, sb
	asrs r7, r1, #0x10
	mov r1, r8
	adds r4, r7, r1
	lsls r4, r4, #2
	ldr r1, _0802D904 @ =gUnknown_02023830
	adds r4, r4, r1
	ldrb r1, [r4]
	bl sub_08042C9C
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #1
	ldr r0, _0802D914 @ =gUnknown_08499578
	ldr r2, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	str r1, [sp]
	mov r0, sl
	str r0, [sp, #4]
	movs r0, #0xe
	adds r1, r6, #0
	bl sub_08014B0C
	ldr r1, _0802D914 @ =gUnknown_08499578
	ldr r0, [r1]
	lsrs r5, r5, #0x10
	ldrb r3, [r4]
	ldr r1, [sp, #0x20]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r1, #2
	adds r2, r5, #0
	bl sub_0802239C
	ldr r1, [sp, #0x24]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #6
	bhi _0802D8F0
	mov r2, sb
	adds r0, r7, r0
	lsls r0, r0, #2
	ldr r1, _0802D904 @ =gUnknown_02023830
	adds r0, r0, r1
_0802D8E8:
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802D8F0
	b _0802D7DC
_0802D8F0:
	bl sub_08013AEC
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802D904: .4byte gUnknown_02023830
_0802D908: .4byte gUnknown_085D5ABC
_0802D90C: .4byte gUnknown_08610A38
_0802D910: .4byte gUnknown_08090C14
_0802D914: .4byte gUnknown_08499578

	thumb_func_start sub_0802D918
sub_0802D918: @ 0x0802D918
	push {lr}
	bl sub_08024268
	bl sub_08024274
	ldr r2, _0802D984 @ =gUnknown_03001418
	ldr r1, _0802D988 @ =gUnknown_03001FF8
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r2]
	ldr r2, _0802D98C @ =gUnknown_03001470
	ldr r0, _0802D990 @ =gUnknown_03001FBC
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	adds r1, r1, r2
	movs r0, #0
	strh r0, [r1, #0x1e]
	strh r0, [r1, #0x20]
	ldr r0, _0802D994 @ =gUnknown_0300055A
	ldrh r0, [r0]
	subs r0, #1
	strh r0, [r1, #0x22]
	bl sub_0802D7B0
	movs r0, #1
	movs r1, #4
	movs r2, #0xf
	movs r3, #0x10
	bl sub_0801A444
	movs r0, #0
	bl sub_0802D7B4
	movs r0, #8
	movs r1, #0x28
	bl sub_08022AD0
	movs r0, #0x65
	bl sub_0803B4DC
	ldr r0, _0802D998 @ =gUnknown_02023830
	ldrb r0, [r0]
	bl sub_0803A9C8
	movs r0, #1
	bl sub_0802776C
	pop {r0}
	bx r0
	.align 2, 0
_0802D984: .4byte gUnknown_03001418
_0802D988: .4byte gUnknown_03001FF8
_0802D98C: .4byte gUnknown_03001470
_0802D990: .4byte gUnknown_03001FBC
_0802D994: .4byte gUnknown_0300055A
_0802D998: .4byte gUnknown_02023830

	thumb_func_start sub_0802D99C
sub_0802D99C: @ 0x0802D99C
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_0802D76C
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	bl sub_0802D7B4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0802D9B8
sub_0802D9B8: @ 0x0802D9B8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	ldrh r2, [r4, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	cmp r1, r0
	bne _0802D9D2
	cmp r1, #0
	ble _0802D9D2
	subs r0, r2, #1
	strh r0, [r4, #0x1e]
_0802D9D2:
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r3, #0x1e
	ldrsh r2, [r4, r3]
	adds r0, r2, #6
	cmp r1, r0
	bne _0802D9F0
	movs r1, #0x22
	ldrsh r0, [r4, r1]
	subs r0, #7
	cmp r2, r0
	bgt _0802D9F0
	ldrh r0, [r4, #0x1e]
	adds r0, #1
	strh r0, [r4, #0x1e]
_0802D9F0:
	bl sub_0802D76C
	movs r2, #0x1e
	ldrsh r0, [r4, r2]
	bl sub_0802D7B4
	ldr r1, _0802DA14 @ =gUnknown_02023830
	movs r3, #0x20
	ldrsh r0, [r4, r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_0803AA78
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802DA14: .4byte gUnknown_02023830

	thumb_func_start sub_0802DA18
sub_0802DA18: @ 0x0802DA18
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r0, #1
	bl sub_0802776C
	bl sub_08019850
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802DA32
	b _0802DBBA
_0802DA32:
	ldr r2, _0802DA70 @ =gUnknown_03001470
	ldr r3, _0802DA74 @ =gUnknown_08090C18
	ldr r0, [r3]
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #5
	adds r5, r0, r2
	ldr r2, _0802DA78 @ =gUnknown_08090C1C
	ldr r0, [r2]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	mov sb, r3
	mov r8, r2
	cmp r0, #0
	beq _0802DADA
	ldr r6, _0802DA7C @ =gUnknown_02023830
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0802DA80
	movs r0, #0x68
	bl sub_0803B4DC
	b _0802DBBA
	.align 2, 0
_0802DA70: .4byte gUnknown_03001470
_0802DA74: .4byte gUnknown_08090C18
_0802DA78: .4byte gUnknown_08090C1C
_0802DA7C: .4byte gUnknown_02023830
_0802DA80:
	movs r0, #0x65
	bl sub_0803B4DC
	bl sub_08025AEC
	cmp r0, #0
	bne _0802DA94
	bl sub_0802DBE4
	b _0802DBBA
_0802DA94:
	ldr r4, _0802DB10 @ =gUnknown_030040A4
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	movs r3, #0x20
	ldrsh r2, [r5, r3]
	lsls r2, r2, #2
	adds r2, r2, r6
	ldrb r2, [r2]
	bl sub_08025E08
	adds r7, r0, #0
	ldr r1, _0802DB14 @ =gUnknown_03003100
	ldrh r0, [r4]
	strh r0, [r1]
	ldrh r0, [r4, #2]
	strh r0, [r1, #2]
	ldr r0, _0802DB18 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802DAD2
	movs r4, #0x20
	ldrsh r0, [r5, r4]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_0802DAD2:
	movs r0, #0xe
	adds r1, r7, #0
	bl sub_08074410
_0802DADA:
	mov r0, r8
	ldr r4, [r0]
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802DAF0
	movs r0, #0x66
	bl sub_0803B4DC
_0802DAF0:
	ldr r2, [r4]
	ldrh r1, [r2, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0802DB1C
	mov r1, sb
	ldr r0, [r1]
	ldrb r0, [r0]
	bl sub_08015C30
	bl sub_0802D76C
	bl sub_0803A59C
	b _0802DBBA
	.align 2, 0
_0802DB10: .4byte gUnknown_030040A4
_0802DB14: .4byte gUnknown_03003100
_0802DB18: .4byte gUnknown_03003FC0
_0802DB1C:
	ldrh r1, [r2, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0802DB44
	ldrh r2, [r5, #0x20]
	movs r3, #0x20
	ldrsh r1, [r5, r3]
	movs r4, #0x22
	ldrsh r0, [r5, r4]
	cmp r1, r0
	bge _0802DB44
	adds r0, r2, #1
	strh r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_0802D9B8
	movs r0, #0x67
	bl sub_0803B4DC
_0802DB44:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r1, [r0, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0802DB6E
	ldrh r1, [r5, #0x20]
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0802DB6E
	subs r0, r1, #1
	strh r0, [r5, #0x20]
	adds r0, r5, #0
	bl sub_0802D9B8
	movs r0, #0x67
	bl sub_0803B4DC
_0802DB6E:
	ldr r2, _0802DBC8 @ =gUnknown_030033E4
	movs r0, #1
	strh r0, [r2]
	ldrh r1, [r5, #0x20]
	ldrh r0, [r5, #0x1e]
	subs r1, r1, r0
	adds r1, #2
	strh r1, [r2, #2]
	lsls r1, r1, #4
	adds r1, #8
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r0, #0x10
	movs r2, #3
	bl sub_0802323C
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _0802DBA0
	movs r0, #0x44
	movs r1, #0x2a
	movs r2, #0xe
	bl sub_08043418
_0802DBA0:
	movs r4, #0x1e
	ldrsh r0, [r5, r4]
	adds r0, #7
	ldr r1, _0802DBCC @ =gUnknown_0300055A
	movs r2, #0
	ldrsh r1, [r1, r2]
	cmp r0, r1
	bge _0802DBBA
	movs r0, #0x44
	movs r1, #0x96
	movs r2, #0xf
	bl sub_08043418
_0802DBBA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802DBC8: .4byte gUnknown_030033E4
_0802DBCC: .4byte gUnknown_0300055A

	thumb_func_start sub_0802DBD0
sub_0802DBD0: @ 0x0802DBD0
	push {lr}
	movs r0, #1
	bl sub_0802776C
	bl sub_0802428C
	bl sub_08034F8C
	pop {r0}
	bx r0

	thumb_func_start sub_0802DBE4
sub_0802DBE4: @ 0x0802DBE4
	push {lr}
	ldr r0, _0802DBF4 @ =0x00000C9E
	movs r1, #0
	movs r2, #0
	bl sub_08019818
	pop {r0}
	bx r0
	.align 2, 0
_0802DBF4: .4byte 0x00000C9E

	thumb_func_start sub_0802DBF8
sub_0802DBF8: @ 0x0802DBF8
	ldr r0, _0802DC18 @ =gUnknown_08499590
	ldr r0, [r0]
	ldrh r1, [r0, #0x10]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0802DC24
	ldr r0, _0802DC1C @ =gUnknown_030033E0
	ldr r0, [r0]
	ldr r1, _0802DC20 @ =0x000F000F
	ands r0, r1
	cmp r0, #0
	bne _0802DC24
	movs r0, #1
	b _0802DC26
	.align 2, 0
_0802DC18: .4byte gUnknown_08499590
_0802DC1C: .4byte gUnknown_030033E0
_0802DC20: .4byte 0x000F000F
_0802DC24:
	movs r0, #0
_0802DC26:
	bx lr

	thumb_func_start sub_0802DC28
sub_0802DC28: @ 0x0802DC28
	bx lr
	.align 2, 0

	thumb_func_start sub_0802DC2C
sub_0802DC2C: @ 0x0802DC2C
	push {lr}
	ldr r0, _0802DC40 @ =gUnknown_03003334
	ldrh r0, [r0]
	cmp r0, #8
	bhi _0802DCA0
	lsls r0, r0, #2
	ldr r1, _0802DC44 @ =_0802DC48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802DC40: .4byte gUnknown_03003334
_0802DC44: .4byte _0802DC48
_0802DC48: @ jump table
	.4byte _0802DC6C @ case 0
	.4byte _0802DC72 @ case 1
	.4byte _0802DC78 @ case 2
	.4byte _0802DC7E @ case 3
	.4byte _0802DC84 @ case 4
	.4byte _0802DC8A @ case 5
	.4byte _0802DC90 @ case 6
	.4byte _0802DC96 @ case 7
	.4byte _0802DC9C @ case 8
_0802DC6C:
	bl sub_0802DCB4
	b _0802DCA0
_0802DC72:
	bl sub_0802DE1C
	b _0802DCA0
_0802DC78:
	bl sub_0802DEFC
	b _0802DCA0
_0802DC7E:
	bl sub_0802E698
	b _0802DCA0
_0802DC84:
	bl sub_0802E6C0
	b _0802DCA0
_0802DC8A:
	bl sub_0802E6F8
	b _0802DCA0
_0802DC90:
	bl sub_0802DFC8
	b _0802DCA0
_0802DC96:
	bl sub_0802E260
	b _0802DCA0
_0802DC9C:
	bl sub_0802E278
_0802DCA0:
	pop {r0}
	bx r0

	thumb_func_start sub_0802DCA4
sub_0802DCA4: @ 0x0802DCA4
	push {lr}
	bl sub_08012358
	bl sub_0801237C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802DCB4
sub_0802DCB4: @ 0x0802DCB4
	push {r4, r5, lr}
	bl sub_08023824
	bl sub_0802361C
	movs r0, #4
	bl sub_08023908
	movs r0, #0
	bl sub_08023274
	bl sub_0802DBF8
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802DCD6
	b _0802DE08
_0802DCD6:
	ldr r1, _0802DCF0 @ =gUnknown_08090C20
	ldr r0, [r1]
	ldr r0, [r0]
	ldrh r2, [r0, #4]
	movs r0, #8
	ands r0, r2
	adds r4, r1, #0
	cmp r0, #0
	beq _0802DCF4
	bl sub_0802E250
	b _0802DE12
	.align 2, 0
_0802DCF0: .4byte gUnknown_08090C20
_0802DCF4:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0802DD08
	movs r0, #0
	bl sub_0801B780
	bl sub_0802D458
	b _0802DE12
_0802DD08:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _0802DD8C
	ldr r5, _0802DD64 @ =gUnknown_08499590
	ldr r2, [r5]
	ldr r4, _0802DD68 @ =gUnknown_030033E4
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	ldr r3, _0802DD6C @ =0x0000417A
	adds r0, r2, r3
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	adds r2, #0x12
	adds r2, r2, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq _0802DD74
	movs r0, #0
	bl sub_0801B780
	ldr r3, _0802DD70 @ =gUnknown_08499594
	ldr r2, [r5]
	ldrh r1, [r4, #2]
	lsls r1, r1, #1
	ldr r5, _0802DD6C @ =0x0000417A
	adds r0, r2, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	adds r2, #0x12
	adds r2, r2, r0
	ldrb r0, [r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r3]
	adds r0, r0, r1
	bl sub_0803A8F0
	b _0802DE12
	.align 2, 0
_0802DD64: .4byte gUnknown_08499590
_0802DD68: .4byte gUnknown_030033E4
_0802DD6C: .4byte 0x0000417A
_0802DD70: .4byte gUnknown_08499594
_0802DD74:
	movs r0, #0
	bl sub_0801B780
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	bl sub_0803EED4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_080470F8
	b _0802DE12
_0802DD8C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0802DDC8
	bl sub_08025580
	bl sub_080254AC
	adds r1, r0, #0
	cmp r1, #0
	beq _0802DDC8
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_08029088
	ldr r0, _0802DDC4 @ =gUnknown_0849A00C
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _0802DDC8
	bl sub_0802DCA4
	b _0802DE12
	.align 2, 0
_0802DDC4: .4byte gUnknown_0849A00C
_0802DDC8:
	ldr r0, [r4]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0802DDEC
	ldr r1, _0802DDE8 @ =gUnknown_030033E4
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	bl sub_0802E4B4
	b _0802DE12
	.align 2, 0
_0802DDE8: .4byte gUnknown_030033E4
_0802DDEC:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802DE08
	ldr r1, _0802DE18 @ =gUnknown_030033E4
	movs r5, #0
	ldrsh r0, [r1, r5]
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_0802E2D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802DE12
_0802DE08:
	bl sub_0802A7C4
	movs r0, #0
	bl sub_0802776C
_0802DE12:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802DE18: .4byte gUnknown_030033E4

	thumb_func_start sub_0802DE1C
sub_0802DE1C: @ 0x0802DE1C
	push {r4, r5, lr}
	bl sub_08023824
	bl sub_080236E8
	movs r0, #4
	bl sub_08023908
	ldr r0, _0802DE5C @ =gUnknown_08499590
	ldr r2, [r0]
	ldr r4, _0802DE60 @ =gUnknown_08090C24
	ldr r3, [r4]
	ldrh r1, [r3, #2]
	lsls r1, r1, #1
	ldr r5, _0802DE64 @ =0x0000417A
	adds r0, r2, r5
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	ldr r1, _0802DE68 @ =0x00002852
	adds r2, r2, r1
	adds r2, r2, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r5, r4, #0
	cmp r0, #0
	bge _0802DE6C
	movs r0, #1
	bl sub_08023274
	b _0802DE72
	.align 2, 0
_0802DE5C: .4byte gUnknown_08499590
_0802DE60: .4byte gUnknown_08090C24
_0802DE64: .4byte 0x0000417A
_0802DE68: .4byte 0x00002852
_0802DE6C:
	movs r0, #1
	bl sub_08023274
_0802DE72:
	bl sub_08039264
	bl sub_0802DBF8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802DEE6
	ldr r0, _0802DEA0 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r4, #1
	ands r4, r1
	cmp r4, #0
	beq _0802DEA4
	ldr r1, [r5]
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r5, #2
	ldrsh r1, [r1, r5]
	bl sub_0802E60C
	b _0802DEE6
	.align 2, 0
_0802DEA0: .4byte gUnknown_03002EE0
_0802DEA4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0802DEE6
	ldr r0, _0802DEEC @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802DEC4
	ldr r0, _0802DEF0 @ =gUnknown_03003F38
	ldrb r1, [r0]
	movs r0, #0x11
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_0802DEC4:
	ldr r0, _0802DEF4 @ =gUnknown_030040D8
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_08029088
	bl sub_08035810
	bl sub_080258CC
	bl sub_08022A08
	ldr r0, _0802DEF8 @ =gUnknown_03003334
	strh r4, [r0]
	movs r0, #0x66
	bl sub_0803B4DC
_0802DEE6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802DEEC: .4byte gUnknown_03003FC0
_0802DEF0: .4byte gUnknown_03003F38
_0802DEF4: .4byte gUnknown_030040D8
_0802DEF8: .4byte gUnknown_03003334

	thumb_func_start sub_0802DEFC
sub_0802DEFC: @ 0x0802DEFC
	push {r4, r5, lr}
	bl sub_08023824
	bl sub_0802361C
	movs r0, #4
	bl sub_08023908
	movs r0, #5
	bl sub_08023274
	bl sub_0802DBF8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802DFA8
	ldr r0, _0802DF38 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r5, [r0, #4]
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0802DF40
	movs r0, #0x66
	bl sub_0803B4DC
	ldr r1, _0802DF3C @ =gUnknown_03003334
	movs r0, #0
	strh r0, [r1]
	b _0802DFA8
	.align 2, 0
_0802DF38: .4byte gUnknown_03002EE0
_0802DF3C: .4byte gUnknown_03003334
_0802DF40:
	ldr r0, _0802DFB0 @ =gUnknown_08499590
	ldr r2, [r0]
	ldr r3, _0802DFB4 @ =gUnknown_030033E4
	ldrh r1, [r3, #2]
	lsls r1, r1, #1
	ldr r4, _0802DFB8 @ =0x0000417A
	adds r0, r2, r4
	adds r0, r0, r1
	ldrh r0, [r0]
	ldrh r1, [r3]
	adds r0, r0, r1
	adds r2, #0x12
	adds r2, r2, r0
	ldrb r2, [r2]
	cmp r2, #0
	beq _0802DFA8
	lsrs r0, r2, #6
	adds r0, #1
	ldr r1, _0802DFBC @ =gUnknown_030033EC
	ldrh r1, [r1]
	cmp r0, r1
	bne _0802DFA8
	ldr r1, _0802DFC0 @ =gUnknown_08499594
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r4, r1, r0
	ldrb r1, [r4, #1]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0802DFA8
	adds r0, r3, #0
	ands r0, r5
	cmp r0, #0
	beq _0802DFA8
	ldr r0, _0802DFC4 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0802DFA2
	adds r1, r2, #0
	movs r0, #0x12
	movs r2, #0
	movs r3, #0
	bl sub_08034534
_0802DFA2:
	adds r0, r4, #0
	bl sub_0804018C
_0802DFA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802DFB0: .4byte gUnknown_08499590
_0802DFB4: .4byte gUnknown_030033E4
_0802DFB8: .4byte 0x0000417A
_0802DFBC: .4byte gUnknown_030033EC
_0802DFC0: .4byte gUnknown_08499594
_0802DFC4: .4byte gUnknown_03003FC0

	thumb_func_start sub_0802DFC8
sub_0802DFC8: @ 0x0802DFC8
	push {r4, lr}
	bl sub_08023824
	bl sub_080236E8
	movs r0, #4
	bl sub_08023908
	movs r0, #1
	bl sub_08023274
	ldr r0, _0802E008 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0802E000
	bl sub_08035810
	bl sub_080258CC
	bl sub_08022A08
	ldr r0, _0802E00C @ =gUnknown_03003334
	strh r4, [r0]
_0802E000:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802E008: .4byte gUnknown_03002EE0
_0802E00C: .4byte gUnknown_03003334

	thumb_func_start sub_0802E010
sub_0802E010: @ 0x0802E010
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0802E120 @ =gUnknown_08090C28
	ldr r1, [r0]
	ldr r1, [r1]
	ldrb r1, [r1]
	mov r8, r1
	mov sb, r0
	cmp r1, #0x20
	bls _0802E02C
	movs r0, #0x20
	mov r8, r0
_0802E02C:
	movs r3, #0
	mov r1, r8
	lsrs r6, r1, #1
	ldr r5, _0802E124 @ =gUnknown_0849957C
	movs r4, #0
	ldr r2, _0802E128 @ =0x000003FF
_0802E038:
	ldr r0, [r5]
	lsls r1, r3, #1
	adds r1, r1, r0
	strh r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r2
	bls _0802E038
	movs r3, #0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r3, r0
	bhs _0802E09A
	ldr r7, _0802E12C @ =gUnknown_03003F68
	mov ip, r0
_0802E058:
	ldr r0, [r7]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	movs r2, #0
	adds r4, r3, #1
	cmp r0, #0
	beq _0802E092
	ldr r6, _0802E124 @ =gUnknown_0849957C
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r5, r0, #0
_0802E06E:
	lsls r1, r2, #1
	adds r1, r1, r3
	ldr r0, [r6]
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r0, r2, r3
	adds r0, r0, r5
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r7]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	lsls r0, r0, #4
	cmp r2, r0
	blt _0802E06E
_0802E092:
	lsls r0, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r3, ip
	blo _0802E058
_0802E09A:
	mov r1, sb
	ldr r2, [r1]
	ldr r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0x1f
	bls _0802E10E
	movs r3, #0
	mov r7, r8
	subs r0, r0, r7
	asrs r0, r0, #1
	cmp r3, r0
	bge _0802E10E
	adds r5, r2, #0
_0802E0B4:
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	movs r2, #0
	adds r4, r3, #1
	cmp r0, #0
	beq _0802E0FC
	ldr r0, _0802E124 @ =gUnknown_0849957C
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	movs r7, #0xa0
	lsls r7, r7, #7
	adds r6, r7, #0
_0802E0D2:
	lsls r1, r2, #1
	mov r7, ip
	ldr r0, [r7]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r7, sb
	adds r0, r2, r7
	adds r0, r3, r0
	adds r0, r0, r6
	strh r0, [r1, #0x20]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	lsls r0, r0, #4
	cmp r2, r0
	blt _0802E0D2
_0802E0FC:
	lsls r0, r4, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r5]
	ldrb r0, [r0]
	mov r1, r8
	subs r0, r0, r1
	asrs r0, r0, #1
	cmp r3, r0
	blt _0802E0B4
_0802E10E:
	bl sub_08013AFC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E120: .4byte gUnknown_08090C28
_0802E124: .4byte gUnknown_0849957C
_0802E128: .4byte 0x000003FF
_0802E12C: .4byte gUnknown_03003F68

	thumb_func_start sub_0802E130
sub_0802E130: @ 0x0802E130
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0802E240 @ =gUnknown_08090C2C
	ldr r1, [r0]
	ldr r1, [r1]
	ldrb r1, [r1]
	mov r8, r1
	mov sb, r0
	cmp r1, #0x20
	bls _0802E14C
	movs r0, #0x20
	mov r8, r0
_0802E14C:
	movs r3, #0
	mov r1, r8
	lsrs r6, r1, #1
	ldr r5, _0802E244 @ =gUnknown_08499578
	movs r4, #0
	ldr r2, _0802E248 @ =0x000003FF
_0802E158:
	ldr r0, [r5]
	lsls r1, r3, #1
	adds r1, r1, r0
	strh r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r2
	bls _0802E158
	movs r3, #0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r3, r0
	bhs _0802E1BA
	ldr r7, _0802E24C @ =gUnknown_03003F68
	mov ip, r0
_0802E178:
	ldr r0, [r7]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	movs r2, #0
	adds r4, r3, #1
	cmp r0, #0
	beq _0802E1B2
	ldr r6, _0802E244 @ =gUnknown_08499578
	movs r0, #0xa0
	lsls r0, r0, #7
	adds r5, r0, #0
_0802E18E:
	lsls r1, r2, #1
	adds r1, r1, r3
	ldr r0, [r6]
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r0, r2, r3
	adds r0, r0, r5
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r7]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	lsls r0, r0, #4
	cmp r2, r0
	blt _0802E18E
_0802E1B2:
	lsls r0, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r3, ip
	blo _0802E178
_0802E1BA:
	mov r1, sb
	ldr r2, [r1]
	ldr r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0x1f
	bls _0802E22E
	movs r3, #0
	mov r7, r8
	subs r0, r0, r7
	asrs r0, r0, #1
	cmp r3, r0
	bge _0802E22E
	adds r5, r2, #0
_0802E1D4:
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	movs r2, #0
	adds r4, r3, #1
	cmp r0, #0
	beq _0802E21C
	ldr r0, _0802E244 @ =gUnknown_08499578
	mov ip, r0
	movs r1, #0x80
	lsls r1, r1, #1
	mov sb, r1
	movs r7, #0xa0
	lsls r7, r7, #7
	adds r6, r7, #0
_0802E1F2:
	lsls r1, r2, #1
	mov r7, ip
	ldr r0, [r7]
	adds r1, r3, r1
	lsls r1, r1, #1
	adds r1, r1, r0
	mov r7, sb
	adds r0, r2, r7
	adds r0, r3, r0
	adds r0, r0, r6
	strh r0, [r1, #0x20]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, [r5]
	ldrb r0, [r0, #1]
	lsrs r0, r0, #1
	lsls r0, r0, #4
	cmp r2, r0
	blt _0802E1F2
_0802E21C:
	lsls r0, r4, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r5]
	ldrb r0, [r0]
	mov r1, r8
	subs r0, r0, r1
	asrs r0, r0, #1
	cmp r3, r0
	blt _0802E1D4
_0802E22E:
	bl sub_08013AEC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E240: .4byte gUnknown_08090C2C
_0802E244: .4byte gUnknown_08499578
_0802E248: .4byte 0x000003FF
_0802E24C: .4byte gUnknown_03003F68

	thumb_func_start sub_0802E250
sub_0802E250: @ 0x0802E250
	push {lr}
	movs r0, #0x76
	bl sub_0803B4DC
	bl sub_0802C2B4
	pop {r0}
	bx r0

	thumb_func_start sub_0802E260
sub_0802E260: @ 0x0802E260
	push {lr}
	bl sub_08023824
	bl sub_08023518
	movs r0, #4
	bl sub_08023908
	bl sub_0802DBF8
	pop {r0}
	bx r0

	thumb_func_start sub_0802E278
sub_0802E278: @ 0x0802E278
	push {r4, lr}
	bl sub_08023824
	bl sub_08023518
	movs r0, #8
	bl sub_08023908
	bl sub_0802DBF8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802E2AC
	ldr r0, _0802E2B4 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0802E2AC
	bl sub_08012358
	ldr r0, _0802E2B8 @ =gUnknown_03003334
	strh r4, [r0]
_0802E2AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802E2B4: .4byte gUnknown_03002EE0
_0802E2B8: .4byte gUnknown_03003334

	thumb_func_start sub_0802E2BC
sub_0802E2BC: @ 0x0802E2BC
	push {lr}
	bl sub_080245D4
	ldr r1, _0802E2CC @ =gUnknown_03003334
	movs r0, #8
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0802E2CC: .4byte gUnknown_03003334

	thumb_func_start sub_0802E2D0
sub_0802E2D0: @ 0x0802E2D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r5, r7, #0x10
	asrs r0, r5, #0x10
	lsls r4, r6, #0x10
	asrs r1, r4, #0x10
	bl sub_0803DE94
	adds r2, r0, #0
	cmp r2, #0
	beq _0802E320
	ldr r0, _0802E318 @ =gUnknown_08499590
	ldr r1, [r0]
	ldr r0, _0802E31C @ =0x00002852
	adds r1, r1, r0
	adds r0, r2, #0
	movs r2, #0xff
	movs r3, #0
	bl sub_0803E9F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802E320
	bl sub_08024404
	mov r8, r5
	adds r7, r4, #0
	b _0802E474
	.align 2, 0
_0802E318: .4byte gUnknown_08499590
_0802E31C: .4byte 0x00002852
_0802E320:
	ldr r1, _0802E378 @ =gUnknown_08090C30
	mov sl, r1
	ldr r1, [r1]
	ldr r0, _0802E37C @ =gUnknown_08499590
	ldr r2, [r0]
	lsls r6, r6, #0x10
	mov sb, r6
	asrs r0, r6, #0xf
	ldr r4, _0802E380 @ =0x0000417A
	adds r3, r2, r4
	adds r3, r3, r0
	ldrh r0, [r3]
	lsls r7, r7, #0x10
	mov r8, r7
	mov r4, r8
	asrs r5, r4, #0x10
	adds r0, r0, r5
	adds r2, #0x12
	adds r0, r2, r0
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r6, _0802E384 @ =gUnknown_08090C34
	ldr r4, _0802E388 @ =gUnknown_08499594
	ldrb r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, [r4]
	adds r1, r1, r0
	ldr r0, _0802E38C @ =gUnknown_030040D8
	str r1, [r0]
	ldrh r0, [r3]
	adds r0, r0, r5
	adds r2, r2, r0
	ldrb r0, [r2]
	mov r7, sb
	mov r5, sl
	adds r4, r6, #0
	cmp r0, #0
	bne _0802E390
	bl sub_0802E2BC
	b _0802E48C
	.align 2, 0
_0802E378: .4byte gUnknown_08090C30
_0802E37C: .4byte gUnknown_08499590
_0802E380: .4byte 0x0000417A
_0802E384: .4byte gUnknown_08090C34
_0802E388: .4byte gUnknown_08499594
_0802E38C: .4byte gUnknown_030040D8
_0802E390:
	adds r0, r1, #0
	bl sub_08041FE0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _0802E3BC @ =gUnknown_030040D8
	ldr r0, [r1]
	bl sub_0804203C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r6, #0
	bne _0802E3C0
	cmp r0, #0
	bne _0802E3C0
	movs r0, #0x68
	bl sub_0803B4DC
	movs r0, #0
	b _0802E48E
	.align 2, 0
_0802E3BC: .4byte gUnknown_030040D8
_0802E3C0:
	ldr r0, _0802E49C @ =gUnknown_08499590
	ldr r0, [r0]
	ldr r2, _0802E4A0 @ =0x00002852
	adds r0, r0, r2
	bl sub_0801F92C
	ldr r4, [r4]
	mov sb, r4
	ldr r0, [r4]
	bl sub_08035584
	bl sub_08024404
	bl sub_080258CC
	cmp r6, #0
	beq _0802E420
	ldr r4, _0802E4A4 @ =gUnknown_03004480
	ldr r0, [r5]
	ldrb r0, [r0]
	lsrs r0, r0, #6
	adds r0, #1
	strh r0, [r4]
	mov r3, sb
	ldr r0, [r3]
	bl sub_080202A4
	ldr r0, _0802E4A8 @ =gUnknown_030033EC
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r0, _0802E4AC @ =gUnknown_03003340
	asrs r4, r7, #0xe
	adds r4, r4, r0
	mov r0, r8
	asrs r5, r0, #0x10
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #0
	strb r1, [r0]
	movs r0, #0x40
	bl sub_0801FE68
	ldr r0, [r4]
	adds r0, r0, r5
	movs r2, #1
	rsbs r2, r2, #0
	adds r1, r2, #0
	strb r1, [r0]
_0802E420:
	mov r3, sl
	cmp r3, #0
	beq _0802E474
	cmp r6, #0
	bne _0802E430
	movs r0, #0xff
	bl sub_0801F838
_0802E430:
	mov r4, sb
	ldr r2, [r4]
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	bl sub_080201E0
	cmp r6, #0
	beq _0802E474
	ldr r5, _0802E4AC @ =gUnknown_03003340
	asrs r1, r7, #0x10
	lsls r2, r1, #2
	adds r2, r2, r5
	mov r0, r8
	asrs r4, r0, #0x10
	ldr r0, [r2]
	adds r0, r4, r0
	subs r0, #1
	movs r3, #0
	strb r3, [r0]
	ldr r0, [r2]
	adds r0, r4, r0
	strb r3, [r0, #1]
	subs r0, r1, #1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	adds r0, r0, r4
	strb r3, [r0]
	adds r1, #1
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	adds r0, r0, r4
	strb r3, [r0]
_0802E474:
	mov r1, r8
	lsrs r0, r1, #0x10
	lsrs r1, r7, #0x10
	movs r2, #1
	bl sub_08022990
	ldr r1, _0802E4B0 @ =gUnknown_03003334
	movs r0, #6
	strh r0, [r1]
	movs r0, #0x69
	bl sub_0803B4DC
_0802E48C:
	movs r0, #1
_0802E48E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802E49C: .4byte gUnknown_08499590
_0802E4A0: .4byte 0x00002852
_0802E4A4: .4byte gUnknown_03004480
_0802E4A8: .4byte gUnknown_030033EC
_0802E4AC: .4byte gUnknown_03003340
_0802E4B0: .4byte gUnknown_03003334

	thumb_func_start sub_0802E4B4
sub_0802E4B4: @ 0x0802E4B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0
	bl sub_0801B780
	ldr r1, _0802E53C @ =gUnknown_030040DC
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0802E540 @ =gUnknown_030033E8
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	ldr r1, _0802E544 @ =gUnknown_03000558
	strb r0, [r1]
	ldr r0, _0802E548 @ =gUnknown_03003F38
	mov r8, r0
	ldr r1, _0802E54C @ =gUnknown_08499590
	mov sb, r1
	ldr r1, [r1]
	lsls r4, r4, #0x10
	str r4, [sp]
	asrs r6, r4, #0x10
	lsls r7, r6, #1
	ldr r2, _0802E550 @ =0x0000417A
	adds r0, r1, r2
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r5, r5, #0x10
	mov sl, r5
	asrs r4, r5, #0x10
	adds r0, r0, r4
	adds r1, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	mov r1, r8
	strb r0, [r1]
	ldr r5, _0802E554 @ =gUnknown_030040D8
	ldr r2, _0802E558 @ =gUnknown_08499594
	ldrb r0, [r1]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r5]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_080242B0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802E55C
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0802D5E8
	b _0802E5E6
	.align 2, 0
_0802E53C: .4byte gUnknown_030040DC
_0802E540: .4byte gUnknown_030033E8
_0802E544: .4byte gUnknown_03000558
_0802E548: .4byte gUnknown_03003F38
_0802E54C: .4byte gUnknown_08499590
_0802E550: .4byte 0x0000417A
_0802E554: .4byte gUnknown_030040D8
_0802E558: .4byte gUnknown_08499594
_0802E55C:
	mov r2, sb
	ldr r1, [r2]
	ldr r2, _0802E588 @ =0x0000417A
	adds r0, r1, r2
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r4
	adds r1, #0x12
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0802E582
	ldr r2, [r5]
	ldrb r1, [r2, #1]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0802E58C
_0802E582:
	bl sub_0802D458
	b _0802E5E6
	.align 2, 0
_0802E588: .4byte 0x0000417A
_0802E58C:
	adds r0, r2, #0
	bl sub_08074320
	ldr r1, _0802E5F8 @ =gUnknown_03003110
	movs r0, #4
	strb r0, [r1]
	ldr r0, [r5]
	bl sub_08035584
	bl sub_08024454
	bl sub_080258CC
	ldr r4, _0802E5FC @ =gUnknown_03004480
	mov r1, r8
	ldrb r0, [r1]
	lsrs r0, r0, #6
	adds r0, #1
	strh r0, [r4]
	mov r2, sb
	ldr r0, [r2]
	ldr r1, _0802E600 @ =0x00002852
	adds r0, r0, r1
	bl sub_0801F92C
	ldr r0, [r5]
	bl sub_080202A4
	ldr r0, _0802E604 @ =gUnknown_030033EC
	ldrh r0, [r0]
	strh r0, [r4]
	mov r2, sl
	lsrs r0, r2, #0x10
	ldr r2, [sp]
	lsrs r1, r2, #0x10
	movs r2, #0
	bl sub_08022990
	ldr r0, _0802E608 @ =gUnknown_03003334
	strh r6, [r0]
	bl sub_08038C98
	movs r0, #0x69
	bl sub_0803B4DC
_0802E5E6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E5F8: .4byte gUnknown_03003110
_0802E5FC: .4byte gUnknown_03004480
_0802E600: .4byte 0x00002852
_0802E604: .4byte gUnknown_030033EC
_0802E608: .4byte gUnknown_03003334

	thumb_func_start sub_0802E60C
sub_0802E60C: @ 0x0802E60C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r0, #0x10
	asrs r0, r0, #0x10
	lsrs r6, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_0802E724
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802E62C
	movs r0, #0x68
	bl sub_0803B4DC
	b _0802E67E
_0802E62C:
	bl sub_08022A08
	ldr r5, _0802E684 @ =gUnknown_03003F24
	ldr r0, _0802E688 @ =gUnknown_030040D8
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	strh r0, [r5]
	ldrb r0, [r1, #3]
	strh r0, [r5, #2]
	ldr r4, _0802E68C @ =gUnknown_03003100
	strh r7, [r4]
	strh r6, [r4, #2]
	bl sub_08034F54
	ldr r6, _0802E690 @ =gUnknown_03003334
	movs r0, #3
	strh r0, [r6]
	ldr r1, [r5]
	ldr r0, [r4]
	cmp r1, r0
	beq _0802E67E
	bl sub_08038AD8
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #2
	ldrsh r1, [r5, r2]
	ldr r4, _0802E694 @ =gUnknown_03003110
	adds r2, r4, #0
	movs r3, #4
	bl sub_0802E7C8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802E678
	movs r0, #5
	strh r0, [r6]
_0802E678:
	adds r0, r4, #0
	bl sub_08025BB4
_0802E67E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802E684: .4byte gUnknown_03003F24
_0802E688: .4byte gUnknown_030040D8
_0802E68C: .4byte gUnknown_03003100
_0802E690: .4byte gUnknown_03003334
_0802E694: .4byte gUnknown_03003110

	thumb_func_start sub_0802E698
sub_0802E698: @ 0x0802E698
	push {lr}
	ldr r1, _0802E6B8 @ =gUnknown_03003100
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_08022AAC
	bl sub_0802D558
	ldr r1, _0802E6BC @ =gUnknown_03003334
	movs r0, #4
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0802E6B8: .4byte gUnknown_03003100
_0802E6BC: .4byte gUnknown_03003334

	thumb_func_start sub_0802E6C0
sub_0802E6C0: @ 0x0802E6C0
	push {lr}
	bl sub_08034F60
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802E6E8
	bl sub_08035810
	bl sub_080258CC
	ldr r0, _0802E6E4 @ =gUnknown_030040D8
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	bl sub_0802E4B4
	b _0802E6EE
	.align 2, 0
_0802E6E4: .4byte gUnknown_030040D8
_0802E6E8:
	ldr r1, _0802E6F4 @ =gUnknown_03003334
	movs r0, #0
	strh r0, [r1]
_0802E6EE:
	pop {r0}
	bx r0
	.align 2, 0
_0802E6F4: .4byte gUnknown_03003334

	thumb_func_start sub_0802E6F8
sub_0802E6F8: @ 0x0802E6F8
	push {lr}
	ldr r1, _0802E71C @ =gUnknown_03003100
	movs r2, #0
	ldrsh r0, [r1, r2]
	movs r2, #2
	ldrsh r1, [r1, r2]
	bl sub_08022AAC
	bl sub_08034F48
	bl sub_080424FC
	ldr r1, _0802E720 @ =gUnknown_03003334
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0802E71C: .4byte gUnknown_03003100
_0802E720: .4byte gUnknown_03003334

	thumb_func_start sub_0802E724
sub_0802E724: @ 0x0802E724
	push {r4, r5, r6, r7, lr}
	ldr r4, _0802E7A4 @ =gUnknown_08499594
	ldr r2, _0802E7A8 @ =gUnknown_08499590
	ldr r2, [r2]
	lsls r1, r1, #0x10
	asrs r6, r1, #0x10
	lsls r3, r6, #1
	ldr r5, _0802E7AC @ =0x0000417A
	adds r1, r2, r5
	adds r1, r1, r3
	ldrh r1, [r1]
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	adds r1, r1, r5
	adds r2, #0x12
	adds r2, r2, r1
	ldrb r2, [r2]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r4]
	adds r7, r1, r0
	ldr r0, _0802E7B0 @ =gUnknown_03003F38
	ldrb r0, [r0]
	movs r4, #0xc0
	adds r3, r4, #0
	ands r3, r0
	ldr r0, _0802E7B4 @ =gUnknown_03003F2C
	ldrh r0, [r0]
	cmp r3, r0
	bne _0802E79E
	ldr r1, _0802E7B8 @ =gUnknown_03003340
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0x78
	bhi _0802E79E
	cmp r2, #0
	beq _0802E7C0
	ands r2, r4
	cmp r2, r3
	bne _0802E79E
	ldr r0, _0802E7BC @ =gUnknown_030040D8
	ldr r0, [r0]
	adds r1, r7, #0
	bl sub_08025FC0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802E7C0
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080422A8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _0802E7C0
_0802E79E:
	movs r0, #0
	b _0802E7C2
	.align 2, 0
_0802E7A4: .4byte gUnknown_08499594
_0802E7A8: .4byte gUnknown_08499590
_0802E7AC: .4byte 0x0000417A
_0802E7B0: .4byte gUnknown_03003F38
_0802E7B4: .4byte gUnknown_03003F2C
_0802E7B8: .4byte gUnknown_03003340
_0802E7BC: .4byte gUnknown_030040D8
_0802E7C0:
	movs r0, #1
_0802E7C2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802E7C8
sub_0802E7C8: @ 0x0802E7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	mov r7, sb
	mov r6, r8
	movs r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #4
	bne _0802E7F6
	b _0802E90E
_0802E7F6:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0802E800
	b _0802E90E
_0802E800:
	ldr r0, _0802E818 @ =gUnknown_03003100
	mov sl, r0
_0802E804:
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0802E834
	cmp r0, #1
	bgt _0802E81C
	cmp r0, #0
	beq _0802E826
	b _0802E852
	.align 2, 0
_0802E818: .4byte gUnknown_03003100
_0802E81C:
	cmp r0, #2
	beq _0802E840
	cmp r0, #3
	beq _0802E84A
	b _0802E852
_0802E826:
	lsls r0, r7, #0x10
	ldr r1, _0802E830 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r7, r0, #0x10
	b _0802E852
	.align 2, 0
_0802E830: .4byte 0xFFFF0000
_0802E834:
	lsls r0, r7, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r7, r0, #0x10
	b _0802E852
_0802E840:
	lsls r0, r6, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	b _0802E850
_0802E84A:
	lsls r0, r6, #0x10
	ldr r1, _0802E8D0 @ =0xFFFF0000
	adds r0, r0, r1
_0802E850:
	lsrs r6, r0, #0x10
_0802E852:
	ldr r0, _0802E8D4 @ =gUnknown_08499590
	ldr r2, [r0]
	lsls r4, r6, #0x10
	asrs r0, r4, #0xf
	ldr r3, _0802E8D8 @ =0x0000417A
	adds r1, r2, r3
	adds r1, r1, r0
	lsls r3, r7, #0x10
	asrs r0, r3, #0x10
	ldrh r1, [r1]
	adds r0, r0, r1
	ldr r1, _0802E8DC @ =0x0000051A
	adds r2, r2, r1
	adds r2, r2, r0
	ldrb r2, [r2]
	mov ip, r3
	cmp r2, #0
	beq _0802E8F0
	lsrs r2, r2, #6
	ldr r0, _0802E8E0 @ =gUnknown_08499598
	ldr r3, [r0]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	adds r1, #0x66
	ldr r0, _0802E8E4 @ =gUnknown_030033EC
	ldrh r2, [r0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r3
	adds r0, #0x2a
	ldrb r1, [r1]
	ldrb r0, [r0]
	cmp r1, r0
	beq _0802E8F0
	movs r0, #0xa
	strb r0, [r5]
	mov r2, sp
	ldrb r2, [r2]
	strb r2, [r5, #1]
	mov r0, sb
	mov r3, sl
	strh r0, [r3]
	mov r1, r8
	strh r1, [r3, #2]
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0xe
	ldr r3, _0802E8E8 @ =gUnknown_03003340
	adds r0, r0, r3
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r0]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r3, _0802E8EC @ =gUnknown_03004074
	strb r0, [r3]
	movs r0, #1
	b _0802E910
	.align 2, 0
_0802E8D0: .4byte 0xFFFF0000
_0802E8D4: .4byte gUnknown_08499590
_0802E8D8: .4byte 0x0000417A
_0802E8DC: .4byte 0x0000051A
_0802E8E0: .4byte gUnknown_08499598
_0802E8E4: .4byte gUnknown_030033EC
_0802E8E8: .4byte gUnknown_03003340
_0802E8EC: .4byte gUnknown_03004074
_0802E8F0:
	mov r0, ip
	lsrs r0, r0, #0x10
	mov sb, r0
	lsrs r4, r4, #0x10
	mov r8, r4
	adds r5, #1
	movs r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #4
	beq _0802E90E
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0802E90E
	b _0802E804
_0802E90E:
	movs r0, #0
_0802E910:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802E920
sub_0802E920: @ 0x0802E920
	push {lr}
	ldr r1, _0802E93C @ =gUnknown_03007FF8
	movs r0, #1
	strh r0, [r1]
	bl sub_080128D0
	bl sub_08011FF0
	bl sub_0803B3F8
	bl sub_0803B408
	pop {r0}
	bx r0
	.align 2, 0
_0802E93C: .4byte gUnknown_03007FF8

	thumb_func_start sub_0802E940
sub_0802E940: @ 0x0802E940
	push {lr}
	ldr r0, _0802E95C @ =0x04000130
	ldrh r1, [r0]
	movs r0, #9
	bics r0, r1
	cmp r0, #0
	beq _0802E952
	bl sub_08036CB4
_0802E952:
	bl VBlankIntrWait
	pop {r0}
	bx r0
	.align 2, 0
_0802E95C: .4byte 0x04000130

	thumb_func_start sub_0802E960
sub_0802E960: @ 0x0802E960
	push {r4, lr}
	ldr r0, _0802E9F0 @ =gUnknown_0849D16C
	bl sub_08012C58
	bl sub_0803B37C
	bl Proc_Init
	bl sub_08015184
	ldr r2, _0802E9F4 @ =gUnknown_030030CC
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	ldr r2, _0802E9F8 @ =gUnknown_030030E0
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	strb r0, [r2]
	ldr r1, _0802E9FC @ =gUnknown_03002020
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, _0802EA00 @ =gUnknown_03002B28
	movs r4, #0
	strh r4, [r0]
	ldr r0, _0802EA04 @ =gUnknown_03001FFC
	strh r4, [r0]
	ldr r0, _0802EA08 @ =gUnknown_0816DB88
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #8
	bl CpuFastSet
	ldr r0, _0802EA0C @ =gUnknown_0849B020
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl sub_08011CAC
	ldr r0, _0802EA10 @ =gUnknown_0849B024
	ldr r0, [r0]
	ldr r1, _0802EA14 @ =0x06007000
	bl sub_08011CAC
	ldr r0, _0802EA18 @ =gUnknown_03001FF8
	strh r4, [r0]
	ldr r0, _0802EA1C @ =gUnknown_03001418
	strh r4, [r0]
	bl sub_080128D0
	ldr r0, _0802EA20 @ =sub_0802E940
	bl sub_080366C4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802E9F0: .4byte gUnknown_0849D16C
_0802E9F4: .4byte gUnknown_030030CC
_0802E9F8: .4byte gUnknown_030030E0
_0802E9FC: .4byte gUnknown_03002020
_0802EA00: .4byte gUnknown_03002B28
_0802EA04: .4byte gUnknown_03001FFC
_0802EA08: .4byte gUnknown_0816DB88
_0802EA0C: .4byte gUnknown_0849B020
_0802EA10: .4byte gUnknown_0849B024
_0802EA14: .4byte 0x06007000
_0802EA18: .4byte gUnknown_03001FF8
_0802EA1C: .4byte gUnknown_03001418
_0802EA20: .4byte sub_0802E940

	thumb_func_start sub_0802EA24
sub_0802EA24: @ 0x0802EA24
	push {lr}
	ldr r1, _0802EA4C @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	ldr r1, _0802EA50 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0802EA54 @ =sub_0802E920
	bl sub_080366D0
	ldr r0, _0802EA58 @ =sub_0802E960
	bl sub_080366C4
	pop {r0}
	bx r0
	.align 2, 0
_0802EA4C: .4byte 0x04000004
_0802EA50: .4byte 0x04000208
_0802EA54: .4byte sub_0802E920
_0802EA58: .4byte sub_0802E960

	thumb_func_start sub_0802EA5C
sub_0802EA5C: @ 0x0802EA5C
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _0802EAC8 @ =gUnknown_02023894
	movs r3, #0
	str r3, [r0]
	ldr r0, _0802EACC @ =gUnknown_03003F6C
	str r2, [r0]
	ldr r0, _0802EAD0 @ =gUnknown_03000578
	str r3, [r0]
	ldr r0, _0802EAD4 @ =gUnknown_03000570
	str r3, [r0]
	ldr r4, _0802EAD8 @ =gUnknown_03000560
	ldrh r1, [r2, #8]
	movs r0, #3
	ands r0, r1
	str r0, [r4]
	ldr r1, _0802EADC @ =gUnknown_03000564
	ldr r0, [r2]
	str r0, [r1]
	ldrh r0, [r2, #6]
	cmp r0, #0
	bne _0802EA8C
	movs r0, #0xa
	strh r0, [r2, #6]
_0802EA8C:
	ldr r0, _0802EAE0 @ =0x04000134
	strh r3, [r0]
	ldr r2, _0802EAE4 @ =0x04000128
	ldr r0, [r4]
	movs r4, #0x80
	lsls r4, r4, #6
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0802EAE8 @ =0x0400010E
	strh r3, [r0]
	ldr r1, _0802EAEC @ =sub_0802ED40
	movs r0, #7
	bl sub_0801BB00
	ldr r1, _0802EAF0 @ =sub_0802ED00
	movs r0, #6
	bl sub_0801BB00
	ldr r1, _0802EAF4 @ =0x000100C0
	movs r0, #2
	bl sub_0801BB10
	ldr r1, _0802EAF8 @ =gUnknown_0300055C
	movs r0, #0xf0
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802EAC8: .4byte gUnknown_02023894
_0802EACC: .4byte gUnknown_03003F6C
_0802EAD0: .4byte gUnknown_03000578
_0802EAD4: .4byte gUnknown_03000570
_0802EAD8: .4byte gUnknown_03000560
_0802EADC: .4byte gUnknown_03000564
_0802EAE0: .4byte 0x04000134
_0802EAE4: .4byte 0x04000128
_0802EAE8: .4byte 0x0400010E
_0802EAEC: .4byte sub_0802ED40
_0802EAF0: .4byte sub_0802ED00
_0802EAF4: .4byte 0x000100C0
_0802EAF8: .4byte gUnknown_0300055C

	thumb_func_start sub_0802EAFC
sub_0802EAFC: @ 0x0802EAFC
	ldr r0, _0802EB18 @ =gUnknown_03000570
	movs r2, #0
	str r2, [r0]
	ldr r3, _0802EB1C @ =gUnknown_03000564
	ldr r0, [r3]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3]
	ldr r0, _0802EB20 @ =gUnknown_03000568
	str r2, [r0]
	ldr r0, _0802EB24 @ =gUnknown_03000574
	str r2, [r0]
	bx lr
	.align 2, 0
_0802EB18: .4byte gUnknown_03000570
_0802EB1C: .4byte gUnknown_03000564
_0802EB20: .4byte gUnknown_03000568
_0802EB24: .4byte gUnknown_03000574

	thumb_func_start sub_0802EB28
sub_0802EB28: @ 0x0802EB28
	push {r4, r5, lr}
	ldr r5, _0802EB3C @ =gUnknown_03000574
	ldr r3, [r5]
	cmp r3, #0
	beq _0802EB44
	cmp r3, #1
	beq _0802EBA8
	ldr r0, _0802EB40 @ =gUnknown_0300055C
	ldr r0, [r0]
	b _0802EC54
	.align 2, 0
_0802EB3C: .4byte gUnknown_03000574
_0802EB40: .4byte gUnknown_0300055C
_0802EB44:
	ldr r0, _0802EB8C @ =0x04000134
	strh r3, [r0]
	ldr r1, _0802EB90 @ =0x0400012A
	ldr r0, _0802EB94 @ =gUnknown_03003F6C
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	mvns r0, r0
	strh r0, [r1]
	ldr r2, _0802EB98 @ =0x04000128
	ldr r0, _0802EB9C @ =gUnknown_03000560
	ldr r0, [r0]
	movs r4, #0xc0
	lsls r4, r4, #7
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	adds r1, r0, #0
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0802EC50
	ldr r2, _0802EBA0 @ =gUnknown_0300055C
	movs r0, #4
	ands r1, r0
	str r1, [r2]
	ldr r0, [r2]
	cmp r0, #0
	beq _0802EB82
	movs r0, #0xf0
	str r0, [r2]
_0802EB82:
	ldr r0, _0802EBA4 @ =gUnknown_02023894
	str r3, [r0]
	movs r0, #1
	str r0, [r5]
	b _0802EC50
	.align 2, 0
_0802EB8C: .4byte 0x04000134
_0802EB90: .4byte 0x0400012A
_0802EB94: .4byte gUnknown_03003F6C
_0802EB98: .4byte 0x04000128
_0802EB9C: .4byte gUnknown_03000560
_0802EBA0: .4byte gUnknown_0300055C
_0802EBA4: .4byte gUnknown_02023894
_0802EBA8:
	ldr r0, _0802EBF4 @ =0x04000128
	ldrh r0, [r0]
	adds r1, r0, #0
	ldr r0, _0802EBF8 @ =gUnknown_02023894
	ldr r0, [r0]
	cmp r0, #0
	beq _0802EC08
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0802EC08
	ldr r4, _0802EBFC @ =gUnknown_0300055C
	movs r0, #0x30
	ands r0, r1
	asrs r0, r0, #4
	str r0, [r4]
	ldr r2, _0802EC00 @ =gUnknown_03000564
	ldr r0, [r2]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	ldr r0, [r2]
	movs r3, #2
	orrs r0, r3
	str r0, [r2]
	ldr r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, r1
	bne _0802EBEC
	ldr r0, _0802EC04 @ =gUnknown_03000570
	str r3, [r0]
_0802EBEC:
	str r3, [r5]
	ldr r0, [r4]
	b _0802EC54
	.align 2, 0
_0802EBF4: .4byte 0x04000128
_0802EBF8: .4byte gUnknown_02023894
_0802EBFC: .4byte gUnknown_0300055C
_0802EC00: .4byte gUnknown_03000564
_0802EC04: .4byte gUnknown_03000570
_0802EC08:
	ldr r1, _0802EC2C @ =0x0400012A
	ldr r0, _0802EC30 @ =gUnknown_03003F6C
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	mvns r0, r0
	strh r0, [r1]
	ldr r0, _0802EC34 @ =gUnknown_0300055C
	ldr r0, [r0]
	cmp r0, #0
	beq _0802EC40
	ldr r2, _0802EC38 @ =0x04000128
	ldr r0, _0802EC3C @ =gUnknown_03000560
	ldr r0, [r0]
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	b _0802EC4C
	.align 2, 0
_0802EC2C: .4byte 0x0400012A
_0802EC30: .4byte gUnknown_03003F6C
_0802EC34: .4byte gUnknown_0300055C
_0802EC38: .4byte 0x04000128
_0802EC3C: .4byte gUnknown_03000560
_0802EC40:
	ldr r2, _0802EC5C @ =0x04000128
	ldr r0, _0802EC60 @ =gUnknown_03000560
	ldr r0, [r0]
	movs r4, #0xc1
	lsls r4, r4, #7
	adds r1, r4, #0
_0802EC4C:
	orrs r0, r1
	strh r0, [r2]
_0802EC50:
	movs r0, #1
	rsbs r0, r0, #0
_0802EC54:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802EC5C: .4byte 0x04000128
_0802EC60: .4byte gUnknown_03000560

	thumb_func_start sub_0802EC64
sub_0802EC64: @ 0x0802EC64
	ldr r2, _0802EC80 @ =gUnknown_03000578
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, _0802EC84 @ =gUnknown_08090C44
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0802EC7C
	str r0, [r2]
_0802EC7C:
	bx lr
	.align 2, 0
_0802EC80: .4byte gUnknown_03000578
_0802EC84: .4byte gUnknown_08090C44

	thumb_func_start sub_0802EC88
sub_0802EC88: @ 0x0802EC88
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r1, #0
	ldr r0, _0802ECE4 @ =0x00007FFF
	cmp r4, r0
	beq _0802ECA8
	ldr r0, _0802ECE8 @ =0x00005FFF
	cmp r4, r0
	bne _0802ECAA
_0802ECA8:
	movs r1, #1
_0802ECAA:
	ldr r0, _0802ECE4 @ =0x00007FFF
	cmp r5, r0
	beq _0802ECB6
	ldr r0, _0802ECE8 @ =0x00005FFF
	cmp r4, r0
	bne _0802ECB8
_0802ECB6:
	adds r1, #1
_0802ECB8:
	ldr r0, _0802ECE4 @ =0x00007FFF
	cmp r2, r0
	beq _0802ECC4
	ldr r0, _0802ECE8 @ =0x00005FFF
	cmp r4, r0
	bne _0802ECC6
_0802ECC4:
	adds r1, #1
_0802ECC6:
	ldr r0, _0802ECE4 @ =0x00007FFF
	cmp r3, r0
	beq _0802ECD2
	ldr r0, _0802ECE8 @ =0x00005FFF
	cmp r4, r0
	bne _0802ECD4
_0802ECD2:
	adds r1, #1
_0802ECD4:
	cmp r1, #0
	ble _0802ECDC
	bl sub_0802EC64
_0802ECDC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802ECE4: .4byte 0x00007FFF
_0802ECE8: .4byte 0x00005FFF

	thumb_func_start sub_0802ECEC
sub_0802ECEC: @ 0x0802ECEC
	ldr r1, _0802ECFC @ =0x0400010C
	rsbs r0, r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc3
	strh r0, [r1]
	bx lr
	.align 2, 0
_0802ECFC: .4byte 0x0400010C

	thumb_func_start sub_0802ED00
sub_0802ED00: @ 0x0802ED00
	ldr r1, _0802ED2C @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0802ED30 @ =gUnknown_03000570
	ldr r0, [r0]
	cmp r0, #0
	bne _0802ED1A
	ldr r0, _0802ED34 @ =gUnknown_03000564
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #2
	bne _0802ED2A
_0802ED1A:
	ldr r2, _0802ED38 @ =0x04000128
	ldr r0, _0802ED3C @ =gUnknown_03000560
	ldr r0, [r0]
	movs r3, #0xc1
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0802ED2A:
	bx lr
	.align 2, 0
_0802ED2C: .4byte 0x0400010E
_0802ED30: .4byte gUnknown_03000570
_0802ED34: .4byte gUnknown_03000564
_0802ED38: .4byte 0x04000128
_0802ED3C: .4byte gUnknown_03000560

	thumb_func_start sub_0802ED40
sub_0802ED40: @ 0x0802ED40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov r8, r0
	ldr r0, _0802EE34 @ =gUnknown_02023894
	movs r6, #1
	str r6, [r0]
	ldr r3, _0802EE38 @ =gUnknown_08090C68
	ldr r5, [r3]
	ldr r0, [r5]
	ldrb r1, [r0, #0x1a]
	mov r1, r8
	strb r1, [r0, #0x1a]
	ldr r2, _0802EE3C @ =gUnknown_08090C6C
	ldr r0, [r2]
	str r6, [r0]
	ldr r0, _0802EE40 @ =0x0400010E
	mov r1, r8
	strh r1, [r0]
	ldr r4, [r5]
	ldr r1, _0802EE44 @ =gUnknown_0300056C
	ldr r7, _0802EE48 @ =0x04000128
	ldrh r0, [r7]
	strh r0, [r1]
	ldrh r0, [r1]
	ldrh r1, [r4, #2]
	strh r0, [r4, #2]
	ldrh r0, [r4, #4]
	mov sl, r3
	cmp r0, #6
	beq _0802ED92
	ldrh r0, [r4, #2]
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #6]
	strb r0, [r4, #6]
_0802ED92:
	ldr r0, _0802EE4C @ =0x04000120
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0802EE50 @ =gUnknown_03000560
	ldr r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7]
	ldr r1, _0802EE54 @ =0x0400012A
	ldr r3, _0802EE58 @ =0x00007FFF
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _0802EE5C @ =gUnknown_03000570
	ldr r0, [r1]
	cmp r0, #0
	bne _0802EDBC
	b _0802F012
_0802EDBC:
	movs r0, #2
	str r0, [r1]
	ldr r2, [r5]
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r6, #0
	lsls r1, r0
	ldrb r0, [r2, #8]
	strb r1, [r2, #8]
	movs r4, #0
	ldr r0, _0802EE60 @ =0x0000FFFF
	mov sb, r0
	mov r5, sp
	movs r7, #0
_0802EDDA:
	ldrh r0, [r5]
	cmp r0, sb
	beq _0802EE04
	mov r1, sl
	ldr r2, [r1]
	ldr r0, [r2]
	adds r0, #0xa
	adds r1, r0, r4
	ldrb r0, [r1]
	cmp r0, #0
	bne _0802EDF6
	ldrb r0, [r1]
	movs r0, #1
	strb r0, [r1]
_0802EDF6:
	ldr r2, [r2]
	movs r1, #1
	lsls r1, r4
	ldrb r0, [r2, #8]
	orrs r1, r0
	ldrb r0, [r2, #8]
	strb r1, [r2, #8]
_0802EE04:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802EE70
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xe
	adds r0, r0, r7
	ldrh r0, [r0]
	cmp r0, sb
	bne _0802EE64
	adds r0, r1, #0
	adds r0, #0x16
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r1, #1
	ldrb r2, [r0]
	b _0802EE6E
	.align 2, 0
_0802EE34: .4byte gUnknown_02023894
_0802EE38: .4byte gUnknown_08090C68
_0802EE3C: .4byte gUnknown_08090C6C
_0802EE40: .4byte 0x0400010E
_0802EE44: .4byte gUnknown_0300056C
_0802EE48: .4byte 0x04000128
_0802EE4C: .4byte 0x04000120
_0802EE50: .4byte gUnknown_03000560
_0802EE54: .4byte 0x0400012A
_0802EE58: .4byte 0x00007FFF
_0802EE5C: .4byte gUnknown_03000570
_0802EE60: .4byte 0x0000FFFF
_0802EE64:
	adds r0, r1, #0
	adds r0, #0x16
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r1, #0
_0802EE6E:
	strb r1, [r0]
_0802EE70:
	mov r3, sl
	ldr r0, [r3]
	ldr r6, [r0]
	adds r0, r6, #0
	adds r0, #0xe
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r2, [r0]
	strh r1, [r0]
	ldr r2, _0802EED0 @ =gUnknown_03003F48
	adds r2, r7, r2
	ldrh r0, [r2]
	lsls r0, r0, #3
	adds r0, r7, r0
	ldr r1, _0802EED4 @ =gUnknown_02025C18
	adds r0, r0, r1
	ldrh r1, [r5]
	ldrh r3, [r0]
	strh r1, [r0]
	ldrh r0, [r2]
	adds r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r3, _0802EED8 @ =0x000003FF
	adds r0, r3, #0
	ands r1, r0
	ldrh r0, [r2]
	strh r1, [r2]
	adds r5, #2
	adds r7, #2
	adds r4, #1
	cmp r4, #3
	ble _0802EDDA
	adds r1, r6, #0
	ldrh r0, [r1, #4]
	cmp r0, #4
	bhi _0802EEBE
	b _0802F012
_0802EEBE:
	ldrb r0, [r1, #1]
	cmp r0, #2
	beq _0802EF54
	cmp r0, #2
	bgt _0802EEDC
	cmp r0, #1
	beq _0802EEE2
	b _0802F012
	.align 2, 0
_0802EED0: .4byte gUnknown_03003F48
_0802EED4: .4byte gUnknown_02025C18
_0802EED8: .4byte 0x000003FF
_0802EEDC:
	cmp r0, #3
	beq _0802EFB8
	b _0802F012
_0802EEE2:
	ldr r0, _0802EF38 @ =gUnknown_0300410C
	ldr r3, _0802EF3C @ =gUnknown_030040CC
	ldrh r1, [r0]
	ldrh r0, [r3]
	cmp r1, r0
	beq _0802EF10
	ldr r1, _0802EF40 @ =gUnknown_02025818
	ldrh r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	add r0, sp, #8
	strh r1, [r0]
	ldrh r1, [r3]
	adds r1, #1
	strh r1, [r3]
	ldrh r2, [r3]
	ldr r1, _0802EF44 @ =0x000001FF
	ands r1, r2
	strh r1, [r3]
	movs r1, #1
	bl sub_0802F8FC
_0802EF10:
	ldr r0, _0802EF48 @ =gUnknown_03000564
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, r1
	bne _0802F012
	ldr r0, _0802EF4C @ =gUnknown_0300055C
	ldr r0, [r0]
	cmp r0, #0
	bne _0802F012
	ldr r0, _0802EF50 @ =gUnknown_03003F6C
	ldr r1, [r0]
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	beq _0802F012
	bl sub_0802ECEC
	b _0802F012
	.align 2, 0
_0802EF38: .4byte gUnknown_0300410C
_0802EF3C: .4byte gUnknown_030040CC
_0802EF40: .4byte gUnknown_02025818
_0802EF44: .4byte 0x000001FF
_0802EF48: .4byte gUnknown_03000564
_0802EF4C: .4byte gUnknown_0300055C
_0802EF50: .4byte gUnknown_03003F6C
_0802EF54:
	ldrb r0, [r1, #6]
	ldr r6, _0802EFAC @ =gUnknown_08090C70
	cmp r0, #0
	beq _0802EF70
	ldr r4, [r6]
	ldr r0, [r4]
	adds r0, #6
	movs r1, #1
	bl sub_0802F8FC
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	ldr r0, _0802EFB0 @ =0x00005FFF
	strh r0, [r1, #6]
_0802EF70:
	movs r4, #0
	ldr r5, _0802EFB4 @ =gUnknown_0849B01C
	mov r3, sp
_0802EF76:
	ldr r1, [r5]
	lsls r2, r4, #1
	ldrb r0, [r1, #4]
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r1, #8
	adds r1, r1, r2
	ldrh r0, [r3]
	ldrh r2, [r1]
	strh r0, [r1]
	adds r3, #2
	adds r4, #1
	cmp r4, #3
	ble _0802EF76
	ldr r2, [r6]
	ldr r1, [r2]
	ldrb r0, [r1, #4]
	adds r0, #1
	ldrb r3, [r1, #4]
	strb r0, [r1, #4]
	ldr r1, [r2]
	ldrb r2, [r1, #4]
	movs r0, #0x3f
	ands r0, r2
	ldrb r2, [r1, #4]
	strb r0, [r1, #4]
	b _0802F012
	.align 2, 0
_0802EFAC: .4byte gUnknown_08090C70
_0802EFB0: .4byte 0x00005FFF
_0802EFB4: .4byte gUnknown_0849B01C
_0802EFB8:
	ldrb r0, [r6, #6]
	cmp r0, #0
	beq _0802EFD2
	ldr r4, _0802F028 @ =gUnknown_0849B01C
	ldr r0, [r4]
	adds r0, #6
	movs r1, #1
	bl sub_0802F8FC
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	ldr r0, _0802F02C @ =0x00005FFF
	strh r0, [r1, #6]
_0802EFD2:
	movs r4, #0
	ldr r6, _0802F030 @ =0x00009ABC
	mov r5, sp
_0802EFD8:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0802EFF6
	ldrh r0, [r5]
	cmp r0, r6
	beq _0802EFF6
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_0802EFF6:
	adds r5, #2
	adds r4, #1
	cmp r4, #3
	ble _0802EFD8
	mov r0, r8
	cmp r0, #0
	bne _0802F012
	ldr r0, _0802F028 @ =gUnknown_0849B01C
	ldr r0, [r0]
	ldr r1, _0802F034 @ =0x00000212
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #1
	strh r1, [r0]
_0802F012:
	ldr r1, _0802F038 @ =gUnknown_0300333C
	movs r0, #0
	str r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F028: .4byte gUnknown_0849B01C
_0802F02C: .4byte 0x00005FFF
_0802F030: .4byte 0x00009ABC
_0802F034: .4byte 0x00000212
_0802F038: .4byte gUnknown_0300333C

	thumb_func_start sub_0802F03C
sub_0802F03C: @ 0x0802F03C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0802F1F8 @ =gUnknown_0300333C
	movs r1, #0
	str r1, [r0]
	ldr r3, _0802F1FC @ =gUnknown_0849B018
	ldr r0, [r3]
	ldrh r2, [r0, #0x20]
	movs r2, #0
	strh r1, [r0, #0x20]
	ldrh r4, [r0, #0x22]
	strh r1, [r0, #0x22]
	ldr r1, _0802F200 @ =0x00001AAC
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r0, [r3]
	ldr r7, _0802F204 @ =0x00001AAD
	adds r0, r0, r7
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r0, [r3]
	ldr r1, _0802F208 @ =0x00001AAE
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r0, [r3]
	adds r7, #2
	adds r0, r0, r7
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r0, [r3]
	ldrb r1, [r0, #0x1a]
	strb r2, [r0, #0x1a]
	ldr r0, [r3]
	ldrb r1, [r0, #0x1b]
	strb r2, [r0, #0x1b]
	ldr r0, [r3]
	ldrb r1, [r0, #0x1f]
	strb r2, [r0, #0x1f]
	movs r4, #0
	mov sl, r3
	movs r6, #0
	ldr r0, _0802F20C @ =gUnknown_0849B01C
	mov r8, r0
	ldr r1, _0802F210 @ =0x0000FFFF
	mov ip, r1
	movs r3, #0
	ldr r2, _0802F214 @ =gUnknown_0300449C
	mov sb, r2
_0802F0A6:
	mov r7, sl
	ldr r0, [r7]
	adds r0, #0xa
	adds r0, r0, r4
	ldrb r1, [r0]
	strb r6, [r0]
	ldr r0, [r7]
	adds r0, #0x16
	adds r0, r0, r4
	ldrb r1, [r0]
	strb r6, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #0xe
	adds r0, r0, r3
	ldrh r2, [r0]
	strh r6, [r0]
	adds r1, #0x24
	adds r1, r1, r3
	ldrh r0, [r1]
	strh r6, [r1]
	adds r2, r3, #0
	movs r5, #0x3f
_0802F0D4:
	mov r0, r8
	ldr r1, [r0]
	adds r1, #8
	adds r1, r1, r2
	ldrh r0, [r1]
	mov r7, ip
	orrs r0, r7
	strh r0, [r1]
	adds r2, #8
	subs r5, #1
	cmp r5, #0
	bge _0802F0D4
	mov r0, r8
	ldr r1, [r0]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r1, r1, r3
	ldrh r0, [r1]
	orrs r0, r7
	strh r0, [r1]
	ldrh r0, [r1]
	ldrh r2, [r1]
	strh r0, [r1]
	mov r1, sb
	adds r0, r4, r1
	ldrb r1, [r0]
	strb r6, [r0]
	adds r3, #2
	adds r4, #1
	cmp r4, #3
	ble _0802F0A6
	movs r4, #0
	ldr r5, _0802F218 @ =gUnknown_03004400
	movs r2, #0
	ldr r3, _0802F1FC @ =gUnknown_0849B018
_0802F11C:
	adds r0, r4, r5
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r0, [r3]
	lsls r1, r4, #1
	adds r0, #0x2c
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r2, [r0]
	adds r4, #1
	cmp r4, #0x7f
	ble _0802F11C
	ldr r7, _0802F1FC @ =gUnknown_0849B018
	movs r3, #0
	movs r2, #0
	movs r6, #0x96
	lsls r6, r6, #1
	movs r5, #0x1f
_0802F140:
	adds r1, r2, r6
	ldr r0, [r7]
	adds r0, r0, r1
	strb r3, [r0]
	movs r4, #0x7f
	adds r0, #0x85
_0802F14C:
	strb r3, [r0]
	subs r0, #1
	subs r4, #1
	cmp r4, #0
	bge _0802F14C
	adds r2, #0x88
	subs r5, #1
	cmp r5, #0
	bge _0802F140
	movs r5, #0
	ldr r7, _0802F1FC @ =gUnknown_0849B018
	movs r2, #0
	ldr r6, _0802F21C @ =0x0000122C
_0802F166:
	lsls r0, r5, #4
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r6
	ldr r1, [r7]
	adds r1, r1, r0
	strb r2, [r1]
	adds r3, r5, #1
	movs r4, #0x7f
	adds r1, #0x85
_0802F17A:
	strb r2, [r1]
	subs r1, #1
	subs r4, #1
	cmp r4, #0
	bge _0802F17A
	adds r5, r3, #0
	cmp r5, #0xf
	ble _0802F166
	ldr r2, _0802F220 @ =gUnknown_030040CC
	ldr r1, _0802F224 @ =gUnknown_0300410C
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r1]
	strh r0, [r2]
	movs r2, #0
	ldr r1, _0802F228 @ =gUnknown_02025818
	movs r4, #0x80
	lsls r4, r4, #2
_0802F19E:
	ldrh r0, [r1]
	strh r2, [r1]
	adds r1, #2
	subs r4, #1
	cmp r4, #0
	bne _0802F19E
	movs r5, #0
	ldr r2, _0802F22C @ =gUnknown_03003128
	mov sb, r2
	ldr r7, _0802F230 @ =gUnknown_03003F48
	mov ip, r7
	movs r6, #0
	ldr r0, _0802F234 @ =0x000003FF
	mov r8, r0
	ldr r7, _0802F238 @ =gUnknown_02025C18
_0802F1BC:
	lsls r2, r5, #1
	mov r1, sb
	adds r3, r2, r1
	mov r1, ip
	adds r0, r2, r1
	ldrh r1, [r0]
	strh r6, [r0]
	ldrh r0, [r0]
	ldrh r1, [r3]
	strh r0, [r3]
	adds r3, r5, #1
	adds r2, r2, r7
	mov r4, r8
	adds r4, #1
_0802F1D8:
	ldrh r0, [r2]
	strh r6, [r2]
	adds r2, #8
	subs r4, #1
	cmp r4, #0
	bne _0802F1D8
	adds r5, r3, #0
	cmp r5, #3
	ble _0802F1BC
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F1F8: .4byte gUnknown_0300333C
_0802F1FC: .4byte gUnknown_0849B018
_0802F200: .4byte 0x00001AAC
_0802F204: .4byte 0x00001AAD
_0802F208: .4byte 0x00001AAE
_0802F20C: .4byte gUnknown_0849B01C
_0802F210: .4byte 0x0000FFFF
_0802F214: .4byte gUnknown_0300449C
_0802F218: .4byte gUnknown_03004400
_0802F21C: .4byte 0x0000122C
_0802F220: .4byte gUnknown_030040CC
_0802F224: .4byte gUnknown_0300410C
_0802F228: .4byte gUnknown_02025818
_0802F22C: .4byte gUnknown_03003128
_0802F230: .4byte gUnknown_03003F48
_0802F234: .4byte 0x000003FF
_0802F238: .4byte gUnknown_02025C18

	thumb_func_start sub_0802F23C
sub_0802F23C: @ 0x0802F23C
	push {r4, lr}
	ldr r2, _0802F27C @ =gUnknown_0849B01C
	ldr r1, [r2]
	ldrh r0, [r1]
	movs r4, #0
	movs r3, #0
	strh r3, [r1]
	ldrh r0, [r1, #2]
	strh r3, [r1, #2]
	ldrb r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, [r2]
	ldrb r1, [r0, #5]
	strb r4, [r0, #5]
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	ldr r1, _0802F280 @ =0x00005FFF
	strh r1, [r0, #6]
	movs r1, #0x84
	lsls r1, r1, #2
	adds r2, r0, r1
	ldrh r1, [r2]
	ldr r1, _0802F284 @ =0x0000FFFF
	strh r1, [r2]
	ldr r1, _0802F288 @ =0x00000212
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r3, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802F27C: .4byte gUnknown_0849B01C
_0802F280: .4byte 0x00005FFF
_0802F284: .4byte 0x0000FFFF
_0802F288: .4byte 0x00000212

	thumb_func_start sub_0802F28C
sub_0802F28C: @ 0x0802F28C
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r4, _0802F338 @ =gUnknown_02025564
	movs r3, #0
_0802F294:
	adds r0, r2, r4
	ldrb r1, [r0]
	strb r3, [r0]
	adds r2, #1
	cmp r2, #1
	ble _0802F294
	movs r2, #0
	ldr r4, _0802F33C @ =gUnknown_02025566
	movs r3, #0
_0802F2A6:
	adds r0, r2, r4
	ldrb r1, [r0]
	strb r3, [r0]
	adds r2, #1
	cmp r2, #2
	ble _0802F2A6
	movs r2, #0
	ldr r4, _0802F340 @ =gUnknown_02025569
	movs r3, #0
_0802F2B8:
	adds r0, r2, r4
	ldrb r1, [r0]
	strb r3, [r0]
	adds r2, #1
	cmp r2, #0x17
	ble _0802F2B8
	movs r4, #0
	ldr r6, _0802F338 @ =gUnknown_02025564
	movs r1, #0
	movs r5, #0
	adds r3, r6, #0
	adds r3, #0x20
	adds r7, r6, #0
	adds r7, #0x34
_0802F2D4:
	strb r1, [r3, #1]
	strb r1, [r3]
	strb r1, [r3, #0x13]
	strb r1, [r3, #0x1a]
	strb r1, [r3, #0x19]
	movs r2, #0x10
	lsls r0, r5, #2
	adds r0, r6, r0
	adds r0, #0x32
_0802F2E6:
	strb r1, [r0]
	subs r0, #1
	subs r2, #1
	cmp r2, #0
	bge _0802F2E6
	movs r2, #4
	lsls r0, r5, #2
	adds r0, r0, r7
	adds r0, #4
_0802F2F8:
	strb r1, [r0]
	subs r0, #1
	subs r2, #1
	cmp r2, #0
	bge _0802F2F8
	adds r5, #7
	adds r3, #0x1c
	adds r4, #1
	cmp r4, #0xb
	ble _0802F2D4
	movs r4, #0
	ldr r7, _0802F344 @ =gUnknown_020257E4
	movs r5, #0
	movs r6, #0xd
_0802F314:
	adds r3, r4, #1
	adds r0, r4, #0
	muls r0, r6, r0
	adds r1, r0, r7
	movs r2, #0xc
_0802F31E:
	ldrb r0, [r1]
	strb r5, [r1]
	adds r1, #1
	subs r2, #1
	cmp r2, #0
	bge _0802F31E
	adds r4, r3, #0
	cmp r4, #3
	ble _0802F314
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802F338: .4byte gUnknown_02025564
_0802F33C: .4byte gUnknown_02025566
_0802F340: .4byte gUnknown_02025569
_0802F344: .4byte gUnknown_020257E4

	thumb_func_start sub_0802F348
sub_0802F348: @ 0x0802F348
	push {r4, r5, r6, lr}
	ldr r0, _0802F3E0 @ =gUnknown_03003FC0
	adds r0, #0x32
	movs r6, #0
	strb r6, [r0]
	ldr r4, _0802F3E4 @ =gUnknown_0849B018
	ldr r0, [r4]
	ldrb r1, [r0]
	strb r6, [r0]
	ldr r0, [r4]
	ldrb r1, [r0, #1]
	strb r6, [r0, #1]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	movs r5, #0
	strh r6, [r1, #4]
	ldrh r0, [r1, #2]
	strh r6, [r1, #2]
	ldr r0, _0802F3E8 @ =gUnknown_030044D8
	strb r5, [r0]
	movs r0, #0xff
	strb r0, [r1, #6]
	ldr r0, [r4]
	ldrb r1, [r0, #7]
	strb r5, [r0, #7]
	ldr r0, [r4]
	ldrb r1, [r0, #8]
	strb r5, [r0, #8]
	ldr r0, [r4]
	ldrb r1, [r0, #9]
	strb r5, [r0, #9]
	ldr r0, [r4]
	ldrb r1, [r0, #0x1c]
	strb r5, [r0, #0x1c]
	ldr r0, [r4]
	ldrb r1, [r0, #0x1d]
	strb r5, [r0, #0x1d]
	ldr r0, [r4]
	ldrb r1, [r0, #0x1e]
	strb r5, [r0, #0x1e]
	bl sub_0802F23C
	bl sub_0802F03C
	bl sub_0802F28C
	ldr r0, [r4]
	ldr r2, _0802F3EC @ =0x00001AB0
	adds r1, r0, r2
	ldrh r2, [r1]
	strh r6, [r1]
	ldr r3, _0802F3F0 @ =0x00001AB2
	adds r0, r0, r3
	ldrb r1, [r0]
	strb r5, [r0]
	ldr r0, [r4]
	ldr r1, _0802F3F4 @ =0x00001AB3
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r5, [r0]
	ldr r0, [r4]
	ldr r2, _0802F3F8 @ =0x00001AB4
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0]
	ldr r1, _0802F3FC @ =gUnknown_030040C0
	ldr r0, _0802F400 @ =gUnknown_08090C38
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, _0802F404 @ =gUnknown_0300477C
	str r6, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0802F3E0: .4byte gUnknown_03003FC0
_0802F3E4: .4byte gUnknown_0849B018
_0802F3E8: .4byte gUnknown_030044D8
_0802F3EC: .4byte 0x00001AB0
_0802F3F0: .4byte 0x00001AB2
_0802F3F4: .4byte 0x00001AB3
_0802F3F8: .4byte 0x00001AB4
_0802F3FC: .4byte gUnknown_030040C0
_0802F400: .4byte gUnknown_08090C38
_0802F404: .4byte gUnknown_0300477C

	thumb_func_start sub_0802F408
sub_0802F408: @ 0x0802F408
	push {r4, lr}
	ldr r2, _0802F438 @ =gUnknown_08090C74
	ldr r0, [r2]
	ldr r3, [r0]
	ldrh r1, [r3, #2]
	ldrh r0, [r3, #2]
	movs r0, #0
	strh r0, [r3, #2]
	movs r4, #8
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0802F440
	ldr r0, _0802F43C @ =0x04000128
	ldrh r1, [r0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne _0802F440
	ldrb r0, [r3, #0x1f]
	adds r0, #1
	ldrb r1, [r3, #0x1f]
	strb r0, [r3, #0x1f]
	b _0802F44A
	.align 2, 0
_0802F438: .4byte gUnknown_08090C74
_0802F43C: .4byte 0x04000128
_0802F440:
	ldr r0, [r2]
	ldr r1, [r0]
	ldrb r0, [r1, #0x1f]
	movs r0, #0
	strb r0, [r1, #0x1f]
_0802F44A:
	ldr r0, [r2]
	ldr r0, [r0]
	ldrb r0, [r0, #0x1f]
	cmp r0, #0xa
	bhi _0802F458
	movs r0, #1
	b _0802F45A
_0802F458:
	movs r0, #0
_0802F45A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802F460
sub_0802F460: @ 0x0802F460
	ldr r1, _0802F478 @ =gUnknown_0849B018
	ldr r1, [r1]
	ldrb r1, [r1, #9]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0802F47C
	movs r0, #0
	b _0802F47E
	.align 2, 0
_0802F478: .4byte gUnknown_0849B018
_0802F47C:
	movs r0, #1
_0802F47E:
	bx lr

	thumb_func_start sub_0802F480
sub_0802F480: @ 0x0802F480
	ldr r1, _0802F498 @ =gUnknown_0849B018
	ldr r1, [r1]
	ldrb r1, [r1, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0802F49C
	movs r0, #0
	b _0802F49E
	.align 2, 0
_0802F498: .4byte gUnknown_0849B018
_0802F49C:
	movs r0, #1
_0802F49E:
	bx lr

	thumb_func_start sub_0802F4A0
sub_0802F4A0: @ 0x0802F4A0
	push {r4, lr}
	movs r2, #0
	movs r1, #0
	ldr r4, _0802F4E8 @ =gUnknown_08090C78
	ldr r0, [r4]
	ldr r0, [r0]
	adds r3, r0, #0
	adds r3, #0xa
_0802F4B0:
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne _0802F4BA
	adds r2, #1
_0802F4BA:
	adds r1, #1
	cmp r1, #3
	ble _0802F4B0
	ldr r0, [r4]
	ldr r1, [r0]
	ldrb r0, [r1, #9]
	cmp r0, #3
	bne _0802F4CE
	cmp r2, #2
	beq _0802F4E2
_0802F4CE:
	ldrb r0, [r1, #9]
	cmp r0, #7
	bne _0802F4D8
	cmp r2, #3
	beq _0802F4E2
_0802F4D8:
	ldrb r0, [r1, #9]
	cmp r0, #0xf
	bne _0802F4EC
	cmp r2, #4
	bne _0802F4EC
_0802F4E2:
	movs r0, #1
	b _0802F4EE
	.align 2, 0
_0802F4E8: .4byte gUnknown_08090C78
_0802F4EC:
	movs r0, #0
_0802F4EE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0802F4F4
sub_0802F4F4: @ 0x0802F4F4
	ldr r0, _0802F500 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0802F500: .4byte gUnknown_0849B018

	thumb_func_start sub_0802F504
sub_0802F504: @ 0x0802F504
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
_0802F50A:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F480
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802F524
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
_0802F524:
	adds r4, #1
	cmp r4, #3
	ble _0802F50A
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0802F534
sub_0802F534: @ 0x0802F534
	push {r4, r5, lr}
	ldr r2, _0802F578 @ =gUnknown_08090C7C
	ldr r0, [r2]
	ldr r1, [r0]
	ldrb r0, [r1, #7]
	movs r0, #0
	strb r0, [r1, #7]
	movs r4, #0
	adds r5, r2, #0
_0802F546:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802F562
	ldr r0, [r5]
	ldr r1, [r0]
	ldrb r0, [r1, #7]
	adds r0, #1
	ldrb r2, [r1, #7]
	strb r0, [r1, #7]
_0802F562:
	adds r4, #1
	cmp r4, #3
	ble _0802F546
	ldr r0, [r5]
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0802F578: .4byte gUnknown_08090C7C

	thumb_func_start sub_0802F57C
sub_0802F57C: @ 0x0802F57C
	ldr r0, _0802F584 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	bx lr
	.align 2, 0
_0802F584: .4byte gUnknown_0849B018

	thumb_func_start sub_0802F588
sub_0802F588: @ 0x0802F588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	lsls r1, r1, #0x10
	movs r0, #0
	mov sb, r0
	ldr r3, _0802F640 @ =gUnknown_08090C80
	ldr r0, [r3]
	ldrh r0, [r0]
	adds r5, r0, #0
	lsrs r6, r1, #0x11
	ldr r1, _0802F644 @ =0x00004FFF
	adds r7, r6, r1
	ldr r2, _0802F648 @ =gUnknown_08090C84
	ldr r0, [r2]
	mov ip, r0
	lsls r0, r5, #1
	add r0, ip
	ldrh r4, [r0]
	strh r1, [r0]
	adds r5, #1
	ldr r1, _0802F64C @ =0x000001FF
	mov r8, r1
	ands r5, r1
	ldr r0, _0802F650 @ =gUnknown_08090C88
	ldr r4, [r0]
	ldrh r1, [r4]
	cmp r5, r1
	beq _0802F63A
	lsls r0, r5, #1
	add r0, ip
	ldrh r1, [r0]
	strh r6, [r0]
	adds r5, #1
	mov r0, r8
	ands r5, r0
	ldrh r0, [r4]
	lsls r1, r5, #1
	mov ip, r1
	adds r1, r5, #1
	mov r8, r1
	cmp r5, r0
	beq _0802F63A
	movs r3, #0
	cmp r3, r6
	bge _0802F60C
	mov r4, sl
_0802F5EC:
	ldrh r0, [r4]
	adds r2, r3, #1
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, r1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	mvns r1, r1
	add r1, sb
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	adds r4, #2
	adds r3, r2, #0
	cmp r3, r6
	blt _0802F5EC
_0802F60C:
	ldr r2, _0802F654 @ =gUnknown_02025818
	mov r1, ip
	adds r0, r1, r2
	ldrh r1, [r0]
	strh r7, [r0]
	ldr r7, _0802F64C @ =0x000001FF
	adds r5, r7, #0
	mov r0, r8
	ands r5, r0
	ldr r4, _0802F658 @ =gUnknown_030040CC
	ldrh r0, [r4]
	cmp r5, r0
	beq _0802F63A
	lsls r0, r5, #1
	adds r0, r0, r2
	ldrh r1, [r0]
	mov r1, sb
	strh r1, [r0]
	adds r5, #1
	ands r5, r7
	ldrh r0, [r4]
	cmp r5, r0
	bne _0802F65C
_0802F63A:
	movs r0, #1
	rsbs r0, r0, #0
	b _0802F68E
	.align 2, 0
_0802F640: .4byte gUnknown_08090C80
_0802F644: .4byte 0x00004FFF
_0802F648: .4byte gUnknown_08090C84
_0802F64C: .4byte 0x000001FF
_0802F650: .4byte gUnknown_08090C88
_0802F654: .4byte gUnknown_02025818
_0802F658: .4byte gUnknown_030040CC
_0802F65C:
	movs r3, #0
	cmp r3, r6
	bge _0802F688
	mov sb, r2
	mov r8, r7
	adds r7, r4, #0
	mov r4, sl
_0802F66A:
	lsls r0, r5, #1
	add r0, sb
	ldrh r1, [r4]
	ldrh r2, [r0]
	strh r1, [r0]
	adds r5, #1
	mov r0, r8
	ands r5, r0
	ldrh r0, [r7]
	cmp r5, r0
	beq _0802F63A
	adds r4, #2
	adds r3, #1
	cmp r3, r6
	blt _0802F66A
_0802F688:
	ldr r0, _0802F69C @ =gUnknown_0300410C
	strh r5, [r0]
	adds r0, r6, #0
_0802F68E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0802F69C: .4byte gUnknown_0300410C

	thumb_func_start sub_0802F6A0
sub_0802F6A0: @ 0x0802F6A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp, #4]
	lsls r0, r0, #0x18
	movs r1, #0
	mov r8, r1
	movs r2, #0
	str r2, [sp, #8]
	ldr r3, _0802F734 @ =gUnknown_08090C8C
	ldr r1, [r3]
	lsrs r2, r0, #0x18
	str r2, [sp]
	asrs r4, r0, #0x17
	adds r5, r4, r1
	ldr r1, _0802F738 @ =gUnknown_08090C90
	ldr r0, [r1]
	adds r6, r4, r0
	ldrh r2, [r5]
	ldrh r0, [r6]
	mov sl, r3
	cmp r2, r0
	bne _0802F6D6
	b _0802F7F4
_0802F6D6:
	ldr r0, _0802F73C @ =gUnknown_08090C94
	ldr r3, [r0]
	mov ip, r3
	ldrh r1, [r5]
	lsls r1, r1, #3
	adds r1, r4, r1
	add r1, ip
	ldrh r1, [r1]
	ldr r7, _0802F740 @ =0x00004FFF
	cmp r1, r7
	beq _0802F748
	ldrh r1, [r5]
	ldrh r0, [r6]
	cmp r1, r0
	beq _0802F788
	adds r3, r4, #0
	adds r2, r5, #0
	mov sb, ip
	ldr r0, _0802F744 @ =0x000003FF
	mov ip, r0
	adds r5, r7, #0
	adds r4, r6, #0
_0802F702:
	ldrh r0, [r2]
	adds r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	ldrh r1, [r2]
	mov r0, ip
	ands r0, r1
	ldrh r1, [r2]
	strh r0, [r2]
	ldrh r0, [r2]
	lsls r0, r0, #3
	adds r0, r3, r0
	add r0, sb
	ldrh r0, [r0]
	cmp r0, r5
	bne _0802F72A
	ldrh r1, [r2]
	ldrh r0, [r4]
	cmp r1, r0
	bne _0802F748
_0802F72A:
	ldrh r1, [r2]
	ldrh r0, [r4]
	cmp r1, r0
	bne _0802F702
	b _0802F788
	.align 2, 0
_0802F734: .4byte gUnknown_08090C8C
_0802F738: .4byte gUnknown_08090C90
_0802F73C: .4byte gUnknown_08090C94
_0802F740: .4byte 0x00004FFF
_0802F744: .4byte 0x000003FF
_0802F748:
	ldr r0, _0802F76C @ =gUnknown_03003F48
	ldr r1, [sp]
	lsls r2, r1, #0x18
	asrs r1, r2, #0x17
	adds r4, r1, r0
	mov r3, sl
	ldr r0, [r3]
	adds r3, r1, r0
	ldrh r1, [r4]
	ldrh r0, [r3]
	cmp r1, r0
	bhs _0802F774
	ldrh r1, [r3]
	ldr r0, _0802F770 @ =0xFFFFFC00
	adds r1, r1, r0
	ldrh r0, [r4]
	b _0802F778
	.align 2, 0
_0802F76C: .4byte gUnknown_03003F48
_0802F770: .4byte 0xFFFFFC00
_0802F774:
	ldrh r0, [r4]
	ldrh r1, [r3]
_0802F778:
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r7, r0, #0
	cmp r1, #1
	bgt _0802F78E
_0802F788:
	movs r0, #4
	rsbs r0, r0, #0
	b _0802F8EA
_0802F78E:
	mov r3, sl
	ldr r1, [r3]
	asrs r0, r2, #0x17
	adds r4, r0, r1
	ldrh r0, [r4]
	adds r0, #1
	ldr r1, _0802F7AC @ =0x000003FF
	cmp r0, r1
	bgt _0802F7B0
	ldrh r0, [r4]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0802F7B2
	.align 2, 0
_0802F7AC: .4byte 0x000003FF
_0802F7B0:
	movs r0, #0
_0802F7B2:
	ldr r6, _0802F7E4 @ =gUnknown_02025C18
	asrs r4, r2, #0x17
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0]
	mov ip, r0
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0x80
	ble _0802F7EC
	mov r1, sl
	ldr r0, [r1]
	adds r0, r4, r0
	ldrh r1, [r0]
	adds r1, #1
	ldrh r2, [r0]
	strh r1, [r0]
	ldrh r2, [r0]
	ldr r1, _0802F7E8 @ =0x000003FF
	ands r1, r2
	ldrh r2, [r0]
	strh r1, [r0]
	b _0802F788
	.align 2, 0
_0802F7E4: .4byte gUnknown_02025C18
_0802F7E8: .4byte 0x000003FF
_0802F7EC:
	adds r1, r5, #6
	asrs r0, r7, #0x10
	cmp r1, r0
	ble _0802F7FA
_0802F7F4:
	movs r0, #2
	rsbs r0, r0, #0
	b _0802F8EA
_0802F7FA:
	mov r2, sl
	ldr r0, [r2]
	adds r3, r4, r0
	ldrh r0, [r3]
	adds r0, #2
	ldrh r1, [r3]
	strh r0, [r3]
	ldrh r1, [r3]
	ldr r7, _0802F8DC @ =0x000003FF
	adds r0, r7, #0
	ands r0, r1
	ldrh r1, [r3]
	strh r0, [r3]
	ldrh r0, [r3]
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0]
	mov sl, r0
	ldrh r0, [r3]
	adds r0, #1
	ldrh r1, [r3]
	strh r0, [r3]
	ldrh r1, [r3]
	adds r0, r7, #0
	ands r0, r1
	ldrh r1, [r3]
	strh r0, [r3]
	ldrh r0, [r3]
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0]
	mov sb, r0
	ldrh r0, [r3]
	adds r0, #1
	ldrh r1, [r3]
	strh r0, [r3]
	ldrh r1, [r3]
	adds r0, r7, #0
	ands r0, r1
	ldrh r1, [r3]
	strh r0, [r3]
	ldr r0, _0802F8E0 @ =0x00004FFF
	adds r1, r5, r0
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	movs r2, #0
	cmp r2, r5
	bge _0802F8CA
	ldr r5, [sp, #4]
_0802F86A:
	ldrh r0, [r3]
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r2, #1
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r1, #0
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r3]
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r1, #0
	mvns r0, r0
	ldr r1, [sp, #8]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldrh r0, [r3]
	lsls r0, r0, #3
	adds r0, r4, r0
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r5]
	ldrh r0, [r3]
	adds r0, #1
	ldrh r1, [r3]
	strh r0, [r3]
	ldrh r1, [r3]
	adds r0, r7, #0
	ands r0, r1
	ldrh r1, [r3]
	strh r0, [r3]
	adds r5, #2
	mov r1, ip
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r2, r0
	blt _0802F86A
_0802F8CA:
	cmp r8, sl
	bne _0802F8D4
	ldr r2, [sp, #8]
	cmp r2, sb
	beq _0802F8E4
_0802F8D4:
	movs r0, #3
	rsbs r0, r0, #0
	b _0802F8EA
	.align 2, 0
_0802F8DC: .4byte 0x000003FF
_0802F8E0: .4byte 0x00004FFF
_0802F8E4:
	mov r3, ip
	lsls r0, r3, #0x11
	asrs r0, r0, #0x10
_0802F8EA:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802F8FC
sub_0802F8FC: @ 0x0802F8FC
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, _0802F914 @ =gUnknown_08090C98
	ldr r1, [r0]
	ldr r1, [r1]
	adds r3, r0, #0
	cmp r1, #3
	ble _0802F918
	movs r0, #4
	rsbs r0, r0, #0
	b _0802F9AE
	.align 2, 0
_0802F914: .4byte gUnknown_08090C98
_0802F918:
	ldr r5, _0802F94C @ =gUnknown_08090C9C
	ldr r1, _0802F950 @ =0x0400012A
_0802F91C:
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r1]
	ldrh r6, [r2]
	cmp r0, r6
	bne _0802F91C
	ldr r0, [r3]
	ldr r0, [r0]
	cmp r0, #0
	bne _0802F9A6
	movs r1, #0
	ldr r0, _0802F954 @ =gUnknown_03003F6C
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	cmp r0, #0
	beq _0802F958
	ldr r0, [r5]
	ldr r0, [r0]
	cmp r0, #0
	beq _0802F95E
	cmp r4, #0
	bge _0802F95A
	b _0802F95E
	.align 2, 0
_0802F94C: .4byte gUnknown_08090C9C
_0802F950: .4byte 0x0400012A
_0802F954: .4byte gUnknown_03003F6C
_0802F958:
	movs r1, #1
_0802F95A:
	cmp r1, #0
	beq _0802F9A6
_0802F95E:
	ldr r0, _0802F97C @ =gUnknown_03000564
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0802F988
	ldr r1, _0802F980 @ =gUnknown_08090C44
	ldr r0, _0802F984 @ =gUnknown_03000578
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	b _0802F98A
	.align 2, 0
_0802F97C: .4byte gUnknown_03000564
_0802F980: .4byte gUnknown_08090C44
_0802F984: .4byte gUnknown_03000578
_0802F988:
	movs r1, #0
_0802F98A:
	cmp r1, #0
	beq _0802F996
	adds r0, r1, #0
	bl sub_0802ECEC
	b _0802F9A6
_0802F996:
	ldr r2, _0802F9B4 @ =0x04000128
	ldr r0, _0802F9B8 @ =gUnknown_03000560
	ldr r0, [r0]
	movs r3, #0xc1
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0802F9A6:
	ldr r1, [r5]
	movs r0, #1
	str r0, [r1]
	movs r0, #5
_0802F9AE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802F9B4: .4byte 0x04000128
_0802F9B8: .4byte gUnknown_03000560

	thumb_func_start sub_0802F9BC
sub_0802F9BC: @ 0x0802F9BC
	push {r4, r5, r6, lr}
	adds r3, r1, #0
	ldr r0, _0802F9DC @ =gUnknown_03000570
	ldr r0, [r0]
	cmp r0, #1
	bne _0802FA00
	ldr r1, _0802F9E0 @ =0x00007FFF
	adds r0, r1, #0
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	strh r0, [r3, #2]
	b _0802FA4C
	.align 2, 0
_0802F9DC: .4byte gUnknown_03000570
_0802F9E0: .4byte 0x00007FFF
_0802F9E4:
	ldr r1, _0802F9FC @ =0x00007FFF
	adds r0, r1, #0
	strh r0, [r3]
	adds r3, r6, #0
	strh r0, [r3]
	adds r3, #2
	strh r0, [r3]
	strh r0, [r3, #2]
	movs r0, #1
	rsbs r0, r0, #0
	b _0802FA4E
	.align 2, 0
_0802F9FC: .4byte 0x00007FFF
_0802FA00:
	movs r4, #0
	adds r6, r3, #2
	ldr r5, _0802FA54 @ =gUnknown_03003F48
	ldr r2, _0802FA58 @ =gUnknown_03003128
_0802FA08:
	ldrh r1, [r2]
	ldrh r0, [r5]
	cmp r1, r0
	beq _0802F9E4
	adds r5, #2
	adds r2, #2
	adds r4, #1
	cmp r4, #3
	ble _0802FA08
	movs r4, #0
	ldr r6, _0802FA5C @ =gUnknown_02025C18
	ldr r5, _0802FA60 @ =0x000003FF
	ldr r2, _0802FA58 @ =gUnknown_03003128
_0802FA22:
	lsls r1, r4, #1
	ldrh r0, [r2]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r6
	ldrh r0, [r1]
	strh r0, [r3]
	adds r3, #2
	ldrh r0, [r2]
	adds r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	ldrh r1, [r2]
	strh r0, [r2]
	adds r2, #2
	adds r4, #1
	cmp r4, #3
	ble _0802FA22
_0802FA4C:
	movs r0, #5
_0802FA4E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0802FA54: .4byte gUnknown_03003F48
_0802FA58: .4byte gUnknown_03003128
_0802FA5C: .4byte gUnknown_02025C18
_0802FA60: .4byte 0x000003FF

	thumb_func_start sub_0802FA64
sub_0802FA64: @ 0x0802FA64
	push {lr}
	ldr r0, _0802FA90 @ =gUnknown_0202575C
	movs r1, #0xa9
	strb r1, [r0]
	ldr r1, _0802FA94 @ =gUnknown_0849B018
	ldr r3, [r1]
	ldrb r1, [r3, #6]
	strb r1, [r0, #1]
	ldr r2, _0802FA98 @ =gUnknown_03003FC0
	ldrb r1, [r3, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r2, r1
	adds r2, #0x3e
	ldrb r1, [r2]
	strh r1, [r0, #2]
	movs r1, #4
	bl sub_0802F588
	pop {r0}
	bx r0
	.align 2, 0
_0802FA90: .4byte gUnknown_0202575C
_0802FA94: .4byte gUnknown_0849B018
_0802FA98: .4byte gUnknown_03003FC0

	thumb_func_start sub_0802FA9C
sub_0802FA9C: @ 0x0802FA9C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r1, _0802FAC8 @ =gUnknown_08090CA0
	mov r0, sp
	movs r2, #8
	bl sub_0808B6E8
	lsls r4, r4, #1
	mov r1, sp
	adds r0, r1, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	bl sub_0803B4DC
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FAC8: .4byte gUnknown_08090CA0

	thumb_func_start sub_0802FACC
sub_0802FACC: @ 0x0802FACC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	ldr r1, _0802FB0C @ =gUnknown_08090CA8
	ldr r5, [r1]
	ldr r4, [r5]
	ldrh r0, [r4, #4]
	mov sb, r1
	cmp r0, #4
	bhi _0802FAE6
	b _08030028
_0802FAE6:
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0802FAEE
	b _08030028
_0802FAEE:
	ldrb r0, [r4, #0x1a]
	adds r0, #1
	ldrb r1, [r4, #0x1a]
	strb r0, [r4, #0x1a]
	ldr r1, [r5]
	ldrh r0, [r1, #4]
	cmp r0, #6
	bne _0802FB86
	ldrb r0, [r1, #0x1a]
	cmp r0, #0x3c
	bls _0802FB10
	ldrb r0, [r1, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0802FB5A
	.align 2, 0
_0802FB0C: .4byte gUnknown_08090CA8
_0802FB10:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq _0802FB34
	bl sub_0802F408
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0802FB34
	ldr r0, [r5]
	ldrb r1, [r0, #6]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, #0xa
	adds r0, r0, r1
	ldrb r1, [r0]
	strb r2, [r0]
	b _08030018
_0802FB34:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	cmp r0, #2
	bne _0802FB6C
	ldrb r0, [r2, #0x1b]
	cmp r0, #0x78
	bhi _0802FB52
	ldr r0, _0802FB68 @ =gUnknown_0849B01C
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	cmp r1, r0
	bne _0802FB6C
_0802FB52:
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r2, #0
_0802FB5A:
	adds r1, #0xa
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r0, #0
	strb r0, [r1]
	b _08030018
	.align 2, 0
_0802FB68: .4byte gUnknown_0849B01C
_0802FB6C:
	movs r7, #0
	ldr r0, _0802FBD8 @ =gUnknown_0849B018
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0x16
_0802FB76:
	adds r0, r1, r7
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _0802FB80
	b _0803000C
_0802FB80:
	adds r7, #1
	cmp r7, #3
	ble _0802FB76
_0802FB86:
	mov r2, sb
	ldr r0, [r2]
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	adds r1, r0, #0
	cmp r1, #1
	beq _0802FB96
	b _0802FFDC
_0802FB96:
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0
	ldrb r0, [r2, #0x1c]
	orrs r1, r0
	ldrb r0, [r2, #0x1c]
	strb r1, [r2, #0x1c]
	movs r7, #0
_0802FBA8:
	lsls r4, r7, #0x18
	asrs r0, r4, #0x18
	mov r1, sb
	ldr r5, [r1]
	ldr r1, [r5]
	adds r1, #0x2c
	bl sub_0802F6A0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r7, #1
	mov r8, r2
	cmp r0, #0
	bgt _0802FBC6
	b _0802FED8
_0802FBC6:
	cmp r0, #0x1a
	beq _0802FBE8
	cmp r0, #0x1a
	bgt _0802FBDC
	cmp r0, #4
	bne _0802FBD4
	b _0802FD40
_0802FBD4:
	b _0802FED8
	.align 2, 0
_0802FBD8: .4byte gUnknown_0849B018
_0802FBDC:
	cmp r0, #0x84
	bne _0802FBE2
	b _0802FD0C
_0802FBE2:
	cmp r0, #0x86
	beq _0802FBE8
	b _0802FED8
_0802FBE8:
	mov r0, sb
	ldr r5, [r0]
	ldr r2, [r5]
	adds r6, r2, #0
	adds r6, #0x2c
	ldrb r0, [r6]
	cmp r0, #0xad
	beq _0802FC6C
	adds r1, r7, #1
	mov r8, r1
	cmp r0, #0xaf
	beq _0802FC02
	b _0802FED8
_0802FC02:
	adds r4, r2, #0
	adds r4, #0x2d
	ldrb r1, [r4]
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _0802FC14
	b _0802FED8
_0802FC14:
	lsls r0, r1, #1
	adds r3, r2, #0
	adds r3, #0x24
	adds r0, r3, r0
	ldrh r1, [r0]
	ldrh r0, [r2, #0x2e]
	cmp r0, r1
	beq _0802FC44
	ldr r0, _0802FC40 @ =gUnknown_0202575C
	movs r1, #0xae
	strb r1, [r0]
	ldrb r1, [r2, #6]
	strb r1, [r0, #1]
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r1, r3, r1
	ldrh r1, [r1]
	strh r1, [r0, #2]
	movs r1, #4
	bl sub_0802F588
	b _0802FBA8
	.align 2, 0
_0802FC40: .4byte gUnknown_0202575C
_0802FC44:
	adds r0, r6, #0
	bl sub_08030838
	ldr r0, _0802FC68 @ =gUnknown_0202575C
	movs r1, #0xae
	strb r1, [r0]
	ldr r2, [r5]
	ldrb r1, [r2, #6]
	strb r1, [r0, #1]
	ldrb r1, [r4]
	lsls r1, r1, #1
	adds r2, #0x24
	adds r2, r2, r1
	ldrh r1, [r2]
	adds r1, #1
	strh r1, [r0, #2]
	b _0802FD00
	.align 2, 0
_0802FC68: .4byte gUnknown_0202575C
_0802FC6C:
	movs r3, #0
	adds r0, r7, #1
	mov r8, r0
	ldr r0, _0802FCD4 @ =gUnknown_020257E4
	adds r5, r2, #0
	adds r5, #0x32
	movs r1, #0xd
	muls r1, r7, r1
	adds r2, r1, r0
_0802FC7E:
	adds r0, r5, r3
	ldrb r0, [r0]
	ldrb r1, [r2]
	strb r0, [r2]
	adds r2, #1
	adds r3, #1
	cmp r3, #0xc
	ble _0802FC7E
	asrs r0, r4, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0802FCAE
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0]
	ldrb r0, [r1]
	ldrb r2, [r6, #2]
	cmp r0, r2
	bne _0802FCAE
	ldrh r0, [r1, #4]
	cmp r0, #5
	bls _0802FCBC
_0802FCAE:
	asrs r0, r4, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0802FCDC
_0802FCBC:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, [r0]
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _0802FCCA
	b _0802FED8
_0802FCCA:
	ldr r0, _0802FCD8 @ =gUnknown_0202575C
	movs r1, #0xa6
	strb r1, [r0]
	ldrb r1, [r2, #6]
	b _0802FCFC
	.align 2, 0
_0802FCD4: .4byte gUnknown_020257E4
_0802FCD8: .4byte gUnknown_0202575C
_0802FCDC:
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _0802FCEA
	b _0802FED8
_0802FCEA:
	ldrb r0, [r1]
	movs r2, #0xa5
	ldrb r6, [r6, #2]
	cmp r0, r6
	beq _0802FCF6
	movs r2, #0xa7
_0802FCF6:
	ldr r0, _0802FD08 @ =gUnknown_0202575C
	strb r2, [r0]
	ldrb r1, [r1, #6]
_0802FCFC:
	strb r1, [r0, #1]
	strh r7, [r0, #2]
_0802FD00:
	movs r1, #4
	bl sub_0802F588
	b _0802FED8
	.align 2, 0
_0802FD08: .4byte gUnknown_0202575C
_0802FD0C:
	ldr r4, [r5]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0xab
	beq _0802FD1A
	b _0802FED8
_0802FD1A:
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x30
	bl sub_08030038
	ldr r2, _0802FD3C @ =gUnknown_03003F1C
	adds r1, r4, #0
	adds r1, #0x2d
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _0802FED8
	.align 2, 0
_0802FD3C: .4byte gUnknown_03003F1C
_0802FD40:
	ldr r0, [r5]
	adds r5, r0, #0
	adds r5, #0x2c
	ldrb r0, [r5]
	subs r0, #0xa5
	cmp r0, #9
	bls _0802FD50
	b _0802FED8
_0802FD50:
	lsls r0, r0, #2
	ldr r1, _0802FD5C @ =_0802FD60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0802FD5C: .4byte _0802FD60
_0802FD60: @ jump table
	.4byte _0802FE76 @ case 0
	.4byte _0802FEA4 @ case 1
	.4byte _0802FE3C @ case 2
	.4byte _0802FE08 @ case 3
	.4byte _0802FD88 @ case 4
	.4byte _0802FDF4 @ case 5
	.4byte _0802FED8 @ case 6
	.4byte _0802FED8 @ case 7
	.4byte _0802FED8 @ case 8
	.4byte _0802FDA4 @ case 9
_0802FD88:
	ldr r0, _0802FDA0 @ =gUnknown_030032D8
	ldrh r0, [r0]
	adds r7, #1
	mov r8, r7
	cmp r0, #0xd
	beq _0802FD96
	b _0802FED8
_0802FD96:
	ldrb r0, [r5, #1]
	bl sub_0802FA9C
	b _0802FED8
	.align 2, 0
_0802FDA0: .4byte gUnknown_030032D8
_0802FDA4:
	ldr r0, _0802FDDC @ =gUnknown_030044D8
	ldrb r0, [r0]
	ldrb r3, [r5, #1]
	cmp r0, #0
	beq _0802FDE0
	mov r1, sb
	ldr r0, [r1]
	ldr r2, [r0]
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	beq _0802FDE0
	ldrh r0, [r2, #0x22]
	adds r0, #1
	ldrh r1, [r5, #2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _0802FDE0
	movs r0, #1
	lsls r0, r7
	ldrb r1, [r2, #0x1c]
	orrs r0, r1
	ldrb r1, [r2, #0x1c]
	strb r0, [r2, #0x1c]
	b _0802FED4
	.align 2, 0
_0802FDDC: .4byte gUnknown_030044D8
_0802FDE0:
	mov r2, sb
	ldr r0, [r2]
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r3, r0
	bne _0802FDF2
	b _0802FBA8
_0802FDF2:
	b _0802FED4
_0802FDF4:
	ldr r0, _0802FE04 @ =gUnknown_030044C4
	movs r1, #1
	lsls r1, r7
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	b _0802FED4
	.align 2, 0
_0802FE04: .4byte gUnknown_030044C4
_0802FE08:
	ldr r1, _0802FE34 @ =gUnknown_0300410C
	ldr r0, _0802FE38 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	mov r0, sb
	ldr r2, [r0]
	ldr r0, [r2]
	adds r0, #0xa
	ldrb r1, [r5, #1]
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r1, #0
	strb r1, [r0]
	ldr r2, [r2]
	movs r0, #1
	ldrb r5, [r5, #1]
	lsls r0, r5
	ldrb r1, [r2, #9]
	bics r1, r0
	ldrb r0, [r2, #9]
	strb r1, [r2, #9]
	b _0802FED4
	.align 2, 0
_0802FE34: .4byte gUnknown_0300410C
_0802FE38: .4byte gUnknown_030040CC
_0802FE3C:
	movs r0, #2
	ldrsb r0, [r5, r0]
	bl sub_0802F460
	lsls r0, r0, #0x18
	adds r7, #1
	mov r8, r7
	cmp r0, #0
	bne _0802FED8
	mov r2, sb
	ldr r3, [r2]
	ldr r1, [r3]
	ldrh r2, [r1, #2]
	movs r0, #0x30
	ands r0, r2
	lsrs r0, r0, #4
	adds r1, #0xa
	adds r1, r1, r0
	ldrb r0, [r1]
	movs r2, #2
	strb r2, [r1]
	ldr r0, [r3]
	adds r0, #0xa
	ldrh r5, [r5, #2]
	adds r0, r0, r5
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r1, [r3]
	b _0802FE9C
_0802FE76:
	movs r0, #2
	ldrsb r0, [r5, r0]
	bl sub_0802F460
	lsls r0, r0, #0x18
	adds r7, #1
	mov r8, r7
	cmp r0, #0
	bne _0802FED8
	mov r0, sb
	ldr r2, [r0]
	ldr r0, [r2]
	adds r0, #0xa
	ldrh r5, [r5, #2]
	adds r0, r0, r5
	ldrb r1, [r0]
	movs r1, #2
	strb r1, [r0]
	ldr r1, [r2]
_0802FE9C:
	ldrh r0, [r1, #4]
	movs r0, #6
	strh r0, [r1, #4]
	b _0802FED8
_0802FEA4:
	mov r1, sb
	ldr r3, [r1]
	ldr r1, [r3]
	adds r1, #0xa
	ldrh r2, [r5, #2]
	adds r1, r1, r2
	ldrb r0, [r1]
	movs r4, #0
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r3]
	movs r1, #1
	ldrh r0, [r5, #2]
	lsls r1, r0
	ldrb r0, [r2, #9]
	orrs r1, r0
	ldrb r0, [r2, #9]
	strb r1, [r2, #9]
	ldr r0, [r3]
	adds r0, #0x16
	ldrh r5, [r5, #2]
	adds r0, r0, r5
	ldrb r1, [r0]
	strb r4, [r0]
_0802FED4:
	adds r7, #1
	mov r8, r7
_0802FED8:
	mov r7, r8
	cmp r7, #3
	bgt _0802FEE0
	b _0802FBA8
_0802FEE0:
	mov r1, sb
	ldr r5, [r1]
	ldr r1, [r5]
	ldrb r0, [r1, #0x1d]
	adds r4, r0, #0
	cmp r4, #0
	bne _0802FF4C
	ldrb r0, [r1, #0x1e]
	cmp r0, #0x3c
	bls _0802FF02
	bl sub_0802EA24
	ldr r0, [r5]
	ldrh r1, [r0, #4]
	movs r1, #2
	strh r1, [r0, #4]
	b _08030028
_0802FF02:
	mov r0, sp
	bl sub_080307E0
	adds r6, r0, #0
	cmp r6, #0
	beq _0802FF4C
	ldr r1, [sp]
	adds r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl sub_0802F588
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0802FF3C
	ldr r0, [r5]
	ldrb r1, [r0, #0x1d]
	strb r4, [r0, #0x1d]
	ldr r1, [r5]
	ldrb r0, [r1, #0x1e]
	adds r0, #1
	ldrb r2, [r1, #0x1e]
	strb r0, [r1, #0x1e]
	ldr r1, _0802FF38 @ =gUnknown_030044D8
	movs r0, #1
	strb r0, [r1]
	b _0802FF4C
	.align 2, 0
_0802FF38: .4byte gUnknown_030044D8
_0802FF3C:
	ldr r0, [r5]
	ldrb r1, [r0, #0x1d]
	strb r4, [r0, #0x1d]
	ldr r1, [r5]
	ldrb r0, [r1, #0x1e]
	adds r0, #1
	ldrb r2, [r1, #0x1e]
	strb r0, [r1, #0x1e]
_0802FF4C:
	ldr r6, _0802FFB8 @ =gUnknown_030044D8
	ldrb r0, [r6]
	cmp r0, #0
	beq _0802FFC0
	mov r2, sb
	ldr r5, [r2]
	ldr r4, [r5]
	ldrb r0, [r4, #0x1c]
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #9]
	ands r0, r1
	cmp r0, r2
	bne _0802FFC0
	ldrh r0, [r4, #0x22]
	adds r0, #1
	ldrh r1, [r4, #0x22]
	movs r3, #0
	strh r0, [r4, #0x22]
	ldr r2, _0802FFBC @ =0x00001AAC
	adds r0, r4, r2
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r4, r0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	strb r3, [r0]
	ldr r1, [r5]
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	ldrb r4, [r1]
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0x1f
	ands r0, r2
	ldrb r2, [r1]
	strb r0, [r1]
	strb r3, [r6]
	ldr r0, [r5]
	ldrb r1, [r0, #0x1c]
	strb r3, [r0, #0x1c]
	ldrb r1, [r0, #0x1c]
	ldrb r2, [r0, #0x1e]
	strb r1, [r0, #0x1e]
	ldrb r1, [r0, #0x1e]
	ldrb r2, [r0, #0x1d]
	strb r1, [r0, #0x1d]
	b _08030028
	.align 2, 0
_0802FFB8: .4byte gUnknown_030044D8
_0802FFBC: .4byte 0x00001AAC
_0802FFC0:
	mov r0, sb
	ldr r2, [r0]
	ldr r1, [r2]
	ldrb r0, [r1, #0x1d]
	adds r0, #1
	ldrb r3, [r1, #0x1d]
	strb r0, [r1, #0x1d]
	ldr r1, [r2]
	ldrb r2, [r1, #0x1d]
	movs r0, #0xf
	ands r0, r2
	ldrb r2, [r1, #0x1d]
	strb r0, [r1, #0x1d]
	b _08030028
_0802FFDC:
	ldrb r0, [r2, #1]
	cmp r0, #2
	beq _0802FFE8
	ldrb r0, [r2, #1]
	cmp r0, #3
	bne _08030028
_0802FFE8:
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _08030028
	ldr r4, _08030004 @ =gUnknown_0849B01C
	ldr r0, [r4]
	adds r0, #6
	movs r1, #1
	bl sub_0802F8FC
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	ldr r0, _08030008 @ =0x00005FFF
	strh r0, [r1, #6]
	b _08030028
	.align 2, 0
_08030004: .4byte gUnknown_0849B01C
_08030008: .4byte 0x00005FFF
_0803000C:
	adds r0, r2, #0
	adds r0, #0xa
	adds r0, r0, r7
	ldrb r1, [r0]
	movs r1, #0
	strb r1, [r0]
_08030018:
	bl sub_0802EA24
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #4]
_08030028:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08030038
sub_08030038: @ 0x08030038
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	ldr r3, _08030164 @ =gUnknown_02025564
_0803004E:
	adds r2, r5, r3
	mov r1, r8
	adds r0, r1, r5
	ldrb r1, [r2]
	ldrb r0, [r0]
	orrs r1, r0
	ldrb r0, [r2]
	strb r1, [r2]
	adds r5, #1
	cmp r5, #1
	ble _0803004E
	movs r5, #0
	mov r6, r8
	adds r6, #5
	lsls r7, r4, #0x10
	mov r0, r8
	adds r0, #0x22
	str r0, [sp, #4]
	movs r1, #0x34
	add r1, r8
	mov sl, r1
	ldr r4, _08030168 @ =gUnknown_02025566
	mov r3, r8
	adds r3, #2
_0803007E:
	adds r2, r5, r4
	adds r0, r3, r5
	ldrb r1, [r2]
	ldrb r0, [r0]
	orrs r1, r0
	ldrb r0, [r2]
	strb r1, [r2]
	adds r5, #1
	cmp r5, #2
	ble _0803007E
	movs r5, #0
	ldr r4, _0803016C @ =gUnknown_02025569
	adds r3, r6, #0
_08030098:
	adds r2, r5, r4
	adds r0, r3, r5
	ldrb r1, [r2]
	ldrb r0, [r0]
	orrs r1, r0
	ldrb r0, [r2]
	strb r1, [r2]
	adds r5, #1
	cmp r5, #0x17
	ble _08030098
	movs r6, #0
	asrs r0, r7, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	str r1, [sp]
	mov sb, r0
_080300B8:
	ldr r1, [sp]
	adds r0, r1, r6
	lsls r2, r0, #3
	subs r2, r2, r0
	lsls r2, r2, #2
	ldr r0, _08030164 @ =gUnknown_02025564
	adds r5, r2, r0
	lsls r4, r6, #3
	subs r3, r4, r6
	lsls r3, r3, #2
	mov r1, r8
	adds r1, r1, r3
	mov ip, r1
	mov r0, ip
	adds r0, #0x20
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	mov r0, ip
	adds r0, #0x21
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x21
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x33
	ldrb r0, [r0]
	adds r1, #0x12
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x39
	ldrb r0, [r0]
	adds r1, #6
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x3a
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x3a
	strb r1, [r0]
	movs r5, #0
	adds r7, r6, #1
	ldr r0, _08030170 @ =gUnknown_02025586
	adds r2, r2, r0
_08030112:
	adds r0, r5, r3
	ldr r1, [sp, #4]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r2]
	adds r2, #1
	adds r5, #1
	cmp r5, #0x10
	ble _08030112
	movs r5, #0
	mov r1, sb
	lsls r0, r1, #1
	add r0, sb
	adds r0, r0, r6
	ldr r2, _08030174 @ =gUnknown_02025598
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #2
	subs r0, r4, r6
	lsls r4, r0, #2
	adds r1, r1, r2
_0803013C:
	adds r0, r5, r4
	add r0, sl
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r5, #1
	cmp r5, #4
	ble _0803013C
	adds r6, r7, #0
	cmp r6, #2
	ble _080300B8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030164: .4byte gUnknown_02025564
_08030168: .4byte gUnknown_02025566
_0803016C: .4byte gUnknown_02025569
_08030170: .4byte gUnknown_02025586
_08030174: .4byte gUnknown_02025598

	thumb_func_start sub_08030178
sub_08030178: @ 0x08030178
	push {r4, r5, r6, lr}
	ldr r5, _080301D8 @ =gUnknown_08090CAC
	ldr r6, [r5]
	ldr r1, [r6]
	ldrh r0, [r1]
	adds r0, #1
	ldrh r2, [r1]
	movs r4, #0
	strh r0, [r1]
	ldrh r2, [r1]
	movs r0, #7
	ands r0, r2
	ldrh r2, [r1]
	strh r0, [r1]
	bl sub_08013434
	ldr r0, _080301DC @ =0x04000208
	strh r4, [r0]
	movs r2, #0
	ldr r0, _080301E0 @ =0x0000FFFF
	adds r4, r0, #0
_080301A2:
	ldr r0, [r6]
	lsls r1, r2, #1
	adds r0, #8
	adds r0, r0, r1
	ldrh r1, [r0]
	orrs r1, r4
	strh r1, [r0]
	adds r2, #1
	cmp r2, #3
	ble _080301A2
	ldr r3, [r5]
	ldr r1, [r3]
	ldrh r0, [r1, #6]
	movs r2, #0
	ldr r0, _080301E4 @ =0x00005FFF
	strh r0, [r1, #6]
	ldrb r0, [r1, #5]
	strb r2, [r1, #5]
	ldr r0, [r3]
	ldrb r1, [r0, #4]
	movs r1, #1
	strb r1, [r0, #4]
	ldr r0, _080301DC @ =0x04000208
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080301D8: .4byte gUnknown_08090CAC
_080301DC: .4byte 0x04000208
_080301E0: .4byte 0x0000FFFF
_080301E4: .4byte 0x00005FFF

	thumb_func_start sub_080301E8
sub_080301E8: @ 0x080301E8
	push {r4, r5, r6, r7, lr}
	movs r4, #0
	ldr r7, _08030230 @ =gUnknown_08090CB0
	ldr r6, [r7]
	movs r5, #0x82
	lsls r5, r5, #2
_080301F4:
	ldr r1, [r6]
	lsls r2, r4, #1
	adds r3, r1, r5
	adds r3, r3, r2
	ldrb r0, [r1, #5]
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r1, #8
	adds r1, r1, r2
	ldrh r0, [r1]
	ldrh r1, [r3]
	strh r0, [r3]
	adds r4, #1
	cmp r4, #3
	ble _080301F4
	ldr r2, [r7]
	ldr r1, [r2]
	ldrb r0, [r1, #5]
	adds r0, #1
	ldrb r3, [r1, #5]
	strb r0, [r1, #5]
	ldr r1, [r2]
	ldrb r2, [r1, #5]
	movs r0, #0x3f
	ands r0, r2
	ldrb r2, [r1, #5]
	strb r0, [r1, #5]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030230: .4byte gUnknown_08090CB0

	thumb_func_start sub_08030234
sub_08030234: @ 0x08030234
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov sl, r0
	mov r8, r0
	ldr r3, _08030324 @ =gUnknown_08090CB4
	ldr r0, [r3]
	ldr r1, [r0]
	ldr r2, _08030328 @ =gUnknown_08090CB8
	ldr r0, [r2]
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x17
	movs r4, #0x82
	lsls r4, r4, #2
	adds r1, r1, r4
	adds r1, r1, r0
	ldrh r1, [r1]
	movs r0, #0xe0
	lsls r0, r0, #5
	ands r0, r1
	lsrs r7, r0, #0xa
	movs r6, #0
	mov sb, r3
	mov r4, sp
	movs r5, #0
_08030272:
	movs r0, #0
	strh r0, [r4]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080302DE
	mov r1, sb
	ldr r0, [r1]
	ldr r0, [r0]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r2, r0, r5
	ldrh r0, [r2]
	ldr r1, _0803032C @ =0x0000FFFF
	cmp r0, r1
	beq _080302B8
	ldrh r0, [r2]
	ldr r1, _08030330 @ =0x00005FFF
	cmp r0, r1
	beq _080302B8
	ldrh r1, [r2]
	ldr r0, _08030334 @ =0x00007FFF
	cmp r1, r0
	beq _080302B8
	ldrh r0, [r2]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080302BC
_080302B8:
	movs r0, #1
	add sl, r0
_080302BC:
	mov r1, sb
	ldr r0, [r1]
	ldr r0, [r0]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r5
	ldrh r0, [r0]
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r1, r2, #0
	ands r0, r1
	lsrs r0, r0, #0xa
	cmp r0, r7
	beq _080302DE
	movs r0, #1
	add r8, r0
_080302DE:
	adds r4, #2
	adds r5, #2
	adds r6, #1
	cmp r6, #3
	ble _08030272
	movs r6, #0
	ldr r7, _08030338 @ =gUnknown_03002040
	mov r4, sp
	movs r5, #0
_080302F0:
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803034E
	mov r1, sl
	cmp r1, #0
	bne _08030340
	mov r2, r8
	cmp r2, #0
	bne _08030346
	mov r1, sb
	ldr r0, [r1]
	ldr r0, [r0]
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r0, r0, r5
	ldrh r0, [r0]
	ldr r2, _0803033C @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	b _0803034C
	.align 2, 0
_08030324: .4byte gUnknown_08090CB4
_08030328: .4byte gUnknown_08090CB8
_0803032C: .4byte 0x0000FFFF
_08030330: .4byte 0x00005FFF
_08030334: .4byte 0x00007FFF
_08030338: .4byte gUnknown_03002040
_0803033C: .4byte 0x000003FF
_08030340:
	mov r0, r8
	cmp r0, #0
	beq _0803034A
_08030346:
	movs r0, #0
	b _0803034C
_0803034A:
	ldrh r0, [r7, #6]
_0803034C:
	strh r0, [r4]
_0803034E:
	adds r7, #0x14
	adds r4, #2
	adds r5, #2
	adds r6, #1
	cmp r6, #3
	ble _080302F0
	mov r1, r8
	cmp r1, #0
	beq _08030374
	ldr r0, _08030370 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrb r0, [r1, #0x1b]
	adds r0, #1
	ldrb r2, [r1, #0x1b]
	strb r0, [r1, #0x1b]
	b _0803037E
	.align 2, 0
_08030370: .4byte gUnknown_0849B018
_08030374:
	ldr r0, _080303A8 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r1, [r0, #0x1b]
	mov r2, r8
	strb r2, [r0, #0x1b]
_0803037E:
	mov r4, sp
	ldr r5, _080303AC @ =gUnknown_03002040
	movs r6, #3
_08030384:
	movs r0, #0
	ldrsh r1, [r4, r0]
	adds r0, r5, #0
	bl sub_0801348C
	adds r4, #2
	adds r5, #0x14
	subs r6, #1
	cmp r6, #0
	bge _08030384
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080303A8: .4byte gUnknown_0849B018
_080303AC: .4byte gUnknown_03002040

	thumb_func_start sub_080303B0
sub_080303B0: @ 0x080303B0
	ldr r0, _080303C0 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _080303C4
	movs r0, #1
	b _080303C6
	.align 2, 0
_080303C0: .4byte gUnknown_0849B018
_080303C4:
	movs r0, #0
_080303C6:
	bx lr

	thumb_func_start sub_080303C8
sub_080303C8: @ 0x080303C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov r8, r0
	ldr r0, _080304B0 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	ldr r1, _080304B4 @ =gUnknown_08090CBC
	mov sb, r1
	cmp r0, #0
	bne _080303E6
	b _08030550
_080303E6:
	ldr r4, [r1]
	ldr r1, [r4]
	ldrb r0, [r1, #1]
	cmp r0, #2
	beq _080303F2
	b _08030550
_080303F2:
	ldrb r0, [r1, #6]
	ldr r1, _080304B8 @ =gUnknown_08090CC0
	ldr r7, _080304BC @ =gUnknown_08090CC4
	cmp r0, #0
	beq _08030416
	ldr r2, [r1]
	ldr r0, [r2]
	cmp r0, #0
	bne _08030416
	adds r3, r2, #0
	adds r2, r4, #0
_08030408:
	ldr r0, [r3]
	cmp r0, #0
	bne _08030416
	ldr r0, [r2]
	ldrh r0, [r0, #4]
	cmp r0, #2
	bne _08030408
_08030416:
	ldr r2, _080304C0 @ =0x04000208
	movs r0, #0
	strh r0, [r2]
	ldr r1, [r1]
	movs r0, #0
	str r0, [r1]
	movs r0, #1
	strh r0, [r2]
	bl sub_080301E8
	ldr r0, [r7]
	ldr r3, [r0]
	ldr r0, _080304C4 @ =0x04000130
	ldrh r0, [r0]
	ldr r2, _080304C8 @ =0x000003FF
	adds r1, r2, #0
	bics r1, r0
	ldrh r0, [r3]
	lsls r0, r0, #0xa
	movs r4, #0x80
	lsls r4, r4, #8
	adds r2, r4, #0
	orrs r0, r2
	orrs r1, r0
	ldrh r0, [r3, #2]
	lsls r0, r0, #0xd
	orrs r1, r0
	ldrh r0, [r3, #6]
	strh r1, [r3, #6]
	movs r4, #0
	ldr r6, _080304CC @ =0x00005FFF
	mov sl, r6
_08030456:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080304FC
	ldr r0, [r7]
	mov ip, r0
	ldr r3, [r0]
	lsls r0, r4, #1
	movs r2, #0x82
	lsls r2, r2, #2
	adds r1, r3, r2
	adds r2, r1, r0
	ldrh r0, [r2]
	ldr r6, _080304D0 @ =0xFFFF0000
	lsrs r5, r6, #0x10
	cmp r0, r5
	beq _0803049A
	ldrh r0, [r2]
	cmp r0, sl
	beq _0803049A
	ldrh r1, [r2]
	ldr r0, _080304D4 @ =0x00007FFF
	cmp r1, r0
	beq _0803049A
	ldrh r0, [r2]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r1, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080304DC
_0803049A:
	ldr r0, [r7]
	ldr r1, [r0]
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	ldr r2, _080304D8 @ =0x0000FFFF
	orrs r0, r2
	strh r0, [r1]
	b _0803055C
	.align 2, 0
_080304B0: .4byte gUnknown_03003FC0
_080304B4: .4byte gUnknown_08090CBC
_080304B8: .4byte gUnknown_08090CC0
_080304BC: .4byte gUnknown_08090CC4
_080304C0: .4byte 0x04000208
_080304C4: .4byte 0x04000130
_080304C8: .4byte 0x000003FF
_080304CC: .4byte 0x00005FFF
_080304D0: .4byte 0xFFFF0000
_080304D4: .4byte 0x00007FFF
_080304D8: .4byte 0x0000FFFF
_080304DC:
	ldrh r0, [r2]
	movs r6, #0xe0
	lsls r6, r6, #5
	adds r1, r6, #0
	ands r0, r1
	ldrh r1, [r3]
	lsrs r0, r0, #0xa
	cmp r0, r1
	bne _0803052C
	ldrh r0, [r2]
	ldr r2, _08030528 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	mov r6, r8
	orrs r6, r0
	mov r8, r6
_080304FC:
	adds r4, #1
	cmp r4, #3
	ble _08030456
	ldr r3, [r7]
	ldr r0, [r3]
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	movs r1, #0
	mov r4, r8
	strh r4, [r0]
	mov r6, sb
	ldr r0, [r6]
	ldr r0, [r0]
	ldrb r4, [r0, #0x1b]
	strb r1, [r0, #0x1b]
	ldr r0, [r3]
	adds r0, r0, r2
	ldrh r0, [r0]
	b _08030562
	.align 2, 0
_08030528: .4byte 0x000003FF
_0803052C:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0]
	ldrb r0, [r1, #0x1b]
	adds r0, #1
	ldrb r2, [r1, #0x1b]
	strb r0, [r1, #0x1b]
	mov r2, ip
	ldr r1, [r2]
	movs r4, #0x84
	lsls r4, r4, #2
	adds r1, r1, r4
	ldrh r2, [r1]
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r1]
	movs r0, #0
	b _08030562
_08030550:
	mov r6, sb
	ldr r0, [r6]
	ldr r1, [r0]
	ldrb r0, [r1, #0x1b]
	movs r0, #0
	strb r0, [r1, #0x1b]
_0803055C:
	ldr r0, _08030570 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
_08030562:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08030570: .4byte gUnknown_03002EE0

	thumb_func_start sub_08030574
sub_08030574: @ 0x08030574
	ldr r0, _08030580 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	movs r0, #5
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_08030580: .4byte gUnknown_0849B018

	thumb_func_start sub_08030584
sub_08030584: @ 0x08030584
	push {r4, r5, lr}
	ldr r5, _080305E8 @ =gUnknown_08090CC8
	ldr r0, [r5]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r1, #0
	movs r4, #0
	strh r4, [r0, #4]
	ldrb r2, [r0, #1]
	strb r1, [r0, #1]
	bl sub_0802F23C
	ldr r1, _080305EC @ =gUnknown_030040C0
	movs r0, #0xa
	strh r0, [r1, #6]
	strh r4, [r1, #0xa]
	ldr r1, _080305F0 @ =gUnknown_0300410C
	ldr r0, _080305F4 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, _080305F8 @ =gUnknown_03003128
	ldr r3, _080305FC @ =gUnknown_03003F48
	movs r4, #3
_080305B2:
	ldrh r0, [r2]
	ldrh r1, [r3]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	subs r4, #1
	cmp r4, #0
	bge _080305B2
	ldr r2, [r5]
	ldr r1, [r2]
	ldrb r0, [r1, #1]
	movs r0, #2
	strb r0, [r1, #1]
	ldr r1, [r2]
	ldrh r0, [r1, #4]
	movs r0, #6
	strh r0, [r1, #4]
	bl sub_0803B588
	movs r0, #0xc8
	lsls r0, r0, #1
	bl sub_0803B524
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080305E8: .4byte gUnknown_08090CC8
_080305EC: .4byte gUnknown_030040C0
_080305F0: .4byte gUnknown_0300410C
_080305F4: .4byte gUnknown_030040CC
_080305F8: .4byte gUnknown_03003128
_080305FC: .4byte gUnknown_03003F48

	thumb_func_start sub_08030600
sub_08030600: @ 0x08030600
	push {r4, r5, lr}
	ldr r4, _08030658 @ =gUnknown_08090CCC
	ldr r0, [r4]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #4]
	ldrb r0, [r1, #1]
	strb r2, [r1, #1]
	bl sub_0802F03C
	ldr r1, _0803065C @ =gUnknown_030040C0
	movs r0, #0x88
	strh r0, [r1, #0xa]
	strh r0, [r1, #6]
	ldr r1, _08030660 @ =gUnknown_0300410C
	ldr r0, _08030664 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r5, r4, #0
	ldr r4, _08030668 @ =gUnknown_03003128
	ldr r3, _0803066C @ =gUnknown_03003F48
	movs r2, #3
_08030630:
	ldrh r0, [r4]
	ldrh r1, [r3]
	strh r0, [r3]
	adds r4, #2
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bge _08030630
	ldr r2, [r5]
	ldr r1, [r2]
	ldrb r0, [r1, #1]
	movs r0, #1
	strb r0, [r1, #1]
	ldr r1, [r2]
	ldrh r0, [r1, #4]
	movs r0, #6
	strh r0, [r1, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030658: .4byte gUnknown_08090CCC
_0803065C: .4byte gUnknown_030040C0
_08030660: .4byte gUnknown_0300410C
_08030664: .4byte gUnknown_030040CC
_08030668: .4byte gUnknown_03003128
_0803066C: .4byte gUnknown_03003F48

	thumb_func_start sub_08030670
sub_08030670: @ 0x08030670
	push {r4, r5, lr}
	ldr r4, _080306CC @ =gUnknown_08090CD0
	ldr r0, [r4]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #4]
	ldrb r0, [r1, #1]
	strb r2, [r1, #1]
	bl sub_0802F03C
	bl sub_0803B5E8
	ldr r1, _080306D0 @ =gUnknown_030040C0
	movs r0, #0x26
	strh r0, [r1, #0xa]
	strh r0, [r1, #6]
	ldr r1, _080306D4 @ =gUnknown_0300410C
	ldr r0, _080306D8 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	adds r5, r4, #0
	ldr r4, _080306DC @ =gUnknown_03003128
	ldr r3, _080306E0 @ =gUnknown_03003F48
	movs r2, #3
_080306A4:
	ldrh r0, [r4]
	ldrh r1, [r3]
	strh r0, [r3]
	adds r4, #2
	adds r3, #2
	subs r2, #1
	cmp r2, #0
	bge _080306A4
	ldr r2, [r5]
	ldr r1, [r2]
	ldrb r0, [r1, #1]
	movs r0, #1
	strb r0, [r1, #1]
	ldr r1, [r2]
	ldrh r0, [r1, #4]
	movs r0, #6
	strh r0, [r1, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080306CC: .4byte gUnknown_08090CD0
_080306D0: .4byte gUnknown_030040C0
_080306D4: .4byte gUnknown_0300410C
_080306D8: .4byte gUnknown_030040CC
_080306DC: .4byte gUnknown_03003128
_080306E0: .4byte gUnknown_03003F48

	thumb_func_start sub_080306E4
sub_080306E4: @ 0x080306E4
	push {r4, lr}
	sub sp, #4
	ldr r1, _08030744 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	ldr r0, _08030748 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	movs r4, #0
	movs r0, #3
	strb r0, [r1, #1]
	bl sub_0802F23C
	ldr r1, _0803074C @ =gUnknown_030040C0
	movs r0, #0xa
	strh r0, [r1, #6]
	strh r4, [r1, #0xa]
	mov r0, sp
	movs r1, #1
	bl sub_0802F8FC
	ldr r1, _08030750 @ =gUnknown_0300410C
	ldr r0, _08030754 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r4, _08030758 @ =gUnknown_03003128
	ldr r2, _0803075C @ =gUnknown_03003F48
	movs r3, #3
_0803071C:
	ldrh r0, [r4]
	ldrh r1, [r2]
	strh r0, [r2]
	adds r4, #2
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _0803071C
	ldr r0, _08030760 @ =gUnknown_0849B01C
	ldr r0, [r0]
	ldr r1, _08030764 @ =0x00000212
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r1, #0
	strh r1, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030744: .4byte 0x00007FFF
_08030748: .4byte gUnknown_0849B018
_0803074C: .4byte gUnknown_030040C0
_08030750: .4byte gUnknown_0300410C
_08030754: .4byte gUnknown_030040CC
_08030758: .4byte gUnknown_03003128
_0803075C: .4byte gUnknown_03003F48
_08030760: .4byte gUnknown_0849B01C
_08030764: .4byte 0x00000212

	thumb_func_start sub_08030768
sub_08030768: @ 0x08030768
	push {r4, lr}
	sub sp, #4
	ldr r1, _080307BC @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	ldr r0, _080307C0 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrb r0, [r1, #1]
	movs r0, #0
	strb r0, [r1, #1]
	mov r0, sp
	movs r1, #1
	bl sub_0802F8FC
	ldr r1, _080307C4 @ =gUnknown_0300410C
	ldr r0, _080307C8 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r4, _080307CC @ =gUnknown_03003128
	ldr r2, _080307D0 @ =gUnknown_03003F48
	movs r3, #3
_08030792:
	ldrh r0, [r4]
	ldrh r1, [r2]
	strh r0, [r2]
	adds r4, #2
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _08030792
	ldr r3, _080307D4 @ =gUnknown_03003F1C
	ldr r2, _080307D8 @ =gUnknown_030044C4
	ldr r1, _080307DC @ =gUnknown_030040AC
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r1]
	strb r0, [r2]
	ldrb r0, [r2]
	strb r0, [r3]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080307BC: .4byte 0x00007FFF
_080307C0: .4byte gUnknown_0849B018
_080307C4: .4byte gUnknown_0300410C
_080307C8: .4byte gUnknown_030040CC
_080307CC: .4byte gUnknown_03003128
_080307D0: .4byte gUnknown_03003F48
_080307D4: .4byte gUnknown_03003F1C
_080307D8: .4byte gUnknown_030044C4
_080307DC: .4byte gUnknown_030040AC

	thumb_func_start sub_080307E0
sub_080307E0: @ 0x080307E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08030828 @ =gUnknown_0849B018
	ldr r3, [r0]
	ldr r0, _0803082C @ =0x00001AAC
	adds r2, r3, r0
	ldrb r1, [r2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0xaf
	bne _08030830
	ldrb r1, [r2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r4]
	ldrb r1, [r2]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r0, r3, r0
	b _08030832
	.align 2, 0
_08030828: .4byte gUnknown_0849B018
_0803082C: .4byte 0x00001AAC
_08030830:
	movs r0, #0
_08030832:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08030838
sub_08030838: @ 0x08030838
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r3, _080308A8 @ =gUnknown_08090CD4
	ldr r0, [r3]
	ldr r2, [r0]
	ldr r1, _080308AC @ =0x00001AAF
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _080308B0 @ =0x0000122C
	adds r0, r0, r1
	adds r2, r2, r0
	ldrb r0, [r5]
	strb r0, [r2]
	ldrb r0, [r5, #1]
	strb r0, [r2, #1]
	ldrh r0, [r5, #2]
	strh r0, [r2, #2]
	ldrh r0, [r5, #4]
	strh r0, [r2, #4]
	movs r4, #0
	adds r6, r3, #0
	ldrh r0, [r5, #4]
	cmp r4, r0
	bge _08030882
	adds r3, r2, #6
	adds r2, r5, #6
_08030872:
	adds r0, r3, r4
	adds r1, r2, r4
	ldrb r1, [r1]
	strb r1, [r0]
	adds r4, #1
	ldrh r1, [r5, #4]
	cmp r4, r1
	blt _08030872
_08030882:
	ldr r3, [r6]
	ldr r1, [r3]
	ldr r2, _080308AC @ =0x00001AAF
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	ldrb r4, [r1]
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	ldrb r2, [r1]
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080308A8: .4byte gUnknown_08090CD4
_080308AC: .4byte 0x00001AAF
_080308B0: .4byte 0x0000122C

	thumb_func_start sub_080308B4
sub_080308B4: @ 0x080308B4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08030928 @ =gUnknown_08090CD8
	ldr r3, [r4]
	ldr r2, [r3]
	ldr r1, _0803092C @ =0x00001AAD
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r2, r0
	movs r0, #0xaf
	strb r0, [r2]
	ldr r0, [r3]
	ldrb r0, [r0, #6]
	strb r0, [r2, #1]
	ldr r1, [r3]
	ldrh r0, [r1, #0x20]
	strh r0, [r2, #2]
	movs r0, #0x14
	strh r0, [r2, #4]
	ldrh r0, [r1, #0x20]
	adds r0, #1
	ldrh r3, [r1, #0x20]
	strh r0, [r1, #0x20]
	movs r3, #0
	adds r2, #6
_080308F2:
	adds r1, r2, r3
	adds r0, r5, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x13
	bls _080308F2
	ldr r3, [r4]
	ldr r1, [r3]
	ldr r2, _0803092C @ =0x00001AAD
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	ldrb r4, [r1]
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0x1f
	ands r0, r2
	ldrb r2, [r1]
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030928: .4byte gUnknown_08090CD8
_0803092C: .4byte 0x00001AAD

	thumb_func_start sub_08030930
sub_08030930: @ 0x08030930
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _080309A4 @ =gUnknown_08090CDC
	ldr r3, [r4]
	ldr r2, [r3]
	ldr r1, _080309A8 @ =0x00001AAD
	adds r0, r2, r1
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r2, r2, r0
	movs r0, #0xaf
	strb r0, [r2]
	ldr r0, [r3]
	ldrb r0, [r0, #6]
	strb r0, [r2, #1]
	ldr r1, [r3]
	ldrh r0, [r1, #0x20]
	strh r0, [r2, #2]
	movs r0, #0x80
	strh r0, [r2, #4]
	ldrh r0, [r1, #0x20]
	adds r0, #1
	ldrh r3, [r1, #0x20]
	strh r0, [r1, #0x20]
	movs r3, #0
	adds r2, #6
_0803096E:
	adds r1, r2, r3
	adds r0, r5, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _0803096E
	ldr r3, [r4]
	ldr r1, [r3]
	ldr r2, _080309A8 @ =0x00001AAD
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	ldrb r4, [r1]
	strb r0, [r1]
	ldr r1, [r3]
	adds r1, r1, r2
	ldrb r2, [r1]
	movs r0, #0x1f
	ands r0, r2
	ldrb r2, [r1]
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080309A4: .4byte gUnknown_08090CDC
_080309A8: .4byte 0x00001AAD

	thumb_func_start sub_080309AC
sub_080309AC: @ 0x080309AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	mov sl, r1
	ldr r0, _080309F0 @ =gUnknown_08090CE0
	mov sb, r0
_080309BE:
	mov r1, sb
	ldr r7, [r1]
	ldr r2, [r7]
	ldr r5, _080309F4 @ =0x00001AAE
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _080309F8 @ =0x0000122C
	adds r0, r0, r1
	adds r6, r2, r0
	ldrb r0, [r6]
	cmp r0, #0xaf
	bne _080309E8
	ldrb r1, [r6, #1]
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _080309FC
_080309E8:
	movs r0, #1
	rsbs r0, r0, #0
	b _08030AEE
	.align 2, 0
_080309F0: .4byte gUnknown_08090CE0
_080309F4: .4byte 0x00001AAE
_080309F8: .4byte 0x0000122C
_080309FC:
	lsls r0, r1, #1
	adds r3, r2, #0
	adds r3, #0x24
	adds r0, r3, r0
	ldrh r1, [r0]
	ldrh r0, [r6, #2]
	cmp r0, r1
	beq _08030A40
	ldr r0, _08030A3C @ =gUnknown_0202575C
	movs r1, #0xae
	strb r1, [r0]
	ldrb r1, [r2, #6]
	strb r1, [r0, #1]
	ldrb r1, [r6, #1]
	lsls r1, r1, #1
	adds r1, r3, r1
	ldrh r1, [r1]
	movs r4, #0
	strh r1, [r0, #2]
	movs r1, #4
	bl sub_0802F588
	strb r4, [r6]
	ldr r1, [r7]
	adds r1, r1, r5
	ldrb r0, [r1]
	adds r0, #1
	ldrb r2, [r1]
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, r1, r5
	b _08030AA2
	.align 2, 0
_08030A3C: .4byte gUnknown_0202575C
_08030A40:
	movs r2, #0
	adds r3, r6, #6
_08030A44:
	mov r0, r8
	adds r1, r0, r2
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x13
	bls _08030A44
	mov r1, sl
	cmp r1, #0
	beq _08030AB8
	mov r0, r8
	bl _call_via_sl
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030AB8
	ldr r0, _08030AB0 @ =gUnknown_0202575C
	movs r1, #0xae
	strb r1, [r0]
	mov r1, sb
	ldr r5, [r1]
	ldr r2, [r5]
	ldrb r1, [r2, #6]
	strb r1, [r0, #1]
	ldrb r1, [r6, #1]
	lsls r1, r1, #1
	adds r2, #0x24
	adds r2, r2, r1
	ldrh r1, [r2]
	movs r4, #0
	strh r1, [r0, #2]
	movs r1, #4
	bl sub_0802F588
	strb r4, [r6]
	ldr r1, [r5]
	ldr r2, _08030AB4 @ =0x00001AAE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	ldrb r3, [r1]
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r1, r2
_08030AA2:
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	ldrb r2, [r1]
	strb r0, [r1]
	b _080309BE
	.align 2, 0
_08030AB0: .4byte gUnknown_0202575C
_08030AB4: .4byte 0x00001AAE
_08030AB8:
	movs r0, #0
	strb r0, [r6]
	ldrb r0, [r6, #1]
	mov r1, sb
	ldr r5, [r1]
	ldr r3, [r5]
	lsls r1, r0, #1
	adds r2, r3, #0
	adds r2, #0x24
	adds r2, r2, r1
	ldrh r1, [r2]
	adds r1, #1
	ldrh r4, [r2]
	strh r1, [r2]
	ldr r4, _08030AFC @ =0x00001AAE
	adds r3, r3, r4
	ldrb r1, [r3]
	adds r1, #1
	ldrb r2, [r3]
	strb r1, [r3]
	ldr r2, [r5]
	adds r2, r2, r4
	ldrb r3, [r2]
	movs r1, #0xf
	ands r1, r3
	ldrb r3, [r2]
	strb r1, [r2]
_08030AEE:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08030AFC: .4byte 0x00001AAE

	thumb_func_start sub_08030B00
sub_08030B00: @ 0x08030B00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	mov sl, r1
	ldr r0, _08030B44 @ =gUnknown_08090CE4
	mov sb, r0
_08030B12:
	mov r1, sb
	ldr r7, [r1]
	ldr r2, [r7]
	ldr r5, _08030B48 @ =0x00001AAE
	adds r0, r2, r5
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08030B4C @ =0x0000122C
	adds r0, r0, r1
	adds r6, r2, r0
	ldrb r0, [r6]
	cmp r0, #0xaf
	bne _08030B3C
	ldrb r1, [r6, #1]
	ldrb r0, [r2, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08030B50
_08030B3C:
	movs r0, #1
	rsbs r0, r0, #0
	b _08030C42
	.align 2, 0
_08030B44: .4byte gUnknown_08090CE4
_08030B48: .4byte 0x00001AAE
_08030B4C: .4byte 0x0000122C
_08030B50:
	lsls r0, r1, #1
	adds r3, r2, #0
	adds r3, #0x24
	adds r0, r3, r0
	ldrh r1, [r0]
	ldrh r0, [r6, #2]
	cmp r0, r1
	beq _08030B94
	ldr r0, _08030B90 @ =gUnknown_0202575C
	movs r1, #0xae
	strb r1, [r0]
	ldrb r1, [r2, #6]
	strb r1, [r0, #1]
	ldrb r1, [r6, #1]
	lsls r1, r1, #1
	adds r1, r3, r1
	ldrh r1, [r1]
	movs r4, #0
	strh r1, [r0, #2]
	movs r1, #4
	bl sub_0802F588
	strb r4, [r6]
	ldr r1, [r7]
	adds r1, r1, r5
	ldrb r0, [r1]
	adds r0, #1
	ldrb r2, [r1]
	strb r0, [r1]
	ldr r1, [r7]
	adds r1, r1, r5
	b _08030BF6
	.align 2, 0
_08030B90: .4byte gUnknown_0202575C
_08030B94:
	movs r2, #0
	adds r3, r6, #6
_08030B98:
	mov r0, r8
	adds r1, r0, r2
	adds r0, r3, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r0, #0
	bge _08030B98
	mov r1, sl
	cmp r1, #0
	beq _08030C0C
	mov r0, r8
	bl _call_via_sl
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08030C0C
	ldr r0, _08030C04 @ =gUnknown_0202575C
	movs r1, #0xae
	strb r1, [r0]
	mov r1, sb
	ldr r5, [r1]
	ldr r2, [r5]
	ldrb r1, [r2, #6]
	strb r1, [r0, #1]
	ldrb r1, [r6, #1]
	lsls r1, r1, #1
	adds r2, #0x24
	adds r2, r2, r1
	ldrh r1, [r2]
	movs r4, #0
	strh r1, [r0, #2]
	movs r1, #4
	bl sub_0802F588
	strb r4, [r6]
	ldr r1, [r5]
	ldr r2, _08030C08 @ =0x00001AAE
	adds r1, r1, r2
	ldrb r0, [r1]
	adds r0, #1
	ldrb r3, [r1]
	strb r0, [r1]
	ldr r1, [r5]
	adds r1, r1, r2
_08030BF6:
	ldrb r2, [r1]
	movs r0, #0xf
	ands r0, r2
	ldrb r2, [r1]
	strb r0, [r1]
	b _08030B12
	.align 2, 0
_08030C04: .4byte gUnknown_0202575C
_08030C08: .4byte 0x00001AAE
_08030C0C:
	movs r0, #0
	strb r0, [r6]
	ldrb r0, [r6, #1]
	mov r1, sb
	ldr r5, [r1]
	ldr r3, [r5]
	lsls r1, r0, #1
	adds r2, r3, #0
	adds r2, #0x24
	adds r2, r2, r1
	ldrh r1, [r2]
	adds r1, #1
	ldrh r4, [r2]
	strh r1, [r2]
	ldr r4, _08030C50 @ =0x00001AAE
	adds r3, r3, r4
	ldrb r1, [r3]
	adds r1, #1
	ldrb r2, [r3]
	strb r1, [r3]
	ldr r2, [r5]
	adds r2, r2, r4
	ldrb r3, [r2]
	movs r1, #0xf
	ands r1, r3
	ldrb r3, [r2]
	strb r1, [r2]
_08030C42:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08030C50: .4byte 0x00001AAE

	thumb_func_start sub_08030C54
sub_08030C54: @ 0x08030C54
	push {r4, r5, r6, lr}
	movs r0, #0
	ldr r6, _08030C94 @ =gUnknown_08090CE8
_08030C5A:
	lsls r4, r0, #0x18
	asrs r4, r4, #0x18
	adds r1, r4, #0
	adds r1, #0xa
	lsls r1, r1, #0x13
	lsrs r1, r1, #0x10
	ldr r5, [r6]
	ldr r0, [r5]
	adds r0, #0x16
	adds r0, r0, r4
	ldrb r2, [r0]
	movs r0, #0xa0
	bl sub_0802BD54
	adds r4, #1
	lsls r4, r4, #0x18
	lsrs r0, r4, #0x18
	asrs r4, r4, #0x18
	cmp r4, #3
	ble _08030C5A
	ldr r0, [r5]
	ldrb r2, [r0, #0x1b]
	movs r0, #0xa0
	movs r1, #0x78
	bl sub_0802BD54
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030C94: .4byte gUnknown_08090CE8

	thumb_func_start sub_08030C98
sub_08030C98: @ 0x08030C98
	push {r4, lr}
	ldr r0, _08030CC4 @ =gUnknown_030040C0
	movs r1, #0x66
	strh r1, [r0, #6]
	strh r1, [r0, #0xa]
	ldr r4, _08030CC8 @ =gUnknown_0849B018
	ldr r2, [r4]
	ldrb r1, [r2, #1]
	movs r1, #1
	strb r1, [r2, #1]
	bl sub_0802EA5C
	bl sub_0802EAFC
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	movs r0, #3
	strh r0, [r1, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030CC4: .4byte gUnknown_030040C0
_08030CC8: .4byte gUnknown_0849B018

	thumb_func_start sub_08030CCC
sub_08030CCC: @ 0x08030CCC
	push {lr}
	bl sub_08030D1C
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bne _08030D08
	ldr r2, _08030D0C @ =gUnknown_0849B018
	ldr r1, [r2]
	ldrb r0, [r1, #0x1e]
	movs r0, #0
	strb r0, [r1, #0x1e]
	ldr r1, [r2]
	ldrh r0, [r1, #4]
	movs r0, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #4]
	movs r0, #5
	strh r0, [r1, #4]
	ldr r0, _08030D10 @ =gUnknown_03003FC0
	adds r0, #0x32
	strb r3, [r0]
	ldr r0, _08030D14 @ =gUnknown_03004008
	movs r1, #1
	bl sub_0802F8FC
	ldr r0, _08030D18 @ =gUnknown_03001FBC
	ldrb r0, [r0]
	bl sub_08015C30
_08030D08:
	pop {r0}
	bx r0
	.align 2, 0
_08030D0C: .4byte gUnknown_0849B018
_08030D10: .4byte gUnknown_03003FC0
_08030D14: .4byte gUnknown_03004008
_08030D18: .4byte gUnknown_03001FBC

	thumb_func_start sub_08030D1C
sub_08030D1C: @ 0x08030D1C
	push {lr}
	bl sub_0802EB28
	ldr r2, _08030D40 @ =gUnknown_0849B018
	ldr r1, [r2]
	ldrb r3, [r1, #6]
	strb r0, [r1, #6]
	ldr r0, [r2]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08030D44
	movs r0, #1
	b _08030D46
	.align 2, 0
_08030D40: .4byte gUnknown_0849B018
_08030D44:
	movs r0, #0
_08030D46:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08030D4C
sub_08030D4C: @ 0x08030D4C
	push {lr}
	ldr r0, _08030D74 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	movs r0, #5
	strh r0, [r1, #4]
	ldr r0, _08030D78 @ =gUnknown_03003FC0
	adds r0, #0x32
	movs r1, #1
	strb r1, [r0]
	ldr r0, _08030D7C @ =gUnknown_03004008
	bl sub_0802F8FC
	ldr r0, _08030D80 @ =gUnknown_03001FBC
	ldrb r0, [r0]
	bl sub_08015C30
	pop {r0}
	bx r0
	.align 2, 0
_08030D74: .4byte gUnknown_0849B018
_08030D78: .4byte gUnknown_03003FC0
_08030D7C: .4byte gUnknown_03004008
_08030D80: .4byte gUnknown_03001FBC

	thumb_func_start sub_08030D84
sub_08030D84: @ 0x08030D84
	push {r4, r5, lr}
	ldr r0, _08030DA0 @ =gUnknown_08090CEC
	ldr r1, [r0]
	ldr r2, [r1]
	ldrb r1, [r2, #0x1e]
	adds r4, r0, #0
	cmp r1, #0xf
	bhi _08030DA4
	ldrb r0, [r2, #0x1e]
	adds r0, #1
	ldrb r1, [r2, #0x1e]
	strb r0, [r2, #0x1e]
	b _08030DD8
	.align 2, 0
_08030DA0: .4byte gUnknown_08090CEC
_08030DA4:
	movs r2, #0
	ldr r5, _08030DE0 @ =gUnknown_020256DA
	ldr r3, _08030DE4 @ =gUnknown_0849B038
_08030DAA:
	adds r0, r2, r5
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #0xc
	ble _08030DAA
	ldr r0, _08030DE8 @ =gUnknown_020256D4
	movs r1, #0xad
	strb r1, [r0]
	ldr r4, [r4]
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	strb r1, [r0, #1]
	ldrb r1, [r2]
	movs r5, #0
	strh r1, [r0, #2]
	movs r1, #0x1a
	bl sub_0802F588
	ldr r0, [r4]
	ldrb r1, [r0, #0x1e]
	strb r5, [r0, #0x1e]
_08030DD8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030DE0: .4byte gUnknown_020256DA
_08030DE4: .4byte gUnknown_0849B038
_08030DE8: .4byte gUnknown_020256D4

	thumb_func_start sub_08030DEC
sub_08030DEC: @ 0x08030DEC
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, _08030E0C @ =gUnknown_03003FF8
_08030DF2:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08030E10
	adds r2, r4, #1
	adds r1, r2, r5
	adds r0, r4, #3
	b _08030E16
	.align 2, 0
_08030E0C: .4byte gUnknown_03003FF8
_08030E10:
	adds r2, r4, #1
	adds r1, r2, r5
	movs r0, #0
_08030E16:
	strb r0, [r1]
	adds r4, r2, #0
	cmp r4, #3
	ble _08030DF2
	ldr r1, _08030E38 @ =gUnknown_03003FC0
	ldr r0, _08030E3C @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	adds r1, #0x39
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08030E38: .4byte gUnknown_03003FC0
_08030E3C: .4byte gUnknown_0849B018

	thumb_func_start sub_08030E40
sub_08030E40: @ 0x08030E40
	push {r4, r5, r6, lr}
	ldr r4, _08030EBC @ =gUnknown_08090CF0
	ldr r1, [r4]
	ldr r0, [r1]
	ldrb r2, [r0, #6]
	ldr r3, _08030EC0 @ =0x00001AB4
	adds r0, r0, r3
	ldrb r3, [r0]
	movs r3, #0
	strb r2, [r0]
	ldr r0, [r1]
	ldr r2, _08030EC4 @ =0x00001AB3
	adds r0, r0, r2
	ldrb r2, [r0]
	strb r3, [r0]
	ldr r0, [r1]
	ldr r2, _08030EC8 @ =0x00001AB2
	adds r0, r0, r2
	ldrb r2, [r0]
	strb r3, [r0]
	movs r5, #0
	adds r6, r4, #0
	adds r4, r1, #0
_08030E6E:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #1
	bne _08030E9E
	ldr r1, [r4]
	ldr r0, _08030EC4 @ =0x00001AB3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	ldrb r2, [r1]
	strb r0, [r1]
	ldr r2, [r4]
	ldr r0, _08030EC8 @ =0x00001AB2
	adds r2, r2, r0
	adds r1, r3, #0
	lsls r1, r5
	ldrb r0, [r2]
	orrs r1, r0
	ldrb r0, [r2]
	strb r1, [r2]
_08030E9E:
	adds r5, #1
	cmp r5, #3
	ble _08030E6E
	ldr r0, [r6]
	ldr r0, [r0]
	ldr r1, _08030ECC @ =gUnknown_03004008
	ldr r1, [r1]
	ldr r2, _08030ED0 @ =0x00001AB0
	adds r0, r0, r2
	ldrh r2, [r0]
	strh r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030EBC: .4byte gUnknown_08090CF0
_08030EC0: .4byte 0x00001AB4
_08030EC4: .4byte 0x00001AB3
_08030EC8: .4byte 0x00001AB2
_08030ECC: .4byte gUnknown_03004008
_08030ED0: .4byte 0x00001AB0

	thumb_func_start sub_08030ED4
sub_08030ED4: @ 0x08030ED4
	push {r4, lr}
	bl sub_0802F348
	ldr r0, _08030F14 @ =0x04000134
	movs r4, #0
	strh r4, [r0]
	subs r0, #0xc
	strh r4, [r0]
	movs r0, #7
	movs r1, #0
	bl sub_0801BB00
	movs r0, #6
	movs r1, #0
	bl sub_0801BB00
	movs r1, #0xc1
	rsbs r1, r1, #0
	movs r0, #1
	bl sub_0801BB10
	ldr r0, _08030F18 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	movs r0, #0xff
	strb r0, [r1, #6]
	ldr r0, _08030F1C @ =gUnknown_03003FC0
	adds r0, #0x32
	strb r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030F14: .4byte 0x04000134
_08030F18: .4byte gUnknown_0849B018
_08030F1C: .4byte gUnknown_03003FC0

	thumb_func_start sub_08030F20
sub_08030F20: @ 0x08030F20
	push {lr}
	bl sub_08012358
	ldr r2, _08030F54 @ =gUnknown_030030E0
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
	ldrb r0, [r2, #1]
	movs r1, #0x10
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	strb r0, [r2, #1]
	ldr r1, _08030F58 @ =gUnknown_03002020
	movs r0, #0xf
	strh r0, [r1]
	ldr r1, _08030F5C @ =gUnknown_03002B28
	movs r0, #6
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08030F54: .4byte gUnknown_030030E0
_08030F58: .4byte gUnknown_03002020
_08030F5C: .4byte gUnknown_03002B28

	thumb_func_start sub_08030F60
sub_08030F60: @ 0x08030F60
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	lsls r2, r0, #2
	ldr r3, _08030FF8 @ =gUnknown_030030CC
	ldrb r1, [r3, #1]
	movs r4, #0x20
	mov r8, r4
	mov r4, r8
	orrs r1, r4
	strb r1, [r3, #1]
	ldr r4, _08030FFC @ =gUnknown_03002B40
	ldr r3, _08031000 @ =gUnknown_0849B188
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r1, [r0]
	strb r1, [r4]
	ldr r4, _08031004 @ =gUnknown_03002B4C
	adds r1, r2, #2
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrb r1, [r1]
	ldrb r0, [r0]
	adds r1, r1, r0
	strb r1, [r4]
	ldr r4, _08031008 @ =gUnknown_03002EFC
	adds r1, r2, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	strb r0, [r4]
	ldr r4, _0803100C @ =gUnknown_03002B44
	adds r2, #3
	lsls r2, r2, #1
	adds r2, r2, r3
	ldrb r0, [r2]
	ldrb r1, [r1]
	adds r0, r0, r1
	strb r0, [r4]
	ldr r2, _08031010 @ =gUnknown_030030A4
	ldrb r0, [r2]
	movs r6, #1
	orrs r0, r6
	movs r1, #2
	orrs r0, r1
	movs r5, #4
	orrs r0, r5
	movs r4, #8
	orrs r0, r4
	movs r3, #0x10
	orrs r0, r3
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08031014 @ =gUnknown_030030DC
	movs r0, #0
	strh r0, [r2]
	ldrb r0, [r2]
	orrs r0, r6
	adds r1, #0x1e
	ands r0, r1
	orrs r0, r5
	orrs r0, r4
	orrs r0, r3
	mov r1, r8
	orrs r0, r1
	strb r0, [r2]
	bl sub_08030F20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030FF8: .4byte gUnknown_030030CC
_08030FFC: .4byte gUnknown_03002B40
_08031000: .4byte gUnknown_0849B188
_08031004: .4byte gUnknown_03002B4C
_08031008: .4byte gUnknown_03002EFC
_0803100C: .4byte gUnknown_03002B44
_08031010: .4byte gUnknown_030030A4
_08031014: .4byte gUnknown_030030DC

	thumb_func_start sub_08031018
sub_08031018: @ 0x08031018
	push {r4, lr}
	ldr r4, _080310B8 @ =gUnknown_081D3E48
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_080135F4
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_080135F4
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_080135F4
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_080135F4
	ldr r0, _080310BC @ =gUnknown_081D3810
	ldr r1, _080310C0 @ =0x060114A0
	bl sub_08011CAC
	ldr r1, _080310C4 @ =0x06010000
	movs r0, #2
	movs r2, #0
	movs r3, #0x16
	bl sub_0801F150
	movs r0, #0x50
	bl sub_0801F234
	movs r0, #0x4f
	bl sub_0801F234
	movs r0, #0x4a
	bl sub_0801F234
	movs r0, #0x4b
	bl sub_0801F234
	movs r0, #0x4c
	bl sub_0801F234
	movs r0, #0x4d
	bl sub_0801F234
	ldr r0, _080310C8 @ =gUnknown_081320AC
	movs r1, #0x60
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _080310CC @ =gUnknown_0849B0A0
	movs r1, #0xe0
	movs r2, #0x20
	bl sub_08013618
	movs r0, #0
	bl sub_0801A5B0
	ldr r0, _080310D0 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrb r0, [r1, #0x1e]
	movs r0, #0x10
	strb r0, [r1, #0x1e]
	ldr r0, _080310D4 @ =gUnknown_0849B060
	ldr r1, [r0]
	movs r0, #0x13
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080310B8: .4byte gUnknown_081D3E48
_080310BC: .4byte gUnknown_081D3810
_080310C0: .4byte 0x060114A0
_080310C4: .4byte 0x06010000
_080310C8: .4byte gUnknown_081320AC
_080310CC: .4byte gUnknown_0849B0A0
_080310D0: .4byte gUnknown_0849B018
_080310D4: .4byte gUnknown_0849B060

	thumb_func_start sub_080310D8
sub_080310D8: @ 0x080310D8
	push {lr}
	bl sub_08034848
	ldr r3, _0803111C @ =gUnknown_03003FC0
	adds r0, r3, #0
	adds r0, #0x32
	movs r1, #0
	movs r2, #1
	strb r2, [r0]
	adds r0, #7
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	strb r2, [r3, #0xd]
	strb r2, [r3, #7]
	subs r0, #0x10
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r0, _08031120 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r0, _08031124 @ =gUnknown_0849B060
	ldr r0, [r0]
	strh r2, [r0, #2]
	bl sub_08031018
	pop {r0}
	bx r0
	.align 2, 0
_0803111C: .4byte gUnknown_03003FC0
_08031120: .4byte gUnknown_0849B018
_08031124: .4byte gUnknown_0849B060

	thumb_func_start sub_08031128
sub_08031128: @ 0x08031128
	push {lr}
	bl sub_08034848
	ldr r3, _08031170 @ =gUnknown_03003FC0
	adds r0, r3, #0
	adds r0, #0x32
	movs r1, #0
	movs r2, #1
	strb r2, [r0]
	adds r0, #7
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	strb r2, [r3, #0xd]
	strb r2, [r3, #7]
	subs r0, #0x10
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r0, _08031174 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrb r0, [r1]
	movs r0, #3
	strb r0, [r1]
	ldr r0, _08031178 @ =gUnknown_0849B060
	ldr r0, [r0]
	strh r2, [r0, #2]
	bl sub_08031018
	pop {r0}
	bx r0
	.align 2, 0
_08031170: .4byte gUnknown_03003FC0
_08031174: .4byte gUnknown_0849B018
_08031178: .4byte gUnknown_0849B060

	thumb_func_start sub_0803117C
sub_0803117C: @ 0x0803117C
	push {lr}
	bl sub_08034848
	ldr r3, _080311C4 @ =gUnknown_03003FC0
	adds r0, r3, #0
	adds r0, #0x32
	movs r1, #0
	movs r2, #1
	strb r2, [r0]
	adds r0, #7
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	strb r2, [r3, #0xd]
	strb r2, [r3, #7]
	subs r0, #0x10
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	ldr r0, _080311C8 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrb r0, [r1]
	movs r0, #2
	strb r0, [r1]
	ldr r0, _080311CC @ =gUnknown_0849B060
	ldr r0, [r0]
	strh r2, [r0, #2]
	bl sub_08031018
	pop {r0}
	bx r0
	.align 2, 0
_080311C4: .4byte gUnknown_03003FC0
_080311C8: .4byte gUnknown_0849B018
_080311CC: .4byte gUnknown_0849B060

	thumb_func_start sub_080311D0
sub_080311D0: @ 0x080311D0
	movs r1, #0
	str r1, [r0, #0x58]
	bx lr
	.align 2, 0

	thumb_func_start sub_080311D8
sub_080311D8: @ 0x080311D8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, [r7, #0x58]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #5
	movs r1, #0x10
	bl sub_08074234
	mov sb, r0
	ldr r4, _08031274 @ =gUnknown_0808F100
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
	movs r0, #0xc
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0801E108
	ldr r1, _08031278 @ =0x0000188C
	movs r2, #0xb8
	lsls r2, r2, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4f
	movs r3, #0
	bl sub_0801F34C
	ldr r0, [r7, #0x58]
	cmp r0, #0xf
	ble _0803127C
	adds r0, r7, #0
	bl sub_0801CB20
	b _08031280
	.align 2, 0
_08031274: .4byte gUnknown_0808F100
_08031278: .4byte 0x0000188C
_0803127C:
	adds r0, #1
	str r0, [r7, #0x58]
_08031280:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08031290
sub_08031290: @ 0x08031290
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x4f
	movs r1, #0x8c
	movs r2, #0x70
	movs r3, #0
	bl sub_0801F34C
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080312AC
sub_080312AC: @ 0x080312AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	movs r0, #0
	mov sl, r0
	ldr r0, _080313EC @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x3f
	ands r0, r1
	lsls r6, r0, #0x10
	lsrs r1, r6, #0x10
	ldr r0, _080313F0 @ =gUnknown_0849B060
	ldr r0, [r0]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r0, #3
	bne _080312D8
	b _080313DC
_080312D8:
	movs r5, #0
	ldr r4, _080313F4 @ =gUnknown_0849B0C4
	adds r0, r1, #0
	movs r1, #0x1e
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r4
	str r0, [sp, #4]
	movs r0, #0xc7
	lsls r0, r0, #2
	mov r8, r0
	movs r7, #0x58
	movs r4, #0x50
	lsrs r6, r6, #0x11
_080312F8:
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08031376
	lsls r2, r5, #2
	ldr r1, _080313F8 @ =0x000001FF
	ands r1, r4
	ldr r0, _080313FC @ =gUnknown_0849B258
	adds r2, r2, r0
	ldr r3, [r2]
	adds r0, r5, #0
	adds r0, #8
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #0
	movs r2, #0x40
	bl sub_0801BEFC
	movs r1, #1
	add sl, r1
	ldr r0, _08031400 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	bne _08031368
	ldr r1, _08031404 @ =gUnknown_0849B27C
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	movs r2, #0x58
	subs r2, r2, r1
	movs r1, #0
	str r1, [sp]
	adds r1, r7, #0
	movs r3, #0
	bl sub_0801F34C
	ldr r2, _08031408 @ =gUnknown_030020C0
	add r2, r8
	movs r1, #0xf
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #1
	ldr r1, _0803140C @ =gUnknown_081D3E68
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2]
	bl sub_080135A4
_08031368:
	movs r2, #0x20
	add r8, r2
	adds r7, #0x28
	adds r4, #0x28
	adds r5, #1
	cmp r5, #3
	ble _080312F8
_08031376:
	mov r0, sl
	cmp r0, #0
	beq _08031394
	ldr r1, _08031410 @ =gUnknown_0849B268
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0x58
	movs r2, #0x38
	bl sub_0801BEFC
_08031394:
	ldr r0, _08031400 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _080313DC
	mov r1, sb
	ldr r0, [r1, #0x58]
	cmp r0, #0
	bne _080313C6
	bl sub_0802F4A0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080313BE
	movs r0, #1
	mov r2, sb
	str r0, [r2, #0x58]
	ldr r0, _08031414 @ =gUnknown_0849B1A0
	mov r1, sb
	bl Proc_Start
_080313BE:
	mov r1, sb
	ldr r0, [r1, #0x58]
	cmp r0, #0
	beq _080313DC
_080313C6:
	bl sub_0802F4A0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080313DC
	mov r2, sb
	str r0, [r2, #0x58]
	ldr r0, _08031414 @ =gUnknown_0849B1A0
	bl sub_0801CD14
_080313DC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080313EC: .4byte gUnknown_03004008
_080313F0: .4byte gUnknown_0849B060
_080313F4: .4byte gUnknown_0849B0C4
_080313F8: .4byte 0x000001FF
_080313FC: .4byte gUnknown_0849B258
_08031400: .4byte gUnknown_0849B018
_08031404: .4byte gUnknown_0849B27C
_08031408: .4byte gUnknown_030020C0
_0803140C: .4byte gUnknown_081D3E68
_08031410: .4byte gUnknown_0849B268
_08031414: .4byte gUnknown_0849B1A0

	thumb_func_start sub_08031418
sub_08031418: @ 0x08031418
	push {lr}
	adds r1, r0, #0
	ldr r0, _0803142C @ =gUnknown_0849B284
	bl Proc_Start
	movs r1, #0
	str r1, [r0, #0x58]
	pop {r0}
	bx r0
	.align 2, 0
_0803142C: .4byte gUnknown_0849B284

	thumb_func_start sub_08031430
sub_08031430: @ 0x08031430
	push {lr}
	ldr r0, _0803143C @ =gUnknown_0849B284
	bl sub_0801CD14
	pop {r0}
	bx r0
	.align 2, 0
_0803143C: .4byte gUnknown_0849B284

	thumb_func_start sub_08031440
sub_08031440: @ 0x08031440
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08031498 @ =gUnknown_0849B048
	adds r0, r5, #0
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08031460
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801CBC8
_08031460:
	ldr r0, _0803149C @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08031480
	movs r0, #0x66
	bl sub_0803B4DC
	adds r0, r5, #0
	bl sub_0801537C
	adds r0, r4, #0
	bl sub_0801CB20
_08031480:
	ldr r4, _080314A0 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08031498: .4byte gUnknown_0849B048
_0803149C: .4byte gUnknown_03002EE0
_080314A0: .4byte gUnknown_0849B060

	thumb_func_start sub_080314A4
sub_080314A4: @ 0x080314A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r1, _08031538 @ =gUnknown_08090CF4
	add r0, sp, #8
	movs r2, #0xa
	bl sub_0808B6E8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #2
	beq _080315BE
	movs r7, #0
	ldr r0, _0803153C @ =gUnknown_08499578
	mov sb, r0
	movs r1, #0
	mov sl, r1
	str r4, [sp, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #0xb
	mov r8, r0
_080314DA:
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	lsrs r2, r1, #0x10
	movs r1, #2
	str r1, [sp]
	mov r1, sl
	str r1, [sp, #4]
	movs r1, #0xe
	movs r3, #8
	bl sub_08012BC8
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _08031506
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080315AE
_08031506:
	ldr r0, _08031540 @ =gUnknown_0849B018
	ldr r0, [r0]
	adds r0, #0xa
	adds r3, r0, r7
	ldrb r0, [r3]
	cmp r0, #4
	bhi _08031544
	mov r0, r8
	asrs r1, r0, #0x10
	mov r0, sb
	ldr r2, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	add r0, sp
	adds r0, #8
	ldrh r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	movs r0, #0xe
	bl sub_08014A5C
	b _080315AE
	.align 2, 0
_08031538: .4byte gUnknown_08090CF4
_0803153C: .4byte gUnknown_08499578
_08031540: .4byte gUnknown_0849B018
_08031544:
	mov r1, r8
	asrs r5, r1, #0x10
	mov r0, sb
	ldr r2, [r0]
	ldr r1, _08031590 @ =gUnknown_020257E4
	movs r0, #0xd
	muls r0, r7, r0
	adds r4, r0, r1
	movs r6, #0x80
	lsls r6, r6, #8
	str r6, [sp]
	mov r1, sl
	str r1, [sp, #4]
	movs r0, #0xe
	adds r1, r5, #0
	adds r3, r4, #0
	bl sub_080149C0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _080315AE
	ldr r0, _08031594 @ =gUnknown_0300449C
	adds r0, r7, r0
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0
	beq _08031598
	mov r1, sb
	ldr r2, [r1]
	str r6, [sp]
	mov r0, sl
	str r0, [sp, #4]
	movs r0, #0xe
	adds r1, r5, #0
	adds r3, r4, #0
	bl sub_080149C0
	b _080315AE
	.align 2, 0
_08031590: .4byte gUnknown_020257E4
_08031594: .4byte gUnknown_0300449C
_08031598:
	mov r0, sb
	ldr r2, [r0]
	movs r0, #0xe0
	lsls r0, r0, #7
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #0xe
	adds r1, r5, #0
	adds r3, r4, #0
	bl sub_080149C0
_080315AE:
	movs r1, #0x80
	lsls r1, r1, #0xa
	add r8, r1
	adds r7, #1
	cmp r7, #3
	ble _080314DA
	bl sub_08013AEC
_080315BE:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080315D0
sub_080315D0: @ 0x080315D0
	push {lr}
	movs r0, #0xa
	movs r1, #5
	movs r2, #0xd
	movs r3, #0xa
	bl sub_0801A444
	movs r0, #0
	bl sub_08030F60
	pop {r0}
	bx r0

	thumb_func_start sub_080315E8
sub_080315E8: @ 0x080315E8
	push {r4, r5, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r0, r1
	beq _08031626
	ldr r4, _08031630 @ =gUnknown_08499578
	ldr r0, [r4]
	movs r1, #2
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #0x12
	movs r3, #0x20
	bl sub_08012BC8
	ldr r2, [r4]
	ldr r1, _08031634 @ =gUnknown_0849B0E2
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r3, [r0]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x12
	bl sub_08014668
_08031626:
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08031630: .4byte gUnknown_08499578
_08031634: .4byte gUnknown_0849B0E2

	thumb_func_start sub_08031638
sub_08031638: @ 0x08031638
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	movs r6, #0
	bl sub_0802F534
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08031684 @ =gUnknown_08090D00
	mov r8, r1
	cmp r0, #1
	ble _0803168C
	bl sub_0802F504
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _0803168C
	bl sub_0802F4A0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0803168C
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0803168C
	ldr r5, _08031688 @ =gUnknown_08090D04
	ldr r4, [r5]
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #2
	b _08031696
	.align 2, 0
_08031684: .4byte gUnknown_08090D00
_08031688: .4byte gUnknown_08090D04
_0803168C:
	ldr r5, _080316E4 @ =gUnknown_08090D04
	ldr r4, [r5]
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #1
_08031696:
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	mov sb, r5
	movs r2, #0
	ldr r0, _080316E8 @ =gUnknown_0849B018
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x16
_080316AC:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0x3c
	bls _080316B6
	adds r6, #1
_080316B6:
	adds r2, #1
	cmp r2, #3
	ble _080316AC
	bl sub_0802F408
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080316D6
	mov r0, r8
	ldr r5, [r0]
	ldr r1, [r5]
	ldrb r0, [r1, #0x1a]
	cmp r0, #0x3c
	bhi _080316D6
	cmp r6, #0
	beq _080316EC
_080316D6:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	movs r0, #7
	strh r0, [r1, #4]
	b _080316FC
	.align 2, 0
_080316E4: .4byte gUnknown_08090D04
_080316E8: .4byte gUnknown_0849B018
_080316EC:
	ldrb r0, [r1, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, #0xa
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #2
	bne _08031704
_080316FC:
	adds r0, r7, #0
	bl sub_0801CB20
	b _08031818
_08031704:
	ldr r4, _0803177C @ =gUnknown_03002EE0
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08031718
	movs r0, #0x68
	bl sub_0803B4DC
_08031718:
	bl sub_0802F4A0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08031790
	ldr r2, [r5]
	ldrb r0, [r2, #6]
	cmp r0, #0
	bne _08031790
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _08031790
	ldr r1, _08031780 @ =gUnknown_0300410C
	ldr r0, _08031784 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r2, #4]
	movs r1, #0
	movs r0, #6
	strh r0, [r2, #4]
	ldrb r0, [r2, #0x1a]
	strb r1, [r2, #0x1a]
	movs r2, #0
	adds r4, r5, #0
	movs r3, #0
_08031752:
	ldr r0, [r4]
	adds r0, #0x16
	adds r0, r0, r2
	ldrb r1, [r0]
	strb r3, [r0]
	adds r2, #1
	cmp r2, #3
	ble _08031752
	ldr r0, _08031788 @ =gUnknown_03004400
	ldrb r1, [r0]
	movs r1, #0xff
	strb r1, [r0]
	bl sub_080308B4
	movs r0, #0x71
	bl sub_0803B4DC
	ldr r0, _0803178C @ =gUnknown_0849B1A0
	bl sub_0801CD14
	b _080317FE
	.align 2, 0
_0803177C: .4byte gUnknown_03002EE0
_08031780: .4byte gUnknown_0300410C
_08031784: .4byte gUnknown_030040CC
_08031788: .4byte gUnknown_03004400
_0803178C: .4byte gUnknown_0849B1A0
_08031790:
	ldr r6, _08031808 @ =gUnknown_03004400
	adds r0, r6, #0
	movs r1, #0
	bl sub_080309AC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08031814
	mov r0, r8
	ldr r4, [r0]
	ldr r0, [r4]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08031814
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _08031814
	ldr r1, _0803180C @ =gUnknown_0300410C
	ldr r0, _08031810 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, [r4]
	ldrh r0, [r1, #4]
	movs r2, #0
	movs r0, #6
	strh r0, [r1, #4]
	ldrb r0, [r1, #0x1a]
	strb r2, [r1, #0x1a]
	movs r2, #0
	movs r3, #0
_080317DE:
	ldr r0, [r4]
	adds r0, #0x16
	adds r0, r0, r2
	ldrb r1, [r0]
	strb r3, [r0]
	adds r2, #1
	cmp r2, #3
	ble _080317DE
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0]
	movs r0, #2
	strh r0, [r1, #2]
	movs r0, #0x71
	bl sub_0803B4DC
_080317FE:
	adds r0, r7, #0
	movs r1, #1
	bl sub_0801CBC8
	b _08031818
	.align 2, 0
_08031808: .4byte gUnknown_03004400
_0803180C: .4byte gUnknown_0300410C
_08031810: .4byte gUnknown_030040CC
_08031814:
	bl sub_08030D84
_08031818:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08031824
sub_08031824: @ 0x08031824
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r0, _080318D0 @ =gUnknown_02025764
	mov r8, r0
	movs r3, #0
	ldr r4, _080318D4 @ =gUnknown_02028040
_08031838:
	mov r1, r8
	adds r2, r1, r3
	adds r0, r3, r4
	ldrb r0, [r0]
	ldrb r1, [r2]
	strb r0, [r2]
	adds r3, #1
	cmp r3, #1
	ble _08031838
	movs r3, #0
	mov r6, r8
	adds r6, #5
	movs r2, #0x22
	add r2, r8
	mov sb, r2
	mov r0, r8
	adds r0, #0x34
	str r0, [sp, #0x34]
	mov r4, r8
	adds r4, #2
	ldr r5, _080318D8 @ =gUnknown_0202805A
_08031862:
	adds r2, r4, r3
	adds r0, r3, r5
	ldrb r0, [r0]
	ldrb r1, [r2]
	strb r0, [r2]
	adds r3, #1
	cmp r3, #2
	ble _08031862
	movs r3, #0
	adds r4, r6, #0
	ldr r5, _080318DC @ =gUnknown_02028042
_08031878:
	adds r2, r4, r3
	adds r0, r3, r5
	ldrb r0, [r0]
	ldrb r1, [r2]
	strb r0, [r2]
	adds r3, #1
	cmp r3, #0x17
	ble _08031878
	movs r7, #0
	ldr r1, _080318E0 @ =gUnknown_020280C0
	mov sl, r1
_0803188E:
	lsls r4, r7, #0x18
	lsrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_0803CD14
	lsls r5, r7, #3
	subs r1, r5, r7
	lsls r6, r1, #2
	mov r2, r8
	adds r1, r2, r6
	adds r1, #0x33
	strb r0, [r1]
	adds r0, r4, #0
	mov r1, sp
	bl sub_0803CCB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _080318E4
	movs r3, #0
	adds r4, r7, #1
	mov r0, sb
	adds r1, r6, r0
_080318BE:
	mov r2, sp
	adds r0, r2, r3
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r3, #1
	cmp r3, #0x10
	ble _080318BE
	b _080318FA
	.align 2, 0
_080318D0: .4byte gUnknown_02025764
_080318D4: .4byte gUnknown_02028040
_080318D8: .4byte gUnknown_0202805A
_080318DC: .4byte gUnknown_02028042
_080318E0: .4byte gUnknown_020280C0
_080318E4:
	adds r4, r7, #1
	movs r1, #0
	movs r3, #0x10
	mov r2, sb
	adds r0, r6, r2
	adds r0, #0x10
_080318F0:
	strb r1, [r0]
	subs r0, #1
	subs r3, #1
	cmp r3, #0
	bge _080318F0
_080318FA:
	subs r0, r5, r7
	lsls r0, r0, #2
	ldr r3, _08031944 @ =gUnknown_020280D4
	adds r2, r0, r3
	ldr r3, [sp, #0x34]
	adds r1, r0, r3
	movs r3, #4
_08031908:
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	subs r3, #1
	cmp r3, #0
	bge _08031908
	subs r0, r5, r7
	lsls r0, r0, #2
	mov r2, r8
	adds r1, r2, r0
	add r0, sl
	ldrb r2, [r0, #0x19]
	adds r3, r1, #0
	adds r3, #0x39
	strb r2, [r3]
	ldrb r0, [r0, #0x1a]
	adds r1, #0x3a
	strb r0, [r1]
	adds r7, r4, #0
	cmp r7, #2
	ble _0803188E
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031944: .4byte gUnknown_020280D4

	thumb_func_start sub_08031948
sub_08031948: @ 0x08031948
	push {r4, r5, lr}
	ldr r1, _0803199C @ =gUnknown_03003F1C
	movs r0, #0
	strb r0, [r1]
	movs r4, #0
	ldr r5, _080319A0 @ =gUnknown_08090D08
_08031954:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08031970
	ldr r0, _080319A4 @ =gUnknown_0849B018
	ldr r0, [r0]
	adds r0, #0xa
	adds r0, r0, r4
	ldrb r1, [r0]
	strb r2, [r0]
_08031970:
	ldr r0, [r5]
	adds r0, r4, r0
	ldrb r1, [r0]
	movs r1, #0
	strb r1, [r0]
	adds r4, #1
	cmp r4, #3
	ble _08031954
	bl sub_08031824
	ldr r4, _080319A8 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #3
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803199C: .4byte gUnknown_03003F1C
_080319A0: .4byte gUnknown_08090D08
_080319A4: .4byte gUnknown_0849B018
_080319A8: .4byte gUnknown_0849B060

	thumb_func_start sub_080319AC
sub_080319AC: @ 0x080319AC
	push {r4, lr}
	ldr r0, _080319EC @ =gUnknown_0849B060
	ldr r1, [r0]
	movs r0, #2
	strh r0, [r1, #2]
	ldr r0, _080319F0 @ =gUnknown_03004008
	ldr r2, [r0]
	movs r0, #0xf
	ands r2, r0
	ldr r4, _080319F4 @ =gUnknown_08090D0C
	cmp r2, #0
	bne _080319DA
	ldr r0, _080319F8 @ =gUnknown_02025760
	movs r1, #0xab
	strb r1, [r0]
	ldr r1, [r4]
	ldr r1, [r1]
	ldrb r1, [r1, #6]
	strb r1, [r0, #1]
	strh r2, [r0, #2]
	movs r1, #0x84
	bl sub_0802F588
_080319DA:
	ldr r0, [r4]
	ldr r0, [r0]
	ldr r1, _080319FC @ =gUnknown_03003F1C
	ldrb r2, [r0, #9]
	ldrb r0, [r1]
	cmp r2, r0
	beq _08031A00
	movs r0, #1
	b _08031A10
	.align 2, 0
_080319EC: .4byte gUnknown_0849B060
_080319F0: .4byte gUnknown_03004008
_080319F4: .4byte gUnknown_08090D0C
_080319F8: .4byte gUnknown_02025760
_080319FC: .4byte gUnknown_03003F1C
_08031A00:
	ldr r1, _08031A18 @ =gUnknown_0300410C
	ldr r0, _08031A1C @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r1, _08031A20 @ =gUnknown_030044C4
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
_08031A10:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08031A18: .4byte gUnknown_0300410C
_08031A1C: .4byte gUnknown_030040CC
_08031A20: .4byte gUnknown_030044C4

	thumb_func_start sub_08031A24
sub_08031A24: @ 0x08031A24
	push {r4, r5, r6, lr}
	ldr r0, _08031A70 @ =gUnknown_03004008
	ldr r5, [r0]
	movs r0, #0xf
	ands r5, r0
	ldr r6, _08031A74 @ =gUnknown_08090D10
	cmp r5, #0
	bne _08031A5E
	ldr r0, _08031A78 @ =gUnknown_02025760
	movs r1, #0xab
	strb r1, [r0]
	ldr r4, [r6]
	ldr r1, [r4]
	ldrb r1, [r1, #6]
	strb r1, [r0, #1]
	strh r5, [r0, #2]
	movs r1, #0x84
	bl sub_0802F588
	ldr r0, _08031A7C @ =gUnknown_0202575C
	movs r1, #0xaa
	strb r1, [r0]
	ldr r1, [r4]
	ldrb r1, [r1, #6]
	strb r1, [r0, #1]
	strh r5, [r0, #2]
	movs r1, #4
	bl sub_0802F588
_08031A5E:
	ldr r0, [r6]
	ldr r0, [r0]
	ldr r1, _08031A80 @ =gUnknown_030044C4
	ldrb r2, [r0, #9]
	ldrb r0, [r1]
	cmp r2, r0
	beq _08031A84
	movs r0, #1
	b _08031A8E
	.align 2, 0
_08031A70: .4byte gUnknown_03004008
_08031A74: .4byte gUnknown_08090D10
_08031A78: .4byte gUnknown_02025760
_08031A7C: .4byte gUnknown_0202575C
_08031A80: .4byte gUnknown_030044C4
_08031A84:
	ldr r0, _08031A94 @ =gUnknown_0300410C
	ldr r1, _08031A98 @ =gUnknown_030040CC
	ldrh r1, [r1]
	strh r1, [r0]
	movs r0, #0
_08031A8E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08031A94: .4byte gUnknown_0300410C
_08031A98: .4byte gUnknown_030040CC

	thumb_func_start sub_08031A9C
sub_08031A9C: @ 0x08031A9C
	push {r4, r5, r6, r7, lr}
	movs r2, #0
	ldr r4, _08031B10 @ =gUnknown_02028040
	ldr r3, _08031B14 @ =gUnknown_02025564
_08031AA4:
	adds r0, r2, r4
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #1
	ble _08031AA4
	movs r2, #0
	ldr r4, _08031B18 @ =gUnknown_0202805A
	ldr r3, _08031B1C @ =gUnknown_02025566
_08031AB8:
	adds r0, r2, r4
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #2
	ble _08031AB8
	movs r2, #0
	ldr r4, _08031B20 @ =gUnknown_02028042
	ldr r3, _08031B24 @ =gUnknown_02025569
_08031ACC:
	adds r0, r2, r4
	adds r1, r2, r3
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #0x17
	ble _08031ACC
	ldr r0, _08031B28 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _08031B08
	ldr r0, _08031B14 @ =gUnknown_02025564
	adds r4, r0, #0
	adds r4, #0x20
	ldr r3, _08031B2C @ =gUnknown_020280C0
	movs r2, #0xb
_08031AEE:
	adds r0, r3, #0
	adds r1, r4, #0
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
	adds r4, #0x1c
	adds r3, #0x1c
	subs r2, #1
	cmp r2, #0
	bge _08031AEE
_08031B08:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08031B10: .4byte gUnknown_02028040
_08031B14: .4byte gUnknown_02025564
_08031B18: .4byte gUnknown_0202805A
_08031B1C: .4byte gUnknown_02025566
_08031B20: .4byte gUnknown_02028042
_08031B24: .4byte gUnknown_02025569
_08031B28: .4byte gUnknown_0849B018
_08031B2C: .4byte gUnknown_020280C0

	thumb_func_start sub_08031B30
sub_08031B30: @ 0x08031B30
	ldr r0, _08031B48 @ =gUnknown_0849B01C
	ldr r0, [r0]
	ldrh r1, [r0, #6]
	ldr r1, _08031B4C @ =0x00009ABC
	strh r1, [r0, #6]
	ldr r1, _08031B50 @ =0x00000212
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08031B54
	movs r0, #1
	b _08031B62
	.align 2, 0
_08031B48: .4byte gUnknown_0849B01C
_08031B4C: .4byte 0x00009ABC
_08031B50: .4byte 0x00000212
_08031B54:
	ldr r1, _08031B64 @ =gUnknown_0300410C
	ldr r0, _08031B68 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r2]
	movs r0, #0
	strh r0, [r2]
_08031B62:
	bx lr
	.align 2, 0
_08031B64: .4byte gUnknown_0300410C
_08031B68: .4byte gUnknown_030040CC

	thumb_func_start sub_08031B6C
sub_08031B6C: @ 0x08031B6C
	adds r2, r0, #0
	movs r3, #0x10
_08031B70:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bgt _08031B70
	movs r0, #0
	strb r0, [r2]
	bx lr

	thumb_func_start sub_08031B84
sub_08031B84: @ 0x08031B84
	push {r4, lr}
	ldr r4, _08031BB4 @ =gUnknown_0849B01C
	ldr r1, [r4]
	ldrh r0, [r1, #6]
	ldr r0, _08031BB8 @ =0x00009ABC
	strh r0, [r1, #6]
	ldr r0, _08031BBC @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08031BA4
	movs r0, #0x68
	bl sub_0803B4DC
_08031BA4:
	ldr r0, [r4]
	ldr r1, _08031BC0 @ =0x00000212
	adds r2, r0, r1
	ldrh r0, [r2]
	cmp r0, #0
	bne _08031BC4
	movs r0, #1
	b _08031BD2
	.align 2, 0
_08031BB4: .4byte gUnknown_0849B01C
_08031BB8: .4byte 0x00009ABC
_08031BBC: .4byte gUnknown_03002EE0
_08031BC0: .4byte 0x00000212
_08031BC4:
	ldr r1, _08031BD8 @ =gUnknown_0300410C
	ldr r0, _08031BDC @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	ldrh r0, [r2]
	movs r0, #0
	strh r0, [r2]
_08031BD2:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08031BD8: .4byte gUnknown_0300410C
_08031BDC: .4byte gUnknown_030040CC

	thumb_func_start sub_08031BE0
sub_08031BE0: @ 0x08031BE0
	ldr r1, _08031BEC @ =gUnknown_0849B060
	ldr r1, [r1]
	adds r0, #0x2f
	ldrb r0, [r0]
	strh r0, [r1, #0xa]
	bx lr
	.align 2, 0
_08031BEC: .4byte gUnknown_0849B060

	thumb_func_start sub_08031BF0
sub_08031BF0: @ 0x08031BF0
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, _08031C14 @ =gUnknown_02000000
	movs r1, #0
	bl sub_080337D8
	ldr r4, _08031C18 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0xa
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031C14: .4byte gUnknown_02000000
_08031C18: .4byte gUnknown_0849B060

	thumb_func_start sub_08031C1C
sub_08031C1C: @ 0x08031C1C
	push {r4, lr}
	sub sp, #4
	ldr r2, _08031C4C @ =gUnknown_02000000
	ldr r1, _08031C50 @ =0x00000A5C
	str r0, [sp]
	adds r0, r2, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803376C
	ldr r4, _08031C54 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #9
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031C4C: .4byte gUnknown_02000000
_08031C50: .4byte 0x00000A5C
_08031C54: .4byte gUnknown_0849B060

	thumb_func_start sub_08031C58
sub_08031C58: @ 0x08031C58
	push {r4, r5, lr}
	ldr r0, _08031CBC @ =gUnknown_0849B060
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r2, _08031CC0 @ =gUnknown_084C145E
	ldr r5, _08031CC4 @ =0x00005010
	movs r0, #0x66
	movs r1, #0x38
	adds r3, r5, #0
	bl sub_0801BD00
	cmp r4, #0
	beq _08031C8E
	ldr r0, _08031CC8 @ =gUnknown_084C170C
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r2, [r1]
	movs r0, #0x6e
	movs r1, #0x38
	adds r3, r5, #0
	bl sub_0801BD00
_08031C8E:
	cmp r4, #0xa
	beq _08031CAA
	lsls r0, r4, #3
	adds r0, #0x6e
	ldr r2, _08031CCC @ =gUnknown_084C178C
	movs r1, #0xa
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	movs r1, #0x38
	adds r3, r5, #0
	bl sub_0801BD00
_08031CAA:
	ldr r2, _08031CD0 @ =gUnknown_084C1466
	movs r0, #0xbe
	movs r1, #0x38
	adds r3, r5, #0
	bl sub_0801BD00
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08031CBC: .4byte gUnknown_0849B060
_08031CC0: .4byte gUnknown_084C145E
_08031CC4: .4byte 0x00005010
_08031CC8: .4byte gUnknown_084C170C
_08031CCC: .4byte gUnknown_084C178C
_08031CD0: .4byte gUnknown_084C1466

	thumb_func_start sub_08031CD4
sub_08031CD4: @ 0x08031CD4
	ldr r0, _08031CE0 @ =gUnknown_0849B060
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0xa]
	bx lr
	.align 2, 0
_08031CE0: .4byte gUnknown_0849B060

	thumb_func_start sub_08031CE4
sub_08031CE4: @ 0x08031CE4
	push {lr}
	ldr r0, _08031CF0 @ =gUnknown_0849B294
	bl sub_0801CD14
	pop {r0}
	bx r0
	.align 2, 0
_08031CF0: .4byte gUnknown_0849B294

	thumb_func_start sub_08031CF4
sub_08031CF4: @ 0x08031CF4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08031D44 @ =gUnknown_08499578
	ldr r0, [r0]
	movs r1, #2
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #0xc
	movs r2, #8
	movs r3, #2
	bl sub_08012BC8
	bl sub_08013AEC
	movs r0, #0x1e
	ldrsh r5, [r4, r0]
	movs r0, #0x20
	ldrsh r6, [r4, r0]
	ldr r4, _08031D48 @ =gUnknown_0849B074
	ldr r0, _08031D4C @ =gUnknown_03004008
	ldr r0, [r0]
	lsrs r0, r0, #3
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r3, _08031D50 @ =0x00004054
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801BD00
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031D44: .4byte gUnknown_08499578
_08031D48: .4byte gUnknown_0849B074
_08031D4C: .4byte gUnknown_03004008
_08031D50: .4byte 0x00004054

	thumb_func_start sub_08031D54
sub_08031D54: @ 0x08031D54
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08031DB0 @ =gUnknown_0849B060
	ldr r0, [r0]
	ldrh r0, [r0, #0xa]
	adds r0, #0x64
	strh r0, [r2, #0x22]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r4, [r2, #0x1e]
	movs r3, #0x1e
	ldrsh r1, [r2, r3]
	ldr r3, _08031DB4 @ =gUnknown_08090D14
	cmp r0, r1
	beq _08031D82
	ldr r0, [r3]
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08031D82
	adds r0, r4, #1
	strh r0, [r2, #0x1e]
_08031D82:
	movs r0, #0x1e
	ldrsh r5, [r2, r0]
	movs r0, #0x20
	ldrsh r6, [r2, r0]
	ldr r4, _08031DB8 @ =gUnknown_0849B074
	ldr r0, [r3]
	ldr r0, [r0]
	lsrs r0, r0, #3
	movs r1, #3
	bl __umodsi3
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r3, _08031DBC @ =0x00004054
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_0801BD00
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031DB0: .4byte gUnknown_0849B060
_08031DB4: .4byte gUnknown_08090D14
_08031DB8: .4byte gUnknown_0849B074
_08031DBC: .4byte 0x00004054

	thumb_func_start sub_08031DC0
sub_08031DC0: @ 0x08031DC0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #8
	ldr r0, _08031E34 @ =gUnknown_08499594
	ldr r4, [r0]
	ldr r5, _08031E38 @ =gUnknown_030040D8
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [r5]
	ldr r0, _08031E3C @ =gUnknown_08499578
	mov r8, r0
	ldr r0, [r0]
	movs r6, #2
	str r6, [sp]
	movs r1, #0
	mov sb, r1
	str r1, [sp, #4]
	movs r1, #0xc
	movs r2, #8
	movs r3, #2
	bl sub_08012BC8
	movs r0, #1
	strb r0, [r4, #0x18]
	ldrb r1, [r4, #0x1c]
	subs r0, #0x81
	ands r0, r1
	movs r1, #0x64
	orrs r0, r1
	strb r0, [r4, #0x1c]
	ldr r1, [r5]
	movs r0, #0x17
	strb r0, [r1]
	ldr r0, [r5]
	strb r6, [r0, #7]
	mov r0, r8
	ldr r2, [r0]
	ldr r3, _08031E40 @ =gUnknown_08090D18
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [sp]
	mov r1, sb
	str r1, [sp, #4]
	movs r0, #0x18
	movs r1, #8
	bl sub_080149C0
	bl sub_08013AEC
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031E34: .4byte gUnknown_08499594
_08031E38: .4byte gUnknown_030040D8
_08031E3C: .4byte gUnknown_08499578
_08031E40: .4byte gUnknown_08090D18

	thumb_func_start sub_08031E44
sub_08031E44: @ 0x08031E44
	push {lr}
	adds r1, r0, #0
	ldr r0, _08031E68 @ =gUnknown_0849B2A4
	bl Proc_Start
	adds r2, r0, #0
	adds r0, #0x68
	movs r1, #0x64
	strh r1, [r0]
	subs r0, #4
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0x66
	movs r0, #0x48
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08031E68: .4byte gUnknown_0849B2A4

	thumb_func_start sub_08031E6C
sub_08031E6C: @ 0x08031E6C
	push {lr}
	ldr r0, _08031E78 @ =gUnknown_0849B2A4
	bl sub_0801CD14
	pop {r0}
	bx r0
	.align 2, 0
_08031E78: .4byte gUnknown_0849B2A4

	thumb_func_start sub_08031E7C
sub_08031E7C: @ 0x08031E7C
	push {lr}
	movs r1, #0x20
	str r1, [r0, #0x58]
	bl sub_080136C4
	movs r1, #1
	rsbs r1, r1, #0
	movs r0, #0x11
	bl sub_0801394C
	bl sub_080718F0
	bl sub_080135A4
	pop {r0}
	bx r0

	thumb_func_start sub_08031E9C
sub_08031E9C: @ 0x08031E9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08031ECC @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08031EBA
	bl sub_080718F0
	bl sub_080135A4
	ldr r0, [r4, #0x58]
	subs r0, #1
	str r0, [r4, #0x58]
_08031EBA:
	ldr r0, [r4, #0x58]
	cmp r0, #0
	bne _08031EC6
	adds r0, r4, #0
	bl sub_0801CB20
_08031EC6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031ECC: .4byte gUnknown_03004008

	thumb_func_start sub_08031ED0
sub_08031ED0: @ 0x08031ED0
	push {lr}
	movs r1, #0x20
	strh r1, [r0, #0x1e]
	movs r0, #1
	bl sub_08013928
	bl sub_080135A4
	pop {r0}
	bx r0

	thumb_func_start sub_08031EE4
sub_08031EE4: @ 0x08031EE4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080718F0
	bl sub_080135A4
	ldrh r0, [r4, #0x1e]
	subs r0, #1
	strh r0, [r4, #0x1e]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08031F04
	ldr r0, _08031F0C @ =gUnknown_03001FBC
	ldrb r0, [r0]
	bl sub_08015C30
_08031F04:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031F0C: .4byte gUnknown_03001FBC

	thumb_func_start sub_08031F10
sub_08031F10: @ 0x08031F10
	push {lr}
	movs r1, #0x20
	strh r1, [r0, #0x1e]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080139C4
	bl sub_080135A4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08031F28
sub_08031F28: @ 0x08031F28
	push {r4, lr}
	movs r0, #0x6c
	bl sub_0803B4DC
	ldr r0, _08031F54 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08031F4C
	ldr r4, _08031F58 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0xc
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
_08031F4C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031F54: .4byte gUnknown_0849B018
_08031F58: .4byte gUnknown_0849B060

	thumb_func_start sub_08031F5C
sub_08031F5C: @ 0x08031F5C
	push {r4, lr}
	ldr r0, _08031F80 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08031F7A
	ldr r4, _08031F84 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0xd
	movs r2, #0
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
_08031F7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031F80: .4byte gUnknown_0849B018
_08031F84: .4byte gUnknown_0849B060

	thumb_func_start sub_08031F88
sub_08031F88: @ 0x08031F88
	push {lr}
	adds r1, r0, #0
	ldr r0, _08031FAC @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #3
	bne _08031FA6
	ldr r0, [r1, #0x58]
	adds r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08031FB0 @ =gUnknown_02000000
	ldr r2, _08031FB4 @ =0x00000724
	bl sub_0801A7D8
_08031FA6:
	pop {r0}
	bx r0
	.align 2, 0
_08031FAC: .4byte gUnknown_0849B018
_08031FB0: .4byte gUnknown_02000000
_08031FB4: .4byte 0x00000724

	thumb_func_start sub_08031FB8
sub_08031FB8: @ 0x08031FB8
	push {r4, lr}
	ldr r4, _08031FD4 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #5
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031FD4: .4byte gUnknown_0849B060

	thumb_func_start sub_08031FD8
sub_08031FD8: @ 0x08031FD8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r6, #0
	movs r4, #0
_08031FE4:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	adds r7, r4, #1
	cmp r0, #0
	beq _08032022
	movs r5, #0
	lsls r1, r4, #1
	ldr r2, _08032040 @ =gUnknown_02025564
	adds r1, r1, r4
	ldr r0, _08032044 @ =gUnknown_0300449C
	adds r3, r4, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r2, #0x33
	adds r2, r0, r2
_0803200A:
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _0803201A
	adds r6, #1
	ldrb r0, [r3]
	adds r0, #1
	ldrb r1, [r3]
	strb r0, [r3]
_0803201A:
	adds r2, #0x1c
	adds r5, #1
	cmp r5, #2
	ble _0803200A
_08032022:
	adds r4, r7, #0
	cmp r4, #3
	ble _08031FE4
	cmp r6, #0
	beq _08032034
	mov r0, r8
	movs r1, #0
	bl sub_0801CBC8
_08032034:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032040: .4byte gUnknown_02025564
_08032044: .4byte gUnknown_0300449C

	thumb_func_start sub_08032048
sub_08032048: @ 0x08032048
	push {r4, r5, r6, lr}
	ldr r2, _08032080 @ =gUnknown_03003F1C
	ldr r1, _08032084 @ =gUnknown_030044C4
	movs r0, #0
	strb r0, [r1]
	ldrb r0, [r1]
	strb r0, [r2]
	ldr r6, _08032088 @ =gUnknown_0849B060
	ldr r5, [r6]
	movs r0, #3
	strh r0, [r5, #2]
	ldr r4, _0803208C @ =gUnknown_03003FC0
	ldrb r0, [r4, #2]
	subs r0, #0xb4
	movs r1, #3
	bl __modsi3
	strb r0, [r5, #8]
	ldr r5, [r6]
	ldrb r0, [r4, #2]
	subs r0, #0xb4
	movs r1, #3
	bl __divsi3
	strb r0, [r5, #9]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032080: .4byte gUnknown_03003F1C
_08032084: .4byte gUnknown_030044C4
_08032088: .4byte gUnknown_0849B060
_0803208C: .4byte gUnknown_03003FC0

	thumb_func_start sub_08032090
sub_08032090: @ 0x08032090
	push {lr}
	adds r1, r0, #0
	ldr r0, _080320A8 @ =gUnknown_03003FC0
	ldrb r0, [r0, #2]
	cmp r0, #0xb3
	bhi _080320A4
	adds r0, r1, #0
	movs r1, #1
	bl sub_0801CBC8
_080320A4:
	pop {r0}
	bx r0
	.align 2, 0
_080320A8: .4byte gUnknown_03003FC0

	thumb_func_start sub_080320AC
sub_080320AC: @ 0x080320AC
	push {r4, lr}
	ldr r4, _080320C8 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0xb
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080320C8: .4byte gUnknown_0849B060

	thumb_func_start sub_080320CC
sub_080320CC: @ 0x080320CC
	push {lr}
	ldr r0, _080320EC @ =gUnknown_0202575C
	movs r2, #0
	movs r1, #0xa8
	strb r1, [r0]
	ldr r1, _080320F0 @ =gUnknown_0849B018
	ldr r1, [r1]
	ldrb r1, [r1, #6]
	strb r1, [r0, #1]
	strh r2, [r0, #2]
	movs r1, #4
	bl sub_0802F588
	pop {r0}
	bx r0
	.align 2, 0
_080320EC: .4byte gUnknown_0202575C
_080320F0: .4byte gUnknown_0849B018

	thumb_func_start sub_080320F4
sub_080320F4: @ 0x080320F4
	push {lr}
	ldr r0, _08032100 @ =gUnknown_0849B304
	bl sub_0801CD14
	pop {r0}
	bx r0
	.align 2, 0
_08032100: .4byte gUnknown_0849B304

	thumb_func_start sub_08032104
sub_08032104: @ 0x08032104
	push {r4, lr}
	ldr r4, _08032128 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0xf
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	ldr r1, _0803212C @ =gUnknown_0300410C
	ldr r0, _08032130 @ =gUnknown_030040CC
	ldrh r0, [r0]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032128: .4byte gUnknown_0849B060
_0803212C: .4byte gUnknown_0300410C
_08032130: .4byte gUnknown_030040CC

	thumb_func_start sub_08032134
sub_08032134: @ 0x08032134
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _080321A0 @ =gUnknown_0849B018
	ldr r1, [r3]
	ldrh r0, [r1, #4]
	cmp r0, #7
	bne _08032198
	ldrb r0, [r1, #1]
	movs r0, #0
	strb r0, [r1, #1]
	ldr r1, [r3]
	ldrh r2, [r1, #4]
	movs r2, #0
	strh r0, [r1, #4]
	ldrb r0, [r1, #6]
	movs r0, #0xff
	strb r0, [r1, #6]
	ldr r0, [r3]
	ldrb r1, [r0, #7]
	strb r2, [r0, #7]
	ldr r0, [r3]
	ldrb r1, [r0, #8]
	strb r2, [r0, #8]
	ldr r0, [r3]
	ldrb r1, [r0, #9]
	strb r2, [r0, #9]
	ldr r0, [r3]
	ldrb r1, [r0, #0x1c]
	strb r2, [r0, #0x1c]
	ldr r0, [r3]
	ldrb r1, [r0, #0x1d]
	strb r2, [r0, #0x1d]
	ldr r0, [r3]
	ldrb r1, [r0, #0x1e]
	strb r2, [r0, #0x1e]
	bl sub_0802F23C
	bl sub_0802F03C
	bl sub_0802F28C
	ldr r1, _080321A4 @ =0x04000134
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_0801CBC8
_08032198:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080321A0: .4byte gUnknown_0849B018
_080321A4: .4byte 0x04000134

	thumb_func_start sub_080321A8
sub_080321A8: @ 0x080321A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080321CC @ =gUnknown_0849B868
	bl sub_0801CB28
	cmp r0, #0
	bne _080321C6
	ldr r0, _080321D0 @ =gUnknown_0849B7D8
	bl sub_0801CB28
	cmp r0, #0
	bne _080321C6
	adds r0, r4, #0
	bl sub_0801CB20
_080321C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080321CC: .4byte gUnknown_0849B868
_080321D0: .4byte gUnknown_0849B7D8

	thumb_func_start sub_080321D4
sub_080321D4: @ 0x080321D4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803BD6C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080321EA
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801CBC8
_080321EA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080321F0
sub_080321F0: @ 0x080321F0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _0803222C @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #4
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	movs r0, #1
	strh r0, [r1, #2]
	ldr r0, _08032230 @ =gUnknown_0849B018
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, #0xa
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #2
	beq _08032226
	adds r0, r5, #0
	movs r1, #1
	bl sub_0801CBC8
_08032226:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803222C: .4byte gUnknown_0849B060
_08032230: .4byte gUnknown_0849B018

	thumb_func_start sub_08032234
sub_08032234: @ 0x08032234
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, _08032274 @ =gUnknown_03002EE0
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803224C
	movs r0, #0x68
	bl sub_0803B4DC
_0803224C:
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _0803226C
	ldr r0, _08032278 @ =gUnknown_0849B060
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	strb r0, [r1, #9]
	movs r0, #0x71
	bl sub_0803B4DC
	adds r0, r5, #0
	bl sub_0801CB20
_0803226C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032274: .4byte gUnknown_03002EE0
_08032278: .4byte gUnknown_0849B060

	thumb_func_start sub_0803227C
sub_0803227C: @ 0x0803227C
	push {r4, r5, r6, r7, lr}
	ldr r4, _08032330 @ =gUnknown_08090D1C
	ldr r0, [r4]
	ldr r0, [r0]
	ldrh r5, [r0, #4]
	bl sub_0802F534
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r2, _08032334 @ =gUnknown_08090D20
	ldr r0, [r2]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0x20
	ands r0, r1
	adds r7, r4, #0
	cmp r0, #0
	beq _080322C4
	lsls r0, r6, #0x18
	asrs r0, r0, #8
	ldr r3, _08032338 @ =0xFFFF0000
	adds r1, r0, r3
	ldr r3, _0803233C @ =gUnknown_0300449C
_080322AA:
	lsls r0, r5, #0x10
	ldr r4, _08032338 @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r5, r0, #0x10
	cmp r0, #0
	bge _080322B8
	lsrs r5, r1, #0x10
_080322B8:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _080322AA
_080322C4:
	ldr r0, [r2]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	lsls r2, r5, #0x10
	cmp r0, #0
	beq _080322FA
	lsls r0, r6, #0x18
	asrs r3, r0, #0x18
	ldr r4, _0803233C @ =gUnknown_0300449C
_080322DA:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	blt _080322EC
	movs r5, #0
_080322EC:
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r2, r0, #0
	cmp r1, #0
	beq _080322DA
_080322FA:
	ldr r4, [r7]
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r5, [r0, #4]
	lsls r1, r1, #0x10
	cmp r1, r2
	beq _08032310
	movs r0, #0x67
	bl sub_0803B4DC
_08032310:
	ldr r4, [r4]
	movs r2, #4
	ldrsh r1, [r4, r2]
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r1, r0
	beq _08032328
	ldrh r0, [r4, #0xa]
	adds r0, #1
	movs r1, #1
	ands r0, r1
	strh r0, [r4, #0xa]
_08032328:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032330: .4byte gUnknown_08090D1C
_08032334: .4byte gUnknown_08090D20
_08032338: .4byte 0xFFFF0000
_0803233C: .4byte gUnknown_0300449C

	thumb_func_start sub_08032340
sub_08032340: @ 0x08032340
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r0, r2, #0x10
	cmp r1, r0
	beq _0803235E
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0803235E:
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r5, _080323D0 @ =gUnknown_0849B108
	ldr r2, [r7, #0x58]
	lsls r0, r2, #2
	adds r0, r0, r5
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r1, #0x48
	adds r1, r4, r1
	lsls r2, r2, #1
	adds r2, #1
	lsls r2, r2, #1
	adds r2, r2, r5
	movs r0, #0
	ldrsh r2, [r2, r0]
	adds r2, #0x58
	movs r6, #0
	str r6, [sp]
	movs r0, #0x50
	movs r3, #0
	bl sub_0801F34C
	ldr r1, [r7, #0x58]
	lsls r0, r1, #2
	adds r0, r0, r5
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r4, r4, r0
	adds r4, #0x78
	movs r0, #0xc0
	lsls r0, r0, #6
	orrs r4, r0
	lsls r1, r1, #1
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r2, #0x3c
	subs r2, r2, r0
	str r6, [sp]
	movs r0, #0x50
	adds r1, r4, #0
	movs r3, #0
	bl sub_0801F34C
	ldr r0, [r7, #0x58]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	str r0, [r7, #0x58]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080323D0: .4byte gUnknown_0849B108

	thumb_func_start sub_080323D4
sub_080323D4: @ 0x080323D4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _08032418 @ =gUnknown_08090D24
	ldr r0, [r2]
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r4, #3
	adds r5, r2, #0
_080323E6:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	bl sub_0802F460
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08032406
	ldr r0, _0803241C @ =gUnknown_0300449C
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032406
	ldr r0, [r5]
	ldr r0, [r0]
	strh r4, [r0, #6]
	strh r4, [r0, #4]
_08032406:
	subs r4, #1
	cmp r4, #0
	bge _080323E6
	movs r0, #0
	str r0, [r6, #0x58]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032418: .4byte gUnknown_08090D24
_0803241C: .4byte gUnknown_0300449C

	thumb_func_start sub_08032420
sub_08032420: @ 0x08032420
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0803227C
	ldr r0, _08032450 @ =gUnknown_0849B060
	ldr r2, [r0]
	movs r1, #4
	ldrsh r0, [r2, r1]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	movs r3, #6
	ldrsh r0, [r2, r3]
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #0x13
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_08032340
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032450: .4byte gUnknown_0849B060

	thumb_func_start sub_08032454
sub_08032454: @ 0x08032454
	push {lr}
	adds r1, r0, #0
	ldr r0, _08032464 @ =gUnknown_0849B62C
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_08032464: .4byte gUnknown_0849B62C

	thumb_func_start sub_08032468
sub_08032468: @ 0x08032468
	push {lr}
	ldr r0, _0803247C @ =gUnknown_0849B62C
	bl sub_0801CD14
	ldr r0, _08032480 @ =gUnknown_0849B060
	ldr r1, [r0]
	movs r0, #3
	strh r0, [r1, #2]
	pop {r0}
	bx r0
	.align 2, 0
_0803247C: .4byte gUnknown_0849B62C
_08032480: .4byte gUnknown_0849B060

	thumb_func_start sub_08032484
sub_08032484: @ 0x08032484
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080324C0 @ =0x00003314
	adds r2, r4, #0
	movs r3, #0x1d
_0803248E:
	adds r1, r0, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r1, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _0803248E
	adds r2, r4, #0
	adds r2, #0x40
	movs r3, #0x1d
_080324A6:
	adds r1, r0, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	strh r1, [r2]
	adds r2, #2
	subs r3, #1
	cmp r3, #0
	bge _080324A6
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080324C0: .4byte 0x00003314

	thumb_func_start sub_080324C4
sub_080324C4: @ 0x080324C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	movs r0, #0
	bl sub_0801A5B0
	bl sub_08013C00
	bl sub_08013C54
	bl sub_08013CA8
	bl sub_08013AEC
	bl sub_08013AFC
	bl sub_08013B0C
	bl sub_08013B1C
	bl sub_08034290
	bl sub_080733B8
	ldr r1, _08032550 @ =0x0000FFD0
	movs r0, #0
	movs r2, #8
	bl sub_08072C40
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_08072C40
	bl sub_0801237C
	ldr r0, _08032554 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0803252A
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08032564
_0803252A:
	ldr r0, _08032558 @ =gUnknown_081D8A14
	movs r1, #0
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _0803255C @ =gUnknown_081D3EE8
	ldr r4, _08032560 @ =gUnknown_08090D28
	ldr r1, [r4]
	ldr r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl sub_08011CAC
	b _08032586
	.align 2, 0
_08032550: .4byte 0x0000FFD0
_08032554: .4byte gUnknown_03004008
_08032558: .4byte gUnknown_081D8A14
_0803255C: .4byte gUnknown_081D3EE8
_08032560: .4byte gUnknown_08090D28
_08032564:
	ldr r0, _08032620 @ =gUnknown_081D8A34
	movs r1, #0
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _08032624 @ =gUnknown_081D6458
	ldr r4, _08032628 @ =gUnknown_08090D28
	ldr r1, [r4]
	ldr r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl sub_08011CAC
_08032586:
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4]
	ldr r1, [r0]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r0, _0803262C @ =0x06003000
	adds r1, r1, r0
	ldr r2, _08032630 @ =0x01000008
	add r0, sp, #0xc
	bl CpuFastSet
	movs r2, #0
	ldr r5, _08032634 @ =gUnknown_08499584
	movs r4, #0x80
	lsls r4, r4, #3
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r3, r0, #0
_080325AE:
	ldr r0, [r5]
	lsls r1, r2, #1
	adds r1, r1, r0
	adds r0, r1, r4
	strh r3, [r0]
	strh r3, [r1]
	adds r2, #1
	cmp r2, #0x7f
	ble _080325AE
	movs r2, #0x80
	ldr r4, _08032638 @ =0x000001FF
	ldr r3, _08032634 @ =gUnknown_08499584
_080325C6:
	ldr r0, [r3]
	lsls r1, r2, #1
	adds r1, r1, r0
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
	adds r2, #1
	cmp r2, r4
	ble _080325C6
	ldr r0, _0803263C @ =gUnknown_0849B644
	ldr r1, _08032640 @ =gUnknown_02010C50
	movs r2, #0
	str r2, [sp]
	str r7, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	movs r2, #0xec
	movs r3, #0xf
	bl sub_08073304
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _08032654
	movs r0, #0
	movs r1, #0
	movs r2, #0
	bl sub_08072C40
	movs r0, #0
	movs r1, #3
	bl sub_0802D5CC
	ldr r0, _08032644 @ =gUnknown_081D2660
	ldr r1, _08032648 @ =0x06006280
	bl sub_08011CAC
	ldr r0, _0803264C @ =gUnknown_08499578
	ldr r0, [r0]
	ldr r1, _08032650 @ =0x00000442
	adds r0, r0, r1
	bl sub_08032484
	b _08032672
	.align 2, 0
_08032620: .4byte gUnknown_081D8A34
_08032624: .4byte gUnknown_081D6458
_08032628: .4byte gUnknown_08090D28
_0803262C: .4byte 0x06003000
_08032630: .4byte 0x01000008
_08032634: .4byte gUnknown_08499584
_08032638: .4byte 0x000001FF
_0803263C: .4byte gUnknown_0849B644
_08032640: .4byte gUnknown_02010C50
_08032644: .4byte gUnknown_081D2660
_08032648: .4byte 0x06006280
_0803264C: .4byte gUnknown_08499578
_08032650: .4byte 0x00000442
_08032654:
	ldr r0, _08032680 @ =gUnknown_081320AC
	movs r1, #0x60
	movs r2, #0x20
	bl sub_08013618
	ldr r4, _08032684 @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
_08032672:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032680: .4byte gUnknown_081320AC
_08032684: .4byte gUnknown_0849B060

	thumb_func_start sub_08032688
sub_08032688: @ 0x08032688
	push {lr}
	movs r1, #8
	movs r2, #0
	bl sub_080324C4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032698
sub_08032698: @ 0x08032698
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, _080326CC @ =gUnknown_03003F1C
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080326D0 @ =gUnknown_08090D2C
	ldr r0, [r1]
	ldr r3, [r0]
	ldrb r2, [r3, #9]
	ldr r0, _080326D4 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r1, #0
	cmp r2, r0
	bne _080326E0
	ldrb r0, [r3, #8]
	adds r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080326D8 @ =gUnknown_02000000
	bl sub_0801AC58
	ldr r0, _080326DC @ =gUnknown_0849B868
	b _080326E2
	.align 2, 0
_080326CC: .4byte gUnknown_03003F1C
_080326D0: .4byte gUnknown_08090D2C
_080326D4: .4byte gUnknown_0849B018
_080326D8: .4byte gUnknown_02000000
_080326DC: .4byte gUnknown_0849B868
_080326E0:
	ldr r0, _080326F8 @ =gUnknown_0849B7D8
_080326E2:
	adds r1, r4, #0
	bl Proc_StartBlocking
	adds r1, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	str r0, [r1, #0x58]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080326F8: .4byte gUnknown_0849B7D8

	thumb_func_start sub_080326FC
sub_080326FC: @ 0x080326FC
	push {r4, lr}
	ldr r4, _08032718 @ =gUnknown_0849B060
	ldr r2, [r4]
	ldrb r1, [r2, #9]
	ldr r0, _0803271C @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	bne _08032720
	ldrh r0, [r2]
	movs r1, #6
	b _08032724
	.align 2, 0
_08032718: .4byte gUnknown_0849B060
_0803271C: .4byte gUnknown_0849B018
_08032720:
	ldrh r0, [r2]
	movs r1, #7
_08032724:
	movs r2, #2
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08032734
sub_08032734: @ 0x08032734
	ldr r3, _08032774 @ =gUnknown_0849B060
	ldr r1, [r3]
	movs r0, #0xf
	strh r0, [r1, #0xa]
	ldrb r0, [r1, #0x10]
	cmp r0, #1
	bne _0803274A
	ldr r0, _08032778 @ =gUnknown_0849B650
	ldrh r0, [r0, #0x1e]
	rsbs r0, r0, #0
	strh r0, [r1, #0xe]
_0803274A:
	ldr r2, [r3]
	ldrb r0, [r2, #0x10]
	cmp r0, #2
	bne _0803275E
	ldr r0, _08032778 @ =gUnknown_0849B650
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0xe]
_0803275E:
	ldr r1, _0803277C @ =gUnknown_03002F18
	ldr r2, _08032780 @ =0x0000FFD4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08032784 @ =gUnknown_03002B34
	ldr r0, [r3]
	ldrh r0, [r0, #0xe]
	subs r0, #0x60
	strh r0, [r1]
	bx lr
	.align 2, 0
_08032774: .4byte gUnknown_0849B060
_08032778: .4byte gUnknown_0849B650
_0803277C: .4byte gUnknown_03002F18
_08032780: .4byte 0x0000FFD4
_08032784: .4byte gUnknown_03002B34

	thumb_func_start sub_08032788
sub_08032788: @ 0x08032788
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _080327E8 @ =gUnknown_0849B060
	ldr r2, [r3]
	ldrh r0, [r2, #0xa]
	subs r0, #1
	strh r0, [r2, #0xa]
	ldrb r0, [r2, #0x10]
	cmp r0, #1
	bne _080327AA
	ldr r0, _080327EC @ =gUnknown_0849B650
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r2, #0xe]
_080327AA:
	ldr r2, [r3]
	ldrb r0, [r2, #0x10]
	cmp r0, #2
	bne _080327BE
	ldr r0, _080327EC @ =gUnknown_0849B650
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0xe]
_080327BE:
	ldr r1, _080327F0 @ =gUnknown_03002F18
	ldr r2, _080327F4 @ =0x0000FFD4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080327F8 @ =gUnknown_03002B34
	ldr r1, [r3]
	ldrh r0, [r1, #0xe]
	subs r0, #0x60
	strh r0, [r2]
	ldrh r0, [r1, #0xa]
	cmp r0, #0
	bne _080327E2
	movs r0, #0x76
	bl sub_0803B4DC
	adds r0, r4, #0
	bl sub_0801CB20
_080327E2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080327E8: .4byte gUnknown_0849B060
_080327EC: .4byte gUnknown_0849B650
_080327F0: .4byte gUnknown_03002F18
_080327F4: .4byte 0x0000FFD4
_080327F8: .4byte gUnknown_03002B34

	thumb_func_start sub_080327FC
sub_080327FC: @ 0x080327FC
	ldr r3, _0803283C @ =gUnknown_0849B060
	ldr r1, [r3]
	movs r0, #0
	strh r0, [r1, #0xa]
	ldrb r0, [r1, #0x10]
	cmp r0, #1
	bne _08032810
	ldr r0, _08032840 @ =gUnknown_0849B650
	ldrh r0, [r0]
	strh r0, [r1, #0xe]
_08032810:
	ldr r2, [r3]
	ldrb r0, [r2, #0x10]
	cmp r0, #2
	bne _08032826
	ldr r0, _08032840 @ =gUnknown_0849B650
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r2, #0xe]
_08032826:
	ldr r1, _08032844 @ =gUnknown_03002F18
	ldr r2, _08032848 @ =0x0000FFD4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0803284C @ =gUnknown_03002B34
	ldr r0, [r3]
	ldrh r0, [r0, #0xe]
	subs r0, #0x60
	strh r0, [r1]
	bx lr
	.align 2, 0
_0803283C: .4byte gUnknown_0849B060
_08032840: .4byte gUnknown_0849B650
_08032844: .4byte gUnknown_03002F18
_08032848: .4byte 0x0000FFD4
_0803284C: .4byte gUnknown_03002B34

	thumb_func_start sub_08032850
sub_08032850: @ 0x08032850
	push {r4, lr}
	adds r4, r0, #0
	ldr r3, _080328AC @ =gUnknown_0849B060
	ldr r2, [r3]
	ldrh r0, [r2, #0xa]
	adds r0, #1
	strh r0, [r2, #0xa]
	ldrb r0, [r2, #0x10]
	cmp r0, #1
	bne _08032870
	ldr r0, _080328B0 @ =gUnknown_0849B650
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0xe]
_08032870:
	ldr r2, [r3]
	ldrb r0, [r2, #0x10]
	cmp r0, #2
	bne _08032886
	ldr r0, _080328B0 @ =gUnknown_0849B650
	ldrh r1, [r2, #0xa]
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r2, #0xe]
_08032886:
	ldr r1, _080328B4 @ =gUnknown_03002F18
	ldr r2, _080328B8 @ =0x0000FFD4
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _080328BC @ =gUnknown_03002B34
	ldr r1, [r3]
	ldrh r0, [r1, #0xe]
	subs r0, #0x60
	strh r0, [r2]
	ldrh r0, [r1, #0xa]
	cmp r0, #0xf
	bne _080328A4
	adds r0, r4, #0
	bl sub_0801CB20
_080328A4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080328AC: .4byte gUnknown_0849B060
_080328B0: .4byte gUnknown_0849B650
_080328B4: .4byte gUnknown_03002F18
_080328B8: .4byte 0x0000FFD4
_080328BC: .4byte gUnknown_03002B34

	thumb_func_start sub_080328C0
sub_080328C0: @ 0x080328C0
	ldr r2, _080328E4 @ =0x00006309
	adds r1, r0, #0
	adds r1, #0x12
_080328C6:
	strh r2, [r1]
	subs r2, #1
	subs r1, #2
	cmp r1, r0
	bge _080328C6
	movs r2, #9
	ldr r1, _080328E8 @ =0x00006313
	adds r0, #0x52
_080328D6:
	strh r1, [r0]
	subs r1, #1
	subs r0, #2
	subs r2, #1
	cmp r2, #0
	bge _080328D6
	bx lr
	.align 2, 0
_080328E4: .4byte 0x00006309
_080328E8: .4byte 0x00006313

	thumb_func_start sub_080328EC
sub_080328EC: @ 0x080328EC
	push {r4, r5, lr}
	sub sp, #8
	movs r0, #0x80
	lsls r0, r0, #2
	ldr r5, _08032944 @ =gUnknown_0849B060
	ldr r1, [r5]
	ldrb r1, [r1, #4]
	bl sub_0803CD2C
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _0803293C
	ldr r4, _08032948 @ =gUnknown_0849957C
	ldr r0, [r4]
	movs r1, #0x14
	str r1, [sp]
	str r2, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl sub_08012BC8
	ldr r0, [r5]
	ldrb r1, [r0, #9]
	ldr r0, _0803294C @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08032938
	ldr r0, [r4]
	movs r1, #0x83
	lsls r1, r1, #1
	adds r0, r0, r1
	bl sub_080328C0
_08032938:
	bl sub_08013AFC
_0803293C:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032944: .4byte gUnknown_0849B060
_08032948: .4byte gUnknown_0849957C
_0803294C: .4byte gUnknown_0849B018

	thumb_func_start sub_08032950
sub_08032950: @ 0x08032950
	push {r4, r5, r6, lr}
	ldr r5, _080329EC @ =gUnknown_08090D30
	ldr r0, [r5]
	ldr r0, [r0]
	ldrh r6, [r0, #4]
	ldr r4, _080329F0 @ =gUnknown_08090D34
	ldr r0, [r4]
	bl sub_0801CB28
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt _080329E6
	ldr r2, _080329F4 @ =gUnknown_08090D38
	ldr r0, [r2]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08032992
	movs r3, #3
	ldr r1, _080329F8 @ =gUnknown_0300449C
_0803297E:
	subs r6, #1
	ands r6, r3
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803297E
	ldr r0, [r5]
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1, #0x10]
_08032992:
	ldr r0, [r2]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080329B8
	movs r2, #3
	ldr r1, _080329F8 @ =gUnknown_0300449C
_080329A4:
	adds r6, #1
	ands r6, r2
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080329A4
	ldr r0, [r5]
	ldr r1, [r0]
	movs r0, #2
	strb r0, [r1, #0x10]
_080329B8:
	ldr r0, [r5]
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r6, [r0, #4]
	lsls r1, r1, #0x10
	lsls r0, r6, #0x10
	cmp r1, r0
	beq _080329E6
	ldr r4, [r4]
	adds r0, r4, #0
	bl sub_0801CD14
	ldr r0, _080329FC @ =gUnknown_0849B670
	bl sub_0801CD14
	adds r0, r4, #0
	movs r1, #0
	bl Proc_Start
	movs r0, #0x67
	bl sub_0803B4DC
_080329E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080329EC: .4byte gUnknown_08090D30
_080329F0: .4byte gUnknown_08090D34
_080329F4: .4byte gUnknown_08090D38
_080329F8: .4byte gUnknown_0300449C
_080329FC: .4byte gUnknown_0849B670

	thumb_func_start sub_08032A00
sub_08032A00: @ 0x08032A00
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	add r1, sp, #8
	ldr r0, _08032AD8 @ =gUnknown_08090D48
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r7, _08032ADC @ =gUnknown_0849B060
	ldr r0, [r7]
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	bls _08032A56
	ldr r0, _08032AE0 @ =gUnknown_0849B0C0
	mov r8, r0
	ldr r6, _08032AE4 @ =gUnknown_03004008
	ldr r0, [r6]
	lsrs r0, r0, #3
	movs r5, #3
	ands r0, r5
	add r0, r8
	ldrb r0, [r0]
	movs r1, #0x58
	subs r1, r1, r0
	movs r4, #0
	str r4, [sp]
	movs r0, #0x45
	movs r2, #0x4c
	movs r3, #0
	bl sub_0801F34C
	ldr r0, [r6]
	lsrs r0, r0, #3
	ands r0, r5
	add r0, r8
	ldrb r1, [r0]
	adds r1, #0xd8
	str r4, [sp]
	movs r0, #0x46
	movs r2, #0x4c
	movs r3, #0
	bl sub_0801F34C
_08032A56:
	ldr r0, [r7]
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	beq _08032AB8
	ldr r4, _08032AE8 @ =gUnknown_08499578
	ldr r0, [r4]
	movs r1, #2
	str r1, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r1, #0x11
	movs r2, #2
	movs r3, #0xc
	bl sub_08012BC8
	ldr r2, [r4]
	ldr r0, [r7]
	movs r1, #4
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	add r0, sp
	adds r0, #8
	ldr r3, [r0]
	movs r6, #0x80
	lsls r6, r6, #8
	str r6, [sp]
	str r5, [sp, #4]
	movs r0, #0x11
	movs r1, #2
	bl sub_080149C0
	ldr r2, [r4]
	ldr r1, _08032AEC @ =gUnknown_02027C2C
	ldr r0, [r7]
	movs r3, #4
	ldrsh r0, [r0, r3]
	lsls r3, r0, #2
	adds r3, r3, r0
	lsls r3, r3, #2
	subs r3, r3, r0
	adds r3, r3, r1
	str r6, [sp]
	str r5, [sp, #4]
	movs r0, #0x13
	movs r1, #2
	bl sub_080149C0
	bl sub_08013AEC
_08032AB8:
	ldr r1, _08032AF0 @ =gUnknown_03002F18
	ldr r4, _08032AF4 @ =0x0000FFD4
	adds r0, r4, #0
	strh r0, [r1]
	ldr r1, _08032AF8 @ =gUnknown_03002B34
	ldr r0, [r7]
	ldrh r0, [r0, #0xe]
	subs r0, #0x60
	strh r0, [r1]
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032AD8: .4byte gUnknown_08090D48
_08032ADC: .4byte gUnknown_0849B060
_08032AE0: .4byte gUnknown_0849B0C0
_08032AE4: .4byte gUnknown_03004008
_08032AE8: .4byte gUnknown_08499578
_08032AEC: .4byte gUnknown_02027C2C
_08032AF0: .4byte gUnknown_03002F18
_08032AF4: .4byte 0x0000FFD4
_08032AF8: .4byte gUnknown_03002B34

	thumb_func_start sub_08032AFC
sub_08032AFC: @ 0x08032AFC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r1, _08032B68 @ =gUnknown_030030CC
	ldrb r0, [r1, #1]
	movs r5, #0x20
	orrs r0, r5
	strb r0, [r1, #1]
	ldr r1, _08032B6C @ =gUnknown_03002B40
	movs r0, #0x5e
	strb r0, [r1]
	ldr r1, _08032B70 @ =gUnknown_03002B4C
	movs r0, #0xdc
	strb r0, [r1]
	ldr r0, _08032B74 @ =gUnknown_03002EFC
	strb r5, [r0]
	ldr r1, _08032B78 @ =gUnknown_03002B44
	movs r0, #0x80
	strb r0, [r1]
	ldr r2, _08032B7C @ =gUnknown_030030A4
	ldrb r0, [r2]
	movs r1, #1
	mov r8, r1
	mov r1, r8
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	movs r6, #4
	orrs r0, r6
	movs r4, #8
	orrs r0, r4
	movs r3, #0x10
	orrs r0, r3
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	ldr r2, _08032B80 @ =gUnknown_030030DC
	ldrb r0, [r2]
	mov r1, r8
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r6
	orrs r0, r4
	orrs r0, r3
	orrs r0, r5
	strb r0, [r2]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08032B68: .4byte gUnknown_030030CC
_08032B6C: .4byte gUnknown_03002B40
_08032B70: .4byte gUnknown_03002B4C
_08032B74: .4byte gUnknown_03002EFC
_08032B78: .4byte gUnknown_03002B44
_08032B7C: .4byte gUnknown_030030A4
_08032B80: .4byte gUnknown_030030DC

	thumb_func_start sub_08032B84
sub_08032B84: @ 0x08032B84
	push {lr}
	ldr r0, _08032B9C @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x50
	bl sub_08063980
	ldr r0, _08032BA0 @ =sub_08032BA4
	bl sub_080638D0
	pop {r0}
	bx r0
	.align 2, 0
_08032B9C: .4byte 0x04000010
_08032BA0: .4byte sub_08032BA4

	thumb_func_start sub_08032BA4
sub_08032BA4: @ 0x08032BA4
	push {lr}
	ldr r1, _08032BC0 @ =0x04000010
	ldr r0, _08032BC4 @ =gUnknown_03001FF8
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0
	bl sub_08063980
	ldr r0, _08032BC8 @ =sub_08032B84
	bl sub_080638D0
	pop {r0}
	bx r0
	.align 2, 0
_08032BC0: .4byte 0x04000010
_08032BC4: .4byte gUnknown_03001FF8
_08032BC8: .4byte sub_08032B84

	thumb_func_start sub_08032BCC
sub_08032BCC: @ 0x08032BCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	mov sl, r0
	movs r5, #0
	ldr r7, _08032C64 @ =gUnknown_08090D54
	ldr r0, _08032C68 @ =gUnknown_08090D58
	mov r8, r0
	ldr r3, [r7]
	movs r2, #0
_08032BE6:
	adds r0, r5, r3
	ldrb r1, [r0]
	strb r2, [r0]
	adds r5, #1
	cmp r5, #3
	ble _08032BE6
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0xc]
	movs r0, #0x10
	movs r1, #1
	movs r2, #0xe
	movs r3, #4
	bl sub_0801A444
	bl sub_08013AEC
	bl sub_08013B0C
	movs r0, #0x45
	bl sub_0801F234
	movs r0, #0x46
	bl sub_0801F234
	ldr r0, _08032C6C @ =gUnknown_081D2224
	movs r1, #0xc0
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _08032C70 @ =gUnknown_081D2554
	ldr r1, _08032C74 @ =0x06006000
	bl sub_08011CAC
	movs r5, #0
	ldr r6, _08032C78 @ =gUnknown_02027C2C
	ldr r0, _08032C7C @ =gUnknown_08613CDC
	mov sb, r0
_08032C36:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_0803CCB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08032C80
	adds r0, r6, #0
	mov r1, sp
	bl sub_08031B6C
	ldr r1, [r7]
	adds r1, r5, r1
	ldrb r0, [r1]
	adds r0, #1
	ldrb r2, [r1]
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0]
	b _08032CAE
	.align 2, 0
_08032C64: .4byte gUnknown_08090D54
_08032C68: .4byte gUnknown_08090D58
_08032C6C: .4byte gUnknown_081D2224
_08032C70: .4byte gUnknown_081D2554
_08032C74: .4byte 0x06006000
_08032C78: .4byte gUnknown_02027C2C
_08032C7C: .4byte gUnknown_08613CDC
_08032C80:
	mov r0, r8
	ldr r4, [r0]
	ldr r0, [r4]
	ldrb r1, [r0, #9]
	ldr r0, _08032D24 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08032CB4
	mov r0, sb
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_0808B678
	ldr r1, [r7]
	adds r1, r5, r1
	ldrb r0, [r1]
	adds r0, #1
	ldrb r2, [r1]
	strb r0, [r1]
	ldr r1, [r4]
_08032CAE:
	ldrb r0, [r1, #0xc]
	adds r0, #1
	strb r0, [r1, #0xc]
_08032CB4:
	adds r6, #0x13
	adds r5, #1
	cmp r5, #2
	ble _08032C36
	movs r5, #2
	ldr r2, _08032D28 @ =gUnknown_0300449C
	ldr r1, _08032D2C @ =gUnknown_0849B060
_08032CC2:
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08032CD0
	ldr r0, [r1]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
_08032CD0:
	subs r5, #1
	cmp r5, #0
	bge _08032CC2
	mov r1, r8
	ldr r4, [r1]
	ldr r1, [r4]
	movs r5, #0
	movs r0, #1
	strb r0, [r1, #0x10]
	bl sub_08032A00
	ldr r0, [r4]
	strb r5, [r0, #0x10]
	ldr r0, [r4]
	strh r5, [r0, #0xe]
	bl sub_08032AFC
	bl sub_080328EC
	ldr r0, [r4]
	strh r5, [r0, #0xa]
	ldr r0, _08032D30 @ =gUnknown_0849B670
	movs r1, #0
	bl Proc_Start
	movs r0, #0
	bl sub_08063980
	ldr r0, _08032D34 @ =sub_08032B84
	bl sub_080638D0
	mov r0, sl
	str r5, [r0, #0x58]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032D24: .4byte gUnknown_0849B018
_08032D28: .4byte gUnknown_0300449C
_08032D2C: .4byte gUnknown_0849B060
_08032D30: .4byte gUnknown_0849B670
_08032D34: .4byte sub_08032B84

	thumb_func_start sub_08032D38
sub_08032D38: @ 0x08032D38
	push {lr}
	ldr r0, [r0, #0x58]
	cmp r0, #0
	bne _08032D48
	bl sub_08032A00
	bl sub_08032950
_08032D48:
	pop {r0}
	bx r0

	thumb_func_start sub_08032D4C
sub_08032D4C: @ 0x08032D4C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08032D5C @ =gUnknown_0849B6B0
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_08032D5C: .4byte gUnknown_0849B6B0

	thumb_func_start sub_08032D60
sub_08032D60: @ 0x08032D60
	push {lr}
	ldr r0, _08032D6C @ =gUnknown_0849B6B0
	bl sub_0801CD14
	pop {r0}
	bx r0
	.align 2, 0
_08032D6C: .4byte gUnknown_0849B6B0

	thumb_func_start sub_08032D70
sub_08032D70: @ 0x08032D70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08032D94 @ =gUnknown_081D3C34
	ldr r1, _08032D98 @ =0x06015780
	bl sub_08011CAC
	ldr r0, _08032D9C @ =gUnknown_0849B6B0
	bl sub_0801CB28
	movs r1, #1
	str r1, [r0, #0x58]
	movs r0, #0
	str r0, [r4, #0x2c]
	adds r4, #0x29
	strb r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032D94: .4byte gUnknown_081D3C34
_08032D98: .4byte 0x06015780
_08032D9C: .4byte gUnknown_0849B6B0

	thumb_func_start sub_08032DA0
sub_08032DA0: @ 0x08032DA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	ldr r3, [r7, #0x2c]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #4
	movs r1, #0x10
	mov r2, sb
	bl sub_08074234
	mov sl, r0
	ldr r4, _08032E68 @ =gUnknown_0808F100
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
	mov r1, sl
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
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0801E108
	movs r2, #0xa0
	lsls r2, r2, #1
	ldr r3, _08032E6C @ =gUnknown_0849B6C8
	movs r6, #0
	str r6, [sp]
	movs r0, #0
	movs r1, #0x78
	bl sub_0801BEFC
	movs r4, #0xb0
	lsls r4, r4, #1
	ldr r5, _08032E70 @ =gUnknown_0849B6D6
	str r6, [sp]
	movs r0, #0
	movs r1, #0x70
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0801BEFC
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	movs r1, #0xa0
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0801BEFC
	ldr r0, [r7, #0x2c]
	cmp r0, #0xf
	ble _08032E74
	str r6, [r7, #0x2c]
	adds r0, r7, #0
	bl sub_0801CB20
	b _08032E78
	.align 2, 0
_08032E68: .4byte gUnknown_0808F100
_08032E6C: .4byte gUnknown_0849B6C8
_08032E70: .4byte gUnknown_0849B6D6
_08032E74:
	adds r0, #1
	str r0, [r7, #0x2c]
_08032E78:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08032E88
sub_08032E88: @ 0x08032E88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp, #4]
	ldr r0, [r0, #0x2c]
	subs r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #1
	movs r1, #0xc0
	lsls r1, r1, #1
	subs r1, r1, r0
	str r1, [sp, #8]
	ldr r7, [sp, #4]
	adds r7, #0x29
	ldrb r0, [r7]
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x10]
	ldr r4, _08032FBC @ =gUnknown_0808F100
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #4
	str r0, [sp, #0xc]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r1, r6, #0
	bl Div
	mov r8, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r8, r0
	movs r2, #0
	ldrsh r1, [r4, r2]
	mov sb, r1
	rsbs r1, r1, #0
	lsls r1, r1, #4
	mov sl, r1
	mov r0, sl
	adds r1, r6, #0
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sb
	lsls r0, r0, #4
	mov sb, r0
	adds r1, r6, #0
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x10]
	adds r1, #1
	movs r2, #1
	ands r1, r2
	str r0, [sp]
	adds r0, r1, #0
	mov r1, r8
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0801E108
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	mov r0, sl
	ldr r1, [sp, #8]
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sb
	ldr r1, [sp, #8]
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0801E108
	ldr r3, _08032FC0 @ =gUnknown_0849B6C8
	movs r4, #0
	str r4, [sp]
	movs r0, #0
	movs r1, #0x78
	movs r2, #0x40
	bl sub_0801BEBC
	movs r5, #0xd6
	lsls r5, r5, #2
	ldr r6, _08032FC4 @ =gUnknown_0849B6D6
	str r4, [sp]
	movs r0, #0
	movs r1, #0x60
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0801BEFC
	movs r1, #0xa4
	lsls r1, r1, #2
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0801BEFC
	ldr r2, _08032FC8 @ =gUnknown_03002EE0
	ldr r0, [r2]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08032FE8
	ldrb r0, [r7]
	cmp r0, #0
	beq _08032FCC
	bl sub_0803BD60
	b _08032FD0
	.align 2, 0
_08032FBC: .4byte gUnknown_0808F100
_08032FC0: .4byte gUnknown_0849B6C8
_08032FC4: .4byte gUnknown_0849B6D6
_08032FC8: .4byte gUnknown_03002EE0
_08032FCC:
	bl sub_0803BD54
_08032FD0:
	ldr r0, [sp, #4]
	bl sub_0801CB20
	ldr r0, _08032FE4 @ =gUnknown_0849B6B0
	bl sub_0801CB28
	movs r1, #0
	str r1, [r0, #0x58]
	b _0803301E
	.align 2, 0
_08032FE4: .4byte gUnknown_0849B6B0
_08032FE8:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08032FF6
	ldrb r0, [r7]
	subs r0, #1
	strb r0, [r7]
_08032FF6:
	ldr r0, [r2]
	ldrh r1, [r0, #4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08033008
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
_08033008:
	ldrb r1, [r7]
	movs r0, #1
	ands r0, r1
	strb r0, [r7]
	ldr r1, [sp, #4]
	ldr r0, [r1, #0x2c]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	ldr r2, [sp, #4]
	str r0, [r2, #0x2c]
_0803301E:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033030
sub_08033030: @ 0x08033030
	push {r4, r5, lr}
	sub sp, #0x34
	adds r5, r0, #0
	ldr r4, _0803309C @ =gUnknown_03002EE0
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0803304A
	movs r0, #0x68
	bl sub_0803B4DC
_0803304A:
	ldr r0, [r4]
	ldrh r1, [r0, #4]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	beq _080330B6
	ldr r0, _080330A0 @ =gUnknown_0849B688
	bl sub_0801CB28
	cmp r0, #0
	bne _080330B6
	ldr r0, _080330A4 @ =gUnknown_0849B670
	bl sub_0801CB28
	cmp r0, #0
	bne _080330B6
	ldr r0, _080330A8 @ =gUnknown_0849B060
	ldr r2, [r0]
	ldrb r1, [r2, #9]
	ldr r0, _080330AC @ =gUnknown_0849B018
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _0803308E
	ldrb r0, [r2, #4]
	mov r1, sp
	bl sub_0803CCB8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq _080330B0
_0803308E:
	bl sub_0803BD54
	adds r0, r5, #0
	movs r1, #0xb
	bl sub_0801CBC8
	b _080330B6
	.align 2, 0
_0803309C: .4byte gUnknown_03002EE0
_080330A0: .4byte gUnknown_0849B688
_080330A4: .4byte gUnknown_0849B670
_080330A8: .4byte gUnknown_0849B060
_080330AC: .4byte gUnknown_0849B018
_080330B0:
	adds r0, r5, #0
	bl sub_0801CB20
_080330B6:
	add sp, #0x34
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080330C0
sub_080330C0: @ 0x080330C0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x71
	bl sub_0803B4DC
	bl sub_0803BD6C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08033110
	bl sub_08032D60
	ldr r0, _080330FC @ =gUnknown_0849B688
	bl sub_0801CD14
	ldr r0, _08033100 @ =gUnknown_0849B670
	bl sub_0801CD14
	ldr r0, _08033104 @ =gUnknown_0849B060
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r2, #0
	strb r1, [r0, #8]
	ldr r1, _08033108 @ =gUnknown_03003F1C
	ldr r0, _0803310C @ =gUnknown_030044C4
	strb r2, [r0]
	ldrb r0, [r0]
	strb r0, [r1]
	b _08033118
	.align 2, 0
_080330FC: .4byte gUnknown_0849B688
_08033100: .4byte gUnknown_0849B670
_08033104: .4byte gUnknown_0849B060
_08033108: .4byte gUnknown_03003F1C
_0803310C: .4byte gUnknown_030044C4
_08033110:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0801CBC8
_08033118:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033120
sub_08033120: @ 0x08033120
	push {lr}
	bl sub_08013C00
	bl sub_08013C54
	bl sub_08013CA8
	bl sub_08013AEC
	bl sub_08013AFC
	bl sub_08013B0C
	ldr r0, _08033148 @ =gUnknown_03002F18
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0803314C @ =gUnknown_03002B34
	strh r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_08033148: .4byte gUnknown_03002F18
_0803314C: .4byte gUnknown_03002B34

	thumb_func_start sub_08033150
sub_08033150: @ 0x08033150
	push {lr}
	bl sub_08031430
	bl sub_08011B18
	bl sub_08031CE4
	bl sub_08031E6C
	bl sub_08032D60
	bl sub_08032468
	bl sub_0803BD60
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033174
sub_08033174: @ 0x08033174
	push {lr}
	ldr r1, _08033190 @ =0x0000FFD0
	movs r0, #0
	movs r2, #0
	bl sub_08072C40
	movs r0, #3
	movs r1, #0
	movs r2, #0
	bl sub_08072C40
	pop {r0}
	bx r0
	.align 2, 0
_08033190: .4byte 0x0000FFD0

	thumb_func_start sub_08033194
sub_08033194: @ 0x08033194
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _0803320C @ =gUnknown_030032DC
	ldr r0, _08033210 @ =gUnknown_08090D5C
	ldr r1, [r0]
	str r1, [r2]
	ldr r2, _08033214 @ =gUnknown_03003F28
	ldr r0, [r0, #4]
	subs r0, r0, r1
	str r0, [r2]
	ldr r2, _08033218 @ =gUnknown_03003F44
	movs r3, #0xac
	lsls r3, r3, #2
	adds r0, r1, r3
	str r0, [r2]
	ldr r0, _0803321C @ =gUnknown_03003F70
	str r1, [r0, #0x28]
	adds r1, r0, #0
	adds r1, #0x4b
	movs r5, #0
	strb r5, [r1]
	bl sub_08062FB8
	ldr r1, _08033220 @ =gUnknown_0849B018
	ldr r2, [r1]
	ldrb r0, [r2, #0xa]
	movs r0, #4
	strb r0, [r2, #0xa]
	ldr r0, [r1]
	ldrb r2, [r0, #6]
	strb r5, [r0, #6]
	ldr r0, [r1]
	ldrb r1, [r0, #9]
	strb r5, [r0, #9]
	ldr r1, _08033224 @ =gUnknown_030030A4
	ldrb r0, [r1]
	movs r2, #0x20
	orrs r0, r2
	strb r0, [r1]
	ldrb r0, [r1, #1]
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r1, _08033228 @ =gUnknown_030030DC
	ldrb r0, [r1, #1]
	orrs r0, r2
	strb r0, [r1, #1]
	ldr r4, _0803322C @ =gUnknown_0849B060
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0
	movs r2, #0
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	adds r6, #0x64
	strh r5, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0803320C: .4byte gUnknown_030032DC
_08033210: .4byte gUnknown_08090D5C
_08033214: .4byte gUnknown_03003F28
_08033218: .4byte gUnknown_03003F44
_0803321C: .4byte gUnknown_03003F70
_08033220: .4byte gUnknown_0849B018
_08033224: .4byte gUnknown_030030A4
_08033228: .4byte gUnknown_030030DC
_0803322C: .4byte gUnknown_0849B060

	thumb_func_start sub_08033230
sub_08033230: @ 0x08033230
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	adds r0, #0x64
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _08033248
	b _08033386
_08033248:
	movs r4, #1
	ldr r0, _08033284 @ =gUnknown_08090D6C
	mov sl, r0
	ldr r1, _08033288 @ =gUnknown_08090D70
	mov ip, r1
	ldr r0, _0803328C @ =gUnknown_08090D74
	mov sb, r0
	mov r1, sl
	ldr r7, [r1]
	movs r6, #1
	mov r0, ip
	ldr r5, [r0]
_08033260:
	ldrb r3, [r7, #0x1d]
	asrs r3, r4
	ands r3, r6
	cmp r3, #0
	bne _08033290
	ldr r2, [r5]
	adds r0, r6, #0
	lsls r0, r4
	ldrb r1, [r2, #9]
	bics r1, r0
	ldrb r0, [r2, #9]
	strb r1, [r2, #9]
	ldr r0, [r5]
	adds r0, #0xa
	adds r0, r0, r4
	ldrb r1, [r0]
	strb r3, [r0]
	b _080332C0
	.align 2, 0
_08033284: .4byte gUnknown_08090D6C
_08033288: .4byte gUnknown_08090D70
_0803328C: .4byte gUnknown_08090D74
_08033290:
	ldrb r0, [r7, #0x1e]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	bne _080332A6
	ldr r0, [r5]
	adds r0, #0xa
	adds r0, r0, r4
	ldrb r1, [r0]
	strb r6, [r0]
	b _080332C0
_080332A6:
	ldr r2, [r5]
	adds r1, r6, #0
	lsls r1, r4
	ldrb r0, [r2, #9]
	orrs r1, r0
	ldrb r0, [r2, #9]
	strb r1, [r2, #9]
	ldr r0, [r5]
	adds r0, #0xa
	adds r0, r0, r4
	ldrb r1, [r0]
	movs r1, #3
	strb r1, [r0]
_080332C0:
	adds r4, #1
	cmp r4, #3
	ble _08033260
	mov r1, sl
	ldr r0, [r1]
	ldrb r1, [r0, #0x1e]
	movs r3, #0xe
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080332E6
	mov r1, ip
	ldr r0, [r1]
	ldr r1, [r0]
	ldrb r2, [r1, #9]
	movs r0, #1
	ldrb r3, [r1, #9]
	orrs r0, r2
	b _080332F4
_080332E6:
	mov r1, ip
	ldr r0, [r1]
	ldr r1, [r0]
	ldrb r2, [r1, #9]
	adds r0, r3, #0
	ands r0, r2
	ldrb r2, [r1, #9]
_080332F4:
	strb r0, [r1, #9]
	mov r0, sl
	ldr r2, [r0]
	ldrb r1, [r2, #0x1e]
	movs r0, #0xe
	ands r0, r1
	cmp r0, #0
	beq _08033350
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	beq _0803331A
	cmp r0, #0xd1
	beq _08033326
	mov r1, sb
	ldr r4, [r1]
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0
	b _08033330
_0803331A:
	mov r0, sb
	ldr r4, [r0]
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #2
	b _08033330
_08033326:
	mov r1, sb
	ldr r4, [r1]
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0xe
_08033330:
	movs r2, #0
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	ldrb r0, [r0, #0x18]
	cmp r0, #0xdf
	bls _08033364
	mov r0, sb
	ldr r4, [r0]
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0xe
	b _0803335A
_08033350:
	mov r1, sb
	ldr r4, [r1]
	ldr r0, [r4]
	ldrh r0, [r0]
	movs r1, #0
_0803335A:
	movs r2, #0
	bl sub_080315E8
	ldr r1, [r4]
	strh r0, [r1]
_08033364:
	mov r0, r8
	adds r0, #0x64
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _08033386
	ldr r0, _080333EC @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08033386
	ldr r1, _080333F0 @ =gUnknown_0849BA68
	mov r0, r8
	bl sub_0801CC00
_08033386:
	ldr r0, _080333EC @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #9
	ands r0, r1
	mov r4, r8
	adds r4, #0x64
	cmp r0, #0
	beq _080333CE
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080333CE
	ldr r1, _080333F4 @ =gUnknown_03003F70
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _080333CE
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	beq _080333CE
	movs r0, #1
	strh r0, [r4]
	ldr r0, _080333F8 @ =gUnknown_0861429C
	movs r1, #3
	bl Proc_Start
	ldr r2, _080333FC @ =gUnknown_030030E0
	ldrh r1, [r2]
	ldr r0, _08033400 @ =0x0000FFE0
	ands r0, r1
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2]
	mov r0, r8
	bl sub_0801CB20
_080333CE:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080333DC
	ldr r0, _080333F4 @ =gUnknown_03003F70
	bl sub_08062FF4
_080333DC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080333EC: .4byte gUnknown_03002EE0
_080333F0: .4byte gUnknown_0849BA68
_080333F4: .4byte gUnknown_03003F70
_080333F8: .4byte gUnknown_0861429C
_080333FC: .4byte gUnknown_030030E0
_08033400: .4byte 0x0000FFE0

	thumb_func_start sub_08033404
sub_08033404: @ 0x08033404
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08033430 @ =gUnknown_03003F70
	bl sub_08062FF4
	ldr r0, _08033434 @ =gUnknown_0861429C
	bl sub_0801CB28
	cmp r0, #0
	bne _08033428
	ldr r0, _08033438 @ =gUnknown_08614284
	bl sub_0801CB28
	cmp r0, #0
	bne _08033428
	adds r0, r4, #0
	bl sub_0801CB20
_08033428:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08033430: .4byte gUnknown_03003F70
_08033434: .4byte gUnknown_0861429C
_08033438: .4byte gUnknown_08614284

	thumb_func_start sub_0803343C
sub_0803343C: @ 0x0803343C
	push {lr}
	movs r1, #1
	rsbs r1, r1, #0
	movs r2, #1
	bl sub_080324C4
	ldr r0, _08033464 @ =gUnknown_08614284
	movs r1, #3
	bl Proc_Start
	ldr r2, _08033468 @ =gUnknown_030030E0
	ldrh r1, [r2]
	ldr r0, _0803346C @ =0x0000FFE0
	ands r0, r1
	movs r1, #0x1f
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08033464: .4byte gUnknown_08614284
_08033468: .4byte gUnknown_030030E0
_0803346C: .4byte 0x0000FFE0

	thumb_func_start sub_08033470
sub_08033470: @ 0x08033470
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r7, #0
	adds r4, r6, #0
	adds r4, #0x64
	movs r0, #0
	ldrsh r3, [r4, r0]
	ldr r5, _08033514 @ =gUnknown_08090D78
	cmp r3, #1
	bne _080334A0
	ldr r0, [r5]
	ldr r1, _08033518 @ =gUnknown_030032DC
	ldr r1, [r1]
	adds r1, #0xc0
	ldr r2, _0803351C @ =gUnknown_03003F28
	ldr r2, [r2]
	subs r2, #0xc0
	str r3, [sp]
	movs r3, #4
	bl sub_08063454
	movs r0, #2
	strh r0, [r4]
_080334A0:
	ldr r4, [r5]
	adds r0, r4, #0
	bl sub_08062FF4
	adds r0, r4, #0
	bl sub_08063518
	cmp r0, #0
	beq _0803350C
	ldr r0, _08033520 @ =0x04000208
	strh r7, [r0]
	ldr r1, _08033524 @ =0x04000202
	ldr r2, _08033528 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	str r7, [sp, #4]
	ldr r3, _0803352C @ =0x040000D4
	add r0, sp, #4
	str r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #0x12
	str r2, [r3, #4]
	ldr r0, _08033530 @ =0x85010000
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08033534 @ =gUnknown_08090D5C
	ldr r1, [r0, #8]
	str r1, [r3]
	str r2, [r3, #4]
	ldr r0, [r0, #0xc]
	subs r0, r0, r1
	cmp r0, #0
	bge _080334E4
	adds r0, #3
_080334E4:
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08033538 @ =gUnknown_03003F44
	ldr r0, [r0]
	ldr r4, _0803353C @ =gUnknown_0203C000
	adds r1, r4, #0
	bl sub_08011CAC
	ldr r1, _08033540 @ =0x485153CD
	ldr r0, _08033544 @ =gUnknown_0203BFFC
	str r1, [r0]
	bl _call_via_r4
	adds r0, r6, #0
	bl sub_0801CB20
_0803350C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033514: .4byte gUnknown_08090D78
_08033518: .4byte gUnknown_030032DC
_0803351C: .4byte gUnknown_03003F28
_08033520: .4byte 0x04000208
_08033524: .4byte 0x04000202
_08033528: .4byte 0x0000FFFF
_0803352C: .4byte 0x040000D4
_08033530: .4byte 0x85010000
_08033534: .4byte gUnknown_08090D5C
_08033538: .4byte gUnknown_03003F44
_0803353C: .4byte gUnknown_0203C000
_08033540: .4byte 0x485153CD
_08033544: .4byte gUnknown_0203BFFC

	thumb_func_start sub_08033548
sub_08033548: @ 0x08033548
	push {lr}
	ldr r0, _08033558 @ =gUnknown_03004008
	movs r1, #1
	rsbs r1, r1, #0
	bl sub_0802F8FC
	pop {r0}
	bx r0
	.align 2, 0
_08033558: .4byte gUnknown_03004008

	thumb_func_start sub_0803355C
sub_0803355C: @ 0x0803355C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _080335C0 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldr r5, _080335C4 @ =gUnknown_030044D8
	movs r1, #0
	strb r1, [r5]
	ldrh r1, [r0, #0x20]
	movs r2, #0
	strh r2, [r0, #0x20]
	ldrh r1, [r0, #0x20]
	ldrh r3, [r0, #0x22]
	strh r1, [r0, #0x22]
	ldrh r1, [r0, #0x2a]
	strh r2, [r0, #0x2a]
	ldrh r1, [r0, #0x2a]
	ldrh r2, [r0, #0x28]
	strh r1, [r0, #0x28]
	ldrh r1, [r0, #0x28]
	ldrh r2, [r0, #0x26]
	strh r1, [r0, #0x26]
	ldrh r1, [r0, #0x26]
	ldrh r2, [r0, #0x24]
	strh r1, [r0, #0x24]
	bl sub_0802F03C
	ldr r0, _080335C8 @ =gUnknown_03004400
	adds r1, r4, #0
	adds r1, #0x28
	ldrb r1, [r1]
	ldrb r2, [r0]
	strb r1, [r0]
	ldrh r2, [r4, #0x2a]
	lsrs r1, r2, #8
	ldrb r3, [r0, #1]
	strb r1, [r0, #1]
	ldrb r1, [r0, #2]
	strb r2, [r0, #2]
	adds r4, #0x2e
	ldrb r1, [r4]
	ldrb r2, [r0, #3]
	strb r1, [r0, #3]
	bl sub_080308B4
	movs r0, #1
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080335C0: .4byte gUnknown_0849B018
_080335C4: .4byte gUnknown_030044D8
_080335C8: .4byte gUnknown_03004400

	thumb_func_start sub_080335CC
sub_080335CC: @ 0x080335CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _080335DA
	bl _call_via_r1
_080335DA:
	ldr r0, _08033630 @ =gUnknown_030044D8
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0
	bne _08033628
	ldrh r1, [r4, #0x2c]
	ldr r6, _08033634 @ =gUnknown_0849B018
	ldr r0, [r6]
	ldrh r0, [r0, #0x22]
	subs r0, #1
	cmp r1, r0
	beq _0803360E
	ldr r0, [r4, #0x24]
	adds r0, #0x80
	str r0, [r4, #0x24]
	movs r0, #0x64
	muls r0, r1, r0
	ldrh r1, [r4, #0x2a]
	bl __divsi3
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
_0803360E:
	ldr r0, [r4, #0x24]
	bl sub_08030930
	ldr r0, [r6]
	ldrb r1, [r0, #0x1d]
	strb r5, [r0, #0x1d]
	ldrh r0, [r4, #0x2c]
	ldrh r1, [r4, #0x2a]
	cmp r0, r1
	blo _08033628
	adds r0, r4, #0
	bl sub_0801CB20
_08033628:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033630: .4byte gUnknown_030044D8
_08033634: .4byte gUnknown_0849B018

	thumb_func_start sub_08033638
sub_08033638: @ 0x08033638
	push {lr}
	ldr r0, _08033670 @ =gUnknown_0849B018
	ldr r0, [r0]
	ldr r2, _08033674 @ =gUnknown_030044D8
	movs r1, #0
	strb r1, [r2]
	ldrh r1, [r0, #0x20]
	movs r2, #0
	strh r2, [r0, #0x20]
	ldrh r1, [r0, #0x20]
	ldrh r3, [r0, #0x22]
	strh r1, [r0, #0x22]
	ldrh r1, [r0, #0x2a]
	strh r2, [r0, #0x2a]
	ldrh r1, [r0, #0x2a]
	ldrh r2, [r0, #0x28]
	strh r1, [r0, #0x28]
	ldrh r1, [r0, #0x28]
	ldrh r2, [r0, #0x26]
	strh r1, [r0, #0x26]
	ldrh r1, [r0, #0x26]
	ldrh r2, [r0, #0x24]
	strh r1, [r0, #0x24]
	bl sub_0802F03C
	pop {r0}
	bx r0
	.align 2, 0
_08033670: .4byte gUnknown_0849B018
_08033674: .4byte gUnknown_030044D8

	thumb_func_start sub_08033678
sub_08033678: @ 0x08033678
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _080336B8 @ =gUnknown_03004400
	adds r0, r5, #0
	movs r1, #0
	bl sub_080309AC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080336B2
	ldrb r1, [r5]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	ldrb r0, [r5, #1]
	lsls r0, r0, #8
	ldrb r1, [r5, #2]
	orrs r0, r1
	strh r0, [r4, #0x2a]
	ldrb r0, [r5, #3]
	adds r2, r4, #0
	adds r2, #0x2e
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0801CB20
_080336B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080336B8: .4byte gUnknown_03004400

	thumb_func_start sub_080336BC
sub_080336BC: @ 0x080336BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x2c]
	ldrh r0, [r4, #0x2a]
	subs r0, #1
	cmp r1, r0
	bge _080336F8
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl sub_08030B00
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08033748
	ldr r0, [r4, #0x24]
	adds r0, #0x80
	str r0, [r4, #0x24]
	ldrh r1, [r4, #0x2c]
	movs r0, #0x64
	muls r0, r1, r0
	ldrh r1, [r4, #0x2a]
	bl __divsi3
	adds r1, r4, #0
	adds r1, #0x2f
	strb r0, [r1]
	b _08033742
_080336F8:
	ldr r5, _08033768 @ =gUnknown_03004400
	adds r0, r5, #0
	movs r1, #0
	bl sub_08030B00
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08033748
	movs r2, #0
	adds r3, r4, #0
	adds r3, #0x2e
	adds r6, r4, #0
	adds r6, #0x2f
	ldrb r0, [r3]
	cmp r2, r0
	bge _08033734
_0803371E:
	ldr r1, [r4, #0x24]
	adds r0, r2, r5
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, [r4, #0x24]
	adds r0, #1
	str r0, [r4, #0x24]
	adds r2, #1
	ldrb r1, [r3]
	cmp r2, r1
	blt _0803371E
_08033734:
	ldrh r1, [r4, #0x2c]
	movs r0, #0x64
	muls r0, r1, r0
	ldrh r1, [r4, #0x2a]
	bl __divsi3
	strb r0, [r6]
_08033742:
	ldrh r0, [r4, #0x2c]
	adds r0, #1
	strh r0, [r4, #0x2c]
_08033748:
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _08033754
	adds r0, r4, #0
	bl _call_via_r1
_08033754:
	ldrh r0, [r4, #0x2c]
	ldrh r1, [r4, #0x2a]
	cmp r0, r1
	blo _08033762
	adds r0, r4, #0
	bl sub_0801CB20
_08033762:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033768: .4byte gUnknown_03004400

	thumb_func_start sub_0803376C
sub_0803376C: @ 0x0803376C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _08033788 @ =0x007FFF80
	cmp r1, r0
	bls _0803378C
	movs r0, #1
	rsbs r0, r0, #0
	b _080337CA
	.align 2, 0
_08033788: .4byte 0x007FFF80
_0803378C:
	lsrs r0, r1, #7
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r4, #0x7f
	ands r4, r1
	cmp r4, #0
	beq _080337A2
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080337A2:
	ldr r0, _080337D4 @ =gUnknown_0849BB08
	ldr r1, [sp, #0x18]
	bl Proc_StartBlocking
	adds r2, r0, #0
	str r7, [r2, #0x24]
	adds r0, #0x28
	movs r1, #0
	strb r6, [r0]
	mov r0, r8
	str r0, [r2, #0x20]
	movs r0, #0
	strh r5, [r2, #0x2a]
	adds r3, r2, #0
	adds r3, #0x2e
	strb r4, [r3]
	adds r3, #1
	strb r0, [r3]
	strh r1, [r2, #0x2c]
	movs r0, #0
_080337CA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080337D4: .4byte gUnknown_0849BB08

	thumb_func_start sub_080337D8
sub_080337D8: @ 0x080337D8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	ldr r0, _080337FC @ =gUnknown_0849BB28
	bl Proc_StartBlocking
	str r4, [r0, #0x20]
	str r5, [r0, #0x24]
	adds r2, r0, #0
	adds r2, #0x2f
	movs r1, #0
	strb r1, [r2]
	strh r1, [r0, #0x2c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080337FC: .4byte gUnknown_0849BB28

	thumb_func_start sub_08033800
sub_08033800: @ 0x08033800
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, [r6, #0x30]
	ldr r0, [r6, #0x38]
	cmp r1, r0
	beq _08033816
	subs r0, r0, r1
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r6, #0x30]
_08033816:
	ldr r4, _08033888 @ =gUnknown_0849B108
	ldr r2, [r6, #0x58]
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r6, #0x2c]
	adds r1, r1, r0
	lsls r2, r2, #1
	adds r2, #1
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r2, [r6, #0x30]
	adds r2, r2, r0
	adds r2, #0x10
	movs r5, #0
	str r5, [sp]
	movs r0, #0x50
	movs r3, #0
	bl sub_0801F34C
	ldr r2, [r6, #0x58]
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [r6, #0x2c]
	subs r1, r1, r0
	adds r1, #0x90
	movs r0, #0xc0
	lsls r0, r0, #6
	orrs r1, r0
	lsls r2, r2, #1
	adds r2, #1
	lsls r2, r2, #1
	adds r2, r2, r4
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r2, [r6, #0x30]
	subs r2, r2, r0
	subs r2, #0x10
	str r5, [sp]
	movs r0, #0x50
	movs r3, #0
	bl sub_0801F34C
	ldr r0, [r6, #0x58]
	adds r0, #1
	movs r1, #0x1f
	ands r0, r1
	str r0, [r6, #0x58]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08033888: .4byte gUnknown_0849B108

	thumb_func_start sub_0803388C
sub_0803388C: @ 0x0803388C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, _080338BC @ =gUnknown_0849BB50
	adds r0, r4, #0
	bl sub_0801CB28
	adds r5, r0, #0
	cmp r5, #0
	bne _080338B6
	adds r0, r4, #0
	adds r1, r6, #0
	bl Proc_Start
	movs r1, #0x58
	str r1, [r0, #0x2c]
	lsls r1, r7, #5
	adds r1, #0x2e
	str r1, [r0, #0x38]
	str r1, [r0, #0x30]
	str r5, [r0, #0x58]
_080338B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080338BC: .4byte gUnknown_0849BB50

	thumb_func_start sub_080338C0
sub_080338C0: @ 0x080338C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080338D8 @ =gUnknown_0849BB50
	bl sub_0801CB28
	lsls r4, r4, #5
	adds r4, #0x2e
	str r4, [r0, #0x38]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080338D8: .4byte gUnknown_0849BB50

	thumb_func_start sub_080338DC
sub_080338DC: @ 0x080338DC
	ldr r0, _080338F4 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080338F0
	ldr r1, _080338F8 @ =gUnknown_03001FF8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_080338F0:
	bx lr
	.align 2, 0
_080338F4: .4byte gUnknown_03004008
_080338F8: .4byte gUnknown_03001FF8

	thumb_func_start sub_080338FC
sub_080338FC: @ 0x080338FC
	push {lr}
	movs r1, #0xbe
	lsls r1, r1, #1
	movs r0, #0
	movs r2, #7
	bl sub_08043BA4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08033910
sub_08033910: @ 0x08033910
	push {lr}
	sub sp, #4
	ldr r2, _0803392C @ =0x0000717C
	movs r0, #0
	str r0, [sp]
	movs r0, #0x38
	movs r1, #0xb8
	movs r3, #0
	bl sub_08043C28
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0803392C: .4byte 0x0000717C

	thumb_func_start sub_08033930
sub_08033930: @ 0x08033930
	ldr r2, _08033994 @ =gUnknown_030030A4
	ldrb r0, [r2, #1]
	movs r3, #1
	orrs r0, r3
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	strb r0, [r2, #1]
	ldr r2, _08033998 @ =gUnknown_030030DC
	ldrb r0, [r2]
	orrs r0, r3
	movs r1, #2
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0803399C @ =gUnknown_03002B68
	movs r0, #0
	strb r0, [r1]
	ldr r1, _080339A0 @ =gUnknown_03002B30
	movs r0, #0x90
	strb r0, [r1]
	ldr r1, _080339A4 @ =gUnknown_030024E4
	movs r0, #0xf0
	strb r0, [r1]
	ldr r1, _080339A8 @ =gUnknown_030020B8
	movs r0, #0xa0
	strb r0, [r1]
	ldr r2, _080339AC @ =gUnknown_030030CC
	ldrb r1, [r2, #1]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r2, #1]
	bx lr
	.align 2, 0
_08033994: .4byte gUnknown_030030A4
_08033998: .4byte gUnknown_030030DC
_0803399C: .4byte gUnknown_03002B68
_080339A0: .4byte gUnknown_03002B30
_080339A4: .4byte gUnknown_030024E4
_080339A8: .4byte gUnknown_030020B8
_080339AC: .4byte gUnknown_030030CC

	thumb_func_start sub_080339B0
sub_080339B0: @ 0x080339B0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _08033ADC @ =gUnknown_0849D16C
	bl sub_08012C58
	movs r0, #0x70
	bl sub_0801B780
	bl sub_08033930
	bl sub_08013C00
	bl sub_08013C54
	bl sub_08013CA8
	bl sub_08013AEC
	bl sub_08013AFC
	bl sub_08013B0C
	bl sub_08013B1C
	ldr r0, _08033AE0 @ =gUnknown_081D3E88
	movs r1, #0x88
	lsls r1, r1, #2
	movs r2, #0x60
	bl sub_08013618
	ldr r0, _08033AE4 @ =gUnknown_081D8A54
	ldr r1, _08033AE8 @ =0x06015780
	bl sub_08011CAC
	ldr r0, _08033AEC @ =gUnknown_0812B49C
	ldr r1, _08033AF0 @ =0x06010200
	movs r2, #0xc0
	lsls r2, r2, #1
	bl sub_08011C68
	ldr r0, _08033AF4 @ =gUnknown_0812B61C
	ldr r1, _08033AF8 @ =0x06010380
	movs r2, #0xe0
	bl sub_08011C68
	ldr r0, _08033AFC @ =gUnknown_0812B6FC
	ldr r1, _08033B00 @ =0x06010460
	movs r2, #0x90
	lsls r2, r2, #1
	bl sub_08011C68
	ldr r0, _08033B04 @ =gUnknown_0809165C
	movs r1, #0xa8
	lsls r1, r1, #2
	movs r2, #0x20
	bl sub_08013618
	bl sub_0801F114
	ldr r1, _08033B08 @ =0x06010000
	movs r0, #2
	movs r2, #0
	movs r3, #0x16
	bl sub_0801F150
	movs r0, #0x50
	bl sub_0801F234
	ldr r0, _08033B0C @ =gUnknown_081320AC
	movs r1, #0x60
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _08033B10 @ =gUnknown_081D92B8
	movs r1, #0
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _08033B14 @ =gUnknown_0823A3D4
	ldr r1, _08033B18 @ =gUnknown_0300251C
	ldr r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl sub_08011CAC
	ldr r0, _08033B1C @ =gUnknown_08239FA4
	ldr r1, _08033B20 @ =gUnknown_08499584
	ldr r1, [r1]
	bl sub_08011CAC
	bl sub_08013B1C
	ldr r0, _08033B24 @ =gUnknown_085802F0
	ldr r1, _08033B28 @ =gUnknown_02010C50
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r2, #0xec
	movs r3, #0xf
	bl sub_08073304
	ldr r0, _08033B2C @ =gUnknown_0849BB80
	adds r1, r5, #0
	bl Proc_Start
	ldr r0, _08033B30 @ =gUnknown_08616EFC
	adds r1, r5, #0
	bl Proc_Start
	ldr r0, _08033B34 @ =gUnknown_0849BC50
	adds r1, r5, #0
	bl Proc_Start
	str r4, [r0, #0x4c]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x44]
	str r1, [r0, #0x40]
	adds r3, r0, #0
	adds r3, #0x36
	movs r1, #1
	strb r1, [r3]
	adds r2, r0, #0
	adds r2, #0x37
	strb r1, [r2]
	str r0, [r5, #0x2c]
	ldr r1, _08033B38 @ =gUnknown_0849BC3E
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0
	movs r2, #0x40
	bl sub_080315E8
	bl sub_08085AF4
	bl sub_0803D48C
	add sp, #0xc
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08033ADC: .4byte gUnknown_0849D16C
_08033AE0: .4byte gUnknown_081D3E88
_08033AE4: .4byte gUnknown_081D8A54
_08033AE8: .4byte 0x06015780
_08033AEC: .4byte gUnknown_0812B49C
_08033AF0: .4byte 0x06010200
_08033AF4: .4byte gUnknown_0812B61C
_08033AF8: .4byte 0x06010380
_08033AFC: .4byte gUnknown_0812B6FC
_08033B00: .4byte 0x06010460
_08033B04: .4byte gUnknown_0809165C
_08033B08: .4byte 0x06010000
_08033B0C: .4byte gUnknown_081320AC
_08033B10: .4byte gUnknown_081D92B8
_08033B14: .4byte gUnknown_0823A3D4
_08033B18: .4byte gUnknown_0300251C
_08033B1C: .4byte gUnknown_08239FA4
_08033B20: .4byte gUnknown_08499584
_08033B24: .4byte gUnknown_085802F0
_08033B28: .4byte gUnknown_02010C50
_08033B2C: .4byte gUnknown_0849BB80
_08033B30: .4byte gUnknown_08616EFC
_08033B34: .4byte gUnknown_0849BC50
_08033B38: .4byte gUnknown_0849BC3E

	thumb_func_start sub_08033B3C
sub_08033B3C: @ 0x08033B3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r3, #0x10
	ldr r0, [r7, #0x4c]
	cmp r0, #8
	beq _08033B68
	cmp r0, #8
	bhi _08033B5C
	cmp r0, #4
	beq _08033B62
	b _08033B72
_08033B5C:
	cmp r0, #0xc
	beq _08033B6E
	b _08033B72
_08033B62:
	movs r0, #0
	str r0, [r7, #0x40]
	b _08033B72
_08033B68:
	movs r0, #0
	str r0, [r7, #0x44]
	b _08033B72
_08033B6E:
	movs r0, #0
	str r0, [r7, #0x48]
_08033B72:
	ldr r0, [r7, #0x4c]
	cmp r0, #0x10
	bhi _08033B7A
	adds r3, r0, #0
_08033B7A:
	movs r1, #0x40
	rsbs r1, r1, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	movs r2, #0x38
	bl sub_08074234
	movs r6, #0
	movs r0, #0x38
	adds r0, r0, r7
	mov sl, r0
	adds r1, r7, #0
	adds r1, #0x40
	str r1, [sp, #4]
_08033B98:
	lsls r0, r6, #1
	mov r2, sl
	adds r5, r2, r0
	movs r1, #0xf0
	strh r1, [r5]
	lsls r1, r6, #2
	ldr r2, [sp, #4]
	adds r4, r2, r1
	ldr r3, [r4]
	mov r8, r0
	mov sb, r1
	cmp r3, #0x10
	ble _08033BB8
	movs r0, #0x60
	strh r0, [r5]
	b _08033BD6
_08033BB8:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08033BD6
	movs r0, #0x10
	str r0, [sp]
	movs r0, #5
	movs r1, #0xf0
	movs r2, #0x60
	bl sub_08074234
	strh r0, [r5]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
_08033BD6:
	mov r0, sl
	add r0, r8
	ldrh r0, [r0]
	ldr r2, _08033C5C @ =0x000001FF
	adds r1, r2, #0
	ands r1, r0
	ldr r0, _08033C60 @ =gUnknown_0849BC38
	add r0, r8
	ldrh r2, [r0]
	ldr r0, _08033C64 @ =gUnknown_0849BC24
	add r0, sb
	ldr r3, [r0]
	adds r4, r6, #1
	lsls r0, r4, #0xc
	str r0, [sp]
	movs r0, #0
	bl sub_0801BEFC
	adds r6, r4, #0
	cmp r6, #2
	ble _08033B98
	ldr r0, [r7, #0x4c]
	adds r0, #1
	str r0, [r7, #0x4c]
	cmp r0, #0x1c
	bls _08033C4C
	movs r0, #0
	str r0, [r7, #0x4c]
	movs r6, #0
	movs r0, #0x30
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0x36
	adds r1, r1, r7
	mov sb, r1
	mov r5, r8
	adds r4, r7, #0
	adds r4, #0x33
	movs r2, #0
	ldr r3, [sp, #4]
_08033C26:
	adds r1, r5, r6
	adds r0, r4, r6
	strb r2, [r0]
	strb r2, [r1]
	stm r3!, {r2}
	adds r6, #1
	cmp r6, #2
	ble _08033C26
	mov r2, sb
	ldrb r0, [r2]
	add r0, r8
	movs r1, #1
	strb r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r7, #0x3e]
	adds r0, r7, #0
	bl sub_0801CB20
_08033C4C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033C5C: .4byte 0x000001FF
_08033C60: .4byte gUnknown_0849BC38
_08033C64: .4byte gUnknown_0849BC24

	thumb_func_start sub_08033C68
sub_08033C68: @ 0x08033C68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0
	mov sb, r0
	ldr r1, _08033D1C @ =gUnknown_0808F100
	str r1, [sp, #4]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sl, r2
	adds r4, r7, #0
	adds r4, #0x30
	str r4, [sp, #0xc]
	adds r6, r7, #0
	adds r6, #0x33
	str r6, [sp, #0x10]
_08033C90:
	ldr r0, [sp, #4]
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #4
	mov r8, r1
	mov r0, r8
	mov r1, sl
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	ldr r0, [sp, #4]
	movs r1, #0
	ldrsh r4, [r0, r1]
	rsbs r0, r4, #0
	lsls r0, r0, #4
	mov r1, sl
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #4
	adds r0, r4, #0
	mov r1, sl
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	mov r0, r8
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc
	add r2, sb
	mov r8, r2
	str r0, [sp]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0801E108
	adds r0, r7, #0
	adds r0, #0x30
	add r0, sb
	adds r1, r7, #0
	adds r1, #0x33
	add r1, sb
	ldrb r0, [r0]
	mov r4, r8
	str r4, [sp, #8]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08033DFE
	ldr r3, [r7, #0x4c]
	cmp r3, #4
	bhi _08033D20
	movs r0, #4
	str r0, [sp]
	movs r0, #0
	mov r1, sl
	movs r2, #0x10
	b _08033D30
	.align 2, 0
_08033D1C: .4byte gUnknown_0808F100
_08033D20:
	cmp r3, #8
	bhi _08033D36
	subs r3, #4
	movs r0, #4
	str r0, [sp]
	movs r0, #0
	movs r1, #0x10
	mov r2, sl
_08033D30:
	bl sub_08074234
	strh r0, [r7, #0x3e]
_08033D36:
	ldr r0, [sp, #0xc]
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033D9A
	ldr r0, [sp, #4]
	adds r0, #0x80
	movs r1, #0
	ldrsh r6, [r0, r1]
	lsls r6, r6, #4
	mov r8, r6
	mov r0, r8
	mov r1, sl
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	ldr r2, [sp, #4]
	movs r0, #0
	ldrsh r4, [r2, r0]
	rsbs r0, r4, #0
	lsls r0, r0, #4
	ldrh r1, [r7, #0x3e]
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #4
	adds r0, r4, #0
	mov r1, sl
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r1, [r7, #0x3e]
	mov r0, r8
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0801E108
_08033D9A:
	ldr r0, [sp, #0x10]
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	beq _08033DFE
	ldr r0, [sp, #4]
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #4
	mov r8, r1
	mov r0, r8
	mov r1, sl
	bl Div
	adds r6, r0, #0
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	ldr r0, [sp, #4]
	movs r1, #0
	ldrsh r4, [r0, r1]
	rsbs r0, r4, #0
	lsls r0, r0, #4
	ldrh r1, [r7, #0x3e]
	bl Div
	adds r5, r0, #0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	lsls r4, r4, #4
	adds r0, r4, #0
	mov r1, sl
	bl Div
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r1, [r7, #0x3e]
	mov r0, r8
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0801E108
_08033DFE:
	ldr r0, [r7, #0x4c]
	cmp r0, #4
	bhi _08033E18
	ldr r0, [sp, #0x10]
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _08033E14 @ =gUnknown_0849BC30
	adds r0, r0, r2
	b _08033E24
	.align 2, 0
_08033E14: .4byte gUnknown_0849BC30
_08033E18:
	ldr r0, [sp, #0xc]
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r4, _08033EBC @ =gUnknown_0849BC30
	adds r0, r0, r4
_08033E24:
	ldr r3, [r0]
	ldr r6, [sp, #8]
	lsls r1, r6, #9
	movs r0, #0x60
	orrs r1, r0
	ldr r2, _08033EC0 @ =gUnknown_0849BC38
	mov r4, sb
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrb r2, [r0]
	mov r6, sl
	orrs r2, r6
	lsls r0, r4, #2
	adds r0, r0, r3
	ldr r3, [r0]
	adds r4, #1
	lsls r0, r4, #0xc
	str r0, [sp]
	movs r0, #0
	bl sub_0801BEFC
	mov sb, r4
	cmp r4, #2
	bgt _08033E56
	b _08033C90
_08033E56:
	ldr r0, [r7, #0x4c]
	adds r0, #1
	str r0, [r7, #0x4c]
	cmp r0, #8
	bls _08033EAC
	movs r0, #0
	str r0, [r7, #0x4c]
	mov sb, r0
	adds r5, r7, #0
	adds r5, #0x36
	mov r8, r0
	ldr r4, [sp, #0x10]
	ldr r2, [sp, #0xc]
	adds r3, r7, #0
	adds r3, #0x40
_08033E74:
	mov r0, r8
	stm r3!, {r0}
	mov r1, sb
	adds r0, r4, r1
	adds r1, r2, r1
	ldrb r1, [r1]
	strb r1, [r0]
	movs r6, #1
	add sb, r6
	mov r0, sb
	cmp r0, #2
	ble _08033E74
	ldrb r0, [r5]
	adds r1, r7, #0
	bl sub_0803388C
	ldr r1, _08033EC4 @ =gUnknown_0849BC3E
	ldrb r0, [r5]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0
	movs r2, #0x40
	bl sub_080315E8
	adds r0, r7, #0
	bl sub_0801CB20
_08033EAC:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033EBC: .4byte gUnknown_0849BC30
_08033EC0: .4byte gUnknown_0849BC38
_08033EC4: .4byte gUnknown_0849BC3E

	thumb_func_start sub_08033EC8
sub_08033EC8: @ 0x08033EC8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x37
	movs r0, #0
	strb r0, [r1]
	movs r4, #0
	ldr r7, _08033F14 @ =gUnknown_08090D7C
	ldr r6, _08033F18 @ =gUnknown_0849BC30
_08033EDC:
	adds r0, r5, #0
	adds r0, #0x30
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r3, [r0]
	ldr r1, [r7]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	lsls r0, r4, #2
	adds r0, r0, r3
	ldr r3, [r0]
	adds r4, #1
	lsls r0, r4, #0xc
	str r0, [sp]
	movs r0, #0
	movs r1, #0x60
	bl sub_0801BEFC
	cmp r4, #2
	ble _08033EDC
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08033F14: .4byte gUnknown_08090D7C
_08033F18: .4byte gUnknown_0849BC30

	thumb_func_start sub_08033F1C
sub_08033F1C: @ 0x08033F1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, _08033F6C @ =gUnknown_08090D80
	mov sl, r1
	ldr r2, _08033F70 @ =gUnknown_0849BC38
	mov sb, r2
_08033F36:
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, r8
	bne _08033F74
	mov r0, r8
	lsls r4, r0, #1
	adds r5, r6, #0
	adds r5, #0x38
	adds r1, r5, r4
	movs r0, #0x60
	strh r0, [r1]
	mov r1, sb
	adds r0, r4, r1
	ldrh r1, [r0]
	mov r0, sb
	ldrh r2, [r0, #2]
	ldr r3, [r6, #0x4c]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #5
	bl sub_08074234
	adds r7, r0, #0
	adds r2, r4, #0
	b _08033F98
	.align 2, 0
_08033F6C: .4byte gUnknown_08090D80
_08033F70: .4byte gUnknown_0849BC38
_08033F74:
	ldr r3, [r6, #0x4c]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	movs r1, #0x60
	movs r2, #0xf0
	bl sub_08074234
	mov r1, r8
	lsls r2, r1, #1
	adds r3, r6, #0
	adds r3, #0x38
	adds r1, r3, r2
	strh r0, [r1]
	mov r4, sb
	adds r0, r2, r4
	ldrh r7, [r0]
	adds r5, r3, #0
_08033F98:
	mov r0, sl
	ldr r1, [r0]
	adds r0, r6, #0
	adds r0, #0x30
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r5, r2
	ldrh r0, [r0]
	ldr r2, _08033FE4 @ =0x000001FF
	adds r1, r2, #0
	ands r1, r0
	movs r2, #0xff
	ands r2, r7
	mov r4, r8
	lsls r0, r4, #2
	adds r0, r0, r3
	ldr r3, [r0]
	adds r4, #1
	lsls r0, r4, #0xc
	str r0, [sp]
	movs r0, #0
	bl sub_0801BEFC
	mov r8, r4
	cmp r4, #2
	ble _08033F36
	ldr r0, [r6, #0x4c]
	cmp r0, #0x10
	bls _08033FE8
	movs r0, #0
	str r0, [r6, #0x4c]
	adds r0, r6, #0
	bl sub_0801CB20
	b _08033FEC
	.align 2, 0
_08033FE4: .4byte 0x000001FF
_08033FE8:
	adds r0, #1
	str r0, [r6, #0x4c]
_08033FEC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08033FFC
sub_08033FFC: @ 0x08033FFC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08034044 @ =gUnknown_0849BC38
	ldrb r2, [r0, #2]
	ldr r3, _08034048 @ =gUnknown_0849BC18
	adds r0, r4, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r3
	ldr r3, [r0]
	adds r1, #1
	lsls r1, r1, #0xc
	str r1, [sp]
	movs r0, #0
	movs r1, #0x60
	bl sub_0801BEFC
	ldr r2, [r4, #0x4c]
	cmp r2, #0x78
	bhi _08034036
	ldr r0, _0803404C @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08034050
_08034036:
	movs r0, #0
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl sub_0801CB20
	b _08034054
	.align 2, 0
_08034044: .4byte gUnknown_0849BC38
_08034048: .4byte gUnknown_0849BC18
_0803404C: .4byte gUnknown_03002EE0
_08034050:
	adds r0, r2, #1
	str r0, [r4, #0x4c]
_08034054:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0803405C
sub_0803405C: @ 0x0803405C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r0, #0x80
	lsls r0, r0, #1
	mov sb, r0
	ldr r3, [r7, #0x4c]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	mov r1, sb
	movs r2, #0x10
	bl sub_08074234
	mov sl, r0
	ldr r4, _08034110 @ =gUnknown_0808F100
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
	mov r1, sl
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
	mov r1, sl
	bl Div
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0xc
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r4, #0
	bl sub_0801E108
	movs r1, #0xc3
	lsls r1, r1, #5
	ldr r0, _08034114 @ =gUnknown_0849BC38
	ldrb r2, [r0, #2]
	mov r0, sb
	orrs r2, r0
	ldr r3, _08034118 @ =gUnknown_0849BC18
	adds r0, r7, #0
	adds r0, #0x36
	ldrb r4, [r0]
	lsls r0, r4, #2
	adds r0, r0, r3
	ldr r3, [r0]
	adds r4, #1
	lsls r4, r4, #0xc
	str r4, [sp]
	movs r0, #0
	bl sub_0801BEFC
	ldr r0, [r7, #0x4c]
	cmp r0, #0xf
	bls _0803411C
	adds r0, r7, #0
	bl sub_0801CB20
	b _08034120
	.align 2, 0
_08034110: .4byte gUnknown_0808F100
_08034114: .4byte gUnknown_0849BC38
_08034118: .4byte gUnknown_0849BC18
_0803411C:
	adds r0, #1
	str r0, [r7, #0x4c]
_08034120:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08034130
sub_08034130: @ 0x08034130
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x2c]
	adds r0, r6, #0
	adds r0, #0x36
	ldrb r4, [r0]
	ldr r0, _08034160 @ =gUnknown_03002EE0
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08034164
	bl sub_0803BD60
	movs r0, #0x66
	bl sub_0803B4DC
	adds r0, r5, #0
	movs r1, #2
	bl sub_0801CBC8
	b _08034202
	.align 2, 0
_08034160: .4byte gUnknown_03002EE0
_08034164:
	adds r0, r6, #0
	adds r0, #0x37
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _08034202
	movs r0, #9
	ands r0, r2
	cmp r0, #0
	beq _080341A0
	ldr r0, _08034198 @ =gUnknown_0849B060
	ldr r0, [r0]
	strb r4, [r0, #0xd]
	ldr r0, _0803419C @ =gUnknown_0849BB50
	bl sub_0801CD14
	movs r0, #0x71
	bl sub_0803B4DC
	adds r0, r6, #0
	bl sub_0801CB20
	adds r0, r5, #0
	bl sub_0801CB20
	b _08034202
	.align 2, 0
_08034198: .4byte gUnknown_0849B060
_0803419C: .4byte gUnknown_0849BB50
_080341A0:
	ldrh r1, [r3, #2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080341B6
	cmp r4, #0
	beq _080341B2
	subs r0, r4, #1
	b _080341C4
_080341B2:
	movs r4, #2
	b _080341CC
_080341B6:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080341CC
	cmp r4, #1
	bhi _080341CA
	adds r0, r4, #1
_080341C4:
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	b _080341CC
_080341CA:
	movs r4, #0
_080341CC:
	adds r3, r6, #0
	adds r3, #0x36
	ldrb r0, [r3]
	cmp r4, r0
	beq _08034202
	ldrb r0, [r3]
	adds r2, r6, #0
	adds r2, #0x30
	adds r0, r2, r0
	movs r1, #0
	strb r1, [r0]
	strb r4, [r3]
	ldrb r0, [r3]
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	strb r0, [r7]
	adds r0, r4, #0
	bl sub_080338C0
	movs r0, #0x64
	bl sub_0803B4DC
	adds r0, r6, #0
	movs r1, #0
	bl sub_0801CBC8
_08034202:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08034208
sub_08034208: @ 0x08034208
	push {lr}
	adds r1, r0, #0
	ldr r2, _08034228 @ =gUnknown_0849BC44
	ldr r0, _0803422C @ =gUnknown_0849B060
	ldr r0, [r0]
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	bl Proc_StartBlocking
	bl sub_0803BD54
	pop {r0}
	bx r0
	.align 2, 0
_08034228: .4byte gUnknown_0849BC44
_0803422C: .4byte gUnknown_0849B060

	thumb_func_start sub_08034230
sub_08034230: @ 0x08034230
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0803BD6C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _08034288
	ldr r0, _08034278 @ =gUnknown_0849BB80
	bl sub_0801CB28
	cmp r0, #0
	beq _08034280
	ldr r0, _0803427C @ =gUnknown_0849BC50
	adds r1, r4, #0
	bl Proc_Start
	str r5, [r0, #0x4c]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x44]
	str r1, [r0, #0x40]
	adds r2, r0, #0
	adds r2, #0x36
	movs r1, #1
	strb r1, [r2]
	adds r2, #1
	strb r1, [r2]
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801CBC8
	b _08034288
	.align 2, 0
_08034278: .4byte gUnknown_0849BB80
_0803427C: .4byte gUnknown_0849BC50
_08034280:
	adds r0, r4, #0
	movs r1, #4
	bl sub_0801CBC8
_08034288:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034290
sub_08034290: @ 0x08034290
	push {lr}
	ldr r0, _080342B0 @ =gUnknown_0849BB80
	bl sub_0801CD14
	ldr r0, _080342B4 @ =gUnknown_08616EFC
	bl sub_0801CD14
	ldr r0, _080342B8 @ =gUnknown_0849BB68
	bl sub_0801CD14
	movs r0, #0
	bl sub_080638D0
	pop {r0}
	bx r0
	.align 2, 0
_080342B0: .4byte gUnknown_0849BB80
_080342B4: .4byte gUnknown_08616EFC
_080342B8: .4byte gUnknown_0849BB68

	thumb_func_start sub_080342BC
sub_080342BC: @ 0x080342BC
	push {lr}
	ldr r0, _080342D4 @ =gUnknown_08616EFC
	bl sub_0801CD14
	ldr r0, _080342D8 @ =gUnknown_0849BB68
	bl sub_0801CD14
	movs r0, #0
	bl sub_080638D0
	pop {r0}
	bx r0
	.align 2, 0
_080342D4: .4byte gUnknown_08616EFC
_080342D8: .4byte gUnknown_0849BB68

	thumb_func_start sub_080342DC
sub_080342DC: @ 0x080342DC
	push {lr}
	adds r1, r0, #0
	ldr r0, _080342EC @ =gUnknown_0849B3CC
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_080342EC: .4byte gUnknown_0849B3CC

	thumb_func_start sub_080342F0
sub_080342F0: @ 0x080342F0
	push {lr}
	ldr r0, _08034304 @ =gUnknown_0849B3CC
	bl sub_0801CB28
	cmp r0, #0
	beq _080342FE
	movs r0, #1
_080342FE:
	pop {r1}
	bx r1
	.align 2, 0
_08034304: .4byte gUnknown_0849B3CC

	thumb_func_start sub_08034308
sub_08034308: @ 0x08034308
	push {lr}
	adds r1, r0, #0
	ldr r0, _08034318 @ =gUnknown_0849B8B8
	bl Proc_StartBlocking
	pop {r0}
	bx r0
	.align 2, 0
_08034318: .4byte gUnknown_0849B8B8

	thumb_func_start sub_0803431C
sub_0803431C: @ 0x0803431C
	push {lr}
	ldr r0, _08034330 @ =gUnknown_0849B8B8
	bl sub_0801CB28
	cmp r0, #0
	beq _0803432A
	movs r0, #1
_0803432A:
	pop {r1}
	bx r1
	.align 2, 0
_08034330: .4byte gUnknown_0849B8B8

	thumb_func_start sub_08034334
sub_08034334: @ 0x08034334
	bx lr
	.align 2, 0

	thumb_func_start sub_08034338
sub_08034338: @ 0x08034338
	bx lr
	.align 2, 0

	thumb_func_start sub_0803433C
sub_0803433C: @ 0x0803433C
	push {lr}
	adds r1, r0, #0
	ldr r0, _0803434C @ =gUnknown_0849BC98
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_0803434C: .4byte gUnknown_0849BC98

	thumb_func_start sub_08034350
sub_08034350: @ 0x08034350
	push {lr}
	ldr r0, _08034368 @ =gUnknown_030040DC
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0803436C @ =gUnknown_03003F60
	ldrh r0, [r0]
	cmp r0, #0
	beq _08034370
	cmp r0, #4
	beq _08034376
	b _0803437A
	.align 2, 0
_08034368: .4byte gUnknown_030040DC
_0803436C: .4byte gUnknown_03003F60
_08034370:
	bl sub_08034394
	b _0803437A
_08034376:
	bl sub_080343D8
_0803437A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034380
sub_08034380: @ 0x08034380
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x13
	bhi _08034390
	movs r0, #1
	b _08034392
_08034390:
	movs r0, #0
_08034392:
	bx lr

	thumb_func_start sub_08034394
sub_08034394: @ 0x08034394
	push {lr}
	bl sub_08034598
	ldr r0, _080343C4 @ =gUnknown_030046C0
	ldr r1, _080343C8 @ =sub_08034380
	bl sub_080309AC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _080343C0
	ldr r1, _080343CC @ =gUnknown_03004780
	movs r0, #3
	strh r0, [r1]
	ldr r1, _080343D0 @ =gUnknown_030045D4
	movs r0, #0
	strh r0, [r1]
	ldr r1, _080343D4 @ =gUnknown_03003F60
	movs r0, #4
	strh r0, [r1]
_080343C0:
	pop {r0}
	bx r0
	.align 2, 0
_080343C4: .4byte gUnknown_030046C0
_080343C8: .4byte sub_08034380
_080343CC: .4byte gUnknown_03004780
_080343D0: .4byte gUnknown_030045D4
_080343D4: .4byte gUnknown_03003F60

	thumb_func_start sub_080343D8
sub_080343D8: @ 0x080343D8
	push {lr}
	bl sub_08034598
	bl sub_0805FD64
	ldr r0, _080343F8 @ =gUnknown_03004780
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne _080343F2
	ldr r1, _080343FC @ =gUnknown_03003F60
	movs r0, #0
	strh r0, [r1]
_080343F2:
	pop {r0}
	bx r0
	.align 2, 0
_080343F8: .4byte gUnknown_03004780
_080343FC: .4byte gUnknown_03003F60

	thumb_func_start sub_08034400
sub_08034400: @ 0x08034400
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r5, #0
	movs r6, #0xf
	adds r4, r0, #0
_0803440A:
	adds r3, r7, r5
	ldrb r0, [r4]
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #4
	ldrb r2, [r4, #1]
	adds r0, r6, #0
	ands r0, r2
	orrs r1, r0
	strb r1, [r3]
	adds r4, #2
	adds r5, #1
	cmp r5, #5
	ble _0803440A
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803442C
sub_0803442C: @ 0x0803442C
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r5, #0
	movs r7, #0xff
	adds r4, r6, #0
	adds r1, r0, #0
_08034438:
	ldrb r0, [r1]
	lsrs r2, r0, #4
	cmp r2, #0xf
	bne _08034444
	strb r7, [r4]
	b _08034446
_08034444:
	strb r2, [r4]
_08034446:
	lsls r3, r5, #1
	ldrb r0, [r1]
	movs r2, #0xf
	ands r2, r0
	cmp r2, #0xf
	bne _08034458
	adds r0, r3, r6
	strb r7, [r0, #1]
	b _0803445C
_08034458:
	adds r0, r3, r6
	strb r2, [r0, #1]
_0803445C:
	adds r4, #2
	adds r1, #1
	adds r5, #1
	cmp r5, #5
	ble _08034438
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0803446C
sub_0803446C: @ 0x0803446C
	push {r4, lr}
	ldr r4, _080344A0 @ =gUnknown_030040DC
	ldrb r0, [r4]
	cmp r0, #1
	beq _08034498
	ldr r1, _080344A4 @ =gUnknown_030044B0
	ldr r2, _080344A8 @ =gUnknown_03003100
	ldrh r0, [r2]
	strb r0, [r1, #2]
	ldrh r0, [r2, #2]
	strb r0, [r1, #3]
	ldr r2, _080344AC @ =gUnknown_03003F24
	ldrh r0, [r2]
	strb r0, [r1, #4]
	ldrh r0, [r2, #2]
	strb r0, [r1, #5]
	ldr r0, _080344B0 @ =gUnknown_03003110
	adds r1, #0xc
	bl sub_08034400
	movs r0, #1
	strb r0, [r4]
_08034498:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080344A0: .4byte gUnknown_030040DC
_080344A4: .4byte gUnknown_030044B0
_080344A8: .4byte gUnknown_03003100
_080344AC: .4byte gUnknown_03003F24
_080344B0: .4byte gUnknown_03003110

	thumb_func_start sub_080344B4
sub_080344B4: @ 0x080344B4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _080344E8 @ =gUnknown_08499594
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r3, r3, #2
	ldr r5, [r4]
	adds r5, r5, r3
	ldr r4, _080344EC @ =gUnknown_030044B0
	movs r3, #8
	strb r3, [r4]
	strb r0, [r4, #1]
	strb r1, [r4, #6]
	strb r2, [r4, #7]
	ldrb r0, [r5, #6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	strb r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_080308B4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080344E8: .4byte gUnknown_08499594
_080344EC: .4byte gUnknown_030044B0

	thumb_func_start sub_080344F0
sub_080344F0: @ 0x080344F0
	push {r4, lr}
	ldr r3, _0803452C @ =gUnknown_08090D84
	ldr r2, [r3]
	movs r1, #0xd
	strb r1, [r2]
	strb r0, [r2, #6]
	ldr r1, _08034530 @ =gUnknown_03004490
	ldrb r0, [r1]
	strb r0, [r2, #7]
	ldrb r0, [r1, #1]
	strb r0, [r2, #0xc]
	ldrb r0, [r1, #2]
	strb r0, [r2, #0xd]
	movs r4, #0
	adds r1, #4
	adds r2, #0xe
_08034510:
	ldrb r0, [r1]
	strb r0, [r2]
	adds r1, #1
	adds r2, #1
	adds r4, #1
	cmp r4, #3
	ble _08034510
	ldr r0, [r3]
	bl sub_080308B4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803452C: .4byte gUnknown_08090D84
_08034530: .4byte gUnknown_03004490

	thumb_func_start sub_08034534
sub_08034534: @ 0x08034534
	push {r4, r5, r6, lr}
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r5, _08034584 @ =gUnknown_08499594
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #2
	ldr r6, [r5]
	adds r6, r6, r4
	ldr r4, _08034588 @ =gUnknown_030044B0
	strb r0, [r4]
	ldr r5, _0803458C @ =gUnknown_03003100
	ldrh r0, [r5]
	strb r0, [r4, #2]
	ldrh r0, [r5, #2]
	strb r0, [r4, #3]
	ldr r5, _08034590 @ =gUnknown_03003F24
	ldrh r0, [r5]
	strb r0, [r4, #4]
	ldrh r0, [r5, #2]
	strb r0, [r4, #5]
	strb r1, [r4, #1]
	strb r2, [r4, #6]
	strb r3, [r4, #7]
	ldrb r0, [r6, #6]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x19
	strb r0, [r4, #0x12]
	ldr r0, _08034594 @ =gUnknown_03003110
	adds r1, r4, #0
	adds r1, #0xc
	bl sub_08034400
	adds r0, r4, #0
	bl sub_080308B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034584: .4byte gUnknown_08499594
_08034588: .4byte gUnknown_030044B0
_0803458C: .4byte gUnknown_03003100
_08034590: .4byte gUnknown_03003F24
_08034594: .4byte gUnknown_03003110

	thumb_func_start sub_08034598
sub_08034598: @ 0x08034598
	push {lr}
	bl sub_08023824
	bl sub_08023518
	movs r0, #4
	bl sub_08023908
	ldr r0, _080345C4 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080345BA
	bl sub_0802FA64
_080345BA:
	movs r0, #3
	bl sub_0802776C
	pop {r0}
	bx r0
	.align 2, 0
_080345C4: .4byte gUnknown_03002EE0

	thumb_func_start sub_080345C8
sub_080345C8: @ 0x080345C8
	push {r4, lr}
	bl sub_08034F6C
	ldr r4, _080345F0 @ =gUnknown_08090D88
	cmp r0, #0
	bne _080346BC
	ldr r0, _080345F4 @ =gUnknown_030040E4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080346BC
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0x14
	bhi _080346BC
	lsls r0, r0, #2
	ldr r1, _080345F8 @ =_080345FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080345F0: .4byte gUnknown_08090D88
_080345F4: .4byte gUnknown_030040E4
_080345F8: .4byte _080345FC
_080345FC: @ jump table
	.4byte _080346BC @ case 0
	.4byte _08034650 @ case 1
	.4byte _08034656 @ case 2
	.4byte _0803465C @ case 3
	.4byte _08034662 @ case 4
	.4byte _08034668 @ case 5
	.4byte _0803466E @ case 6
	.4byte _08034674 @ case 7
	.4byte _0803467A @ case 8
	.4byte _08034680 @ case 9
	.4byte _08034686 @ case 10
	.4byte _0803468C @ case 11
	.4byte _08034692 @ case 12
	.4byte _08034698 @ case 13
	.4byte _0803469E @ case 14
	.4byte _080346BC @ case 15
	.4byte _080346AA @ case 16
	.4byte _080346BC @ case 17
	.4byte _080346B0 @ case 18
	.4byte _080346A4 @ case 19
	.4byte _080346B6 @ case 20
_08034650:
	bl sub_08034938
	b _080346BC
_08034656:
	bl sub_080349E4
	b _080346BC
_0803465C:
	bl sub_08034AF8
	b _080346BC
_08034662:
	bl sub_08034DB0
	b _080346BC
_08034668:
	bl sub_08034DCC
	b _080346BC
_0803466E:
	bl sub_08034DF8
	b _080346BC
_08034674:
	bl sub_08034EA4
	b _080346BC
_0803467A:
	bl sub_08034C90
	b _080346BC
_08034680:
	bl sub_08034CA4
	b _080346BC
_08034686:
	bl sub_08034CB8
	b _080346BC
_0803468C:
	bl sub_08034CD4
	b _080346BC
_08034692:
	bl sub_08034D18
	b _080346BC
_08034698:
	bl sub_0802DC2C
	b _080346BC
_0803469E:
	bl sub_0806171C
	b _080346BC
_080346A4:
	bl sub_08034350
	b _080346BC
_080346AA:
	bl sub_08034ED0
	b _080346BC
_080346B0:
	bl sub_08034EF0
	b _080346BC
_080346B6:
	bl sub_08034F1C
	b _080346EC
_080346BC:
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0xe
	beq _080346CC
	ldr r0, _080346F4 @ =gUnknown_030044DC
	ldrh r0, [r0]
	cmp r0, #0xe
	bne _080346EC
_080346CC:
	ldr r0, _080346F8 @ =gUnknown_0849A00C
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080346E6
	bl sub_08034F6C
	cmp r0, #0
	bne _080346EC
_080346E6:
	movs r0, #3
	bl sub_0802776C
_080346EC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080346F4: .4byte gUnknown_030044DC
_080346F8: .4byte gUnknown_0849A00C

	thumb_func_start sub_080346FC
sub_080346FC: @ 0x080346FC
	push {r4, r5, r6, r7, lr}
	bl sub_08034780
	ldr r0, _0803472C @ =gUnknown_08090D8C
	ldr r3, [r0]
	ldrb r1, [r3, #1]
	adds r7, r0, #0
	cmp r1, #1
	beq _08034730
	cmp r1, #2
	bne _08034776
	adds r2, r3, #0
	adds r2, #0x39
	movs r0, #1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x3a
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	b _08034776
	.align 2, 0
_0803472C: .4byte gUnknown_08090D8C
_08034730:
	movs r2, #0
	ldr r6, _08034750 @ =gUnknown_085C77E0
	adds r4, r3, #0
	adds r4, #0x38
	movs r5, #0x5c
_0803473A:
	ldrb r0, [r3, #2]
	muls r0, r5, r0
	adds r0, r2, r0
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #5
	bne _08034754
	adds r2, #1
	adds r1, r2, r4
	movs r0, #2
	b _0803475A
	.align 2, 0
_08034750: .4byte gUnknown_085C77E0
_08034754:
	adds r2, #1
	adds r1, r2, r4
	movs r0, #1
_0803475A:
	strb r0, [r1]
	cmp r2, #3
	ble _0803473A
	ldr r2, _0803477C @ =gUnknown_085C77A0
	ldr r3, [r7]
	ldrb r1, [r3, #2]
	movs r0, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	ldrb r0, [r0, #0x17]
	cmp r0, #0
	beq _08034776
	movs r0, #1
	strb r0, [r3, #0xd]
_08034776:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803477C: .4byte gUnknown_085C77A0

	thumb_func_start sub_08034780
sub_08034780: @ 0x08034780
	push {r4, r5, r6, r7, lr}
	ldr r0, _08034828 @ =gUnknown_030040F0
	movs r4, #0
	str r4, [r0]
	ldr r0, _0803482C @ =gUnknown_030044A0
	str r4, [r0]
	ldr r7, _08034830 @ =gUnknown_03003FC0
	adds r0, r7, #0
	adds r0, #0x39
	movs r5, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r5, [r0]
	subs r0, #8
	strb r5, [r0]
	adds r1, r7, #0
	adds r1, #0x35
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r6, #3
	strb r6, [r1]
	adds r2, r7, #0
	adds r2, #0x37
	movs r1, #4
	strb r1, [r2]
	adds r2, #7
	strb r5, [r2]
	adds r2, #1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r1, r7, #0
	adds r1, #0x41
	movs r0, #0xb
	strb r0, [r1]
	bl sub_08026900
	adds r0, r7, #0
	adds r0, #0x30
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	movs r0, #0xfa
	lsls r0, r0, #2
	str r0, [r7, #0x28]
	str r4, [r7, #0x24]
	str r4, [r7, #0x14]
	str r4, [r7, #0x18]
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	strb r4, [r7, #0xd]
	adds r0, r7, #0
	adds r0, #0x2f
	strb r4, [r0]
	subs r0, #3
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	strb r6, [r7, #4]
	strb r5, [r7, #5]
	strb r4, [r7, #6]
	strb r5, [r7, #8]
	strb r5, [r7, #7]
	ldr r1, _08034834 @ =gUnknown_0200C420
	ldrb r0, [r1, #0xe]
	strb r0, [r7, #9]
	movs r2, #0
	ldrb r0, [r1, #0x14]
	cmp r0, #0
	bne _0803481E
	movs r2, #1
_0803481E:
	strb r2, [r7, #0xc]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08034828: .4byte gUnknown_030040F0
_0803482C: .4byte gUnknown_030044A0
_08034830: .4byte gUnknown_03003FC0
_08034834: .4byte gUnknown_0200C420

	thumb_func_start sub_08034838
sub_08034838: @ 0x08034838
	ldr r0, _08034844 @ =gUnknown_03003FC0
	adds r0, #0x32
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08034844: .4byte gUnknown_03003FC0

	thumb_func_start sub_08034848
sub_08034848: @ 0x08034848
	push {r4, r5, lr}
	ldr r4, _08034868 @ =gUnknown_03003FC0
	movs r5, #1
	strb r5, [r4, #0xc]
	movs r0, #3
	strb r0, [r4, #1]
	strb r5, [r4, #2]
	bl sub_08034780
	bl sub_08034838
	strb r5, [r4, #9]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034868: .4byte gUnknown_03003FC0

	thumb_func_start sub_0803486C
sub_0803486C: @ 0x0803486C
	push {lr}
	ldr r2, _08034884 @ =gUnknown_03003338
	ldr r0, _08034888 @ =gUnknown_0849FE74
	ldr r1, [r0]
	str r1, [r2]
	ldr r0, _0803488C @ =gUnknown_03003F20
	str r1, [r0]
	bl sub_080215D0
	pop {r0}
	bx r0
	.align 2, 0
_08034884: .4byte gUnknown_03003338
_08034888: .4byte gUnknown_0849FE74
_0803488C: .4byte gUnknown_03003F20

	thumb_func_start sub_08034890
sub_08034890: @ 0x08034890
	push {lr}
	bl sub_0802150C
	ldr r0, _080348B0 @ =gUnknown_03003FC0
	ldrb r0, [r0, #2]
	bl sub_0802163C
	bl sub_08021598
	bl sub_080215B8
	bl sub_080267AC
	pop {r0}
	bx r0
	.align 2, 0
_080348B0: .4byte gUnknown_03003FC0

	thumb_func_start sub_080348B4
sub_080348B4: @ 0x080348B4
	push {r4, r5, r6, r7, lr}
	ldr r1, _08034904 @ =gUnknown_03003FC0
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _0803492E
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _0803492E
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _0803492E
	movs r7, #0
	movs r5, #0
	movs r4, #1
	ldr r6, _08034908 @ =gUnknown_08499598
_080348D6:
	adds r0, r4, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08034924
	cmp r5, #0
	beq _0803490C
	ldr r0, [r6]
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1b]
	cmp r0, #1
	bne _08034924
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r7, r0
	beq _08034924
	movs r0, #1
	b _08034930
	.align 2, 0
_08034904: .4byte gUnknown_03003FC0
_08034908: .4byte gUnknown_08499598
_0803490C:
	ldr r0, [r6]
	lsls r1, r4, #4
	subs r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0x1b]
	cmp r0, #1
	bne _08034924
	adds r0, r1, #0
	adds r0, #0x2a
	ldrb r7, [r0]
	movs r5, #1
_08034924:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080348D6
_0803492E:
	movs r0, #0
_08034930:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08034938
sub_08034938: @ 0x08034938
	push {r4, r5, lr}
	ldr r0, _08034960 @ =gUnknown_03003FC0
	adds r4, r0, #0
	adds r4, #0x30
	ldrb r0, [r4]
	cmp r0, #0
	beq _0803495A
	bl sub_0802672C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803495A
	ldr r1, _08034964 @ =gUnknown_03004080
	ldrb r0, [r4]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0803496C
_0803495A:
	ldr r1, _08034968 @ =gUnknown_030032D8
	movs r0, #2
	b _080349D4
	.align 2, 0
_08034960: .4byte gUnknown_03003FC0
_08034964: .4byte gUnknown_03004080
_08034968: .4byte gUnknown_030032D8
_0803496C:
	movs r5, #0
	movs r4, #1
_08034970:
	adds r0, r4, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08034990
	ldr r0, _080349DC @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x11]
	cmp r5, r0
	bhs _08034990
	adds r5, r0, #0
_08034990:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _08034970
	movs r4, #1
_0803499C:
	adds r0, r4, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080349C2
	ldr r0, _080349DC @ =gUnknown_08499598
	ldr r1, [r0]
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x11]
	cmp r5, r0
	bls _080349C2
	adds r0, r4, #0
	movs r1, #0x20
	bl sub_08028874
_080349C2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _0803499C
	bl sub_08028568
	ldr r1, _080349E0 @ =gUnknown_030032D8
	movs r0, #0x12
_080349D4:
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080349DC: .4byte gUnknown_08499598
_080349E0: .4byte gUnknown_030032D8

	thumb_func_start sub_080349E4
sub_080349E4: @ 0x080349E4
	push {r4, lr}
	bl sub_080348B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080349F4
	bl sub_0802BFA8
_080349F4:
	bl sub_08024584
	ldr r0, _08034A34 @ =gUnknown_030033EC
	ldrh r0, [r0]
	bl sub_08026704
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08034A38 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r4, [r1, #0x1a]
	ldr r1, _08034A3C @ =0x06010000
	movs r2, #0xe5
	lsls r2, r2, #1
	movs r0, #1
	movs r3, #0x13
	bl sub_0801F150
	adds r4, #0x3d
	adds r0, r4, #0
	bl sub_0801F234
	ldr r1, _08034A40 @ =gUnknown_030032D8
	movs r0, #3
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034A34: .4byte gUnknown_030033EC
_08034A38: .4byte gUnknown_08499598
_08034A3C: .4byte 0x06010000
_08034A40: .4byte gUnknown_030032D8

	thumb_func_start sub_08034A44
sub_08034A44: @ 0x08034A44
	push {lr}
	bl sub_0808B6B0
	adds r1, r0, #0
	lsls r1, r1, #3
	movs r0, #0xf0
	subs r0, r0, r1
	lsrs r0, r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08034A58
sub_08034A58: @ 0x08034A58
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, r5, #0
	bl sub_08034A44
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080119A0
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034A7C
sub_08034A7C: @ 0x08034A7C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov r8, r0
	adds r6, r1, #0
	ldr r2, _08034AF0 @ =gUnknown_08610A38
	ldr r1, _08034AF4 @ =gUnknown_08499CCC
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r5, [r0]
	adds r0, r5, #0
	bl sub_08034A44
	adds r4, r0, #0
	mov r0, r8
	adds r1, r5, #0
	bl sub_08034A58
	adds r6, #0x3d
	adds r1, r4, #0
	subs r1, #0x10
	movs r0, #4
	rsbs r0, r0, #0
	add r8, r0
	movs r0, #0
	mov sb, r0
	str r0, [sp]
	adds r0, r6, #0
	mov r2, r8
	movs r3, #0
	bl sub_0801F34C
	adds r0, r5, #0
	bl sub_0808B6B0
	lsls r0, r0, #3
	adds r4, r4, r0
	mov r0, sb
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	movs r3, #0
	bl sub_0801F34C
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08034AF0: .4byte gUnknown_08610A38
_08034AF4: .4byte gUnknown_08499CCC

	thumb_func_start sub_08034AF8
sub_08034AF8: @ 0x08034AF8
	push {r4, r5, lr}
	bl sub_080348B4
	lsls r0, r0, #0x18
	ldr r5, _08034B3C @ =gUnknown_08090E24
	cmp r0, #0
	bne _08034B08
	b _08034C3A
_08034B08:
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_08026704
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, _08034B40 @ =gUnknown_08499598
	ldr r2, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r1, [r1, #0x1a]
	movs r0, #0x4e
	bl sub_08034A7C
	ldr r0, _08034B44 @ =gUnknown_02028E40
	ldrb r0, [r0]
	cmp r0, #1
	beq _08034B8C
	cmp r0, #1
	bgt _08034B48
	cmp r0, #0
	beq _08034B52
	b _08034C2C
	.align 2, 0
_08034B3C: .4byte gUnknown_08090E24
_08034B40: .4byte gUnknown_08499598
_08034B44: .4byte gUnknown_02028E40
_08034B48:
	cmp r0, #2
	beq _08034BC8
	cmp r0, #3
	beq _08034C04
	b _08034C2C
_08034B52:
	ldr r1, _08034B7C @ =gUnknown_08090DA4
	movs r0, #0x38
	bl sub_08034A58
	ldr r4, _08034B80 @ =gUnknown_08090D90
	ldr r0, _08034B84 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #3
	bl __udivsi3
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r0, #0x68
	ldr r1, _08034B88 @ =gUnknown_08090DB0
	bl sub_08034A58
	b _08034C2C
	.align 2, 0
_08034B7C: .4byte gUnknown_08090DA4
_08034B80: .4byte gUnknown_08090D90
_08034B84: .4byte gUnknown_03004008
_08034B88: .4byte gUnknown_08090DB0
_08034B8C:
	ldr r1, _08034BB8 @ =gUnknown_08090DC0
	movs r0, #0x38
	bl sub_08034A58
	ldr r4, _08034BBC @ =gUnknown_08090D90
	ldr r0, _08034BC0 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #3
	bl __udivsi3
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r0, #0x68
	ldr r1, _08034BC4 @ =gUnknown_08090DD0
	bl sub_08034A58
	b _08034C2C
	.align 2, 0
_08034BB8: .4byte gUnknown_08090DC0
_08034BBC: .4byte gUnknown_08090D90
_08034BC0: .4byte gUnknown_03004008
_08034BC4: .4byte gUnknown_08090DD0
_08034BC8:
	ldr r1, _08034BF4 @ =gUnknown_08090DE0
	movs r0, #0x38
	bl sub_08034A58
	ldr r4, _08034BF8 @ =gUnknown_08090D90
	ldr r0, _08034BFC @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #3
	bl __udivsi3
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r0, #0x68
	ldr r1, _08034C00 @ =gUnknown_08090DF0
	bl sub_08034A58
	b _08034C2C
	.align 2, 0
_08034BF4: .4byte gUnknown_08090DE0
_08034BF8: .4byte gUnknown_08090D90
_08034BFC: .4byte gUnknown_03004008
_08034C00: .4byte gUnknown_08090DF0
_08034C04:
	ldr r1, _08034C74 @ =gUnknown_08090E04
	movs r0, #0x30
	bl sub_08034A58
	ldr r4, _08034C78 @ =gUnknown_08090D90
	ldr r0, _08034C7C @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #3
	bl __udivsi3
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r0, [r0]
	adds r0, #0x68
	ldr r1, _08034C80 @ =gUnknown_08090E14
	bl sub_08034A58
_08034C2C:
	ldr r0, _08034C84 @ =gUnknown_03002EE0
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08034C6E
_08034C3A:
	bl sub_08026768
	bl sub_080268F4
	ldr r0, [r5]
	ldrh r0, [r0]
	bl sub_08044178
	bl sub_08024268
	bl sub_08062038
	bl sub_080348B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08034C60
	bl sub_0802BFBC
_08034C60:
	bl sub_08034C8C
	bl sub_0803B5E8
	ldr r1, _08034C88 @ =gUnknown_030032D8
	movs r0, #4
	strh r0, [r1]
_08034C6E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034C74: .4byte gUnknown_08090E04
_08034C78: .4byte gUnknown_08090D90
_08034C7C: .4byte gUnknown_03004008
_08034C80: .4byte gUnknown_08090E14
_08034C84: .4byte gUnknown_03002EE0
_08034C88: .4byte gUnknown_030032D8

	thumb_func_start sub_08034C8C
sub_08034C8C: @ 0x08034C8C
	bx lr
	.align 2, 0

	thumb_func_start sub_08034C90
sub_08034C90: @ 0x08034C90
	push {lr}
	bl sub_0802A7B0
	ldr r1, _08034CA0 @ =gUnknown_030032D8
	movs r0, #9
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08034CA0: .4byte gUnknown_030032D8

	thumb_func_start sub_08034CA4
sub_08034CA4: @ 0x08034CA4
	push {lr}
	bl sub_0802A538
	ldr r1, _08034CB4 @ =gUnknown_030032D8
	movs r0, #0xa
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08034CB4: .4byte gUnknown_030032D8

	thumb_func_start sub_08034CB8
sub_08034CB8: @ 0x08034CB8
	push {lr}
	movs r0, #0
	bl sub_0802776C
	bl sub_080742FC
	ldr r1, _08034CD0 @ =gUnknown_030032D8
	movs r0, #0xb
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08034CD0: .4byte gUnknown_030032D8

	thumb_func_start sub_08034CD4
sub_08034CD4: @ 0x08034CD4
	push {lr}
	ldr r0, _08034CEC @ =gUnknown_03003FC0
	ldrb r0, [r0, #2]
	cmp r0, #0x8d
	beq _08034CFE
	cmp r0, #0x8d
	bgt _08034CF0
	cmp r0, #0x8b
	bgt _08034CF4
	cmp r0, #0x8a
	blt _08034CF4
	b _08034CFE
	.align 2, 0
_08034CEC: .4byte gUnknown_03003FC0
_08034CF0:
	cmp r0, #0x8f
	beq _08034CFE
_08034CF4:
	bl sub_08019260
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034D0C
_08034CFE:
	ldr r0, _08034D10 @ =gUnknown_0849F790
	movs r1, #3
	bl Proc_Start
	ldr r1, _08034D14 @ =gUnknown_030032D8
	movs r0, #0xc
	strh r0, [r1]
_08034D0C:
	pop {r0}
	bx r0
	.align 2, 0
_08034D10: .4byte gUnknown_0849F790
_08034D14: .4byte gUnknown_030032D8

	thumb_func_start sub_08034D18
sub_08034D18: @ 0x08034D18
	push {lr}
	movs r0, #0
	bl sub_0802776C
	ldr r0, _08034D44 @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _08034D48 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1b]
	subs r0, #1
	cmp r0, #5
	bhi _08034DA6
	lsls r0, r0, #2
	ldr r1, _08034D4C @ =_08034D50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08034D44: .4byte gUnknown_030033EC
_08034D48: .4byte gUnknown_08499598
_08034D4C: .4byte _08034D50
_08034D50: @ jump table
	.4byte _08034D68 @ case 0
	.4byte _08034D74 @ case 1
	.4byte _08034DA0 @ case 2
	.4byte _08034DA0 @ case 3
	.4byte _08034DA0 @ case 4
	.4byte _08034DA0 @ case 5
_08034D68:
	ldr r1, _08034D70 @ =gUnknown_030032D8
	movs r0, #0xd
	b _08034DA4
	.align 2, 0
_08034D70: .4byte gUnknown_030032D8
_08034D74:
	ldr r0, _08034D94 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _08034D88
	bl sub_0802F4F4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034DA0
_08034D88:
	ldr r1, _08034D98 @ =gUnknown_03004780
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08034D9C @ =gUnknown_030032D8
	movs r0, #0xe
	b _08034DA4
	.align 2, 0
_08034D94: .4byte gUnknown_03003FC0
_08034D98: .4byte gUnknown_03004780
_08034D9C: .4byte gUnknown_030032D8
_08034DA0:
	ldr r1, _08034DAC @ =gUnknown_030032D8
	movs r0, #0x13
_08034DA4:
	strh r0, [r1]
_08034DA6:
	pop {r0}
	bx r0
	.align 2, 0
_08034DAC: .4byte gUnknown_030032D8

	thumb_func_start sub_08034DB0
sub_08034DB0: @ 0x08034DB0
	push {lr}
	bl sub_0803B628
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034DC2
	ldr r1, _08034DC8 @ =gUnknown_030032D8
	movs r0, #5
	strh r0, [r1]
_08034DC2:
	pop {r0}
	bx r0
	.align 2, 0
_08034DC8: .4byte gUnknown_030032D8

	thumb_func_start sub_08034DCC
sub_08034DCC: @ 0x08034DCC
	push {lr}
	ldr r0, _08034DEC @ =gUnknown_03004080
	ldrh r0, [r0]
	cmp r0, #1
	beq _08034DDE
	ldr r0, _08034DF0 @ =gUnknown_030033EC
	ldrb r0, [r0]
	bl sub_08043DAC
_08034DDE:
	bl sub_08074460
	ldr r1, _08034DF4 @ =gUnknown_030032D8
	movs r0, #6
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08034DEC: .4byte gUnknown_03004080
_08034DF0: .4byte gUnknown_030033EC
_08034DF4: .4byte gUnknown_030032D8

	thumb_func_start sub_08034DF8
sub_08034DF8: @ 0x08034DF8
	push {r4, r5, lr}
	bl sub_08019260
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08034E8A
	ldr r4, _08034E90 @ =gUnknown_08090E28
	ldr r0, [r4]
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	adds r5, r4, #0
	cmp r0, r1
	bne _08034E8A
	movs r0, #0
	bl sub_0801B780
	ldr r0, _08034E94 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	ldr r4, _08034E98 @ =gUnknown_08090E2C
	ldr r3, _08034E9C @ =gUnknown_08090E30
	cmp r0, #0
	beq _08034E44
	ldr r0, [r4]
	ldrh r1, [r0]
	ldr r0, [r3]
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0x1b]
	cmp r0, #1
	bne _08034E62
_08034E44:
	ldr r0, [r4]
	ldrh r2, [r0]
	ldr r0, [r3]
	ldr r0, [r0]
	lsls r1, r2, #4
	subs r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, #0x30
	ldrb r1, [r1]
	bl sub_08029088
_08034E62:
	ldr r0, [r5]
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08034E8A
	ldr r0, [r4]
	ldrb r0, [r0]
	bl sub_08043DAC
	bl sub_0802BB98
	bl sub_080351F0
	ldr r1, _08034EA0 @ =gUnknown_030032D8
	movs r0, #7
	strh r0, [r1]
_08034E8A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08034E90: .4byte gUnknown_08090E28
_08034E94: .4byte gUnknown_03003FC0
_08034E98: .4byte gUnknown_08090E2C
_08034E9C: .4byte gUnknown_08090E30
_08034EA0: .4byte gUnknown_030032D8

	thumb_func_start sub_08034EA4
sub_08034EA4: @ 0x08034EA4
	push {lr}
	bl sub_0802817C
	ldr r0, _08034EB8 @ =gUnknown_03004080
	ldrh r0, [r0]
	cmp r0, #1
	bne _08034EC0
	ldr r1, _08034EBC @ =gUnknown_030032D8
	movs r0, #9
	b _08034EC4
	.align 2, 0
_08034EB8: .4byte gUnknown_03004080
_08034EBC: .4byte gUnknown_030032D8
_08034EC0:
	ldr r1, _08034ECC @ =gUnknown_030032D8
	movs r0, #8
_08034EC4:
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08034ECC: .4byte gUnknown_030032D8

	thumb_func_start sub_08034ED0
sub_08034ED0: @ 0x08034ED0
	push {lr}
	ldr r2, _08034EE8 @ =gUnknown_030032D8
	ldr r1, _08034EEC @ =gUnknown_030044DC
	ldrh r0, [r1]
	strh r0, [r2]
	movs r0, #0
	strh r0, [r1]
	bl sub_08028CF4
	pop {r0}
	bx r0
	.align 2, 0
_08034EE8: .4byte gUnknown_030032D8
_08034EEC: .4byte gUnknown_030044DC

	thumb_func_start sub_08034EF0
sub_08034EF0: @ 0x08034EF0
	push {r4, lr}
	bl sub_08019260
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne _08034F06
	bl sub_08037F80
	ldr r0, _08034F0C @ =gUnknown_030032D8
	strh r4, [r0]
_08034F06:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034F0C: .4byte gUnknown_030032D8

	thumb_func_start sub_08034F10
sub_08034F10: @ 0x08034F10
	ldr r1, _08034F18 @ =gUnknown_030032D8
	movs r0, #0x14
	strh r0, [r1]
	bx lr
	.align 2, 0
_08034F18: .4byte gUnknown_030032D8

	thumb_func_start sub_08034F1C
sub_08034F1C: @ 0x08034F1C
	push {r4, lr}
	ldr r4, _08034F40 @ =gUnknown_03002F1C
	ldrh r0, [r4]
	cmp r0, #0
	beq _08034F32
	bl sub_0801A664
	bl sub_08034F7C
	movs r0, #0
	strh r0, [r4]
_08034F32:
	ldr r1, _08034F44 @ =gUnknown_030032D8
	movs r0, #0xd
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08034F40: .4byte gUnknown_03002F1C
_08034F44: .4byte gUnknown_030032D8

	thumb_func_start sub_08034F48
sub_08034F48: @ 0x08034F48
	ldr r1, _08034F50 @ =gUnknown_030030F0
	movs r0, #1
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_08034F50: .4byte gUnknown_030030F0

	thumb_func_start sub_08034F54
sub_08034F54: @ 0x08034F54
	ldr r1, _08034F5C @ =gUnknown_030030F0
	movs r0, #0
	strb r0, [r1, #1]
	bx lr
	.align 2, 0
_08034F5C: .4byte gUnknown_030030F0

	thumb_func_start sub_08034F60
sub_08034F60: @ 0x08034F60
	ldr r0, _08034F68 @ =gUnknown_030030F0
	ldrb r0, [r0, #1]
	bx lr
	.align 2, 0
_08034F68: .4byte gUnknown_030030F0

	thumb_func_start sub_08034F6C
sub_08034F6C: @ 0x08034F6C
	ldr r0, _08034F78 @ =gUnknown_030030F0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08034F78: .4byte gUnknown_030030F0

	thumb_func_start sub_08034F7C
sub_08034F7C: @ 0x08034F7C
	ldr r1, _08034F88 @ =gUnknown_030030F0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08034F88: .4byte gUnknown_030030F0

	thumb_func_start sub_08034F8C
sub_08034F8C: @ 0x08034F8C
	ldr r1, _08034FA0 @ =gUnknown_030030F0
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _08034F9C
	subs r0, r2, #1
	strb r0, [r1]
_08034F9C:
	bx lr
	.align 2, 0
_08034FA0: .4byte gUnknown_030030F0

	thumb_func_start sub_08034FA4
sub_08034FA4: @ 0x08034FA4
	ldr r1, _08034FAC @ =gUnknown_030030F0
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08034FAC: .4byte gUnknown_030030F0

	thumb_func_start sub_08034FB0
sub_08034FB0: @ 0x08034FB0
	ldr r1, _08034FBC @ =gUnknown_030040E8
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bx lr
	.align 2, 0
_08034FBC: .4byte gUnknown_030040E8

	thumb_func_start sub_08034FC0
sub_08034FC0: @ 0x08034FC0
	ldr r1, _08034FD4 @ =gUnknown_030040E8
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _08034FD0
	subs r0, r2, #1
	strh r0, [r1]
_08034FD0:
	bx lr
	.align 2, 0
_08034FD4: .4byte gUnknown_030040E8

	thumb_func_start sub_08034FD8
sub_08034FD8: @ 0x08034FD8
	push {lr}
	bl sub_08023348
	bl sub_0803662C
	bl sub_08024268
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08034FEC
sub_08034FEC: @ 0x08034FEC
	push {lr}
	bl sub_08023354
	bl sub_0803662C
	bl sub_08024268
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035000
sub_08035000: @ 0x08035000
	ldr r2, _0803500C @ =gUnknown_085C77A0
	movs r1, #0x5c
	muls r0, r1, r0
	adds r0, r0, r2
	bx lr
	.align 2, 0
_0803500C: .4byte gUnknown_085C77A0

	thumb_func_start sub_08035010
sub_08035010: @ 0x08035010
	push {lr}
	ldr r0, _0803501C @ =gUnknown_0849BB50
	bl sub_0801CD14
	pop {r0}
	bx r0
	.align 2, 0
_0803501C: .4byte gUnknown_0849BB50

	thumb_func_start sub_08035020
sub_08035020: @ 0x08035020
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x48
	bl sub_0803F5E4
	ldr r0, _08035048 @ =gUnknown_0849BD20
	lsls r4, r4, #3
	adds r4, r4, r0
	ldr r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08013618
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035048: .4byte gUnknown_0849BD20

	thumb_func_start sub_0803504C
sub_0803504C: @ 0x0803504C
	push {lr}
	ldr r1, _08035060 @ =gUnknown_03003FC0
	ldrh r0, [r0, #0x20]
	adds r1, #0x2c
	strb r0, [r1]
	ldrb r0, [r1]
	bl sub_08035020
	pop {r0}
	bx r0
	.align 2, 0
_08035060: .4byte gUnknown_03003FC0

	thumb_func_start sub_08035064
sub_08035064: @ 0x08035064
	push {lr}
	ldr r1, _0803507C @ =gUnknown_0849BD20
	movs r2, #0x20
	ldrsh r0, [r0, r2]
	lsls r0, r0, #3
	adds r0, r0, r1
	movs r1, #4
	ldrsh r0, [r0, r1]
	bl sub_0803B4DC
	pop {r0}
	bx r0
	.align 2, 0
_0803507C: .4byte gUnknown_0849BD20

	thumb_func_start sub_08035080
sub_08035080: @ 0x08035080
	push {r4, r5, r6, r7, lr}
	ldr r3, _080350A4 @ =gUnknown_08090E34
	ldr r1, [r3]
	ldr r2, _080350A8 @ =gUnknown_08090E38
	ldr r0, [r2]
	adds r1, #3
	ldrh r0, [r0]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	movs r4, #1
	adds r6, r3, #0
	adds r5, r2, #0
	b _080350B2
	.align 2, 0
_080350A4: .4byte gUnknown_08090E34
_080350A8: .4byte gUnknown_08090E38
_080350AC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080350B2:
	cmp r4, #4
	bhi _080350DA
	ldr r0, [r5]
	ldrh r0, [r0]
	cmp r4, r0
	beq _080350AC
	adds r0, r4, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080350AC
	ldr r0, [r6]
	adds r0, #3
	adds r0, r4, r0
	ldrb r0, [r0]
	cmp r7, r0
	beq _080350AC
	movs r0, #0
	b _080350DC
_080350DA:
	movs r0, #1
_080350DC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080350E4
sub_080350E4: @ 0x080350E4
	push {r4, r5, r6, lr}
	movs r4, #1
	ldr r6, _08035118 @ =gUnknown_03004493
	movs r5, #0
_080350EC:
	adds r0, r4, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080350FC
	ldr r0, _0803511C @ =gUnknown_030033EC
	ldrh r0, [r0]
_080350FC:
	adds r0, r4, r6
	strb r5, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	bls _080350EC
	ldr r1, _08035120 @ =gUnknown_03004490
	movs r0, #0x1e
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08035118: .4byte gUnknown_03004493
_0803511C: .4byte gUnknown_030033EC
_08035120: .4byte gUnknown_03004490

	thumb_func_start sub_08035124
sub_08035124: @ 0x08035124
	push {lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	beq _0803513C
	ldr r0, _08035140 @ =gUnknown_03003FC0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, r1
	beq _0803513C
	bl sub_080350E4
_0803513C:
	pop {r0}
	bx r0
	.align 2, 0
_08035140: .4byte gUnknown_03003FC0

	thumb_func_start sub_08035144
sub_08035144: @ 0x08035144
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl sub_080350E4
	ldr r1, _08035168 @ =gUnknown_03004490
	movs r0, #0x32
	strb r0, [r1]
	ldr r0, _0803516C @ =gUnknown_0849BD38
	movs r1, #0
	bl sub_080152EC
	strh r4, [r0, #0x20]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035168: .4byte gUnknown_03004490
_0803516C: .4byte gUnknown_0849BD38

	thumb_func_start sub_08035170
sub_08035170: @ 0x08035170
	push {r4, r5, lr}
	ldr r1, _080351A8 @ =gUnknown_08090E3C
	ldr r2, [r1]
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r4, [r0]
	adds r5, r1, #0
	cmp r4, #0
	beq _0803518C
	cmp r4, #0
	blt _0803518A
	cmp r4, #2
	ble _080351C0
_0803518A:
	movs r4, #0
_0803518C:
	ldr r0, [r5]
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #1
	bne _080351E8
	ldr r5, _080351AC @ =gUnknown_03004490
	ldrb r0, [r5, #2]
	bl sub_080129F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080351B0
	movs r4, #1
	b _080351E8
	.align 2, 0
_080351A8: .4byte gUnknown_08090E3C
_080351AC: .4byte gUnknown_03004490
_080351B0:
	ldrb r0, [r5, #1]
	bl sub_080129F8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080351E8
	movs r4, #2
	b _080351E8
_080351C0:
	adds r0, r2, #0
	adds r0, #0x2d
	ldrb r1, [r0]
	cmp r1, #2
	beq _080351E8
	adds r0, r2, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r4, r0
	bne _080351D8
	cmp r1, #3
	beq _080351E8
_080351D8:
	bl sub_08035080
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080351E8
	ldr r0, [r5]
	adds r0, #0x2f
	ldrb r4, [r0]
_080351E8:
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_080351F0
sub_080351F0: @ 0x080351F0
	push {r4, r5, lr}
	ldr r4, _0803521C @ =gUnknown_03003FC0
	adds r5, r4, #0
	adds r5, #0x2e
	ldrb r0, [r5]
	bl sub_08035124
	adds r4, #0x2c
	ldrb r0, [r4]
	ldrb r1, [r5]
	cmp r0, r1
	beq _08035214
	ldr r0, _08035220 @ =gUnknown_0849BD38
	movs r1, #0
	bl sub_080152EC
	ldrb r1, [r5]
	strh r1, [r0, #0x20]
_08035214:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803521C: .4byte gUnknown_03003FC0
_08035220: .4byte gUnknown_0849BD38

	thumb_func_start sub_08035224
sub_08035224: @ 0x08035224
	push {r4, r5, r6, r7, lr}
	ldr r0, _080352A4 @ =gUnknown_0809169C
	ldr r1, _080352A8 @ =0x06012E00
	movs r2, #0x60
	bl sub_08011C68
	movs r4, #0
	ldr r7, _080352AC @ =gUnknown_02027C68
	ldr r6, _080352B0 @ =gUnknown_08090E40
_08035236:
	bl sub_080129E0
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r5, r1, r7
	movs r1, #0xff
	bl __umodsi3
	lsls r0, r0, #8
	strh r0, [r5]
	bl sub_080129E0
	movs r1, #0xff
	bl __umodsi3
	lsls r0, r0, #8
	strh r0, [r5, #2]
	adds r0, r4, #0
	cmp r4, #0
	bge _08035266
	adds r0, #0xf
_08035266:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r4, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r1, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r5, #4]
	adds r0, r1, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r5, #6]
	adds r1, #2
	lsls r1, r1, #1
	adds r1, r1, r6
	ldrh r0, [r1]
	strh r0, [r5, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _08035236
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080352A4: .4byte gUnknown_0809169C
_080352A8: .4byte 0x06012E00
_080352AC: .4byte gUnknown_02027C68
_080352B0: .4byte gUnknown_08090E40

	thumb_func_start sub_080352B4
sub_080352B4: @ 0x080352B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #0
	ldr r3, _08035344 @ =gUnknown_02027C68
_080352BE:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r1, #4]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldrh r0, [r1, #6]
	ldrh r7, [r1, #2]
	adds r0, r0, r7
	strh r0, [r1, #2]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x1f
	ble _080352BE
	ldr r0, _08035348 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r4, r0, #0x14
	asrs r1, r4, #0x10
	lsls r0, r0, #4
	adds r0, #0x10
	cmp r1, r0
	bge _0803533A
	ldr r1, _08035344 @ =gUnknown_02027C68
	mov r8, r1
	movs r5, #0xff
	adds r6, r0, #0
_08035302:
	asrs r4, r4, #0x10
	lsls r3, r4, #1
	adds r3, r3, r4
	lsls r3, r3, #2
	add r3, r8
	ldrh r0, [r3]
	lsrs r0, r0, #8
	ldr r1, _0803534C @ =gUnknown_08499590
	ldr r2, [r1]
	movs r7, #4
	ldrsh r1, [r2, r7]
	subs r0, r0, r1
	ands r0, r5
	ldrh r1, [r3, #2]
	lsrs r1, r1, #8
	movs r7, #6
	ldrsh r2, [r2, r7]
	subs r1, r1, r2
	ands r1, r5
	ldrh r3, [r3, #8]
	ldr r2, _08035350 @ =gUnknown_0849BD98
	bl sub_0801BDB4
	adds r4, #1
	lsls r4, r4, #0x10
	asrs r0, r4, #0x10
	cmp r0, r6
	blt _08035302
_0803533A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035344: .4byte gUnknown_02027C68
_08035348: .4byte gUnknown_03004008
_0803534C: .4byte gUnknown_08499590
_08035350: .4byte gUnknown_0849BD98

	thumb_func_start sub_08035354
sub_08035354: @ 0x08035354
	push {r4, r5, r6, r7, lr}
	ldr r0, _080353D8 @ =gUnknown_080916FC
	ldr r1, _080353DC @ =0x06012E60
	movs r2, #0x60
	bl sub_08011C68
	movs r4, #0
	ldr r7, _080353E0 @ =gUnknown_02027DE8
	ldr r6, _080353E4 @ =gUnknown_08090E40
_08035366:
	bl sub_080129E0
	lsls r1, r4, #0x10
	asrs r4, r1, #0x10
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r5, r1, r7
	movs r1, #0xff
	bl __umodsi3
	lsls r0, r0, #8
	strh r0, [r5]
	bl sub_080129E0
	movs r1, #0xff
	bl __umodsi3
	lsls r0, r0, #8
	strh r0, [r5, #2]
	adds r0, r4, #0
	cmp r4, #0
	bge _08035396
	adds r0, #0xf
_08035396:
	asrs r0, r0, #4
	lsls r0, r0, #4
	subs r0, r4, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	strh r0, [r5, #4]
	adds r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #3
	strh r0, [r5, #6]
	adds r2, #2
	lsls r2, r2, #1
	adds r2, r2, r6
	ldrh r0, [r2]
	strh r0, [r5, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	ble _08035366
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080353D8: .4byte gUnknown_080916FC
_080353DC: .4byte 0x06012E60
_080353E0: .4byte gUnknown_02027DE8
_080353E4: .4byte gUnknown_08090E40

	thumb_func_start sub_080353E8
sub_080353E8: @ 0x080353E8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r0, #0
	ldr r3, _08035480 @ =gUnknown_02027DE8
_080353F2:
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r1, #4]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldrh r0, [r1, #6]
	ldrh r4, [r1, #2]
	adds r0, r0, r4
	strh r0, [r1, #2]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r0, r2, #0x10
	asrs r2, r2, #0x10
	cmp r2, #0x1f
	ble _080353F2
	ldr r0, _08035484 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r5, r0, #0x14
	asrs r1, r5, #0x10
	lsls r0, r0, #4
	adds r0, #0x10
	cmp r1, r0
	bge _08035474
	ldr r1, _08035480 @ =gUnknown_02027DE8
	mov r8, r1
	movs r6, #0xff
	adds r7, r0, #0
_08035436:
	asrs r5, r5, #0x10
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #2
	add r3, r8
	ldrh r0, [r3]
	lsrs r0, r0, #8
	ldr r1, _08035488 @ =gUnknown_08499590
	ldr r2, [r1]
	movs r4, #4
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	ands r0, r6
	ldrh r1, [r3, #2]
	lsrs r1, r1, #8
	movs r4, #6
	ldrsh r2, [r2, r4]
	subs r1, r1, r2
	ands r1, r6
	ldr r4, _0803548C @ =gUnknown_0849BDA0
	ldrh r2, [r3, #8]
	lsls r2, r2, #3
	adds r2, r2, r4
	movs r3, #0
	bl sub_0801BDB4
	adds r5, #1
	lsls r5, r5, #0x10
	asrs r0, r5, #0x10
	cmp r0, r7
	blt _08035436
_08035474:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035480: .4byte gUnknown_02027DE8
_08035484: .4byte gUnknown_03004008
_08035488: .4byte gUnknown_08499590
_0803548C: .4byte gUnknown_0849BDA0

	thumb_func_start sub_08035490
sub_08035490: @ 0x08035490
	push {r4, r5, r6, r7, lr}
	ldr r1, _080354F4 @ =gUnknown_03004490
	movs r0, #6
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	movs r5, #1
	ldr r7, _080354F8 @ =gUnknown_08090EA0
	adds r4, r1, #0
	adds r6, r4, #3
_080354A2:
	ldr r0, [r7]
	ldr r1, [r0]
	lsls r0, r5, #4
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _080354D8
	ldrb r0, [r4, #1]
	subs r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	adds r0, r5, #0
	bl sub_08042F5C
	ldrb r1, [r4, #1]
	adds r1, r1, r0
	strb r1, [r4, #1]
	adds r0, r5, #0
	bl sub_08042FA4
	ldrb r1, [r4, #2]
	adds r1, r1, r0
	strb r1, [r4, #2]
_080354D8:
	adds r1, r5, r6
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #4
	bls _080354A2
	bl sub_080354FC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080354F4: .4byte gUnknown_03004490
_080354F8: .4byte gUnknown_08090EA0

	thumb_func_start sub_080354FC
sub_080354FC: @ 0x080354FC
	push {lr}
	bl sub_08035224
	bl sub_08035354
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803550C
sub_0803550C: @ 0x0803550C
	push {lr}
	ldr r0, _08035524 @ =gUnknown_03003FC0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	beq _08035528
	cmp r0, #1
	ble _08035532
	cmp r0, #2
	beq _0803552E
	b _08035532
	.align 2, 0
_08035524: .4byte gUnknown_03003FC0
_08035528:
	bl sub_080352B4
	b _08035532
_0803552E:
	bl sub_080353E8
_08035532:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08035538
sub_08035538: @ 0x08035538
	ldr r0, _08035544 @ =gUnknown_03003FC0
	adds r0, #0x2d
	movs r1, #1
	strb r1, [r0]
	bx lr
	.align 2, 0
_08035544: .4byte gUnknown_03003FC0

	thumb_func_start sub_08035548
sub_08035548: @ 0x08035548
	ldr r0, _08035554 @ =gUnknown_03003FC0
	adds r0, #0x2d
	movs r1, #2
	strb r1, [r0]
	bx lr
	.align 2, 0
_08035554: .4byte gUnknown_03003FC0

	thumb_func_start sub_08035558
sub_08035558: @ 0x08035558
	ldr r0, _08035564 @ =gUnknown_03003FC0
	adds r0, #0x2d
	movs r1, #0
	strb r1, [r0]
	bx lr
	.align 2, 0
_08035564: .4byte gUnknown_03003FC0

	thumb_func_start sub_08035568
sub_08035568: @ 0x08035568
	movs r1, #0
	ldr r3, _08035580 @ =gUnknown_03003124
	movs r2, #0
_0803556E:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bls _0803556E
	bx lr
	.align 2, 0
_08035580: .4byte gUnknown_03003124

	thumb_func_start sub_08035584
sub_08035584: @ 0x08035584
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	movs r0, #6
	orrs r0, r1
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	ldrb r1, [r4, #3]
	ldr r2, _080355C0 @ =gUnknown_08499594
	ldr r3, [r2]
	subs r3, r4, r3
	lsls r2, r3, #2
	adds r2, r2, r3
	lsls r3, r2, #4
	adds r2, r2, r3
	lsls r3, r2, #8
	adds r2, r2, r3
	lsls r3, r2, #0x10
	adds r2, r2, r3
	rsbs r2, r2, #0
	lsls r2, r2, #8
	lsrs r2, r2, #0x10
	ldrb r3, [r4]
	bl sub_080355CC
	cmp r0, #0
	beq _080355C4
	str r4, [r0, #0x30]
	b _080355C6
	.align 2, 0
_080355C0: .4byte gUnknown_08499594
_080355C4:
	movs r0, #0
_080355C6:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080355CC
sub_080355CC: @ 0x080355CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	bl sub_0803649C
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	bne _08035604
	movs r0, #0
	b _08035724
_08035604:
	ldr r0, _08035670 @ =gUnknown_03003124
	adds r0, r7, r0
	movs r5, #0
	movs r1, #1
	mov sb, r1
	mov r2, sb
	strb r2, [r0]
	mov r0, sl
	bl sub_08035B68
	adds r4, r0, #0
	ldr r0, _08035674 @ =gUnknown_0849BE38
	movs r1, #5
	bl Proc_Start
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl sub_0801C210
	str r0, [r6, #0x2c]
	adds r0, r6, #0
	adds r0, #0x3a
	strb r7, [r0]
	bl sub_080364C4
	str r0, [r6, #0x48]
	str r5, [r6, #0x30]
	adds r0, r6, #0
	adds r0, #0x35
	mov r1, sb
	strb r1, [r0]
	ldr r2, [sp]
	lsls r0, r2, #4
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [sp, #4]
	lsls r1, r0, #4
	adds r0, r6, #0
	adds r0, #0x44
	strh r1, [r0]
	mov r1, r8
	cmp r1, #0
	beq _08035664
	cmp r1, #2
	bne _08035678
_08035664:
	adds r0, r6, #0
	adds r0, #0x38
	mov r2, sb
	strb r2, [r0]
	adds r4, r0, #0
	b _08035682
	.align 2, 0
_08035670: .4byte gUnknown_03003124
_08035674: .4byte gUnknown_0849BE38
_08035678:
	adds r1, r6, #0
	adds r1, #0x38
	movs r0, #0
	strb r0, [r1]
	adds r4, r1, #0
_08035682:
	movs r1, #0
	movs r0, #0
	strh r0, [r6, #0x3e]
	adds r0, r6, #0
	adds r0, #0x39
	strb r1, [r0]
	subs r0, #3
	mov r1, sl
	strb r1, [r0]
	ldrb r0, [r0]
	bl sub_08035B00
	adds r1, r6, #0
	adds r1, #0x40
	strh r0, [r1]
	adds r7, r6, #0
	adds r7, #0x37
	mov r2, r8
	strb r2, [r7]
	ldr r0, [r6, #0x2c]
	movs r1, #0
	ldrsb r1, [r4, r1]
	bl sub_0801C4D4
	ldr r1, [r6, #0x2c]
	ldr r0, [r6, #0x48]
	str r0, [r1, #0x24]
	adds r5, r6, #0
	adds r5, #0x3a
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_08035AE8
	ldr r3, [r6, #0x2c]
	movs r2, #0
	ldrsb r2, [r5, r2]
	lsls r1, r2, #3
	adds r1, r1, r2
	ldr r2, _08035734 @ =0x0000029A
	adds r1, r1, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #4
	orrs r1, r0
	strh r1, [r3, #0x22]
	ldr r3, _08035738 @ =gUnknown_0810EA60
	ldrb r1, [r7]
	ldr r0, _0803573C @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x56
	ldrb r4, [r0]
	subs r4, #1
	lsls r4, r4, #5
	adds r4, r4, r3
	movs r0, #0
	ldrsb r0, [r5, r0]
	bl sub_08035AE8
	adds r1, r0, #0
	lsls r1, r1, #0x15
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r1, r1, r0
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08013618
	adds r0, r6, #0
	bl sub_080359A4
	adds r0, r6, #0
	bl sub_08035B3C
	ldr r1, [r6, #0x48]
	bl sub_08011CAC
	adds r0, r6, #0
_08035724:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08035734: .4byte 0x0000029A
_08035738: .4byte gUnknown_0810EA60
_0803573C: .4byte gUnknown_08499598

	thumb_func_start sub_08035740
sub_08035740: @ 0x08035740
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0803575C @ =gUnknown_0849BE38
	bl sub_0801CB28
	cmp r0, #0
	beq _08035754
	adds r1, r4, #0
	bl sub_08035760
_08035754:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803575C: .4byte gUnknown_0849BE38

	thumb_func_start sub_08035760
sub_08035760: @ 0x08035760
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	movs r2, #0
	adds r4, r5, #0
	adds r4, #0x4c
_0803576C:
	adds r1, r4, r2
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r2, #1
	cmp r2, #0xf
	ble _0803576C
	adds r1, r5, #0
	adds r1, #0x34
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080357D4 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803579A
	ldr r0, _080357D8 @ =gUnknown_030032D8
	ldrh r0, [r0]
	cmp r0, #0x13
	beq _080357C0
_0803579A:
	adds r0, r5, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080357A8
	adds r0, #0xf
_080357A8:
	asrs r2, r0, #4
	adds r0, r5, #0
	adds r0, #0x44
	movs r3, #0
	ldrsh r1, [r0, r3]
	cmp r1, #0
	bge _080357B8
	adds r1, #0xf
_080357B8:
	asrs r1, r1, #4
	adds r0, r2, #0
	bl sub_08029088
_080357C0:
	ldr r1, _080357DC @ =gUnknown_030040E4
	movs r0, #1
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_08035F68
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080357D4: .4byte gUnknown_03003FC0
_080357D8: .4byte gUnknown_030032D8
_080357DC: .4byte gUnknown_030040E4

	thumb_func_start sub_080357E0
sub_080357E0: @ 0x080357E0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	bl sub_080355CC
	adds r4, r0, #0
	cmp r4, #0
	beq _08035806
	ldr r1, [sp, #8]
	bl sub_08035760
	adds r0, r4, #0
	b _08035808
_08035806:
	movs r0, #0
_08035808:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08035810
sub_08035810: @ 0x08035810
	push {lr}
	ldr r0, _08035824 @ =gUnknown_0849BE38
	bl sub_0801CB28
	cmp r0, #0
	beq _08035820
	bl sub_08035828
_08035820:
	pop {r0}
	bx r0
	.align 2, 0
_08035824: .4byte gUnknown_0849BE38

	thumb_func_start sub_08035828
sub_08035828: @ 0x08035828
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #0x30]
	cmp r2, #0
	beq _0803583A
	ldrb r1, [r2, #1]
	movs r0, #0xf9
	ands r0, r1
	strb r0, [r2, #1]
_0803583A:
	adds r0, r3, #0
	bl Proc_End
	ldr r1, _0803584C @ =gUnknown_030040E4
	movs r0, #0
	strh r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_0803584C: .4byte gUnknown_030040E4

	thumb_func_start sub_08035850
sub_08035850: @ 0x08035850
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r1, #0
	ldr r2, _080358A4 @ =gUnknown_03003124
	ldrb r0, [r2]
	cmp r0, #0
	beq _08035870
_08035862:
	adds r1, #1
	cmp r1, #2
	bgt _08035870
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08035862
_08035870:
	cmp r1, #3
	beq _0803589C
	ldr r0, _080358A8 @ =gUnknown_0849BDB8
	movs r1, #5
	bl Proc_Start
	adds r2, r0, #0
	lsls r0, r4, #4
	adds r1, r2, #0
	adds r1, #0x42
	strh r0, [r1]
	lsls r1, r5, #4
	adds r0, r2, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r1, r2, #0
	adds r1, #0x35
	movs r0, #2
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x36
	strb r6, [r0]
_0803589C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080358A4: .4byte gUnknown_03003124
_080358A8: .4byte gUnknown_0849BDB8

	thumb_func_start sub_080358AC
sub_080358AC: @ 0x080358AC
	push {lr}
	bl sub_08035F68
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080358B8
sub_080358B8: @ 0x080358B8
	push {lr}
	bl sub_08035FA8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080358C4
sub_080358C4: @ 0x080358C4
	push {r4, r5, r6, r7, lr}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r5, _08035934 @ =0x00002710
	adds r6, r5, #0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r1, _08035938 @ =gUnknown_08090EA4
	ldr r0, [r1]
	ldr r4, [r0]
	movs r3, #4
	ldrsh r0, [r4, r3]
	subs r3, r2, r0
	mov ip, r1
	cmp r3, #0x1f
	bgt _080358EC
	adds r0, r2, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080358EC:
	cmp r3, #0xc0
	ble _080358F8
	adds r0, r2, #0
	subs r0, #0xc0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_080358F8:
	lsls r0, r7, #0x10
	asrs r1, r0, #0x10
	movs r2, #6
	ldrsh r0, [r4, r2]
	subs r2, r1, r0
	cmp r2, #0x1f
	bgt _0803590E
	adds r0, r1, #0
	subs r0, #0x20
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0803590E:
	cmp r2, #0x70
	ble _0803591A
	adds r0, r1, #0
	subs r0, #0x70
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0803591A:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	ldr r0, _08035934 @ =0x00002710
	cmp r2, r0
	bne _0803593C
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	adds r3, r0, #0
	cmp r1, r2
	beq _0803599C
	ldrh r6, [r4, #4]
	b _08035958
	.align 2, 0
_08035934: .4byte 0x00002710
_08035938: .4byte gUnknown_08090EA4
_0803593C:
	cmp r2, #0
	bge _08035946
	movs r6, #0
	lsls r3, r5, #0x10
	b _08035958
_08035946:
	ldrh r0, [r4]
	adds r1, r0, #0
	subs r1, #0xf
	lsls r0, r1, #4
	lsls r3, r5, #0x10
	cmp r2, r0
	ble _08035958
	lsls r0, r1, #0x14
	lsrs r6, r0, #0x10
_08035958:
	asrs r1, r3, #0x10
	ldr r0, _0803596C @ =0x00002710
	cmp r1, r0
	bne _08035970
	mov r3, ip
	ldr r0, [r3]
	ldr r0, [r0]
	ldrh r5, [r0, #6]
	b _0803598E
	.align 2, 0
_0803596C: .4byte 0x00002710
_08035970:
	cmp r1, #0
	bge _08035978
	movs r5, #0
	b _0803598E
_08035978:
	mov r2, ip
	ldr r0, [r2]
	ldr r0, [r0]
	ldrh r0, [r0, #2]
	adds r2, r0, #0
	subs r2, #0xa
	lsls r0, r2, #4
	cmp r1, r0
	ble _0803598E
	lsls r0, r2, #0x14
	lsrs r5, r0, #0x10
_0803598E:
	mov r3, ip
	ldr r0, [r3]
	ldr r0, [r0]
	strh r6, [r0, #4]
	strh r5, [r0, #6]
	bl sub_08023860
_0803599C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080359A4
sub_080359A4: @ 0x080359A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x44
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov ip, r0
	ldr r1, _08035ACC @ =gUnknown_08090EA8
	ldr r0, [r1]
	ldr r3, [r0]
	movs r2, #6
	ldrsh r0, [r3, r2]
	mov r2, ip
	subs r0, r2, r0
	adds r0, #8
	mov sb, r1
	cmp r0, #0xa8
	bhi _08035ABE
	adds r0, r6, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r7, [r0, r1]
	movs r2, #4
	ldrsh r1, [r3, r2]
	subs r2, r7, r1
	movs r1, #8
	rsbs r1, r1, #0
	mov r8, r0
	cmp r2, r1
	blt _08035ABE
	cmp r2, #0xf0
	bgt _08035ABE
	subs r0, #0xd
	ldrb r0, [r0]
	adds r5, r4, #0
	cmp r0, #2
	bne _08035A10
	ldr r0, _08035AD0 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _08035A06
	ldr r0, _08035AD4 @ =gUnknown_030032D8
	ldrh r0, [r0]
	cmp r0, #0x13
	beq _08035A10
_08035A06:
	adds r0, r7, #0
	mov r1, ip
	bl sub_080358C4
	adds r5, r4, #0
_08035A10:
	ldr r0, _08035AD8 @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _08035ADC @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x1c]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08035A6A
	mov r3, sb
	ldr r0, [r3]
	ldr r3, [r0]
	movs r4, #0
	ldrsh r0, [r5, r4]
	adds r1, r0, #0
	adds r1, #8
	cmp r1, #0
	bge _08035A3E
	adds r1, #0xf
_08035A3E:
	asrs r1, r1, #4
	lsls r1, r1, #1
	ldr r2, _08035AE0 @ =0x0000417A
	adds r0, r3, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r4, r8
	movs r0, #0
	ldrsh r2, [r4, r0]
	adds r0, r2, #0
	adds r0, #8
	cmp r0, #0
	bge _08035A5A
	adds r0, #0xf
_08035A5A:
	asrs r0, r0, #4
	adds r0, r1, r0
	ldr r2, _08035AE4 @ =0x0000234A
	adds r1, r3, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08035ABE
_08035A6A:
	ldr r0, [r6, #0x30]
	mov r3, r8
	movs r4, #0
	ldrsh r2, [r3, r4]
	adds r1, r2, #0
	adds r1, #8
	cmp r1, #0
	bge _08035A7C
	adds r1, #0xf
_08035A7C:
	asrs r1, r1, #4
	movs r2, #0
	ldrsh r3, [r5, r2]
	adds r2, r3, #0
	adds r2, #8
	cmp r2, #0
	bge _08035A8C
	adds r2, #0xf
_08035A8C:
	asrs r2, r2, #4
	bl sub_080255F4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08035ABE
	ldr r0, [r6, #0x2c]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	mov r3, sb
	ldr r2, [r3]
	ldr r3, [r2]
	movs r4, #4
	ldrsh r2, [r3, r4]
	subs r1, r1, r2
	adds r1, #8
	movs r4, #0
	ldrsh r2, [r5, r4]
	movs r4, #6
	ldrsh r3, [r3, r4]
	subs r2, r2, r3
	adds r2, #5
	bl sub_0801C254
_08035ABE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035ACC: .4byte gUnknown_08090EA8
_08035AD0: .4byte gUnknown_03003FC0
_08035AD4: .4byte gUnknown_030032D8
_08035AD8: .4byte gUnknown_030033EC
_08035ADC: .4byte gUnknown_08499598
_08035AE0: .4byte 0x0000417A
_08035AE4: .4byte 0x0000234A

	thumb_func_start sub_08035AE8
sub_08035AE8: @ 0x08035AE8
	ldr r2, _08035AFC @ =gUnknown_08090EAC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08035AFC: .4byte gUnknown_08090EAC

	thumb_func_start sub_08035B00
sub_08035B00: @ 0x08035B00
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08035B20 @ =gUnknown_03003FC0
	ldrb r0, [r0, #9]
	cmp r0, #1
	beq _08035B28
	ldr r0, _08035B24 @ =gUnknown_0849CD88
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0x18
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0x11
	asrs r0, r0, #0x10
	b _08035B36
	.align 2, 0
_08035B20: .4byte gUnknown_03003FC0
_08035B24: .4byte gUnknown_0849CD88
_08035B28:
	ldr r0, _08035B38 @ =gUnknown_0849CD88
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0x18
	ldrsh r0, [r1, r2]
_08035B36:
	bx lr
	.align 2, 0
_08035B38: .4byte gUnknown_0849CD88

	thumb_func_start sub_08035B3C
sub_08035B3C: @ 0x08035B3C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08035B64 @ =gUnknown_0849CD88
	adds r0, #0x37
	ldrb r0, [r0]
	adds r0, #1
	bl sub_08042DE0
	subs r0, #1
	adds r4, #0x36
	ldrb r2, [r4]
	lsls r1, r2, #3
	adds r1, r1, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r5
	ldr r0, [r1]
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08035B64: .4byte gUnknown_0849CD88

	thumb_func_start sub_08035B68
sub_08035B68: @ 0x08035B68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08035B7C @ =gUnknown_0849CD88
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r2, #0x14
	adds r1, r1, r2
	ldr r0, [r1]
	bx lr
	.align 2, 0
_08035B7C: .4byte gUnknown_0849CD88

	thumb_func_start sub_08035B80
sub_08035B80: @ 0x08035B80
	push {r4, lr}
	ldr r0, _08035BB8 @ =gUnknown_03001FBC
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, _08035BBC @ =gUnknown_03001470
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #5
	adds r2, r2, r1
	ldr r1, _08035BC0 @ =gUnknown_08499590
	ldr r4, [r1]
	ldrh r1, [r2, #0x1e]
	ldrh r3, [r4, #4]
	subs r1, r1, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r2, #0x20]
	ldrh r3, [r4, #6]
	subs r2, r2, r3
	subs r2, #2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl sub_080155C0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035BB8: .4byte gUnknown_03001FBC
_08035BBC: .4byte gUnknown_03001470
_08035BC0: .4byte gUnknown_08499590

	thumb_func_start sub_08035BC4
sub_08035BC4: @ 0x08035BC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	lsrs r1, r0, #0x10
	mov r8, r1
	asrs r6, r0, #0x10
	ldr r2, _08035C78 @ =gUnknown_08499590
	mov sb, r2
	ldr r1, [r2]
	movs r2, #4
	ldrsh r0, [r1, r2]
	subs r0, r6, r0
	cmp r0, #0xef
	bhi _08035C6A
	lsls r0, r7, #0x10
	asrs r5, r0, #0x10
	movs r2, #6
	ldrsh r0, [r1, r2]
	subs r0, r5, r0
	cmp r0, #0
	blt _08035C6A
	cmp r0, #0x9f
	bgt _08035C6A
	ldr r0, _08035C7C @ =gUnknown_0849BDE0
	ldr r2, _08035C80 @ =gUnknown_0849BFD8
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r1, #2
	str r1, [sp]
	movs r1, #5
	bl sub_08015438
	adds r4, r0, #0
	lsls r4, r4, #0x18
	ldr r1, _08035C84 @ =gUnknown_03001470
	asrs r4, r4, #0x18
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #5
	adds r0, r0, r1
	mov r1, r8
	strh r1, [r0, #0x1e]
	strh r7, [r0, #0x20]
	mov r2, sb
	ldr r0, [r2]
	ldrh r1, [r0, #4]
	subs r1, r6, r1
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r2, [r0, #6]
	subs r2, r5, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_080155C0
	add r0, sp, #4
	adds r1, r4, #0
	bl sub_08015638
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r0, _08035C88 @ =0xFFFFFC00
	ands r0, r2
	movs r3, #0xbb
	lsls r3, r3, #1
	orrs r0, r3
	ldr r3, _08035C8C @ =0xFFFF0FFF
	ands r0, r3
	movs r3, #0x80
	lsls r3, r3, #8
	adds r2, r0, #0
	orrs r2, r3
	adds r0, r4, #0
	bl sub_08015608
_08035C6A:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08035C78: .4byte gUnknown_08499590
_08035C7C: .4byte gUnknown_0849BDE0
_08035C80: .4byte gUnknown_0849BFD8
_08035C84: .4byte gUnknown_03001470
_08035C88: .4byte 0xFFFFFC00
_08035C8C: .4byte 0xFFFF0FFF

	thumb_func_start sub_08035C90
sub_08035C90: @ 0x08035C90
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _08035CE0 @ =gUnknown_08499590
	ldr r4, [r0]
	adds r0, r3, #0
	adds r0, #0x44
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	adds r0, #8
	cmp r0, #0
	bge _08035CAA
	adds r0, #0xf
_08035CAA:
	asrs r0, r0, #4
	lsls r0, r0, #1
	ldr r2, _08035CE4 @ =0x0000417A
	adds r1, r4, r2
	adds r1, r1, r0
	ldrh r2, [r1]
	adds r0, r3, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	adds r1, #8
	cmp r1, #0
	bge _08035CC8
	adds r1, #0xf
_08035CC8:
	asrs r1, r1, #4
	adds r1, r2, r1
	ldr r2, _08035CE8 @ =0x00001432
	adds r0, r4, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #2
	beq _08035CEC
	movs r0, #0
	b _08035CEE
	.align 2, 0
_08035CE0: .4byte gUnknown_08499590
_08035CE4: .4byte 0x0000417A
_08035CE8: .4byte 0x00001432
_08035CEC:
	movs r0, #1
_08035CEE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08035CF4
sub_08035CF4: @ 0x08035CF4
	ldr r0, _08035D04 @ =gUnknown_03003FC0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #1
	beq _08035D08
	movs r0, #0
	b _08035D0A
	.align 2, 0
_08035D04: .4byte gUnknown_03003FC0
_08035D08:
	movs r0, #1
_08035D0A:
	bx lr

	thumb_func_start sub_08035D0C
sub_08035D0C: @ 0x08035D0C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08035C90
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08035D1E
_08035D1A:
	movs r0, #0x2d
	b _08035DEE
_08035D1E:
	adds r0, r4, #0
	bl sub_08035CF4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08035D2E
	movs r0, #0x43
	b _08035DEE
_08035D2E:
	ldr r0, _08035D84 @ =gUnknown_08499590
	ldr r3, [r0]
	adds r0, r4, #0
	adds r0, #0x44
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	adds r0, #8
	cmp r0, #0
	bge _08035D44
	adds r0, #0xf
_08035D44:
	asrs r0, r0, #4
	lsls r0, r0, #1
	ldr r2, _08035D88 @ =0x0000417A
	adds r1, r3, r2
	adds r1, r1, r0
	ldrh r2, [r1]
	adds r0, r4, #0
	adds r0, #0x42
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r0, #0
	adds r1, #8
	cmp r1, #0
	bge _08035D62
	adds r1, #0xf
_08035D62:
	asrs r1, r1, #4
	adds r1, r2, r1
	ldr r2, _08035D8C @ =0x00001432
	adds r0, r3, r2
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #0x1f
	ands r0, r1
	subs r0, #1
	cmp r0, #0x12
	bhi _08035DEC
	lsls r0, r0, #2
	ldr r1, _08035D90 @ =_08035D94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08035D84: .4byte gUnknown_08499590
_08035D88: .4byte 0x0000417A
_08035D8C: .4byte 0x00001432
_08035D90: .4byte _08035D94
_08035D94: @ jump table
	.4byte _08035DE8 @ case 0
	.4byte _08035D1A @ case 1
	.4byte _08035DE0 @ case 2
	.4byte _08035DE4 @ case 3
	.4byte _08035DE8 @ case 4
	.4byte _08035DE8 @ case 5
	.4byte _08035D1A @ case 6
	.4byte _08035DE8 @ case 7
	.4byte _08035DEC @ case 8
	.4byte _08035DE8 @ case 9
	.4byte _08035DE8 @ case 10
	.4byte _08035DE8 @ case 11
	.4byte _08035DE4 @ case 12
	.4byte _08035DE8 @ case 13
	.4byte _08035DEC @ case 14
	.4byte _08035DEC @ case 15
	.4byte _08035DEC @ case 16
	.4byte _08035DEC @ case 17
	.4byte _08035D1A @ case 18
_08035DE0:
	movs r0, #0x4b
	b _08035DEE
_08035DE4:
	movs r0, #0x47
	b _08035DEE
_08035DE8:
	movs r0, #0x29
	b _08035DEE
_08035DEC:
	movs r0, #0
_08035DEE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08035DF4
sub_08035DF4: @ 0x08035DF4
	push {lr}
	movs r1, #1
	bl sub_08070610
	pop {r0}
	bx r0

	thumb_func_start sub_08035E00
sub_08035E00: @ 0x08035E00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08035E1C @ =gUnknown_03005BA0
	bl sub_08035DF4
	ldr r0, _08035E20 @ =gUnknown_030059E0
	bl sub_08035DF4
	movs r0, #0
	strh r0, [r4, #0x1e]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035E1C: .4byte gUnknown_03005BA0
_08035E20: .4byte gUnknown_030059E0

	thumb_func_start sub_08035E24
sub_08035E24: @ 0x08035E24
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	ldr r0, _08035E60 @ =0x0000027F
	cmp r1, r0
	ble _08035E36
	movs r0, #0
	str r0, [r4, #8]
_08035E36:
	ldrh r2, [r4, #0x1e]
	adds r2, #0x14
	strh r2, [r4, #0x1e]
	ldr r0, _08035E64 @ =gUnknown_03005BA0
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #1
	bl sub_08071488
	ldr r0, _08035E68 @ =gUnknown_030059E0
	ldrh r2, [r4, #0x1e]
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r1, #1
	bl sub_08071488
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08035E60: .4byte 0x0000027F
_08035E64: .4byte gUnknown_03005BA0
_08035E68: .4byte gUnknown_030059E0

	thumb_func_start sub_08035E6C
sub_08035E6C: @ 0x08035E6C
	push {lr}
	ldr r0, _08035E88 @ =gUnknown_03005BA0
	movs r1, #1
	movs r2, #0
	bl sub_08071488
	ldr r0, _08035E8C @ =gUnknown_030059E0
	movs r1, #1
	movs r2, #0
	bl sub_08071488
	pop {r0}
	bx r0
	.align 2, 0
_08035E88: .4byte gUnknown_03005BA0
_08035E8C: .4byte gUnknown_030059E0

	thumb_func_start sub_08035E90
sub_08035E90: @ 0x08035E90
	push {r4, r5, lr}
	mov ip, r0
	movs r4, #0
	movs r5, #0
	ldr r2, _08035ECC @ =gUnknown_08090EB0
	ldr r1, [r2]
	adds r0, #0x36
	ldrb r3, [r0]
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _08035EBC
	mov r0, ip
	adds r0, #0x39
	ldrb r0, [r0]
	movs r4, #1
	ands r4, r0
_08035EBC:
	cmp r3, #2
	beq _08035ED6
	cmp r3, #2
	bgt _08035ED0
	cmp r3, #1
	beq _08035ED8
	b _08035F44
	.align 2, 0
_08035ECC: .4byte gUnknown_08090EB0
_08035ED0:
	cmp r3, #0x18
	beq _08035F0A
	b _08035F44
_08035ED6:
	movs r5, #2
_08035ED8:
	ldr r2, [r2]
	mov r0, ip
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0x1a]
	cmp r0, #0
	beq _08035F62
	mov r0, ip
	bl sub_08035D0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08035F62
	adds r0, r0, r4
	adds r0, r0, r5
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	bl sub_0803B48C
	b _08035F62
_08035F0A:
	mov r1, ip
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _08035F24
	ldrb r1, [r0, #1]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08035F24
	movs r0, #0x38
	bl sub_0803B48C
	b _08035F62
_08035F24:
	ldr r2, [r2]
	mov r0, ip
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r0, [r2, #0x1a]
	cmp r0, #0
	beq _08035F62
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	bl sub_0803B48C
	b _08035F62
_08035F44:
	ldr r2, [r2]
	mov r0, ip
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r0, [r2, #0x1a]
	cmp r0, #0
	beq _08035F62
	movs r1, #0x1a
	ldrsh r0, [r2, r1]
	bl sub_0803B48C
_08035F62:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08035F68
sub_08035F68: @ 0x08035F68
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _08035F94 @ =gUnknown_0849CD88
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	beq _08035F9C
	ldr r0, _08035F98 @ =gUnknown_0849BDE8
	bl sub_0801537C
	adds r0, r4, #0
	bl sub_08035E90
	b _08035FA2
	.align 2, 0
_08035F94: .4byte gUnknown_0849CD88
_08035F98: .4byte gUnknown_0849BDE8
_08035F9C:
	adds r0, r4, #0
	bl sub_08035E90
_08035FA2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08035FA8
sub_08035FA8: @ 0x08035FA8
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08035FD4 @ =gUnknown_08090EB4
	ldr r5, [r2]
	adds r4, r3, #0
	adds r4, #0x36
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _08035FE2
	cmp r1, r0
	bgt _08035FD8
	cmp r1, #0
	beq _0803601C
	b _08036004
	.align 2, 0
_08035FD4: .4byte gUnknown_08090EB4
_08035FD8:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _08036004
	b _0803601C
_08035FE2:
	ldr r0, _08036000 @ =gUnknown_0849BDE8
	movs r1, #0
	bl sub_080152EC
	ldrb r2, [r4]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r2, r5, #0
	adds r2, #0x20
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x18]
	b _0803601C
	.align 2, 0
_08036000: .4byte gUnknown_0849BDE8
_08036004:
	ldr r2, [r2]
	adds r0, r3, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	bl sub_0803B48C
_0803601C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08036024
sub_08036024: @ 0x08036024
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r2, _08036050 @ =gUnknown_08090EB8
	ldr r5, [r2]
	adds r4, r3, #0
	adds r4, #0x36
	ldrb r1, [r4]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	beq _08036064
	cmp r1, r0
	bgt _08036054
	cmp r1, #0
	beq _0803609C
	b _08036084
	.align 2, 0
_08036050: .4byte gUnknown_08090EB8
_08036054:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _08036084
	adds r0, r3, #0
	bl sub_08035E90
	b _0803609C
_08036064:
	ldr r0, _08036080 @ =gUnknown_0849BDE8
	movs r1, #0
	bl sub_080152EC
	ldrb r2, [r4]
	lsls r1, r2, #3
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r2, r5, #0
	adds r2, #0x20
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r0, #0x18]
	b _0803609C
	.align 2, 0
_08036080: .4byte gUnknown_0849BDE8
_08036084:
	ldr r2, [r2]
	adds r0, r3, #0
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x1e
	ldrsh r0, [r0, r1]
	bl sub_0803B48C
_0803609C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080360A4
sub_080360A4: @ 0x080360A4
	push {lr}
	adds r3, r0, #0
	ldr r2, _080360CC @ =gUnknown_0849CD88
	adds r0, #0x36
	ldrb r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _080360C6
	adds r0, r3, #0
	bl sub_08035E90
_080360C6:
	pop {r0}
	bx r0
	.align 2, 0
_080360CC: .4byte gUnknown_0849CD88

	thumb_func_start sub_080360D0
sub_080360D0: @ 0x080360D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
_080360D4:
	adds r2, r4, #0
	adds r2, #0x34
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r4, #0
	adds r1, #0x4c
	adds r0, r1, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #9
	adds r0, r0, r3
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0xb
	bhi _080360D4
	lsls r0, r0, #2
	ldr r1, _0803610C @ =_08036110
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0803610C: .4byte _08036110
_08036110: @ jump table
	.4byte _080361E4 @ case 0
	.4byte _080361F2 @ case 1
	.4byte _080361F2 @ case 2
	.4byte _080361F2 @ case 3
	.4byte _080361F2 @ case 4
	.4byte _080361DC @ case 5
	.4byte _0803625C @ case 6
	.4byte _0803625C @ case 7
	.4byte _0803625C @ case 8
	.4byte _0803625C @ case 9
	.4byte _08036140 @ case 10
	.4byte _0803615E @ case 11
_08036140:
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r3, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r4, #0x3e]
	adds r1, r4, #0
	adds r1, #0x35
	movs r0, #3
	strb r0, [r1]
	b _08036284
_0803615E:
	adds r0, r4, #0
	bl sub_08036024
	adds r1, r4, #0
	adds r1, #0x35
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	adds r1, #0xf
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	bl sub_08027278
	movs r0, #0x7d
	bl sub_0803B4DC
	ldr r0, _080361D0 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _08036284
	ldr r0, _080361D4 @ =gUnknown_030032D8
	ldrh r0, [r0]
	cmp r0, #0x13
	beq _08036284
	bl sub_0805C974
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08036284
	ldr r0, _080361D8 @ =gUnknown_08499594
	ldr r2, [r4, #0x30]
	ldr r0, [r0]
	subs r2, r2, r0
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r0, r1, #4
	adds r1, r1, r0
	lsls r0, r1, #8
	adds r1, r1, r0
	lsls r0, r1, #0x10
	adds r1, r1, r0
	rsbs r1, r1, #0
	asrs r1, r1, #2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r0, #2
	movs r2, #0
	movs r3, #0
	bl sub_08034534
	b _08036284
	.align 2, 0
_080361D0: .4byte gUnknown_03003FC0
_080361D4: .4byte gUnknown_030032D8
_080361D8: .4byte gUnknown_08499594
_080361DC:
	adds r0, r4, #0
	bl sub_0803647C
	b _08036284
_080361E4:
	adds r0, r4, #0
	bl sub_08036024
	adds r0, r4, #0
	bl sub_08035828
	b _08036284
_080361F2:
	adds r0, r4, #0
	bl sub_080360A4
	adds r1, r4, #0
	adds r1, #0x39
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, _08036254 @ =gUnknown_030033EC
	ldrh r1, [r0]
	ldr r0, _08036258 @ =gUnknown_08499598
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r1, [r0, #0x1c]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08036230
	adds r0, r4, #0
	adds r0, #0x44
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #8
	adds r0, r4, #0
	adds r0, #0x42
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #8
_08036230:
	adds r5, r4, #0
	adds r5, #0x38
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	beq _08036284
	ldr r0, [r4, #0x2c]
	bl sub_0801C4D4
	strb r6, [r5]
	adds r1, r4, #0
	adds r1, #0x35
	movs r0, #2
	strb r0, [r1]
	b _08036284
	.align 2, 0
_08036254: .4byte gUnknown_030033EC
_08036258: .4byte gUnknown_08499598
_0803625C:
	lsls r0, r6, #0x10
	ldr r1, _08036280 @ =0xFFFB0000
	adds r0, r0, r1
	adds r5, r4, #0
	adds r5, #0x38
	lsrs r6, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bne _08036274
	b _080360D4
_08036274:
	ldr r0, [r4, #0x2c]
	bl sub_0801C4D4
	strb r6, [r5]
	b _080360D4
	.align 2, 0
_08036280: .4byte 0xFFFB0000
_08036284:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803628C
sub_0803628C: @ 0x0803628C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0802759C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080362A2
	adds r1, r4, #0
	adds r1, #0x35
	movs r0, #3
	strb r0, [r1]
_080362A2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080362A8
sub_080362A8: @ 0x080362A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _080362CC @ =gUnknown_0849A00C
	bl sub_08015BD0
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _080362C6
	adds r1, r4, #0
	adds r1, #0x35
	movs r0, #2
	strb r0, [r1]
_080362C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080362CC: .4byte gUnknown_0849A00C

	thumb_func_start sub_080362D0
sub_080362D0: @ 0x080362D0
	ldrh r1, [r0, #0x3e]
	subs r1, #1
	strh r1, [r0, #0x3e]
	bx lr

	thumb_func_start sub_080362D8
sub_080362D8: @ 0x080362D8
	bx lr
	.align 2, 0

	thumb_func_start sub_080362DC
sub_080362DC: @ 0x080362DC
	bx lr
	.align 2, 0

	thumb_func_start sub_080362E0
sub_080362E0: @ 0x080362E0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0x40
	ldrh r0, [r2]
	ldrh r1, [r3, #0x3e]
	adds r0, r0, r1
	strh r0, [r3, #0x3e]
	movs r4, #0x42
	adds r4, r4, r3
	mov ip, r4
	ldr r6, _08036380 @ =gUnknown_0849BE10
	adds r5, r3, #0
	adds r5, #0x38
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0]
	adds r4, r0, #0
	muls r4, r1, r4
	adds r0, r4, #0
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r4, ip
	strh r0, [r4]
	adds r4, r3, #0
	adds r4, #0x44
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0]
	adds r2, r0, #0
	muls r2, r1, r2
	adds r0, r2, #0
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r3, #0x3e]
	cmp r0, #0xf
	bls _08036378
	subs r0, #0x10
	strh r0, [r3, #0x3e]
	ldrh r1, [r3, #0x3e]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	mov r2, ip
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	ldrh r1, [r3, #0x3e]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r6
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r1, r0, r1
	ldrh r0, [r4]
	subs r0, r0, r1
	strh r0, [r4]
	movs r0, #0
	strh r0, [r3, #0x3e]
_08036378:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036380: .4byte gUnknown_0849BE10

	thumb_func_start sub_08036384
sub_08036384: @ 0x08036384
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080363C0
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _080363AC
	ldrh r0, [r4, #0x3e]
	cmp r0, #0
	bne _080363AC
	adds r0, r4, #0
	bl sub_080360D0
	ldr r0, [r4]
	cmp r0, #0
	beq _080363C6
_080363AC:
	ldr r0, _080363CC @ =gUnknown_0849BE20
	adds r1, r4, #0
	adds r1, #0x35
	ldrb r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	adds r0, r4, #0
	bl _call_via_r1
_080363C0:
	adds r0, r4, #0
	bl sub_080359A4
_080363C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080363CC: .4byte gUnknown_0849BE20

	thumb_func_start sub_080363D0
sub_080363D0: @ 0x080363D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	bl sub_0801C240
	ldr r0, [r4, #0x48]
	bl sub_080364D4
	ldr r1, _080363F4 @ =gUnknown_03003124
	adds r4, #0x3a
	movs r0, #0
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080363F4: .4byte gUnknown_03003124

	thumb_func_start sub_080363F8
sub_080363F8: @ 0x080363F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r1
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	mov r0, sp
	adds r1, r7, #0
	bl sub_08015638
	ldr r0, [sp]
	ldr r1, [sp, #4]
	lsls r5, r1, #0x16
	lsrs r0, r5, #0x16
	mov r1, r8
	ldrh r4, [r1, #4]
	subs r6, r4, r0
	ldr r2, _08036470 @ =0x000003FF
	adds r0, r2, #0
	ands r6, r0
	adds r0, r6, #0
	movs r1, #9
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xfc
	lsls r2, r2, #8
	ands r2, r4
	adds r2, r0, r2
	lsrs r1, r5, #0x16
	adds r1, r1, r2
	mov r2, r8
	strh r1, [r2, #4]
	cmp r0, #0
	bne _08036464
	ldr r1, _08036474 @ =gUnknown_03001470
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #5
	adds r1, #0x18
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r6, #5
	ldr r0, [r0, #0x48]
	adds r0, r0, r1
	lsrs r1, r5, #0x11
	ldr r2, _08036478 @ =0x06010000
	adds r1, r1, r2
	movs r2, #0x90
	lsls r2, r2, #1
	bl sub_08011E54
_08036464:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036470: .4byte 0x000003FF
_08036474: .4byte gUnknown_03001470
_08036478: .4byte 0x06010000

	thumb_func_start sub_0803647C
sub_0803647C: @ 0x0803647C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08036024
	adds r4, #0x35
	movs r1, #0
	movs r0, #1
	strb r0, [r4]
	ldr r0, _08036498 @ =gUnknown_030040E4
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036498: .4byte gUnknown_030040E4

	thumb_func_start sub_0803649C
sub_0803649C: @ 0x0803649C
	movs r1, #0
	ldr r2, _080364B0 @ =gUnknown_03003124
_080364A0:
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080364B4
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	b _080364C2
	.align 2, 0
_080364B0: .4byte gUnknown_03003124
_080364B4:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bls _080364A0
	movs r0, #1
	rsbs r0, r0, #0
_080364C2:
	bx lr

	thumb_func_start sub_080364C4
sub_080364C4: @ 0x080364C4
	push {lr}
	movs r0, #0xa2
	lsls r0, r0, #4
	bl sub_08014E44
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080364D4
sub_080364D4: @ 0x080364D4
	push {lr}
	bl sub_08014ED4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080364E0
sub_080364E0: @ 0x080364E0
	push {lr}
	ldr r0, _080364F0 @ =gUnknown_0849D10C
	movs r1, #0
	bl sub_080152C0
	pop {r0}
	bx r0
	.align 2, 0
_080364F0: .4byte gUnknown_0849D10C

	thumb_func_start sub_080364F4
sub_080364F4: @ 0x080364F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	bl sub_080191B0
	ldr r0, _08036584 @ =gUnknown_08090EBC
	ldr r2, [r0]
	ldrb r1, [r2, #1]
	cmp r1, #0
	beq _080365AA
	ldr r0, _08036588 @ =gUnknown_08090EC0
	mov sl, r0
	cmp r1, #0
	blt _080365D2
	cmp r1, #2
	bgt _080365D2
	movs r4, #0
	mov ip, r2
	mov r1, sl
	ldr r6, [r1]
	movs r5, #0x5c
	movs r2, #0x3c
	adds r2, r2, r6
	mov r8, r2
	mov r7, ip
	adds r7, #0x3d
	ldr r0, _0803658C @ =gUnknown_030058D4
	mov sb, r0
_08036530:
	adds r3, r4, #1
	mov r2, ip
	adds r2, #0x42
	adds r2, r3, r2
	mov r1, ip
	ldrb r0, [r1, #2]
	muls r0, r5, r0
	adds r0, r4, r0
	adds r1, r6, #0
	adds r1, #0x44
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	mov r2, ip
	adds r2, #0x33
	adds r2, r3, r2
	mov r1, ip
	ldrb r0, [r1, #2]
	muls r0, r5, r0
	adds r0, r4, r0
	adds r1, r6, #0
	adds r1, #0x40
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r2]
	mov r2, ip
	ldrb r0, [r2, #2]
	muls r0, r5, r0
	adds r0, r4, r0
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08036590
	cmp r3, #3
	bgt _08036590
	adds r0, r3, r7
	mov r2, sb
	adds r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	b _080365A0
	.align 2, 0
_08036584: .4byte gUnknown_08090EBC
_08036588: .4byte gUnknown_08090EC0
_0803658C: .4byte gUnknown_030058D4
_08036590:
	adds r1, r3, r7
	mov r2, ip
	ldrb r0, [r2, #2]
	muls r0, r5, r0
	adds r0, r4, r0
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1]
_080365A0:
	lsls r0, r3, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08036530
	b _080365D2
_080365AA:
	movs r4, #0
	ldr r0, _080365FC @ =gUnknown_08090EC0
	mov sl, r0
	adds r3, r2, #0
	adds r7, r3, #0
	adds r7, #0x3d
	ldr r6, _08036600 @ =gUnknown_085C77DC
	movs r5, #0x5c
_080365BA:
	adds r1, r4, #1
	adds r2, r1, r7
	ldrb r0, [r3, #2]
	muls r0, r5, r0
	adds r0, r4, r0
	adds r0, r0, r6
	ldrb r0, [r0]
	strb r0, [r2]
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	cmp r4, #3
	bls _080365BA
_080365D2:
	mov r1, sl
	ldr r3, [r1]
	ldr r0, _08036604 @ =gUnknown_03003FC0
	ldrb r1, [r0, #2]
	movs r0, #0x5c
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0xc
	adds r0, r1, r0
	ldr r2, [r0]
	cmp r2, #0
	beq _08036608
	adds r0, r1, r3
	ldrh r0, [r0, #0x1a]
	cmp r0, #2
	bhi _08036608
	adds r0, r2, #0
	bl sub_080193B0
	b _0803660C
	.align 2, 0
_080365FC: .4byte gUnknown_08090EC0
_08036600: .4byte gUnknown_085C77DC
_08036604: .4byte gUnknown_03003FC0
_08036608:
	bl sub_080364E0
_0803660C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803661C
sub_0803661C: @ 0x0803661C
	push {lr}
	bl sub_08034890
	bl sub_08023348
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0803662C
sub_0803662C: @ 0x0803662C
	push {lr}
	bl sub_0801F00C
	bl sub_08024584
	bl sub_08011B18
	ldr r0, _0803667C @ =sub_08022048
	bl sub_08011B34
	ldr r0, _08036680 @ =sub_08021DD8
	bl sub_08011B34
	ldr r0, _08036684 @ =sub_0803678C
	bl sub_08011B34
	ldr r0, _08036688 @ =sub_0803550C
	bl sub_08011B34
	ldr r0, _0803668C @ =sub_080246B4
	bl sub_08011B34
	ldr r0, _08036690 @ =sub_08024720
	bl sub_08011B34
	ldr r0, _08036694 @ =sub_08022A6C
	bl sub_08011B34
	ldr r0, _08036698 @ =sub_08043590
	bl sub_08011B34
	ldr r0, _0803669C @ =sub_08036944
	bl sub_080366D0
	ldr r0, _080366A0 @ =sub_080369BC
	bl sub_080366C4
	pop {r0}
	bx r0
	.align 2, 0
_0803667C: .4byte sub_08022048
_08036680: .4byte sub_08021DD8
_08036684: .4byte sub_0803678C
_08036688: .4byte sub_0803550C
_0803668C: .4byte sub_080246B4
_08036690: .4byte sub_08024720
_08036694: .4byte sub_08022A6C
_08036698: .4byte sub_08043590
_0803669C: .4byte sub_08036944
_080366A0: .4byte sub_080369BC

	thumb_func_start sub_080366A4
sub_080366A4: @ 0x080366A4
	push {lr}
	bl sub_08011B18
	ldr r0, _080366BC @ =sub_08036884
	bl sub_080366D0
	ldr r0, _080366C0 @ =sub_080368E8
	bl sub_080366C4
	pop {r0}
	bx r0
	.align 2, 0
_080366BC: .4byte sub_08036884
_080366C0: .4byte sub_080368E8

	thumb_func_start sub_080366C4
sub_080366C4: @ 0x080366C4
	ldr r1, _080366CC @ =gUnknown_030040EC
	str r0, [r1]
	bx lr
	.align 2, 0
_080366CC: .4byte gUnknown_030040EC

	thumb_func_start sub_080366D0
sub_080366D0: @ 0x080366D0
	ldr r1, _080366D8 @ =gUnknown_030040D0
	str r0, [r1]
	bx lr
	.align 2, 0
_080366D8: .4byte gUnknown_030040D0

	thumb_func_start sub_080366DC
sub_080366DC: @ 0x080366DC
	ldr r0, _080366E4 @ =gUnknown_030040EC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080366E4: .4byte gUnknown_030040EC

	thumb_func_start sub_080366E8
sub_080366E8: @ 0x080366E8
	ldr r0, _080366F0 @ =gUnknown_030040D0
	ldr r0, [r0]
	bx lr
	.align 2, 0
_080366F0: .4byte gUnknown_030040D0

	thumb_func_start sub_080366F4
sub_080366F4: @ 0x080366F4
	push {lr}
	ldr r0, _08036708 @ =gUnknown_030040D0
	ldr r0, [r0]
	cmp r0, #0
	beq _08036702
	bl _call_via_r0
_08036702:
	pop {r0}
	bx r0
	.align 2, 0
_08036708: .4byte gUnknown_030040D0

	thumb_func_start sub_0803670C
sub_0803670C: @ 0x0803670C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08036724 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x2e
	bl __umodsi3
	adds r7, r0, #0
	cmp r7, #0xb
	bhi _08036728
	movs r7, #0
	b _08036736
	.align 2, 0
_08036724: .4byte gUnknown_03004008
_08036728:
	cmp r7, #0x11
	bls _08036734
	cmp r7, #0x27
	bhi _08036734
	movs r7, #2
	b _08036736
_08036734:
	movs r7, #1
_08036736:
	ldr r6, _08036778 @ =gUnknown_081120B0
	ldr r5, _0803677C @ =0x000003FF
	adds r0, r7, #0
	ands r0, r5
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r4, _08036780 @ =gUnknown_03002B6C
	ldr r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r2, _08036784 @ =0x06004100
	adds r1, r1, r2
	movs r2, #0x20
	bl sub_08011C68
	lsls r0, r7, #1
	adds r0, #3
	ands r0, r5
	lsls r0, r0, #5
	adds r0, r0, r6
	ldr r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r2, _08036788 @ =0x06004120
	adds r1, r1, r2
	movs r2, #0x40
	bl sub_08011C68
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08036778: .4byte gUnknown_081120B0
_0803677C: .4byte 0x000003FF
_08036780: .4byte gUnknown_03002B6C
_08036784: .4byte 0x06004100
_08036788: .4byte 0x06004120

	thumb_func_start sub_0803678C
sub_0803678C: @ 0x0803678C
	push {r4, r5, lr}
	ldr r0, _080367A8 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x32
	bl __umodsi3
	adds r1, r0, #0
	cmp r0, #0x14
	beq _08036804
	cmp r0, #0x14
	bhi _080367AC
	cmp r0, #0
	beq _080367B2
	b _08036868
	.align 2, 0
_080367A8: .4byte gUnknown_03004008
_080367AC:
	cmp r1, #0x28
	beq _08036828
	b _08036868
_080367B2:
	ldr r4, _080367F0 @ =gUnknown_081251B0
	ldr r5, _080367F4 @ =gUnknown_030030B4
	ldr r1, [r5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r0, _080367F8 @ =0x060067A0
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08011C68
	adds r4, #0x20
	ldr r1, [r5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r2, _080367FC @ =0x060067C0
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #0x20
	bl sub_08011C68
	ldr r1, [r5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r0, _08036800 @ =0x060067E0
	adds r1, r1, r0
	adds r0, r4, #0
	b _08036814
	.align 2, 0
_080367F0: .4byte gUnknown_081251B0
_080367F4: .4byte gUnknown_030030B4
_080367F8: .4byte 0x060067A0
_080367FC: .4byte 0x060067C0
_08036800: .4byte 0x060067E0
_08036804:
	ldr r0, _0803681C @ =gUnknown_081251B0
	ldr r1, _08036820 @ =gUnknown_030030B4
	ldr r1, [r1]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r2, _08036824 @ =0x060067E0
	adds r1, r1, r2
_08036814:
	movs r2, #0x20
	bl sub_08011C68
	b _08036868
	.align 2, 0
_0803681C: .4byte gUnknown_081251B0
_08036820: .4byte gUnknown_030030B4
_08036824: .4byte 0x060067E0
_08036828:
	ldr r5, _08036870 @ =gUnknown_08090EC4
	ldr r4, _08036874 @ =gUnknown_030030B4
	ldr r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r0, _08036878 @ =0x060067A0
	adds r1, r1, r0
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_08011C68
	ldr r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r2, _0803687C @ =0x060067C0
	adds r1, r1, r2
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_08011C68
	ldr r1, [r4]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xe
	ldr r0, _08036880 @ =0x060067E0
	adds r1, r1, r0
	adds r0, r5, #0
	movs r2, #0x20
	bl sub_08011C68
_08036868:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036870: .4byte gUnknown_08090EC4
_08036874: .4byte gUnknown_030030B4
_08036878: .4byte 0x060067A0
_0803687C: .4byte 0x060067C0
_08036880: .4byte 0x060067E0

	thumb_func_start sub_08036884
sub_08036884: @ 0x08036884
	push {lr}
	bl sub_0803B3F8
	bl sub_0802FACC
	ldr r0, _080368C4 @ =gUnknown_0200E418
	ldr r0, [r0]
	bl sub_0801CB10
	bl sub_08011B98
	bl sub_0801F0AC
	bl sub_0801F0C8
	ldr r1, _080368C8 @ =gUnknown_03004094
	ldrb r0, [r1]
	cmp r0, #0
	beq _080368CC
	movs r0, #0
	strb r0, [r1]
	bl sub_0801F0E0
	bl sub_080128D0
	bl sub_08011FF0
	bl sub_08013B2C
	bl sub_08011AD8
	b _080368CE
	.align 2, 0
_080368C4: .4byte gUnknown_0200E418
_080368C8: .4byte gUnknown_03004094
_080368CC:
	strb r0, [r1]
_080368CE:
	bl sub_0801F0FC
	ldr r1, _080368E4 @ =gUnknown_03004008
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_0803B408
	pop {r0}
	bx r0
	.align 2, 0
_080368E4: .4byte gUnknown_03004008

	thumb_func_start sub_080368E8
sub_080368E8: @ 0x080368E8
	push {r4, r5, lr}
	ldr r5, _0803693C @ =gUnknown_03004094
	ldrb r0, [r5]
	cmp r0, #0
	bne _08036936
	bl sub_0801F050
	bl sub_08013510
	bl sub_08054B7C
	bl sub_08019470
	bl sub_08015954
	ldr r4, _08036940 @ =gUnknown_0200E418
	ldr r0, [r4, #4]
	bl sub_0801CB10
	ldr r0, [r4, #8]
	bl sub_0801CB10
	ldr r0, [r4, #0xc]
	bl sub_0801CB10
	ldr r0, [r4, #0x14]
	bl sub_0801CB10
	ldr r0, [r4, #0x10]
	bl sub_0801CB10
	bl sub_0801F06C
	bl sub_0801F084
	bl sub_0803B404
	movs r0, #1
	strb r0, [r5]
_08036936:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0803693C: .4byte gUnknown_03004094
_08036940: .4byte gUnknown_0200E418

	thumb_func_start sub_08036944
sub_08036944: @ 0x08036944
	push {r4, lr}
	ldr r4, _0803698C @ =gUnknown_08090EE4
	ldr r1, [r4]
	movs r0, #1
	strh r0, [r1]
	bl sub_0803B3F8
	bl sub_0802FACC
	ldr r0, _08036990 @ =gUnknown_0200E418
	ldr r0, [r0]
	bl sub_0801CB10
	bl sub_08011B98
	bl sub_0801F0AC
	bl sub_0801F0C8
	ldr r1, _08036994 @ =gUnknown_03004094
	ldrb r0, [r1]
	cmp r0, #0
	beq _08036998
	movs r0, #0
	strb r0, [r1]
	bl sub_0801F0E0
	bl sub_080128D0
	bl sub_08011FF0
	bl sub_08013B2C
	bl sub_08011AD8
	b _0803699A
	.align 2, 0
_0803698C: .4byte gUnknown_08090EE4
_08036990: .4byte gUnknown_0200E418
_08036994: .4byte gUnknown_03004094
_08036998:
	strb r0, [r1]
_0803699A:
	bl sub_0801F0FC
	ldr r1, _080369B8 @ =gUnknown_03004008
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_0803B408
	ldr r1, [r4]
	movs r0, #0
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080369B8: .4byte gUnknown_03004008

	thumb_func_start sub_080369BC
sub_080369BC: @ 0x080369BC
	push {r4, r5, lr}
	ldr r0, _08036A3C @ =gUnknown_08090EE8
	ldr r1, [r0]
	ldrb r1, [r1]
	adds r5, r0, #0
	cmp r1, #0
	bne _08036A36
	ldr r2, _08036A40 @ =gUnknown_03004008
	ldr r0, _08036A44 @ =gUnknown_030043F4
	ldrh r1, [r0]
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08036A36
	bl sub_0801F050
	bl sub_08013510
	bl sub_08054B7C
	bl sub_08019470
	ldr r0, _08036A48 @ =gUnknown_03003F3C
	ldr r0, [r0]
	cmp r0, #0
	beq _080369F8
	cmp r0, #1
	bne _080369F8
	bl sub_080345C8
_080369F8:
	bl sub_08015954
	ldr r4, _08036A4C @ =gUnknown_0200E418
	ldr r0, [r4, #4]
	bl sub_0801CB10
	ldr r0, [r4, #8]
	bl sub_0801CB10
	ldr r0, [r4, #0xc]
	bl sub_0801CB10
	ldr r0, [r4, #0x14]
	bl sub_0801CB10
	ldr r0, [r4, #0x10]
	bl sub_0801CB10
	bl sub_08023EEC
	bl sub_0803F990
	bl sub_0801F06C
	bl sub_0801F084
	bl sub_0803B404
	ldr r1, [r5]
	movs r0, #1
	strb r0, [r1]
_08036A36:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036A3C: .4byte gUnknown_08090EE8
_08036A40: .4byte gUnknown_03004008
_08036A44: .4byte gUnknown_030043F4
_08036A48: .4byte gUnknown_03003F3C
_08036A4C: .4byte gUnknown_0200E418

	thumb_func_start sub_08036A50
sub_08036A50: @ 0x08036A50
	push {lr}
	bl sub_0803B3F8
	bl sub_0802FACC
	ldr r0, _08036A94 @ =gUnknown_0200E418
	ldr r0, [r0]
	bl sub_0801CB10
	bl sub_08011B98
	bl sub_0801F0AC
	bl sub_0801F0C8
	ldr r1, _08036A98 @ =gUnknown_03004094
	ldrb r0, [r1]
	cmp r0, #0
	beq _08036A9C
	movs r0, #0
	strb r0, [r1]
	bl sub_0801F0E0
	bl sub_080128D0
	bl sub_08011FF0
	bl sub_08013B2C
	bl sub_08011AD8
	bl sub_0801F050
	b _08036A9E
	.align 2, 0
_08036A94: .4byte gUnknown_0200E418
_08036A98: .4byte gUnknown_03004094
_08036A9C:
	strb r0, [r1]
_08036A9E:
	bl sub_0801F0FC
	ldr r1, _08036AB4 @ =gUnknown_03004008
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	bl sub_0803B408
	pop {r0}
	bx r0
	.align 2, 0
_08036AB4: .4byte gUnknown_03004008

	thumb_func_start sub_08036AB8
sub_08036AB8: @ 0x08036AB8
	push {r4, r5, lr}
	ldr r5, _08036B18 @ =gUnknown_03004094
	ldrb r0, [r5]
	cmp r0, #0
	bne _08036B10
	ldr r2, _08036B1C @ =gUnknown_03004008
	ldr r0, _08036B20 @ =gUnknown_030043F4
	ldrh r1, [r0]
	ldr r0, [r2]
	ands r0, r1
	cmp r0, #0
	bne _08036B10
	bl sub_08013510
	bl sub_08054B7C
	bl sub_08019470
	ldr r4, _08036B24 @ =gUnknown_0200E418
	ldr r0, [r4, #4]
	bl sub_0801CB10
	ldr r0, [r4, #8]
	bl sub_0801CB10
	ldr r0, [r4, #0xc]
	bl sub_0801CB10
	bl sub_08015954
	ldr r0, [r4, #0x14]
	bl sub_0801CB10
	ldr r0, [r4, #0x10]
	bl sub_0801CB10
	bl sub_0801F06C
	bl sub_0801F084
	bl sub_0803B404
	movs r0, #1
	strb r0, [r5]
_08036B10:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08036B18: .4byte gUnknown_03004094
_08036B1C: .4byte gUnknown_03004008
_08036B20: .4byte gUnknown_030043F4
_08036B24: .4byte gUnknown_0200E418

	thumb_func_start sub_08036B28
sub_08036B28: @ 0x08036B28
	ldr r1, _08036B30 @ =gUnknown_030043F4
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08036B30: .4byte gUnknown_030043F4

	thumb_func_start sub_08036B34
sub_08036B34: @ 0x08036B34
	push {lr}
	ldr r1, _08036B44 @ =gUnknown_030043F4
	movs r0, #0
	strh r0, [r1]
	bl sub_0801F00C
	pop {r0}
	bx r0
	.align 2, 0
_08036B44: .4byte gUnknown_030043F4
_08036B48:
	b _08036B48
	.align 2, 0

	thumb_func_start sub_08036B4C
sub_08036B4C: @ 0x08036B4C
	push {r4, lr}
	ldr r0, _08036BE8 @ =gUnknown_030040A0
	movs r4, #0
	str r4, [r0]
	ldr r0, _08036BEC @ =gUnknown_02028E40
	strb r4, [r0]
	bl sub_08010FE0
	movs r0, #0
	bl sub_080366C4
	movs r0, #0
	bl sub_080366D0
	ldr r0, _08036BF0 @ =gUnknown_03004094
	strb r4, [r0]
	ldr r0, _08036BF4 @ =gUnknown_03004008
	str r4, [r0]
	ldr r0, _08036BF8 @ =gUnknown_03003330
	str r4, [r0]
	ldr r0, _08036BFC @ =gUnknown_03004078
	str r4, [r0]
	ldr r0, _08036C00 @ =gUnknown_030043F0
	str r4, [r0]
	ldr r0, _08036C04 @ =gUnknown_030033F0
	strh r4, [r0]
	bl sub_08036B34
	bl sub_0801B6BC
	bl sub_0803486C
	bl sub_08034848
	bl sub_0801BCE0
	bl sub_08015544
	bl sub_08011C18
	bl sub_08011B18
	bl sub_08011A84
	bl sub_080191B0
	bl sub_08015184
	bl Proc_Init
	bl sub_08035568
	bl sub_08010F94
	bl sub_08013434
	bl sub_0801F4A4
	bl sub_0801295C
	bl sub_080128D0
	bl sub_0803B37C
	bl sub_0803B688
	bl sub_08030ED4
	bl sub_08085AF4
	movs r0, #0
	bl sub_08080F90
	bl sub_0801F114
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036BE8: .4byte gUnknown_030040A0
_08036BEC: .4byte gUnknown_02028E40
_08036BF0: .4byte gUnknown_03004094
_08036BF4: .4byte gUnknown_03004008
_08036BF8: .4byte gUnknown_03003330
_08036BFC: .4byte gUnknown_03004078
_08036C00: .4byte gUnknown_030043F0
_08036C04: .4byte gUnknown_030033F0

	thumb_func_start sub_08036C08
sub_08036C08: @ 0x08036C08
	push {lr}
	bl sub_0801F018
	ldr r0, _08036C24 @ =sub_08036A50
	bl sub_080366D0
	ldr r0, _08036C28 @ =sub_08036AB8
	bl sub_080366C4
	bl sub_08036B28
	pop {r0}
	bx r0
	.align 2, 0
_08036C24: .4byte sub_08036A50
_08036C28: .4byte sub_08036AB8

	thumb_func_start sub_08036C2C
sub_08036C2C: @ 0x08036C2C
	push {lr}
	bl sub_08036B4C
	bl sub_08036C08
	ldr r0, _08036C48 @ =gUnknown_08553754
	movs r1, #3
	bl Proc_Start
	bl sub_08036B34
	pop {r0}
	bx r0
	.align 2, 0
_08036C48: .4byte gUnknown_08553754

	thumb_func_start sub_08036C4C
sub_08036C4C: @ 0x08036C4C
	push {lr}
	bl sub_0801F00C
	bl sub_08036B4C
	ldr r1, _08036C70 @ =gUnknown_030032CC
	ldr r0, _08036C74 @ =0x00000E28
	str r0, [r1]
	ldr r0, _08036C78 @ =sub_08036884
	bl sub_080366D0
	ldr r0, _08036C7C @ =sub_080368E8
	bl sub_080366C4
	bl sub_0806A454
	pop {r0}
	bx r0
	.align 2, 0
_08036C70: .4byte gUnknown_030032CC
_08036C74: .4byte 0x00000E28
_08036C78: .4byte sub_08036884
_08036C7C: .4byte sub_080368E8

	thumb_func_start sub_08036C80
sub_08036C80: @ 0x08036C80
	push {lr}
	bl sub_0801F00C
	bl sub_08036B4C
	ldr r1, _08036CA4 @ =gUnknown_030032CC
	ldr r0, _08036CA8 @ =0x00000E28
	str r0, [r1]
	ldr r0, _08036CAC @ =sub_08036884
	bl sub_080366D0
	ldr r0, _08036CB0 @ =sub_080368E8
	bl sub_080366C4
	bl sub_0806A454
	pop {r0}
	bx r0
	.align 2, 0
_08036CA4: .4byte gUnknown_030032CC
_08036CA8: .4byte 0x00000E28
_08036CAC: .4byte sub_08036884
_08036CB0: .4byte sub_080368E8

	thumb_func_start sub_08036CB4
sub_08036CB4: @ 0x08036CB4
	push {r4, r5, r6, lr}
	sub sp, #8
	mov r1, sp
	ldr r2, _08036D10 @ =gUnknown_02028E41
	ldrb r0, [r2]
	movs r3, #0
	strb r0, [r1]
	ldrb r0, [r2, #1]
	mov r6, sp
	adds r6, #1
	strb r0, [r6]
	ldrb r0, [r2, #2]
	mov r5, sp
	adds r5, #2
	strb r0, [r5]
	ldrb r0, [r2, #3]
	mov r4, sp
	adds r4, #3
	strb r0, [r4]
	add r0, sp, #4
	strh r3, [r0]
	ldr r1, _08036D14 @ =0x040000D4
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _08036D18 @ =0x81020000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	mov r0, sp
	ldrb r0, [r0]
	strb r0, [r2]
	ldrb r0, [r6]
	strb r0, [r2, #1]
	ldrb r0, [r5]
	strb r0, [r2, #2]
	ldrb r0, [r4]
	strb r0, [r2, #3]
	movs r0, #0xfe
	bl SoftReset
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08036D10: .4byte gUnknown_02028E41
_08036D14: .4byte 0x040000D4
_08036D18: .4byte 0x81020000

	thumb_func_start AgbMain
AgbMain: @ 0x08036D1C
	push {r4, lr}
	sub sp, #0xc
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, _08036DBC @ =0x040000D4
	add r0, sp, #8
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _08036DC0 @ =0x85001FE0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08036DC4 @ =0x04000204
	ldr r2, _08036DC8 @ =0x000045B4
	adds r0, r2, #0
	strh r0, [r1]
	add r2, sp, #4
	ldr r0, _08036DCC @ =0x04000130
	ldrh r1, [r0]
	ldr r3, _08036DD0 @ =0x000003FF
	adds r0, r3, #0
	bics r0, r1
	strh r0, [r2]
	bl sub_0801BABC
	ldr r0, _08036DD4 @ =gUnknown_02003000
	movs r1, #0x80
	lsls r1, r1, #8
	bl sub_08014DA8
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08036D66
	bl _08036B48
_08036D66:
	ldr r0, _08036DD8 @ =sub_08016B2C
	ldr r1, _08036DDC @ =sub_08016A54
	ldr r2, _08036DE0 @ =gUnknown_02000000
	ldr r3, _08036DE4 @ =gUnknown_03003064
	str r3, [sp]
	movs r3, #2
	bl sub_0801A79C
	bl sub_08016E3C
	bl sub_0803D48C
	ldr r0, _08036DE8 @ =0x0A6B99CD
	bl sub_080129D4
	bl sub_080128C4
	bl sub_080128D0
	ldr r1, _08036DEC @ =sub_080366F4
	movs r0, #0
	bl sub_0801BB00
	movs r2, #0
	add r0, sp, #4
	ldrh r1, [r0]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0xf
	beq _08036DB0
	add r0, sp, #4
	ldrh r1, [r0]
	movs r0, #0x85
	lsls r0, r0, #2
	cmp r1, r0
	bne _08036DB0
	movs r2, #1
_08036DB0:
	cmp r2, #0
	beq _08036DF0
	bl sub_08036E54
	b _08036DF4
	.align 2, 0
_08036DBC: .4byte 0x040000D4
_08036DC0: .4byte 0x85001FE0
_08036DC4: .4byte 0x04000204
_08036DC8: .4byte 0x000045B4
_08036DCC: .4byte 0x04000130
_08036DD0: .4byte 0x000003FF
_08036DD4: .4byte gUnknown_02003000
_08036DD8: .4byte sub_08016B2C
_08036DDC: .4byte sub_08016A54
_08036DE0: .4byte gUnknown_02000000
_08036DE4: .4byte gUnknown_03003064
_08036DE8: .4byte 0x0A6B99CD
_08036DEC: .4byte sub_080366F4
_08036DF0:
	bl sub_08036C4C
_08036DF4:
	ldr r1, _08036E10 @ =0x00012001
	movs r0, #2
	bl sub_0801BB10
	ldr r4, _08036E14 @ =gUnknown_030040EC
_08036DFE:
	ldr r0, [r4]
	cmp r0, #0
	beq _08036E08
	bl _call_via_r0
_08036E08:
	bl sub_08036E18
	b _08036DFE
	.align 2, 0
_08036E10: .4byte 0x00012001
_08036E14: .4byte gUnknown_030040EC

	thumb_func_start sub_08036E18
sub_08036E18: @ 0x08036E18
	push {lr}
	ldr r0, _08036E48 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _08036E4C @ =0x000003FF
	adds r0, r2, #0
	bics r0, r1
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0xf
	bne _08036E42
	ldr r1, _08036E50 @ =gUnknown_02028E41
	ldrb r0, [r1]
	cmp r0, #0xaa
	bne _08036E3A
	ldrb r0, [r1, #1]
	cmp r0, #0x55
	beq _08036E3E
_08036E3A:
	bl sub_0804A010
_08036E3E:
	bl sub_08036CB4
_08036E42:
	pop {r0}
	bx r0
	.align 2, 0
_08036E48: .4byte 0x04000130
_08036E4C: .4byte 0x000003FF
_08036E50: .4byte gUnknown_02028E41

	thumb_func_start sub_08036E54
sub_08036E54: @ 0x08036E54
	push {lr}
	bl sub_08036B4C
	movs r0, #0
	bl sub_0801B780
	ldr r0, _08036E6C @ =gUnknown_0849D1AC
	movs r1, #0
	bl sub_080152EC
	pop {r0}
	bx r0
	.align 2, 0
_08036E6C: .4byte gUnknown_0849D1AC

	thumb_func_start sub_08036E70
sub_08036E70: @ 0x08036E70
	push {r4, lr}
	ldr r0, _08036EEC @ =gUnknown_0849D16C
	bl sub_08012C58
	ldr r2, _08036EF0 @ =gUnknown_030030CC
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	bl sub_0801295C
	bl sub_080128D0
	ldr r0, _08036EF4 @ =gUnknown_08499578
	ldr r0, [r0]
	ldr r1, _08036EF8 @ =0x06007000
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08036EFC @ =gUnknown_0849957C
	ldr r0, [r0]
	ldr r1, _08036F00 @ =0x0600F000
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08036F04 @ =gUnknown_08499580
	ldr r0, [r0]
	ldr r1, _08036F08 @ =0x06007800
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08036F0C @ =gUnknown_08499584
	ldr r0, [r0]
	ldr r1, _08036F10 @ =0x0600F800
	adds r2, r4, #0
	bl sub_08011C68
	bl sub_0802465C
	movs r0, #0
	bl sub_0801A5B0
	ldr r0, _08036F14 @ =gUnknown_0809165C
	movs r1, #0xa0
	lsls r1, r1, #1
	movs r2, #0x20
	bl sub_08013618
	bl sub_08011B18
	ldr r0, _08036F18 @ =sub_080368E8
	bl sub_080366C4
	ldr r0, _08036F1C @ =sub_08036884
	bl sub_080366D0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08036EEC: .4byte gUnknown_0849D16C
_08036EF0: .4byte gUnknown_030030CC
_08036EF4: .4byte gUnknown_08499578
_08036EF8: .4byte 0x06007000
_08036EFC: .4byte gUnknown_0849957C
_08036F00: .4byte 0x0600F000
_08036F04: .4byte gUnknown_08499580
_08036F08: .4byte 0x06007800
_08036F0C: .4byte gUnknown_08499584
_08036F10: .4byte 0x0600F800
_08036F14: .4byte gUnknown_0809165C
_08036F18: .4byte sub_080368E8
_08036F1C: .4byte sub_08036884

	thumb_func_start sub_08036F20
sub_08036F20: @ 0x08036F20
	push {lr}
	ldr r1, _08036F38 @ =gUnknown_02028E40
	ldr r0, _08036F3C @ =gUnknown_0200C420
	ldrb r0, [r0, #8]
	lsrs r0, r0, #6
	strb r0, [r1]
	ldr r0, _08036F40 @ =gUnknown_0849D34C
	bl sub_080193B0
	pop {r0}
	bx r0
	.align 2, 0
_08036F38: .4byte gUnknown_02028E40
_08036F3C: .4byte gUnknown_0200C420
_08036F40: .4byte gUnknown_0849D34C

	thumb_func_start sub_08036F44
sub_08036F44: @ 0x08036F44
	push {lr}
	ldr r2, _08036F64 @ =gUnknown_030030CC
	ldrb r0, [r2, #1]
	movs r1, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	strb r0, [r2, #1]
	bl sub_08022A34
	movs r0, #0
	bl sub_0801A5B0
	pop {r0}
	bx r0
	.align 2, 0
_08036F64: .4byte gUnknown_030030CC

	thumb_func_start sub_08036F68
sub_08036F68: @ 0x08036F68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r4, [sp, #0x3c]
	ldr r5, [sp, #0x4c]
	ldr r6, [sp, #0x50]
	mov r8, r6
	ldr r6, [sp, #0x54]
	ldr r7, [sp, #0x58]
	mov sl, r7
	ldr r7, [sp, #0x5c]
	mov ip, r7
	ldr r7, [sp, #0x64]
	mov sb, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp]
	ldr r7, [sp, #0x40]
	lsls r4, r7, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #4]
	ldr r7, [sp, #0x44]
	lsls r4, r7, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #8]
	ldr r7, [sp, #0x48]
	lsls r4, r7, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0xc]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r4, r8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov r8, r4
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	mov r7, sl
	lsls r7, r7, #0x18
	adds r4, r7, #0
	lsrs r4, r4, #0x18
	mov sl, r4
	mov r7, ip
	lsls r7, r7, #0x18
	adds r4, r7, #0
	lsrs r4, r4, #0x18
	mov ip, r4
	ldr r7, [sp, #0x60]
	lsls r4, r7, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x18]
	mov r4, sb
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov sb, r4
	ldr r7, [sp, #0x68]
	lsls r4, r7, #0x18
	lsrs r4, r4, #0x18
	str r4, [sp, #0x10]
	ldr r7, [sp, #0x6c]
	lsls r4, r7, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0x14]
	ldr r4, _080370CC @ =gUnknown_03002B5C
	movs r7, #0
	strh r7, [r4]
	ldr r4, _080370D0 @ =gUnknown_0300450C
	mov r7, sb
	strh r7, [r4]
	ldr r4, _080370D4 @ =gUnknown_03004580
	subs r1, #1
	strh r1, [r4]
	subs r5, #1
	strh r5, [r4, #0x10]
	subs r3, #1
	strh r3, [r4, #2]
	subs r6, #1
	strh r6, [r4, #0x12]
	mov r1, sp
	ldrh r1, [r1]
	strh r1, [r4, #4]
	mov r3, sl
	strh r3, [r4, #0x14]
	strh r2, [r4, #6]
	mov r5, r8
	strh r5, [r4, #0x16]
	strh r0, [r4, #8]
	mov r6, sp
	ldrh r6, [r6, #0xc]
	strh r6, [r4, #0x18]
	mov r7, sp
	ldrh r7, [r7, #4]
	strh r7, [r4, #0xa]
	mov r0, ip
	strh r0, [r4, #0x1a]
	mov r1, sp
	ldrh r1, [r1, #8]
	strh r1, [r4, #0xc]
	mov r3, sp
	ldrh r3, [r3, #0x18]
	strh r3, [r4, #0x1c]
	ldr r3, _080370D8 @ =gUnknown_085D583C
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r3, #0x10
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r4, #0xe]
	mov r5, r8
	lsls r0, r5, #2
	add r0, r8
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	strh r0, [r4, #0x1e]
	ldr r0, _080370DC @ =gUnknown_02027F68
	movs r6, #0
	strb r6, [r0, #1]
	ldr r1, _080370E0 @ =gUnknown_03004528
	str r0, [r1]
	str r0, [r1, #4]
	ldr r0, _080370E4 @ =gUnknown_03004520
	mov r7, sp
	ldrh r7, [r7, #0x10]
	strh r7, [r0]
	bl sub_080546BC
	ldr r2, _080370E8 @ =gUnknown_03004504
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r2]
	mov r0, sp
	ldrh r0, [r0, #0x14]
	strh r0, [r2, #2]
	ldr r0, _080370EC @ =gUnknown_0849D3BC
	movs r1, #3
	bl Proc_Start
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080370CC: .4byte gUnknown_03002B5C
_080370D0: .4byte gUnknown_0300450C
_080370D4: .4byte gUnknown_03004580
_080370D8: .4byte gUnknown_085D583C
_080370DC: .4byte gUnknown_02027F68
_080370E0: .4byte gUnknown_03004528
_080370E4: .4byte gUnknown_03004520
_080370E8: .4byte gUnknown_03004504
_080370EC: .4byte gUnknown_0849D3BC

	thumb_func_start sub_080370F0
sub_080370F0: @ 0x080370F0
	push {lr}
	ldr r0, _08037104 @ =sub_08036884
	bl sub_080366D0
	ldr r0, _08037108 @ =sub_080368E8
	bl sub_080366C4
	pop {r0}
	bx r0
	.align 2, 0
_08037104: .4byte sub_08036884
_08037108: .4byte sub_080368E8

	thumb_func_start sub_0803710C
sub_0803710C: @ 0x0803710C
	push {lr}
	ldr r0, _08037120 @ =gUnknown_0849D3BC
	bl sub_0801CB28
	cmp r0, #0
	beq _0803711A
	movs r0, #1
_0803711A:
	pop {r1}
	bx r1
	.align 2, 0
_08037120: .4byte gUnknown_0849D3BC

	thumb_func_start sub_08037124
sub_08037124: @ 0x08037124
	push {lr}
	bl sub_080169E8
	ldr r0, _08037144 @ =gUnknown_08553820
	bl sub_0801537C
	ldr r0, _08037148 @ =gUnknown_0855379C
	bl sub_0801CD14
	ldr r0, _0803714C @ =gUnknown_0849D3BC
	bl sub_0801CD14
	bl sub_08036B34
	pop {r0}
	bx r0
	.align 2, 0
_08037144: .4byte gUnknown_08553820
_08037148: .4byte gUnknown_0855379C
_0803714C: .4byte gUnknown_0849D3BC

	thumb_func_start sub_08037150
sub_08037150: @ 0x08037150
	push {lr}
	adds r1, r0, #0
	ldr r0, _08037168 @ =gUnknown_08124478
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x11
	ldr r2, _0803716C @ =0x06010000
	adds r1, r1, r2
	bl sub_08011CAC
	pop {r0}
	bx r0
	.align 2, 0
_08037168: .4byte gUnknown_08124478
_0803716C: .4byte 0x06010000

	thumb_func_start sub_08037170
sub_08037170: @ 0x08037170
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	ldr r2, _080371E4 @ =0xFFF80000
	adds r0, r0, r2
	lsrs r6, r0, #0x10
	ldr r0, _080371E8 @ =0x000003E7
	cmp r5, r0
	bls _08037196
	adds r5, r0, #0
_08037196:
	ldr r4, _080371EC @ =gUnknown_08090EEC
	mov sb, r4
	movs r0, #0xff
	ands r0, r1
	lsls r7, r0, #0x10
_080371A0:
	ldr r1, _080371F0 @ =0x000001FF
	adds r0, r1, #0
	adds r4, r6, #0
	ands r4, r0
	adds r0, r5, #0
	movs r1, #0xa
	bl DivRem
	adds r3, r0, #0
	lsls r3, r3, #1
	add r3, r8
	movs r2, #0x80
	lsls r2, r2, #5
	adds r3, r3, r2
	adds r0, r4, #0
	lsrs r1, r7, #0x10
	mov r4, sb
	ldr r2, [r4]
	bl sub_0801BD00
	adds r0, r5, #0
	movs r1, #0xa
	bl Div
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080371F4
	adds r0, r6, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _080371A0
	.align 2, 0
_080371E4: .4byte 0xFFF80000
_080371E8: .4byte 0x000003E7
_080371EC: .4byte gUnknown_08090EEC
_080371F0: .4byte 0x000001FF
_080371F4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08037200
sub_08037200: @ 0x08037200
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_08037170
	subs r4, #0x18
	ldr r0, _08037244 @ =0x000001FF
	ands r4, r0
	subs r5, #8
	movs r0, #0xff
	ands r5, r0
	ldr r2, _08037248 @ =gUnknown_0848B698
	ldr r0, _0803724C @ =0x00001014
	adds r6, r6, r0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl sub_0801BD00
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037244: .4byte 0x000001FF
_08037248: .4byte gUnknown_0848B698
_0803724C: .4byte 0x00001014

	thumb_func_start sub_08037250
sub_08037250: @ 0x08037250
	ldr r0, _08037254 @ =gUnknown_080D3FE4
	bx lr
	.align 2, 0
_08037254: .4byte gUnknown_080D3FE4

	thumb_func_start sub_08037258
sub_08037258: @ 0x08037258
	ldr r0, _0803725C @ =gUnknown_080913BC
	bx lr
	.align 2, 0
_0803725C: .4byte gUnknown_080913BC

	thumb_func_start sub_08037260
sub_08037260: @ 0x08037260
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0803739C @ =gUnknown_030030CC
	mov ip, r0
	ldrb r0, [r0]
	movs r4, #8
	rsbs r4, r4, #0
	ands r4, r0
	movs r0, #0x7f
	ands r4, r0
	movs r2, #2
	rsbs r2, r2, #0
	movs r5, #3
	rsbs r5, r5, #0
	movs r6, #5
	rsbs r6, r6, #0
	movs r1, #9
	rsbs r1, r1, #0
	mov r8, r1
	movs r7, #0x11
	rsbs r7, r7, #0
	mov sb, r7
	subs r0, #0xa0
	mov sl, r0
	movs r0, #0
	mov r1, ip
	strb r0, [r1, #1]
	ldr r0, _080373A0 @ =gUnknown_03002B40
	movs r1, #0
	strb r1, [r0]
	ldr r0, _080373A4 @ =gUnknown_03002EFC
	strb r1, [r0]
	ldr r0, _080373A8 @ =gUnknown_03002B4C
	strb r1, [r0]
	ldr r0, _080373AC @ =gUnknown_03002B44
	strb r1, [r0]
	ldr r0, _080373B0 @ =gUnknown_03002B68
	strb r1, [r0]
	ldr r0, _080373B4 @ =gUnknown_03002B30
	strb r1, [r0]
	ldr r0, _080373B8 @ =gUnknown_030024E4
	strb r1, [r0]
	ldr r0, _080373BC @ =gUnknown_030020B8
	strb r1, [r0]
	ldr r3, _080373C0 @ =gUnknown_030030A4
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r7, r8
	ands r0, r7
	mov r1, sb
	ands r0, r1
	strb r0, [r3]
	ldrb r1, [r3, #1]
	adds r0, r2, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	ands r0, r7
	mov r7, sb
	ands r0, r7
	strb r0, [r3, #1]
	ldr r3, _080373C4 @ =gUnknown_030030DC
	ldrb r1, [r3, #1]
	adds r0, r2, #0
	ands r0, r1
	ands r0, r5
	ands r0, r6
	mov r1, r8
	ands r0, r1
	ands r0, r7
	strb r0, [r3, #1]
	ldrb r0, [r3]
	ands r2, r0
	ands r2, r5
	ands r2, r6
	ands r2, r1
	ands r2, r7
	strb r2, [r3]
	movs r0, #0x38
	ands r4, r0
	mov r7, ip
	strb r4, [r7]
	ldr r2, _080373C8 @ =gUnknown_030030E0
	ldrb r1, [r2]
	movs r0, #0x3f
	mov r8, r0
	ands r0, r1
	strb r0, [r2]
	ldr r6, _080373CC @ =gUnknown_03002020
	movs r3, #0
	strh r3, [r6]
	ldr r5, _080373D0 @ =gUnknown_03002B28
	strh r3, [r5]
	ldr r4, _080373D4 @ =gUnknown_03001FFC
	strh r3, [r4]
	ldrh r1, [r2]
	ldr r0, _080373D8 @ =0x0000FFE0
	ands r0, r1
	ldr r1, _080373DC @ =0x0000E0FF
	ands r0, r1
	strh r0, [r2]
	ldrb r1, [r2]
	mov r0, sl
	ands r0, r1
	ldrb r1, [r2, #1]
	mov r7, sl
	ands r7, r1
	strb r7, [r2, #1]
	mov r1, r8
	ands r0, r1
	strb r0, [r2]
	movs r0, #0x10
	strh r0, [r6]
	strh r3, [r5]
	strh r3, [r4]
	ldr r3, _080373E0 @ =gUnknown_03002B6C
	ldrb r1, [r3]
	movs r2, #4
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ands r0, r2
	movs r1, #2
	orrs r0, r1
	movs r1, #3
	orrs r0, r1
	ands r0, r2
	strb r0, [r3]
	ldr r3, _080373E4 @ =gUnknown_03001FE8
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	ldr r3, _080373E8 @ =gUnknown_030030B4
	ldrb r1, [r3]
	adds r0, r2, #0
	ands r0, r1
	strb r0, [r3]
	ldr r1, _080373EC @ =gUnknown_0300251C
	ldrb r0, [r1]
	ands r2, r0
	strb r2, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803739C: .4byte gUnknown_030030CC
_080373A0: .4byte gUnknown_03002B40
_080373A4: .4byte gUnknown_03002EFC
_080373A8: .4byte gUnknown_03002B4C
_080373AC: .4byte gUnknown_03002B44
_080373B0: .4byte gUnknown_03002B68
_080373B4: .4byte gUnknown_03002B30
_080373B8: .4byte gUnknown_030024E4
_080373BC: .4byte gUnknown_030020B8
_080373C0: .4byte gUnknown_030030A4
_080373C4: .4byte gUnknown_030030DC
_080373C8: .4byte gUnknown_030030E0
_080373CC: .4byte gUnknown_03002020
_080373D0: .4byte gUnknown_03002B28
_080373D4: .4byte gUnknown_03001FFC
_080373D8: .4byte 0x0000FFE0
_080373DC: .4byte 0x0000E0FF
_080373E0: .4byte gUnknown_03002B6C
_080373E4: .4byte gUnknown_03001FE8
_080373E8: .4byte gUnknown_030030B4
_080373EC: .4byte gUnknown_0300251C

	thumb_func_start sub_080373F0
sub_080373F0: @ 0x080373F0
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r1, _08037418 @ =gUnknown_03003FC0
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _0803741C
	adds r0, r2, #0
	bl sub_0802490C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r4
	beq _0803743E
	b _08037428
	.align 2, 0
_08037418: .4byte gUnknown_03003FC0
_0803741C:
	adds r0, r2, #0
	subs r0, #0xb7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bhi _0803742C
_08037428:
	movs r0, #0
	b _08037440
_0803742C:
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _0803743E
	adds r0, r3, #0
	bl sub_0803CC64
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08037428
_0803743E:
	movs r0, #1
_08037440:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08037448
sub_08037448: @ 0x08037448
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	bl sub_08026340
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _080374D0 @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	cmp r0, #2
	beq _08037474
	cmp r0, #4
	beq _08037474
	adds r0, r6, #0
	bl sub_0803CA9C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080374E0
_08037474:
	movs r5, #0
	movs r4, #0
	lsls r6, r6, #0x10
	ldr r0, _080374D4 @ =gUnknown_085C77A0
	mov sb, r0
	ldr r0, _080374D8 @ =gUnknown_02027F78
	mov r8, r0
_08037482:
	movs r0, #0x5c
	muls r0, r4, r0
	add r0, sb
	ldrh r1, [r0, #0x1a]
	lsrs r0, r6, #0x10
	cmp r1, r0
	bne _080374AA
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_080373F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080374AA
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	add r1, r8
	strb r4, [r1]
_080374AA:
	cmp r5, #0x31
	bhi _080374B8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xbf
	bls _08037482
_080374B8:
	cmp r5, #0
	beq _080374E0
	ldr r0, _080374DC @ =gUnknown_02027F74
	adds r2, r0, #0
	adds r2, #0x36
	movs r1, #0
	strb r1, [r2]
	subs r1, r5, #1
	adds r0, #0x37
	strb r1, [r0]
	movs r0, #1
	b _080374E2
	.align 2, 0
_080374D0: .4byte gUnknown_03003FC0
_080374D4: .4byte gUnknown_085C77A0
_080374D8: .4byte gUnknown_02027F78
_080374DC: .4byte gUnknown_02027F74
_080374E0:
	movs r0, #0
_080374E2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080374F0
sub_080374F0: @ 0x080374F0
	ldr r0, _08037504 @ =gUnknown_02027F74
	adds r2, r0, #0
	adds r2, #0x36
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x37
	movs r1, #0xff
	strb r1, [r0]
	bx lr
	.align 2, 0
_08037504: .4byte gUnknown_02027F74

	thumb_func_start sub_08037508
sub_08037508: @ 0x08037508
	movs r1, #0
	ldr r3, _08037534 @ =gUnknown_02027F78
_0803750C:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r3
	adds r1, #0x6c
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x29
	ble _0803750C
	ldr r0, _08037538 @ =gUnknown_02027F74
	adds r2, r0, #0
	adds r2, #0x36
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x37
	movs r1, #0xff
	strb r1, [r0]
	bx lr
	.align 2, 0
_08037534: .4byte gUnknown_02027F78
_08037538: .4byte gUnknown_02027F74

	thumb_func_start sub_0803753C
sub_0803753C: @ 0x0803753C
	movs r1, #0
	ldr r3, _08037568 @ =gUnknown_02027F78
_08037540:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r3
	adds r1, #1
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x6a
	ble _08037540
	ldr r0, _0803756C @ =gUnknown_02027F74
	adds r2, r0, #0
	adds r2, #0x36
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x37
	movs r1, #0x6a
	strb r1, [r0]
	bx lr
	.align 2, 0
_08037568: .4byte gUnknown_02027F78
_0803756C: .4byte gUnknown_02027F74

	thumb_func_start sub_08037570
sub_08037570: @ 0x08037570
	movs r1, #0
	ldr r3, _0803759C @ =gUnknown_02027F78
_08037574:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r3
	adds r1, #1
	strb r1, [r2]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x6a
	ble _08037574
	ldr r0, _080375A0 @ =gUnknown_02027F74
	adds r2, r0, #0
	adds r2, #0x36
	movs r1, #0
	strb r1, [r2]
	adds r0, #0x37
	movs r1, #0x6a
	strb r1, [r0]
	bx lr
	.align 2, 0
_0803759C: .4byte gUnknown_02027F78
_080375A0: .4byte gUnknown_02027F74

	thumb_func_start sub_080375A4
sub_080375A4: @ 0x080375A4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _080375B8 @ =gUnknown_08090EF0
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08037448
	pop {r0}
	bx r0
	.align 2, 0
_080375B8: .4byte gUnknown_08090EF0

	thumb_func_start sub_080375BC
sub_080375BC: @ 0x080375BC
	push {lr}
	bl sub_08013C54
	bl sub_08013AFC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080375CC
sub_080375CC: @ 0x080375CC
	movs r1, #0
	strh r1, [r0, #0x1e]
	bx lr
	.align 2, 0

	thumb_func_start sub_080375D4
sub_080375D4: @ 0x080375D4
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x1e]
	adds r0, r1, #1
	strh r0, [r2, #0x1e]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #1
	beq _080375FE
	cmp r0, #1
	bgt _080375F0
	cmp r0, #0
	beq _080375F6
	b _0803760C
_080375F0:
	cmp r0, #0x16
	beq _08037606
	b _0803760C
_080375F6:
	ldr r0, [r2, #0x18]
	bl sub_0801B6EC
	b _0803760C
_080375FE:
	ldr r0, [r2, #0x18]
	bl sub_0801B6FC
	b _0803760C
_08037606:
	ldr r0, [r2, #0x18]
	bl sub_08037A78
_0803760C:
	pop {r0}
	bx r0

	thumb_func_start sub_08037610
sub_08037610: @ 0x08037610
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08037624 @ =gUnknown_0849D41C
	movs r1, #0
	bl sub_080152EC
	str r4, [r0, #0x18]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037624: .4byte gUnknown_0849D41C

	thumb_func_start sub_08037628
sub_08037628: @ 0x08037628
	push {lr}
	ldr r0, _08037634 @ =gUnknown_0849D41C
	bl sub_0801537C
	pop {r0}
	bx r0
	.align 2, 0
_08037634: .4byte gUnknown_0849D41C

	thumb_func_start sub_08037638
sub_08037638: @ 0x08037638
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	mov r8, r3
	ldr r0, _08037670 @ =sub_08037790
	bl sub_08011B34
	ldr r0, _08037674 @ =0x000003FF
	ands r0, r5
	lsls r0, r0, #5
	adds r0, r4, r0
	bl sub_08037610
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	mov r3, r8
	bl sub_0803768C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08037670: .4byte sub_08037790
_08037674: .4byte 0x000003FF

	thumb_func_start sub_08037678
sub_08037678: @ 0x08037678
	push {lr}
	ldr r0, _08037688 @ =sub_08037790
	bl sub_08011B5C
	bl sub_08037628
	pop {r0}
	bx r0
	.align 2, 0
_08037688: .4byte sub_08037790

	thumb_func_start sub_0803768C
sub_0803768C: @ 0x0803768C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	adds r4, r3, #0
	ldr r0, _080376D0 @ =gUnknown_0300057C
	str r4, [r0]
	ldr r0, _080376D4 @ =gUnknown_081253F0
	lsls r1, r4, #0x15
	lsrs r1, r1, #0x10
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _080376D8 @ =0x000003FF
	ands r0, r6
	lsls r0, r0, #5
	adds r5, r5, r0
	adds r0, r5, #0
	bl sub_080377C4
	lsls r4, r4, #0xc
	orrs r4, r6
	mov r0, r8
	adds r1, r4, #0
	bl sub_08037A20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080376D0: .4byte gUnknown_0300057C
_080376D4: .4byte gUnknown_081253F0
_080376D8: .4byte 0x000003FF

	thumb_func_start sub_080376DC
sub_080376DC: @ 0x080376DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r7, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r0, _08037744 @ =gUnknown_0300057C
	str r4, [r0]
	ldr r0, _08037748 @ =gUnknown_081253F0
	lsls r1, r4, #0x15
	lsrs r1, r1, #0x10
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _0803774C @ =0x000003FF
	ands r0, r5
	lsls r0, r0, #5
	adds r6, r6, r0
	adds r0, r6, #0
	bl sub_0801B6EC
	adds r0, r6, #0
	bl sub_0801B6FC
	mov r0, r8
	mov r1, sb
	adds r2, r7, #0
	bl sub_08013D00
	lsls r4, r4, #0xc
	orrs r4, r5
	adds r1, r4, #0
	bl sub_08037A20
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	bl sub_08013AD4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037744: .4byte gUnknown_0300057C
_08037748: .4byte gUnknown_081253F0
_0803774C: .4byte 0x000003FF

	thumb_func_start sub_08037750
sub_08037750: @ 0x08037750
	push {lr}
	adds r1, r0, #0
	ldr r0, _08037774 @ =gUnknown_0300057C
	str r1, [r0]
	ldr r0, _08037778 @ =gUnknown_081253F0
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x10
	movs r2, #0x20
	bl sub_08013618
	ldr r0, _0803777C @ =sub_08037790
	bl sub_08011B34
	bl sub_0803D6B8
	pop {r0}
	bx r0
	.align 2, 0
_08037774: .4byte gUnknown_0300057C
_08037778: .4byte gUnknown_081253F0
_0803777C: .4byte sub_08037790

	thumb_func_start sub_08037780
sub_08037780: @ 0x08037780
	push {lr}
	ldr r0, _0803778C @ =sub_08037790
	bl sub_08011B5C
	pop {r0}
	bx r0
	.align 2, 0
_0803778C: .4byte sub_08037790

	thumb_func_start sub_08037790
sub_08037790: @ 0x08037790
	push {lr}
	ldr r0, _080377B8 @ =gUnknown_03004008
	ldr r0, [r0]
	movs r1, #0x3c
	ands r0, r1
	lsrs r0, r0, #1
	ldr r1, _080377BC @ =gUnknown_08125410
	adds r0, r0, r1
	ldr r1, _080377C0 @ =gUnknown_0300057C
	ldr r1, [r1]
	lsls r1, r1, #5
	adds r1, #0x1c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #2
	bl sub_0801368C
	pop {r0}
	bx r0
	.align 2, 0
_080377B8: .4byte gUnknown_03004008
_080377BC: .4byte gUnknown_08125410
_080377C0: .4byte gUnknown_0300057C

	thumb_func_start sub_080377C4
sub_080377C4: @ 0x080377C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	ldr r0, _08037888 @ =0x00000A14
	bl sub_08014E44
	bl sub_08037B84
	ldr r3, _0803788C @ =gUnknown_08090EF8
	ldr r1, [r3]
	ldr r2, [r1]
	ldr r4, _08037890 @ =gUnknown_08499590
	ldr r0, [r4]
	ldrh r0, [r0]
	strb r0, [r2]
	ldr r1, [r1]
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	strb r0, [r1, #1]
	movs r1, #0
	ldr r0, [r4]
	ldrh r0, [r0, #2]
	cmp r1, r0
	bge _0803784A
	adds r6, r4, #0
_080377FE:
	movs r4, #0
	ldr r0, [r6]
	adds r2, r1, #1
	str r2, [sp]
	ldrh r0, [r0]
	cmp r4, r0
	bge _08037840
	ldr r7, _08037894 @ =gUnknown_03003F68
	mov sb, r7
	lsls r5, r1, #1
	ldr r0, _08037898 @ =0x0000417A
	mov r8, r0
	ldr r1, _0803789C @ =0x00000A22
	mov ip, r1
_0803781A:
	mov r7, sb
	ldr r2, [r7]
	ldr r3, [r6]
	mov r1, r8
	adds r0, r3, r1
	adds r0, r0, r5
	ldrh r1, [r0]
	adds r1, r1, r4
	lsls r1, r1, #1
	adds r2, r2, r1
	mov r7, ip
	adds r0, r3, r7
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r2, #2]
	adds r4, #1
	ldrh r3, [r3]
	cmp r4, r3
	blt _0803781A
_08037840:
	ldr r1, [sp]
	ldr r0, [r6]
	ldrh r0, [r0, #2]
	cmp r1, r0
	blt _080377FE
_0803784A:
	mov r0, sl
	bl sub_0801B6EC
	mov r0, sl
	bl sub_0801B6FC
	ldr r2, _080378A0 @ =gUnknown_03001FF8
	ldr r0, _08037894 @ =gUnknown_03003F68
	ldr r0, [r0]
	ldrb r1, [r0]
	lsls r1, r1, #2
	subs r1, #0xf0
	asrs r1, r1, #1
	strh r1, [r2]
	ldr r2, _080378A4 @ =gUnknown_03001418
	ldrb r1, [r0, #1]
	lsls r1, r1, #2
	subs r1, #0xa0
	asrs r1, r1, #1
	strh r1, [r2]
	bl sub_08014ED4
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037888: .4byte 0x00000A14
_0803788C: .4byte gUnknown_08090EF8
_08037890: .4byte gUnknown_08499590
_08037894: .4byte gUnknown_03003F68
_08037898: .4byte 0x0000417A
_0803789C: .4byte 0x00000A22
_080378A0: .4byte gUnknown_03001FF8
_080378A4: .4byte gUnknown_03001418

	thumb_func_start sub_080378A8
sub_080378A8: @ 0x080378A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	movs r0, #0
	mov r8, r0
	ldr r0, _08037938 @ =gUnknown_02027F74
	mov r1, r8
	strb r1, [r0, #3]
	strb r1, [r0, #2]
	strb r1, [r0]
	strb r1, [r0, #1]
	ldr r2, _0803793C @ =gUnknown_03003F68
	ldr r1, [r2]
	ldrb r6, [r1]
	ldrb r3, [r1, #1]
	str r3, [sp, #4]
	cmp r6, #0x20
	bls _080378D6
	movs r6, #0x20
_080378D6:
	ldr r7, [sp, #4]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bls _080378E4
	movs r0, #0x20
	str r0, [sp, #4]
_080378E4:
	ldrb r0, [r1]
	subs r0, r0, r6
	lsrs r0, r0, #1
	mov r8, r0
	movs r1, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080378F8
	adds r6, #1
_080378F8:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _08037906
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
_08037906:
	movs r3, #0
	mov ip, r3
	ldr r7, [sp, #4]
	cmp ip, r7
	bhs _080379FE
_08037910:
	movs r4, #0
	movs r0, #1
	add r0, ip
	mov sl, r0
	cmp r4, r6
	bhs _080379E8
	ldr r3, _08037938 @ =gUnknown_02027F74
	ldr r1, _08037940 @ =gUnknown_0849D474
	mov sb, r1
	ldr r2, _0803793C @ =gUnknown_03003F68
	ldr r5, [r2]
_08037926:
	ldrb r7, [r5]
	cmp r4, r7
	bhs _08037932
	ldrb r0, [r5, #1]
	cmp ip, r0
	blo _08037948
_08037932:
	ldr r2, _08037944 @ =gUnknown_0849D434
	b _080379B4
	.align 2, 0
_08037938: .4byte gUnknown_02027F74
_0803793C: .4byte gUnknown_03003F68
_08037940: .4byte gUnknown_0849D474
_08037944: .4byte gUnknown_0849D434
_08037948:
	mov r1, r8
	adds r0, r1, r4
	lsls r0, r0, #1
	adds r0, r5, r0
	ldrh r1, [r0, #2]
	ldr r2, _08037970 @ =gUnknown_0849959C
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r1, [r0]
	lsrs r2, r1, #5
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0xa
	beq _0803798C
	cmp r0, #0xa
	bhi _08037974
	cmp r0, #6
	beq _08037984
	b _0803799A
	.align 2, 0
_08037970: .4byte gUnknown_0849959C
_08037974:
	cmp r0, #0xb
	beq _08037994
	cmp r0, #0xe
	bne _0803799A
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	b _0803799A
_08037984:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _0803799A
_0803798C:
	ldrb r0, [r3, #2]
	adds r0, #1
	strb r0, [r3, #2]
	b _0803799A
_08037994:
	ldrb r0, [r3, #3]
	adds r0, #1
	strb r0, [r3, #3]
_0803799A:
	movs r0, #0x1f
	ands r1, r0
	lsls r0, r1, #1
	ldr r7, _08037A10 @ =gUnknown_0849D3DC
	adds r0, r0, r7
	ldrh r0, [r0]
	adds r0, r0, r2
	lsls r0, r0, #1
	add r0, sb
	ldrh r0, [r0]
	lsls r0, r0, #1
	ldr r1, _08037A14 @ =gUnknown_080A0F38
	adds r2, r0, r1
_080379B4:
	lsls r0, r4, #1
	add r0, sb
	ldrh r1, [r0]
	lsls r1, r1, #1
	ldr r7, [sp]
	adds r1, r7, r1
	mov r7, ip
	lsls r0, r7, #1
	ldr r7, _08037A18 @ =gUnknown_0849D4F4
	adds r0, r0, r7
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r2, #4]
	strh r0, [r1, #4]
	ldrh r0, [r2, #8]
	strh r0, [r1, #8]
	ldrh r0, [r2, #0xc]
	strh r0, [r1, #0xc]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _08037926
_080379E8:
	ldr r1, _08037A1C @ =gUnknown_03003F68
	ldr r0, [r1]
	ldrb r0, [r0]
	add r8, r0
	mov r2, sl
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r3, [sp, #4]
	cmp ip, r3
	blo _08037910
_080379FE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037A10: .4byte gUnknown_0849D3DC
_08037A14: .4byte gUnknown_080A0F38
_08037A18: .4byte gUnknown_0849D4F4
_08037A1C: .4byte gUnknown_03003F68

	thumb_func_start sub_08037A20
sub_08037A20: @ 0x08037A20
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	adds r6, r1, #0
	ldr r0, _08037A74 @ =gUnknown_03003F68
	ldr r2, [r0]
	ldrb r0, [r2]
	adds r3, r0, #1
	movs r1, #2
	rsbs r1, r1, #0
	ands r3, r1
	ldrb r0, [r2, #1]
	adds r0, #1
	ands r0, r1
	movs r4, #0
	movs r1, #0
	lsls r0, r0, #3
	cmp r1, r0
	bge _08037A6C
	asrs r5, r3, #1
	adds r7, r0, #0
_08037A48:
	adds r3, r1, #0
	adds r3, #0x10
	cmp r5, #0
	beq _08037A66
	lsls r0, r1, #2
	mov r2, ip
	adds r1, r0, r2
	adds r2, r5, #0
_08037A58:
	adds r0, r6, r4
	strh r0, [r1]
	adds r4, #1
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _08037A58
_08037A66:
	adds r1, r3, #0
	cmp r1, r7
	blt _08037A48
_08037A6C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037A74: .4byte gUnknown_03003F68

	thumb_func_start sub_08037A78
sub_08037A78: @ 0x08037A78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	str r0, [sp]
	movs r0, #0
	ldr r2, _08037B64 @ =gUnknown_08499590
	ldr r1, [r2]
	ldrh r3, [r1, #2]
	cmp r0, r3
	bge _08037B54
	str r1, [sp, #0xc]
	ldr r4, _08037B68 @ =gUnknown_0849D534
	mov sb, r4
_08037A98:
	movs r7, #0
	adds r5, r0, #1
	str r5, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldrh r1, [r1]
	cmp r7, r1
	bge _08037B4A
	ldr r2, _08037B64 @ =gUnknown_08499590
	ldr r2, [r2]
	mov ip, r2
	lsls r0, r0, #1
	mov sl, r0
	mov r3, ip
	adds r3, #0x12
	str r3, [sp, #8]
	ldr r0, _08037B6C @ =0x0000417A
	add r0, ip
	add r0, sl
	str r0, [sp, #4]
	ldr r4, _08037B70 @ =gUnknown_03004010
	mov r8, r4
_08037AC2:
	ldr r5, [sp, #4]
	ldrh r0, [r5]
	adds r0, r0, r7
	ldr r1, [sp, #8]
	adds r0, r1, r0
	ldrb r0, [r0]
	cmp r0, #0
	beq _08037B3C
	lsrs r0, r0, #6
	adds r0, #1
	ldr r2, _08037B74 @ =gUnknown_030040F8
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r0, #0x12
	lsls r0, r0, #1
	ldr r3, _08037B78 @ =gUnknown_08582E74
	adds r0, r0, r3
	ldrh r6, [r0]
	lsls r6, r6, #1
	ldr r4, _08037B7C @ =gUnknown_080A0F38
	adds r6, r6, r4
	mov r5, r8
	ldrh r1, [r5]
	lsls r1, r1, #1
	ldr r0, [sp]
	adds r1, r0, r1
	ldr r0, _08037B80 @ =gUnknown_030032E0
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	mov r3, sb
	ldrh r2, [r3]
	ands r2, r0
	strh r2, [r1]
	ldrh r0, [r1, #4]
	ldrh r3, [r3, #2]
	ands r3, r0
	strh r3, [r1, #4]
	ldrh r0, [r1, #8]
	mov r5, sb
	ldrh r4, [r5, #4]
	ands r4, r0
	strh r4, [r1, #8]
	ldrh r5, [r5, #6]
	ldrh r0, [r1, #0xc]
	ands r5, r0
	strh r5, [r1, #0xc]
	ldrh r0, [r6]
	orrs r2, r0
	strh r2, [r1]
	ldrh r0, [r6, #4]
	orrs r3, r0
	strh r3, [r1, #4]
	ldrh r0, [r6, #8]
	orrs r4, r0
	strh r4, [r1, #8]
	ldrh r0, [r6, #0xc]
	orrs r5, r0
	strh r5, [r1, #0xc]
_08037B3C:
	movs r1, #2
	add r8, r1
	adds r7, #1
	mov r2, ip
	ldrh r2, [r2]
	cmp r7, r2
	blt _08037AC2
_08037B4A:
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldrh r3, [r3, #2]
	cmp r0, r3
	blt _08037A98
_08037B54:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037B64: .4byte gUnknown_08499590
_08037B68: .4byte gUnknown_0849D534
_08037B6C: .4byte 0x0000417A
_08037B70: .4byte gUnknown_03004010
_08037B74: .4byte gUnknown_030040F8
_08037B78: .4byte gUnknown_08582E74
_08037B7C: .4byte gUnknown_080A0F38
_08037B80: .4byte gUnknown_030032E0

	thumb_func_start sub_08037B84
sub_08037B84: @ 0x08037B84
	ldr r1, _08037B8C @ =gUnknown_03003F68
	str r0, [r1]
	bx lr
	.align 2, 0
_08037B8C: .4byte gUnknown_03003F68

	thumb_func_start sub_08037B90
sub_08037B90: @ 0x08037B90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	movs r3, #0
	ldr r5, _08037C28 @ =gUnknown_0849957C
	movs r4, #0
	ldr r2, _08037C2C @ =0x000003FF
_08037BA0:
	ldr r0, [r5]
	lsls r1, r3, #1
	adds r1, r1, r0
	strh r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r2
	bls _08037BA0
	ldr r0, _08037C30 @ =gUnknown_03003F68
	ldr r0, [r0]
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	cmp r1, #0x20
	bls _08037BC0
	movs r1, #0x20
_08037BC0:
	cmp r2, #0x20
	bls _08037BC6
	movs r2, #0x20
_08037BC6:
	movs r3, #0
	adds r0, r1, #1
	asrs r1, r0, #1
	cmp r3, r1
	bge _08037C18
	adds r2, #1
	mov ip, r2
	asrs r0, r2, #1
	lsls r0, r0, #4
	mov sb, r0
	mov r8, r1
_08037BDC:
	movs r2, #0
	adds r5, r3, #1
	cmp r2, sb
	bge _08037C10
	ldr r7, _08037C28 @ =gUnknown_0849957C
	movs r0, #0x80
	lsls r0, r0, #5
	adds r6, r0, #0
	mov r1, ip
	asrs r0, r1, #1
	lsls r4, r0, #4
_08037BF2:
	lsls r1, r2, #1
	adds r1, r1, r3
	ldr r0, [r7]
	lsls r1, r1, #1
	adds r1, r1, r0
	adds r0, r2, #1
	adds r0, r3, r0
	adds r0, r0, r6
	strh r0, [r1]
	adds r0, r2, #0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r4
	blt _08037BF2
_08037C10:
	lsls r0, r5, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r8
	blt _08037BDC
_08037C18:
	bl sub_08013AFC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08037C28: .4byte gUnknown_0849957C
_08037C2C: .4byte 0x000003FF
_08037C30: .4byte gUnknown_03003F68

	thumb_func_start sub_08037C34
sub_08037C34: @ 0x08037C34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r0, _08037C94 @ =gUnknown_02027F74
	strb r6, [r0, #1]
	strb r6, [r0]
	strb r6, [r0, #2]
	strb r6, [r0, #3]
	movs r1, #0
	ldr r0, _08037C98 @ =gUnknown_03003F68
	ldr r2, [r0]
	ldrb r3, [r2, #1]
	cmp r1, r3
	bhs _08037CE8
	mov ip, r0
	mov r8, r2
	mov sl, ip
	ldr r0, _08037C9C @ =gUnknown_0849959C
	mov sb, r0
_08037C60:
	movs r3, #0
	adds r7, r1, #1
	mov r1, r8
	ldrb r1, [r1]
	cmp r3, r1
	bhs _08037CD2
	mov r0, sl
	ldr r4, [r0]
	mov r1, sb
	ldr r5, [r1]
	ldr r2, _08037C94 @ =gUnknown_02027F74
_08037C76:
	adds r0, r6, r3
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r0, [r0, #2]
	adds r0, r5, r0
	ldrb r0, [r0]
	movs r1, #0x1f
	ands r1, r0
	cmp r1, #0xa
	beq _08037CB8
	cmp r1, #0xa
	bgt _08037CA0
	cmp r1, #6
	beq _08037CB0
	b _08037CC6
	.align 2, 0
_08037C94: .4byte gUnknown_02027F74
_08037C98: .4byte gUnknown_03003F68
_08037C9C: .4byte gUnknown_0849959C
_08037CA0:
	cmp r1, #0xb
	beq _08037CC0
	cmp r1, #0xe
	bne _08037CC6
	ldrb r0, [r2, #1]
	adds r0, #1
	strb r0, [r2, #1]
	b _08037CC6
_08037CB0:
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	b _08037CC6
_08037CB8:
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	b _08037CC6
_08037CC0:
	ldrb r0, [r2, #3]
	adds r0, #1
	strb r0, [r2, #3]
_08037CC6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r0, [r4]
	cmp r3, r0
	blo _08037C76
_08037CD2:
	mov r1, ip
	ldr r0, [r1]
	ldrb r1, [r0]
	adds r1, r6, r1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	ldrb r0, [r0, #1]
	cmp r1, r0
	blo _08037C60
_08037CE8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08037CF8
sub_08037CF8: @ 0x08037CF8
	push {lr}
	ldrh r0, [r0, #0x1e]
	bl sub_080247A4
	ldr r0, _08037D44 @ =0x06000020
	bl sub_080378A8
	bl sub_08037B90
	ldr r2, _08037D48 @ =gUnknown_03002B34
	ldr r0, _08037D4C @ =gUnknown_03003F68
	ldr r1, [r0]
	ldrb r0, [r1]
	lsls r0, r0, #1
	subs r0, #0xa8
	strh r0, [r2]
	ldr r2, _08037D50 @ =gUnknown_03002F18
	ldrb r0, [r1, #1]
	lsls r0, r0, #1
	subs r0, #0x60
	strh r0, [r2]
	ldr r1, _08037D54 @ =gUnknown_03002B40
	movs r0, #0x5d
	strb r0, [r1]
	ldr r1, _08037D58 @ =gUnknown_03002B4C
	movs r0, #0xf0
	strb r0, [r1]
	ldr r1, _08037D5C @ =gUnknown_03002EFC
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08037D60 @ =gUnknown_03002B44
	movs r0, #0xa0
	strb r0, [r1]
	bl sub_0802481C
	pop {r0}
	bx r0
	.align 2, 0
_08037D44: .4byte 0x06000020
_08037D48: .4byte gUnknown_03002B34
_08037D4C: .4byte gUnknown_03003F68
_08037D50: .4byte gUnknown_03002F18
_08037D54: .4byte gUnknown_03002B40
_08037D58: .4byte gUnknown_03002B4C
_08037D5C: .4byte gUnknown_03002EFC
_08037D60: .4byte gUnknown_03002B44

	thumb_func_start sub_08037D64
sub_08037D64: @ 0x08037D64
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r0, _08037D7C @ =gUnknown_0849D53C
	movs r1, #0
	bl sub_080152EC
	strh r4, [r0, #0x1e]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037D7C: .4byte gUnknown_0849D53C

	thumb_func_start sub_08037D80
sub_08037D80: @ 0x08037D80
	adds r1, r0, #0
	cmp r1, #0xc7
	bgt _08037D8A
	movs r0, #2
	b _08037DA2
_08037D8A:
	cmp r1, #0xf9
	bgt _08037D92
	movs r0, #3
	b _08037DA2
_08037D92:
	ldr r0, _08037D9C @ =0x00000117
	cmp r1, r0
	ble _08037DA0
	movs r0, #5
	b _08037DA2
	.align 2, 0
_08037D9C: .4byte 0x00000117
_08037DA0:
	movs r0, #4
_08037DA2:
	bx lr

	thumb_func_start sub_08037DA4
sub_08037DA4: @ 0x08037DA4
	adds r1, r0, #0
	cmp r1, #0xc7
	bgt _08037DAE
	movs r0, #2
	b _08037DC6
_08037DAE:
	cmp r1, #0xf9
	bgt _08037DB6
	movs r0, #3
	b _08037DC6
_08037DB6:
	ldr r0, _08037DC0 @ =0x00000117
	cmp r1, r0
	ble _08037DC4
	movs r0, #5
	b _08037DC6
	.align 2, 0
_08037DC0: .4byte 0x00000117
_08037DC4:
	movs r0, #4
_08037DC6:
	bx lr

	thumb_func_start sub_08037DC8
sub_08037DC8: @ 0x08037DC8
	push {r4, lr}
	ldr r0, _08037E34 @ =gUnknown_0849D16C
	bl sub_08012C58
	bl sub_0801295C
	bl sub_080128D0
	ldr r0, _08037E38 @ =gUnknown_08499578
	ldr r0, [r0]
	ldr r1, _08037E3C @ =0x06007000
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08037E40 @ =gUnknown_0849957C
	ldr r0, [r0]
	ldr r1, _08037E44 @ =0x0600F000
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08037E48 @ =gUnknown_08499580
	ldr r0, [r0]
	ldr r1, _08037E4C @ =0x06007800
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08037E50 @ =gUnknown_08499584
	ldr r0, [r0]
	ldr r1, _08037E54 @ =0x0600F800
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08037E58 @ =gUnknown_080A0F38
	ldr r1, _08037E5C @ =0x06000020
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_08011C68
	ldr r0, _08037E60 @ =gUnknown_080A1138
	movs r1, #0x20
	movs r2, #0x20
	bl sub_08013618
	bl sub_08022A34
	movs r0, #0
	bl sub_0801A5B0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037E34: .4byte gUnknown_0849D16C
_08037E38: .4byte gUnknown_08499578
_08037E3C: .4byte 0x06007000
_08037E40: .4byte gUnknown_0849957C
_08037E44: .4byte 0x0600F000
_08037E48: .4byte gUnknown_08499580
_08037E4C: .4byte 0x06007800
_08037E50: .4byte gUnknown_08499584
_08037E54: .4byte 0x0600F800
_08037E58: .4byte gUnknown_080A0F38
_08037E5C: .4byte 0x06000020
_08037E60: .4byte gUnknown_080A1138

	thumb_func_start sub_08037E64
sub_08037E64: @ 0x08037E64
	push {lr}
	ldr r0, _08037E84 @ =gUnknown_03003FC0
	ldrb r0, [r0, #1]
	bl sub_080375A4
	bl sub_08037DC8
	ldr r0, _08037E88 @ =sub_080368E8
	bl sub_080366C4
	ldr r0, _08037E8C @ =sub_08036884
	bl sub_080366D0
	pop {r0}
	bx r0
	.align 2, 0
_08037E84: .4byte gUnknown_03003FC0
_08037E88: .4byte sub_080368E8
_08037E8C: .4byte sub_08036884

	thumb_func_start sub_08037E90
sub_08037E90: @ 0x08037E90
	push {r4, lr}
	ldr r0, _08037EEC @ =gUnknown_0849D16C
	bl sub_08012C58
	bl sub_0801295C
	bl sub_080128D0
	ldr r0, _08037EF0 @ =gUnknown_08499578
	ldr r0, [r0]
	ldr r1, _08037EF4 @ =0x06007000
	movs r4, #0x80
	lsls r4, r4, #4
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08037EF8 @ =gUnknown_0849957C
	ldr r0, [r0]
	ldr r1, _08037EFC @ =0x0600F000
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08037F00 @ =gUnknown_08499580
	ldr r0, [r0]
	ldr r1, _08037F04 @ =0x06007800
	adds r2, r4, #0
	bl sub_08011C68
	ldr r0, _08037F08 @ =gUnknown_08499584
	ldr r0, [r0]
	ldr r1, _08037F0C @ =0x0600F800
	adds r2, r4, #0
	bl sub_08011C68
	bl sub_08022A34
	ldr r0, _08037F10 @ =sub_080368E8
	bl sub_080366C4
	ldr r0, _08037F14 @ =sub_08036884
	bl sub_080366D0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037EEC: .4byte gUnknown_0849D16C
_08037EF0: .4byte gUnknown_08499578
_08037EF4: .4byte 0x06007000
_08037EF8: .4byte gUnknown_0849957C
_08037EFC: .4byte 0x0600F000
_08037F00: .4byte gUnknown_08499580
_08037F04: .4byte 0x06007800
_08037F08: .4byte gUnknown_08499584
_08037F0C: .4byte 0x0600F800
_08037F10: .4byte sub_080368E8
_08037F14: .4byte sub_08036884

	thumb_func_start sub_08037F18
sub_08037F18: @ 0x08037F18
	bx lr
	.align 2, 0

	thumb_func_start sub_08037F1C
sub_08037F1C: @ 0x08037F1C
	push {lr}
	ldr r2, _08037F4C @ =gUnknown_03004008
	ldr r0, [r2]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08037F32
	ldr r1, _08037F50 @ =gUnknown_0300200C
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
_08037F32:
	ldr r0, [r2]
	movs r1, #3
	bl DivRem
	cmp r0, #0
	bne _08037F46
	ldr r1, _08037F54 @ =gUnknown_03002000
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
_08037F46:
	pop {r0}
	bx r0
	.align 2, 0
_08037F4C: .4byte gUnknown_03004008
_08037F50: .4byte gUnknown_0300200C
_08037F54: .4byte gUnknown_03002000

	thumb_func_start sub_08037F58
sub_08037F58: @ 0x08037F58
	push {lr}
	bl sub_08037F18
	ldr r0, _08037F6C @ =gUnknown_0849D55C
	movs r1, #0
	bl sub_080152C0
	pop {r0}
	bx r0
	.align 2, 0
_08037F6C: .4byte gUnknown_0849D55C

	thumb_func_start sub_08037F70
sub_08037F70: @ 0x08037F70
	push {lr}
	ldr r0, _08037F7C @ =gUnknown_0849D55C
	bl sub_0801537C
	pop {r0}
	bx r0
	.align 2, 0
_08037F7C: .4byte gUnknown_0849D55C

	thumb_func_start sub_08037F80
sub_08037F80: @ 0x08037F80
	push {lr}
	ldr r0, _08037F90 @ =gUnknown_0849D56C
	movs r1, #3
	bl Proc_Start
	pop {r0}
	bx r0
	.align 2, 0
_08037F90: .4byte gUnknown_0849D56C

	thumb_func_start sub_08037F94
sub_08037F94: @ 0x08037F94
	push {r4, lr}
	adds r4, r1, #0
	bl sub_0801237C
	bl sub_08012358
	ldr r0, _08037FB0 @ =gUnknown_08615CB0
	adds r1, r4, #0
	bl Proc_StartBlocking
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08037FB0: .4byte gUnknown_08615CB0

	thumb_func_start sub_08037FB4
sub_08037FB4: @ 0x08037FB4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0801237C
	bl sub_08012358
	movs r0, #1
	adds r1, r4, #0
	bl sub_08049F08
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08037FD0
sub_08037FD0: @ 0x08037FD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	movs r6, #1
_08037FE0:
	lsls r0, r6, #0x18
	lsrs r4, r0, #0x18
	adds r0, r4, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08037FFA
	ldr r0, _0803804C @ =gUnknown_03003FC0
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	bl sub_080265D0
_08037FFA:
	adds r6, #1
	cmp r6, #4
	ble _08037FE0
	bl sub_08026520
	bl sub_0807A908
	ldr r7, _08038050 @ =gUnknown_08499598
	ldr r2, [r7]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrb r6, [r1, #0x1d]
	ldr r4, _0803804C @ =gUnknown_03003FC0
	ldrb r5, [r4, #2]
	bl sub_0807A908
	ldr r2, [r7]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r2, [r1, #0x38]
	ldr r0, _08038054 @ =gUnknown_03004080
	ldrh r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08017720
	bl sub_08030574
	ldrb r0, [r4, #1]
	cmp r0, #0
	bge _08038042
	b _080381AE
_08038042:
	cmp r0, #2
	ble _08038058
	cmp r0, #3
	beq _0803806A
	b _080381AE
	.align 2, 0
_0803804C: .4byte gUnknown_03003FC0
_08038050: .4byte gUnknown_08499598
_08038054: .4byte gUnknown_03004080
_08038058:
	movs r0, #1
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08038066
	b _0803817E
_08038066:
	movs r0, #1
	b _080381A0
_0803806A:
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #8]
	str r0, [sp, #4]
	str r1, [sp]
	mov sl, r1
	movs r6, #1
	ldr r0, [r7]
	movs r1, #0x3c
	mov sb, r1
	adds r2, r0, #0
	adds r2, #0x50
_08038084:
	ldrb r0, [r2, #7]
	cmp r0, #0
	beq _080380D6
	ldrh r0, [r2]
	cmp r0, #0
	bne _080380D0
	movs r4, #1
	ldr r0, _080380C4 @ =gUnknown_08499598
	mov ip, r0
	mov r7, sb
	movs r5, #0x3c
_0803809A:
	cmp r6, r4
	beq _080380C8
	mov r1, ip
	ldr r3, [r1]
	adds r1, r5, r3
	ldrb r0, [r1, #0x1b]
	cmp r0, #0
	beq _080380C8
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	bne _080380C8
	adds r0, r7, r3
	adds r0, #0x2a
	adds r1, #0x2a
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _080380C8
	movs r0, #1
	mov sl, r0
	b _080380D0
	.align 2, 0
_080380C4: .4byte gUnknown_08499598
_080380C8:
	adds r5, #0x3c
	adds r4, #1
	cmp r4, #4
	ble _0803809A
_080380D0:
	mov r1, sl
	cmp r1, #1
	beq _0803817E
_080380D6:
	movs r0, #0x3c
	add sb, r0
	adds r2, #0x3c
	adds r6, #1
	cmp r6, #4
	ble _08038084
	mov r1, sl
	cmp r1, #1
	beq _0803817E
	movs r5, #0x80
	lsls r5, r5, #0x11
	movs r7, #0x3c
	movs r6, #3
_080380F0:
	ldr r0, _08038108 @ =gUnknown_08499598
	ldr r0, [r0]
	adds r0, r7, r0
	ldrb r0, [r0, #0x1b]
	cmp r0, #1
	beq _08038112
	cmp r0, #1
	bgt _0803810C
	cmp r0, #0
	beq _0803814A
	b _0803813A
	.align 2, 0
_08038108: .4byte gUnknown_08499598
_0803810C:
	cmp r0, #2
	beq _08038126
	b _0803813A
_08038112:
	lsrs r0, r5, #0x18
	str r0, [sp]
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803814A
	ldr r1, [sp]
	str r1, [sp, #8]
	b _0803814A
_08038126:
	lsrs r0, r5, #0x18
	str r0, [sp, #4]
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803814A
	ldr r1, [sp, #4]
	str r1, [sp, #0xc]
	b _0803814A
_0803813A:
	lsrs r4, r5, #0x18
	adds r0, r4, #0
	bl sub_080266DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0803814A
	str r4, [sp, #0xc]
_0803814A:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r5, r5, r0
	adds r7, #0x3c
	subs r6, #1
	cmp r6, #0
	bge _080380F0
	ldr r0, _08038174 @ =gUnknown_03003FC0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	beq _08038186
	ldr r1, [sp]
	cmp r1, #0
	bne _08038178
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _0803817E
	adds r0, r1, #0
	b _080381A0
	.align 2, 0
_08038174: .4byte gUnknown_03003FC0
_08038178:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _080381A0
_0803817E:
	mov r0, r8
	bl sub_08037FB4
	b _080381AE
_08038186:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08038190
	ldr r0, [sp, #8]
	b _080381A0
_08038190:
	ldr r1, [sp]
	cmp r1, #0
	bne _0803819A
	ldr r0, [sp, #0xc]
	b _080381A0
_0803819A:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _080381A8
_080381A0:
	mov r1, r8
	bl sub_08037F94
	b _080381AE
_080381A8:
	mov r0, r8
	bl sub_08037FB4
_080381AE:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080381C0
sub_080381C0: @ 0x080381C0
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08038224 @ =gUnknown_03003FC0
	adds r0, r1, #0
	adds r0, #0x32
	ldrb r0, [r0]
	cmp r0, #0
	bne _08038236
	ldrb r0, [r1, #1]
	cmp r0, #3
	bne _0803822C
	movs r2, #0
	movs r1, #1
	ldr r4, _08038228 @ =gUnknown_08090EFC
	ldr r0, [r4]
	ldr r3, [r0]
_080381E0:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #0x1b]
	cmp r0, #1
	bne _080381FA
	mov r5, sp
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
_080381FA:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #4
	bls _080381E0
	cmp r2, #1
	bne _08038236
	mov r0, sp
	ldrb r1, [r0]
	ldr r0, [r4]
	ldr r2, [r0]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r0, #0x31
	ldrb r0, [r0]
	cmp r0, #1
	bne _08038236
_08038220:
	movs r0, #0
	b _08038238
	.align 2, 0
_08038224: .4byte gUnknown_03003FC0
_08038228: .4byte gUnknown_08090EFC
_0803822C:
	bl sub_0803861C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08038220
_08038236:
	movs r0, #1
_08038238:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08038240
sub_08038240: @ 0x08038240
	push {r4, r5, r6, r7, lr}
	bl sub_0803BD54
	ldr r0, _080382A4 @ =sub_08036884
	bl sub_080366D0
	ldr r0, _080382A8 @ =sub_080368E8
	bl sub_080366C4
	bl sub_08011B18
	ldr r6, _080382AC @ =gUnknown_08090F00
	ldr r7, _080382B0 @ =gUnknown_08090F04
	movs r1, #0
	ldr r0, [r6]
	movs r4, #3
_08038260:
	strb r1, [r0]
	strb r1, [r0, #4]
	adds r0, #1
	subs r4, #1
	cmp r4, #0
	bge _08038260
	ldr r1, [r6]
	movs r0, #0
	strb r0, [r1, #8]
	strb r0, [r1, #9]
	movs r4, #1
	movs r5, #0x3c
_08038278:
	ldr r0, [r7]
	ldr r0, [r0]
	adds r0, r5, r0
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	beq _080382C8
	lsls r0, r4, #0x18


