	.text

	.include "macro.inc"

	.syntax unified
	.arm

	.global crt0
crt0: @ 0x080000C0
	mov r0, #0x12
	msr cpsr_fc, r0
	ldr sp, _080000F8 @ =0x03007FA0
	mov r0, #0x1f
	msr cpsr_fc, r0
	ldr sp, _080000F4 @ =0x03007E00
	ldr r1, _0800021C @ =gUnknown_03007FFC
	add r0, pc, #0x18 @ =IrqMain
	str r0, [r1]
	ldr r1, _08000220 @ =AgbMain
	mov lr, pc
	bx r1
	b crt0
	.align 2, 0
_080000F4: .4byte 0x03007E00
_080000F8: .4byte 0x03007FA0

	arm_func_start IrqMain
IrqMain: @ 0x080000FC
	mov r3, #0x4000000
	add r3, r3, #0x200
	ldr r2, [r3]
	lsl r1, r2, #0x10
	lsr r1, r1, #0x10
	mrs r0, spsr
	push {r0, r1, r3, lr}
	and r1, r2, r2, lsr #16
	ands r0, r1, #0x2000
_08000120:
	bne _08000120
	mov r2, #0
	ands r0, r1, #1
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #2
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #4
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #8
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x10
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x20
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x40
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x80
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x100
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x200
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x400
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x800
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x1000
	bne _080001CC
	add r2, r2, #4
	ands r0, r1, #0x2000
_080001C8:
	bne _080001C8
_080001CC:
	strh r0, [r3, #2]
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x1f
	msr cpsr_fc, r3
	ldr r1, _08000224 @ =gUnknown_03002FE0
	add r1, r1, r2
	ldr r0, [r1]
	stmdb sp!, {lr}
	add lr, pc, #0x0 @ =0x080001F8
	bx r0
	ldm sp!, {lr}
	mrs r3, apsr
	bic r3, r3, #0xdf
	orr r3, r3, #0x92
	msr cpsr_fc, r3
	pop {r0, r1, r3, lr}
	strh r1, [r3]
	msr spsr_fc, r0
	bx lr
	.align 2, 0
_0800021C: .4byte gUnknown_03007FFC
_08000220: .4byte AgbMain
_08000224: .4byte gUnknown_03002FE0
