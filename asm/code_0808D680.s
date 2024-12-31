	.include "macro.inc"
	.syntax unified

	thumb_func_start sub_0808D680
sub_0808D680: @ 0x0808D680
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _0808D6B4 @ =gUnknown_086173EC
	ldr r1, [r5]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r1, r4
	ldr r3, [r0]
	cmp r3, #0
	bne _0808D69C
	movs r2, #0xa6
	lsls r2, r2, #1
	adds r3, r1, r2
	str r3, [r0]
_0808D69C:
	ldr r0, [r3, #4]
	cmp r0, #0x1f
	ble _0808D6C6
	movs r0, #0x88
	bl sub_08014E44
	adds r3, r0, #0
	cmp r3, #0
	bne _0808D6B8
	movs r0, #1
	rsbs r0, r0, #0
	b _0808D6D8
	.align 2, 0
_0808D6B4: .4byte gUnknown_086173EC
_0808D6B8:
	movs r0, #0
	str r0, [r3, #4]
	ldr r0, [r5]
	adds r0, r0, r4
	ldr r1, [r0]
	str r1, [r3]
	str r3, [r0]
_0808D6C6:
	ldr r0, [r3, #4]
	lsls r2, r0, #2
	adds r1, r3, #0
	adds r1, #8
	adds r1, r1, r2
	str r6, [r1]
	adds r0, #1
	str r0, [r3, #4]
	movs r0, #0
_0808D6D8:
	pop {r4, r5, r6, pc}

	.align 2, 0
