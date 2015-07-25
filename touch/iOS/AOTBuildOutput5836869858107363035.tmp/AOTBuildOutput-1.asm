	.syntax unified
	.section	__TEXT,__text,regular,pure_instructions
	.globl	__ZN7avmplus8NativeID48flash_media_Microphone_enhancedOptions_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID48flash_media_Microphone_enhancedOptions_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin1:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus16MicrophoneObject19get_enhancedOptionsEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end1:

	.globl	__ZN7avmplus8NativeID48flash_media_Microphone_enhancedOptions_set_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID48flash_media_Microphone_enhancedOptions_set_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin2:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #28
	mov	r4, #4
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+16]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r1, [sp, #+4]
	bl	__ZN7avmplus16MicrophoneObject19set_enhancedOptionsEPNS_31MicrophoneEnhancedOptionsObjectE
	str	r4, [sp, #+8]
	str	r4, [sp, #+12]
	ldr	r0, [sp, #+12]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end2:

	.globl	__ZN7avmplus8NativeID38flash_system_MessageChannel_send_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID38flash_system_MessageChannel_send_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin3:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #36
	str	r0, [sp, #+32]
	str	r1, [sp, #+28]
	str	r2, [sp, #+24]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+28]
	cmp	r0, #2
	blo	LBB3_2
	ldr	r0, [sp, #+24]
	ldr	r0, [r0, #+8]
	str	r0, [sp, #+12]
	b	LBB3_3
LBB3_2:
	mvn	r0, #0
	str	r0, [sp, #+12]
LBB3_3:
	mov	r4, #4
	ldr	r0, [sp, #+12]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+24]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r1, [sp, #+8]
	ldr	r2, [sp, #+4]
	bl	__ZN7avmplus20MessageChannelObject4sendEii
	str	r4, [sp, #+16]
	str	r4, [sp, #+20]
	ldr	r0, [sp, #+20]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end3:

	.globl	__ZN7avmplus8NativeID54flash_system_MessageChannel_messageAvailable_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID54flash_system_MessageChannel_messageAvailable_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin4:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus20MessageChannelObject20get_messageAvailableEv
	strb	r0, [sp, #+3]
	ldrb	r0, [sp, #+3]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end4:

	.globl	__ZN7avmplus8NativeID41flash_system_MessageChannel_receive_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID41flash_system_MessageChannel_receive_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin5:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #36
	str	r0, [sp, #+32]
	str	r1, [sp, #+28]
	str	r2, [sp, #+24]
	ldr	r0, [sp, #+28]
	cmp	r0, #0
	beq	LBB5_3
	ldr	r0, [sp, #+24]
	ldr	r0, [r0, #+4]
	cmp	r0, #0
	beq	LBB5_3
	mov	r0, #1
	strb	r0, [sp, #+15]
	b	LBB5_4
LBB5_3:
	mov	r0, #0
	strb	r0, [sp, #+15]
LBB5_4:
	mov	r1, #0
	ldrb	r0, [sp, #+15]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+24]
	ldr	r0, [r0]
	str	r0, [sp, #+4]
	ldr	r2, [sp, #+8]
	cmp	r2, #0
	movne	r1, #1
	bl	__ZN7avmplus20MessageChannelObject7receiveEb
	str	r0, [sp]
	str	r0, [sp, #+16]
	str	r0, [sp, #+20]
	ldr	r0, [sp, #+20]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end5:

	.globl	__ZN7avmplus8NativeID39flash_system_MessageChannel_close_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID39flash_system_MessageChannel_close_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin6:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #24
	mov	r4, #4
	str	r0, [sp, #+20]
	str	r1, [sp, #+16]
	str	r2, [sp, #+12]
	ldr	r0, [r2]
	str	r0, [sp]
	bl	__ZN7avmplus20MessageChannelObject5closeEv
	str	r4, [sp, #+4]
	str	r4, [sp, #+8]
	ldr	r0, [sp, #+8]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end6:

	.globl	__ZN7avmplus8NativeID43flash_system_MessageChannel_state_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID43flash_system_MessageChannel_state_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin7:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus20MessageChannelObject9get_stateEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end7:

	.globl	__ZN7avmplus8NativeID69flash_system_MessageChannel_private_internalRemoveEventListener_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID69flash_system_MessageChannel_private_internalRemoveEventListener_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin8:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #40
	str	r0, [sp, #+36]
	str	r1, [sp, #+32]
	str	r2, [sp, #+28]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+28]
	ldr	r0, [r0, #+8]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+32]
	cmp	r0, #3
	blo	LBB8_3
	ldr	r0, [sp, #+28]
	ldr	r0, [r0, #+12]
	cmp	r0, #0
	beq	LBB8_3
	mov	r0, #1
	strb	r0, [sp, #+19]
	b	LBB8_4
LBB8_3:
	mov	r0, #0
	strb	r0, [sp, #+19]
LBB8_4:
	mov	r4, #4
	mov	r3, #0
	ldrb	r0, [sp, #+19]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+28]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r1, [sp, #+4]
	cmp	r1, #0
	movne	r3, #1
	ldr	r2, [sp, #+8]
	ldr	r1, [sp, #+12]
	bl	__ZN7avmplus20MessageChannelObject27internalRemoveEventListenerEPNS_6StringEPNS_12ScriptObjectEb
	str	r4, [sp, #+20]
	str	r4, [sp, #+24]
	ldr	r0, [sp, #+24]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end8:

	.globl	__ZN7avmplus8NativeID66flash_system_MessageChannel_private_internalAddEventListener_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID66flash_system_MessageChannel_private_internalAddEventListener_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin9:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #64
	str	r0, [sp, #+60]
	str	r1, [sp, #+56]
	str	r2, [sp, #+52]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+28]
	ldr	r0, [sp, #+52]
	ldr	r0, [r0, #+8]
	str	r0, [sp, #+24]
	ldr	r0, [sp, #+56]
	cmp	r0, #3
	blo	LBB9_3
	ldr	r0, [sp, #+52]
	ldr	r0, [r0, #+12]
	cmp	r0, #0
	beq	LBB9_3
	mov	r0, #1
	strb	r0, [sp, #+35]
	b	LBB9_4
LBB9_3:
	mov	r0, #0
	strb	r0, [sp, #+35]
LBB9_4:
	ldrb	r0, [sp, #+35]
	str	r0, [sp, #+20]
	ldr	r0, [sp, #+56]
	cmp	r0, #4
	blo	LBB9_6
	ldr	r0, [sp, #+52]
	ldr	r0, [r0, #+16]
	str	r0, [sp, #+36]
	b	LBB9_7
LBB9_6:
	mov	r0, #0
	str	r0, [sp, #+36]
LBB9_7:
	ldr	r0, [sp, #+36]
	str	r0, [sp, #+16]
	ldr	r0, [sp, #+56]
	cmp	r0, #5
	blo	LBB9_10
	ldr	r0, [sp, #+52]
	ldr	r0, [r0, #+20]
	cmp	r0, #0
	beq	LBB9_10
	mov	r0, #1
	strb	r0, [sp, #+43]
	b	LBB9_11
LBB9_10:
	mov	r0, #0
	strb	r0, [sp, #+43]
LBB9_11:
	mov	r4, #4
	mov	r9, #0
	ldrb	r0, [sp, #+43]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+52]
	ldr	r0, [r0]
	str	r0, [sp, #+8]
	ldr	r1, [sp, #+20]
	cmp	r1, #0
	mov	r3, #0
	movne	r3, #1
	ldr	r2, [sp, #+24]
	ldr	r12, [sp, #+12]
	ldr	r1, [sp, #+28]
	ldr	lr, [sp, #+16]
	str	lr, [sp]
	cmp	r12, #0
	movne	r9, #1
	str	r9, [sp, #+4]
	bl	__ZN7avmplus20MessageChannelObject24internalAddEventListenerEPNS_6StringEPNS_12ScriptObjectEbib
	str	r4, [sp, #+44]
	str	r4, [sp, #+48]
	ldr	r0, [sp, #+48]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end9:

	.globl	__ZN7avmplus8NativeID43flash_display_FrameLabel_private_ctor_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID43flash_display_FrameLabel_private_ctor_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin10:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #32
	mov	r4, #4
	str	r0, [sp, #+28]
	str	r1, [sp, #+24]
	str	r2, [sp, #+20]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+20]
	ldr	r0, [r0, #+8]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+20]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r1, [sp, #+8]
	ldr	r2, [sp, #+4]
	bl	__ZN7avmplus16FrameLabelObject4ctorEPNS_6StringEi
	str	r4, [sp, #+12]
	str	r4, [sp, #+16]
	ldr	r0, [sp, #+16]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end10:

	.globl	__ZN7avmplus8NativeID43flash_net_NetConnection_connected_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID43flash_net_NetConnection_connected_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin11:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject13get_connectedEv
	strb	r0, [sp, #+3]
	ldrb	r0, [sp, #+3]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end11:

	.globl	__ZN7avmplus8NativeID37flash_net_NetConnection_uri_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID37flash_net_NetConnection_uri_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin12:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject7get_uriEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end12:

	.globl	__ZN7avmplus8NativeID37flash_net_NetConnection_connect_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID37flash_net_NetConnection_connect_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin13:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #40
	mov	r3, #2
	str	r0, [sp, #+36]
	str	r1, [sp, #+32]
	str	r2, [sp, #+28]
	str	r3, [sp, #+8]
	ldr	r0, [sp, #+28]
	ldr	r0, [r0, #+4]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+28]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r0, [sp, #+32]
	cmp	r0, #2
	blo	LBB13_2
	ldr	r0, [sp, #+28]
	add	r0, r0, #8
	str	r0, [sp, #+12]
	b	LBB13_3
LBB13_2:
	mov	r0, #0
	str	r0, [sp, #+12]
LBB13_3:
	ldr	r0, [sp, #+32]
	cmp	r0, #2
	blo	LBB13_5
	ldr	r0, [sp, #+32]
	sub	r0, r0, #1
	str	r0, [sp, #+16]
	b	LBB13_6
LBB13_5:
	mov	r0, #0
	str	r0, [sp, #+16]
LBB13_6:
	mov	r4, #4
	ldr	r0, [sp]
	ldr	r1, [sp, #+4]
	ldr	r2, [sp, #+12]
	ldr	r3, [sp, #+16]
	bl	__ZN7avmplus19NetConnectionObject7connectEPNS_6StringEPii
	str	r4, [sp, #+20]
	str	r4, [sp, #+24]
	ldr	r0, [sp, #+24]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end13:

	.globl	__ZN7avmplus8NativeID40flash_net_NetConnection_client_set_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID40flash_net_NetConnection_client_set_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin14:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #28
	mov	r4, #4
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+16]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r1, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject10set_clientEi
	str	r4, [sp, #+8]
	str	r4, [sp, #+12]
	ldr	r0, [sp, #+12]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end14:

	.globl	__ZN7avmplus8NativeID48flash_net_NetConnection_objectEncoding_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID48flash_net_NetConnection_objectEncoding_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin15:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject18get_objectEncodingEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end15:

	.globl	__ZN7avmplus8NativeID48flash_net_NetConnection_objectEncoding_set_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID48flash_net_NetConnection_objectEncoding_set_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin16:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #28
	mov	r4, #4
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+16]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r1, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject18set_objectEncodingEj
	str	r4, [sp, #+8]
	str	r4, [sp, #+12]
	ldr	r0, [sp, #+12]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end16:

	.globl	__ZN7avmplus8NativeID43flash_net_NetConnection_proxyType_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID43flash_net_NetConnection_proxyType_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin17:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject13get_proxyTypeEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end17:

	.globl	__ZN7avmplus8NativeID43flash_net_NetConnection_proxyType_set_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID43flash_net_NetConnection_proxyType_set_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin18:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #28
	mov	r4, #4
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+16]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r1, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject13set_proxyTypeEPNS_6StringE
	str	r4, [sp, #+8]
	str	r4, [sp, #+12]
	ldr	r0, [sp, #+12]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end18:

	.globl	__ZN7avmplus8NativeID52flash_net_NetConnection_connectedProxyType_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID52flash_net_NetConnection_connectedProxyType_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin19:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject22get_connectedProxyTypeEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end19:

	.globl	__ZN7avmplus8NativeID42flash_net_NetConnection_usingTLS_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID42flash_net_NetConnection_usingTLS_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin20:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject12get_usingTLSEv
	strb	r0, [sp, #+3]
	ldrb	r0, [sp, #+3]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end20:

	.globl	__ZN7avmplus8NativeID42flash_net_NetConnection_protocol_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID42flash_net_NetConnection_protocol_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin21:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject12get_protocolEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end21:

	.globl	__ZN7avmplus8NativeID52flash_net_NetConnection_maxPeerConnections_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID52flash_net_NetConnection_maxPeerConnections_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin22:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject22get_maxPeerConnectionsEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end22:

	.globl	__ZN7avmplus8NativeID52flash_net_NetConnection_maxPeerConnections_set_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID52flash_net_NetConnection_maxPeerConnections_set_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin23:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #28
	mov	r4, #4
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+16]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r1, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject22set_maxPeerConnectionsEj
	str	r4, [sp, #+8]
	str	r4, [sp, #+12]
	ldr	r0, [sp, #+12]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end23:

	.globl	__ZN7avmplus8NativeID40flash_net_NetConnection_nearID_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID40flash_net_NetConnection_nearID_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin24:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject10get_nearIDEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end24:

	.globl	__ZN7avmplus8NativeID39flash_net_NetConnection_farID_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID39flash_net_NetConnection_farID_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin25:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject9get_farIDEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end25:

	.globl	__ZN7avmplus8NativeID43flash_net_NetConnection_nearNonce_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID43flash_net_NetConnection_nearNonce_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin26:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject13get_nearNonceEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end26:

	.globl	__ZN7avmplus8NativeID42flash_net_NetConnection_farNonce_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID42flash_net_NetConnection_farNonce_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin27:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject12get_farNonceEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end27:

	.globl	__ZN7avmplus8NativeID56flash_net_NetConnection_unconnectedPeerStreams_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID56flash_net_NetConnection_unconnectedPeerStreams_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin28:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus19NetConnectionObject26get_unconnectedPeerStreamsEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end28:

	.globl	__ZN7avmplus8NativeID43flash_net_SharedObject_private_invoke_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID43flash_net_SharedObject_private_invoke_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin29:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #44
	mov	r3, #2
	str	r0, [sp, #+40]
	str	r1, [sp, #+36]
	str	r2, [sp, #+32]
	str	r3, [sp, #+12]
	ldr	r0, [sp, #+32]
	ldr	r0, [r0, #+4]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+32]
	ldr	r0, [r0]
	str	r0, [sp, #+4]
	ldr	r1, [sp, #+8]
	ldr	r2, [sp, #+36]
	cmp	r2, #2
	blo	LBB29_2
	ldr	r2, [sp, #+32]
	add	r2, r2, #8
	str	r2, [sp, #+16]
	b	LBB29_3
LBB29_2:
	mov	r2, #0
	str	r2, [sp, #+16]
LBB29_3:
	ldr	r2, [sp, #+36]
	cmp	r2, #2
	blo	LBB29_5
	ldr	r2, [sp, #+36]
	sub	r2, r2, #1
	str	r2, [sp, #+20]
	b	LBB29_6
LBB29_5:
	mov	r2, #0
	str	r2, [sp, #+20]
LBB29_6:
	ldr	r2, [sp, #+16]
	ldr	r3, [sp, #+20]
	bl	__ZN7avmplus15AvmBridgeObject6invokeEiPii
	str	r0, [sp]
	str	r0, [sp, #+24]
	str	r0, [sp, #+28]
	ldr	r0, [sp, #+28]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end29:

	.globl	__ZN7avmplus8NativeID40flash_net_NetStream_private_invoke_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID40flash_net_NetStream_private_invoke_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin30:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #44
	mov	r3, #2
	str	r0, [sp, #+40]
	str	r1, [sp, #+36]
	str	r2, [sp, #+32]
	str	r3, [sp, #+12]
	ldr	r0, [sp, #+32]
	ldr	r0, [r0, #+4]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+32]
	ldr	r0, [r0]
	str	r0, [sp, #+4]
	ldr	r1, [sp, #+8]
	ldr	r2, [sp, #+36]
	cmp	r2, #2
	blo	LBB30_2
	ldr	r2, [sp, #+32]
	add	r2, r2, #8
	str	r2, [sp, #+16]
	b	LBB30_3
LBB30_2:
	mov	r2, #0
	str	r2, [sp, #+16]
LBB30_3:
	ldr	r2, [sp, #+36]
	cmp	r2, #2
	blo	LBB30_5
	ldr	r2, [sp, #+36]
	sub	r2, r2, #1
	str	r2, [sp, #+20]
	b	LBB30_6
LBB30_5:
	mov	r2, #0
	str	r2, [sp, #+20]
LBB30_6:
	ldr	r2, [sp, #+16]
	ldr	r3, [sp, #+20]
	bl	__ZN7avmplus15AvmBridgeObject6invokeEiPii
	str	r0, [sp]
	str	r0, [sp, #+24]
	str	r0, [sp, #+28]
	ldr	r0, [sp, #+28]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end30:

	.globl	__ZN7avmplus8NativeID39flash_net_NetGroup_private_invoke_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID39flash_net_NetGroup_private_invoke_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin31:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #44
	mov	r3, #2
	str	r0, [sp, #+40]
	str	r1, [sp, #+36]
	str	r2, [sp, #+32]
	str	r3, [sp, #+12]
	ldr	r0, [sp, #+32]
	ldr	r0, [r0, #+4]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+32]
	ldr	r0, [r0]
	str	r0, [sp, #+4]
	ldr	r1, [sp, #+8]
	ldr	r2, [sp, #+36]
	cmp	r2, #2
	blo	LBB31_2
	ldr	r2, [sp, #+32]
	add	r2, r2, #8
	str	r2, [sp, #+16]
	b	LBB31_3
LBB31_2:
	mov	r2, #0
	str	r2, [sp, #+16]
LBB31_3:
	ldr	r2, [sp, #+36]
	cmp	r2, #2
	blo	LBB31_5
	ldr	r2, [sp, #+36]
	sub	r2, r2, #1
	str	r2, [sp, #+20]
	b	LBB31_6
LBB31_5:
	mov	r2, #0
	str	r2, [sp, #+20]
LBB31_6:
	ldr	r2, [sp, #+16]
	ldr	r3, [sp, #+20]
	bl	__ZN7avmplus15AvmBridgeObject6invokeEiPii
	str	r0, [sp]
	str	r0, [sp, #+24]
	str	r0, [sp, #+28]
	ldr	r0, [sp, #+28]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end31:

	.globl	__ZN7avmplus8NativeID44flash_net_NetConnection_private_invoke_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID44flash_net_NetConnection_private_invoke_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin32:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #44
	mov	r3, #2
	str	r0, [sp, #+40]
	str	r1, [sp, #+36]
	str	r2, [sp, #+32]
	str	r3, [sp, #+12]
	ldr	r0, [sp, #+32]
	ldr	r0, [r0, #+4]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+32]
	ldr	r0, [r0]
	str	r0, [sp, #+4]
	ldr	r1, [sp, #+8]
	ldr	r2, [sp, #+36]
	cmp	r2, #2
	blo	LBB32_2
	ldr	r2, [sp, #+32]
	add	r2, r2, #8
	str	r2, [sp, #+16]
	b	LBB32_3
LBB32_2:
	mov	r2, #0
	str	r2, [sp, #+16]
LBB32_3:
	ldr	r2, [sp, #+36]
	cmp	r2, #2
	blo	LBB32_5
	ldr	r2, [sp, #+36]
	sub	r2, r2, #1
	str	r2, [sp, #+20]
	b	LBB32_6
LBB32_5:
	mov	r2, #0
	str	r2, [sp, #+20]
LBB32_6:
	ldr	r2, [sp, #+16]
	ldr	r3, [sp, #+20]
	bl	__ZN7avmplus15AvmBridgeObject6invokeEiPii
	str	r0, [sp]
	str	r0, [sp, #+24]
	str	r0, [sp, #+28]
	ldr	r0, [sp, #+28]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end32:

	.globl	__ZN7avmplus8NativeID56flash_net_SharedObject_private_invokeWithArgsArray_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID56flash_net_SharedObject_private_invokeWithArgsArray_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin33:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #36
	str	r0, [sp, #+32]
	str	r1, [sp, #+28]
	str	r2, [sp, #+24]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+24]
	ldr	r0, [r0, #+8]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+24]
	ldr	r0, [r0]
	str	r0, [sp, #+4]
	ldr	r1, [sp, #+12]
	ldr	r2, [sp, #+8]
	bl	__ZN7avmplus15AvmBridgeObject19invokeWithArgsArrayEiPNS_11ArrayObjectE
	str	r0, [sp]
	str	r0, [sp, #+16]
	str	r0, [sp, #+20]
	ldr	r0, [sp, #+20]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end33:

	.globl	__ZN7avmplus8NativeID53flash_net_NetStream_private_invokeWithArgsArray_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID53flash_net_NetStream_private_invokeWithArgsArray_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin34:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #36
	str	r0, [sp, #+32]
	str	r1, [sp, #+28]
	str	r2, [sp, #+24]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+24]
	ldr	r0, [r0, #+8]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+24]
	ldr	r0, [r0]
	str	r0, [sp, #+4]
	ldr	r1, [sp, #+12]
	ldr	r2, [sp, #+8]
	bl	__ZN7avmplus15AvmBridgeObject19invokeWithArgsArrayEiPNS_11ArrayObjectE
	str	r0, [sp]
	str	r0, [sp, #+16]
	str	r0, [sp, #+20]
	ldr	r0, [sp, #+20]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end34:

	.globl	__ZN7avmplus8NativeID57flash_net_NetConnection_private_invokeWithArgsArray_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID57flash_net_NetConnection_private_invokeWithArgsArray_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin35:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #36
	str	r0, [sp, #+32]
	str	r1, [sp, #+28]
	str	r2, [sp, #+24]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+24]
	ldr	r0, [r0, #+8]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+24]
	ldr	r0, [r0]
	str	r0, [sp, #+4]
	ldr	r1, [sp, #+12]
	ldr	r2, [sp, #+8]
	bl	__ZN7avmplus15AvmBridgeObject19invokeWithArgsArrayEiPNS_11ArrayObjectE
	str	r0, [sp]
	str	r0, [sp, #+16]
	str	r0, [sp, #+20]
	ldr	r0, [sp, #+20]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end35:

	.globl	__ZN7avmplus8NativeID57flash_net_NetConnection_private__SetHTTPIdleTimeout_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID57flash_net_NetConnection_private__SetHTTPIdleTimeout_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin36:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #60
	bic	sp, sp, #7
	mov	r4, #4
	add	r3, r2, #4
	str	r0, [sp, #+28]
	str	r1, [sp, #+24]
	str	r2, [sp, #+20]
	str	r3, [sp, #+56]
	add	r0, sp, #32
	bl	__ZN7avmplus14double_overlayC1Ev
	ldr	r0, [sp, #+56]
	ldr	r0, [r0]
	str	r0, [sp, #+32]
	ldr	r0, [sp, #+56]
	ldr	r0, [r0, #+4]
	str	r0, [sp, #+36]
	vldr.64	d0, [sp, #+32]
	vstr.64	d0, [sp, #+40]
	vstr.64	d0, [sp, #+48]
	vstr.64	d0, [sp, #+4]
	ldr	r0, [sp, #+20]
	ldr	r0, [r0]
	str	r0, [sp]
	vldr.64	d0, [sp, #+4]
	vmov	r1, r2, d0
	bl	__ZN7avmplus19NetConnectionObject19_SetHTTPIdleTimeoutEd
	str	r4, [sp, #+12]
	str	r4, [sp, #+16]
	ldr	r0, [sp, #+16]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end36:

	.globl	__ZN7avmplus8NativeID49flash_net_NetConnection_httpIdleTimeout_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID49flash_net_NetConnection_httpIdleTimeout_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin37:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #40
	str	r0, [sp, #+36]
	str	r1, [sp, #+32]
	str	r2, [sp, #+28]
	ldr	r0, [r2]
	str	r0, [sp, #+8]
	bl	__ZN7avmplus19NetConnectionObject19get_httpIdleTimeoutEv
	vmov	d0, r0, r1
	vstr.64	d0, [sp]
	vstr.64	d0, [sp, #+12]
	vstr.64	d0, [sp, #+20]
	vldr.64	d0, [sp, #+20]
	vmov	r0, r1, d0
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end37:

	.globl	__ZN7avmplus8NativeID37flash_net_NetGroup_private_ctor_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID37flash_net_NetGroup_private_ctor_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin38:
	sub	sp, sp, #12
	str	lr, [sp, #+8]
	str	r7, [sp, #+4]
	str	r4, [sp]
	add	r7, sp, #4
	sub	sp, sp, #32
	mov	r4, #4
	str	r0, [sp, #+28]
	str	r1, [sp, #+24]
	str	r2, [sp, #+20]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+20]
	ldr	r0, [r0, #+8]
	str	r0, [sp, #+4]
	ldr	r0, [sp, #+20]
	ldr	r0, [r0]
	str	r0, [sp]
	ldr	r1, [sp, #+8]
	ldr	r2, [sp, #+4]
	bl	__ZN7avmplus14NetGroupObject4ctorEPNS_19NetConnectionObjectEPNS_6StringE
	str	r4, [sp, #+12]
	str	r4, [sp, #+16]
	ldr	r0, [sp, #+16]
	sub	sp, r7, #4
	ldr	r4, [sp]
	ldr	r7, [sp, #+4]
	ldr	lr, [sp, #+8]
	add	sp, sp, #12
	bx	lr
Leh_func_end38:

	.globl	__ZN7avmplus8NativeID33flash_net_NetGroup_info_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID33flash_net_NetGroup_info_get_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin39:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #28
	str	r0, [sp, #+24]
	str	r1, [sp, #+20]
	str	r2, [sp, #+16]
	ldr	r0, [r2]
	str	r0, [sp, #+4]
	bl	__ZN7avmplus14NetGroupObject8get_infoEv
	str	r0, [sp]
	str	r0, [sp, #+8]
	str	r0, [sp, #+12]
	ldr	r0, [sp, #+12]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end39:

	.globl	__ZN7avmplus8NativeID52flash_net_NetGroup_convertPeerIDToGroupAddress_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8NativeID52flash_net_NetGroup_convertPeerIDToGroupAddress_thunkEPNS_9MethodEnvEjPi:
Leh_func_begin40:
	sub	sp, sp, #8
	str	lr, [sp, #+4]
	str	r7, [sp]
	mov	r7, sp
	sub	sp, sp, #32
	str	r0, [sp, #+28]
	str	r1, [sp, #+24]
	str	r2, [sp, #+20]
	ldr	r0, [r2, #+4]
	str	r0, [sp, #+8]
	ldr	r0, [sp, #+20]
	ldr	r0, [r0]
	str	r0, [sp, #+4]
	ldr	r1, [sp, #+8]
	bl	__ZN7avmplus14NetGroupObject27convertPeerIDToGroupAddressEPNS_6StringE
	str	r0, [sp]
	str	r0, [sp, #+12]
	str	r0, [sp, #+16]
	ldr	r0, [sp, #+16]
	mov	sp, r7
	ldr	r7, [sp]
	ldr	lr, [sp, #+4]
	add	sp, sp, #8
	bx	lr
Leh_func_end40:

	.globl	__ZN7avmplus8NativeID46flash_net_NetGroup_localCoverageFrom_get_thunkEPNS_9MethodEnvEjPi
	.align	2
__ZN7avmplus8Nati