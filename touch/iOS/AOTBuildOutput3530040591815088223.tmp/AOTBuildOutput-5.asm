	.syntax unified
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc11StackMemoryC2EPNS_2GCEPKvmb
	.align	2
__ZN4MMgc11StackMemoryC2EPNS_2GCEPKvmb:
Leh_func_begin1:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r9, LCPI1_0
	add	r7, sp, #12
	mov	r4, r0
	ldr	r9, [r9]
	add	r9, r9, #8
	str	r9, [r0]
	str	r1, [r0, #+4]
	str	r2, [r0, #+16]
	ldr	r2, [r7, #+8]
	cmp	r2, #0
	mov	r9, #2
	moveq	r9, #0
	orr	r2, r3, r9
	cmp	r1, #0
	orr	r2, r2, #1
	str	r2, [r0, #+20]
	mov	r2, #0
	str	r2, [r0, #+24]
	beq	LBB1_2
	mov	r5, r1
	add	r0, r5, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r4, #+12]
	ldr	r0, [r5, #+1944]
	str	r0, [r4, #+8]
	ldr	r0, [r5, #+1944]
	cmp	r0, #0
	strne	r4, [r0, #+12]
	mov	r0, r6
	str	r4, [r5, #+1944]
	bl	_OSSpinLockUnlock
LBB1_2:
	ldr	r0, LCPI1_1
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [r4]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI1_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI1_1:
 	.long	L__ZTVN4MMgc11StackMemoryE$non_lazy_ptr

Leh_func_end1:

	.globl	__ZN4MMgc2GC13RCRootSegmentC1EPS0_Pvm
	.align	2
__ZN4MMgc2GC13RCRootSegmentC1EPS0_Pvm:
Leh_func_begin2:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldr	r9, LCPI2_0
	add	r4, r0, #16
	mov	r12, #0
	mov	r5, r2
	mov	r6, r0
	cmp	r1, #0
	ldr	r9, [r9]
	add	r9, r9, #8
	str	r9, [r0]
	str	r1, [r0, #+4]
	orr	r9, r3, #1
	stmia	r4, {r2, r9, r12}
	mov	r4, r3
	beq	LBB2_2
	mov	r8, r1
	add	r0, r8, #229, 30
	add	r10, r0, #1, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r6, #+12]
	ldr	r0, [r8, #+1944]
	str	r0, [r6, #+8]
	ldr	r0, [r8, #+1944]
	cmp	r0, #0
	strne	r6, [r0, #+12]
	mov	r0, r10
	str	r6, [r8, #+1944]
	bl	_OSSpinLockUnlock
LBB2_2:
	ldr	r0, LCPI2_1
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [r6]
	str	r5, [r6, #+28]
	str	r4, [r6, #+32]
	mov	r0, #0
	str	r0, [r6, #+36]
	str	r0, [r6, #+40]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI2_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI2_1:
 	.long	L__ZTVN4MMgc2GC13RCRootSegmentE$non_lazy_ptr

Leh_func_end2:

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN4MMgc2GC13RCRootSegmentD1Ev
.weak_definition __ZN4MMgc2GC13RCRootSegmentD1Ev
	.align	2
__ZN4MMgc2GC13RCRootSegmentD1Ev:
Leh_func_begin3:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, LCPI3_0
	add	r7, sp, #12
	mov	r4, r0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r1, [r0, #+24]
	cmp	r1, #0
	beq	LBB3_2
	ldr	r0, [r4, #+4]
	mov	r2, r4
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB3_2:
	mov	r0, #0
	str	r0, [r4, #+24]
	str	r0, [r4, #+16]
	ldr	r0, [r4, #+20]
	and	r0, r0, #3
	str	r0, [r4, #+20]
	ldr	r5, [r4, #+4]
	cmp	r5, #0
	beq	LBB3_4
	add	r0, r5, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1944]
	cmp	r0, r4
	ldrdne	r0, [r4, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r4, #+8]
	streq	r0, [r5, #+1944]
	ldr	r0, [r4, #+8]
	cmp	r0, #0
	ldrne	r1, [r4, #+12]
	strne	r1, [r0, #+12]
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB3_4:
	mov	r0, #0
	str	r0, [r4, #+4]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI3_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

Leh_func_end3:

	.globl	__ZN4MMgc2GC13RCRootSegmentD0Ev
.weak_definition __ZN4MMgc2GC13RCRootSegmentD0Ev
	.align	2
__ZN4MMgc2GC13RCRootSegmentD0Ev:
Leh_func_begin4:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, LCPI4_0
	add	r7, sp, #12
	mov	r4, r0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r1, [r0, #+24]
	cmp	r1, #0
	beq	LBB4_2
	ldr	r0, [r4, #+4]
	mov	r2, r4
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB4_2:
	mov	r0, #0
	str	r0, [r4, #+24]
	str	r0, [r4, #+16]
	ldr	r0, [r4, #+20]
	and	r0, r0, #3
	str	r0, [r4, #+20]
	ldr	r5, [r4, #+4]
	cmp	r5, #0
	beq	LBB4_4
	add	r0, r5, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1944]
	cmp	r0, r4
	ldrdne	r0, [r4, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r4, #+8]
	streq	r0, [r5, #+1944]
	ldr	r0, [r4, #+8]
	cmp	r0, #0
	ldrne	r1, [r4, #+12]
	strne	r1, [r0, #+12]
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB4_4:
	mov	r0, #0
	str	r0, [r4, #+4]
	ldr	r0, LCPI4_1
	ldr	r0, [r0]
	ldr	r5, [r0]
	ldr	r0, [r5, #+1484]
	cmp	r0, r4
	bne	LBB4_6
	add	r0, r5, #114, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1484]
	cmp	r0, r4
	moveq	r0, #0
	streq	r0, [r5, #+1484]
	streq	r0, [r5, #+1488]
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB4_6:
	mov	r0, r5
	mov	r1, r4
	bl	__ZN4MMgc11FixedMalloc13OutOfLineFreeEPv
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI4_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI4_1:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

Leh_func_end4:

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc2GC13RCRootSegmentC2EPS0_Pvm
	.align	2
__ZN4MMgc2GC13RCRootSegmentC2EPS0_Pvm:
Leh_func_begin5:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldr	r9, LCPI5_0
	add	r4, r0, #16
	mov	r12, #0
	mov	r5, r2
	mov	r6, r0
	cmp	r1, #0
	ldr	r9, [r9]
	add	r9, r9, #8
	str	r9, [r0]
	str	r1, [r0, #+4]
	orr	r9, r3, #1
	stmia	r4, {r2, r9, r12}
	mov	r4, r3
	beq	LBB5_2
	mov	r8, r1
	add	r0, r8, #229, 30
	add	r10, r0, #1, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r6, #+12]
	ldr	r0, [r8, #+1944]
	str	r0, [r6, #+8]
	ldr	r0, [r8, #+1944]
	cmp	r0, #0
	strne	r6, [r0, #+12]
	mov	r0, r10
	str	r6, [r8, #+1944]
	bl	_OSSpinLockUnlock
LBB5_2:
	ldr	r0, LCPI5_1
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [r6]
	str	r5, [r6, #+28]
	str	r4, [r6, #+32]
	mov	r0, #0
	str	r0, [r6, #+36]
	str	r0, [r6, #+40]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI5_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI5_1:
 	.long	L__ZTVN4MMgc2GC13RCRootSegmentE$non_lazy_ptr

Leh_func_end5:

	.globl	__ZN4MMgc2GC17AutoRCRootSegmentC1EPS0_Pvm
	.align	2
__ZN4MMgc2GC17AutoRCRootSegmentC1EPS0_Pvm:
Leh_func_begin6:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldr	r9, LCPI6_0
	add	r4, r0, #16
	mov	r12, #0
	mov	r5, r2
	mov	r6, r1
	mov	r8, r0
	cmp	r1, #0
	ldr	r9, [r9]
	add	r9, r9, #8
	str	r9, [r0]
	str	r1, [r0, #+4]
	orr	r9, r3, #1
	stmia	r4, {r2, r9, r12}
	mov	r4, r3
	beq	LBB6_2
	add	r0, r6, #229, 30
	add	r10, r0, #1, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r8, #+12]
	ldr	r0, [r6, #+1944]
	str	r0, [r8, #+8]
	ldr	r0, [r6, #+1944]
	cmp	r0, #0
	strne	r8, [r0, #+12]
	mov	r0, r10
	str	r8, [r6, #+1944]
	bl	_OSSpinLockUnlock
LBB6_2:
	mov	r0, #0
	str	r5, [r8, #+28]
	str	r4, [r8, #+32]
	str	r0, [r8, #+36]
	str	r0, [r8, #+40]
	ldr	r0, LCPI6_1
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [r8]
	ldr	r0, [r6, #+12]
	str	r0, [r8, #+40]
	ldr	r0, [r6, #+12]
	cmp	r0, #0
	strne	r8, [r0, #+36]
	str	r8, [r6, #+12]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI6_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI6_1:
 	.long	L__ZTVN4MMgc2GC17AutoRCRootSegmentE$non_lazy_ptr

Leh_func_end6:

	.globl	__ZN4MMgc2GC17AutoRCRootSegmentD1Ev
	.align	2
__ZN4MMgc2GC17AutoRCRootSegmentD1Ev:
Leh_func_begin7:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, LCPI7_0
	add	r7, sp, #12
	mov	r4, r0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r1, [r0, #+40]
	ldr	r2, [r0, #+4]
	cmp	r1, #0
	ldrne	r0, [r4, #+36]
	strne	r0, [r1, #+36]
	ldrne	r1, [r4, #+40]
	ldr	r0, [r4, #+36]
	cmp	r0, #0
	streq	r1, [r2, #+12]
	strne	r1, [r0, #+40]
	ldr	r0, LCPI7_1
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [r4]
	ldr	r1, [r4, #+24]
	cmp	r1, #0
	beq	LBB7_2
	ldr	r0, [r4, #+4]
	mov	r2, r4
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB7_2:
	mov	r0, #0
	str	r0, [r4, #+24]
	str	r0, [r4, #+16]
	ldr	r0, [r4, #+20]
	and	r0, r0, #3
	str	r0, [r4, #+20]
	ldr	r5, [r4, #+4]
	cmp	r5, #0
	beq	LBB7_4
	add	r0, r5, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1944]
	cmp	r0, r4
	ldrdne	r0, [r4, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r4, #+8]
	streq	r0, [r5, #+1944]
	ldr	r0, [r4, #+8]
	cmp	r0, #0
	ldrne	r1, [r4, #+12]
	strne	r1, [r0, #+12]
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB7_4:
	mov	r0, #0
	str	r0, [r4, #+4]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI7_0:
 	.long	L__ZTVN4MMgc2GC17AutoRCRootSegmentE$non_lazy_ptr

	.align	2
	LCPI7_1:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

Leh_func_end7:

	.globl	__ZN4MMgc2GC17AutoRCRootSegmentD0Ev
	.align	2
__ZN4MMgc2GC17AutoRCRootSegmentD0Ev:
Leh_func_begin8:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, LCPI8_0
	add	r7, sp, #12
	mov	r4, r0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r1, [r0, #+40]
	ldr	r2, [r0, #+4]
	cmp	r1, #0
	ldrne	r0, [r4, #+36]
	strne	r0, [r1, #+36]
	ldrne	r1, [r4, #+40]
	ldr	r0, [r4, #+36]
	cmp	r0, #0
	streq	r1, [r2, #+12]
	strne	r1, [r0, #+40]
	ldr	r0, LCPI8_1
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [r4]
	ldr	r1, [r4, #+24]
	cmp	r1, #0
	beq	LBB8_2
	ldr	r0, [r4, #+4]
	mov	r2, r4
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB8_2:
	mov	r0, #0
	str	r0, [r4, #+24]
	str	r0, [r4, #+16]
	ldr	r0, [r4, #+20]
	and	r0, r0, #3
	str	r0, [r4, #+20]
	ldr	r5, [r4, #+4]
	cmp	r5, #0
	beq	LBB8_4
	add	r0, r5, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1944]
	cmp	r0, r4
	ldrdne	r0, [r4, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r4, #+8]
	streq	r0, [r5, #+1944]
	ldr	r0, [r4, #+8]
	cmp	r0, #0
	ldrne	r1, [r4, #+12]
	strne	r1, [r0, #+12]
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB8_4:
	mov	r0, #0
	str	r0, [r4, #+4]
	ldr	r0, LCPI8_2
	ldr	r0, [r0]
	ldr	r5, [r0]
	ldr	r0, [r5, #+1484]
	cmp	r0, r4
	bne	LBB8_6
	add	r0, r5, #114, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1484]
	cmp	r0, r4
	moveq	r0, #0
	streq	r0, [r5, #+1484]
	streq	r0, [r5, #+1488]
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB8_6:
	mov	r0, r5
	mov	r1, r4
	bl	__ZN4MMgc11FixedMalloc13OutOfLineFreeEPv
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI8_0:
 	.long	L__ZTVN4MMgc2GC17AutoRCRootSegmentE$non_lazy_ptr

	.align	2
	LCPI8_1:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI8_2:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

Leh_func_end8:

	.globl	__ZN4MMgc2GC17AutoRCRootSegmentC2EPS0_Pvm
	.align	2
__ZN4MMgc2GC17AutoRCRootSegmentC2EPS0_Pvm:
Leh_func_begin9:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldr	r9, LCPI9_0
	add	r4, r0, #16
	mov	r12, #0
	mov	r5, r2
	mov	r6, r1
	mov	r8, r0
	cmp	r1, #0
	ldr	r9, [r9]
	add	r9, r9, #8
	str	r9, [r0]
	str	r1, [r0, #+4]
	orr	r9, r3, #1
	stmia	r4, {r2, r9, r12}
	mov	r4, r3
	beq	LBB9_2
	add	r0, r6, #229, 30
	add	r10, r0, #1, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r8, #+12]
	ldr	r0, [r6, #+1944]
	str	r0, [r8, #+8]
	ldr	r0, [r6, #+1944]
	cmp	r0, #0
	strne	r8, [r0, #+12]
	mov	r0, r10
	str	r8, [r6, #+1944]
	bl	_OSSpinLockUnlock
LBB9_2:
	mov	r0, #0
	str	r5, [r8, #+28]
	str	r4, [r8, #+32]
	str	r0, [r8, #+36]
	str	r0, [r8, #+40]
	ldr	r0, LCPI9_1
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [r8]
	ldr	r0, [r6, #+12]
	str	r0, [r8, #+40]
	ldr	r0, [r6, #+12]
	cmp	r0, #0
	strne	r8, [r0, #+36]
	str	r8, [r6, #+12]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI9_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI9_1:
 	.long	L__ZTVN4MMgc2GC17AutoRCRootSegmentE$non_lazy_ptr

Leh_func_end9:

	.globl	__ZN4MMgc2GC19WriteBarrierRC_dtorEPKv
	.align	2
__ZN4MMgc2GC19WriteBarrierRC_dtorEPKv:
Leh_func_begin10:
	stmfd	sp!, {r4, r7, lr}
	ldr	r2, [r0]
	add	r7, sp, #4
	mov	r4, r0
	cmp	r2, #8
	blo	LBB10_8
	bic	r1, r2, #7
	orr	r0, r1, #4
	ldr	r0, [r0]
	cmp	r0, #0
	beq	LBB10_8
	tst	r0, #1, 2
	bne	LBB10_8
	uxtb	r3, r0
	cmp	r3, #1
	beq	LBB10_8
	sub	r0, r0, #1
	str	r0, [r1, #+4]
	uxtb	r0, r0
	cmp	r0, #1
	bne	LBB10_8
	ldr	r0, LCPI10_0
	and	r0, r2, r0
	orr	r0, r0, #8
	ldr	r0, [r0]
	ldr	r2, [r0, #+1976]
	ldr	r3, [r0, #+1980]
	cmp	r2, r3
	bhs	LBB10_7
	str	r1, [r2], #+4
	str	r2, [r0, #+1976]
	mov	r9, #255
	orr	r9, r9, #7, 4
	ldr	r2, [r0, #+1984]
	add	r3, r2, #1
	str	r3, [r0, #+1984]
	ldrb	r0, [r0, #+1964]
	mov	r3, #255
	orr	r3, r3, #5, 4
	tst	r0, #1
	moveq	r9, r3
	ldr	r0, [r1, #+4]
	and	r0, r9, r0
	orr	r0, r0, r2, lsl #8
	orr	r0, r0, #2, 2
	str	r0, [r1, #+4]
	b	LBB10_8
LBB10_7:
	add	r0, r0, #122, 28
	bl	__ZN4MMgc3ZCT7AddSlowEPNS_8RCObjectE
LBB10_8:
	mov	r0, #0
	str	r0, [r4]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI10_0:
 	.long	4294963200

Leh_func_end10:

	.globl	__ZN4MMgc2GC14ClearMarkStackEv
	.align	2
__ZN4MMgc2GC14ClearMarkStackEv:
Leh_func_begin11:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r0
	add	r0, r4, #229, 30
	add	r5, r0, #1, 22
	add	r7, sp, #8
	mov	r0, r5
	bl	_OSSpinLockLock
	ldr	r0, [r4, #+1944]
	cmp	r0, #0
	beq	LBB11_3
	mov	r1, #0
LBB11_2:
	str	r1, [r0, #+24]
	ldr	r0, [r0, #+8]
	cmp	r0, #0
	bne	LBB11_2
LBB11_3:
	mov	r0, r5
	bl	_OSSpinLockUnlock
	add	r0, r4, #174, 30
	bl	__ZN4MMgc11GCMarkStack5ClearEv
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end11:

	.globl	__ZN4MMgc10GCCallbackD2Ev
	.align	2
__ZN4MMgc10GCCallbackD2Ev:
	ldr	r1, LCPI12_0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r1, [r0, #+4]
	cmp	r1, #0
	bxeq	lr
	ldr	r2, [r1, #+1948]
	cmp	r2, r0
	ldrdne	r2, [r0, #+8]
	strne	r2, [r3, #+8]
	ldreq	r2, [r0, #+8]
	streq	r2, [r1, #+1948]
	ldr	r1, [r0, #+8]
	cmp	r1, #0
	ldrne	r0, [r0, #+12]
	strne	r0, [r1, #+12]
	bxne	lr
	bx	lr
	.align	2
	LCPI12_0:
 	.long	L__ZTVN4MMgc10GCCallbackE$non_lazy_ptr


	.globl	__ZN4MMgc2GC10FreeRCRootEPv
	.align	2
__ZN4MMgc2GC10FreeRCRootEPv:
Leh_func_begin12:
	stmfd	sp!, {r4, r7, lr}
	mov	r4, r1
	add	r7, sp, #4
	ldr	r1, [r4, #-8]!
	ldr	r2, [r1, #+40]
	cmp	r2, #0
	ldrne	r3, [r1, #+36]
	strne	r3, [r2, #+36]
	ldrne	r2, [r1, #+40]
	ldr	r3, [r1, #+36]
	cmp	r3, #0
	streq	r2, [r0, #+12]
	strne	r2, [r3, #+40]
	cmp	r1, #0
	beq	LBB13_2
	ldr	r0, [r1]
	ldr	r2, [r0, #+8]
	mov	r0, r1
	blx	r2
LBB13_2:
	cmp	r4, #0
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	mov	r0, r4
	bl	_free
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
Leh_func_end12:

	.globl	__ZN4MMgc2GC16popAllocaSegmentEv
	.align	2
__ZN4MMgc2GC16popAllocaSegmentEv:
Leh_func_begin13:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r1, [r0, #+2036]
	ldr	r4, [r1]
	add	r7, sp, #8
	mov	r5, r0
	ldr	r1, [r4, #-8]!
	ldr	r2, [r1, #+40]
	cmp	r2, #0
	ldrne	r0, [r1, #+36]
	strne	r0, [r2, #+36]
	ldrne	r2, [r1, #+40]
	ldr	r0, [r1, #+36]
	cmp	r0, #0
	streq	r2, [r5, #+12]
	strne	r2, [r0, #+40]
	cmp	r1, #0
	beq	LBB14_2
	ldr	r0, [r1]
	ldr	r2, [r0, #+8]
	mov	r0, r1
	blx	r2
LBB14_2:
	cmp	r4, #0
	beq	LBB14_4
	mov	r0, r4
	bl	_free
LBB14_4:
	ldr	r0, [r5, #+2036]
	ldr	r1, [r0, #+12]
	str	r1, [r5, #+2036]
	cmp	r1, #0
	ldrne	r1, [r1, #+8]
	strne	r1, [r5, #+2040]
	bl	_free
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end13:

	.globl	__ZN4MMgc2GC15allocaPopToSlowEPv
	.align	2
__ZN4MMgc2GC15allocaPopToSlowEPv:
Leh_func_begin14:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	mov	r4, r1
	mov	r5, r0
	b	LBB15_8
LBB15_1:
	ldr	r0, [r6, #-8]!
	ldr	r1, [r0, #+40]
	cmp	r1, #0
	beq	LBB15_3
	ldr	r2, [r0, #+36]
	str	r2, [r1, #+36]
	ldr	r1, [r0, #+40]
LBB15_3:
	ldr	r2, [r0, #+36]
	cmp	r2, #0
	streq	r1, [r5, #+12]
	strne	r1, [r2, #+40]
	cmp	r0, #0
	beq	LBB15_5
	ldr	r1, [r0]
	ldr	r1, [r1, #+8]
	blx	r1
LBB15_5:
	cmp	r6, #0
	beq	LBB15_7
	mov	r0, r6
	bl	_free
LBB15_7:
	ldr	r0, [r5, #+2036]
	ldr	r6, [r0, #+12]
	str	r6, [r5, #+2036]
	cmp	r6, #0
	ldrne	r6, [r6, #+8]
	strne	r6, [r5, #+2040]
	bl	_free
LBB15_8:
	ldr	r0, [r5, #+2036]
	ldr	r6, [r0]
	cmp	r6, r4
	bhi	LBB15_1
	ldr	r0, [r0, #+4]
	cmp	r0, r4
	subhs	sp, r7, #12
	ldmfdhs	sp!, {r4, r5, r6, r7, pc}
	b	LBB15_1
Leh_func_end14:

	.globl	__ZN4MMgc2GC14allocaShutdownEv
	.align	2
__ZN4MMgc2GC14allocaShutdownEv:
Leh_func_begin15:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r1, [r0, #+2036]
	add	r7, sp, #8
	mov	r4, r0
LBB16_1:
	cmp	r1, #0
	moveq	r0, #0
	streq	r0, [r4, #+2036]
	streq	r0, [r4, #+2040]
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
	ldr	r5, [r1]
	ldr	r0, [r5, #-8]!
	ldr	r1, [r0, #+40]
	cmp	r1, #0
	beq	LBB16_3
	ldr	r2, [r0, #+36]
	str	r2, [r1, #+36]
	ldr	r1, [r0, #+40]
LBB16_3:
	ldr	r2, [r0, #+36]
	cmp	r2, #0
	streq	r1, [r4, #+12]
	strne	r1, [r2, #+40]
	cmp	r0, #0
	beq	LBB16_5
	ldr	r1, [r0]
	ldr	r1, [r1, #+8]
	blx	r1
LBB16_5:
	cmp	r5, #0
	beq	LBB16_7
	mov	r0, r5
	bl	_free
LBB16_7:
	ldr	r0, [r4, #+2036]
	ldr	r1, [r0, #+12]
	str	r1, [r4, #+2036]
	cmp	r1, #0
	ldrne	r1, [r1, #+8]
	strne	r1, [r4, #+2040]
	bl	_free
	ldr	r1, [r4, #+2036]
	b	LBB16_1
Leh_func_end15:

	.globl	__ZN4MMgc2GC12GetUsageInfoERmS1_
	.align	2
__ZN4MMgc2GC12GetUsageInfoERmS1_:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	sub	sp, sp, #20
	add	r9, r0, #69, 28
	mov	r3, #0
	str	r3, [r1]
	str	r3, [r2]
	add	r1, r0, #89, 28
	str	r1, [sp]
	str	r9, [sp, #+4]
	add	r9, r0, #79, 28
	str	r9, [sp, #+8]
	add	r9, r0, #99, 28
	str	r9, [sp, #+12]
	add	r9, r0, #109, 28
	str	r9, [sp, #+16]
	mov	r9, #1
LBB17_1:
	mov	r12, #0
LBB17_2:
	ldr	lr, [r1, +r12]
	ldr	r4, [lr, #+4]
	cmp	r4, #0
	bne	LBB17_4
	mov	r5, #0
	b	LBB17_6
LBB17_4:
	ldrsh	r5, [r4, #+40]
	ldr	r6, [lr, #+36]
	ldr	r4, [r4, #+16]
	cmp	r4, #0
	sub	r5, r6, r5
	beq	LBB17_6
LBB17_5:
	add	r5, r5, r6
	ldrsh	r8, [r4, #+40]
	ldr	r4, [r4, #+16]
	cmp	r4, #0
	sub	r5, r5, r8
	bne	LBB17_5
LBB17_6:
	add	lr, lr, #24
	add	r12, r12, #4
	cmp	r12, #160
	ldmia	lr, {r4, r6, lr}
	sub	r5, r5, r6
	add	r4, r5, r4
	mla	r3, lr, r4, r3
	str	r3, [r2]
	bne	LBB17_2
	cmp	r9, #5
	beq	LBB17_9
	mov	r1, sp
	ldr	r1, [r1, +r9, lsl #2]
	add	r9, r9, #1
	b	LBB17_1
LBB17_9:
	ldr	r1, [r0, #+1904]
	ldr	r9, [r1, #+4]
	cmp	r9, #0
	bne	LBB17_11
	mov	r12, #0
	b	LBB17_13
LBB17_11:
	ldrsh	r12, [r9, #+40]
	ldr	lr, [r1, #+36]
	ldr	r9, [r9, #+16]
	cmp	r9, #0
	sub	r12, lr, r12
	beq	LBB17_13
LBB17_12:
	add	r12, r12, lr
	ldrsh	r4, [r9, #+40]
	ldr	r9, [r9, #+16]
	cmp	r9, #0
	sub	r12, r12, r4
	bne	LBB17_12
LBB17_13:
	ldr	lr, [r1, #+28]
	ldr	r9, [r1, #+24]
	ldr	r1, [r1, #+32]
	sub	r12, r12, lr
	add	r9, r12, r9
	mla	r1, r1, r9, r3
	str	r1, [r2]
	ldr	r3, [r0, #+1908]
	ldr	r9, [r3, #+4]
	cmp	r9, #0
	bne	LBB17_15
	mov	r12, #0
	b	LBB17_17
LBB17_15:
	ldrsh	r12, [r9, #+40]
	ldr	lr, [r3, #+36]
	ldr	r9, [r9, #+16]
	cmp	r9, #0
	sub	r12, lr, r12
	beq	LBB17_17
LBB17_16:
	add	r12, r12, lr
	ldrsh	r4, [r9, #+40]
	ldr	r9, [r9, #+16]
	cmp	r9, #0
	sub	r12, r12, r4
	bne	LBB17_16
LBB17_17:
	ldr	r9, [r3, #+24]
	ldr	lr, [r3, #+28]
	sub	r12, r12, lr
	ldr	r3, [r3, #+32]
	add	r9, r12, r9
	mla	r1, r3, r9, r1
	str	r1, [r2]
	ldr	r0, [r0, #+1912]
	ldr	r0, [r0, #+4]
	cmp	r0, #0
	beq	LBB17_21
	mov	r3, #0
LBB17_19:
	ldr	r9, [r0, #+4]
	ldr	r0, [r0, #+16]
	add	r3, r9, r3
	cmp	r0, #0
	bne	LBB17_19
LBB17_20:
	add	r0, r3, r1
	str	r0, [r2]
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB17_21:
	mov	r3, #0
	b	LBB17_20

	.globl	__ZN4MMgc2GC13GetBytesInUseEv
	.align	2
__ZN4MMgc2GC13GetBytesInUseEv:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	sub	sp, sp, #8
	add	r1, sp, #4
	mov	r2, sp
	bl	__ZN4MMgc2GC12GetUsageInfoERmS1_
	ldr	r0, [sp]
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc2GC8heapFreeEPvmb
	.align	2
__ZN4MMgc2GC8heapFreeEPvmb:
Leh_func_begin16:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r4, r3
	mov	r5, r1
	mov	r6, r0
	cmp	r2, #0
	beq	LBB19_2
	mov	r8, r2
	b	LBB19_19
LBB19_2:
	ldr	r8, [r6, #+1916]
	add	r0, r8, #220
	add	r10, r0, #2, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	add	r0, r8, #4
	mov	r1, r0
	b	LBB19_5
LBB19_3:
	ldr	r2, [r1, #+4]
	cmp	r2, r5
	bhi	LBB19_5
	ldr	r3, [r1, #+8]
	cmp	r3, r5
	bhi	LBB19_7
LBB19_5:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB19_3
LBB19_6:
	mov	r8, r0
	b	LBB19_11
LBB19_7:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	subne	r2, r5, r2
	addne	r1, r1, r2, lsr #12
	ldrne	r8, [r8, #+1516]
	movne	r2, #24
	mlane	r2, r1, r2, r8
	cmpne	r2, #0
	beq	LBB19_6
	mov	r0, #24
	mla	r8, r1, r0, r8
	ldr	r8, [r8, #+4]
	b	LBB19_18
LBB19_9:
	ldr	r1, [r8, #+4]
	cmp	r1, r5
	bhi	LBB19_11
	ldr	r1, [r8, #+8]
	cmp	r1, r5
	bhi	LBB19_15
LBB19_11:
	ldr	r8, [r8]
	cmp	r8, #0
	bne	LBB19_9
	mov	r8, #0
	b	LBB19_18
LBB19_13:
	ldr	r8, [r0, #+4]
	cmp	r8, r5
	bhi	LBB19_15
	ldr	r8, [r0, #+8]
	cmp	r8, r5
	bhi	LBB19_17
LBB19_15:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB19_13
	mov	r0, #0
LBB19_17:
	ldr	r8, [r0, #+12]
	sub	r8, r8, r5
	mov	r8, r8, lsr #12
LBB19_18:
	mov	r0, r10
	bl	_OSSpinLockUnlock
LBB19_19:
	ldr	r0, [r6, #+232]
	mov	r3, #1
	mov	r1, r5
	mov	r2, r4
	sub	r0, r0, r8
	str	r0, [r6, #+232]
	ldr	r0, [r6, #+1916]
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end16:

	.globl	__ZN4MMgc2GC9heapAllocEmi
	.align	2
__ZN4MMgc2GC9heapAllocEmi:
Leh_func_begin17:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r5, r0
	ldr	r0, [r5, #+1916]
	mov	r3, #1
	mov	r4, r1
	add	r7, sp, #8
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	cmp	r0, #0
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
	ldr	r1, [r5, #+232]
	add	r1, r1, r4
	str	r1, [r5, #+232]
	ldr	r2, [r5, #+236]
	cmp	r1, r2
	strhi	r1, [r5, #+236]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end17:

	.globl	__ZN4MMgc2GC9AllocBitsEii
	.align	2
__ZN4MMgc2GC9AllocBitsEii:
Leh_func_begin18:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	add	r2, r0, r2, lsl #2
	add	r4, r2, #122, 30
	add	r5, r0, #99, 28
	mov	r6, r1
	mov	r8, r0
	mov	r10, #1
	mov	r11, #0
LBB21_1:
	ldr	r0, [r4]
	cmp	r0, #0
	beq	LBB21_3
	ldr	r5, [r0]
	str	r5, [r4]
	mov	r4, #0
	str	r4, [r0]
	b	LBB21_9
LBB21_3:
	ldr	r0, [r8, #+648]
	cmp	r0, #0
	bne	LBB21_7
	ldr	r0, [r8, #+1916]
	mov	r1, r10
	mov	r2, #7
	mov	r3, r10
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	cmp	r0, #0
	beq	LBB21_6
	ldr	r1, [r8, #+232]
	add	r1, r1, #1
	str	r1, [r8, #+232]
	ldr	r2, [r8, #+236]
	cmp	r1, r2
	strhi	r1, [r8, #+236]
LBB21_6:
	str	r0, [r8, #+648]
LBB21_7:
	ldr	r1, LCPI21_0
	and	r1, r0, r1
	rsb	r1, r1, #1, 20
	cmp	r1, r6
	blt	LBB21_10
	cmp	r1, r6
	moveq	r1, #0
	bicne	r1, r6, #3
	addne	r1, r0, r1
	str	r1, [r8, #+648]
LBB21_9:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB21_10:
	cmp	r1, #4
	blo	LBB21_17
	mov	r2, #0
	b	LBB21_16
LBB21_12:
	ldr	r3, [r5, +r2, lsl #2]
	ldrb	r9, [r3, #+56]
	cmp	r9, #0
	bne	LBB21_15
	ldr	r9, [r3, #+48]
	cmp	r9, r1
	bgt	LBB21_15
	ldr	r1, [r3, #+52]
	add	r1, r8, r1, lsl #2
	ldr	r2, [r1, #+488]
	str	r2, [r0]
	str	r0, [r1, #+488]
	str	r11, [r8, #+648]
	b	LBB21_1
LBB21_15:
	add	r2, r2, #1
LBB21_16:
	cmp	r2, #40
	blt	LBB21_12
LBB21_17:
	str	r11, [r8, #+648]
	b	LBB21_1
	.align	2
	LCPI21_0:
 	.long	4095

Leh_func_end18:

	.globl	__ZN4MMgc2GC4ZeroEPKv
	.align	2
__ZN4MMgc2GC4ZeroEPKv:
	stmfd	sp!, {r7, lr}
	ldr	r3, LCPI22_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	mov	r7, sp
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	orr	r9, r3, #20
	ldr	r9, [r9]
	ldrb	r2, [r9, +r2]
	tst	r2, #4
	beq	LBB22_3
	ldr	r2, [r3, #+4]
	add	r0, r1, #4
	mov	r1, #0
	sub	r2, r2, #4
LBB22_2:
	bl	_memset
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
LBB22_3:
	tst	r2, #16
	ldreq	r2, [r3, #+4]
	addeq	r0, r1, #1
	moveq	r1, #0
	subeq	r2, r2, #1
	ldrne	r3, [r3, #+4]
	addne	r0, r1, #4
	subne	r2, r3, #4
	movne	r1, #0
	b	LBB22_2
	.align	2
	LCPI22_0:
 	.long	4294963200


	.globl	__ZN4MMgc2GC12ClearWeakRefEPKvb
	.align	2
__ZN4MMgc2GC12ClearWeakRefEPKvb:
Leh_func_begin19:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r3, [r0, #+656]
	mov	r12, r0
	add	r7, sp, #8
	mov	r5, r1
	sub	r3, r3, #1
	and	r9, r3, r1, ror #3
	ldr	lr, [r12, #+652]!
	add	r4, lr, r9, lsl #3
	ldr	r4, [r4, #+4]
	cmp	r4, #0
	cmpne	r4, r5
	beq	LBB23_4
	mov	r1, #1
LBB23_2:
	add	r9, r9, r1
	and	r9, r9, r3
	add	r4, lr, r9, lsl #3
	ldr	r4, [r4, #+4]
	cmp	r4, #0
	beq	LBB23_4
	add	r1, r1, #1
	cmp	r4, r5
	bne	LBB23_2
LBB23_4:
	cmp	r4, r5
	bne	LBB23_9
	add	r1, lr, r9, lsl #3
	mov	r3, #1
	str	r3, [r1, #+4]
	cmp	r2, #0
	ldr	r1, [r0, #+652]
	ldr	r4, [r1, +r9, lsl #3]
	mov	r3, #0
	str	r3, [r1, +r9, lsl #3]
	ldr	r1, [r0, #+664]
	add	r1, r1, #1
	str	r1, [r0, #+664]
	beq	LBB23_8
	ldr	r2, [r0, #+656]
	ldr	r0, [r0, #+660]
	sub	r0, r0, r1
	add	r0, r0, r0, lsl #2
	cmp	r0, r2
	bhs	LBB23_8
	mov	r1, #1
	mov	r0, r12
	bl	__ZN4MMgc15GCHashtableBaseIPKvNS_21GCHashtableKeyHandlerENS_27GCHashtableAllocHandler_newEE4growEb
LBB23_8:
	cmp	r4, #0
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
	mov	r0, #0
	str	r0, [r4]
	ldr	r1, LCPI23_0
	mov	r0, #255
	orr	r0, r0, #15, 24
	and	r1, r5, r1
	orr	r2, r1, #1
	orr	r1, r1, #20
	and	r0, r5, r0
	ldrb	r2, [r2]
	mov	r0, r0, lsr r2
	ldr	r1, [r1]
	ldrb	r2, [r1, +r0]
	and	r2, r2, #247
	strb	r2, [r1, +r0]
LBB23_9:
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI23_0:
 	.long	4294963200

Leh_func_end19:

	.globl	__ZN4MMgc2GC9AbortFreeEPKv
	.align	2
__ZN4MMgc2GC9AbortFreeEPKv:
Leh_func_begin20:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r4, r1, r2
	mov	r6, r1
	mov	r8, r0
	ldr	r2, LCPI24_0
	and	r5, r1, r2
	orr	r3, r5, #20
	orr	r2, r5, #1
	ldr	r3, [r3]
	ldrb	r2, [r2]
	mov	r2, r4, lsr r2
	ldrb	r2, [r3, +r2]
	tst	r2, #4
	beq	LBB24_2
	ldr	r2, [r5, #+4]
	add	r0, r6, #4
	mov	r1, #0
	sub	r2, r2, #4
	b	LBB24_3
LBB24_2:
	tst	r2, #16
	ldr	r1, [r5, #+4]
	subeq	r2, r1, #1
	addeq	r0, r6, #1
	subne	r2, r1, #4
	addne	r0, r6, #4
	mov	r1, #0
LBB24_3:
	bl	_memset
	ldrb	r0, [r5, #+1]
	ldr	r1, [r5, #+20]
	mov	r0, r4, lsr r0
	ldrb	r2, [r1, +r0]
	and	r2, r2, #251
	strb	r2, [r1, +r0]
	ldrb	r0, [r5, #+1]
	ldr	r1, [r5, #+20]
	mov	r0, r4, lsr r0
	ldrb	r0, [r1, +r0]
	tst	r0, #8
	movne	r2, #1
	movne	r0, r8
	movne	r1, r6
	blne	__ZN4MMgc2GC12ClearWeakRefEPKvb
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI24_0:
 	.long	4294963200

Leh_func_end20:

	.globl	__ZN4MMgc2GC19MarkOrClearWeakRefsEv
	.align	2
__ZN4MMgc2GC19MarkOrClearWeakRefsEv:
Leh_func_begin21:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	sub	sp, sp, #12
	bic	sp, sp, #7
	add	r4, r0, #163, 30
	mov	r6, r0
	str	r4, [sp]
	mvn	r1, #0
	str	r1, [sp, #+4]
	mov	r5, #0
	mov	r8, #255
	orr	r8, r8, #15, 24
	mov	r0, #0
	b	LBB25_6
LBB25_1:
	ldr	r0, [sp]
	ldr	r0, [r0]
	ldr	r0, [r0, +r10, lsl #3]
	ldr	r1, [r0]
	cmp	r1, #0
	beq	LBB25_3
	ldr	r3, LCPI25_0
	and	r2, r1, r8
	and	r3, r1, r3
	orr	r9, r3, #1
	orr	r3, r3, #20
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	ldr	r3, [r3]
	ldrb	r2, [r3, +r2]
	tst	r2, #1
	beq	LBB25_4
LBB25_3:
	ldr	r2, LCPI25_0
	and	r1, r0, r8
	and	r0, r0, r2
	orr	r2, r0, #1
	orr	r0, r0, #20
	ldrb	r2, [r2]
	mov	r1, r1, lsr r2
	ldr	r0, [r0]
	ldrb	r2, [r0, +r1]
	tst	r2, #1
	andeq	r2, r2, #252
	orreq	r2, r2, #1
	strbeq	r2, [r0, +r1]
	b	LBB25_5
LBB25_4:
	mov	r0, r6
	mov	r2, r5
	bl	__ZN4MMgc2GC12ClearWeakRefEPKvb
LBB25_5:
	add	r0, r10, #1
LBB25_6:
	mov	r10, r0
	ldr	r1, [sp]
	ldr	r0, [r1, #+4]
	cmp	r10, r0
	bge	LBB25_8
	ldr	r0, [sp]
	ldr	r0, [r0]
	add	r0, r0, r10, lsl #3
	ldr	r1, [r0, #+4]
	cmp	r1, #2
	add	r0, r10, #1
	blo	LBB25_6
LBB25_8:
	str	r10, [sp, #+4]
	ldr	r0, [sp]
	ldr	r0, [r0, #+4]
	cmp	r10, r0
	bge	LBB25_10
	ldr	r0, [sp]
	ldr	r0, [r0]
	add	r0, r0, r10, lsl #3
	ldr	r0, [r0, #+4]
	cmp	r0, #0
	bne	LBB25_1
LBB25_10:
	add	r2, r6, #41, 28
	ldmia	r2, {r0, r1, r2}
	sub	r1, r1, r2
	add	r1, r1, r1, lsl #2
	cmp	r1, r0
	bhs	LBB25_12
	mov	r1, #1
	mov	r0, r4
	bl	__ZN4MMgc15GCHashtableBaseIPKvNS_21GCHashtableKeyHandlerENS_27GCHashtableAllocHandler_newEE4growEb
LBB25_12:
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI25_0:
 	.long	4294963200

Leh_func_end21:

	.globl	__ZN4MMgc9GCWeakRef3getEv
	.align	2
__ZN4MMgc9GCWeakRef3getEv:
Leh_func_begin22:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, [r0]
	add	r7, sp, #12
	mov	r4, r0
	cmp	r1, #0
	ldrne	r0, LCPI26_0
	andne	r0, r1, r0
	orrne	r2, r0, #8
	ldrne	r5, [r2]
	ldrbne	r2, [r5, #+670]
	cmpne	r2, #0
	beq	LBB26_9
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r1, r1, r2
	ldrb	r2, [r0, #+1]
	mov	r1, r1, lsr r2
	ldr	r0, [r0, #+20]
	ldrb	r2, [r0, +r1]
	tst	r2, #1
	bne	LBB26_9
	ldrb	r3, [r5, #+672]
	cmp	r3, #0
	beq	LBB26_9
	orr	r2, r2, #2
	strb	r2, [r0, +r1]
	ldr	r0, [r5, #+700]
	ldr	r1, [r5, #+704]
	add	r2, r0, #4
	ldr	r6, [r4]
	cmp	r2, r1
	bls	LBB26_6
	add	r0, r5, #174, 30
	mov	r1, #0
	bl	__ZN4MMgc11GCMarkStack11PushSegmentEb
	cmp	r0, #0
	beq	LBB26_7
	ldr	r0, [r5, #+700]
LBB26_6:
	add	r1, r0, #4
	str	r1, [r5, #+700]
	cmp	r0, #0
	bne	LBB26_8
LBB26_7:
	mov	r0, #255
	orr	r0, r0, #15, 24
	ldr	r1, LCPI26_0
	and	r0, r6, r0
	and	r6, r6, r1
	orr	r1, r6, #1
	orr	r6, r6, #20
	ldrb	r1, [r1]
	mov	r0, r0, lsr r1
	ldr	r6, [r6]
	ldrb	r1, [r6, +r0]
	and	r1, r1, #253
	strb	r1, [r6, +r0]
	mov	r1, #1
	strb	r1, [r5, #+760]
	b	LBB26_9
LBB26_8:
	str	r6, [r0]
LBB26_9:
	ldr	r0, [r4]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI26_0:
 	.long	4294963200

Leh_func_end22:

	.globl	__ZN4MMgc2GC12TracePointerEPv
	.align	2
__ZN4MMgc2GC12TracePointerEPv:
Leh_func_begin23:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	cmp	r1, #0
	beq	LBB27_9
	mov	r4, r1
	ldr	r1, LCPI27_0
	and	r6, r4, r1
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r5, r4, r2
	orr	r1, r6, #1
	orr	r2, r6, #20
	ldrb	r1, [r1]
	ldr	r2, [r2]
	mov	r1, r5, lsr r1
	ldrb	r3, [r2, +r1]
	tst	r3, #3
	bne	LBB27_9
	mov	r8, r0
	ldrb	r0, [r6, #+2]
	cmp	r0, #0
	beq	LBB27_10
	orr	r3, r3, #2
	strb	r3, [r2, +r1]
	ldr	r1, [r8, #+700]
	ldr	r2, [r8, #+704]
	add	r3, r1, #4
	cmp	r3, r2
	bls	LBB27_6
	add	r0, r8, #174, 30
	mov	r1, #0
	bl	__ZN4MMgc11GCMarkStack11PushSegmentEb
	cmp	r0, #0
	beq	LBB27_7
	ldr	r1, [r8, #+700]
LBB27_6:
	add	r2, r1, #4
	str	r2, [r8, #+700]
	cmp	r1, #0
	bne	LBB27_8
LBB27_7:
	ldrb	r1, [r6, #+1]
	ldr	r2, [r6, #+20]
	mov	r0, #1
	mov	r1, r5, lsr r1
	ldrb	r3, [r2, +r1]
	and	r3, r3, #253
	strb	r3, [r2, +r1]
	strb	r0, [r8, #+760]
	b	LBB27_9
LBB27_8:
	str	r4, [r1]
LBB27_9:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB27_10:
	orr	r0, r3, #1
	strb	r0, [r2, +r1]
	ldr	r1, [r8, #+252]
	ldr	r0, [r6, #+4]
	add	r1, r1, #1
	str	r1, [r8, #+252]
	ldr	r1, [r8, #+264]
	add	r0, r1, r0
	str	r0, [r8, #+264]
	b	LBB27_9
	.align	2
	LCPI27_0:
 	.long	4294963200

Leh_func_end23:

	.globl	__ZN4MMgc2GC14TraceAtomValueEi
	.align	2
__ZN4MMgc2GC14TraceAtomValueEi:
Leh_func_begin24:
	stmfd	sp!, {r7, lr}
	and	r2, r1, #7
	mov	r7, sp
	cmp	r2, #7
	cmpne	r2, #4
	beq	LBB28_2
	sub	r2, r2, #1
	cmp	r2, #2
	bicls	r1, r1, #7
	blls	__ZN4MMgc2GC12TracePointerEPv
	b	LBB28_3
LBB28_2:
	bic	r1, r1, #7
	bl	__ZN4MMgc2GC12TracePointerEPv
LBB28_3:
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end24:

	.globl	__ZN4MMgc2GC15WriteBarrierHitEPKv
	.align	2
__ZN4MMgc2GC15WriteBarrierHitEPKv:
Leh_func_begin25:
	stmfd	sp!, {r4, r5, r7, lr}
	ldrb	r2, [r0, #+670]
	add	r7, sp, #8
	mov	r4, r1
	cmp	r2, #0
	bne	LBB29_10
	mov	r5, r0
	ldr	r0, [r5, #+732]
	ldr	r1, [r5, #+736]
	add	r2, r0, #4
	cmp	r2, r1
	bls	LBB29_4
	add	r0, r5, #182, 30
	mov	r1, #0
	bl	__ZN4MMgc11GCMarkStack11PushSegmentEb
	cmp	r0, #0
	beq	LBB29_5
	ldr	r0, [r5, #+732]
LBB29_4:
	add	r1, r0, #4
	str	r1, [r5, #+732]
	cmp	r0, #0
	bne	LBB29_9
LBB29_5:
	ldr	r0, [r5, #+700]
	ldr	r1, [r5, #+704]
	add	r2, r0, #4
	cmp	r2, r1
	bls	LBB29_8
	add	r0, r5, #174, 30
	mov	r1, #0
	bl	__ZN4MMgc11GCMarkStack11PushSegmentEb
	cmp	r0, #0
	beq	LBB29_11
	ldr	r0, [r5, #+700]
LBB29_8:
	add	r1, r0, #4
	str	r1, [r5, #+700]
	cmp	r0, #0
	beq	LBB29_11
LBB29_9:
	str	r4, [r0]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
LBB29_10:
	mov	r0, #255
	orr	r0, r0, #15, 24
	ldr	r1, LCPI29_0
	and	r0, r4, r0
	and	r4, r4, r1
	orr	r1, r4, #1
	orr	r4, r4, #20
	ldrb	r1, [r1]
	mov	r0, r0, lsr r1
	ldr	r4, [r4]
	ldrb	r1, [r4, +r0]
	and	r1, r1, #252
	orr	r1, r1, #1
	strb	r1, [r4, +r0]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
LBB29_11:
	mov	r0, #255
	orr	r0, r0, #15, 24
	ldr	r1, LCPI29_0
	and	r0, r4, r0
	and	r4, r4, r1
	orr	r1, r4, #1
	orr	r4, r4, #20
	ldrb	r1, [r1]
	mov	r0, r0, lsr r1
	ldr	r4, [r4]
	ldrb	r1, [r4, +r0]
	and	r1, r1, #253
	strb	r1, [r4, +r0]
	mov	r1, #1
	strb	r1, [r5, #+760]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI29_0:
 	.long	4294963200

Leh_func_end25:

	.globl	__ZN4MMgc2GC26reversePointersWithinBlockEPvmm
	.align	2
__ZN4MMgc2GC26reversePointersWithinBlockEPvmm:
Leh_func_begin26:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r6, r1
	add	r7, sp, #12
	mov	r4, r3
	mov	r5, r2
	cmp	r6, #0
	beq	LBB30_7
	cmp	r4, #2
	blo	LBB30_7
	ldrb	r1, [r0, #+669]
	cmp	r1, #0
	beq	LBB30_5
	ldr	r2, LCPI30_0
	mov	r1, #255
	orr	r1, r1, #15, 24
	and	r2, r6, r2
	orr	r3, r2, #1
	and	r1, r6, r1
	ldrb	r3, [r3]
	mov	r1, r1, lsr r3
	orr	r3, r2, #20
	ldr	r3, [r3]
	ldrb	r9, [r3, +r1]
	tst	r9, #1
	ldrbne	r12, [r2, #+2]
	cmpne	r12, #0
	beq	LBB30_5
	ldr	r2, [r2, #+4]
	cmp	r2, #123, 28
	eorhi	r2, r9, #3
	strbhi	r2, [r3, +r1]
	movhi	r1, r6
	blhi	__ZN4MMgc2GC15WriteBarrierHitEPKv
LBB30_5:
	cmp	r4, #2
	sublo	sp, r7, #12
	ldmfdlo	sp!, {r4, r5, r6, r7, pc}
	add	r1, r5, r4, lsl #2
	add	r0, r6, r5
	mov	r2, r4, lsr #1
	add	r1, r1, r6
	sub	r1, r1, #4
LBB30_6:
	sub	r2, r2, #1
	ldr	r3, [r0]
	ldr	r9, [r1]
	str	r9, [r0], #+4
	str	r3, [r1], #-4
	cmp	r2, #0
	bne	LBB30_6
LBB30_7:
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI30_0:
 	.long	4294963200

Leh_func_end26:

	.globl	__ZN4MMgc2GC24WriteBarrierNoSubstituteEPKvS2_
	.align	2
__ZN4MMgc2GC24WriteBarrierNoSubstituteEPKvS2_:
Leh_func_begin27:
	stmfd	sp!, {r7, lr}
	ldrb	r3, [r0, #+669]
	mov	r7, sp
	cmp	r3, #0
	moveq	sp, r7
	ldmfdeq	sp!, {r7, pc}
	ldr	r3, LCPI31_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	orr	r3, r3, #20
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	ldr	r3, [r3]
	ldrb	r9, [r3, +r2]
	tst	r9, #1
	eorne	r9, r9, #3
	strbne	r9, [r3, +r2]
	blne	__ZN4MMgc2GC15WriteBarrierHitEPKv
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI31_0:
 	.long	4294963200

Leh_func_end27:

	.globl	__ZN4MMgc2GC43privateConservativeWriteBarrierNoSubstituteEPKv
	.align	2
__ZN4MMgc2GC43privateConservativeWriteBarrierNoSubstituteEPKv:
Leh_func_begin28:
	stmfd	sp!, {r4, r7, lr}
	ldr	r2, [r0, #+840]
	add	r7, sp, #4
	cmp	r2, r1
	subhi	sp, r7, #4
	ldmfdhi	sp!, {r4, r7, pc}
	ldr	r2, [r0, #+844]
	cmp	r2, r1
	bls	LBB32_9
	and	r2, r1, #63, 6
	add	r2, r0, r2, lsr #24
	ldr	r2, [r2, #+848]
	cmp	r2, #0
	movne	r9, #255
	orrne	r9, r9, #15, 24
	movne	r3, #6
	andne	r9, r9, r1, lsr #14
	ldrbne	r2, [r2, +r9]
	andne	r3, r3, r1, lsr #11
	movne	r9, #3
	tstne	r2, r9, lsl r3
	beq	LBB32_9
	mov	r9, #3
	and	r2, r9, r2, lsr r3
	cmp	r2, #1
	beq	LBB32_10
	cmp	r2, #2
	bne	LBB32_7
	sub	r2, r1, #1, 20
	mov	r3, #6
	mov	r9, #255
	orr	r9, r9, #15, 24
	mov	r12, #3
LBB32_5:
	mov	r1, r2
	and	r2, r1, #63, 6
	add	r2, r0, r2, lsr #24
	ldr	r2, [r2, #+848]
	cmp	r2, #0
	beq	LBB32_7
	and	r4, r9, r1, lsr #14
	and	lr, r3, r1, lsr #11
	ldrb	r2, [r2, +r4]
	and	lr, r12, r2, lsr lr
	sub	r2, r1, #1, 20
	cmp	lr, #2
	beq	LBB32_5
LBB32_7:
	ldr	r2, LCPI32_0
	and	r1, r1, r2
	orr	r1, r1, #32
LBB32_8:
	ldr	r3, LCPI32_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	orr	r3, r3, #20
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	ldr	r3, [r3]
	ldrb	r9, [r3, +r2]
	tst	r9, #1
	eorne	r9, r9, #3
	strbne	r9, [r3, +r2]
	blne	__ZN4MMgc2GC15WriteBarrierHitEPKv
LBB32_9:
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
LBB32_10:
	ldr	r2, LCPI32_0
	and	r2, r1, r2
	orr	r3, r2, #44
	orr	r9, r2, #12
	ldr	r3, [r3]
	sub	r1, r1, r3
	ldr	r9, [r9]
	ldrh	r12, [r9, #+58]
	orr	r2, r2, #4
	mul	r1, r12, r1
	ldrh	r9, [r9, #+60]
	ldr	r2, [r2]
	mov	r1, r1, asr r9
	mla	r1, r1, r2, r3
	b	LBB32_8
	.align	2
	LCPI32_0:
 	.long	4294963200

Leh_func_end28:

	.globl	__ZN4MMgc2GC12WriteBarrierEPKvS2_
	.align	2
__ZN4MMgc2GC12WriteBarrierEPKvS2_:
Leh_func_begin29:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	mov	r4, r1
	mov	r5, r0
	cmp	r1, #8
	blo	LBB33_13
	ldr	r0, LCPI33_0
	and	r0, r4, r0
	orr	r0, r0, #8
	ldr	r0, [r0]
	ldrb	r1, [r0, #+669]
	cmp	r1, #0
	beq	LBB33_13
	and	r1, r5, #63, 6
	add	r1, r0, r1, lsr #24
	ldr	r1, [r1, #+848]
	cmp	r1, #0
	bne	LBB33_4
	mov	r1, r5
	b	LBB33_11
LBB33_4:
	mov	r3, #255
	orr	r3, r3, #15, 24
	mov	r2, #6
	and	r3, r3, r5, lsr #14
	ldrb	r1, [r1, +r3]
	and	r2, r2, r5, lsr #11
	mov	r3, #3
	and	r1, r3, r1, lsr r2
	cmp	r1, #1
	beq	LBB33_7
	cmp	r1, #2
	beq	LBB33_8
	mov	r1, r5
	b	LBB33_11
LBB33_7:
	ldr	r1, LCPI33_0
	and	r1, r5, r1
	orr	r2, r1, #44
	orr	r9, r1, #12
	orr	r1, r1, #4
	ldr	r2, [r2]
	sub	r3, r5, r2
	ldr	r9, [r9]
	ldrh	r12, [r9, #+58]
	mul	r3, r12, r3
	ldr	r1, [r1]
	ldrh	r9, [r9, #+60]
	mov	r3, r3, asr r9
	mla	r1, r3, r1, r2
	b	LBB33_12
LBB33_8:
	sub	r2, r5, #1, 20
	mov	r3, #6
	mov	r9, #255
	orr	r9, r9, #15, 24
	mov	r12, #3
LBB33_9:
	mov	r1, r2
	and	r2, r1, #63, 6
	add	r2, r0, r2, lsr #24
	ldr	r2, [r2, #+848]
	cmp	r2, #0
	beq	LBB33_11
	and	r6, r9, r1, lsr #14
	and	lr, r3, r1, lsr #11
	ldrb	r2, [r2, +r6]
	and	lr, r12, r2, lsr lr
	sub	r2, r1, #1, 20
	cmp	lr, #2
	beq	LBB33_9
LBB33_11:
	ldr	r2, LCPI33_0
	and	r1, r1, r2
	orr	r1, r1, #32
LBB33_12:
	ldr	r3, LCPI33_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	orr	r3, r3, #20
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	ldr	r3, [r3]
	ldrb	r9, [r3, +r2]
	tst	r9, #1
	eorne	r9, r9, #3
	strbne	r9, [r3, +r2]
	blne	__ZN4MMgc2GC15WriteBarrierHitEPKv
LBB33_13:
	str	r4, [r5]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI33_0:
 	.long	4294963200

Leh_func_end29:

	.globl	__ZN4MMgc2GC12UnlockObjectEPNS_12GCObjectLockE
	.align	2
__ZN4MMgc2GC12UnlockObjectEPNS_12GCObjectLockE:
Leh_func_begin30:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r2, [r1, #+4]
	add	r7, sp, #8
	cmp	r2, #0
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
	mov	r4, r1
	ldr	r1, LCPI34_0
	mov	r5, r0
	and	r0, r2, r1
	orr	r1, r0, #3
	ldrb	r1, [r1]
	cmp	r1, #0
	ldrne	r1, [r2, #+4]
	cmpne	r1, #0
	beq	LBB34_7
	tst	r1, #1, 2
	bne	LBB34_7
	uxtb	r3, r1
	cmp	r3, #1
	beq	LBB34_7
	sub	r1, r1, #1
	str	r1, [r2, #+4]
	uxtb	r1, r1
	cmp	r1, #1
	bne	LBB34_7
	ldr	r0, [r0, #+8]
	ldr	r1, [r0, #+1976]
	ldr	r3, [r0, #+1980]
	cmp	r1, r3
	bhs	LBB34_6
	str	r2, [r1], #+4
	str	r1, [r0, #+1976]
	mov	r9, #255
	orr	r9, r9, #7, 4
	ldr	r1, [r0, #+1984]
	add	r3, r1, #1
	str	r3, [r0, #+1984]
	ldrb	r0, [r0, #+1964]
	mov	r3, #255
	orr	r3, r3, #5, 4
	tst	r0, #1
	moveq	r9, r3
	ldr	r0, [r2, #+4]
	and	r0, r9, r0
	orr	r0, r0, r1, lsl #8
	orr	r0, r0, #2, 2
	str	r0, [r2, #+4]
	b	LBB34_7
LBB34_6:
	add	r0, r0, #122, 28
	mov	r1, r2
	bl	__ZN4MMgc3ZCT7AddSlowEPNS_8RCObjectE
LBB34_7:
	ldr	r0, [r4, #+8]
	cmp	r0, #0
	beq	LBB34_9
	ldr	r1, [r4, #+12]
	add	r0, r0, #12
	bl	__ZN4MMgc2GC12WriteBarrierEPKvS2_
	b	LBB34_10
LBB34_9:
	ldr	r0, [r4, #+12]
	str	r0, [r5, #+2032]
LBB34_10:
	ldr	r0, [r4, #+12]
	cmp	r0, #0
	ldrne	r1, [r4, #+8]
	addne	r0, r0, #8
	blne	__ZN4MMgc2GC12WriteBarrierEPKvS2_
	add	r0, r4, #12
	mov	r1, #0
	mov	r5, #0
	bl	__ZN4MMgc2GC12WriteBarrierEPKvS2_
	add	r0, r4, #8
	mov	r1, #0
	bl	__ZN4MMgc2GC12WriteBarrierEPKvS2_
	str	r5, [r4, #+4]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI34_0:
 	.long	4294963200

Leh_func_end30:

	.globl	__ZN4MMgc2GC19WriteBarrierRC_ctorEPKvS2_
	.align	2
__ZN4MMgc2GC19WriteBarrierRC_ctorEPKvS2_:
Leh_func_begin31:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r4, r1
	mov	r5, r0
	cmp	r1, #8
	blo	LBB35_20
	ldr	r0, LCPI35_0
	and	r6, r4, r0
	bic	r8, r4, #7
	orr	r0, r6, #8
	ldr	r0, [r0]
	ldrb	r1, [r0, #+669]
	cmp	r1, #0
	beq	LBB35_13
	and	r1, r5, #63, 6
	add	r1, r0, r1, lsr #24
	ldr	r1, [r1, #+848]
	cmp	r1, #0
	bne	LBB35_4
	mov	r1, r5
	b	LBB35_11
LBB35_4:
	mov	r3, #255
	orr	r3, r3, #15, 24
	mov	r2, #6
	and	r3, r3, r5, lsr #14
	ldrb	r1, [r1, +r3]
	and	r2, r2, r5, lsr #11
	mov	r3, #3
	and	r1, r3, r1, lsr r2
	cmp	r1, #1
	beq	LBB35_7
	cmp	r1, #2
	beq	LBB35_8
	mov	r1, r5
	b	LBB35_11
LBB35_7:
	ldr	r1, LCPI35_0
	and	r1, r5, r1
	orr	r2, r1, #44
	orr	r9, r1, #12
	orr	r1, r1, #4
	ldr	r2, [r2]
	sub	r3, r5, r2
	ldr	r9, [r9]
	ldrh	r12, [r9, #+58]
	mul	r3, r12, r3
	ldr	r1, [r1]
	ldrh	r9, [r9, #+60]
	mov	r3, r3, asr r9
	mla	r1, r3, r1, r2
	b	LBB35_12
LBB35_8:
	sub	r2, r5, #1, 20
	mov	r3, #6
	mov	r9, #255
	orr	r9, r9, #15, 24
	mov	r12, #3
LBB35_9:
	mov	r1, r2
	and	r2, r1, #63, 6
	add	r2, r0, r2, lsr #24
	ldr	r2, [r2, #+848]
	cmp	r2, #0
	beq	LBB35_11
	and	r10, r9, r1, lsr #14
	and	lr, r3, r1, lsr #11
	ldrb	r2, [r2, +r10]
	and	lr, r12, r2, lsr lr
	sub	r2, r1, #1, 20
	cmp	lr, #2
	beq	LBB35_9
LBB35_11:
	ldr	r2, LCPI35_0
	and	r1, r1, r2
	orr	r1, r1, #32
LBB35_12:
	ldr	r3, LCPI35_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	orr	r3, r3, #20
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	ldr	r3, [r3]
	ldrb	r9, [r3, +r2]
	tst	r9, #1
	eorne	r9, r9, #3
	strbne	r9, [r3, +r2]
	blne	__ZN4MMgc2GC15WriteBarrierHitEPKv
LBB35_13:
	ldr	r0, [r8, #+4]
	cmp	r0, #0
	beq	LBB35_20
	tst	r0, #1, 2
	bne	LBB35_20
	add	r0, r0, #1
	uxtb	r1, r0
	str	r0, [r8, #+4]
	cmp	r1, #255
	bne	LBB35_17
	orr	r0, r0, #1, 2
	b	LBB35_19
LBB35_17:
	cmp	r0, #0
	bge	LBB35_20
	ldr	r3, [r6, #+8]
	mov	r1, #255, 30
	orr	r1, r1, #3, 22
	and	r2, r1, r0, lsr #16
	and	r0, r1, r0, lsr #6
	ldr	r3, [r3, #+1956]
	ldr	r2, [r3, +r2]
	mov	r1, #0
	str	r1, [r2, +r0]
	ldr	r0, [r8, #+4]
	mov	r1, #255
	orr	r1, r1, #7, 4
	and	r0, r0, r1
LBB35_19:
	str	r0, [r8, #+4]
LBB35_20:
	str	r4, [r5]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI35_0:
 	.long	4294963200

Leh_func_end31:

	.globl	__ZN4MMgc2GC14WriteBarrierRCEPKvS2_
	.align	2
__ZN4MMgc2GC14WriteBarrierRCEPKvS2_:
Leh_func_begin32:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	mov	r4, r1
	mov	r5, r0
	cmp	r1, #8
	blo	LBB36_13
	ldr	r0, LCPI36_0
	and	r0, r4, r0
	orr	r0, r0, #8
	ldr	r0, [r0]
	ldrb	r1, [r0, #+669]
	cmp	r1, #0
	beq	LBB36_13
	and	r1, r5, #63, 6
	add	r1, r0, r1, lsr #24
	ldr	r1, [r1, #+848]
	cmp	r1, #0
	bne	LBB36_4
	mov	r1, r5
	b	LBB36_11
LBB36_4:
	mov	r3, #255
	orr	r3, r3, #15, 24
	mov	r2, #6
	and	r3, r3, r5, lsr #14
	ldrb	r1, [r1, +r3]
	and	r2, r2, r5, lsr #11
	mov	r3, #3
	and	r1, r3, r1, lsr r2
	cmp	r1, #1
	beq	LBB36_7
	cmp	r1, #2
	beq	LBB36_8
	mov	r1, r5
	b	LBB36_11
LBB36_7:
	ldr	r1, LCPI36_0
	and	r1, r5, r1
	orr	r2, r1, #44
	orr	r9, r1, #12
	orr	r1, r1, #4
	ldr	r2, [r2]
	sub	r3, r5, r2
	ldr	r9, [r9]
	ldrh	r12, [r9, #+58]
	mul	r3, r12, r3
	ldr	r1, [r1]
	ldrh	r9, [r9, #+60]
	mov	r3, r3, asr r9
	mla	r1, r3, r1, r2
	b	LBB36_12
LBB36_8:
	sub	r2, r5, #1, 20
	mov	r3, #6
	mov	r9, #255
	orr	r9, r9, #15, 24
	mov	r12, #3
LBB36_9:
	mov	r1, r2
	and	r2, r1, #63, 6
	add	r2, r0, r2, lsr #24
	ldr	r2, [r2, #+848]
	cmp	r2, #0
	beq	LBB36_11
	and	r6, r9, r1, lsr #14
	and	lr, r3, r1, lsr #11
	ldrb	r2, [r2, +r6]
	and	lr, r12, r2, lsr lr
	sub	r2, r1, #1, 20
	cmp	lr, #2
	beq	LBB36_9
LBB36_11:
	ldr	r2, LCPI36_0
	and	r1, r1, r2
	orr	r1, r1, #32
LBB36_12:
	ldr	r3, LCPI36_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	orr	r3, r3, #20
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	ldr	r3, [r3]
	ldrb	r9, [r3, +r2]
	tst	r9, #1
	eorne	r9, r9, #3
	strbne	r9, [r3, +r2]
	blne	__ZN4MMgc2GC15WriteBarrierHitEPKv
LBB36_13:
	ldr	r0, [r5]
	cmp	r0, #8
	blo	LBB36_21
	bic	r1, r0, #7
	orr	r2, r1, #4
	ldr	r2, [r2]
	cmp	r2, #0
	beq	LBB36_21
	tst	r2, #1, 2
	bne	LBB36_21
	uxtb	r3, r2
	cmp	r3, #1
	beq	LBB36_21
	sub	r2, r2, #1
	str	r2, [r1, #+4]
	uxtb	r2, r2
	cmp	r2, #1
	bne	LBB36_21
	ldr	r2, LCPI36_0
	and	r0, r0, r2
	orr	r0, r0, #8
	ldr	r0, [r0]
	ldr	r2, [r0, #+1976]
	ldr	r3, [r0, #+1980]
	cmp	r2, r3
	bhs	LBB36_20
	str	r1, [r2], #+4
	str	r2, [r0, #+1976]
	mov	r9, #255
	orr	r9, r9, #7, 4
	ldr	r2, [r0, #+1984]
	add	r3, r2, #1
	str	r3, [r0, #+1984]
	ldrb	r0, [r0, #+1964]
	mov	r3, #255
	orr	r3, r3, #5, 4
	tst	r0, #1
	moveq	r9, r3
	ldr	r0, [r1, #+4]
	and	r0, r9, r0
	orr	r0, r0, r2, lsl #8
	orr	r0, r0, #2, 2
	str	r0, [r1, #+4]
	b	LBB36_21
LBB36_20:
	add	r0, r0, #122, 28
	bl	__ZN4MMgc3ZCT7AddSlowEPNS_8RCObjectE
LBB36_21:
	str	r4, [r5]
	cmp	r4, #8
	blo	LBB36_28
	bic	r0, r4, #7
	orr	r1, r0, #4
	ldr	r1, [r1]
	cmp	r1, #0
	beq	LBB36_28
	tst	r1, #1, 2
	bne	LBB36_28
	add	r1, r1, #1
	uxtb	r2, r1
	str	r1, [r0, #+4]
	cmp	r2, #255
	bne	LBB36_27
	orr	r1, r1, #1, 2
LBB36_26:
	str	r1, [r0, #+4]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB36_27:
	cmp	r1, #0
	subge	sp, r7, #12
	ldmfdge	sp!, {r4, r5, r6, r7, pc}
	ldr	r9, LCPI36_0
	mov	r2, #255, 30
	orr	r2, r2, #3, 22
	and	r3, r2, r1, lsr #16
	and	r1, r2, r1, lsr #6
	and	r9, r4, r9
	mov	r2, #0
	orr	r9, r9, #8
	ldr	r9, [r9]
	ldr	r9, [r9, #+1956]
	ldr	r3, [r9, +r3]
	str	r2, [r3, +r1]
	mov	r2, #255
	orr	r2, r2, #7, 4
	ldr	r1, [r0, #+4]
	and	r1, r1, r2
	b	LBB36_26
LBB36_28:
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI36_0:
 	.long	4294963200

Leh_func_end32:

	.globl	__ZN4MMgc2GC21privateWriteBarrierRCEPKvS2_S2_
	.align	2
__ZN4MMgc2GC21privateWriteBarrierRCEPKvS2_S2_:
Leh_func_begin33:
	stmfd	sp!, {r4, r5, r7, lr}
	ldrb	r9, [r0, #+669]
	add	r7, sp, #8
	mov	r4, r3
	mov	r5, r2
	cmp	r9, #0
	beq	LBB37_2
	ldr	r3, LCPI37_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	orr	r3, r3, #20
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	ldr	r3, [r3]
	ldrb	r9, [r3, +r2]
	tst	r9, #1
	eorne	r9, r9, #3
	strbne	r9, [r3, +r2]
	blne	__ZN4MMgc2GC15WriteBarrierHitEPKv
LBB37_2:
	ldr	r0, [r5]
	cmp	r0, #8
	blo	LBB37_10
	bic	r1, r0, #7
	orr	r2, r1, #4
	ldr	r2, [r2]
	cmp	r2, #0
	beq	LBB37_10
	tst	r2, #1, 2
	bne	LBB37_10
	uxtb	r3, r2
	cmp	r3, #1
	beq	LBB37_10
	sub	r2, r2, #1
	str	r2, [r1, #+4]
	uxtb	r2, r2
	cmp	r2, #1
	bne	LBB37_10
	ldr	r2, LCPI37_0
	and	r0, r0, r2
	orr	r0, r0, #8
	ldr	r0, [r0]
	ldr	r2, [r0, #+1976]
	ldr	r3, [r0, #+1980]
	cmp	r2, r3
	bhs	LBB37_9
	str	r1, [r2], #+4
	str	r2, [r0, #+1976]
	mov	r9, #255
	orr	r9, r9, #7, 4
	ldr	r2, [r0, #+1984]
	add	r3, r2, #1
	str	r3, [r0, #+1984]
	ldrb	r0, [r0, #+1964]
	mov	r3, #255
	orr	r3, r3, #5, 4
	tst	r0, #1
	moveq	r9, r3
	ldr	r0, [r1, #+4]
	and	r0, r9, r0
	orr	r0, r0, r2, lsl #8
	orr	r0, r0, #2, 2
	str	r0, [r1, #+4]
	b	LBB37_10
LBB37_9:
	add	r0, r0, #122, 28
	bl	__ZN4MMgc3ZCT7AddSlowEPNS_8RCObjectE
LBB37_10:
	str	r4, [r5]
	cmp	r4, #8
	blo	LBB37_17
	bic	r0, r4, #7
	orr	r1, r0, #4
	ldr	r1, [r1]
	cmp	r1, #0
	beq	LBB37_17
	tst	r1, #1, 2
	bne	LBB37_17
	add	r1, r1, #1
	uxtb	r2, r1
	str	r1, [r0, #+4]
	cmp	r2, #255
	bne	LBB37_16
	orr	r1, r1, #1, 2
LBB37_15:
	str	r1, [r0, #+4]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
LBB37_16:
	cmp	r1, #0
	subge	sp, r7, #8
	ldmfdge	sp!, {r4, r5, r7, pc}
	ldr	r9, LCPI37_0
	mov	r2, #255, 30
	orr	r2, r2, #3, 22
	and	r3, r2, r1, lsr #16
	and	r1, r2, r1, lsr #6
	and	r9, r4, r9
	mov	r2, #0
	orr	r9, r9, #8
	ldr	r9, [r9]
	ldr	r9, [r9, #+1956]
	ldr	r3, [r9, +r3]
	str	r2, [r3, +r1]
	mov	r2, #255
	orr	r2, r2, #7, 4
	ldr	r1, [r0, #+4]
	and	r1, r1, r2
	b	LBB37_15
LBB37_17:
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI37_0:
 	.long	4294963200

Leh_func_end33:

	.globl	__ZN4MMgc2GC19privateWriteBarrierEPKvS2_S2_
	.align	2
__ZN4MMgc2GC19privateWriteBarrierEPKvS2_S2_:
Leh_func_begin34:
	stmfd	sp!, {r4, r5, r7, lr}
	ldrb	r9, [r0, #+669]
	add	r7, sp, #8
	mov	r4, r3
	mov	r5, r2
	cmp	r9, #0
	beq	LBB38_2
	ldr	r3, LCPI38_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	orr	r3, r3, #20
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	ldr	r3, [r3]
	ldrb	r9, [r3, +r2]
	tst	r9, #1
	eorne	r9, r9, #3
	strbne	r9, [r3, +r2]
	blne	__ZN4MMgc2GC15WriteBarrierHitEPKv
LBB38_2:
	str	r4, [r5]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI38_0:
 	.long	4294963200

Leh_func_end34:

	.globl	__ZN4MMgc2GC16WriteBarrierTrapEPKv
	.align	2
__ZN4MMgc2GC16WriteBarrierTrapEPKv:
Leh_func_begin35:
	stmfd	sp!, {r7, lr}
	ldrb	r2, [r0, #+669]
	mov	r7, sp
	cmp	r2, #0
	moveq	sp, r7
	ldmfdeq	sp!, {r7, pc}
	ldr	r3, LCPI39_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	orr	r3, r3, #20
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	ldr	r3, [r3]
	ldrb	r9, [r3, +r2]
	tst	r9, #1
	eorne	r9, r9, #3
	strbne	r9, [r3, +r2]
	blne	__ZN4MMgc2GC15WriteBarrierHitEPKv
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI39_0:
 	.long	4294963200

Leh_func_end35:

	.globl	__ZN4MMgc2GC21Push_GCObject_MayFailEPKv
	.align	2
__ZN4MMgc2GC21Push_GCObject_MayFailEPKv:
Leh_func_begin36:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r2, [r0, #+700]
	add	r7, sp, #8
	ldr	r3, [r0, #+704]
	add	r9, r2, #4
	mov	r4, r1
	mov	r5, r0
	cmp	r9, r3
	bls	LBB40_2
	add	r0, r5, #174, 30
	mov	r1, #0
	bl	__ZN4MMgc11GCMarkStack11PushSegmentEb
	cmp	r0, #0
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
	ldr	r2, [r5, #+700]
LBB40_2:
	add	r0, r2, #4
	str	r0, [r5, #+700]
	cmp	r2, #0
	strne	r4, [r2]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end36:

	.globl	__ZN4MMgc2GC23movePointersWithinBlockEPPvjjmb
	.align	2
__ZN4MMgc2GC23movePointersWithinBlockEPPvjjmb:
Leh_func_begin37:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	cmp	r3, r2
	ldrne	r4, [r7, #+8]
	cmpne	r4, #0
	beq	LBB41_6
	mov	r10, r1
	ldrb	r1, [r0, #+669]
	ldr	r5, [r7, #+12]
	mov	r6, r3
	mov	r8, r2
	cmp	r1, #0
	beq	LBB41_4
	ldr	r2, LCPI41_0
	mov	r1, #255
	orr	r1, r1, #15, 24
	and	r2, r10, r2
	orr	r3, r2, #1
	and	r1, r10, r1
	ldrb	r3, [r3]
	mov	r1, r1, lsr r3
	orr	r3, r2, #20
	ldr	r3, [r3]
	ldrb	r9, [r3, +r1]
	tst	r9, #1
	ldrbne	r12, [r2, #+2]
	cmpne	r12, #0
	beq	LBB41_4
	ldr	r2, [r2, #+4]
	cmp	r2, #123, 28
	eorhi	r2, r9, #3
	strbhi	r2, [r3, +r1]
	movhi	r1, r10
	blhi	__ZN4MMgc2GC15WriteBarrierHitEPKv
LBB41_4:
	mov	r4, r4, lsl #2
	add	r0, r10, r8
	add	r1, r10, r6
	mov	r2, r4
	bl	_memmove
	cmp	r5, #0
	beq	LBB41_6
	sub	r0, r6, r8
	sub	r2, r8, r6
	cmp	r6, r8
	add	r1, r4, r8
	movhi	r2, r0
	cmp	r6, r8
	movhi	r6, r1
	add	r0, r10, r6
	mov	r1, #0
	bl	_memset
LBB41_6:
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI41_0:
 	.long	4294963200

Leh_func_end37:

	.globl	__ZN4MMgc2GC12movePointersEPvPS1_jPPKvjm
	.align	2
__ZN4MMgc2GC12movePointersEPvPS1_jPPKvjm:
Leh_func_begin38:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldrb	r9, [r0, #+669]
	ldr	r4, [r7, #+16]
	ldr	r5, [r7, #+12]
	ldr	r6, [r7, #+8]
	mov	r8, r3
	mov	r10, r2
	cmp	r9, #0
	beq	LBB42_5
	ldr	r3, LCPI42_0
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r3, r1, r3
	orr	r9, r3, #1
	and	r2, r1, r2
	ldrb	r9, [r9]
	mov	r2, r2, lsr r9
	orr	r9, r3, #20
	ldr	r9, [r9]
	ldrb	r12, [r9, +r2]
	tst	r12, #1
	ldrbne	lr, [r3, #+2]
	cmpne	lr, #0
	beq	LBB42_5
	cmp	r10, r6
	bne	LBB42_4
	ldr	r3, [r3, #+4]
	cmp	r3, #123, 28
	bls	LBB42_5
LBB42_4:
	eor	r3, r12, #3
	strb	r3, [r9, +r2]
	bl	__ZN4MMgc2GC15WriteBarrierHitEPKv
LBB42_5:
	add	r0, r10, r8, lsl #2
	add	r1, r6, r5, lsl #2
	mov	r2, r4, lsl #2
	bl	_memmove
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI42_0:
 	.long	4294963200

Leh_func_end38:

	.globl	__ZN4MMgc2GC16FlushBarrierWorkEv
	.align	2
__ZN4MMgc2GC16FlushBarrierWorkEv:
Leh_func_begin39:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r4, r0
	add	r5, r4, #174, 30
	add	r6, r4, #182, 30
	mov	r0, r5
	mov	r1, r6
	add	r7, sp, #12
	bl	__ZN4MMgc11GCMarkStack22TransferEverythingFromERS0_
	cmp	r0, #0
	subne	sp, r7, #12
	ldmfdne	sp!, {r4, r5, r6, r7, pc}
	mov	r0, #1
	strb	r0, [r4, #+760]
	mov	r1, r6
	mov	r0, r5
	bl	__ZN4MMgc11GCMarkStack21TransferSomethingFromERS0_
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end39:

	.globl	__ZN4MMgc2GC16CheckBarrierWorkEv
	.align	2
__ZN4MMgc2GC16CheckBarrierWorkEv:
Leh_func_begin40:
	stmfd	sp!, {r7, lr}
	ldr	r1, [r0, #+748]
	mov	r7, sp
	cmp	r1, #9
	movlo	sp, r7
	ldmfdlo	sp!, {r7, pc}
	add	r2, r0, #174, 30
	add	r1, r0, #182, 30
	mov	r0, r2
	bl	__ZN4MMgc11GCMarkStack30TransferOneInactiveSegmentFromERS0_
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end40:

	.globl	__ZN4MMgc2GC24MarkItem_ExactObjectTailEPKvm
	.align	2
__ZN4MMgc2GC24MarkItem_ExactObjectTailEPKvm:
Leh_func_begin41:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r4, r2
	mov	r6, r0
	add	r0, r6, #174, 30
	add	r2, r4, #1
	mov	r5, r1
	bl	__ZN4MMgc11GCMarkStack25Push_LargeExactObjectTailEPKvm
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r6, #+760]
	ldr	r0, [r5]
	ldr	r3, [r0, #+8]
	mov	r1, r6
	mov	r2, r4
	ldr	r8, [r6, #+700]
	mov	r0, r5
	blx	r3
	cmp	r0, #0
	bne	LBB45_8
	ldr	r0, [r8, #-4]
	ldr	r1, [r6, #+724]
	str	r1, [r8, #-4]
	tst	r0, #3
	beq	LBB45_8
	mov	r1, #1
	cmp	r1, r0, lsr #2
	beq	LBB45_6
	mov	r0, r0, lsr #2
	sub	r1, r0, #5
	cmp	r1, #2
	blo	LBB45_7
	sub	r0, r0, #2
	cmp	r0, #2
	bhi	LBB45_8
	ldr	r0, [r6, #+724]
	str	r0, [r8, #-16]
LBB45_6:
	ldr	r0, [r6, #+724]
	str	r0, [r8, #-12]
LBB45_7:
	ldr	r0, [r6, #+724]
	str	r0, [r8, #-8]
LBB45_8:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end41:

	.globl	__ZN4MMgc2GC18SplitExactGCObjectEPKv
	.align	2
__ZN4MMgc2GC18SplitExactGCObjectEPKv:
Leh_func_begin42:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r2, #255
	orr	r2, r2, #15, 24
	add	r7, sp, #12
	mov	r4, r1
	mov	r5, r0
	and	r2, r1, r2
	cmp	r2, #32
	beq	LBB46_3
	mov	r6, #1
LBB46_2:
	ldr	r0, [r4]
	ldr	r3, [r0, #+8]
	mov	r2, r6
	mov	r1, r5
	add	r6, r6, #1
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	LBB46_2
	b	LBB46_4
LBB46_3:
	ldr	r0, LCPI46_0
	add	r6, r5, #174, 30
	and	r0, r4, r0
	orr	r0, r0, #25
	ldrb	r1, [r0]
	orr	r1, r1, #1
	strb	r1, [r0]
	mov	r0, r6
	mov	r1, r4
	bl	__ZN4MMgc11GCMarkStack25Push_LargeObjectProtectorEPKv
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r5, #+760]
	mov	r2, #1
	mov	r0, r6
	mov	r1, r4
	bl	__ZN4MMgc11GCMarkStack25Push_LargeExactObjectTailEPKvm
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r5, #+760]
LBB46_4:
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI46_0:
 	.long	4294963200

Leh_func_end42:

	.globl	__ZN4MMgc2GC35SplitItem_ConservativeOrNonGCObjectEPKvRjNS_11GCMarkStack7TypeTagES2_
	.align	2
__ZN4MMgc2GC35SplitItem_ConservativeOrNonGCObjectEPKvRjNS_11GCMarkStack7TypeTagES2_:
Leh_func_begin43:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldr	r4, [r7, #+8]
	mov	r5, r3
	mov	r6, r2
	mov	r8, r1
	mov	r10, r0
	cmp	r3, #0
	bne	LBB47_2
	ldr	r0, LCPI47_0
	and	r0, r8, r0
	orr	r0, r0, #25
	ldrb	r1, [r0]
	orr	r1, r1, #1
	strb	r1, [r0]
	add	r0, r10, #174, 30
	mov	r1, r8
	bl	__ZN4MMgc11GCMarkStack25Push_LargeObjectProtectorEPKv
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r10, #+760]
LBB47_2:
	cmp	r5, #4
	bhi	LBB47_8
	ldr	r0, [r6]
	sub	r2, r0, #123, 28
	add	r1, r8, #123, 28
	.set LPCRELV0, (LJTI47_0_0-(LPCRELL0+8))
LPCRELL0:
	add	r0, pc, #LPCRELV0
	ldr	pc, [r0, +r5, lsl #2] 
LJTI47_0_0:
	.long	 LBB47_7
	.long	 LBB47_8
	.long	 LBB47_4
	.long	 LBB47_7
	.long	 LBB47_6
LBB47_4:
	add	r0, r10, #174, 30
	mov	r3, r4
	bl	__ZN4MMgc11GCMarkStack16Push_StackMemoryEPKvjS2_
LBB47_5:
	cmp	r0, #0
	moveq	r4, #1
	strbeq	r4, [r10, #+760]
	b	LBB47_8
LBB47_6:
	add	r0, r10, #174, 30
	mov	r3, r4
	bl	__ZN4MMgc11GCMarkStack19Push_LargeRootChunkEPKvjS2_
	b	LBB47_5
LBB47_7:
	add	r0, r10, #174, 30
	mov	r3, r4
	bl	__ZN4MMgc11GCMarkStack21Push_LargeObjectChunkEPKvjS2_
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r10, #+760]
LBB47_8:
	mov	r0, #123, 28
	str	r0, [r6]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI47_0:
 	.long	4294963200

Leh_func_end43:
	.section	__TEXT,__const
	.align	2
lJTI47_0:
LJTI47_0:
	.long	LBB47_7
	.long	LBB47_8
	.long	LBB47_4
	.long	LBB47_7
	.long	LBB47_6

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc2GC34MarkItem_ConservativeOrNonGCObjectEPKvjNS_11GCMarkStack7TypeTagES2_b
	.align	2
__ZN4MMgc2GC34MarkItem_ConservativeOrNonGCObjectEPKvjNS_11GCMarkStack7TypeTagES2_b:
Leh_func_begin44:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	sub	sp, sp, #8
	str	r2, [sp, #+4]
	ldr	r4, [r7, #+12]
	mov	r5, r3
	mov	r6, r1
	mov	r8, r0
	cmp	r2, #123, 28
	ldrhi	r0, [r7, #+8]
	strhi	r0, [sp]
	addhi	r2, sp, #4
	movhi	r1, r6
	movhi	r3, r5
	movhi	r0, r8
	blhi	__ZN4MMgc2GC35SplitItem_ConservativeOrNonGCObjectEPKvRjNS_11GCMarkStack7TypeTagES2_
	cmp	r5, #0
	bne	LBB48_2
	ldr	r1, LCPI48_0
	mov	r0, #255
	orr	r0, r0, #15, 24
	and	r1, r6, r1
	orr	r2, r1, #1
	and	r0, r6, r0
	orr	r1, r1, #20
	ldrb	r2, [r2]
	mov	r0, r0, lsr r2
	ldr	r1, [r1]
	ldrb	r2, [r1, +r0]
	and	r2, r2, #252
	orr	r2, r2, #1
	strb	r2, [r1, +r0]
LBB48_2:
	ldr	r0, [r8, #+248]
	ldr	r1, [sp, #+4]
	add	r0, r0, #1
	str	r0, [r8, #+248]
	ldr	r0, [r8, #+260]
	add	r0, r0, r1
	str	r0, [r8, #+260]
	bic	r0, r1, #3
	add	r5, r6, r0
	b	LBB48_4
LBB48_3:
	ldr	r1, [r6], #+4
	mov	r0, r8
	mov	r2, r4
	bl	__ZN4MMgc2GC24TraceConservativePointerEmb
LBB48_4:
	cmp	r6, r5
	subhs	sp, r7, #16
	ldrhs	r8, [sp], #+4
	ldmfdhs	sp!, {r4, r5, r6, r7, pc}
	b	LBB48_3
	.align	2
	LCPI48_0:
 	.long	4294963200

Leh_func_end44:

	.globl	__ZN4MMgc2GC24TraceConservativePointerEmb
	.align	2
__ZN4MMgc2GC24TraceConservativePointerEmb:
Leh_func_begin45:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r3, [r0, #+840]
	add	r7, sp, #12
	cmp	r3, r1
	bhi	LBB49_20
	mov	r4, r0
	ldr	r0, [r4, #+844]
	cmp	r0, r1
	bls	LBB49_20
	and	r0, r1, #63, 6
	add	r0, r4, r0, lsr #24
	ldr	r0, [r0, #+848]
	cmp	r0, #0
	beq	LBB49_20
	mov	r9, #255
	orr	r9, r9, #15, 24
	mov	r3, #6
	and	r9, r9, r1, lsr #14
	ldrb	r0, [r0, +r9]
	and	r3, r3, r1, lsr #11
	mov	r9, #3
	and	r0, r9, r0, lsr r3
	cmp	r0, #3
	beq	LBB49_26
	cmp	r0, #1
	bne	LBB49_24
	ldr	r0, LCPI49_0
	cmp	r2, #0
	and	r0, r1, r0
	beq	LBB49_8
	ldr	r2, [r0, #+44]
	cmp	r2, r1
	bhi	LBB49_20
	ldr	r9, [r0, #+12]
	sub	r3, r1, r2
	ldrh	r12, [r9, #+58]
	mul	r3, r12, r3
	ldrh	r9, [r9, #+60]
	mov	r3, r3, asr r9
	ldr	r9, [r0, #+4]
	mla	r5, r3, r9, r2
	b	LBB49_10
LBB49_8:
	ldr	r2, [r0, #+44]
	bic	r5, r1, #7
	cmp	r2, r5
	bhi	LBB49_20
	ldr	r3, [r0, #+12]
	sub	r9, r5, r2
	ldrh	r12, [r3, #+58]
	mul	r9, r12, r9
	ldrh	r3, [r3, #+60]
	mov	r3, r9, asr r3
	ldr	r9, [r0, #+4]
	mla	r2, r3, r9, r2
	cmp	r2, r5
	bne	LBB49_20
LBB49_10:
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r6, r5, r2
	ldr	r3, [r0, #+20]
	ldrb	r2, [r0, #+1]
	mov	r2, r6, lsr r2
	ldrb	r12, [r3, +r2]
	tst	r12, #3
	bne	LBB49_20
	ldrb	r0, [r0, #+2]
	cmp	r0, #0
	beq	LBB49_22
	eor	r0, r5, r1
	cmp	r0, #1, 20
	bhs	LBB49_14
	ldr	r0, [r4, #+764]
	cmp	r0, #0
	bne	LBB49_21
LBB49_14:
	orr	r0, r12, #2
	strb	r0, [r3, +r2]
	ldr	r0, [r4, #+700]
	ldr	r2, [r4, #+704]
	add	r3, r0, #4
	cmp	r3, r2
	bls	LBB49_17
	add	r0, r4, #174, 30
	mov	r1, #0
	bl	__ZN4MMgc11GCMarkStack11PushSegmentEb
	cmp	r0, #0
	beq	LBB49_18
	ldr	r0, [r4, #+700]
LBB49_17:
	add	r2, r0, #4
	str	r2, [r4, #+700]
	cmp	r0, #0
	bne	LBB49_19
LBB49_18:
	ldr	r0, LCPI49_0
	mov	r1, #1
	and	r0, r5, r0
	orr	r2, r0, #1
	ldrb	r2, [r2]
	orr	r0, r0, #20
	mov	r2, r6, lsr r2
	ldr	r0, [r0]
	ldrb	r3, [r0, +r2]
	and	r3, r3, #253
	strb	r3, [r0, +r2]
	b	LBB49_39
LBB49_19:
	str	r5, [r0]
LBB49_20:
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB49_21:
	sub	r0, r0, #1
	str	r0, [r4, #+764]
	mov	r1, r5
	mov	r0, r4
	bl	__ZN4MMgc2GC17MarkItem_GCObjectEPKv
	ldr	r0, [r4, #+764]
	add	r0, r0, #1
	str	r0, [r4, #+764]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB49_22:
	orr	r0, r12, #1
	strb	r0, [r3, +r2]
	ldr	r0, [r4, #+252]
	add	r0, r0, #1
	str	r0, [r4, #+252]
	ldr	r0, [r4, #+264]
	add	r0, r0, r9
LBB49_23:
	str	r0, [r4, #+264]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB49_24:
	cmp	r2, #0
	beq	LBB49_20
	cmp	r0, #2
	bne	LBB49_20
LBB49_26:
	cmp	r2, #0
	beq	LBB49_31
	cmp	r0, #3
	bne	LBB49_30
	mov	r0, #255
	orr	r0, r0, #15, 24
	and	r0, r1, r0
	cmp	r0, #32
	blo	LBB49_20
	ldr	r0, LCPI49_0
	and	r0, r1, r0
	orr	r0, r0, #32
	b	LBB49_33
LBB49_30:
	mov	r2, #0
	mov	r0, r4
	bl	__ZN4MMgc2GC20FindBeginningGuardedEPKvb
	b	LBB49_33
LBB49_31:
	mov	r0, #254, 30
	orr	r0, r0, #3, 22
	and	r0, r1, r0
	cmp	r0, #32
	bne	LBB49_20
	bic	r0, r1, #7
LBB49_33:
	mov	r5, r0
	ldr	r1, LCPI49_0
	and	r6, r5, r1
	orr	r0, r6, #24
	ldrb	r0, [r0]
	tst	r0, #3
	subne	sp, r7, #12
	ldmfdne	sp!, {r4, r5, r6, r7, pc}
	ldrb	r1, [r6, #+2]
	cmp	r1, #0
	beq	LBB49_40
	orr	r0, r0, #2
	strb	r0, [r6, #+24]
	ldr	r0, [r4, #+700]
	ldr	r1, [r4, #+704]
	add	r2, r0, #4
	cmp	r2, r1
	bls	LBB49_37
	add	r0, r4, #174, 30
	mov	r1, #0
	bl	__ZN4MMgc11GCMarkStack11PushSegmentEb
	cmp	r0, #0
	beq	LBB49_38
	ldr	r0, [r4, #+700]
LBB49_37:
	add	r1, r0, #4
	str	r1, [r4, #+700]
	cmp	r0, #0
	bne	LBB49_19
LBB49_38:
	mov	r0, #255
	orr	r0, r0, #15, 24
	ldr	r1, [r6, #+20]
	and	r0, r5, r0
	ldrb	r5, [r6, #+1]
	mov	r0, r0, lsr r5
	ldrb	r6, [r1, +r0]
	and	r6, r6, #253
	strb	r6, [r1, +r0]
	mov	r1, #1
LBB49_39:
	strb	r1, [r4, #+760]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB49_40:
	ldr	r1, [r6, #+4]
	orr	r0, r0, #1
	strb	r0, [r6, #+24]
	ldr	r0, [r4, #+252]
	add	r0, r0, #1
	str	r0, [r4, #+252]
	ldr	r0, [r4, #+264]
	add	r0, r0, r1
	b	LBB49_23
	.align	2
	LCPI49_0:
 	.long	4294963200

Leh_func_end45:

	.globl	__ZN4MMgc2GC17MarkItem_GCObjectEPKv
	.align	2
__ZN4MMgc2GC17MarkItem_GCObjectEPKv:
Leh_func_begin46:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	mov	r2, #255
	orr	r2, r2, #15, 24
	and	r4, r1, r2
	mov	r8, r1
	mov	r10, r0
	ldr	r2, LCPI50_0
	and	r5, r1, r2
	orr	r3, r5, #20
	orr	r12, r5, #4
	ldr	r6, [r12]
	orr	r2, r5, #1
	ldr	r3, [r3]
	ldrb	r2, [r2]
	mov	r2, r4, lsr r2
	ldrb	r9, [r3, +r2]
	tst	r9, #16
	beq	LBB50_7
	and	r0, r9, #252
	mov	r1, r10
	orr	r0, r0, #1
	strb	r0, [r3, +r2]
	mov	r2, #0
	ldr	r0, [r8]
	ldr	r3, [r0, #+8]
	mov	r0, r8
	blx	r3
	cmp	r0, #0
	beq	LBB50_6
	cmp	r4, #32
	beq	LBB50_5
	mov	r4, #1
LBB50_4:
	ldr	r5, [r8]
	mov	r2, r4
	mov	r0, r8
	mov	r1, r10
	add	r4, r4, #1
	ldr	r5, [r5, #+8]
	blx	r5
	cmp	r0, #0
	bne	LBB50_4
	b	LBB50_6
LBB50_5:
	ldrb	r4, [r5, #+25]
	mov	r1, r8
	orr	r4, r4, #1
	strb	r4, [r5, #+25]
	add	r4, r10, #174, 30
	mov	r0, r4
	bl	__ZN4MMgc11GCMarkStack25Push_LargeObjectProtectorEPKv
	cmp	r0, #0
	moveq	r5, #1
	strbeq	r5, [r10, #+760]
	mov	r2, #1
	mov	r0, r4
	mov	r1, r8
	bl	__ZN4MMgc11GCMarkStack25Push_LargeExactObjectTailEPKvm
	cmp	r0, #0
	moveq	r4, #1
	strbeq	r4, [r10, #+760]
LBB50_6:
	ldr	r4, [r10, #+244]
	add	r4, r4, #1
	str	r4, [r10, #+244]
	ldr	r4, [r10, #+256]
	add	r4, r4, r6
	str	r4, [r10, #+256]
	b	LBB50_12
LBB50_7:
	cmp	r6, #123, 28
	bls	LBB50_9
	ldrb	r0, [r5, #+25]
	add	r11, r10, #174, 30
	mov	r1, r8
	orr	r0, r0, #1
	strb	r0, [r5, #+25]
	mov	r0, r11
	bl	__ZN4MMgc11GCMarkStack25Push_LargeObjectProtectorEPKv
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r10, #+760]
	add	r1, r8, #123, 28
	sub	r2, r6, #123, 28
	mov	r0, r11
	mov	r3, r8
	bl	__ZN4MMgc11GCMarkStack21Push_LargeObjectChunkEPKvjS2_
	cmp	r0, #0
	moveq	r6, #1
	strbeq	r6, [r10, #+760]
	mov	r6, #123, 28
LBB50_9:
	ldrb	r0, [r5, #+1]
	ldr	r1, [r5, #+20]
	mov	r0, r4, lsr r0
	ldrb	r2, [r1, +r0]
	and	r2, r2, #252
	orr	r2, r2, #1
	strb	r2, [r1, +r0]
	ldr	r0, [r10, #+248]
	add	r0, r0, #1
	str	r0, [r10, #+248]
	ldr	r0, [r10, #+260]
	add	r0, r0, r6
	str	r0, [r10, #+260]
	bic	r0, r6, #3
	add	r4, r8, r0
	b	LBB50_11
LBB50_10:
	ldr	r1, [r8], #+4
	mov	r0, r10
	mov	r2, #0
	bl	__ZN4MMgc2GC24TraceConservativePointerEmb
LBB50_11:
	cmp	r8, r4
	blo	LBB50_10
LBB50_12:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI50_0:
 	.long	4294963200

Leh_func_end46:

	.globl	__ZN4MMgc2GC23MarkTopItem_NonGCObjectEv
	.align	2
__ZN4MMgc2GC23MarkTopItem_NonGCObjectEv:
Leh_func_begin47:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r4, r0
	ldr	r0, [r4, #+700]
	ldr	r1, [r0, #-4]
	mov	r2, #0
	tst	r1, #3
	movne	r2, r1, lsr #2
	sub	r1, r2, #1
	cmp	r1, #5
	bhi	LBB51_13
	.set LPCRELV1, (LJTI51_0_0-(LPCRELL1+8))
LPCRELL1:
	add	r2, pc, #LPCRELV1
	ldr	pc, [r2, +r1, lsl #2] 
LJTI51_0_0:
	.long	 LBB51_2
	.long	 LBB51_14
	.long	 LBB51_22
	.long	 LBB51_30
	.long	 LBB51_38
	.long	 LBB51_42
LBB51_2:
	ldr	r1, [r0, #-8]
	mov	r8, r4
	ldr	r2, [r0, #-12]!
	str	r0, [r4, #+700]
	bic	r6, r1, #3
	mov	r5, r2, lsr #2
	ldr	r1, [r8, #+696]!
	cmp	r0, r1
	bne	LBB51_5
	ldr	r1, [r4, #+708]
	ldr	r0, [r1, #+4]
	cmp	r0, #0
	beq	LBB51_5
	str	r0, [r4, #+708]
	add	r2, r0, #8
	str	r2, [r4, #+696]
	add	r3, r0, #1, 20
	str	r3, [r4, #+704]
	ldr	r3, [r0]
	str	r3, [r4, #+700]
	sub	r2, r3, r2
	ldr	r3, [r4, #+712]
	sub	r2, r3, r2, asr #2
	str	r2, [r4, #+712]
	ldr	r2, [r4, #+716]
	sub	r2, r2, #1
	str	r2, [r4, #+716]
	mov	r2, #0
	str	r2, [r0]
	ldr	r0, [r4, #+720]
	cmp	r0, #0
	moveq	r0, #0
	streq	r0, [r1, #+4]
	streq	r1, [r4, #+720]
	ldrne	r0, LCPI51_0
	movne	r2, #1
	movne	r3, #0
	ldrne	r0, [r0]
	ldrne	r0, [r0]
	blne	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
LBB51_5:
	add	r2, r5, #1
	mov	r0, r8
	mov	r1, r6
	bl	__ZN4MMgc11GCMarkStack25Push_LargeExactObjectTailEPKvm
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r4, #+760]
	ldr	r0, [r6]
	ldr	r3, [r0, #+8]
	mov	r1, r4
	mov	r2, r5
	ldr	r8, [r4, #+700]
	mov	r0, r6
	blx	r3
	cmp	r0, #0
	bne	LBB51_13
	ldr	r0, [r8, #-4]
	ldr	r1, [r4, #+724]
	str	r1, [r8, #-4]
	tst	r0, #3
	beq	LBB51_13
	mov	r1, #1
	cmp	r1, r0, lsr #2
	beq	LBB51_11
	mov	r0, r0, lsr #2
	sub	r1, r0, #5
	cmp	r1, #2
	blo	LBB51_12
	sub	r0, r0, #2
	cmp	r0, #2
	bhi	LBB51_13
	ldr	r0, [r4, #+724]
	str	r0, [r8, #-16]
LBB51_11:
	ldr	r0, [r4, #+724]
	str	r0, [r8, #-12]
LBB51_12:
	ldr	r0, [r4, #+724]
	str	r0, [r8, #-8]
LBB51_13:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB51_14:
	ldr	r2, [r0, #-12]
	ldr	r1, [r0, #-8]
	ldr	r3, [r0, #-16]!
	str	r0, [r4, #+700]
	bic	r5, r3, #3
	bic	r6, r2, #3
	bic	r8, r1, #3
	ldr	r9, [r4, #+696]
	cmp	r0, r9
	bne	LBB51_17
	ldr	r1, [r4, #+708]
	ldr	r0, [r1, #+4]
	cmp	r0, #0
	beq	LBB51_17
	str	r0, [r4, #+708]
	add	r2, r0, #8
	str	r2, [r4, #+696]
	add	r3, r0, #1, 20
	str	r3, [r4, #+704]
	ldr	r3, [r0]
	str	r3, [r4, #+700]
	sub	r2, r3, r2
	ldr	r3, [r4, #+712]
	sub	r2, r3, r2, asr #2
	str	r2, [r4, #+712]
	ldr	r2, [r4, #+716]
	sub	r2, r2, #1
	str	r2, [r4, #+716]
	mov	r2, #0
	str	r2, [r0]
	ldr	r0, [r4, #+720]
	cmp	r0, #0
	moveq	r0, #0
	streq	r0, [r1, #+4]
	streq	r1, [r4, #+720]
	ldrne	r0, LCPI51_1
	movne	r2, #1
	movne	r3, #0
	ldrne	r0, [r0]
	ldrne	r0, [r0]
	blne	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
LBB51_17:
	cmp	r6, #123, 28
	bls	LBB51_19
	add	r0, r4, #174, 30
	add	r1, r8, #123, 28
	sub	r2, r6, #123, 28
	mov	r3, r5
	bl	__ZN4MMgc11GCMarkStack16Push_StackMemoryEPKvjS2_
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r4, #+760]
	mov	r6, #123, 28
LBB51_19:
	ldr	r0, [r4, #+248]
	add	r0, r0, #1
	str	r0, [r4, #+248]
	ldr	r0, [r4, #+260]
	add	r0, r0, r6
	str	r0, [r4, #+260]
	mov	r0, #0
	cmp	r0, r6, lsr #2
	beq	LBB51_13
	bic	r0, r6, #3
	add	r5, r8, r0
LBB51_21:
	ldr	r1, [r8], #+4
	mov	r0, r4
	mov	r2, #1
	bl	__ZN4MMgc2GC24TraceConservativePointerEmb
	cmp	r8, r5
	blo	LBB51_21
	b	LBB51_13
LBB51_22:
	ldr	r2, [r0, #-12]
	ldr	r1, [r0, #-8]
	ldr	r3, [r0, #-16]!
	str	r0, [r4, #+700]
	bic	r5, r3, #3
	bic	r6, r2, #3
	bic	r8, r1, #3
	ldr	r9, [r4, #+696]
	cmp	r0, r9
	bne	LBB51_25
	ldr	r1, [r4, #+708]
	ldr	r0, [r1, #+4]
	cmp	r0, #0
	beq	LBB51_25
	str	r0, [r4, #+708]
	add	r2, r0, #8
	str	r2, [r4, #+696]
	add	r3, r0, #1, 20
	str	r3, [r4, #+704]
	ldr	r3, [r0]
	str	r3, [r4, #+700]
	sub	r2, r3, r2
	ldr	r3, [r4, #+712]
	sub	r2, r3, r2, asr #2
	str	r2, [r4, #+712]
	ldr	r2, [r4, #+716]
	sub	r2, r2, #1
	str	r2, [r4, #+716]
	mov	r2, #0
	str	r2, [r0]
	ldr	r0, [r4, #+720]
	cmp	r0, #0
	moveq	r0, #0
	streq	r0, [r1, #+4]
	streq	r1, [r4, #+720]
	ldrne	r0, LCPI51_2
	movne	r2, #1
	movne	r3, #0
	ldrne	r0, [r0]
	ldrne	r0, [r0]
	blne	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
LBB51_25:
	cmp	r6, #123, 28
	bls	LBB51_27
	add	r0, r4, #174, 30
	add	r1, r8, #123, 28
	sub	r2, r6, #123, 28
	mov	r3, r5
	bl	__ZN4MMgc11GCMarkStack21Push_LargeObjectChunkEPKvjS2_
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r4, #+760]
	mov	r6, #123, 28
LBB51_27:
	ldr	r0, [r4, #+248]
	add	r0, r0, #1
	str	r0, [r4, #+248]
	ldr	r0, [r4, #+260]
	add	r0, r0, r6
	str	r0, [r4, #+260]
	mov	r0, #0
	cmp	r0, r6, lsr #2
	beq	LBB51_13
	bic	r0, r6, #3
	add	r5, r8, r0
LBB51_29:
	ldr	r1, [r8], #+4
	mov	r0, r4
	mov	r2, #0
	bl	__ZN4MMgc2GC24TraceConservativePointerEmb
	cmp	r8, r5
	blo	LBB51_29
	b	LBB51_13
LBB51_30:
	ldr	r2, [r0, #-12]
	ldr	r1, [r0, #-8]
	ldr	r3, [r0, #-16]!
	str	r0, [r4, #+700]
	bic	r5, r3, #3
	bic	r6, r2, #3
	bic	r8, r1, #3
	ldr	r9, [r4, #+696]
	cmp	r0, r9
	bne	LBB51_33
	ldr	r1, [r4, #+708]
	ldr	r0, [r1, #+4]
	cmp	r0, #0
	beq	LBB51_33
	str	r0, [r4, #+708]
	add	r2, r0, #8
	str	r2, [r4, #+696]
	add	r3, r0, #1, 20
	str	r3, [r4, #+704]
	ldr	r3, [r0]
	str	r3, [r4, #+700]
	sub	r2, r3, r2
	ldr	r3, [r4, #+712]
	sub	r2, r3, r2, asr #2
	str	r2, [r4, #+712]
	ldr	r2, [r4, #+716]
	sub	r2, r2, #1
	str	r2, [r4, #+716]
	mov	r2, #0
	str	r2, [r0]
	ldr	r0, [r4, #+720]
	cmp	r0, #0
	moveq	r0, #0
	streq	r0, [r1, #+4]
	streq	r1, [r4, #+720]
	ldrne	r0, LCPI51_3
	movne	r2, #1
	movne	r3, #0
	ldrne	r0, [r0]
	ldrne	r0, [r0]
	blne	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
LBB51_33:
	cmp	r6, #123, 28
	bls	LBB51_35
	add	r0, r4, #174, 30
	add	r1, r8, #123, 28
	sub	r2, r6, #123, 28
	mov	r3, r5
	bl	__ZN4MMgc11GCMarkStack19Push_LargeRootChunkEPKvjS2_
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r4, #+760]
	mov	r6, #123, 28
LBB51_35:
	ldr	r0, [r4, #+248]
	add	r0, r0, #1
	str	r0, [r4, #+248]
	ldr	r0, [r4, #+260]
	add	r0, r0, r6
	str	r0, [r4, #+260]
	mov	r0, #0
	cmp	r0, r6, lsr #2
	beq	LBB51_13
	bic	r0, r6, #3
	add	r5, r8, r0
LBB51_37:
	ldr	r1, [r8], #+4
	mov	r0, r4
	mov	r2, #0
	bl	__ZN4MMgc2GC24TraceConservativePointerEmb
	cmp	r8, r5
	blo	LBB51_37
	b	LBB51_13
LBB51_38:
	ldr	r1, [r0, #-8]!
	str	r0, [r4, #+700]
	bic	r5, r1, #3
	ldr	r2, [r4, #+696]
	cmp	r0, r2
	bne	LBB51_41
	ldr	r1, [r4, #+708]
	ldr	r0, [r1, #+4]
	cmp	r0, #0
	beq	LBB51_41
	str	r0, [r4, #+708]
	add	r2, r0, #8
	str	r2, [r4, #+696]
	add	r3, r0, #1, 20
	str	r3, [r4, #+704]
	ldr	r3, [r0]
	str	r3, [r4, #+700]
	sub	r2, r3, r2
	ldr	r3, [r4, #+712]
	sub	r2, r3, r2, asr #2
	str	r2, [r4, #+712]
	ldr	r2, [r4, #+716]
	sub	r2, r2, #1
	str	r2, [r4, #+716]
	mov	r2, #0
	str	r2, [r0]
	ldr	r0, [r4, #+720]
	cmp	r0, #0
	moveq	r0, #0
	streq	r0, [r1, #+4]
	streq	r1, [r4, #+720]
	ldrne	r0, LCPI51_4
	movne	r2, #1
	movne	r3, #0
	ldrne	r0, [r0]
	ldrne	r0, [r0]
	blne	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
LBB51_41:
	mov	r0, #0
	str	r0, [r5, #+24]
	b	LBB51_13
LBB51_42:
	ldr	r5, [r0, #-8]!
	str	r0, [r4, #+700]
	ldr	r1, [r4, #+696]
	cmp	r0, r1
	bne	LBB51_45
	ldr	r1, [r4, #+708]
	ldr	r0, [r1, #+4]
	cmp	r0, #0
	beq	LBB51_45
	str	r0, [r4, #+708]
	add	r2, r0, #8
	str	r2, [r4, #+696]
	add	r3, r0, #1, 20
	str	r3, [r4, #+704]
	ldr	r3, [r0]
	str	r3, [r4, #+700]
	sub	r2, r3, r2
	ldr	r3, [r4, #+712]
	sub	r2, r3, r2, asr #2
	str	r2, [r4, #+712]
	ldr	r2, [r4, #+716]
	sub	r2, r2, #1
	str	r2, [r4, #+716]
	mov	r2, #0
	str	r2, [r0]
	ldr	r0, [r4, #+720]
	cmp	r0, #0
	moveq	r0, #0
	streq	r0, [r1, #+4]
	streq	r1, [r4, #+720]
	ldrne	r0, LCPI51_5
	movne	r2, #1
	movne	r3, #0
	ldrne	r0, [r0]
	ldrne	r0, [r0]
	blne	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
LBB51_45:
	ldr	r0, LCPI51_6
	and	r0, r5, r0
	orr	r0, r0, #25
	ldrb	r1, [r0]
	and	r1, r1, #254
	strb	r1, [r0]
	b	LBB51_13
	.align	2
	LCPI51_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI51_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI51_2:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI51_3:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI51_4:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI51_5:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI51_6:
 	.long	4294963200

Leh_func_end47:
	.section	__TEXT,__const
	.align	2
lJTI51_0:
LJTI51_0:
	.long	LBB51_2
	.long	LBB51_14
	.long	LBB51_22
	.long	LBB51_30
	.long	LBB51_38
	.long	LBB51_42

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc2GC9DumpAllocEPNS_7GCAllocERmS3_
	.align	2
__ZN4MMgc2GC9DumpAllocEPNS_7GCAllocERmS3_:
Leh_func_begin48:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	sub	sp, sp, #16
	ldr	r9, [r1, #+4]
	mov	r4, r1
	mov	r5, r0
	cmp	r9, #0
	bne	LBB52_2
	mov	r0, #0
	mov	r1, r0
	b	LBB52_6
LBB52_2:
	ldrsh	r1, [r9, #+40]
	ldr	r0, [r4, #+36]
	ldr	r9, [r9, #+16]
	cmp	r9, #0
	sub	r1, r0, r1
	beq	LBB52_6
	mov	r12, r0
LBB52_4:
	add	r1, r1, r0
	ldrsh	lr, [r9, #+40]
	ldr	r9, [r9, #+16]
	add	r12, r12, r0
	cmp	r9, #0
	sub	r1, r1, lr
	bne	LBB52_4
	mov	r0, r12
LBB52_6:
	add	lr, r4, #24
	ldmia	lr, {r9, r12, lr}
	mul	r6, lr, r0
	sub	r1, r1, r12
	add	r0, r1, r9
	mul	r8, r0, lr
	cmp	r6, #0
	sub	r0, r6, r8
	str	r0, [r3]
	mov	r0, #0
	str	r0, [r2]
	bgt	LBB52_8
	mov	r3, #100
	b	LBB52_9
LBB52_8:
	mov	r0, #100
	mov	r1, r6
	mul	r0, r8, r0
	bl	___divsi3
	mov	r3, r0
LBB52_9:
	cmp	r8, #0
	beq	LBB52_14
	ldrb	r0, [r4, #+62]
	cmp	r0, #0
	bne	LBB52_12
	ldr	r0, LCPI52_0
	ldr	r2, [r0]
	b	LBB52_13
LBB52_12:
	ldr	r2, LCPI52_2
	ldr	r1, LCPI52_1
	ldrb	r0, [r4, #+63]
	cmp	r0, #0
	ldr	r2, [r2]
	ldr	r1, [r1]
	moveq	r2, r1
LBB52_13:
	ldr	r0, [r5, #+1916]
	ldrb	r0, [r0, #+2296]
	cmp	r0, #0
	movne	r0, r6, asr #10
	ldrne	r1, [r4, #+32]
	movne	r12, r8, asr #10
	stmeane	sp, {r8, r12}
	strne	r6, [sp, #+8]
	strne	r0, [sp, #+12]
	ldrne	r0, LCPI52_3
	ldrne	r0, [r0]
	blne	__ZN4MMgc5GCLogEPKcz
LBB52_14:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI52_0:
 	.long	L_.str798$non_lazy_ptr

	.align	2
	LCPI52_1:
 	.long	L_.str142949$non_lazy_ptr

	.align	2
	LCPI52_2:
 	.long	L_.str32948$non_lazy_ptr

	.align	2
	LCPI52_3:
 	.long	L_.str362951$non_lazy_ptr

Leh_func_end48:

	.globl	__ZN4MMgc2GC14DumpMemoryInfoEv
	.align	2
__ZN4MMgc2GC14DumpMemoryInfoEv:
Leh_func_begin49:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #76
	mov	r1, r0
	str	r1, [sp, #+32]
	ldr	r4, [r1, #+232]
	add	r2, sp, #68
	add	r1, sp, #72
	bl	__ZN4MMgc2GC12GetUsageInfoERmS1_
	ldr	r0, [sp, #+68]
	rsb	r3, r0, r4, lsl #12
	vmov	s0, r3
	vldr.64	d1, LCPI53_0
	mov	r2, r3, lsr #12
	cmp	r3, #1, 12
	vcvt.f64.u32	d0, s0
	mov	r0, r4, lsl #12
	vmov	s4, r0
	vmul.f64	d1, d0, d1
	vcvt.f64.u32	d2, s4
	vdiv.f64	d1, d1, d2
	ftouizd	s2, d1
	vmov	r0, s2
	ldrls	r1, LCPI53_5
	strls	r0, [sp]
	ldrls	r0, LCPI53_4
	movls	r3, r3, lsr #10
	ldrls	r0, [r0]
	ldrls	r1, [r1]
	vldrhi.64	d1, LCPI53_1
	strhi	r0, [sp, #+4]
	vmulhi.f64	d0, d0, d1
	vmovhi	r3, r0, d0
	ldrhi	r1, LCPI53_3
	strhi	r0, [sp]
	ldrhi	r0, LCPI53_2
	ldrhi	r1, [r1]
	ldrhi	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+32]
	mov	r4, r0
	mov	r5, r0
	ldr	r1, [r0, #+28]
	ldr	r2, [r0, #+20]
	ldr	r3, [r4, #+16]!
	ldr	r0, [r5, #+24]!
	adds	r0, r0, r3
	adc	r1, r1, r2
	mov	r2, #250, 30
	umull	r3, r0, r0, r2
	mla	r6, r1, r2, r0
	str	r3, [sp, #+44]
	ldr	r0, LCPI53_6
	ldr	r0, [r0]
	ldmia	r0, {r8, r10}
	orr	r0, r8, r10
	cmp	r0, #0
	bne	LBB53_2
	ldr	r8, LCPI53_7
	ldr	r8, [r8]
	mov	r0, r8
	bl	_mach_timebase_info
	vldmia	r8, {s0, s1}
	vcvt.f64.u32	d1, s1
	ldr	r8, LCPI53_9
	vcvt.f64.u32	d0, s0
	ldr	r8, [r8]
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI53_8
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	strd	r0, [r8]
	mov	r8, r0
	mov	r10, r1
LBB53_2:
	ldr	r0, [sp, #+44]
	mov	r1, r6
	mov	r2, r8
	mov	r3, r10
	bl	___udivdi3
	orr	r0, r0, r1
	cmp	r0, #0
	beq	LBB53_8
	ldr	r0, [sp, #+32]
	add	lr, r0, #73, 30
	ldmia	lr, {r1, r2, r3, r9, r12, lr}
	adds	r1, r3, r1
	adc	r2, r9, r2
	ldr	r3, [r0, #+256]
	ldr	r9, [r0, #+260]
	ldr	r0, [r0, #+264]
	adds	r1, r1, r12
	add	r3, r9, r3
	add	r0, r3, r0
	adc	r2, r2, lr
	rsbs	r9, r0, #0
	mov	r3, #0
	sbc	r12, r3, #0
	eor	r9, r1, r9
	eor	r12, r2, r12
	orr	r9, r9, r12
	cmp	r9, #0
	beq	LBB53_8
	ldmia	r4, {r9, r12}
	ldr	lr, [r5]
	ldr	r4, [r5, #+4]
	adds	r9, lr, r9
	adc	r12, r4, r12
	mov	lr, #250, 30
	adds	r6, r0, r1
	adc	r0, r3, r2
	umull	r4, r9, r9, lr
	str	r0, [sp, #+40]
	mla	r5, r12, lr, r9
	orr	r0, r8, r10
	cmp	r0, #0
	beq	LBB53_6
	mov	r2, r8
	mov	r3, r10
	b	LBB53_7
LBB53_6:
	ldr	r0, LCPI53_10
	ldr	r8, [r0]
	mov	r0, r8
	bl	_mach_timebase_info
	vldmia	r8, {s0, s1}
	vcvt.f64.u32	d1, s1
	vcvt.f64.u32	d0, s0
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI53_8
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	ldr	r2, LCPI53_11
	mov	r3, r1
	ldr	r2, [r2]
	strd	r0, [r2]
	mov	r2, r0
LBB53_7:
	mov	r0, r4
	mov	r1, r5
	bl	___udivdi3
	mov	r1, r1, lsl #10
	orr	r3, r1, r0, lsr #22
	mov	r2, r0, lsl #10
	mov	r0, r6
	ldr	r1, [sp, #+40]
	bl	___udivdi3
	mov	r1, r0
	ldr	r2, LCPI53_12
	ldr	r0, [r2]
	bl	__ZN4MMgc5GCLogEPKcz
LBB53_8:
	ldr	r0, LCPI53_13
	ldr	r4, [sp, #+32]
	ldr	r1, [r4, #+168]
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, LCPI53_14
	ldr	r1, [r4, #+452]
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	add	r0, r4, #89, 28
	str	r0, [sp, #+16]
	str	r0, [sp, #+48]
	add	r0, r4, #69, 28
	str	r0, [sp, #+52]
	add	r0, r4, #79, 28
	str	r0, [sp, #+56]
	add	r0, r4, #99, 28
	str	r0, [sp, #+60]
	add	r0, r4, #109, 28
	str	r0, [sp, #+64]
	mov	r4, #0
	mov	r0, #1
	str	r0, [sp, #+36]
	ldr	r0, LCPI53_18
	ldr	r0, [r0]
	str	r0, [sp, #+24]
	ldr	r0, LCPI53_16
	ldr	r0, [r0]
	str	r0, [sp, #+28]
	ldr	r0, LCPI53_17
	ldr	r0, [r0]
	str	r0, [sp, #+20]
LBB53_9:
	mov	r5, #0
LBB53_10:
	ldr	r0, [sp, #+16]
	ldr	r6, [r0, +r5]
	ldr	r0, [r6, #+4]
	cmp	r0, #0
	bne	LBB53_12
	mov	r1, #0
	mov	r2, r1
	b	LBB53_16
LBB53_12:
	ldrsh	r2, [r0, #+40]
	ldr	r1, [r6, #+36]
	ldr	r0, [r0, #+16]
	cmp	r0, #0
	sub	r2, r1, r2
	beq	LBB53_16
	mov	r3, r1
LBB53_14:
	add	r2, r2, r1
	ldrsh	r9, [r0, #+40]
	ldr	r0, [r0, #+16]
	add	r3, r3, r1
	cmp	r0, #0
	sub	r2, r2, r9
	bne	LBB53_14
	mov	r1, r3
LBB53_16:
	add	r8, r6, #24
	ldmia	r8, {r0, r3, r8}
	mul	r10, r8, r1
	sub	r1, r2, r3
	cmp	r10, #0
	add	r0, r1, r0
	mul	r11, r0, r8
	bgt	LBB53_18
	mov	r3, #100
	b	LBB53_19
LBB53_18:
	mov	r0, #100
	mov	r1, r10
	mul	r0, r11, r0
	bl	___divsi3
	mov	r3, r0
LBB53_19:
	cmp	r11, #0
	beq	LBB53_24
	ldrb	r0, [r6, #+62]
	cmp	r0, #0
	bne	LBB53_22
	ldr	r6, LCPI53_15
	ldr	r2, [r6]
	b	LBB53_23
LBB53_22:
	ldrb	r0, [r6, #+63]
	ldr	r2, [sp, #+20]
	cmp	r0, #0
	ldr	r0, [sp, #+28]
	moveq	r2, r0
LBB53_23:
	ldr	r0, [sp, #+32]
	ldr	r0, [r0, #+1916]
	ldrb	r0, [r0, #+2296]
	cmp	r0, #0
	movne	r0, r10, asr #10
	movne	r9, r11, asr #10
	strne	r11, [sp]
	stmfane	sp, {r9, r10}
	strne	r0, [sp, #+12]
	movne	r1, r8
	ldrne	r0, [sp, #+24]
	blne	__ZN4MMgc5GCLogEPKcz
LBB53_24:
	sub	r4, r4, r11
	add	r5, r5, #4
	cmp	r5, #160
	add	r4, r4, r10
	bne	LBB53_10
	ldr	r0, [sp, #+36]
	cmp	r0, #5
	beq	LBB53_27
	add	r0, sp, #48
	ldr	r1, [sp, #+36]
	ldr	r0, [r0, +r1, lsl #2]
	add	r1, r1, #1
	str	r0, [sp, #+16]
	str	r1, [sp, #+36]
	b	LBB53_9
LBB53_27:
	ldr	r0, LCPI53_19
	mov	r2, r4, lsr #10
	mov	r1, r4
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI53_0:
 	.long	0
	.long	1079574528

	.align	2
	LCPI53_1:
 	.long	0
	.long	1051721728

	.align	2
	LCPI53_2:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI53_3:
 	.long	L_.str42952$non_lazy_ptr

	.align	2
	LCPI53_4:
 	.long	L_.str1392968$non_lazy_ptr

	.align	2
	LCPI53_5:
 	.long	L_.str42952$non_lazy_ptr

	.align	2
	LCPI53_6:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI53_7:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI53_8:
 	.long	0
	.long	1104006501

	.align	2
	LCPI53_9:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI53_10:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI53_11:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI53_12:
 	.long	L_.str52953$non_lazy_ptr

	.align	2
	LCPI53_13:
 	.long	L_.str62954$non_lazy_ptr

	.align	2
	LCPI53_14:
 	.long	L_.str72955$non_lazy_ptr

	.align	2
	LCPI53_15:
 	.long	L_.str798$non_lazy_ptr

	.align	2
	LCPI53_16:
 	.long	L_.str142949$non_lazy_ptr

	.align	2
	LCPI53_17:
 	.long	L_.str32948$non_lazy_ptr

	.align	2
	LCPI53_18:
 	.long	L_.str362951$non_lazy_ptr

	.align	2
	LCPI53_19:
 	.long	L_.str82956$non_lazy_ptr

Leh_func_end49:

	.globl	__ZN4MMgc2GC5gclogEPKcz
	.align	2
__ZN4MMgc2GC5gclogEPKcz:
Leh_func_begin50:
	sub	sp, sp, #8
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	sub	sp, sp, #4
	sub	sp, sp, #1, 20
	str	r3, [r7, #+12]
	mov	r9, r1
	mov	r4, r0
	str	r2, [r7, #+8]
	add	r3, r7, #8
	add	r0, sp, #4
	mov	r1, #1, 20
	mov	r2, r9
	str	r3, [sp]
	bl	_vsnprintf
	ldr	r0, LCPI54_0
	ldr	r0, [r0]
	ldr	r1, [r0]
	cmp	r1, #0
	beq	LBB54_2
	add	r0, sp, #4
	blx	r1
	b	LBB54_3
LBB54_2:
	ldr	r0, LCPI54_1
	add	r1, sp, #4
	ldr	r0, [r0]
	bl	_printf
LBB54_3:
	ldr	r0, [r4, #+1916]
	add	r5, r0, #157, 28
	mov	r0, r5
	bl	_OSSpinLockLock
	ldr	r0, LCPI54_2
	mov	r1, #1
	ldr	r0, [r0]
	ldrb	r6, [r0]
	strb	r1, [r0]
	mov	r0, r5
	bl	_OSSpinLockUnlock
	cmp	r6, #0
	bne	LBB54_5
	ldrb	r0, [r4, #+668]
	cmp	r0, #0
	ldreq	r0, [r4, #+1916]
	bleq	__ZN4MMgc6GCHeap14DumpMemoryInfoEv
LBB54_5:
	ldr	r0, [r4, #+1916]
	add	r4, r0, #157, 28
	mov	r0, r4
	bl	_OSSpinLockLock
	ldr	r0, LCPI54_3
	and	r1, r6, #1
	ldr	r0, [r0]
	strb	r1, [r0]
	mov	r0, r4
	bl	_OSSpinLockUnlock
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, lr}
	add	sp, sp, #8
	bx	lr
	.align	2
	LCPI54_0:
 	.long	L_logFunc$non_lazy_ptr

	.align	2
	LCPI54_1:
 	.long	L_.str1881$non_lazy_ptr

	.align	2
	LCPI54_2:
 	.long	L__ZZN4MMgc2GC5gclogEPKczE10g_in_gclog.b$non_lazy_ptr

	.align	2
	LCPI54_3:
 	.long	L__ZZN4MMgc2GC5gclogEPKczE10g_in_gclog.b$non_lazy_ptr

Leh_func_end50:

	.globl	__ZN4MMgc6GCRoot27SetMarkStackSentinelPointerEm
	.align	2
__ZN4MMgc6GCRoot27SetMarkStackSentinelPointerEm:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r2, [r0, #+24]
	add	r7, sp, #8
	mov	r4, r1
	mov	r5, r0
	cmp	r2, #0
	beq	LBB55_2
	ldr	r0, [r5, #+4]
	mov	r1, r2
	mov	r2, r5
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB55_2:
	str	r4, [r5, #+24]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}

	.globl	__ZN4MMgc6GCRoot13PrivilegedSetEPKvj
	.align	2
__ZN4MMgc6GCRoot13PrivilegedSetEPKvj:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r3, [r0, #+24]
	add	r7, sp, #12
	mov	r4, r2
	mov	r5, r1
	mov	r6, r0
	cmp	r3, #0
	beq	LBB56_2
	ldr	r0, [r6, #+4]
	mov	r1, r3
	mov	r2, r6
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB56_2:
	mov	r0, #0
	str	r0, [r6, #+24]
	str	r5, [r6, #+16]
	ldr	r0, [r6, #+20]
	and	r0, r0, #3
	orr	r0, r0, r4
	str	r0, [r6, #+20]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}

	.globl	__ZN4MMgc11StackMemory3SetEPKvm
	.align	2
__ZN4MMgc11StackMemory3SetEPKvm:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r3, [r0, #+24]
	add	r7, sp, #12
	mov	r4, r2
	mov	r5, r1
	mov	r6, r0
	cmp	r3, #0
	beq	LBB57_2
	ldr	r0, [r6, #+4]
	mov	r1, r3
	mov	r2, r6
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB57_2:
	mov	r0, #0
	str	r0, [r6, #+24]
	str	r5, [r6, #+16]
	ldr	r0, [r6, #+20]
	and	r0, r0, #3
	orr	r0, r0, r4
	str	r0, [r6, #+20]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}

	.globl	__ZN4MMgc6GCRoot7DestroyEv
	.align	2
__ZN4MMgc6GCRoot7DestroyEv:
Leh_func_begin51:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, [r0, #+24]
	add	r7, sp, #12
	mov	r4, r0
	cmp	r1, #0
	beq	LBB58_2
	ldr	r0, [r4, #+4]
	mov	r2, r4
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB58_2:
	mov	r0, #0
	str	r0, [r4, #+24]
	str	r0, [r4, #+16]
	ldr	r0, [r4, #+20]
	and	r0, r0, #3
	str	r0, [r4, #+20]
	ldr	r5, [r4, #+4]
	cmp	r5, #0
	beq	LBB58_4
	add	r0, r5, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1944]
	cmp	r0, r4
	ldrdne	r0, [r4, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r4, #+8]
	streq	r0, [r5, #+1944]
	ldr	r0, [r4, #+8]
	cmp	r0, #0
	ldrne	r1, [r4, #+12]
	strne	r1, [r0, #+12]
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB58_4:
	mov	r0, #0
	str	r0, [r4, #+4]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end51:

	.globl	__ZN4MMgc6GCRootD2Ev
	.align	2
__ZN4MMgc6GCRootD2Ev:
Leh_func_begin52:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, LCPI59_0
	add	r7, sp, #12
	mov	r4, r0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r1, [r0, #+24]
	cmp	r1, #0
	beq	LBB59_2
	ldr	r0, [r4, #+4]
	mov	r2, r4
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB59_2:
	mov	r0, #0
	str	r0, [r4, #+24]
	str	r0, [r4, #+16]
	ldr	r0, [r4, #+20]
	and	r0, r0, #3
	str	r0, [r4, #+20]
	ldr	r5, [r4, #+4]
	cmp	r5, #0
	beq	LBB59_4
	add	r0, r5, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1944]
	cmp	r0, r4
	ldrdne	r0, [r4, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r4, #+8]
	streq	r0, [r5, #+1944]
	ldr	r0, [r4, #+8]
	cmp	r0, #0
	ldrne	r1, [r4, #+12]
	strne	r1, [r0, #+12]
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB59_4:
	mov	r0, #0
	str	r0, [r4, #+4]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI59_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

Leh_func_end52:

	.globl	__ZN4MMgc2GC17AutoRCRootSegmentD2Ev
	.align	2
__ZN4MMgc2GC17AutoRCRootSegmentD2Ev:
Leh_func_begin53:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, LCPI60_0
	add	r7, sp, #12
	mov	r4, r0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r1, [r0, #+40]
	ldr	r2, [r0, #+4]
	cmp	r1, #0
	ldrne	r0, [r4, #+36]
	strne	r0, [r1, #+36]
	ldrne	r1, [r4, #+40]
	ldr	r0, [r4, #+36]
	cmp	r0, #0
	streq	r1, [r2, #+12]
	strne	r1, [r0, #+40]
	ldr	r0, LCPI60_1
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [r4]
	ldr	r1, [r4, #+24]
	cmp	r1, #0
	beq	LBB60_2
	ldr	r0, [r4, #+4]
	mov	r2, r4
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB60_2:
	mov	r0, #0
	str	r0, [r4, #+24]
	str	r0, [r4, #+16]
	ldr	r0, [r4, #+20]
	and	r0, r0, #3
	str	r0, [r4, #+20]
	ldr	r5, [r4, #+4]
	cmp	r5, #0
	beq	LBB60_4
	add	r0, r5, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1944]
	cmp	r0, r4
	ldrdne	r0, [r4, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r4, #+8]
	streq	r0, [r5, #+1944]
	ldr	r0, [r4, #+8]
	cmp	r0, #0
	ldrne	r1, [r4, #+12]
	strne	r1, [r0, #+12]
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB60_4:
	mov	r0, #0
	str	r0, [r4, #+4]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI60_0:
 	.long	L__ZTVN4MMgc2GC17AutoRCRootSegmentE$non_lazy_ptr

	.align	2
	LCPI60_1:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

Leh_func_end53:

	.globl	__ZN4MMgc6GCRootC1EPNS_2GCEPNS_17GCExactDummyClassE
	.align	2
__ZN4MMgc6GCRootC1EPNS_2GCEPNS_17GCExactDummyClassE:
Leh_func_begin54:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	sub	sp, sp, #8
	mov	r4, r1
	mov	r5, r0
	ldr	r1, LCPI61_0
	ldr	r0, [r1]
	add	r2, sp, #4
	mov	r3, sp
	add	r0, r0, #8
	str	r0, [r5]
	mov	r1, r5
	ldr	r0, LCPI61_1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc11FixedMalloc20FindBeginningAndSizeEPKvRS2_Rm
	ldmfd	sp, {r0, r1}
	str	r4, [r5, #+4]
	mov	r2, #0
	str	r1, [r5, #+16]
	cmp	r4, #0
	orr	r0, r0, #2
	str	r0, [r5, #+20]
	str	r2, [r5, #+24]
	subeq	sp, r7, #12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	add	r0, r4, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r5, #+12]
	ldr	r0, [r4, #+1944]
	str	r0, [r5, #+8]
	ldr	r0, [r4, #+1944]
	cmp	r0, #0
	strne	r5, [r0, #+12]
	mov	r0, r6
	str	r5, [r4, #+1944]
	bl	_OSSpinLockUnlock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI61_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI61_1:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

Leh_func_end54:

	.globl	__ZN4MMgc6GCRootC2EPNS_2GCEPNS_17GCExactDummyClassE
	.align	2
__ZN4MMgc6GCRootC2EPNS_2GCEPNS_17GCExactDummyClassE:
Leh_func_begin55:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	sub	sp, sp, #8
	mov	r4, r1
	mov	r5, r0
	ldr	r1, LCPI62_0
	ldr	r0, [r1]
	add	r2, sp, #4
	mov	r3, sp
	add	r0, r0, #8
	str	r0, [r5]
	mov	r1, r5
	ldr	r0, LCPI62_1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc11FixedMalloc20FindBeginningAndSizeEPKvRS2_Rm
	ldmfd	sp, {r0, r1}
	str	r4, [r5, #+4]
	mov	r2, #0
	str	r1, [r5, #+16]
	cmp	r4, #0
	orr	r0, r0, #2
	str	r0, [r5, #+20]
	str	r2, [r5, #+24]
	subeq	sp, r7, #12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	add	r0, r4, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r5, #+12]
	ldr	r0, [r4, #+1944]
	str	r0, [r5, #+8]
	ldr	r0, [r4, #+1944]
	cmp	r0, #0
	strne	r5, [r0, #+12]
	mov	r0, r6
	str	r5, [r4, #+1944]
	bl	_OSSpinLockUnlock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI62_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI62_1:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

Leh_func_end55:

	.globl	__ZN4MMgc6GCRootC1EPNS_2GCE
	.align	2
__ZN4MMgc6GCRootC1EPNS_2GCE:
Leh_func_begin56:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	sub	sp, sp, #8
	mov	r4, r1
	mov	r5, r0
	ldr	r1, LCPI63_0
	ldr	r0, [r1]
	add	r2, sp, #4
	mov	r3, sp
	add	r0, r0, #8
	str	r0, [r5]
	mov	r1, r5
	ldr	r0, LCPI63_1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc11FixedMalloc20FindBeginningAndSizeEPKvRS2_Rm
	ldmfd	sp, {r0, r1}
	str	r4, [r5, #+4]
	str	r1, [r5, #+16]
	mov	r2, #0
	str	r0, [r5, #+20]
	str	r2, [r5, #+24]
	cmp	r4, #0
	subeq	sp, r7, #12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	add	r0, r4, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r5, #+12]
	ldr	r0, [r4, #+1944]
	str	r0, [r5, #+8]
	ldr	r0, [r4, #+1944]
	cmp	r0, #0
	strne	r5, [r0, #+12]
	mov	r0, r6
	str	r5, [r4, #+1944]
	bl	_OSSpinLockUnlock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI63_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI63_1:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

Leh_func_end56:

	.globl	__ZN4MMgc6GCRootC2EPNS_2GCE
	.align	2
__ZN4MMgc6GCRootC2EPNS_2GCE:
Leh_func_begin57:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	sub	sp, sp, #8
	mov	r4, r1
	mov	r5, r0
	ldr	r1, LCPI64_0
	ldr	r0, [r1]
	add	r2, sp, #4
	mov	r3, sp
	add	r0, r0, #8
	str	r0, [r5]
	mov	r1, r5
	ldr	r0, LCPI64_1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc11FixedMalloc20FindBeginningAndSizeEPKvRS2_Rm
	ldmfd	sp, {r0, r1}
	str	r4, [r5, #+4]
	str	r1, [r5, #+16]
	mov	r2, #0
	str	r0, [r5, #+20]
	str	r2, [r5, #+24]
	cmp	r4, #0
	subeq	sp, r7, #12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	add	r0, r4, #229, 30
	add	r6, r0, #1, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r5, #+12]
	ldr	r0, [r4, #+1944]
	str	r0, [r5, #+8]
	ldr	r0, [r4, #+1944]
	cmp	r0, #0
	strne	r5, [r0, #+12]
	mov	r0, r6
	str	r5, [r4, #+1944]
	bl	_OSSpinLockUnlock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI64_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI64_1:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

Leh_func_end57:

	.globl	__ZN4MMgc2GC26CreateRootFromCurrentStackEPFvPvES1_
	.align	2
__ZN4MMgc2GC26CreateRootFromCurrentStackEPFvPvES1_:
Leh_func_begin58:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	sub	sp, sp, #16
	bic	sp, sp, #7
	stmea	sp, {r0, r1, r2}
	ldr	r0, LCPI65_0
	mov	r1, sp
	bl	__Z27VMPI_callWithRegistersSavedPFvPvS_ES_
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI65_0:
 	.long	__ZN4MMgcL28DoCreateRootFromCurrentStackEPvS0_

Leh_func_end58:

	.globl	__ZN4MMgcL28DoCreateRootFromCurrentStackEPvS0_
	.align	2
__ZN4MMgcL28DoCreateRootFromCurrentStackEPvS0_:
Leh_func_begin59:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	sub	sp, sp, #44
	bic	sp, sp, #7
	mov	r4, r1
	mov	r5, r0
	ldr	r6, [r4]
	bl	_pthread_self
	bl	_pthread_get_stackaddr_np
	sub	r8, r0, r5
	ldr	r1, LCPI66_0
	orr	r0, r8, #1
	cmp	r6, #0
	ldr	r1, [r1]
	add	r1, r1, #8
	stmea	sp, {r1, r6}
	str	r5, [sp, #+16]
	str	r0, [sp, #+20]
	mov	r1, #0
	str	r1, [sp, #+24]
	beq	LBB66_2
	add	r0, r6, #229, 30
	add	r10, r0, #1, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [sp, #+12]
	ldr	r0, [r6, #+1944]
	str	r0, [sp, #+8]
	ldr	r0, [r6, #+1944]
	cmp	r0, #0
	movne	r1, sp
	strne	r1, [r0, #+12]
	mov	r0, sp
	str	r0, [r6, #+1944]
	mov	r0, r10
	bl	_OSSpinLockUnlock
LBB66_2:
	mov	r0, #0
	str	r5, [sp, #+28]
	str	r8, [sp, #+32]
	str	r0, [sp, #+36]
	str	r0, [sp, #+40]
	ldr	r0, LCPI66_1
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [sp]
	ldr	r0, [r6, #+12]
	str	r0, [sp, #+40]
	ldr	r0, [r6, #+12]
	cmp	r0, #0
	movne	r1, sp
	strne	r1, [r0, #+36]
	mov	r5, sp
	str	r5, [r6, #+12]
	mov	r1, #0
	ldr	r6, [r4]
	mov	r0, r6
	mov	r2, r6
	ldr	r8, [r6, #+688]
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	ldr	r1, [r4, #+4]
	ldr	r0, [r4, #+8]
	blx	r1
	mov	r0, r6
	mov	r1, r8
	mov	r2, #0
	mov	r3, #0
	bl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	mov	r0, r5
	bl	__ZN4MMgc2GC17AutoRCRootSegmentD1Ev
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI66_0:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI66_1:
 	.long	L__ZTVN4MMgc2GC17AutoRCRootSegmentE$non_lazy_ptr

Leh_func_end59:

	.globl	__ZN4MMgc2GC10CleanStackEb
	.align	2
__ZN4MMgc2GC10CleanStackEb:
Leh_func_begin60:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	mov	r2, r0
	cmp	r1, #0
	bne	LBB67_3
	ldrb	r0, [r2, #+680]
	cmp	r0, #0
	bne	LBB67_4
	ldr	r0, [r2, #+684]
	cmp	r0, #0
	moveq	sp, r7
	ldmfdeq	sp!, {r7, pc}
LBB67_3:
	mov	r0, #1
	strb	r0, [r2, #+680]
	mov	r1, r2
	ldr	r0, LCPI67_0
	bl	__Z27VMPI_callWithRegistersSavedPFvPvS_ES_
LBB67_4:
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI67_0:
 	.long	__ZN4MMgc2GC12DoCleanStackEPvS1_

Leh_func_end60:

	.globl	__ZN4MMgc2GC12DoCleanStackEPvS1_
	.align	2
__ZN4MMgc2GC12DoCleanStackEPvS1_:
	bx	lr

	.globl	__ZN4MMgc2GC13UnmarkGCPagesEPvj
	.align	2
__ZN4MMgc2GC13UnmarkGCPagesEPvj:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	cmp	r2, #0
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	mov	r3, #6
	mov	r9, #255
	orr	r9, r9, #15, 24
	mov	r12, #3
LBB69_1:
	and	lr, r1, #63, 6
	add	lr, r0, lr, lsr #24
	ldr	lr, [lr, #+848]
	cmp	lr, #0
	andne	r4, r3, r1, lsr #11
	andne	r5, r9, r1, lsr #14
	ldrbne	r6, [lr, +r5]
	bicne	r4, r6, r12, lsl r4
	strbne	r4, [lr, +r5]
	add	r1, r1, #1, 20
	sub	r2, r2, #1
	cmp	r2, #0
	bne	LBB69_1
	ldmfd	sp!, {r4, r5, r6, r7, pc}

	.globl	__ZN4MMgc2GC9FreeBlockEPvj
	.align	2
__ZN4MMgc2GC9FreeBlockEPvj:
Leh_func_begin61:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	cmp	r2, #0
	beq	LBB70_3
	mov	r3, #6
	mov	r9, #255
	orr	r9, r9, #15, 24
	mov	r12, #3
	mov	lr, r1
	mov	r4, r2
LBB70_2:
	and	r5, lr, #63, 6
	add	r5, r0, r5, lsr #24
	ldr	r5, [r5, #+848]
	cmp	r5, #0
	andne	r6, r3, lr, lsr #11
	andne	r8, r9, lr, lsr #14
	ldrbne	r10, [r5, +r8]
	bicne	r6, r10, r12, lsl r6
	strbne	r6, [r5, +r8]
	add	lr, lr, #1, 20
	sub	r4, r4, #1
	cmp	r4, #0
	bne	LBB70_2
LBB70_3:
	mov	r3, #0
	bl	__ZN4MMgc2GC8heapFreeEPvmb
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end61:

	.globl	__ZN4MMgc2GC11MarkGCPagesEPvjNS_7PageMap8PageTypeE
	.align	2
__ZN4MMgc2GC11MarkGCPagesEPvjNS_7PageMap8PageTypeE:
Leh_func_begin62:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	sub	sp, sp, #4
	mov	r9, r2
	mov	r2, r1
	ldr	r1, [r0, #+1916]
	str	r3, [sp]
	add	r0, r0, #210, 30
	mov	r3, r9
	bl	__ZN4MMgc7PageMap18SimpleExpandSetAllINS0_7Tiered2EEEvPT_PNS_6GCHeapEPvjNS0_8PageTypeE
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end62:

	.globl	__ZN4MMgc2GC10AllocBlockEiNS_7PageMap8PageTypeEbb
	.align	2
__ZN4MMgc2GC10AllocBlockEiNS_7PageMap8PageTypeEbb:
Leh_func_begin63:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	sub	sp, sp, #4
	cmp	r3, #0
	mov	r9, #3
	mov	r3, #8
	mov	r4, r2
	ldr	r2, [r7, #+8]
	mov	r6, r0
	mov	r5, r1
	moveq	r9, #1
	cmp	r2, #0
	moveq	r3, #0
	orr	r2, r3, r9
	ldr	r0, [r6, #+1916]
	mov	r3, #1
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	mov	r8, r0
	cmp	r0, #0
	beq	LBB72_3
	ldr	r0, [r6, #+232]
	add	r0, r0, r5
	str	r0, [r6, #+232]
	ldr	r1, [r6, #+236]
	cmp	r0, r1
	strhi	r0, [r6, #+236]
	ldr	r1, [r6, #+1916]
	add	r10, r6, #210, 30
	mov	r3, #1
	mov	r0, r10
	mov	r2, r8
	str	r4, [sp]
	bl	__ZN4MMgc7PageMap18SimpleExpandSetAllINS0_7Tiered2EEEvPT_PNS_6GCHeapEPvjNS0_8PageTypeE
	cmp	r4, #3
	bne	LBB72_3
	mov	r0, #2
	ldr	r1, [r6, #+1916]
	str	r0, [sp]
	add	r2, r8, #1, 20
	sub	r3, r5, #1
	mov	r0, r10
	bl	__ZN4MMgc7PageMap18SimpleExpandSetAllINS0_7Tiered2EEEvPT_PNS_6GCHeapEPvjNS0_8PageTypeE
LBB72_3:
	mov	r0, r8
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end63:

	.globl	__ZN4MMgc2GC4MarkEj
	.align	2
__ZN4MMgc2GC4MarkEj:
Leh_func_begin64:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	mov	r6, r0
	ldr	r0, LCPI73_0
	mvn	r4, #0
	mov	r5, r1
	mov	r8, #0
	ldr	r10, [r0]
	b	LBB73_8
LBB73_1:
	ldr	r11, [r0, #-4]!
	tst	r11, #3
	bne	LBB73_7
	str	r0, [r6, #+700]
	cmp	r0, r1
	bne	LBB73_5
	ldr	r1, [r6, #+708]
	ldr	r0, [r1, #+4]
	cmp	r0, #0
	beq	LBB73_5
	str	r0, [r6, #+708]
	add	r2, r0, #8
	str	r2, [r6, #+696]
	add	r3, r0, #1, 20
	str	r3, [r6, #+704]
	ldr	r3, [r0]
	str	r3, [r6, #+700]
	sub	r2, r3, r2
	ldr	r3, [r6, #+712]
	sub	r2, r3, r2, asr #2
	str	r2, [r6, #+712]
	ldr	r2, [r6, #+716]
	sub	r2, r2, #1
	str	r2, [r6, #+716]
	str	r8, [r0]
	ldr	r0, [r6, #+720]
	cmp	r0, #0
	streq	r8, [r1, #+4]
	streq	r1, [r6, #+720]
	ldrne	r0, [r10]
	movne	r2, #1
	movne	r3, #0
	blne	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
LBB73_5:
	cmp	r11, #0
	beq	LBB73_7
	mov	r0, r6
	mov	r1, r11
	bl	__ZN4MMgc2GC17MarkItem_GCObjectEPKv
	b	LBB73_8
LBB73_7:
	mov	r0, r6
	bl	__ZN4MMgc2GC23MarkTopItem_NonGCObjectEv
LBB73_8:
	add	r4, r4, #1
	cmp	r4, r5
	bhs	LBB73_10
	ldr	r1, [r6, #+696]
	ldr	r0, [r6, #+700]
	cmp	r0, r1
	bne	LBB73_1
LBB73_10:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI73_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end64:

	.globl	__ZN4MMgc2GC15IncrementalMarkEv
	.align	2
__ZN4MMgc2GC15IncrementalMarkEv:
Leh_func_begin65:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	vstmdb	sp!, {d8, d9}
	sub	sp, sp, #208
	bic	sp, sp, #7
	ldrb	r1, [r0, #+10]
	mov	r4, r0
	cmp	r1, #0
	beq	LBB74_2
	mov	r0, #0
	str	r0, [sp, #+140]
	mov	r0, #1
	str	r0, [sp, #+92]
	b	LBB74_3
LBB74_2:
	vldr.64	d0, [r4, #+336]
	vldr.64	d1, LCPI74_15
	ldr	r1, [r4, #+420]
	ldr	r0, [r4, #+416]
	vmul.f64	d0, d0, d1
	sub	r1, r0, r1
	vmov	s2, r1
	vcvt.f64.s32	d1, s2
	vmul.f64	d0, d0, d1
	vmov	s2, r0
	vcvt.f64.s32	d1, s2
	vdiv.f64	d0, d0, d1
	ftouizd	s0, d0
	vmov	r0, s0
	str	r0, [sp, #+92]
	mov	r0, #0
	str	r0, [sp, #+140]
LBB74_3:
	ldr	r0, [r4, #+476]
	str	r0, [sp, #+108]
	cmp	r0, #0
	ldrbne	r0, [r0, #+4]
	cmpne	r0, #0
	bne	LBB74_5
	mov	r0, #0
	str	r0, [sp, #+144]
	str	r0, [sp, #+148]
	b	LBB74_6
LBB74_5:
	ldr	r0, [sp, #+108]
	ldr	r1, [r0]
	ldr	r1, [r1, #+8]
	blx	r1
	str	r0, [sp, #+144]
	str	r1, [sp, #+148]
LBB74_6:
	ldr	r5, [r4, #+836]
	cmp	r5, #0
	ldrne	r8, [r5, #+32]
	cmpne	r8, #0
	bne	LBB74_8
	mov	r6, #0
	b	LBB74_10
LBB74_8:
	ldr	r6, LCPI74_1
	ldr	r0, [r8, #+40]
	ldr	r1, [r6]
	mov	r2, #6
	bl	__ZN7avmplus7AvmCore18findInternedStringEPKci
	mov	r6, r0
	cmp	r0, #0
	ldrne	r0, [r8, #+128]
	cmpne	r0, #0
	beq	LBB74_10
	mov	r0, r8
	bl	__ZN7avmplus7Sampler6sampleEv
LBB74_10:
	mov	r0, #0
	str	r0, [sp, #+156]
	str	r0, [sp, #+152]
	str	r0, [sp, #+164]
	str	r0, [sp, #+168]
	str	r6, [sp, #+176]
	cmp	r6, #0
	beq	LBB74_14
	ldr	r0, [r5, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB74_13
	bl	__ZN7avmplus7Sampler6sampleEv
LBB74_13:
	str	r5, [sp, #+160]
	ldr	r0, [r5, #+176]
	str	r0, [sp, #+172]
	add	r0, sp, #152
	str	r0, [r5, #+176]
	ldr	r0, [sp, #+172]
	cmp	r0, #0
	moveq	r0, #1
	ldrne	r0, [r0, #+48]
	addne	r0, r0, #1
	b	LBB74_15
LBB74_14:
	mov	r0, #0
	str	r0, [sp, #+160]
	str	r0, [sp, #+172]
LBB74_15:
	str	r0, [sp, #+200]
	mov	r0, #0
	str	r0, [sp, #+180]
	str	r0, [sp, #+184]
	str	r0, [sp, #+188]
	str	r0, [sp, #+192]
	str	r0, [sp, #+196]
	ldr	r3, [r4, #+712]
	ldr	r0, [r4, #+700]
	ldr	r1, [r4, #+696]
	sub	r2, r0, r1
	rsb	r9, r3, #0
	cmp	r9, r2, asr #2
	bne	LBB74_23
	ldr	r2, [r4, #+748]
	cmp	r2, #8
	bls	LBB74_18
	add	r0, r4, #174, 30
	add	r1, r4, #182, 30
	bl	__ZN4MMgc11GCMarkStack30TransferOneInactiveSegmentFromERS0_
	ldr	r3, [r4, #+712]
	ldr	r0, [r4, #+700]
	ldr	r1, [r4, #+696]
LBB74_18:
	sub	r0, r0, r1
	rsb	r1, r3, #0
	cmp	r1, r0, asr #2
	bne	LBB74_23
	add	r4, r4, #16
	mov	r1, #3
	mov	r0, r4
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	mov	r1, #4
	mov	r0, r4
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	ldr	r4, [sp, #+160]
	cmp	r4, #0
	beq	LBB74_57
	ldr	r0, [r4, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB74_22
	bl	__ZN7avmplus7Sampler6sampleEv
LBB74_22:
	ldr	r0, [sp, #+172]
	str	r0, [r4, #+176]
	mov	r4, #0
	str	r4, [sp, #+172]
	str	r4, [sp, #+160]
	b	LBB74_57
LBB74_23:
	ldr	r0, [r4, #+676]
	mov	r1, #3
	add	r8, r4, #1, 24
	add	r0, r0, #1
	str	r0, [r4, #+676]
	add	r0, r4, #16
	str	r0, [sp, #+132]
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	ldr	r0, LCPI74_2
	ldr	r5, [r0]
	bl	_mach_absolute_time
	str	r0, [sp, #+136]
	add	lr, r4, #244
	ldrd	r2, [r5]
	orr	r0, r2, r3
	cmp	r0, #0
	ldmia	lr, {r9, r12, lr}
	ldmia	r8, {r5, r6, r8}
	add	r9, r12, r9
	add	r5, r6, r5
	add	r9, r9, lr
	str	r9, [sp, #+128]
	add	r5, r5, r8
	str	r5, [sp, #+124]
	mov	r9, r4
	ldr	r12, [r9, #+308]!
	str	r9, [sp, #+76]
	str	r12, [sp, #+120]
	mov	r9, r4
	ldr	r12, [r9, #+300]!
	str	r9, [sp, #+68]
	str	r12, [sp, #+116]
	mov	r9, r4
	ldr	r12, [r9, #+292]!
	str	r9, [sp, #+64]
	str	r12, [sp, #+112]
	mov	r9, r4
	ldr	r12, [r9, #+284]!
	str	r9, [sp, #+100]
	str	r12, [sp, #+104]
	mov	r9, r4
	ldr	r12, [r9, #+276]!
	str	r9, [sp, #+80]
	str	r12, [sp, #+96]
	mov	r9, r4
	ldr	r12, [r9, #+268]!
	str	r9, [sp, #+72]
	str	r12, [sp, #+88]
	str	r1, [sp, #+84]
	bne	LBB74_25
	ldr	r2, LCPI74_3
	ldr	r5, [r2]
	mov	r0, r5
	bl	_mach_timebase_info
	vldmia	r5, {s0, s1}
	vcvt.f64.u32	d1, s1
	vcvt.f64.u32	d0, s0
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI74_16
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	ldr	r2, LCPI74_5
	mov	r3, r1
	ldr	r2, [r2]
	strd	r0, [r2]
	mov	r2, r0
LBB74_25:
	ldr	r1, [sp, #+92]
	umull	r0, r9, r2, r1
	ldr	r12, [sp, #+140]
	mla	r2, r2, r12, r9
	mov	r5, #0
	mla	r1, r3, r1, r2
	mov	r2, #250, 30
	mov	r3, r5
	bl	___udivdi3
	ldr	r2, [sp, #+136]
	adds	r0, r0, r2
	str	r0, [sp, #+60]
	ldr	r0, [sp, #+84]
	adc	r0, r1, r0
	str	r0, [sp, #+48]
	add	r0, r4, #182, 30
	str	r0, [sp, #+56]
	add	r0, r4, #174, 30
	str	r0, [sp, #+52]
	ldr	r0, LCPI74_6
	ldr	r6, [r0]
LBB74_26:
	ldr	r0, [r4, #+700]
	ldr	r1, [r4, #+696]
	sub	r2, r0, r1
	ldr	r3, [r4, #+712]
	add	r8, r3, r2, asr #2
	cmp	r8, #0
	bne	LBB74_30
	ldr	r8, [r4, #+748]
	cmp	r8, #8
	bls	LBB74_29
	ldr	r0, [sp, #+52]
	ldr	r1, [sp, #+56]
	bl	__ZN4MMgc11GCMarkStack30TransferOneInactiveSegmentFromERS0_
	ldr	r3, [r4, #+712]
	ldr	r0, [r4, #+700]
	ldr	r1, [r4, #+696]
LBB74_29:
	sub	r8, r0, r1
	add	r8, r3, r8, asr #2
	cmp	r8, #0
	beq	LBB74_45
LBB74_30:
	cmp	r8, #100
	movhi	r8, #100
	mvn	r10, #0
	b	LBB74_39
	.align	2
	LCPI74_15:
 	.long	0
	.long	1083129856

LBB74_32:
	ldr	r11, [r0, #-4]!
	tst	r11, #3
	bne	LBB74_38
	str	r0, [r4, #+700]
	cmp	r0, r1
	bne	LBB74_36
	ldr	r1, [r4, #+708]
	ldr	r0, [r1, #+4]
	cmp	r0, #0
	beq	LBB74_36
	str	r0, [r4, #+708]
	add	r2, r0, #8
	str	r2, [r4, #+696]
	add	r3, r0, #1, 20
	str	r3, [r4, #+704]
	ldr	r3, [r0]
	str	r3, [r4, #+700]
	sub	r2, r3, r2
	ldr	r3, [r4, #+712]
	sub	r2, r3, r2, asr #2
	str	r2, [r4, #+712]
	ldr	r2, [r4, #+716]
	sub	r2, r2, #1
	str	r2, [r4, #+716]
	str	r5, [r0]
	ldr	r0, [r4, #+720]
	cmp	r0, #0
	streq	r5, [r1, #+4]
	streq	r1, [r4, #+720]
	ldrne	r0, [r6]
	movne	r2, #1
	movne	r3, #0
	blne	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
LBB74_36:
	cmp	r11, #0
	beq	LBB74_38
	mov	r0, r4
	mov	r1, r11
	bl	__ZN4MMgc2GC17MarkItem_GCObjectEPKv
	b	LBB74_39
LBB74_38:
	mov	r0, r4
	bl	__ZN4MMgc2GC23MarkTopItem_NonGCObjectEv
LBB74_39:
	add	r10, r10, #1
	cmp	r10, r8
	bhs	LBB74_41
	ldr	r1, [r4, #+696]
	ldr	r0, [r4, #+700]
	cmp	r0, r1
	bne	LBB74_32
LBB74_41:
	ldr	r0, [sp, #+160]
	cmp	r0, #0
	beq	LBB74_44
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB74_44
	bl	__ZN7avmplus7Sampler6sampleEv
LBB74_44:
	bl	_mach_absolute_time
	ldr	r2, [sp, #+60]
	cmp	r0, r2
	mov	r9, #0
	mov	r3, #0
	movlo	r9, #1
	ldr	r2, [sp, #+48]
	cmp	r1, r2
	movlo	r3, #1
	cmp	r1, r2
	moveq	r3, r9
	cmp	r3, #0
	bne	LBB74_26
LBB74_45:
	mov	r1, #4
	ldr	r0, [sp, #+132]
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	ldr	r0, [r4, #+676]
	sub	r0, r0, #1
	str	r0, [r4, #+676]
	ldr	r0, [r4, #+1916]
	ldrb	r0, [r0, #+2298]
	cmp	r0, #0
	beq	LBB74_53
	ldr	r1, [sp, #+112]
	ldr	r0, [sp, #+116]
	ldr	r3, [sp, #+64]
	ldr	r2, [r4, #+260]
	adds	r0, r0, r1
	ldr	r1, [sp, #+120]
	adds	r0, r0, r1
	ldr	r1, [sp, #+124]
	adds	r0, r0, r1
	ldr	r1, [r3]
	subs	r0, r1, r0
	ldr	r1, [sp, #+68]
	ldr	r1, [r1]
	adds	r0, r0, r1
	ldr	r1, [sp, #+76]
	ldr	r1, [r1]
	adds	r0, r0, r1
	ldr	r1, [r4, #+256]
	add	r1, r2, r1
	ldr	r2, [r4, #+264]
	add	r1, r1, r2
	adds	r0, r0, r1
	str	r0, [sp, #+40]
	ldr	r2, [sp, #+72]
	ldr	r1, [sp, #+88]
	ldr	r0, [sp, #+96]
	adds	r0, r0, r1
	ldr	r1, [sp, #+104]
	adds	r0, r0, r1
	ldr	r1, [sp, #+128]
	adds	r0, r0, r1
	ldr	r1, [r2]
	ldr	r2, [r4, #+248]
	subs	r0, r1, r0
	ldr	r1, [sp, #+80]
	ldr	r1, [r1]
	adds	r0, r0, r1
	ldr	r1, [sp, #+100]
	ldr	r1, [r1]
	adds	r0, r0, r1
	ldr	r1, [r4, #+244]
	add	r1, r2, r1
	ldr	r2, [r4, #+252]
	add	r1, r1, r2
	adds	r0, r0, r1
	str	r0, [sp, #+44]
	bl	_mach_absolute_time
	ldr	r2, [sp, #+136]
	subs	r0, r0, r2
	ldr	r2, [sp, #+84]
	sbc	r1, r1, r2
	bl	___floatundidf
	vmov	d0, r0, r1
	ldr	r1, LCPI74_7
	ldr	r0, [r1]
	ldmia	r0, {r5, r6}
	vldr.64	d1, LCPI74_0
	vmul.f64	d8, d0, d1
	orr	r0, r5, r6
	cmp	r0, #0
	bne	LBB74_48
	ldr	r5, LCPI74_8
	ldr	r5, [r5]
	mov	r0, r5
	bl	_mach_timebase_info
	vldmia	r5, {s0, s1}
	vcvt.f64.u32	d1, s1
	ldr	r5, LCPI74_9
	vcvt.f64.u32	d0, s0
	ldr	r5, [r5]
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI74_4
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	strd	r0, [r5]
	mov	r5, r0
	mov	r6, r1
LBB74_48:
	ldr	r0, [r4, #+448]
	ldr	r1, [r4, #+168]
	ldr	r8, [r4, #+440]
	ldr	r10, [r4, #+444]
	str	r0, [sp, #+36]
	str	r1, [sp, #+32]
	bl	_mach_absolute_time
	subs	r0, r0, r8
	sbc	r1, r1, r10
	bl	___floatundidf
	ldr	r2, LCPI74_10
	vmov	d0, r0, r1
	vldr.64	d1, LCPI74_0
	vmul.f64	d9, d0, d1
	ldr	r2, [r2]
	ldmia	r2, {r8, r10}
	ldr	r1, [sp, #+32]
	ldr	r0, [sp, #+36]
	orr	r11, r8, r10
	sub	r2, r1, r0
	mov	r0, r5
	mov	r1, r6
	str	r2, [sp, #+28]
	bl	___floatundidf
	vmov	d0, r0, r1
	ldr	r0, [sp, #+40]
	vdiv.f64	d8, d8, d0
	mov	r5, r0, lsr #10
	cmp	r11, #0
	vmov	s0, r5
	vcvt.f64.u32	d0, s0
	vdiv.f64	d0, d0, d8
	ftouizd	s0, d0
	vmov	r6, s0
	beq	LBB74_51
	mov	r0, r8
	mov	r1, r10
	b	LBB74_52
	.align	2
	LCPI74_16:
 	.long	0
	.long	1104006501

LBB74_51:
	ldr	r0, LCPI74_11
	ldr	r8, [r0]
	mov	r0, r8
	bl	_mach_timebase_info
	vldmia	r8, {s0, s1}
	vcvt.f64.u32	d1, s1
	vcvt.f64.u32	d0, s0
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI74_4
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	ldr	r2, LCPI74_12
	ldr	r2, [r2]
	strd	r0, [r2]
LBB74_52:
	bl	___floatundidf
	vstr.64	d8, [sp, #+8]
	stmea	sp, {r5, r6}
	vmov	d0, r0, r1
	ldr	r0, LCPI74_13
	ldr	r1, [r0]
	vldr.64	d1, LCPI74_0
	ldr	r2, [sp, #+28]
	ldr	r3, [sp, #+44]
	vdiv.f64	d0, d9, d0
	mov	r0, r4
	vdiv.f64	d0, d0, d1
	vstr.64	d0, [sp, #+16]
	bl	__ZN4MMgc2GC5gclogEPKcz
LBB74_53:
	ldr	r4, [sp, #+160]
	cmp	r4, #0
	beq	LBB74_57
	ldr	r0, [r4, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB74_56
	bl	__ZN7avmplus7Sampler6sampleEv
LBB74_56:
	ldr	r0, [sp, #+172]
	str	r0, [r4, #+176]
	mov	r0, #0
	str	r0, [sp, #+172]
	str	r0, [sp, #+160]
LBB74_57:
	ldr	r0, [sp, #+108]
	cmp	r0, #0
	ldrbne	r0, [r0, #+4]
	cmpne	r0, #0
	beq	LBB74_59
	ldr	r0, [sp, #+108]
	ldr	r1, [r0]
	ldr	r9, [r1, #+48]
	ldr	r2, [sp, #+144]
	ldr	r3, [sp, #+148]
	mov	r1, #0
	str	r1, [sp]
	str	r1, [sp, #+4]
	ldr	r1, LCPI74_14
	ldr	r1, [r1]
	blx	r9
LBB74_59:
	sub	sp, r7, #40
	vldmia	sp!, {d8, d9}
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI74_0:
 	.long	0
	.long	1083129856

	.align	2
	LCPI74_1:
 	.long	L_.str31044$non_lazy_ptr

	.align	2
	LCPI74_2:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI74_3:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI74_4:
 	.long	0
	.long	1104006501

	.align	2
	LCPI74_5:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI74_6:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI74_7:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI74_8:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI74_9:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI74_10:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI74_11:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI74_12:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI74_13:
 	.long	L_.str112959$non_lazy_ptr

	.align	2
	LCPI74_14:
 	.long	L_.str92957$non_lazy_ptr

Leh_func_end65:

	.globl	__ZN4MMgc2GC4MarkEv
	.align	2
__ZN4MMgc2GC4MarkEv:
Leh_func_begin66:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldr	r1, [r0, #+676]
	mov	r4, r0
	add	r1, r1, #1
	str	r1, [r0, #+676]
	ldr	r12, [r0, #+712]
	ldr	r2, [r0, #+700]
	ldr	r3, [r0, #+696]
	sub	r9, r2, r3
	rsb	lr, r12, #0
	cmp	lr, r9, asr #2
	beq	LBB75_10
	ldr	r1, LCPI75_0
	mov	r5, #0
	ldr	r6, [r1]
	mov	r8, #1
LBB75_2:
	ldr	r10, [r2, #-4]!
	tst	r10, #3
	bne	LBB75_11
	str	r2, [r4, #+700]
	cmp	r2, r3
	bne	LBB75_6
	ldr	r1, [r4, #+708]
	ldr	r2, [r1, #+4]
	cmp	r2, #0
	beq	LBB75_6
	str	r2, [r4, #+708]
	add	r3, r2, #8
	str	r3, [r4, #+696]
	add	r0, r2, #1, 20
	str	r0, [r4, #+704]
	ldr	r0, [r2]
	sub	r3, r0, r3
	str	r0, [r4, #+700]
	sub	r3, r12, r3, asr #2
	str	r3, [r4, #+712]
	ldr	r3, [r4, #+716]
	sub	r3, r3, #1
	str	r3, [r4, #+716]
	str	r5, [r2]
	ldr	r2, [r4, #+720]
	cmp	r2, #0
	streq	r5, [r1, #+4]
	streq	r1, [r4, #+720]
	ldrne	r0, [r6]
	movne	r2, r8
	movne	r3, #0
	blne	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
LBB75_6:
	cmp	r10, #0
	beq	LBB75_11
	mov	r0, r4
	mov	r1, r10
	bl	__ZN4MMgc2GC17MarkItem_GCObjectEPKv
LBB75_8:
	ldr	r12, [r4, #+712]
	ldr	r2, [r4, #+700]
	ldr	r3, [r4, #+696]
	sub	r1, r2, r3
	rsb	r0, r12, #0
	cmp	r0, r1, asr #2
	bne	LBB75_2
	ldr	r1, [r4, #+676]
LBB75_10:
	sub	r0, r1, #1
	str	r0, [r4, #+676]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB75_11:
	mov	r0, r4
	bl	__ZN4MMgc2GC23MarkTopItem_NonGCObjectEv
	b	LBB75_8
	.align	2
	LCPI75_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end66:

	.globl	__ZN4MMgc2GC9MarkRootsEbb
	.align	2
__ZN4MMgc2GC9MarkRootsEbb:
Leh_func_begin67:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #16
	stmfa	sp, {r1, r2}
	mov	r4, r0
	cmp	r2, #0
	bne	LBB76_2
	ldr	r1, [r4, #+464]
	mov	r0, r4
	bl	__ZN4MMgc2GC12TracePointerEPv
	ldr	r1, [r4, #+2032]
	mov	r0, r4
	bl	__ZN4MMgc2GC12TracePointerEPv
LBB76_2:
	add	r0, r4, #229, 30
	add	r0, r0, #1, 22
	str	r0, [sp, #+12]
	bl	_OSSpinLockLock
	ldr	r0, [r4, #+676]
	add	r0, r0, #1
	str	r0, [r4, #+676]
	ldr	r5, [r4, #+1944]
	cmp	r5, #0
	beq	LBB76_23
	add	r0, r4, #174, 30
	str	r0, [sp]
	mov	r6, #0
LBB76_4:
	ldr	r0, [r5, #+20]
	tst	r0, #2
	beq	LBB76_6
	ldr	r0, [r5]
	ldr	r3, [r0]
	mov	r1, r4
	mov	r2, r6
	mov	r0, r5
	blx	r3
	b	LBB76_21
LBB76_6:
	and	r8, r0, #1
	ldr	r10, [r5, #+16]
	tst	r0, #1
	beq	LBB76_8
	ldr	r0, [r5]
	ldr	r1, [r0, #+12]
	mov	r0, r5
	blx	r1
	mov	r11, r0
	b	LBB76_9
LBB76_8:
	bic	r11, r0, #3
LBB76_9:
	cmp	r10, #0
	beq	LBB76_21
	ldr	r2, [sp, #+8]
	cmp	r8, r2
	bne	LBB76_21
	cmp	r11, #123, 28
	bls	LBB76_18
	ldr	r0, [sp]
	mov	r1, r5
	bl	__ZN4MMgc11GCMarkStack18Push_RootProtectorEPKv
	cmp	r0, #0
	bne	LBB76_14
	mov	r0, #1
	strb	r0, [r4, #+760]
	b	LBB76_17
LBB76_14:
	ldr	r1, [r5, #+24]
	ldr	r0, [r4, #+700]
	sub	r8, r0, #4
	cmp	r1, #0
	beq	LBB76_16
	ldr	r0, [r5, #+4]
	mov	r2, r5
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB76_16:
	str	r8, [r5, #+24]
LBB76_17:
	add	r1, r10, #123, 28
	sub	r2, r11, #123, 28
	ldr	r0, [sp]
	mov	r3, r5
	bl	__ZN4MMgc11GCMarkStack19Push_LargeRootChunkEPKvjS2_
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r4, #+760]
	mov	r11, #123, 28
LBB76_18:
	ldr	r0, [r4, #+248]
	add	r0, r0, #1
	str	r0, [r4, #+248]
	ldr	r0, [r4, #+260]
	add	r0, r0, r11
	str	r0, [r4, #+260]
	bic	r0, r11, #3
	add	r8, r10, r0
	b	LBB76_20
LBB76_19:
	ldr	r1, [r10], #+4
	mov	r0, r4
	mov	r2, r6
	bl	__ZN4MMgc2GC24TraceConservativePointerEmb
LBB76_20:
	cmp	r10, r8
	blo	LBB76_19
LBB76_21:
	ldr	r1, [sp, #+4]
	cmp	r1, #0
	movne	r0, r4
	blne	__ZN4MMgc2GC4MarkEv
	ldr	r5, [r5, #+8]
	cmp	r5, #0
	bne	LBB76_4
	ldr	r0, [r4, #+676]
LBB76_23:
	sub	r0, r0, #1
	str	r0, [r4, #+676]
	ldr	r0, [sp, #+12]
	bl	_OSSpinLockUnlock
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end67:

	.globl	__ZN4MMgc2GC14MarkStackRootsEv
	.align	2
__ZN4MMgc2GC14MarkStackRootsEv:
Leh_func_begin68:
	stmfd	sp!, {r7, lr}
	mov	r1, #0
	mov	r2, #1
	mov	r7, sp
	bl	__ZN4MMgc2GC9MarkRootsEbb
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end68:

	.globl	__ZN4MMgc2GC17MarkNonstackRootsEb
	.align	2
__ZN4MMgc2GC17MarkNonstackRootsEb:
Leh_func_begin69:
	stmfd	sp!, {r7, lr}
	mov	r2, #0
	mov	r7, sp
	bl	__ZN4MMgc2GC9MarkRootsEbb
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end69:

	.globl	__ZN4MMgc2GC23HandleMarkStackOverflowEv
	.align	2
__ZN4MMgc2GC23HandleMarkStackOverflowEv:
Leh_func_begin70:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #8
	mov	r2, #0
	str	r2, [sp]
	mov	r1, #1
	mov	r4, r0
	mov	r5, #255
	orr	r5, r5, #15, 24
	mov	r2, #0
	bl	__ZN4MMgc2GC9MarkRootsEbb
	ldr	r0, [r4, #+676]
	add	r0, r0, #1
	str	r0, [r4, #+676]
LBB79_1:
	ldr	r0, [sp]
	mov	r11, #0
	add	r0, r4, r0
	str	r0, [sp, #+4]
	ldr	r0, [r0, #+1424]
	ldr	r8, [r0, #+32]
	ldr	r6, [r0, #+36]
	ldr	r10, [r0, #+4]
	b	LBB79_3
LBB79_2:
	mov	r0, r4
	bl	__ZN4MMgc2GC17MarkItem_GCObjectEPKv
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
LBB79_3:
	cmp	r11, r6
	ldreq	r10, [r10, #+16]
	moveq	r11, #0
	cmp	r10, #0
	beq	LBB79_5
	ldr	r0, [r10, #+44]
	ldr	r2, LCPI79_0
	mla	r1, r11, r8, r0
	add	r11, r11, #1
	and	r2, r1, r2
	orr	r3, r2, #1
	and	r0, r1, r5
	orr	r2, r2, #20
	ldrb	r3, [r3]
	mov	r0, r0, lsr r3
	ldr	r2, [r2]
	ldrb	r0, [r2, +r0]
	and	r0, r0, #3
	cmp	r0, #1
	beq	LBB79_2
	b	LBB79_3
LBB79_5:
	ldr	r0, [sp, #+4]
	mov	r8, #0
	ldr	r0, [r0, #+1104]
	ldrd	r10, [r0, #+32]
	ldr	r6, [r0, #+4]
	b	LBB79_7
LBB79_6:
	mov	r0, r4
	bl	__ZN4MMgc2GC17MarkItem_GCObjectEPKv
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
LBB79_7:
	cmp	r8, r11
	ldreq	r6, [r6, #+16]
	moveq	r8, #0
	cmp	r6, #0
	beq	LBB79_9
	ldr	r0, [r6, #+44]
	ldr	r2, LCPI79_0
	mla	r1, r8, r10, r0
	add	r8, r8, #1
	and	r2, r1, r2
	orr	r3, r2, #1
	and	r0, r1, r5
	orr	r2, r2, #20
	ldrb	r3, [r3]
	mov	r0, r0, lsr r3
	ldr	r2, [r2]
	ldrb	r0, [r2, +r0]
	and	r0, r0, #3
	cmp	r0, #1
	beq	LBB79_6
	b	LBB79_7
LBB79_9:
	ldr	r0, [sp, #+4]
	mov	r8, #0
	ldr	r0, [r0, #+1264]
	ldrd	r10, [r0, #+32]
	ldr	r6, [r0, #+4]
	b	LBB79_11
LBB79_10:
	mov	r0, r4
	bl	__ZN4MMgc2GC17MarkItem_GCObjectEPKv
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
LBB79_11:
	cmp	r8, r11
	ldreq	r6, [r6, #+16]
	moveq	r8, #0
	cmp	r6, #0
	beq	LBB79_13
	ldr	r0, [r6, #+44]
	ldr	r2, LCPI79_0
	mla	r1, r8, r10, r0
	add	r8, r8, #1
	and	r2, r1, r2
	orr	r3, r2, #1
	and	r0, r1, r5
	orr	r2, r2, #20
	ldrb	r3, [r3]
	mov	r0, r0, lsr r3
	ldr	r2, [r2]
	ldrb	r0, [r2, +r0]
	and	r0, r0, #3
	cmp	r0, #1
	beq	LBB79_10
	b	LBB79_11
LBB79_13:
	ldr	r0, [sp]
	add	r0, r0, #4
	str	r0, [sp]
	cmp	r0, #160
	bne	LBB79_1
	ldr	r0, [r4, #+1912]
	ldr	r5, [r0, #+4]
LBB79_15:
	cmp	r5, #0
	ldreq	r0, [r4, #+676]
	subeq	r0, r0, #1
	streq	r0, [r4, #+676]
	subeq	sp, r7, #24
	ldmfdeq	sp!, {r8, r10, r11}
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	mov	r0, r5
	ldrb	r1, [r0, #+24]
	ldr	r5, [r0, #+16]
	tst	r1, #1
	ldrbne	r1, [r0, #+2]
	cmpne	r1, #0
	beq	LBB79_15
	add	r1, r0, #32
	mov	r0, r4
	bl	__ZN4MMgc2GC17MarkItem_GCObjectEPKv
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
	b	LBB79_15
	.align	2
	LCPI79_0:
 	.long	4294963200

Leh_func_end70:

	.globl	__ZN4MMgc2GC15DoMarkFromStackEPvS1_
	.align	2
__ZN4MMgc2GC15DoMarkFromStackEPvS1_:
Leh_func_begin71:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r1
	mov	r5, r0
	bl	_pthread_self
	add	r7, sp, #8
	bl	_pthread_get_stackaddr_np
	ldr	r1, [r4, #+684]
	cmp	r1, #0
	beq	LBB80_2
	cmp	r1, r5
	strhi	r5, [r4, #+684]
	b	LBB80_3
LBB80_2:
	str	r5, [r4, #+684]
LBB80_3:
	sub	r2, r0, r5
	add	r0, r4, #174, 30
	mov	r1, r5
	mov	r3, r5
	bl	__ZN4MMgc11GCMarkStack16Push_StackMemoryEPKvjS2_
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r4, #+760]
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end71:

	.globl	__ZN4MMgc2GC17MarkQueueAndStackEb
	.align	2
__ZN4MMgc2GC17MarkQueueAndStackEb:
Leh_func_begin72:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r1
	mov	r1, #0
	mov	r2, #1
	mov	r5, r0
	add	r7, sp, #8
	bl	__ZN4MMgc2GC9MarkRootsEbb
	cmp	r4, #0
	beq	LBB81_2
	ldr	r0, LCPI81_0
	mov	r1, r5
	bl	__Z27VMPI_callWithRegistersSavedPFvPvS_ES_
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
LBB81_2:
	mov	r0, r5
	bl	__ZN4MMgc2GC4MarkEv
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI81_0:
 	.long	__ZN4MMgc2GC15DoMarkFromStackEPvS1_

Leh_func_end72:

	.globl	__ZN4MMgc2GC24EstablishSweepInvariantsEv
	.align	2
__ZN4MMgc2GC24EstablishSweepInvariantsEv:
Leh_func_begin73:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #4
	add	r4, r0, #89, 28
	add	r5, r0, #69, 28
	add	r6, r0, #79, 28
	add	r8, r0, #99, 28
	add	r10, r0, #109, 28
	mov	r11, #0
	str	r0, [sp]
LBB82_1:
	ldr	r0, [r4, -r11, lsl #2]
	bl	__ZN4MMgc7GCAlloc17CoalesceQuickListEv
	ldr	r0, [r5, -r11, lsl #2]
	bl	__ZN4MMgc7GCAlloc17CoalesceQuickListEv
	ldr	r0, [r6, -r11, lsl #2]
	bl	__ZN4MMgc7GCAlloc17CoalesceQuickListEv
	ldr	r0, [r8, -r11, lsl #2]
	bl	__ZN4MMgc7GCAlloc17CoalesceQuickListEv
	ldr	r0, [r10, -r11, lsl #2]
	sub	r11, r11, #1
	bl	__ZN4MMgc7GCAlloc17CoalesceQuickListEv
	cmn	r11, #40
	bne	LBB82_1
	ldr	r4, [sp]
	ldr	r0, [r4, #+1904]
	bl	__ZN4MMgc7GCAlloc17CoalesceQuickListEv
	ldr	r0, [r4, #+1908]
	bl	__ZN4MMgc7GCAlloc17CoalesceQuickListEv
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end73:

	.globl	__ZN4MMgc2GC21ObtainQuickListBudgetEm
	.align	2
__ZN4MMgc2GC21ObtainQuickListBudgetEm:
Leh_func_begin74:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #4
	ldr	r2, [r0, #+1932]
	str	r1, [sp]
	mov	r4, r0
	cmp	r2, r1
	bhi	LBB83_11
	ldr	r0, [r4, #+1936]
	add	r5, r4, #109, 28
	add	r6, r4, #99, 28
	add	r8, r4, #89, 28
	add	r10, r4, #79, 28
	add	r11, r4, #69, 28
LBB83_2:
	ldr	r2, LCPI83_0
	umull	r2, r1, r0, r2
	mov	r2, r1, lsr #2
	add	r2, r2, r2, lsl #2
	sub	r2, r0, r2
	cmp	r2, #4
	bhi	LBB83_4
	.set LPCRELV2, (LJTI83_0_0-(LPCRELL2+8))
LPCRELL2:
	add	r1, pc, #LPCRELV2
	ldr	pc, [r1, +r2, lsl #2] 
LJTI83_0_0:
	.long	 LBB83_5
	.long	 LBB83_6
	.long	 LBB83_7
	.long	 LBB83_8
	.long	 LBB83_9
LBB83_4:
	mov	r2, #0
	b	LBB83_10
LBB83_5:
	mov	r2, r11
	b	LBB83_10
LBB83_6:
	mov	r2, r10
	b	LBB83_10
LBB83_7:
	mov	r2, r8
	b	LBB83_10
LBB83_8:
	mov	r2, r6
	b	LBB83_10
LBB83_9:
	mov	r2, r5
LBB83_10:
	ldr	r1, LCPI83_0
	umull	r0, r1, r0, r1
	bic	r0, r1, #3
	ldr	r0, [r2, +r0]
	bl	__ZN4MMgc7GCAlloc17CoalesceQuickListEv
	ldr	r0, [r4, #+1936]
	ldr	r2, LCPI83_1
	add	r0, r0, #1
	umull	r2, r1, r0, r2
	mov	r2, r1, lsr #6
	mov	r1, #200
	mul	r2, r2, r1
	sub	r0, r0, r2
	str	r0, [r4, #+1936]
	ldr	r1, [sp]
	ldr	r2, [r4, #+1932]
	cmp	r2, r1
	bls	LBB83_2
LBB83_11:
	ldr	r1, [sp]
	sub	r0, r2, r1
	str	r0, [r4, #+1932]
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI83_0:
 	.long	3435973837

	.align	2
	LCPI83_1:
 	.long	1374389535

Leh_func_end74:
	.section	__TEXT,__const
	.align	2
lJTI83_0:
LJTI83_0:
	.long	LBB83_5
	.long	LBB83_6
	.long	LBB83_7
	.long	LBB83_8
	.long	LBB83_9

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc2GC18SweepNeedsSweepingEv
	.align	2
__ZN4MMgc2GC18SweepNeedsSweepingEv:
Leh_func_begin75:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #36
	ldr	r1, [r0, #+476]
	str	r1, [sp, #+24]
	str	r0, [sp, #+20]
	cmp	r1, #0
	movne	r0, r1
	ldrbne	r0, [r0, #+4]
	cmpne	r0, #0
	bne	LBB84_2
	mov	r0, #0
	str	r0, [sp, #+28]
	str	r0, [sp, #+32]
	b	LBB84_3
LBB84_2:
	ldr	r0, [sp, #+24]
	ldr	r1, [r0]
	ldr	r1, [r1, #+8]
	blx	r1
	str	r0, [sp, #+28]
	str	r1, [sp, #+32]
LBB84_3:
	ldr	r4, [sp, #+20]
	mov	r0, r4
	add	r5, r4, #99, 28
	mov	r6, #0
	bl	__ZN4MMgc2GC24EstablishSweepInvariantsEv
	add	r0, r4, #89, 28
	str	r0, [sp, #+16]
	add	r0, r4, #69, 28
	str	r0, [sp, #+12]
	add	r0, r4, #79, 28
	str	r0, [sp, #+8]
	add	r4, r4, #109, 28
LBB84_4:
	ldr	r0, [sp, #+16]
	ldr	r8, [r0, -r6, lsl #2]
	ldr	r1, [r8, #+16]
	rsb	r10, r6, #0
	cmp	r1, #0
	beq	LBB84_6
LBB84_5:
	mov	r0, r8
	ldr	r11, [r1, #+36]
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r11, #0
	mov	r1, r11
	bne	LBB84_5
LBB84_6:
	ldr	r0, [sp, #+12]
	ldr	r8, [r0, +r10, lsl #2]
	ldr	r1, [r8, #+16]
	cmp	r1, #0
	beq	LBB84_8
LBB84_7:
	mov	r0, r8
	ldr	r11, [r1, #+36]
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r11, #0
	mov	r1, r11
	bne	LBB84_7
LBB84_8:
	ldr	r0, [sp, #+8]
	ldr	r8, [r0, +r10, lsl #2]
	ldr	r1, [r8, #+16]
	cmp	r1, #0
	beq	LBB84_10
LBB84_9:
	mov	r0, r8
	ldr	r11, [r1, #+36]
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r11, #0
	mov	r1, r11
	bne	LBB84_9
LBB84_10:
	ldr	r8, [r5, +r10, lsl #2]
	ldr	r1, [r8, #+16]
	cmp	r1, #0
	beq	LBB84_12
LBB84_11:
	mov	r0, r8
	ldr	r11, [r1, #+36]
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r11, #0
	mov	r1, r11
	bne	LBB84_11
LBB84_12:
	ldr	r8, [r4, +r10, lsl #2]
	ldr	r1, [r8, #+16]
	cmp	r1, #0
	beq	LBB84_14
LBB84_13:
	mov	r0, r8
	ldr	r10, [r1, #+36]
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r10, #0
	mov	r1, r10
	bne	LBB84_13
LBB84_14:
	sub	r6, r6, #1
	cmn	r6, #40
	bne	LBB84_4
	ldr	r0, [sp, #+20]
	ldr	r4, [r0, #+1904]
	ldr	r1, [r4, #+16]
	cmp	r1, #0
	beq	LBB84_17
LBB84_16:
	mov	r0, r4
	ldr	r5, [r1, #+36]
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r5, #0
	mov	r1, r5
	bne	LBB84_16
LBB84_17:
	ldr	r0, [sp, #+20]
	ldr	r4, [r0, #+1908]
	ldr	r1, [r4, #+16]
	cmp	r1, #0
	beq	LBB84_19
LBB84_18:
	mov	r0, r4
	ldr	r5, [r1, #+36]
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r5, #0
	mov	r1, r5
	bne	LBB84_18
LBB84_19:
	ldr	r0, [sp, #+24]
	cmp	r0, #0
	ldrbne	r0, [r0, #+4]
	cmpne	r0, #0
	beq	LBB84_21
	ldr	r0, [sp, #+24]
	ldr	r1, [r0]
	ldr	r9, [r1, #+48]
	ldr	r2, [sp, #+28]
	ldr	r3, [sp, #+32]
	mov	r1, #0
	str	r1, [sp]
	str	r1, [sp, #+4]
	ldr	r1, LCPI84_0
	ldr	r1, [r1]
	blx	r9
LBB84_21:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI84_0:
 	.long	L_.str122960$non_lazy_ptr

Leh_func_end75:

	.globl	__ZN4MMgc2GC20StartIncrementalMarkEv
	.align	2
__ZN4MMgc2GC20StartIncrementalMarkEv:
Leh_func_begin76:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	sub	sp, sp, #8
	mov	r4, r0
	add	r5, r4, #16
	mov	r0, r5
	mov	r1, #1
	mov	r6, #1
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	ldr	r0, [r4, #+168]
	str	r0, [r4, #+448]
	mov	r0, #0
	strb	r0, [r4, #+680]
	strb	r6, [r4, #+669]
	mov	r0, r4
	bl	__ZN4MMgc2GC18SweepNeedsSweepingEv
	ldrb	r0, [r4, #+6]
	cmp	r0, #0
	beq	LBB85_8
	ldr	r6, [r4, #+476]
	cmp	r6, #0
	bne	LBB85_3
	mov	r1, #0
	mov	r0, r4
	mov	r2, r1
	bl	__ZN4MMgc2GC9MarkRootsEbb
	b	LBB85_8
LBB85_3:
	ldrb	r0, [r6, #+4]
	cmp	r0, #0
	bne	LBB85_5
	mov	r0, #0
	mov	r1, r0
	b	LBB85_6
LBB85_5:
	ldr	r0, [r6]
	ldr	r1, [r0, #+8]
	mov	r0, r6
	blx	r1
LBB85_6:
	mov	r8, r0
	mov	r10, r1
	mov	r1, #0
	mov	r0, r4
	mov	r2, r1
	bl	__ZN4MMgc2GC9MarkRootsEbb
	ldrb	r0, [r6, #+4]
	cmp	r0, #0
	beq	LBB85_8
	ldr	r0, [r6]
	ldr	r9, [r0, #+48]
	mov	r2, r8
	mov	r3, r10
	mov	r0, #0
	str	r0, [sp]
	str	r0, [sp, #+4]
	ldr	r0, LCPI85_0
	ldr	r1, [r0]
	mov	r0, r6
	blx	r9
LBB85_8:
	mov	r1, #2
	mov	r0, r5
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	ldrb	r0, [r4, #+6]
	cmp	r0, #0
	movne	r0, r4
	blne	__ZN4MMgc2GC15IncrementalMarkEv
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI85_0:
 	.long	L_.str92957$non_lazy_ptr

Leh_func_end76:

	.globl	__ZN4MMgc2GC8FinalizeEv
	.align	2
__ZN4MMgc2GC8FinalizeEv:
Leh_func_begin77:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #12
	mov	r4, r0
	bl	__ZN4MMgc2GC19MarkOrClearWeakRefsEv
	add	r5, r4, #99, 28
	add	r6, r4, #109, 28
	mov	r8, #0
	mov	r10, #1
	add	r0, r4, #89, 28
	str	r0, [sp, #+8]
	add	r0, r4, #69, 28
	str	r0, [sp, #+4]
	add	r0, r4, #79, 28
	str	r0, [sp]
LBB86_1:
	ldr	r0, [sp, #+8]
	rsb	r11, r8, #0
	ldr	r0, [r0, -r8, lsl #2]
	strb	r10, [r0, #+65]
	ldrb	r1, [r0, #+64]
	cmp	r1, #0
	beq	LBB86_3
	bl	__ZN4MMgc7GCAlloc16FinalizationPassEv
	b	LBB86_4
LBB86_3:
	bl	__ZN4MMgc7GCAlloc13LazySweepPassEv
LBB86_4:
	ldr	r0, [sp, #+4]
	ldr	r0, [r0, +r11, lsl #2]
	strb	r10, [r0, #+65]
	ldrb	r1, [r0, #+64]
	cmp	r1, #0
	beq	LBB86_6
	bl	__ZN4MMgc7GCAlloc16FinalizationPassEv
	b	LBB86_7
LBB86_6:
	bl	__ZN4MMgc7GCAlloc13LazySweepPassEv
LBB86_7:
	ldr	r0, [sp]
	ldr	r0, [r0, +r11, lsl #2]
	strb	r10, [r0, #+65]
	ldrb	r1, [r0, #+64]
	cmp	r1, #0
	beq	LBB86_9
	bl	__ZN4MMgc7GCAlloc16FinalizationPassEv
	b	LBB86_10
LBB86_9:
	bl	__ZN4MMgc7GCAlloc13LazySweepPassEv
LBB86_10:
	ldr	r0, [r5, +r11, lsl #2]
	strb	r10, [r0, #+65]
	ldrb	r1, [r0, #+64]
	cmp	r1, #0
	beq	LBB86_12
	bl	__ZN4MMgc7GCAlloc16FinalizationPassEv
	b	LBB86_13
LBB86_12:
	bl	__ZN4MMgc7GCAlloc13LazySweepPassEv
LBB86_13:
	ldr	r0, [r6, +r11, lsl #2]
	strb	r10, [r0, #+65]
	ldrb	r1, [r0, #+64]
	cmp	r1, #0
	beq	LBB86_15
	bl	__ZN4MMgc7GCAlloc16FinalizationPassEv
	b	LBB86_16
LBB86_15:
	bl	__ZN4MMgc7GCAlloc13LazySweepPassEv
LBB86_16:
	sub	r8, r8, #1
	cmn	r8, #40
	bne	LBB86_1
	ldr	r0, [r4, #+1904]
	mov	r1, #1
	strb	r1, [r0, #+65]
	ldrb	r1, [r0, #+64]
	cmp	r1, #0
	beq	LBB86_19
	bl	__ZN4MMgc7GCAlloc16FinalizationPassEv
	b	LBB86_20
LBB86_19:
	bl	__ZN4MMgc7GCAlloc13LazySweepPassEv
LBB86_20:
	ldr	r0, [r4, #+1908]
	mov	r1, #1
	strb	r1, [r0, #+65]
	ldrb	r1, [r0, #+64]
	cmp	r1, #0
	beq	LBB86_22
	bl	__ZN4MMgc7GCAlloc16FinalizationPassEv
	b	LBB86_23
LBB86_22:
	bl	__ZN4MMgc7GCAlloc13LazySweepPassEv
LBB86_23:
	ldr	r0, [r4, #+1912]
	bl	__ZN4MMgc12GCLargeAlloc8FinalizeEv
	ldrb	r0, [r4, #+1920]
	cmp	r0, #0
	mov	r1, #0
	add	r2, r4, #69, 28
	add	r3, r4, #79, 28
	add	r9, r4, #99, 28
	add	r12, r4, #109, 28
	mov	lr, #0
	mov	r0, #0
	moveq	r0, #1
	strb	r0, [r4, #+1920]
	add	r0, r4, #89, 28
LBB86_24:
	ldr	r5, [r0, -lr, lsl #2]
	strb	r1, [r5, #+65]
	ldr	r5, [r2, -lr, lsl #2]
	strb	r1, [r5, #+65]
	ldr	r5, [r3, -lr, lsl #2]
	strb	r1, [r5, #+65]
	ldr	r5, [r9, -lr, lsl #2]
	strb	r1, [r5, #+65]
	ldr	r5, [r12, -lr, lsl #2]
	sub	lr, lr, #1
	strb	r1, [r5, #+65]
	cmn	lr, #40
	bne	LBB86_24
	ldr	r0, [r4, #+1904]
	mov	r1, #0
	strb	r1, [r0, #+65]
	ldr	r0, [r4, #+1908]
	strb	r1, [r0, #+65]
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end77:

	.globl	__ZN4MMgc2GC5SweepEv
	.align	2
__ZN4MMgc2GC5SweepEv:
Leh_func_begin78:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	vstmdb	sp!, {d8, d9}
	sub	sp, sp, #112
	bic	sp, sp, #7
	ldr	r1, [r0, #+1916]
	mov	r4, r0
	ldrb	r1, [r1, #+2298]
	cmp	r1, #0
	ldrne	r0, LCPI87_0
	ldrne	r1, [r0]
	movne	r0, r4
	blne	__ZN4MMgc2GC5gclogEPKcz
	ldr	r0, [r4, #+476]
	str	r0, [sp, #+40]
	cmp	r0, #0
	ldrbne	r0, [r0, #+4]
	cmpne	r0, #0
	bne	LBB87_2
	mov	r0, #0
	str	r0, [sp, #+44]
	str	r0, [sp, #+52]
	b	LBB87_3
LBB87_2:
	ldr	r0, [sp, #+40]
	ldr	r1, [r0]
	ldr	r1, [r1, #+8]
	blx	r1
	str	r0, [sp, #+44]
	str	r1, [sp, #+52]
LBB87_3:
	mov	r0, r4
	bl	__ZN4MMgc2GC24EstablishSweepInvariantsEv
	mov	r0, #1
	strb	r0, [r4, #+670]
	strb	r0, [r4, #+1988]
	ldr	r0, [r4, #+1972]
	str	r0, [r4, #+1992]
	ldr	r0, [r4, #+1976]
	str	r0, [r4, #+1996]
	ldr	r0, [r4, #+1980]
	str	r0, [r4, #+2000]
	ldr	r1, [r4, #+1984]
	str	r1, [r4, #+2004]
	str	r0, [r4, #+1976]
	ldr	r5, [r4, #+836]
	cmp	r5, #0
	ldrne	r8, [r5, #+32]
	cmpne	r8, #0
	bne	LBB87_5
	mov	r6, #0
	b	LBB87_7
LBB87_5:
	ldr	r6, LCPI87_1
	ldr	r0, [r8, #+40]
	ldr	r1, [r6]
	mov	r2, #7
	bl	__ZN7avmplus7AvmCore18findInternedStringEPKci
	mov	r6, r0
	cmp	r0, #0
	ldrne	r0, [r8, #+128]
	cmpne	r0, #0
	beq	LBB87_7
	mov	r0, r8
	bl	__ZN7avmplus7Sampler6sampleEv
LBB87_7:
	mov	r0, #0
	str	r0, [sp, #+60]
	str	r0, [sp, #+56]
	str	r0, [sp, #+68]
	str	r0, [sp, #+72]
	str	r6, [sp, #+80]
	cmp	r6, #0
	beq	LBB87_11
	ldr	r0, [r5, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB87_10
	bl	__ZN7avmplus7Sampler6sampleEv
LBB87_10:
	str	r5, [sp, #+64]
	ldr	r0, [r5, #+176]
	str	r0, [sp, #+76]
	add	r0, sp, #56
	str	r0, [r5, #+176]
	ldr	r0, [sp, #+76]
	cmp	r0, #0
	moveq	r0, #1
	ldrne	r0, [r0, #+48]
	addne	r0, r0, #1
	b	LBB87_12
LBB87_11:
	mov	r0, #0
	str	r0, [sp, #+64]
	str	r0, [sp, #+76]
LBB87_12:
	str	r0, [sp, #+104]
	mov	r0, #0
	str	r0, [sp, #+84]
	str	r0, [sp, #+88]
	str	r0, [sp, #+92]
	str	r0, [sp, #+96]
	str	r0, [sp, #+100]
	ldr	r0, [r4, #+452]
	add	r0, r0, #1
	str	r0, [r4, #+452]
	ldr	r0, [r4, #+1916]
	ldr	r0, [r0, #+2252]
	str	r0, [sp, #+48]
	mov	r0, #1
	strb	r0, [r4, #+672]
	ldr	r5, [r4, #+1948]
	b	LBB87_14
LBB87_13:
	ldr	r0, [r5]
	ldr	r1, [r0, #+8]
	mov	r0, r5
	blx	r1
	ldr	r5, [r5, #+8]
LBB87_14:
	cmp	r5, #0
	bne	LBB87_13
	mov	r0, #0
	strb	r0, [r4, #+672]
	ldr	r0, [sp, #+64]
	cmp	r0, #0
	beq	LBB87_18
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB87_18
	bl	__ZN7avmplus7Sampler6sampleEv
LBB87_18:
	ldrb	r0, [r4, #+760]
	mov	r5, #0
LBB87_19:
	tst	r0, #255
	movne	r0, r4
	strbne	r5, [r4, #+760]
	blne	__ZN4MMgc2GC23HandleMarkStackOverflowEv
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
	ldrb	r0, [r4, #+760]
	cmp	r0, #0
	bne	LBB87_19
	ldr	r0, [sp, #+64]
	cmp	r0, #0
	beq	LBB87_23
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB87_23
	bl	__ZN7avmplus7Sampler6sampleEv
LBB87_23:
	mov	r0, r4
	bl	__ZN4MMgc2GC8FinalizeEv
	ldr	r0, [sp, #+64]
	cmp	r0, #0
	beq	LBB87_26
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB87_26
	bl	__ZN7avmplus7Sampler6sampleEv
LBB87_26:
	ldr	r5, [r4, #+1924]
	cmp	r5, #0
	beq	LBB87_57
	mov	r0, #0
	mov	r6, #3
	str	r0, [sp, #+36]
LBB87_28:
	ldr	r8, [r5, #+12]
	ldr	r10, [r5, #+16]
	ldr	r1, [sp, #+36]
	ldrb	r0, [r8, #+56]
	cmp	r0, #0
	add	r1, r1, #1
	str	r1, [sp, #+36]
	bne	LBB87_30
	ldr	r2, [r8, #+48]
	ldr	r0, [r5, #+20]
	mov	r1, #0
	bl	_memset
	ldr	r0, [r8, #+52]
	ldr	r1, [r8, #+68]
	ldr	r2, [r5, #+20]
	add	r0, r1, r0, lsl #2
	ldr	r1, [r0, #+488]
	str	r1, [r2]
	str	r2, [r0, #+488]
	mov	r0, #0
	str	r0, [r5, #+20]
LBB87_30:
	and	r1, r5, #63, 6
	ldr	r0, [r8, #+68]
	add	r1, r0, r1, lsr #24
	ldr	r1, [r1, #+848]
	cmp	r1, #0
	movne	r2, #6
	ldrne	r3, LCPI87_13
	andne	r2, r2, r5, lsr #11
	andne	r3, r3, r5, lsr #14
	ldrbne	r9, [r1, +r3]
	bicne	r2, r9, r6, lsl r2
	strbne	r2, [r1, +r3]
	mov	r1, r5
	mov	r5, #1
	mov	r2, r5
	mov	r3, #0
	bl	__ZN4MMgc2GC8heapFreeEPvmb
	cmp	r10, #0
	beq	LBB87_58
	mov	r5, r10
	b	LBB87_28
LBB87_32:
	mov	r0, #0
	str	r0, [r4, #+1928]
	ldr	r0, [r4, #+1916]
	ldrb	r1, [r0, #+2304]
	cmp	r1, #0
	beq	LBB87_34
	mov	r0, r4
	bl	__ZN4MMgc2GC18SweepNeedsSweepingEv
	ldr	r0, [r4, #+1916]
LBB87_34:
	bl	__ZN4MMgc6GCHeap8DecommitEv
	ldr	r0, [sp, #+64]
	cmp	r0, #0
	beq	LBB87_37
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB87_37
	bl	__ZN7avmplus7Sampler6sampleEv
LBB87_37:
	mov	r0, #0
	strb	r0, [r4, #+670]
	strb	r0, [r4, #+669]
	ldr	r1, [r4, #+1992]
	str	r1, [r4, #+1972]
	ldr	r1, [r4, #+1996]
	str	r1, [r4, #+1976]
	ldr	r1, [r4, #+2000]
	str	r1, [r4, #+1980]
	ldr	r1, [r4, #+2004]
	str	r1, [r4, #+1984]
	strb	r0, [r4, #+1988]
	ldr	r5, [r4, #+1948]
	b	LBB87_39
LBB87_38:
	ldr	r0, [r5]
	ldr	r1, [r0, #+12]
	mov	r0, r5
	blx	r1
	ldr	r5, [r5, #+8]
LBB87_39:
	cmp	r5, #0
	bne	LBB87_38
	ldr	r0, [sp, #+64]
	cmp	r0, #0
	beq	LBB87_43
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB87_43
	bl	__ZN7avmplus7Sampler6sampleEv
LBB87_43:
	ldr	r0, [r4, #+1916]
	ldrb	r1, [r0, #+2298]
	cmp	r1, #0
	beq	LBB87_50
	ldr	r5, [r0, #+2252]
	ldr	r6, [r4, #+456]
	ldr	r8, [r4, #+460]
	bl	_mach_absolute_time
	subs	r0, r0, r6
	sbc	r1, r1, r8
	bl	___floatundidf
	vmov	d0, r0, r1
	ldr	r1, LCPI87_3
	ldr	r0, [r1]
	ldmia	r0, {r8, r11}
	vldr.64	d1, LCPI87_2
	vmul.f64	d8, d0, d1
	ldr	r2, [sp, #+36]
	ldr	r1, [sp, #+48]
	orr	r0, r8, r11
	cmp	r0, #0
	sub	r1, r1, r5
	add	r3, r1, r2
	str	r3, [sp, #+28]
	bne	LBB87_46
	ldr	r8, LCPI87_4
	ldr	r8, [r8]
	mov	r0, r8
	bl	_mach_timebase_info
	vldmia	r8, {s0, s1}
	vcvt.f64.u32	d1, s1
	ldr	r8, LCPI87_6
	vcvt.f64.u32	d0, s0
	ldr	r8, [r8]
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI87_5
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	strd	r0, [r8]
	mov	r8, r0
	mov	r11, r1
LBB87_46:
	ldr	r0, [r4, #+452]
	str	r0, [sp, #+32]
	ldr	r5, [r4, #+444]
	ldr	r6, [r4, #+440]
	bl	_mach_absolute_time
	subs	r0, r0, r6
	sbc	r1, r1, r5
	bl	___floatundidf
	vmov	d0, r0, r1
	ldr	r1, LCPI87_7
	ldr	r0, [r1]
	ldmia	r0, {r5, r6}
	vldr.64	d1, LCPI87_2
	vmul.f64	d9, d0, d1
	orr	r10, r5, r6
	ldr	r0, LCPI87_8
	ldr	r3, [sp, #+28]
	mov	r1, r11
	and	r0, r0, r3, lsl #2
	str	r0, [sp, #+24]
	mov	r0, r8
	bl	___floatundidf
	vmov	d0, r0, r1
	vdiv.f64	d8, d8, d0
	cmp	r10, #0
	beq	LBB87_48
	mov	r0, r5
	mov	r1, r6
	b	LBB87_49
LBB87_48:
	ldr	r0, LCPI87_9
	ldr	r5, [r0]
	mov	r0, r5
	bl	_mach_timebase_info
	vldmia	r5, {s0, s1}
	vcvt.f64.u32	d1, s1
	vcvt.f64.u32	d0, s0
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI87_5
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	ldr	r2, LCPI87_10
	ldr	r2, [r2]
	strd	r0, [r2]
LBB87_49:
	bl	___floatundidf
	vstr.64	d8, [sp, #+4]
	vmov	d0, r0, r1
	ldr	r3, [sp, #+24]
	ldr	r0, LCPI87_11
	str	r3, [sp]
	ldr	r1, [r0]
	vldr.64	d1, LCPI87_2
	ldr	r2, [sp, #+32]
	vdiv.f64	d0, d9, d0
	mov	r0, r4
	ldr	r3, [sp, #+28]
	vdiv.f64	d0, d0, d1
	vstr.64	d0, [sp, #+12]
	bl	__ZN4MMgc2GC5gclogEPKcz
LBB87_50:
	ldr	r4, [sp, #+64]
	cmp	r4, #0
	beq	LBB87_54
	ldr	r0, [r4, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB87_53
	bl	__ZN7avmplus7Sampler6sampleEv
LBB87_53:
	ldr	r0, [sp, #+76]
	str	r0, [r4, #+176]
	mov	r0, #0
	str	r0, [sp, #+76]
	str	r0, [sp, #+64]
LBB87_54:
	ldr	r0, [sp, #+40]
	cmp	r0, #0
	ldrbne	r0, [r0, #+4]
	cmpne	r0, #0
	beq	LBB87_56
	ldr	r0, [sp, #+40]
	ldr	r1, [r0]
	ldr	r9, [r1, #+48]
	ldr	r2, [sp, #+44]
	ldr	r3, [sp, #+52]
	mov	r1, #0
	str	r1, [sp]
	str	r1, [sp, #+4]
	ldr	r1, LCPI87_12
	ldr	r1, [r1]
	blx	r9
LBB87_56:
	sub	sp, r7, #40
	vldmia	sp!, {d8, d9}
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB87_57:
	mov	r5, #0
	str	r5, [sp, #+36]
LBB87_58:
	mov	r0, #0
	str	r0, [r4, #+1924]
	ldr	r0, [sp, #+64]
	cmp	r0, #0
	beq	LBB87_61
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB87_61
	bl	__ZN7avmplus7Sampler6sampleEv
LBB87_61:
	ldr	r1, [r4, #+1928]
	cmp	r1, #0
	beq	LBB87_32
	mov	r6, #255
	orr	r6, r6, #15, 24
	mov	r5, #6
	mov	r8, #3
LBB87_63:
	ldr	r3, [sp, #+36]
	ldr	r0, [r1, #+4]
	add	r2, r0, #32
	mov	r9, #0
	ldr	r10, [r1, #+16]
	cmp	r9, r2, lsr #12
	add	r3, r3, r2, lsr #12
	str	r3, [sp, #+36]
	mov	r3, r2, lsr #12
	beq	LBB87_66
	add	r0, r0, #32
	mov	r2, r1
	mov	r0, r0, lsr #12
LBB87_65:
	and	r9, r2, #63, 6
	add	r9, r4, r9, lsr #24
	ldr	r9, [r9, #+848]
	cmp	r9, #0
	andne	r12, r5, r2, lsr #11
	andne	lr, r6, r2, lsr #14
	ldrbne	r11, [r9, +lr]
	bicne	r12, r11, r8, lsl r12
	strbne	r12, [r9, +lr]
	add	r2, r2, #1, 20
	sub	r0, r0, #1
	cmp	r0, #0
	bne	LBB87_65
LBB87_66:
	mov	r2, r3
	mov	r0, r4
	mov	r3, #0
	bl	__ZN4MMgc2GC8heapFreeEPvmb
	cmp	r10, #0
	beq	LBB87_32
	mov	r1, r10
	b	LBB87_63
	.align	2
	LCPI87_0:
 	.long	L_.str132961$non_lazy_ptr

	.align	2
	LCPI87_1:
 	.long	L_.str41045$non_lazy_ptr

	.align	2
	LCPI87_2:
 	.long	0
	.long	1083129856

	.align	2
	LCPI87_3:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI87_4:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI87_5:
 	.long	0
	.long	1104006501

	.align	2
	LCPI87_6:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI87_7:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI87_8:
 	.long	4194300

	.align	2
	LCPI87_9:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI87_10:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI87_11:
 	.long	L_.str152963$non_lazy_ptr

	.align	2
	LCPI87_12:
 	.long	L_.str122960$non_lazy_ptr

	.align	2
	LCPI87_13:
 	.long	4095

Leh_func_end78:

	.globl	__ZN4MMgc2GC21FinishIncrementalMarkEbb
	.align	2
__ZN4MMgc2GC21FinishIncrementalMarkEbb:
Leh_func_begin79:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #24
	mov	r4, r0
	ldrb	r0, [r4, #+1964]
	str	r2, [sp, #+20]
	str	r1, [sp, #+8]
	cmp	r0, #0
	bne	LBB88_31
	ldr	r5, [r4, #+476]
	cmp	r5, #0
	ldrbne	r0, [r5, #+4]
	cmpne	r0, #0
	bne	LBB88_3
	mov	r0, #0
	str	r0, [sp, #+12]
	str	r0, [sp, #+16]
	b	LBB88_4
LBB88_3:
	ldr	r0, [r5]
	ldr	r1, [r0, #+8]
	mov	r0, r5
	blx	r1
	str	r0, [sp, #+12]
	str	r1, [sp, #+16]
LBB88_4:
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
	ldrb	r0, [r4, #+760]
	cmp	r0, #0
	beq	LBB88_9
	add	r6, r4, #182, 30
	add	r8, r4, #174, 30
	mov	r10, #0
	mov	r11, #1
LBB88_6:
	mov	r0, r4
	strb	r10, [r4, #+760]
	bl	__ZN4MMgc2GC23HandleMarkStackOverflowEv
	mov	r0, r8
	mov	r1, r6
	bl	__ZN4MMgc11GCMarkStack22TransferEverythingFromERS0_
	cmp	r0, #0
	bne	LBB88_8
	mov	r0, r8
	mov	r1, r6
	strb	r11, [r4, #+760]
	bl	__ZN4MMgc11GCMarkStack21TransferSomethingFromERS0_
LBB88_8:
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
	ldrb	r0, [r4, #+760]
	cmp	r0, #0
	bne	LBB88_6
LBB88_9:
	bl	_mach_absolute_time
	str	r0, [r4, #+456]
	str	r1, [r4, #+460]
	add	r6, r4, #16
	add	r8, r4, #174, 30
	add	r10, r4, #182, 30
	mov	r1, #5
	mov	r0, r6
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	mov	r0, r8
	mov	r1, r10
	bl	__ZN4MMgc11GCMarkStack22TransferEverythingFromERS0_
	cmp	r0, #0
	bne	LBB88_11
	mov	r0, #1
	strb	r0, [r4, #+760]
	mov	r1, r10
	mov	r0, r8
	bl	__ZN4MMgc11GCMarkStack21TransferSomethingFromERS0_
LBB88_11:
	mov	r0, r4
	mov	r1, #0
	mov	r2, #0
	bl	__ZN4MMgc2GC9MarkRootsEbb
	mov	r2, #1
	mov	r0, r4
	mov	r1, #0
	bl	__ZN4MMgc2GC9MarkRootsEbb
	ldr	r1, [sp, #+8]
	cmp	r1, #0
	beq	LBB88_13
	ldr	r0, LCPI88_0
	mov	r1, r4
	bl	__Z27VMPI_callWithRegistersSavedPFvPvS_ES_
	b	LBB88_14
LBB88_13:
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
LBB88_14:
	ldrb	r0, [r4, #+760]
	cmp	r0, #0
	beq	LBB88_22
	ldr	r1, [sp, #+8]
	cmp	r1, #0
	bne	LBB88_19
LBB88_16:
	mov	r0, #0
	strb	r0, [r4, #+760]
	mov	r0, r4
	bl	__ZN4MMgc2GC23HandleMarkStackOverflowEv
	mov	r0, r8
	mov	r1, r10
	bl	__ZN4MMgc11GCMarkStack22TransferEverythingFromERS0_
	cmp	r0, #0
	bne	LBB88_18
	mov	r0, #1
	strb	r0, [r4, #+760]
	mov	r1, r10
	mov	r0, r8
	bl	__ZN4MMgc11GCMarkStack21TransferSomethingFromERS0_
LBB88_18:
	mov	r1, #0
	mov	r2, #1
	mov	r0, r4
	bl	__ZN4MMgc2GC9MarkRootsEbb
	mov	r0, r4
	bl	__ZN4MMgc2GC4MarkEv
	ldrb	r0, [r4, #+760]
	cmp	r0, #0
	bne	LBB88_16
	b	LBB88_22
LBB88_19:
	mov	r0, #0
	strb	r0, [r4, #+760]
	mov	r0, r4
	bl	__ZN4MMgc2GC23HandleMarkStackOverflowEv
	mov	r0, r8
	mov	r1, r10
	bl	__ZN4MMgc11GCMarkStack22TransferEverythingFromERS0_
	cmp	r0, #0
	bne	LBB88_21
	mov	r0, #1
	strb	r0, [r4, #+760]
	mov	r1, r10
	mov	r0, r8
	bl	__ZN4MMgc11GCMarkStack21TransferSomethingFromERS0_
LBB88_21:
	mov	r1, #0
	mov	r2, #1
	mov	r0, r4
	bl	__ZN4MMgc2GC9MarkRootsEbb
	ldr	r0, LCPI88_1
	mov	r1, r4
	bl	__Z27VMPI_callWithRegistersSavedPFvPvS_ES_
	ldrb	r0, [r4, #+760]
	cmp	r0, #0
	bne	LBB88_19
LBB88_22:
	add	r0, r4, #229, 30
	add	r11, r0, #1, 22
	mov	r0, r11
	bl	_OSSpinLockLock
	ldr	r0, [r4, #+1944]
	cmp	r0, #0
	beq	LBB88_25
	mov	r1, #0
LBB88_24:
	str	r1, [r0, #+24]
	ldr	r0, [r0, #+8]
	cmp	r0, #0
	bne	LBB88_24
LBB88_25:
	mov	r0, r11
	bl	_OSSpinLockUnlock
	mov	r0, r8
	bl	__ZN4MMgc11GCMarkStack5ClearEv
	mov	r0, r10
	bl	__ZN4MMgc11GCMarkStack5ClearEv
	ldr	r1, [r4, #+2028]
	cmp	r1, #0
	beq	LBB88_28
	ldr	r0, LCPI88_2
	ldr	r8, [r0]
LBB88_27:
	ldr	r0, [r1]
	str	r0, [r4, #+2028]
	mov	r2, #1
	mov	r3, #0
	ldr	r0, [r8]
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	ldr	r1, [r4, #+2028]
	cmp	r1, #0
	bne	LBB88_27
LBB88_28:
	cmp	r5, #0
	ldrbne	r0, [r5, #+4]
	cmpne	r0, #0
	beq	LBB88_30
	ldr	r0, [r5]
	ldr	r9, [r0, #+48]
	ldr	r2, [sp, #+12]
	ldr	r3, [sp, #+16]
	mov	r0, #0
	str	r0, [sp]
	str	r0, [sp, #+4]
	ldr	r0, LCPI88_3
	ldr	r1, [r0]
	mov	r0, r5
	blx	r9
LBB88_30:
	mov	r1, #6
	mov	r0, r6
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	mov	r1, #7
	mov	r0, r6
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	mov	r0, r4
	bl	__ZN4MMgc2GC5SweepEv
	mov	r1, #8
	ldr	r2, [sp, #+20]
	cmp	r2, #0
	mov	r0, r6
	moveq	r1, #9
	bl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
LBB88_31:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI88_0:
 	.long	__ZN4MMgc2GC15DoMarkFromStackEPvS1_

	.align	2
	LCPI88_1:
 	.long	__ZN4MMgc2GC15DoMarkFromStackEPvS1_

	.align	2
	LCPI88_2:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI88_3:
 	.long	L_.str92957$non_lazy_ptr

Leh_func_end79:

	.globl	__ZN4MMgc2GC7CollectEbb
	.align	2
__ZN4MMgc2GC7CollectEbb:
Leh_func_begin80:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #8
	ldrb	r3, [r0, #+5]
	cmp	r3, #0
	moveq	r4, r0
	ldreq	r0, [r4, #+676]
	cmpeq	r0, #0
	bne	LBB89_9
	ldrb	r0, [r4, #+670]
	cmp	r0, #0
	ldrbeq	r0, [r4, #+1964]
	cmpeq	r0, #0
	bne	LBB89_9
	ldr	r8, [r4, #+476]
	mov	r5, r2
	mov	r6, r1
	cmp	r8, #0
	ldrbne	r0, [r8, #+4]
	cmpne	r0, #0
	bne	LBB89_4
	mov	r0, #0
	mov	r1, r0
	b	LBB89_5
LBB89_4:
	ldr	r0, [r8]
	ldr	r1, [r0, #+8]
	mov	r0, r8
	blx	r1
LBB89_5:
	mov	r10, r0
	mov	r11, r1
	add	r0, r4, #122, 28
	mov	r1, r6
	bl	__ZN4MMgc3ZCT4ReapEb
	ldrb	r0, [r4, #+669]
	cmp	r0, #0
	bne	LBB89_7
	mov	r0, r4
	bl	__ZN4MMgc2GC20StartIncrementalMarkEv
	ldrb	r0, [r4, #+669]
LBB89_7:
	tst	r0, #255
	movne	r0, r4
	movne	r1, r6
	movne	r2, r5
	blne	__ZN4MMgc2GC21FinishIncrementalMarkEbb
	mov	r0, r4
	bl	__ZN4MMgc2GC18SweepNeedsSweepingEv
	mov	r0, #0
	strb	r0, [r4, #+332]
	cmp	r8, #0
	ldrbne	r0, [r8, #+4]
	cmpne	r0, #0
	beq	LBB89_9
	ldr	r0, [r8]
	ldr	r9, [r0, #+48]
	mov	r2, r10
	mov	r3, r11
	mov	r0, #0
	str	r0, [sp]
	str	r0, [sp, #+4]
	ldr	r0, LCPI89_0
	ldr	r1, [r0]
	mov	r0, r8
	blx	r9
LBB89_9:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI89_0:
 	.long	L_.str162964$non_lazy_ptr

Leh_func_end80:

	.globl	__ZN4MMgc2GC14ThreadEdgeWorkEv
	.align	2
__ZN4MMgc2GC14ThreadEdgeWorkEv:
Leh_func_begin81:
	stmfd	sp!, {r4, r7, lr}
	ldrb	r1, [r0, #+668]
	add	r7, sp, #4
	cmp	r1, #0
	bne	LBB90_6
	mov	r4, r0
	ldrb	r0, [r4, #+332]
	cmp	r0, #0
	beq	LBB90_3
	mov	r1, #0
	mov	r2, #1
	mov	r0, r4
	bl	__ZN4MMgc2GC7CollectEbb
	b	LBB90_4
LBB90_3:
	add	r0, r4, #122, 28
	mov	r1, #0
	bl	__ZN4MMgc3ZCT4ReapEb
LBB90_4:
	ldrb	r0, [r4, #+680]
	cmp	r0, #0
	bne	LBB90_6
	ldr	r0, [r4, #+684]
	cmp	r0, #0
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	mov	r0, #1
	strb	r0, [r4, #+680]
	mov	r1, r4
	ldr	r0, LCPI90_0
	bl	__Z27VMPI_callWithRegistersSavedPFvPvS_ES_
LBB90_6:
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI90_0:
 	.long	__ZN4MMgc2GC12DoCleanStackEPvS1_

Leh_func_end81:

	.globl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	.align	2
__ZN4MMgc2GC11ThreadLeaveEbPS0_:
Leh_func_begin82:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r3, [r0, #+692]
	add	r7, sp, #8
	mov	r4, r2
	mov	r5, r0
	cmp	r3, #1
	bne	LBB91_10
	cmp	r1, #0
	beq	LBB91_9
	ldrb	r0, [r5, #+668]
	cmp	r0, #0
	bne	LBB91_9
	ldrb	r0, [r5, #+332]
	cmp	r0, #0
	beq	LBB91_5
	mov	r1, #0
	mov	r2, #1
	mov	r0, r5
	bl	__ZN4MMgc2GC7CollectEbb
	b	LBB91_6
LBB91_5:
	add	r0, r5, #122, 28
	mov	r1, #0
	bl	__ZN4MMgc3ZCT4ReapEb
LBB91_6:
	ldrb	r0, [r5, #+680]
	cmp	r0, #0
	bne	LBB91_9
	ldr	r0, [r5, #+684]
	cmp	r0, #0
	beq	LBB91_9
	mov	r0, #1
	strb	r0, [r5, #+680]
	mov	r1, r5
	ldr	r0, LCPI91_0
	bl	__Z27VMPI_callWithRegistersSavedPFvPvS_ES_
LBB91_9:
	ldr	r0, [r5, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	ldr	r1, [r0, #+124]
	ldr	r2, [r5, #+688]
	cmp	r1, r2
	ldreq	r1, [r2, #+4]
	streq	r1, [r0, #+124]
	ldr	r0, [r2, #+8]
	cmp	r0, #0
	ldrne	r1, [r2, #+4]
	strne	r1, [r0, #+4]
	ldr	r0, [r2, #+4]
	cmp	r0, #0
	ldrne	r1, [r2, #+8]
	strne	r1, [r0, #+8]
	mov	r0, #0
	str	r0, [r2, #+4]
	str	r0, [r2, #+8]
LBB91_10:
	ldr	r0, [r5, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	str	r4, [r0, #+120]
	ldr	r0, [r5, #+692]
	sub	r0, r0, #1
	str	r0, [r5, #+692]
	cmp	r0, #0
	subne	sp, r7, #8
	ldmfdne	sp!, {r4, r5, r7, pc}
	mov	r0, #0
	str	r0, [r5, #+684]
	str	r0, [r5, #+688]
	str	r0, [r5, #+484]
	add	r0, r5, #30, 28
	bl	_OSSpinLockUnlock
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI91_0:
 	.long	__ZN4MMgc2GC12DoCleanStackEPvS1_

Leh_func_end82:

	.globl	__ZN4MMgc16GCAutoEnterPauseC1EPNS_2GCE
	.align	2
__ZN4MMgc16GCAutoEnterPauseC1EPNS_2GCE:
Leh_func_begin83:
	stmfd	sp!, {r7, lr}
	mov	r2, r1
	str	r2, [r0]
	mov	r7, sp
	ldr	r1, [r2, #+688]
	str	r1, [r0, #+4]
	mov	r0, r2
	mov	r1, #0
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end83:

	.globl	__ZN4MMgc16GCAutoEnterPauseC2EPNS_2GCE
	.align	2
__ZN4MMgc16GCAutoEnterPauseC2EPNS_2GCE:
Leh_func_begin84:
	stmfd	sp!, {r7, lr}
	mov	r2, r1
	str	r2, [r0]
	mov	r7, sp
	ldr	r1, [r2, #+688]
	str	r1, [r0, #+4]
	mov	r0, r2
	mov	r1, #0
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end84:

	.globl	__ZN4MMgc11GCAutoEnter7DestroyEb
	.align	2
__ZN4MMgc11GCAutoEnter7DestroyEb:
Leh_func_begin85:
	stmfd	sp!, {r4, r7, lr}
	ldr	r3, [r0, #+12]
	add	r7, sp, #4
	cmp	r3, #0
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	mov	r4, r0
	ldr	r2, [r4, #+16]
	mov	r0, r3
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	mov	r0, #0
	str	r0, [r4, #+12]
	str	r0, [r4, #+16]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
Leh_func_end85:

	.globl	__ZN4MMgc11GCAutoEnterD0Ev
	.align	2
__ZN4MMgc11GCAutoEnterD0Ev:
Leh_func_begin86:
	stmfd	sp!, {r4, r7, lr}
	ldr	r1, LCPI95_0
	add	r7, sp, #4
	mov	r4, r0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r3, [r0, #+12]
	cmp	r3, #0
	beq	LBB95_2
	ldr	r2, [r4, #+16]
	mov	r1, #1
	mov	r0, r3
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	mov	r0, #0
	str	r0, [r4, #+12]
	str	r0, [r4, #+16]
LBB95_2:
	mov	r0, r4
	bl	_free
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI95_0:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

Leh_func_end86:

	.globl	__ZN4MMgc11GCAutoEnterD1Ev
	.align	2
__ZN4MMgc11GCAutoEnterD1Ev:
Leh_func_begin87:
	stmfd	sp!, {r4, r7, lr}
	ldr	r1, LCPI96_0
	add	r7, sp, #4
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r3, [r0, #+12]
	cmp	r3, #0
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	mov	r4, r0
	ldr	r2, [r4, #+16]
	mov	r1, #1
	mov	r0, r3
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	mov	r0, #0
	str	r0, [r4, #+12]
	str	r0, [r4, #+16]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI96_0:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

Leh_func_end87:

	.globl	__ZN4MMgc11GCAutoEnter6UnwindEv
	.align	2
__ZN4MMgc11GCAutoEnter6UnwindEv:
Leh_func_begin88:
	stmfd	sp!, {r7, lr}
	ldr	r0, [r0, #+12]
	mov	r7, sp
	cmp	r0, #0
	blne	__ZN4MMgc2GC19SignalImminentAbortEv
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end88:

	.globl	__ZN4MMgc11GCAutoEnterD2Ev
	.align	2
__ZN4MMgc11GCAutoEnterD2Ev:
Leh_func_begin89:
	stmfd	sp!, {r4, r7, lr}
	ldr	r1, LCPI98_0
	add	r7, sp, #4
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r0]
	ldr	r3, [r0, #+12]
	cmp	r3, #0
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	mov	r4, r0
	ldr	r2, [r4, #+16]
	mov	r1, #1
	mov	r0, r3
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	mov	r0, #0
	str	r0, [r4, #+12]
	str	r0, [r4, #+16]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI98_0:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

Leh_func_end89:

	.globl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	.align	2
__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb:
Leh_func_begin90:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r8, r0
	add	r10, r8, #30, 28
	mov	r0, r10
	mov	r4, r3
	mov	r5, r2
	mov	r6, r1
	bl	_OSSpinLockTry
	cmp	r0, #0
	bne	LBB99_5
	cmp	r4, #0
	beq	LBB99_3
	mov	r5, #0
	uxtb	r0, r5
	b	LBB99_16
LBB99_3:
	ldr	r4, [r8, #+484]
	bl	_pthread_self
	cmp	r4, r0
	beq	LBB99_5
	mov	r0, r10
	bl	_OSSpinLockLock
LBB99_5:
	ldr	r0, [r8, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	str	r8, [r0, #+120]
	ldr	r0, [r8, #+692]
	add	r1, r0, #1
	str	r1, [r8, #+692]
	cmp	r0, #0
	beq	LBB99_7
LBB99_6:
	mov	r5, #1
	uxtb	r0, r5
	b	LBB99_16
LBB99_7:
	ldr	r0, [r8, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	ldr	r1, [r0, #+124]
	str	r1, [r6, #+4]
	ldr	r1, [r0, #+124]
	cmp	r1, #0
	strne	r6, [r1, #+8]
	str	r6, [r0, #+124]
	str	r6, [r8, #+688]
	bl	_pthread_self
	str	r0, [r8, #+484]
	cmp	r5, #0
	beq	LBB99_6
	ldrb	r5, [r8, #+668]
	cmp	r5, #0
	bne	LBB99_15
	ldrb	r5, [r8, #+332]
	cmp	r5, #0
	beq	LBB99_11
	mov	r1, #0
	mov	r2, #1
	mov	r0, r8
	bl	__ZN4MMgc2GC7CollectEbb
	b	LBB99_12
LBB99_11:
	add	r0, r8, #122, 28
	mov	r1, #0
	bl	__ZN4MMgc3ZCT4ReapEb
LBB99_12:
	ldrb	r5, [r8, #+680]
	cmp	r5, #0
	bne	LBB99_15
	ldr	r5, [r8, #+684]
	cmp	r5, #0
	beq	LBB99_15
	ldr	r0, LCPI99_0
	mov	r1, r8
	mov	r5, #1
	strb	r5, [r8, #+680]
	bl	__Z27VMPI_callWithRegistersSavedPFvPvS_ES_
LBB99_15:
	mov	r0, #1
LBB99_16:
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI99_0:
 	.long	__ZN4MMgc2GC12DoCleanStackEPvS1_

Leh_func_end90:

	.globl	__ZN4MMgc16GCAutoEnterPauseD1Ev
	.align	2
__ZN4MMgc16GCAutoEnterPauseD1Ev:
Leh_func_begin91:
	stmfd	sp!, {r7, lr}
	mov	r2, #0
	ldrd	r0, [r0]
	mov	r3, r2
	mov	r7, sp
	bl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end91:

	.globl	__ZN4MMgc16GCAutoEnterPauseD2Ev
	.align	2
__ZN4MMgc16GCAutoEnterPauseD2Ev:
Leh_func_begin92:
	stmfd	sp!, {r7, lr}
	mov	r2, #0
	ldrd	r0, [r0]
	mov	r3, r2
	mov	r7, sp
	bl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end92:

	.globl	__ZN4MMgc11GCAutoEnterC2EPNS_2GCENS0_9EnterTypeE
	.align	2
__ZN4MMgc11GCAutoEnterC2EPNS_2GCENS0_9EnterTypeE:
Leh_func_begin93:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r4, r2
	ldr	r3, LCPI102_0
	ldr	r2, [r3]
	mov	r5, r0
	mov	r0, #0
	str	r0, [r5, #+4]
	str	r0, [r5, #+8]
	cmp	r1, #0
	add	r2, r2, #8
	str	r2, [r5]
	str	r0, [r5, #+12]
	str	r0, [r5, #+16]
	beq	LBB102_3
	mov	r6, r1
	ldr	r0, [r6, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	ldr	r8, [r0, #+120]
	cmp	r8, r6
	beq	LBB102_3
	mov	r3, #0
	cmp	r4, #1
	mov	r2, #1
	mov	r0, r6
	mov	r1, r5
	moveq	r3, #1
	bl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	cmp	r0, #0
	strne	r6, [r5, #+12]
	strne	r8, [r5, #+16]
LBB102_3:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI102_0:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

Leh_func_end93:

	.globl	__ZN4MMgc11GCAutoEnterC1EPNS_2GCENS0_9EnterTypeE
	.align	2
__ZN4MMgc11GCAutoEnterC1EPNS_2GCENS0_9EnterTypeE:
Leh_func_begin94:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r4, r2
	ldr	r3, LCPI103_0
	ldr	r2, [r3]
	mov	r5, r0
	mov	r0, #0
	str	r0, [r5, #+4]
	str	r0, [r5, #+8]
	cmp	r1, #0
	add	r2, r2, #8
	str	r2, [r5]
	str	r0, [r5, #+12]
	str	r0, [r5, #+16]
	beq	LBB103_3
	mov	r6, r1
	ldr	r0, [r6, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	ldr	r8, [r0, #+120]
	cmp	r8, r6
	beq	LBB103_3
	mov	r3, #0
	cmp	r4, #1
	mov	r2, #1
	mov	r0, r6
	mov	r1, r5
	moveq	r3, #1
	bl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	cmp	r0, #0
	strne	r6, [r5, #+12]
	strne	r8, [r5, #+16]
LBB103_3:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI103_0:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

Leh_func_end94:

	.globl	__ZN4MMgc2GC18memoryStatusChangeENS_13_MemoryStatusES1_
	.align	2
__ZN4MMgc2GC18memoryStatusChangeENS_13_MemoryStatusES1_:
Leh_func_begin95:
	stmfd	sp!, {r4, r5, r7, lr}
	add	r7, sp, #8
	sub	sp, sp, #24
	bic	sp, sp, #7
	cmp	r2, #0
	subne	sp, r7, #8
	ldmfdne	sp!, {r4, r5, r7, pc}
	mov	r4, r0
	bl	_pthread_self
	ldr	r1, [r4, #+484]
	cmp	r0, r1
	beq	LBB104_7
	ldr	r1, LCPI104_0
	mov	r0, #0
	str	r0, [sp, #+4]
	str	r0, [sp, #+8]
	cmp	r4, #0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [sp]
	str	r0, [sp, #+12]
	str	r0, [sp, #+16]
	beq	LBB104_4
	ldr	r0, [r4, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	ldr	r5, [r0, #+120]
	cmp	r5, r4
	beq	LBB104_4
	mov	r2, #1
	mov	r1, sp
	mov	r0, r4
	mov	r3, r2
	bl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	cmp	r0, #0
	strne	r4, [sp, #+12]
	strne	r5, [sp, #+16]
LBB104_4:
	ldr	r0, [sp, #+12]
	cmp	r0, #0
	beq	LBB104_6
	mov	r1, #0
	mov	r2, #1
	mov	r0, r4
	bl	__ZN4MMgc2GC7CollectEbb
	ldr	r0, [sp, #+12]
LBB104_6:
	ldr	r1, LCPI104_1
	cmp	r0, #0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [sp]
	ldrne	r2, [sp, #+16]
	movne	r1, #1
	blne	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
LBB104_7:
	mov	r1, #1
	mov	r0, r4
	mov	r2, r1
	bl	__ZN4MMgc2GC7CollectEbb
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI104_0:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

	.align	2
	LCPI104_1:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

Leh_func_end95:

	.globl	__ZN4MMgc2GC10ClearMarksEv
	.align	2
__ZN4MMgc2GC10ClearMarksEv:
Leh_func_begin96:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #28
	mov	r4, r0
	str	r4, [sp, #+24]
	bl	__ZN4MMgc2GC24EstablishSweepInvariantsEv
	mov	r5, #255
	orr	r5, r5, #15, 24
	mov	r6, #3
	add	r0, r4, #89, 28
	str	r0, [sp, #+20]
	add	r0, r4, #69, 28
	str	r0, [sp, #+16]
	add	r0, r4, #79, 28
	str	r0, [sp, #+12]
	add	r0, r4, #99, 28
	str	r0, [sp, #+4]
	add	r0, r4, #109, 28
	str	r0, [sp, #+8]
	mov	r4, #0
LBB105_1:
	ldr	r0, [sp, #+20]
	ldr	r8, [r0, -r4, lsl #2]
	ldr	r10, [r8, #+4]
	cmp	r10, #0
	rsb	r0, r4, #0
	str	r0, [sp]
	beq	LBB105_5
LBB105_2:
	mov	r11, r10
	ldrb	r0, [r11, #+42]
	ldr	r10, [r11, #+16]
	tst	r0, #1
	beq	LBB105_59
	mov	r0, r8
	mov	r1, r11
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r0, #0
	beq	LBB105_59
LBB105_4:
	cmp	r10, #0
	bne	LBB105_2
LBB105_5:
	ldr	r1, [sp]
	ldr	r0, [sp, #+16]
	ldr	r8, [r0, +r1, lsl #2]
	ldr	r10, [r8, #+4]
LBB105_6:
	cmp	r10, #0
	beq	LBB105_15
	mov	r11, r10
	ldrb	r0, [r11, #+42]
	ldr	r10, [r11, #+16]
	tst	r0, #1
	beq	LBB105_9
	mov	r0, r8
	mov	r1, r11
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r0, #0
	bne	LBB105_6
LBB105_9:
	ldr	r0, [r8, #+48]
	mov	r0, r0, asr #2
	cmp	r0, #1
	blt	LBB105_12
	ldr	r1, [r11, #+20]
LBB105_11:
	ldr	r2, [r1]
	ldr	r3, LCPI105_0
	sub	r0, r0, #1
	cmp	r0, #0
	and	r2, r2, r3
	str	r2, [r1], #+4
	bne	LBB105_11
LBB105_12:
	ldr	r0, [r11, #+28]
LBB105_13:
	cmp	r0, #0
	beq	LBB105_6
	and	r1, r0, r5
	ldrb	r2, [r11, #+1]
	ldr	r3, [r11, #+20]
	mov	r1, r1, lsr r2
	strb	r6, [r3, +r1]
	ldr	r0, [r0]
	b	LBB105_13
LBB105_15:
	ldr	r1, [sp]
	ldr	r0, [sp, #+12]
	ldr	r8, [r0, +r1, lsl #2]
	ldr	r10, [r8, #+4]
LBB105_16:
	cmp	r10, #0
	beq	LBB105_25
	mov	r11, r10
	ldrb	r0, [r11, #+42]
	ldr	r10, [r11, #+16]
	tst	r0, #1
	beq	LBB105_19
	mov	r0, r8
	mov	r1, r11
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r0, #0
	bne	LBB105_16
LBB105_19:
	ldr	r0, [r8, #+48]
	mov	r0, r0, asr #2
	cmp	r0, #1
	blt	LBB105_22
	ldr	r1, [r11, #+20]
LBB105_21:
	ldr	r2, [r1]
	ldr	r3, LCPI105_0
	sub	r0, r0, #1
	cmp	r0, #0
	and	r2, r2, r3
	str	r2, [r1], #+4
	bne	LBB105_21
LBB105_22:
	ldr	r0, [r11, #+28]
LBB105_23:
	cmp	r0, #0
	beq	LBB105_16
	and	r1, r0, r5
	ldrb	r2, [r11, #+1]
	ldr	r3, [r11, #+20]
	mov	r1, r1, lsr r2
	strb	r6, [r3, +r1]
	ldr	r0, [r0]
	b	LBB105_23
LBB105_25:
	ldr	r1, [sp]
	ldr	r0, [sp, #+4]
	ldr	r8, [r0, +r1, lsl #2]
	ldr	r10, [r8, #+4]
LBB105_26:
	cmp	r10, #0
	beq	LBB105_35
	mov	r11, r10
	ldrb	r0, [r11, #+42]
	ldr	r10, [r11, #+16]
	tst	r0, #1
	beq	LBB105_29
	mov	r0, r8
	mov	r1, r11
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r0, #0
	bne	LBB105_26
LBB105_29:
	ldr	r0, [r8, #+48]
	mov	r0, r0, asr #2
	cmp	r0, #1
	blt	LBB105_32
	ldr	r1, [r11, #+20]
LBB105_31:
	ldr	r2, [r1]
	ldr	r3, LCPI105_0
	sub	r0, r0, #1
	cmp	r0, #0
	and	r2, r2, r3
	str	r2, [r1], #+4
	bne	LBB105_31
LBB105_32:
	ldr	r0, [r11, #+28]
LBB105_33:
	cmp	r0, #0
	beq	LBB105_26
	and	r1, r0, r5
	ldrb	r2, [r11, #+1]
	ldr	r3, [r11, #+20]
	mov	r1, r1, lsr r2
	strb	r6, [r3, +r1]
	ldr	r0, [r0]
	b	LBB105_33
LBB105_35:
	ldr	r1, [sp]
	ldr	r0, [sp, #+8]
	ldr	r8, [r0, +r1, lsl #2]
	ldr	r10, [r8, #+4]
LBB105_36:
	cmp	r10, #0
	beq	LBB105_45
	mov	r11, r10
	ldrb	r0, [r11, #+42]
	ldr	r10, [r11, #+16]
	tst	r0, #1
	beq	LBB105_39
	mov	r0, r8
	mov	r1, r11
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r0, #0
	bne	LBB105_36
LBB105_39:
	ldr	r0, [r8, #+48]
	mov	r0, r0, asr #2
	cmp	r0, #1
	blt	LBB105_42
	ldr	r1, [r11, #+20]
LBB105_41:
	ldr	r2, [r1]
	ldr	r3, LCPI105_0
	sub	r0, r0, #1
	cmp	r0, #0
	and	r2, r2, r3
	str	r2, [r1], #+4
	bne	LBB105_41
LBB105_42:
	ldr	r0, [r11, #+28]
LBB105_43:
	cmp	r0, #0
	beq	LBB105_36
	and	r1, r0, r5
	ldrb	r2, [r11, #+1]
	ldr	r3, [r11, #+20]
	mov	r1, r1, lsr r2
	strb	r6, [r3, +r1]
	ldr	r0, [r0]
	b	LBB105_43
LBB105_45:
	sub	r4, r4, #1
	cmn	r4, #40
	bne	LBB105_1
	ldr	r0, [sp, #+24]
	ldr	r4, [r0, #+1904]
	ldr	r5, [r4, #+4]
	cmp	r5, #0
	beq	LBB105_51
	mov	r6, #255
	orr	r6, r6, #15, 24
	mov	r8, #3
LBB105_48:
	mov	r10, r5
	ldrb	r0, [r10, #+42]
	ldr	r5, [r10, #+16]
	tst	r0, #1
	beq	LBB105_65
	mov	r0, r4
	mov	r1, r10
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r0, #0
	beq	LBB105_65
LBB105_50:
	cmp	r5, #0
	bne	LBB105_48
LBB105_51:
	ldr	r0, [sp, #+24]
	ldr	r4, [r0, #+1908]
	ldr	r5, [r4, #+4]
	cmp	r5, #0
	beq	LBB105_56
	mov	r6, #255
	orr	r6, r6, #15, 24
	mov	r8, #3
LBB105_53:
	mov	r10, r5
	ldrb	r0, [r10, #+42]
	ldr	r5, [r10, #+16]
	tst	r0, #1
	beq	LBB105_71
	mov	r0, r4
	mov	r1, r10
	bl	__ZN4MMgc7GCAlloc5SweepEPNS0_7GCBlockE
	cmp	r0, #0
	beq	LBB105_71
LBB105_55:
	cmp	r5, #0
	bne	LBB105_53
LBB105_56:
	ldr	r0, [sp, #+24]
	ldr	r0, [r0, #+1912]
	ldr	r0, [r0, #+4]
	b	LBB105_58
LBB105_57:
	ldrb	r1, [r0, #+24]
	and	r1, r1, #252
	strb	r1, [r0, #+24]
	ldr	r0, [r0, #+16]
LBB105_58:
	cmp	r0, #0
	moveq	r0, #0
	ldreq	r1, [sp, #+24]
	strbeq	r0, [r1, #+760]
	subeq	sp, r7, #24
	ldmfdeq	sp!, {r8, r10, r11}
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	b	LBB105_57
LBB105_59:
	ldr	r0, [r8, #+48]
	mov	r0, r0, asr #2
	cmp	r0, #1
	blt	LBB105_62
	ldr	r1, [r11, #+20]
LBB105_61:
	ldr	r2, [r1]
	ldr	r3, LCPI105_0
	sub	r0, r0, #1
	cmp	r0, #0
	and	r2, r2, r3
	str	r2, [r1], #+4
	bne	LBB105_61
LBB105_62:
	ldr	r0, [r11, #+28]
LBB105_63:
	cmp	r0, #0
	beq	LBB105_4
	and	r1, r0, r5
	ldrb	r2, [r11, #+1]
	ldr	r3, [r11, #+20]
	mov	r1, r1, lsr r2
	strb	r6, [r3, +r1]
	ldr	r0, [r0]
	b	LBB105_63
LBB105_65:
	ldr	r0, [r4, #+48]
	mov	r0, r0, asr #2
	cmp	r0, #1
	blt	LBB105_68
	ldr	r1, [r10, #+20]
LBB105_67:
	ldr	r2, [r1]
	ldr	r3, LCPI105_0
	sub	r0, r0, #1
	cmp	r0, #0
	and	r2, r2, r3
	str	r2, [r1], #+4
	bne	LBB105_67
LBB105_68:
	ldr	r0, [r10, #+28]
LBB105_69:
	cmp	r0, #0
	beq	LBB105_50
	and	r1, r0, r6
	ldrb	r2, [r10, #+1]
	ldr	r3, [r10, #+20]
	mov	r1, r1, lsr r2
	strb	r8, [r3, +r1]
	ldr	r0, [r0]
	b	LBB105_69
LBB105_71:
	ldr	r0, [r4, #+48]
	mov	r0, r0, asr #2
	cmp	r0, #1
	blt	LBB105_74
	ldr	r1, [r10, #+20]
LBB105_73:
	ldr	r2, [r1]
	ldr	r3, LCPI105_0
	sub	r0, r0, #1
	cmp	r0, #0
	and	r2, r2, r3
	str	r2, [r1], #+4
	bne	LBB105_73
LBB105_74:
	ldr	r0, [r10, #+28]
LBB105_75:
	cmp	r0, #0
	beq	LBB105_55
	and	r1, r0, r6
	ldrb	r2, [r10, #+1]
	ldr	r3, [r10, #+20]
	mov	r1, r1, lsr r2
	strb	r8, [r3, +r1]
	ldr	r0, [r0]
	b	LBB105_75
	.align	2
	LCPI105_0:
 	.long	4244438268

Leh_func_end96:

	.globl	__ZN4MMgc2GC19SignalImminentAbortEv
	.align	2
__ZN4MMgc2GC19SignalImminentAbortEv:
Leh_func_begin97:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r1, #0
	str	r1, [r0, #+324]
	add	r7, sp, #8
	mov	r4, r0
	ldrb	r1, [r0, #+1988]
	cmp	r1, #0
	beq	LBB106_5
	ldr	r0, [r4, #+1992]
	str	r0, [r4, #+1972]
	ldr	r0, [r4, #+1996]
	str	r0, [r4, #+1976]
	ldr	r0, [r4, #+2000]
	str	r0, [r4, #+1980]
	ldr	r0, [r4, #+2004]
	str	r0, [r4, #+1984]
	mov	r0, #0
	strb	r0, [r4, #+1988]
	ldr	r0, [r4, #+2020]
	cmp	r0, #0
	beq	LBB106_4
	ldr	r1, [r4, #+2028]
LBB106_3:
	ldr	r2, [r0]
	str	r2, [r4, #+2020]
	str	r1, [r0]
	str	r0, [r4, #+2028]
	mov	r1, r0
	ldr	r2, [r4, #+2020]
	cmp	r2, #0
	mov	r0, r2
	bne	LBB106_3
LBB106_4:
	mov	r0, #0
	str	r0, [r4, #+2024]
LBB106_5:
	ldrb	r0, [r4, #+1964]
	cmp	r0, #0
	movne	r0, #0
	strbne	r0, [r4, #+1964]
	ldrb	r0, [r4, #+670]
	cmp	r0, #0
	ldrbeq	r0, [r4, #+669]
	cmpeq	r0, #0
	beq	LBB106_10
	add	r0, r4, #229, 30
	add	r5, r0, #1, 22
	mov	r0, r5
	bl	_OSSpinLockLock
	ldr	r0, [r4, #+1944]
	cmp	r0, #0
	beq	LBB106_9
	mov	r1, #0
LBB106_8:
	str	r1, [r0, #+24]
	ldr	r0, [r0, #+8]
	cmp	r0, #0
	bne	LBB106_8
LBB106_9:
	mov	r0, r5
	bl	_OSSpinLockUnlock
	add	r0, r4, #174, 30
	bl	__ZN4MMgc11GCMarkStack5ClearEv
	add	r0, r4, #182, 30
	bl	__ZN4MMgc11GCMarkStack5ClearEv
	mov	r0, r4
	bl	__ZN4MMgc2GC10ClearMarksEv
	mov	r0, #0
	strb	r0, [r4, #+760]
	strb	r0, [r4, #+670]
	strb	r0, [r4, #+669]
	str	r0, [r4, #+676]
LBB106_10:
	ldr	r4, [r4, #+688]
	cmp	r4, #0
	ldrne	r0, [r4, #+12]
	cmpne	r0, #0
	beq	LBB106_12
	ldr	r2, [r4, #+16]
	mov	r1, #0
	mov	r5, #0
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	str	r5, [r4, #+12]
	str	r5, [r4, #+16]
LBB106_12:
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end97:

	.globl	__ZN4MMgc2GC22AbortInProgressMarkingEv
	.align	2
__ZN4MMgc2GC22AbortInProgressMarkingEv:
Leh_func_begin98:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r0
	add	r0, r4, #229, 30
	add	r5, r0, #1, 22
	add	r7, sp, #8
	mov	r0, r5
	bl	_OSSpinLockLock
	ldr	r0, [r4, #+1944]
	cmp	r0, #0
	beq	LBB107_3
	mov	r1, #0
LBB107_2:
	str	r1, [r0, #+24]
	ldr	r0, [r0, #+8]
	cmp	r0, #0
	bne	LBB107_2
LBB107_3:
	mov	r0, r5
	bl	_OSSpinLockUnlock
	add	r0, r4, #174, 30
	bl	__ZN4MMgc11GCMarkStack5ClearEv
	add	r0, r4, #182, 30
	bl	__ZN4MMgc11GCMarkStack5ClearEv
	mov	r0, r4
	bl	__ZN4MMgc2GC10ClearMarksEv
	mov	r0, #0
	strb	r0, [r4, #+669]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end98:

	.globl	__ZN4MMgc2GC20ForceSweepAtShutdownEv
	.align	2
__ZN4MMgc2GC20ForceSweepAtShutdownEv:
Leh_func_begin99:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r0
	add	r0, r4, #229, 30
	add	r5, r0, #1, 22
	add	r7, sp, #8
	mov	r0, r5
	bl	_OSSpinLockLock
	ldr	r0, [r4, #+1944]
	cmp	r0, #0
	beq	LBB108_3
	mov	r1, #0
LBB108_2:
	str	r1, [r0, #+24]
	ldr	r0, [r0, #+8]
	cmp	r0, #0
	bne	LBB108_2
LBB108_3:
	mov	r0, r5
	bl	_OSSpinLockUnlock
	add	r0, r4, #174, 30
	bl	__ZN4MMgc11GCMarkStack5ClearEv
	add	r0, r4, #182, 30
	bl	__ZN4MMgc11GCMarkStack5ClearEv
	mov	r0, r4
	bl	__ZN4MMgc2GC10ClearMarksEv
	mov	r0, #1
	strb	r0, [r4, #+669]
	mov	r0, r4
	bl	__ZN4MMgc2GC5SweepEv
	mov	r0, #0
	strb	r0, [r4, #+669]
	mov	r0, r4
	bl	__ZN4MMgc2GC18SweepNeedsSweepingEv
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end99:

	.globl	__ZN4MMgc2GC27SignalDependentDeallocationEmNS_19DependentMemoryTypeE
	.align	2
__ZN4MMgc2GC27SignalDependentDeallocationEmNS_19DependentMemoryTypeE:
	cmp	r2, #1
	addle	r2, r0, r2, lsl #2
	ldrle	r3, [r2, #+468]
	suble	r3, r3, r1
	strle	r3, [r2, #+468]
	ldr	r2, [r0, #+240]
	sub	r2, r2, r1
	str	r2, [r0, #+240]
	ldr	r2, [r0, #+420]
	add	r1, r2, r1
	str	r1, [r0, #+420]
	bx	lr

	.globl	__ZN4MMgc2GC9AllocSlowEPNS_7GCAllocE
	.align	2
__ZN4MMgc2GC9AllocSlowEPNS_7GCAllocE:
Leh_func_begin100:
	stmfd	sp!, {r4, r7, lr}
	ldr	r0, [r0, #+836]
	add	r7, sp, #4
	mov	r4, r1
	cmp	r0, #0
	beq	LBB110_3
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB110_3
	bl	__ZN7avmplus7Sampler6sampleEv
LBB110_3:
	mov	r1, #0
	mov	r0, r4
	bl	__ZN4MMgc7GCAlloc5AllocEi
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
Leh_func_end100:

	.globl	__ZN4MMgc2GC5AllocEmi
	.align	2
__ZN4MMgc2GC5AllocEmi:
Leh_func_begin101:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r3, [r0, #+836]
	add	r7, sp, #12
	mov	r4, r2
	mov	r5, r1
	mov	r6, r0
	cmp	r3, #0
	beq	LBB111_3
	ldr	r0, [r3, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB111_3
	bl	__ZN7avmplus7Sampler6sampleEv
LBB111_3:
	cmp	r5, #123, 28
	bls	LBB111_6
	mov	r0, #0
	adds	r1, r5, #7
	adc	r0, r0, #0
	cmp	r0, #0
	bne	LBB111_7
	add	r1, r5, #7
	ldr	r0, [r6, #+1912]
	mov	r2, r4
	bic	r1, r1, #7
	bl	__ZN4MMgc12GCLargeAlloc5AllocEmi
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB111_6:
	sub	r5, r5, #1
	ldr	r0, [r6, #+768]
	and	r1, r4, #14
	add	r6, r6, r1, lsl #2
	ldrb	r5, [r0, +r5, lsr #3]
	ldr	r6, [r6, #+772]
	ldr	r0, [r6, +r5, lsl #2]
	mov	r1, r4
	bl	__ZN4MMgc7GCAlloc5AllocEi
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB111_7:
	bl	__ZN4MMgc6GCHeap20SignalObjectTooLargeEv
Leh_func_end101:

	.globl	__ZN4MMgc2GC10LockObjectEPKv
	.align	2
__ZN4MMgc2GC10LockObjectEPKv:
Leh_func_begin102:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	ldr	r2, [r0, #+836]
	mov	r4, r1
	mov	r5, r0
	cmp	r2, #0
	beq	LBB112_3
	ldr	r0, [r2, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB112_3
	bl	__ZN7avmplus7Sampler6sampleEv
LBB112_3:
	ldr	r1, [r5, #+768]
	ldr	r0, [r5, #+780]
	ldrb	r1, [r1, #+1]
	ldr	r0, [r0, +r1, lsl #2]
	mov	r1, #19
	bl	__ZN4MMgc7GCAlloc5AllocEi
	mov	r6, r0
	cmp	r0, #0
	beq	LBB112_5
	ldr	r0, LCPI112_0
	mov	r8, #0
	mov	r1, #0
	ldr	r0, [r0]
	add	r0, r0, #8
	stmia	r6, {r0, r4}
	mov	r0, r6
	str	r8, [r0, #+8]!
	bl	__ZN4MMgc2GC12WriteBarrierEPKvS2_
	mov	r0, r6
	mov	r1, #0
	str	r8, [r0, #+12]!
	bl	__ZN4MMgc2GC12WriteBarrierEPKvS2_
LBB112_5:
	cmp	r4, #0
	beq	LBB112_13
	ldr	r0, LCPI112_1
	and	r0, r4, r0
	orr	r1, r0, #3
	ldrb	r1, [r1]
	cmp	r1, #0
	ldrne	r1, [r4, #+4]
	cmpne	r1, #0
	beq	LBB112_13
	tst	r1, #1, 2
	bne	LBB112_13
	add	r1, r1, #1
	uxtb	r2, r1
	str	r1, [r4, #+4]
	cmp	r2, #255
	bne	LBB112_10
	orr	r0, r1, #1, 2
	b	LBB112_12
LBB112_10:
	cmp	r1, #0
	bge	LBB112_13
	ldr	r0, [r0, #+8]
	mov	r2, #255, 30
	orr	r2, r2, #3, 22
	and	r3, r2, r1, lsr #16
	and	r1, r2, r1, lsr #6
	ldr	r0, [r0, #+1956]
	mov	r2, #0
	ldr	r0, [r0, +r3]
	str	r2, [r0, +r1]
	mov	r1, #255
	orr	r1, r1, #7, 4
	ldr	r0, [r4, #+4]
	and	r0, r0, r1
LBB112_12:
	str	r0, [r4, #+4]
LBB112_13:
	ldr	r1, [r5, #+2032]
	cmp	r1, #0
	beq	LBB112_15
	add	r0, r1, #8
	mov	r1, r6
	bl	__ZN4MMgc2GC12WriteBarrierEPKvS2_
	ldr	r1, [r5, #+2032]
LBB112_15:
	add	r0, r6, #12
	bl	__ZN4MMgc2GC12WriteBarrierEPKvS2_
	str	r6, [r5, #+2032]
	mov	r0, r6
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI112_0:
 	.long	L__ZTVN4MMgc12GCObjectLockE$non_lazy_ptr

	.align	2
	LCPI112_1:
 	.long	4294963200

Leh_func_end102:

	.globl	__ZN4MMgc2GC10GetWeakRefEPKv
	.align	2
__ZN4MMgc2GC10GetWeakRefEPKv:
Leh_func_begin103:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	ldr	r1, LCPI113_0
	and	r4, r0, r1
	mov	r6, r0
	orr	r1, r4, #8
	ldr	r5, [r1]
	ldr	r2, [r5, #+656]
	sub	r2, r2, #1
	ldr	r1, [r5, #+652]
	and	r3, r2, r0, ror #3
	add	r9, r1, r3, lsl #3
	ldr	r9, [r9, #+4]
	cmp	r9, #0
	cmpne	r9, r6
	beq	LBB113_4
	mov	r0, #1
LBB113_2:
	add	r3, r3, r0
	and	r3, r3, r2
	add	r9, r1, r3, lsl #3
	ldr	r9, [r9, #+4]
	cmp	r9, #0
	beq	LBB113_4
	add	r0, r0, #1
	cmp	r9, r6
	bne	LBB113_2
LBB113_4:
	ldr	r0, [r1, +r3, lsl #3]
	cmp	r0, #0
	bne	LBB113_12
	ldrb	r0, [r5, #+670]
	cmp	r0, #0
	beq	LBB113_8
	mov	r0, #255
	orr	r0, r0, #15, 24
	ldrb	r1, [r4, #+1]
	and	r0, r6, r0
	mov	r0, r0, lsr r1
	ldr	r1, [r4, #+20]
	ldrb	r0, [r1, +r0]
	tst	r0, #1
	bne	LBB113_8
	ldr	r0, [r5, #+464]
	b	LBB113_12
LBB113_8:
	ldr	r0, [r5, #+836]
	cmp	r0, #0
	beq	LBB113_11
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB113_11
	bl	__ZN7avmplus7Sampler6sampleEv
LBB113_11:
	ldr	r0, [r5, #+768]
	ldr	r1, [r5, #+772]
	ldrb	r0, [r0]
	ldr	r0, [r1, +r0, lsl #2]
	mov	r1, #0
	bl	__ZN4MMgc7GCAlloc5AllocEi
	mov	r8, r0
	str	r6, [r8]
	add	r0, r5, #163, 30
	mov	r1, r6
	mov	r2, r8
	bl	__ZN4MMgc15GCHashtableBaseIPKvNS_21GCHashtableKeyHandlerENS_27GCHashtableAllocHandler_newEE3putES2_S2_
	mov	r0, #255
	orr	r0, r0, #15, 24
	ldrb	r1, [r4, #+1]
	ldr	r2, [r4, #+20]
	and	r0, r6, r0
	mov	r1, r0, lsr r1
	ldrb	r3, [r2, +r1]
	cmp	r0, #32
	orr	r3, r3, #8
	strb	r3, [r2, +r1]
	ldrbne	r0, [r4, #+42]
	orrne	r0, r0, #2
	strbne	r0, [r4, #+42]
	mov	r0, r8
LBB113_12:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI113_0:
 	.long	4294963200

Leh_func_end103:

	.globl	__ZN4MMgc2GC19OutOfLineAllocExtraEmmi
	.align	2
__ZN4MMgc2GC19OutOfLineAllocExtraEmmi:
Leh_func_begin104:
	stmfd	sp!, {r7, lr}
	adds	r1, r2, r1
	mov	r9, #0
	adc	r2, r9, #0
	mov	r7, sp
	cmp	r2, #0
	bne	LBB114_2
	mov	r2, r3
	bl	__ZN4MMgc2GC5AllocEmi
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
LBB114_2:
	bl	__ZN4MMgc6GCHeap20SignalObjectTooLargeEv
Leh_func_end104:

	.globl	__ZN4MMgc2GC14CollectionWorkEv
	.align	2
__ZN4MMgc2GC14CollectionWorkEv:
Leh_func_begin105:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	sub	sp, sp, #8
	ldrb	r1, [r0, #+5]
	cmp	r1, #0
	bne	LBB115_14
	mov	r4, r0
	ldr	r5, [r4, #+476]
	cmp	r5, #0
	ldrbne	r0, [r5, #+4]
	cmpne	r0, #0
	bne	LBB115_3
	mov	r0, #0
	mov	r1, r0
	b	LBB115_4
LBB115_3:
	ldr	r0, [r5]
	ldr	r1, [r0, #+8]
	mov	r0, r5
	blx	r1
LBB115_4:
	mov	r6, r0
	ldrb	r0, [r4, #+6]
	mov	r8, r1
	cmp	r0, #0
	beq	LBB115_11
	ldrb	r0, [r4, #+670]
	cmp	r0, #0
	ldrbeq	r0, [r4, #+1964]
	cmpeq	r0, #0
	bne	LBB115_12
	ldrb	r0, [r4, #+669]
	cmp	r0, #0
	bne	LBB115_8
	mov	r0, r4
	bl	__ZN4MMgc2GC20StartIncrementalMarkEv
	b	LBB115_12
LBB115_8:
	vldr.64	d0, [r4, #+408]
	vcmpe.f64	d0, #0
	fmstat
	bhi	LBB115_10
	mov	r1, #1
	mov	r0, r4
	mov	r2, r1
	bl	__ZN4MMgc2GC21FinishIncrementalMarkEbb
	b	LBB115_12
LBB115_10:
	mov	r0, r4
	bl	__ZN4MMgc2GC15IncrementalMarkEv
	b	LBB115_12
LBB115_11:
	mov	r1, #1
	mov	r0, r4
	mov	r2, r1
	bl	__ZN4MMgc2GC7CollectEbb
LBB115_12:
	cmp	r5, #0
	ldrbne	r0, [r5, #+4]
	cmpne	r0, #0
	beq	LBB115_14
	ldr	r0, [r5]
	ldr	r9, [r0, #+48]
	mov	r2, r6
	mov	r3, r8
	mov	r0, #0
	str	r0, [sp]
	str	r0, [sp, #+4]
	ldr	r0, LCPI115_0
	ldr	r1, [r0]
	mov	r0, r5
	blx	r9
LBB115_14:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI115_0:
 	.long	L_.str172965$non_lazy_ptr

Leh_func_end105:

	.globl	__ZN4MMgc2GC25SignalDependentAllocationEmNS_19DependentMemoryTypeE
	.align	2
__ZN4MMgc2GC25SignalDependentAllocationEmNS_19DependentMemoryTypeE:
Leh_func_begin106:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	cmp	r2, #1
	addle	r2, r0, r2, lsl #2
	ldrle	r3, [r2, #+468]
	addle	r3, r3, r1
	strle	r3, [r2, #+468]
	ldr	r2, [r0, #+240]
	add	r2, r2, r1
	str	r2, [r0, #+240]
	ldr	r2, [r0, #+420]
	sub	r1, r2, r1
	str	r1, [r0, #+420]
	cmp	r1, #0
	bllt	__ZN4MMgc2GC14CollectionWorkEv
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end106:

	.globl	__ZN4MMgc2GC11AllocRCRootEm
	.align	2
__ZN4MMgc2GC11AllocRCRootEm:
Leh_func_begin107:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	mov	r4, r1
	adds	r1, r4, #8
	mov	r5, r0
	mov	r2, #0
	adc	r0, r2, #0
	cmp	r0, #0
	bne	LBB117_11
	add	r6, r4, #8
	cmp	r6, #0
	bne	LBB117_3
	mov	r8, #0
	b	LBB117_8
LBB117_3:
	mov	r0, r6
	bl	_malloc
	cmp	r0, #0
	bne	LBB117_7
	mov	r8, #1
	ldr	r0, LCPI117_0
	add	r10, r8, r6, lsr #12
	ldr	r11, [r0]
LBB117_5:
	sub	r8, r8, #1
	ldr	r0, [r11]
	cmp	r8, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB117_12
	mov	r1, r10
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, r6
	bl	_malloc
	cmp	r0, #0
	beq	LBB117_5
LBB117_7:
	mov	r8, r0
	mov	r1, #0
	mov	r0, r8
	mov	r2, r6
	bl	_memset
LBB117_8:
	ldr	r0, LCPI117_1
	mov	r2, #1
	mov	r1, #44
	ldr	r0, [r0]
	ldr	r6, [r0]
	mov	r0, r6
	bl	__ZN4MMgc11FixedMalloc14OutOfLineAllocEmNS_15FixedMallocOptsE
	mov	r10, r0
	add	r0, r6, #114, 30
	add	r11, r0, #1, 22
	mov	r0, r11
	bl	_OSSpinLockLock
	str	r10, [r6, #+1484]
	mov	r0, #44
	str	r0, [r6, #+1488]
	add	r6, r8, #8
	mov	r0, r11
	bl	_OSSpinLockUnlock
	ldr	r0, LCPI117_2
	mov	r1, #0
	cmp	r5, #0
	ldr	r0, [r0]
	add	r0, r0, #8
	stmia	r10, {r0, r5}
	str	r6, [r10, #+16]
	orr	r0, r4, #1
	str	r0, [r10, #+20]
	str	r1, [r10, #+24]
	beq	LBB117_10
	add	r0, r5, #229, 30
	add	r11, r0, #1, 22
	mov	r0, r11
	bl	_OSSpinLockLock
	mov	r0, #0
	str	r0, [r10, #+12]
	ldr	r0, [r5, #+1944]
	str	r0, [r10, #+8]
	ldr	r0, [r5, #+1944]
	cmp	r0, #0
	strne	r10, [r0, #+12]
	mov	r0, r11
	str	r10, [r5, #+1944]
	bl	_OSSpinLockUnlock
LBB117_10:
	ldr	r0, LCPI117_3
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [r10]
	str	r6, [r10, #+28]
	str	r4, [r10, #+32]
	mov	r0, #0
	str	r0, [r10, #+36]
	str	r0, [r10, #+40]
	str	r10, [r8]
	ldr	r0, [r5, #+12]
	str	r0, [r10, #+40]
	ldr	r0, [r5, #+12]
	cmp	r0, #0
	strne	r10, [r0, #+36]
	str	r10, [r5, #+12]
	mov	r0, r6
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB117_11:
	bl	__ZN4MMgc6GCHeap20SignalObjectTooLargeEv
LBB117_12:
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI117_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI117_1:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

	.align	2
	LCPI117_2:
 	.long	L__ZTVN4MMgc6GCRootE$non_lazy_ptr

	.align	2
	LCPI117_3:
 	.long	L__ZTVN4MMgc2GC13RCRootSegmentE$non_lazy_ptr

Leh_func_end107:

	.globl	__ZN4MMgc2GC17pushAllocaSegmentEm
	.align	2
__ZN4MMgc2GC17pushAllocaSegmentEm:
Leh_func_begin108:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r4, r1
	mov	r5, r0
	bl	__ZN4MMgc2GC11AllocRCRootEm
	mov	r6, r0
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	bne	LBB118_4
	ldr	r0, LCPI118_0
	ldr	r8, [r0]
	mov	r10, #1
LBB118_2:
	sub	r10, r10, #1
	ldr	r0, [r8]
	cmp	r10, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB118_5
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	beq	LBB118_2
LBB118_4:
	add	r1, r6, r4
	str	r6, [r0]
	str	r1, [r0, #+4]
	mov	r1, #0
	str	r1, [r0, #+8]
	ldr	r1, [r5, #+2036]
	str	r1, [r0, #+12]
	cmp	r1, #0
	ldrne	r2, [r5, #+2040]
	strne	r2, [r1, #+8]
	str	r0, [r5, #+2036]
	str	r6, [r5, #+2040]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB118_5:
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI118_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end108:

	.globl	__ZN4MMgc2GC14allocaPushSlowEm
	.align	2
__ZN4MMgc2GC14allocaPushSlowEm:
Leh_func_begin109:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	mov	r4, r1
	mov	r6, r4
	cmp	r4, #250, 30
	mov	r5, r0
	movlo	r6, #250, 30
	mov	r1, r6
	bl	__ZN4MMgc2GC11AllocRCRootEm
	mov	r8, r0
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	bne	LBB119_4
	ldr	r0, LCPI119_0
	ldr	r10, [r0]
	mov	r11, #1
LBB119_2:
	sub	r11, r11, #1
	ldr	r0, [r10]
	cmp	r11, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB119_5
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	beq	LBB119_2
LBB119_4:
	add	r1, r8, r6
	str	r8, [r0]
	str	r1, [r0, #+4]
	mov	r1, #0
	str	r1, [r0, #+8]
	ldr	r1, [r5, #+2036]
	str	r1, [r0, #+12]
	cmp	r1, #0
	ldrne	r2, [r5, #+2040]
	strne	r2, [r1, #+8]
	str	r0, [r5, #+2036]
	add	r1, r8, r4
	str	r1, [r5, #+2040]
	mov	r0, r8
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB119_5:
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI119_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end109:

	.globl	__ZN4MMgc2GC10allocaPushEmRNS0_13AllocaAutoPtrE
	.align	2
__ZN4MMgc2GC10allocaPushEmRNS0_13AllocaAutoPtrE:
Leh_func_begin110:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	mov	r4, r0
	str	r4, [r2]
	adds	r1, r1, #7
	ldr	r0, [r4, #+2040]
	str	r0, [r2, #+4]
	mov	r0, #0
	adc	r0, r0, #0
	cmp	r0, #0
	bne	LBB120_9
	ldr	r0, [r4, #+2036]
	bic	r5, r1, #7
	ldr	r1, [r4, #+2040]
	add	r1, r1, r5
	ldr	r0, [r0, #+4]
	cmp	r1, r0
	bhi	LBB120_4
	str	r1, [r4, #+2040]
	ldr	r0, [r2, #+4]
LBB120_3:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB120_4:
	mov	r6, r5
	cmp	r5, #250, 30
	mov	r0, r4
	movlo	r6, #250, 30
	mov	r1, r6
	bl	__ZN4MMgc2GC11AllocRCRootEm
	mov	r8, r0
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	bne	LBB120_8
	ldr	r0, LCPI120_0
	ldr	r10, [r0]
	mov	r11, #1
LBB120_6:
	sub	r11, r11, #1
	ldr	r0, [r10]
	cmp	r11, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB120_10
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	beq	LBB120_6
LBB120_8:
	add	r1, r8, r6
	str	r8, [r0]
	str	r1, [r0, #+4]
	mov	r1, #0
	str	r1, [r0, #+8]
	ldr	r1, [r4, #+2036]
	str	r1, [r0, #+12]
	cmp	r1, #0
	ldrne	r2, [r4, #+2040]
	strne	r2, [r1, #+8]
	str	r0, [r4, #+2036]
	add	r1, r8, r5
	str	r1, [r4, #+2040]
	mov	r0, r8
	b	LBB120_3
LBB120_9:
	bl	__ZN4MMgc6GCHeap20SignalObjectTooLargeEv
LBB120_10:
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI120_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end110:

	.globl	__ZN4MMgc2GC10allocaInitEv
	.align	2
__ZN4MMgc2GC10allocaInitEv:
Leh_func_begin111:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r1, #0
	mov	r4, r0
	str	r1, [r4, #+2036]
	str	r1, [r4, #+2040]
	mov	r1, #250, 30
	bl	__ZN4MMgc2GC11AllocRCRootEm
	mov	r5, r0
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	bne	LBB121_4
	ldr	r0, LCPI121_0
	ldr	r6, [r0]
	mov	r8, #1
LBB121_2:
	sub	r8, r8, #1
	ldr	r0, [r6]
	cmp	r8, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB121_5
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	beq	LBB121_2
LBB121_4:
	add	r1, r5, #250, 30
	str	r5, [r0]
	str	r1, [r0, #+4]
	mov	r1, #0
	str	r1, [r0, #+8]
	ldr	r1, [r4, #+2036]
	str	r1, [r0, #+12]
	cmp	r1, #0
	ldrne	r2, [r4, #+2040]
	strne	r2, [r1, #+8]
	str	r0, [r4, #+2036]
	str	r5, [r4, #+2040]
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB121_5:
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI121_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end111:

	.globl	__ZN4MMgc2GC12allocaUnwindEv
	.align	2
__ZN4MMgc2GC12allocaUnwindEv:
Leh_func_begin112:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r4, r0
	bl	__ZN4MMgc2GC14allocaShutdownEv
	mov	r0, #0
	str	r0, [r4, #+2036]
	str	r0, [r4, #+2040]
	mov	r1, #250, 30
	mov	r0, r4
	bl	__ZN4MMgc2GC11AllocRCRootEm
	mov	r5, r0
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	bne	LBB122_4
	ldr	r0, LCPI122_0
	ldr	r6, [r0]
	mov	r8, #1
LBB122_2:
	sub	r8, r8, #1
	ldr	r0, [r6]
	cmp	r8, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB122_5
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	beq	LBB122_2
LBB122_4:
	add	r1, r5, #250, 30
	str	r5, [r0]
	str	r1, [r0, #+4]
	mov	r1, #0
	str	r1, [r0, #+8]
	ldr	r1, [r4, #+2036]
	str	r1, [r0, #+12]
	cmp	r1, #0
	ldrne	r2, [r4, #+2040]
	strne	r2, [r1, #+8]
	str	r0, [r4, #+2036]
	str	r5, [r4, #+2040]
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB122_5:
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI122_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end112:

	.globl	__ZN4MMgc2GC7CollectEd
	.align	2
__ZN4MMgc2GC7CollectEd:
Leh_func_begin113:
	stmfd	sp!, {r7, lr}
	vmov	d0, r1, r2
	vldr.64	d1, LCPI123_0
	vcmpe.f64	d0, d1
	fmstat
	mov	r7, sp
	vmovmi.f64	d0, d1
	vldr.64	d1, LCPI123_1
	vcmpe.f64	d0, d1
	fmstat
	vmovgt.f64	d0, d1
	vldr.32	s4, [r0, #+420]
	vldr.64	d4, [r0, #+408]
	vldr.64	d3, [r0, #+400]
	vcvt.f64.s32	d2, s4
	vadd.f64	d2, d4, d2
	vdiv.f64	d2, d2, d3
	vcmpe.f64	d2, #0
	fmstat
	vldr.64	d3, LCPI123_2
	vmovmi.f64	d2, d3
	vcmpe.f64	d2, d1
	fmstat
	vmovgt.f64	d2, d1
	vsub.f64	d1, d1, d2
	vcmpe.f64	d1, d0
	fmstat
	movhi	r1, #1
	movhi	r2, #0
	blhi	__ZN4MMgc2GC7CollectEbb
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI123_0:
 	.long	0
	.long	1070596096

	.align	2
	LCPI123_1:
 	.long	0
	.long	1072693248

	.align	2
	LCPI123_2:
 	.long	0
	.long	0

Leh_func_end113:

	.globl	__ZN4MMgc2GCD0Ev
	.align	2
__ZN4MMgc2GCD0Ev:
Leh_func_begin114:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #32
	bic	sp, sp, #7
	ldr	r1, LCPI124_0
	mov	r4, r0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r4]
	bl	__ZN4MMgc2GC14allocaShutdownEv
	ldr	r5, [r4, #+688]
	cmp	r5, #0
	ldrne	r0, [r5, #+12]
	cmpne	r0, #0
	beq	LBB124_2
	ldr	r2, [r5, #+16]
	mov	r1, #0
	mov	r6, #0
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	str	r6, [r5, #+12]
	str	r6, [r5, #+16]
LBB124_2:
	ldr	r5, [r4, #+1916]
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #98, 30
	mov	r1, r4
	add	r0, r0, #2, 22
	bl	__ZN4MMgc9BasicListIPNS_2GCELi4EE6RemoveES2_
	ldr	r0, [r5, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB124_4
	ldr	r1, [r0, #+120]
	cmp	r1, r4
	moveq	r1, #0
	streq	r1, [r0, #+120]
LBB124_4:
	mov	r0, r6
	bl	_OSSpinLockUnlock
	ldr	r5, [r4, #+1916]
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #154, 28
	mov	r1, r4
	bl	__ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE6RemoveES2_
	mov	r0, r6
	bl	_OSSpinLockUnlock
	ldr	r1, LCPI124_1
	mov	r0, #1
	strb	r0, [r4, #+668]
	cmp	r4, #0
	ldr	r1, [r1]
	mov	r0, #0
	str	r0, [sp, #+12]
	str	r0, [sp, #+16]
	add	r1, r1, #8
	str	r1, [sp, #+8]
	str	r0, [sp, #+20]
	str	r0, [sp, #+24]
	beq	LBB124_7
	ldr	r0, [r4, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	ldr	r5, [r0, #+120]
	cmp	r5, r4
	beq	LBB124_7
	add	r1, sp, #8
	mov	r2, #1
	mov	r3, #0
	mov	r0, r4
	bl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	cmp	r0, #0
	strne	r4, [sp, #+20]
	strne	r5, [sp, #+24]
LBB124_7:
	mov	r0, r4
	bl	__ZN4MMgc2GC20ForceSweepAtShutdownEv
	ldr	r0, LCPI124_2
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+20]
	cmp	r0, #0
	beq	LBB124_9
	ldr	r2, [sp, #+24]
	mov	r1, #1
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	mov	r0, #0
	str	r0, [sp, #+24]
	str	r0, [sp, #+20]
LBB124_9:
	add	r0, r4, #69, 28
	str	r0, [sp, #+4]
	add	r5, r4, #89, 28
	add	r6, r4, #99, 28
	add	r8, r4, #109, 28
	mov	r10, #0
	add	r0, r4, #79, 28
	str	r0, [sp]
LBB124_10:
	ldr	r0, [sp, #+4]
	rsb	r11, r10, #0
	ldr	r0, [r0, -r10, lsl #2]
	cmp	r0, #0
	beq	LBB124_12
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB124_12:
	ldr	r0, [sp]
	ldr	r0, [r0, +r11, lsl #2]
	cmp	r0, #0
	beq	LBB124_14
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB124_14:
	ldr	r0, [r5, +r11, lsl #2]
	cmp	r0, #0
	beq	LBB124_16
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB124_16:
	ldr	r0, [r6, +r11, lsl #2]
	cmp	r0, #0
	beq	LBB124_18
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB124_18:
	ldr	r0, [r8, +r11, lsl #2]
	cmp	r0, #0
	beq	LBB124_20
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB124_20:
	sub	r10, r10, #1
	cmn	r10, #40
	bne	LBB124_10
	ldr	r0, [r4, #+1904]
	cmp	r0, #0
	beq	LBB124_23
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB124_23:
	ldr	r0, [r4, #+1908]
	cmp	r0, #0
	beq	LBB124_25
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB124_25:
	ldr	r0, [r4, #+1912]
	cmp	r0, #0
	beq	LBB124_27
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB124_27:
	mov	r1, #0
	mov	r0, #122
LBB124_28:
	ldr	r2, [r4, +r0, lsl #2]
	b	LBB124_30
LBB124_29:
	mov	r9, #255
	orr	r9, r9, #15, 24
	ldr	r3, [r2]
	tst	r2, r9
	streq	r1, [r2]
	moveq	r1, r2
	mov	r2, r3
LBB124_30:
	cmp	r2, #0
	bne	LBB124_29
	add	r0, r0, #1
	cmp	r0, #162
	bne	LBB124_28
	cmp	r1, #0
	beq	LBB124_36
	mov	r2, #0
	mov	r3, #1
	mov	r0, r4
	ldr	r5, [r1]
	bl	__ZN4MMgc2GC8heapFreeEPvmb
	cmp	r5, #0
	beq	LBB124_36
	mov	r1, r5
LBB124_35:
	mov	r0, r4
	mov	r2, #0
	mov	r3, #1
	ldr	r5, [r1]
	bl	__ZN4MMgc2GC8heapFreeEPvmb
	cmp	r5, #0
	mov	r1, r5
	bne	LBB124_35
LBB124_36:
	ldr	r5, [r4, #+1916]
	mov	r6, #212
	mov	r8, #0
LBB124_37:
	ldr	r1, [r4, +r6, lsl #2]
	cmp	r1, #0
	beq	LBB124_39
	mov	r0, r5
	mov	r2, #1
	mov	r3, #1
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	str	r8, [r4, +r6, lsl #2]
LBB124_39:
	add	r6, r6, #1
	cmp	r6, #69, 30
	bne	LBB124_37
	ldr	r5, [r4, #+1944]
	cmp	r5, #0
	beq	LBB124_47
	mov	r6, #0
LBB124_42:
	ldr	r1, [r5, #+24]
	cmp	r1, #0
	beq	LBB124_44
	ldr	r0, [r5, #+4]
	mov	r2, r5
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB124_44:
	str	r6, [r5, #+24]
	str	r6, [r5, #+16]
	ldr	r0, [r5, #+20]
	and	r0, r0, #3
	str	r0, [r5, #+20]
	ldr	r8, [r5, #+4]
	cmp	r8, #0
	beq	LBB124_46
	add	r0, r8, #229, 30
	add	r10, r0, #1, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	ldr	r0, [r8, #+1944]
	cmp	r0, r5
	ldrdne	r0, [r5, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r5, #+8]
	streq	r0, [r8, #+1944]
	ldr	r0, [r5, #+8]
	cmp	r0, #0
	ldrne	r1, [r5, #+12]
	strne	r1, [r0, #+12]
	mov	r0, r10
	bl	_OSSpinLockUnlock
LBB124_46:
	str	r6, [r5, #+4]
	ldr	r5, [r4, #+1944]
	cmp	r5, #0
	bne	LBB124_42
LBB124_47:
	ldr	r0, [r4, #+1948]
	cmp	r0, #0
	beq	LBB124_52
	mov	r1, #0
LBB124_49:
	ldr	r2, [r0, #+4]
	cmp	r2, #0
	beq	LBB124_51
	ldr	r3, [r2, #+1948]
	cmp	r3, r0
	ldrdne	r2, [r0, #+8]
	strne	r2, [r3, #+8]
	ldreq	r3, [r0, #+8]
	streq	r3, [r2, #+1948]
	ldr	r2, [r0, #+8]
	cmp	r2, #0
	ldrne	r3, [r0, #+12]
	strne	r3, [r2, #+12]
LBB124_51:
	str	r1, [r0, #+4]
	ldr	r0, [r4, #+1948]
	cmp	r0, #0
	bne	LBB124_49
LBB124_52:
	ldr	r1, [r4, #+1960]
	ldr	r0, [r4, #+1956]
	cmp	r1, r0
	bls	LBB124_55
	mov	r2, #0
LBB124_54:
	sub	r0, r1, #4
	str	r0, [r4, #+1960]
	ldr	r0, [r4, #+2028]
	ldr	r1, [r1, #-4]
	str	r0, [r1]
	str	r1, [r4, #+2028]
	ldr	r0, [r4, #+1960]
	str	r2, [r0]
	ldr	r0, [r4, #+1956]
	ldr	r1, [r4, #+1960]
	cmp	r1, r0
	bhi	LBB124_54
LBB124_55:
	ldr	r1, [r4, #+2028]
	cmp	r1, #0
	beq	LBB124_63
	ldr	r0, LCPI124_3
	ldr	r5, [r0]
LBB124_57:
	ldr	r0, [r1]
	str	r0, [r4, #+2028]
	mov	r2, #1
	mov	r3, #0
	ldr	r0, [r5]
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	ldr	r1, [r4, #+2028]
	cmp	r1, #0
	bne	LBB124_57
	ldr	r1, [r4, #+1956]
LBB124_59:
	ldr	r0, LCPI124_4
	mov	r2, #1
	mov	r3, r2
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	mov	r0, #0
	str	r0, [r4, #+480]
	str	r0, [r4, #+1940]
	add	r0, r4, #182, 30
	bl	__ZN4MMgc11GCMarkStackD1Ev
	add	r0, r4, #174, 30
	bl	__ZN4MMgc11GCMarkStackD1Ev
	ldr	r0, [r4, #+652]
	cmp	r0, #0
	beq	LBB124_62
	ldr	r1, LCPI124_5
	ldr	r1, [r1]
	cmp	r0, r1
	cmpne	r0, #0
	beq	LBB124_62
	bl	_free
LBB124_62:
	mov	r0, #0
	str	r0, [r4, #+652]
	str	r0, [r4, #+656]
	mov	r0, r4
	bl	_free
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB124_63:
	mov	r1, r0
	b	LBB124_59
	.align	2
	LCPI124_0:
 	.long	L__ZTVN4MMgc2GCE$non_lazy_ptr

	.align	2
	LCPI124_1:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

	.align	2
	LCPI124_2:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

	.align	2
	LCPI124_3:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI124_4:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI124_5:
 	.long	L__ZN4MMgc15GCHashtableBaseIPKvNS_21GCHashtableKeyHandlerENS_27GCHashtableAllocHandler_newEE5EMPTYE$non_lazy_ptr

Leh_func_end114:

	.globl	__ZN4MMgc2GCD1Ev
	.align	2
__ZN4MMgc2GCD1Ev:
Leh_func_begin115:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	__ZN4MMgc2GCD2Ev
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end115:

	.globl	__ZN4MMgc2GCD2Ev
	.align	2
__ZN4MMgc2GCD2Ev:
Leh_func_begin116:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #32
	bic	sp, sp, #7
	ldr	r1, LCPI126_0
	mov	r4, r0
	ldr	r1, [r1]
	add	r1, r1, #8
	str	r1, [r4]
	bl	__ZN4MMgc2GC14allocaShutdownEv
	ldr	r5, [r4, #+688]
	cmp	r5, #0
	ldrne	r0, [r5, #+12]
	cmpne	r0, #0
	beq	LBB126_2
	ldr	r2, [r5, #+16]
	mov	r1, #0
	mov	r6, #0
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	str	r6, [r5, #+12]
	str	r6, [r5, #+16]
LBB126_2:
	ldr	r5, [r4, #+1916]
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #98, 30
	mov	r1, r4
	add	r0, r0, #2, 22
	bl	__ZN4MMgc9BasicListIPNS_2GCELi4EE6RemoveES2_
	ldr	r0, [r5, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB126_4
	ldr	r1, [r0, #+120]
	cmp	r1, r4
	moveq	r1, #0
	streq	r1, [r0, #+120]
LBB126_4:
	mov	r0, r6
	bl	_OSSpinLockUnlock
	ldr	r5, [r4, #+1916]
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #154, 28
	mov	r1, r4
	bl	__ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE6RemoveES2_
	mov	r0, r6
	bl	_OSSpinLockUnlock
	ldr	r1, LCPI126_1
	mov	r0, #1
	strb	r0, [r4, #+668]
	cmp	r4, #0
	ldr	r1, [r1]
	mov	r0, #0
	str	r0, [sp, #+12]
	str	r0, [sp, #+16]
	add	r1, r1, #8
	str	r1, [sp, #+8]
	str	r0, [sp, #+20]
	str	r0, [sp, #+24]
	beq	LBB126_7
	ldr	r0, [r4, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	ldr	r5, [r0, #+120]
	cmp	r5, r4
	beq	LBB126_7
	add	r1, sp, #8
	mov	r2, #1
	mov	r3, #0
	mov	r0, r4
	bl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	cmp	r0, #0
	strne	r4, [sp, #+20]
	strne	r5, [sp, #+24]
LBB126_7:
	mov	r0, r4
	bl	__ZN4MMgc2GC20ForceSweepAtShutdownEv
	ldr	r0, LCPI126_2
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+20]
	cmp	r0, #0
	beq	LBB126_9
	ldr	r2, [sp, #+24]
	mov	r1, #1
	bl	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	mov	r0, #0
	str	r0, [sp, #+24]
	str	r0, [sp, #+20]
LBB126_9:
	add	r0, r4, #69, 28
	str	r0, [sp, #+4]
	add	r5, r4, #89, 28
	add	r6, r4, #99, 28
	add	r8, r4, #109, 28
	mov	r10, #0
	add	r0, r4, #79, 28
	str	r0, [sp]
LBB126_10:
	ldr	r0, [sp, #+4]
	rsb	r11, r10, #0
	ldr	r0, [r0, -r10, lsl #2]
	cmp	r0, #0
	beq	LBB126_12
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB126_12:
	ldr	r0, [sp]
	ldr	r0, [r0, +r11, lsl #2]
	cmp	r0, #0
	beq	LBB126_14
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB126_14:
	ldr	r0, [r5, +r11, lsl #2]
	cmp	r0, #0
	beq	LBB126_16
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB126_16:
	ldr	r0, [r6, +r11, lsl #2]
	cmp	r0, #0
	beq	LBB126_18
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB126_18:
	ldr	r0, [r8, +r11, lsl #2]
	cmp	r0, #0
	beq	LBB126_20
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB126_20:
	sub	r10, r10, #1
	cmn	r10, #40
	bne	LBB126_10
	ldr	r0, [r4, #+1904]
	cmp	r0, #0
	beq	LBB126_23
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB126_23:
	ldr	r0, [r4, #+1908]
	cmp	r0, #0
	beq	LBB126_25
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB126_25:
	ldr	r0, [r4, #+1912]
	cmp	r0, #0
	beq	LBB126_27
	ldr	r1, [r0]
	ldr	r1, [r1, #+4]
	blx	r1
LBB126_27:
	mov	r1, #0
	mov	r0, #122
LBB126_28:
	ldr	r2, [r4, +r0, lsl #2]
	b	LBB126_30
LBB126_29:
	mov	r9, #255
	orr	r9, r9, #15, 24
	ldr	r3, [r2]
	tst	r2, r9
	streq	r1, [r2]
	moveq	r1, r2
	mov	r2, r3
LBB126_30:
	cmp	r2, #0
	bne	LBB126_29
	add	r0, r0, #1
	cmp	r0, #162
	bne	LBB126_28
	cmp	r1, #0
	beq	LBB126_36
	mov	r2, #0
	mov	r3, #1
	mov	r0, r4
	ldr	r5, [r1]
	bl	__ZN4MMgc2GC8heapFreeEPvmb
	cmp	r5, #0
	beq	LBB126_36
	mov	r1, r5
LBB126_35:
	mov	r0, r4
	mov	r2, #0
	mov	r3, #1
	ldr	r5, [r1]
	bl	__ZN4MMgc2GC8heapFreeEPvmb
	cmp	r5, #0
	mov	r1, r5
	bne	LBB126_35
LBB126_36:
	ldr	r5, [r4, #+1916]
	mov	r6, #212
	mov	r8, #0
LBB126_37:
	ldr	r1, [r4, +r6, lsl #2]
	cmp	r1, #0
	beq	LBB126_39
	mov	r0, r5
	mov	r2, #1
	mov	r3, #1
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	str	r8, [r4, +r6, lsl #2]
LBB126_39:
	add	r6, r6, #1
	cmp	r6, #69, 30
	bne	LBB126_37
	ldr	r5, [r4, #+1944]
	cmp	r5, #0
	beq	LBB126_47
	mov	r6, #0
LBB126_42:
	ldr	r1, [r5, #+24]
	cmp	r1, #0
	beq	LBB126_44
	ldr	r0, [r5, #+4]
	mov	r2, r5
	add	r0, r0, #174, 30
	bl	__ZN4MMgc11GCMarkStack31ClearRootProtectorAndChunkAboveEmPKv
LBB126_44:
	str	r6, [r5, #+24]
	str	r6, [r5, #+16]
	ldr	r0, [r5, #+20]
	and	r0, r0, #3
	str	r0, [r5, #+20]
	ldr	r8, [r5, #+4]
	cmp	r8, #0
	beq	LBB126_46
	add	r0, r8, #229, 30
	add	r10, r0, #1, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	ldr	r0, [r8, #+1944]
	cmp	r0, r5
	ldrdne	r0, [r5, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r5, #+8]
	streq	r0, [r8, #+1944]
	ldr	r0, [r5, #+8]
	cmp	r0, #0
	ldrne	r1, [r5, #+12]
	strne	r1, [r0, #+12]
	mov	r0, r10
	bl	_OSSpinLockUnlock
LBB126_46:
	str	r6, [r5, #+4]
	ldr	r5, [r4, #+1944]
	cmp	r5, #0
	bne	LBB126_42
LBB126_47:
	ldr	r0, [r4, #+1948]
	cmp	r0, #0
	beq	LBB126_52
	mov	r1, #0
LBB126_49:
	ldr	r2, [r0, #+4]
	cmp	r2, #0
	beq	LBB126_51
	ldr	r3, [r2, #+1948]
	cmp	r3, r0
	ldrdne	r2, [r0, #+8]
	strne	r2, [r3, #+8]
	ldreq	r3, [r0, #+8]
	streq	r3, [r2, #+1948]
	ldr	r2, [r0, #+8]
	cmp	r2, #0
	ldrne	r3, [r0, #+12]
	strne	r3, [r2, #+12]
LBB126_51:
	str	r1, [r0, #+4]
	ldr	r0, [r4, #+1948]
	cmp	r0, #0
	bne	LBB126_49
LBB126_52:
	ldr	r1, [r4, #+1960]
	ldr	r0, [r4, #+1956]
	cmp	r1, r0
	bls	LBB126_55
	mov	r2, #0
LBB126_54:
	sub	r0, r1, #4
	str	r0, [r4, #+1960]
	ldr	r0, [r4, #+2028]
	ldr	r1, [r1, #-4]
	str	r0, [r1]
	str	r1, [r4, #+2028]
	ldr	r0, [r4, #+1960]
	str	r2, [r0]
	ldr	r0, [r4, #+1956]
	ldr	r1, [r4, #+1960]
	cmp	r1, r0
	bhi	LBB126_54
LBB126_55:
	ldr	r1, [r4, #+2028]
	cmp	r1, #0
	beq	LBB126_63
	ldr	r0, LCPI126_3
	ldr	r5, [r0]
LBB126_57:
	ldr	r0, [r1]
	str	r0, [r4, #+2028]
	mov	r2, #1
	mov	r3, #0
	ldr	r0, [r5]
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	ldr	r1, [r4, #+2028]
	cmp	r1, #0
	bne	LBB126_57
	ldr	r1, [r4, #+1956]
LBB126_59:
	ldr	r0, LCPI126_4
	mov	r2, #1
	mov	r3, r2
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	mov	r0, #0
	str	r0, [r4, #+480]
	str	r0, [r4, #+1940]
	add	r0, r4, #182, 30
	bl	__ZN4MMgc11GCMarkStackD1Ev
	add	r0, r4, #174, 30
	bl	__ZN4MMgc11GCMarkStackD1Ev
	ldr	r0, [r4, #+652]
	cmp	r0, #0
	beq	LBB126_62
	ldr	r1, LCPI126_5
	ldr	r1, [r1]
	cmp	r0, r1
	cmpne	r0, #0
	beq	LBB126_62
	bl	_free
LBB126_62:
	mov	r0, #0
	str	r0, [r4, #+652]
	str	r0, [r4, #+656]
	str	r0, [r4, #+660]
	str	r0, [r4, #+664]
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB126_63:
	mov	r1, r0
	b	LBB126_59
	.align	2
	LCPI126_0:
 	.long	L__ZTVN4MMgc2GCE$non_lazy_ptr

	.align	2
	LCPI126_1:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

	.align	2
	LCPI126_2:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

	.align	2
	LCPI126_3:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI126_4:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI126_5:
 	.long	L__ZN4MMgc15GCHashtableBaseIPKvNS_21GCHashtableKeyHandlerENS_27GCHashtableAllocHandler_newEE5EMPTYE$non_lazy_ptr

Leh_func_end116:

	.globl	__ZN4MMgc2GCC2EPNS_6GCHeapERNS_8GCConfigE
	.align	2
__ZN4MMgc2GCC2EPNS_6GCHeapERNS_8GCConfigE:
Leh_func_begin117:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #88
	bic	sp, sp, #7
	ldr	r3, LCPI127_0
	mov	r9, #0
	mov	r6, r2
	ldr	r3, [r3]
	add	r3, r3, #8
	str	r3, [r0]
	ldr	r4, [r2, #+12]
	cmp	r4, #2
	moveq	r9, #1
	strb	r9, [r0, #+4]
	mov	r3, #0
	ldr	r9, [r2, #+12]
	cmp	r9, #1
	mov	r9, #0
	moveq	r9, #1
	strb	r9, [r0, #+5]
	ldr	r5, [r2, #+12]
	cmp	r5, #3
	moveq	r3, #1
	strb	r3, [r0, #+6]
	str	r1, [sp, #+60]
	str	r0, [sp, #+36]
	ldr	r3, [r2, #+12]
	cmp	r3, #1
	ldrbne	r0, [r6, #+9]
	cmpne	r0, #0
	beq	LBB127_2
	mov	r0, #1
	b	LBB127_3
LBB127_2:
	mov	r0, #0
LBB127_3:
	ldr	r8, [sp, #+36]
	strb	r0, [r8, #+7]
	mov	r10, #0
	strb	r10, [r8, #+8]
	strb	r10, [r8, #+9]
	mov	r2, #184
	mov	r1, #0
	ldrb	r0, [r6, #+11]
	strb	r0, [r8, #+10]
	str	r10, [r8, #+12]
	add	r0, r8, #16
	bl	_memset
	ldr	r11, [sp, #+60]
	str	r8, [r8, #+200]
	str	r11, [r8, #+204]
	add	r0, r8, #208
	mov	r2, #120
	mov	r1, #0
	bl	_memset
	ldr	r0, [r6]
	str	r0, [r8, #+328]
	strb	r10, [r8, #+332]
	strb	r10, [r8, #+333]
	ldr	r1, LCPI127_1
	str	r1, [r8, #+340]
	add	r2, r11, #79, 30
	vldr.64	d1, LCPI127_24
	vldr.64	d2, LCPI127_25
	cmp	r5, #3
	ldr	r1, LCPI127_2
	str	r1, [r8, #+336]
	add	r2, r2, #2, 22
	mov	r1, #153, 16
	orr	r1, r1, #65, 8
	str	r1, [r8, #+348]
	str	r10, [r8, #+344]
	add	r1, r11, #65, 30
	add	r1, r1, #2, 22
	str	r1, [r8, #+352]
	str	r2, [r8, #+356]
	add	r2, r11, #93, 30
	vldr.64	d0, [r1]
	vstr.64	d0, [r8, #+360]
	add	r1, r11, #95, 30
	vdiv.f64	d0, d1, d0
	vldr.64	d1, LCPI127_26
	add	r1, r1, #2, 22
	vadd.f64	d0, d0, d1
	vstr.64	d0, [r8, #+368]
	vldr.64	d1, [r1]
	vstr.64	d1, [r8, #+376]
	add	r1, r2, #2, 22
	vldr.64	d1, [r1]
	vstr.64	d1, [r8, #+384]
	str	r10, [r8, #+396]
	str	r10, [r8, #+392]
	str	r10, [r8, #+416]
	str	r10, [r8, #+420]
	str	r10, [r8, #+424]
	str	r10, [r8, #+428]
	str	r10, [r8, #+432]
	str	r10, [r8, #+436]
	vmov	s2, r0
	vcvt.f64.u32	d1, s2
	vmul.f64	d1, d1, d2
	vstr.64	d1, [r8, #+400]
	vstr.64	d1, [r8, #+408]
	bne	LBB127_8
	vmul.f64	d0, d1, d0
	mov	r1, r8
	ftosizd	s0, d0
	vmov	r0, s0
	cmp	r0, #0
	moveq	r0, #1
	str	r0, [r1, #+416]
	b	LBB127_9
	.align	2
	LCPI127_24:
 	.long	0
	.long	3220176896

	.align	2
	LCPI127_25:
 	.long	0
	.long	1085276160

	.align	2
	LCPI127_26:
 	.long	0
	.long	1072693248

LBB127_8:
	ftosizd	s0, d1
	vmov	r0, s0
LBB127_9:
	vmov	s0, r0
	ldr	r1, [sp, #+36]
	str	r0, [r1, #+420]
	cmp	r4, #2
	vcvt.f64.s32	d0, s0
	vsub.f64	d0, d1, d0
	vstr.64	d0, [r1, #+408]
	moveq	r0, #7, 2
	streq	r0, [r1, #+420]
	bl	_mach_absolute_time
	ldr	r4, [sp, #+36]
	str	r1, [r4, #+444]
	str	r0, [r4, #+440]
	mov	r5, #0
	str	r5, [r4, #+448]
	str	r5, [r4, #+452]
	str	r5, [r4, #+460]
	str	r5, [r4, #+456]
	str	r5, [r4, #+464]
	str	r5, [r4, #+476]
	str	r5, [r4, #+484]
	mov	r0, r4
	mov	r1, #16
	str	r5, [r0, #+652]!
	str	r1, [r4, #+656]
	mov	r1, #0
	str	r5, [r4, #+660]
	str	r5, [r4, #+664]
	bl	__ZN4MMgc15GCHashtableBaseIPKvNS_21GCHashtableKeyHandlerENS_27GCHashtableAllocHandler_newEE4growEb
	str	r5, [r4, #+676]
	strb	r5, [r4, #+672]
	str	r5, [r4, #+668]
	ldr	r0, LCPI127_6
	mov	r1, #1
	strb	r1, [r4, #+680]
	str	r5, [r4, #+684]
	str	r5, [r4, #+688]
	str	r5, [r4, #+692]
	str	r5, [r4, #+696]
	str	r5, [r4, #+700]
	str	r5, [r4, #+704]
	str	r5, [r4, #+708]
	str	r5, [r4, #+712]
	str	r5, [r4, #+716]
	str	r5, [r4, #+720]
	str	r5, [r4, #+724]
	mov	r2, #7
	mov	r3, r1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	cmp	r0, #0
	beq	LBB127_13
	mov	r1, #0
	str	r1, [r0]
	str	r1, [r0, #+4]
	mov	r1, r4
	str	r0, [r1, #+720]
	ldr	r1, [r1, #+708]
	cmp	r1, #0
	beq	LBB127_12
	ldr	r0, [sp, #+36]
	ldr	r2, [r0, #+716]
	add	r2, r2, #1
	str	r2, [r0, #+716]
	ldr	r2, [r0, #+696]
	ldr	r3, [r0, #+700]
	ldr	r9, [r0, #+712]
	sub	r2, r3, r2
	add	r2, r9, r2, asr #2
	str	r2, [r0, #+712]
	str	r3, [r1]
	ldr	r1, [r0, #+708]
	ldr	r0, [r0, #+720]
LBB127_12:
	mov	r2, #0
	ldr	r3, [sp, #+36]
	str	r2, [r3, #+720]
	str	r1, [r0, #+4]
	str	r0, [r3, #+708]
	add	r1, r0, #8
	str	r1, [r3, #+696]
	add	r0, r0, #1, 20
	str	r0, [r3, #+704]
	str	r1, [r3, #+700]
LBB127_13:
	mov	r0, #0
	ldr	r1, [sp, #+36]
	str	r0, [r1, #+728]
	str	r0, [r1, #+732]
	str	r0, [r1, #+736]
	str	r0, [r1, #+740]
	str	r0, [r1, #+744]
	str	r0, [r1, #+748]
	str	r0, [r1, #+752]
	str	r0, [r1, #+756]
	mov	r2, #7
	ldr	r0, LCPI127_7
	mov	r1, #1
	mov	r3, r1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	cmp	r0, #0
	beq	LBB127_17
	mov	r1, #0
	str	r1, [r0]
	str	r1, [r0, #+4]
	ldr	r1, [sp, #+36]
	str	r0, [r1, #+752]
	ldr	r1, [r1, #+740]
	cmp	r1, #0
	beq	LBB127_16
	ldr	r0, [sp, #+36]
	ldr	r2, [r0, #+748]
	add	r2, r2, #1
	str	r2, [r0, #+748]
	ldr	r2, [r0, #+728]
	ldr	r3, [r0, #+732]
	ldr	r9, [r0, #+744]
	sub	r2, r3, r2
	add	r2, r9, r2, asr #2
	str	r2, [r0, #+744]
	str	r3, [r1]
	ldr	r1, [r0, #+740]
	ldr	r0, [r0, #+752]
LBB127_16:
	mov	r2, #0
	ldr	r3, [sp, #+36]
	str	r2, [r3, #+752]
	str	r1, [r0, #+4]
	str	r0, [r3, #+740]
	add	r1, r0, #8
	str	r1, [r3, #+728]
	add	r0, r0, #1, 20
	str	r0, [r3, #+736]
	str	r1, [r3, #+732]
LBB127_17:
	mov	r2, #20
	mov	r0, #0
	ldr	r1, [sp, #+36]
	strb	r0, [r1, #+760]
	str	r2, [r1, #+764]
	ldr	r2, LCPI127_8
	ldr	r2, [r2]
	str	r2, [r1, #+768]
	mvn	r2, #0
	str	r2, [r1, #+840]
	str	r0, [r1, #+844]
	mov	r1, #212
LBB127_18:
	ldr	r2, [sp, #+36]
	str	r0, [r2, +r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, #69, 30
	bne	LBB127_18
	ldr	r0, [sp, #+60]
	mov	r4, r2
	str	r0, [r4, #+1916]
	mov	r1, #1
	strb	r1, [r4, #+1920]
	mov	r5, #0
	str	r5, [r4, #+1924]
	str	r5, [r4, #+1928]
	str	r5, [r4, #+1932]
	str	r5, [r4, #+1936]
	str	r5, [r4, #+1944]
	str	r5, [r4, #+1948]
	str	r5, [r4, #+1956]
	str	r5, [r4, #+1960]
	strb	r5, [r4, #+1964]
	str	r5, [r4, #+1968]
	str	r5, [r4, #+1972]
	str	r5, [r4, #+1976]
	str	r5, [r4, #+1980]
	str	r5, [r4, #+1984]
	strb	r5, [r4, #+1988]
	str	r5, [r4, #+1992]
	str	r5, [r4, #+1996]
	str	r5, [r4, #+2000]
	str	r5, [r4, #+2004]
	str	r5, [r4, #+2008]
	str	r5, [r4, #+2012]
	str	r5, [r4, #+2016]
	str	r5, [r4, #+2020]
	str	r5, [r4, #+2044]
	str	r5, [r4, #+2024]
	str	r5, [r4, #+2028]
	str	r5, [r4, #+2032]
	str	r4, [r4, #+1952]
	mov	r2, #7
	mov	r3, r1
	ldr	r0, LCPI127_9
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	str	r0, [r4, #+1956]
	mov	r4, r0
	mov	r1, #0
LBB127_20:
	str	r5, [r4, +r1]
	add	r1, r1, #4
	ldr	r0, [sp, #+36]
	cmp	r1, #1, 20
	ldr	r4, [r0, #+1956]
	bne	LBB127_20
	ldr	r0, LCPI127_10
	mov	r1, #1
	mov	r2, #7
	mov	r3, r1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	str	r0, [r4]
	ldr	r0, [sp, #+36]
	ldr	r1, [r0, #+1956]
	add	r2, r1, #4
	str	r2, [r0, #+1960]
	mov	r2, #0
	str	r2, [r0, #+1968]
	ldr	r3, [r1]
	str	r3, [r0, #+1972]
	ldr	r3, [r1]
	str	r3, [r0, #+1976]
	ldr	r1, [r1]
	add	r1, r1, #1, 20
	str	r1, [r0, #+1980]
	str	r2, [r0, #+1984]
	ldrb	r0, [r0, #+7]
	cmp	r0, #0
	ldreq	r0, [sp, #+36]
	streq	r3, [r0, #+1980]
	mov	r0, #0
	ldr	r1, [sp, #+36]
	str	r0, [r1, #+472]
	str	r0, [r1, #+468]
	str	r0, [r1, #+480]
	str	r0, [r1, #+1940]
	mov	r0, #30, 16
	str	r0, [r1, #+1932]
	mov	r0, #72
	bl	_malloc
	cmp	r0, #0
	bne	LBB127_25
	ldr	r4, LCPI127_11
	mov	r5, #1
	ldr	r4, [r4]
LBB127_23:
	sub	r5, r5, #1
	ldr	r0, [r4]
	cmp	r5, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB127_70
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, #72
	bl	_malloc
	cmp	r0, #0
	beq	LBB127_23
LBB127_25:
	mov	r4, r0
	ldr	r0, LCPI127_12
	ldr	r5, [r0]
	mov	r6, #1
	mov	r8, #72
	mov	r11, #0
	ldr	r0, [sp, #+36]
	add	r1, r0, #69, 28
	str	r1, [sp, #+56]
	add	r1, r0, #79, 28
	str	r1, [sp, #+52]
	add	r1, r0, #89, 28
	str	r1, [sp, #+48]
	add	r1, r0, #99, 28
	add	r0, r0, #109, 28
	str	r0, [sp, #+40]
	str	r1, [sp, #+44]
	ldr	r0, LCPI127_13
	ldr	r0, [r0]
	str	r0, [sp, #+32]
	ldr	r0, LCPI127_14
	ldr	r0, [r0]
	str	r0, [sp, #+28]
	ldr	r0, LCPI127_15
	ldr	r0, [r0]
	str	r0, [sp, #+24]
	ldr	r0, LCPI127_16
	ldr	r0, [r0]
	str	r0, [sp, #+20]
	ldr	r0, LCPI127_17
	ldr	r10, [r0]
LBB127_26:
	mov	r1, #0
	ldrsh	r2, [r5]
	str	r1, [sp]
	stmfa	sp, {r1, r11}
	str	r1, [sp, #+12]
	mov	r0, r4
	mov	r3, r6
	ldr	r1, [sp, #+36]
	bl	__ZN4MMgc7GCAllocC2EPNS_2GCEibbbih
	ldr	r0, [sp, #+56]
	str	r4, [r0, +r11, lsl #2]
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	bne	LBB127_30
	mov	r4, #1
LBB127_28:
	ldr	r0, [sp, #+32]
	sub	r4, r4, #1
	cmp	r4, #0
	ldr	r0, [r0]
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB127_70
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	beq	LBB127_28
LBB127_30:
	mov	r4, r0
	mov	r1, #0
	ldrsh	r2, [r5]
	stmea	sp, {r1, r6, r11}
	str	r1, [sp, #+12]
	mov	r0, r4
	mov	r3, r6
	ldr	r1, [sp, #+36]
	bl	__ZN4MMgc7GCAllocC2EPNS_2GCEibbbih
	ldr	r0, [sp, #+52]
	str	r4, [r0, +r11, lsl #2]
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	bne	LBB127_34
	mov	r4, #1
LBB127_32:
	ldr	r0, [sp, #+28]
	sub	r4, r4, #1
	cmp	r4, #0
	ldr	r0, [r0]
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB127_70
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	beq	LBB127_32
LBB127_34:
	mov	r4, r0
	mov	r1, #0
	ldrsh	r2, [r5]
	str	r6, [sp]
	stmfa	sp, {r6, r11}
	str	r1, [sp, #+12]
	mov	r0, r4
	mov	r3, r6
	ldr	r1, [sp, #+36]
	bl	__ZN4MMgc7GCAllocC2EPNS_2GCEibbbih
	ldr	r0, [sp, #+48]
	str	r4, [r0, +r11, lsl #2]
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	bne	LBB127_38
	mov	r4, #1
LBB127_36:
	ldr	r0, [sp, #+24]
	sub	r4, r4, #1
	cmp	r4, #0
	ldr	r0, [r0]
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB127_70
	mov	r1, r6
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	beq	LBB127_36
LBB127_38:
	mov	r4, r0
	mov	r1, #0
	ldrsh	r2, [r5]
	str	r1, [sp]
	stmfa	sp, {r1, r11}
	str	r1, [sp, #+12]
	mov	r0, r4
	mov	r3, #0
	ldr	r1, [sp, #+36]
	bl	__ZN4MMgc7GCAllocC2EPNS_2GCEibbbih
	ldr	r0, [sp, #+44]
	str	r4, [r0, +r11, lsl #2]
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	bne	LBB127_42
	mov	r4, #1
LBB127_40:
	ldr	r0, [sp, #+20]
	sub	r4, r4, #1
	cmp	r4, #0
	ldr	r0, [r0]
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB127_70
	mov	r1, r6
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	beq	LBB127_40
LBB127_42:
	mov	r4, r0
	mov	r1, #0
	ldrsh	r2, [r5]
	stmea	sp, {r1, r6, r11}
	str	r1, [sp, #+12]
	mov	r0, r4
	mov	r3, #0
	ldr	r1, [sp, #+36]
	bl	__ZN4MMgc7GCAllocC2EPNS_2GCEibbbih
	ldr	r0, [sp, #+40]
	str	r4, [r0, +r11, lsl #2]
	add	r11, r11, #1
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	bne	LBB127_46
	mov	r4, #1
LBB127_44:
	sub	r4, r4, #1
	ldr	r0, [r10]
	cmp	r4, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB127_70
	mov	r1, r6
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, r8
	bl	_malloc
	cmp	r0, #0
	beq	LBB127_44
LBB127_46:
	mov	r4, r0
	add	r5, r5, #2
	cmp	r11, #40
	bne	LBB127_26
	mov	r0, #1
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #+4]
	str	r3, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r5, [sp, #+36]
	mov	r2, #8
	mov	r1, r5
	mov	r0, r4
	bl	__ZN4MMgc7GCAllocC2EPNS_2GCEibbbih
	str	r4, [r5, #+1904]
	mov	r0, #72
	bl	_malloc
	cmp	r0, #0
	bne	LBB127_51
	ldr	r4, LCPI127_18
	mov	r5, #1
	ldr	r4, [r4]
LBB127_49:
	sub	r5, r5, #1
	ldr	r0, [r4]
	cmp	r5, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB127_70
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, #72
	bl	_malloc
	cmp	r0, #0
	beq	LBB127_49
LBB127_51:
	mov	r4, r0
	mov	r0, #2
	mov	r2, #1
	ldr	r5, [sp, #+36]
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #+4]
	str	r2, [sp, #+8]
	str	r0, [sp, #+12]
	mov	r1, r5
	mov	r2, #16
	mov	r0, r4
	bl	__ZN4MMgc7GCAllocC2EPNS_2GCEibbbih
	str	r4, [r5, #+1908]
	mov	r0, #20
	bl	_malloc
	cmp	r0, #0
	bne	LBB127_55
	ldr	r0, LCPI127_19
	ldr	r4, [r0]
	mov	r5, #1
LBB127_53:
	sub	r5, r5, #1
	ldr	r0, [r4]
	cmp	r5, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB127_70
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, #20
	bl	_malloc
	cmp	r0, #0
	beq	LBB127_53
LBB127_55:
	ldr	r1, LCPI127_20
	ldr	r4, [sp, #+36]
	ldr	r1, [r1]
	add	r2, r1, #8
	mov	r1, #0
	str	r1, [r0, #+12]
	str	r4, [r0, #+16]
	str	r2, [r0]
	str	r1, [r0, #+4]
	strb	r1, [r0, #+8]
	str	r0, [r4, #+1912]
	add	r0, r4, #69, 28
	add	r2, r4, #89, 28
	str	r2, [r4, #+804]
	str	r2, [r4, #+820]
	str	r2, [r4, #+812]
	str	r2, [r4, #+828]
	str	r0, [r4, #+780]
	add	r0, r4, #79, 28
	str	r0, [r4, #+796]
	mov	r2, #160
	add	r0, r4, #109, 28
	str	r0, [r4, #+788]
	add	r0, r4, #99, 28
	str	r0, [r4, #+772]
	add	r0, r4, #122, 30
	bl	_memset
	mov	r1, #1
	ldr	r0, [r4, #+1916]
	mov	r2, #7
	mov	r3, r1
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	cmp	r0, #0
	beq	LBB127_57
	mov	r1, r4
	ldr	r2, [r1, #+232]
	add	r2, r2, #1
	str	r2, [r1, #+232]
	ldr	r1, [r1, #+236]
	cmp	r2, r1
	ldrhi	r1, [sp, #+36]
	strhi	r2, [r1, #+236]
LBB127_57:
	mov	r1, #0
	ldr	r2, [sp, #+36]
	str	r0, [r2, #+648]
	str	r1, [r2, #+832]
	str	r1, [r2, #+836]
	str	r1, [r2, #+2036]
	str	r1, [r2, #+2040]
	mov	r0, r2
	mov	r1, #250, 30
	bl	__ZN4MMgc2GC11AllocRCRootEm
	mov	r4, r0
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	bne	LBB127_61
	ldr	r0, LCPI127_21
	ldr	r5, [r0]
	mov	r6, #1
LBB127_59:
	sub	r6, r6, #1
	ldr	r0, [r5]
	cmp	r6, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB127_70
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, #16
	bl	_malloc
	cmp	r0, #0
	beq	LBB127_59
LBB127_61:
	add	r1, r4, #250, 30
	str	r4, [r0]
	str	r1, [r0, #+4]
	mov	r1, #0
	str	r1, [r0, #+8]
	ldr	r1, [sp, #+36]
	ldr	r1, [r1, #+2036]
	str	r1, [r0, #+12]
	cmp	r1, #0
	ldrne	r2, [sp, #+36]
	ldrne	r2, [r2, #+2040]
	strne	r2, [r1, #+8]
	ldr	r2, LCPI127_22
	ldr	r1, [sp, #+36]
	str	r0, [r1, #+2036]
	str	r4, [r1, #+2040]
	mov	r0, #0
	str	r0, [sp, #+68]
	str	r0, [sp, #+72]
	cmp	r1, #0
	ldr	r2, [r2]
	add	r2, r2, #8
	str	r2, [sp, #+64]
	str	r0, [sp, #+76]
	str	r0, [sp, #+80]
	beq	LBB127_64
	mov	r4, r1
	ldr	r0, [r4, #+1916]
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	ldr	r5, [r0, #+120]
	cmp	r5, r4
	beq	LBB127_64
	add	r1, sp, #64
	mov	r2, #1
	mov	r3, #0
	mov	r0, r4
	bl	__ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
	cmp	r0, #0
	movne	r0, r4
	strne	r0, [sp, #+76]
	strne	r5, [sp, #+80]
LBB127_64:
	ldr	r0, [sp, #+36]
	ldr	r0, [r0, #+836]
	cmp	r0, #0
	beq	LBB127_67
	ldr	r0, [r0, #+32]
	cmp	r0, #0
	ldrne	r1, [r0, #+128]
	cmpne	r1, #0
	beq	LBB127_67
	bl	__ZN7avmplus7Sampler6sampleEv
LBB127_67:
	ldr	r4, [sp, #+36]
	ldr	r0, [r4, #+768]
	ldr	r1, [r4, #+772]
	mov	r5, #0
	ldrb	r0, [r0]
	ldr	r0, [r1, +r0, lsl #2]
	mov	r1, #0
	bl	__ZN4MMgc7GCAlloc5AllocEi
	str	r5, [r0]
	str	r0, [r4, #+464]
	str	r0, [r4, #+724]
	ldr	r5, [sp, #+60]
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #98, 30
	mov	r1, r4
	add	r0, r0, #2, 22
	bl	__ZN4MMgc9BasicListIPNS_2GCELi4EE3AddES2_
	mov	r4, r0
	mov	r0, r6
	bl	_OSSpinLockUnlock
	cmp	r4, #0
	beq	LBB127_71
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [sp, #+60]
	ldr	r1, [sp, #+36]
	add	r0, r0, #154, 28
	bl	__ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE3AddES2_
	mov	r4, r0
	mov	r0, r6
	bl	_OSSpinLockUnlock
	cmp	r4, #0
	beq	LBB127_72
	ldr	r0, LCPI127_23
	ldr	r0, [r0]
	add	r0, r0, #8
	str	r0, [sp, #+64]
	ldr	r0, [sp, #+76]
	cmp	r0, #0
	ldrne	r2, [sp, #+80]
	movne	r1, #1
	blne	__ZN4MMgc2GC11ThreadLeaveEbPS0_
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB127_70:
	bl	__ZN4MMgc6GCHeap5AbortEv
LBB127_71:
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap5AbortEv
LBB127_72:
	ldr	r0, [sp, #+60]
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI127_0:
 	.long	L__ZTVN4MMgc2GCE$non_lazy_ptr

	.align	2
	LCPI127_1:
 	.long	1064598241

	.align	2
	LCPI127_2:
 	.long	1202590843

	.align	2
	LCPI127_6:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_7:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_8:
 	.long	L__ZN4MMgc2GC15kSizeClassIndexE$non_lazy_ptr

	.align	2
	LCPI127_9:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_10:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_11:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_12:
 	.long	L__ZN4MMgc2GC12kSizeClassesE$non_lazy_ptr

	.align	2
	LCPI127_13:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_14:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_15:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_16:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_17:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_18:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_19:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_20:
 	.long	L__ZTVN4MMgc12GCLargeAllocE$non_lazy_ptr

	.align	2
	LCPI127_21:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI127_22:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

	.align	2
	LCPI127_23:
 	.long	L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr

Leh_func_end117:

	.globl	__ZN4MMgc2GCC1EPNS_6GCHeapERNS_8GCConfigE
	.align	2
__ZN4MMgc2GCC1EPNS_6GCHeapERNS_8GCConfigE:
Leh_func_begin118:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	__ZN4MMgc2GCC2EPNS_6GCHeapERNS_8GCConfigE
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end118:

	.globl	__ZN4MMgc7PageMap11PageMapBaseC2Ev
	.align	2
__ZN4MMgc7PageMap11PageMapBaseC2Ev:
	mvn	r2, #0
	mov	r3, #0
	strd	r2, [r0]
	bx	lr

	.globl	__ZN4MMgc7PageMap11PageMapBaseC1Ev
	.align	2
__ZN4MMgc7PageMap11PageMapBaseC1Ev:
	mvn	r2, #0
	mov	r3, #0
	strd	r2, [r0]
	bx	lr

	.globl	__ZN4MMgc7PageMap7Tiered2C2Ev
	.align	2
__ZN4MMgc7PageMap7Tiered2C2Ev:
	mvn	r2, #0
	mov	r3, #0
	strd	r2, [r0]
	mov	r1, #2
LBB131_1:
	str	r3, [r0, +r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, #66
	bne	LBB131_1
	bx	lr

	.globl	__ZN4MMgc7PageMap7Tiered2C1Ev
	.align	2
__ZN4MMgc7PageMap7Tiered2C1Ev:
	mvn	r2, #0
	mov	r3, #0
	strd	r2, [r0]
	mov	r1, #2
LBB132_1:
	str	r3, [r0, +r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, #66
	bne	LBB132_1
	bx	lr

	.globl	__ZN4MMgc7PageMap7Tiered210ClearAddrsEPvj
	.align	2
__ZN4MMgc7PageMap7Tiered210ClearAddrsEPvj:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	cmp	r2, #0
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	mov	r3, #6
	mov	r9, #255
	orr	r9, r9, #15, 24
	mov	r12, #3
LBB133_1:
	and	lr, r1, #63, 6
	add	lr, r0, lr, lsr #24
	ldr	lr, [lr, #+8]
	cmp	lr, #0
	andne	r4, r3, r1, lsr #11
	andne	r5, r9, r1, lsr #14
	ldrbne	r6, [lr, +r5]
	bicne	r4, r6, r12, lsl r4
	strbne	r4, [lr, +r5]
	add	r1, r1, #1, 20
	sub	r2, r2, #1
	cmp	r2, #0
	bne	LBB133_1
	ldmfd	sp!, {r4, r5, r6, r7, pc}

	.globl	__ZN4MMgc7PageMap7Tiered214EnsureCapacityEPNS_6GCHeapEPvj
	.align	2
__ZN4MMgc7PageMap7Tiered214EnsureCapacityEPNS_6GCHeapEPvj:
Leh_func_begin119:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	ldr	r9, [r0]
	mov	r4, r1
	cmp	r9, r2
	strhi	r2, [r0]
	add	r1, r2, r3, lsl #12
	ldr	r9, [r0, #+4]
	add	r1, r1, #1, 20
	cmp	r9, r1
	strlo	r1, [r0, #+4]
	sub	r1, r1, #1
	mov	r9, #1
	mov	r12, r2, lsr #26
	add	r1, r9, r1, lsr #26
	cmp	r12, r1
	bhs	LBB134_5
	add	r1, r2, r3, lsl #12
	mov	r5, #1
	add	r1, r1, #255
	add	r1, r1, #15, 24
	add	r1, r5, r1, lsr #26
	sub	r6, r1, r2, lsr #26
	and	r1, r2, #63, 6
	add	r0, r0, r1, lsr #24
	add	r8, r0, #8
LBB134_2:
	ldr	r0, [r8]
	cmp	r0, #0
	bne	LBB134_4
	mov	r0, r4
	mov	r1, #1
	mov	r2, #23
	mov	r3, #1
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	str	r0, [r8]
LBB134_4:
	add	r8, r8, #4
	sub	r6, r6, #1
	cmp	r6, #0
	bne	LBB134_2
LBB134_5:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end119:

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN4MMgc7PageMap18SimpleExpandSetAllINS0_7Tiered2EEEvPT_PNS_6GCHeapEPvjNS0_8PageTypeE
.weak_definition __ZN4MMgc7PageMap18SimpleExpandSetAllINS0_7Tiered2EEEvPT_PNS_6GCHeapEPvjNS0_8PageTypeE
	.align	2
__ZN4MMgc7PageMap18SimpleExpandSetAllINS0_7Tiered2EEEvPT_PNS_6GCHeapEPvjNS0_8PageTypeE:
Leh_func_begin120:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	ldr	r9, [r0]
	mov	r4, r3
	mov	r5, r2
	mov	r6, r1
	mov	r8, r0
	cmp	r9, r2
	strhi	r5, [r8]
	add	r0, r5, r4, lsl #12
	ldr	r1, [r8, #+4]
	add	r0, r0, #1, 20
	cmp	r1, r0
	strlo	r0, [r8, #+4]
	sub	r0, r0, #1
	mov	r1, #1
	mov	r2, r5, lsr #26
	add	r0, r1, r0, lsr #26
	cmp	r2, r0
	bhs	LBB135_5
	add	r0, r5, r4, lsl #12
	mov	r1, #1
	add	r0, r0, #255
	add	r0, r0, #15, 24
	add	r0, r1, r0, lsr #26
	sub	r10, r0, r5, lsr #26
	and	r0, r5, #63, 6
	add	r0, r8, r0, lsr #24
	add	r11, r0, #8
LBB135_2:
	ldr	r0, [r11]
	cmp	r0, #0
	bne	LBB135_4
	mov	r0, r6
	mov	r1, #1
	mov	r2, #23
	mov	r3, #1
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	str	r0, [r11]
LBB135_4:
	add	r11, r11, #4
	sub	r10, r10, #1
	cmp	r10, #0
	bne	LBB135_2
LBB135_5:
	cmp	r4, #0
	beq	LBB135_8
	mov	r0, #255
	orr	r0, r0, #15, 24
	mov	r1, #6
LBB135_7:
	and	r3, r5, #63, 6
	and	r2, r0, r5, lsr #14
	and	r12, r1, r5, lsr #11
	sub	r4, r4, #1
	ldr	lr, [r7, #+8]
	add	r5, r5, #1, 20
	cmp	r4, #0
	add	r3, r8, r3, lsr #24
	ldr	r3, [r3, #+8]
	ldrb	r9, [r3, +r2]
	orr	r9, r9, lr, lsl r12
	strb	r9, [r3, +r2]
	bne	LBB135_7
LBB135_8:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end120:

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc7PageMap7Tiered212ExpandSetAllEPNS_6GCHeapEPvjNS0_8PageTypeE
	.align	2
__ZN4MMgc7PageMap7Tiered212ExpandSetAllEPNS_6GCHeapEPvjNS0_8PageTypeE:
Leh_func_begin121:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	sub	sp, sp, #4
	ldr	r9, [r7, #+8]
	str	r9, [sp]
	bl	__ZN4MMgc7PageMap18SimpleExpandSetAllINS0_7Tiered2EEEvPT_PNS_6GCHeapEPvjNS0_8PageTypeE
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end121:

	.globl	__ZN4MMgc7PageMap7Tiered217DestroyPageMapViaEPNS_6GCHeapE
	.align	2
__ZN4MMgc7PageMap7Tiered217DestroyPageMapViaEPNS_6GCHeapE:
Leh_func_begin122:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r4, #2
	mov	r5, r1
	mov	r6, r0
	mov	r8, #0
LBB137_1:
	ldr	r1, [r6, +r4, lsl #2]
	cmp	r1, #0
	beq	LBB137_3
	mov	r0, r5
	mov	r2, #1
	mov	r3, #1
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	str	r8, [r6, +r4, lsl #2]
LBB137_3:
	add	r4, r4, #1
	cmp	r4, #66
	subeq	sp, r7, #16
	ldreq	r8, [sp], #+4
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	b	LBB137_1
Leh_func_end122:

	.globl	__ZN4MMgc8GCConfigC2Ev
	.align	2
__ZN4MMgc8GCConfigC2Ev:
	mov	r1, #1, 24
	str	r1, [r0]
	mov	r2, #1
	mov	r1, #0
	str	r1, [r0, #+4]
	strb	r2, [r0, #+8]
	strb	r2, [r0, #+9]
	strb	r1, [r0, #+10]
	strb	r1, [r0, #+11]
	mov	r1, #3
	str	r1, [r0, #+12]
	bx	lr

	.globl	__ZN4MMgc8GCConfigC1Ev
	.align	2
__ZN4MMgc8GCConfigC1Ev:
	mov	r1, #1, 24
	str	r1, [r0]
	mov	r2, #1
	mov	r1, #0
	str	r1, [r0, #+4]
	strb	r2, [r0, #+8]
	strb	r2, [r0, #+9]
	strb	r1, [r0, #+10]
	strb	r1, [r0, #+11]
	mov	r1, #3
	str	r1, [r0, #+12]
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager8shutdownEv
	.align	2
__ZN4MMgc15GCPolicyManager8shutdownEv:
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager1WEv
	.align	2
__ZN4MMgc15GCPolicyManager1WEv:
	vldr.64	d1, [r0, #+352]
	vldr.64	d3, LCPI141_1
	vldr.64	d0, [r0, #+344]
	vldr.64	d2, LCPI141_0
	vsub.f64	d1, d3, d1
	vadd.f64	d2, d0, d2
	vmul.f64	d1, d1, d2
	vdiv.f64	d0, d0, d1
	vmov	r0, r1, d0
	bx	lr
	.align	2
	LCPI141_0:
 	.long	0
	.long	3220176896

	.align	2
	LCPI141_1:
 	.long	0
	.long	1072693248


	.globl	__ZN4MMgc15GCPolicyManager1AEv
	.align	2
__ZN4MMgc15GCPolicyManager1AEv:
	vldr.64	d1, [r0, #+352]
	vldr.64	d3, LCPI142_1
	vldr.64	d2, LCPI142_0
	vldr.64	d0, [r0, #+344]
	vsub.f64	d1, d3, d1
	vadd.f64	d2, d0, d2
	vmul.f64	d1, d1, d2
	vdiv.f64	d0, d0, d1
	vldr.64	d2, [r0, #+320]
	vldr.64	d1, [r0, #+328]
	vmul.f64	d1, d2, d1
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bx	lr
	.align	2
	LCPI142_0:
 	.long	0
	.long	3220176896

	.align	2
	LCPI142_1:
 	.long	0
	.long	1072693248


	.globl	__ZN4MMgc15GCPolicyManager20queryLoadForHeapsizeEd
	.align	2
__ZN4MMgc15GCPolicyManager20queryLoadForHeapsizeEd:
	vmov	d0, r1, r2
	vldr.64	d1, LCPI143_0
	ldr	r1, [r0, #+340]
	vmul.f64	d0, d0, d1
	vldr.64	d1, [r1]
	vcmpe.f64	d0, d1
	fmstat
	bge	LBB143_2
	mov	r1, #0
	b	LBB143_4
LBB143_2:
	add	r2, r1, #8
	mov	r1, #0
LBB143_3:
	vldmia	r2!, {d1}
	vcmpe.f64	d0, d1
	add	r1, r1, #1
	fmstat
	bge	LBB143_3
LBB143_4:
	ldr	r0, [r0, #+336]
	add	r0, r0, r1, lsl #3
	vldr.64	d0, [r0]
	vmov	r0, r1, d0
	bx	lr
	.align	2
	LCPI143_0:
 	.long	0
	.long	1051721728


	.globl	__ZN4MMgc15GCPolicyManager7adjustLEd
	.align	2
__ZN4MMgc15GCPolicyManager7adjustLEd:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	vstmdb	sp!, {d8, d9}
	sub	sp, sp, #8
	vmov	d0, r1, r2
	vldr.64	d1, LCPI144_0
	ldr	r1, [r0, #+340]
	mov	r4, r0
	vmul.f64	d0, d0, d1
	vldr.64	d1, [r1]
	vcmpe.f64	d0, d1
	fmstat
	bge	LBB144_2
	mov	r5, #0
	b	LBB144_4
LBB144_2:
	add	r0, r1, #8
	mov	r5, #0
LBB144_3:
	vldmia	r0!, {d1}
	vcmpe.f64	d0, d1
	add	r5, r5, #1
	fmstat
	bge	LBB144_3
LBB144_4:
	ldr	r8, [r4, #+40]
	ldr	r11, [r4, #+44]
	mov	r0, r8
	mov	r1, r11
	bl	___floatundidf
	str	r0, [sp, #+4]
	str	r1, [sp]
	ldr	r6, [r4, #+48]
	ldr	r10, [r4, #+52]
	mov	r0, r6
	mov	r1, r10
	bl	___floatundidf
	vldr.64	d9, [r4, #+344]
	vmov	d0, r0, r1
	ldr	r0, [sp, #+4]
	vldr.64	d1, [r4, #+360]
	ldr	r1, [sp]
	vmov	d2, r0, r1
	ldr	r2, [r4, #+336]
	vmul.f64	d0, d1, d0
	add	r0, r2, r5, lsl #3
	vcmpe.f64	d0, d2
	vldr.64	d8, [r0]
	fmstat
	bpl	LBB144_7
	mov	r0, r8
	mov	r1, r11
	mov	r2, r6
	mov	r3, r10
	bl	___udivdi3
	adds	r0, r0, #1
	adc	r1, r1, #0
	bl	___floatundidf
	vldr.64	d1, LCPI144_1
	vmov	d0, r0, r1
	vadd.f64	d1, d9, d1
	vmul.f64	d0, d1, d0
	vldr.64	d1, LCPI144_2
	vcmpe.f64	d0, d1
	fmstat
	vmovgt.f64	d0, d1
	vadd.f64	d9, d9, d0
	vstr.64	d9, [r4, #+344]
	vldr.64	d0, [r4, #+368]
	vcmpe.f64	d0, #0
	fmstat
	beq	LBB144_8
	vmul.f64	d8, d0, d8
	vcmpe.f64	d9, d8
	fmstat
	vstrgt.64	d8, [r4, #+344]
	b	LBB144_8
LBB144_7:
	vadd.f64	d0, d9, d8
	vldr.64	d1, LCPI144_3
	vmul.f64	d0, d0, d1
	vstr.64	d0, [r4, #+344]
LBB144_8:
	sub	sp, r7, #40
	vldmia	sp!, {d8, d9}
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI144_0:
 	.long	0
	.long	1051721728

	.align	2
	LCPI144_1:
 	.long	0
	.long	3220176896

	.align	2
	LCPI144_2:
 	.long	0
	.long	1072693248

	.align	2
	LCPI144_3:
 	.long	0
	.long	1071644672


	.globl	__ZN4MMgc15GCPolicyManager21adjustPolicyInitiallyEv
	.align	2
__ZN4MMgc15GCPolicyManager21adjustPolicyInitiallyEv:
	vldr.32	s0, [r0, #+312]
	vldr.64	d1, LCPI145_0
	vcvt.f64.u32	d0, s0
	vmul.f64	d0, d0, d1
	vstr.64	d0, [r0, #+384]
	vstr.64	d0, [r0, #+392]
	ldr	r1, [r0, #+184]
	ldrb	r2, [r1, #+6]
	cmp	r2, #0
	beq	LBB145_2
	vldr.64	d1, [r0, #+352]
	vmul.f64	d1, d0, d1
	ftosizd	s2, d1
	vmov	r2, s2
	cmp	r2, #0
	moveq	r2, #1
	str	r2, [r0, #+400]
	str	r2, [r0, #+404]
	b	LBB145_3
LBB145_2:
	ftosizd	s2, d0
	vstr.32	s2, [r0, #+404]
	vmov	r2, s2
LBB145_3:
	vmov	s2, r2
	vcvt.f64.s32	d1, s2
	vsub.f64	d0, d0, d1
	vstr.64	d0, [r0, #+392]
	ldrb	r1, [r1, #+4]
	cmp	r1, #0
	bxeq	lr
	movne	r1, #7, 2
	strne	r1, [r0, #+404]
	bxne	lr
LBB145_4:
	.align	2
	LCPI145_0:
 	.long	0
	.long	1085276160


	.globl	__ZN4MMgc15GCPolicyManagerC2EPNS_2GCEPNS_6GCHeapERNS_8GCConfigE
	.align	2
__ZN4MMgc15GCPolicyManagerC2EPNS_2GCEPNS_6GCHeapERNS_8GCConfigE:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r5, r2
	mov	r8, r1
	mov	r2, #184
	mov	r1, #0
	mov	r4, r3
	mov	r6, r0
	mov	r10, #0
	bl	_memset
	str	r8, [r6, #+184]
	str	r5, [r6, #+188]
	add	r0, r6, #192
	mov	r2, #120
	mov	r1, #0
	bl	_memset
	ldr	r0, [r4]
	str	r0, [r6, #+312]
	strb	r10, [r6, #+316]
	strb	r10, [r6, #+317]
	ldr	r1, LCPI146_0
	str	r1, [r6, #+324]
	add	r2, r5, #79, 30
	vldr.64	d1, LCPI146_2
	vldr.64	d2, LCPI146_4
	ldr	r1, LCPI146_1
	str	r1, [r6, #+320]
	add	r2, r2, #2, 22
	mov	r1, #153, 16
	orr	r1, r1, #65, 8
	str	r1, [r6, #+332]
	str	r10, [r6, #+328]
	add	r1, r5, #65, 30
	add	r1, r1, #2, 22
	str	r1, [r6, #+336]
	str	r2, [r6, #+340]
	add	r2, r5, #93, 30
	vldr.64	d0, [r1]
	vstr.64	d0, [r6, #+344]
	add	r1, r5, #95, 30
	vdiv.f64	d0, d1, d0
	vldr.64	d1, LCPI146_3
	add	r1, r1, #2, 22
	vadd.f64	d0, d0, d1
	vstr.64	d0, [r6, #+352]
	vldr.64	d1, [r1]
	vstr.64	d1, [r6, #+360]
	add	r1, r2, #2, 22
	vldr.64	d1, [r1]
	vstr.64	d1, [r6, #+368]
	str	r10, [r6, #+380]
	str	r10, [r6, #+376]
	str	r10, [r6, #+400]
	str	r10, [r6, #+404]
	str	r10, [r6, #+408]
	str	r10, [r6, #+412]
	str	r10, [r6, #+416]
	str	r10, [r6, #+420]
	vmov	s2, r0
	vcvt.f64.u32	d1, s2
	vmul.f64	d1, d1, d2
	vstr.64	d1, [r6, #+384]
	vstr.64	d1, [r6, #+392]
	ldrb	r0, [r8, #+6]
	cmp	r0, #0
	beq	LBB146_2
	vmul.f64	d0, d1, d0
	ftosizd	s0, d0
	vmov	r0, s0
	cmp	r0, #0
	moveq	r0, #1
	str	r0, [r6, #+400]
	b	LBB146_3
LBB146_2:
	ftosizd	s0, d1
	vmov	r0, s0
LBB146_3:
	vmov	s0, r0
	str	r0, [r6, #+404]
	vcvt.f64.s32	d0, s0
	vsub.f64	d0, d1, d0
	vstr.64	d0, [r6, #+392]
	ldrb	r0, [r8, #+4]
	cmp	r0, #0
	movne	r0, #7, 2
	strne	r0, [r6, #+404]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI146_0:
 	.long	1064598241

	.align	2
	LCPI146_1:
 	.long	1202590843

	.align	2
	LCPI146_2:
 	.long	0
	.long	3220176896

	.align	2
	LCPI146_3:
 	.long	0
	.long	1072693248

	.align	2
	LCPI146_4:
 	.long	0
	.long	1085276160


	.globl	__ZN4MMgc15GCPolicyManagerC1EPNS_2GCEPNS_6GCHeapERNS_8GCConfigE
	.align	2
__ZN4MMgc15GCPolicyManagerC1EPNS_2GCEPNS_6GCHeapERNS_8GCConfigE:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r5, r2
	mov	r8, r1
	mov	r2, #184
	mov	r1, #0
	mov	r4, r3
	mov	r6, r0
	mov	r10, #0
	bl	_memset
	str	r8, [r6, #+184]
	str	r5, [r6, #+188]
	add	r0, r6, #192
	mov	r2, #120
	mov	r1, #0
	bl	_memset
	ldr	r0, [r4]
	str	r0, [r6, #+312]
	strb	r10, [r6, #+316]
	strb	r10, [r6, #+317]
	ldr	r1, LCPI147_0
	str	r1, [r6, #+324]
	add	r2, r5, #79, 30
	vldr.64	d1, LCPI147_2
	vldr.64	d2, LCPI147_4
	ldr	r1, LCPI147_1
	str	r1, [r6, #+320]
	add	r2, r2, #2, 22
	mov	r1, #153, 16
	orr	r1, r1, #65, 8
	str	r1, [r6, #+332]
	str	r10, [r6, #+328]
	add	r1, r5, #65, 30
	add	r1, r1, #2, 22
	str	r1, [r6, #+336]
	str	r2, [r6, #+340]
	add	r2, r5, #93, 30
	vldr.64	d0, [r1]
	vstr.64	d0, [r6, #+344]
	add	r1, r5, #95, 30
	vdiv.f64	d0, d1, d0
	vldr.64	d1, LCPI147_3
	add	r1, r1, #2, 22
	vadd.f64	d0, d0, d1
	vstr.64	d0, [r6, #+352]
	vldr.64	d1, [r1]
	vstr.64	d1, [r6, #+360]
	add	r1, r2, #2, 22
	vldr.64	d1, [r1]
	vstr.64	d1, [r6, #+368]
	str	r10, [r6, #+380]
	str	r10, [r6, #+376]
	str	r10, [r6, #+400]
	str	r10, [r6, #+404]
	str	r10, [r6, #+408]
	str	r10, [r6, #+412]
	str	r10, [r6, #+416]
	str	r10, [r6, #+420]
	vmov	s2, r0
	vcvt.f64.u32	d1, s2
	vmul.f64	d1, d1, d2
	vstr.64	d1, [r6, #+384]
	vstr.64	d1, [r6, #+392]
	ldrb	r0, [r8, #+6]
	cmp	r0, #0
	beq	LBB147_2
	vmul.f64	d0, d1, d0
	ftosizd	s0, d0
	vmov	r0, s0
	cmp	r0, #0
	moveq	r0, #1
	str	r0, [r6, #+400]
	b	LBB147_3
LBB147_2:
	ftosizd	s0, d1
	vmov	r0, s0
LBB147_3:
	vmov	s0, r0
	str	r0, [r6, #+404]
	vcvt.f64.s32	d0, s0
	vsub.f64	d0, d1, d0
	vstr.64	d0, [r6, #+392]
	ldrb	r0, [r8, #+4]
	cmp	r0, #0
	movne	r0, #7, 2
	strne	r0, [r6, #+404]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI147_0:
 	.long	1064598241

	.align	2
	LCPI147_1:
 	.long	1202590843

	.align	2
	LCPI147_2:
 	.long	0
	.long	3220176896

	.align	2
	LCPI147_3:
 	.long	0
	.long	1072693248

	.align	2
	LCPI147_4:
 	.long	0
	.long	1085276160


	.globl	__ZN4MMgc15GCPolicyManager29adjustPolicyForNextMinorCycleEv
	.align	2
__ZN4MMgc15GCPolicyManager29adjustPolicyForNextMinorCycleEv:
	ldr	r1, [r0, #+404]
	cmp	r1, #0
	rsblt	r1, r1, #0
	vmovlt	s2, r1
	vldrlt.64	d0, [r0, #+392]
	vcvtlt.f64.s32	d1, s2
	vsublt.f64	d0, d0, d1
	vstrlt.64	d0, [r0, #+392]
	movlt	r1, #0
	strlt	r1, [r0, #+404]
	vldr.64	d1, [r0, #+352]
	vldr.64	d3, LCPI148_1
	vldr.64	d2, LCPI148_0
	vldr.64	d0, [r0, #+344]
	vsub.f64	d1, d3, d1
	vadd.f64	d2, d0, d2
	vmul.f64	d1, d1, d2
	vdiv.f64	d0, d0, d1
	vldr.64	d2, [r0, #+320]
	vldr.64	d1, [r0, #+328]
	vmul.f64	d1, d2, d1
	vdiv.f64	d0, d1, d0
	vldr.64	d1, LCPI148_2
	vcmpe.f64	d0, d1
	fmstat
	ble	LBB148_2
	mvn	r1, #2, 2
	b	LBB148_3
LBB148_2:
	vldr.64	d1, LCPI148_1
	vcmpe.f64	d0, d1
	fmstat
	ftosizdpl	s0, d0
	vmovpl	r1, s0
	movmi	r1, #1
LBB148_3:
	vmov	s0, r1
	str	r1, [r0, #+400]
	str	r1, [r0, #+404]
	vcvt.f64.s32	d0, s0
	vldr.64	d1, [r0, #+392]
	vsub.f64	d0, d1, d0
	vstr.64	d0, [r0, #+392]
	ldr	r1, [r0, #+184]
	ldrb	r1, [r1, #+4]
	cmp	r1, #0
	bxeq	lr
	movne	r1, #7, 2
	strne	r1, [r0, #+404]
	bxne	lr
LBB148_4:
	.align	2
	LCPI148_0:
 	.long	0
	.long	3220176896

	.align	2
	LCPI148_1:
 	.long	0
	.long	1072693248

	.align	2
	LCPI148_2:
 	.long	4290772992
	.long	1105199103


	.globl	__ZN4MMgc15GCPolicyManager27incrementalMarkMillisecondsEv
	.align	2
__ZN4MMgc15GCPolicyManager27incrementalMarkMillisecondsEv:
	vldr.64	d0, [r0, #+320]
	vldr.64	d1, LCPI149_0
	ldr	r1, [r0, #+400]
	ldr	r0, [r0, #+404]
	vmul.f64	d0, d0, d1
	sub	r0, r1, r0
	vmov	s2, r0
	vcvt.f64.s32	d1, s2
	vmul.f64	d0, d0, d1
	vmov	s2, r1
	vcvt.f64.s32	d1, s2
	vdiv.f64	d0, d0, d1
	ftouizd	s0, d0
	vmov	r0, s0
	bx	lr
	.align	2
	LCPI149_0:
 	.long	0
	.long	1083129856


	.globl	__ZN4MMgc15GCPolicyManager25queryEndOfCollectionCycleEv
	.align	2
__ZN4MMgc15GCPolicyManager25queryEndOfCollectionCycleEv:
	vldr.64	d0, [r0, #+392]
	mov	r0, #0
	vcmpe.f64	d0, #0
	fmstat
	movls	r0, #1
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager32setLowerLimitCollectionThresholdEj
	.align	2
__ZN4MMgc15GCPolicyManager32setLowerLimitCollectionThresholdEj:
	str	r1, [r0, #+312]
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager15blocksOwnedByGCEv
	.align	2
__ZN4MMgc15GCPolicyManager15blocksOwnedByGCEv:
	ldr	r0, [r0, #+216]
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager11bytesMarkedEv
	.align	2
__ZN4MMgc15GCPolicyManager11bytesMarkedEv:
	stmfd	sp!, {r7, lr}
	add	lr, r0, #69, 30
	mov	r7, sp
	ldmia	lr, {r1, r2, r3, r9, r12, lr}
	adds	r1, r3, r1
	adc	r2, r9, r2
	ldr	r9, [r0, #+244]
	adds	r1, r1, r12
	ldr	r12, [r0, #+240]
	ldr	r0, [r0, #+248]
	add	r3, r9, r12
	adc	r2, r2, lr
	add	r0, r3, r0
	adds	r0, r1, r0
	adc	r1, r2, #0
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc15GCPolicyManager13objectsMarkedEv
	.align	2
__ZN4MMgc15GCPolicyManager13objectsMarkedEv:
	stmfd	sp!, {r7, lr}
	add	lr, r0, #252
	mov	r7, sp
	ldmia	lr, {r1, r2, r3, r9, r12, lr}
	adds	r1, r3, r1
	adc	r2, r9, r2
	ldr	r9, [r0, #+232]
	adds	r1, r1, r12
	ldr	r12, [r0, #+228]
	ldr	r0, [r0, #+236]
	add	r3, r9, r12
	adc	r2, r2, lr
	add	r0, r3, r0
	adds	r0, r1, r0
	adc	r1, r2, #0
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc15GCPolicyManager14queryZCTBudgetEj
	.align	2
__ZN4MMgc15GCPolicyManager14queryZCTBudgetEj:
	mov	r0, #1
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager21signalBlockAllocationEm
	.align	2
__ZN4MMgc15GCPolicyManager21signalBlockAllocationEm:
	ldr	r2, [r0, #+216]
	add	r1, r2, r1
	str	r1, [r0, #+216]
	ldr	r2, [r0, #+220]
	cmp	r1, r2
	bxls	lr
	strhi	r1, [r0, #+220]
	bxhi	lr
LBB156_1:

	.globl	__ZN4MMgc15GCPolicyManager23signalBlockDeallocationEm
	.align	2
__ZN4MMgc15GCPolicyManager23signalBlockDeallocationEm:
	ldr	r2, [r0, #+216]
	sub	r1, r2, r1
	str	r1, [r0, #+216]
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager25signalDependentAllocationEm
	.align	2
__ZN4MMgc15GCPolicyManager25signalDependentAllocationEm:
	ldr	r2, [r0, #+224]
	add	r1, r2, r1
	str	r1, [r0, #+224]
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager27signalDependentDeallocationEm
	.align	2
__ZN4MMgc15GCPolicyManager27signalDependentDeallocationEm:
	ldr	r2, [r0, #+224]
	sub	r1, r2, r1
	str	r1, [r0, #+224]
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager24signalMemoryStatusChangeENS_13_MemoryStatusES1_
	.align	2
__ZN4MMgc15GCPolicyManager24signalMemoryStatusChangeENS_13_MemoryStatusES1_:
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager21signalStartCollectionEPNS_2GCE
	.align	2
__ZN4MMgc15GCPolicyManager21signalStartCollectionEPNS_2GCE:
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager19signalEndCollectionEPNS_2GCE
	.align	2
__ZN4MMgc15GCPolicyManager19signalEndCollectionEPNS_2GCE:
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager19SignalImminentAbortEv
	.align	2
__ZN4MMgc15GCPolicyManager19SignalImminentAbortEv:
	mov	r1, #0
	str	r1, [r0, #+308]
	bx	lr

	.globl	__ZN4MMgc15GCPolicyManager20queryExactPercentageEv
	.align	2
__ZN4MMgc15GCPolicyManager20queryExactPercentageEv:
	stmfd	sp!, {r7, lr}
	ldr	r1, [r0, #+276]
	ldr	r3, [r0, #+240]
	ldr	r2, [r0, #+280]
	mov	r7, sp
	adds	r1, r3, r1
	adc	r9, r2, #0
	orr	r2, r1, r9
	cmp	r2, #0
	moveq	r0, #0
	moveq	sp, r7
	ldmfdeq	sp!, {r7, pc}
	ldr	r2, [r0, #+244]
	ldr	r12, [r0, #+284]
	ldr	r0, [r0, #+288]
	adds	r2, r2, r1
	adc	r3, r9, #0
	adds	r2, r2, r12
	adc	r3, r3, r0
	mov	r12, #100
	umull	r0, r1, r1, r12
	mla	r1, r9, r12, r1
	bl	___udivdi3
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc15GCPolicyManager33queryAllocationBudgetFractionUsedEv
	.align	2
__ZN4MMgc15GCPolicyManager33queryAllocationBudgetFractionUsedEv:
	vldr.32	s0, [r0, #+404]
	vldr.64	d2, [r0, #+392]
	vldr.64	d1, [r0, #+384]
	vcvt.f64.s32	d0, s0
	vadd.f64	d0, d2, d0
	vdiv.f64	d0, d0, d1
	vcmpe.f64	d0, #0
	vldr.64	d1, LCPI165_0
	fmstat
	vmovmi.f64	d0, d1
	vldr.64	d1, LCPI165_1
	vcmpe.f64	d0, d1
	fmstat
	vmovgt.f64	d0, d1
	vsub.f64	d0, d1, d0
	vmov	r0, r1, d0
	bx	lr
	.align	2
	LCPI165_0:
 	.long	0
	.long	0

	.align	2
	LCPI165_1:
 	.long	0
	.long	1072693248


	.globl	__ZN4MMgc15GCPolicyManager15startAdjustingREv
	.align	2
__ZN4MMgc15GCPolicyManager15startAdjustingREv:
Leh_func_begin123:
	stmfd	sp!, {r4, r7, lr}
	mov	r4, r0
	bl	_mach_absolute_time
	str	r0, [r4, #+408]
	add	r7, sp, #4
	str	r1, [r4, #+412]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
Leh_func_end123:

	.globl	__ZN4MMgc15GCPolicyManager29adjustPolicyForNextMajorCycleEb
	.align	2
__ZN4MMgc15GCPolicyManager29adjustPolicyForNextMajorCycleEb:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	vstmdb	sp!, {d8, d9, d10}
	sub	sp, sp, #16
	mov	r5, r0
	mov	r4, r1
	ldr	r0, [r5, #+184]
	add	r1, sp, #12
	add	r2, sp, #8
	bl	__ZN4MMgc2GC12GetUsageInfoERmS1_
	ldr	r0, [r5, #+224]
	ldr	r1, [sp, #+8]
	cmp	r4, #0
	add	r0, r0, r1
	vmov	s0, r0
	vcvt.f64.u32	d8, s0
	bne	LBB167_2
	vldr.64	d0, [r5, #+376]
	vcmpe.f64	d0, d8
	fmstat
	vmovgt.f64	d8, d0
LBB167_2:
	vldr.64	d0, LCPI167_0
	vstr.64	d8, [r5, #+376]
	ldr	r0, [r5, #+340]
	vmul.f64	d0, d8, d0
	vldr.64	d1, [r0]
	vcmpe.f64	d0, d1
	fmstat
	bge	LBB167_4
	mov	r4, #0
	b	LBB167_6
LBB167_4:
	add	r0, r0, #8
	mov	r4, #0
LBB167_5:
	vldmia	r0!, {d1}
	vcmpe.f64	d0, d1
	add	r4, r4, #1
	fmstat
	bge	LBB167_5
LBB167_6:
	ldr	r8, [r5, #+40]
	ldr	r11, [r5, #+44]
	mov	r0, r8
	mov	r1, r11
	bl	___floatundidf
	str	r0, [sp, #+4]
	str	r1, [sp]
	ldr	r6, [r5, #+48]
	ldr	r10, [r5, #+52]
	mov	r0, r6
	mov	r1, r10
	bl	___floatundidf
	vldr.64	d10, [r5, #+344]
	vmov	d0, r0, r1
	ldr	r0, [sp, #+4]
	vldr.64	d1, [r5, #+360]
	ldr	r1, [sp]
	vmov	d2, r0, r1
	ldr	r2, [r5, #+336]
	vmul.f64	d0, d1, d0
	add	r0, r2, r4, lsl #3
	vcmpe.f64	d0, d2
	vldr.64	d9, [r0]
	fmstat
	bpl	LBB167_9
	mov	r0, r8
	mov	r1, r11
	mov	r2, r6
	mov	r3, r10
	bl	___udivdi3
	adds	r0, r0, #1
	adc	r1, r1, #0
	bl	___floatundidf
	vldr.64	d1, LCPI167_1
	vmov	d0, r0, r1
	vadd.f64	d1, d10, d1
	vmul.f64	d0, d1, d0
	vldr.64	d1, LCPI167_2
	vcmpe.f64	d0, d1
	fmstat
	vmovgt.f64	d0, d1
	vadd.f64	d10, d10, d0
	vstr.64	d10, [r5, #+344]
	vldr.64	d0, [r5, #+368]
	vcmpe.f64	d0, #0
	fmstat
	beq	LBB167_10
	vmul.f64	d9, d0, d9
	vcmpe.f64	d10, d9
	fmstat
	vstrgt.64	d9, [r5, #+344]
	vmovgt.f64	d10, d9
	b	LBB167_10
LBB167_9:
	vadd.f64	d10, d10, d9
	vldr.64	d0, LCPI167_3
	vmul.f64	d10, d10, d0
	vstr.64	d10, [r5, #+344]
LBB167_10:
	vldr.64	d0, LCPI167_1
	vldr.32	s2, [r5, #+312]
	vldr.64	d2, LCPI167_4
	vadd.f64	d0, d10, d0
	vcvt.f64.u32	d1, s2
	vmul.f64	d1, d1, d2
	vmul.f64	d0, d0, d8
	vstr.64	d0, [r5, #+384]
	vsub.f64	d1, d1, d8
	vcmpe.f64	d0, d1
	fmstat
	vmovmi.f64	d0, d1
	vstr.64	d0, [r5, #+392]
	ldr	r0, [r5, #+184]
	ldrb	r1, [r0, #+6]
	cmp	r1, #0
	beq	LBB167_12
	vldr.64	d1, [r5, #+352]
	vmul.f64	d1, d0, d1
	ftosizd	s2, d1
	vmov	r1, s2
	cmp	r1, #0
	moveq	r1, #1
	str	r1, [r5, #+400]
	str	r1, [r5, #+404]
	b	LBB167_13
LBB167_12:
	ftosizd	s2, d0
	vstr.32	s2, [r5, #+404]
	vmov	r1, s2
LBB167_13:
	vmov	s2, r1
	vcvt.f64.s32	d1, s2
	vsub.f64	d0, d0, d1
	vstr.64	d0, [r5, #+392]
	ldrb	r0, [r0, #+4]
	cmp	r0, #0
	movne	r0, #7, 2
	strne	r0, [r5, #+404]
	sub	sp, r7, #48
	vldmia	sp!, {d8, d9, d10}
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI167_0:
 	.long	0
	.long	1051721728

	.align	2
	LCPI167_1:
 	.long	0
	.long	3220176896

	.align	2
	LCPI167_2:
 	.long	0
	.long	1072693248

	.align	2
	LCPI167_3:
 	.long	0
	.long	1071644672

	.align	2
	LCPI167_4:
 	.long	0
	.long	1085276160


	.globl	__ZN4MMgc15GCPolicyManager13endAdjustingREv
	.align	2
__ZN4MMgc15GCPolicyManager13endAdjustingREv:
Leh_func_begin124:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	vstmdb	sp!, {d8, d9}
	mov	r4, r0
	ldr	r5, [r4, #+416]
	ldr	r6, [r4, #+420]
	bl	_mach_absolute_time
	adds	r0, r0, r5
	adc	r1, r1, r6
	ldr	r2, [r4, #+408]
	ldr	r3, [r4, #+412]
	subs	r5, r0, r2
	sbc	r6, r1, r3
	str	r5, [r4, #+416]
	str	r6, [r4, #+420]
	ldr	r0, [r4, #+292]
	ldr	r1, [r4, #+296]
	bl	___floatundidf
	mov	r8, r0
	mov	r10, r1
	ldr	r0, [r4, #+284]
	ldr	r1, [r4, #+288]
	bl	___floatundidf
	vmov	d8, r0, r1
	ldr	r0, [r4, #+276]
	ldr	r1, [r4, #+280]
	bl	___floatundidf
	vmov	d0, r0, r1
	vmov	d1, r8, r10
	mov	r0, r5
	mov	r1, r6
	vadd.f64	d0, d0, d8
	vadd.f64	d8, d0, d1
	bl	___floatundidf
	vmov	d9, r0, r1
	ldr	r0, LCPI168_0
	ldr	r0, [r0]
	ldrd	r0, [r0]
	orr	r2, r0, r1
	cmp	r2, #0
	bne	LBB168_2
	ldr	r0, LCPI168_1
	ldr	r5, [r0]
	mov	r0, r5
	bl	_mach_timebase_info
	vldmia	r5, {s0, s1}
	vcvt.f64.u32	d1, s1
	vcvt.f64.u32	d0, s0
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI168_2
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	ldr	r2, LCPI168_3
	ldr	r2, [r2]
	strd	r0, [r2]
LBB168_2:
	bl	___floatundidf
	vmov	d0, r0, r1
	vldr.64	d1, LCPI168_4
	vdiv.f64	d0, d9, d0
	vdiv.f64	d0, d8, d0
	vcmpe.f64	d0, d1
	vstr.64	d0, [r4, #+328]
	fmstat
	movmi	r1, #0
	movmi	r0, #89, 14
	orrmi	r0, r0, #1, 2
	strmi	r1, [r4, #+328]
	strmi	r0, [r4, #+332]
	sub	sp, r7, #36
	vldmia	sp!, {d8, d9}
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI168_0:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI168_1:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI168_2:
 	.long	0
	.long	1104006501

	.align	2
	LCPI168_3:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI168_4:
 	.long	0
	.long	1097072640

Leh_func_end124:

	.globl	__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
	.align	2
__ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE:
Leh_func_begin125:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	vstmdb	sp!, {d8, d9}
	sub	r2, r1, #1
	mov	r4, r1
	mov	r5, r0
	cmp	r2, #9
	bhi	LBB169_6
	.set LPCRELV3, (LJTI169_0_0-(LPCRELL3+8))
LPCRELL3:
	add	r0, pc, #LPCRELV3
	ldr	pc, [r0, +r2, lsl #2] 
LJTI169_0_0:
	.long	 LBB169_3
	.long	 LBB169_6
	.long	 LBB169_2
	.long	 LBB169_6
	.long	 LBB169_2
	.long	 LBB169_6
	.long	 LBB169_5
	.long	 LBB169_6
	.long	 LBB169_6
	.long	 LBB169_4
LBB169_2:
	bl	_mach_absolute_time
	str	r0, [r5, #+408]
	str	r1, [r5, #+412]
	b	LBB169_5
LBB169_3:
	ldr	r1, [r5, #+184]
	ldr	r0, [r5, #+188]
	add	r0, r0, #98, 30
	add	r0, r0, #2, 22
	bl	__ZN4MMgc9GCManager21signalStartCollectionEPNS_2GCE
	bl	_mach_absolute_time
	str	r1, [r5, #+204]
	str	r0, [r5, #+200]
	mov	r0, #0
	str	r0, [r5, #+44]
	str	r0, [r5, #+40]
	str	r0, [r5, #+108]
	str	r0, [r5, #+104]
	str	r0, [r5, #+116]
	str	r0, [r5, #+112]
	str	r0, [r5, #+124]
	str	r0, [r5, #+120]
	str	r0, [r5, #+132]
	str	r0, [r5, #+128]
	ldr	r1, [r5, #+252]
	ldr	r2, [r5, #+228]
	ldr	r3, [r5, #+256]
	adds	r1, r2, r1
	adc	r2, r3, #0
	str	r2, [r5, #+256]
	str	r1, [r5, #+252]
	ldr	r1, [r5, #+260]
	ldr	r2, [r5, #+232]
	ldr	r3, [r5, #+264]
	adds	r1, r2, r1
	adc	r2, r3, #0
	str	r2, [r5, #+264]
	str	r1, [r5, #+260]
	ldr	r1, [r5, #+268]
	ldr	r2, [r5, #+236]
	ldr	r3, [r5, #+272]
	adds	r1, r2, r1
	adc	r2, r3, #0
	str	r2, [r5, #+272]
	str	r1, [r5, #+268]
	str	r0, [r5, #+228]
	str	r0, [r5, #+232]
	str	r0, [r5, #+236]
	ldr	r1, [r5, #+276]
	ldr	r2, [r5, #+240]
	ldr	r3, [r5, #+280]
	adds	r1, r2, r1
	adc	r2, r3, #0
	str	r2, [r5, #+280]
	str	r1, [r5, #+276]
	ldr	r1, [r5, #+284]
	ldr	r2, [r5, #+244]
	ldr	r3, [r5, #+288]
	adds	r1, r2, r1
	adc	r2, r3, #0
	str	r2, [r5, #+288]
	str	r1, [r5, #+284]
	ldr	r1, [r5, #+292]
	ldr	r2, [r5, #+296]
	ldr	r3, [r5, #+248]
	adds	r1, r3, r1
	adc	r2, r2, #0
	str	r1, [r5, #+292]
	str	r2, [r5, #+296]
	str	r0, [r5, #+240]
	str	r0, [r5, #+244]
	str	r0, [r5, #+248]
	bl	_mach_absolute_time
	str	r0, [r5, #+408]
	str	r1, [r5, #+412]
LBB169_4:
	ldrb	r0, [r5, #+317]
	cmp	r0, #0
	movne	r0, #0
	strbne	r0, [r5, #+317]
	strne	r0, [r5, #+60]
	strne	r0, [r5, #+56]
	strne	r0, [r5, #+136]
	strne	r0, [r5, #+140]
LBB169_5:
	bl	_mach_absolute_time
	add	r2, r5, #75, 30
	stmia	r2, {r0, r1, r4}
	b	LBB169_28
LBB169_6:
	mov	r0, #0
	str	r0, [r5, #+308]
	bl	_mach_absolute_time
	ldr	r2, [r5, #+300]
	subs	r6, r0, r2
	ldr	r3, [r5, #+304]
	sbc	r8, r1, r3
	sub	r2, r4, #2
	cmp	r2, #9
	bhi	LBB169_21
	.set LPCRELV4, (LJTI169_3_1-(LPCRELL4+8))
LPCRELL4:
	add	r3, pc, #LPCRELV4
	ldr	pc, [r3, +r2, lsl #2] 
LJTI169_3_1:
	.long	 LBB169_8
	.long	 LBB169_21
	.long	 LBB169_17
	.long	 LBB169_21
	.long	 LBB169_12
	.long	 LBB169_21
	.long	 LBB169_19
	.long	 LBB169_19
	.long	 LBB169_21
	.long	 LBB169_14
LBB169_8:
	ldr	r0, [r5, #+144]
	ldr	r1, [r5, #+148]
	mov	r2, #0
	mov	r9, #0
	mov	r12, r8
	adds	r0, r0, #1
	adc	r1, r1, #0
	strd	r0, [r5, #+144]
	ldmia	r5, {r0, r1}
	adds	r0, r0, r6
	adc	r1, r1, r8
	stmia	r5, {r0, r1}
	ldr	r0, [r5, #+64]
	cmp	r0, r6
	movhi	r2, #1
	ldr	r3, [r5, #+68]
	mov	r1, #0
	cmp	r3, r8
	movhi	r9, #1
	cmp	r3, r8
	moveq	r9, r2
	mov	r2, r6
	cmp	r9, #0
	movne	r12, r3
	str	r12, [r5, #+68]
	cmp	r9, #0
	movne	r2, r0
	str	r2, [r5, #+64]
	ldr	r0, [r5, #+104]
	cmp	r0, r6
	mov	r2, #0
	movhi	r2, #1
	ldr	r3, [r5, #+108]
	cmp	r3, r8
	movhi	r1, #1
	cmp	r3, r8
	moveq	r1, r2
	mov	r2, r8
	cmp	r1, #0
	movne	r2, r3
	str	r2, [r5, #+108]
	mov	r2, r6
	cmp	r1, #0
	movne	r2, r0
	str	r2, [r5, #+104]
	ldr	r10, [r5, #+416]
	ldr	r11, [r5, #+420]
	bl	_mach_absolute_time
	adds	r0, r0, r10
	adc	r1, r1, r11
	ldr	r2, [r5, #+408]
	ldr	r3, [r5, #+412]
	subs	r10, r0, r2
	sbc	r11, r1, r3
	str	r10, [r5, #+416]
	str	r11, [r5, #+420]
	ldr	r0, [r5, #+276]
	ldr	r1, [r5, #+280]
	bl	___floatundidf
	vmov	d8, r0, r1
	ldr	r0, [r5, #+284]
	ldr	r1, [r5, #+288]
	bl	___floatundidf
	vmov	d0, r0, r1
	ldr	r0, [r5, #+292]
	ldr	r1, [r5, #+296]
	vadd.f64	d8, d8, d0
	bl	___floatundidf
	vmov	d0, r0, r1
	mov	r0, r10
	mov	r1, r11
	vadd.f64	d8, d8, d0
	bl	___floatundidf
	vmov	d9, r0, r1
	ldr	r0, LCPI169_0
	ldr	r0, [r0]
	ldrd	r0, [r0]
	orr	r2, r0, r1
	cmp	r2, #0
	bne	LBB169_11
	ldr	r0, LCPI169_1
	ldr	r10, [r0]
	mov	r0, r10
	bl	_mach_timebase_info
	vldmia	r10, {s0, s1}
	vcvt.f64.u32	d1, s1
	vcvt.f64.u32	d0, s0
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI169_14
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	ldr	r2, LCPI169_3
LBB169_10:
	ldr	r2, [r2]
	strd	r0, [r2]
LBB169_11:
	bl	___floatundidf
	vmov	d0, r0, r1
	vldr.64	d1, LCPI169_15
	vdiv.f64	d0, d9, d0
	vdiv.f64	d0, d8, d0
	vcmpe.f64	d0, d1
	vstr.64	d0, [r5, #+328]
	fmstat
	movmi	r1, #0
	movmi	r0, #89, 14
	orrmi	r0, r0, #1, 2
	strmi	r1, [r5, #+328]
	strmi	r0, [r5, #+332]
	b	LBB169_20
LBB169_12:
	ldr	r0, [r5, #+160]
	ldr	r1, [r5, #+164]
	mov	r2, #0
	mov	r9, #0
	mov	r12, r8
	adds	r0, r0, #1
	adc	r1, r1, #0
	strd	r0, [r5, #+160]
	ldr	r0, [r5, #+16]
	ldr	r1, [r5, #+20]
	adds	r0, r0, r6
	adc	r1, r1, r8
	str	r1, [r5, #+20]
	str	r0, [r5, #+16]
	ldr	r0, [r5, #+80]
	cmp	r0, r6
	movhi	r2, #1
	ldr	r3, [r5, #+84]
	mov	r1, #0
	cmp	r3, r8
	movhi	r9, #1
	cmp	r3, r8
	moveq	r9, r2
	mov	r2, r6
	cmp	r9, #0
	movne	r12, r3
	str	r12, [r5, #+84]
	cmp	r9, #0
	movne	r2, r0
	str	r2, [r5, #+80]
	ldr	r0, [r5, #+120]
	cmp	r0, r6
	mov	r2, #0
	movhi	r2, #1
	ldr	r3, [r5, #+124]
	cmp	r3, r8
	movhi	r1, #1
	cmp	r3, r8
	moveq	r1, r2
	mov	r2, r8
	cmp	r1, #0
	movne	r2, r3
	str	r2, [r5, #+124]
	mov	r2, r6
	cmp	r1, #0
	movne	r2, r0
	str	r2, [r5, #+120]
	ldr	r10, [r5, #+416]
	ldr	r11, [r5, #+420]
	bl	_mach_absolute_time
	adds	r0, r0, r10
	adc	r1, r1, r11
	ldr	r2, [r5, #+408]
	ldr	r3, [r5, #+412]
	subs	r10, r0, r2
	sbc	r11, r1, r3
	str	r10, [r5, #+416]
	str	r11, [r5, #+420]
	ldr	r0, [r5, #+276]
	ldr	r1, [r5, #+280]
	bl	___floatundidf
	vmov	d8, r0, r1
	ldr	r0, [r5, #+284]
	ldr	r1, [r5, #+288]
	bl	___floatundidf
	vmov	d0, r0, r1
	ldr	r0, [r5, #+292]
	ldr	r1, [r5, #+296]
	vadd.f64	d8, d8, d0
	bl	___floatundidf
	vmov	d0, r0, r1
	mov	r0, r10
	mov	r1, r11
	vadd.f64	d8, d8, d0
	bl	___floatundidf
	vmov	d9, r0, r1
	ldr	r0, LCPI169_5
	ldr	r0, [r0]
	ldrd	r0, [r0]
	orr	r2, r0, r1
	cmp	r2, #0
	bne	LBB169_11
	ldr	r0, LCPI169_6
	ldr	r10, [r0]
	mov	r0, r10
	bl	_mach_timebase_info
	vldmia	r10, {s0, s1}
	vcvt.f64.u32	d1, s1
	vcvt.f64.u32	d0, s0
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI169_14
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	ldr	r2, LCPI169_7
	b	LBB169_10
LBB169_14:
	ldrd	r0, [r5, #+176]
	mov	r2, #0
	mov	r9, #0
	mov	r12, r8
	adds	r0, r0, #1
	adc	r1, r1, #0
	strd	r0, [r5, #+176]
	ldr	r0, [r5, #+32]
	ldr	r1, [r5, #+36]
	adds	r0, r0, r6
	adc	r1, r1, r8
	str	r1, [r5, #+36]
	str	r0, [r5, #+32]
	ldr	r0, [r5, #+56]
	ldr	r1, [r5, #+60]
	adds	r0, r0, r6
	adc	r1, r1, r8
	str	r1, [r5, #+60]
	str	r0, [r5, #+56]
	ldr	r0, [r5, #+96]
	cmp	r0, r6
	movhi	r2, #1
	ldr	r3, [r5, #+100]
	mov	r1, #0
	cmp	r3, r8
	movhi	r9, #1
	cmp	r3, r8
	moveq	r9, r2
	mov	r2, r6
	cmp	r9, #0
	movne	r12, r3
	str	r12, [r5, #+100]
	cmp	r9, #0
	movne	r2, r0
	str	r2, [r5, #+96]
	ldr	r0, [r5, #+136]
	cmp	r0, r6
	mov	r2, #0
	movhi	r2, #1
	ldr	r3, [r5, #+140]
	cmp	r3, r8
	movhi	r1, #1
	cmp	r3, r8
	moveq	r1, r2
	mov	r2, r8
	cmp	r1, #0
	movne	r2, r3
	str	r2, [r5, #+140]
	mov	r2, r6
	cmp	r1, #0
	movne	r2, r0
	str	r2, [r5, #+136]
	b	LBB169_20
	.align	2
	LCPI169_14:
 	.long	0
	.long	1104006501

	.align	2
	LCPI169_15:
 	.long	0
	.long	1097072640

LBB169_17:
	ldr	r2, [r5, #+152]
	ldr	r3, [r5, #+156]
	mov	r9, #0
	mov	lr, #0
	mov	r10, r8
	adds	r2, r2, #1
	adc	r3, r3, #0
	str	r3, [r5, #+156]
	str	r2, [r5, #+152]
	ldr	r2, [r5, #+8]
	ldr	r3, [r5, #+12]
	adds	r2, r2, r6
	adc	r3, r3, r8
	str	r3, [r5, #+12]
	str	r2, [r5, #+8]
	ldr	r2, [r5, #+72]
	cmp	r2, r6
	movhi	r9, #1
	ldr	r12, [r5, #+76]
	mov	r3, #0
	cmp	r12, r8
	movhi	lr, #1
	cmp	r12, r8
	moveq	lr, r9
	mov	r9, r6
	cmp	lr, #0
	movne	r10, r12
	str	r10, [r5, #+76]
	cmp	lr, #0
	movne	r9, r2
	str	r9, [r5, #+72]
	ldr	r2, [r5, #+112]
	cmp	r2, r6
	mov	r9, #0
	movhi	r9, #1
	ldr	r12, [r5, #+116]
	cmp	r12, r8
	movhi	r3, #1
	cmp	r12, r8
	moveq	r3, r9
	mov	r9, r8
	cmp	r3, #0
	movne	r9, r12
	str	r9, [r5, #+116]
	mov	r9, r6
	cmp	r3, #0
	movne	r9, r2
	str	r9, [r5, #+112]
	strd	r0, [r5, #+192]
	ldr	r10, [r5, #+416]
	ldr	r11, [r5, #+420]
	bl	_mach_absolute_time
	adds	r0, r0, r10
	adc	r1, r1, r11
	ldr	r2, [r5, #+408]
	ldr	r3, [r5, #+412]
	subs	r10, r0, r2
	sbc	r11, r1, r3
	str	r10, [r5, #+416]
	str	r11, [r5, #+420]
	ldr	r0, [r5, #+276]
	ldr	r1, [r5, #+280]
	bl	___floatundidf
	vmov	d8, r0, r1
	ldr	r0, [r5, #+284]
	ldr	r1, [r5, #+288]
	bl	___floatundidf
	vmov	d0, r0, r1
	ldr	r0, [r5, #+292]
	ldr	r1, [r5, #+296]
	vadd.f64	d8, d8, d0
	bl	___floatundidf
	vmov	d0, r0, r1
	mov	r0, r10
	mov	r1, r11
	vadd.f64	d8, d8, d0
	bl	___floatundidf
	vmov	d9, r0, r1
	ldr	r0, LCPI169_8
	ldr	r0, [r0]
	ldrd	r0, [r0]
	orr	r2, r0, r1
	cmp	r2, #0
	bne	LBB169_11
	ldr	r0, LCPI169_9
	ldr	r10, [r0]
	mov	r0, r10
	bl	_mach_timebase_info
	vldmia	r10, {s0, s1}
	vcvt.f64.u32	d1, s1
	vcvt.f64.u32	d0, s0
	vdiv.f64	d0, d0, d1
	vldr.64	d1, LCPI169_2
	vdiv.f64	d0, d1, d0
	vmov	r0, r1, d0
	bl	___fixunsdfdi
	ldr	r2, LCPI169_10
	b	LBB169_10
LBB169_19:
	ldr	r2, [r5, #+168]
	ldr	r3, [r5, #+172]
	mov	r9, #0
	mov	lr, #0
	mov	r10, r8
	adds	r2, r2, #1
	adc	r3, r3, #0
	str	r3, [r5, #+172]
	str	r2, [r5, #+168]
	ldr	r2, [r5, #+24]
	ldr	r3, [r5, #+28]
	adds	r2, r2, r6
	adc	r3, r3, r8
	str	r3, [r5, #+28]
	str	r2, [r5, #+24]
	ldr	r2, [r5, #+88]
	cmp	r2, r6
	movhi	r9, #1
	ldr	r12, [r5, #+92]
	mov	r3, #0
	cmp	r12, r8
	movhi	lr, #1
	cmp	r12, r8
	moveq	lr, r9
	mov	r9, r6
	cmp	lr, #0
	movne	r10, r12
	str	r10, [r5, #+92]
	cmp	lr, #0
	movne	r9, r2
	str	r9, [r5, #+88]
	ldr	r2, [r5, #+128]
	cmp	r2, r6
	mov	r9, #0
	movhi	r9, #1
	ldr	r12, [r5, #+132]
	cmp	r12, r8
	movhi	r3, #1
	cmp	r12, r8
	moveq	r3, r9
	mov	r9, r8
	cmp	r3, #0
	movne	r9, r12
	str	r9, [r5, #+132]
	cmp	r3, #0
	mov	r9, r6
	movne	r9, r2
	str	r9, [r5, #+128]
	strd	r0, [r5, #+208]
	ldrd	r2, [r5, #+200]
	subs	r0, r0, r2
	sbc	r1, r1, r3
	str	r1, [r5, #+52]
	str	r0, [r5, #+48]
	mov	r0, #1
	strb	r0, [r5, #+317]
	ldr	r0, [r5, #+188]
	ldr	r1, [r5, #+184]
	add	r0, r0, #98, 30
	add	r0, r0, #2, 22
	bl	__ZN4MMgc9GCManager19signalEndCollectionEPNS_2GCE
LBB169_20:
	cmp	r4, #11
	beq	LBB169_28
LBB169_21:
	ldrd	r0, [r5, #+40]
	adds	r0, r0, r6
	adc	r1, r1, r8
	strd	r0, [r5, #+40]
	cmp	r4, #9
	beq	LBB169_31
	cmp	r4, #8
	beq	LBB169_29
	cmp	r4, #4
	bne	LBB169_28
	ldr	r0, [r5, #+404]
	cmp	r0, #0
	rsblt	r0, r0, #0
	vmovlt	s2, r0
	vldrlt.64	d0, [r5, #+392]
	vcvtlt.f64.s32	d1, s2
	vsublt.f64	d0, d0, d1
	vstrlt.64	d0, [r5, #+392]
	movlt	r0, #0
	strlt	r0, [r5, #+404]
	vldr.64	d1, [r5, #+352]
	vldr.64	d3, LCPI169_12
	vldr.64	d2, LCPI169_11
	vldr.64	d0, [r5, #+344]
	vsub.f64	d1, d3, d1
	vadd.f64	d2, d0, d2
	vmul.f64	d1, d1, d2
	vdiv.f64	d0, d0, d1
	vldr.64	d2, [r5, #+320]
	vldr.64	d1, [r5, #+328]
	vmul.f64	d1, d2, d1
	vdiv.f64	d0, d1, d0
	vldr.64	d1, LCPI169_13
	vcmpe.f64	d0, d1
	fmstat
	ble	LBB169_26
	mvn	r0, #2, 2
	b	LBB169_27
LBB169_26:
	vldr.64	d1, LCPI169_12
	vcmpe.f64	d0, d1
	fmstat
	ftosizdpl	s0, d0
	vmovpl	r0, s0
	movmi	r0, #1
LBB169_27:
	vmov	s0, r0
	str	r0, [r5, #+400]
	str	r0, [r5, #+404]
	vcvt.f64.s32	d0, s0
	vldr.64	d1, [r5, #+392]
	vsub.f64	d0, d1, d0
	vstr.64	d0, [r5, #+392]
	ldr	r0, [r5, #+184]
	ldrb	r0, [r0, #+4]
	cmp	r0, #0
	movne	r0, #7, 2
	strne	r0, [r5, #+404]
LBB169_28:
	sub	sp, r7, #40
	vldmia	sp!, {d8, d9}
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB169_29:
	mov	r1, #1
LBB169_30:
	mov	r0, r5
	bl	__ZN4MMgc15GCPolicyManager29adjustPolicyForNextMajorCycleEb
	b	LBB169_28
LBB169_31:
	mov	r1, #0
	b	LBB169_30
	.align	2
	LCPI169_0:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI169_1:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI169_2:
 	.long	0
	.long	1104006501

	.align	2
	LCPI169_3:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI169_5:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI169_6:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI169_7:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI169_8:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI169_9:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr

	.align	2
	LCPI169_10:
 	.long	L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr

	.align	2
	LCPI169_11:
 	.long	0
	.long	3220176896

	.align	2
	LCPI169_12:
 	.long	0
	.long	1072693248

	.align	2
	LCPI169_13:
 	.long	4290772992
	.long	1105199103

Leh_func_end125:
	.section	__TEXT,__const
	.align	2
lJTI169_0:
LJTI169_0:
	.long	LBB169_3
	.long	LBB169_6
	.long	LBB169_2
	.long	LBB169_6
	.long	LBB169_2
	.long	LBB169_6
	.long	LBB169_5
	.long	LBB169_6
	.long	LBB169_6
	.long	LBB169_4
lJTI169_3:
LJTI169_3:
	.long	LBB169_8
	.long	LBB169_21
	.long	LBB169_17
	.long	LBB169_21
	.long	LBB169_12
	.long	LBB169_21
	.long	LBB169_19
	.long	LBB169_19
	.long	LBB169_21
	.long	LBB169_14

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc6GCHeap12ResetStaticsEv
	.align	2
__ZN4MMgc6GCHeap12ResetStaticsEv:
	ldr	r0, LCPI170_0
	mov	r1, #0
	ldr	r0, [r0]
	str	r1, [r0]
	bx	lr
	.align	2
	LCPI170_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr


	.globl	__ZN4MMgc6GCHeap18ValidateHeapBlocksEv
	.align	2
__ZN4MMgc6GCHeap18ValidateHeapBlocksEv:
	bx	lr

	.globl	__ZNK4MMgc6GCHeap12AddrToRegionEPKv
	.align	2
__ZNK4MMgc6GCHeap12AddrToRegionEPKv:
	add	r0, r0, #4
	b	LBB172_3
LBB172_1:
	ldr	r2, [r0, #+4]
	cmp	r2, r1
	bhi	LBB172_3
	ldr	r2, [r0, #+8]
	cmp	r2, r1
	bxhi	lr
LBB172_3:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB172_1
	mov	r0, #0
	bx	lr

	.globl	__ZNK4MMgc6GCHeap15BaseAddrToBlockEPKv
	.align	2
__ZNK4MMgc6GCHeap15BaseAddrToBlockEPKv:
	add	r2, r0, #4
	b	LBB173_3
LBB173_1:
	ldr	r3, [r2, #+4]
	cmp	r3, r1
	bhi	LBB173_3
	ldr	r9, [r2, #+8]
	cmp	r9, r1
	bhi	LBB173_4
LBB173_3:
	ldr	r2, [r2]
	cmp	r2, #0
	moveq	r0, #0
	bxeq	lr
	b	LBB173_1
LBB173_4:
	ldr	r2, [r2, #+16]
	cmn	r2, #1
	subne	r1, r1, r3
	ldrne	r0, [r0, #+1516]
	movne	r3, #24
	addne	r1, r2, r1, lsr #12
	mlane	r0, r1, r3, r0
	bxne	lr
	mov	r0, #0
	bx	lr

	.globl	__ZNK4MMgc6GCHeap19InteriorAddrToBlockEPKv
	.align	2
__ZNK4MMgc6GCHeap19InteriorAddrToBlockEPKv:
	add	r2, r0, #4
	b	LBB174_3
LBB174_1:
	ldr	r3, [r2, #+4]
	cmp	r3, r1
	bhi	LBB174_3
	ldr	r9, [r2, #+8]
	cmp	r9, r1
	bhi	LBB174_5
LBB174_3:
	ldr	r2, [r2]
	cmp	r2, #0
	bne	LBB174_1
	mov	r0, #0
	bx	lr
LBB174_5:
	ldr	r2, [r2, #+16]
	cmn	r2, #1
	moveq	r0, #0
	bxeq	lr
	sub	r9, r1, r3
	mov	r12, #24
	ldr	r0, [r0, #+1516]
	add	r9, r2, r9, lsr #12
	mla	r12, r9, r12, r0
	ldr	r12, [r12, #+4]
	cmp	r12, #0
	bne	LBB174_8
	sub	r9, r1, r3
	add	r9, r2, r9, lsr #12
	mov	r2, #24
	mla	r1, r9, r2, r0
	sub	r1, r1, #20
LBB174_7:
	ldr	r2, [r1], #-24
	sub	r9, r9, #1
	cmp	r2, #0
	beq	LBB174_7
LBB174_8:
	mov	r1, #24
	mla	r0, r9, r1, r0
	bx	lr

	.globl	__ZN4MMgc6GCHeap5SplitEPNS0_9HeapBlockEm
	.align	2
__ZN4MMgc6GCHeap5SplitEPNS0_9HeapBlockEm:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r12, #0
	mov	r3, #24
	ldrb	r9, [r1, #+21]
	ldrd	r4, [r1]
	mla	r0, r2, r3, r1
	str	r12, [r0, #+12]
	str	r12, [r0, #+16]
	add	lr, r4, r2, lsl #12
	add	r7, sp, #8
	mul	r12, r2, r3
	str	lr, [r1, +r12]
	sub	r12, r5, r2
	str	r12, [r0, #+4]
	mov	r12, #1
	strb	r12, [r0, #+20]
	strb	r9, [r0, #+21]
	str	r2, [r0, #+8]
	ldrb	r9, [r1, #+20]
	strb	r9, [r0, #+20]
	str	r2, [r1, #+4]
	ldr	r9, [r0, #+4]
	add	r2, r9, r2
	mla	r1, r2, r3, r1
	str	r9, [r1, #+8]
	ldmfd	sp!, {r4, r5, r7, pc}

	.globl	__ZN4MMgc6GCHeap19BlocksAreContiguousEPvS1_
	.align	2
__ZN4MMgc6GCHeap19BlocksAreContiguousEPvS1_:
	add	r0, r0, #4
	mov	r3, r0
	b	LBB176_3
LBB176_1:
	ldr	r9, [r3, #+4]
	cmp	r9, r1
	bhi	LBB176_3
	ldr	r9, [r3, #+8]
	cmp	r9, r1
	bhi	LBB176_7
LBB176_3:
	ldr	r3, [r3]
	cmp	r3, #0
	bne	LBB176_1
	mov	r3, #0
	b	LBB176_7
LBB176_5:
	ldr	r1, [r0, #+4]
	cmp	r1, r2
	bhi	LBB176_7
	ldr	r1, [r0, #+8]
	cmp	r1, r2
	bhi	LBB176_9
LBB176_7:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB176_5
	mov	r0, #0
LBB176_9:
	cmp	r3, r0
	moveq	r0, #1
	bxeq	lr
	ldr	r1, [r0, #+4]
	mov	r0, #0
	ldr	r2, [r3, #+8]
	cmp	r2, r1
	moveq	r0, #1
	bx	lr

	.globl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockES2_
	.align	2
__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockES2_:
	str	r2, [r1, #+16]
	ldr	r3, [r2, #+12]
	str	r3, [r1, #+12]
	str	r1, [r3, #+16]
	str	r1, [r2, #+12]
	bx	lr

	.globl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
	.align	2
__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb:
	stmfd	sp!, {r4, r5, r7, lr}
	ldrb	r3, [r1, #+20]
	add	r7, sp, #8
	cmp	r3, #0
	ldrne	r3, [r1, #+8]
	cmpne	r3, #0
	beq	LBB178_6
	mov	r9, #24
	rsb	r3, r3, #0
	mla	r9, r3, r9, r1
	mov	r12, r9
	ldr	lr, [r12, #+12]!
	cmp	lr, #0
	movne	r4, #24
	mlane	r4, r3, r4, r1
	ldrbne	r4, [r4, #+20]
	cmpne	r4, #0
	beq	LBB178_6
	mov	r4, #24
	cmp	r2, #0
	mla	r4, r3, r4, r1
	ldr	r5, [r4, #+16]
	str	r5, [lr, #+16]
	ldr	lr, [r4, #+16]
	ldr	r5, [r12]
	str	r5, [lr, #+12]
	mov	lr, #0
	str	lr, [r12]
	str	lr, [r4, #+16]
	ldr	r12, [r4, #+4]
	ldr	r5, [r1, #+4]
	add	r12, r5, r12
	str	r12, [r4, #+4]
	str	lr, [r1]
	str	lr, [r1, #+4]
	str	lr, [r1, #+8]
	moveq	r2, #24
	mlaeq	r1, r3, r2, r1
	ldrbeq	r1, [r1, #+21]
	cmpeq	r1, #0
	beq	LBB178_4
	mov	r2, #1
	b	LBB178_5
LBB178_4:
	mov	r2, #0
LBB178_5:
	mov	r1, r9
LBB178_6:
	ldrb	r3, [r1, #+20]
	cmp	r3, #0
	beq	LBB178_11
	mov	r9, #24
	ldr	r3, [r1, #+4]
	mla	r9, r3, r9, r1
	ldr	r12, [r9, #+12]!
	cmp	r12, #0
	movne	lr, #24
	mlane	lr, r3, lr, r1
	ldrbne	lr, [lr, #+20]
	cmpne	lr, #0
	beq	LBB178_11
	mov	lr, #24
	mla	r4, r3, lr, r1
	ldr	r5, [r4, #+16]
	str	r5, [r12, #+16]
	tst	r2, #255
	ldr	r12, [r4, #+16]
	ldr	r5, [r9]
	str	r5, [r12, #+12]
	mov	r12, #0
	str	r12, [r9]
	str	r12, [r4, #+16]
	ldr	r9, [r4, #+4]
	ldr	r5, [r1, #+4]
	add	r9, r9, r5
	str	r9, [r1, #+4]
	str	r12, [r4, #+4]
	mul	r9, r3, lr
	str	r12, [r1, +r9]
	str	r12, [r4, #+8]
	moveq	r2, #24
	mlaeq	r2, r3, r2, r1
	ldrbeq	r2, [r2, #+21]
	cmpeq	r2, #0
	beq	LBB178_10
	mov	r2, #1
	b	LBB178_11
LBB178_10:
	mov	r2, #0
LBB178_11:
	mov	r9, #24
	ldr	r3, [r1, #+4]
	mla	r9, r3, r9, r1
	str	r3, [r9, #+8]
	ldrb	r9, [r1, #+21]
	orr	r2, r9, r2
	tst	r2, #255
	mov	r9, #0
	movne	r9, #1
	strb	r9, [r1, #+21]
	cmp	r3, #16
	bhi	LBB178_13
	sub	r2, r3, #1
	b	LBB178_14
LBB178_13:
	cmp	r3, #128
	movhs	r2, #29
	sublo	r2, r3, #16
	movlo	r9, #15
	addlo	r2, r9, r2, lsr #3
LBB178_14:
	mov	r9, #24
	mla	r0, r2, r9, r0
	cmp	r3, #15
	add	r0, r0, #127, 30
	add	r0, r0, #1, 22
	bhi	LBB178_17
	mov	r2, r0
	b	LBB178_19
LBB178_16:
	ldr	r9, [r2, #+4]
	cmp	r9, r3
	blo	LBB178_18
	b	LBB178_19
LBB178_17:
	mov	r2, r0
LBB178_18:
	ldr	r2, [r2, #+16]
	cmp	r2, r0
	bne	LBB178_16
LBB178_19:
	str	r2, [r1, #+16]
	ldr	r0, [r2, #+12]
	str	r0, [r1, #+12]
	str	r1, [r0, #+16]
	str	r1, [r2, #+12]
	ldmfd	sp!, {r4, r5, r7, pc}

	.globl	__ZN4MMgc6GCHeap21PruneDecommittedBlockEPNS0_9HeapBlockEmm
	.align	2
__ZN4MMgc6GCHeap21PruneDecommittedBlockEPNS0_9HeapBlockEmm:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	cmp	r3, #32
	mov	r9, r3
	add	r7, sp, #12
	movlo	r9, #32
	cmp	r9, r2
	bhs	LBB179_2
	cmp	r2, r3
	subeq	sp, r7, #12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	sub	r3, r3, r2
	ldrd	r4, [r1]
	add	r9, r5, r3
	mov	r12, #24
	mla	lr, r9, r12, r1
	mov	r2, #0
	mul	r6, r9, r12
	rsb	r3, r3, #0
	ldrb	r5, [r1, #+21]
	str	r2, [lr, #+12]
	str	r2, [lr, #+16]
	add	r4, r4, r9, lsl #12
	str	r4, [r1, +r6]
	str	r3, [lr, #+4]
	mov	r3, #1
	strb	r3, [lr, #+20]
	strb	r5, [lr, #+21]
	str	r9, [lr, #+8]
	ldrb	r3, [r1, #+20]
	strb	r3, [lr, #+20]
	str	r9, [r1, #+4]
	ldr	r3, [lr, #+4]
	add	r9, r3, r9
	mla	r1, r9, r12, r1
	str	r3, [r1, #+8]
	mov	r1, lr
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
LBB179_2:
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}

	.globl	__ZN4MMgc6GCHeap19AllocCommittedBlockEPNS0_9HeapBlockEmRbm
	.align	2
__ZN4MMgc6GCHeap19AllocCommittedBlockEPNS0_9HeapBlockEmRbm:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldr	r12, [r7, #+8]
	ldr	r9, [r1]
	sub	lr, r12, #1
	and	r4, lr, r9, lsr #12
	mov	r5, r2
	mov	r6, r0
	sub	r12, r12, r4
	mov	r4, r3
	tst	r12, lr
	beq	LBB180_2
	and	r0, r12, lr
	add	r9, r9, r0, lsl #12
	mov	r3, #24
	mla	r8, r0, r3, r1
	ldrb	r12, [r1, #+21]
	ldr	lr, [r1, #+4]
	mov	r2, #0
	str	r2, [r8, #+12]
	str	r2, [r8, #+16]
	mul	r10, r0, r3
	str	r9, [r1, +r10]
	sub	r9, lr, r0
	str	r9, [r8, #+4]
	mov	r9, #1
	strb	r9, [r8, #+20]
	strb	r12, [r8, #+21]
	str	r0, [r8, #+8]
	ldrb	r9, [r1, #+20]
	strb	r9, [r8, #+20]
	str	r0, [r1, #+4]
	ldr	r9, [r8, #+4]
	add	r0, r9, r0
	mla	r0, r0, r3, r1
	str	r9, [r0, #+8]
	mov	r0, r6
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
	mov	r1, r8
LBB180_2:
	mov	r8, r1
	ldr	r0, [r8, #+4]
	cmp	r0, r5
	bls	LBB180_4
	ldr	r12, [r8]
	mov	r3, #24
	mla	r1, r5, r3, r8
	ldrb	r9, [r8, #+21]
	mov	r2, #0
	str	r2, [r1, #+12]
	str	r2, [r1, #+16]
	mul	lr, r5, r3
	sub	r0, r0, r5
	add	r12, r12, r5, lsl #12
	str	r12, [r8, +lr]
	str	r0, [r1, #+4]
	mov	r12, #1
	strb	r12, [r1, #+20]
	strb	r9, [r1, #+21]
	str	r5, [r1, #+8]
	ldrb	r0, [r8, #+20]
	strb	r0, [r1, #+20]
	str	r5, [r8, #+4]
	ldr	r0, [r1, #+4]
	add	r9, r0, r5
	mla	r3, r9, r3, r8
	str	r0, [r3, #+8]
	mov	r0, r6
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
LBB180_4:
	ldrb	r0, [r8, #+21]
	cmp	r0, #0
	ldrbne	r0, [r4]
	cmpne	r0, #0
	beq	LBB180_6
	mov	r0, #1
	b	LBB180_7
LBB180_6:
	mov	r0, #0
LBB180_7:
	strb	r0, [r4]
	mov	r0, r8
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}

	.globl	__ZN4MMgc6GCHeap9FreeBlockEPNS0_9HeapBlockE
	.align	2
__ZN4MMgc6GCHeap9FreeBlockEPNS0_9HeapBlockE:
	stmfd	sp!, {r7, lr}
	mov	r2, #1
	mov	r7, sp
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc6GCHeap27CheckForNewMaxTotalHeapSizeEv
	.align	2
__ZN4MMgc6GCHeap27CheckForNewMaxTotalHeapSizeEv:
	ldr	r1, [r0, #+1520]
	ldr	r2, [r0, #+1524]
	ldr	r3, [r0, #+2520]
	sub	r1, r1, r2
	ldr	r2, [r0, #+2516]
	add	r1, r1, r3
	cmp	r2, r1, lsl #12
	bxhs	lr
	movlo	r1, r1, lsl #12
	strlo	r1, [r0, #+2516]
	bxlo	lr
LBB182_1:

	.globl	__ZN4MMgc6GCHeap17HardLimitExceededEm
	.align	2
__ZN4MMgc6GCHeap17HardLimitExceededEm:
	ldr	r3, [r0, #+1520]
	add	r1, r3, r1
	ldr	r2, [r0, #+1524]
	sub	r1, r1, r2
	ldr	r2, [r0, #+2520]
	ldr	r3, [r0, #+2276]
	add	r1, r1, r2
	ldr	r2, [r0, #+2264]
	mov	r0, #0
	add	r1, r1, r2, lsr #12
	cmp	r1, r3
	movhi	r0, #1
	bx	lr

	.globl	__ZN4MMgc6GCHeap17SoftLimitExceededEm
	.align	2
__ZN4MMgc6GCHeap17SoftLimitExceededEm:
	ldr	r2, [r0, #+2280]
	cmp	r2, #0
	moveq	r0, #0
	bxeq	lr
	ldr	r9, [r0, #+1520]
	add	r1, r9, r1
	ldr	r3, [r0, #+1524]
	sub	r1, r1, r3
	ldr	r3, [r0, #+2520]
	ldr	r0, [r0, #+2264]
	add	r1, r1, r3
	add	r1, r1, r0, lsr #12
	mov	r0, #0
	cmp	r1, r2
	movhi	r0, #1
	bx	lr

	.globl	__ZN4MMgc6GCHeap8FreeHookEPKvmi
	.align	2
__ZN4MMgc6GCHeap8FreeHookEPKvmi:
	bx	lr

	.globl	__ZN4MMgc6GCHeap14PseudoFreeHookEPKvmi
	.align	2
__ZN4MMgc6GCHeap14PseudoFreeHookEPKvmi:
	bx	lr

	.globl	__ZN4MMgc10EnterFrame16UnwindAllObjectsEv
	.align	2
__ZN4MMgc10EnterFrame16UnwindAllObjectsEv:
Leh_func_begin126:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r4, [r0, #+124]
	add	r7, sp, #8
	cmp	r4, #0
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
	mov	r5, r0
LBB187_1:
	ldr	r0, [r4]
	ldr	r1, [r0, #+8]
	mov	r0, r4
	blx	r1
	ldr	r0, [r5, #+124]
	cmp	r0, r4
	movne	r4, r0
	ldreq	r4, [r0, #+4]
	streq	r4, [r5, #+124]
	cmp	r4, #0
	bne	LBB187_1
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end126:

	.globl	__ZN4MMgc10EnterFrame20AddAbortUnwindObjectEPNS_17AbortUnwindObjectE
	.align	2
__ZN4MMgc10EnterFrame20AddAbortUnwindObjectEPNS_17AbortUnwindObjectE:
	ldr	r2, [r0, #+124]
	str	r2, [r1, #+4]
	ldr	r2, [r0, #+124]
	cmp	r2, #0
	strne	r1, [r2, #+8]
	str	r1, [r0, #+124]
	bx	lr

	.globl	__ZN4MMgc10EnterFrame23RemoveAbortUnwindObjectEPNS_17AbortUnwindObjectE
	.align	2
__ZN4MMgc10EnterFrame23RemoveAbortUnwindObjectEPNS_17AbortUnwindObjectE:
	ldr	r2, [r0, #+124]
	cmp	r2, r1
	ldreq	r2, [r1, #+4]
	streq	r2, [r0, #+124]
	ldr	r0, [r1, #+8]
	cmp	r0, #0
	ldrne	r2, [r1, #+4]
	strne	r2, [r0, #+4]
	ldr	r0, [r1, #+4]
	cmp	r0, #0
	ldrne	r2, [r1, #+8]
	strne	r2, [r0, #+8]
	mov	r0, #0
	str	r0, [r1, #+4]
	str	r0, [r1, #+8]
	bx	lr

	.globl	__ZN4MMgc6GCHeap10FreeRegionEPNS0_6RegionE
	.align	2
__ZN4MMgc6GCHeap10FreeRegionEPNS0_6RegionE:
	ldr	r2, [r0, #+4]
	cmp	r2, r1
	ldreq	r2, [r1]
	streq	r2, [r0, #+4]
	ldr	r2, [r0, #+1508]
	str	r2, [r1]
	str	r1, [r0, #+1508]
	bx	lr

	.globl	__ZN4MMgc6GCHeap13EnterLockInitEv
	.align	2
__ZN4MMgc6GCHeap13EnterLockInitEv:
	ldr	r0, LCPI191_0
	ldr	r0, [r0]
	ldrb	r0, [r0]
	cmp	r0, #0
	bxne	lr
	ldreq	r0, LCPI191_1
	moveq	r1, #1
	ldreq	r0, [r0]
	strbeq	r1, [r0]
	moveq	r1, #0
	ldreq	r0, LCPI191_2
	ldreq	r0, [r0]
	streq	r1, [r0]
	bxeq	lr
LBB191_1:
	.align	2
	LCPI191_0:
 	.long	L__ZN4MMgc6GCHeap28instanceEnterLockInitializedE$non_lazy_ptr

	.align	2
	LCPI191_1:
 	.long	L__ZN4MMgc6GCHeap28instanceEnterLockInitializedE$non_lazy_ptr

	.align	2
	LCPI191_2:
 	.long	L__ZN4MMgc6GCHeap17instanceEnterLockE$non_lazy_ptr


	.globl	__ZN4MMgc6GCHeap16EnterLockDestroyEv
	.align	2
__ZN4MMgc6GCHeap16EnterLockDestroyEv:
	ldr	r0, LCPI192_0
	mov	r1, #0
	ldr	r0, [r0]
	str	r1, [r0]
	ldr	r0, LCPI192_1
	ldr	r0, [r0]
	strb	r1, [r0]
	bx	lr
	.align	2
	LCPI192_0:
 	.long	L__ZN4MMgc6GCHeap17instanceEnterLockE$non_lazy_ptr

	.align	2
	LCPI192_1:
 	.long	L__ZN4MMgc6GCHeap28instanceEnterLockInitializedE$non_lazy_ptr


	.globl	__ZN4MMgc6GCHeap6RegionC2EPS0_PcS3_S3_m
	.align	2
__ZN4MMgc6GCHeap6RegionC2EPS0_PcS3_S3_m:
	ldr	r9, [r1, #+4]
	str	r9, [r0]
	stmib	r0, {r2, r3}
	ldr	r3, [sp]
	str	r3, [r0, #+12]
	ldr	r2, [sp, #+4]
	str	r2, [r0, #+16]
	str	r0, [r1, #+4]
	bx	lr

	.globl	__ZN4MMgc6GCHeap6RegionC1EPS0_PcS3_S3_m
	.align	2
__ZN4MMgc6GCHeap6RegionC1EPS0_PcS3_S3_m:
	ldr	r9, [r1, #+4]
	str	r9, [r0]
	stmib	r0, {r2, r3}
	ldr	r3, [sp]
	str	r3, [r0, #+12]
	ldr	r2, [sp, #+4]
	str	r2, [r0, #+16]
	str	r0, [r1, #+4]
	bx	lr

	.globl	__ZN4MMgc6GCHeap9NewRegionEPcS1_S1_m
	.align	2
__ZN4MMgc6GCHeap9NewRegionEPcS1_S1_m:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r9, [r0, #+1508]
	add	r7, sp, #8
	ldr	r12, [sp, #+16]
	cmp	r9, #0
	beq	LBB195_2
	ldr	lr, [r9]
	str	lr, [r0, #+1508]
	b	LBB195_3
LBB195_2:
	ldr	r9, [r0, #+1512]
	add	r4, r9, #19
	add	lr, r9, #20
	str	lr, [r0, #+1512]
	ldr	r5, LCPI195_0
	add	r4, r4, #1, 20
	and	r4, r4, r5
	sub	lr, r4, lr
	cmp	lr, #20
	movlo	lr, #0
	strlo	lr, [r0, #+1512]
LBB195_3:
	cmp	r9, #0
	ldrne	lr, [r0, #+4]
	strne	lr, [r9]
	stmibne	r9, {r1, r2, r3, r12}
	strne	r9, [r0, #+4]
	mov	r0, r9
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI195_0:
 	.long	4294963200


	.globl	__ZN4MMgc6GCHeap34FreeMemoryExceedsDecommitThresholdEv
	.align	2
__ZN4MMgc6GCHeap34FreeMemoryExceedsDecommitThresholdEv:
	ldr	r1, [r0, #+1520]
	ldr	r2, [r0, #+1524]
	mov	r3, #25
	sub	r1, r1, r2
	ldr	r2, [r0, #+2520]
	ldr	r0, [r0, #+2252]
	add	r1, r1, r2
	sub	r0, r1, r0
	mul	r2, r1, r3
	mov	r3, #100
	mul	r1, r0, r3
	mov	r0, #0
	cmp	r1, r2
	movhi	r0, #1
	bx	lr

	.globl	__ZN4MMgc6GCHeap22QueryCanReturnToNormalEv
	.align	2
__ZN4MMgc6GCHeap22QueryCanReturnToNormalEv:
	ldr	r1, [r0, #+2264]
	ldr	r2, [r0, #+2252]
	ldr	r3, [r0, #+2280]
	add	r1, r2, r1, lsr #12
	cmp	r1, r3
	movhs	r0, #0
	bxhs	lr
	ldr	r1, [r0, #+1524]
	ldr	r3, [r0, #+1520]
	ldr	r0, [r0, #+2520]
	sub	r1, r3, r1
	add	r0, r1, r0
	mov	r3, #100
	mov	r1, #25
	mul	r1, r0, r1
	sub	r0, r0, r2
	mul	r2, r0, r3
	cmp	r2, r1
	mov	r0, #0
	movhi	r0, #1
	bx	lr

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN4MMgc9BasicListIPNS_2GCELi4EE6RemoveES2_
.weak_definition __ZN4MMgc9BasicListIPNS_2GCELi4EE6RemoveES2_
	.align	2
__ZN4MMgc9BasicListIPNS_2GCELi4EE6RemoveES2_:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldrb	r2, [r0, #+16]
	add	r7, sp, #12
	cmp	r2, #0
	bne	LBB198_2
	add	r2, r0, #4
	add	r3, r0, #8
	b	LBB198_11
LBB198_2:
	ldr	r2, [r0, #+12]
	cmp	r2, #0
	bne	LBB198_12
	add	r3, r0, #8
	add	r2, r0, #4
	mov	r9, #1
	mov	r12, #0
	mov	lr, #0
	b	LBB198_8
LBB198_4:
	ldr	r5, [r3]
	ldr	r6, [r5, +lr, lsl #2]
	cmp	r6, #0
	bne	LBB198_7
	ldr	r6, [r5, +r9, lsl #2]
	cmp	r6, #0
	beq	LBB198_25
	ldr	r4, [r0, #+20]
	cmp	r9, r4
	streq	lr, [r0, #+20]
	ldreq	r6, [r5, +r9, lsl #2]
	str	r6, [r5, +lr, lsl #2]
	ldr	r4, [r3]
	str	r12, [r4, +r9, lsl #2]
LBB198_7:
	add	r9, r9, #1
	add	lr, lr, #1
LBB198_8:
	ldr	r4, [r2]
LBB198_9:
	cmp	r4, r9
	bhi	LBB198_4
	mov	r9, #0
	strb	r9, [r0, #+16]
LBB198_11:
	ldr	r9, [r0]
	mov	r12, #0
	b	LBB198_15
LBB198_12:
	mov	r2, r0
	add	r3, r0, #8
	mov	r12, #0
	ldr	r9, [r2, #+4]!
	b	LBB198_17
LBB198_13:
	ldr	lr, [r3]
	ldr	lr, [lr, +r12, lsl #2]
	cmp	lr, r1
	beq	LBB198_19
	add	r12, r12, #1
LBB198_15:
	cmp	r9, r12
	bhi	LBB198_13
	b	LBB198_19
LBB198_16:
	add	r12, r12, #1
LBB198_17:
	cmp	r9, r12
	bls	LBB198_19
	ldr	lr, [r3]
	ldr	lr, [lr, +r12, lsl #2]
	cmp	lr, r1
	bne	LBB198_16
LBB198_19:
	mov	r1, r0
	cmp	r9, r12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	ldr	r9, [r0, #+20]
	cmp	r9, r12
	bne	LBB198_24
	add	r9, r9, #1
LBB198_21:
	mov	lr, r9
	str	lr, [r0, #+20]
	ldr	r4, [r2]
	cmp	lr, r4
	bhs	LBB198_23
	ldr	r9, [r3]
	ldr	r5, [r9, +lr, lsl #2]
	cmp	r5, #0
	add	r9, lr, #1
	beq	LBB198_21
LBB198_23:
	cmp	lr, r4
	moveq	r2, #0
	streq	r2, [r0, #+20]
LBB198_24:
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, +r12, lsl #2]
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r2, [r1]
	cmp	r2, r12
	movne	r1, #1
	strbne	r1, [r0, #+16]
	ldmfdne	sp!, {r4, r5, r6, r7, pc}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB198_25:
	add	r9, r9, #1
	b	LBB198_9

	.globl	__ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE6RemoveES2_
.weak_definition __ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE6RemoveES2_
	.align	2
__ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE6RemoveES2_:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldrb	r2, [r0, #+16]
	add	r7, sp, #12
	cmp	r2, #0
	bne	LBB199_2
	add	r2, r0, #4
	add	r3, r0, #8
	b	LBB199_11
LBB199_2:
	ldr	r2, [r0, #+12]
	cmp	r2, #0
	bne	LBB199_12
	add	r3, r0, #8
	add	r2, r0, #4
	mov	r9, #1
	mov	r12, #0
	mov	lr, #0
	b	LBB199_8
LBB199_4:
	ldr	r5, [r3]
	ldr	r6, [r5, +lr, lsl #2]
	cmp	r6, #0
	bne	LBB199_7
	ldr	r6, [r5, +r9, lsl #2]
	cmp	r6, #0
	beq	LBB199_25
	ldr	r4, [r0, #+20]
	cmp	r9, r4
	streq	lr, [r0, #+20]
	ldreq	r6, [r5, +r9, lsl #2]
	str	r6, [r5, +lr, lsl #2]
	ldr	r4, [r3]
	str	r12, [r4, +r9, lsl #2]
LBB199_7:
	add	r9, r9, #1
	add	lr, lr, #1
LBB199_8:
	ldr	r4, [r2]
LBB199_9:
	cmp	r4, r9
	bhi	LBB199_4
	mov	r9, #0
	strb	r9, [r0, #+16]
LBB199_11:
	ldr	r9, [r0]
	mov	r12, #0
	b	LBB199_15
LBB199_12:
	mov	r2, r0
	add	r3, r0, #8
	mov	r12, #0
	ldr	r9, [r2, #+4]!
	b	LBB199_17
LBB199_13:
	ldr	lr, [r3]
	ldr	lr, [lr, +r12, lsl #2]
	cmp	lr, r1
	beq	LBB199_19
	add	r12, r12, #1
LBB199_15:
	cmp	r9, r12
	bhi	LBB199_13
	b	LBB199_19
LBB199_16:
	add	r12, r12, #1
LBB199_17:
	cmp	r9, r12
	bls	LBB199_19
	ldr	lr, [r3]
	ldr	lr, [lr, +r12, lsl #2]
	cmp	lr, r1
	bne	LBB199_16
LBB199_19:
	mov	r1, r0
	cmp	r9, r12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	ldr	r9, [r0, #+20]
	cmp	r9, r12
	bne	LBB199_24
	add	r9, r9, #1
LBB199_21:
	mov	lr, r9
	str	lr, [r0, #+20]
	ldr	r4, [r2]
	cmp	lr, r4
	bhs	LBB199_23
	ldr	r9, [r3]
	ldr	r5, [r9, +lr, lsl #2]
	cmp	r5, #0
	add	r9, lr, #1
	beq	LBB199_21
LBB199_23:
	cmp	lr, r4
	moveq	r2, #0
	streq	r2, [r0, #+20]
LBB199_24:
	ldr	r2, [r3]
	mov	r3, #0
	str	r3, [r2, +r12, lsl #2]
	ldr	r2, [r1]
	sub	r2, r2, #1
	str	r2, [r1]
	cmp	r2, r12
	movne	r1, #1
	strbne	r1, [r0, #+16]
	ldmfdne	sp!, {r4, r5, r6, r7, pc}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB199_25:
	add	r9, r9, #1
	b	LBB199_9

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc6GCHeap17RemoveOOMCallbackEPNS_11OOMCallbackE
	.align	2
__ZN4MMgc6GCHeap17RemoveOOMCallbackEPNS_11OOMCallbackE:
Leh_func_begin127:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r5, r0
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r4, r1
	add	r7, sp, #12
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #154, 28
	mov	r1, r4
	bl	__ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE6RemoveES2_
	mov	r0, r6
	bl	_OSSpinLockUnlock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end127:

	.globl	__ZN4MMgc6GCHeap8SafeSizeEPKv
	.align	2
__ZN4MMgc6GCHeap8SafeSizeEPKv:
Leh_func_begin128:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r5, r0
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r4, r1
	add	r7, sp, #12
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #4
	mov	r1, r0
	b	LBB201_3
LBB201_1:
	ldr	r2, [r1, #+4]
	cmp	r2, r4
	bhi	LBB201_3
	ldr	r3, [r1, #+8]
	cmp	r3, r4
	bhi	LBB201_5
LBB201_3:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB201_1
LBB201_4:
	mov	r1, r0
	b	LBB201_13
LBB201_5:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	beq	LBB201_4
	sub	r3, r4, r2
	mov	r12, #24
	ldr	r9, [r5, #+1516]
	add	r3, r1, r3, lsr #12
	mla	r12, r3, r12, r9
	ldr	r12, [r12, #+4]
	cmp	r12, #0
	bne	LBB201_9
	sub	r3, r4, r2
	mov	r2, #24
	add	r3, r1, r3, lsr #12
	mla	r1, r3, r2, r9
	sub	r1, r1, #20
LBB201_8:
	ldr	r2, [r1], #-24
	sub	r3, r3, #1
	cmp	r2, #0
	beq	LBB201_8
LBB201_9:
	mov	r1, #24
	mla	r1, r3, r1, r9
	cmp	r1, #0
	beq	LBB201_4
	mov	r0, #24
	mla	r0, r3, r0, r9
	ldr	r4, [r0, #+4]
	b	LBB201_21
LBB201_11:
	ldr	r2, [r1, #+4]
	cmp	r2, r4
	bhi	LBB201_13
	ldr	r2, [r1, #+8]
	cmp	r2, r4
	bhi	LBB201_15
LBB201_13:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB201_11
LBB201_14:
	mvn	r4, #0
	b	LBB201_21
LBB201_15:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	bne	LBB201_14
	b	LBB201_18
LBB201_16:
	ldr	r1, [r0, #+4]
	cmp	r1, r4
	bhi	LBB201_18
	ldr	r1, [r0, #+8]
	cmp	r1, r4
	bhi	LBB201_20
LBB201_18:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB201_16
	mov	r0, #0
LBB201_20:
	ldr	r0, [r0, #+12]
	sub	r4, r0, r4
	mov	r4, r4, lsr #12
LBB201_21:
	mov	r0, r6
	bl	_OSSpinLockUnlock
	mov	r0, r4
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end128:

	.globl	__ZN4MMgc6GCHeap15IsAddressInHeapEPv
	.align	2
__ZN4MMgc6GCHeap15IsAddressInHeapEPv:
Leh_func_begin129:
	stmfd	sp!, {r7, lr}
	ldr	r2, LCPI202_0
	and	r1, r1, r2
	mov	r7, sp
	bl	__ZN4MMgc6GCHeap8SafeSizeEPKv
	cmn	r0, #1
	mov	r0, #0
	movne	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI202_0:
 	.long	4294963200

Leh_func_end129:

	.globl	__ZN4MMgc9GCManager7destroyEv
	.align	2
__ZN4MMgc9GCManager7destroyEv:
	stmfd	sp!, {r4, r7, lr}
	ldr	r1, [r0, #+8]
	add	r7, sp, #4
	mov	r4, r0
	cmp	r1, #0
	beq	LBB203_2
	mov	r0, r1
	bl	_free
	mov	r0, #0
	str	r0, [r4, #+8]
LBB203_2:
	mov	r0, #0
	str	r0, [r4, #+12]
	str	r0, [r4, #+4]
	str	r0, [r4]
	strb	r0, [r4, #+16]
	str	r0, [r4, #+20]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}

	.globl	__ZN4MMgc6GCHeap8RemoveGCEPNS_2GCE
	.align	2
__ZN4MMgc6GCHeap8RemoveGCEPNS_2GCE:
Leh_func_begin130:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r5, r0
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r4, r1
	add	r7, sp, #12
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #98, 30
	mov	r1, r4
	add	r0, r0, #2, 22
	bl	__ZN4MMgc9BasicListIPNS_2GCELi4EE6RemoveES2_
	ldr	r0, [r5, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB204_2
	ldr	r1, [r0, #+120]
	cmp	r1, r4
	moveq	r1, #0
	streq	r1, [r0, #+120]
LBB204_2:
	mov	r0, r6
	bl	_OSSpinLockUnlock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end130:

	.globl	__ZN4MMgc6GCHeap14ShouldNotEnterEv
	.align	2
__ZN4MMgc6GCHeap14ShouldNotEnterEv:
Leh_func_begin131:
	stmfd	sp!, {r4, r7, lr}
	ldr	r0, LCPI205_0
	add	r7, sp, #4
	ldr	r0, [r0]
	ldr	r4, [r0]
	cmp	r4, #0
	beq	LBB205_3
	ldr	r0, [r4, #+2496]
	cmp	r0, #3
	movne	r0, #0
	subne	sp, r7, #4
	ldmfdne	sp!, {r4, r7, pc}
	ldr	r0, [r4, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB205_3
	ldr	r0, [r4, #+2492]
	bl	_pthread_getspecific
	ldrb	r1, [r0, #+132]
	mov	r0, #0
	cmp	r1, #0
	movne	r0, #1
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
LBB205_3:
	mov	r0, #1
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI205_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end131:

	.globl	__ZN4MMgc17SuspendEnterFrameC1Ev
	.align	2
__ZN4MMgc17SuspendEnterFrameC1Ev:
Leh_func_begin132:
	stmfd	sp!, {r4, r7, lr}
	mov	r4, r0
	ldr	r0, LCPI206_0
	mov	r1, #0
	str	r1, [r4]
	add	r7, sp, #4
	ldr	r0, [r0]
	ldr	r0, [r0]
	cmp	r0, #0
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	movne	r1, #1
	strbne	r1, [r0, #+132]
	strne	r0, [r4]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI206_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end132:

	.globl	__ZN4MMgc17SuspendEnterFrameC2Ev
	.align	2
__ZN4MMgc17SuspendEnterFrameC2Ev:
Leh_func_begin133:
	stmfd	sp!, {r4, r7, lr}
	mov	r4, r0
	ldr	r0, LCPI207_0
	mov	r1, #0
	str	r1, [r4]
	add	r7, sp, #4
	ldr	r0, [r0]
	ldr	r0, [r0]
	cmp	r0, #0
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	movne	r1, #1
	strbne	r1, [r0, #+132]
	strne	r0, [r4]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI207_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end133:

	.globl	__ZN4MMgc9GCManager19signalEndCollectionEPNS_2GCE
	.align	2
__ZN4MMgc9GCManager19signalEndCollectionEPNS_2GCE:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	ldr	r3, [r0, #+12]
	add	r9, r3, #1
	ldr	r2, [r0, #+20]
	str	r9, [r0, #+12]
	rsb	r12, r2, #0
	mov	lr, #0
	mov	r1, r2
	add	r9, r0, #4
LBB208_1:
	tst	lr, #255
	beq	LBB208_3
	mov	r4, #0
	b	LBB208_21
LBB208_3:
	cmp	r1, r2
	bhs	LBB208_8
	ldr	r4, [r0, #+8]
	add	r5, r4, r1, lsl #2
	add	r1, r1, #1
LBB208_5:
	add	r6, r1, #1
	ldr	r4, [r5], #+4
	cmp	r1, r2
	bhs	LBB208_20
	cmp	r4, #0
	bne	LBB208_20
	mov	r1, r6
	b	LBB208_5
LBB208_8:
	ldrb	r5, [r0, #+16]
	cmp	r5, #0
	bne	LBB208_14
	ldr	r6, [r0]
	cmp	r1, r6
	blo	LBB208_11
LBB208_10:
	mov	r4, #0
	b	LBB208_18
LBB208_11:
	ldr	r8, [r0, #+8]
LBB208_12:
	ldr	r4, [r8, +r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, r6
	bhs	LBB208_18
	cmp	r4, #0
	beq	LBB208_12
	b	LBB208_18
LBB208_14:
	ldr	r6, [r9]
	cmp	r1, r6
	bhs	LBB208_10
	ldr	r8, [r0, #+8]
LBB208_16:
	ldr	r4, [r8, +r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, r6
	bhs	LBB208_18
	cmp	r4, #0
	beq	LBB208_16
LBB208_18:
	cmp	r5, #0
	mov	r6, r9
	moveq	r6, r0
	ldr	r5, [r6]
	cmp	r1, r5
	bne	LBB208_21
	cmp	r2, #0
	movne	r1, #0
	b	LBB208_21
LBB208_20:
	add	r5, r12, r6
	sub	r1, r6, #1
	cmp	r5, #1
	moveq	lr, #1
LBB208_21:
	cmp	r4, #0
	bne	LBB208_1
	str	r3, [r0, #+12]
	ldrb	r1, [r0, #+16]
	cmp	r1, #0
	beq	LBB208_31
	cmp	r3, #0
	ldrne	r8, [sp], #+4
	ldmfdne	sp!, {r4, r5, r6, r7, pc}
	mov	r2, #0
	mov	r1, #1
	mov	r3, #0
	b	LBB208_28
LBB208_24:
	ldr	lr, [r0, #+8]
	ldr	r4, [lr, +r3, lsl #2]
	cmp	r4, #0
	bne	LBB208_27
	ldr	r4, [lr, +r1, lsl #2]
	cmp	r4, #0
	beq	LBB208_32
	ldr	r12, [r0, #+20]
	cmp	r1, r12
	streq	r3, [r0, #+20]
	ldreq	r4, [lr, +r1, lsl #2]
	str	r4, [lr, +r3, lsl #2]
	ldr	r12, [r0, #+8]
	str	r2, [r12, +r1, lsl #2]
LBB208_27:
	add	r1, r1, #1
	add	r3, r3, #1
LBB208_28:
	ldr	r12, [r9]
LBB208_29:
	cmp	r12, r1
	bhi	LBB208_24
	mov	r1, #0
	strb	r1, [r0, #+16]
LBB208_31:
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB208_32:
	add	r1, r1, #1
	b	LBB208_29

	.globl	__ZN4MMgc9GCManager21signalStartCollectionEPNS_2GCE
	.align	2
__ZN4MMgc9GCManager21signalStartCollectionEPNS_2GCE:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	ldr	r3, [r0, #+12]
	add	r9, r3, #1
	ldr	r2, [r0, #+20]
	str	r9, [r0, #+12]
	rsb	r12, r2, #0
	mov	lr, #0
	mov	r1, r2
	add	r9, r0, #4
LBB209_1:
	tst	lr, #255
	beq	LBB209_3
	mov	r4, #0
	b	LBB209_21
LBB209_3:
	cmp	r1, r2
	bhs	LBB209_8
	ldr	r4, [r0, #+8]
	add	r5, r4, r1, lsl #2
	add	r1, r1, #1
LBB209_5:
	add	r6, r1, #1
	ldr	r4, [r5], #+4
	cmp	r1, r2
	bhs	LBB209_20
	cmp	r4, #0
	bne	LBB209_20
	mov	r1, r6
	b	LBB209_5
LBB209_8:
	ldrb	r5, [r0, #+16]
	cmp	r5, #0
	bne	LBB209_14
	ldr	r6, [r0]
	cmp	r1, r6
	blo	LBB209_11
LBB209_10:
	mov	r4, #0
	b	LBB209_18
LBB209_11:
	ldr	r8, [r0, #+8]
LBB209_12:
	ldr	r4, [r8, +r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, r6
	bhs	LBB209_18
	cmp	r4, #0
	beq	LBB209_12
	b	LBB209_18
LBB209_14:
	ldr	r6, [r9]
	cmp	r1, r6
	bhs	LBB209_10
	ldr	r8, [r0, #+8]
LBB209_16:
	ldr	r4, [r8, +r1, lsl #2]
	add	r1, r1, #1
	cmp	r1, r6
	bhs	LBB209_18
	cmp	r4, #0
	beq	LBB209_16
LBB209_18:
	cmp	r5, #0
	mov	r6, r9
	moveq	r6, r0
	ldr	r5, [r6]
	cmp	r1, r5
	bne	LBB209_21
	cmp	r2, #0
	movne	r1, #0
	b	LBB209_21
LBB209_20:
	add	r5, r12, r6
	sub	r1, r6, #1
	cmp	r5, #1
	moveq	lr, #1
LBB209_21:
	cmp	r4, #0
	bne	LBB209_1
	str	r3, [r0, #+12]
	ldrb	r1, [r0, #+16]
	cmp	r1, #0
	beq	LBB209_31
	cmp	r3, #0
	ldrne	r8, [sp], #+4
	ldmfdne	sp!, {r4, r5, r6, r7, pc}
	mov	r2, #0
	mov	r1, #1
	mov	r3, #0
	b	LBB209_28
LBB209_24:
	ldr	lr, [r0, #+8]
	ldr	r4, [lr, +r3, lsl #2]
	cmp	r4, #0
	bne	LBB209_27
	ldr	r4, [lr, +r1, lsl #2]
	cmp	r4, #0
	beq	LBB209_32
	ldr	r12, [r0, #+20]
	cmp	r1, r12
	streq	r3, [r0, #+20]
	ldreq	r4, [lr, +r1, lsl #2]
	str	r4, [lr, +r3, lsl #2]
	ldr	r12, [r0, #+8]
	str	r2, [r12, +r1, lsl #2]
LBB209_27:
	add	r1, r1, #1
	add	r3, r3, #1
LBB209_28:
	ldr	r12, [r9]
LBB209_29:
	cmp	r12, r1
	bhi	LBB209_24
	mov	r1, #0
	strb	r1, [r0, #+16]
LBB209_31:
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB209_32:
	add	r1, r1, #1
	b	LBB209_29

	.globl	__ZN4MMgc6GCHeap13ReleaseMemoryEPcm
	.align	2
__ZN4MMgc6GCHeap13ReleaseMemoryEPcm:
Leh_func_begin134:
	stmfd	sp!, {r7, lr}
	ldrb	r0, [r0, #+2292]
	mov	r7, sp
	cmp	r0, #0
	beq	LBB210_2
	mov	r0, r1
	mov	r1, r2
	bl	_munmap
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
LBB210_2:
	mov	r0, r1
	bl	_free
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end134:

	.globl	__ZN4MMgc6GCHeap7FreeAllEv
	.align	2
__ZN4MMgc6GCHeap7FreeAllEv:
Leh_func_begin135:
	stmfd	sp!, {r4, r7, lr}
	ldr	r2, [r0, #+4]
	add	r7, sp, #4
	cmp	r2, #0
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	mov	r4, r0
LBB211_1:
	ldr	r0, [r2]
	str	r0, [r4, #+4]
	ldmib	r2, {r0, r1}
	ldr	r2, [r2, #+16]
	cmn	r2, #1
	sub	r1, r1, r0
	bne	LBB211_5
LBB211_2:
	bl	_munmap
LBB211_3:
	ldr	r2, [r4, #+4]
	cmp	r2, #0
	bne	LBB211_1
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
LBB211_5:
	ldrb	r2, [r4, #+2292]
	cmp	r2, #0
	bne	LBB211_2
	bl	_free
	b	LBB211_3
Leh_func_end135:

	.globl	__ZN4MMgc6GCHeap7LogCharEcm
	.align	2
__ZN4MMgc6GCHeap7LogCharEcm:
Leh_func_begin136:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	sub	sp, sp, #100
	mov	r4, r2
	mov	r5, r1
	cmp	r2, #99
	bhi	LBB212_2
	mov	r0, sp
	b	LBB212_3
LBB212_2:
	add	r0, r4, #1
	bl	_malloc
LBB212_3:
	mov	r6, r0
	cmp	r6, #0
	beq	LBB212_5
	uxtb	r1, r5
	mov	r0, r6
	mov	r2, r4
	bl	_memset
	mov	r0, #0
	strb	r0, [r6, +r4]
	mov	r0, r6
	bl	__ZN4MMgc5GCLogEPKcz
	mov	r0, sp
	cmp	r0, r6
	subeq	sp, r7, #12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	mov	r0, r6
	bl	_free
LBB212_5:
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end136:

	.globl	__ZN4MMgc6GCHeap14log_percentageEPKcmm
	.align	2
__ZN4MMgc6GCHeap14log_percentageEPKcmm:
Leh_func_begin137:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	sub	sp, sp, #8
	vmov	s0, r2
	vldr.64	d1, LCPI213_0
	vmov	s4, r3
	mov	r9, r2, lsr #12
	cmp	r2, #1, 12
	vcvt.f64.u32	d0, s0
	vmul.f64	d1, d0, d1
	vcvt.f64.u32	d2, s4
	vdiv.f64	d1, d1, d2
	ftouizd	s2, d1
	vmov	r3, s2
	ldrls	r0, LCPI213_3
	strls	r3, [sp]
	movls	r3, r2, lsr #10
	movls	r2, r9
	ldrls	r0, [r0]
	ldrhi	r0, LCPI213_2
	vldrhi.64	d1, LCPI213_1
	strhi	r3, [sp, #+4]
	vmulhi.f64	d0, d0, d1
	vmovhi	r3, r2, d0
	strhi	r2, [sp]
	ldrhi	r0, [r0]
	movhi	r2, r9
	bl	__ZN4MMgc5GCLogEPKcz
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI213_0:
 	.long	0
	.long	1079574528

	.align	2
	LCPI213_1:
 	.long	0
	.long	1051721728

	.align	2
	LCPI213_2:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI213_3:
 	.long	L_.str1392968$non_lazy_ptr

Leh_func_end137:

	.globl	__ZN4MMgc6GCHeap11DumpHeapRepEv
	.align	2
__ZN4MMgc6GCHeap11DumpHeapRepEv:
Leh_func_begin138:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #128
	str	r0, [sp, #+24]
	ldr	r4, [r0, #+4]!
	str	r0, [sp, #+20]
	ldr	r0, LCPI214_0
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, LCPI214_1
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, LCPI214_2
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	cmp	r4, #0
	beq	LBB214_52
	mov	r0, #0
	str	r0, [sp]
LBB214_2:
	ldr	r0, [sp]
	ldr	r4, [r4]
	cmp	r4, #0
	add	r0, r0, #1
	str	r0, [sp]
	bne	LBB214_2
LBB214_3:
	ldr	r0, [sp]
	mov	r0, r0, lsl #2
	bl	_malloc
	cmp	r0, #0
	beq	LBB214_51
	str	r0, [sp, #+4]
	ldr	r0, [sp]
	cmp	r0, #1
	blt	LBB214_50
	mov	r4, #0
	ldr	r5, [sp, #+20]
	mov	r6, r4
	b	LBB214_11
LBB214_6:
	ldr	r2, [sp, #+4]
	ldr	r3, [r5, #+4]
	sub	r9, r0, #4
	sub	r1, r1, #4
	ldr	r2, [r2, +r8, lsl #2]
	add	r8, r8, #1
	ldr	r2, [r2, #+4]
	cmp	r3, r2
	blo	LBB214_53
	mov	r0, r9
LBB214_8:
	cmp	r8, r6
	blt	LBB214_6
	mov	r0, r6
LBB214_10:
	ldr	r1, [sp, #+4]
	str	r5, [r1, +r0, lsl #2]
	add	r4, r4, #4
	add	r6, r6, #1
	ldr	r0, [sp]
	cmp	r0, r6
	beq	LBB214_12
LBB214_11:
	mov	r0, #0
	ldr	r5, [r5]
	mov	r1, #4
	mov	r8, r0
	b	LBB214_8
LBB214_12:
	cmp	r0, #1
	blt	LBB214_50
	ldr	r0, LCPI214_3
	mov	r4, #0
	ldr	r0, [r0]
	str	r0, [sp, #+16]
	ldr	r0, LCPI214_4
	ldr	r0, [r0]
	str	r0, [sp, #+12]
	mov	r0, r1
	str	r0, [sp, #+8]
LBB214_14:
	ldr	r0, [sp, #+8]
	ldr	r5, [r0]
	ldmib	r5, {r1, r3}
	ldr	r2, [r5, #+12]
	ldr	r0, [sp, #+16]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r6, [r5, #+4]
	cmp	r4, #0
	beq	LBB214_37
	ldr	r0, [r4, #+12]
	mov	r8, #48
	cmp	r0, #0
	moveq	r8, #49
	ldr	r0, [r4, #+4]
	ldr	r1, [r4]
	add	r10, r1, r0, lsl #12
	ldr	r0, [r5, #+8]
	cmp	r0, r10
	movlo	r10, r0
	sub	r6, r10, r6
	mov	r6, r6, lsr #12
	cmp	r6, #99
	bhi	LBB214_17
	add	r11, sp, #28
	b	LBB214_18
LBB214_17:
	add	r0, r6, #1
	bl	_malloc
	mov	r11, r0
LBB214_18:
	cmp	r11, #0
	beq	LBB214_21
	uxtb	r1, r8
	mov	r0, r11
	mov	r2, r6
	bl	_memset
	mov	r0, #0
	strb	r0, [r11, +r6]
	add	r6, sp, #28
	mov	r0, r11
	bl	__ZN4MMgc5GCLogEPKcz
	cmp	r6, r11
	beq	LBB214_21
	mov	r0, r11
	bl	_free
LBB214_21:
	ldmia	r4, {r0, r6}
	add	r6, r0, r6, lsl #12
	cmp	r6, r10
	movne	r6, r10
	moveq	r4, #0
	moveq	r6, r10
	b	LBB214_37
LBB214_22:
	mov	r2, #24
	mla	r2, r1, r2, r0
	ldr	r2, [r2, #+12]
	cmp	r2, #0
	bne	LBB214_24
	mov	r10, #49
	b	LBB214_25
LBB214_24:
	mov	r10, #24
	mla	r10, r1, r10, r0
	ldrb	r10, [r10, #+20]
	cmp	r10, #0
	moveq	r10, #45
	movne	r10, #48
LBB214_25:
	mov	r2, #24
	mla	r0, r1, r2, r0
	sub	r1, r6, #1, 20
	ldr	r0, [r0, #+4]
	mov	r2, #0
	b	LBB214_27
LBB214_26:
	ldr	r3, [r5, #+8]
	add	r1, r1, #1, 20
	add	r2, r11, #1
	cmp	r1, r3
	beq	LBB214_29
LBB214_27:
	mov	r11, r2
	add	r6, r1, #1, 20
	cmp	r11, r0
	blo	LBB214_26
	mov	r8, r4
LBB214_29:
	cmp	r11, #99
	bhi	LBB214_31
	add	r4, sp, #28
	b	LBB214_32
LBB214_31:
	add	r0, r11, #1
	bl	_malloc
	mov	r4, r0
LBB214_32:
	cmp	r4, #0
	bne	LBB214_34
	mov	r4, r8
	b	LBB214_37
LBB214_34:
	uxtb	r1, r10
	mov	r0, r4
	mov	r2, r11
	bl	_memset
	mov	r0, #0
	strb	r0, [r4, +r11]
	mov	r0, r4
	bl	__ZN4MMgc5GCLogEPKcz
	add	r0, sp, #28
	cmp	r0, r4
	bne	LBB214_36
	mov	r4, r8
	b	LBB214_37
LBB214_36:
	mov	r0, r4
	mov	r4, r8
	bl	_free
LBB214_37:
	ldr	r0, [r5, #+12]
	cmp	r0, r6
	beq	LBB214_43
	ldr	r0, [sp, #+20]
	b	LBB214_41
LBB214_39:
	ldr	r1, [r0, #+4]
	cmp	r1, r6
	bhi	LBB214_41
	ldr	r8, [r0, #+8]
	cmp	r8, r6
	bhi	LBB214_42
LBB214_41:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB214_39
	b	LBB214_43
LBB214_42:
	ldr	r0, [r0, #+16]
	cmn	r0, #1
	subne	r1, r6, r1
	movne	r8, #24
	ldrne	r2, [sp, #+24]
	addne	r1, r0, r1, lsr #12
	ldrne	r0, [r2, #+1516]
	mlane	r8, r1, r8, r0
	cmpne	r8, #0
	bne	LBB214_22
LBB214_43:
	ldr	r0, [r5, #+8]
	sub	r0, r0, r6
	mov	r5, r0, lsr #12
	cmp	r5, #99
	bhi	LBB214_45
	add	r6, sp, #28
	b	LBB214_46
LBB214_45:
	add	r0, r5, #1
	bl	_malloc
	mov	r6, r0
LBB214_46:
	cmp	r6, #0
	beq	LBB214_49
	mov	r0, r6
	mov	r1, #45
	mov	r2, r5
	bl	_memset
	mov	r0, #0
	strb	r0, [r6, +r5]
	mov	r0, r6
	bl	__ZN4MMgc5GCLogEPKcz
	add	r0, sp, #28
	cmp	r0, r6
	beq	LBB214_49
	mov	r0, r6
	bl	_free
LBB214_49:
	ldr	r0, [sp, #+12]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+8]
	add	r0, r0, #4
	str	r0, [sp, #+8]
	ldr	r0, [sp]
	sub	r0, r0, #1
	str	r0, [sp]
	cmp	r0, #0
	bne	LBB214_14
LBB214_50:
	ldr	r0, [sp, #+4]
	bl	_free
LBB214_51:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB214_52:
	mov	r4, #0
	str	r4, [sp]
	b	LBB214_3
LBB214_53:
	ldr	r3, [sp, #+4]
	add	r2, r4, r0
	sub	r1, r3, r1
	add	r0, r1, #4
	bl	_memmove
	sub	r0, r8, #1
	b	LBB214_10
	.align	2
	LCPI214_0:
 	.long	L_.str2402969$non_lazy_ptr

	.align	2
	LCPI214_1:
 	.long	L_.str3412970$non_lazy_ptr

	.align	2
	LCPI214_2:
 	.long	L_.str4422971$non_lazy_ptr

	.align	2
	LCPI214_3:
 	.long	L_.str5432972$non_lazy_ptr

	.align	2
	LCPI214_4:
 	.long	L_.str287$non_lazy_ptr

Leh_func_end138:

	.globl	__ZN4MMgc6GCHeap12RemoveRegionEPNS0_6RegionEb
	.align	2
__ZN4MMgc6GCHeap12RemoveRegionEPNS0_6RegionEb:
Leh_func_begin139:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r4, r0
	add	r7, sp, #12
	mov	r5, r1
	mov	r6, r0
	ldr	r3, [r4, #+4]!
	cmp	r3, r1
	bne	LBB215_2
	mov	r0, r4
	b	LBB215_3
LBB215_2:
	mov	r0, r3
	ldr	r3, [r0]
	cmp	r3, r5
	bne	LBB215_2
LBB215_3:
	ldr	r1, [r5]
	str	r1, [r0]
	cmp	r2, #0
	beq	LBB215_7
	ldrb	r1, [r6, #+2292]
	ldr	r0, [r5, #+4]
	cmp	r1, #0
	beq	LBB215_6
	ldr	r1, [r5, #+8]
	sub	r1, r1, r0
	bl	_munmap
	b	LBB215_7
LBB215_6:
	bl	_free
LBB215_7:
	ldrb	r0, [r6, #+2296]
	cmp	r0, #0
	beq	LBB215_9
	ldr	r0, LCPI215_0
	ldmib	r5, {r1, r2, r3}
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	mov	r0, r6
	bl	__ZN4MMgc6GCHeap11DumpHeapRepEv
LBB215_9:
	ldr	r0, [r4]
	cmp	r0, r5
	ldreq	r0, [r5]
	streq	r0, [r4]
	ldr	r0, [r6, #+1508]
	str	r0, [r5]
	str	r5, [r6, #+1508]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI215_0:
 	.long	L_.str7452974$non_lazy_ptr

Leh_func_end139:

	.globl	__ZN4MMgc6GCHeap9LargeFreeEPKv
	.align	2
__ZN4MMgc6GCHeap9LargeFreeEPKv:
Leh_func_begin140:
	stmfd	sp!, {r4, r5, r7, lr}
	add	r7, sp, #8
	add	r4, r0, #4
	mov	r5, r0
	mov	r0, r4
	b	LBB216_3
LBB216_1:
	ldr	r2, [r0, #+4]
	cmp	r2, r1
	bhi	LBB216_3
	ldr	r2, [r0, #+8]
	cmp	r2, r1
	bhi	LBB216_5
LBB216_3:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB216_1
	mov	r0, #0
LBB216_5:
	ldr	r0, [r0, #+12]
	ldr	r2, [r5, #+2520]
	sub	r0, r0, r1
	sub	r0, r2, r0, lsr #12
	str	r0, [r5, #+2520]
	b	LBB216_8
LBB216_6:
	ldr	r0, [r4, #+4]
	cmp	r0, r1
	bhi	LBB216_8
	ldr	r2, [r4, #+8]
	cmp	r2, r1
	bhi	LBB216_10
LBB216_8:
	ldr	r4, [r4]
	cmp	r4, #0
	bne	LBB216_6
	mov	r2, #8
	mov	r4, #4
	ldr	r0, [r4]
	ldr	r2, [r2]
	mov	r4, #0
LBB216_10:
	sub	r1, r2, r0
	bl	_munmap
	mov	r2, #0
	mov	r0, r5
	mov	r1, r4
	bl	__ZN4MMgc6GCHeap12RemoveRegionEPNS0_6RegionEb
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end140:

	.globl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	.align	2
__ZN4MMgc6GCHeap12FreeInternalEPKvbb:
Leh_func_begin141:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r6, r0
	add	r0, r6, #220
	add	r8, r0, #2, 22
	mov	r4, r3
	mov	r5, r1
	add	r10, r6, #4
	mov	r0, r8
	bl	_OSSpinLockLock
	mov	r0, #0
	cmp	r4, #0
	mov	r1, #0
	moveq	r1, #1
	ldrb	r4, [r6, #+2508]
	cmp	r4, #0
	moveq	r0, #1
	orr	r0, r0, r1
	eor	r0, r0, #1
	strb	r0, [r6, #+2508]
	mov	r0, r10
	b	LBB217_3
LBB217_1:
	ldr	r1, [r0, #+4]
	cmp	r1, r5
	bhi	LBB217_3
	ldr	r2, [r0, #+8]
	cmp	r2, r5
	bhi	LBB217_5
LBB217_3:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB217_1
LBB217_4:
	mov	r1, #0
	mov	r0, r10
	b	LBB217_10
LBB217_5:
	ldr	r0, [r0, #+16]
	cmn	r0, #1
	beq	LBB217_4
	sub	r1, r5, r1
	add	r0, r0, r1, lsr #12
	ldr	r2, [r6, #+1516]
	mov	r1, #24
	mla	r1, r0, r1, r2
	cmp	r1, #0
	bne	LBB217_13
	mov	r0, r10
	b	LBB217_10
LBB217_8:
	ldr	r2, [r0, #+4]
	cmp	r2, r5
	bhi	LBB217_10
	ldr	r2, [r0, #+8]
	cmp	r2, r5
	bhi	LBB217_12
LBB217_10:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB217_8
	mov	r0, #0
LBB217_12:
	ldr	r0, [r0, #+12]
	sub	r0, r0, r5
	mov	r0, r0, lsr #12
	b	LBB217_14
LBB217_13:
	mov	r3, #24
	mla	r0, r0, r3, r2
	ldr	r0, [r0, #+4]
LBB217_14:
	ldr	r2, [r6, #+2252]
	sub	r0, r2, r0
	str	r0, [r6, #+2252]
	cmp	r1, #0
	bne	LBB217_16
	mov	r0, r10
	b	LBB217_19
LBB217_16:
	mov	r2, #1
	mov	r0, r6
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
	b	LBB217_27
LBB217_17:
	ldr	r1, [r0, #+4]
	cmp	r1, r5
	bhi	LBB217_19
	ldr	r1, [r0, #+8]
	cmp	r1, r5
	bhi	LBB217_21
LBB217_19:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB217_17
	mov	r0, #0
LBB217_21:
	ldr	r0, [r0, #+12]
	ldr	r1, [r6, #+2520]
	sub	r0, r0, r5
	sub	r0, r1, r0, lsr #12
	str	r0, [r6, #+2520]
	b	LBB217_24
LBB217_22:
	ldr	r0, [r10, #+4]
	cmp	r0, r5
	bhi	LBB217_24
	ldr	r1, [r10, #+8]
	cmp	r1, r5
	bhi	LBB217_26
LBB217_24:
	ldr	r10, [r10]
	cmp	r10, #0
	bne	LBB217_22
	mov	r1, #8
	mov	r10, #4
	ldr	r0, [r10]
	ldr	r1, [r1]
	mov	r10, #0
LBB217_26:
	sub	r1, r1, r0
	bl	_munmap
	mov	r2, #0
	mov	r0, r6
	mov	r1, r10
	bl	__ZN4MMgc6GCHeap12RemoveRegionEPNS0_6RegionEb
LBB217_27:
	mov	r0, r8
	strb	r4, [r6, #+2508]
	bl	_OSSpinLockUnlock
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end141:

	.globl	__ZN4MMgc6GCHeap11RemoveBlockEPNS0_9HeapBlockEb
	.align	2
__ZN4MMgc6GCHeap11RemoveBlockEPNS0_9HeapBlockEb:
Leh_func_begin142:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #16
	add	r3, r0, #4
	str	r3, [sp, #+8]
	ldr	r9, [r1]
	str	r2, [sp, #+12]
	mov	r4, r1
	mov	r5, r0
	mov	r6, r3
	b	LBB218_3
LBB218_1:
	ldr	r0, [r6, #+4]
	cmp	r0, r9
	bhi	LBB218_3
	ldr	r0, [r6, #+8]
	cmp	r0, r9
	bhi	LBB218_5
LBB218_3:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	LBB218_1
	mov	r6, #0
LBB218_5:
	mov	r2, #24
	ldr	r1, [r4, #+4]
	ldr	r0, [r4, #+8]
	str	r1, [sp]
	ldr	r3, [r5, #+1520]
	cmp	r0, #0
	mla	r2, r1, r2, r4
	sub	r1, r3, r1
	ldr	r2, [r2, #+4]
	beq	LBB218_8
	cmp	r2, #0
	bne	LBB218_9
	orr	r2, r2, r0
LBB218_8:
	cmp	r2, #0
	moveq	r2, #1
	movne	r2, #0
	mov	r3, #24
	ldr	r9, [sp]
	tst	r2, #255
	mla	r3, r9, r3, r4
	str	r0, [r3, #+8]
	mov	r0, #1
	sub	r3, r1, #1
	moveq	r3, r1
	str	r3, [sp, #+4]
	b	LBB218_10
LBB218_9:
	mov	r0, #24
	ldr	r2, [sp]
	mla	r0, r2, r0, r4
	mov	r2, #0
	str	r2, [r0, #+8]
	add	r0, r1, #1
	str	r0, [sp, #+4]
	mov	r0, r2
LBB218_10:
	mov	r1, #24
	ldr	r3, [sp]
	ldr	r8, [r5, #+1516]
	sub	r12, r4, r8
	ldr	r9, LCPI218_0
	cmp	r0, #0
	mla	r1, r3, r1, r4
	smmla	r3, r12, r9, r12
	mov	r9, r3, asr #4
	add	r3, r9, r3, lsr #31
	bne	LBB218_25
	mov	r2, #24
	mov	r9, r8
	mov	r0, #0
	mov	r10, #1
	mul	r2, r3, r2
	str	r0, [r9, +r2]!
	str	r0, [r9, #+4]
	add	r3, r3, #1
	ldr	r2, [r4, #+8]
	str	r2, [r9, #+8]
	str	r0, [r9, #+12]
	str	r0, [r9, #+16]
	ldr	r2, [r5, #+1516]
LBB218_12:
	mov	r11, #24
	mla	r0, r3, r11, r8
	ldr	r3, [r5, #+1520]
	mla	r2, r3, r11, r2
	sub	r2, r2, r1
	bl	_memmove
	ldr	r0, [sp]
	sub	r2, r10, r0
	mov	r10, #30
	add	r0, r5, #127, 30
	add	r0, r0, #1, 22
LBB218_13:
	mov	r3, r0
LBB218_14:
	ldr	r1, [r3, #+12]
	cmp	r0, r1
	beq	LBB218_16
	cmp	r1, r4
	ldrhi	r9, [r5, #+1516]
	subhi	r1, r1, r9
	ldrhi	r9, LCPI218_0
	smmlahi	r1, r1, r9, r1
	movhi	r9, r1, asr #4
	addhi	r1, r9, r1, lsr #31
	addhi	r1, r1, r2
	mlahi	r1, r1, r11, r8
	strhi	r1, [r3, #+12]
LBB218_16:
	ldr	r1, [r3, #+16]
	cmp	r0, r1
	beq	LBB218_18
	cmp	r1, r4
	ldrhi	r9, [r5, #+1516]
	subhi	r1, r1, r9
	ldrhi	r9, LCPI218_0
	smmlahi	r1, r1, r9, r1
	movhi	r9, r1, asr #4
	addhi	r1, r9, r1, lsr #31
	addhi	r1, r1, r2
	mlahi	r1, r1, r11, r8
	strhi	r1, [r3, #+16]
LBB218_18:
	mov	r3, r1
	cmp	r0, r3
	bne	LBB218_14
	sub	r10, r10, #1
	add	r0, r0, #24
	cmp	r10, #0
	bne	LBB218_13
	ldr	r0, [sp, #+8]
LBB218_21:
	ldr	r0, [r0]
	cmp	r0, #0
	beq	LBB218_24
	ldr	r1, [r6, #+16]
	ldr	r3, [r0, #+16]
	cmp	r3, r1
	bls	LBB218_21
	cmn	r3, #1
	addne	r1, r3, r2
	strne	r1, [r0, #+16]
	b	LBB218_21
LBB218_24:
	ldr	r0, [sp, #+4]
	str	r0, [r5, #+1520]
	mov	r1, r6
	ldr	r2, [sp, #+12]
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap12RemoveRegionEPNS0_6RegionEb
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB218_25:
	tst	r2, #255
	moveq	r10, #0
	movne	r2, #24
	ldrne	r10, [sp]
	mlane	r2, r10, r2, r4
	addne	r1, r2, #24
	mvnne	r10, #0
	mov	r2, r8
	b	LBB218_12
	.align	2
	LCPI218_0:
 	.long	2863311531

Leh_func_end142:

	.globl	__ZN4MMgc6GCHeap15RemoveLostBlockEPNS0_9HeapBlockE
	.align	2
__ZN4MMgc6GCHeap15RemoveLostBlockEPNS0_9HeapBlockE:
Leh_func_begin143:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #32
	bic	sp, sp, #7
	ldrb	r2, [r0, #+2296]
	mov	r4, r1
	mov	r5, r0
	cmp	r2, #0
	beq	LBB219_2
	ldr	r0, LCPI219_0
	ldmia	r4, {r1, r2}
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap11DumpHeapRepEv
LBB219_2:
	add	r6, r5, #4
	ldr	r0, [r4]
	mov	r1, r6
	b	LBB219_5
LBB219_3:
	ldr	r2, [r1, #+4]
	cmp	r2, r0
	bhi	LBB219_5
	ldr	r3, [r1, #+8]
	cmp	r3, r0
	bhi	LBB219_7
LBB219_5:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB219_3
	mov	r1, #4
	ldr	r2, [r1]
	mov	r1, #0
LBB219_7:
	cmp	r2, r0
	ldreq	r8, [r4, #+4]
	ldreq	r10, [r1, #+8]
	addeq	r8, r0, r8, lsl #12
	cmpeq	r10, r8
	beq	LBB219_9
	mov	r8, #24
	mov	r10, #0
	mov	r1, r4
	mov	r9, r6
	b	LBB219_21
LBB219_9:
	mov	r2, #0
	mov	r0, r5
	mov	r1, r4
	bl	__ZN4MMgc6GCHeap11RemoveBlockEPNS0_9HeapBlockEb
LBB219_10:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB219_11:
	ldr	r3, [r3, #+12]
	ldrb	lr, [r1, #+21]
	sub	r3, r3, r0
	mov	r9, r3, lsr #12
	mla	r12, r9, r8, r1
	str	r10, [r12, #+12]
	str	r10, [r12, #+16]
	ldr	r11, LCPI219_1
	mul	r4, r9, r8
	sub	r2, r2, r3, lsr #12
	and	r11, r3, r11
	add	r11, r0, r11
	str	r11, [r1, +r4]
	str	r2, [r12, #+4]
	mov	r0, #1
	strb	r0, [r12, #+20]
	strb	lr, [r12, #+21]
	str	r9, [r12, #+8]
	ldrb	r0, [r1, #+20]
	strb	r0, [r12, #+20]
	str	r9, [r1, #+4]
	ldr	r0, [r12, #+4]
	add	r2, r0, r3, lsr #12
	mla	r2, r2, r8, r1
	str	r0, [r2, #+8]
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap15RemoveLostBlockEPNS0_9HeapBlockE
	mov	r0, r6
	b	LBB219_14
LBB219_12:
	ldr	r2, [r0, #+4]
	cmp	r2, r11
	bhi	LBB219_14
	ldr	r3, [r0, #+8]
	cmp	r3, r11
	bhi	LBB219_17
LBB219_14:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB219_12
LBB219_15:
	mov	r1, #0
LBB219_16:
	ldr	r0, [r1]
	mov	r9, r6
	b	LBB219_21
LBB219_17:
	ldr	r0, [r0, #+16]
	cmn	r0, #1
	beq	LBB219_15
	sub	r2, r11, r2
	add	r0, r0, r2, lsr #12
	ldr	r2, [r5, #+1516]
	mla	r1, r0, r8, r2
	b	LBB219_16
LBB219_19:
	ldr	r2, [r9, #+4]
	cmp	r2, r0
	bhi	LBB219_21
	ldr	r2, [r9, #+8]
	cmp	r2, r0
	bhi	LBB219_23
LBB219_21:
	ldr	r9, [r9]
	cmp	r9, #0
	bne	LBB219_19
	mov	r9, #0
LBB219_23:
	ldr	r2, [r1, #+4]
	add	r3, r0, r2, lsl #12
	mov	r12, r2, lsl #12
	mov	lr, r6
	sub	r3, r3, #1
	b	LBB219_26
LBB219_24:
	ldr	r4, [lr, #+4]
	cmp	r4, r3
	bhi	LBB219_26
	ldr	r4, [lr, #+8]
	cmp	r4, r3
	bhi	LBB219_28
LBB219_26:
	ldr	lr, [lr]
	cmp	lr, #0
	bne	LBB219_24
	mov	lr, #0
LBB219_28:
	mov	r3, r6
	b	LBB219_31
LBB219_29:
	ldr	r4, [r3, #+4]
	cmp	r4, r0
	bhi	LBB219_31
	ldr	r4, [r3, #+8]
	cmp	r4, r0
	bhi	LBB219_33
LBB219_31:
	ldr	r3, [r3]
	cmp	r3, #0
	bne	LBB219_29
	mov	r3, #0
LBB219_33:
	cmp	r9, lr
	bne	LBB219_11
	ldr	lr, [r3, #+4]
	ldr	r9, [r3, #+16]
	cmp	r0, lr
	addne	r4, r0, r12
	ldrne	r8, [r3, #+12]
	cmpne	r8, r4
	bne	LBB219_37
	cmp	lr, r0
	bne	LBB219_42
	add	r0, r9, r2
	str	r0, [r3, #+16]
	ldr	r12, [r1]
	ldr	r0, [r1, #+4]
	add	r0, r12, r0, lsl #12
	str	r0, [r3, #+4]
	b	LBB219_44
LBB219_37:
	sub	r2, r4, lr
	cmp	r8, r4
	mov	r0, r4
	add	r2, r9, r2, lsr #12
	movhi	r0, r8
	str	r2, [sp, #+4]
	ldr	r12, [r3, #+8]
	ldr	r2, [r5, #+1508]
	cmp	r2, #0
	beq	LBB219_39
	ldr	r8, [r2]
	str	r8, [r5, #+1508]
	b	LBB219_40
LBB219_39:
	ldr	r2, [r5, #+1512]
	add	r10, r2, #19
	add	r8, r2, #20
	str	r8, [r5, #+1512]
	ldr	r11, LCPI219_1
	add	r10, r10, #1, 20
	and	r10, r10, r11
	sub	r8, r10, r8
	cmp	r8, #20
	movlo	r8, #0
	strlo	r8, [r5, #+1512]
LBB219_40:
	cmp	r2, #0
	ldrne	r8, [r6]
	strne	r8, [r2]
	stmibne	r2, {r4, r12}
	strne	r0, [r2, #+12]
	ldrne	r0, [sp, #+4]
	strne	r0, [r2, #+16]
	strne	r2, [r6]
	ldr	r0, [r3, #+4]
	ldr	r2, [r1]
	cmp	r0, r2
	beq	LBB219_44
	str	r2, [r3, #+8]
	ldr	r0, [r3, #+12]
	ldr	r2, [r1]
	cmp	r0, r2
	strhi	r2, [r3, #+12]
	b	LBB219_44
LBB219_42:
	add	r2, r0, r12
	ldr	r12, [r3, #+12]
	cmp	r12, r2
	bne	LBB219_44
	str	r0, [r3, #+8]
	ldr	r0, [r1]
	cmp	r12, r0
	strhi	r0, [r3, #+12]
LBB219_44:
	ldrd	r2, [r1]
	ldr	r0, [r5, #+4]
	str	r0, [sp, #+8]
	str	r2, [sp, #+12]
	add	r0, r2, r3, lsl #12
	str	r0, [sp, #+16]
	str	r0, [sp, #+20]
	sub	r0, r2, lr
	mov	r2, #0
	add	r0, r9, r0, lsr #12
	str	r0, [sp, #+24]
	add	r0, sp, #8
	str	r0, [r5, #+4]
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap11RemoveBlockEPNS0_9HeapBlockEb
	ldr	r0, [r5, #+1508]
	ldr	r0, [r0]
	str	r0, [r5, #+1508]
	b	LBB219_10
	.align	2
	LCPI219_0:
 	.long	L_.str8462975$non_lazy_ptr

	.align	2
	LCPI219_1:
 	.long	4294963200

Leh_func_end143:

	.globl	__ZN4MMgc6GCHeap14DumpMemoryInfoEv
	.align	2
__ZN4MMgc6GCHeap14DumpMemoryInfoEv:
Leh_func_begin144:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	vstmdb	sp!, {d8, d9, d10}
	sub	sp, sp, #112
	bic	sp, sp, #7
	mov	r4, r0
	add	r0, r4, #220
	add	r0, r0, #2, 22
	str	r0, [sp, #+64]
	bl	_OSSpinLockLock
	ldr	r0, LCPI220_0
	mov	r1, #5
	add	r3, sp, #80
	add	r2, sp, #100
	str	r3, [sp]
	str	r1, [sp, #+100]
	str	r2, [sp, #+4]
	ldr	r0, [r0]
	ldr	r5, [r0]
	add	r1, sp, #108
	add	r2, sp, #104
	mov	r3, #12
	mov	r0, #0
	str	r0, [sp, #+104]
	str	r0, [sp, #+108]
	add	r0, sp, #76
	str	r0, [sp, #+8]
	mov	r0, r5
	bl	_vm_region_64
	cmp	r0, #0
	beq	LBB220_2
	mov	r6, #0
	b	LBB220_4
LBB220_2:
	mov	r6, #0
	mov	r8, #5
	mov	r10, #12
LBB220_3:
	ldr	r0, [sp, #+108]
	ldr	r1, [sp, #+104]
	add	r3, sp, #80
	add	r2, sp, #100
	str	r3, [sp]
	str	r2, [sp, #+4]
	ldr	r11, [sp, #+88]
	str	r8, [sp, #+100]
	add	r6, r11, r6
	add	r0, r1, r0
	str	r0, [sp, #+108]
	add	r1, sp, #108
	add	r2, sp, #104
	mov	r3, r10
	add	r0, sp, #76
	str	r0, [sp, #+8]
	mov	r0, r5
	bl	_vm_region_64
	cmp	r0, #0
	beq	LBB220_3
LBB220_4:
	ldr	r0, [r4, #+2520]
	str	r0, [sp, #+56]
	ldr	r5, [r4, #+1520]
	ldr	r0, [r4, #+1524]
	str	r0, [sp, #+52]
	ldr	r0, LCPI220_1
	ldr	r0, [r0]
	ldr	r0, [r0]
	str	r0, [sp, #+60]
	ldr	r0, LCPI220_2
	ldr	r0, [r0]
	ldr	r8, [r0]
	add	r0, r8, #117, 30
	add	r10, r0, #1, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	ldr	r11, [r8, #+1496]
	mov	r0, r10
	bl	_OSSpinLockUnlock
	ldr	r0, LCPI220_3
LBB220_5:
	add	r1, r8, r0
	add	r0, r0, #36
	cmp	r0, #0
	ldr	r1, [r1, #+1504]
	add	r11, r1, r11
	bne	LBB220_5
	ldr	r0, [sp, #+52]
	sub	r0, r5, r0
	str	r0, [sp, #+48]
	ldr	r0, LCPI220_4
	ldr	r0, [r0]
	ldr	r5, [r0]
	mov	r0, #0
	str	r0, [sp, #+12]
	ldr	r0, LCPI220_3
LBB220_7:
	add	r1, r5, r0
	ldr	r1, [r1, #+1492]
	cmp	r1, #0
	beq	LBB220_47
	mov	r2, #0
LBB220_9:
	ldrh	r3, [r1, #+16]
	ldrh	r9, [r1, #+18]
	ldr	r1, [r1, #+8]
	mla	r2, r9, r3, r2
	cmp	r1, #0
	bne	LBB220_9
LBB220_10:
	ldr	r1, [sp, #+12]
	add	r0, r0, #36
	cmp	r0, #0
	add	r1, r2, r1
	str	r1, [sp, #+12]
	bne	LBB220_7
	add	r0, r5, #117, 30
	add	r8, r0, #1, 22
	mov	r0, r8
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1496]
	str	r0, [sp, #+44]
	mov	r0, r8
	mov	r8, #0
	bl	_OSSpinLockUnlock
	ldr	r5, [r4, #+2460]
	str	r8, [sp, #+24]
	str	r8, [sp, #+20]
	str	r8, [sp, #+16]
	ldr	r0, [r4, #+2452]
	ldr	r1, [sp, #+48]
	add	r0, r0, #1
	str	r0, [r4, #+2452]
	ldr	r0, [sp, #+56]
	add	r0, r1, r0
	str	r0, [sp, #+40]
	add	r0, r4, #99, 30
	add	r0, r0, #2, 22
	str	r0, [sp, #+36]
	add	r0, r4, #98, 30
	add	r0, r0, #2, 22
	str	r0, [sp, #+32]
	ldr	r0, LCPI220_5
	ldr	r0, [r0]
	str	r0, [sp, #+28]
	b	LBB220_13
LBB220_12:
	ldr	r0, [sp, #+28]
	mov	r1, r10
	bl	__ZN4MMgc5GCLogEPKcz
	mov	r0, r10
	bl	__ZN4MMgc2GC14DumpMemoryInfoEv
	add	r1, sp, #72
	add	r2, sp, #68
	mov	r0, r10
	bl	__ZN4MMgc2GC12GetUsageInfoERmS1_
	ldr	r10, [r10, #+232]
	ldr	r0, [sp, #+24]
	ldr	r1, [sp, #+16]
	add	r0, r0, r10, lsl #12
	str	r0, [sp, #+24]
	add	r1, r1, #1
	ldr	r10, [sp, #+68]
	str	r1, [sp, #+16]
	ldr	r0, [sp, #+20]
	add	r0, r10, r0
	str	r0, [sp, #+20]
LBB220_13:
	tst	r8, #255
	beq	LBB220_15
	mov	r10, #0
	b	LBB220_33
LBB220_15:
	ldr	r0, [r4, #+2460]
	cmp	r5, r0
	bhs	LBB220_20
	ldr	r10, [r4, #+2448]
	add	r1, r10, r5, lsl #2
	add	r5, r5, #1
LBB220_17:
	add	r2, r5, #1
	ldr	r10, [r1], #+4
	cmp	r5, r0
	bhs	LBB220_32
	cmp	r10, #0
	bne	LBB220_32
	mov	r5, r2
	b	LBB220_17
LBB220_20:
	ldrb	r1, [r4, #+2456]
	cmp	r1, #0
	bne	LBB220_26
	ldr	r10, [sp, #+32]
	ldr	r2, [r10]
	cmp	r5, r2
	blo	LBB220_23
LBB220_22:
	mov	r10, #0
	b	LBB220_30
LBB220_23:
	ldr	r3, [r4, #+2448]
LBB220_24:
	ldr	r10, [r3, +r5, lsl #2]
	add	r5, r5, #1
	cmp	r5, r2
	bhs	LBB220_30
	cmp	r10, #0
	beq	LBB220_24
	b	LBB220_30
LBB220_26:
	ldr	r2, [sp, #+36]
	ldr	r2, [r2]
	cmp	r5, r2
	bhs	LBB220_22
	ldr	r3, [r4, #+2448]
LBB220_28:
	ldr	r10, [r3, +r5, lsl #2]
	add	r5, r5, #1
	cmp	r5, r2
	bhs	LBB220_30
	cmp	r10, #0
	beq	LBB220_28
LBB220_30:
	cmp	r1, #0
	ldr	r3, [sp, #+36]
	ldr	r2, [sp, #+32]
	moveq	r3, r2
	ldr	r1, [r3]
	cmp	r5, r1
	bne	LBB220_33
	cmp	r0, #0
	movne	r5, #0
	b	LBB220_33
LBB220_32:
	sub	r0, r2, r0
	sub	r5, r2, #1
	cmp	r0, #1
	moveq	r8, #1
LBB220_33:
	cmp	r10, #0
	bne	LBB220_12
	ldr	r0, LCPI220_6
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+60]
	mul	r5, r0, r6
	vmov	s0, r5
	vcvt.f64.u32	d8, s0
	ldr	r1, [sp, #+40]
	mov	r8, r1, lsl #12
	mov	r2, r5, lsr #12
	mov	r6, r11, lsl #12
	cmp	r5, #1, 12
	vldr.64	d0, LCPI220_45
	ldr	r1, [sp, #+44]
	mov	r10, r1, lsl #12
	vmul.f64	d0, d8, d0
	vdiv.f64	d0, d0, d8
	ftouizd	s0, d0
	vmov	r0, s0
	ldrls	r1, LCPI220_12
	strls	r0, [sp]
	ldrls	r0, LCPI220_11
	movls	r3, r5, lsr #10
	ldrls	r0, [r0]
	ldrls	r1, [r1]
	vldrhi.64	d0, LCPI220_46
	strhi	r0, [sp, #+4]
	ldrhi	r1, LCPI220_10
	vmulhi.f64	d0, d8, d0
	vmovhi	r3, r0, d0
	strhi	r0, [sp]
	ldrhi	r1, [r1]
	ldrhi	r0, LCPI220_9
	ldrhi	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	vmov	s0, r8
	vldr.64	d1, LCPI220_45
	ldr	r0, LCPI220_13
	ldr	r1, [sp, #+40]
	and	r2, r1, r0
	cmp	r8, #1, 12
	vcvt.f64.u32	d0, s0
	vmul.f64	d1, d0, d1
	vdiv.f64	d1, d1, d8
	ftouizd	s2, d1
	vmov	r0, s2
	strls	r0, [sp]
	ldrls	r0, LCPI220_16
	ldrls	r1, [sp, #+40]
	andls	r3, r0, r1, lsl #2
	ldrls	r0, LCPI220_17
	ldrls	r1, LCPI220_18
	ldrls	r0, [r0]
	ldrls	r1, [r1]
	vldrhi.64	d1, LCPI220_8
	strhi	r0, [sp, #+4]
	vmulhi.f64	d0, d0, d1
	vmovhi	r3, r0, d0
	ldrhi	r1, LCPI220_15
	strhi	r0, [sp]
	ldrhi	r0, LCPI220_14
	ldrhi	r1, [r1]
	ldrhi	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	vmov	s0, r6
	vcvt.f64.u32	d9, s0
	ldr	r0, LCPI220_13
	and	r2, r11, r0
	cmp	r6, #1, 12
	vldr.64	d0, LCPI220_7
	vmul.f64	d0, d9, d0
	vdiv.f64	d0, d0, d8
	ftouizd	s0, d0
	vmov	r0, s0
	strls	r0, [sp]
	ldrls	r0, LCPI220_16
	ldrls	r1, LCPI220_22
	andls	r3, r0, r11, lsl #2
	ldrls	r0, LCPI220_21
	ldrls	r1, [r1]
	vldrhi.64	d0, LCPI220_8
	strhi	r0, [sp, #+4]
	ldrhi	r11, LCPI220_20
	ldrhi	r1, [r11]
	vmulhi.f64	d0, d9, d0
	vmovhi	r3, r0, d0
	strhi	r0, [sp]
	ldrhi	r0, LCPI220_19
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+24]
	vmov	s0, r0
	vcvt.f64.u32	d10, s0
	mov	r2, r0, lsr #12
	cmp	r0, #1, 12
	vldr.64	d0, LCPI220_7
	vmul.f64	d0, d10, d0
	vdiv.f64	d0, d0, d8
	ftouizd	s0, d0
	vmov	r1, s0
	ldrls	r0, LCPI220_25
	ldrls	r3, [sp, #+24]
	strls	r1, [sp]
	ldrls	r1, LCPI220_26
	ldrls	r0, [r0]
	ldrls	r1, [r1]
	movls	r3, r3, lsr #10
	vldrhi.64	d0, LCPI220_8
	strhi	r1, [sp, #+4]
	vmulhi.f64	d0, d10, d0
	vmovhi	r3, r1, d0
	strhi	r1, [sp]
	ldrhi	r1, LCPI220_23
	ldrhi	r0, [r1]
	ldrhi	r1, LCPI220_24
	ldrhi	r1, [r1]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [r4, #+1520]
	ldr	r1, [r4, #+1524]
	vldr.64	d1, LCPI220_7
	sub	r0, r0, r1
	ldr	r1, [r4, #+2520]
	add	r0, r0, r1
	ldr	r1, [r4, #+2252]
	ldr	r2, LCPI220_13
	sub	r0, r0, r1
	mov	r1, r0, lsl #12
	vmov	s0, r1
	and	r2, r0, r2
	cmp	r1, #1, 12
	vcvt.f64.u32	d0, s0
	vmul.f64	d1, d0, d1
	vdiv.f64	d1, d1, d8
	ftouizd	s2, d1
	vmov	r3, s2
	strls	r3, [sp]
	ldrls	r1, LCPI220_16
	andls	r3, r1, r0, lsl #2
	ldrls	r0, LCPI220_29
	ldrls	r1, LCPI220_30
	vldrhi.64	d1, LCPI220_8
	strhi	r3, [sp, #+4]
	vmulhi.f64	d0, d0, d1
	vmovhi	r3, r1, d0
	ldrhi	r0, LCPI220_27
	strhi	r1, [sp]
	ldrhi	r1, LCPI220_28
	ldr	r0, [r0]
	ldr	r1, [r1]
	bl	__ZN4MMgc5GCLogEPKcz
	sub	r3, r5, r8
	vmov	s0, r3
	vldr.64	d1, LCPI220_7
	mov	r2, r3, lsr #12
	cmp	r3, #1, 12
	vcvt.f64.u32	d0, s0
	vmul.f64	d1, d0, d1
	vdiv.f64	d1, d1, d8
	ftouizd	s2, d1
	vmov	r0, s2
	ldrls	r1, LCPI220_34
	strls	r0, [sp]
	ldrls	r0, LCPI220_33
	movls	r3, r3, lsr #10
	ldrls	r0, [r0]
	ldrls	r1, [r1]
	vldrhi.64	d1, LCPI220_8
	strhi	r0, [sp, #+4]
	vmulhi.f64	d0, d0, d1
	vmovhi	r3, r0, d0
	ldrhi	r1, LCPI220_32
	strhi	r0, [sp]
	ldrhi	r0, LCPI220_31
	ldrhi	r1, [r1]
	ldrhi	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+12]
	vldr.64	d1, LCPI220_7
	sub	r0, r6, r0
	sub	r3, r0, r10
	vmov	s0, r3
	mov	r2, r3, lsr #12
	cmp	r3, #1, 12
	vcvt.f64.u32	d0, s0
	vmul.f64	d1, d0, d1
	vdiv.f64	d1, d1, d9
	ftouizd	s2, d1
	vmov	r0, s2
	ldrls	r1, LCPI220_38
	strls	r0, [sp]
	ldrls	r0, LCPI220_37
	movls	r3, r3, lsr #10
	ldrls	r0, [r0]
	ldrls	r1, [r1]
	vldrhi.64	d1, LCPI220_8
	strhi	r0, [sp, #+4]
	vmulhi.f64	d0, d0, d1
	vmovhi	r3, r0, d0
	ldrhi	r1, LCPI220_36
	strhi	r0, [sp]
	ldrhi	r0, LCPI220_35
	ldrhi	r1, [r1]
	ldrhi	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+20]
	ldr	r10, [sp, #+24]
	sub	r3, r10, r0
	vmov	s0, r3
	vldr.64	d1, LCPI220_7
	mov	r2, r3, lsr #12
	cmp	r3, #1, 12
	vcvt.f64.u32	d0, s0
	vmul.f64	d1, d0, d1
	vdiv.f64	d1, d1, d10
	ftouizd	s2, d1
	vmov	r0, s2
	ldrls	r1, LCPI220_42
	strls	r0, [sp]
	ldrls	r0, LCPI220_41
	movls	r3, r3, lsr #10
	ldrls	r0, [r0]
	ldrls	r1, [r1]
	vldrhi.64	d1, LCPI220_8
	strhi	r0, [sp, #+4]
	vmulhi.f64	d0, d0, d1
	vmovhi	r3, r0, d0
	ldrhi	r1, LCPI220_40
	strhi	r0, [sp]
	ldrhi	r0, LCPI220_39
	ldrhi	r1, [r1]
	ldrhi	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, LCPI220_43
	ldr	r1, [sp, #+16]
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, LCPI220_44
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldrb	r0, [r4, #+2296]
	cmp	r0, #0
	movne	r0, r4
	blne	__ZN4MMgc6GCHeap11DumpHeapRepEv
	ldr	r0, [r4, #+2452]
	sub	r0, r0, #1
	str	r0, [r4, #+2452]
	ldrb	r1, [r4, #+2456]
	cmp	r1, #0
	beq	LBB220_46
	cmp	r0, #0
	bne	LBB220_46
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	b	LBB220_43
	.align	2
	LCPI220_45:
 	.long	0
	.long	1079574528

	.align	2
	LCPI220_46:
 	.long	0
	.long	1051721728

LBB220_39:
	ldr	r9, [r4, #+2448]
	ldr	r12, [r9, +r2, lsl #2]
	cmp	r12, #0
	bne	LBB220_42
	ldr	r12, [r9, +r0, lsl #2]
	cmp	r12, #0
	beq	LBB220_48
	ldr	r3, [r4, #+2460]
	cmp	r0, r3
	streq	r2, [r4, #+2460]
	ldreq	r12, [r9, +r0, lsl #2]
	str	r12, [r9, +r2, lsl #2]
	ldr	r3, [r4, #+2448]
	str	r1, [r3, +r0, lsl #2]
LBB220_42:
	add	r0, r0, #1
	add	r2, r2, #1
LBB220_43:
	ldr	r3, [sp, #+36]
	ldr	r3, [r3]
LBB220_44:
	cmp	r3, r0
	bhi	LBB220_39
	mov	r0, #0
	strb	r0, [r4, #+2456]
LBB220_46:
	ldr	r0, [sp, #+64]
	bl	_OSSpinLockUnlock
	sub	sp, r7, #48
	vldmia	sp!, {d8, d9, d10}
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB220_47:
	mov	r2, #0
	b	LBB220_10
LBB220_48:
	add	r0, r0, #1
	b	LBB220_44
	.align	2
	LCPI220_0:
 	.long	L_mach_task_self_$non_lazy_ptr

	.align	2
	LCPI220_1:
 	.long	L__ZL8pagesize$non_lazy_ptr

	.align	2
	LCPI220_2:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

	.align	2
	LCPI220_3:
 	.long	4294965820

	.align	2
	LCPI220_4:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

	.align	2
	LCPI220_5:
 	.long	L_.str9472976$non_lazy_ptr

	.align	2
	LCPI220_6:
 	.long	L_.str10482977$non_lazy_ptr

	.align	2
	LCPI220_7:
 	.long	0
	.long	1079574528

	.align	2
	LCPI220_8:
 	.long	0
	.long	1051721728

	.align	2
	LCPI220_9:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI220_10:
 	.long	L_.str11492978$non_lazy_ptr

	.align	2
	LCPI220_11:
 	.long	L_.str1392968$non_lazy_ptr

	.align	2
	LCPI220_12:
 	.long	L_.str11492978$non_lazy_ptr

	.align	2
	LCPI220_13:
 	.long	1048575

	.align	2
	LCPI220_14:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI220_15:
 	.long	L_.str12502979$non_lazy_ptr

	.align	2
	LCPI220_16:
 	.long	4194300

	.align	2
	LCPI220_17:
 	.long	L_.str1392968$non_lazy_ptr

	.align	2
	LCPI220_18:
 	.long	L_.str12502979$non_lazy_ptr

	.align	2
	LCPI220_19:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI220_20:
 	.long	L_.str13512980$non_lazy_ptr

	.align	2
	LCPI220_21:
 	.long	L_.str1392968$non_lazy_ptr

	.align	2
	LCPI220_22:
 	.long	L_.str13512980$non_lazy_ptr

	.align	2
	LCPI220_23:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI220_24:
 	.long	L_.str1452$non_lazy_ptr

	.align	2
	LCPI220_25:
 	.long	L_.str1392968$non_lazy_ptr

	.align	2
	LCPI220_26:
 	.long	L_.str1452$non_lazy_ptr

	.align	2
	LCPI220_27:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI220_28:
 	.long	L_.str15532981$non_lazy_ptr

	.align	2
	LCPI220_29:
 	.long	L_.str1392968$non_lazy_ptr

	.align	2
	LCPI220_30:
 	.long	L_.str15532981$non_lazy_ptr

	.align	2
	LCPI220_31:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI220_32:
 	.long	L_.str1654$non_lazy_ptr

	.align	2
	LCPI220_33:
 	.long	L_.str1392968$non_lazy_ptr

	.align	2
	LCPI220_34:
 	.long	L_.str1654$non_lazy_ptr

	.align	2
	LCPI220_35:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI220_36:
 	.long	L_.str1755$non_lazy_ptr

	.align	2
	LCPI220_37:
 	.long	L_.str1392968$non_lazy_ptr

	.align	2
	LCPI220_38:
 	.long	L_.str1755$non_lazy_ptr

	.align	2
	LCPI220_39:
 	.long	L_.str382967$non_lazy_ptr

	.align	2
	LCPI220_40:
 	.long	L_.str42952$non_lazy_ptr

	.align	2
	LCPI220_41:
 	.long	L_.str1392968$non_lazy_ptr

	.align	2
	LCPI220_42:
 	.long	L_.str42952$non_lazy_ptr

	.align	2
	LCPI220_43:
 	.long	L_.str192983$non_lazy_ptr

	.align	2
	LCPI220_44:
 	.long	L_.str202984$non_lazy_ptr

Leh_func_end144:

	.globl	__ZN4MMgc6GCHeap5EnterEPNS_10EnterFrameE
	.align	2
__ZN4MMgc6GCHeap5EnterEPNS_10EnterFrameE:
Leh_func_begin145:
	stmfd	sp!, {r7, lr}
	ldr	r2, [r0, #+2500]
	mov	r7, sp
	add	r2, r2, #1
	str	r2, [r0, #+2500]
	ldr	r0, [r0, #+2492]
	bl	_pthread_setspecific
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end145:

	.globl	__ZN4MMgc10EnterFrameC2Ev
	.align	2
__ZN4MMgc10EnterFrameC2Ev:
Leh_func_begin146:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r0
	ldr	r0, LCPI222_0
	mov	r1, #0
	str	r1, [r4, #+116]
	str	r1, [r4, #+120]
	str	r1, [r4, #+124]
	str	r1, [r4, #+128]
	strb	r1, [r4, #+132]
	add	r7, sp, #8
	ldr	r0, [r0]
	ldr	r5, [r0]
	ldr	r0, [r5, #+2492]
	bl	_pthread_getspecific
	str	r0, [r4, #+128]
	cmp	r0, #0
	beq	LBB222_2
	ldrb	r1, [r0, #+132]
	cmp	r1, #0
	ldrne	r1, [r0, #+120]
	strne	r1, [r4, #+120]
	ldrbne	r1, [r0, #+132]
	tst	r1, #255
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
LBB222_2:
	str	r5, [r4, #+116]
	mov	r1, r4
	ldr	r0, [r5, #+2500]
	add	r0, r0, #1
	str	r0, [r5, #+2500]
	ldr	r0, [r5, #+2492]
	bl	_pthread_setspecific
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI222_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end146:

	.globl	__ZN4MMgc10EnterFrameC1Ev
	.align	2
__ZN4MMgc10EnterFrameC1Ev:
Leh_func_begin147:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r0
	ldr	r0, LCPI223_0
	mov	r1, #0
	str	r1, [r4, #+116]
	str	r1, [r4, #+120]
	str	r1, [r4, #+124]
	str	r1, [r4, #+128]
	strb	r1, [r4, #+132]
	add	r7, sp, #8
	ldr	r0, [r0]
	ldr	r5, [r0]
	ldr	r0, [r5, #+2492]
	bl	_pthread_getspecific
	str	r0, [r4, #+128]
	cmp	r0, #0
	beq	LBB223_2
	ldrb	r1, [r0, #+132]
	cmp	r1, #0
	ldrne	r1, [r0, #+120]
	strne	r1, [r4, #+120]
	ldrbne	r1, [r0, #+132]
	tst	r1, #255
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
LBB223_2:
	str	r5, [r4, #+116]
	mov	r1, r4
	ldr	r0, [r5, #+2500]
	add	r0, r0, #1
	str	r0, [r5, #+2500]
	ldr	r0, [r5, #+2492]
	bl	_pthread_setspecific
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI223_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end147:

	.globl	__ZN4MMgc6GCHeap19SignalImminentAbortEv
	.align	2
__ZN4MMgc6GCHeap19SignalImminentAbortEv:
Leh_func_begin148:
	stmfd	sp!, {r4, r5, r7, lr}
	ldr	r0, LCPI224_0
	add	r7, sp, #8
	ldr	r0, [r0]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	LBB224_5
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
	mov	r4, r0
	ldr	r1, LCPI224_1
	ldr	r0, [r1]
	ldr	r0, [r0]
	add	r0, r0, #220
	add	r0, r0, #2, 22
	bl	_OSSpinLockUnlock
	ldr	r5, [r4, #+124]
LBB224_2:
	cmp	r5, #0
	beq	LBB224_4
	ldr	r0, [r5]
	ldr	r1, [r0, #+8]
	mov	r0, r5
	blx	r1
	ldr	r0, [r4, #+124]
	cmp	r0, r5
	movne	r5, r0
	ldreq	r5, [r0, #+4]
	streq	r5, [r4, #+124]
	b	LBB224_2
LBB224_4:
	ldr	r0, LCPI224_2
	mov	r1, #0
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r0, [r0, #+2492]
	bl	_pthread_setspecific
LBB224_5:
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI224_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI224_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI224_2:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end148:

	.globl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
__ZN4MMgc6GCHeap5AbortEv:
Leh_func_begin149:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r0
	mov	r0, #3
	str	r0, [r4, #+2496]
	add	r7, sp, #8
	ldr	r0, [r4, #+2492]
	bl	_pthread_getspecific
	mov	r5, r0
	mov	r0, #1
	strb	r0, [r4, #+2508]
	mov	r0, #0
	strb	r0, [r4, #+2509]
	ldr	r0, LCPI225_0
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	add	r0, r4, #220
	add	r0, r0, #2, 22
	bl	_OSSpinLockUnlock
	ldr	r0, [r4, #+2288]
	cmp	r0, #0
	bne	LBB225_7
	cmp	r5, #0
	ldrne	r0, [r5, #+116]
	cmpne	r0, #0
	beq	LBB225_6
	ldr	r4, [r5, #+124]
LBB225_3:
	cmp	r4, #0
	beq	LBB225_5
	ldr	r0, [r4]
	ldr	r1, [r0, #+8]
	mov	r0, r4
	blx	r1
	ldr	r0, [r5, #+124]
	cmp	r0, r4
	movne	r4, r0
	ldreq	r4, [r0, #+4]
	streq	r4, [r5, #+124]
	b	LBB225_3
LBB225_5:
	mov	r1, #1
	mov	r0, r5
	bl	__longjmp
LBB225_6:
	bl	_abort
LBB225_7:
	bl	_exit
	.align	2
	LCPI225_0:
 	.long	L_.str212985$non_lazy_ptr

Leh_func_end149:

	.globl	__ZN4MMgc6GCHeap27SignalInconsistentHeapStateEPKc
	.align	2
__ZN4MMgc6GCHeap27SignalInconsistentHeapStateEPKc:
Leh_func_begin150:
	stmfd	sp!, {r7, lr}
	mov	r1, r0
	ldr	r2, LCPI226_0
	ldr	r0, [r2]
	mov	r7, sp
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, LCPI226_1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI226_0:
 	.long	L_.str222986$non_lazy_ptr

	.align	2
	LCPI226_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end150:

	.globl	__ZN4MMgc6GCHeap20SignalObjectTooLargeEv
	.align	2
__ZN4MMgc6GCHeap20SignalObjectTooLargeEv:
Leh_func_begin151:
	stmfd	sp!, {r7, lr}
	ldr	r0, LCPI227_0
	mov	r7, sp
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, LCPI227_1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI227_0:
 	.long	L_.str232987$non_lazy_ptr

	.align	2
	LCPI227_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end151:

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE3AddES2_
.weak_definition __ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE3AddES2_
	.align	2
__ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE3AddES2_:
Leh_func_begin152:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldrb	r2, [r0, #+16]
	mov	r4, r1
	mov	r5, r0
	cmp	r2, #0
	beq	LBB228_10
	ldr	r0, [r5, #+12]
	cmp	r0, #0
	bne	LBB228_10
	mov	r2, #1
	mov	r0, #0
	mov	r1, #0
	b	LBB228_7
LBB228_3:
	ldr	r9, [r5, #+8]
	ldr	r12, [r9, +r1, lsl #2]
	cmp	r12, #0
	bne	LBB228_6
	ldr	r12, [r9, +r2, lsl #2]
	cmp	r12, #0
	beq	LBB228_24
	ldr	r3, [r5, #+20]
	cmp	r2, r3
	streq	r1, [r5, #+20]
	ldreq	r12, [r9, +r2, lsl #2]
	str	r12, [r9, +r1, lsl #2]
	ldr	r3, [r5, #+8]
	str	r0, [r3, +r2, lsl #2]
LBB228_6:
	add	r2, r2, #1
	add	r1, r1, #1
LBB228_7:
	ldr	r3, [r5, #+4]
LBB228_8:
	cmp	r3, r2
	bhi	LBB228_3
	mov	r2, #0
	strb	r2, [r5, #+16]
LBB228_10:
	ldr	r8, [r5]
	ldr	r1, [r5, #+4]
	cmp	r8, r1
	bne	LBB228_16
	add	r6, r1, #4
	mov	r2, #0
	cmp	r2, r6, lsr #30
	bne	LBB228_25
	mov	r0, r6, lsl #2
	bl	_malloc
	cmp	r0, #0
	beq	LBB228_22
	mov	r2, r6, lsl #2
	mov	r1, #0
	mov	r10, r0
	bl	_memset
	str	r6, [r5, #+4]
	ldr	r6, [r5, #+8]
	cmp	r6, #0
	beq	LBB228_15
	mov	r2, r8, lsl #2
	mov	r0, r10
	mov	r1, r6
	bl	_memcpy
LBB228_15:
	mov	r0, r6
	bl	_free
	str	r10, [r5, #+8]
	ldr	r8, [r5]
	ldrb	r2, [r5, #+16]
LBB228_16:
	tst	r2, #255
	bne	LBB228_18
	mov	r0, #0
	b	LBB228_21
LBB228_18:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	b	LBB228_20
LBB228_19:
	ldr	r3, [r5, #+8]
	ldr	r3, [r3, +r2, lsl #2]
	cmp	r3, #0
	add	r2, r2, #1
	mov	r3, #0
	moveq	r3, #1
	add	r0, r3, r0
	eor	r3, r3, #1
	add	r1, r3, r1
LBB228_20:
	cmp	r8, r1
	ldrhi	r3, [r5, #+4]
	cmphi	r3, r2
	bhi	LBB228_19
LBB228_21:
	add	r0, r0, r8
	ldr	r1, [r5, #+8]
	str	r4, [r1, +r0, lsl #2]
	ldr	r0, [r5]
	add	r0, r0, #1
	str	r0, [r5]
	mov	r0, #1
	b	LBB228_23
LBB228_22:
	mov	r0, #0
LBB228_23:
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB228_24:
	add	r2, r2, #1
	b	LBB228_8
LBB228_25:
	bl	__ZN4MMgc6GCHeap20SignalObjectTooLargeEv
Leh_func_end152:

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc6GCHeap14AddOOMCallbackEPNS_11OOMCallbackE
	.align	2
__ZN4MMgc6GCHeap14AddOOMCallbackEPNS_11OOMCallbackE:
Leh_func_begin153:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r5, r0
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r4, r1
	add	r7, sp, #12
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #154, 28
	mov	r1, r4
	bl	__ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE3AddES2_
	mov	r4, r0
	mov	r0, r6
	bl	_OSSpinLockUnlock
	cmp	r4, #0
	subne	sp, r7, #12
	ldmfdne	sp!, {r4, r5, r6, r7, pc}
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap5AbortEv
Leh_func_end153:

	.section	__TEXT,__textcoal_nt,coalesced,pure_instructions
	.globl	__ZN4MMgc9BasicListIPNS_2GCELi4EE3AddES2_
.weak_definition __ZN4MMgc9BasicListIPNS_2GCELi4EE3AddES2_
	.align	2
__ZN4MMgc9BasicListIPNS_2GCELi4EE3AddES2_:
Leh_func_begin154:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldrb	r2, [r0, #+16]
	mov	r4, r1
	mov	r5, r0
	cmp	r2, #0
	beq	LBB230_10
	ldr	r0, [r5, #+12]
	cmp	r0, #0
	bne	LBB230_10
	mov	r2, #1
	mov	r0, #0
	mov	r1, #0
	b	LBB230_7
LBB230_3:
	ldr	r9, [r5, #+8]
	ldr	r12, [r9, +r1, lsl #2]
	cmp	r12, #0
	bne	LBB230_6
	ldr	r12, [r9, +r2, lsl #2]
	cmp	r12, #0
	beq	LBB230_24
	ldr	r3, [r5, #+20]
	cmp	r2, r3
	streq	r1, [r5, #+20]
	ldreq	r12, [r9, +r2, lsl #2]
	str	r12, [r9, +r1, lsl #2]
	ldr	r3, [r5, #+8]
	str	r0, [r3, +r2, lsl #2]
LBB230_6:
	add	r2, r2, #1
	add	r1, r1, #1
LBB230_7:
	ldr	r3, [r5, #+4]
LBB230_8:
	cmp	r3, r2
	bhi	LBB230_3
	mov	r2, #0
	strb	r2, [r5, #+16]
LBB230_10:
	ldr	r8, [r5]
	ldr	r1, [r5, #+4]
	cmp	r8, r1
	bne	LBB230_16
	add	r6, r1, #4
	mov	r2, #0
	cmp	r2, r6, lsr #30
	bne	LBB230_25
	mov	r0, r6, lsl #2
	bl	_malloc
	cmp	r0, #0
	beq	LBB230_22
	mov	r2, r6, lsl #2
	mov	r1, #0
	mov	r10, r0
	bl	_memset
	str	r6, [r5, #+4]
	ldr	r6, [r5, #+8]
	cmp	r6, #0
	beq	LBB230_15
	mov	r2, r8, lsl #2
	mov	r0, r10
	mov	r1, r6
	bl	_memcpy
LBB230_15:
	mov	r0, r6
	bl	_free
	str	r10, [r5, #+8]
	ldr	r8, [r5]
	ldrb	r2, [r5, #+16]
LBB230_16:
	tst	r2, #255
	bne	LBB230_18
	mov	r0, #0
	b	LBB230_21
LBB230_18:
	mov	r0, #0
	mov	r1, #0
	mov	r2, #0
	b	LBB230_20
LBB230_19:
	ldr	r3, [r5, #+8]
	ldr	r3, [r3, +r2, lsl #2]
	cmp	r3, #0
	add	r2, r2, #1
	mov	r3, #0
	moveq	r3, #1
	add	r0, r3, r0
	eor	r3, r3, #1
	add	r1, r3, r1
LBB230_20:
	cmp	r8, r1
	ldrhi	r3, [r5, #+4]
	cmphi	r3, r2
	bhi	LBB230_19
LBB230_21:
	add	r0, r0, r8
	ldr	r1, [r5, #+8]
	str	r4, [r1, +r0, lsl #2]
	ldr	r0, [r5]
	add	r0, r0, #1
	str	r0, [r5]
	mov	r0, #1
	b	LBB230_23
LBB230_22:
	mov	r0, #0
LBB230_23:
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB230_24:
	add	r2, r2, #1
	b	LBB230_8
LBB230_25:
	bl	__ZN4MMgc6GCHeap20SignalObjectTooLargeEv
Leh_func_end154:

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN4MMgc6GCHeap5AddGCEPNS_2GCE
	.align	2
__ZN4MMgc6GCHeap5AddGCEPNS_2GCE:
Leh_func_begin155:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r5, r0
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r4, r1
	add	r7, sp, #12
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #98, 30
	mov	r1, r4
	add	r0, r0, #2, 22
	bl	__ZN4MMgc9BasicListIPNS_2GCELi4EE3AddES2_
	mov	r4, r0
	mov	r0, r6
	bl	_OSSpinLockUnlock
	cmp	r4, #0
	subne	sp, r7, #12
	ldmfdne	sp!, {r4, r5, r6, r7, pc}
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap5AbortEv
Leh_func_end155:

	.globl	__ZN4MMgc17SuspendEnterFrameD1Ev
	.align	2
__ZN4MMgc17SuspendEnterFrameD1Ev:
Leh_func_begin156:
	stmfd	sp!, {r7, lr}
	ldr	r0, [r0]
	mov	r7, sp
	cmp	r0, #0
	movne	r1, #0
	strbne	r1, [r0, #+132]
	ldr	r0, LCPI232_0
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [r0, #+2496]
	cmp	r1, #3
	movne	sp, r7
	ldmfdne	sp!, {r7, pc}
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI232_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end156:

	.globl	__ZN4MMgc17SuspendEnterFrameD2Ev
	.align	2
__ZN4MMgc17SuspendEnterFrameD2Ev:
Leh_func_begin157:
	stmfd	sp!, {r7, lr}
	ldr	r0, [r0]
	mov	r7, sp
	cmp	r0, #0
	movne	r1, #0
	strbne	r1, [r0, #+132]
	ldr	r0, LCPI233_0
	ldr	r0, [r0]
	ldr	r0, [r0]
	ldr	r1, [r0, #+2496]
	cmp	r1, #3
	movne	sp, r7
	ldmfdne	sp!, {r7, pc}
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI233_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end157:

	.globl	__ZN4MMgc6GCHeap25CheckForHardLimitExceededEv
	.align	2
__ZN4MMgc6GCHeap25CheckForHardLimitExceededEv:
Leh_func_begin158:
	stmfd	sp!, {r7, lr}
	ldr	r1, [r0, #+1520]
	ldr	r2, [r0, #+1524]
	mov	r7, sp
	ldr	r3, [r0, #+2276]
	sub	r1, r1, r2
	ldr	r2, [r0, #+2520]
	add	r1, r1, r2
	ldr	r2, [r0, #+2264]
	add	r1, r1, r2, lsr #12
	cmp	r1, r3
	movls	sp, r7
	ldmfdls	sp!, {r7, pc}
	bl	__ZN4MMgc6GCHeap5AbortEv
Leh_func_end158:

	.globl	__ZN4MMgc6GCHeap12FinalizeHookEPKvm
	.align	2
__ZN4MMgc6GCHeap12FinalizeHookEPKvm:
Leh_func_begin159:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r5, r1
	ldr	r0, LCPI235_0
	ldr	r1, [r0]
	add	r7, sp, #8
	mov	r4, r2
	ldr	r1, [r1]
	cmp	r1, #0
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
	ldr	r0, [r1, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB235_3
	ldr	r0, [r0, #+120]
	cmp	r0, #0
	ldrne	r0, [r0, #+2044]
	cmpne	r0, #0
	beq	LBB235_3
	ldr	r3, [r0]
	mov	r2, r4
	mov	r1, r5
	ldr	r3, [r3, #+4]
	blx	r3
LBB235_3:
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI235_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end159:

	.globl	__ZN4MMgc6GCHeap9AllocHookEPKvmmb
	.align	2
__ZN4MMgc6GCHeap9AllocHookEPKvmmb:
Leh_func_begin160:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r5, r1
	ldr	r0, LCPI236_0
	ldr	r1, [r0]
	add	r7, sp, #8
	mov	r4, r3
	ldr	r1, [r1]
	cmp	r1, #0
	subeq	sp, r7, #8
	ldmfdeq	sp!, {r4, r5, r7, pc}
	ldr	r0, [r1, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB236_3
	ldr	r0, [r0, #+120]
	cmp	r0, #0
	ldrne	r0, [r0, #+2044]
	cmpne	r0, #0
	beq	LBB236_3
	ldr	r3, [r0]
	mov	r2, r4
	mov	r1, r5
	ldr	r3, [r3]
	blx	r3
LBB236_3:
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI236_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end160:

	.globl	__ZN4MMgc6GCHeap18ExpandHeapInternalEm
	.align	2
__ZN4MMgc6GCHeap18ExpandHeapInternalEm:
Leh_func_begin161:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #100
	ldr	r2, [r0, #+1520]
	add	r1, r1, #31
	ldr	r4, [r0, #+1516]
	bic	r5, r1, #31
	mov	r6, r0
	cmp	r2, #0
	bne	LBB237_2
	ldr	r0, [r6, #+2272]
	cmp	r0, #0
	bne	LBB237_16
LBB237_2:
	ldr	r0, [r6, #+1512]
	mov	r3, #1
	cmp	r0, #0
	moveq	r3, #2
	cmp	r4, #0
	bne	LBB237_4
	mov	r0, #0
	b	LBB237_12
LBB237_4:
	add	r0, r6, #4
	b	LBB237_7
LBB237_5:
	ldr	r9, [r0, #+4]
	cmp	r9, r4
	bhi	LBB237_7
	ldr	r12, [r0, #+8]
	cmp	r12, r4
	bhi	LBB237_9
LBB237_7:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB237_5
LBB237_8:
	mov	r0, #0
	b	LBB237_11
LBB237_9:
	ldr	r0, [r0, #+16]
	cmn	r0, #1
	beq	LBB237_8
	sub	r9, r4, r9
	add	r0, r0, r9, lsr #12
	mov	r9, #24
	mla	r0, r0, r9, r4
LBB237_11:
	ldr	r0, [r0, #+4]
LBB237_12:
	add	r9, r2, r5
	mov	r12, #24
	add	r9, r9, r3
	mul	r9, r9, r12
	add	r9, r9, #255
	add	r9, r9, #15, 24
	mov	r9, r9, lsr #12
	cmp	r9, r0
	bls	LBB237_16
	add	r4, r3, r2
	add	r0, r3, r1
	mov	r1, #24
LBB237_14:
	add	r5, r0, r9
	bic	r5, r5, #31
	add	r3, r4, r5
	mul	r3, r3, r1
	add	r3, r3, #255
	add	r3, r3, #15, 24
	mov	r3, r3, lsr #12
	cmp	r3, r9
	mov	r9, r3
	bhi	LBB237_14
	mov	r4, #0
LBB237_16:
	add	r0, r5, r2
	ldr	r1, [r6, #+1524]
	ldr	r2, [r6, #+2276]
	sub	r0, r0, r1
	ldr	r1, [r6, #+2520]
	add	r0, r0, r1
	ldr	r1, [r6, #+2264]
	add	r0, r0, r1, lsr #12
	cmp	r0, r2
	bhi	LBB237_100
	ldrb	r0, [r6, #+2292]
	cmp	r0, #0
	beq	LBB237_55
	ldr	r0, [r6, #+4]
	str	r0, [sp, #+48]
	cmp	r0, #0
	bne	LBB237_28
	mov	r0, #0
	str	r0, [sp, #+40]
	mov	r8, r0
LBB237_20:
	cmp	r8, #0
	bne	LBB237_23
	cmp	r5, #2, 24
	bhs	LBB237_23
	mov	r0, #0
	mov	r1, #2, 12
	mov	r8, #2, 24
	bl	__Z25AVMPI_reserveMemoryRegionPvm
	str	r8, [sp, #+40]
	mov	r8, r0
LBB237_23:
	cmp	r8, #0
	bne	LBB237_25
	mov	r1, r5, lsl #12
	mov	r0, #0
	bl	__Z25AVMPI_reserveMemoryRegionPvm
	str	r5, [sp, #+40]
	mov	r8, r0
LBB237_25:
	cmp	r8, #0
	beq	LBB237_100
	mov	r11, #1
	str	r11, [sp, #+76]
	mov	r1, #2
	add	r10, sp, #66
	add	r0, sp, #76
	add	r3, sp, #88
	mov	r2, r10
	str	r1, [sp, #+80]
	mov	r11, #10
	str	r11, [sp, #+88]
	mov	r11, #0
	str	r11, [sp]
	str	r11, [sp, #+4]
	bl	_sysctl
	mov	r0, r10
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r11, [sp, #+8]
	str	r11, [sp, #+4]
	mvn	r11, #0
	cmp	r0, #8
	mov	r1, r5, lsl #12
	mov	r2, #3
	mov	r3, #18
	orr	r3, r3, #1, 20
	mov	r0, r8
	movgt	r11, #15, 4
	str	r11, [sp]
	bl	_mmap
	cmp	r0, r8
	bne	LBB237_53
	mov	r1, #0
	str	r1, [sp, #+44]
	mov	r11, r8
	str	r1, [sp, #+52]
	b	LBB237_59
LBB237_28:
	ldr	r8, [sp, #+48]
	ldr	r0, [r8, #+8]
	ldr	r8, [r8, #+12]
	sub	r1, r0, r8
	mov	r2, r1, lsr #12
	str	r1, [sp, #+56]
	str	r2, [sp, #+52]
	cmp	r5, r1, lsr #12
	bhi	LBB237_32
	mov	r0, #1
	str	r0, [sp, #+76]
	mov	r1, #2
	add	r11, sp, #66
	add	r3, sp, #60
	mov	r2, r11
	mov	r10, #0
	str	r10, [sp]
	str	r1, [sp, #+80]
	str	r10, [sp, #+4]
	mov	r0, #10
	str	r0, [sp, #+60]
	add	r0, sp, #76
	bl	_sysctl
	mov	r0, r11
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r10, [sp, #+8]
	str	r10, [sp, #+4]
	mov	r10, r5, lsl #12
	mvn	r2, #0
	cmp	r0, #8
	mov	r3, #18
	orr	r3, r3, #1, 20
	mov	r0, r8
	mov	r1, r10
	movgt	r2, #15, 4
	str	r2, [sp]
	mov	r2, #3
	bl	_mmap
	cmp	r0, r8
	bne	LBB237_100
	ldr	r0, [r6, #+1520]
	ldr	r8, [r6, #+1516]
	mov	r1, #24
	sub	r0, r0, #1
	mla	r2, r0, r1, r8
	ldr	r2, [r2, #+8]
	sub	r0, r0, r2
	mul	r0, r0, r1
	ldr	r0, [r8, +r0]!
	ldr	r1, [sp, #+48]
	ldr	r11, [r1, #+12]
	add	r2, r11, r10
	ldr	r8, [r8, #+4]
	str	r2, [r1, #+12]
	add	r8, r0, r8, lsl #12
	mov	r0, #0
	cmp	r8, r11
	moveq	r0, #1
	str	r0, [sp, #+44]
	cmp	r8, r11
	beq	LBB237_58
	mov	r8, #0
	str	r8, [sp, #+40]
	b	LBB237_59
LBB237_32:
	cmp	r5, #2, 24
	bhs	LBB237_36
	mov	r1, #2, 12
	bl	__Z25AVMPI_reserveMemoryRegionPvm
	cmp	r0, #0
	beq	LBB237_35
	mov	r8, #2, 24
	str	r8, [sp, #+40]
	b	LBB237_41
LBB237_35:
	ldr	r0, [sp, #+48]
	ldr	r0, [r0, #+8]
LBB237_36:
	ldr	r8, [sp, #+52]
	sub	r8, r5, r8
	str	r8, [sp, #+40]
	mov	r8, r8, lsl #12
	mov	r1, r8
	bl	__Z25AVMPI_reserveMemoryRegionPvm
	cmp	r0, #0
	ldrne	r11, [sp, #+48]
	ldrne	r11, [r11, #+8]
	cmpne	r11, r0
	beq	LBB237_41
	ldrb	r11, [r6, #+2292]
	cmp	r11, #0
	beq	LBB237_39
	mov	r1, r8
	bl	_munmap
	b	LBB237_40
LBB237_39:
	bl	_free
LBB237_40:
	mov	r0, #0
	str	r0, [sp, #+40]
LBB237_41:
	mov	r8, r0
	ldr	r0, [sp, #+48]
	ldr	r0, [r0, #+8]
	cmp	r0, r8
	bne	LBB237_20
	ldr	r0, [sp, #+52]
	cmp	r0, #0
	beq	LBB237_46
	ldr	r0, [sp, #+48]
	mov	r11, #1
	add	r10, sp, #66
	mov	r1, #2
	add	r3, sp, #84
	mov	r2, r10
	ldr	r0, [r0, #+12]
	str	r11, [sp, #+76]
	str	r0, [sp, #+36]
	mov	r11, #10
	str	r11, [sp, #+84]
	str	r1, [sp, #+80]
	add	r0, sp, #76
	mov	r11, #0
	str	r11, [sp]
	str	r11, [sp, #+4]
	bl	_sysctl
	mov	r0, r10
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r11, [sp, #+8]
	str	r11, [sp, #+4]
	mvn	r11, #0
	cmp	r0, #8
	movgt	r11, #15, 4
	str	r11, [sp]
	mov	r2, #3
	mov	r3, #18
	orr	r3, r3, #1, 20
	ldr	r11, LCPI237_0
	ldr	r1, [sp, #+56]
	ldr	r0, [sp, #+36]
	and	r1, r1, r11
	bl	_mmap
	ldr	r11, [sp, #+36]
	cmp	r0, r11
	beq	LBB237_46
	ldrb	r4, [r6, #+2292]
	cmp	r4, #0
	beq	LBB237_99
	mov	r0, r8
	ldr	r1, [sp, #+40]
	b	LBB237_52
LBB237_46:
	mov	r11, #1
	str	r11, [sp, #+76]
	mov	r1, #2
	add	r10, sp, #66
	add	r0, sp, #76
	add	r3, sp, #92
	mov	r2, r10
	str	r1, [sp, #+80]
	mov	r11, #10
	str	r11, [sp, #+92]
	mov	r11, #0
	str	r11, [sp]
	str	r11, [sp, #+4]
	bl	_sysctl
	mov	r0, r10
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r11, [sp, #+8]
	str	r11, [sp, #+4]
	mvn	r11, #0
	cmp	r0, #8
	movgt	r11, #15, 4
	str	r11, [sp]
	mov	r2, #3
	mov	r3, #18
	orr	r3, r3, #1, 20
	mov	r0, r8
	ldr	r11, [sp, #+52]
	sub	r11, r5, r11
	mov	r11, r11, lsl #12
	mov	r1, r11
	bl	_mmap
	cmp	r0, r8
	beq	LBB237_57
	ldr	r4, [sp, #+52]
	cmp	r4, #0
	beq	LBB237_50
	ldr	r4, LCPI237_0
	ldr	r5, [sp, #+56]
	ldr	r0, [sp, #+48]
	ldr	r1, [r0, #+12]
	str	r1, [sp, #+96]
	and	r4, r5, r4
	ldr	r5, LCPI237_1
	mov	r2, r4
	ldr	r5, [r5]
	ldr	r0, [r5]
	bl	_vm_deallocate
	cmp	r0, #0
	bne	LBB237_50
	ldr	r5, LCPI237_2
	mov	r2, #7
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #+4]
	str	r3, [sp, #+8]
	str	r3, [sp, #+12]
	str	r3, [sp, #+16]
	str	r2, [sp, #+20]
	add	r1, sp, #96
	ldr	r5, [r5]
	ldr	r0, [r5]
	mov	r2, r4
	mov	r5, #2
	str	r5, [sp, #+24]
	bl	_vm_map
LBB237_50:
	ldrb	r4, [r6, #+2292]
	cmp	r4, #0
	beq	LBB237_99
	mov	r0, r8
	mov	r1, r11
LBB237_52:
	bl	_munmap
	mov	r0, #0
	b	LBB237_98
LBB237_53:
	ldrb	r4, [r6, #+2292]
	cmp	r4, #0
	beq	LBB237_99
	ldr	r4, [sp, #+40]
	mov	r1, r4, lsl #12
	mov	r0, r8
	b	LBB237_52
LBB237_55:
	mov	r0, r5, lsl #12
	bl	_valloc
	cmp	r0, #0
	beq	LBB237_100
	mov	r1, #0
	str	r1, [sp, #+44]
	mov	r11, r0
	mov	r8, r0
	str	r5, [sp, #+40]
	str	r1, [sp, #+52]
	b	LBB237_59
LBB237_57:
	ldr	r2, [r6, #+4]
	ldr	r1, [sp, #+48]
	ldr	r11, [r1, #+12]
	mov	r3, #24
	ldr	r2, [r2, #+8]
	str	r2, [r1, #+12]
	ldr	r0, [r6, #+1520]
	ldr	r1, [r6, #+1516]
	sub	r2, r0, #1
	mla	r9, r2, r3, r1
	ldr	r9, [r9, #+8]
	sub	r2, r2, r9
	mul	r2, r2, r3
	ldr	r2, [r1, +r2]!
	ldr	r1, [r1, #+4]
	add	r1, r2, r1, lsl #12
	mov	r2, #0
	cmp	r1, r11
	moveq	r2, #1
	str	r2, [sp, #+44]
	cmp	r1, r11
	subeq	r1, r0, #1
	streq	r1, [r6, #+1520]
	b	LBB237_59
LBB237_58:
	mov	r8, #0
	ldr	r0, [r6, #+1520]
	str	r8, [sp, #+40]
	sub	r1, r0, #1
	str	r1, [r6, #+1520]
LBB237_59:
	orr	r1, r5, #1
	ldr	r2, [r6, #+1520]
	cmp	r4, #0
	add	r1, r2, r1
	str	r1, [sp, #+32]
	moveq	r4, r11
	ldr	r1, [r6, #+1516]
	cmp	r1, #0
	cmpne	r1, r4
	beq	LBB237_65
	mov	r10, #24
	mul	r2, r2, r10
	mov	r0, r4
	bl	_memcpy
	add	r2, r6, #127, 30
	add	r3, r2, #1, 22
	mov	r1, #30
	mov	r2, r3
LBB237_61:
	ldr	r9, [r2, #+12]
	cmp	r3, r9
	ldrne	r12, [r6, #+1516]
	subne	r9, r9, r12
	ldrne	r12, LCPI237_3
	smmlane	r9, r9, r12, r9
	movne	r12, r9, asr #4
	addne	r9, r12, r9, lsr #31
	mlane	r9, r9, r10, r4
	strne	r9, [r2, #+12]
	ldr	r9, [r2, #+16]
	cmp	r3, r9
	ldrne	r12, [r6, #+1516]
	subne	r9, r9, r12
	ldrne	r12, LCPI237_3
	smmlane	r9, r9, r12, r9
	movne	r12, r9, asr #4
	addne	r9, r12, r9, lsr #31
	mlane	r9, r9, r10, r4
	strne	r9, [r2, #+16]
	mov	r2, r9
	cmp	r3, r2
	bne	LBB237_61
	sub	r1, r1, #1
	add	r3, r3, #24
	cmp	r1, #0
	beq	LBB237_64
	mov	r2, r3
	b	LBB237_61
LBB237_64:
	ldr	r2, [r6, #+1520]
LBB237_65:
	mov	r1, #24
	mla	r3, r2, r1, r4
	mov	lr, r3
	mov	r0, r3
	ldrb	r9, [r6, #+2292]
	mov	r12, #0
	cmp	r9, #0
	mul	r1, r2, r1
	str	r12, [lr, #+8]!
	str	r12, [r3, #+12]
	str	r12, [r3, #+16]
	str	r11, [r4, +r1]
	str	r5, [r0, #+4]!
	str	r0, [sp, #+28]
	mov	r1, r3
	mov	r0, #1
	strb	r0, [r1, #+20]!
	moveq	r12, #1
	strb	r12, [r3, #+21]
	ldr	r0, [r6, #+1520]
	cmp	r0, #0
	ldrne	r3, [sp, #+44]
	tstne	r3, #255
	beq	LBB237_71
	mov	r9, #24
	ldr	r3, [r6, #+1516]
	mla	r9, r0, r9, r3
	ldr	r9, [r9, #-20]
	cmp	r9, #0
	bne	LBB237_70
	mov	r9, #24
	mla	r9, r0, r9, r3
	sub	r9, r9, #20
LBB237_68:
	ldr	r0, [r9, #-24]!
	cmp	r0, #0
	beq	LBB237_68
	ldr	r9, [r9]
LBB237_70:
	str	r9, [lr]
LBB237_71:
	cmp	r4, r11
	bne	LBB237_73
	ldr	r3, [sp, #+32]
	mov	r0, #24
	mov	lr, #0
	mul	r3, r3, r0
	add	r3, r3, #255
	add	r3, r3, #15, 24
	add	r2, r2, r3, lsr #12
	mla	r9, r2, r0, r4
	str	lr, [r9, #+12]
	str	lr, [r9, #+16]
	ldr	r10, LCPI237_0
	mul	lr, r2, r0
	and	r10, r3, r10
	add	r10, r11, r10
	str	r10, [r4, +lr]
	mov	lr, #1
	sub	r10, r5, r3, lsr #12
	str	r10, [r9, #+4]
	strb	lr, [r9, #+20]
	strb	r12, [r9, #+21]
	mov	lr, r3, lsr #12
	str	lr, [r9, #+8]
	ldrb	r1, [r1]
	strb	r1, [r9, #+20]
	ldr	r1, [sp, #+28]
	str	lr, [r1]
	ldr	r1, [r9, #+4]
	add	r9, r1, r2
	mla	r0, r9, r0, r4
	str	r1, [r0, #+8]
	ldr	r0, [r6, #+2252]
	add	r0, r0, r3, lsr #12
	str	r0, [r6, #+2252]
LBB237_73:
	ldr	r0, [r6, #+1512]
	cmp	r0, #0
	bne	LBB237_75
	mov	r0, #24
	mul	r1, r2, r0
	mov	r3, r4
	mov	r12, #0
	add	r2, r2, #1
	ldr	r1, [r3, +r1]!
	str	r1, [r6, #+1512]
	ldrb	r9, [r3, #+21]
	ldrd	r10, [r3]
	mla	r1, r2, r0, r4
	str	r12, [r1, #+12]
	str	r12, [r1, #+16]
	mul	r12, r2, r0
	add	lr, r10, #1, 20
	str	lr, [r4, +r12]
	sub	r12, r11, #1
	str	r12, [r1, #+4]
	strb	r9, [r1, #+21]
	mov	r10, #1
	str	r10, [r1, #+8]
	ldrb	lr, [r3, #+20]
	strb	lr, [r1, #+20]
	str	r10, [r3, #+4]
	add	r3, r12, r2
	mla	r0, r3, r0, r4
	str	r12, [r0, #+8]
	ldr	r0, [r6, #+2252]
	add	r0, r0, #1
	str	r0, [r6, #+2252]
	ldr	r0, [r6, #+1528]
	add	r0, r0, #1
	str	r0, [r6, #+1528]
LBB237_75:
	mov	r0, #24
	mla	r1, r2, r0, r4
	mov	r3, #0
	ldr	r0, [r1, #+4]
	str	r3, [r1, #+24]
	str	r3, [r1, #+28]
	str	r3, [r1, #+32]
	str	r3, [r1, #+36]
	str	r3, [r1, #+40]
	strb	r3, [r1, #+44]
	strb	r3, [r1, #+45]
	cmp	r0, #1
	bhi	LBB237_77
	mov	r2, r1
	b	LBB237_80
LBB237_77:
	mov	r3, #24
	sub	r9, r0, #1
	mov	r12, #0
	mla	r3, r2, r3, r4
	add	r3, r3, #69
LBB237_78:
	str	r12, [r3, #-21]
	str	r12, [r3, #-17]
	str	r12, [r3, #-13]
	str	r12, [r3, #-9]
	str	r12, [r3, #-5]
	strb	r12, [r3, #-1]
	strb	r12, [r3]
	sub	r9, r9, #1
	add	r3, r3, #24
	cmp	r9, #0
	bne	LBB237_78
	add	r2, r2, r0
	mov	r3, #24
	mla	r2, r2, r3, r4
	sub	r2, r2, #24
LBB237_80:
	str	r0, [r2, #+32]
	mov	r2, #0
	mov	r0, r6
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
	ldr	r0, [r6, #+1516]
	str	r4, [r6, #+1516]
	ldr	r1, [sp, #+32]
	str	r1, [r6, #+1520]
	cmp	r0, #0
	cmpne	r0, r4
	beq	LBB237_89
	add	r1, r6, #4
	b	LBB237_84
LBB237_82:
	ldr	r2, [r1, #+4]
	cmp	r2, r0
	bhi	LBB237_84
	ldr	r3, [r1, #+8]
	cmp	r3, r0
	bhi	LBB237_86
LBB237_84:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB237_82
LBB237_85:
	mov	r1, #0
	b	LBB237_88
LBB237_86:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	beq	LBB237_85
	sub	r0, r0, r2
	mov	r2, #24
	add	r0, r1, r0, lsr #12
	mla	r1, r0, r2, r4
LBB237_88:
	ldr	r0, [r1, #+4]
	ldr	r2, [r6, #+2252]
	sub	r0, r2, r0
	str	r0, [r6, #+2252]
	mov	r2, #1
	mov	r0, r6
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
LBB237_89:
	cmp	r8, #0
	beq	LBB237_95
	ldr	r1, [sp, #+52]
	ldr	r0, [sp, #+40]
	sub	r2, r5, r1
	mvn	r3, r5
	ldr	r9, [r6, #+1508]
	cmp	r9, #0
	add	r1, r1, r3
	ldr	r3, [sp, #+32]
	add	r0, r8, r0, lsl #12
	add	r2, r8, r2, lsl #12
	add	r1, r1, r3
	beq	LBB237_92
	ldr	r3, [r9]
	str	r3, [r6, #+1508]
	b	LBB237_93
LBB237_92:
	ldr	r9, [r6, #+1512]
	add	r12, r9, #19
	add	r3, r9, #20
	str	r3, [r6, #+1512]
	ldr	lr, LCPI237_0
	add	r12, r12, #1, 20
	and	r12, r12, lr
	sub	r3, r12, r3
	cmp	r3, #20
	movlo	r3, #0
	strlo	r3, [r6, #+1512]
LBB237_93:
	cmp	r9, #0
	ldrne	r3, [r6, #+4]
	stmiane	r9, {r3, r8}
	strne	r0, [r9, #+8]
	strne	r2, [r9, #+12]
	strne	r1, [r9, #+16]
	strne	r9, [r6, #+4]
	ldrb	r0, [r6, #+2296]
	cmp	r0, #0
	beq	LBB237_95
	ldr	r0, LCPI237_4
	ldr	r1, LCPI237_5
	ldr	r3, [r1]
	ldr	r0, [r0]
	ldr	r1, [sp, #+44]
	tst	r1, #255
	moveq	r3, r0
	ldr	r0, LCPI237_6
	ldr	r1, [r9, #+4]
	ldr	r2, [r9, #+8]
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
LBB237_95:
	ldrb	r0, [r6, #+2296]
	cmp	r0, #0
	beq	LBB237_97
	ldr	r0, LCPI237_7
	mov	r1, r5
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	mov	r0, r6
	bl	__ZN4MMgc6GCHeap11DumpHeapRepEv
LBB237_97:
	mov	r0, #1
LBB237_98:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB237_99:
	mov	r0, r8
	bl	_free
LBB237_100:
	mov	r0, #0
	b	LBB237_98
	.align	2
	LCPI237_0:
 	.long	4294963200

	.align	2
	LCPI237_1:
 	.long	L_mach_task_self_$non_lazy_ptr

	.align	2
	LCPI237_2:
 	.long	L_mach_task_self_$non_lazy_ptr

	.align	2
	LCPI237_3:
 	.long	2863311531

	.align	2
	LCPI237_4:
 	.long	L_.str2556$non_lazy_ptr

	.align	2
	LCPI237_5:
 	.long	L_.str242988$non_lazy_ptr

	.align	2
	LCPI237_6:
 	.long	L_.str262989$non_lazy_ptr

	.align	2
	LCPI237_7:
 	.long	L_.str272990$non_lazy_ptr

Leh_func_end161:

	.globl	__ZN4MMgc6GCHeap10ExpandHeapEm
	.align	2
__ZN4MMgc6GCHeap10ExpandHeapEm:
Leh_func_begin162:
	stmfd	sp!, {r4, r7, lr}
	mov	r4, r0
	bl	__ZN4MMgc6GCHeap18ExpandHeapInternalEm
	add	r7, sp, #4
	ldr	r1, [r4, #+1520]
	ldr	r2, [r4, #+1524]
	ldr	r3, [r4, #+2520]
	sub	r1, r1, r2
	ldr	r2, [r4, #+2516]
	add	r1, r1, r3
	cmp	r2, r1, lsl #12
	movlo	r1, r1, lsl #12
	strlo	r1, [r4, #+2516]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
Leh_func_end162:

	.globl	__ZN4MMgc6GCHeap6CommitEPNS0_9HeapBlockE
	.align	2
__ZN4MMgc6GCHeap6CommitEPNS0_9HeapBlockE:
Leh_func_begin163:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #36
	mov	r4, r1
	mov	r5, r0
	mov	r1, #1
	mov	r0, #10
	ldmia	r4, {r6, r8}
	str	r1, [sp, #+28]
	str	r0, [sp, #+12]
	add	r11, sp, #18
	add	r3, sp, #12
	mov	r2, r11
	mov	r10, #0
	str	r10, [sp]
	str	r10, [sp, #+4]
	mov	r1, #2
	add	r0, sp, #28
	str	r1, [sp, #+32]
	bl	_sysctl
	mov	r0, r11
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r10, [sp, #+8]
	str	r10, [sp, #+4]
	mvn	r2, #0
	cmp	r0, #8
	mov	r1, r8, lsl #12
	mov	r3, #18
	orr	r3, r3, #1, 20
	mov	r0, r6
	movgt	r2, #15, 4
	str	r2, [sp]
	mov	r2, #3
	bl	_mmap
	ldrb	r0, [r5, #+2296]
	cmp	r0, #0
	beq	LBB239_2
	ldr	r0, LCPI239_0
	ldr	r1, [r4, #+4]
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap11DumpHeapRepEv
LBB239_2:
	ldr	r0, [r4, #+4]
	ldr	r1, [r5, #+1524]
	sub	r0, r1, r0
	str	r0, [r5, #+1524]
	mov	r0, #1
	strb	r0, [r4, #+20]
	mov	r0, #0
	strb	r0, [r4, #+21]
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI239_0:
 	.long	L_.str282991$non_lazy_ptr

Leh_func_end163:

	.globl	__ZN4MMgc6GCHeap20CreateCommittedBlockEPNS0_9HeapBlockEmm
	.align	2
__ZN4MMgc6GCHeap20CreateCommittedBlockEPNS0_9HeapBlockEmm:
Leh_func_begin164:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #76
	ldrd	r4, [r1, #+12]
	str	r5, [r4, #+16]
	mov	r9, #0
	ldrd	r4, [r1, #+12]
	str	r4, [r5, #+12]
	str	r9, [r1, #+12]
	str	r9, [r1, #+16]
	sub	r9, r3, #1
	str	r0, [sp, #+20]
	ldr	r4, [r1]
	and	r12, r9, r4, lsr #12
	sub	r3, r3, r12
	str	r4, [sp, #+36]
	mov	r5, r1
	and	r3, r3, r9
	add	r2, r3, r2
	ldr	r4, [r1, #+4]
	str	r2, [sp, #+16]
	cmp	r4, r2
	bhs	LBB240_26
	ldr	r1, [sp, #+20]
	ldrb	r0, [r5, #+20]
	ldrb	r1, [r1, #+2295]
	orr	r0, r1, r0
	tst	r0, #255
	ldrb	r1, [r5, #+21]
	str	r1, [sp, #+28]
	bne	LBB240_5
	mov	r0, #1
	str	r0, [sp, #+56]
	mov	r2, #0
	mov	r1, #2
	str	r2, [sp]
	str	r2, [sp, #+4]
	add	r6, sp, #46
	add	r3, sp, #40
	str	r1, [sp, #+60]
	mov	r0, #10
	str	r0, [sp, #+40]
	mov	r2, r6
	add	r0, sp, #56
	bl	_sysctl
	mov	r0, r6
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	mov	r2, #0
	str	r2, [sp, #+8]
	str	r2, [sp, #+4]
	cmp	r0, #8
	mov	r1, r4, lsl #12
	mov	r3, #18
	orr	r3, r3, #1, 20
	mvn	r2, #0
	movgt	r2, #15, 4
	str	r2, [sp]
	ldr	r0, [sp, #+36]
	mov	r2, #3
	bl	_mmap
	ldr	r4, [sp, #+20]
	ldrb	r4, [r4, #+2296]
	cmp	r4, #0
	beq	LBB240_4
	ldr	r4, LCPI240_0
	ldr	r1, [r5, #+4]
	ldr	r0, [r4]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+20]
	bl	__ZN4MMgc6GCHeap11DumpHeapRepEv
LBB240_4:
	ldr	r4, [r5, #+4]
	ldr	r0, [sp, #+20]
	ldr	r1, [r0, #+1524]
	sub	r4, r1, r4
	str	r4, [r0, #+1524]
	mov	r4, #1
	strb	r4, [r5, #+20]
	mov	r4, #0
	strb	r4, [r5, #+21]
	ldr	r4, [r5, #+4]
LBB240_5:
	ldr	r0, [sp, #+16]
	cmp	r4, r0
	bhs	LBB240_20
	cmp	r0, #32
	movlo	r0, #32
	str	r0, [sp, #+32]
	ldr	r0, LCPI240_1
	ldr	r0, [r0]
	str	r0, [sp, #+24]
LBB240_7:
	mov	r0, #24
	mla	r6, r4, r0, r5
	ldr	r1, [r6, #+12]
	ldr	r0, [r6, #+16]
	str	r0, [r1, #+16]
	ldrd	r0, [r6, #+12]
	str	r0, [r1, #+12]
	mov	r0, #0
	str	r0, [r6, #+12]
	str	r0, [r6, #+16]
	ldrb	r0, [r6, #+20]!
	cmp	r0, #0
	beq	LBB240_11
	ldr	r6, [sp, #+28]
	tst	r6, #255
	moveq	r6, #24
	mlaeq	r6, r4, r6, r5
	ldrbeq	r6, [r6, #+21]
	cmpeq	r6, #0
	beq	LBB240_10
	mov	r6, #1
	str	r6, [sp, #+28]
	b	LBB240_19
LBB240_10:
	mov	r6, #0
	str	r6, [sp, #+28]
	b	LBB240_19
LBB240_11:
	mov	r0, #24
	mla	r8, r4, r0, r5
	ldr	r10, [r8, #+4]!
	ldr	r0, [r5, #+4]
	ldr	r1, [sp, #+16]
	add	r0, r10, r0
	cmp	r0, r1
	blo	LBB240_15
	ldr	r1, [sp, #+32]
	cmp	r1, r0
	bhs	LBB240_15
	ldr	r1, [sp, #+16]
	cmp	r0, r1
	beq	LBB240_15
	mov	r2, #24
	mul	r1, r4, r2
	mov	r3, r5
	mov	lr, #0
	ldr	r9, [r3, +r1]!
	ldr	r1, [sp, #+16]
	sub	r0, r1, r0
	add	r10, r0, r10
	add	r12, r10, r4
	rsb	r0, r0, #0
	ldrb	r3, [r3, #+21]
	mla	r1, r12, r2, r5
	str	lr, [r1, #+12]
	str	lr, [r1, #+16]
	add	r9, r9, r10, lsl #12
	mul	lr, r12, r2
	str	r9, [r5, +lr]
	str	r0, [r1, #+4]
	mov	r0, #1
	strb	r0, [r1, #+20]
	strb	r3, [r1, #+21]
	str	r10, [r1, #+8]
	ldrb	r0, [r6]
	strb	r0, [r1, #+20]
	str	r10, [r8]
	ldr	r10, [r1, #+4]
	add	r0, r10, r12
	mla	r0, r0, r2, r5
	str	r10, [r0, #+8]
	mov	r2, #0
	ldr	r0, [sp, #+20]
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
	ldr	r10, [r8]
LBB240_15:
	ldr	r0, [sp, #+20]
	ldrb	r0, [r0, #+2295]
	cmp	r0, #0
	bne	LBB240_19
	mov	r0, #24
	mov	r2, #10
	mov	r3, #0
	mov	r1, #2
	add	r11, sp, #46
	mul	r0, r4, r0
	ldr	r0, [r5, +r0]
	str	r0, [sp, #+12]
	str	r2, [sp, #+64]
	str	r3, [sp]
	str	r3, [sp, #+4]
	add	r3, sp, #64
	mov	r2, r11
	mov	r0, #1
	str	r0, [sp, #+56]
	str	r1, [sp, #+60]
	add	r0, sp, #56
	bl	_sysctl
	mov	r0, r11
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	mvn	r1, #0
	mov	r3, #0
	str	r3, [sp, #+8]
	str	r3, [sp, #+4]
	cmp	r0, #8
	mov	r2, #3
	movgt	r1, #15, 4
	str	r1, [sp]
	ldr	r0, [sp, #+12]
	ldr	r3, LCPI240_4
	mov	r1, r10, lsl #12
	bl	_mmap
	ldr	r0, [sp, #+20]
	ldrb	r0, [r0, #+2296]
	cmp	r0, #0
	beq	LBB240_18
	ldr	r1, [r8]
	ldr	r0, [sp, #+24]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+20]
	bl	__ZN4MMgc6GCHeap11DumpHeapRepEv
LBB240_18:
	ldr	r0, [r8]
	ldr	r1, [sp, #+20]
	ldr	r2, [r1, #+1524]
	sub	r0, r2, r0
	str	r0, [r1, #+1524]
	mov	r1, #0
	mov	r0, #1
	strb	r0, [r6]
	mov	r0, #24
	mla	r0, r4, r0, r5
	strb	r1, [r0, #+21]
LBB240_19:
	mov	r0, #24
	mla	r1, r4, r0, r5
	ldr	r2, [r1, #+4]
	ldr	r3, [r5, #+4]
	mul	r4, r4, r0
	add	r2, r2, r3
	str	r2, [r5, #+4]
	ldr	r0, [sp, #+16]
	mov	r2, #0
	str	r2, [r1, #+4]
	str	r2, [r5, +r4]
	str	r2, [r1, #+8]
	ldr	r4, [r5, #+4]
	cmp	r4, r0
	blo	LBB240_7
LBB240_20:
	mov	r0, #24
	mla	r0, r4, r0, r5
	str	r4, [r0, #+8]
	ldr	r0, [sp, #+20]
	ldrb	r0, [r0, #+2295]
	cmp	r0, #0
	beq	LBB240_24
	mov	r0, #1
	ldr	r6, [r5]
	str	r0, [sp, #+56]
	mov	r1, #2
	add	r10, sp, #46
	add	r3, sp, #68
	mov	r2, r10
	mov	r8, #0
	str	r8, [sp]
	str	r1, [sp, #+60]
	str	r8, [sp, #+4]
	mov	r0, #10
	str	r0, [sp, #+68]
	add	r0, sp, #56
	bl	_sysctl
	mov	r0, r10
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r8, [sp, #+8]
	str	r8, [sp, #+4]
	mvn	r2, #0
	cmp	r0, #8
	mov	r1, r4, lsl #12
	mov	r3, #18
	orr	r3, r3, #1, 20
	mov	r0, r6
	movgt	r2, #15, 4
	str	r2, [sp]
	mov	r2, #3
	bl	_mmap
	ldr	r0, [sp, #+20]
	ldrb	r4, [r0, #+2296]
	cmp	r4, #0
	beq	LBB240_23
	ldr	r4, LCPI240_2
	ldr	r1, [r5, #+4]
	ldr	r0, [r4]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+20]
	bl	__ZN4MMgc6GCHeap11DumpHeapRepEv
LBB240_23:
	ldr	r4, [r5, #+4]
	ldr	r0, [sp, #+20]
	ldr	r1, [r0, #+1524]
	sub	r4, r1, r4
	str	r4, [r0, #+1524]
	mov	r4, #1
	strb	r4, [r5, #+20]
	mov	r4, #0
	strb	r4, [r5, #+21]
LBB240_24:
	ldr	r4, [sp, #+28]
	strb	r4, [r5, #+21]
LBB240_25:
	mov	r0, r5
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB240_26:
	ldr	r0, [sp, #+16]
	cmp	r0, #32
	movlo	r0, #32
	cmp	r0, r4
	bhs	LBB240_29
	ldr	r0, [sp, #+16]
	cmp	r4, r0
	beq	LBB240_29
	ldr	r3, [sp, #+16]
	sub	r4, r4, r3
	mov	r0, #24
	ldr	lr, [sp, #+36]
	mla	r1, r3, r0, r5
	ldrb	r9, [r5, #+21]
	mov	r2, #0
	str	r2, [r1, #+12]
	str	r2, [r1, #+16]
	mul	r12, r3, r0
	add	r6, lr, r3, lsl #12
	str	r6, [r5, +r12]
	str	r4, [r1, #+4]
	mov	r4, #1
	strb	r4, [r1, #+20]
	strb	r9, [r1, #+21]
	str	r3, [r1, #+8]
	ldrb	r4, [r5, #+20]
	strb	r4, [r1, #+20]
	str	r3, [r5, #+4]
	ldr	r4, [r1, #+4]
	add	r3, r4, r3
	mla	r0, r3, r0, r5
	str	r4, [r0, #+8]
	ldr	r0, [sp, #+20]
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
	ldr	lr, [r5]
	ldr	r4, [r5, #+4]
	str	lr, [sp, #+36]
LBB240_29:
	mov	r0, #1
	str	r0, [sp, #+56]
	mov	r1, #2
	add	r8, sp, #46
	add	r3, sp, #72
	mov	r2, r8
	mov	r6, #0
	str	r6, [sp]
	str	r1, [sp, #+60]
	str	r6, [sp, #+4]
	mov	r0, #10
	str	r0, [sp, #+72]
	add	r0, sp, #56
	bl	_sysctl
	mov	r0, r8
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r6, [sp, #+8]
	str	r6, [sp, #+4]
	mvn	r2, #0
	cmp	r0, #8
	mov	r1, r4, lsl #12
	mov	r3, #18
	orr	r3, r3, #1, 20
	movgt	r2, #15, 4
	str	r2, [sp]
	ldr	r0, [sp, #+36]
	mov	r2, #3
	bl	_mmap
	ldr	r0, [sp, #+20]
	ldrb	r0, [r0, #+2296]
	cmp	r0, #0
	beq	LBB240_31
	ldr	r0, LCPI240_3
	ldr	r1, [r5, #+4]
	ldr	r0, [r0]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r0, [sp, #+20]
	bl	__ZN4MMgc6GCHeap11DumpHeapRepEv
LBB240_31:
	ldr	r0, [r5, #+4]
	ldr	r1, [sp, #+20]
	ldr	r2, [r1, #+1524]
	sub	r0, r2, r0
	str	r0, [r1, #+1524]
	mov	r0, #1
	strb	r0, [r5, #+20]
	mov	r0, #0
	strb	r0, [r5, #+21]
	b	LBB240_25
	.align	2
	LCPI240_0:
 	.long	L_.str282991$non_lazy_ptr

	.align	2
	LCPI240_1:
 	.long	L_.str282991$non_lazy_ptr

	.align	2
	LCPI240_2:
 	.long	L_.str282991$non_lazy_ptr

	.align	2
	LCPI240_3:
 	.long	L_.str282991$non_lazy_ptr

	.align	2
	LCPI240_4:
 	.long	4114

Leh_func_end164:

	.globl	__ZN4MMgc6GCHeap10AllocBlockEmRbm
	.align	2
__ZN4MMgc6GCHeap10AllocBlockEmRbm:
Leh_func_begin165:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #24
	mov	r4, r3
	str	r2, [sp, #+20]
	mov	r5, r1
	str	r0, [sp, #+8]
	cmp	r1, #16
	bhi	LBB241_2
	sub	r0, r5, #1
	b	LBB241_3
LBB241_2:
	cmp	r5, #128
	movhs	r0, #29
	sublo	r0, r5, #16
	movlo	r1, #15
	addlo	r0, r1, r0, lsr #3
LBB241_3:
	ldr	r1, [sp, #+8]
	mov	r2, #24
	mov	r3, #0
	mla	r1, r0, r2, r1
	sub	r0, r0, #1
	str	r0, [sp, #+12]
	add	r1, r1, #127, 30
	sub	r0, r4, #1
	add	r1, r1, #1, 22
	str	r1, [sp, #+4]
	b	LBB241_21
LBB241_4:
	ldmia	r1, {r3, r12}
	and	r3, r0, r3, lsr #12
	sub	r3, r4, r3
	and	lr, r3, r0
	add	r3, lr, r5
	cmp	r12, r3
	blo	LBB241_6
	ldrb	r3, [r1, #+20]
	cmp	r3, #0
	bne	LBB241_28
LBB241_6:
	ldr	r3, [sp, #+8]
	ldrb	r3, [r3, #+2292]
	cmp	r3, #0
	beq	LBB241_19
	cmp	r9, #0
	ldrbeq	r3, [r1, #+20]
	cmpeq	r3, #0
	bne	LBB241_19
	mov	r6, r12
	mov	r3, r1
	b	LBB241_11
LBB241_9:
	mla	r11, r8, r2, r3
	ldr	r11, [r11, #+4]
	cmp	r11, #0
	beq	LBB241_13
	mul	lr, r8, r2
	add	r6, r11, r6
	ldr	lr, [r3, +lr]
	mov	r3, r10
	and	lr, r0, lr, lsr #12
	sub	lr, r4, lr
	and	lr, lr, r0
LBB241_11:
	add	lr, lr, r5
	cmp	lr, r6
	bls	LBB241_13
	ldr	r8, [r3, #+8]
	cmp	r8, #0
	rsbne	r8, r8, #0
	mlane	r10, r8, r2, r3
	ldrne	r11, [r10, #+12]
	cmpne	r11, #0
	bne	LBB241_9
LBB241_13:
	mla	r12, r12, r2, r1
	b	LBB241_15
LBB241_14:
	mla	r12, r8, r2, r12
	add	r6, r8, r6
LBB241_15:
	cmp	lr, r6
	bls	LBB241_18
	ldr	r8, [r12, #+12]
	cmp	r8, #0
	ldrne	r8, [r12, #+4]
	cmpne	r8, #0
	bne	LBB241_14
	cmp	lr, r6
	movls	r9, r3
	b	LBB241_19
LBB241_18:
	mov	r9, r3
LBB241_19:
	ldr	r1, [r1, #+16]
	ldr	r3, [sp, #+4]
	cmp	r3, r1
	bne	LBB241_4
	ldr	r3, [sp, #+16]
	str	r3, [sp, #+4]
	mov	r3, r9
LBB241_21:
	ldr	r1, [sp, #+12]
	add	r1, r1, #1
	str	r1, [sp, #+12]
	cmp	r1, #29
	bhi	LBB241_23
	ldr	r1, [sp, #+4]
	add	r9, r1, #24
	str	r9, [sp, #+16]
	b	LBB241_18
LBB241_23:
	cmp	r3, #0
	beq	LBB241_26
	ldr	r6, [sp, #+8]
	mov	r1, r3
	mov	r0, r6
	mov	r2, r5
	mov	r3, r4
	bl	__ZN4MMgc6GCHeap20CreateCommittedBlockEPNS0_9HeapBlockEmm
	str	r4, [sp]
	mov	r1, r0
	mov	r0, r6
	mov	r2, r5
	ldr	r3, [sp, #+20]
LBB241_25:
	bl	__ZN4MMgc6GCHeap19AllocCommittedBlockEPNS0_9HeapBlockEmRbm
	b	LBB241_27
LBB241_26:
	mov	r0, #0
LBB241_27:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB241_28:
	ldr	r2, [r1, #+12]
	ldr	r0, [r1, #+16]
	str	r0, [r2, #+16]
	ldr	r0, [r1, #+12]
	ldr	r2, [r1, #+16]
	str	r0, [r2, #+12]
	ldr	r3, [sp, #+20]
	mov	r0, #0
	str	r0, [r1, #+12]
	str	r0, [r1, #+16]
	mov	r2, r5
	str	r4, [sp]
	ldr	r0, [sp, #+8]
	b	LBB241_25
Leh_func_end165:

	.globl	__ZN4MMgc6GCHeap16EnsureFreeRegionEb
	.align	2
__ZN4MMgc6GCHeap16EnsureFreeRegionEb:
Leh_func_begin166:
	stmfd	sp!, {r4, r5, r7, lr}
	add	r7, sp, #8
	sub	sp, sp, #4
	mov	r4, r1
	ldr	r1, [r0, #+1512]
	cmp	r1, #0
	moveq	r5, r0
	ldreq	r0, [r5, #+1508]
	cmpeq	r0, #0
	bne	LBB242_3
	mov	r0, #0
	strb	r0, [sp, #+3]
	mov	r1, #1
	add	r2, sp, #3
	mov	r3, r1
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap10AllocBlockEmRbm
	cmp	r0, #0
	beq	LBB242_4
	ldr	r4, [r0]
	str	r4, [r5, #+1512]
LBB242_3:
	mov	r0, #1
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
LBB242_4:
	cmp	r4, #0
	beq	LBB242_3
	mov	r1, #1
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap18ExpandHeapInternalEm
	ldr	r0, [r5, #+1520]
	ldr	r1, [r5, #+1524]
	ldr	r2, [r5, #+2520]
	sub	r0, r0, r1
	ldr	r1, [r5, #+2516]
	add	r0, r0, r2
	cmp	r1, r0, lsl #12
	movlo	r0, r0, lsl #12
	strlo	r0, [r5, #+2516]
	mov	r0, #0
	ldr	r1, [r5, #+1512]
	cmp	r1, #0
	movne	r0, #1
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
Leh_func_end166:

	.globl	__ZN4MMgc6GCHeap10LargeAllocEmm
	.align	2
__ZN4MMgc6GCHeap10LargeAllocEmm:
Leh_func_begin167:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #52
	ldr	r3, [r0, #+1512]
	mov	r4, r1, lsl #12
	str	r2, [sp, #+16]
	str	r1, [sp, #+20]
	mov	r5, r0
	cmp	r3, #0
	ldreq	r0, [r5, #+1508]
	cmpeq	r0, #0
	bne	LBB243_4
	mov	r0, #0
	strb	r0, [sp, #+27]
	mov	r1, #1
	add	r2, sp, #27
	mov	r3, r1
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap10AllocBlockEmRbm
	cmp	r0, #0
	beq	LBB243_3
	ldr	r0, [r0]
	str	r0, [r5, #+1512]
	b	LBB243_4
LBB243_3:
	mov	r1, #1
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap18ExpandHeapInternalEm
	ldr	r0, [r5, #+1520]
	ldr	r1, [r5, #+1524]
	ldr	r2, [r5, #+2520]
	sub	r0, r0, r1
	ldr	r1, [r5, #+2516]
	add	r0, r0, r2
	cmp	r1, r0, lsl #12
	movlo	r0, r0, lsl #12
	strlo	r0, [r5, #+2516]
	ldr	r0, [r5, #+1512]
	cmp	r0, #0
	beq	LBB243_10
LBB243_4:
	mov	r0, #0
	mov	r1, r4
	bl	__Z25AVMPI_reserveMemoryRegionPvm
	cmp	r0, #0
	beq	LBB243_10
	ldr	r2, [sp, #+16]
	sub	r6, r2, #1
	and	r1, r6, r0, lsr #12
	sub	r1, r2, r1
	tst	r1, r6
	bne	LBB243_7
	str	r4, [sp, #+12]
	b	LBB243_8
LBB243_7:
	mov	r1, r4
	bl	_munmap
	ldr	r0, [sp, #+16]
	add	r0, r4, r0, lsl #12
	sub	r1, r0, #1, 20
	str	r1, [sp, #+12]
	mov	r0, #0
	bl	__Z25AVMPI_reserveMemoryRegionPvm
	cmp	r0, #0
	beq	LBB243_10
LBB243_8:
	mov	r8, r0
	mov	r1, #1
	mov	r0, #10
	str	r1, [sp, #+44]
	str	r0, [sp, #+28]
	add	r11, sp, #34
	add	r3, sp, #28
	mov	r2, r11
	mov	r10, #0
	str	r10, [sp]
	str	r10, [sp, #+4]
	mov	r1, #2
	add	r0, sp, #44
	str	r1, [sp, #+48]
	bl	_sysctl
	mov	r0, r11
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r10, [sp, #+8]
	str	r10, [sp, #+4]
	mvn	r2, #0
	cmp	r0, #8
	and	r0, r6, r8, lsr #12
	mov	r3, #18
	orr	r3, r3, #1, 20
	mov	r1, r4
	movgt	r2, #15, 4
	str	r2, [sp]
	ldr	r2, [sp, #+16]
	sub	r0, r2, r0
	and	r6, r0, r6
	add	r10, r8, r6, lsl #12
	mov	r2, #3
	mov	r0, r10
	bl	_mmap
	cmp	r0, r10
	beq	LBB243_11
	mov	r0, r8
	mov	r1, r4
	bl	_munmap
LBB243_10:
	mov	r0, #0
	b	LBB243_15
LBB243_11:
	mov	r0, r6, lsl #12
	ldr	r1, [sp, #+12]
	ldr	r2, [r5, #+1508]
	cmp	r2, #0
	add	r0, r0, r4
	add	r1, r8, r1
	add	r0, r8, r0
	beq	LBB243_13
	ldr	r3, [r2]
	str	r3, [r5, #+1508]
	b	LBB243_14
LBB243_13:
	ldr	r2, [r5, #+1512]
	add	r9, r2, #19
	add	r3, r2, #20
	str	r3, [r5, #+1512]
	ldr	r12, LCPI243_0
	add	r9, r9, #1, 20
	and	r9, r9, r12
	sub	r3, r9, r3
	cmp	r3, #20
	movlo	r3, #0
	strlo	r3, [r5, #+1512]
LBB243_14:
	cmp	r2, #0
	ldrne	r3, [r5, #+4]
	stmiane	r2, {r3, r8}
	strne	r1, [r2, #+8]
	mvnne	r9, #0
	strne	r0, [r2, #+12]
	strne	r9, [r2, #+16]
	strne	r2, [r5, #+4]
	ldr	r0, [r5, #+2520]
	ldr	r1, [sp, #+20]
	add	r0, r0, r1
	str	r0, [r5, #+2520]
	ldr	r2, [r5, #+1520]
	add	r0, r2, r0
	ldr	r1, [r5, #+1524]
	sub	r0, r0, r1
	ldr	r2, [r5, #+2516]
	cmp	r2, r0, lsl #12
	movlo	r0, r0, lsl #12
	strlo	r0, [r5, #+2516]
	mov	r0, r10
LBB243_15:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI243_0:
 	.long	4294963200

Leh_func_end167:

	.globl	__ZN4MMgc6GCHeap28CheckForStatusReturnToNormalEv
	.align	2
__ZN4MMgc6GCHeap28CheckForStatusReturnToNormalEv:
Leh_func_begin168:
	stmfd	sp!, {r7, lr}
	ldrb	r1, [r0, #+2509]
	mov	r7, sp
	cmp	r1, #0
	bne	LBB244_7
	ldr	r1, [r0, #+2496]
	cmp	r1, #1
	cmpne	r1, #3
	beq	LBB244_7
	ldr	r2, [r0, #+1520]
	ldr	r9, [r0, #+2264]
	ldr	r3, [r0, #+1524]
	add	r2, r2, r9, lsr #12
	mov	r9, r9, lsr #12
	sub	r2, r2, r3
	ldr	r3, [r0, #+2520]
	add	r2, r2, r3
	ldr	r3, [r0, #+2280]
	cmp	r3, #0
	beq	LBB244_6
	cmp	r1, #2
	bne	LBB244_6
	cmp	r2, r3
	movhi	sp, r7
	ldmfdhi	sp!, {r7, pc}
LBB244_5:
	mov	r1, #1
	bl	__ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
LBB244_6:
	mov	r1, #10
	ldr	r3, [r0, #+2516]
	mul	r1, r2, r1
	add	r2, r9, r3, lsr #12
	add	r2, r2, r2, lsl #3
	cmp	r2, r1
	bhi	LBB244_5
LBB244_7:
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end168:

	.globl	__ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE
	.align	2
__ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE:
Leh_func_begin169:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #12
	ldrb	r2, [r0, #+2509]
	str	r1, [sp, #+4]
	mov	r4, r0
	cmp	r2, #0
	beq	LBB245_2
	ldr	r0, [r4, #+2496]
	cmp	r0, r1
	beq	LBB245_42
LBB245_2:
	ldrb	r0, [r4, #+2508]
	cmp	r0, #0
	beq	LBB245_42
	mov	r0, #1
	strb	r0, [r4, #+2509]
	ldr	r1, [sp, #+4]
	add	r6, r4, #154, 28
	mov	r10, #0
	ldr	r0, [r4, #+2496]
	str	r1, [r4, #+2496]
	str	r0, [sp, #+8]
	ldr	r0, [r4, #+2476]
	ldr	r5, [r4, #+2484]
	add	r0, r0, #1
	str	r0, [r4, #+2476]
	add	r0, r4, #220
	add	r8, r0, #2, 22
	add	r0, r4, #105, 30
	add	r0, r0, #2, 22
	str	r0, [sp]
LBB245_4:
	tst	r10, #255
	beq	LBB245_6
	mov	r11, #0
	b	LBB245_24
LBB245_6:
	ldr	r0, [r4, #+2484]
	cmp	r5, r0
	bhs	LBB245_11
	ldr	r11, [r4, #+2472]
	add	r1, r11, r5, lsl #2
	add	r5, r5, #1
LBB245_8:
	add	r2, r5, #1
	ldr	r11, [r1], #+4
	cmp	r5, r0
	bhs	LBB245_23
	cmp	r11, #0
	bne	LBB245_23
	mov	r5, r2
	b	LBB245_8
LBB245_11:
	ldrb	r1, [r4, #+2480]
	cmp	r1, #0
	bne	LBB245_17
	ldr	r2, [r6]
	cmp	r5, r2
	blo	LBB245_14
LBB245_13:
	mov	r11, #0
	b	LBB245_21
LBB245_14:
	ldr	r3, [r4, #+2472]
LBB245_15:
	ldr	r11, [r3, +r5, lsl #2]
	add	r5, r5, #1
	cmp	r5, r2
	bhs	LBB245_21
	cmp	r11, #0
	beq	LBB245_15
	b	LBB245_21
LBB245_17:
	ldr	r2, [sp]
	ldr	r2, [r2]
	cmp	r5, r2
	bhs	LBB245_13
	ldr	r3, [r4, #+2472]
LBB245_19:
	ldr	r11, [r3, +r5, lsl #2]
	add	r5, r5, #1
	cmp	r5, r2
	bhs	LBB245_21
	cmp	r11, #0
	beq	LBB245_19
LBB245_21:
	cmp	r1, #0
	ldr	r2, [sp]
	moveq	r2, r6
	ldr	r1, [r2]
	cmp	r5, r1
	bne	LBB245_24
	cmp	r0, #0
	movne	r5, #0
	b	LBB245_24
LBB245_23:
	sub	r0, r2, r0
	sub	r5, r2, #1
	cmp	r0, #1
	moveq	r10, #1
LBB245_24:
	cmp	r11, #0
	beq	LBB245_26
	mov	r0, r8
	bl	_OSSpinLockUnlock
	ldr	r0, [r11]
	ldr	r3, [r0, #+8]
	ldr	r1, [sp, #+8]
	ldr	r2, [sp, #+4]
	mov	r0, r11
	blx	r3
	mov	r0, r8
	bl	_OSSpinLockLock
	b	LBB245_4
LBB245_26:
	mov	r0, #0
	strb	r0, [r4, #+2509]
	ldr	r0, [r4, #+2496]
	cmp	r0, #1
	cmpne	r0, #3
	beq	LBB245_32
	ldr	r1, [r4, #+1520]
	ldr	r3, [r4, #+2264]
	ldr	r2, [r4, #+1524]
	add	r1, r1, r3, lsr #12
	mov	r3, r3, lsr #12
	sub	r1, r1, r2
	ldr	r2, [r4, #+2520]
	add	r1, r1, r2
	ldr	r2, [r4, #+2280]
	cmp	r2, #0
	beq	LBB245_30
	cmp	r0, #2
	bne	LBB245_30
	cmp	r1, r2
	bls	LBB245_31
	b	LBB245_32
LBB245_30:
	mov	r0, #10
	ldr	r2, [r4, #+2516]
	mul	r0, r1, r0
	add	r1, r3, r2, lsr #12
	add	r1, r1, r1, lsl #3
	cmp	r1, r0
	bls	LBB245_32
LBB245_31:
	mov	r1, #1
	mov	r0, r4
	bl	__ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE
LBB245_32:
	ldr	r0, [r4, #+2476]
	sub	r0, r0, #1
	str	r0, [r4, #+2476]
	ldrb	r1, [r4, #+2480]
	cmp	r1, #0
	beq	LBB245_42
	cmp	r0, #0
	bne	LBB245_42
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	b	LBB245_39
LBB245_35:
	ldr	r9, [r4, #+2472]
	ldr	r12, [r9, +r2, lsl #2]
	cmp	r12, #0
	bne	LBB245_38
	ldr	r12, [r9, +r0, lsl #2]
	cmp	r12, #0
	beq	LBB245_43
	ldr	r3, [r4, #+2484]
	cmp	r0, r3
	streq	r2, [r4, #+2484]
	ldreq	r12, [r9, +r0, lsl #2]
	str	r12, [r9, +r2, lsl #2]
	ldr	r3, [r4, #+2472]
	str	r1, [r3, +r0, lsl #2]
LBB245_38:
	add	r0, r0, #1
	add	r2, r2, #1
LBB245_39:
	ldr	r3, [sp]
	ldr	r3, [r3]
LBB245_40:
	cmp	r3, r0
	bhi	LBB245_35
	mov	r0, #0
	strb	r0, [r4, #+2480]
LBB245_42:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB245_43:
	add	r0, r0, #1
	b	LBB245_40
Leh_func_end169:

	.globl	__ZN4MMgc6GCHeap26SignalExternalDeallocationEm
	.align	2
__ZN4MMgc6GCHeap26SignalExternalDeallocationEm:
Leh_func_begin170:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r1, LCPI246_0
	ldr	r0, [r1]
	ldr	r5, [r0]
	add	r7, sp, #12
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+2264]
	sub	r0, r0, r4
	str	r0, [r5, #+2264]
	ldrb	r1, [r5, #+2509]
	cmp	r1, #0
	bne	LBB246_7
	ldr	r1, [r5, #+2496]
	cmp	r1, #1
	cmpne	r1, #3
	beq	LBB246_7
	ldr	r3, [r5, #+1520]
	ldr	r2, [r5, #+1524]
	add	r3, r3, r0, lsr #12
	sub	r2, r3, r2
	mov	r0, r0, lsr #12
	ldr	r3, [r5, #+2520]
	add	r2, r2, r3
	ldr	r3, [r5, #+2280]
	cmp	r3, #0
	beq	LBB246_5
	cmp	r1, #2
	bne	LBB246_5
	cmp	r2, r3
	bls	LBB246_6
	b	LBB246_7
LBB246_5:
	mov	r1, #10
	ldr	r3, [r5, #+2516]
	add	r0, r0, r3, lsr #12
	mul	r1, r2, r1
	add	r0, r0, r0, lsl #3
	cmp	r0, r1
	bls	LBB246_7
LBB246_6:
	mov	r1, #1
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE
LBB246_7:
	mov	r0, r6
	bl	_OSSpinLockUnlock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI246_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end170:

	.globl	__ZN4MMgc6GCHeap8DecommitEv
	.align	2
__ZN4MMgc6GCHeap8DecommitEv:
Leh_func_begin171:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #80
	mov	r4, r0
	ldrb	r0, [r4, #+2297]
	cmp	r0, #0
	ldrbne	r0, [r4, #+2508]
	cmpne	r0, #0
	beq	LBB247_66
	ldr	r0, [r4, #+1520]
	ldr	r1, [r4, #+1524]
	ldr	r2, [r4, #+2520]
	sub	r0, r0, r1
	ldr	r1, [r4, #+2252]
	add	r5, r0, r2
	sub	r6, r5, r1
	mov	r0, #25
	mov	r1, #100
	mul	r1, r6, r1
	mul	r0, r5, r0
	str	r1, [sp, #+64]
	cmp	r1, r0
	bls	LBB247_3
	sub	r0, r1, r0
	ldr	r2, LCPI247_0
	umull	r0, r1, r0, r2
	mov	r8, r1, lsr #5
	b	LBB247_7
LBB247_3:
	ldr	r8, [r4, #+2276]
	cmp	r8, r5
	sublo	r0, r5, r6
	cmplo	r0, r8
	blo	LBB247_6
	ldr	r8, [r4, #+2280]
	cmp	r8, #0
	beq	LBB247_66
	cmp	r8, r5
	sublo	r0, r5, r6
	cmplo	r0, r8
	bhs	LBB247_66
LBB247_6:
	add	r0, r5, #1
	sub	r8, r0, r8
LBB247_7:
	add	r0, r4, #220
	ldr	r10, [r4, #+2272]
	add	r0, r0, #2, 22
	str	r0, [sp, #+68]
	bl	_OSSpinLockLock
	cmp	r6, #32
	mov	r1, #0
	mov	r0, #0
	movhi	r1, #1
	cmp	r8, #32
	movlo	r0, #1
	tst	r0, r1
	movne	r8, #32
	sub	r0, r5, r8
	sub	r1, r5, r10
	cmp	r0, r10
	movlo	r8, r1
	cmp	r8, #0
	beq	LBB247_30
	mov	r1, #50
	add	r0, r4, #4
	str	r0, [sp, #+40]
	mul	r1, r5, r1
	str	r1, [sp, #+60]
	add	r0, r4, #180
	ldr	r1, LCPI247_2
	add	r0, r0, #2, 22
	str	r0, [sp, #+36]
	mov	r5, r0
	ldr	r1, [r1]
	str	r1, [sp, #+56]
	mov	r0, #0
	str	r0, [sp, #+44]
	ldr	r1, LCPI247_3
	ldr	r1, [r1]
	str	r1, [sp, #+52]
	ldr	r1, LCPI247_4
	ldr	r1, [r1]
	str	r1, [sp, #+48]
LBB247_9:
	ldr	r0, [r4, #+1512]
	cmp	r0, #0
	ldreq	r0, [r4, #+1508]
	cmpeq	r0, #0
	bne	LBB247_53
	mov	r0, #0
	strb	r0, [sp, #+75]
	mov	r3, #1
	add	r2, sp, #75
	mov	r1, r3
	mov	r0, r4
	bl	__ZN4MMgc6GCHeap10AllocBlockEmRbm
	cmp	r0, #0
	ldrne	r0, [r0]
	strne	r0, [r4, #+1512]
	b	LBB247_53
LBB247_11:
	ldrb	r0, [r6, #+20]
	cmp	r0, #0
	beq	LBB247_54
	ldrb	r0, [r4, #+2292]
	cmp	r0, #0
	beq	LBB247_56
	ldr	r1, [r6, #+12]
	ldr	r0, [r6, #+16]
	str	r0, [r1, #+16]
	ldrd	r0, [r6, #+12]
	str	r0, [r1, #+12]
	mov	r0, #0
	str	r0, [r6, #+12]
	str	r0, [r6, #+16]
	ldr	r0, [r6, #+4]
	cmp	r0, r8
	bls	LBB247_15
	ldr	r9, [r6]
	mov	r12, #0
	mov	r2, #24
	mla	r1, r8, r2, r6
	ldrb	r3, [r6, #+21]
	str	r12, [r1, #+12]
	str	r12, [r1, #+16]
	sub	r0, r0, r8
	add	r9, r9, r8, lsl #12
	mul	r12, r8, r2
	str	r9, [r6, +r12]
	str	r0, [r1, #+4]
	mov	r9, #1
	strb	r9, [r1, #+20]
	strb	r3, [r1, #+21]
	str	r8, [r1, #+8]
	ldrb	r0, [r6, #+20]
	strb	r0, [r1, #+20]
	str	r8, [r6, #+4]
	ldr	r0, [r1, #+4]
	add	r3, r0, r8
	mla	r2, r3, r2, r6
	str	r0, [r2, #+8]
	mov	r0, r4
	mov	r2, #0
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
LBB247_15:
	ldr	r1, [r6]
	ldr	r10, [sp, #+40]
	b	LBB247_18
LBB247_16:
	ldr	r0, [r10, #+4]
	cmp	r0, r1
	bhi	LBB247_18
	ldr	r0, [r10, #+8]
	cmp	r0, r1
	bhi	LBB247_20
LBB247_18:
	ldr	r10, [r10]
	cmp	r10, #0
	bne	LBB247_16
	mov	r10, #0
LBB247_20:
	ldrb	r0, [r4, #+2293]
	cmp	r0, #0
	ldrne	r2, [sp, #+60]
	ldrne	r0, [sp, #+64]
	cmpne	r0, r2
	bls	LBB247_35
	ldr	r0, [r10, #+4]
	cmp	r1, r0
	ldrls	r11, [r6, #+4]
	addls	r2, r1, r11, lsl #12
	ldrls	r3, [r10, #+8]
	cmpls	r3, r2
	bhi	LBB247_35
	cmp	r1, r0
	bhs	LBB247_24
	sub	r3, r0, r1
	mov	r5, r3, lsr #12
	str	r5, [sp, #+32]
	mov	r9, #0
	mov	r0, #24
	ldrb	r2, [r6, #+21]
	sub	r11, r11, r3, lsr #12
	mla	r5, r5, r0, r6
	str	r9, [r5, #+12]
	str	r9, [r5, #+16]
	ldr	r9, [sp, #+32]
	mul	r12, r9, r0
	str	r12, [sp, #+28]
	ldr	lr, LCPI247_1
	and	lr, r3, lr
	add	r1, r1, lr
	str	r1, [r6, +r12]
	str	r11, [r5, #+4]
	mov	r1, #1
	strb	r1, [r5, #+20]
	strb	r2, [r5, #+21]
	str	r9, [r5, #+8]
	mov	r2, #0
	ldrb	r11, [r6, #+20]
	strb	r11, [r5, #+20]
	str	r9, [r6, #+4]
	mov	r1, r6
	ldr	r11, [r5, #+4]
	add	r3, r11, r3, lsr #12
	mla	r3, r3, r0, r6
	mov	r0, r4
	str	r11, [r3, #+8]
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
	ldr	r11, [r5, #+4]
	ldr	r12, [sp, #+28]
	ldr	r1, [r6, +r12]
	ldr	r3, [r10, #+8]
	mov	r6, r5
LBB247_24:
	add	r5, r1, r11, lsl #12
	cmp	r5, r3
	bls	LBB247_26
	sub	r5, r3, r1
	mov	r0, r5, lsr #12
	mov	r2, #24
	mla	r3, r0, r2, r6
	ldrb	r9, [r6, #+21]
	mov	r12, #0
	str	r12, [r3, #+12]
	str	r12, [r3, #+16]
	ldr	lr, LCPI247_1
	sub	r11, r11, r5, lsr #12
	and	lr, r5, lr
	add	r1, r1, lr
	mul	r12, r0, r2
	str	r1, [r6, +r12]
	str	r11, [r3, #+4]
	mov	r1, #1
	strb	r1, [r3, #+20]
	strb	r9, [r3, #+21]
	str	r0, [r3, #+8]
	ldrb	r11, [r6, #+20]
	strb	r11, [r3, #+20]
	str	r0, [r6, #+4]
	mov	r0, r4
	mov	r1, r3
	ldr	r11, [r3, #+4]
	add	r5, r11, r5, lsr #12
	mla	r5, r5, r2, r6
	mov	r2, #0
	str	r11, [r5, #+8]
	bl	__ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
	ldr	r11, [r6, #+4]
LBB247_26:
	mov	r0, r4
	mov	r1, r6
	mov	r2, #1
	sub	r8, r8, r11
	mov	r5, #0
	bl	__ZN4MMgc6GCHeap11RemoveBlockEPNS0_9HeapBlockEb
LBB247_27:
	str	r5, [sp, #+44]
LBB247_28:
	ldr	r5, [sp, #+44]
	rsb	r5, r5, #29
	cmp	r5, #0
	blt	LBB247_30
	mov	r6, #24
	mla	r5, r5, r6, r4
	cmp	r8, #0
	add	r5, r5, #127, 30
	add	r5, r5, #1, 22
	bne	LBB247_9
LBB247_30:
	ldrb	r0, [r4, #+2296]
	cmp	r0, #0
	movne	r0, r4
	blne	__ZN4MMgc6GCHeap11DumpHeapRepEv
	ldrb	r0, [r4, #+2509]
	cmp	r0, #0
	bne	LBB247_65
	ldr	r0, [r4, #+2496]
	cmp	r0, #1
	cmpne	r0, #3
	beq	LBB247_65
	ldr	r1, [r4, #+1520]
	ldr	r3, [r4, #+2264]
	ldr	r2, [r4, #+1524]
	add	r1, r1, r3, lsr #12
	mov	r3, r3, lsr #12
	sub	r1, r1, r2
	ldr	r2, [r4, #+2520]
	add	r1, r1, r2
	ldr	r2, [r4, #+2280]
	cmp	r2, #0
	beq	LBB247_63
	cmp	r0, #2
	bne	LBB247_63
	cmp	r1, r2
	bls	LBB247_64
	b	LBB247_65
LBB247_35:
	ldr	r2, [r6, #+4]
	ldr	r0, [sp, #+56]
	mov	r10, r2, lsl #12
	str	r1, [sp, #+76]
	ldr	r0, [r0]
	mov	r2, r10
	bl	_vm_deallocate
	cmp	r0, #0
	bne	LBB247_37
	mov	r2, #0
	str	r2, [sp]
	str	r2, [sp, #+4]
	str	r2, [sp, #+8]
	str	r2, [sp, #+12]
	str	r2, [sp, #+16]
	ldr	r0, [sp, #+52]
	add	r1, sp, #76
	mov	r3, #0
	mov	r2, #7
	str	r2, [sp, #+20]
	ldr	r0, [r0]
	mov	r2, #2
	str	r2, [sp, #+24]
	mov	r2, r10
	bl	_vm_map
LBB247_37:
	cmp	r0, #0
	bne	LBB247_67
	mov	r0, #0
	strb	r0, [r6, #+20]
	strb	r0, [r6, #+21]
	ldr	r1, [r6, #+4]
	sub	r8, r8, r1
	ldrb	r0, [r4, #+2296]
	cmp	r0, #0
	beq	LBB247_40
	ldr	r2, [r6]
	ldr	r0, [sp, #+48]
	bl	__ZN4MMgc5GCLogEPKcz
	ldr	r1, [r6, #+4]
LBB247_40:
	ldr	r0, [r4, #+1524]
	add	r0, r0, r1
	str	r0, [r4, #+1524]
	ldr	r0, [r6, #+8]
	cmp	r0, #0
	beq	LBB247_44
	mov	r1, #24
	rsb	r0, r0, #0
	mla	r1, r0, r1, r6
	ldrb	r1, [r1, #+20]
	cmp	r1, #0
	bne	LBB247_44
	mov	r1, #24
	mla	r1, r0, r1, r6
	ldr	r2, [r1, #+12]!
	cmp	r2, #0
	beq	LBB247_44
	mov	r3, #24
	mla	r9, r0, r3, r6
	mla	r0, r0, r3, r6
	ldr	r3, [r0, #+16]
	str	r3, [r2, #+16]
	ldr	r2, [r0, #+16]
	ldr	r3, [r1]
	str	r3, [r2, #+12]
	mov	r2, #0
	str	r2, [r1]
	str	r2, [r0, #+16]
	ldr	r1, [r0, #+4]
	ldr	r3, [r6, #+4]
	add	r1, r3, r1
	str	r1, [r0, #+4]
	str	r2, [r6]
	str	r2, [r6, #+4]
	str	r2, [r6, #+8]
	mov	r6, r9
LBB247_44:
	mov	r1, #24
	ldr	r0, [r6, #+4]
	mla	r1, r0, r1, r6
	ldr	r2, [r1, #+4]!
	cmp	r2, #0
	beq	LBB247_48
	mov	r2, #24
	mla	r2, r0, r2, r6
	ldrb	r2, [r2, #+20]
	cmp	r2, #0
	bne	LBB247_48
	mov	r2, #24
	mla	r2, r0, r2, r6
	ldr	r3, [r2, #+12]!
	cmp	r3, #0
	beq	LBB247_48
	mov	r9, #24
	mla	r12, r0, r9, r6
	ldr	lr, [r12, #+16]
	str	lr, [r3, #+16]
	mul	r0, r0, r9
	ldr	r3, [r12, #+16]
	ldr	lr, [r2]
	str	lr, [r3, #+12]
	mov	r3, #0
	str	r3, [r2]
	str	r3, [r12, #+16]
	ldr	r2, [r6, #+4]
	ldr	lr, [r1]
	add	r2, lr, r2
	str	r2, [r6, #+4]
	str	r3, [r1]
	str	r3, [r12, #+8]
	str	r3, [r6, +r0]
	ldr	r0, [r6, #+4]
LBB247_48:
	mov	r1, #24
	mla	r1, r0, r1, r6
	str	r0, [r1, #+8]
	ldr	r1, [sp, #+36]
	b	LBB247_51
LBB247_49:
	ldr	r2, [r1, #+4]
	cmp	r2, r0
	blo	LBB247_51
	ldrb	r2, [r1, #+20]
	cmp	r2, #0
	beq	LBB247_52
LBB247_51:
	ldr	r1, [r1, #+16]
	ldr	r2, [sp, #+36]
	cmp	r1, r2
	bne	LBB247_49
LBB247_52:
	str	r1, [r6, #+16]
	ldr	r0, [r1, #+12]
	str	r0, [r6, #+12]
	str	r6, [r0, #+16]
	str	r6, [r1, #+12]
LBB247_53:
	mov	r6, r5
LBB247_54:
	cmp	r8, #0
	ldrne	r6, [r6, #+12]
	cmpne	r6, r5
	bne	LBB247_11
	ldr	r0, [sp, #+44]
	add	r0, r0, #1
	str	r0, [sp, #+44]
	b	LBB247_28
LBB247_56:
	ldr	r0, [r6]
	ldr	r1, [sp, #+40]
	b	LBB247_59
LBB247_57:
	ldr	r2, [r1, #+4]
	cmp	r2, r0
	bhi	LBB247_59
	ldr	r3, [r1, #+8]
	cmp	r3, r0
	bhi	LBB247_61
LBB247_59:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB247_57
	mov	r1, #4
	ldr	r2, [r1]
	mov	r1, #0
LBB247_61:
	cmp	r0, r2
	ldreq	r2, [r6, #+4]
	addeq	r0, r0, r2, lsl #12
	ldreq	r1, [r1, #+12]
	cmpeq	r1, r0
	bne	LBB247_54
	ldr	r0, [r6, #+12]
	ldr	r5, [r6, #+16]
	str	r5, [r0, #+16]
	mov	r1, r6
	mov	r2, #1
	ldr	r5, [r6, #+12]
	ldr	r0, [r6, #+16]
	str	r5, [r0, #+12]
	mov	r0, r4
	mov	r5, #0
	str	r5, [r6, #+12]
	str	r5, [sp, #+44]
	str	r5, [r6, #+16]
	bl	__ZN4MMgc6GCHeap11RemoveBlockEPNS0_9HeapBlockEb
	b	LBB247_28
LBB247_63:
	mov	r0, #10
	ldr	r2, [r4, #+2516]
	mul	r0, r1, r0
	add	r1, r3, r2, lsr #12
	add	r1, r1, r1, lsl #3
	cmp	r1, r0
	bls	LBB247_65
LBB247_64:
	mov	r1, #1
	mov	r0, r4
	bl	__ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE
LBB247_65:
	ldr	r0, [sp, #+68]
	bl	_OSSpinLockUnlock
LBB247_66:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB247_67:
	mov	r0, r4
	mov	r1, r6
	mov	r5, #0
	bl	__ZN4MMgc6GCHeap15RemoveLostBlockEPNS0_9HeapBlockE
	b	LBB247_27
	.align	2
	LCPI247_0:
 	.long	1374389535

	.align	2
	LCPI247_1:
 	.long	4294963200

	.align	2
	LCPI247_2:
 	.long	L_mach_task_self_$non_lazy_ptr

	.align	2
	LCPI247_3:
 	.long	L_mach_task_self_$non_lazy_ptr

	.align	2
	LCPI247_4:
 	.long	L_.str302993$non_lazy_ptr

Leh_func_end171:

	.globl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	.align	2
__ZN4MMgc6GCHeap20SendFreeMemorySignalEm:
Leh_func_begin172:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #12
	mov	r4, r0
	ldrb	r0, [r4, #+2509]
	cmp	r0, #0
	ldreq	r0, [r4, #+2496]
	cmpeq	r0, #1
	bne	LBB248_44
	ldrb	r0, [r4, #+2508]
	cmp	r0, #0
	beq	LBB248_44
	mov	r0, #1
	strb	r0, [r4, #+2509]
	str	r1, [sp, #+8]
	mov	r10, #0
	ldr	r0, [r4, #+1520]
	ldr	r1, [r4, #+1524]
	ldr	r3, [r4, #+2520]
	ldr	r2, [r4, #+2264]
	ldr	r9, [r4, #+2476]
	ldr	r5, [r4, #+2484]
	sub	r0, r0, r1
	add	r9, r9, #1
	str	r9, [r4, #+2476]
	add	r0, r0, r3
	add	r0, r0, r2, lsr #12
	str	r0, [sp, #+4]
	add	r0, r4, #154, 28
	str	r0, [sp]
	add	r0, r4, #220
	add	r6, r0, #2, 22
	add	r0, r4, #105, 30
	add	r8, r0, #2, 22
LBB248_3:
	tst	r10, #255
	beq	LBB248_5
	mov	r11, #0
	b	LBB248_23
LBB248_5:
	ldr	r0, [r4, #+2484]
	cmp	r5, r0
	bhs	LBB248_10
	ldr	r11, [r4, #+2472]
	add	r1, r11, r5, lsl #2
	add	r5, r5, #1
LBB248_7:
	add	r2, r5, #1
	ldr	r11, [r1], #+4
	cmp	r5, r0
	bhs	LBB248_22
	cmp	r11, #0
	bne	LBB248_22
	mov	r5, r2
	b	LBB248_7
LBB248_10:
	ldrb	r1, [r4, #+2480]
	cmp	r1, #0
	bne	LBB248_16
	ldr	r11, [sp]
	ldr	r2, [r11]
	cmp	r5, r2
	blo	LBB248_13
LBB248_12:
	mov	r11, #0
	b	LBB248_20
LBB248_13:
	ldr	r3, [r4, #+2472]
LBB248_14:
	ldr	r11, [r3, +r5, lsl #2]
	add	r5, r5, #1
	cmp	r5, r2
	bhs	LBB248_20
	cmp	r11, #0
	beq	LBB248_14
	b	LBB248_20
LBB248_16:
	ldr	r2, [r8]
	cmp	r5, r2
	bhs	LBB248_12
	ldr	r3, [r4, #+2472]
LBB248_18:
	ldr	r11, [r3, +r5, lsl #2]
	add	r5, r5, #1
	cmp	r5, r2
	bhs	LBB248_20
	cmp	r11, #0
	beq	LBB248_18
LBB248_20:
	cmp	r1, #0
	mov	r3, r8
	ldr	r2, [sp]
	moveq	r3, r2
	ldr	r1, [r3]
	cmp	r5, r1
	bne	LBB248_23
	cmp	r0, #0
	movne	r5, #0
	b	LBB248_23
LBB248_22:
	sub	r0, r2, r0
	sub	r5, r2, #1
	cmp	r0, #1
	moveq	r10, #1
LBB248_23:
	cmp	r11, #0
	beq	LBB248_25
	mov	r0, r6
	bl	_OSSpinLockUnlock
	ldr	r0, [r11]
	ldr	r3, [r0, #+8]
	mov	r2, #0
	mov	r1, r2
	mov	r0, r11
	blx	r3
	mov	r0, r4
	bl	__ZN4MMgc6GCHeap8DecommitEv
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r1, [r4, #+1520]
	ldr	r2, [sp, #+4]
	ldr	r0, [r4, #+1524]
	sub	r1, r2, r1
	add	r0, r1, r0
	ldr	r1, [r4, #+2520]
	sub	r0, r0, r1
	ldr	r1, [r4, #+2264]
	sub	r0, r0, r1, lsr #12
	ldr	r1, [sp, #+8]
	cmp	r0, r1
	bls	LBB248_3
LBB248_25:
	ldrb	r0, [r4, #+2480]
	cmp	r0, #0
	bne	LBB248_27
	ldr	r1, [sp]
	ldr	r1, [r1]
	b	LBB248_30
LBB248_27:
	ldr	r1, [r8]
	b	LBB248_32
LBB248_28:
	ldr	r2, [r4, #+2472]
	ldr	r2, [r2, +r5, lsl #2]
	cmp	r2, #0
	bne	LBB248_34
	add	r5, r5, #1
LBB248_30:
	cmp	r5, r1
	blo	LBB248_28
	b	LBB248_34
LBB248_31:
	add	r5, r5, #1
LBB248_32:
	cmp	r5, r1
	bhs	LBB248_34
	ldr	r2, [r4, #+2472]
	ldr	r2, [r2, +r5, lsl #2]
	cmp	r2, #0
	beq	LBB248_31
LBB248_34:
	mov	r1, r8
	cmp	r0, #0
	ldr	r2, [sp]
	moveq	r1, r2
	ldr	r1, [r1]
	cmp	r5, r1
	movhs	r5, #0
	str	r5, [r4, #+2484]
	mov	r1, #0
	strb	r1, [r4, #+2509]
	cmp	r0, #0
	ldr	r1, [r4, #+2476]
	sub	r1, r1, #1
	str	r1, [r4, #+2476]
	beq	LBB248_44
	cmp	r1, #0
	bne	LBB248_44
	mov	r0, #1
	mov	r1, #0
	mov	r2, #0
	b	LBB248_41
LBB248_37:
	ldr	r9, [r4, #+2472]
	ldr	r12, [r9, +r2, lsl #2]
	cmp	r12, #0
	bne	LBB248_40
	ldr	r12, [r9, +r0, lsl #2]
	cmp	r12, #0
	beq	LBB248_45
	ldr	r3, [r4, #+2484]
	cmp	r0, r3
	streq	r2, [r4, #+2484]
	ldreq	r12, [r9, +r0, lsl #2]
	str	r12, [r9, +r2, lsl #2]
	ldr	r3, [r4, #+2472]
	str	r1, [r3, +r0, lsl #2]
LBB248_40:
	add	r0, r0, #1
	add	r2, r2, #1
LBB248_41:
	ldr	r3, [r8]
LBB248_42:
	cmp	r3, r0
	bhi	LBB248_37
	mov	r0, #0
	strb	r0, [r4, #+2480]
LBB248_44:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB248_45:
	add	r0, r0, #1
	b	LBB248_42
Leh_func_end172:

	.globl	__ZN4MMgc6GCHeap24SignalExternalFreeMemoryEm
	.align	2
__ZN4MMgc6GCHeap24SignalExternalFreeMemoryEm:
Leh_func_begin173:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r1, LCPI249_0
	ldr	r0, [r1]
	ldr	r5, [r0]
	add	r7, sp, #12
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	mov	r1, r4
	cmn	r4, #1
	mov	r0, r5
	movne	r1, r1, lsr #12
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, r6
	bl	_OSSpinLockUnlock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI249_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end173:

	.globl	__ZN4MMgc6GCHeap14SystemOOMEventEmi
	.align	2
__ZN4MMgc6GCHeap14SystemOOMEventEmi:
Leh_func_begin174:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	cmp	r2, #0
	ldrbeq	r2, [r0, #+2509]
	cmpeq	r2, #0
	bne	LBB250_2
	mov	r2, #1
	add	r1, r2, r1, lsr #12
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
LBB250_2:
	bl	__ZN4MMgc6GCHeap5AbortEv
Leh_func_end174:

	.globl	__ZN4MMgc6GCHeap11AllocHelperEmbRbm
	.align	2
__ZN4MMgc6GCHeap11AllocHelperEmbRbm:
Leh_func_begin175:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r4, r3
	mov	r5, r2
	ldr	r10, [r7, #+8]
	mov	r2, r4
	mov	r3, r10
	mov	r6, r1
	mov	r8, r0
	bl	__ZN4MMgc6GCHeap10AllocBlockEmRbm
	cmp	r0, #0
	bne	LBB251_10
	cmp	r5, #0
	beq	LBB251_10
	ldr	r1, [r8, #+1520]
	add	r2, r1, r6
	ldr	r0, [r8, #+1524]
	ldr	r3, [r8, #+2520]
	ldr	r9, [r8, #+2264]
	ldr	r12, [r8, #+2276]
	sub	r2, r2, r0
	add	r2, r2, r3
	add	r2, r2, r9, lsr #12
	cmp	r2, r12
	bhi	LBB251_4
	ldr	lr, [r8, #+2280]
	cmp	lr, #0
	cmpne	r2, lr
	bls	LBB251_5
LBB251_4:
	mov	r0, r8
	mov	r1, r6
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	ldr	r12, [r8, #+2276]
	ldr	r1, [r8, #+1520]
	ldr	r0, [r8, #+1524]
	ldr	r9, [r8, #+2264]
	ldr	r3, [r8, #+2520]
LBB251_5:
	add	r2, r3, r6
	add	r2, r2, r9, lsr #12
	sub	r0, r2, r0
	add	r0, r0, r1
	cmp	r0, r12
	bhi	LBB251_12
	cmp	r6, #1, 24
	blo	LBB251_9
	ldrb	r0, [r8, #+2292]
	cmp	r0, #0
	beq	LBB251_9
	mov	r0, r8
	mov	r1, r6
	mov	r2, r10
	bl	__ZN4MMgc6GCHeap10LargeAllocEmm
	b	LBB251_13
LBB251_9:
	mov	r0, r8
	mov	r1, r6
	bl	__ZN4MMgc6GCHeap18ExpandHeapInternalEm
	ldr	r0, [r8, #+1520]
	ldr	r1, [r8, #+1524]
	ldr	r2, [r8, #+2520]
	sub	r0, r0, r1
	ldr	r1, [r8, #+2516]
	add	r0, r0, r2
	cmp	r1, r0, lsl #12
	movlo	r0, r0, lsl #12
	strlo	r0, [r8, #+2516]
	mov	r0, r8
	mov	r1, r6
	mov	r2, r4
	mov	r3, r10
	bl	__ZN4MMgc6GCHeap10AllocBlockEmRbm
LBB251_10:
	cmp	r0, #0
	beq	LBB251_12
	ldr	r0, [r0]
	b	LBB251_13
LBB251_12:
	mov	r0, #0
LBB251_13:
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end175:

	.globl	__ZN4MMgc6GCHeap25CheckForSoftLimitExceededEm
	.align	2
__ZN4MMgc6GCHeap25CheckForSoftLimitExceededEm:
Leh_func_begin176:
	stmfd	sp!, {r7, lr}
	ldr	r2, [r0, #+2280]
	mov	r7, sp
	cmp	r2, #0
	beq	LBB252_3
	ldr	r1, [r0, #+2496]
	cmp	r1, #1
	movne	sp, r7
	ldmfdne	sp!, {r7, pc}
	ldr	r1, [r0, #+1520]
	ldr	r3, [r0, #+1524]
	sub	r1, r1, r3
	ldr	r3, [r0, #+2520]
	add	r1, r1, r3
	ldr	r3, [r0, #+2264]
	add	r1, r1, r3, lsr #12
	cmp	r1, r2
	bls	LBB252_3
	ldrb	r1, [r0, #+2509]
	cmp	r1, #0
	moveq	r1, #2
	bleq	__ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE
LBB252_3:
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end176:

	.globl	__ZN4MMgc6GCHeap28CheckForMemoryLimitsExceededEv
	.align	2
__ZN4MMgc6GCHeap28CheckForMemoryLimitsExceededEv:
Leh_func_begin177:
	stmfd	sp!, {r4, r7, lr}
	ldr	r1, [r0, #+2496]
	add	r7, sp, #4
	cmp	r1, #3
	beq	LBB253_11
	mov	r4, r0
	ldrb	r0, [r4, #+2509]
	cmp	r0, #0
	bne	LBB253_11
	ldr	r9, [r4, #+2280]
	ldr	r0, [r4, #+1520]
	ldr	r1, [r4, #+1524]
	ldr	r2, [r4, #+2264]
	ldr	r3, [r4, #+2520]
	cmp	r9, #0
	subne	r12, r0, r1
	addne	r12, r12, r3
	addne	lr, r12, r2, lsr #12
	cmpne	lr, r9
	bls	LBB253_4
	sub	r1, r12, r9
	mov	r0, r2, lsr #12
	add	r1, r1, r0
	b	LBB253_6
LBB253_4:
	sub	r0, r0, r1
	ldr	r1, [r4, #+2276]
	add	r0, r0, r3
	add	r0, r0, r2, lsr #12
	cmp	r0, r1
	bls	LBB253_11
	ldr	r2, LCPI253_0
	sub	r0, r0, r1
	umull	r2, r3, r1, r2
	add	r1, r0, r3, lsr #3
LBB253_6:
	cmp	r1, #0
	beq	LBB253_11
	mov	r0, r4
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	ldr	r0, [r4, #+1520]
	ldr	r1, [r4, #+1524]
	ldr	r2, [r4, #+2276]
	sub	r0, r0, r1
	ldr	r1, [r4, #+2520]
	add	r0, r0, r1
	ldr	r1, [r4, #+2264]
	add	r0, r0, r1, lsr #12
	cmp	r0, r2
	bhi	LBB253_12
	ldr	r1, [r4, #+2280]
	cmp	r1, #0
	beq	LBB253_11
	ldr	r2, [r4, #+2496]
	cmp	r2, #1
	subne	sp, r7, #4
	ldmfdne	sp!, {r4, r7, pc}
	cmp	r0, r1
	bls	LBB253_11
	ldrb	r0, [r4, #+2509]
	cmp	r0, #0
	moveq	r1, #2
	moveq	r0, r4
	bleq	__ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE
LBB253_11:
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
LBB253_12:
	mov	r0, r4
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI253_0:
 	.long	3435973837

Leh_func_end177:

	.globl	__ZN4MMgc6GCHeap24SignalExternalAllocationEm
	.align	2
__ZN4MMgc6GCHeap24SignalExternalAllocationEm:
Leh_func_begin178:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r1, LCPI254_0
	ldr	r0, [r1]
	ldr	r5, [r0]
	add	r7, sp, #12
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+2264]
	add	r0, r0, r4
	str	r0, [r5, #+2264]
	mov	r0, r5
	bl	__ZN4MMgc6GCHeap28CheckForMemoryLimitsExceededEv
	mov	r0, r6
	bl	_OSSpinLockUnlock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI254_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end178:

	.globl	__ZN4MMgc6GCHeap26SignalCodeMemoryAllocationEmb
	.align	2
__ZN4MMgc6GCHeap26SignalCodeMemoryAllocationEmb:
Leh_func_begin179:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	cmp	r2, #0
	ldreq	r2, [r0, #+2260]
	addeq	r1, r2, r1
	streq	r1, [r0, #+2260]
	ldrne	r2, [r0, #+2256]
	addne	r1, r2, r1
	strne	r1, [r0, #+2256]
	bl	__ZN4MMgc6GCHeap28CheckForMemoryLimitsExceededEv
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end179:

	.globl	__ZN4MMgc6GCHeap5AllocEmjm
	.align	2
__ZN4MMgc6GCHeap5AllocEmjm:
Leh_func_begin180:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #12
	mov	r5, r2
	mov	r6, r1
	mov	r8, r0
	mov	r1, #1
	and	r0, r1, r5, lsr #1
	strb	r0, [sp, #+11]
	mov	r4, r3
	and	r10, r5, #1
	add	r0, r8, #220
	add	r0, r0, #2, 22
	str	r0, [sp, #+4]
	bl	_OSSpinLockLock
	ldrb	r11, [r8, #+2508]
	cmp	r11, #0
	beq	LBB256_3
	tst	r5, #16
	bne	LBB256_3
	mov	r0, #1
	b	LBB256_4
LBB256_3:
	mov	r0, #0
LBB256_4:
	strb	r0, [r8, #+2508]
	add	r3, sp, #11
	mov	r0, r8
	mov	r1, r6
	mov	r2, r10
	str	r4, [sp]
	bl	__ZN4MMgc6GCHeap11AllocHelperEmbRbm
	cmp	r0, #0
	bne	LBB256_6
	mov	r0, r8
	mov	r1, r6
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	str	r4, [sp]
	add	r3, sp, #11
	mov	r0, r8
	mov	r1, r6
	mov	r2, r10
	bl	__ZN4MMgc6GCHeap11AllocHelperEmbRbm
LBB256_6:
	mov	r4, r0
	cmp	r4, #0
	bne	LBB256_12
	tst	r5, #8
	beq	LBB256_11
	ldr	r0, [sp, #+4]
	strb	r11, [r8, #+2508]
	bl	_OSSpinLockUnlock
LBB256_9:
	mov	r0, #0
LBB256_10:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB256_11:
	mov	r0, r8
	bl	__ZN4MMgc6GCHeap5AbortEv
LBB256_12:
	ldr	r0, [r8, #+2252]
	add	r0, r0, r6
	str	r0, [r8, #+2252]
	ldrb	r0, [r8, #+2508]
	cmp	r0, #0
	movne	r0, r8
	blne	__ZN4MMgc6GCHeap28CheckForMemoryLimitsExceededEv
	ldr	r0, [sp, #+4]
	strb	r11, [r8, #+2508]
	bl	_OSSpinLockUnlock
	ldrb	r0, [sp, #+11]
	cmp	r0, #0
	beq	LBB256_14
	mov	r2, r6, lsl #12
	mov	r1, #0
	mov	r0, r4
	bl	_memset
LBB256_14:
	tst	r5, #8
	beq	LBB256_18
	ldr	r0, [r8, #+2496]
	cmp	r0, #2
	beq	LBB256_19
	ldr	r9, [r8, #+2280]
	ldr	r0, [r8, #+1520]
	ldr	r1, [r8, #+1524]
	ldr	r2, [r8, #+2264]
	ldr	r3, [r8, #+2520]
	cmp	r9, #0
	subne	r12, r0, r1
	addne	r12, r12, r3
	addne	r12, r12, r2, lsr #12
	cmpne	r12, r9
	bhi	LBB256_19
	sub	r0, r0, r1
	ldr	r1, [r8, #+2276]
	add	r0, r0, r3
	add	r0, r0, r2, lsr #12
	cmp	r0, r1
	bhi	LBB256_19
LBB256_18:
	mov	r0, r4
	b	LBB256_10
LBB256_19:
	mov	r0, #1
	and	r2, r0, r5, lsr #2
	ldrb	r3, [r8, #+2508]
	mov	r1, r4
	mov	r0, r8
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	b	LBB256_9
Leh_func_end180:

	.globl	__ZN4MMgc6GCHeap15DestroyInstanceEv
	.align	2
__ZN4MMgc6GCHeap15DestroyInstanceEv:
Leh_func_begin181:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	ldr	r1, [r0, #+2448]
	mov	r4, r0
	cmp	r1, #0
	beq	LBB257_2
	mov	r0, r1
	bl	_free
	mov	r0, #0
	str	r0, [r4, #+2448]
LBB257_2:
	mov	r0, #0
	str	r0, [r4, #+2452]
	str	r0, [r4, #+2444]
	str	r0, [r4, #+2440]
	strb	r0, [r4, #+2456]
	str	r0, [r4, #+2460]
	ldr	r0, [r4, #+2472]
	cmp	r0, #0
	beq	LBB257_4
	bl	_free
	mov	r0, #0
	str	r0, [r4, #+2472]
LBB257_4:
	ldr	r0, LCPI257_0
	mov	r5, #0
	str	r5, [r4, #+2476]
	str	r5, [r4, #+2468]
	str	r5, [r4, #+2464]
	strb	r5, [r4, #+2480]
	str	r5, [r4, #+2484]
	ldr	r0, [r0]
	ldr	r6, [r0]
	ldr	r0, LCPI257_1
LBB257_5:
	add	r1, r6, r0
	ldr	r1, [r1, #+1492]
	cmp	r1, #0
	beq	LBB257_38
	mov	r2, #0
LBB257_7:
	ldrh	r3, [r1, #+16]
	ldrh	r9, [r1, #+18]
	ldr	r1, [r1, #+8]
	mla	r2, r9, r3, r2
	cmp	r1, #0
	bne	LBB257_7
LBB257_8:
	add	r0, r0, #36
	add	r5, r2, r5
	cmp	r0, #0
	bne	LBB257_5
	add	r0, r6, #117, 30
	add	r8, r0, #1, 22
	mov	r0, r8
	bl	_OSSpinLockLock
	ldr	r6, [r6, #+1496]
	mov	r0, r8
	mov	r8, r4
	bl	_OSSpinLockUnlock
	ldr	r1, LCPI257_2
	add	r0, r5, r6, lsl #12
	mov	r5, #41
	mov	r6, #0
	ldr	r1, [r1]
	str	r0, [r1]
LBB257_10:
	ldr	r1, [r8, #+24]
	cmp	r1, #0
	beq	LBB257_13
	add	r10, r8, #12
LBB257_12:
	mov	r0, r10
	bl	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	ldr	r1, [r8, #+24]
	cmp	r1, #0
	bne	LBB257_12
LBB257_13:
	str	r6, [r8, #+24]
	str	r6, [r8, #+44]
	add	r8, r8, #36
	sub	r5, r5, #1
	cmp	r5, #0
	bne	LBB257_10
	ldr	r1, LCPI257_3
	mov	r0, #0
	str	r0, [r4, #+1500]
	str	r0, [r4, #+1488]
	add	r5, r4, #4
	ldr	r1, [r1]
	str	r0, [r1]
	ldr	r0, [r4, #+1516]
	mov	r1, r5
	b	LBB257_17
LBB257_15:
	ldr	r2, [r1, #+4]
	cmp	r2, r0
	bhi	LBB257_17
	ldr	r3, [r1, #+8]
	cmp	r3, r0
	bhi	LBB257_19
LBB257_17:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB257_15
LBB257_18:
	mov	r0, #0
	b	LBB257_21
LBB257_19:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	beq	LBB257_18
	sub	r2, r0, r2
	add	r1, r1, r2, lsr #12
	mov	r2, #24
	mla	r0, r1, r2, r0
LBB257_21:
	ldr	r0, [r0, #+4]
	ldr	r1, [r4, #+1528]
	ldr	r2, [r4, #+2252]
	add	r0, r1, r0
	cmp	r2, r0
	beq	LBB257_28
	ldr	r0, [r4, #+2496]
	cmp	r0, #3
	ldrne	r0, [r4, #+1520]
	cmpne	r0, #0
	beq	LBB257_28
	mov	r6, #0
	ldr	r0, LCPI257_4
	ldr	r8, [r0]
	mov	r10, r6
LBB257_24:
	ldr	r0, [r4, #+1516]
	add	r1, r0, r6
	add	r10, r10, #1
	ldr	r1, [r1, #+12]
	cmp	r1, #0
	bne	LBB257_27
	ldr	r1, [r0, +r6]
	cmp	r1, #0
	cmpne	r1, r0
	beq	LBB257_27
	ldrb	r0, [r4, #+2296]
	cmp	r0, #0
	movne	r0, r8
	blne	__ZN4MMgc5GCLogEPKcz
LBB257_27:
	ldr	r0, [r4, #+1520]
	add	r6, r6, #24
	cmp	r0, r10
	bhi	LBB257_24
LBB257_28:
	ldr	r2, [r5]
	cmp	r2, #0
	beq	LBB257_31
	ldr	r0, [r2]
	str	r0, [r5]
	ldmib	r2, {r0, r1}
	ldr	r2, [r2, #+16]
	cmn	r2, #1
	sub	r1, r1, r0
	bne	LBB257_36
LBB257_30:
	bl	_munmap
	b	LBB257_28
LBB257_31:
	ldr	r0, LCPI257_5
	mov	r5, #0
	ldr	r0, [r0]
	str	r5, [r0]
	add	r0, r4, #220
	add	r6, r0, #2, 22
	mov	r0, r6
	bl	_OSSpinLockLock
	mov	r0, r6
	add	r6, r4, #157, 28
	bl	_OSSpinLockUnlock
	str	r5, [r4, #+2268]
	mov	r0, r6
	bl	_OSSpinLockLock
	mov	r0, r6
	bl	_OSSpinLockUnlock
	str	r5, [r4, #+2512]
	ldr	r0, [r4, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB257_33
	ldr	r0, [r4, #+2492]
	bl	_pthread_getspecific
	mov	r1, #0
	str	r1, [r0, #+116]
LBB257_33:
	ldrb	r0, [r4, #+2488]
	cmp	r0, #0
	beq	LBB257_35
	mov	r0, #0
	strb	r0, [r4, #+2488]
	ldr	r0, [r4, #+2492]
	bl	_pthread_key_delete
LBB257_35:
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB257_36:
	ldrb	r2, [r4, #+2292]
	cmp	r2, #0
	bne	LBB257_30
	bl	_free
	b	LBB257_28
LBB257_38:
	mov	r2, #0
	b	LBB257_8
	.align	2
	LCPI257_0:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

	.align	2
	LCPI257_1:
 	.long	4294965820

	.align	2
	LCPI257_2:
 	.long	L__ZN4MMgc6GCHeap11leakedBytesE$non_lazy_ptr

	.align	2
	LCPI257_3:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

	.align	2
	LCPI257_4:
 	.long	L_.str322995$non_lazy_ptr

	.align	2
	LCPI257_5:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end181:

	.globl	__ZN4MMgc6GCHeap5LeaveEv
	.align	2
__ZN4MMgc6GCHeap5LeaveEv:
Leh_func_begin182:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r0
	add	r0, r4, #220
	add	r5, r0, #2, 22
	add	r7, sp, #8
	mov	r0, r5
	bl	_OSSpinLockLock
	ldr	r0, [r4, #+2496]
	cmp	r0, #3
	bne	LBB258_2
	ldrb	r0, [r4, #+2526]
	cmp	r0, #0
	moveq	r0, #1
	strbeq	r0, [r4, #+2526]
	moveq	r1, #3
	moveq	r0, r4
	bleq	__ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE
LBB258_2:
	mov	r0, r5
	bl	_OSSpinLockUnlock
	ldr	r0, LCPI258_0
	ldr	r0, [r0]
	bl	_OSSpinLockLock
	ldr	r0, [r4, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB258_4
	ldr	r2, [r4, #+2492]
	ldr	r1, [r0, #+128]
	mov	r0, r2
	bl	_pthread_setspecific
LBB258_4:
	ldr	r0, [r4, #+2500]
	sub	r0, r0, #1
	str	r0, [r4, #+2500]
	ldr	r1, [r4, #+2496]
	cmp	r1, #3
	cmpeq	r0, #0
	bne	LBB258_7
	ldrb	r0, [r4, #+2526]
	cmp	r0, #0
	beq	LBB258_7
	ldr	r0, [r4, #+2504]
	cmp	r0, #0
	moveq	r0, r4
	bleq	__ZN4MMgc6GCHeap15DestroyInstanceEv
LBB258_7:
	ldr	r0, LCPI258_1
	ldr	r0, [r0]
	bl	_OSSpinLockUnlock
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}
	.align	2
	LCPI258_0:
 	.long	L__ZN4MMgc6GCHeap17instanceEnterLockE$non_lazy_ptr

	.align	2
	LCPI258_1:
 	.long	L__ZN4MMgc6GCHeap17instanceEnterLockE$non_lazy_ptr

Leh_func_end182:

	.globl	__ZN4MMgc10EnterFrameD1Ev
	.align	2
__ZN4MMgc10EnterFrameD1Ev:
Leh_func_begin183:
	stmfd	sp!, {r7, lr}
	ldr	r1, [r0, #+116]
	mov	r7, sp
	cmp	r1, #0
	movne	r2, #0
	strne	r2, [r0, #+116]
	movne	r0, r1
	blne	__ZN4MMgc6GCHeap5LeaveEv
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end183:

	.globl	__ZN4MMgc10EnterFrameD2Ev
	.align	2
__ZN4MMgc10EnterFrameD2Ev:
Leh_func_begin184:
	stmfd	sp!, {r7, lr}
	ldr	r1, [r0, #+116]
	mov	r7, sp
	cmp	r1, #0
	movne	r2, #0
	strne	r2, [r0, #+116]
	movne	r0, r1
	blne	__ZN4MMgc6GCHeap5LeaveEv
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end184:

	.globl	__ZN4MMgc6GCHeap7DestroyEv
	.align	2
__ZN4MMgc6GCHeap7DestroyEv:
Leh_func_begin185:
	stmfd	sp!, {r4, r7, lr}
	ldr	r0, LCPI261_0
	ldr	r4, [r0]
	add	r7, sp, #4
	mov	r0, r4
	bl	_OSSpinLockLock
	ldr	r0, LCPI261_1
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap15DestroyInstanceEv
	mov	r0, r4
	bl	_OSSpinLockUnlock
	ldr	r0, LCPI261_2
	ldr	r0, [r0]
	ldr	r0, [r0]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI261_0:
 	.long	L__ZN4MMgc6GCHeap17instanceEnterLockE$non_lazy_ptr

	.align	2
	LCPI261_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI261_2:
 	.long	L__ZN4MMgc6GCHeap11leakedBytesE$non_lazy_ptr

Leh_func_end185:

	.globl	__ZN4MMgc6GCHeapC2ERKNS_12GCHeapConfigE
	.align	2
__ZN4MMgc6GCHeapC2ERKNS_12GCHeapConfigE:
Leh_func_begin186:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	sub	sp, sp, #4
	ldr	r2, LCPI262_0
	mov	r3, #0
	mov	r4, r0
	ldr	r2, [r2]
	ldr	r2, [r2]
	strd	r2, [r0]
	mov	r0, #1
	ldr	r2, LCPI262_1
LBB262_1:
	add	r9, r4, r2
	strb	r0, [r9, #+1516]
	add	r2, r2, #36
	str	r3, [r9, #+1520]
	cmp	r2, #0
	bne	LBB262_1
	add	r0, r4, #142, 28
	mov	r2, #168
	mov	r5, #0
	str	r5, [r4, #+1508]
	str	r5, [r4, #+1512]
	str	r5, [r4, #+1516]
	str	r5, [r4, #+1520]
	str	r5, [r4, #+1524]
	str	r5, [r4, #+1528]
	str	r5, [r4, #+2252]
	str	r5, [r4, #+2256]
	str	r5, [r4, #+2260]
	str	r5, [r4, #+2264]
	bl	_memcpy
	str	r5, [r4, #+2440]
	str	r5, [r4, #+2444]
	str	r5, [r4, #+2448]
	str	r5, [r4, #+2452]
	strb	r5, [r4, #+2456]
	str	r5, [r4, #+2460]
	str	r5, [r4, #+2464]
	str	r5, [r4, #+2468]
	str	r5, [r4, #+2472]
	str	r5, [r4, #+2476]
	strb	r5, [r4, #+2480]
	str	r5, [r4, #+2484]
	strb	r5, [r4, #+2488]
	mov	r0, sp
	mov	r1, #0
	bl	_pthread_key_create
	cmp	r0, #0
	ldreq	r0, [sp]
	streq	r0, [r4, #+2492]
	ldrne	r0, [r4, #+2492]
	mov	r1, #0
	mov	r5, #1
	strb	r5, [r4, #+2488]
	mov	r8, r4
	mov	r6, #0
	bl	_pthread_setspecific
	str	r5, [r4, #+2496]
	str	r6, [r4, #+2500]
	str	r6, [r4, #+2504]
	strb	r5, [r4, #+2508]
	strb	r6, [r4, #+2509]
	str	r6, [r4, #+2516]
	str	r6, [r4, #+2520]
	strb	r6, [r4, #+2524]
	strb	r5, [r4, #+2525]
	strb	r6, [r4, #+2526]
	str	r6, [r8, #+2268]!
	str	r6, [r4, #+2512]
	ldr	r1, LCPI262_2
	add	r0, r4, #127, 30
	ldr	r1, [r1]
	str	r6, [r1]
	add	r0, r0, #1, 22
	mov	r1, #0
LBB262_3:
	add	r2, r4, r1
	str	r6, [r2, #+1532]
	str	r6, [r2, #+1536]
	add	r3, r0, r1
	str	r6, [r2, #+1540]
	add	r9, r0, r1
	str	r3, [r2, #+1544]
	str	r9, [r2, #+1548]
	strb	r5, [r2, #+1552]
	strb	r5, [r2, #+1553]
	cmp	r1, #174, 30
	add	r2, r1, #24
	mov	r1, r2
	bne	LBB262_3
	mov	r0, r8
	bl	_OSSpinLockLock
	ldr	r1, [r4, #+2272]
	mov	r0, r4
	bl	__ZN4MMgc6GCHeap18ExpandHeapInternalEm
	ldr	r1, [r4, #+1520]
	ldr	r2, [r4, #+1524]
	ldr	r3, [r4, #+2520]
	sub	r1, r1, r2
	ldr	r2, [r4, #+2516]
	add	r1, r1, r3
	cmp	r2, r1, lsl #12
	movlo	r1, r1, lsl #12
	strlo	r1, [r4, #+2516]
	cmp	r0, #0
	beq	LBB262_8
	mov	r0, r8
	mov	r5, #0
	mov	r8, #0
	bl	_OSSpinLockUnlock
	str	r4, [r4, #+8]
	str	r5, [r4, #+1504]
	str	r5, [r4, #+1500]
	ldr	r0, LCPI262_3
	ldr	r6, [r0]
LBB262_6:
	ldrsh	r1, [r6], #+2
	mov	r0, #254, 28
	add	r10, r4, r8
	str	r4, [r10, #+12]
	str	r1, [r10, #+20]
	str	r5, [r10, #+24]
	str	r5, [r10, #+28]
	str	r5, [r10, #+32]
	str	r5, [r10, #+36]
	bl	___udivsi3
	str	r0, [r10, #+16]
	add	r0, r8, #36
	cmp	r8, #90, 28
	mov	r8, r0
	bne	LBB262_6
	mov	r0, #0
	str	r0, [r4, #+1488]
	str	r0, [r4, #+1492]
	str	r0, [r4, #+1496]
	add	r1, r4, #8
	ldr	r0, LCPI262_4
	ldr	r0, [r0]
	str	r1, [r0]
	ldr	r0, LCPI262_5
	ldr	r0, [r0]
	str	r4, [r0]
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB262_8:
	mov	r0, r4
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI262_0:
 	.long	L__ZL8pagesize$non_lazy_ptr

	.align	2
	LCPI262_1:
 	.long	4294965820

	.align	2
	LCPI262_2:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

	.align	2
	LCPI262_3:
 	.long	L__ZN4MMgc11FixedMalloc12kSizeClassesE$non_lazy_ptr

	.align	2
	LCPI262_4:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

	.align	2
	LCPI262_5:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end186:

	.globl	__ZN4MMgc6GCHeapC1ERKNS_12GCHeapConfigE
	.align	2
__ZN4MMgc6GCHeapC1ERKNS_12GCHeapConfigE:
Leh_func_begin187:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	__ZN4MMgc6GCHeapC2ERKNS_12GCHeapConfigE
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end187:

	.globl	__ZN4MMgc6GCHeap4InitERKNS_12GCHeapConfigE
	.align	2
__ZN4MMgc6GCHeap4InitERKNS_12GCHeapConfigE:
Leh_func_begin188:
	stmfd	sp!, {r4, r7, lr}
	ldr	r2, LCPI264_0
	mov	r1, r0
	ldr	r4, [r2]
	mov	r0, r4
	add	r7, sp, #4
	bl	__ZN4MMgc6GCHeapC2ERKNS_12GCHeapConfigE
	ldr	r0, LCPI264_1
	ldr	r0, [r0]
	str	r4, [r0]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI264_0:
 	.long	L__ZN4MMgc9heapSpaceE$non_lazy_ptr

	.align	2
	LCPI264_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end188:

	.globl	__ZN4MMgc12GCHeapConfig19IsGCOptionWithParamEPKc
	.align	2
__ZN4MMgc12GCHeapConfig19IsGCOptionWithParamEPKc:
	stmfd	sp!, {r4, r7, lr}
	ldr	r0, LCPI265_0
	mov	r4, r1
	ldr	r1, [r0]
	add	r7, sp, #4
	mov	r0, r4
	bl	_strcmp
	cmp	r0, #0
	beq	LBB265_5
	ldr	r0, LCPI265_1
	ldr	r1, [r0]
	mov	r0, r4
	bl	_strcmp
	cmp	r0, #0
	beq	LBB265_5
	ldr	r0, LCPI265_2
	ldr	r1, [r0]
	mov	r0, r4
	bl	_strcmp
	cmp	r0, #0
	beq	LBB265_5
	ldr	r0, LCPI265_3
	ldr	r1, [r0]
	mov	r0, r4
	bl	_strcmp
	cmp	r0, #0
	beq	LBB265_5
	ldr	r0, LCPI265_4
	ldr	r1, [r0]
	mov	r0, r4
	bl	_strcmp
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
LBB265_5:
	mov	r0, #1
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI265_0:
 	.long	L_.str332996$non_lazy_ptr

	.align	2
	LCPI265_1:
 	.long	L_.str342997$non_lazy_ptr

	.align	2
	LCPI265_2:
 	.long	L_.str352998$non_lazy_ptr

	.align	2
	LCPI265_3:
 	.long	L_.str3657$non_lazy_ptr

	.align	2
	LCPI265_4:
 	.long	L_.str372999$non_lazy_ptr


	.globl	__ZN4MMgc12GCHeapConfig19ParseAndApplyOptionEPKcRbS2_
	.align	2
__ZN4MMgc12GCHeapConfig19ParseAndApplyOptionEPKcRbS2_:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	vstmdb	sp!, {d8}
	sub	sp, sp, #48
	mov	r6, r1
	mov	r8, r0
	mov	r1, #0
	ldr	r0, LCPI266_0
	mov	r5, r2
	strb	r1, [r5]
	mov	r4, r3
	ldr	r1, [r0]
	mov	r0, r6
	bl	_strcmp
	cmp	r0, #0
	bne	LBB266_2
	mov	r0, #1
	strb	r0, [r8, #+26]
	strb	r0, [r8, #+27]
	b	LBB266_61
LBB266_2:
	ldr	r0, LCPI266_1
	ldr	r1, [r0]
	mov	r0, r6
	bl	_strcmp
	cmp	r0, #0
	bne	LBB266_4
	mov	r0, #1
	strb	r0, [r8, #+26]
	strb	r0, [r8, #+27]
	strb	r0, [r8, #+24]
	b	LBB266_61
LBB266_4:
	ldr	r0, LCPI266_2
	ldr	r1, [r0]
	mov	r2, #9
	mov	r0, r6
	bl	_strncmp
	mov	r10, r0
	cmp	r10, #0
	bne	LBB266_14
	ldr	r0, LCPI266_3
	ldr	r1, [r0]
	mov	r0, r6
	bl	_strcmp
	cmp	r0, #0
	beq	LBB266_11
	cmp	r10, #0
	bne	LBB266_12
	cmp	r0, #1
	blt	LBB266_12
	add	r4, r6, #9
	b	LBB266_10
LBB266_9:
	add	r4, r4, #1
LBB266_10:
	ldrb	r6, [r4]
	cmp	r6, #32
	cmpne	r6, #61
	beq	LBB266_9
LBB266_11:
	cmp	r4, #0
	bne	LBB266_13
LBB266_12:
	mov	r0, #1
	strb	r0, [r5]
	b	LBB266_61
LBB266_13:
	mov	r1, #0
	mov	r2, #10
	mov	r0, r4
	bl	_strtol
	str	r0, [r8, #+4]
	b	LBB266_60
LBB266_14:
	ldr	r0, LCPI266_4
	ldr	r1, [r0]
	mov	r0, r6
	bl	_strcmp
	cmp	r0, #0
	bne	LBB266_16
	mov	r0, #1
	strb	r0, [r8, #+32]
	b	LBB266_61
LBB266_16:
	ldr	r0, LCPI266_5
	ldr	r1, [r0]
	mov	r2, #5
	mov	r0, r6
	bl	_strncmp
	cmp	r0, #0
	bne	LBB266_18
	ldr	r0, LCPI266_6
	ldr	r1, [r0]
	mov	r2, #12
	mov	r0, r6
	bl	_strncmp
	cmp	r0, #0
	bne	LBB266_23
LBB266_18:
	ldr	r0, LCPI266_7
	ldr	r1, [r0]
	mov	r2, #12
	mov	r0, r6
	bl	_strncmp
	mov	r10, r0
	cmp	r10, #0
	bne	LBB266_62
	ldr	r0, LCPI266_16
	ldr	r1, [r0]
	mov	r0, r6
	bl	_strcmp
	cmp	r0, #0
	beq	LBB266_55
	cmp	r10, #0
	bne	LBB266_12
	cmp	r0, #1
	blt	LBB266_12
	add	r4, r6, #12
	b	LBB266_54
LBB266_23:
	ldr	r10, LCPI266_8
	ldr	r1, [r10]
	mov	r0, r6
	bl	_strcmp
	mov	r10, r0
	cmp	r10, #0
	beq	LBB266_29
	ldr	r4, LCPI266_9
	ldr	r1, [r4]
	mov	r2, #5
	mov	r0, r6
	bl	_strncmp
	cmp	r0, #0
	bne	LBB266_12
	cmp	r10, #1
	blt	LBB266_12
	add	r4, r6, #5
	b	LBB266_28
LBB266_27:
	add	r4, r4, #1
LBB266_28:
	ldrb	r6, [r4]
	cmp	r6, #32
	cmpne	r6, #61
	beq	LBB266_27
LBB266_29:
	cmp	r4, #0
	beq	LBB266_12
	ldr	r10, LCPI266_10
	mvn	r6, #0
	vldr.64	d8, LCPI266_11
	mov	r11, r4
	ldr	r10, [r10]
LBB266_31:
	add	r6, r6, #1
	cmp	r6, #6
	bhi	LBB266_12
	add	r0, sp, #28
	str	r0, [sp]
	add	r2, sp, #40
	add	r3, sp, #32
	mov	r1, r10
	mov	r0, r11
	bl	_sscanf
	cmp	r0, #2
	bne	LBB266_35
	vldr.64	d0, [sp, #+40]
	vcmpe.f64	d0, d8
	fmstat
	ble	LBB266_35
	vldr.64	d0, [sp, #+32]
	vcmpe.f64	d0, #0
	fmstat
	bge	LBB266_38
LBB266_35:
	ldr	r6, LCPI266_12
	ldr	r1, [r6]
	add	r2, sp, #40
	add	r3, sp, #28
	mov	r0, r11
	bl	_sscanf
	cmp	r0, #1
	ldreq	r6, [sp, #+28]
	ldrbeq	r6, [r11, +r6]
	cmpeq	r6, #0
	bne	LBB266_12
	vldr.64	d0, LCPI266_11
	vldr.64	d1, [sp, #+40]
	vcmpe.f64	d1, d0
	fmstat
	ble	LBB266_12
LBB266_37:
	ldr	r10, LCPI266_15
	add	r5, r8, #92
	ldr	r8, LCPI266_14
	mvn	r6, #0
	vldr.64	d8, LCPI266_11
	ldr	r10, [r10]
	ldr	r8, [r8]
	b	LBB266_45
LBB266_38:
	ldr	r0, [sp, #+28]
	ldrb	r1, [r11, +r0]
	cmp	r1, #0
	beq	LBB266_37
	cmp	r1, #44
	bne	LBB266_12
	add	r11, r0, r11
	add	r11, r11, #1
	b	LBB266_31
LBB266_41:
	vstr.64	d1, [r11, #-56]
	vstr.64	d0, [r11]
	mov	r1, r4
	ldr	r0, [sp, #+28]
	ldrb	r2, [r1, +r0]!
	cmp	r2, #44
	beq	LBB266_44
	cmp	r2, #0
	mov	r4, r1
	bne	LBB266_45
LBB266_43:
	ldr	r5, LCPI266_13
	mvn	r4, #0
	strd	r4, [r11]
	b	LBB266_60
LBB266_44:
	add	r4, r0, r4
	add	r4, r4, #1
LBB266_45:
	mov	r11, r5
	add	r6, r6, #1
	add	r5, r11, #8
	cmp	r6, #7
	blo	LBB266_49
LBB266_46:
	b	LBB266_46
LBB266_47:
	vldr.64	d1, [sp, #+40]
	vcmpe.f64	d1, d8
	fmstat
	ble	LBB266_50
	vldr.64	d0, [sp, #+32]
	vcmpe.f64	d0, #0
	fmstat
	bge	LBB266_41
	b	LBB266_50
LBB266_49:
	add	r0, sp, #28
	str	r0, [sp]
	add	r2, sp, #40
	add	r3, sp, #32
	mov	r1, r8
	mov	r0, r4
	bl	_sscanf
	cmp	r0, #2
	beq	LBB266_47
LBB266_50:
	add	r2, sp, #40
	add	r3, sp, #28
	mov	r0, r4
	mov	r1, r10
	bl	_sscanf
	cmp	r0, #1
	ldreq	r0, [sp, #+28]
	ldrbeq	r0, [r4, +r0]
	cmpeq	r0, #0
	bne	LBB266_49
	vldr.64	d0, [sp, #+40]
	vcmpe.f64	d0, d8
	fmstat
	ble	LBB266_49
	vstr.64	d0, [r11, #-56]
	b	LBB266_43
LBB266_53:
	add	r4, r4, #1
LBB266_54:
	ldrb	r6, [r4]
	cmp	r6, #32
	cmpne	r6, #61
	beq	LBB266_53
LBB266_55:
	cmp	r4, #0
	beq	LBB266_12
	ldr	r6, LCPI266_17
	ldr	r1, [r6]
	add	r2, sp, #20
	add	r3, sp, #16
	mov	r0, r4
	bl	_sscanf
	cmp	r0, #1
	bne	LBB266_12
	mov	r0, r4
	ldr	r6, [sp, #+16]
	bl	_strlen
	cmp	r6, r0
	bne	LBB266_12
	vldr.64	d0, [sp, #+20]
	vldr.64	d1, LCPI266_11
	vcmpe.f64	d0, d1
	fmstat
	blt	LBB266_12
	vstr.64	d0, [r8, #+148]
LBB266_60:
	mov	r0, #1
LBB266_61:
	sub	sp, r7, #32
	vldmia	sp!, {d8}
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB266_62:
	ldr	r0, LCPI266_18
	ldr	r1, [r0]
	mov	r2, #7
	mov	r0, r6
	bl	_strncmp
	mov	r10, r0
	cmp	r10, #0
	bne	LBB266_75
	ldr	r0, LCPI266_19
	ldr	r1, [r0]
	mov	r0, r6
	bl	_strcmp
	cmp	r0, #0
	beq	LBB266_69
	cmp	r10, #0
	bne	LBB266_12
	cmp	r0, #1
	blt	LBB266_12
	add	r4, r6, #7
	b	LBB266_68
LBB266_67:
	add	r4, r4, #1
LBB266_68:
	ldrb	r0, [r4]
	cmp	r0, #32
	cmpne	r0, #61
	beq	LBB266_67
LBB266_69:
	cmp	r4, #0
	beq	LBB266_12
	ldr	r0, LCPI266_20
	ldr	r1, [r0]
	add	r2, sp, #8
	add	r3, sp, #4
	mov	r0, r4
	bl	_sscanf
	cmp	r0, #1
	bne	LBB266_12
	mov	r0, r4
	ldr	r6, [sp, #+4]
	bl	_strlen
	cmp	r6, r0
	bne	LBB266_12
	vldr.64	d0, [sp, #+8]
	vcmpe.f64	d0, #0
	fmstat
	ble	LBB266_12
	vldr.64	d1, LCPI266_11
	vcmpe.f64	d0, d1
	fmstat
	bhi	LBB266_12
	vstr.64	d0, [r8, #+156]
	b	LBB266_60
LBB266_75:
	mov	r0, #0
	b	LBB266_61
	.align	2
	LCPI266_0:
 	.long	L_.str3858$non_lazy_ptr

	.align	2
	LCPI266_1:
 	.long	L_.str393000$non_lazy_ptr

	.align	2
	LCPI266_2:
 	.long	L_.str332996$non_lazy_ptr

	.align	2
	LCPI266_3:
 	.long	L_.str332996$non_lazy_ptr

	.align	2
	LCPI266_4:
 	.long	L_.str403001$non_lazy_ptr

	.align	2
	LCPI266_5:
 	.long	L_.str342997$non_lazy_ptr

	.align	2
	LCPI266_6:
 	.long	L_.str352998$non_lazy_ptr

	.align	2
	LCPI266_7:
 	.long	L_.str352998$non_lazy_ptr

	.align	2
	LCPI266_8:
 	.long	L_.str342997$non_lazy_ptr

	.align	2
	LCPI266_9:
 	.long	L_.str342997$non_lazy_ptr

	.align	2
	LCPI266_10:
 	.long	L_.str413002$non_lazy_ptr

	.align	2
	LCPI266_11:
 	.long	0
	.long	1072693248

	.align	2
	LCPI266_12:
 	.long	L_.str423003$non_lazy_ptr

	.align	2
	LCPI266_13:
 	.long	2146435071

	.align	2
	LCPI266_14:
 	.long	L_.str413002$non_lazy_ptr

	.align	2
	LCPI266_15:
 	.long	L_.str423003$non_lazy_ptr

	.align	2
	LCPI266_16:
 	.long	L_.str352998$non_lazy_ptr

	.align	2
	LCPI266_17:
 	.long	L_.str423003$non_lazy_ptr

	.align	2
	LCPI266_18:
 	.long	L_.str3657$non_lazy_ptr

	.align	2
	LCPI266_19:
 	.long	L_.str3657$non_lazy_ptr

	.align	2
	LCPI266_20:
 	.long	L_.str423003$non_lazy_ptr


	.globl	__ZN4MMgc12GCHeapConfigC2Ev
	.align	2
__ZN4MMgc12GCHeapConfigC2Ev:
Leh_func_begin189:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #36
	mov	r4, r0
	mov	r2, #2, 24
	mvn	r0, #0
	mov	r1, #2
	mov	r5, #0
	str	r2, [r4]
	stmib	r4, {r0, r5}
	str	r5, [r4, #+12]
	str	r5, [r4, #+16]
	mov	r6, #1
	str	r6, [sp, #+24]
	str	r1, [sp, #+28]
	add	r10, sp, #24
	add	r11, sp, #14
	add	r3, sp, #8
	mov	r8, #10
	str	r5, [sp]
	stmfa	sp, {r5, r8}
	mov	r0, r10
	mov	r1, #2
	mov	r2, r11
	bl	_sysctl
	mov	r0, r11
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	mov	r2, #0
	cmp	r0, #8
	mov	r1, #2
	add	r3, sp, #32
	mov	r0, r10
	movgt	r2, #1
	strb	r2, [r4, #+20]
	strb	r6, [r4, #+21]
	str	r6, [sp, #+24]
	str	r1, [sp, #+28]
	mov	r1, #2
	str	r5, [sp]
	str	r8, [sp, #+32]
	str	r5, [sp, #+4]
	mov	r2, r11
	bl	_sysctl
	mov	r0, r11
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	mov	r2, #0
	mov	r1, #2
	cmp	r0, #8
	movgt	r2, #1
	strb	r2, [r4, #+22]
	strb	r6, [r4, #+23]
	strb	r5, [r4, #+24]
	strb	r6, [r4, #+25]
	strb	r5, [r4, #+26]
	strb	r5, [r4, #+27]
	str	r1, [r4, #+28]
	strb	r5, [r4, #+32]
	ldr	r0, LCPI267_0
	str	r0, [r4, #+152]
	ldr	r1, LCPI267_1
	str	r1, [r4, #+148]
	mov	r1, #253, 12
	orr	r1, r1, #3, 4
	str	r1, [r4, #+160]
	str	r5, [r4, #+156]
	strb	r6, [r4, #+164]
	mvn	r0, #0
	mov	r1, #1, 14
	orr	r1, r1, #1, 2
	str	r1, [r4, #+40]
	str	r5, [r4, #+36]
	mov	r1, #9, 14
	orr	r1, r1, #1, 2
	str	r1, [r4, #+96]
	str	r5, [r4, #+92]
	mov	r1, #1, 2
	str	r1, [r4, #+48]
	str	r5, [r4, #+44]
	mov	r1, #57, 16
	orr	r1, r1, #1, 2
	str	r1, [r4, #+104]
	str	r5, [r4, #+100]
	mov	r1, #255, 14
	orr	r1, r1, #15, 6
	str	r1, [r4, #+56]
	str	r5, [r4, #+52]
	mov	r1, #73, 16
	orr	r1, r1, #1, 2
	str	r1, [r4, #+112]
	str	r5, [r4, #+108]
	mov	r1, #254, 14
	orr	r1, r1, #15, 6
	str	r1, [r4, #+64]
	str	r5, [r4, #+60]
	ldr	r1, LCPI267_2
	str	r1, [r4, #+120]
	str	r5, [r4, #+116]
	mov	r1, #253, 14
	orr	r1, r1, #15, 6
	str	r1, [r4, #+72]
	str	r5, [r4, #+68]
	ldr	r1, LCPI267_3
	str	r1, [r4, #+128]
	str	r5, [r4, #+124]
	ldr	r1, LCPI267_4
	str	r1, [r4, #+80]
	ldr	r1, LCPI267_5
	str	r1, [r4, #+76]
	ldr	r1, LCPI267_6
	str	r1, [r4, #+136]
	str	r5, [r4, #+132]
	mov	r1, #242, 16
	orr	r1, r1, #63, 8
	str	r1, [r4, #+88]
	str	r5, [r4, #+84]
	ldr	r1, LCPI267_7
	str	r1, [r4, #+144]
	str	r0, [r4, #+140]
	ldr	r1, LCPI267_8
	ldr	r0, [r1]
	bl	_getenv
	cmp	r0, #0
	beq	LBB267_2
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r0, [r4, #+4]
LBB267_2:
	ldr	r0, LCPI267_9
	ldr	r0, [r0]
	bl	_getenv
	cmp	r0, #0
	beq	LBB267_4
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r0, [r4, #+8]
LBB267_4:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI267_0:
 	.long	1072850534

	.align	2
	LCPI267_1:
 	.long	1717986918

	.align	2
	LCPI267_2:
 	.long	1079164928

	.align	2
	LCPI267_3:
 	.long	1080213504

	.align	2
	LCPI267_4:
 	.long	1072902963

	.align	2
	LCPI267_5:
 	.long	858993459

	.align	2
	LCPI267_6:
 	.long	1081262080

	.align	2
	LCPI267_7:
 	.long	2146435071

	.align	2
	LCPI267_8:
 	.long	L_.str433004$non_lazy_ptr

	.align	2
	LCPI267_9:
 	.long	L_.str443005$non_lazy_ptr

Leh_func_end189:

	.globl	__ZN4MMgc12GCHeapConfigC1Ev
	.align	2
__ZN4MMgc12GCHeapConfigC1Ev:
Leh_func_begin190:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	__ZN4MMgc12GCHeapConfigC2Ev
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end190:

	.globl	__ZN4MMgc10FixedAllocC2EjPNS_6GCHeapEb
	.align	2
__ZN4MMgc10FixedAllocC2EjPNS_6GCHeapEb:
	stmfd	sp!, {r4, r7, lr}
	mov	r4, r0
	strb	r3, [r4, #+28]
	str	r2, [r4]
	mov	r2, #0
	mov	r0, #254, 28
	str	r1, [r4, #+8]
	str	r2, [r4, #+12]
	str	r2, [r4, #+16]
	str	r2, [r4, #+20]
	str	r2, [r4, #+24]
	add	r7, sp, #4
	bl	___udivsi3
	str	r0, [r4, #+4]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}

	.globl	__ZN4MMgc10FixedAllocC2Ev
	.align	2
__ZN4MMgc10FixedAllocC2Ev:
	mov	r1, #1
	strb	r1, [r0, #+28]
	bx	lr

	.globl	__ZN4MMgc10FixedAllocC1Ev
	.align	2
__ZN4MMgc10FixedAllocC1Ev:
	mov	r1, #1
	strb	r1, [r0, #+28]
	bx	lr

	.globl	__ZN4MMgc10FixedAlloc4InitEjPNS_6GCHeapE
	.align	2
__ZN4MMgc10FixedAlloc4InitEjPNS_6GCHeapE:
	stmfd	sp!, {r4, r7, lr}
	mov	r4, r0
	str	r2, [r4]
	mov	r2, #0
	mov	r0, #254, 28
	str	r1, [r4, #+8]
	str	r2, [r4, #+12]
	str	r2, [r4, #+16]
	str	r2, [r4, #+20]
	str	r2, [r4, #+24]
	add	r7, sp, #4
	bl	___udivsi3
	str	r0, [r4, #+4]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}

	.globl	__ZN4MMgc10FixedAllocC1EjPNS_6GCHeapEb
	.align	2
__ZN4MMgc10FixedAllocC1EjPNS_6GCHeapEb:
	stmfd	sp!, {r4, r7, lr}
	mov	r4, r0
	strb	r3, [r4, #+28]
	str	r2, [r4]
	mov	r2, #0
	mov	r0, #254, 28
	str	r1, [r4, #+8]
	str	r2, [r4, #+12]
	str	r2, [r4, #+16]
	str	r2, [r4, #+20]
	str	r2, [r4, #+24]
	add	r7, sp, #4
	bl	___udivsi3
	str	r0, [r4, #+4]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}

	.globl	__ZN4MMgc10FixedAlloc12IsOnFreelistEPNS0_10FixedBlockEPv
	.align	2
__ZN4MMgc10FixedAlloc12IsOnFreelistEPNS0_10FixedBlockEPv:
LBB274_1:
	ldr	r1, [r1]
	cmp	r1, #0
	moveq	r0, #0
	uxtbeq	r0, r0
	bxeq	lr
	cmp	r1, r2
	moveq	r0, #1
	uxtbeq	r0, r0
	bxeq	lr
	b	LBB274_1

	.globl	__ZN4MMgc10FixedAlloc7IsInUseEPNS0_10FixedBlockEPv
	.align	2
__ZN4MMgc10FixedAlloc7IsInUseEPNS0_10FixedBlockEPv:
	ldr	r3, [r1, #+4]
	cmp	r3, #0
	beq	LBB275_2
	cmp	r3, r2
	movls	r0, #0
	bxls	lr
LBB275_2:
	ldr	r1, [r1]
	cmp	r1, #0
	moveq	r0, #1
	uxtbeq	r0, r0
	bxeq	lr
	cmp	r1, r2
	moveq	r0, #0
	uxtbeq	r0, r0
	bxeq	lr
	b	LBB275_2

	.globl	__ZNK4MMgc10FixedAlloc12GetUsageInfoERmS1_
	.align	2
__ZNK4MMgc10FixedAlloc12GetUsageInfoERmS1_:
	mov	r3, #0
	str	r3, [r2]
	str	r3, [r1]
	ldr	r0, [r0, #+12]
	cmp	r0, #0
	bxeq	lr
	ldr	r1, [r2]
LBB276_1:
	ldrh	r3, [r0, #+16]
	ldrh	r9, [r0, #+18]
	mla	r1, r9, r3, r1
	str	r1, [r2]
	ldr	r0, [r0, #+8]
	cmp	r0, #0
	bne	LBB276_1
	bx	lr

	.globl	__ZN4MMgc10FixedAlloc15QueryOwnsObjectEPKv
	.align	2
__ZN4MMgc10FixedAlloc15QueryOwnsObjectEPKv:
	stmfd	sp!, {r4, r5, r7, lr}
	add	r7, sp, #8
	add	r2, r0, #12
	b	LBB277_4
LBB277_1:
	add	r3, r2, #32
	cmp	r3, r1
	bhi	LBB277_3
	ldrd	r4, [r0, #+4]
	mla	r3, r5, r4, r2
	add	r3, r3, #32
	cmp	r3, r1
	movhi	r2, #1
	uxtbhi	r0, r2
	ldmfdhi	sp!, {r4, r5, r7, pc}
LBB277_3:
	add	r2, r2, #8
LBB277_4:
	ldr	r2, [r2]
	cmp	r2, #0
	moveq	r2, #0
	uxtbeq	r0, r2
	ldmfdeq	sp!, {r4, r5, r7, pc}
	b	LBB277_1

	.globl	__ZN4MMgc14FixedAllocSafeC2EiPNS_6GCHeapE
	.align	2
__ZN4MMgc14FixedAllocSafeC2EiPNS_6GCHeapE:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r0
	mov	r3, #1
	mov	r0, #254, 28
	strb	r3, [r4, #+28]
	str	r2, [r4]
	add	r7, sp, #8
	mov	r5, #0
	str	r1, [r4, #+8]
	str	r5, [r4, #+12]
	str	r5, [r4, #+16]
	str	r5, [r4, #+20]
	str	r5, [r4, #+24]
	bl	___udivsi3
	str	r0, [r4, #+4]
	str	r5, [r4, #+32]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}

	.globl	__ZN4MMgc14FixedAllocSafeC1EiPNS_6GCHeapE
	.align	2
__ZN4MMgc14FixedAllocSafeC1EiPNS_6GCHeapE:
	stmfd	sp!, {r4, r5, r7, lr}
	mov	r4, r0
	mov	r3, #1
	mov	r0, #254, 28
	strb	r3, [r4, #+28]
	str	r2, [r4]
	add	r7, sp, #8
	mov	r5, #0
	str	r1, [r4, #+8]
	str	r5, [r4, #+12]
	str	r5, [r4, #+16]
	str	r5, [r4, #+20]
	str	r5, [r4, #+24]
	bl	___udivsi3
	str	r0, [r4, #+4]
	str	r5, [r4, #+32]
	sub	sp, r7, #8
	ldmfd	sp!, {r4, r5, r7, pc}

	.globl	__ZN4MMgc14FixedAllocSafeC2Ev
	.align	2
__ZN4MMgc14FixedAllocSafeC2Ev:
	mov	r1, #1
	strb	r1, [r0, #+28]
	mov	r1, #0
	str	r1, [r0, #+32]
	bx	lr

	.globl	__ZN4MMgc14FixedAllocSafeC1Ev
	.align	2
__ZN4MMgc14FixedAllocSafeC1Ev:
	mov	r1, #1
	strb	r1, [r0, #+28]
	mov	r1, #0
	str	r1, [r0, #+32]
	bx	lr

	.globl	__ZN4MMgc10FixedAlloc13FindBeginningEPKv
	.align	2
__ZN4MMgc10FixedAlloc13FindBeginningEPKv:
	ldr	r1, LCPI282_0
	mvn	r9, #0
	mov	r12, r0
	and	r1, r0, r1
	orr	r2, r1, #32
	orr	r1, r1, #28
	ldr	r1, [r1]
	ldr	r3, [r1, #+4]
	b	LBB282_3
LBB282_1:
	ldr	r2, [r1, #+8]
	cmp	r0, r12
	add	r2, r0, r2
	bhi	LBB282_3
	cmp	r2, r12
	bxhi	lr
LBB282_3:
	add	r9, r9, #1
	mov	r0, r2
	cmp	r9, r3
	blo	LBB282_1
	mov	r0, #0
	bx	lr
	.align	2
	LCPI282_0:
 	.long	4294963200


	.globl	__ZN4MMgc13FastAllocatordaEPv
	.align	2
__ZN4MMgc13FastAllocatordaEPv:
Leh_func_begin191:
	stmfd	sp!, {r7, lr}
	mov	r1, r0
	ldr	r2, LCPI283_0
	ldr	r0, [r2]
	mov	r7, sp
	ldr	r0, [r0]
	bl	__ZN4MMgc11FixedMalloc13OutOfLineFreeEPv
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI283_0:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

Leh_func_end191:

	.globl	__ZN4MMgc13FastAllocatornaEm
	.align	2
__ZN4MMgc13FastAllocatornaEm:
Leh_func_begin192:
	stmfd	sp!, {r7, lr}
	mov	r1, r0
	ldr	r2, LCPI284_0
	ldr	r0, [r2]
	mov	r7, sp
	ldr	r0, [r0]
	mov	r2, #0
	bl	__ZN4MMgc11FixedMalloc14OutOfLineAllocEmNS_15FixedMallocOptsE
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI284_0:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

Leh_func_end192:

	.globl	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	.align	2
__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE:
Leh_func_begin193:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r2, [r1, #+24]
	add	r7, sp, #12
	mov	r4, r1
	mov	r5, r0
	cmp	r2, #0
	ldrne	r0, [r2, #+20]
	cmpne	r0, r4
	bne	LBB285_9
	ldr	r0, [r4, #+20]
	cmp	r0, #0
	ldrne	r0, [r0, #+24]
	cmpne	r0, r4
	bne	LBB285_9
	ldr	r0, [r5, #+24]
	sub	r0, r0, #1
	str	r0, [r5, #+24]
	ldr	r0, [r5, #+12]
	cmp	r0, r4
	ldrdne	r0, [r4, #+8]
	strne	r0, [r1, #+8]
	ldreq	r0, [r4, #+8]
	streq	r0, [r5, #+12]
	ldr	r0, [r5, #+16]
	cmp	r0, r4
	ldrdne	r0, [r4, #+8]
	strne	r1, [r0, #+12]
	ldreq	r0, [r4, #+12]
	streq	r0, [r5, #+16]
	ldr	r0, [r5, #+20]
	cmp	r0, r4
	bne	LBB285_4
	ldr	r0, [r4, #+20]
	str	r0, [r5, #+20]
	b	LBB285_5
LBB285_4:
	ldr	r0, [r4, #+24]
	cmp	r0, #0
	ldrne	r1, [r4, #+20]
	strne	r1, [r0, #+20]
LBB285_5:
	ldr	r0, [r4, #+20]
	cmp	r0, #0
	ldrne	r1, [r4, #+24]
	strne	r1, [r0, #+24]
	ldrb	r0, [r5, #+28]
	cmp	r0, #0
	bne	LBB285_7
	mov	r6, #0
	b	LBB285_8
LBB285_7:
	add	r6, r5, #32
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB285_8:
	ldr	r0, [r5]
	mov	r2, #0
	mov	r3, #1
	mov	r1, r4
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	cmp	r6, #0
	subeq	sp, r7, #12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	mov	r0, r6
	bl	_OSSpinLockLock
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB285_9:
	bl	_abort
Leh_func_end193:

	.globl	__ZN4MMgc10FixedAlloc7DestroyEv
	.align	2
__ZN4MMgc10FixedAlloc7DestroyEv:
Leh_func_begin194:
	stmfd	sp!, {r4, r7, lr}
	ldr	r1, [r0, #+12]
	add	r7, sp, #4
	mov	r4, r0
	b	LBB286_2
LBB286_1:
	mov	r0, r4
	bl	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	ldr	r1, [r4, #+12]
LBB286_2:
	cmp	r1, #0
	moveq	r0, #0
	streq	r0, [r4, #+12]
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	b	LBB286_1
Leh_func_end194:

	.globl	__ZN4MMgc14FixedAllocSafe7DestroyEv
	.align	2
__ZN4MMgc14FixedAllocSafe7DestroyEv:
Leh_func_begin195:
	stmfd	sp!, {r4, r7, lr}
	ldr	r1, [r0, #+12]
	add	r7, sp, #4
	mov	r4, r0
	b	LBB287_2
LBB287_1:
	mov	r0, r4
	bl	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	ldr	r1, [r4, #+12]
LBB287_2:
	cmp	r1, #0
	moveq	r0, #0
	streq	r0, [r4, #+12]
	streq	r0, [r4, #+32]
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	b	LBB287_1
Leh_func_end195:

	.globl	__ZN4MMgc10FixedAllocD1Ev
	.align	2
__ZN4MMgc10FixedAllocD1Ev:
Leh_func_begin196:
	stmfd	sp!, {r4, r7, lr}
	ldr	r1, [r0, #+12]
	add	r7, sp, #4
	mov	r4, r0
	b	LBB288_2
LBB288_1:
	mov	r0, r4
	bl	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	ldr	r1, [r4, #+12]
LBB288_2:
	cmp	r1, #0
	moveq	r0, #0
	streq	r0, [r4, #+12]
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	b	LBB288_1
Leh_func_end196:

	.globl	__ZN4MMgc10FixedAllocD2Ev
	.align	2
__ZN4MMgc10FixedAllocD2Ev:
Leh_func_begin197:
	stmfd	sp!, {r4, r7, lr}
	ldr	r1, [r0, #+12]
	add	r7, sp, #4
	mov	r4, r0
	b	LBB289_2
LBB289_1:
	mov	r0, r4
	bl	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	ldr	r1, [r4, #+12]
LBB289_2:
	cmp	r1, #0
	moveq	r0, #0
	streq	r0, [r4, #+12]
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	b	LBB289_1
Leh_func_end197:

	.globl	__ZN4MMgc14FixedAllocSafeD1Ev
	.align	2
__ZN4MMgc14FixedAllocSafeD1Ev:
Leh_func_begin198:
	stmfd	sp!, {r4, r7, lr}
	mov	r1, #0
	str	r1, [r0, #+32]
	add	r7, sp, #4
	mov	r4, r0
	ldr	r1, [r0, #+12]
	b	LBB290_2
LBB290_1:
	mov	r0, r4
	bl	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	ldr	r1, [r4, #+12]
LBB290_2:
	cmp	r1, #0
	moveq	r0, #0
	streq	r0, [r4, #+12]
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	b	LBB290_1
Leh_func_end198:

	.globl	__ZN4MMgc14FixedAllocSafeD2Ev
	.align	2
__ZN4MMgc14FixedAllocSafeD2Ev:
Leh_func_begin199:
	stmfd	sp!, {r4, r7, lr}
	mov	r1, #0
	str	r1, [r0, #+32]
	add	r7, sp, #4
	mov	r4, r0
	ldr	r1, [r0, #+12]
	b	LBB291_2
LBB291_1:
	mov	r0, r4
	bl	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	ldr	r1, [r4, #+12]
LBB291_2:
	cmp	r1, #0
	moveq	r0, #0
	streq	r0, [r4, #+12]
	subeq	sp, r7, #4
	ldmfdeq	sp!, {r4, r7, pc}
	b	LBB291_1
Leh_func_end199:

	.globl	__ZN4MMgc10FixedAlloc11CreateChunkEb
	.align	2
__ZN4MMgc10FixedAlloc11CreateChunkEb:
Leh_func_begin200:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r2, [r0, #+24]
	add	r7, sp, #12
	mov	r4, r1
	mov	r5, r0
	add	r2, r2, #1
	str	r2, [r0, #+24]
	ldrb	r2, [r0, #+28]
	cmp	r2, #0
	bne	LBB292_2
	mov	r6, #0
	b	LBB292_3
LBB292_2:
	add	r6, r5, #32
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB292_3:
	mov	r2, #9
	cmp	r4, #0
	mov	r1, #1
	mov	r3, r1
	moveq	r2, #1
	ldr	r0, [r5]
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	mov	r4, r0
	cmp	r6, #0
	beq	LBB292_5
	mov	r0, r6
	bl	_OSSpinLockLock
LBB292_5:
	cmp	r4, #0
	subeq	sp, r7, #12
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	mov	r0, #0
	strh	r0, [r4, #+16]
	ldr	r1, [r5, #+8]
	strh	r1, [r4, #+18]
	str	r0, [r4]
	add	r1, r4, #32
	str	r1, [r4, #+4]
	str	r5, [r4, #+28]
	ldr	r1, [r5, #+16]
	str	r1, [r4, #+12]
	str	r0, [r4, #+8]
	ldr	r0, [r5, #+16]
	cmp	r0, #0
	strne	r4, [r0, #+8]
	ldr	r0, [r5, #+12]
	cmp	r0, #0
	streq	r4, [r5, #+12]
	str	r4, [r5, #+16]
	ldr	r0, [r5, #+20]
	cmp	r0, #0
	strne	r4, [r0, #+24]
	ldrne	r0, [r5, #+20]
	mov	r1, #0
	strd	r0, [r4, #+20]
	str	r4, [r5, #+20]
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end200:

	.globl	__ZN4MMgc10FixedAlloc4FreeEPv
	.align	2
__ZN4MMgc10FixedAlloc4FreeEPv:
Leh_func_begin201:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, LCPI293_0
	and	r4, r0, r1
	add	r7, sp, #12
	mov	r5, r0
	orr	r1, r4, #28
	ldr	r1, [r1]
	ldr	r1, [r1]
	ldrb	r1, [r1, #+2524]
	cmp	r1, #0
	ldrne	r0, LCPI293_1
	ldrne	r0, [r0]
	ldrne	r0, [r0]
	cmpne	r0, #0
	beq	LBB293_4
	ldr	r0, [r0, #+2492]
	ldrh	r6, [r4, #+18]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB293_4
	ldr	r0, [r0, #+120]
	cmp	r0, #0
	ldrne	r0, [r0, #+2044]
	cmpne	r0, #0
	beq	LBB293_4
	ldr	r1, [r0]
	ldr	r3, [r1, #+4]
	mov	r2, r6
	mov	r1, r5
	blx	r3
LBB293_4:
	ldr	r0, [r4]
	str	r0, [r5]
	str	r5, [r4]
	ldr	r0, [r4, #+28]
	ldr	r1, [r0, #+4]
	ldrh	r2, [r4, #+16]
	cmp	r2, r1
	bne	LBB293_6
	ldr	r2, [r0, #+20]
	str	r2, [r4, #+20]
	ldr	r2, [r0, #+20]
	cmp	r2, #0
	strne	r4, [r2, #+24]
	ldrne	r0, [r4, #+28]
	str	r4, [r0, #+20]
	ldrh	r2, [r4, #+16]
LBB293_6:
	sub	r0, r2, #1
	mov	r1, #255
	orr	r1, r1, #255, 24
	strh	r0, [r4, #+16]
	tst	r0, r1
	ldreq	r0, [r4, #+28]
	moveq	r1, r4
	bleq	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI293_0:
 	.long	4294963200

	.align	2
	LCPI293_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end201:

	.globl	__ZN4MMgc10FixedAlloc5AllocEmNS_15FixedMallocOptsE
	.align	2
__ZN4MMgc10FixedAlloc5AllocEmNS_15FixedMallocOptsE:
Leh_func_begin202:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r3, [r0, #+20]
	add	r7, sp, #12
	mov	r4, r2
	mov	r5, r0
	cmp	r3, #0
	bne	LBB294_5
	mov	r3, #1
	and	r6, r3, r4, lsr #1
	mov	r0, r5
	mov	r1, r6
	bl	__ZN4MMgc10FixedAlloc11CreateChunkEb
	ldr	r3, [r5, #+20]
	cmp	r3, #0
	bne	LBB294_5
	cmp	r6, #0
	beq	LBB294_4
	mov	r6, #0
	b	LBB294_14
LBB294_4:
	ldr	r3, LCPI294_0
	ldr	r0, [r3]
	bl	__ZN4MMgc6GCHeap27SignalInconsistentHeapStateEPKc
LBB294_5:
	ldrh	r6, [r3, #+16]
	add	r0, r6, #1
	strh	r0, [r3, #+16]
	ldr	r6, [r3]
	cmp	r6, #0
	beq	LBB294_7
	ldr	r1, [r6]
	str	r1, [r3]
	b	LBB294_8
LBB294_7:
	ldr	r1, [r5, #+4]
	uxth	r2, r0
	ldr	r6, [r3, #+4]
	cmp	r2, r1
	moveq	r1, #0
	ldrne	r1, [r5, #+8]
	addne	r1, r1, r6
	str	r1, [r3, #+4]
LBB294_8:
	ldr	r1, [r5, #+4]
	uxth	r0, r0
	cmp	r0, r1
	bne	LBB294_12
	ldr	r0, [r3, #+24]
	cmp	r0, #0
	ldrne	r0, [r0, #+20]
	cmpne	r0, r3
	bne	LBB294_20
	ldr	r0, [r3, #+20]
	cmp	r0, #0
	ldrne	r1, [r0, #+24]
	cmpne	r1, r3
	bne	LBB294_20
	str	r0, [r5, #+20]
	mov	r0, #0
	str	r0, [r3, #+20]
	ldr	r0, [r5, #+20]
	cmp	r0, #0
	movne	r1, #0
	strne	r1, [r0, #+24]
LBB294_12:
	tst	r4, #1
	beq	LBB294_14
	ldrh	r2, [r3, #+18]
	mov	r1, #0
	mov	r0, r6
	bl	_memset
LBB294_14:
	cmp	r6, #0
	beq	LBB294_19
	ldr	r0, [r5]
	ldrb	r0, [r0, #+2524]
	tst	r0, #255
	ldrne	r1, LCPI294_2
	ldrne	r0, LCPI294_1
	ldrne	r1, [r1]
	ldrne	r1, [r1]
	cmpne	r1, #0
	beq	LBB294_19
	and	r0, r6, r0
	orr	r0, r0, #18
	ldrh	r4, [r0]
	ldr	r0, [r1, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB294_19
	ldr	r0, [r0, #+120]
	cmp	r0, #0
	ldrne	r0, [r0, #+2044]
	cmpne	r0, #0
	beq	LBB294_19
	ldr	r1, [r0]
	ldr	r3, [r1]
	mov	r2, r4
	mov	r1, r6
	blx	r3
LBB294_19:
	mov	r0, r6
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB294_20:
	bl	_abort
	.align	2
	LCPI294_0:
 	.long	L_.str8332237$non_lazy_ptr

	.align	2
	LCPI294_1:
 	.long	4294963200

	.align	2
	LCPI294_2:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end202:

	.globl	__ZN4MMgc11FixedMalloc23FindBeginningRootsCache4InitEv
	.align	2
__ZN4MMgc11FixedMalloc23FindBeginningRootsCache4InitEv:
	mov	r1, #0
	str	r1, [r0]
	str	r1, [r0, #+4]
	str	r1, [r0, #+8]
	bx	lr

	.globl	__ZN4MMgc11FixedMalloc23FindBeginningRootsCache7DestroyEv
	.align	2
__ZN4MMgc11FixedMalloc23FindBeginningRootsCache7DestroyEv:
	mov	r1, #0
	str	r1, [r0]
	bx	lr

	.globl	__ZN4MMgc11FixedMalloc12GetTotalSizeEv
	.align	2
__ZN4MMgc11FixedMalloc12GetTotalSizeEv:
Leh_func_begin203:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	mov	r4, r0
	add	r0, r4, #117, 30
	add	r5, r0, #1, 22
	add	r7, sp, #12
	mov	r0, r5
	bl	_OSSpinLockLock
	ldr	r6, [r4, #+1496]
	mov	r0, r5
	bl	_OSSpinLockUnlock
	ldr	r0, LCPI297_0
LBB297_1:
	add	r1, r4, r0
	add	r0, r0, #36
	cmp	r0, #0
	ldr	r1, [r1, #+1504]
	add	r6, r1, r6
	bne	LBB297_1
	mov	r0, r6
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI297_0:
 	.long	4294965820

Leh_func_end203:

	.globl	__ZN4MMgc11FixedMalloc9LargeSizeEPKv
	.align	2
__ZN4MMgc11FixedMalloc9LargeSizeEPKv:
Leh_func_begin204:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r5, [r0]
	add	r0, r5, #220
	add	r6, r0, #2, 22
	mov	r4, r1
	add	r7, sp, #12
	mov	r0, r6
	bl	_OSSpinLockLock
	add	r0, r5, #4
	mov	r1, r0
	b	LBB298_3
LBB298_1:
	ldr	r2, [r1, #+4]
	cmp	r2, r4
	bhi	LBB298_3
	ldr	r3, [r1, #+8]
	cmp	r3, r4
	bhi	LBB298_5
LBB298_3:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB298_1
LBB298_4:
	mov	r1, r0
	b	LBB298_9
LBB298_5:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	subne	r2, r4, r2
	movne	r3, #24
	addne	r1, r1, r2, lsr #12
	ldrne	r2, [r5, #+1516]
	mlane	r3, r1, r3, r2
	cmpne	r3, #0
	beq	LBB298_4
	mov	r0, #24
	mla	r0, r1, r0, r2
	ldr	r4, [r0, #+4]
	b	LBB298_16
LBB298_7:
	ldr	r2, [r1, #+4]
	cmp	r2, r4
	bhi	LBB298_9
	ldr	r2, [r1, #+8]
	cmp	r2, r4
	bhi	LBB298_13
LBB298_9:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB298_7
	mov	r4, #0
	b	LBB298_16
LBB298_11:
	ldr	r1, [r0, #+4]
	cmp	r1, r4
	bhi	LBB298_13
	ldr	r1, [r0, #+8]
	cmp	r1, r4
	bhi	LBB298_15
LBB298_13:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB298_11
	mov	r0, #0
LBB298_15:
	ldr	r0, [r0, #+12]
	sub	r4, r0, r4
	mov	r4, r4, lsr #12
LBB298_16:
	mov	r0, r6
	bl	_OSSpinLockUnlock
	mov	r0, r4, lsl #12
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end204:

	.globl	__ZN4MMgc11FixedMalloc20FindBeginningAndSizeEPKvRS2_Rm
	.align	2
__ZN4MMgc11FixedMalloc20FindBeginningAndSizeEPKvRS2_Rm:
Leh_func_begin205:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	sub	sp, sp, #12
	mov	r5, r0
	add	r0, r5, #114, 30
	add	r6, r0, #1, 22
	stmfa	sp, {r2, r3}
	mov	r4, r1
	str	r5, [sp]
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5, #+1484]
	cmp	r0, r4
	bhi	LBB299_2
	mov	r1, r5
	ldr	r1, [r1, #+1488]
	add	r1, r0, r1
	cmp	r1, r4
	bhi	LBB299_46
LBB299_2:
	mov	r0, r6
	mvn	r8, #0
	bl	_OSSpinLockUnlock
	ldr	r0, [sp]
	add	r6, r0, #16
	add	r5, r0, #36
LBB299_3:
	add	r8, r8, #1
	cmp	r8, #41
	bge	LBB299_18
	mov	r0, r5
	add	r10, r6, #36
	add	r11, r5, #36
	bl	_OSSpinLockLock
	b	LBB299_8
LBB299_5:
	add	r0, r6, #32
	cmp	r0, r4
	bhi	LBB299_7
	ldrd	r0, [r5, #-28]
	mla	r0, r1, r0, r6
	add	r0, r0, #32
	cmp	r0, r4
	bhi	LBB299_12
LBB299_7:
	add	r6, r6, #8
LBB299_8:
	ldr	r6, [r6]
	cmp	r6, #0
	bne	LBB299_5
	mov	r0, r5
	mov	r6, r10
	mov	r5, r11
	bl	_OSSpinLockUnlock
	b	LBB299_3
LBB299_10:
	ldr	r0, [r6, #+8]
	cmp	r11, r4
	add	r0, r11, r0
	bhi	LBB299_13
	cmp	r0, r4
	bls	LBB299_13
	b	LBB299_15
LBB299_12:
	mov	r0, r5
	mvn	r10, #0
	bl	_OSSpinLockUnlock
	ldr	r6, LCPI299_0
	and	r6, r4, r6
	orr	r0, r6, #32
	orr	r6, r6, #28
	ldr	r6, [r6]
	ldr	r8, [r6, #+4]
LBB299_13:
	add	r10, r10, #1
	mov	r11, r0
	cmp	r10, r8
	blo	LBB299_10
	mov	r11, #0
LBB299_15:
	ldr	r6, [r5, #-24]
	ldr	r3, [sp, #+8]
	str	r6, [r3]
	ldr	r2, [sp, #+4]
	str	r11, [r2]
LBB299_16:
	mov	r0, #1
LBB299_17:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB299_18:
	ldr	r0, [sp]
	ldr	r6, [r0]
	add	r5, r6, #4
	mov	r0, r5
	b	LBB299_21
LBB299_19:
	ldr	r1, [r0, #+4]
	cmp	r1, r4
	bhi	LBB299_21
	ldr	r2, [r0, #+8]
	cmp	r2, r4
	bhi	LBB299_22
LBB299_21:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB299_19
	b	LBB299_28
LBB299_22:
	ldr	r0, [r0, #+16]
	cmn	r0, #1
	beq	LBB299_28
	sub	r2, r4, r1
	mov	r9, #24
	ldr	r3, [r6, #+1516]
	add	r2, r0, r2, lsr #12
	mla	r9, r2, r9, r3
	ldr	r9, [r9, #+4]
	cmp	r9, #0
	bne	LBB299_26
	sub	r2, r4, r1
	mov	r1, #24
	add	r2, r0, r2, lsr #12
	mla	r0, r2, r1, r3
	sub	r0, r0, #20
LBB299_25:
	ldr	r1, [r0], #-24
	sub	r2, r2, #1
	cmp	r1, #0
	beq	LBB299_25
LBB299_26:
	mov	r0, #24
	mla	r0, r2, r0, r3
	cmp	r0, #0
	beq	LBB299_28
	mov	r0, #24
	mla	r0, r2, r0, r3
	ldr	r0, [r0, #+12]
	cmp	r0, #0
	beq	LBB299_29
LBB299_28:
	mov	r0, #0
	b	LBB299_17
LBB299_29:
	mov	r0, #24
	mul	r0, r2, r0
	ldr	r4, [r3, +r0]
	add	r0, r6, #220
	add	r8, r0, #2, 22
	mov	r0, r8
	bl	_OSSpinLockLock
	mov	r0, r5
	b	LBB299_32
LBB299_30:
	ldr	r1, [r0, #+4]
	cmp	r1, r4
	bhi	LBB299_32
	ldr	r2, [r0, #+8]
	cmp	r2, r4
	bhi	LBB299_34
LBB299_32:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB299_30
LBB299_33:
	mov	r0, r5
	b	LBB299_38
LBB299_34:
	ldr	r0, [r0, #+16]
	cmn	r0, #1
	subne	r1, r4, r1
	addne	r0, r0, r1, lsr #12
	ldrne	r6, [r6, #+1516]
	movne	r1, #24
	mlane	r1, r0, r1, r6
	cmpne	r1, #0
	beq	LBB299_33
	mov	r5, #24
	mla	r0, r0, r5, r6
	ldr	r5, [r0, #+4]
	b	LBB299_45
LBB299_36:
	ldr	r6, [r0, #+4]
	cmp	r6, r4
	bhi	LBB299_38
	ldr	r6, [r0, #+8]
	cmp	r6, r4
	bhi	LBB299_42
LBB299_38:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB299_36
	mov	r5, #0
	b	LBB299_45
LBB299_40:
	ldr	r0, [r5, #+4]
	cmp	r0, r4
	bhi	LBB299_42
	ldr	r0, [r5, #+8]
	cmp	r0, r4
	bhi	LBB299_44
LBB299_42:
	ldr	r5, [r5]
	cmp	r5, #0
	bne	LBB299_40
	mov	r5, #0
LBB299_44:
	ldr	r0, [r5, #+12]
	sub	r0, r0, r4
	mov	r5, r0, lsr #12
LBB299_45:
	mov	r0, r8
	bl	_OSSpinLockUnlock
	mov	r0, r5, lsl #12
	ldr	r3, [sp, #+8]
	str	r0, [r3]
	ldr	r2, [sp, #+4]
	str	r4, [r2]
	b	LBB299_16
LBB299_46:
	ldr	r2, [sp, #+4]
	str	r0, [r2]
	ldr	r1, [sp]
	ldr	r3, [sp, #+8]
	ldr	r0, [r1, #+1488]
	str	r0, [r3]
	mov	r0, r6
	bl	_OSSpinLockUnlock
	b	LBB299_16
	.align	2
	LCPI299_0:
 	.long	4294963200

Leh_func_end205:

	.globl	__ZN4MMgc11FixedMalloc13FindBeginningEPKv
	.align	2
__ZN4MMgc11FixedMalloc13FindBeginningEPKv:
Leh_func_begin206:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	sub	sp, sp, #8
	mov	r2, #0
	str	r2, [sp, #+4]
	mov	r3, sp
	add	r2, sp, #4
	bl	__ZN4MMgc11FixedMalloc20FindBeginningAndSizeEPKvRS2_Rm
	ldr	r1, [sp, #+4]
	cmp	r0, #0
	mov	r0, r1
	moveq	r0, #0
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end206:

	.globl	__ZN4MMgc11FixedMalloc9LargeFreeEPv
	.align	2
__ZN4MMgc11FixedMalloc9LargeFreeEPv:
Leh_func_begin207:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r5, r0
	mov	r4, r1
	ldr	r6, [r5]
	add	r1, r6, #220
	add	r8, r1, #2, 22
	mov	r0, r8
	bl	_OSSpinLockLock
	add	r0, r6, #4
	mov	r1, r0
	b	LBB301_3
LBB301_1:
	ldr	r2, [r1, #+4]
	cmp	r2, r4
	bhi	LBB301_3
	ldr	r3, [r1, #+8]
	cmp	r3, r4
	bhi	LBB301_5
LBB301_3:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB301_1
LBB301_4:
	mov	r1, r0
	b	LBB301_9
LBB301_5:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	subne	r2, r4, r2
	movne	r3, #24
	addne	r1, r1, r2, lsr #12
	ldrne	r2, [r6, #+1516]
	mlane	r3, r1, r3, r2
	cmpne	r3, #0
	beq	LBB301_4
	mov	r0, #24
	mla	r0, r1, r0, r2
	ldr	r6, [r0, #+4]
	b	LBB301_16
LBB301_7:
	ldr	r6, [r1, #+4]
	cmp	r6, r4
	bhi	LBB301_9
	ldr	r6, [r1, #+8]
	cmp	r6, r4
	bhi	LBB301_13
LBB301_9:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB301_7
	mov	r6, #0
	b	LBB301_16
LBB301_11:
	ldr	r6, [r0, #+4]
	cmp	r6, r4
	bhi	LBB301_13
	ldr	r6, [r0, #+8]
	cmp	r6, r4
	bhi	LBB301_15
LBB301_13:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB301_11
	mov	r0, #0
LBB301_15:
	ldr	r6, [r0, #+12]
	sub	r6, r6, r4
	mov	r6, r6, lsr #12
LBB301_16:
	mov	r0, r8
	bl	_OSSpinLockUnlock
	add	r0, r5, #117, 30
	add	r8, r0, #1, 22
	mov	r0, r8
	bl	_OSSpinLockLock
	ldr	r0, LCPI301_0
	ldr	r1, [r5, #+1496]
	and	r0, r6, r0
	sub	r0, r1, r0
	str	r0, [r5, #+1496]
	mov	r0, r8
	bl	_OSSpinLockUnlock
	ldr	r6, [r5]
	ldrb	r0, [r6, #+2524]
	cmp	r0, #0
	bne	LBB301_18
	mov	r0, r6
	b	LBB301_53
LBB301_18:
	mov	r0, #255
	orr	r0, r0, #15, 24
	and	r8, r4, r0
	tst	r4, r0
	bne	LBB301_36
	add	r0, r6, #220
	add	r10, r0, #2, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	add	r0, r6, #4
	mov	r1, r0
	b	LBB301_22
LBB301_20:
	ldr	r2, [r1, #+4]
	cmp	r2, r4
	bhi	LBB301_22
	ldr	r3, [r1, #+8]
	cmp	r3, r4
	bhi	LBB301_24
LBB301_22:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB301_20
LBB301_23:
	mov	r1, r0
	b	LBB301_28
LBB301_24:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	subne	r2, r4, r2
	movne	r3, #24
	addne	r1, r1, r2, lsr #12
	ldrne	r2, [r6, #+1516]
	mlane	r3, r1, r3, r2
	cmpne	r3, #0
	beq	LBB301_23
	mov	r0, #24
	mla	r0, r1, r0, r2
	ldr	r6, [r0, #+4]
	b	LBB301_35
LBB301_26:
	ldr	r6, [r1, #+4]
	cmp	r6, r4
	bhi	LBB301_28
	ldr	r6, [r1, #+8]
	cmp	r6, r4
	bhi	LBB301_32
LBB301_28:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB301_26
	mov	r6, #0
	b	LBB301_35
LBB301_30:
	ldr	r6, [r0, #+4]
	cmp	r6, r4
	bhi	LBB301_32
	ldr	r6, [r0, #+8]
	cmp	r6, r4
	bhi	LBB301_34
LBB301_32:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB301_30
	mov	r0, #0
LBB301_34:
	ldr	r6, [r0, #+12]
	sub	r6, r6, r4
	mov	r6, r6, lsr #12
LBB301_35:
	mov	r0, r10
	mov	r6, r6, lsl #12
	bl	_OSSpinLockUnlock
	b	LBB301_37
LBB301_36:
	ldr	r6, LCPI301_1
	and	r6, r4, r6
	orr	r6, r6, #18
	ldrh	r6, [r6]
LBB301_37:
	ldr	r0, LCPI301_2
	ldr	r0, [r0]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	LBB301_41
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB301_41
	ldr	r0, [r0, #+120]
	cmp	r0, #0
	ldrne	r0, [r0, #+2044]
	cmpne	r0, #0
	beq	LBB301_41
	ldr	r1, [r0]
	ldr	r3, [r1, #+4]
	mov	r2, r6
	mov	r1, r4
	blx	r3
LBB301_41:
	ldr	r6, [r5]
	cmp	r8, #0
	beq	LBB301_43
	mov	r0, r6
	b	LBB301_53
LBB301_43:
	add	r0, r6, #220
	add	r8, r0, #2, 22
	mov	r0, r8
	bl	_OSSpinLockLock
	add	r0, r6, #4
	mov	r1, r0
	b	LBB301_46
LBB301_44:
	ldr	r2, [r1, #+4]
	cmp	r2, r4
	bhi	LBB301_46
	ldr	r3, [r1, #+8]
	cmp	r3, r4
	bhi	LBB301_47
LBB301_46:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB301_44
	b	LBB301_51
LBB301_47:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	beq	LBB301_51
	sub	r2, r4, r2
	add	r1, r1, r2, lsr #12
	mov	r3, #24
	ldr	r2, [r6, #+1516]
	mla	r1, r1, r3, r2
	cmp	r1, #0
	beq	LBB301_51
	b	LBB301_52
LBB301_49:
	ldr	r1, [r0, #+4]
	cmp	r1, r4
	bhi	LBB301_51
	ldr	r1, [r0, #+8]
	cmp	r1, r4
	bhi	LBB301_52
LBB301_51:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB301_49
LBB301_52:
	mov	r0, r8
	bl	_OSSpinLockUnlock
	ldr	r0, [r5]
LBB301_53:
	mov	r2, #0
	mov	r3, #1
	mov	r1, r4
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI301_0:
 	.long	1048575

	.align	2
	LCPI301_1:
 	.long	4294963200

	.align	2
	LCPI301_2:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end207:

	.globl	__ZN4MMgc11FixedMalloc10LargeAllocEmNS_15FixedMallocOptsE
	.align	2
__ZN4MMgc11FixedMalloc10LargeAllocEmNS_15FixedMallocOptsE:
Leh_func_begin208:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r3, r2
	adds	r2, r1, #1, 20
	mov	r4, r0
	mov	r9, #0
	adc	r0, r9, #0
	cmp	r0, #0
	bne	LBB302_28
	add	r1, r1, #255
	mov	r0, #9
	tst	r3, #2
	moveq	r0, #1
	add	r1, r1, #15, 24
	orr	r2, r0, #2
	tst	r3, #1
	mov	r5, r1, lsr #12
	mov	r3, #1
	moveq	r2, r0
	ldr	r0, [r4]
	mov	r1, r5
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	mov	r6, r0
	cmp	r0, #0
	beq	LBB302_27
	ldr	r8, [r4]
	ldrb	r0, [r8, #+2524]
	cmp	r0, #0
	beq	LBB302_26
	mov	r0, #255
	orr	r0, r0, #15, 24
	tst	r6, r0
	bne	LBB302_21
	add	r0, r8, #220
	add	r10, r0, #2, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	add	r0, r8, #4
	mov	r1, r0
	b	LBB302_7
LBB302_5:
	ldr	r2, [r1, #+4]
	cmp	r2, r6
	bhi	LBB302_7
	ldr	r3, [r1, #+8]
	cmp	r3, r6
	bhi	LBB302_9
LBB302_7:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB302_5
LBB302_8:
	mov	r1, r0
	b	LBB302_13
LBB302_9:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	subne	r2, r6, r2
	movne	r3, #24
	addne	r1, r1, r2, lsr #12
	ldrne	r2, [r8, #+1516]
	mlane	r3, r1, r3, r2
	cmpne	r3, #0
	beq	LBB302_8
	mov	r0, #24
	mla	r0, r1, r0, r2
	ldr	r8, [r0, #+4]
	b	LBB302_20
LBB302_11:
	ldr	r8, [r1, #+4]
	cmp	r8, r6
	bhi	LBB302_13
	ldr	r8, [r1, #+8]
	cmp	r8, r6
	bhi	LBB302_17
LBB302_13:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB302_11
	mov	r8, #0
	b	LBB302_20
LBB302_15:
	ldr	r8, [r0, #+4]
	cmp	r8, r6
	bhi	LBB302_17
	ldr	r8, [r0, #+8]
	cmp	r8, r6
	bhi	LBB302_19
LBB302_17:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB302_15
	mov	r0, #0
LBB302_19:
	ldr	r8, [r0, #+12]
	sub	r8, r8, r6
	mov	r8, r8, lsr #12
LBB302_20:
	mov	r0, r10
	mov	r8, r8, lsl #12
	bl	_OSSpinLockUnlock
	b	LBB302_22
LBB302_21:
	ldr	r8, LCPI302_0
	and	r8, r6, r8
	orr	r8, r8, #18
	ldrh	r8, [r8]
LBB302_22:
	ldr	r0, LCPI302_1
	ldr	r0, [r0]
	ldr	r0, [r0]
	cmp	r0, #0
	beq	LBB302_26
	ldr	r0, [r0, #+2492]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB302_26
	ldr	r0, [r0, #+120]
	cmp	r0, #0
	ldrne	r0, [r0, #+2044]
	cmpne	r0, #0
	beq	LBB302_26
	ldr	r1, [r0]
	ldr	r3, [r1]
	mov	r2, r8
	mov	r1, r6
	blx	r3
LBB302_26:
	add	r0, r4, #117, 30
	add	r8, r0, #1, 22
	mov	r0, r8
	bl	_OSSpinLockLock
	ldr	r0, [r4, #+1496]
	add	r0, r0, r5
	str	r0, [r4, #+1496]
	mov	r0, r8
	bl	_OSSpinLockUnlock
LBB302_27:
	mov	r0, r6
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB302_28:
	bl	__ZN4MMgc6GCHeap20SignalObjectTooLargeEv
	.align	2
	LCPI302_0:
 	.long	4294963200

	.align	2
	LCPI302_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end208:

	.globl	__ZN4MMgc11FixedMalloc6CallocEmmNS_15FixedMallocOptsE
	.align	2
__ZN4MMgc11FixedMalloc6CallocEmmNS_15FixedMallocOptsE:
Leh_func_begin209:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	umull	r1, r2, r2, r1
	cmp	r2, #0
	bne	LBB303_24
	mov	r4, r3
	mov	r5, r0
	cmp	r1, #127, 28
	bhi	LBB303_23
	cmp	r1, #4
	movls	r6, #0
	ldrhi	r0, LCPI303_0
	addhi	r6, r1, #7
	ldrhi	r0, [r0]
	ldrbhi	r6, [r0, +r6, lsr #3]
	mov	r0, #36
	mla	r8, r6, r0, r5
	add	r10, r8, #36
	mov	r0, r10
	bl	_OSSpinLockLock
	ldr	r0, [r8, #+24]!
	cmp	r0, #0
	bne	LBB303_7
	mov	r0, #36
	mov	r1, #1
	and	r11, r1, r4, lsr #1
	mla	r0, r6, r0, r5
	mov	r1, r11
	add	r0, r0, #4
	bl	__ZN4MMgc10FixedAlloc11CreateChunkEb
	ldr	r0, [r8]
	cmp	r0, #0
	bne	LBB303_7
	cmp	r11, #0
	beq	LBB303_6
	mov	r11, #0
	b	LBB303_16
LBB303_6:
	ldr	r0, LCPI303_1
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap27SignalInconsistentHeapStateEPKc
LBB303_7:
	ldrh	r11, [r0, #+16]
	add	r1, r11, #1
	strh	r1, [r0, #+16]
	ldr	r11, [r0]
	cmp	r11, #0
	beq	LBB303_9
	ldr	r2, [r11]
	str	r2, [r0]
	b	LBB303_10
LBB303_9:
	mov	r11, #36
	uxth	r3, r1
	mla	r11, r6, r11, r5
	ldr	r2, [r11, #+8]
	cmp	r3, r2
	ldr	r11, [r0, #+4]
	moveq	r2, #0
	movne	r2, #36
	mlane	r2, r6, r2, r5
	ldrne	r2, [r2, #+12]
	addne	r2, r2, r11
	str	r2, [r0, #+4]
LBB303_10:
	mov	r2, #36
	uxth	r1, r1
	mla	r2, r6, r2, r5
	ldr	r2, [r2, #+8]
	cmp	r1, r2
	bne	LBB303_14
	ldr	r1, [r0, #+24]
	cmp	r1, #0
	ldrne	r1, [r1, #+20]
	cmpne	r1, r0
	bne	LBB303_25
	ldr	r1, [r0, #+20]
	cmp	r1, #0
	ldrne	r2, [r1, #+24]
	cmpne	r2, r0
	bne	LBB303_25
	str	r1, [r8]
	mov	r1, #0
	str	r1, [r0, #+20]
	ldr	r1, [r8]
	cmp	r1, #0
	movne	r2, #0
	strne	r2, [r1, #+24]
LBB303_14:
	tst	r4, #1
	beq	LBB303_16
	ldrh	r2, [r0, #+18]
	mov	r1, #0
	mov	r0, r11
	bl	_memset
LBB303_16:
	mov	r0, r10
	bl	_OSSpinLockUnlock
	cmp	r11, #0
	beq	LBB303_21
	mov	r4, #36
	mla	r4, r6, r4, r5
	ldr	r4, [r4, #+4]
	ldrb	r4, [r4, #+2524]
	tst	r4, #255
	ldrne	r5, LCPI303_3
	ldrne	r4, LCPI303_2
	ldrne	r5, [r5]
	ldrne	r5, [r5]
	cmpne	r5, #0
	beq	LBB303_21
	and	r4, r11, r4
	ldr	r0, [r5, #+2492]
	orr	r4, r4, #18
	ldrh	r4, [r4]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB303_21
	ldr	r5, [r0, #+120]
	cmp	r5, #0
	ldrne	r0, [r5, #+2044]
	cmpne	r0, #0
	beq	LBB303_21
	ldr	r5, [r0]
	mov	r1, r11
	mov	r2, r4
	ldr	r5, [r5]
	blx	r5
LBB303_21:
	mov	r0, r11
LBB303_22:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB303_23:
	mov	r0, r5
	mov	r2, r4
	bl	__ZN4MMgc11FixedMalloc10LargeAllocEmNS_15FixedMallocOptsE
	b	LBB303_22
LBB303_24:
	bl	__ZN4MMgc6GCHeap20SignalObjectTooLargeEv
LBB303_25:
	bl	_abort
	.align	2
	LCPI303_0:
 	.long	L__ZN4MMgc11FixedMalloc15kSizeClassIndexE$non_lazy_ptr

	.align	2
	LCPI303_1:
 	.long	L_.str8332237$non_lazy_ptr

	.align	2
	LCPI303_2:
 	.long	4294963200

	.align	2
	LCPI303_3:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end209:

	.globl	__ZN4MMgc11FixedMalloc14OutOfLineAllocEmNS_15FixedMallocOptsE
	.align	2
__ZN4MMgc11FixedMalloc14OutOfLineAllocEmNS_15FixedMallocOptsE:
Leh_func_begin210:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	mov	r4, r2
	mov	r5, r0
	cmp	r1, #127, 28
	bhi	LBB304_22
	cmp	r1, #4
	movls	r6, #0
	ldrhi	r0, LCPI304_0
	addhi	r6, r1, #7
	ldrhi	r0, [r0]
	ldrbhi	r6, [r0, +r6, lsr #3]
	mov	r0, #36
	mla	r8, r6, r0, r5
	add	r10, r8, #36
	mov	r0, r10
	bl	_OSSpinLockLock
	ldr	r0, [r8, #+24]!
	cmp	r0, #0
	bne	LBB304_6
	mov	r0, #36
	mov	r1, #1
	and	r11, r1, r4, lsr #1
	mla	r0, r6, r0, r5
	mov	r1, r11
	add	r0, r0, #4
	bl	__ZN4MMgc10FixedAlloc11CreateChunkEb
	ldr	r0, [r8]
	cmp	r0, #0
	bne	LBB304_6
	cmp	r11, #0
	beq	LBB304_5
	mov	r11, #0
	b	LBB304_15
LBB304_5:
	ldr	r0, LCPI304_1
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap27SignalInconsistentHeapStateEPKc
LBB304_6:
	ldrh	r11, [r0, #+16]
	add	r1, r11, #1
	strh	r1, [r0, #+16]
	ldr	r11, [r0]
	cmp	r11, #0
	beq	LBB304_8
	ldr	r2, [r11]
	str	r2, [r0]
	b	LBB304_9
LBB304_8:
	mov	r11, #36
	uxth	r3, r1
	mla	r11, r6, r11, r5
	ldr	r2, [r11, #+8]
	cmp	r3, r2
	ldr	r11, [r0, #+4]
	moveq	r2, #0
	movne	r2, #36
	mlane	r2, r6, r2, r5
	ldrne	r2, [r2, #+12]
	addne	r2, r2, r11
	str	r2, [r0, #+4]
LBB304_9:
	mov	r2, #36
	uxth	r1, r1
	mla	r2, r6, r2, r5
	ldr	r2, [r2, #+8]
	cmp	r1, r2
	bne	LBB304_13
	ldr	r1, [r0, #+24]
	cmp	r1, #0
	ldrne	r1, [r1, #+20]
	cmpne	r1, r0
	bne	LBB304_23
	ldr	r1, [r0, #+20]
	cmp	r1, #0
	ldrne	r2, [r1, #+24]
	cmpne	r2, r0
	bne	LBB304_23
	str	r1, [r8]
	mov	r1, #0
	str	r1, [r0, #+20]
	ldr	r1, [r8]
	cmp	r1, #0
	movne	r2, #0
	strne	r2, [r1, #+24]
LBB304_13:
	tst	r4, #1
	beq	LBB304_15
	ldrh	r2, [r0, #+18]
	mov	r1, #0
	mov	r0, r11
	bl	_memset
LBB304_15:
	mov	r0, r10
	bl	_OSSpinLockUnlock
	cmp	r11, #0
	beq	LBB304_20
	mov	r4, #36
	mla	r4, r6, r4, r5
	ldr	r4, [r4, #+4]
	ldrb	r4, [r4, #+2524]
	tst	r4, #255
	ldrne	r5, LCPI304_3
	ldrne	r4, LCPI304_2
	ldrne	r5, [r5]
	ldrne	r5, [r5]
	cmpne	r5, #0
	beq	LBB304_20
	and	r4, r11, r4
	ldr	r0, [r5, #+2492]
	orr	r4, r4, #18
	ldrh	r4, [r4]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB304_20
	ldr	r5, [r0, #+120]
	cmp	r5, #0
	ldrne	r0, [r5, #+2044]
	cmpne	r0, #0
	beq	LBB304_20
	ldr	r5, [r0]
	mov	r1, r11
	mov	r2, r4
	ldr	r5, [r5]
	blx	r5
LBB304_20:
	mov	r0, r11
LBB304_21:
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB304_22:
	mov	r0, r5
	mov	r2, r4
	bl	__ZN4MMgc11FixedMalloc10LargeAllocEmNS_15FixedMallocOptsE
	b	LBB304_21
LBB304_23:
	bl	_abort
	.align	2
	LCPI304_0:
 	.long	L__ZN4MMgc11FixedMalloc15kSizeClassIndexE$non_lazy_ptr

	.align	2
	LCPI304_1:
 	.long	L_.str8332237$non_lazy_ptr

	.align	2
	LCPI304_2:
 	.long	4294963200

	.align	2
	LCPI304_3:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end210:

	.globl	__ZN4MMgc11FixedMalloc12GetUsageInfoERmS1_
	.align	2
__ZN4MMgc11FixedMalloc12GetUsageInfoERmS1_:
Leh_func_begin211:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r4, #0
	str	r4, [r1]
	str	r4, [r2]
	ldr	r1, LCPI305_0
	mov	r5, r2
	mov	r6, r0
LBB305_1:
	add	r0, r6, r1
	ldr	r0, [r0, #+1492]
	cmp	r0, #0
	beq	LBB305_6
	mov	r2, #0
LBB305_3:
	ldrh	r3, [r0, #+16]
	ldrh	r9, [r0, #+18]
	ldr	r0, [r0, #+8]
	mla	r2, r9, r3, r2
	cmp	r0, #0
	bne	LBB305_3
LBB305_4:
	add	r4, r2, r4
	add	r1, r1, #36
	str	r4, [r5]
	cmp	r1, #0
	bne	LBB305_1
	add	r0, r6, #117, 30
	add	r8, r0, #1, 22
	mov	r0, r8
	bl	_OSSpinLockLock
	ldr	r6, [r6, #+1496]
	mov	r0, r8
	bl	_OSSpinLockUnlock
	add	r0, r4, r6, lsl #12
	str	r0, [r5]
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB305_6:
	mov	r2, #0
	b	LBB305_4
	.align	2
	LCPI305_0:
 	.long	4294965820

Leh_func_end211:

	.globl	__ZN4MMgc11FixedMalloc13OutOfLineFreeEPv
	.align	2
__ZN4MMgc11FixedMalloc13OutOfLineFreeEPv:
Leh_func_begin212:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	cmp	r1, #0
	beq	LBB306_10
	mov	r4, r1
	mov	r1, #255
	orr	r1, r1, #15, 24
	tst	r4, r1
	bne	LBB306_3
	mov	r1, r4
	bl	__ZN4MMgc11FixedMalloc9LargeFreeEPv
	b	LBB306_10
LBB306_3:
	ldr	r0, LCPI306_0
	and	r5, r4, r0
	orr	r0, r5, #28
	ldr	r6, [r0]
	ldr	r0, [r6]
	ldrb	r0, [r0, #+2524]
	cmp	r0, #0
	ldrne	r0, LCPI306_1
	ldrne	r0, [r0]
	ldrne	r0, [r0]
	cmpne	r0, #0
	beq	LBB306_7
	ldr	r0, [r0, #+2492]
	ldrh	r8, [r5, #+18]
	bl	_pthread_getspecific
	cmp	r0, #0
	beq	LBB306_7
	ldr	r0, [r0, #+120]
	cmp	r0, #0
	ldrne	r0, [r0, #+2044]
	cmpne	r0, #0
	beq	LBB306_7
	ldr	r1, [r0]
	ldr	r3, [r1, #+4]
	mov	r2, r8
	mov	r1, r4
	blx	r3
LBB306_7:
	add	r6, r6, #32
	mov	r0, r6
	bl	_OSSpinLockLock
	ldr	r0, [r5]
	str	r0, [r4]
	str	r4, [r5]
	ldr	r0, [r5, #+28]
	ldr	r1, [r0, #+4]
	ldrh	r2, [r5, #+16]
	cmp	r2, r1
	bne	LBB306_9
	ldr	r2, [r0, #+20]
	str	r2, [r5, #+20]
	ldr	r2, [r0, #+20]
	cmp	r2, #0
	strne	r5, [r2, #+24]
	ldrne	r0, [r5, #+28]
	str	r5, [r0, #+20]
	ldrh	r2, [r5, #+16]
LBB306_9:
	sub	r0, r2, #1
	mov	r1, #255
	orr	r1, r1, #255, 24
	strh	r0, [r5, #+16]
	tst	r0, r1
	ldreq	r0, [r5, #+28]
	moveq	r1, r5
	bleq	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	mov	r0, r6
	bl	_OSSpinLockUnlock
LBB306_10:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI306_0:
 	.long	4294963200

	.align	2
	LCPI306_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end212:

	.globl	__ZN4MMgc11FixedMalloc15DestroyInstanceEv
	.align	2
__ZN4MMgc11FixedMalloc15DestroyInstanceEv:
Leh_func_begin213:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r5, r0
	mov	r4, #41
	mov	r6, #0
	mov	r8, r5
LBB307_1:
	ldr	r1, [r8, #+16]
	cmp	r1, #0
	beq	LBB307_4
	add	r10, r8, #4
LBB307_3:
	mov	r0, r10
	bl	__ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
	ldr	r1, [r8, #+16]
	cmp	r1, #0
	bne	LBB307_3
LBB307_4:
	str	r6, [r8, #+16]
	str	r6, [r8, #+36]!
	sub	r4, r4, #1
	cmp	r4, #0
	ldreq	r1, LCPI307_0
	moveq	r0, #0
	streq	r0, [r5, #+1492]
	streq	r0, [r5, #+1480]
	ldreq	r1, [r1]
	streq	r0, [r1]
	subeq	sp, r7, #20
	ldmfdeq	sp!, {r8, r10}
	ldmfdeq	sp!, {r4, r5, r6, r7, pc}
	b	LBB307_1
	.align	2
	LCPI307_0:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr

Leh_func_end213:

	.globl	__ZN4MMgc11FixedMalloc12InitInstanceEPNS_6GCHeapE
	.align	2
__ZN4MMgc11FixedMalloc12InitInstanceEPNS_6GCHeapE:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	ldr	r2, LCPI308_0
	str	r1, [r0]
	mov	r4, #0
	str	r4, [r0, #+1496]
	str	r4, [r0, #+1492]
	ldr	r5, [r2]
	mov	r6, r1
	mov	r8, r0
	mov	r10, #0
LBB308_1:
	ldrsh	r1, [r5], #+2
	mov	r0, #254, 28
	add	r11, r8, r10
	str	r6, [r11, #+4]
	str	r1, [r11, #+12]
	str	r4, [r11, #+16]
	str	r4, [r11, #+20]
	str	r4, [r11, #+24]
	str	r4, [r11, #+28]
	bl	___udivsi3
	str	r0, [r11, #+8]
	add	r0, r10, #36
	cmp	r10, #90, 28
	mov	r10, r0
	bne	LBB308_1
	mov	r0, #0
	str	r0, [r8, #+1480]
	str	r0, [r8, #+1484]
	str	r0, [r8, #+1488]
	ldr	r0, LCPI308_1
	ldr	r0, [r0]
	str	r8, [r0]
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI308_0:
 	.long	L__ZN4MMgc11FixedMalloc12kSizeClassesE$non_lazy_ptr

	.align	2
	LCPI308_1:
 	.long	L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr


	.globl	__ZN4MMgc28GCHashtableAllocHandler_VMPI5allocEmb
	.align	2
__ZN4MMgc28GCHashtableAllocHandler_VMPI5allocEmb:
Leh_func_begin214:
	stmfd	sp!, {r4, r7, lr}
	mov	r4, r1
	bl	_malloc
	add	r7, sp, #4
	cmp	r0, #0
	cmpeq	r4, #0
	beq	LBB309_2
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
LBB309_2:
	ldr	r0, LCPI309_0
	ldr	r0, [r0]
	ldr	r0, [r0]
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI309_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end214:

	.globl	__ZN4MMgc27GCHashtableAllocHandler_new4freeEPv
	.align	2
__ZN4MMgc27GCHashtableAllocHandler_new4freeEPv:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	cmp	r0, #0
	moveq	sp, r7
	ldmfdeq	sp!, {r7, pc}
	bl	_free
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc27GCHashtableAllocHandler_new5allocEmb
	.align	2
__ZN4MMgc27GCHashtableAllocHandler_new5allocEmb:
Leh_func_begin215:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	cmp	r0, #0
	moveq	r0, #0
	moveq	sp, r7
	ldmfdeq	sp!, {r7, pc}
	cmp	r1, #0
	mov	r1, #2
	moveq	r1, #0
	bl	__ZN4MMgc9SystemNewEmNS_15FixedMallocOptsE
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end215:

	.globl	__ZN4MMgc28GCHashtableAllocHandler_VMPI4freeEPv
	.align	2
__ZN4MMgc28GCHashtableAllocHandler_VMPI4freeEPv:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_free
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc13GCAllocObjectnwEm
	.align	2
__ZN4MMgc13GCAllocObjectnwEm:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_malloc
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc13GCAllocObjectdaEPv
	.align	2
__ZN4MMgc13GCAllocObjectdaEPv:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_free
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc13GCAllocObjectdlEPv
	.align	2
__ZN4MMgc13GCAllocObjectdlEPv:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_free
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc13GCAllocObjectnaEm
	.align	2
__ZN4MMgc13GCAllocObjectnaEm:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_malloc
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc13GCDebugIndentEm
	.align	2
__ZN4MMgc13GCDebugIndentEm:
	bx	lr

	.globl	__ZN4MMgc20PrintAllocStackTraceEPKv
	.align	2
__ZN4MMgc20PrintAllocStackTraceEPKv:
	bx	lr

	.globl	__ZN4MMgc21PrintDeleteStackTraceEPKv
	.align	2
__ZN4MMgc21PrintDeleteStackTraceEPKv:
	bx	lr

	.globl	__ZN4MMgc17GetAllocationNameEPKv
	.align	2
__ZN4MMgc17GetAllocationNameEPKv:
	mov	r0, #0
	bx	lr

	.globl	__ZN4MMgc5GCLogEPKcz
	.align	2
__ZN4MMgc5GCLogEPKcz:
Leh_func_begin216:
	sub	sp, sp, #12
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	sub	sp, sp, #4
	sub	sp, sp, #1, 22
	mov	r9, r0
	add	r0, r7, #8
	stmia	r0, {r1, r2, r3}
	add	r3, r7, #8
	mov	r1, #1, 22
	mov	r2, r9
	str	r3, [sp, #+1024]
	mov	r0, sp
	bl	_vsnprintf
	ldr	r0, LCPI321_0
	ldr	r0, [r0]
	ldr	r1, [r0]
	cmp	r1, #0
	beq	LBB321_3
	mov	r0, sp
	blx	r1
LBB321_2:
	mov	sp, r7
	ldmfd	sp!, {r7, lr}
	add	sp, sp, #12
	bx	lr
LBB321_3:
	ldr	r0, LCPI321_1
	mov	r1, sp
	ldr	r0, [r0]
	bl	_printf
	b	LBB321_2
	.align	2
	LCPI321_0:
 	.long	L_logFunc$non_lazy_ptr

	.align	2
	LCPI321_1:
 	.long	L_.str1881$non_lazy_ptr

Leh_func_end216:

	.globl	__ZN4MMgc9SystemNewEmNS_15FixedMallocOptsE
	.align	2
__ZN4MMgc9SystemNewEmNS_15FixedMallocOptsE:
Leh_func_begin217:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r4, r1
	mov	r5, r0
	bl	_malloc
	cmp	r0, #0
	bne	LBB322_6
	tst	r4, #2
	beq	LBB322_3
	mov	r6, #0
	b	LBB322_8
LBB322_3:
	mov	r6, #1
	ldr	r0, LCPI322_0
	add	r8, r6, r5, lsr #12
	ldr	r10, [r0]
LBB322_4:
	sub	r6, r6, #1
	ldr	r0, [r10]
	cmp	r6, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB322_9
	mov	r1, r8
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, r5
	bl	_malloc
	cmp	r0, #0
	beq	LBB322_4
LBB322_6:
	mov	r6, r0
	tst	r4, #1
	beq	LBB322_8
	mov	r1, #0
	mov	r0, r6
	mov	r2, r5
	bl	_memset
LBB322_8:
	mov	r0, r6
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB322_9:
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI322_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end217:

	.globl	__ZN4MMgc12SystemDeleteEPv
	.align	2
__ZN4MMgc12SystemDeleteEPv:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_free
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc10DeleteCallEPv
	.align	2
__ZN4MMgc10DeleteCallEPv:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_free
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__ZN4MMgc9AllocCallEmNS_15FixedMallocOptsE
	.align	2
__ZN4MMgc9AllocCallEmNS_15FixedMallocOptsE:
Leh_func_begin218:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	mov	r4, r1
	mov	r5, r0
	bl	_malloc
	cmp	r0, #0
	bne	LBB325_6
	tst	r4, #2
	beq	LBB325_3
	mov	r6, #0
	b	LBB325_8
LBB325_3:
	mov	r6, #1
	ldr	r0, LCPI325_0
	add	r8, r6, r5, lsr #12
	ldr	r10, [r0]
LBB325_4:
	sub	r6, r6, #1
	ldr	r0, [r10]
	cmp	r6, #0
	ldrbeq	r1, [r0, #+2509]
	cmpeq	r1, #0
	bne	LBB325_9
	mov	r1, r8
	bl	__ZN4MMgc6GCHeap20SendFreeMemorySignalEm
	mov	r0, r5
	bl	_malloc
	cmp	r0, #0
	beq	LBB325_4
LBB325_6:
	mov	r6, r0
	tst	r4, #1
	beq	LBB325_8
	mov	r1, #0
	mov	r0, r6
	mov	r2, r5
	bl	_memset
LBB325_8:
	mov	r0, r6
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB325_9:
	bl	__ZN4MMgc6GCHeap5AbortEv
	.align	2
	LCPI325_0:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end218:

	.globl	__Z30AVMPI_isMemoryProfilingEnabledv
	.align	2
__Z30AVMPI_isMemoryProfilingEnabledv:
	stmfd	sp!, {r7, lr}
	ldr	r0, LCPI326_0
	mov	r7, sp
	ldr	r0, [r0]
	bl	_getenv
	cmp	r0, #0
	moveq	r0, #0
	moveq	sp, r7
	ldmfdeq	sp!, {r7, pc}
	ldrb	r1, [r0]
	mov	r0, #0
	cmp	r1, #49
	moveq	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI326_0:
 	.long	L_.str953010$non_lazy_ptr


	.globl	__Z30AVMPI_makeCodeMemoryExecutablePvmb
	.align	2
__Z30AVMPI_makeCodeMemoryExecutablePvmb:
Leh_func_begin219:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	mov	r4, r2
	mov	r5, r1
	ldr	r2, LCPI327_0
	ldr	r1, [r2]
	ldr	r8, [r1]
	mov	r6, r0
	mov	r1, r8
	bl	___umodsi3
	cmp	r0, #0
	bne	LBB327_3
	mov	r0, r5
	mov	r1, r8
	bl	___umodsi3
	cmp	r0, #0
	bne	LBB327_3
	mov	r2, #5
	cmp	r4, #0
	mov	r0, r6
	mov	r1, r5
	moveq	r2, #3
	bl	_mprotect
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB327_3:
	bl	_abort
	.align	2
	LCPI327_0:
 	.long	L__ZL8pagesize$non_lazy_ptr

Leh_func_end219:

	.globl	__Z20AVMPI_freeCodeMemoryPvm
	.align	2
__Z20AVMPI_freeCodeMemoryPvm:
Leh_func_begin220:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10, r11}
	mov	r4, r1
	mov	r5, r0
	ldr	r1, LCPI328_0
	ldr	r0, [r1]
	ldr	r6, [r0]
	ldr	r0, LCPI328_1
	ldr	r0, [r0]
	ldr	r8, [r0]
	add	r0, r8, #220
	add	r10, r0, #2, 22
	mov	r0, r10
	bl	_OSSpinLockLock
	add	r0, r8, #4
	mov	r1, r0
	b	LBB328_3
LBB328_1:
	ldr	r2, [r1, #+4]
	cmp	r2, r5
	bhi	LBB328_3
	ldr	r3, [r1, #+8]
	cmp	r3, r5
	bhi	LBB328_5
LBB328_3:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB328_1
LBB328_4:
	mov	r1, r0
	b	LBB328_9
LBB328_5:
	ldr	r1, [r1, #+16]
	cmn	r1, #1
	subne	r2, r5, r2
	movne	r3, #24
	addne	r1, r1, r2, lsr #12
	ldrne	r2, [r8, #+1516]
	mlane	r3, r1, r3, r2
	cmpne	r3, #0
	beq	LBB328_4
	mov	r0, #24
	mla	r0, r1, r0, r2
	ldr	r11, [r0, #+4]
	b	LBB328_16
LBB328_7:
	ldr	r11, [r1, #+4]
	cmp	r11, r5
	bhi	LBB328_9
	ldr	r11, [r1, #+8]
	cmp	r11, r5
	bhi	LBB328_13
LBB328_9:
	ldr	r1, [r1]
	cmp	r1, #0
	bne	LBB328_7
	mov	r11, #0
	b	LBB328_16
LBB328_11:
	ldr	r11, [r0, #+4]
	cmp	r11, r5
	bhi	LBB328_13
	ldr	r11, [r0, #+8]
	cmp	r11, r5
	bhi	LBB328_15
LBB328_13:
	ldr	r0, [r0]
	cmp	r0, #0
	bne	LBB328_11
	mov	r0, #0
LBB328_15:
	ldr	r11, [r0, #+12]
	sub	r11, r11, r5
	mov	r11, r11, lsr #12
LBB328_16:
	mov	r0, r10
	bl	_OSSpinLockUnlock
	mov	r0, r5
	mov	r1, r6
	bl	___umodsi3
	cmp	r0, #0
	bne	LBB328_19
	mov	r0, r4
	mov	r1, r6
	bl	___umodsi3
	cmp	r0, #0
	moveq	r0, r11, lsl #12
	cmpeq	r0, r4
	bne	LBB328_19
	mov	r2, #1
	mov	r0, r8
	mov	r1, r5
	mov	r3, r2
	bl	__ZN4MMgc6GCHeap12FreeInternalEPKvbb
	ldr	r0, [r8, #+2256]
	sub	r0, r0, r11
	str	r0, [r8, #+2256]
	sub	sp, r7, #24
	ldmfd	sp!, {r8, r10, r11}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB328_19:
	bl	_abort
	.align	2
	LCPI328_0:
 	.long	L__ZL8pagesize$non_lazy_ptr

	.align	2
	LCPI328_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end220:

	.globl	__Z24AVMPI_allocateCodeMemorym
	.align	2
__Z24AVMPI_allocateCodeMemorym:
Leh_func_begin221:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	ldr	r1, LCPI329_0
	mov	r4, r0
	add	r7, sp, #12
	ldr	r1, [r1]
	ldr	r5, [r1]
	mov	r1, r5
	bl	___umodsi3
	cmp	r0, #0
	bne	LBB329_2
	ldr	r0, LCPI329_1
	ldr	r0, [r0]
	ldr	r6, [r0]
	ldr	r0, [r6, #+2256]
	add	r0, r0, r4, lsr #12
	str	r0, [r6, #+2256]
	mov	r0, r6
	bl	__ZN4MMgc6GCHeap28CheckForMemoryLimitsExceededEv
	mov	r1, r4, lsr #12
	mov	r3, r5, lsr #12
	mov	r2, #7
	mov	r0, r6
	bl	__ZN4MMgc6GCHeap5AllocEmjm
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
LBB329_2:
	bl	_abort
	.align	2
	LCPI329_0:
 	.long	L__ZL8pagesize$non_lazy_ptr

	.align	2
	LCPI329_1:
 	.long	L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr

Leh_func_end221:

	.globl	__Z31AVMPI_canMergeContiguousRegionsv
	.align	2
__Z31AVMPI_canMergeContiguousRegionsv:
Leh_func_begin222:
	stmfd	sp!, {r4, r7, lr}
	add	r7, sp, #4
	sub	sp, sp, #32
	mov	r0, #1
	str	r0, [sp, #+24]
	mov	r1, #2
	add	r4, sp, #14
	add	r3, sp, #8
	mov	r2, r4
	str	r1, [sp, #+28]
	mov	r0, #10
	str	r0, [sp, #+8]
	mov	r0, #0
	str	r0, [sp]
	str	r0, [sp, #+4]
	add	r0, sp, #24
	bl	_sysctl
	mov	r0, r4
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	cmp	r0, #8
	mov	r0, #0
	movgt	r0, #1
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
Leh_func_end222:

	.globl	__Z37AVMPI_canCommitAlreadyCommittedMemoryv
	.align	2
__Z37AVMPI_canCommitAlreadyCommittedMemoryv:
	mov	r0, #1
	bx	lr

	.globl	__Z22AVMPI_areNewPagesDirtyv
	.align	2
__Z22AVMPI_areNewPagesDirtyv:
	mov	r0, #0
	bx	lr

	.globl	__Z24AVMPI_getThreadStackBasev
	.align	2
__Z24AVMPI_getThreadStackBasev:
Leh_func_begin223:
	stmfd	sp!, {r7, lr}
	bl	_pthread_self
	mov	r7, sp
	bl	_pthread_get_stackaddr_np
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end223:

	.globl	__Z16AVMPI_cleanStackm
	.align	2
__Z16AVMPI_cleanStackm:
	bx	lr

	.globl	__Z33AVMPI_getPrivateResidentPageCountv
	.align	2
__Z33AVMPI_getPrivateResidentPageCountv:
Leh_func_begin224:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	stmfd	sp!, {r8, r10}
	sub	sp, sp, #52
	bic	sp, sp, #7
	ldr	r0, LCPI335_0
	mov	r1, #5
	add	r3, sp, #16
	add	r2, sp, #40
	str	r3, [sp]
	str	r1, [sp, #+40]
	str	r2, [sp, #+4]
	ldr	r0, [r0]
	ldr	r4, [r0]
	add	r1, sp, #48
	add	r2, sp, #44
	mov	r3, #12
	mov	r0, #0
	str	r0, [sp, #+44]
	str	r0, [sp, #+48]
	add	r0, sp, #12
	str	r0, [sp, #+8]
	mov	r0, r4
	bl	_vm_region_64
	cmp	r0, #0
	beq	LBB335_2
	mov	r5, #0
	b	LBB335_4
LBB335_2:
	mov	r5, #0
	mov	r6, #5
	mov	r8, #12
LBB335_3:
	ldr	r0, [sp, #+48]
	ldr	r1, [sp, #+44]
	add	r3, sp, #16
	add	r2, sp, #40
	str	r3, [sp]
	str	r2, [sp, #+4]
	ldr	r10, [sp, #+24]
	str	r6, [sp, #+40]
	add	r5, r10, r5
	add	r0, r1, r0
	str	r0, [sp, #+48]
	add	r1, sp, #48
	add	r2, sp, #44
	mov	r3, r8
	add	r0, sp, #12
	str	r0, [sp, #+8]
	mov	r0, r4
	bl	_vm_region_64
	cmp	r0, #0
	beq	LBB335_3
LBB335_4:
	mov	r0, r5
	sub	sp, r7, #20
	ldmfd	sp!, {r8, r10}
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI335_0:
 	.long	L_mach_task_self_$non_lazy_ptr

Leh_func_end224:

	.globl	__Z26AVMPI_releaseAlignedMemoryPv
	.align	2
__Z26AVMPI_releaseAlignedMemoryPv:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_free
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__Z27AVMPI_allocateAlignedMemorym
	.align	2
__Z27AVMPI_allocateAlignedMemorym:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_valloc
	mov	sp, r7
	ldmfd	sp!, {r7, pc}

	.globl	__Z20AVMPI_decommitMemoryPcm
	.align	2
__Z20AVMPI_decommitMemoryPcm:
Leh_func_begin225:
	stmfd	sp!, {r4, r7, lr}
	add	r7, sp, #4
	sub	sp, sp, #32
	mov	r4, r1
	mov	r1, r0
	ldr	r2, LCPI338_0
	ldr	r0, [r2]
	str	r1, [sp, #+28]
	ldr	r0, [r0]
	mov	r2, r4
	bl	_vm_deallocate
	cmp	r0, #0
	bne	LBB338_2
	ldr	r0, LCPI338_1
	mov	r1, #2
	mov	r3, #0
	str	r3, [sp]
	str	r3, [sp, #+4]
	str	r3, [sp, #+8]
	str	r3, [sp, #+12]
	mov	r2, r4
	mov	r12, #7
	str	r3, [sp, #+16]
	str	r12, [sp, #+20]
	str	r1, [sp, #+24]
	ldr	r0, [r0]
	add	r1, sp, #28
	ldr	r0, [r0]
	bl	_vm_map
LBB338_2:
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
	.align	2
	LCPI338_0:
 	.long	L_mach_task_self_$non_lazy_ptr

	.align	2
	LCPI338_1:
 	.long	L_mach_task_self_$non_lazy_ptr

Leh_func_end225:

	.globl	__Z18AVMPI_commitMemoryPvm
	.align	2
__Z18AVMPI_commitMemoryPvm:
Leh_func_begin226:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	sub	sp, sp, #36
	mov	r4, r1
	mov	r5, r0
	mov	r1, #1
	mov	r0, #10
	str	r1, [sp, #+28]
	str	r0, [sp, #+12]
	add	r8, sp, #18
	add	r3, sp, #12
	mov	r2, r8
	mov	r6, #0
	str	r6, [sp]
	str	r6, [sp, #+4]
	mov	r1, #2
	add	r0, sp, #28
	str	r1, [sp, #+32]
	bl	_sysctl
	mov	r0, r8
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r6, [sp, #+8]
	str	r6, [sp, #+4]
	mvn	r2, #0
	cmp	r0, #8
	mov	r3, #18
	orr	r3, r3, #1, 20
	mov	r0, r5
	mov	r1, r4
	movgt	r2, #15, 4
	str	r2, [sp]
	mov	r2, #3
	bl	_mmap
	cmp	r0, r5
	mov	r0, #0
	moveq	r0, #1
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end226:

	.globl	__Z22AVMPI_useVirtualMemoryv
	.align	2
__Z22AVMPI_useVirtualMemoryv:
Leh_func_begin227:
	stmfd	sp!, {r4, r7, lr}
	add	r7, sp, #4
	sub	sp, sp, #32
	mov	r0, #1
	str	r0, [sp, #+24]
	mov	r1, #2
	add	r4, sp, #14
	add	r3, sp, #8
	mov	r2, r4
	str	r1, [sp, #+28]
	mov	r0, #10
	str	r0, [sp, #+8]
	mov	r0, #0
	str	r0, [sp]
	str	r0, [sp, #+4]
	add	r0, sp, #24
	bl	_sysctl
	mov	r0, r4
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	cmp	r0, #8
	mov	r0, #0
	movgt	r0, #1
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
Leh_func_end227:

	.globl	__Z25AVMPI_releaseMemoryRegionPvm
	.align	2
__Z25AVMPI_releaseMemoryRegionPvm:
Leh_func_begin228:
	stmfd	sp!, {r7, lr}
	bl	_munmap
	mov	r7, sp
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end228:

	.globl	__Z25AVMPI_reserveMemoryRegionPvm
	.align	2
__Z25AVMPI_reserveMemoryRegionPvm:
Leh_func_begin229:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	str	r8, [sp, #-4]!
	sub	sp, sp, #36
	mov	r4, r1
	mov	r5, r0
	mov	r1, #1
	mov	r0, #10
	str	r1, [sp, #+28]
	str	r0, [sp, #+12]
	add	r8, sp, #18
	add	r3, sp, #12
	mov	r2, r8
	mov	r6, #0
	str	r6, [sp]
	str	r6, [sp, #+4]
	mov	r1, #2
	add	r0, sp, #28
	str	r1, [sp, #+32]
	bl	_sysctl
	mov	r0, r8
	mov	r1, #0
	mov	r2, #10
	bl	_strtol
	str	r6, [sp, #+8]
	str	r6, [sp, #+4]
	mvn	r2, #0
	cmp	r0, #8
	mov	r3, #2
	orr	r3, r3, #1, 20
	mov	r0, r5
	mov	r1, r4
	movgt	r2, #15, 4
	str	r2, [sp]
	mov	r2, #0
	bl	_mmap
	cmn	r0, #1
	beq	LBB342_3
	cmp	r5, #0
	cmpne	r0, r5
	beq	LBB342_4
	mov	r1, r4
	bl	_munmap
LBB342_3:
	mov	r0, #0
LBB342_4:
	sub	sp, r7, #16
	ldr	r8, [sp], #+4
	ldmfd	sp!, {r4, r5, r6, r7, pc}
Leh_func_end229:

	.globl	__Z14VMPI_tlsCreatePm
	.align	2
__Z14VMPI_tlsCreatePm:
Leh_func_begin230:
	stmfd	sp!, {r4, r7, lr}
	add	r7, sp, #4
	sub	sp, sp, #4
	mov	r4, r0
	mov	r0, sp
	mov	r1, #0
	bl	_pthread_key_create
	cmp	r0, #0
	movne	r0, #0
	ldreq	r0, [sp]
	streq	r0, [r4]
	moveq	r0, #1
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
LBB343_1:
Leh_func_end230:

	.globl	__Z29VMPI_threadAttrSetPriorityLowP22_opaque_pthread_attr_t
	.align	2
__Z29VMPI_threadAttrSetPriorityLowP22_opaque_pthread_attr_t:
	bx	lr

	.globl	__Z32VMPI_threadAttrSetPriorityNormalP22_opaque_pthread_attr_t
	.align	2
__Z32VMPI_threadAttrSetPriorityNormalP22_opaque_pthread_attr_t:
	bx	lr

	.globl	__Z30VMPI_threadAttrSetPriorityHighP22_opaque_pthread_attr_t
	.align	2
__Z30VMPI_threadAttrSetPriorityHighP22_opaque_pthread_attr_t:
	bx	lr

	.globl	__Z19VMPI_threadAttrInitP22_opaque_pthread_attr_t
	.align	2
__Z19VMPI_threadAttrInitP22_opaque_pthread_attr_t:
Leh_func_begin231:
	stmfd	sp!, {r7, lr}
	bl	_pthread_attr_init
	mov	r7, sp
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end231:

	.globl	__Z31VMPI_threadAttrDefaultStackSizev
	.align	2
__Z31VMPI_threadAttrDefaultStackSizev:
Leh_func_begin232:
	stmfd	sp!, {r4, r7, lr}
	add	r7, sp, #4
	sub	sp, sp, #52
	bic	sp, sp, #7
	add	r4, sp, #8
	mov	r0, r4
	bl	_pthread_attr_init
	add	r1, sp, #4
	mov	r0, r4
	bl	_pthread_attr_getstacksize
	ldr	r0, [sp, #+4]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
Leh_func_end232:

	.globl	__Z31VMPI_threadAttrDefaultGuardSizev
	.align	2
__Z31VMPI_threadAttrDefaultGuardSizev:
Leh_func_begin233:
	stmfd	sp!, {r4, r7, lr}
	add	r7, sp, #4
	sub	sp, sp, #52
	bic	sp, sp, #7
	add	r4, sp, #8
	mov	r0, r4
	bl	_pthread_attr_init
	add	r1, sp, #4
	mov	r0, r4
	bl	_pthread_attr_getguardsize
	ldr	r0, [sp, #+4]
	sub	sp, r7, #4
	ldmfd	sp!, {r4, r7, pc}
Leh_func_end233:

	.globl	__Z27VMPI_threadAttrSetStackSizeP22_opaque_pthread_attr_tm
	.align	2
__Z27VMPI_threadAttrSetStackSizeP22_opaque_pthread_attr_tm:
Leh_func_begin234:
	stmfd	sp!, {r7, lr}
	bl	_pthread_attr_setstacksize
	mov	r7, sp
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end234:

	.globl	__Z27VMPI_threadAttrSetGuardSizeP22_opaque_pthread_attr_tm
	.align	2
__Z27VMPI_threadAttrSetGuardSizeP22_opaque_pthread_attr_tm:
Leh_func_begin235:
	stmfd	sp!, {r7, lr}
	bl	_pthread_attr_setguardsize
	mov	r7, sp
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end235:

	.globl	__Z22VMPI_threadAttrDestroyP22_opaque_pthread_attr_t
	.align	2
__Z22VMPI_threadAttrDestroyP22_opaque_pthread_attr_t:
Leh_func_begin236:
	stmfd	sp!, {r7, lr}
	bl	_pthread_attr_destroy
	mov	r7, sp
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end236:

	.globl	__Z18VMPI_condVarSignalP22_opaque_pthread_cond_t
	.align	2
__Z18VMPI_condVarSignalP22_opaque_pthread_cond_t:
Leh_func_begin237:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_pthread_cond_signal
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end237:

	.globl	__Z21VMPI_condVarBroadcastP22_opaque_pthread_cond_t
	.align	2
__Z21VMPI_condVarBroadcastP22_opaque_pthread_cond_t:
Leh_func_begin238:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_pthread_cond_broadcast
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end238:

	.globl	__Z21VMPI_condVarTimedWaitP22_opaque_pthread_cond_tP23_opaque_pthread_mutex_ti
	.align	2
__Z21VMPI_condVarTimedWaitP22_opaque_pthread_cond_tP23_opaque_pthread_mutex_ti:
Leh_func_begin239:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	sub	sp, sp, #8
	bic	sp, sp, #7
	ldr	r3, LCPI355_0
	smmul	r3, r2, r3
	mov	r9, r3, asr #6
	add	r3, r9, r3, lsr #31
	str	r3, [sp]
	mov	r9, #250, 30
	mul	r3, r3, r9
	sub	r2, r2, r3
	mov	r3, #9, 26
	orr	r3, r3, #61, 18
	mul	r2, r2, r3
	str	r2, [sp, #+4]
	mov	r2, sp
	bl	_pthread_cond_timedwait_relative_np
	cmp	r0, #60
	mov	r0, #0
	moveq	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
	.align	2
	LCPI355_0:
 	.long	274877907

Leh_func_end239:

	.globl	__Z16VMPI_condVarWaitP22_opaque_pthread_cond_tP23_opaque_pthread_mutex_t
	.align	2
__Z16VMPI_condVarWaitP22_opaque_pthread_cond_tP23_opaque_pthread_mutex_t:
Leh_func_begin240:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_pthread_cond_wait
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end240:

	.globl	__Z15VMPI_threadJoinP17_opaque_pthread_t
	.align	2
__Z15VMPI_threadJoinP17_opaque_pthread_t:
Leh_func_begin241:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	sub	sp, sp, #4
	mov	r1, sp
	bl	_pthread_join
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end241:

	.globl	__Z16VMPI_threadSleepi
	.align	2
__Z16VMPI_threadSleepi:
Leh_func_begin242:
	stmfd	sp!, {r4, r5, r6, r7, lr}
	add	r7, sp, #12
	sub	sp, sp, #108
	bic	sp, sp, #7
	mov	r4, r0
	add	r0, sp, #80
	bl	_pthread_mutexattr_init
	cmp	r0, #0
	bne	LBB358_3
	add	r0, sp, #80
	mov	r1, #2
	bl	_pthread_mutexattr_settype
	cmp	r0, #0
	bne	LBB358_3
	add	r0, sp, #32
	add	r1, sp, #80
	bl	_pthread_mutex_init
LBB358_3:
	mov	r5, sp
	mov	r1, #0
	mov	r0, r5
	add	r6, sp, #32
	bl	_pthread_cond_init
	mov	r0, r6
	bl	_pthread_mutex_lock
	ldr	r0, LCPI358_0
	add	r2, sp, #96
	smmul	r0, r4, r0
	mov	r1, r0, asr #6
	add	r0, r1, r0, lsr #31
	str	r0, [sp, #+96]
	mov	r1, #250, 30
	mul	r0, r0, r1
	mov	r1, #9, 26
	orr	r1, r1, #61, 18
	sub	r0, r4, r0
	mul	r0, r0, r1
	str	r0, [sp, #+100]
	mov	r1, r6
	mov	r0, r5
	bl	_pthread_cond_timedwait_relative_np
	mov	r0, r6
	bl	_pthread_mutex_unlock
	mov	r0, r6
	bl	_pthread_mutex_destroy
	mov	r0, r5
	bl	_pthread_cond_destroy
	sub	sp, r7, #12
	ldmfd	sp!, {r4, r5, r6, r7, pc}
	.align	2
	LCPI358_0:
 	.long	274877907

Leh_func_end242:

	.globl	__Z17VMPI_threadDetachP17_opaque_pthread_t
	.align	2
__Z17VMPI_threadDetachP17_opaque_pthread_t:
Leh_func_begin243:
	stmfd	sp!, {r7, lr}
	bl	_pthread_detach
	mov	r7, sp
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end243:

	.globl	__Z17VMPI_threadCreatePP17_opaque_pthread_tP22_opaque_pthread_attr_tPFPvS4_ES4_
	.align	2
__Z17VMPI_threadCreatePP17_opaque_pthread_tP22_opaque_pthread_attr_tPFPvS4_ES4_:
Leh_func_begin244:
	stmfd	sp!, {r7, lr}
	bl	_pthread_create
	mov	r7, sp
	cmp	r0, #0
	mov	r0, #0
	moveq	r0, #1
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end244:

	.globl	__Z15VMPI_tlsDestroym
	.align	2
__Z15VMPI_tlsDestroym:
Leh_func_begin245:
	stmfd	sp!, {r7, lr}
	mov	r7, sp
	bl	_pthread_key_delete
	mov	sp, r7
	ldmfd	sp!, {r7, pc}
Leh_func_end245:

.no_dead_strip __ZN4MMgc11StackMemoryC2EPNS_2GCEPKvmb
.no_dead_strip __ZN4MMgc2GC13RCRootSegmentC1EPS0_Pvm
.no_dead_strip __ZN4MMgc2GC13RCRootSegmentD1Ev
.no_dead_strip __ZN4MMgc2GC13RCRootSegmentD0Ev
.no_dead_strip __ZN4MMgc2GC13RCRootSegmentC2EPS0_Pvm
.no_dead_strip __ZN4MMgc2GC17AutoRCRootSegmentC1EPS0_Pvm
.no_dead_strip __ZN4MMgc2GC17AutoRCRootSegmentD1Ev
.no_dead_strip __ZN4MMgc2GC17AutoRCRootSegmentD0Ev
.no_dead_strip __ZN4MMgc2GC17AutoRCRootSegmentC2EPS0_Pvm
.no_dead_strip __ZN4MMgc2GC19WriteBarrierRC_dtorEPKv
.no_dead_strip __ZN4MMgc2GC14ClearMarkStackEv
.no_dead_strip _OSSpinLockTry
.no_dead_strip __ZN4MMgc10GCCallbackD2Ev
.no_dead_strip __ZN4MMgc2GC10FreeRCRootEPv
.no_dead_strip __ZN4MMgc2GC16popAllocaSegmentEv
.no_dead_strip __ZN4MMgc2GC15allocaPopToSlowEPv
.no_dead_strip __ZN4MMgc2GC14allocaShutdownEv
.no_dead_strip __ZN4MMgc2GC12GetUsageInfoERmS1_
.no_dead_strip __ZN4MMgc2GC13GetBytesInUseEv
.no_dead_strip __ZN4MMgc2GC8heapFreeEPvmb
.no_dead_strip __ZN4MMgc2GC9heapAllocEmi
.no_dead_strip __ZN4MMgc2GC9AllocBitsEii
.no_dead_strip __ZN4MMgc2GC4ZeroEPKv
.no_dead_strip __ZN4MMgc2GC12ClearWeakRefEPKvb
.no_dead_strip __ZN4MMgc2GC9AbortFreeEPKv
.no_dead_strip __ZN4MMgc2GC19MarkOrClearWeakRefsEv
.no_dead_strip __ZN4MMgc9GCWeakRef3getEv
.no_dead_strip __ZN4MMgc2GC12TracePointerEPv
.no_dead_strip __ZN4MMgc2GC14TraceAtomValueEi
.no_dead_strip __ZN4MMgc2GC15WriteBarrierHitEPKv
.no_dead_strip __ZN4MMgc2GC26reversePointersWithinBlockEPvmm
.no_dead_strip __ZN4MMgc2GC24WriteBarrierNoSubstituteEPKvS2_
.no_dead_strip __ZN4MMgc2GC43privateConservativeWriteBarrierNoSubstituteEPKv
.no_dead_strip __ZN4MMgc2GC12WriteBarrierEPKvS2_
.no_dead_strip __ZN4MMgc2GC12UnlockObjectEPNS_12GCObjectLockE
.no_dead_strip __ZN4MMgc2GC19WriteBarrierRC_ctorEPKvS2_
.no_dead_strip __ZN4MMgc2GC14WriteBarrierRCEPKvS2_
.no_dead_strip __ZN4MMgc2GC21privateWriteBarrierRCEPKvS2_S2_
.no_dead_strip __ZN4MMgc2GC19privateWriteBarrierEPKvS2_S2_
.no_dead_strip __ZN4MMgc2GC16WriteBarrierTrapEPKv
.no_dead_strip __ZN4MMgc2GC21Push_GCObject_MayFailEPKv
.no_dead_strip __ZN4MMgc2GC23movePointersWithinBlockEPPvjjmb
.no_dead_strip __ZN4MMgc2GC12movePointersEPvPS1_jPPKvjm
.no_dead_strip __ZN4MMgc2GC16FlushBarrierWorkEv
.no_dead_strip __ZN4MMgc2GC16CheckBarrierWorkEv
.no_dead_strip __ZN4MMgc2GC24MarkItem_ExactObjectTailEPKvm
.no_dead_strip __ZN4MMgc2GC18SplitExactGCObjectEPKv
.no_dead_strip __ZN4MMgc2GC35SplitItem_ConservativeOrNonGCObjectEPKvRjNS_11GCMarkStack7TypeTagES2_
.no_dead_strip __ZN4MMgc2GC34MarkItem_ConservativeOrNonGCObjectEPKvjNS_11GCMarkStack7TypeTagES2_b
.no_dead_strip __ZN4MMgc2GC24TraceConservativePointerEmb
.no_dead_strip __ZN4MMgc2GC17MarkItem_GCObjectEPKv
.no_dead_strip __ZN4MMgc2GC23MarkTopItem_NonGCObjectEv
.no_dead_strip __ZN4MMgc2GC9DumpAllocEPNS_7GCAllocERmS3_
.no_dead_strip __ZN4MMgc2GC14DumpMemoryInfoEv
.no_dead_strip __ZN4MMgc2GC5gclogEPKcz
.no_dead_strip __ZN4MMgc6GCRoot27SetMarkStackSentinelPointerEm
.no_dead_strip __ZN4MMgc6GCRoot13PrivilegedSetEPKvj
.no_dead_strip __ZN4MMgc11StackMemory3SetEPKvm
.no_dead_strip __ZN4MMgc6GCRoot7DestroyEv
.no_dead_strip __ZN4MMgc6GCRootD2Ev
.no_dead_strip __ZN4MMgc2GC17AutoRCRootSegmentD2Ev
.no_dead_strip __ZN4MMgc6GCRootC1EPNS_2GCEPNS_17GCExactDummyClassE
.no_dead_strip __ZN4MMgc6GCRootC2EPNS_2GCEPNS_17GCExactDummyClassE
.no_dead_strip __ZN4MMgc6GCRootC1EPNS_2GCE
.no_dead_strip __ZN4MMgc6GCRootC2EPNS_2GCE
.no_dead_strip __ZN4MMgc2GC26CreateRootFromCurrentStackEPFvPvES1_
.no_dead_strip __ZN4MMgcL28DoCreateRootFromCurrentStackEPvS0_
.no_dead_strip __ZN4MMgc2GC10CleanStackEb
.no_dead_strip __ZN4MMgc2GC12DoCleanStackEPvS1_
.no_dead_strip __ZN4MMgc2GC13UnmarkGCPagesEPvj
.no_dead_strip __ZN4MMgc2GC9FreeBlockEPvj
.no_dead_strip __ZN4MMgc2GC11MarkGCPagesEPvjNS_7PageMap8PageTypeE
.no_dead_strip __ZN4MMgc2GC10AllocBlockEiNS_7PageMap8PageTypeEbb
.no_dead_strip __ZN4MMgc2GC4MarkEj
.no_dead_strip __ZN4MMgc2GC15IncrementalMarkEv
.no_dead_strip __ZN4MMgc2GC4MarkEv
.no_dead_strip __ZN4MMgc2GC9MarkRootsEbb
.no_dead_strip __ZN4MMgc2GC14MarkStackRootsEv
.no_dead_strip __ZN4MMgc2GC17MarkNonstackRootsEb
.no_dead_strip __ZN4MMgc2GC23HandleMarkStackOverflowEv
.no_dead_strip __ZN4MMgc2GC15DoMarkFromStackEPvS1_
.no_dead_strip __ZN4MMgc2GC17MarkQueueAndStackEb
.no_dead_strip __ZN4MMgc2GC24EstablishSweepInvariantsEv
.no_dead_strip __ZN4MMgc2GC21ObtainQuickListBudgetEm
.no_dead_strip __ZN4MMgc2GC18SweepNeedsSweepingEv
.no_dead_strip __ZN4MMgc2GC20StartIncrementalMarkEv
.no_dead_strip __ZN4MMgc2GC8FinalizeEv
.no_dead_strip __ZN4MMgc2GC5SweepEv
.no_dead_strip __ZN4MMgc2GC21FinishIncrementalMarkEbb
.no_dead_strip __ZN4MMgc2GC7CollectEbb
.no_dead_strip __ZN4MMgc2GC14ThreadEdgeWorkEv
.no_dead_strip __ZN4MMgc2GC11ThreadLeaveEbPS0_
.no_dead_strip __ZN4MMgc16GCAutoEnterPauseC1EPNS_2GCE
.no_dead_strip __ZN4MMgc16GCAutoEnterPauseC2EPNS_2GCE
.no_dead_strip __ZN4MMgc11GCAutoEnter7DestroyEb
.no_dead_strip __ZN4MMgc11GCAutoEnterD0Ev
.no_dead_strip __ZN4MMgc11GCAutoEnterD1Ev
.no_dead_strip __ZN4MMgc11GCAutoEnter6UnwindEv
.no_dead_strip __ZN4MMgc11GCAutoEnterD2Ev
.no_dead_strip __ZN4MMgc2GC11ThreadEnterEPNS_11GCAutoEnterEbb
.no_dead_strip __ZN4MMgc16GCAutoEnterPauseD1Ev
.no_dead_strip __ZN4MMgc16GCAutoEnterPauseD2Ev
.no_dead_strip __ZN4MMgc11GCAutoEnterC2EPNS_2GCENS0_9EnterTypeE
.no_dead_strip __ZN4MMgc11GCAutoEnterC1EPNS_2GCENS0_9EnterTypeE
.no_dead_strip __ZN4MMgc2GC18memoryStatusChangeENS_13_MemoryStatusES1_
.no_dead_strip __ZN4MMgc2GC10ClearMarksEv
.no_dead_strip __ZN4MMgc2GC19SignalImminentAbortEv
.no_dead_strip __ZN4MMgc2GC22AbortInProgressMarkingEv
.no_dead_strip __ZN4MMgc2GC20ForceSweepAtShutdownEv
.no_dead_strip __ZN4MMgc2GC27SignalDependentDeallocationEmNS_19DependentMemoryTypeE
.no_dead_strip __ZN4MMgc2GC9AllocSlowEPNS_7GCAllocE
.no_dead_strip __ZN4MMgc2GC5AllocEmi
.no_dead_strip __ZN4MMgc2GC10LockObjectEPKv
.no_dead_strip __ZN4MMgc2GC10GetWeakRefEPKv
.no_dead_strip __ZN4MMgc2GC19OutOfLineAllocExtraEmmi
.no_dead_strip __ZN4MMgc2GC14CollectionWorkEv
.no_dead_strip __ZN4MMgc2GC25SignalDependentAllocationEmNS_19DependentMemoryTypeE
.no_dead_strip __ZN4MMgc2GC11AllocRCRootEm
.no_dead_strip __ZN4MMgc2GC17pushAllocaSegmentEm
.no_dead_strip __ZN4MMgc2GC14allocaPushSlowEm
.no_dead_strip __ZN4MMgc2GC10allocaPushEmRNS0_13AllocaAutoPtrE
.no_dead_strip __ZN4MMgc2GC10allocaInitEv
.no_dead_strip __ZN4MMgc2GC12allocaUnwindEv
.no_dead_strip __ZN4MMgc2GC7CollectEd
.no_dead_strip __ZN4MMgc2GCD0Ev
.no_dead_strip __ZN4MMgc2GCD1Ev
.no_dead_strip __ZN4MMgc2GCD2Ev
.no_dead_strip __ZN4MMgc2GCC2EPNS_6GCHeapERNS_8GCConfigE
.no_dead_strip __ZN4MMgc2GCC1EPNS_6GCHeapERNS_8GCConfigE
.no_dead_strip __ZN4MMgc7PageMap11PageMapBaseC2Ev
.no_dead_strip __ZN4MMgc7PageMap11PageMapBaseC1Ev
.no_dead_strip __ZN4MMgc7PageMap7Tiered2C2Ev
.no_dead_strip __ZN4MMgc7PageMap7Tiered2C1Ev
.no_dead_strip __ZN4MMgc7PageMap7Tiered210ClearAddrsEPvj
.no_dead_strip __ZN4MMgc7PageMap7Tiered214EnsureCapacityEPNS_6GCHeapEPvj
.no_dead_strip __ZN4MMgc7PageMap18SimpleExpandSetAllINS0_7Tiered2EEEvPT_PNS_6GCHeapEPvjNS0_8PageTypeE
.no_dead_strip __ZN4MMgc7PageMap7Tiered212ExpandSetAllEPNS_6GCHeapEPvjNS0_8PageTypeE
.no_dead_strip __ZN4MMgc7PageMap7Tiered217DestroyPageMapViaEPNS_6GCHeapE
.no_dead_strip __ZN4MMgc8GCConfigC2Ev
.no_dead_strip __ZN4MMgc8GCConfigC1Ev
.no_dead_strip __ZN4MMgc15GCPolicyManager8shutdownEv
.no_dead_strip __ZN4MMgc15GCPolicyManager1WEv
.no_dead_strip __ZN4MMgc15GCPolicyManager1AEv
.no_dead_strip __ZN4MMgc15GCPolicyManager20queryLoadForHeapsizeEd
.no_dead_strip __ZN4MMgc15GCPolicyManager7adjustLEd
.no_dead_strip __ZN4MMgc15GCPolicyManager21adjustPolicyInitiallyEv
.no_dead_strip __ZN4MMgc15GCPolicyManagerC2EPNS_2GCEPNS_6GCHeapERNS_8GCConfigE
.no_dead_strip __ZN4MMgc15GCPolicyManagerC1EPNS_2GCEPNS_6GCHeapERNS_8GCConfigE
.no_dead_strip __ZN4MMgc15GCPolicyManager29adjustPolicyForNextMinorCycleEv
.no_dead_strip __ZN4MMgc15GCPolicyManager27incrementalMarkMillisecondsEv
.no_dead_strip __ZN4MMgc15GCPolicyManager25queryEndOfCollectionCycleEv
.no_dead_strip __ZN4MMgc15GCPolicyManager32setLowerLimitCollectionThresholdEj
.no_dead_strip __ZN4MMgc15GCPolicyManager15blocksOwnedByGCEv
.no_dead_strip __ZN4MMgc15GCPolicyManager11bytesMarkedEv
.no_dead_strip __ZN4MMgc15GCPolicyManager13objectsMarkedEv
.no_dead_strip __ZN4MMgc15GCPolicyManager14queryZCTBudgetEj
.no_dead_strip __ZN4MMgc15GCPolicyManager21signalBlockAllocationEm
.no_dead_strip __ZN4MMgc15GCPolicyManager23signalBlockDeallocationEm
.no_dead_strip __ZN4MMgc15GCPolicyManager25signalDependentAllocationEm
.no_dead_strip __ZN4MMgc15GCPolicyManager27signalDependentDeallocationEm
.no_dead_strip __ZN4MMgc15GCPolicyManager24signalMemoryStatusChangeENS_13_MemoryStatusES1_
.no_dead_strip __ZN4MMgc15GCPolicyManager21signalStartCollectionEPNS_2GCE
.no_dead_strip __ZN4MMgc15GCPolicyManager19signalEndCollectionEPNS_2GCE
.no_dead_strip __ZN4MMgc15GCPolicyManager19SignalImminentAbortEv
.no_dead_strip __ZN4MMgc15GCPolicyManager20queryExactPercentageEv
.no_dead_strip __ZN4MMgc15GCPolicyManager33queryAllocationBudgetFractionUsedEv
.no_dead_strip __ZN4MMgc15GCPolicyManager15startAdjustingREv
.no_dead_strip __ZN4MMgc15GCPolicyManager29adjustPolicyForNextMajorCycleEb
.no_dead_strip __ZN4MMgc15GCPolicyManager13endAdjustingREv
.no_dead_strip __ZN4MMgc15GCPolicyManager6signalENS0_11PolicyEventE
.no_dead_strip __ZN4MMgc6GCHeap12ResetStaticsEv
.no_dead_strip __ZN4MMgc6GCHeap18ValidateHeapBlocksEv
.no_dead_strip __ZNK4MMgc6GCHeap12AddrToRegionEPKv
.no_dead_strip __ZNK4MMgc6GCHeap15BaseAddrToBlockEPKv
.no_dead_strip __ZNK4MMgc6GCHeap19InteriorAddrToBlockEPKv
.no_dead_strip __ZN4MMgc6GCHeap5SplitEPNS0_9HeapBlockEm
.no_dead_strip __ZN4MMgc6GCHeap19BlocksAreContiguousEPvS1_
.no_dead_strip __ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockES2_
.no_dead_strip __ZN4MMgc6GCHeap13AddToFreeListEPNS0_9HeapBlockEb
.no_dead_strip __ZN4MMgc6GCHeap21PruneDecommittedBlockEPNS0_9HeapBlockEmm
.no_dead_strip __ZN4MMgc6GCHeap19AllocCommittedBlockEPNS0_9HeapBlockEmRbm
.no_dead_strip __ZN4MMgc6GCHeap9FreeBlockEPNS0_9HeapBlockE
.no_dead_strip __ZN4MMgc6GCHeap27CheckForNewMaxTotalHeapSizeEv
.no_dead_strip __ZN4MMgc6GCHeap17HardLimitExceededEm
.no_dead_strip __ZN4MMgc6GCHeap17SoftLimitExceededEm
.no_dead_strip __ZN4MMgc6GCHeap8FreeHookEPKvmi
.no_dead_strip __ZN4MMgc6GCHeap14PseudoFreeHookEPKvmi
.no_dead_strip __ZN4MMgc10EnterFrame16UnwindAllObjectsEv
.no_dead_strip __ZN4MMgc10EnterFrame20AddAbortUnwindObjectEPNS_17AbortUnwindObjectE
.no_dead_strip __ZN4MMgc10EnterFrame23RemoveAbortUnwindObjectEPNS_17AbortUnwindObjectE
.no_dead_strip __ZN4MMgc6GCHeap10FreeRegionEPNS0_6RegionE
.no_dead_strip __ZN4MMgc6GCHeap13EnterLockInitEv
.no_dead_strip __ZN4MMgc6GCHeap16EnterLockDestroyEv
.no_dead_strip __ZN4MMgc6GCHeap6RegionC2EPS0_PcS3_S3_m
.no_dead_strip __ZN4MMgc6GCHeap6RegionC1EPS0_PcS3_S3_m
.no_dead_strip __ZN4MMgc6GCHeap9NewRegionEPcS1_S1_m
.no_dead_strip __ZN4MMgc6GCHeap34FreeMemoryExceedsDecommitThresholdEv
.no_dead_strip __ZN4MMgc6GCHeap22QueryCanReturnToNormalEv
.no_dead_strip __ZN4MMgc9BasicListIPNS_2GCELi4EE6RemoveES2_
.no_dead_strip __ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE6RemoveES2_
.no_dead_strip __ZN4MMgc6GCHeap17RemoveOOMCallbackEPNS_11OOMCallbackE
.no_dead_strip __ZN4MMgc6GCHeap8SafeSizeEPKv
.no_dead_strip __ZN4MMgc6GCHeap15IsAddressInHeapEPv
.no_dead_strip __ZN4MMgc9GCManager7destroyEv
.no_dead_strip __ZN4MMgc6GCHeap8RemoveGCEPNS_2GCE
.no_dead_strip __ZN4MMgc6GCHeap14ShouldNotEnterEv
.no_dead_strip __ZN4MMgc17SuspendEnterFrameC1Ev
.no_dead_strip __ZN4MMgc17SuspendEnterFrameC2Ev
.no_dead_strip __ZN4MMgc9GCManager19signalEndCollectionEPNS_2GCE
.no_dead_strip __ZN4MMgc9GCManager21signalStartCollectionEPNS_2GCE
.no_dead_strip __ZN4MMgc6GCHeap13ReleaseMemoryEPcm
.no_dead_strip __ZN4MMgc6GCHeap7FreeAllEv
.no_dead_strip __ZN4MMgc6GCHeap7LogCharEcm
.no_dead_strip __ZN4MMgc6GCHeap14log_percentageEPKcmm
.no_dead_strip __ZN4MMgc6GCHeap11DumpHeapRepEv
.no_dead_strip __ZN4MMgc6GCHeap12RemoveRegionEPNS0_6RegionEb
.no_dead_strip __ZN4MMgc6GCHeap9LargeFreeEPKv
.no_dead_strip __ZN4MMgc6GCHeap12FreeInternalEPKvbb
.no_dead_strip __ZN4MMgc6GCHeap11RemoveBlockEPNS0_9HeapBlockEb
.no_dead_strip __ZN4MMgc6GCHeap15RemoveLostBlockEPNS0_9HeapBlockE
.no_dead_strip __ZN4MMgc6GCHeap14DumpMemoryInfoEv
.no_dead_strip __ZN4MMgc6GCHeap5EnterEPNS_10EnterFrameE
.no_dead_strip __ZN4MMgc10EnterFrameC2Ev
.no_dead_strip __ZN4MMgc10EnterFrameC1Ev
.no_dead_strip __ZN4MMgc6GCHeap19SignalImminentAbortEv
.no_dead_strip __ZN4MMgc6GCHeap5AbortEv
.no_dead_strip __ZN4MMgc6GCHeap27SignalInconsistentHeapStateEPKc
.no_dead_strip __ZN4MMgc6GCHeap20SignalObjectTooLargeEv
.no_dead_strip __ZN4MMgc9BasicListIPNS_11OOMCallbackELi4EE3AddES2_
.no_dead_strip __ZN4MMgc6GCHeap14AddOOMCallbackEPNS_11OOMCallbackE
.no_dead_strip __ZN4MMgc9BasicListIPNS_2GCELi4EE3AddES2_
.no_dead_strip __ZN4MMgc6GCHeap5AddGCEPNS_2GCE
.no_dead_strip __ZN4MMgc17SuspendEnterFrameD1Ev
.no_dead_strip __ZN4MMgc17SuspendEnterFrameD2Ev
.no_dead_strip __ZN4MMgc6GCHeap25CheckForHardLimitExceededEv
.no_dead_strip __ZN4MMgc6GCHeap12FinalizeHookEPKvm
.no_dead_strip __ZN4MMgc6GCHeap9AllocHookEPKvmmb
.no_dead_strip __ZN4MMgc6GCHeap18ExpandHeapInternalEm
.no_dead_strip __ZN4MMgc6GCHeap10ExpandHeapEm
.no_dead_strip __ZN4MMgc6GCHeap6CommitEPNS0_9HeapBlockE
.no_dead_strip __ZN4MMgc6GCHeap20CreateCommittedBlockEPNS0_9HeapBlockEmm
.no_dead_strip __ZN4MMgc6GCHeap10AllocBlockEmRbm
.no_dead_strip __ZN4MMgc6GCHeap16EnsureFreeRegionEb
.no_dead_strip __ZN4MMgc6GCHeap10LargeAllocEmm
.no_dead_strip __ZN4MMgc6GCHeap28CheckForStatusReturnToNormalEv
.no_dead_strip __ZN4MMgc6GCHeap18StatusChangeNotifyENS_13_MemoryStatusE
.no_dead_strip __ZN4MMgc6GCHeap26SignalExternalDeallocationEm
.no_dead_strip __ZN4MMgc6GCHeap8DecommitEv
.no_dead_strip __ZN4MMgc6GCHeap20SendFreeMemorySignalEm
.no_dead_strip __ZN4MMgc6GCHeap24SignalExternalFreeMemoryEm
.no_dead_strip __ZN4MMgc6GCHeap14SystemOOMEventEmi
.no_dead_strip __ZN4MMgc6GCHeap11AllocHelperEmbRbm
.no_dead_strip __ZN4MMgc6GCHeap25CheckForSoftLimitExceededEm
.no_dead_strip __ZN4MMgc6GCHeap28CheckForMemoryLimitsExceededEv
.no_dead_strip __ZN4MMgc6GCHeap24SignalExternalAllocationEm
.no_dead_strip __ZN4MMgc6GCHeap26SignalCodeMemoryAllocationEmb
.no_dead_strip __ZN4MMgc6GCHeap5AllocEmjm
.no_dead_strip __ZN4MMgc6GCHeap15DestroyInstanceEv
.no_dead_strip __ZN4MMgc6GCHeap5LeaveEv
.no_dead_strip __ZN4MMgc10EnterFrameD1Ev
.no_dead_strip __ZN4MMgc10EnterFrameD2Ev
.no_dead_strip __ZN4MMgc6GCHeap7DestroyEv
.no_dead_strip __ZN4MMgc6GCHeapC2ERKNS_12GCHeapConfigE
.no_dead_strip __ZN4MMgc6GCHeapC1ERKNS_12GCHeapConfigE
.no_dead_strip __ZN4MMgc6GCHeap4InitERKNS_12GCHeapConfigE
.no_dead_strip __ZN4MMgc12GCHeapConfig19IsGCOptionWithParamEPKc
.no_dead_strip __ZN4MMgc12GCHeapConfig19ParseAndApplyOptionEPKcRbS2_
.no_dead_strip _strtol
.no_dead_strip _sscanf
.no_dead_strip __ZN4MMgc12GCHeapConfigC2Ev
.no_dead_strip __ZN4MMgc12GCHeapConfigC1Ev
.no_dead_strip __ZN4MMgc10FixedAllocC2EjPNS_6GCHeapEb
.no_dead_strip __ZN4MMgc10FixedAllocC2Ev
.no_dead_strip __ZN4MMgc10FixedAllocC1Ev
.no_dead_strip __ZN4MMgc10FixedAlloc4InitEjPNS_6GCHeapE
.no_dead_strip __ZN4MMgc10FixedAllocC1EjPNS_6GCHeapEb
.no_dead_strip __ZN4MMgc10FixedAlloc12IsOnFreelistEPNS0_10FixedBlockEPv
.no_dead_strip __ZN4MMgc10FixedAlloc7IsInUseEPNS0_10FixedBlockEPv
.no_dead_strip __ZNK4MMgc10FixedAlloc12GetUsageInfoERmS1_
.no_dead_strip __ZN4MMgc10FixedAlloc15QueryOwnsObjectEPKv
.no_dead_strip __ZN4MMgc14FixedAllocSafeC2EiPNS_6GCHeapE
.no_dead_strip __ZN4MMgc14FixedAllocSafeC1EiPNS_6GCHeapE
.no_dead_strip __ZN4MMgc14FixedAllocSafeC2Ev
.no_dead_strip __ZN4MMgc14FixedAllocSafeC1Ev
.no_dead_strip __ZN4MMgc10FixedAlloc13FindBeginningEPKv
.no_dead_strip __ZN4MMgc13FastAllocatordaEPv
.no_dead_strip __ZN4MMgc13FastAllocatornaEm
.no_dead_strip __ZN4MMgc10FixedAlloc9FreeChunkEPNS0_10FixedBlockE
.no_dead_strip __ZN4MMgc10FixedAlloc7DestroyEv
.no_dead_strip __ZN4MMgc14FixedAllocSafe7DestroyEv
.no_dead_strip __ZN4MMgc10FixedAllocD1Ev
.no_dead_strip __ZN4MMgc10FixedAllocD2Ev
.no_dead_strip __ZN4MMgc14FixedAllocSafeD1Ev
.no_dead_strip __ZN4MMgc14FixedAllocSafeD2Ev
.no_dead_strip __ZN4MMgc10FixedAlloc11CreateChunkEb
.no_dead_strip __ZN4MMgc10FixedAlloc4FreeEPv
.no_dead_strip __ZN4MMgc10FixedAlloc5AllocEmNS_15FixedMallocOptsE
.no_dead_strip __ZN4MMgc11FixedMalloc23FindBeginningRootsCache4InitEv
.no_dead_strip __ZN4MMgc11FixedMalloc23FindBeginningRootsCache7DestroyEv
.no_dead_strip __ZN4MMgc11FixedMalloc12GetTotalSizeEv
.no_dead_strip __ZN4MMgc11FixedMalloc9LargeSizeEPKv
.no_dead_strip __ZN4MMgc11FixedMalloc20FindBeginningAndSizeEPKvRS2_Rm
.no_dead_strip __ZN4MMgc11FixedMalloc13FindBeginningEPKv
.no_dead_strip __ZN4MMgc11FixedMalloc9LargeFreeEPv
.no_dead_strip __ZN4MMgc11FixedMalloc10LargeAllocEmNS_15FixedMallocOptsE
.no_dead_strip __ZN4MMgc11FixedMalloc6CallocEmmNS_15FixedMallocOptsE
.no_dead_strip __ZN4MMgc11FixedMalloc14OutOfLineAllocEmNS_15FixedMallocOptsE
.no_dead_strip __ZN4MMgc11FixedMalloc12GetUsageInfoERmS1_
.no_dead_strip __ZN4MMgc11FixedMalloc13OutOfLineFreeEPv
.no_dead_strip __ZN4MMgc11FixedMalloc15DestroyInstanceEv
.no_dead_strip __ZN4MMgc11FixedMalloc12InitInstanceEPNS_6GCHeapE
.no_dead_strip __ZN4MMgc28GCHashtableAllocHandler_VMPI5allocEmb
.no_dead_strip __ZN4MMgc27GCHashtableAllocHandler_new4freeEPv
.no_dead_strip __ZN4MMgc27GCHashtableAllocHandler_new5allocEmb
.no_dead_strip __ZN4MMgc28GCHashtableAllocHandler_VMPI4freeEPv
.no_dead_strip __ZN4MMgc13GCAllocObjectnwEm
.no_dead_strip __ZN4MMgc13GCAllocObjectdaEPv
.no_dead_strip __ZN4MMgc13GCAllocObjectdlEPv
.no_dead_strip __ZN4MMgc13GCAllocObjectnaEm
.no_dead_strip __ZN4MMgc13GCDebugIndentEm
.no_dead_strip __ZN4MMgc20PrintAllocStackTraceEPKv
.no_dead_strip __ZN4MMgc21PrintDeleteStackTraceEPKv
.no_dead_strip __ZN4MMgc17GetAllocationNameEPKv
.no_dead_strip __ZN4MMgc5GCLogEPKcz
.no_dead_strip __ZN4MMgc9SystemNewEmNS_15FixedMallocOptsE
.no_dead_strip __ZN4MMgc12SystemDeleteEPv
.no_dead_strip __ZN4MMgc10DeleteCallEPv
.no_dead_strip __ZN4MMgc9AllocCallEmNS_15FixedMallocOptsE
.no_dead_strip __Z30AVMPI_isMemoryProfilingEnabledv
.no_dead_strip __Z30AVMPI_makeCodeMemoryExecutablePvmb
.no_dead_strip _mprotect
.no_dead_strip __Z20AVMPI_freeCodeMemoryPvm
.no_dead_strip __Z24AVMPI_allocateCodeMemorym
.no_dead_strip __Z31AVMPI_canMergeContiguousRegionsv
.no_dead_strip __Z37AVMPI_canCommitAlreadyCommittedMemoryv
.no_dead_strip __Z22AVMPI_areNewPagesDirtyv
.no_dead_strip __Z24AVMPI_getThreadStackBasev
.no_dead_strip _pthread_get_stackaddr_np
.no_dead_strip __Z16AVMPI_cleanStackm
.no_dead_strip __Z33AVMPI_getPrivateResidentPageCountv
.no_dead_strip _vm_region_64
.no_dead_strip __Z26AVMPI_releaseAlignedMemoryPv
.no_dead_strip __Z27AVMPI_allocateAlignedMemorym
.no_dead_strip _valloc
.no_dead_strip __Z20AVMPI_decommitMemoryPcm
.no_dead_strip _vm_deallocate
.no_dead_strip _vm_map
.no_dead_strip __Z18AVMPI_commitMemoryPvm
.no_dead_strip __Z22AVMPI_useVirtualMemoryv
.no_dead_strip __Z25AVMPI_releaseMemoryRegionPvm
.no_dead_strip __Z25AVMPI_reserveMemoryRegionPvm
.no_dead_strip __Z14VMPI_tlsCreatePm
.no_dead_strip __Z29VMPI_threadAttrSetPriorityLowP22_opaque_pthread_attr_t
.no_dead_strip __Z32VMPI_threadAttrSetPriorityNormalP22_opaque_pthread_attr_t
.no_dead_strip __Z30VMPI_threadAttrSetPriorityHighP22_opaque_pthread_attr_t
.no_dead_strip __Z19VMPI_threadAttrInitP22_opaque_pthread_attr_t
.no_dead_strip __Z31VMPI_threadAttrDefaultStackSizev
.no_dead_strip _pthread_attr_getstacksize
.no_dead_strip __Z31VMPI_threadAttrDefaultGuardSizev
.no_dead_strip _pthread_attr_getguardsize
.no_dead_strip __Z27VMPI_threadAttrSetStackSizeP22_opaque_pthread_attr_tm
.no_dead_strip _pthread_attr_setstacksize
.no_dead_strip __Z27VMPI_threadAttrSetGuardSizeP22_opaque_pthread_attr_tm
.no_dead_strip _pthread_attr_setguardsize
.no_dead_strip __Z22VMPI_threadAttrDestroyP22_opaque_pthread_attr_t
.no_dead_strip __Z18VMPI_condVarSignalP22_opaque_pthread_cond_t
.no_dead_strip _pthread_cond_signal
.no_dead_strip __Z21VMPI_condVarBroadcastP22_opaque_pthread_cond_t
.no_dead_strip _pthread_cond_broadcast
.no_dead_strip __Z21VMPI_condVarTimedWaitP22_opaque_pthread_cond_tP23_opaque_pthread_mutex_ti
.no_dead_strip _pthread_cond_timedwait_relative_np
.no_dead_strip __Z16VMPI_condVarWaitP22_opaque_pthread_cond_tP23_opaque_pthread_mutex_t
.no_dead_strip _pthread_cond_wait
.no_dead_strip __Z15VMPI_threadJoinP17_opaque_pthread_t
.no_dead_strip __Z16VMPI_threadSleepi
.no_dead_strip __Z17VMPI_threadDetachP17_opaque_pthread_t
.no_dead_strip _pthread_detach
.no_dead_strip __Z17VMPI_threadCreatePP17_opaque_pthread_tP22_opaque_pthread_attr_tPFPvS4_ES4_
.no_dead_strip __Z15VMPI_tlsDestroym
.no_dead_strip _pthread_key_delete
.no_dead_strip _pthread_key_create
.no_dead_strip _llvm.setjmp
.no_dead_strip _llvm.longjmp
.no_dead_strip _llvm.stacksave
.no_dead_strip _llvm.stackrestore


	.section	__DATA,__nl_symbol_ptr,non_lazy_symbol_pointers
	.align	2
L_.str10482977$non_lazy_ptr:
.indirect_symbol _.str10482977
	.long	0
L_.str112959$non_lazy_ptr:
.indirect_symbol _.str112959
	.long	0
L_.str11492978$non_lazy_ptr:
.indirect_symbol _.str11492978
	.long	0
L_.str122960$non_lazy_ptr:
.indirect_symbol _.str122960
	.long	0
L_.str12502979$non_lazy_ptr:
.indirect_symbol _.str12502979
	.long	0
L_.str132961$non_lazy_ptr:
.indirect_symbol _.str132961
	.long	0
L_.str13512980$non_lazy_ptr:
.indirect_symbol _.str13512980
	.long	0
L_.str1392968$non_lazy_ptr:
.indirect_symbol _.str1392968
	.long	0
L_.str142949$non_lazy_ptr:
.indirect_symbol _.str142949
	.long	0
L_.str1452$non_lazy_ptr:
.indirect_symbol _.str1452
	.long	0
L_.str152963$non_lazy_ptr:
.indirect_symbol _.str152963
	.long	0
L_.str15532981$non_lazy_ptr:
.indirect_symbol _.str15532981
	.long	0
L_.str162964$non_lazy_ptr:
.indirect_symbol _.str162964
	.long	0
L_.str1654$non_lazy_ptr:
.indirect_symbol _.str1654
	.long	0
L_.str172965$non_lazy_ptr:
.indirect_symbol _.str172965
	.long	0
L_.str1755$non_lazy_ptr:
.indirect_symbol _.str1755
	.long	0
L_.str1881$non_lazy_ptr:
.indirect_symbol _.str1881
	.long	0
L_.str192983$non_lazy_ptr:
.indirect_symbol _.str192983
	.long	0
L_.str202984$non_lazy_ptr:
.indirect_symbol _.str202984
	.long	0
L_.str212985$non_lazy_ptr:
.indirect_symbol _.str212985
	.long	0
L_.str222986$non_lazy_ptr:
.indirect_symbol _.str222986
	.long	0
L_.str232987$non_lazy_ptr:
.indirect_symbol _.str232987
	.long	0
L_.str2402969$non_lazy_ptr:
.indirect_symbol _.str2402969
	.long	0
L_.str242988$non_lazy_ptr:
.indirect_symbol _.str242988
	.long	0
L_.str2556$non_lazy_ptr:
.indirect_symbol _.str2556
	.long	0
L_.str262989$non_lazy_ptr:
.indirect_symbol _.str262989
	.long	0
L_.str272990$non_lazy_ptr:
.indirect_symbol _.str272990
	.long	0
L_.str282991$non_lazy_ptr:
.indirect_symbol _.str282991
	.long	0
L_.str287$non_lazy_ptr:
.indirect_symbol _.str287
	.long	0
L_.str302993$non_lazy_ptr:
.indirect_symbol _.str302993
	.long	0
L_.str31044$non_lazy_ptr:
.indirect_symbol _.str31044
	.long	0
L_.str322995$non_lazy_ptr:
.indirect_symbol _.str322995
	.long	0
L_.str32948$non_lazy_ptr:
.indirect_symbol _.str32948
	.long	0
L_.str332996$non_lazy_ptr:
.indirect_symbol _.str332996
	.long	0
L_.str3412970$non_lazy_ptr:
.indirect_symbol _.str3412970
	.long	0
L_.str342997$non_lazy_ptr:
.indirect_symbol _.str342997
	.long	0
L_.str352998$non_lazy_ptr:
.indirect_symbol _.str352998
	.long	0
L_.str362951$non_lazy_ptr:
.indirect_symbol _.str362951
	.long	0
L_.str3657$non_lazy_ptr:
.indirect_symbol _.str3657
	.long	0
L_.str372999$non_lazy_ptr:
.indirect_symbol _.str372999
	.long	0
L_.str382967$non_lazy_ptr:
.indirect_symbol _.str382967
	.long	0
L_.str3858$non_lazy_ptr:
.indirect_symbol _.str3858
	.long	0
L_.str393000$non_lazy_ptr:
.indirect_symbol _.str393000
	.long	0
L_.str403001$non_lazy_ptr:
.indirect_symbol _.str403001
	.long	0
L_.str41045$non_lazy_ptr:
.indirect_symbol _.str41045
	.long	0
L_.str413002$non_lazy_ptr:
.indirect_symbol _.str413002
	.long	0
L_.str423003$non_lazy_ptr:
.indirect_symbol _.str423003
	.long	0
L_.str42952$non_lazy_ptr:
.indirect_symbol _.str42952
	.long	0
L_.str433004$non_lazy_ptr:
.indirect_symbol _.str433004
	.long	0
L_.str4422971$non_lazy_ptr:
.indirect_symbol _.str4422971
	.long	0
L_.str443005$non_lazy_ptr:
.indirect_symbol _.str443005
	.long	0
L_.str52953$non_lazy_ptr:
.indirect_symbol _.str52953
	.long	0
L_.str5432972$non_lazy_ptr:
.indirect_symbol _.str5432972
	.long	0
L_.str62954$non_lazy_ptr:
.indirect_symbol _.str62954
	.long	0
L_.str72955$non_lazy_ptr:
.indirect_symbol _.str72955
	.long	0
L_.str7452974$non_lazy_ptr:
.indirect_symbol _.str7452974
	.long	0
L_.str798$non_lazy_ptr:
.indirect_symbol _.str798
	.long	0
L_.str82956$non_lazy_ptr:
.indirect_symbol _.str82956
	.long	0
L_.str8332237$non_lazy_ptr:
.indirect_symbol _.str8332237
	.long	0
L_.str8462975$non_lazy_ptr:
.indirect_symbol _.str8462975
	.long	0
L_.str92957$non_lazy_ptr:
.indirect_symbol _.str92957
	.long	0
L_.str9472976$non_lazy_ptr:
.indirect_symbol _.str9472976
	.long	0
L_.str953010$non_lazy_ptr:
.indirect_symbol _.str953010
	.long	0
L__ZL8pagesize$non_lazy_ptr:
.indirect_symbol __ZL8pagesize
	.long	0
L__ZN4MMgc11FixedMalloc12kSizeClassesE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc11FixedMalloc12kSizeClassesE
	.long	0
L__ZN4MMgc11FixedMalloc15kSizeClassIndexE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc11FixedMalloc15kSizeClassIndexE
	.long	0
L__ZN4MMgc11FixedMalloc8instanceE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc11FixedMalloc8instanceE
	.long	0
L__ZN4MMgc15GCHashtableBaseIPKvNS_21GCHashtableKeyHandlerENS_27GCHashtableAllocHandler_newEE5EMPTYE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc15GCHashtableBaseIPKvNS_21GCHashtableKeyHandlerENS_27GCHashtableAllocHandler_newEE5EMPTYE
	.long	0
L__ZN4MMgc2GC12kSizeClassesE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc2GC12kSizeClassesE
	.long	0
L__ZN4MMgc2GC15kSizeClassIndexE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc2GC15kSizeClassIndexE
	.long	0
L__ZN4MMgc6GCHeap11leakedBytesE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc6GCHeap11leakedBytesE
	.long	0
L__ZN4MMgc6GCHeap17instanceEnterLockE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc6GCHeap17instanceEnterLockE
	.long	0
L__ZN4MMgc6GCHeap28instanceEnterLockInitializedE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc6GCHeap28instanceEnterLockInitializedE
	.long	0
L__ZN4MMgc6GCHeap8instanceE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc6GCHeap8instanceE
	.long	0
L__ZN4MMgc9heapSpaceE$non_lazy_ptr:
.indirect_symbol __ZN4MMgc9heapSpaceE
	.long	0
L__ZTVN4MMgc10GCCallbackE$non_lazy_ptr:
.indirect_symbol __ZTVN4MMgc10GCCallbackE
	.long	0
L__ZTVN4MMgc11GCAutoEnterE$non_lazy_ptr:
.indirect_symbol __ZTVN4MMgc11GCAutoEnterE
	.long	0
L__ZTVN4MMgc11StackMemoryE$non_lazy_ptr:
.indirect_symbol __ZTVN4MMgc11StackMemoryE
	.long	0
L__ZTVN4MMgc12GCLargeAllocE$non_lazy_ptr:
.indirect_symbol __ZTVN4MMgc12GCLargeAllocE
	.long	0
L__ZTVN4MMgc12GCObjectLockE$non_lazy_ptr:
.indirect_symbol __ZTVN4MMgc12GCObjectLockE
	.long	0
L__ZTVN4MMgc2GC13RCRootSegmentE$non_lazy_ptr:
.indirect_symbol __ZTVN4MMgc2GC13RCRootSegmentE
	.long	0
L__ZTVN4MMgc2GC17AutoRCRootSegmentE$non_lazy_ptr:
.indirect_symbol __ZTVN4MMgc2GC17AutoRCRootSegmentE
	.long	0
L__ZTVN4MMgc2GCE$non_lazy_ptr:
.indirect_symbol __ZTVN4MMgc2GCE
	.long	0
L__ZTVN4MMgc6GCRootE$non_lazy_ptr:
.indirect_symbol __ZTVN4MMgc6GCRootE
	.long	0
L__ZZ28VMPI_getPerformanceFrequencyvE4info$non_lazy_ptr:
.indirect_symbol __ZZ28VMPI_getPerformanceFrequencyvE4info
	.long	0
L__ZZ28VMPI_getPerformanceFrequencyvE9frequency$non_lazy_ptr:
.indirect_symbol __ZZ28VMPI_getPerformanceFrequencyvE9frequency
	.long	0
L__ZZN4MMgc2GC5gclogEPKczE10g_in_gclog.b$non_lazy_ptr:
.indirect_symbol __ZZN4MMgc2GC5gclogEPKczE10g_in_gclog.b
	.long	0
L_logFunc$non_lazy_ptr:
.indirect_symbol _logFunc
	.long	0
L_mach_task_self_$non_lazy_ptr:
.indirect_symbol _mach_task_self_
	.long	0

.subsections_via_symbols
