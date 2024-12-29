.macro arm_func_start name
	.align 2, 0
	.global \name
	.arm
	.type \name, function
.endm

.macro arm_func_end name
	.size \name, .-\name
.endm

.set NULL, 0

.macro thumb_func_start name
	.align 2, 0
	.global \name
	.THUMB
	.THUMB_FUNC
	.type \name, function
.endm

.macro non_word_aligned_thumb_func_start name
	.global \name
	.THUMB
	.THUMB_FUNC
	.type \name, function
.endm

.macro thumb_func_end name
	.size \name, .-\name
.endm

.macro function name
    .align 2, 0
    .global \name
    .type \name , function
.endm

.macro endfunction name
    .size \name , . - \name
.endm
