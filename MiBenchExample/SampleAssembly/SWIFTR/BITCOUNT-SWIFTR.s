	.text
	.file	"BITCOUNT.LL"
	.hidden	__addsf3
	.globl	__addsf3
	.p2align	2
	.type	__addsf3,@function
__addsf3:                               # @__addsf3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.movhi	r15, 1023
	l.movhi	r25, 1023
	l.movhi	r5, 1023
	l.ori	r15, r15, 65528
	l.ori	r25, r25, 65528
	l.ori	r5, r5, 65528
	l.slli	r16, r14, 3
	l.slli	r26, r24, 3
	l.slli	r6, r4, 3
	l.and	r16, r16, r15
	l.and	r26, r26, r25
	l.and	r6, r6, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.slli	r16, r13, 3
	l.slli	r26, r23, 3
	l.slli	r6, r3, 3
	l.and	r15, r16, r15
	l.and	r25, r26, r25
	l.and	r5, r6, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.srli	r15, r14, 23
	l.srli	r25, r24, 23
	l.srli	r5, r4, 23
	l.andi	r15, r15, 255
	l.andi	r25, r25, 255
	l.andi	r5, r5, 255
	l.srli	r8, r13, 23
	l.srli	r31, r23, 23
	l.srli	r11, r3, 23
	l.andi	r17, r8, 255
	l.andi	r27, r31, 255
	l.andi	r7, r11, 255
	l.sub	r16, r17, r15
	l.sub	r26, r27, r25
	l.sub	r6, r7, r5
	l.srli	r14, r14, 31
	l.srli	r24, r24, 31
	l.srli	r4, r4, 31
	l.srli	r13, r13, 31
	l.srli	r23, r23, 31
	l.srli	r3, r3, 31
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r4
	l.bf	.LBB0_6
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltsi	r6, 1
	l.bf	.LBB0_23
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then40
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_11
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then42
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.else
	l.addi	r16, r16, -1
	l.addi	r26, r26, -1
	l.addi	r6, r6, -1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_69
	l.nop	0                       # in delay slot
# BB#5:                                 # %if.then55
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB0_58
	l.nop	0                       # in delay slot
.LBB0_6:                                # %if.else333
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltsi	r6, 1
	l.bf	.LBB0_28
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then338
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_17
	l.nop	0                       # in delay slot
# BB#8:                                 # %if.then341
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#9:                                 # %if.else363
	l.addi	r16, r16, -1
	l.addi	r26, r26, -1
	l.addi	r6, r6, -1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_70
	l.nop	0                       # in delay slot
# BB#10:                                # %if.then367
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB0_66
	l.nop	0                       # in delay slot
.LBB0_11:                               # %if.else76
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#12:                                # %if.end96
	l.movhi	r14, 1024
	l.movhi	r24, 1024
	l.movhi	r4, 1024
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.or	r15, r15, r14
	l.or	r25, r25, r24
	l.or	r5, r5, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
.LBB0_13:                               # %add1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, 27
	l.bf	.LBB0_55
	l.nop	0                       # in delay slot
# BB#14:                                # %if.then98
	l.addi	r14, r0, 32
	l.addi	r24, r0, 32
	l.addi	r4, r0, 32
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r15, r8, r14
	l.sll	r25, r31, r24
	l.sll	r5, r11, r4
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_16
	l.nop	0                       # in delay slot
# BB#15:                                # %if.then98
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_16:                               # %if.then98
	l.srl	r15, r8, r16
	l.srl	r25, r31, r26
	l.srl	r5, r11, r6
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
	l.or	r14, r14, r15
	l.or	r24, r24, r25
	l.or	r4, r4, r5
	l.j	.LBB0_58
	l.nop	0                       # in delay slot
.LBB0_17:                               # %if.else392
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#18:                                # %if.end415
	l.movhi	r14, 1024
	l.movhi	r24, 1024
	l.movhi	r4, 1024
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.or	r15, r15, r14
	l.or	r25, r25, r24
	l.or	r5, r5, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
.LBB0_19:                               # %sub1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, 27
	l.bf	.LBB0_63
	l.nop	0                       # in delay slot
# BB#20:                                # %if.then419
	l.addi	r14, r0, 32
	l.addi	r24, r0, 32
	l.addi	r4, r0, 32
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r15, r8, r14
	l.sll	r25, r31, r24
	l.sll	r5, r11, r4
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_22
	l.nop	0                       # in delay slot
# BB#21:                                # %if.then419
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_22:                               # %if.then419
	l.srl	r15, r8, r16
	l.srl	r25, r31, r26
	l.srl	r5, r11, r6
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
	l.or	r14, r14, r15
	l.or	r24, r24, r25
	l.or	r4, r4, r5
	l.j	.LBB0_66
	l.nop	0                       # in delay slot
.LBB0_23:                               # %if.else110
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB0_33
	l.nop	0                       # in delay slot
# BB#24:                                # %if.then113
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_71
	l.nop	0                       # in delay slot
# BB#25:                                # %if.then117
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#26:                                # %if.else139
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, -1
	l.bf	.LBB0_133
	l.nop	0                       # in delay slot
# BB#27:                                # %if.then143
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.j	.LBB0_126
	l.nop	0                       # in delay slot
.LBB0_28:                               # %if.else433
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB0_45
	l.nop	0                       # in delay slot
# BB#29:                                # %if.then436
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_77
	l.nop	0                       # in delay slot
# BB#30:                                # %if.then440
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -8(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#31:                                # %if.else462
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, -1
	l.bf	.LBB0_134
	l.nop	0                       # in delay slot
# BB#32:                                # %if.then466
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r8, r13, r14
	l.sub	r31, r23, r24
	l.sub	r11, r3, r4
	l.j	.LBB0_132
	l.nop	0                       # in delay slot
.LBB0_33:                               # %if.else209
	l.addi	r14, r8, 1
	l.addi	r24, r31, 1
	l.addi	r4, r11, 1
	l.andi	r14, r14, 254
	l.andi	r24, r24, 254
	l.andi	r4, r4, 254
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB0_51
	l.nop	0                       # in delay slot
# BB#34:                                # %if.then214
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.bf	.LBB0_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then214
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
.LBB0_36:                               # %if.then214
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB0_38
	l.nop	0                       # in delay slot
# BB#37:                                # %if.then214
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_38:                               # %if.then214
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.ori	r8, r16, 0
	l.ori	r31, r26, 0
	l.ori	r11, r6, 0
	l.bf	.LBB0_40
	l.nop	0                       # in delay slot
# BB#39:                                # %if.then214
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB0_40:                               # %if.then214
	l.or	r15, r14, r15
	l.or	r25, r24, r25
	l.or	r5, r4, r5
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_103
	l.nop	0                       # in delay slot
# BB#41:                                # %if.then217
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#42:                                # %if.else229
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.add	r14, r14, r15
	l.add	r24, r24, r25
	l.add	r4, r4, r5
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r14, r15
	l.and	r25, r24, r25
	l.and	r5, r4, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.ori	r8, r14, 0
	l.ori	r31, r24, 0
	l.ori	r11, r4, 0
	l.bf	.LBB0_44
	l.nop	0                       # in delay slot
# BB#43:                                # %if.else229
	l.movhi	r15, 1023
	l.movhi	r25, 1023
	l.movhi	r5, 1023
	l.ori	r15, r15, 65528
	l.ori	r25, r25, 65528
	l.ori	r5, r5, 65528
	l.and	r8, r14, r15
	l.and	r31, r24, r25
	l.and	r11, r4, r5
.LBB0_44:                               # %if.else229
	l.srli	r14, r14, 26
	l.srli	r24, r24, 26
	l.srli	r4, r4, 26
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_45:                               # %if.else532
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.addi	r14, r8, 1
	l.addi	r24, r31, 1
	l.addi	r4, r11, 1
	l.andi	r14, r14, 254
	l.andi	r24, r24, 254
	l.andi	r4, r4, 254
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB0_53
	l.nop	0                       # in delay slot
# BB#46:                                # %if.then537
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_109
	l.nop	0                       # in delay slot
# BB#47:                                # %if.then540
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_135
	l.nop	0                       # in delay slot
# BB#48:                                # %if.then543
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.bf	.LBB0_50
	l.nop	0                       # in delay slot
# BB#49:                                # %if.then543
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB0_50:                               # %if.then543
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_51:                               # %if.end303
	l.addi	r14, r17, 1
	l.addi	r24, r27, 1
	l.addi	r4, r7, 1
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#52:                                # %if.end303
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.srli	r8, r15, 1
	l.srli	r31, r25, 1
	l.srli	r11, r5, 1
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_53:                               # %if.end641
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sub	r15, r8, r16
	l.sub	r25, r31, r26
	l.sub	r5, r11, r6
	l.movhi	r14, 1024
	l.movhi	r24, 1024
	l.movhi	r4, 1024
	l.and	r14, r15, r14
	l.and	r24, r25, r24
	l.and	r4, r5, r4
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB0_83
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then645
	l.sub	r15, r16, r8
	l.sub	r25, r26, r31
	l.sub	r5, r6, r11
	l.j	.LBB0_84
	l.nop	0                       # in delay slot
.LBB0_55:                               # %if.else103
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_57
	l.nop	0                       # in delay slot
# BB#56:                                # %if.else103
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_57:                               # %if.else103
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
.LBB0_58:                               # %add3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.add	r8, r14, r15
	l.add	r31, r24, r25
	l.add	r11, r4, r5
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
.LBB0_59:                               # %add3
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#60:                                # %if.then320
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 255
	l.bf	.LBB0_62
	l.nop	0                       # in delay slot
# BB#61:                                # %if.then320
	l.movhi	r15, 32255
	l.movhi	r25, 32255
	l.movhi	r5, 32255
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.srli	r16, r8, 1
	l.srli	r26, r31, 1
	l.srli	r6, r11, 1
	l.and	r15, r16, r15
	l.and	r25, r26, r25
	l.and	r5, r6, r5
	l.andi	r16, r8, 1
	l.andi	r26, r31, 1
	l.andi	r6, r11, 1
	l.or	r15, r15, r16
	l.or	r25, r25, r26
	l.or	r5, r5, r6
.LBB0_62:                               # %if.then320
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_63:                               # %if.else426
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_65
	l.nop	0                       # in delay slot
# BB#64:                                # %if.else426
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_65:                               # %if.else426
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
.LBB0_66:                               # %sub3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sub	r8, r15, r14
	l.sub	r31, r25, r24
	l.sub	r11, r5, r4
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
.LBB0_67:                               # %sub3
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#68:                                # %if.then657
	l.movhi	r15, 1023
	l.movhi	r25, 1023
	l.movhi	r5, 1023
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.j	.LBB0_84
	l.nop	0                       # in delay slot
.LBB0_69:                               # %if.end56
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
	l.j	.LBB0_13
	l.nop	0                       # in delay slot
.LBB0_70:                               # %if.end369
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
	l.j	.LBB0_19
	l.nop	0                       # in delay slot
.LBB0_71:                               # %if.else168
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#72:                                # %if.end191
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sub	r16, r14, r16
	l.sub	r26, r24, r26
	l.sub	r6, r4, r6
	l.movhi	r14, 1024
	l.movhi	r24, 1024
	l.movhi	r4, 1024
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -8(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.or	r17, r17, r14
	l.or	r27, r27, r24
	l.or	r7, r7, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-8(r2), r7
.LBB0_73:                               # %add2
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, 27
	l.bf	.LBB0_123
	l.nop	0                       # in delay slot
# BB#74:                                # %if.then195
	l.addi	r14, r0, 32
	l.addi	r24, r0, 32
	l.addi	r4, r0, 32
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r17, r8, r14
	l.sll	r27, r31, r24
	l.sll	r7, r11, r4
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.addi	r20, r7, 0              # CFC
	l.addi	r28, r17, 0
	l.addi	r30, r27, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -12(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB0_76
	l.nop	0                       # in delay slot
# BB#75:                                # %if.then195
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_76:                               # %if.then195
	l.srl	r16, r8, r16
	l.srl	r26, r31, r26
	l.srl	r6, r11, r6
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
	l.or	r14, r14, r16
	l.or	r24, r24, r26
	l.or	r4, r4, r6
	l.add	r8, r14, r17
	l.add	r31, r24, r27
	l.add	r11, r4, r7
	l.j	.LBB0_127
	l.nop	0                       # in delay slot
.LBB0_77:                               # %if.else491
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#78:                                # %if.end514
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sub	r16, r13, r16
	l.sub	r26, r23, r26
	l.sub	r6, r3, r6
	l.movhi	r13, 1024
	l.movhi	r23, 1024
	l.movhi	r3, 1024
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.or	r14, r14, r13
	l.or	r24, r24, r23
	l.or	r4, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
.LBB0_79:                               # %sub2
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, 27
	l.bf	.LBB0_128
	l.nop	0                       # in delay slot
# BB#80:                                # %if.then518
	l.addi	r13, r0, 32
	l.addi	r23, r0, 32
	l.addi	r3, r0, 32
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r14, r8, r13
	l.sll	r24, r31, r23
	l.sll	r4, r11, r3
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.addi	r20, r4, 0              # CFC
	l.addi	r28, r14, 0
	l.addi	r30, r24, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB0_82
	l.nop	0                       # in delay slot
# BB#81:                                # %if.then518
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB0_82:                               # %if.then518
	l.srl	r14, r8, r16
	l.srl	r24, r31, r26
	l.srl	r4, r11, r6
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB0_131
	l.nop	0                       # in delay slot
.LBB0_83:                               # %if.else647
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_84:                               # %do.body659
	l.srli	r13, r15, 1
	l.srli	r23, r25, 1
	l.srli	r3, r5, 1
	l.or	r13, r15, r13
	l.or	r23, r25, r23
	l.or	r3, r5, r3
	l.srli	r14, r13, 2
	l.srli	r24, r23, 2
	l.srli	r4, r3, 2
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.srli	r14, r13, 4
	l.srli	r24, r23, 4
	l.srli	r4, r3, 4
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.srli	r14, r13, 8
	l.srli	r24, r23, 8
	l.srli	r4, r3, 8
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.srli	r14, r13, 16
	l.srli	r24, r23, 16
	l.srli	r4, r3, 16
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.movhi	r14, 21845
	l.movhi	r24, 21845
	l.movhi	r4, 21845
	l.ori	r14, r14, 21845
	l.ori	r24, r24, 21845
	l.ori	r4, r4, 21845
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.srli	r16, r13, 1
	l.srli	r26, r23, 1
	l.srli	r6, r3, 1
	l.and	r14, r16, r14
	l.and	r24, r26, r24
	l.and	r4, r6, r4
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.movhi	r14, 13107
	l.movhi	r24, 13107
	l.movhi	r4, 13107
	l.ori	r14, r14, 13107
	l.ori	r24, r24, 13107
	l.ori	r4, r4, 13107
	l.and	r16, r13, r14
	l.and	r26, r23, r24
	l.and	r6, r3, r4
	l.srli	r13, r13, 2
	l.srli	r23, r23, 2
	l.srli	r3, r3, 2
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.add	r13, r16, r13
	l.add	r23, r26, r23
	l.add	r3, r6, r3
	l.srli	r14, r13, 4
	l.srli	r24, r23, 4
	l.srli	r4, r3, 4
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
	l.movhi	r14, 3855
	l.movhi	r24, 3855
	l.movhi	r4, 3855
	l.ori	r14, r14, 3855
	l.ori	r24, r24, 3855
	l.ori	r4, r4, 3855
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.movhi	r14, 257
	l.movhi	r24, 257
	l.movhi	r4, 257
	l.ori	r14, r14, 257
	l.ori	r24, r24, 257
	l.ori	r4, r4, 257
	l.mul	r13, r13, r14
	l.mul	r23, r23, r24
	l.mul	r3, r3, r4
	l.srli	r13, r13, 24
	l.srli	r23, r23, 24
	l.srli	r3, r3, 24
	l.addi	r14, r13, -5
	l.addi	r24, r23, -5
	l.addi	r4, r3, -5
	l.sll	r13, r15, r14
	l.sll	r23, r25, r24
	l.sll	r3, r5, r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgts	r7, r4
	l.bf	.LBB0_88
	l.nop	0                       # in delay slot
# BB#85:                                # %if.then669
	l.sub	r14, r14, r17
	l.sub	r24, r24, r27
	l.sub	r4, r4, r7
	l.addi	r15, r0, 31
	l.addi	r25, r0, 31
	l.addi	r5, r0, 31
	l.sub	r16, r15, r14
	l.sub	r26, r25, r24
	l.sub	r6, r5, r4
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.srl	r15, r13, r14
	l.srl	r25, r23, r24
	l.srl	r5, r3, r4
	l.sll	r16, r13, r16
	l.sll	r26, r23, r26
	l.sll	r6, r3, r6
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_87
	l.nop	0                       # in delay slot
# BB#86:                                # %if.then669
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB0_87:                               # %if.then669
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.or	r8, r13, r15
	l.or	r31, r23, r25
	l.or	r11, r3, r5
	l.j	.LBB0_89
	l.nop	0                       # in delay slot
.LBB0_88:                               # %if.else678
	l.sub	r14, r17, r14
	l.sub	r24, r27, r24
	l.sub	r4, r7, r4
	l.movhi	r15, 64511
	l.movhi	r25, 64511
	l.movhi	r5, 64511
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r8, r13, r15
	l.and	r31, r23, r25
	l.and	r11, r3, r5
.LBB0_89:                               # %do.body687
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB0_90:                               # %do.body687
	l.andi	r15, r8, 15
	l.andi	r25, r31, 15
	l.andi	r5, r11, 15
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 4
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
	l.bf	.LBB0_92
	l.nop	0                       # in delay slot
# BB#91:                                # %do.body687
	l.addi	r15, r8, 4
	l.addi	r25, r31, 4
	l.addi	r5, r11, 4
.LBB0_92:                               # %do.body687
	l.andi	r16, r8, 7
	l.andi	r26, r31, 7
	l.andi	r6, r11, 7
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB0_94
	l.nop	0                       # in delay slot
# BB#93:                                # %do.body687
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB0_94:                               # %do.body687
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_98
	l.nop	0                       # in delay slot
# BB#95:                                # %if.then718
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 255
	l.bf	.LBB0_97
	l.nop	0                       # in delay slot
# BB#96:                                # %if.then718
	l.movhi	r15, 64511
	l.movhi	r25, 64511
	l.movhi	r5, 64511
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
.LBB0_97:                               # %if.then718
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB0_98:                               # %if.end728
	l.srli	r15, r8, 3
	l.srli	r25, r31, 3
	l.srli	r5, r11, 3
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
	l.bf	.LBB0_100
	l.nop	0                       # in delay slot
# BB#99:                                # %if.end728
	l.movhi	r16, 64
	l.movhi	r26, 64
	l.movhi	r6, 64
	l.or	r16, r15, r16
	l.or	r26, r25, r26
	l.or	r6, r5, r6
.LBB0_100:                              # %if.end728
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 255
	l.bf	.LBB0_102
	l.nop	0                       # in delay slot
# BB#101:                               # %if.end728
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB0_102:                              # %if.end728
	l.slli	r14, r14, 23
	l.slli	r24, r24, 23
	l.slli	r4, r4, 23
	l.movhi	r16, 32640
	l.movhi	r26, 32640
	l.movhi	r6, 32640
	l.and	r14, r14, r16
	l.and	r24, r24, r26
	l.and	r4, r4, r6
	l.slli	r13, r13, 31
	l.slli	r23, r23, 31
	l.slli	r3, r3, 31
	l.or	r13, r14, r13
	l.or	r23, r24, r23
	l.or	r3, r4, r3
	l.movhi	r14, 127
	l.movhi	r24, 127
	l.movhi	r4, 127
	l.ori	r14, r14, 65535
	l.ori	r24, r24, 65535
	l.ori	r4, r4, 65535
	l.and	r14, r15, r14
	l.and	r24, r25, r24
	l.and	r4, r5, r4
	l.or	r8, r13, r14
	l.or	r31, r23, r24
	l.or	r11, r3, r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB0_103:                              # %do.body237
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#104:                               # %do.body281
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r15, r15, 3
	l.srli	r25, r25, 3
	l.srli	r5, r5, 3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.srli	r16, r16, 3
	l.srli	r26, r26, 3
	l.srli	r6, r6, 3
	l.movhi	r17, 64
	l.movhi	r27, 64
	l.movhi	r7, 64
	l.and	r8, r16, r17
	l.and	r31, r26, r27
	l.and	r11, r6, r7
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB0_106
	l.nop	0                       # in delay slot
# BB#105:                               # %do.body281
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
.LBB0_106:                              # %do.body281
	l.and	r17, r15, r17
	l.and	r27, r25, r27
	l.and	r7, r5, r7
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB0_108
	l.nop	0                       # in delay slot
# BB#107:                               # %do.body281
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
.LBB0_108:                              # %do.body281
	l.slli	r8, r16, 3
	l.slli	r31, r26, 3
	l.slli	r11, r6, 3
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_109:                              # %do.body566
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_115
	l.nop	0                       # in delay slot
# BB#110:                               # %if.then604
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_112
	l.nop	0                       # in delay slot
# BB#111:                               # %if.then604
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB0_112:                              # %if.then604
	l.movhi	r8, 512
	l.movhi	r31, 512
	l.movhi	r11, 512
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_114
	l.nop	0                       # in delay slot
# BB#113:                               # %if.then604
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB0_114:                              # %if.then604
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.LBB0_115:                              # %if.else614
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.ori	r8, r16, 0
	l.ori	r31, r26, 0
	l.ori	r11, r6, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#116:                               # %do.body619
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r15, r15, 3
	l.srli	r25, r25, 3
	l.srli	r5, r5, 3
	l.movhi	r16, 64
	l.movhi	r26, 64
	l.movhi	r6, 64
	l.and	r17, r15, r16
	l.and	r27, r25, r26
	l.and	r7, r5, r6
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 0
	l.bf	.LBB0_118
	l.nop	0                       # in delay slot
# BB#117:                               # %do.body619
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB0_118:                              # %do.body619
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -8(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.srli	r17, r8, 25
	l.srli	r27, r31, 25
	l.srli	r7, r11, 25
	l.and	r16, r17, r16
	l.and	r26, r27, r26
	l.and	r6, r7, r6
	l.andi	r16, r16, 1
	l.andi	r26, r26, 1
	l.andi	r6, r6, 1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_120
	l.nop	0                       # in delay slot
# BB#119:                               # %do.body619
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
.LBB0_120:                              # %do.body619
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.bf	.LBB0_122
	l.nop	0                       # in delay slot
# BB#121:                               # %do.body619
	l.srli	r15, r8, 3
	l.srli	r25, r31, 3
	l.srli	r5, r11, 3
.LBB0_122:                              # %do.body619
	l.slli	r8, r15, 3
	l.slli	r31, r25, 3
	l.slli	r11, r5, 3
	l.j	.LBB0_89
	l.nop	0                       # in delay slot
.LBB0_123:                              # %if.else202
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r20, r6, 0              # CFC
	l.addi	r28, r16, 0
	l.addi	r30, r26, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB0_125
	l.nop	0                       # in delay slot
# BB#124:                               # %if.else202
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB0_125:                              # %if.else202
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
.LBB0_126:                              # %add3
	l.add	r8, r14, r16
	l.add	r31, r24, r26
	l.add	r11, r4, r6
.LBB0_127:                              # %add3
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.j	.LBB0_59
	l.nop	0                       # in delay slot
.LBB0_128:                              # %if.else525
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r20, r4, 0              # CFC
	l.addi	r28, r14, 0
	l.addi	r30, r24, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB0_130
	l.nop	0                       # in delay slot
# BB#129:                               # %if.else525
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB0_130:                              # %if.else525
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
.LBB0_131:                              # %sub3
	l.sub	r8, r14, r13
	l.sub	r31, r24, r23
	l.sub	r11, r4, r3
.LBB0_132:                              # %sub3
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.j	.LBB0_67
	l.nop	0                       # in delay slot
.LBB0_133:                              # %if.end145
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.xori	r16, r16, -1
	l.xori	r26, r26, -1
	l.xori	r6, r6, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
	l.j	.LBB0_73
	l.nop	0                       # in delay slot
.LBB0_134:                              # %if.end468
	l.addi	r14, r0, 255
	l.addi	r24, r0, 255
	l.addi	r4, r0, 255
	l.xori	r16, r16, -1
	l.xori	r26, r26, -1
	l.xori	r6, r6, -1
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
	l.j	.LBB0_79
	l.nop	0                       # in delay slot
.LBB0_135:                              # %if.else549
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.ori	r8, r16, 0
	l.ori	r31, r26, 0
	l.ori	r11, r6, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#136:                               # %if.else553
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -8(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sub	r8, r17, r16
	l.sub	r31, r27, r26
	l.sub	r11, r7, r6
	l.movhi	r15, 1024
	l.movhi	r25, 1024
	l.movhi	r5, 1024
	l.and	r15, r8, r15
	l.and	r25, r31, r25
	l.and	r5, r11, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB0_138
	l.nop	0                       # in delay slot
# BB#137:                               # %if.then557
	l.sub	r8, r16, r17
	l.sub	r31, r26, r27
	l.sub	r11, r6, r7
	l.j	.LBB0_89
	l.nop	0                       # in delay slot
.LBB0_138:                              # %if.else559
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.bf	.LBB0_140
	l.nop	0                       # in delay slot
# BB#139:                               # %if.else559
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
.LBB0_140:                              # %if.else559
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.j	.LBB0_90
	l.nop	0                       # in delay slot
.Lfunc_end0:
	.size	__addsf3, .Lfunc_end0-__addsf3

	.hidden	bit_count
	.globl	bit_count
	.p2align	2
	.type	bit_count,@function
bit_count:                              # @bit_count
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB1_3
	l.nop	0                       # in delay slot
# BB#1:                                 # %do.body.preheader
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
.LBB1_2:                                # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r14, r13, -1
	l.addi	r24, r23, -1
	l.addi	r4, r3, -1
	l.and	r13, r14, r13
	l.and	r23, r24, r23
	l.and	r3, r4, r3
	l.addi	r8, r8, 1
	l.addi	r31, r31, 1
	l.addi	r11, r11, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB1_2
	l.nop	0                       # in delay slot
.LBB1_3:                                # %if.end
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end1:
	.size	bit_count, .Lfunc_end1-bit_count

	.hidden	bitcount
	.globl	bitcount
	.p2align	2
	.type	bitcount,@function
bitcount:                               # @bitcount
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r14, 21845
	l.movhi	r24, 21845
	l.movhi	r4, 21845
	l.ori	r14, r14, 21845
	l.ori	r24, r24, 21845
	l.ori	r4, r4, 21845
	l.and	r15, r13, r14
	l.and	r25, r23, r24
	l.and	r5, r3, r4
	l.srli	r13, r13, 1
	l.srli	r23, r23, 1
	l.srli	r3, r3, 1
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.movhi	r14, 13107
	l.movhi	r24, 13107
	l.movhi	r4, 13107
	l.ori	r14, r14, 13107
	l.ori	r24, r24, 13107
	l.ori	r4, r4, 13107
	l.and	r15, r13, r14
	l.and	r25, r23, r24
	l.and	r5, r3, r4
	l.srli	r13, r13, 2
	l.srli	r23, r23, 2
	l.srli	r3, r3, 2
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.movhi	r14, 1799
	l.movhi	r24, 1799
	l.movhi	r4, 1799
	l.ori	r14, r14, 1799
	l.ori	r24, r24, 1799
	l.ori	r4, r4, 1799
	l.and	r15, r13, r14
	l.and	r25, r23, r24
	l.and	r5, r3, r4
	l.srli	r13, r13, 4
	l.srli	r23, r23, 4
	l.srli	r3, r3, 4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.movhi	r14, 15
	l.movhi	r24, 15
	l.movhi	r4, 15
	l.ori	r14, r14, 15
	l.ori	r24, r24, 15
	l.ori	r4, r4, 15
	l.and	r15, r13, r14
	l.and	r25, r23, r24
	l.and	r5, r3, r4
	l.srli	r13, r13, 8
	l.srli	r23, r23, 8
	l.srli	r3, r3, 8
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.andi	r14, r13, 31
	l.andi	r24, r23, 31
	l.andi	r4, r3, 31
	l.srli	r13, r13, 16
	l.srli	r23, r23, 16
	l.srli	r3, r3, 16
	l.add	r8, r13, r14
	l.add	r31, r23, r24
	l.add	r11, r3, r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end2:
	.size	bitcount, .Lfunc_end2-bitcount

	.hidden	ntbl_bitcount
	.globl	ntbl_bitcount
	.p2align	2
	.type	ntbl_bitcount,@function
ntbl_bitcount:                          # @ntbl_bitcount
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r14, hi(bits)
	l.movhi	r24, hi(bits)
	l.movhi	r4, hi(bits)
	l.ori	r14, r14, lo(bits)
	l.ori	r24, r24, lo(bits)
	l.ori	r4, r4, lo(bits)
	l.andi	r15, r13, 15
	l.andi	r25, r23, 15
	l.andi	r5, r3, 15
	l.add	r15, r15, r14
	l.add	r25, r25, r24
	l.add	r5, r5, r4
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbs	r5, 0(r5)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r16, r13, 4
	l.srli	r26, r23, 4
	l.srli	r6, r3, 4
	l.andi	r16, r16, 15
	l.andi	r26, r26, 15
	l.andi	r6, r6, 15
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r16, r15
	l.add	r25, r26, r25
	l.add	r5, r6, r5
	l.srli	r16, r13, 8
	l.srli	r26, r23, 8
	l.srli	r6, r3, 8
	l.andi	r16, r16, 15
	l.andi	r26, r26, 15
	l.andi	r6, r6, 15
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.srli	r16, r13, 12
	l.srli	r26, r23, 12
	l.srli	r6, r3, 12
	l.andi	r16, r16, 15
	l.andi	r26, r26, 15
	l.andi	r6, r6, 15
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.srli	r16, r13, 16
	l.srli	r26, r23, 16
	l.srli	r6, r3, 16
	l.andi	r16, r16, 15
	l.andi	r26, r26, 15
	l.andi	r6, r6, 15
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.srli	r16, r13, 20
	l.srli	r26, r23, 20
	l.srli	r6, r3, 20
	l.andi	r16, r16, 15
	l.andi	r26, r26, 15
	l.andi	r6, r6, 15
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.srli	r16, r13, 28
	l.srli	r26, r23, 28
	l.srli	r6, r3, 28
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.srli	r13, r13, 24
	l.srli	r23, r23, 24
	l.srli	r3, r3, 24
	l.andi	r13, r13, 15
	l.andi	r23, r23, 15
	l.andi	r3, r3, 15
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r15, r13
	l.add	r23, r25, r23
	l.add	r3, r5, r3
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r4, 0(r6)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r8, r13, r14
	l.add	r31, r23, r24
	l.add	r11, r3, r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end3:
	.size	ntbl_bitcount, .Lfunc_end3-ntbl_bitcount

	.hidden	BW_btbl_bitcount
	.globl	BW_btbl_bitcount
	.p2align	2
	.type	BW_btbl_bitcount,@function
BW_btbl_bitcount:                       # @BW_btbl_bitcount
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r14, hi(bits)
	l.movhi	r24, hi(bits)
	l.movhi	r4, hi(bits)
	l.ori	r14, r14, lo(bits)
	l.ori	r24, r24, lo(bits)
	l.ori	r4, r4, lo(bits)
	l.srli	r15, r13, 24
	l.srli	r25, r23, 24
	l.srli	r5, r3, 24
	l.add	r15, r15, r14
	l.add	r25, r25, r24
	l.add	r5, r5, r4
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbs	r5, 0(r5)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r16, r13, 16
	l.srli	r26, r23, 16
	l.srli	r6, r3, 16
	l.andi	r16, r16, 255
	l.andi	r26, r26, 255
	l.andi	r6, r6, 255
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r16, r15
	l.add	r25, r26, r25
	l.add	r5, r6, r5
	l.andi	r16, r13, 255
	l.andi	r26, r23, 255
	l.andi	r6, r3, 255
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.srli	r13, r13, 8
	l.srli	r23, r23, 8
	l.srli	r3, r3, 8
	l.andi	r13, r13, 255
	l.andi	r23, r23, 255
	l.andi	r3, r3, 255
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r8, r15, r13
	l.add	r31, r25, r23
	l.add	r11, r5, r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end4:
	.size	BW_btbl_bitcount, .Lfunc_end4-BW_btbl_bitcount

	.hidden	AR_btbl_bitcount
	.globl	AR_btbl_bitcount
	.p2align	2
	.type	AR_btbl_bitcount,@function
AR_btbl_bitcount:                       # @AR_btbl_bitcount
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r14, hi(bits)
	l.movhi	r24, hi(bits)
	l.movhi	r4, hi(bits)
	l.ori	r14, r14, lo(bits)
	l.ori	r24, r24, lo(bits)
	l.ori	r4, r4, lo(bits)
	l.srli	r15, r13, 24
	l.srli	r25, r23, 24
	l.srli	r5, r3, 24
	l.add	r15, r15, r14
	l.add	r25, r25, r24
	l.add	r5, r5, r4
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbs	r5, 0(r5)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r16, r13, 16
	l.srli	r26, r23, 16
	l.srli	r6, r3, 16
	l.andi	r16, r16, 255
	l.andi	r26, r26, 255
	l.andi	r6, r6, 255
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r16, r15
	l.add	r25, r26, r25
	l.add	r5, r6, r5
	l.srli	r16, r13, 8
	l.srli	r26, r23, 8
	l.srli	r6, r3, 8
	l.andi	r16, r16, 255
	l.andi	r26, r26, 255
	l.andi	r6, r6, 255
	l.add	r16, r16, r14
	l.add	r26, r26, r24
	l.add	r6, r6, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbs	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r15, r15, r16
	l.add	r25, r25, r26
	l.add	r5, r5, r6
	l.andi	r13, r13, 255
	l.andi	r23, r23, 255
	l.andi	r3, r3, 255
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r8, r15, r13
	l.add	r31, r25, r23
	l.add	r11, r5, r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end5:
	.size	AR_btbl_bitcount, .Lfunc_end5-AR_btbl_bitcount

	.hidden	ntbl_bitcnt
	.globl	ntbl_bitcnt
	.p2align	2
	.type	ntbl_bitcnt,@function
ntbl_bitcnt:                            # @ntbl_bitcnt
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -12
	l.addi	r21, r21, -12           # CFC
	l.addi	r1, r1, -12
	l.movhi	r14, hi(bits.1)
	l.movhi	r24, hi(bits.1)
	l.movhi	r4, hi(bits.1)
	l.ori	r14, r14, lo(bits.1)
	l.ori	r24, r24, lo(bits.1)
	l.ori	r4, r4, lo(bits.1)
	l.andi	r15, r13, 15
	l.andi	r25, r23, 15
	l.andi	r5, r3, 15
	l.add	r14, r15, r14
	l.add	r24, r25, r24
	l.add	r4, r5, r4
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbs	r11, 0(r4)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.srai	r13, r13, 4
	l.srai	r23, r23, 4
	l.srai	r3, r3, 4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB6_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-12(r2), r11
	l.jal	ntbl_bitcnt
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r8, r8, r13
	l.add	r31, r31, r23
	l.add	r11, r11, r3
.LBB6_2:                                # %if.end
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end6:
	.size	ntbl_bitcnt, .Lfunc_end6-ntbl_bitcnt

	.hidden	btbl_bitcnt
	.globl	btbl_bitcnt
	.p2align	2
	.type	btbl_bitcnt,@function
btbl_bitcnt:                            # @btbl_bitcnt
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -12
	l.addi	r21, r21, -12           # CFC
	l.addi	r1, r1, -12
	l.movhi	r14, hi(bits.1)
	l.movhi	r24, hi(bits.1)
	l.movhi	r4, hi(bits.1)
	l.ori	r14, r14, lo(bits.1)
	l.ori	r24, r24, lo(bits.1)
	l.ori	r4, r4, lo(bits.1)
	l.srli	r15, r13, 24
	l.srli	r25, r23, 24
	l.srli	r5, r3, 24
	l.add	r14, r15, r14
	l.add	r24, r25, r24
	l.add	r4, r5, r4
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbs	r11, 0(r4)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.srai	r13, r13, 8
	l.srai	r23, r23, 8
	l.srai	r3, r3, 8
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB7_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-12(r2), r11
	l.jal	btbl_bitcnt
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r8, r8, r13
	l.add	r31, r31, r23
	l.add	r11, r11, r3
.LBB7_2:                                # %if.end
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end7:
	.size	btbl_bitcnt, .Lfunc_end7-btbl_bitcnt

	.hidden	__muldi3
	.globl	__muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -28
	l.addi	r21, r21, -28           # CFC
	l.addi	r1, r1, -28
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-24(r2), r3
	l.andi	r15, r14, 65535
	l.andi	r25, r24, 65535
	l.andi	r5, r4, 65535
	l.andi	r17, r16, 65535
	l.andi	r27, r26, 65535
	l.andi	r7, r6, 65535
	l.mul	r8, r17, r15
	l.mul	r31, r27, r25
	l.mul	r11, r7, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-16(r2), r6
	l.srli	r13, r16, 16
	l.srli	r23, r26, 16
	l.srli	r3, r6, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-28(r2), r3
	l.mul	r15, r13, r15
	l.mul	r25, r23, r25
	l.mul	r5, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.srli	r13, r14, 16
	l.srli	r23, r24, 16
	l.srli	r3, r4, 16
	l.mul	r16, r17, r13
	l.mul	r26, r27, r23
	l.mul	r6, r7, r3
	l.add	r15, r16, r15
	l.add	r25, r26, r25
	l.add	r5, r6, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-8(r2), r11
	l.srli	r17, r8, 16
	l.srli	r27, r31, 16
	l.srli	r7, r11, 16
	l.add	r17, r15, r17
	l.add	r27, r25, r27
	l.add	r7, r5, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -28(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.mul	r8, r14, r13
	l.mul	r31, r24, r23
	l.mul	r11, r4, r3
	l.movhi	r13, 1
	l.movhi	r23, 1
	l.movhi	r3, 1
	l.add	r15, r8, r13
	l.add	r25, r31, r23
	l.add	r5, r11, r3
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r7, r6
	l.bf	.LBB8_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB8_2:                                # %entry
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.mul	r13, r14, r13
	l.mul	r23, r24, r23
	l.mul	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -20(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.mul	r14, r14, r16
	l.mul	r24, r24, r26
	l.mul	r4, r4, r6
	l.add	r13, r14, r13
	l.add	r23, r24, r23
	l.add	r3, r4, r3
	l.srli	r14, r17, 16
	l.srli	r24, r27, 16
	l.srli	r4, r7, 16
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
	l.add	r8, r13, r15
	l.add	r31, r23, r25
	l.add	r11, r3, r5
	l.slli	r13, r17, 16
	l.slli	r23, r27, 16
	l.slli	r3, r7, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 65535
	l.andi	r24, r24, 65535
	l.andi	r4, r4, 65535
	l.or	r12, r13, r14
	l.or	r12, r23, r24
	l.or	r12, r3, r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end8:
	.size	__muldi3, .Lfunc_end8-__muldi3

	.hidden	__udivdi3
	.globl	__udivdi3
	.p2align	2
	.type	__udivdi3,@function
__udivdi3:                              # @__udivdi3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -36
	l.addi	r21, r21, -36           # CFC
	l.addi	r1, r1, -36
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB9_43
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then.i
	l.movhi	r15, 256
	l.movhi	r25, 256
	l.movhi	r5, 256
	l.addi	r8, r0, 16
	l.addi	r31, r0, 16
	l.addi	r11, r0, 16
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltu	r6, r5
	l.bf	.LBB9_3
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then.i
	l.addi	r8, r0, 24
	l.addi	r31, r0, 24
	l.addi	r11, r0, 24
.LBB9_3:                                # %if.then.i
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltui	r6, 256
	l.bf	.LBB9_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.then.i
	l.addi	r15, r0, 8
	l.addi	r25, r0, 8
	l.addi	r5, r0, 8
.LBB9_5:                                # %if.then.i
	l.movhi	r17, 1
	l.movhi	r27, 1
	l.movhi	r7, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltu	r6, r7
	l.bf	.LBB9_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then.i
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB9_7:                                # %if.then.i
	l.movhi	r16, hi(__clz_tab)
	l.movhi	r26, hi(__clz_tab)
	l.movhi	r6, hi(__clz_tab)
	l.ori	r16, r16, lo(__clz_tab)
	l.ori	r26, r26, lo(__clz_tab)
	l.ori	r6, r6, lo(__clz_tab)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.srl	r17, r8, r15
	l.srl	r27, r31, r25
	l.srl	r7, r11, r5
	l.add	r16, r17, r16
	l.add	r26, r27, r26
	l.add	r6, r7, r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lbz	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r16, r16, r15
	l.add	r26, r26, r25
	l.add	r6, r6, r5
	l.addi	r15, r0, 32
	l.addi	r25, r0, 32
	l.addi	r5, r0, 32
	l.sub	r17, r15, r16
	l.sub	r27, r25, r26
	l.sub	r7, r5, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgeu	r3, r11
	l.bf	.LBB9_21
	l.nop	0                       # in delay slot
# BB#8:                                 # %do.body.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 0
	l.bf	.LBB9_10
	l.nop	0                       # in delay slot
# BB#9:                                 # %if.then16.i
	l.srl	r16, r14, r16
	l.srl	r26, r24, r26
	l.srl	r6, r4, r6
	l.sll	r13, r13, r17
	l.sll	r23, r23, r27
	l.sll	r3, r3, r7
	l.or	r13, r13, r16
	l.or	r23, r23, r26
	l.or	r3, r3, r6
	l.sll	r14, r14, r17
	l.sll	r24, r24, r27
	l.sll	r4, r4, r7
	l.sll	r15, r15, r17
	l.sll	r25, r25, r27
	l.sll	r5, r5, r7
.LBB9_10:                               # %do.body21.i
	l.srli	r17, r15, 16
	l.srli	r27, r25, 16
	l.srli	r7, r5, 16
	l.ori	r16, r14, 0
	l.ori	r26, r24, 0
	l.ori	r6, r4, 0
	l.divu	r8, r13, r17
	l.divu	r31, r23, r27
	l.divu	r11, r3, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-16(r2), r7
	l.mul	r14, r8, r17
	l.mul	r24, r31, r27
	l.mul	r4, r11, r7
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-8(r2), r6
	l.srli	r14, r16, 16
	l.srli	r24, r26, 16
	l.srli	r4, r6, 16
	l.or	r17, r13, r14
	l.or	r27, r23, r24
	l.or	r7, r3, r4
	l.andi	r14, r15, 65535
	l.andi	r24, r25, 65535
	l.andi	r4, r5, 65535
	l.mul	r13, r8, r14
	l.mul	r23, r31, r24
	l.mul	r3, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-12(r2), r11
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgeu	r7, r3
	l.bf	.LBB9_14
	l.nop	0                       # in delay slot
# BB#11:                                # %if.then28.i
	l.addi	r15, r8, -1
	l.addi	r25, r31, -1
	l.addi	r5, r11, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r7, r6
	l.bf	.LBB9_14
	l.nop	0                       # in delay slot
# BB#12:                                # %if.then28.i
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgeu	r7, r3
	l.bf	.LBB9_14
	l.nop	0                       # in delay slot
# BB#13:                                # %if.then35.i
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.addi	r15, r8, -2
	l.addi	r25, r31, -2
	l.addi	r5, r11, -2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
.LBB9_14:                               # %if.end40.i
	l.sub	r13, r17, r13
	l.sub	r23, r27, r23
	l.sub	r3, r7, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -16(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.divu	r17, r13, r15
	l.divu	r27, r23, r25
	l.divu	r7, r3, r5
	l.mul	r15, r17, r15
	l.mul	r25, r27, r25
	l.mul	r5, r7, r5
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 65535
	l.andi	r25, r25, 65535
	l.andi	r5, r5, 65535
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.mul	r8, r17, r14
	l.mul	r31, r27, r24
	l.mul	r11, r7, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgeu	r3, r11
	l.bf	.LBB9_20
	l.nop	0                       # in delay slot
# BB#15:                                # %if.then50.i
	l.add	r15, r13, r16
	l.add	r25, r23, r26
	l.add	r5, r3, r6
	l.addi	r13, r0, -1
	l.addi	r23, r0, -1
	l.addi	r3, r0, -1
	l.addi	r14, r0, -2
	l.addi	r24, r0, -2
	l.addi	r4, r0, -2
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltu	r5, r11
	l.bf	.LBB9_17
	l.nop	0                       # in delay slot
# BB#16:                                # %if.then50.i
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB9_17:                               # %if.then50.i
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgeu	r5, r6
	l.bf	.LBB9_19
	l.nop	0                       # in delay slot
# BB#18:                                # %if.then50.i
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB9_19:                               # %if.then50.i
	l.add	r17, r17, r14
	l.add	r27, r27, r24
	l.add	r7, r7, r4
.LBB9_20:                               # %if.end63.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.or	r17, r17, r13
	l.or	r27, r27, r23
	l.or	r7, r7, r3
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.j	.LBB9_72
	l.nop	0                       # in delay slot
.LBB9_43:                               # %if.else240.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltu	r3, r5
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.bf	.LBB9_72
	l.nop	0                       # in delay slot
# BB#44:                                # %do.body254.i
	l.movhi	r17, 256
	l.movhi	r27, 256
	l.movhi	r7, 256
	l.addi	r14, r0, 16
	l.addi	r24, r0, 16
	l.addi	r4, r0, 16
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltu	r5, r7
	l.bf	.LBB9_46
	l.nop	0                       # in delay slot
# BB#45:                                # %do.body254.i
	l.addi	r14, r0, 24
	l.addi	r24, r0, 24
	l.addi	r4, r0, 24
.LBB9_46:                               # %do.body254.i
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 256
	l.bf	.LBB9_48
	l.nop	0                       # in delay slot
# BB#47:                                # %do.body254.i
	l.addi	r17, r0, 8
	l.addi	r27, r0, 8
	l.addi	r7, r0, 8
.LBB9_48:                               # %do.body254.i
	l.movhi	r8, 1
	l.movhi	r31, 1
	l.movhi	r11, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltu	r5, r11
	l.bf	.LBB9_50
	l.nop	0                       # in delay slot
# BB#49:                                # %do.body254.i
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
.LBB9_50:                               # %do.body254.i
	l.srl	r14, r15, r17
	l.srl	r24, r25, r27
	l.srl	r4, r5, r7
	l.movhi	r8, hi(__clz_tab)
	l.movhi	r31, hi(__clz_tab)
	l.movhi	r11, hi(__clz_tab)
	l.ori	r8, r8, lo(__clz_tab)
	l.ori	r31, r31, lo(__clz_tab)
	l.ori	r11, r11, lo(__clz_tab)
	l.add	r14, r14, r8
	l.add	r24, r24, r31
	l.add	r4, r4, r11
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r4, 0(r4)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r14, r14, r17
	l.add	r24, r24, r27
	l.add	r4, r4, r7
	l.addi	r17, r0, 32
	l.addi	r27, r0, 32
	l.addi	r7, r0, 32
	l.sub	r17, r17, r14
	l.sub	r27, r27, r24
	l.sub	r7, r7, r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB9_56
	l.nop	0                       # in delay slot
# BB#51:                                # %if.then278.i
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfleu	r3, r5
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.bf	.LBB9_53
	l.nop	0                       # in delay slot
# BB#52:                                # %if.then278.i
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB9_53:                               # %if.then278.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r5, r6
	l.bf	.LBB9_55
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then278.i
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB9_55:                               # %if.then278.i
	l.and	r13, r14, r13
	l.and	r23, r24, r23
	l.and	r3, r4, r3
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.andi	r17, r13, 1
	l.andi	r27, r23, 1
	l.andi	r7, r3, 1
	l.j	.LBB9_72
	l.nop	0                       # in delay slot
.LBB9_56:                               # %if.else303.i
	l.sll	r15, r15, r17
	l.sll	r25, r25, r27
	l.sll	r5, r5, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-16(r2), r7
	l.srl	r17, r16, r14
	l.srl	r27, r26, r24
	l.srl	r7, r6, r4
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-36(r2), r5
	l.srli	r16, r15, 16
	l.srli	r26, r25, 16
	l.srli	r6, r5, 16
	l.srl	r15, r13, r14
	l.srl	r25, r23, r24
	l.srl	r5, r3, r4
	l.divu	r8, r15, r16
	l.divu	r31, r25, r26
	l.divu	r11, r5, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-24(r2), r6
	l.mul	r17, r8, r16
	l.mul	r27, r31, r26
	l.mul	r7, r11, r6
	l.sub	r15, r15, r17
	l.sub	r25, r25, r27
	l.sub	r5, r5, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -16(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -8(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.srl	r14, r16, r14
	l.srl	r24, r26, r24
	l.srl	r4, r6, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -36(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sll	r13, r13, r17
	l.sll	r23, r23, r27
	l.sll	r3, r3, r7
	l.or	r14, r13, r14
	l.or	r24, r23, r24
	l.or	r4, r3, r4
	l.slli	r13, r15, 16
	l.slli	r23, r25, 16
	l.slli	r3, r5, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-28(r2), r4
	l.srli	r14, r14, 16
	l.srli	r24, r24, 16
	l.srli	r4, r4, 16
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.andi	r14, r16, 65535
	l.andi	r24, r26, 65535
	l.andi	r4, r6, 65535
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-32(r2), r4
	l.mul	r14, r8, r14
	l.mul	r24, r31, r24
	l.mul	r4, r11, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
	l.bf	.LBB9_60
	l.nop	0                       # in delay slot
# BB#57:                                # %if.then332.i
	l.addi	r15, r8, -1
	l.addi	r25, r31, -1
	l.addi	r5, r11, -1
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r3, r6
	l.bf	.LBB9_60
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then332.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB9_60
	l.nop	0                       # in delay slot
# BB#59:                                # %if.then340.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r15, r8, -2
	l.addi	r25, r31, -2
	l.addi	r5, r11, -2
.LBB9_60:                               # %if.end345.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-20(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sll	r8, r15, r17
	l.sll	r31, r25, r27
	l.sll	r11, r5, r7
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -24(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.divu	r14, r13, r15
	l.divu	r24, r23, r25
	l.divu	r4, r3, r5
	l.mul	r15, r14, r15
	l.mul	r25, r24, r25
	l.mul	r5, r4, r5
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -28(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 65535
	l.andi	r25, r25, 65535
	l.andi	r5, r5, 65535
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -32(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.mul	r15, r14, r15
	l.mul	r25, r24, r25
	l.mul	r5, r4, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgeu	r3, r5
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.bf	.LBB9_64
	l.nop	0                       # in delay slot
# BB#61:                                # %if.then355.i
	l.addi	r17, r14, -1
	l.addi	r27, r24, -1
	l.addi	r7, r4, -1
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r3, r6
	l.bf	.LBB9_64
	l.nop	0                       # in delay slot
# BB#62:                                # %if.then355.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgeu	r3, r5
	l.bf	.LBB9_64
	l.nop	0                       # in delay slot
# BB#63:                                # %if.then363.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r17, r14, -2
	l.addi	r27, r24, -2
	l.addi	r7, r4, -2
.LBB9_64:                               # %if.end368.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-24(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.andi	r14, r8, 65535
	l.andi	r24, r31, 65535
	l.andi	r4, r11, 65535
	l.srli	r8, r8, 16
	l.srli	r31, r31, 16
	l.srli	r11, r11, 16
	l.andi	r13, r17, 65535
	l.andi	r23, r27, 65535
	l.andi	r3, r7, 65535
	l.mul	r15, r13, r8
	l.mul	r25, r23, r31
	l.mul	r5, r3, r11
	l.mul	r13, r13, r14
	l.mul	r23, r23, r24
	l.mul	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-28(r2), r3
	l.srli	r13, r13, 16
	l.srli	r23, r23, 16
	l.srli	r3, r3, 16
	l.add	r16, r13, r15
	l.add	r26, r23, r25
	l.add	r6, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -20(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.or	r17, r17, r13
	l.or	r27, r27, r23
	l.or	r7, r7, r3
	l.srli	r13, r17, 16
	l.srli	r23, r27, 16
	l.srli	r3, r7, 16
	l.mul	r14, r13, r14
	l.mul	r24, r23, r24
	l.mul	r4, r3, r4
	l.add	r15, r16, r14
	l.add	r25, r26, r24
	l.add	r5, r6, r4
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r5, r6
	l.bf	.LBB9_66
	l.nop	0                       # in delay slot
# BB#65:                                # %if.end368.i
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB9_66:                               # %if.end368.i
	l.mul	r13, r13, r8
	l.mul	r23, r23, r31
	l.mul	r3, r3, r11
	l.movhi	r16, 1
	l.movhi	r26, 1
	l.movhi	r6, 1
	l.add	r8, r13, r16
	l.add	r31, r23, r26
	l.add	r11, r3, r6
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB9_68
	l.nop	0                       # in delay slot
# BB#67:                                # %if.end368.i
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
.LBB9_68:                               # %if.end368.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.srli	r14, r15, 16
	l.srli	r24, r25, 16
	l.srli	r4, r5, 16
	l.add	r16, r8, r14
	l.add	r26, r31, r24
	l.add	r6, r11, r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtu	r6, r3
	l.bf	.LBB9_71
	l.nop	0                       # in delay slot
# BB#69:                                # %lor.lhs.false401.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -16(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sll	r14, r14, r8
	l.sll	r24, r24, r31
	l.sll	r4, r4, r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -28(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
	l.slli	r15, r15, 16
	l.slli	r25, r25, 16
	l.slli	r5, r5, 16
	l.or	r15, r15, r8
	l.or	r25, r25, r31
	l.or	r5, r5, r11
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfleu	r5, r4
	l.bf	.LBB9_72
	l.nop	0                       # in delay slot
# BB#70:                                # %lor.lhs.false401.i
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r3
	l.bf	.LBB9_72
	l.nop	0                       # in delay slot
.LBB9_71:                               # %if.then406.i
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r17, r17, -1
	l.addi	r27, r27, -1
	l.addi	r7, r7, -1
	l.j	.LBB9_72
	l.nop	0                       # in delay slot
.LBB9_21:                               # %if.else.i
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB9_23
	l.nop	0                       # in delay slot
# BB#22:                                # %if.then98.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.j	.LBB9_32
	l.nop	0                       # in delay slot
.LBB9_23:                               # %if.else100.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
	l.srl	r14, r14, r16
	l.srl	r24, r24, r26
	l.srl	r4, r4, r6
	l.sll	r8, r13, r17
	l.sll	r31, r23, r27
	l.sll	r11, r3, r7
	l.or	r8, r8, r14
	l.or	r31, r31, r24
	l.or	r11, r11, r4
	l.srl	r13, r13, r16
	l.srl	r23, r23, r26
	l.srl	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sll	r16, r16, r17
	l.sll	r26, r26, r27
	l.sll	r6, r6, r7
	l.srli	r14, r16, 16
	l.srli	r24, r26, 16
	l.srli	r4, r6, 16
	l.divu	r15, r13, r14
	l.divu	r25, r23, r24
	l.divu	r5, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.mul	r14, r15, r14
	l.mul	r24, r25, r24
	l.mul	r4, r5, r4
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-16(r2), r11
	l.srli	r14, r8, 16
	l.srli	r24, r31, 16
	l.srli	r4, r11, 16
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.andi	r8, r16, 65535
	l.andi	r31, r26, 65535
	l.andi	r11, r6, 65535
	l.mul	r14, r15, r8
	l.mul	r24, r25, r31
	l.mul	r4, r5, r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB9_27
	l.nop	0                       # in delay slot
# BB#24:                                # %if.then126.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-24(r2), r4
	l.addi	r14, r15, -1
	l.addi	r24, r25, -1
	l.addi	r4, r5, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r3, r6
	l.bf	.LBB9_27
	l.nop	0                       # in delay slot
# BB#25:                                # %if.then126.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB9_27
	l.nop	0                       # in delay slot
# BB#26:                                # %if.then134.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r15, r15, -2
	l.addi	r25, r25, -2
	l.addi	r5, r5, -2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
.LBB9_27:                               # %if.end139.i
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.divu	r15, r13, r14
	l.divu	r25, r23, r24
	l.divu	r5, r3, r4
	l.mul	r14, r15, r14
	l.mul	r24, r25, r24
	l.mul	r4, r5, r4
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 65535
	l.andi	r24, r24, 65535
	l.andi	r4, r4, 65535
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.mul	r14, r15, r8
	l.mul	r24, r25, r31
	l.mul	r4, r5, r11
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.bf	.LBB9_31
	l.nop	0                       # in delay slot
# BB#28:                                # %if.then149.i
	l.addi	r8, r15, -1
	l.addi	r31, r25, -1
	l.addi	r11, r5, -1
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r3, r6
	l.bf	.LBB9_31
	l.nop	0                       # in delay slot
# BB#29:                                # %if.then149.i
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r3, r4
	l.bf	.LBB9_31
	l.nop	0                       # in delay slot
# BB#30:                                # %if.then157.i
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.addi	r8, r15, -2
	l.addi	r31, r25, -2
	l.addi	r11, r5, -2
.LBB9_31:                               # %if.end162.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sll	r15, r15, r17
	l.sll	r25, r25, r27
	l.sll	r5, r5, r7
	l.sub	r14, r13, r14
	l.sub	r24, r23, r24
	l.sub	r4, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.or	r13, r8, r13
	l.or	r23, r31, r23
	l.or	r3, r11, r3
.LBB9_32:                               # %do.body169.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.srli	r8, r16, 16
	l.srli	r31, r26, 16
	l.srli	r11, r6, 16
	l.divu	r13, r14, r8
	l.divu	r23, r24, r31
	l.divu	r3, r4, r11
	l.mul	r17, r13, r8
	l.mul	r27, r23, r31
	l.mul	r7, r3, r11
	l.sub	r14, r14, r17
	l.sub	r24, r24, r27
	l.sub	r4, r4, r7
	l.slli	r14, r14, 16
	l.slli	r24, r24, 16
	l.slli	r4, r4, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.srli	r17, r15, 16
	l.srli	r27, r25, 16
	l.srli	r7, r5, 16
	l.or	r17, r14, r17
	l.or	r27, r24, r27
	l.or	r7, r4, r7
	l.andi	r14, r16, 65535
	l.andi	r24, r26, 65535
	l.andi	r4, r6, 65535
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.mul	r14, r13, r14
	l.mul	r24, r23, r24
	l.mul	r4, r3, r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r7, r4
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.bf	.LBB9_36
	l.nop	0                       # in delay slot
# BB#33:                                # %if.then187.i
	l.addi	r15, r13, -1
	l.addi	r25, r23, -1
	l.addi	r5, r3, -1
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfltu	r7, r6
	l.bf	.LBB9_36
	l.nop	0                       # in delay slot
# BB#34:                                # %if.then187.i
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgeu	r7, r4
	l.bf	.LBB9_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then195.i
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.addi	r15, r13, -2
	l.addi	r25, r23, -2
	l.addi	r5, r3, -2
.LBB9_36:                               # %if.end200.i
	l.sub	r13, r17, r14
	l.sub	r23, r27, r24
	l.sub	r3, r7, r4
	l.divu	r17, r13, r8
	l.divu	r27, r23, r31
	l.divu	r7, r3, r11
	l.mul	r14, r17, r8
	l.mul	r24, r27, r31
	l.mul	r4, r7, r11
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.slli	r13, r13, 16
	l.slli	r23, r23, 16
	l.slli	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 65535
	l.andi	r24, r24, 65535
	l.andi	r4, r4, 65535
	l.or	r14, r13, r14
	l.or	r24, r23, r24
	l.or	r4, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.mul	r13, r17, r13
	l.mul	r23, r27, r23
	l.mul	r3, r7, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -16(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgeu	r4, r3
	l.bf	.LBB9_42
	l.nop	0                       # in delay slot
# BB#37:                                # %if.then210.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.add	r15, r14, r16
	l.add	r25, r24, r26
	l.add	r5, r4, r6
	l.addi	r14, r0, -1
	l.addi	r24, r0, -1
	l.addi	r4, r0, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.addi	r14, r0, -2
	l.addi	r24, r0, -2
	l.addi	r4, r0, -2
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltu	r5, r3
	l.bf	.LBB9_39
	l.nop	0                       # in delay slot
# BB#38:                                # %if.then210.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB9_39:                               # %if.then210.i
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgeu	r5, r6
	l.bf	.LBB9_41
	l.nop	0                       # in delay slot
# BB#40:                                # %if.then210.i
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB9_41:                               # %if.then210.i
	l.add	r17, r17, r14
	l.add	r27, r27, r24
	l.add	r7, r7, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB9_42:                               # %if.end223.i
	l.slli	r13, r15, 16
	l.slli	r23, r25, 16
	l.slli	r3, r5, 16
	l.or	r17, r17, r13
	l.or	r27, r27, r23
	l.or	r7, r7, r3
.LBB9_72:                               # %__udivmoddi4.exit
	l.ori	r12, r17, 0
	l.ori	r12, r27, 0
	l.ori	r12, r7, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end9:
	.size	__udivdi3, .Lfunc_end9-__udivdi3

	.hidden	memset
	.globl	memset
	.p2align	2
	.type	memset,@function
memset:                                 # @memset
l.addi	r10, r1, 0
l.addi	r12, r2, 0
l.addi	r13, r3, 0
l.addi	r14, r4, 0
l.addi	r15, r5, 0
l.addi	r16, r6, 0
l.addi	r17, r7, 0
l.addi	r19, r9, 0
l.addi	r8, r11, 0

l.addi	r21, r1, 0
l.addi	r22, r2, 0
l.addi	r23, r3, 0
l.addi	r24, r4, 0
l.addi	r25, r5, 0
l.addi	r26, r6, 0
l.addi	r27, r7, 0
l.addi	r29, r9, 0
l.addi	r31, r11, 0
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 8
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.bf	.LBB10_13
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.andi	r16, r14, 255
	l.andi	r26, r24, 255
	l.andi	r6, r4, 255
	l.ori	r8, r14, 0
	l.ori	r31, r24, 0
	l.ori	r11, r4, 0
	l.slli	r14, r16, 8
	l.slli	r24, r26, 8
	l.slli	r4, r6, 8
	l.or	r16, r14, r16
	l.or	r26, r24, r26
	l.or	r6, r4, r6
	l.slli	r14, r16, 16
	l.slli	r24, r26, 16
	l.slli	r4, r6, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.andi	r14, r13, 3
	l.andi	r24, r23, 3
	l.andi	r4, r3, 3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.bf	.LBB10_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
.LBB10_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sb	0(r7), r11
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.addi	r17, r17, 1
	l.addi	r27, r27, 1
	l.addi	r7, r7, 1
	l.andi	r14, r17, 3
	l.andi	r24, r27, 3
	l.andi	r4, r7, 3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB10_3
	l.nop	0                       # in delay slot
.LBB10_4:                               # %while.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-12(r2), r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.or	r14, r14, r16
	l.or	r24, r24, r26
	l.or	r4, r4, r6
	l.srli	r8, r15, 5
	l.srli	r31, r25, 5
	l.srli	r11, r5, 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-8(r2), r3
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB10_8
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.body10.preheader
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sub	r8, r16, r13
	l.sub	r31, r26, r23
	l.sub	r11, r6, r3
	l.slli	r16, r13, 5
	l.slli	r26, r23, 5
	l.slli	r6, r3, 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-16(r2), r6
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
.LBB10_6:                               # %while.body10
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	4(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	8(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	12(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	16(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	20(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	24(r6), r4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	28(r6), r4
	l.addi	r16, r16, 32
	l.addi	r26, r26, 32
	l.addi	r6, r6, 32
	l.addi	r8, r8, 1
	l.addi	r31, r31, 1
	l.addi	r11, r11, 1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfnei	r11, 0
	l.bf	.LBB10_6
	l.nop	0                       # in delay slot
# BB#7:                                 # %while.end21.loopexit
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -16(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -8(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB10_8:                               # %while.end21
	l.srli	r16, r15, 2
	l.srli	r26, r25, 2
	l.srli	r6, r5, 2
	l.andi	r8, r16, 7
	l.andi	r31, r26, 7
	l.andi	r11, r6, 7
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB10_12
	l.nop	0                       # in delay slot
# BB#9:                                 # %while.body27.preheader
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sub	r8, r16, r13
	l.sub	r31, r26, r23
	l.sub	r11, r6, r3
	l.slli	r16, r13, 2
	l.slli	r26, r23, 2
	l.slli	r6, r3, 2
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB10_10:                              # %while.body27
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.addi	r13, r13, 4
	l.addi	r23, r23, 4
	l.addi	r3, r3, 4
	l.addi	r8, r8, 1
	l.addi	r31, r31, 1
	l.addi	r11, r11, 1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfnei	r11, 0
	l.bf	.LBB10_10
	l.nop	0                       # in delay slot
# BB#11:                                # %while.end31.loopexit
	l.add	r17, r17, r16
	l.add	r27, r27, r26
	l.add	r7, r7, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -8(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB10_12:                              # %while.end31
	l.andi	r15, r15, 3
	l.andi	r25, r25, 3
	l.andi	r5, r5, 3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB10_13:                              # %while.cond33.preheader
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB10_15
	l.nop	0                       # in delay slot
.LBB10_14:                              # %while.body36
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r7), r4
	l.addi	r17, r17, 1
	l.addi	r27, r27, 1
	l.addi	r7, r7, 1
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB10_14
	l.nop	0                       # in delay slot
.LBB10_15:                              # %while.end41
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end10:
	.size	memset, .Lfunc_end10-memset

	.hidden	main
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   # @main
l.addi	r10, r1, 0
l.addi	r12, r2, 0
l.addi	r13, r3, 0
l.addi	r14, r4, 0
l.addi	r15, r5, 0
l.addi	r16, r6, 0
l.addi	r17, r7, 0
l.addi	r19, r9, 0
l.addi	r8, r11, 0

l.addi	r21, r1, 0
l.addi	r22, r2, 0
l.addi	r23, r3, 0
l.addi	r24, r4, 0
l.addi	r25, r5, 0
l.addi	r26, r6, 0
l.addi	r27, r7, 0
l.addi	r29, r9, 0
l.addi	r31, r11, 0
l.nop 100
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -20
	l.addi	r21, r21, -20           # CFC
	l.addi	r1, r1, -20
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 22609
	l.movhi	r23, 22609
	l.movhi	r3, 22609
	l.ori	r13, r13, 62509
	l.ori	r23, r23, 62509
	l.ori	r3, r3, 62509
.LBB11_1:                               # %for.body3
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	bit_count
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r14, r8, r14
	l.add	r24, r31, r24
	l.add	r4, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 13
	l.addi	r23, r23, 13
	l.addi	r3, r3, 13
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r13, 22609
	l.movhi	r23, 22609
	l.movhi	r3, 22609
	l.ori	r13, r13, 63809
	l.ori	r23, r23, 63809
	l.ori	r3, r3, 63809
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfne	r5, r20
	l.bf	.LBB11_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.end
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r1), r4
	l.movhi	r13, hi(.L.str.7)
	l.movhi	r23, hi(.L.str.7)
	l.movhi	r3, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 16561
	l.movhi	r23, 16561
	l.movhi	r3, 16561
	l.ori	r13, r13, 36047
	l.ori	r23, r23, 36047
	l.ori	r3, r3, 36047
.LBB11_3:                               # %for.body3.1
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	bitcount
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r14, r8, r14
	l.add	r24, r31, r24
	l.add	r4, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 13
	l.addi	r23, r23, 13
	l.addi	r3, r3, 13
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r13, 16561
	l.movhi	r23, 16561
	l.movhi	r3, 16561
	l.ori	r13, r13, 37347
	l.ori	r23, r23, 37347
	l.ori	r3, r3, 37347
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfne	r5, r20
	l.bf	.LBB11_3
	l.nop	0                       # in delay slot
# BB#4:                                 # %for.end.1
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r1), r4
	l.movhi	r13, hi(.L.str.7)
	l.movhi	r23, hi(.L.str.7)
	l.movhi	r3, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 19381
	l.movhi	r23, 19381
	l.movhi	r3, 19381
	l.ori	r13, r13, 63046
	l.ori	r23, r23, 63046
	l.ori	r3, r3, 63046
.LBB11_5:                               # %for.body3.2
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	ntbl_bitcnt
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r14, r8, r14
	l.add	r24, r31, r24
	l.add	r4, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 13
	l.addi	r23, r23, 13
	l.addi	r3, r3, 13
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r13, 19381
	l.movhi	r23, 19381
	l.movhi	r3, 19381
	l.ori	r13, r13, 64346
	l.ori	r23, r23, 64346
	l.ori	r3, r3, 64346
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfne	r5, r20
	l.bf	.LBB11_5
	l.nop	0                       # in delay slot
# BB#6:                                 # %for.end.2
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r1), r4
	l.movhi	r13, hi(.L.str.7)
	l.movhi	r23, hi(.L.str.7)
	l.movhi	r3, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 18179
	l.movhi	r23, 18179
	l.movhi	r3, 18179
	l.ori	r13, r13, 12585
	l.ori	r23, r23, 12585
	l.ori	r3, r3, 12585
.LBB11_7:                               # %for.body3.3
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	ntbl_bitcount
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r14, r8, r14
	l.add	r24, r31, r24
	l.add	r4, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 13
	l.addi	r23, r23, 13
	l.addi	r3, r3, 13
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r13, 18179
	l.movhi	r23, 18179
	l.movhi	r3, 18179
	l.ori	r13, r13, 13885
	l.ori	r23, r23, 13885
	l.ori	r3, r3, 13885
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfne	r5, r20
	l.bf	.LBB11_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %for.end.3
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r1), r4
	l.movhi	r13, hi(.L.str.7)
	l.movhi	r23, hi(.L.str.7)
	l.movhi	r3, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 12400
	l.movhi	r23, 12400
	l.movhi	r3, 12400
	l.ori	r13, r13, 23300
	l.ori	r23, r23, 23300
	l.ori	r3, r3, 23300
.LBB11_9:                               # %for.body3.4
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	BW_btbl_bitcount
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r14, r8, r14
	l.add	r24, r31, r24
	l.add	r4, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 13
	l.addi	r23, r23, 13
	l.addi	r3, r3, 13
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r13, 12400
	l.movhi	r23, 12400
	l.movhi	r3, 12400
	l.ori	r13, r13, 24600
	l.ori	r23, r23, 24600
	l.ori	r3, r3, 24600
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfne	r5, r20
	l.bf	.LBB11_9
	l.nop	0                       # in delay slot
# BB#10:                                # %for.end.4
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r1), r4
	l.movhi	r13, hi(.L.str.7)
	l.movhi	r23, hi(.L.str.7)
	l.movhi	r3, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 8445
	l.movhi	r23, 8445
	l.movhi	r3, 8445
	l.ori	r13, r13, 23988
	l.ori	r23, r23, 23988
	l.ori	r3, r3, 23988
.LBB11_11:                              # %for.body3.5
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	AR_btbl_bitcount
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r14, r8, r14
	l.add	r24, r31, r24
	l.add	r4, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 13
	l.addi	r23, r23, 13
	l.addi	r3, r3, 13
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r13, 8445
	l.movhi	r23, 8445
	l.movhi	r3, 8445
	l.ori	r13, r13, 25288
	l.ori	r23, r23, 25288
	l.ori	r3, r3, 25288
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfne	r5, r20
	l.bf	.LBB11_11
	l.nop	0                       # in delay slot
# BB#12:                                # %for.end.5
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r1), r4
	l.movhi	r13, hi(.L.str.7)
	l.movhi	r23, hi(.L.str.7)
	l.movhi	r3, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.movhi	r14, 6795
	l.movhi	r24, 6795
	l.movhi	r4, 6795
	l.ori	r14, r14, 32632
	l.ori	r24, r24, 32632
	l.ori	r4, r4, 32632
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
.LBB11_13:                              # %for.body3.6
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_14 Depth 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.addi	r17, r0, 1
	l.addi	r27, r0, 1
	l.addi	r7, r0, 1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.ori	r8, r14, 0
	l.ori	r31, r24, 0
	l.ori	r11, r4, 0
.LBB11_14:                              # %for.body.i
                                        #   Parent Loop BB11_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.andi	r13, r8, 1
	l.andi	r23, r31, 1
	l.andi	r3, r11, 1
	l.add	r16, r16, r13
	l.add	r26, r26, r23
	l.add	r6, r6, r3
	l.srai	r8, r8, 1
	l.srai	r31, r31, 1
	l.srai	r11, r11, 1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB11_16
	l.nop	0                       # in delay slot
# BB#15:                                # %for.body.i
                                        #   in Loop: Header=BB11_14 Depth=2
	l.addi	r13, r17, 1
	l.addi	r23, r27, 1
	l.addi	r3, r7, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltui	r7, 32
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.bf	.LBB11_14
	l.nop	0                       # in delay slot
.LBB11_16:                              # %bit_shifter.exit
                                        #   in Loop: Header=BB11_13 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r16, r13
	l.add	r23, r26, r23
	l.add	r3, r6, r3
	l.addi	r14, r14, 13
	l.addi	r24, r24, 13
	l.addi	r4, r4, 13
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 100
	l.bf	.LBB11_13
	l.nop	0                       # in delay slot
# BB#17:                                # %for.end.6
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r1), r3
	l.movhi	r13, hi(.L.str.7)
	l.movhi	r23, hi(.L.str.7)
	l.movhi	r3, hi(.L.str.7)
	l.ori	r13, r13, lo(.L.str.7)
	l.ori	r23, r23, lo(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
    l.nop 200
	#l.jr	r9
    l.nop 1111
	l.nop	0                       # in delay slot
.Lfunc_end11:
	.size	main, .Lfunc_end11-main

	.hidden	bitstring
	.globl	bitstring
	.p2align	2
	.type	bitstring,@function
bitstring:                              # @bitstring
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -24
	l.addi	r21, r21, -24           # CFC
	l.addi	r1, r1, -24
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.andi	r14, r8, 3
	l.andi	r24, r31, 3
	l.andi	r4, r11, 3
	l.addi	r15, r0, 1
	l.addi	r25, r0, 1
	l.addi	r5, r0, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB12_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
.LBB12_2:                               # %entry
	l.srai	r14, r8, 2
	l.srai	r24, r31, 2
	l.srai	r4, r11, 2
	l.add	r14, r14, r8
	l.add	r24, r24, r31
	l.add	r4, r4, r11
	l.sub	r14, r16, r14
	l.sub	r24, r26, r24
	l.sub	r4, r6, r4
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.add	r15, r14, r15
	l.add	r25, r24, r25
	l.add	r5, r4, r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 1
	l.bf	.LBB12_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %for.body.preheader
	l.addi	r14, r0, 32
	l.addi	r24, r0, 32
	l.addi	r4, r0, 32
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-24(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-12(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-20(r2), r11
	l.jal	memset
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -20(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -12(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
.LBB12_4:                               # %while.cond.preheader
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltsi	r11, 1
	l.bf	.LBB12_10
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.body.preheader
	l.addi	r15, r8, -1
	l.addi	r25, r31, -1
	l.addi	r5, r11, -1
.LBB12_6:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
	l.srl	r15, r17, r16
	l.srl	r25, r27, r26
	l.srl	r5, r7, r6
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.ori	r15, r15, 48
	l.ori	r25, r25, 48
	l.ori	r5, r5, 48
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sb	0(r4), r5
	l.addi	r13, r14, 1
	l.addi	r23, r24, 1
	l.addi	r3, r4, 1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB12_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %while.body
                                        #   in Loop: Header=BB12_6 Depth=1
	l.andi	r15, r16, 3
	l.andi	r25, r26, 3
	l.andi	r5, r6, 3
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB12_9
	l.nop	0                       # in delay slot
.LBB12_8:                               # %while.cond.backedge
                                        #   in Loop: Header=BB12_6 Depth=1
	l.addi	r15, r16, -1
	l.addi	r25, r26, -1
	l.addi	r5, r6, -1
	l.addi	r14, r16, 1
	l.addi	r24, r26, 1
	l.addi	r4, r6, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 1
	l.bf	.LBB12_6
	l.nop	0                       # in delay slot
	l.j	.LBB12_10
	l.nop	0                       # in delay slot
.LBB12_9:                               # %if.then
                                        #   in Loop: Header=BB12_6 Depth=1
	l.addi	r15, r0, 32
	l.addi	r25, r0, 32
	l.addi	r5, r0, 32
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sb	1(r4), r5
	l.addi	r13, r14, 2
	l.addi	r23, r24, 2
	l.addi	r3, r4, 2
	l.j	.LBB12_8
	l.nop	0                       # in delay slot
.LBB12_10:                              # %while.end
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end12:
	.size	bitstring, .Lfunc_end12-bitstring

	.hidden	bstr_i
	.globl	bstr_i
	.p2align	2
	.type	bstr_i,@function
bstr_i:                                 # @bstr_i
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -24
	l.addi	r21, r21, -24           # CFC
	l.addi	r1, r1, -24
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB13_5
	l.nop	0                       # in delay slot
# BB#1:                                 # %land.lhs.true.preheader
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB13_5
	l.nop	0                       # in delay slot
# BB#2:                                 # %land.rhs.preheader
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r13, r13, 1
	l.addi	r23, r23, 1
	l.addi	r3, r3, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-20(r2), r3
	l.movhi	r13, hi(.L.str)
	l.movhi	r23, hi(.L.str)
	l.movhi	r3, hi(.L.str)
	l.ori	r13, r13, lo(.L.str)
	l.ori	r23, r23, lo(.L.str)
	l.ori	r3, r3, lo(.L.str)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-24(r2), r3
.LBB13_3:                               # %land.rhs
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-12(r2), r11
	l.slli	r13, r14, 24
	l.slli	r23, r24, 24
	l.slli	r3, r4, 24
	l.srai	r14, r13, 24
	l.srai	r24, r23, 24
	l.srai	r4, r3, 24
	l.addi	r15, r0, 3
	l.addi	r25, r0, 3
	l.addi	r5, r0, 3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -24(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	memchr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r20, r11, 0             # CFC
	l.addi	r28, r8, 0
	l.addi	r30, r31, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfeqi	r20, 0
	l.bf	.LBB13_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB13_3 Depth=1
	l.slli	r13, r8, 1
	l.slli	r23, r31, 1
	l.slli	r3, r11, 1
	l.andi	r14, r14, 1
	l.andi	r24, r24, 1
	l.andi	r4, r4, 1
	l.or	r8, r14, r13
	l.or	r31, r24, r23
	l.or	r11, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r13, r14, 1
	l.addi	r23, r24, 1
	l.addi	r3, r4, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r4, 0(r4)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-20(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB13_3
	l.nop	0                       # in delay slot
.LBB13_5:                               # %while.end
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end13:
	.size	bstr_i, .Lfunc_end13-bstr_i

	.hidden	__divsf3
	.globl	__divsf3
	.p2align	2
	.type	__divsf3,@function
__divsf3:                               # @__divsf3
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -28
	l.addi	r21, r21, -28           # CFC
	l.addi	r1, r1, -28
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.movhi	r15, 127
	l.movhi	r25, 127
	l.movhi	r5, 127
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r8, r13, r15
	l.and	r31, r23, r25
	l.and	r11, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.srli	r15, r13, 23
	l.srli	r25, r23, 23
	l.srli	r5, r3, 23
	l.andi	r13, r15, 255
	l.andi	r23, r25, 255
	l.andi	r3, r5, 255
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB14_3
	l.nop	0                       # in delay slot
.LBB14_1:                               # %entry
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 255
	l.bf	.LBB14_5
	l.nop	0                       # in delay slot
.LBB14_2:                               # %sw.default
	l.slli	r15, r8, 3
	l.slli	r25, r31, 3
	l.slli	r5, r11, 3
	l.movhi	r17, 1024
	l.movhi	r27, 1024
	l.movhi	r7, 1024
	l.or	r14, r15, r17
	l.or	r24, r25, r27
	l.or	r4, r5, r7
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.addi	r13, r13, -127
	l.addi	r23, r23, -127
	l.addi	r3, r3, -127
	l.j	.LBB14_8
	l.nop	0                       # in delay slot
.LBB14_3:                               # %sw.bb
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB14_8
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.else
	l.srli	r15, r8, 1
	l.srli	r25, r31, 1
	l.srli	r5, r11, 1
	l.or	r15, r8, r15
	l.or	r25, r31, r25
	l.or	r5, r11, r5
	l.srli	r17, r15, 2
	l.srli	r27, r25, 2
	l.srli	r7, r5, 2
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.srli	r17, r15, 4
	l.srli	r27, r25, 4
	l.srli	r7, r5, 4
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.srli	r17, r15, 8
	l.srli	r27, r25, 8
	l.srli	r7, r5, 8
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.srli	r17, r15, 16
	l.srli	r27, r25, 16
	l.srli	r7, r5, 16
	l.or	r15, r15, r17
	l.or	r25, r25, r27
	l.or	r5, r5, r7
	l.movhi	r17, 21845
	l.movhi	r27, 21845
	l.movhi	r7, 21845
	l.ori	r14, r17, 21845
	l.ori	r24, r27, 21845
	l.ori	r4, r7, 21845
	l.xori	r15, r15, -1
	l.xori	r25, r25, -1
	l.xori	r5, r5, -1
	l.srli	r17, r15, 1
	l.srli	r27, r25, 1
	l.srli	r7, r5, 1
	l.and	r17, r17, r14
	l.and	r27, r27, r24
	l.and	r7, r7, r4
	l.sub	r15, r15, r17
	l.sub	r25, r25, r27
	l.sub	r5, r5, r7
	l.movhi	r17, 13107
	l.movhi	r27, 13107
	l.movhi	r7, 13107
	l.ori	r17, r17, 13107
	l.ori	r27, r27, 13107
	l.ori	r7, r7, 13107
	l.and	r14, r15, r17
	l.and	r24, r25, r27
	l.and	r4, r5, r7
	l.srli	r15, r15, 2
	l.srli	r25, r25, 2
	l.srli	r5, r5, 2
	l.and	r15, r15, r17
	l.and	r25, r25, r27
	l.and	r5, r5, r7
	l.add	r15, r14, r15
	l.add	r25, r24, r25
	l.add	r5, r4, r5
	l.srli	r17, r15, 4
	l.srli	r27, r25, 4
	l.srli	r7, r5, 4
	l.add	r15, r15, r17
	l.add	r25, r25, r27
	l.add	r5, r5, r7
	l.movhi	r17, 3855
	l.movhi	r27, 3855
	l.movhi	r7, 3855
	l.ori	r17, r17, 3855
	l.ori	r27, r27, 3855
	l.ori	r7, r7, 3855
	l.and	r15, r15, r17
	l.and	r25, r25, r27
	l.and	r5, r5, r7
	l.movhi	r17, 257
	l.movhi	r27, 257
	l.movhi	r7, 257
	l.ori	r17, r17, 257
	l.ori	r27, r27, 257
	l.ori	r7, r7, 257
	l.mul	r15, r15, r17
	l.mul	r25, r25, r27
	l.mul	r5, r5, r7
	l.srli	r15, r15, 24
	l.srli	r25, r25, 24
	l.srli	r5, r5, 24
	l.addi	r17, r0, -118
	l.addi	r27, r0, -118
	l.addi	r7, r0, -118
	l.sub	r17, r17, r15
	l.sub	r27, r27, r25
	l.sub	r7, r7, r5
	l.add	r13, r17, r13
	l.add	r23, r27, r23
	l.add	r3, r7, r3
	l.addi	r15, r15, -5
	l.addi	r25, r25, -5
	l.addi	r5, r5, -5
	l.sll	r14, r8, r15
	l.sll	r24, r31, r25
	l.sll	r4, r11, r5
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.j	.LBB14_8
	l.nop	0                       # in delay slot
.LBB14_5:                               # %sw.bb25
	l.addi	r14, r0, 2
	l.addi	r24, r0, 2
	l.addi	r4, r0, 2
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB14_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %sw.bb25
	l.addi	r14, r0, 3
	l.addi	r24, r0, 3
	l.addi	r4, r0, 3
.LBB14_7:                               # %sw.bb25
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-8(r2), r4
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
.LBB14_8:                               # %do.body39
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.movhi	r15, 127
	l.movhi	r25, 127
	l.movhi	r5, 127
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.and	r15, r14, r15
	l.and	r25, r24, r25
	l.and	r5, r4, r5
	l.srli	r17, r14, 23
	l.srli	r27, r24, 23
	l.srli	r7, r4, 23
	l.andi	r8, r17, 255
	l.andi	r31, r27, 255
	l.andi	r11, r7, 255
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB14_11
	l.nop	0                       # in delay slot
.LBB14_9:                               # %do.body39
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 255
	l.bf	.LBB14_13
	l.nop	0                       # in delay slot
.LBB14_10:                              # %sw.default55
	l.slli	r15, r15, 3
	l.slli	r25, r25, 3
	l.slli	r5, r5, 3
	l.movhi	r17, 1024
	l.movhi	r27, 1024
	l.movhi	r7, 1024
	l.or	r17, r15, r17
	l.or	r27, r25, r27
	l.or	r7, r5, r7
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.addi	r8, r8, -127
	l.addi	r31, r31, -127
	l.addi	r11, r11, -127
	l.j	.LBB14_16
	l.nop	0                       # in delay slot
.LBB14_11:                              # %sw.bb62
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB14_16
	l.nop	0                       # in delay slot
# BB#12:                                # %if.else65
	l.srli	r17, r15, 1
	l.srli	r27, r25, 1
	l.srli	r7, r5, 1
	l.or	r14, r15, r17
	l.or	r24, r25, r27
	l.or	r4, r5, r7
	l.srli	r17, r14, 2
	l.srli	r27, r24, 2
	l.srli	r7, r4, 2
	l.or	r14, r14, r17
	l.or	r24, r24, r27
	l.or	r4, r4, r7
	l.srli	r17, r14, 4
	l.srli	r27, r24, 4
	l.srli	r7, r4, 4
	l.or	r14, r14, r17
	l.or	r24, r24, r27
	l.or	r4, r4, r7
	l.srli	r17, r14, 8
	l.srli	r27, r24, 8
	l.srli	r7, r4, 8
	l.or	r14, r14, r17
	l.or	r24, r24, r27
	l.or	r4, r4, r7
	l.srli	r17, r14, 16
	l.srli	r27, r24, 16
	l.srli	r7, r4, 16
	l.or	r14, r14, r17
	l.or	r24, r24, r27
	l.or	r4, r4, r7
	l.movhi	r17, 21845
	l.movhi	r27, 21845
	l.movhi	r7, 21845
	l.ori	r16, r17, 21845
	l.ori	r26, r27, 21845
	l.ori	r6, r7, 21845
	l.xori	r14, r14, -1
	l.xori	r24, r24, -1
	l.xori	r4, r4, -1
	l.srli	r17, r14, 1
	l.srli	r27, r24, 1
	l.srli	r7, r4, 1
	l.and	r17, r17, r16
	l.and	r27, r27, r26
	l.and	r7, r7, r6
	l.sub	r14, r14, r17
	l.sub	r24, r24, r27
	l.sub	r4, r4, r7
	l.movhi	r17, 13107
	l.movhi	r27, 13107
	l.movhi	r7, 13107
	l.ori	r17, r17, 13107
	l.ori	r27, r27, 13107
	l.ori	r7, r7, 13107
	l.and	r16, r14, r17
	l.and	r26, r24, r27
	l.and	r6, r4, r7
	l.srli	r14, r14, 2
	l.srli	r24, r24, 2
	l.srli	r4, r4, 2
	l.and	r14, r14, r17
	l.and	r24, r24, r27
	l.and	r4, r4, r7
	l.add	r14, r16, r14
	l.add	r24, r26, r24
	l.add	r4, r6, r4
	l.srli	r17, r14, 4
	l.srli	r27, r24, 4
	l.srli	r7, r4, 4
	l.add	r14, r14, r17
	l.add	r24, r24, r27
	l.add	r4, r4, r7
	l.movhi	r17, 3855
	l.movhi	r27, 3855
	l.movhi	r7, 3855
	l.ori	r17, r17, 3855
	l.ori	r27, r27, 3855
	l.ori	r7, r7, 3855
	l.and	r14, r14, r17
	l.and	r24, r24, r27
	l.and	r4, r4, r7
	l.movhi	r17, 257
	l.movhi	r27, 257
	l.movhi	r7, 257
	l.ori	r17, r17, 257
	l.ori	r27, r27, 257
	l.ori	r7, r7, 257
	l.mul	r14, r14, r17
	l.mul	r24, r24, r27
	l.mul	r4, r4, r7
	l.srli	r14, r14, 24
	l.srli	r24, r24, 24
	l.srli	r4, r4, 24
	l.addi	r17, r0, -118
	l.addi	r27, r0, -118
	l.addi	r7, r0, -118
	l.sub	r17, r17, r14
	l.sub	r27, r27, r24
	l.sub	r7, r7, r4
	l.add	r8, r17, r8
	l.add	r31, r27, r31
	l.add	r11, r7, r11
	l.addi	r14, r14, -5
	l.addi	r24, r24, -5
	l.addi	r4, r4, -5
	l.sll	r17, r15, r14
	l.sll	r27, r25, r24
	l.sll	r7, r5, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.j	.LBB14_16
	l.nop	0                       # in delay slot
.LBB14_13:                              # %sw.bb79
	l.addi	r16, r0, 2
	l.addi	r26, r0, 2
	l.addi	r6, r0, 2
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB14_15
	l.nop	0                       # in delay slot
# BB#14:                                # %sw.bb79
	l.addi	r16, r0, 3
	l.addi	r26, r0, 3
	l.addi	r6, r0, 3
.LBB14_15:                              # %sw.bb79
	l.ori	r17, r15, 0
	l.ori	r27, r25, 0
	l.ori	r7, r5, 0
.LBB14_16:                              # %do.body98
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-24(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -16(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.srli	r17, r15, 31
	l.srli	r27, r25, 31
	l.srli	r7, r5, 31
	l.sub	r13, r13, r8
	l.sub	r23, r23, r31
	l.sub	r3, r3, r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.slli	r14, r14, 2
	l.slli	r24, r24, 2
	l.slli	r4, r4, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-28(r2), r6
	l.or	r14, r16, r14
	l.or	r24, r26, r24
	l.or	r4, r6, r4
	l.andi	r16, r14, 15
	l.andi	r26, r24, 15
	l.andi	r6, r4, 15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtui	r6, 15
	l.bf	.LBB14_42
	l.nop	0                       # in delay slot
.LBB14_17:                              # %do.body98
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.srli	r15, r13, 31
	l.srli	r25, r23, 31
	l.srli	r5, r3, 31
	l.xor	r8, r15, r17
	l.xor	r31, r25, r27
	l.xor	r11, r5, r7
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r14, 64
	l.movhi	r24, 64
	l.movhi	r4, 64
	l.movhi	r13, hi(.LJTI14_0)
	l.movhi	r23, hi(.LJTI14_0)
	l.movhi	r3, hi(.LJTI14_0)
	l.ori	r13, r13, lo(.LJTI14_0)
	l.ori	r23, r23, lo(.LJTI14_0)
	l.ori	r3, r3, lo(.LJTI14_0)
	l.slli	r16, r16, 2
	l.slli	r26, r26, 2
	l.slli	r6, r6, 2
	l.add	r13, r16, r13
	l.add	r23, r26, r23
	l.add	r3, r6, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB14_41:                              # %sw.bb159
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -28(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-8(r2), r3
	l.ori	r17, r15, 0
	l.ori	r27, r25, 0
	l.ori	r7, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -24(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-20(r2), r3
.LBB14_42:                              # %do.body169
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -8(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -20(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.ori	r8, r17, 0
	l.ori	r31, r27, 0
	l.ori	r11, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -16(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 3
	l.bf	.LBB14_64
	l.nop	0                       # in delay slot
.LBB14_43:                              # %do.body169
	l.movhi	r13, hi(.LJTI14_1)
	l.movhi	r23, hi(.LJTI14_1)
	l.movhi	r3, hi(.LJTI14_1)
	l.ori	r13, r13, lo(.LJTI14_1)
	l.ori	r23, r23, lo(.LJTI14_1)
	l.ori	r3, r3, lo(.LJTI14_1)
	l.slli	r14, r14, 2
	l.slli	r24, r24, 2
	l.slli	r4, r4, 2
	l.add	r13, r14, r13
	l.add	r23, r24, r23
	l.add	r3, r4, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.ori	r16, r14, 0
	l.ori	r26, r24, 0
	l.ori	r6, r4, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB14_62:                              # %sw.bb269
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.j	.LBB14_64
	l.nop	0                       # in delay slot
.LBB14_63:                              # %sw.bb270
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.addi	r6, r0, 255
	l.j	.LBB14_64
	l.nop	0                       # in delay slot
.LBB14_18:                              # %sw.bb102
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-28(r2), r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -24(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r14, r13, 5
	l.slli	r24, r23, 5
	l.slli	r4, r3, 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -20(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.slli	r17, r13, 5
	l.slli	r27, r23, 5
	l.slli	r7, r3, 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfltu	r7, r4
	l.bf	.LBB14_20
	l.nop	0                       # in delay slot
# BB#19:                                # %if.then113
	l.sub	r17, r17, r14
	l.sub	r27, r27, r24
	l.sub	r7, r7, r4
	l.addi	r13, r0, 26
	l.addi	r23, r0, 26
	l.addi	r3, r0, 26
	l.addi	r15, r0, 1
	l.addi	r25, r0, 1
	l.addi	r5, r0, 1
	l.j	.LBB14_21
	l.nop	0                       # in delay slot
.LBB14_33:                              # %do.body148
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.ori	r15, r17, 0
	l.ori	r25, r27, 0
	l.ori	r5, r7, 0
	l.movhi	r14, 64
	l.movhi	r24, 64
	l.movhi	r4, 64
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -24(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB14_35
	l.nop	0                       # in delay slot
# BB#34:                                # %do.body148
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB14_35:                              # %do.body148
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -20(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.and	r13, r17, r14
	l.and	r23, r27, r24
	l.and	r3, r7, r4
	l.srli	r13, r13, 22
	l.srli	r23, r23, 22
	l.srli	r3, r3, 22
	l.and	r14, r13, r16
	l.and	r24, r23, r26
	l.and	r4, r3, r6
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB14_37
	l.nop	0                       # in delay slot
# BB#36:                                # %do.body148
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-24(r2), r7
.LBB14_37:                              # %do.body148
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB14_39
	l.nop	0                       # in delay slot
# BB#38:                                # %do.body148
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
.LBB14_39:                              # %do.body148
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-12(r2), r11
.LBB14_40:                              # %sw.bb271
	l.movhi	r13, 64
	l.movhi	r23, 64
	l.movhi	r3, 64
	l.or	r15, r14, r13
	l.or	r25, r24, r23
	l.or	r5, r4, r3
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.addi	r6, r0, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB14_64:                              # %do.body279
	l.movhi	r13, 127
	l.movhi	r23, 127
	l.movhi	r3, 127
	l.ori	r13, r13, 65535
	l.ori	r23, r23, 65535
	l.ori	r3, r3, 65535
	l.and	r13, r15, r13
	l.and	r23, r25, r23
	l.and	r3, r5, r3
	l.slli	r14, r16, 23
	l.slli	r24, r26, 23
	l.slli	r4, r6, 23
	l.movhi	r15, 32640
	l.movhi	r25, 32640
	l.movhi	r5, 32640
	l.and	r14, r14, r15
	l.and	r24, r24, r25
	l.and	r4, r4, r5
	l.slli	r15, r8, 31
	l.slli	r25, r31, 31
	l.slli	r5, r11, 31
	l.or	r14, r14, r15
	l.or	r24, r24, r25
	l.or	r4, r4, r5
	l.or	r8, r14, r13
	l.or	r31, r24, r23
	l.or	r11, r4, r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB14_20:                              # %if.else116
	l.addi	r13, r0, 27
	l.addi	r23, r0, 27
	l.addi	r3, r0, 27
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -16(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-16(r2), r4
.LBB14_21:                              # %do.body119.preheader
	l.addi	r8, r13, 1
	l.addi	r31, r23, 1
	l.addi	r11, r3, 1
.LBB14_22:                              # %do.body119
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-8(r2), r5
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, -1
	l.ori	r14, r16, 0
	l.ori	r24, r26, 0
	l.ori	r4, r6, 0
	l.bf	.LBB14_24
	l.nop	0                       # in delay slot
# BB#23:                                # %do.body119
                                        #   in Loop: Header=BB14_22 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB14_24:                              # %do.body119
                                        #   in Loop: Header=BB14_22 Depth=1
	l.slli	r17, r17, 1
	l.slli	r27, r27, 1
	l.slli	r7, r7, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -12(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltu	r7, r5
	l.bf	.LBB14_26
	l.nop	0                       # in delay slot
# BB#25:                                # %do.body119
                                        #   in Loop: Header=BB14_22 Depth=1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB14_26:                              # %do.body119
                                        #   in Loop: Header=BB14_22 Depth=1
	l.and	r14, r14, r16
	l.and	r24, r24, r26
	l.and	r4, r4, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -8(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB14_28
	l.nop	0                       # in delay slot
# BB#27:                                # %do.body119
                                        #   in Loop: Header=BB14_22 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB14_28:                              # %do.body119
                                        #   in Loop: Header=BB14_22 Depth=1
	l.sub	r17, r17, r13
	l.sub	r27, r27, r23
	l.sub	r7, r7, r3
	l.andi	r13, r14, 1
	l.andi	r23, r24, 1
	l.andi	r3, r4, 1
	l.slli	r14, r15, 1
	l.slli	r24, r25, 1
	l.slli	r4, r5, 1
	l.or	r13, r13, r14
	l.or	r23, r23, r24
	l.or	r3, r3, r4
	l.xori	r15, r13, 1
	l.xori	r25, r23, 1
	l.xori	r5, r3, 1
	l.addi	r8, r8, -1
	l.addi	r31, r31, -1
	l.addi	r11, r11, -1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgtsi	r11, 1
	l.bf	.LBB14_22
	l.nop	0                       # in delay slot
# BB#29:                                # %do.body169.thread439
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB14_31
	l.nop	0                       # in delay slot
# BB#30:                                # %do.body169.thread439
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB14_31:                              # %do.body169.thread439
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-20(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -28(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
.LBB14_32:                              # %sw.bb170
	l.ori	r8, r16, 0
	l.ori	r31, r26, 0
	l.ori	r11, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -16(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfltsi	r7, -126
	l.bf	.LBB14_52
	l.nop	0                       # in delay slot
# BB#44:                                # %do.body175
	l.andi	r13, r14, 15
	l.andi	r23, r24, 15
	l.andi	r3, r4, 15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 4
	l.ori	r16, r14, 0
	l.ori	r26, r24, 0
	l.ori	r6, r4, 0
	l.bf	.LBB14_46
	l.nop	0                       # in delay slot
# BB#45:                                # %do.body175
	l.addi	r16, r14, 4
	l.addi	r26, r24, 4
	l.addi	r6, r4, 4
.LBB14_46:                              # %do.body175
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.andi	r3, r4, 7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB14_48
	l.nop	0                       # in delay slot
# BB#47:                                # %do.body175
	l.ori	r14, r16, 0
	l.ori	r24, r26, 0
	l.ori	r4, r6, 0
.LBB14_48:                              # %do.body175
	l.srli	r13, r14, 27
	l.srli	r23, r24, 27
	l.srli	r3, r4, 27
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.add	r13, r17, r13
	l.add	r23, r27, r23
	l.add	r3, r7, r3
	l.addi	r17, r13, 127
	l.addi	r27, r23, 127
	l.addi	r7, r3, 127
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, 254
	l.bf	.LBB14_50
	l.nop	0                       # in delay slot
# BB#49:                                # %do.body175
	l.movhi	r13, 7935
	l.movhi	r23, 7935
	l.movhi	r3, 7935
	l.ori	r13, r13, 65535
	l.ori	r23, r23, 65535
	l.ori	r3, r3, 65535
	l.srli	r14, r14, 3
	l.srli	r24, r24, 3
	l.srli	r4, r4, 3
	l.and	r15, r14, r13
	l.and	r25, r24, r23
	l.and	r5, r4, r3
.LBB14_50:                              # %do.body175
	l.addi	r16, r0, 255
	l.addi	r26, r0, 255
	l.addi	r6, r0, 255
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, 254
	l.bf	.LBB14_64
	l.nop	0                       # in delay slot
# BB#51:                                # %do.body175
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.j	.LBB14_64
	l.nop	0                       # in delay slot
.LBB14_52:                              # %if.else205
	l.addi	r13, r0, -126
	l.addi	r23, r0, -126
	l.addi	r3, r0, -126
	l.sub	r13, r13, r17
	l.sub	r23, r23, r27
	l.sub	r3, r3, r7
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 27
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.bf	.LBB14_64
	l.nop	0                       # in delay slot
# BB#53:                                # %if.then210
	l.ori	r16, r13, 0
	l.ori	r26, r23, 0
	l.ori	r6, r3, 0
	l.addi	r13, r0, -127
	l.addi	r23, r0, -127
	l.addi	r3, r0, -127
	l.sub	r13, r13, r17
	l.sub	r23, r23, r27
	l.sub	r3, r3, r7
	l.addi	r15, r0, 31
	l.addi	r25, r0, 31
	l.addi	r5, r0, 31
	l.sub	r13, r15, r13
	l.sub	r23, r25, r23
	l.sub	r3, r5, r3
	l.srl	r15, r14, r16
	l.srl	r25, r24, r26
	l.srl	r5, r4, r6
	l.sll	r13, r14, r13
	l.sll	r23, r24, r23
	l.sll	r3, r4, r3
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB14_55
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then210
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB14_55:                              # %if.then210
	l.andi	r13, r14, 1
	l.andi	r23, r24, 1
	l.andi	r3, r4, 1
	l.or	r14, r13, r15
	l.or	r24, r23, r25
	l.or	r4, r3, r5
	l.andi	r13, r14, 15
	l.andi	r23, r24, 15
	l.andi	r3, r4, 15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 4
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.bf	.LBB14_57
	l.nop	0                       # in delay slot
# BB#56:                                # %if.then210
	l.addi	r15, r14, 4
	l.addi	r25, r24, 4
	l.addi	r5, r4, 4
.LBB14_57:                              # %if.then210
	l.andi	r13, r14, 7
	l.andi	r23, r24, 7
	l.andi	r3, r4, 7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB14_59
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then210
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
.LBB14_59:                              # %if.then210
	l.movhi	r13, 1024
	l.movhi	r23, 1024
	l.movhi	r3, 1024
	l.and	r13, r14, r13
	l.and	r23, r24, r23
	l.and	r3, r4, r3
	l.srli	r15, r14, 3
	l.srli	r25, r24, 3
	l.srli	r5, r4, 3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB14_61
	l.nop	0                       # in delay slot
# BB#60:                                # %if.then210
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
.LBB14_61:                              # %if.then210
	l.srli	r16, r13, 26
	l.srli	r26, r23, 26
	l.srli	r6, r3, 26
	l.j	.LBB14_64
	l.nop	0                       # in delay slot
.Lfunc_end14:
	.size	__divsf3, .Lfunc_end14-__divsf3
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI14_0:
	.long	.LBB14_18
	.long	.LBB14_63
	.long	.LBB14_62
	.long	.LBB14_41
	.long	.LBB14_62
	.long	.LBB14_40
	.long	.LBB14_62
	.long	.LBB14_41
	.long	.LBB14_63
	.long	.LBB14_63
	.long	.LBB14_40
	.long	.LBB14_41
	.long	.LBB14_42
	.long	.LBB14_42
	.long	.LBB14_42
	.long	.LBB14_33
.LJTI14_1:
	.long	.LBB14_32
	.long	.LBB14_62
	.long	.LBB14_63
	.long	.LBB14_40

	.text
	.hidden	__fixsfsi
	.globl	__fixsfsi
	.p2align	2
	.type	__fixsfsi,@function
__fixsfsi:                              # @__fixsfsi
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.srli	r14, r13, 23
	l.srli	r24, r23, 23
	l.srli	r4, r3, 23
	l.andi	r15, r14, 255
	l.andi	r25, r24, 255
	l.andi	r5, r4, 255
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtui	r5, 126
	l.bf	.LBB15_2
	l.nop	0                       # in delay slot
.LBB15_1:                               # %if.then
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB15_2:                               # %if.else16
	l.srli	r14, r13, 31
	l.srli	r24, r23, 31
	l.srli	r4, r3, 31
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 158
	l.bf	.LBB15_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then18
	l.xori	r13, r14, 1
	l.xori	r23, r24, 1
	l.xori	r3, r4, 1
	l.movhi	r14, 32768
	l.movhi	r24, 32768
	l.movhi	r4, 32768
	l.sub	r8, r14, r13
	l.sub	r31, r24, r23
	l.sub	r11, r4, r3
	l.j	.LBB15_1
	l.nop	0                       # in delay slot
.LBB15_4:                               # %if.else31
	l.movhi	r16, 127
	l.movhi	r26, 127
	l.movhi	r6, 127
	l.ori	r16, r16, 65535
	l.ori	r26, r26, 65535
	l.ori	r6, r6, 65535
	l.and	r13, r13, r16
	l.and	r23, r23, r26
	l.and	r3, r3, r6
	l.movhi	r16, 128
	l.movhi	r26, 128
	l.movhi	r6, 128
	l.or	r13, r13, r16
	l.or	r23, r23, r26
	l.or	r3, r3, r6
	l.addi	r16, r15, -150
	l.addi	r26, r25, -150
	l.addi	r6, r5, -150
	l.sll	r8, r13, r16
	l.sll	r31, r23, r26
	l.sll	r11, r3, r6
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtui	r5, 149
	l.bf	.LBB15_6
	l.nop	0                       # in delay slot
# BB#5:                                 # %if.else31
	l.addi	r16, r0, 150
	l.addi	r26, r0, 150
	l.addi	r6, r0, 150
	l.sub	r15, r16, r15
	l.sub	r25, r26, r25
	l.sub	r5, r6, r5
	l.srl	r8, r13, r15
	l.srl	r31, r23, r25
	l.srl	r11, r3, r5
.LBB15_6:                               # %if.else31
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB15_1
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.else31
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sub	r8, r13, r8
	l.sub	r31, r23, r31
	l.sub	r11, r3, r11
	l.j	.LBB15_1
	l.nop	0                       # in delay slot
.Lfunc_end15:
	.size	__fixsfsi, .Lfunc_end15-__fixsfsi

	.hidden	__floatsisf
	.globl	__floatsisf
	.p2align	2
	.type	__floatsisf,@function
__floatsisf:                            # @__floatsisf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.bf	.LBB16_23
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.srai	r14, r13, 31
	l.srai	r24, r23, 31
	l.srai	r4, r3, 31
	l.add	r15, r13, r14
	l.add	r25, r23, r24
	l.add	r5, r3, r4
	l.xor	r16, r15, r14
	l.xor	r26, r25, r24
	l.xor	r6, r5, r4
	l.srli	r14, r16, 1
	l.srli	r24, r26, 1
	l.srli	r4, r6, 1
	l.or	r14, r16, r14
	l.or	r24, r26, r24
	l.or	r4, r6, r4
	l.srli	r15, r14, 2
	l.srli	r25, r24, 2
	l.srli	r5, r4, 2
	l.or	r15, r14, r15
	l.or	r25, r24, r25
	l.or	r5, r4, r5
	l.movhi	r14, 32768
	l.movhi	r24, 32768
	l.movhi	r4, 32768
	l.and	r14, r13, r14
	l.and	r24, r23, r24
	l.and	r4, r3, r4
	l.srli	r13, r15, 4
	l.srli	r23, r25, 4
	l.srli	r3, r5, 4
	l.or	r13, r15, r13
	l.or	r23, r25, r23
	l.or	r3, r5, r3
	l.srli	r15, r13, 8
	l.srli	r25, r23, 8
	l.srli	r5, r3, 8
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.srli	r15, r13, 16
	l.srli	r25, r23, 16
	l.srli	r5, r3, 16
	l.or	r13, r13, r15
	l.or	r23, r23, r25
	l.or	r3, r3, r5
	l.movhi	r15, 21845
	l.movhi	r25, 21845
	l.movhi	r5, 21845
	l.ori	r15, r15, 21845
	l.ori	r25, r25, 21845
	l.ori	r5, r5, 21845
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.srli	r17, r13, 1
	l.srli	r27, r23, 1
	l.srli	r7, r3, 1
	l.and	r15, r17, r15
	l.and	r25, r27, r25
	l.and	r5, r7, r5
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.movhi	r15, 13107
	l.movhi	r25, 13107
	l.movhi	r5, 13107
	l.ori	r15, r15, 13107
	l.ori	r25, r25, 13107
	l.ori	r5, r5, 13107
	l.and	r17, r13, r15
	l.and	r27, r23, r25
	l.and	r7, r3, r5
	l.srli	r13, r13, 2
	l.srli	r23, r23, 2
	l.srli	r3, r3, 2
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.add	r13, r17, r13
	l.add	r23, r27, r23
	l.add	r3, r7, r3
	l.srli	r15, r13, 4
	l.srli	r25, r23, 4
	l.srli	r5, r3, 4
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.movhi	r15, 3855
	l.movhi	r25, 3855
	l.movhi	r5, 3855
	l.ori	r15, r15, 3855
	l.ori	r25, r25, 3855
	l.ori	r5, r5, 3855
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.movhi	r15, 257
	l.movhi	r25, 257
	l.movhi	r5, 257
	l.ori	r15, r15, 257
	l.ori	r25, r25, 257
	l.ori	r5, r5, 257
	l.mul	r13, r13, r15
	l.mul	r23, r23, r25
	l.mul	r3, r3, r5
	l.srli	r13, r13, 24
	l.srli	r23, r23, 24
	l.srli	r3, r3, 24
	l.addi	r15, r0, 158
	l.addi	r25, r0, 158
	l.addi	r5, r0, 158
	l.sub	r15, r15, r13
	l.sub	r25, r25, r23
	l.sub	r5, r5, r3
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtui	r5, 150
	l.bf	.LBB16_5
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then9
	l.addi	r13, r0, 150
	l.addi	r23, r0, 150
	l.addi	r3, r0, 150
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 0
	l.bf	.LBB16_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then9
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB16_4:                               # %if.then9
	l.sll	r16, r16, r13
	l.sll	r26, r26, r23
	l.sll	r6, r6, r3
	l.j	.LBB16_23
	l.nop	0                       # in delay slot
.LBB16_5:                               # %if.else
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltui	r5, 154
	l.bf	.LBB16_9
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then21
	l.addi	r13, r0, 185
	l.addi	r23, r0, 185
	l.addi	r3, r0, 185
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.sll	r17, r16, r13
	l.sll	r27, r26, r23
	l.sll	r7, r6, r3
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB16_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then21
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB16_8:                               # %if.then21
	l.addi	r17, r15, -153
	l.addi	r27, r25, -153
	l.addi	r7, r5, -153
	l.srl	r16, r16, r17
	l.srl	r26, r26, r27
	l.srl	r6, r6, r7
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.or	r16, r13, r16
	l.or	r26, r23, r26
	l.or	r6, r3, r6
.LBB16_9:                               # %if.end31
	l.addi	r13, r0, 153
	l.addi	r23, r0, 153
	l.addi	r3, r0, 153
	l.sub	r13, r13, r15
	l.sub	r23, r23, r25
	l.sub	r3, r3, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 0
	l.bf	.LBB16_11
	l.nop	0                       # in delay slot
# BB#10:                                # %if.end31
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB16_11:                              # %if.end31
	l.sll	r16, r16, r13
	l.sll	r26, r26, r23
	l.sll	r6, r6, r3
	l.movhi	r13, 64511
	l.movhi	r23, 64511
	l.movhi	r3, 64511
	l.ori	r13, r13, 65535
	l.ori	r23, r23, 65535
	l.ori	r3, r3, 65535
	l.and	r13, r16, r13
	l.and	r23, r26, r23
	l.and	r3, r6, r3
	l.andi	r17, r16, 15
	l.andi	r27, r26, 15
	l.andi	r7, r6, 15
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 4
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.bf	.LBB16_13
	l.nop	0                       # in delay slot
# BB#12:                                # %if.end31
	l.addi	r17, r13, 4
	l.addi	r27, r23, 4
	l.addi	r7, r3, 4
.LBB16_13:                              # %if.end31
	l.andi	r16, r16, 7
	l.andi	r26, r26, 7
	l.andi	r6, r6, 7
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB16_15
	l.nop	0                       # in delay slot
# BB#14:                                # %if.end31
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB16_15:                              # %if.end31
	l.movhi	r16, 1024
	l.movhi	r26, 1024
	l.movhi	r6, 1024
	l.and	r16, r13, r16
	l.and	r26, r23, r26
	l.and	r6, r3, r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB16_19
	l.nop	0                       # in delay slot
# BB#16:                                # %if.then73
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 255
	l.bf	.LBB16_18
	l.nop	0                       # in delay slot
# BB#17:                                # %if.then73
	l.movhi	r16, 64511
	l.movhi	r26, 64511
	l.movhi	r6, 64511
	l.ori	r16, r16, 65535
	l.ori	r26, r26, 65535
	l.ori	r6, r6, 65535
	l.and	r16, r13, r16
	l.and	r26, r23, r26
	l.and	r6, r3, r6
.LBB16_18:                              # %if.then73
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
.LBB16_19:                              # %if.end82
	l.srli	r16, r13, 3
	l.srli	r26, r23, 3
	l.srli	r6, r3, 3
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.bf	.LBB16_21
	l.nop	0                       # in delay slot
# BB#20:                                # %if.end82
	l.movhi	r13, 64
	l.movhi	r23, 64
	l.movhi	r3, 64
	l.or	r13, r16, r13
	l.or	r23, r26, r23
	l.or	r3, r6, r3
.LBB16_21:                              # %if.end82
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 255
	l.bf	.LBB16_23
	l.nop	0                       # in delay slot
# BB#22:                                # %if.end82
	l.ori	r16, r13, 0
	l.ori	r26, r23, 0
	l.ori	r6, r3, 0
.LBB16_23:                              # %do.body101
	l.slli	r13, r15, 23
	l.slli	r23, r25, 23
	l.slli	r3, r5, 23
	l.movhi	r15, 32640
	l.movhi	r25, 32640
	l.movhi	r5, 32640
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.movhi	r15, 127
	l.movhi	r25, 127
	l.movhi	r5, 127
	l.ori	r15, r15, 65535
	l.ori	r25, r25, 65535
	l.ori	r5, r5, 65535
	l.and	r15, r16, r15
	l.and	r25, r26, r25
	l.and	r5, r6, r5
	l.or	r14, r14, r15
	l.or	r24, r24, r25
	l.or	r4, r4, r5
	l.or	r8, r14, r13
	l.or	r31, r24, r23
	l.or	r11, r4, r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end16:
	.size	__floatsisf, .Lfunc_end16-__floatsisf

	.hidden	int_init
	.globl	int_init
	.p2align	2
	.type	int_init,@function
int_init:                               # @int_init
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -8
	l.addi	r21, r21, -8            # CFC
	l.addi	r1, r1, -8
	l.movhi	r13, hi(int_handlers)
	l.movhi	r23, hi(int_handlers)
	l.movhi	r3, hi(int_handlers)
	l.ori	r13, r13, lo(int_handlers)
	l.ori	r23, r23, lo(int_handlers)
	l.ori	r3, r3, lo(int_handlers)
	l.addi	r15, r0, 256
	l.addi	r25, r0, 256
	l.addi	r5, r0, 256
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.jal	memset
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end17:
	.size	int_init, .Lfunc_end17-int_init

	.hidden	int_add
	.globl	int_add
	.p2align	2
	.type	int_add,@function
int_add:                                # @int_add
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtui	r3, 31
	l.bf	.LBB18_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.movhi	r16, hi(int_handlers)
	l.movhi	r26, hi(int_handlers)
	l.movhi	r6, hi(int_handlers)
	l.ori	r16, r16, lo(int_handlers)
	l.ori	r26, r26, lo(int_handlers)
	l.ori	r6, r6, lo(int_handlers)
	l.slli	r17, r13, 3
	l.slli	r27, r23, 3
	l.slli	r7, r3, 3
	l.add	r16, r17, r16
	l.add	r26, r27, r26
	l.add	r6, r7, r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r6), r4
	l.movhi	r14, hi(int_handlers+4)
	l.movhi	r24, hi(int_handlers+4)
	l.movhi	r4, hi(int_handlers+4)
	l.ori	r14, r14, lo(int_handlers+4)
	l.ori	r24, r24, lo(int_handlers+4)
	l.ori	r4, r4, lo(int_handlers+4)
	l.add	r14, r17, r14
	l.add	r24, r27, r24
	l.add	r4, r7, r4
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	0(r4), r5
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sll	r13, r14, r13
	l.sll	r23, r24, r23
	l.sll	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.addi	r13, r0, 18432
	l.addi	r23, r0, 18432
	l.addi	r3, r0, 18432
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.or	r14, r8, r13
	l.or	r24, r31, r23
	l.or	r4, r11, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
.LBB18_2:                               # %return
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end18:
	.size	int_add, .Lfunc_end18-int_add

	.hidden	int_disable
	.globl	int_disable
	.p2align	2
	.type	int_disable,@function
int_disable:                            # @int_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtui	r3, 31
	l.bf	.LBB19_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sll	r13, r14, r13
	l.sll	r23, r24, r23
	l.sll	r3, r4, r3
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.addi	r13, r0, 18432
	l.addi	r23, r0, 18432
	l.addi	r3, r0, 18432
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.and	r14, r8, r13
	l.and	r24, r31, r23
	l.and	r4, r11, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
.LBB19_2:                               # %return
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end19:
	.size	int_disable, .Lfunc_end19-int_disable

	.hidden	int_enable
	.globl	int_enable
	.p2align	2
	.type	int_enable,@function
int_enable:                             # @int_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtui	r3, 31
	l.bf	.LBB20_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.sll	r13, r14, r13
	l.sll	r23, r24, r23
	l.sll	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.addi	r13, r0, 18432
	l.addi	r23, r0, 18432
	l.addi	r3, r0, 18432
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.or	r14, r8, r13
	l.or	r24, r31, r23
	l.or	r4, r11, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
.LBB20_2:                               # %return
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end20:
	.size	int_enable, .Lfunc_end20-int_enable

	.hidden	int_main
	.globl	int_main
	.p2align	2
	.type	int_main,@function
int_main:                               # @int_main
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -28
	l.addi	r21, r21, -28           # CFC
	l.addi	r1, r1, -28
	l.addi	r13, r0, 18434
	l.addi	r23, r0, 18434
	l.addi	r3, r0, 18434
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-28(r2), r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -28(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.movhi	r13, hi(int_handlers+4)
	l.movhi	r23, hi(int_handlers+4)
	l.movhi	r3, hi(int_handlers+4)
	l.ori	r17, r13, lo(int_handlers+4)
	l.ori	r27, r23, lo(int_handlers+4)
	l.ori	r7, r3, lo(int_handlers+4)
.LBB21_1:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sll	r8, r13, r16
	l.sll	r31, r23, r26
	l.sll	r11, r3, r6
	l.and	r13, r8, r15
	l.and	r23, r31, r25
	l.and	r3, r11, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB21_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB21_1 Depth=1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.lwz	r4, -4(r7)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB21_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB21_1 Depth=1
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.lwz	r3, 0(r7)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-16(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-20(r2), r11
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.jalr	r4
	l.nop	0                       # in delay slot
	l.addi	r13, r0, 18434
	l.addi	r23, r0, 18434
	l.addi	r3, r0, 18434
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-24(r2), r3
	l.jal	mfspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -20(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.xori	r13, r13, -1
	l.xori	r23, r23, -1
	l.xori	r3, r3, -1
	l.and	r14, r8, r13
	l.and	r24, r31, r23
	l.and	r4, r11, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -24(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -16(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -12(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -28(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB21_4:                               # %if.end
                                        #   in Loop: Header=BB21_1 Depth=1
	l.addi	r17, r17, 8
	l.addi	r27, r27, 8
	l.addi	r7, r7, 8
	l.addi	r16, r16, 1
	l.addi	r26, r26, 1
	l.addi	r6, r6, 1
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 32
	l.bf	.LBB21_1
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.end
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end21:
	.size	int_main, .Lfunc_end21-int_main

	.hidden	int_clear_all_pending
	.globl	int_clear_all_pending
	.p2align	2
	.type	int_clear_all_pending,@function
int_clear_all_pending:                  # @int_clear_all_pending
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -8
	l.addi	r21, r21, -8            # CFC
	l.addi	r1, r1, -8
	l.addi	r13, r0, 18434
	l.addi	r23, r0, 18434
	l.addi	r3, r0, 18434
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.jal	mtspr
	l.nop	0                       # in delay slot
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end22:
	.size	int_clear_all_pending, .Lfunc_end22-int_clear_all_pending

	.hidden	memcpy
	.globl	memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 # @memcpy
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB23_3
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.body.preheader
	l.ori	r16, r13, 0
	l.ori	r26, r23, 0
	l.ori	r6, r3, 0
.LBB23_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r7, 0(r4)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	0(r6), r7
	l.addi	r16, r16, 1
	l.addi	r26, r26, 1
	l.addi	r6, r6, 1
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.bf	.LBB23_2
	l.nop	0                       # in delay slot
.LBB23_3:                               # %while.end
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end23:
	.size	memcpy, .Lfunc_end23-memcpy

	.hidden	strlen
	.globl	strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 # @strlen
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.addi	r14, r13, -1
	l.addi	r24, r23, -1
	l.addi	r4, r3, -1
.LBB24_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r15, r14, 1
	l.addi	r25, r24, 1
	l.addi	r5, r4, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r4, 1(r4)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
	l.bf	.LBB24_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.end
	l.sub	r8, r15, r13
	l.sub	r31, r25, r23
	l.sub	r11, r5, r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end24:
	.size	strlen, .Lfunc_end24-strlen

	.hidden	memchr
	.globl	memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 # @memchr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB25_4
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.body.lr.ph
	l.andi	r14, r14, 255
	l.andi	r24, r24, 255
	l.andi	r4, r4, 255
.LBB25_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r6, 0(r3)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeq	r6, r4
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
	l.bf	.LBB25_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB25_2 Depth=1
	l.addi	r13, r13, 1
	l.addi	r23, r23, 1
	l.addi	r3, r3, 1
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.bf	.LBB25_2
	l.nop	0                       # in delay slot
.LBB25_4:                               # %cleanup
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end25:
	.size	memchr, .Lfunc_end25-memchr

	.hidden	rand
	.globl	rand
	.p2align	2
	.type	rand,@function
rand:                                   # @rand
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, hi(rand.lfsr)
	l.movhi	r23, hi(rand.lfsr)
	l.movhi	r3, hi(rand.lfsr)
	l.ori	r13, r13, lo(rand.lfsr)
	l.ori	r23, r23, lo(rand.lfsr)
	l.ori	r3, r3, lo(rand.lfsr)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r15, r14, 1
	l.andi	r25, r24, 1
	l.andi	r5, r4, 1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sub	r15, r16, r15
	l.sub	r25, r26, r25
	l.sub	r5, r6, r5
	l.movhi	r16, 53248
	l.movhi	r26, 53248
	l.movhi	r6, 53248
	l.ori	r16, r16, 1
	l.ori	r26, r26, 1
	l.ori	r6, r6, 1
	l.and	r15, r15, r16
	l.and	r25, r25, r26
	l.and	r5, r5, r6
	l.srli	r14, r14, 1
	l.srli	r24, r24, 1
	l.srli	r4, r4, 1
	l.xor	r8, r15, r14
	l.xor	r31, r25, r24
	l.xor	r11, r5, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	0(r3), r11
	l.movhi	r13, hi(rand.period)
	l.movhi	r23, hi(rand.period)
	l.movhi	r3, hi(rand.period)
	l.ori	r13, r13, lo(rand.period)
	l.ori	r23, r23, lo(rand.period)
	l.ori	r3, r3, lo(rand.period)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end26:
	.size	rand, .Lfunc_end26-rand

	.hidden	mtspr
	.globl	mtspr
	.p2align	2
	.type	mtspr,@function
mtspr:                                  # @mtspr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end27:
	.size	mtspr, .Lfunc_end27-mtspr

	.hidden	mfspr
	.globl	mfspr
	.p2align	2
	.type	mfspr,@function
mfspr:                                  # @mfspr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	#APP
	l.mfspr		r8,r13,0
	#NO_APP
	#APP
	l.mfspr		r31,r23,0
	#NO_APP
	#APP
	l.mfspr		r11,r3,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end28:
	.size	mfspr, .Lfunc_end28-mfspr

	.hidden	sim_putc
	.globl	sim_putc
	.p2align	2
	.type	sim_putc,@function
sim_putc:                               # @sim_putc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	#APP
	l.addi	r13,r13,0
	#NO_APP
	#APP
	l.addi	r23,r23,0
	#NO_APP
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP

    l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13

	l.nop 4
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end29:
	.size	sim_putc, .Lfunc_end29-sim_putc

	.hidden	report
	.globl	report
	.p2align	2
	.type	report,@function
report:                                 # @report
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	#APP
	l.addi	r13,r13,0
	#NO_APP
	#APP
	l.addi	r23,r23,0
	#NO_APP
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP

    l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13

	l.nop 2
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end30:
	.size	report, .Lfunc_end30-report

	.hidden	cpu_enable_user_interrupts
	.globl	cpu_enable_user_interrupts
	.p2align	2
	.type	cpu_enable_user_interrupts,@function
cpu_enable_user_interrupts:             # @cpu_enable_user_interrupts
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.addi	r13, r0, 17
	l.addi	r23, r0, 17
	l.addi	r3, r0, 17
	#APP
	l.mfspr		r14,r13,0
	#NO_APP
	#APP
	l.mfspr		r24,r23,0
	#NO_APP
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.ori	r14, r14, 4
	l.ori	r24, r24, 4
	l.ori	r4, r4, 4
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end31:
	.size	cpu_enable_user_interrupts, .Lfunc_end31-cpu_enable_user_interrupts

	.hidden	cpu_enable_timer
	.globl	cpu_enable_timer
	.p2align	2
	.type	cpu_enable_timer,@function
cpu_enable_timer:                       # @cpu_enable_timer
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 24576
	l.movhi	r23, 24576
	l.movhi	r3, 24576
	l.ori	r13, r13, 1000
	l.ori	r23, r23, 1000
	l.ori	r3, r3, 1000
	l.addi	r14, r0, 20480
	l.addi	r24, r0, 20480
	l.addi	r4, r0, 20480
	#APP
	l.mtspr		r14,r13,0
	#NO_APP
	#APP
	l.mtspr		r24,r23,0
	#NO_APP
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r13, r0, 17
	l.addi	r23, r0, 17
	l.addi	r3, r0, 17
	#APP
	l.mfspr		r14,r13,0
	#NO_APP
	#APP
	l.mfspr		r24,r23,0
	#NO_APP
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.ori	r14, r14, 2
	l.ori	r24, r24, 2
	l.ori	r4, r4, 2
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end32:
	.size	cpu_enable_timer, .Lfunc_end32-cpu_enable_timer

	.hidden	cpu_disable_timer
	.globl	cpu_disable_timer
	.p2align	2
	.type	cpu_disable_timer,@function
cpu_disable_timer:                      # @cpu_disable_timer
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.addi	r13, r0, 17
	l.addi	r23, r0, 17
	l.addi	r3, r0, 17
	#APP
	l.mfspr		r14,r13,0
	#NO_APP
	#APP
	l.mfspr		r24,r23,0
	#NO_APP
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.addi	r15, r0, -3
	l.addi	r25, r0, -3
	l.addi	r5, r0, -3
	l.and	r14, r14, r15
	l.and	r24, r24, r25
	l.and	r4, r4, r5
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r13, r0, 20480
	l.addi	r23, r0, 20480
	l.addi	r3, r0, 20480
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	#APP
	l.mtspr		r13,r14,0
	#NO_APP
	#APP
	l.mtspr		r23,r24,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end33:
	.size	cpu_disable_timer, .Lfunc_end33-cpu_disable_timer

	.hidden	cpu_timer_tick
	.globl	cpu_timer_tick
	.p2align	2
	.type	cpu_timer_tick,@function
cpu_timer_tick:                         # @cpu_timer_tick
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, hi(timer_ticks)
	l.movhi	r23, hi(timer_ticks)
	l.movhi	r3, hi(timer_ticks)
	l.ori	r13, r13, lo(timer_ticks)
	l.ori	r23, r23, lo(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, 1
	l.addi	r24, r24, 1
	l.addi	r4, r4, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.movhi	r13, 24576
	l.movhi	r23, 24576
	l.movhi	r3, 24576
	l.ori	r13, r13, 1000
	l.ori	r23, r23, 1000
	l.ori	r3, r3, 1000
	l.addi	r14, r0, 20480
	l.addi	r24, r0, 20480
	l.addi	r4, r0, 20480
	#APP
	l.mtspr		r14,r13,0
	#NO_APP
	#APP
	l.mtspr		r24,r23,0
	#NO_APP
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end34:
	.size	cpu_timer_tick, .Lfunc_end34-cpu_timer_tick

	.hidden	cpu_reset_timer_ticks
	.globl	cpu_reset_timer_ticks
	.p2align	2
	.type	cpu_reset_timer_ticks,@function
cpu_reset_timer_ticks:                  # @cpu_reset_timer_ticks
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, hi(timer_ticks)
	l.movhi	r23, hi(timer_ticks)
	l.movhi	r3, hi(timer_ticks)
	l.ori	r13, r13, lo(timer_ticks)
	l.ori	r23, r23, lo(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end35:
	.size	cpu_reset_timer_ticks, .Lfunc_end35-cpu_reset_timer_ticks

	.hidden	cpu_get_timer_ticks
	.globl	cpu_get_timer_ticks
	.p2align	2
	.type	cpu_get_timer_ticks,@function
cpu_get_timer_ticks:                    # @cpu_get_timer_ticks
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, hi(timer_ticks)
	l.movhi	r23, hi(timer_ticks)
	l.movhi	r3, hi(timer_ticks)
	l.ori	r13, r13, lo(timer_ticks)
	l.ori	r23, r23, lo(timer_ticks)
	l.ori	r3, r3, lo(timer_ticks)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end36:
	.size	cpu_get_timer_ticks, .Lfunc_end36-cpu_get_timer_ticks

	.hidden	cpu_sleep_10ms
	.globl	cpu_sleep_10ms
	.p2align	2
	.type	cpu_sleep_10ms,@function
cpu_sleep_10ms:                         # @cpu_sleep_10ms
# BB#0:                                 # %while.cond.preheader
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
.LBB37_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.j	.LBB37_1
	l.nop	0                       # in delay slot
.Lfunc_end37:
	.size	cpu_sleep_10ms, .Lfunc_end37-cpu_sleep_10ms

	.hidden	print_back_to_string
	.globl	print_back_to_string
	.p2align	2
	.type	print_back_to_string,@function
print_back_to_string:                   # @print_back_to_string
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -20
	l.addi	r21, r21, -20           # CFC
	l.addi	r1, r1, -20
	l.ori	r8, r13, 0
	l.ori	r31, r23, 0
	l.ori	r11, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lwz	r5, 0(r5)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-20(r2), r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.lwz	r6, 0(r6)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.lwz	r3, 0(r7)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sub	r15, r15, r16
	l.sub	r25, r25, r26
	l.sub	r5, r5, r6
	l.addi	r16, r15, -1
	l.addi	r26, r25, -1
	l.addi	r6, r5, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtu	r6, r4
	l.bf	.LBB38_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB38_2:                               # %entry
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-16(r2), r5
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -16(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.movhi	r8, 0
	l.movhi	r31, 0
	l.movhi	r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r5, r3
	l.bf	.LBB38_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %cleanup
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r3, 0(r4)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r4), r3
	l.addi	r8, r0, 1
	l.addi	r31, r0, 1
	l.addi	r11, r0, 1
.LBB38_4:
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end38:
	.size	print_back_to_string, .Lfunc_end38-print_back_to_string

	.hidden	vfnprintf
	.globl	vfnprintf
	.p2align	2
	.type	vfnprintf,@function
vfnprintf:                              # @vfnprintf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -164
	l.addi	r21, r21, -164          # CFC
	l.addi	r1, r1, -164
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-92(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-104(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.addi	r13, r12, -53
	l.addi	r23, r22, -53
	l.addi	r3, r2, -53
	l.addi	r14, r13, 39
	l.addi	r24, r23, 39
	l.addi	r4, r3, 39
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-152(r2), r4
	l.addi	r13, r13, 40
	l.addi	r23, r23, 40
	l.addi	r3, r3, 40
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-144(r2), r3
	l.movhi	r8, hi(.L.str.1)
	l.movhi	r31, hi(.L.str.1)
	l.movhi	r11, hi(.L.str.1)
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r13, r13, lo(vfnprintf.blanks)
	l.ori	r23, r23, lo(vfnprintf.blanks)
	l.ori	r3, r3, lo(vfnprintf.blanks)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-108(r2), r3
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r13, r13, lo(vfnprintf.zeroes)
	l.ori	r23, r23, lo(vfnprintf.zeroes)
	l.ori	r3, r3, lo(vfnprintf.zeroes)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-96(r2), r3
	l.movhi	r13, hi(.LJTI39_0)
	l.movhi	r23, hi(.LJTI39_0)
	l.movhi	r3, hi(.LJTI39_0)
	l.ori	r13, r13, lo(.LJTI39_0)
	l.ori	r23, r23, lo(.LJTI39_0)
	l.ori	r3, r3, lo(.LJTI39_0)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-72(r2), r3
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-128(r2), r3
	l.j	.LBB39_1
	l.nop	0                       # in delay slot
.LBB39_229:                             # %do.end551
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -76(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r17, r17, r13
	l.add	r27, r27, r23
	l.add	r7, r7, r3
	l.movhi	r8, hi(.L.str.1)
	l.movhi	r31, hi(.L.str.1)
	l.movhi	r11, hi(.L.str.1)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB39_1:                               # %for.cond.outer
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB39_2 Depth 2
                                        #       Child Loop BB39_3 Depth 3
                                        #       Child Loop BB39_17 Depth 3
                                        #         Child Loop BB39_18 Depth 4
                                        #           Child Loop BB39_42 Depth 5
                                        #           Child Loop BB39_33 Depth 5
                                        #     Child Loop BB39_116 Depth 2
                                        #     Child Loop BB39_129 Depth 2
                                        #     Child Loop BB39_132 Depth 2
                                        #     Child Loop BB39_118 Depth 2
                                        #     Child Loop BB39_160 Depth 2
                                        #     Child Loop BB39_188 Depth 2
                                        #     Child Loop BB39_202 Depth 2
                                        #     Child Loop BB39_221 Depth 2
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.j	.LBB39_2
	l.nop	0                       # in delay slot
.LBB39_62:                              # %sw.bb125
                                        #   in Loop: Header=BB39_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -88(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r13, r14, 32
	l.andi	r23, r24, 32
	l.andi	r3, r4, 32
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_64
	l.nop	0                       # in delay slot
# BB#63:                                # %if.then128
                                        #   in Loop: Header=BB39_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	4(r3), r6
	l.srai	r14, r16, 31
	l.srai	r24, r26, 31
	l.srai	r4, r6, 31
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	0(r3), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB39_2:                               # %for.cond
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB39_3 Depth 3
                                        #       Child Loop BB39_17 Depth 3
                                        #         Child Loop BB39_18 Depth 4
                                        #           Child Loop BB39_42 Depth 5
                                        #           Child Loop BB39_33 Depth 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-60(r2), r5
	l.ori	r14, r15, 0
	l.ori	r24, r25, 0
	l.ori	r4, r5, 0
.LBB39_3:                               # %while.cond
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.lbz	r3, 0(r7)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %while.body
                                        #   in Loop: Header=BB39_3 Depth=3
	l.addi	r15, r0, 1
	l.addi	r25, r0, 1
	l.addi	r5, r0, 1
	l.addi	r14, r17, 1
	l.addi	r24, r27, 1
	l.addi	r4, r7, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 37
	l.bf	.LBB39_3
	l.nop	0                       # in delay slot
.LBB39_5:                               # %while.end
                                        #   in Loop: Header=BB39_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -60(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r17, r14
	l.sub	r23, r27, r24
	l.sub	r3, r7, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_13
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then6
                                        #   in Loop: Header=BB39_2 Depth=2
	l.ori	r8, r14, 0
	l.ori	r31, r24, 0
	l.ori	r11, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-84(r2), r7
	l.ori	r17, r13, 0
	l.ori	r27, r23, 0
	l.ori	r7, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-68(r2), r7
	l.ori	r15, r17, 0
	l.ori	r25, r27, 0
	l.ori	r5, r7, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtu	r4, r7
	l.bf	.LBB39_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then6
                                        #   in Loop: Header=BB39_2 Depth=2
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB39_8:                               # %if.then6
                                        #   in Loop: Header=BB39_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-80(r2), r5
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -68(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB39_12
	l.nop	0                       # in delay slot
.LBB39_9:                               # %print_back_to_string.exit
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -76(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.j	.LBB39_10
	l.nop	0                       # in delay slot
.LBB39_12:                              # %if.end8
                                        #   in Loop: Header=BB39_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.add	r16, r13, r16
	l.add	r26, r23, r26
	l.add	r6, r3, r6
	l.movhi	r8, hi(.L.str.1)
	l.movhi	r31, hi(.L.str.1)
	l.movhi	r11, hi(.L.str.1)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
.LBB39_13:                              # %if.end9
                                        #   in Loop: Header=BB39_2 Depth=2
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sflts	r6, r4
	l.bf	.LBB39_15
	l.nop	0                       # in delay slot
# BB#14:                                # %if.end9
                                        #   in Loop: Header=BB39_2 Depth=2
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB39_15:                              # %if.end9
                                        #   in Loop: Header=BB39_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.and	r13, r14, r13
	l.and	r23, r24, r23
	l.and	r3, r4, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 1
	l.bf	.LBB39_11
	l.nop	0                       # in delay slot
# BB#16:                                # %if.end15
                                        #   in Loop: Header=BB39_2 Depth=2
	l.addi	r16, r0, -1
	l.addi	r26, r0, -1
	l.addi	r6, r0, -1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-13(r2), r4
	l.addi	r15, r17, 1
	l.addi	r25, r27, 1
	l.addi	r5, r7, 1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
	l.j	.LBB39_17
	l.nop	0                       # in delay slot
.LBB39_25:                              # %rflag
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -84(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
.LBB39_17:                              # %rflag
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB39_18 Depth 4
                                        #           Child Loop BB39_42 Depth 5
                                        #           Child Loop BB39_33 Depth 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-84(r2), r6
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbs	r7, 0(r5)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.j	.LBB39_18
	l.nop	0                       # in delay slot
.LBB39_39:                              # %while.end50
                                        #   in Loop: Header=BB39_18 Depth=4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-84(r2), r6
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB39_18:                              # %reswitch
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_17 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB39_42 Depth 5
                                        #           Child Loop BB39_33 Depth 5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-68(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-60(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-64(r2), r7
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtui	r7, 122
	l.bf	.LBB39_144
	l.nop	0                       # in delay slot
.LBB39_19:                              # %reswitch
                                        #   in Loop: Header=BB39_18 Depth=4
	l.addi	r15, r0, 117
	l.addi	r25, r0, 117
	l.addi	r5, r0, 117
	l.addi	r16, r0, 111
	l.addi	r26, r0, 111
	l.addi	r6, r0, 111
	l.ori	r14, r8, lo(.L.str.1)
	l.ori	r24, r31, lo(.L.str.1)
	l.ori	r4, r11, lo(.L.str.1)
	l.slli	r13, r17, 2
	l.slli	r23, r27, 2
	l.slli	r3, r7, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -72(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.add	r13, r13, r17
	l.add	r23, r23, r27
	l.add	r3, r3, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -64(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB39_41:                              # %do.body.preheader
                                        #   in Loop: Header=BB39_18 Depth=4
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -60(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB39_42:                              # %do.body
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_17 Depth=3
                                        #         Parent Loop BB39_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	l.muli	r14, r14, 10
	l.muli	r24, r24, 10
	l.muli	r4, r4, 10
	l.add	r14, r17, r14
	l.add	r24, r27, r24
	l.add	r4, r7, r4
	l.addi	r15, r13, 1
	l.addi	r25, r23, 1
	l.addi	r5, r3, 1
	l.addi	r14, r14, -48
	l.addi	r24, r24, -48
	l.addi	r4, r4, -48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r7, 0(r3)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.addi	r13, r17, -48
	l.addi	r23, r27, -48
	l.addi	r3, r7, -48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltui	r3, 10
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.bf	.LBB39_42
	l.nop	0                       # in delay slot
	l.j	.LBB39_18
	l.nop	0                       # in delay slot
.LBB39_30:                              # %sw.bb31
                                        #   in Loop: Header=BB39_18 Depth=4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -60(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r13, r14, 1
	l.addi	r23, r24, 1
	l.addi	r3, r4, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbs	r7, 0(r4)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfeqi	r7, 42
	l.bf	.LBB39_34
	l.nop	0                       # in delay slot
# BB#31:                                # %while.cond41.preheader
                                        #   in Loop: Header=BB39_18 Depth=4
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.addi	r14, r17, -48
	l.addi	r24, r27, -48
	l.addi	r4, r7, -48
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 9
	l.bf	.LBB39_37
	l.nop	0                       # in delay slot
# BB#32:                                # %while.body45.preheader
                                        #   in Loop: Header=BB39_18 Depth=4
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
.LBB39_33:                              # %while.body45
                                        #   Parent Loop BB39_1 Depth=1
                                        #     Parent Loop BB39_2 Depth=2
                                        #       Parent Loop BB39_17 Depth=3
                                        #         Parent Loop BB39_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	l.muli	r13, r16, 10
	l.muli	r23, r26, 10
	l.muli	r3, r6, 10
	l.add	r16, r13, r14
	l.add	r26, r23, r24
	l.add	r6, r3, r4
	l.addi	r13, r15, 1
	l.addi	r23, r25, 1
	l.addi	r3, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbs	r7, 0(r5)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.addi	r14, r17, -48
	l.addi	r24, r27, -48
	l.addi	r4, r7, -48
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfltui	r4, 10
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.bf	.LBB39_33
	l.nop	0                       # in delay slot
.LBB39_37:                              # %while.end50
                                        #   in Loop: Header=BB39_18 Depth=4
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB39_39
	l.nop	0                       # in delay slot
# BB#38:                                # %while.end50
                                        #   in Loop: Header=BB39_18 Depth=4
	l.addi	r16, r0, -1
	l.addi	r26, r0, -1
	l.addi	r6, r0, -1
	l.j	.LBB39_39
	l.nop	0                       # in delay slot
.LBB39_20:                              # %sw.bb
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -120(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 255
	l.andi	r23, r23, 255
	l.andi	r3, r3, 255
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -84(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB39_17
	l.nop	0                       # in delay slot
# BB#21:                                # %if.then20
                                        #   in Loop: Header=BB39_17 Depth=3
	l.addi	r13, r0, 32
	l.addi	r23, r0, 32
	l.addi	r3, r0, 32
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-13(r2), r3
	l.j	.LBB39_17
	l.nop	0                       # in delay slot
.LBB39_22:                              # %sw.bb22
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_26:                              # %sw.bb23
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -84(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, -1
	l.bf	.LBB39_17
	l.nop	0                       # in delay slot
# BB#27:                                # %if.end27
                                        #   in Loop: Header=BB39_17 Depth=3
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sub	r14, r13, r14
	l.sub	r24, r23, r24
	l.sub	r4, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-68(r2), r4
.LBB39_28:                              # %sw.bb28
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 4
	l.ori	r23, r23, 4
	l.ori	r3, r3, 4
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_29:                              # %sw.bb30
                                        #   in Loop: Header=BB39_17 Depth=3
	l.addi	r13, r0, 43
	l.addi	r23, r0, 43
	l.addi	r3, r0, 43
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-13(r2), r3
	l.j	.LBB39_24
	l.nop	0                       # in delay slot
.LBB39_40:                              # %sw.bb57
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 128
	l.ori	r23, r23, 128
	l.ori	r3, r3, 128
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_43:                              # %sw.bb68
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 64
	l.ori	r23, r23, 64
	l.ori	r3, r3, 64
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_44:                              # %sw.bb70
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbz	r3, 0(r5)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 108
	l.bf	.LBB39_46
	l.nop	0                       # in delay slot
# BB#45:                                # %if.then74
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 32
	l.ori	r23, r23, 32
	l.ori	r3, r3, 32
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
	l.addi	r15, r15, 1
	l.addi	r25, r25, 1
	l.addi	r5, r5, 1
	l.j	.LBB39_25
	l.nop	0                       # in delay slot
.LBB39_47:                              # %sw.bb79
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 32
	l.ori	r23, r23, 32
	l.ori	r3, r3, 32
	l.j	.LBB39_23
	l.nop	0                       # in delay slot
.LBB39_143:                             # %sw.bb374
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 512
	l.ori	r23, r23, 512
	l.ori	r3, r3, 512
.LBB39_23:                              # %rflag
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
.LBB39_24:                              # %rflag
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB39_25
	l.nop	0                       # in delay slot
.LBB39_46:                              # %if.else
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 16
	l.ori	r23, r23, 16
	l.ori	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
	l.j	.LBB39_25
	l.nop	0                       # in delay slot
.LBB39_34:                              # %if.then36
                                        #   in Loop: Header=BB39_17 Depth=3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, 3
	l.addi	r24, r24, 3
	l.addi	r4, r4, 3
	l.addi	r15, r0, -4
	l.addi	r25, r0, -4
	l.addi	r5, r0, -4
	l.and	r14, r14, r15
	l.and	r24, r24, r25
	l.and	r4, r4, r5
	l.addi	r15, r14, 4
	l.addi	r25, r24, 4
	l.addi	r5, r4, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r6, 0(r4)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB39_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then36
                                        #   in Loop: Header=BB39_17 Depth=3
	l.addi	r16, r0, -1
	l.addi	r26, r0, -1
	l.addi	r6, r0, -1
.LBB39_36:                              # %if.then36
                                        #   in Loop: Header=BB39_17 Depth=3
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB39_17
	l.nop	0                       # in delay slot
.LBB39_64:                              # %if.else131
                                        #   in Loop: Header=BB39_2 Depth=2
	l.andi	r13, r14, 16
	l.andi	r23, r24, 16
	l.andi	r3, r4, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_66
	l.nop	0                       # in delay slot
.LBB39_65:                              # %if.then134
                                        #   in Loop: Header=BB39_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	0(r3), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB39_2
	l.nop	0                       # in delay slot
.LBB39_66:                              # %if.else136
                                        #   in Loop: Header=BB39_2 Depth=2
	l.andi	r13, r14, 64
	l.andi	r23, r24, 64
	l.andi	r3, r4, 64
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_65
	l.nop	0                       # in delay slot
# BB#67:                                # %if.then139
                                        #   in Loop: Header=BB39_2 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sh	0(r3), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB39_2
	l.nop	0                       # in delay slot
.LBB39_61:                              # %sw.bb123
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r13, r13, 4
	l.addi	r23, r23, 4
	l.addi	r3, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-13(r2), r7
	l.movhi	r13, hi(.L.str.8)
	l.movhi	r23, hi(.L.str.8)
	l.movhi	r3, hi(.L.str.8)
	l.ori	r13, r13, lo(.L.str.8)
	l.ori	r23, r23, lo(.L.str.8)
	l.ori	r3, r3, lo(.L.str.8)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-136(r2), r3
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.j	.LBB39_146
	l.nop	0                       # in delay slot
.LBB39_144:                             # %if.end380
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-53(r2), r7
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-13(r2), r7
	l.j	.LBB39_145
	l.nop	0                       # in delay slot
.LBB39_49:                              # %sw.bb84
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r17, r0, 68
	l.addi	r27, r0, 68
	l.addi	r7, r0, 68
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 16
	l.ori	r23, r23, 16
	l.ori	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
.LBB39_50:                              # %sw.bb86
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r13, r15, 32
	l.andi	r23, r25, 32
	l.andi	r3, r5, 32
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-64(r2), r7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_52
	l.nop	0                       # in delay slot
# BB#51:                                # %cond.true88
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r6, 0(r3)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB39_57
	l.nop	0                       # in delay slot
.LBB39_52:                              # %cond.false90
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.andi	r3, r5, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_54
	l.nop	0                       # in delay slot
# BB#53:                                # %cond.true93
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB39_56
	l.nop	0                       # in delay slot
.LBB39_68:                              # %sw.bb153
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r16, r0, 79
	l.addi	r26, r0, 79
	l.addi	r6, r0, 79
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 16
	l.ori	r23, r23, 16
	l.ori	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
.LBB39_69:                              # %sw.bb155
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r13, r15, 32
	l.andi	r23, r25, 32
	l.andi	r3, r5, 32
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_71
	l.nop	0                       # in delay slot
# BB#70:                                # %cond.true158
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r7, 0(r3)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r13, r14, 4
	l.addi	r23, r24, 4
	l.addi	r3, r4, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r11, 0(r4)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-64(r2), r6
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_86:                              # %sw.bb217
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r15, r0, 85
	l.addi	r25, r0, 85
	l.addi	r5, r0, 85
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r13, r13, 16
	l.ori	r23, r23, 16
	l.ori	r3, r3, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
.LBB39_87:                              # %sw.bb219
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -88(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.andi	r13, r16, 32
	l.andi	r23, r26, 32
	l.andi	r3, r6, 32
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_89
	l.nop	0                       # in delay slot
# BB#88:                                # %cond.true222
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r7, 0(r3)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -12(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r13, r14, 4
	l.addi	r23, r24, 4
	l.addi	r3, r4, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r11, 0(r4)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -84(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
	l.ori	r16, r17, 0
	l.ori	r26, r27, 0
	l.ori	r6, r7, 0
	l.ori	r17, r14, 0
	l.ori	r27, r24, 0
	l.ori	r7, r4, 0
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_94:                              # %hex.loopexit
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r13, hi(.L.str.3)
	l.movhi	r23, hi(.L.str.3)
	l.movhi	r3, hi(.L.str.3)
	l.ori	r14, r13, lo(.L.str.3)
	l.ori	r24, r23, lo(.L.str.3)
	l.ori	r4, r3, lo(.L.str.3)
.LBB39_95:                              # %hex
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r13, r15, 32
	l.andi	r23, r25, 32
	l.andi	r3, r5, 32
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_97
	l.nop	0                       # in delay slot
# BB#96:                                # %cond.true256
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r15, r0, -4
	l.addi	r25, r0, -4
	l.addi	r5, r0, -4
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.addi	r15, r13, 4
	l.addi	r25, r23, 4
	l.addi	r5, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r6, 0(r3)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r15, r13, 4
	l.addi	r25, r23, 4
	l.addi	r5, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.j	.LBB39_102
	l.nop	0                       # in delay slot
.LBB39_48:                              # %sw.bb81
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-53(r2), r3
	l.addi	r14, r0, 1
	l.addi	r24, r0, 1
	l.addi	r4, r0, 1
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-13(r2), r7
	l.addi	r13, r0, 99
	l.addi	r23, r0, 99
	l.addi	r3, r0, 99
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
.LBB39_145:                             # %if.else386
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r13, r12, -53
	l.addi	r23, r22, -53
	l.addi	r3, r2, -53
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-136(r2), r3
.LBB39_146:                             # %if.else386
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB39_147
	l.nop	0                       # in delay slot
.LBB39_76:                              # %sw.bb188
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r14, r13, r14
	l.and	r24, r23, r24
	l.and	r4, r3, r4
	l.addi	r13, r14, 4
	l.addi	r23, r24, 4
	l.addi	r3, r4, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.addi	r13, r0, 120
	l.addi	r23, r0, 120
	l.addi	r3, r0, 120
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.addi	r13, r0, 2
	l.addi	r23, r0, 2
	l.addi	r3, r0, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.movhi	r15, hi(.L.str.1)
	l.movhi	r25, hi(.L.str.1)
	l.movhi	r5, hi(.L.str.1)
	l.ori	r15, r15, lo(.L.str.1)
	l.ori	r25, r25, lo(.L.str.1)
	l.ori	r5, r5, lo(.L.str.1)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-128(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.ori	r15, r15, 2
	l.ori	r25, r25, 2
	l.ori	r5, r5, 2
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lwz	r11, 0(r4)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_77:                              # %sw.bb192
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.movhi	r14, hi(.L.str.2)
	l.movhi	r24, hi(.L.str.2)
	l.movhi	r4, hi(.L.str.2)
	l.ori	r14, r14, lo(.L.str.2)
	l.ori	r24, r24, lo(.L.str.2)
	l.ori	r4, r4, lo(.L.str.2)
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_79
	l.nop	0                       # in delay slot
# BB#78:                                # %sw.bb192
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB39_79:                              # %sw.bb192
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-136(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -76(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -84(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 0
	l.bf	.LBB39_84
	l.nop	0                       # in delay slot
# BB#80:                                # %if.then200
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -136(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.jal	memchr
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -84(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfeqi	r11, 0
	l.bf	.LBB39_85
	l.nop	0                       # in delay slot
# BB#81:                                # %if.then204
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -136(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r13, r8, r13
	l.sub	r23, r31, r23
	l.sub	r3, r11, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgts	r3, r4
	l.bf	.LBB39_83
	l.nop	0                       # in delay slot
# BB#82:                                # %if.then204
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
.LBB39_83:                              # %if.then204
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.j	.LBB39_85
	l.nop	0                       # in delay slot
.LBB39_71:                              # %cond.false160
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.andi	r3, r5, 16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_73
	l.nop	0                       # in delay slot
# BB#72:                                # %cond.true163
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.j	.LBB39_75
	l.nop	0                       # in delay slot
.LBB39_89:                              # %cond.false224
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r13, r16, 16
	l.andi	r23, r26, 16
	l.andi	r3, r6, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_91
	l.nop	0                       # in delay slot
# BB#90:                                # %cond.true227
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.j	.LBB39_93
	l.nop	0                       # in delay slot
.LBB39_97:                              # %cond.false258
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r13, r15, 16
	l.andi	r23, r25, 16
	l.andi	r3, r5, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
	l.bf	.LBB39_99
	l.nop	0                       # in delay slot
# BB#98:                                # %cond.true261
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r15, r0, -4
	l.addi	r25, r0, -4
	l.addi	r5, r0, -4
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.addi	r15, r13, 4
	l.addi	r25, r23, 4
	l.addi	r5, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
	l.j	.LBB39_101
	l.nop	0                       # in delay slot
.LBB39_54:                              # %cond.false95
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r13, r15, 64
	l.andi	r23, r25, 64
	l.andi	r3, r5, 64
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_56
	l.nop	0                       # in delay slot
# BB#55:                                # %cond.true98
                                        #   in Loop: Header=BB39_1 Depth=1
	l.slli	r13, r8, 16
	l.slli	r23, r31, 16
	l.slli	r3, r11, 16
	l.srai	r8, r13, 16
	l.srai	r31, r23, 16
	l.srai	r11, r3, 16
.LBB39_56:                              # %cond.end113
                                        #   in Loop: Header=BB39_1 Depth=1
	l.srai	r16, r8, 31
	l.srai	r26, r31, 31
	l.srai	r6, r11, 31
.LBB39_57:                              # %cond.end116
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfgtsi	r6, -1
	l.bf	.LBB39_108
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then120
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sub	r15, r14, r16
	l.sub	r25, r24, r26
	l.sub	r5, r4, r6
	l.addi	r16, r0, 1
	l.addi	r26, r0, 1
	l.addi	r6, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-112(r2), r6
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfnei	r11, 0
	l.bf	.LBB39_60
	l.nop	0                       # in delay slot
# BB#59:                                # %if.then120
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB39_60:                              # %if.then120
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sub	r16, r15, r16
	l.sub	r26, r25, r26
	l.sub	r6, r5, r6
	l.sub	r8, r14, r8
	l.sub	r31, r24, r31
	l.sub	r11, r4, r11
	l.addi	r14, r0, 45
	l.addi	r24, r0, 45
	l.addi	r4, r0, 45
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-13(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB39_108
	l.nop	0                       # in delay slot
.LBB39_73:                              # %cond.false165
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r13, r15, 64
	l.andi	r23, r25, 64
	l.andi	r3, r5, 64
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_75
	l.nop	0                       # in delay slot
# BB#74:                                # %cond.false165
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
.LBB39_75:                              # %cond.end183
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-64(r2), r6
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_91:                              # %cond.false229
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r14, r0, -4
	l.addi	r24, r0, -4
	l.addi	r4, r0, -4
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.addi	r14, r13, 4
	l.addi	r24, r23, 4
	l.addi	r4, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-12(r2), r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r13, r16, 64
	l.andi	r23, r26, 64
	l.andi	r3, r6, 64
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_93
	l.nop	0                       # in delay slot
# BB#92:                                # %cond.false229
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
.LBB39_93:                              # %cond.false229
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.j	.LBB39_107
	l.nop	0                       # in delay slot
.LBB39_99:                              # %cond.false263
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -12(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 3
	l.addi	r23, r23, 3
	l.addi	r3, r3, 3
	l.addi	r15, r0, -4
	l.addi	r25, r0, -4
	l.addi	r5, r0, -4
	l.and	r13, r13, r15
	l.and	r23, r23, r25
	l.and	r3, r3, r5
	l.addi	r15, r13, 4
	l.addi	r25, r23, 4
	l.addi	r5, r3, 4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-12(r2), r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.andi	r13, r16, 64
	l.andi	r23, r26, 64
	l.andi	r3, r6, 64
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
	l.bf	.LBB39_101
	l.nop	0                       # in delay slot
# BB#100:                               # %cond.false263
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r31, r31, 65535
	l.andi	r11, r11, 65535
.LBB39_101:                             # %cond.end281
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
.LBB39_102:                             # %cond.end284
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-80(r2), r6
	l.or	r13, r8, r16
	l.or	r23, r31, r26
	l.or	r3, r11, r6
	l.ori	r16, r15, 0
	l.ori	r26, r25, 0
	l.ori	r6, r5, 0
	l.ori	r15, r16, 2
	l.ori	r25, r26, 2
	l.ori	r5, r6, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB39_104
	l.nop	0                       # in delay slot
# BB#103:                               # %cond.end284
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB39_104:                             # %cond.end284
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r13, r16, 1
	l.andi	r23, r26, 1
	l.andi	r3, r6, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB39_106
	l.nop	0                       # in delay slot
# BB#105:                               # %cond.end284
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB39_106:                             # %cond.end284
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r13, r0, 2
	l.addi	r23, r0, 2
	l.addi	r3, r0, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-128(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -80(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
.LBB39_107:                             # %nosign
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-13(r2), r4
.LBB39_108:                             # %number
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-80(r2), r6
	l.addi	r14, r0, -129
	l.addi	r24, r0, -129
	l.addi	r4, r0, -129
	l.and	r14, r15, r14
	l.and	r24, r25, r24
	l.and	r4, r5, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-88(r2), r4
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtsi	r7, -1
	l.bf	.LBB39_110
	l.nop	0                       # in delay slot
# BB#109:                               # %number
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-88(r2), r5
.LBB39_110:                             # %number
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-84(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfnei	r7, 0
	l.bf	.LBB39_112
	l.nop	0                       # in delay slot
# BB#111:                               # %number
                                        #   in Loop: Header=BB39_1 Depth=1
	l.or	r14, r8, r14
	l.or	r24, r31, r24
	l.or	r4, r11, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -144(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB39_141
	l.nop	0                       # in delay slot
.LBB39_112:                             # %if.then305
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB39_117
	l.nop	0                       # in delay slot
.LBB39_113:                             # %if.then305
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 1
	l.bf	.LBB39_122
	l.nop	0                       # in delay slot
.LBB39_114:                             # %if.then305
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-100(r2), r11
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -84(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r17, r0, 25
	l.addi	r27, r0, 25
	l.addi	r7, r0, 25
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-112(r2), r4
	l.movhi	r14, hi(.L.str.4)
	l.movhi	r24, hi(.L.str.4)
	l.movhi	r4, hi(.L.str.4)
	l.ori	r15, r14, lo(.L.str.4)
	l.ori	r25, r24, lo(.L.str.4)
	l.ori	r5, r4, lo(.L.str.4)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 2
	l.bf	.LBB39_142
	l.nop	0                       # in delay slot
.LBB39_115:                             # %do.body360.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -144(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -100(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -80(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
.LBB39_116:                             # %do.body360
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.andi	r13, r8, 15
	l.andi	r23, r31, 15
	l.andi	r3, r11, 15
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -128(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.add	r13, r14, r13
	l.add	r23, r24, r23
	l.add	r3, r4, r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-1(r5), r3
	l.srli	r13, r8, 4
	l.srli	r23, r31, 4
	l.srli	r3, r11, 4
	l.slli	r14, r17, 28
	l.slli	r24, r27, 28
	l.slli	r4, r7, 28
	l.or	r8, r13, r14
	l.or	r31, r23, r24
	l.or	r11, r3, r4
	l.addi	r15, r15, -1
	l.addi	r25, r25, -1
	l.addi	r5, r5, -1
	l.srli	r17, r17, 4
	l.srli	r27, r27, 4
	l.srli	r7, r7, 4
	l.or	r13, r8, r17
	l.or	r23, r31, r27
	l.or	r3, r11, r7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB39_116
	l.nop	0                       # in delay slot
	l.j	.LBB39_141
	l.nop	0                       # in delay slot
.LBB39_117:                             # %do.body307.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -152(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -80(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
.LBB39_118:                             # %do.body307
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.slli	r14, r17, 29
	l.slli	r24, r27, 29
	l.slli	r4, r7, 29
	l.srli	r15, r8, 3
	l.srli	r25, r31, 3
	l.srli	r5, r11, 3
	l.or	r15, r15, r14
	l.or	r25, r25, r24
	l.or	r5, r5, r4
	l.andi	r14, r8, 7
	l.andi	r24, r31, 7
	l.andi	r4, r11, 7
	l.ori	r14, r14, 48
	l.ori	r24, r24, 48
	l.ori	r4, r4, 48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r13, r13, -1
	l.addi	r23, r23, -1
	l.addi	r3, r3, -1
	l.srli	r17, r17, 3
	l.srli	r27, r27, 3
	l.srli	r7, r7, 3
	l.or	r16, r15, r17
	l.or	r26, r25, r27
	l.or	r6, r5, r7
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfnei	r6, 0
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.bf	.LBB39_118
	l.nop	0                       # in delay slot
# BB#119:                               # %do.end314
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r16, r13, 1
	l.addi	r26, r23, 1
	l.addi	r6, r3, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.addi	r20, r5, 0              # CFC
	l.addi	r28, r15, 0
	l.addi	r30, r25, 0
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfeqi	r20, 0
	l.bf	.LBB39_141
	l.nop	0                       # in delay slot
# BB#120:                               # %do.end314
                                        #   in Loop: Header=BB39_1 Depth=1
	l.xori	r14, r14, 48
	l.xori	r24, r24, 48
	l.xori	r4, r4, 48
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB39_141
	l.nop	0                       # in delay slot
# BB#121:                               # %if.then321
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r14, r0, 48
	l.addi	r24, r0, 48
	l.addi	r4, r0, 48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.j	.LBB39_141
	l.nop	0                       # in delay slot
.LBB39_122:                             # %sw.bb324
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 32
	l.andi	r23, r23, 32
	l.andi	r3, r3, 32
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -84(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_130
	l.nop	0                       # in delay slot
# BB#123:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltui	r11, 10
	l.bf	.LBB39_125
	l.nop	0                       # in delay slot
# BB#124:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB39_125:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfeqi	r4, 0
	l.bf	.LBB39_127
	l.nop	0                       # in delay slot
# BB#126:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB39_127:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -144(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB39_140
	l.nop	0                       # in delay slot
# BB#128:                               # %while.body346.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -144(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
.LBB39_129:                             # %while.body346
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-112(r2), r7
	l.addi	r16, r0, 10
	l.addi	r26, r0, 10
	l.addi	r6, r0, 10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-116(r2), r4
	l.movhi	r15, 0
	l.movhi	r25, 0
	l.movhi	r5, 0
	l.jal	__udivdi3
	l.nop	0                       # in delay slot
	l.ori	r14, r12, 0
	l.ori	r24, r12, 0
	l.ori	r4, r12, 0
	l.addi	r15, r0, -1
	l.addi	r25, r0, -1
	l.addi	r5, r0, -1
	l.addi	r16, r0, -10
	l.addi	r26, r0, -10
	l.addi	r6, r0, -10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-120(r2), r11
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-100(r2), r4
	l.jal	__muldi3
	l.nop	0                       # in delay slot
	l.addi	r13, r0, 1
	l.addi	r23, r0, 1
	l.addi	r3, r0, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfnei	r5, 0
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.bf	.LBB39_135
	l.nop	0                       # in delay slot
# BB#134:                               # %while.body346
                                        #   in Loop: Header=BB39_129 Depth=2
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
.LBB39_135:                             # %while.body346
                                        #   in Loop: Header=BB39_129 Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -116(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtui	r7, 99
	l.bf	.LBB39_137
	l.nop	0                       # in delay slot
# BB#136:                               # %while.body346
                                        #   in Loop: Header=BB39_129 Depth=2
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
.LBB39_137:                             # %while.body346
                                        #   in Loop: Header=BB39_129 Depth=2
	l.addi	r20, r5, 0              # CFC
	l.addi	r28, r15, 0
	l.addi	r30, r25, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -84(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -100(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfeqi	r20, 0
	l.bf	.LBB39_139
	l.nop	0                       # in delay slot
# BB#138:                               # %while.body346
                                        #   in Loop: Header=BB39_129 Depth=2
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
.LBB39_139:                             # %while.body346
                                        #   in Loop: Header=BB39_129 Depth=2
	l.add	r14, r17, r12
	l.add	r24, r27, r12
	l.add	r4, r7, r12
	l.addi	r14, r14, 48
	l.addi	r24, r24, 48
	l.addi	r4, r4, 48
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -112(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-1(r7), r4
	l.addi	r17, r17, -1
	l.addi	r27, r27, -1
	l.addi	r7, r7, -1
	l.andi	r13, r13, 1
	l.andi	r23, r23, 1
	l.andi	r3, r3, 1
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -120(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfnei	r20, 0                  # CFC
	l.bf	.LBB39_129
	l.nop	0                       # in delay slot
.LBB39_140:                             # %while.end354
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r13, r8, 48
	l.addi	r23, r31, 48
	l.addi	r3, r11, 48
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-1(r7), r3
	l.addi	r15, r17, -1
	l.addi	r25, r27, -1
	l.addi	r5, r7, -1
	l.j	.LBB39_141
	l.nop	0                       # in delay slot
.LBB39_130:                             # %if.then327
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -144(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfltui	r11, 10
	l.bf	.LBB39_133
	l.nop	0                       # in delay slot
# BB#131:                               # %while.body332.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -144(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB39_132:                             # %while.body332
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.addi	r15, r0, 10
	l.addi	r25, r0, 10
	l.addi	r5, r0, 10
	l.divu	r8, r14, r15
	l.divu	r31, r24, r25
	l.divu	r11, r4, r5
	l.muli	r15, r8, -10
	l.muli	r25, r31, -10
	l.muli	r5, r11, -10
	l.add	r15, r14, r15
	l.add	r25, r24, r25
	l.add	r5, r4, r5
	l.addi	r15, r15, 48
	l.addi	r25, r25, 48
	l.addi	r5, r5, 48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sb	-1(r3), r5
	l.addi	r13, r13, -1
	l.addi	r23, r23, -1
	l.addi	r3, r3, -1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 99
	l.ori	r14, r8, 0
	l.ori	r24, r31, 0
	l.ori	r4, r11, 0
	l.bf	.LBB39_132
	l.nop	0                       # in delay slot
.LBB39_133:                             # %while.end338
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r14, r8, 48
	l.addi	r24, r31, 48
	l.addi	r4, r11, 48
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	-1(r3), r4
	l.addi	r15, r13, -1
	l.addi	r25, r23, -1
	l.addi	r5, r3, -1
.LBB39_141:                             # %if.end368
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -84(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -144(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r17, r13, r15
	l.sub	r27, r23, r25
	l.sub	r7, r3, r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lbz	r3, -13(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB39_142:                             # %sw.epilog383
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-136(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.andi	r13, r13, 255
	l.andi	r23, r23, 255
	l.andi	r3, r3, 255
	l.addi	r20, r3, 0              # CFC
	l.addi	r28, r13, 0
	l.addi	r30, r23, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
	l.ori	r17, r8, 0
	l.ori	r27, r31, 0
	l.ori	r7, r11, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfeqi	r20, 0
	l.bf	.LBB39_147
	l.nop	0                       # in delay slot
# BB#230:                               # %if.then385
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r8, r14, 1
	l.addi	r31, r24, 1
	l.addi	r11, r4, 1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-88(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB39_150
	l.nop	0                       # in delay slot
.LBB39_84:                              # %if.else214
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -136(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	strlen
	l.nop	0                       # in delay slot
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB39_85:                              # %if.end216
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r17, 0
	l.movhi	r27, 0
	l.movhi	r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	-13(r2), r7
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.addi	r13, r0, 115
	l.addi	r23, r0, 115
	l.addi	r3, r0, 115
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
.LBB39_147:                             # %if.else386
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-88(r2), r5
	l.andi	r13, r15, 2
	l.andi	r23, r25, 2
	l.andi	r3, r5, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.ori	r8, r14, 0
	l.ori	r31, r24, 0
	l.ori	r11, r4, 0
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.bf	.LBB39_149
	l.nop	0                       # in delay slot
# BB#148:                               # %if.else386
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r8, r13, 2
	l.addi	r31, r23, 2
	l.addi	r11, r3, 2
.LBB39_149:                             # %if.else386
                                        #   in Loop: Header=BB39_1 Depth=1
	l.movhi	r14, 0
	l.movhi	r24, 0
	l.movhi	r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB39_150:                             # %if.end392
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-124(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-116(r2), r7
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgts	r7, r11
	l.bf	.LBB39_152
	l.nop	0                       # in delay slot
# BB#151:                               # %if.end392
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-116(r2), r11
.LBB39_152:                             # %if.end392
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 132
	l.andi	r23, r23, 132
	l.andi	r3, r3, 132
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-140(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-84(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-132(r2), r11
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 0
	l.bf	.LBB39_167
	l.nop	0                       # in delay slot
# BB#153:                               # %if.then402
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sub	r15, r15, r13
	l.sub	r25, r25, r23
	l.sub	r5, r5, r3
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 1
	l.bf	.LBB39_167
	l.nop	0                       # in delay slot
# BB#154:                               # %while.cond412.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -92(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.addi	r8, r13, -1
	l.addi	r31, r23, -1
	l.addi	r11, r3, -1
	l.ori	r17, r15, 0
	l.ori	r27, r25, 0
	l.ori	r7, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-120(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-148(r2), r7
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtsi	r5, 16
	l.bf	.LBB39_156
	l.nop	0                       # in delay slot
# BB#155:                               # %while.cond412.preheader.while.end421_crit_edge
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.ori	r15, r17, 0
	l.ori	r25, r27, 0
	l.ori	r5, r7, 0
	l.j	.LBB39_162
	l.nop	0                       # in delay slot
.LBB39_156:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r15, r0, 16
	l.addi	r25, r0, 16
	l.addi	r5, r0, 16
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfgtui	r11, 16
	l.bf	.LBB39_158
	l.nop	0                       # in delay slot
# BB#157:                               # %while.body415.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB39_158:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-100(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-112(r2), r5
	l.addi	r20, r5, 0              # CFC
	l.addi	r28, r15, 0
	l.addi	r30, r25, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r20, r28
	l.cmov	r20, r30, r20
	l.cmov	r28, r30, r28
	l.sfltsi	r20, 16
	l.bf	.LBB39_231
	l.nop	0                       # in delay slot
# BB#159:                               # %while.body415.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-156(r2), r11
	l.addi	r13, r15, -17
	l.addi	r23, r25, -17
	l.addi	r3, r5, -17
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -116(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.addi	r14, r0, -16
	l.addi	r24, r0, -16
	l.addi	r4, r0, -16
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-160(r2), r3
	l.addi	r13, r15, -16
	l.addi	r23, r25, -16
	l.addi	r3, r5, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-164(r2), r3
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -108(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -112(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB39_160:                             # %while.body415
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-80(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -108(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -112(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.addi	r14, r14, -16
	l.addi	r24, r24, -16
	l.addi	r4, r4, -16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 16
	l.bf	.LBB39_160
	l.nop	0                       # in delay slot
# BB#161:                               # %while.end421.loopexit
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -164(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r14, r13
	l.sub	r23, r24, r23
	l.sub	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -160(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r15, r13, r14
	l.sub	r25, r23, r24
	l.sub	r5, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -148(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -156(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
.LBB39_162:                             # %while.end421
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-100(r2), r5
	l.movhi	r14, hi(vfnprintf.blanks)
	l.movhi	r24, hi(vfnprintf.blanks)
	l.movhi	r4, hi(vfnprintf.blanks)
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtu	r11, r5
	l.bf	.LBB39_164
	l.nop	0                       # in delay slot
# BB#163:                               # %while.end421
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r8, 0
	l.ori	r25, r31, 0
	l.ori	r5, r11, 0
.LBB39_164:                             # %while.end421
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-80(r2), r5
	l.ori	r14, r14, lo(vfnprintf.blanks)
	l.ori	r24, r24, lo(vfnprintf.blanks)
	l.ori	r4, r4, lo(vfnprintf.blanks)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB39_166
	l.nop	0                       # in delay slot
# BB#165:                               # %print_back_to_string.exit819
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_166:                             # %do.end428
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -148(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r13, r16
	l.add	r26, r23, r26
	l.add	r6, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -68(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -132(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB39_167:                             # %if.end432
                                        #   in Loop: Header=BB39_1 Depth=1
	l.andi	r13, r14, 255
	l.andi	r23, r24, 255
	l.andi	r3, r4, 255
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_173
	l.nop	0                       # in delay slot
# BB#168:                               # %if.then434
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.addi	r15, r0, 1
	l.addi	r25, r0, 1
	l.addi	r5, r0, 1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 1
	l.bf	.LBB39_170
	l.nop	0                       # in delay slot
# BB#169:                               # %if.then434
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB39_170:                             # %if.then434
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.addi	r14, r12, -13
	l.addi	r24, r22, -13
	l.addi	r4, r2, -13
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 0
	l.bf	.LBB39_172
	l.nop	0                       # in delay slot
# BB#171:                               # %print_back_to_string.exit810
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_172:                             # %if.end438
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r16, r16, 1
	l.addi	r26, r26, 1
	l.addi	r6, r6, 1
	l.j	.LBB39_179
	l.nop	0                       # in delay slot
.LBB39_173:                             # %if.else440
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 2
	l.andi	r23, r23, 2
	l.andi	r3, r3, 2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_180
	l.nop	0                       # in delay slot
# BB#174:                               # %if.then443
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r13, r0, 48
	l.addi	r23, r0, 48
	l.addi	r3, r0, 48
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-55(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -64(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	-54(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.addi	r15, r0, 2
	l.addi	r25, r0, 2
	l.addi	r5, r0, 2
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 2
	l.bf	.LBB39_176
	l.nop	0                       # in delay slot
# BB#175:                               # %if.then443
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB39_176:                             # %if.then443
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.addi	r14, r12, -55
	l.addi	r24, r22, -55
	l.addi	r4, r2, -55
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 1
	l.bf	.LBB39_178
	l.nop	0                       # in delay slot
# BB#177:                               # %print_back_to_string.exit801
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_178:                             # %if.end451
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r16, r16, 2
	l.addi	r26, r26, 2
	l.addi	r6, r6, 2
.LBB39_179:                             # %if.end454
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -68(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -132(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB39_180:                             # %if.end454
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -140(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfnei	r3, 128
	l.bf	.LBB39_195
	l.nop	0                       # in delay slot
# BB#181:                               # %if.then458
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r14, r15, r13
	l.sub	r24, r25, r23
	l.sub	r4, r5, r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfltsi	r4, 1
	l.bf	.LBB39_195
	l.nop	0                       # in delay slot
# BB#182:                               # %while.cond468.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -92(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.addi	r17, r13, -1
	l.addi	r27, r23, -1
	l.addi	r7, r3, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-112(r2), r4
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 16
	l.bf	.LBB39_184
	l.nop	0                       # in delay slot
# BB#183:                               # %while.cond468.preheader.while.end477_crit_edge
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r8, r13, r16
	l.add	r31, r23, r26
	l.add	r11, r3, r6
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
	l.j	.LBB39_190
	l.nop	0                       # in delay slot
.LBB39_184:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.addi	r3, r0, 16
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfgtui	r7, 16
	l.bf	.LBB39_186
	l.nop	0                       # in delay slot
# BB#185:                               # %while.body471.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB39_186:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r8, r13, r16
	l.add	r31, r23, r26
	l.add	r11, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltsi	r3, 16
	l.bf	.LBB39_232
	l.nop	0                       # in delay slot
# BB#187:                               # %while.body471.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-120(r2), r7
	l.addi	r13, r15, -17
	l.addi	r23, r25, -17
	l.addi	r3, r5, -17
	l.ori	r16, r14, 0
	l.ori	r26, r24, 0
	l.ori	r6, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -116(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.addi	r14, r0, -16
	l.addi	r24, r0, -16
	l.addi	r4, r0, -16
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-140(r2), r3
	l.addi	r13, r15, -16
	l.addi	r23, r25, -16
	l.addi	r3, r5, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-148(r2), r3
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -96(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r11, r8
	l.cmov	r11, r31, r11
	l.cmov	r8, r31, r8
	l.sw	-100(r2), r11
.LBB39_188:                             # %while.body471
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -96(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -64(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -100(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r13, r13, -16
	l.addi	r23, r23, -16
	l.addi	r3, r3, -16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 16
	l.bf	.LBB39_188
	l.nop	0                       # in delay slot
# BB#189:                               # %while.end477.loopexit
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -148(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r14, r13
	l.sub	r23, r24, r23
	l.sub	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -140(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -120(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
.LBB39_190:                             # %while.end477
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtu	r7, r3
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.bf	.LBB39_192
	l.nop	0                       # in delay slot
# BB#191:                               # %while.end477
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r14, r17, 0
	l.ori	r24, r27, 0
	l.ori	r4, r7, 0
.LBB39_192:                             # %while.end477
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-64(r2), r4
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB39_194
	l.nop	0                       # in delay slot
# BB#193:                               # %print_back_to_string.exit783
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_194:                             # %do.end484
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -112(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r16, r13
	l.add	r26, r26, r23
	l.add	r6, r6, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -132(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB39_195:                             # %if.end488
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sub	r15, r17, r8
	l.sub	r25, r27, r31
	l.sub	r5, r7, r11
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 1
	l.bf	.LBB39_209
	l.nop	0                       # in delay slot
# BB#196:                               # %while.cond498.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -92(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r13, r13, r16
	l.sub	r23, r23, r26
	l.sub	r3, r3, r6
	l.addi	r14, r13, -1
	l.addi	r24, r23, -1
	l.addi	r4, r3, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-100(r2), r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtsi	r5, 16
	l.bf	.LBB39_198
	l.nop	0                       # in delay slot
# BB#197:                               # %while.cond498.preheader.while.end507_crit_edge
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r13, r16
	l.add	r26, r23, r26
	l.add	r6, r3, r6
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.j	.LBB39_204
	l.nop	0                       # in delay slot
.LBB39_198:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r13, r0, 16
	l.addi	r23, r0, 16
	l.addi	r3, r0, 16
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtui	r4, 16
	l.bf	.LBB39_200
	l.nop	0                       # in delay slot
# BB#199:                               # %while.body501.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r13, r14, 0
	l.ori	r23, r24, 0
	l.ori	r3, r4, 0
.LBB39_200:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r13, r16
	l.add	r26, r23, r26
	l.add	r6, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltsi	r3, 16
	l.bf	.LBB39_233
	l.nop	0                       # in delay slot
# BB#201:                               # %while.body501.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-112(r2), r4
	l.addi	r13, r17, -17
	l.addi	r23, r27, -17
	l.addi	r3, r7, -17
	l.sub	r13, r13, r8
	l.sub	r23, r23, r31
	l.sub	r3, r3, r11
	l.addi	r14, r0, -16
	l.addi	r24, r0, -16
	l.addi	r4, r0, -16
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-120(r2), r3
	l.addi	r13, r17, -16
	l.addi	r23, r27, -16
	l.addi	r3, r7, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-140(r2), r3
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-84(r2), r6
.LBB39_202:                             # %while.body501
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -64(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -84(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.addi	r13, r13, -16
	l.addi	r23, r23, -16
	l.addi	r3, r3, -16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 16
	l.bf	.LBB39_202
	l.nop	0                       # in delay slot
# BB#203:                               # %while.end507.loopexit
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -132(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -140(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r14, r13
	l.sub	r23, r24, r23
	l.sub	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -120(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -100(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB39_204:                             # %while.end507
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-80(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtu	r4, r3
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.bf	.LBB39_206
	l.nop	0                       # in delay slot
# BB#205:                               # %while.end507
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB39_206:                             # %while.end507
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -80(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB39_208
	l.nop	0                       # in delay slot
# BB#207:                               # %print_back_to_string.exit765
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_208:                             # %do.end514
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -76(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r16, r16, r13
	l.add	r26, r26, r23
	l.add	r6, r6, r3
.LBB39_209:                             # %if.end517
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r13, r13, r16
	l.add	r23, r23, r26
	l.add	r3, r3, r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-76(r2), r6
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -92(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r14, r14, r16
	l.sub	r24, r24, r26
	l.sub	r4, r4, r6
	l.addi	r16, r14, -1
	l.addi	r26, r24, -1
	l.addi	r6, r4, -1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -124(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -136(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfgtu	r6, r5
	l.bf	.LBB39_211
	l.nop	0                       # in delay slot
# BB#210:                               # %if.end517
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r16, 0
	l.ori	r25, r26, 0
	l.ori	r5, r6, 0
.LBB39_211:                             # %if.end517
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -124(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB39_213
	l.nop	0                       # in delay slot
# BB#212:                               # %print_back_to_string.exit756
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_213:                             # %if.end521
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -76(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.add	r17, r17, r13
	l.add	r27, r27, r23
	l.add	r7, r7, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -88(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 4
	l.andi	r23, r23, 4
	l.andi	r3, r3, 4
	l.movhi	r8, hi(.L.str.1)
	l.movhi	r31, hi(.L.str.1)
	l.movhi	r11, hi(.L.str.1)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -60(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r6, -68(r2)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB39_1
	l.nop	0                       # in delay slot
# BB#214:                               # %if.then525
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sub	r14, r16, r13
	l.sub	r24, r26, r23
	l.sub	r4, r6, r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfltsi	r4, 1
	l.bf	.LBB39_1
	l.nop	0                       # in delay slot
# BB#215:                               # %while.cond535.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -92(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.ori	r8, r17, 0
	l.ori	r31, r27, 0
	l.ori	r11, r7, 0
	l.sub	r13, r13, r8
	l.sub	r23, r23, r31
	l.sub	r3, r3, r11
	l.addi	r13, r13, -1
	l.addi	r23, r23, -1
	l.addi	r3, r3, -1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-76(r2), r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-88(r2), r5
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-100(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfgtsi	r4, 16
	l.bf	.LBB39_217
	l.nop	0                       # in delay slot
# BB#216:                               # %while.cond535.preheader.while.end544_crit_edge
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r17, r13, r8
	l.add	r27, r23, r31
	l.add	r7, r3, r11
	l.ori	r13, r15, 0
	l.ori	r23, r25, 0
	l.ori	r3, r5, 0
	l.j	.LBB39_225
	l.nop	0                       # in delay slot
.LBB39_217:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r8, r15, 0
	l.ori	r31, r25, 0
	l.ori	r11, r5, 0
	l.addi	r15, r0, 16
	l.addi	r25, r0, 16
	l.addi	r5, r0, 16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtui	r3, 16
	l.ori	r14, r13, 0
	l.ori	r24, r23, 0
	l.ori	r4, r3, 0
	l.bf	.LBB39_219
	l.nop	0                       # in delay slot
# BB#218:                               # %while.body538.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB39_219:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -104(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.add	r17, r13, r17
	l.add	r27, r23, r27
	l.add	r7, r3, r7
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-80(r2), r5
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfltsi	r5, 16
	l.bf	.LBB39_222
	l.nop	0                       # in delay slot
# BB#220:                               # %while.body538.preheader
                                        #   in Loop: Header=BB39_1 Depth=1
	l.addi	r13, r16, -17
	l.addi	r23, r26, -17
	l.addi	r3, r6, -17
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -116(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.addi	r14, r0, -16
	l.addi	r24, r0, -16
	l.addi	r4, r0, -16
	l.and	r13, r13, r14
	l.and	r23, r23, r24
	l.and	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-112(r2), r3
	l.addi	r13, r16, -16
	l.addi	r23, r26, -16
	l.addi	r3, r6, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-68(r2), r3
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sw	-84(r2), r7
.LBB39_221:                             # %while.body538
                                        #   Parent Loop BB39_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-64(r2), r3
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -64(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -80(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r7, -84(r2)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.addi	r13, r13, -16
	l.addi	r23, r23, -16
	l.addi	r3, r3, -16
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtsi	r3, 16
	l.bf	.LBB39_221
	l.nop	0                       # in delay slot
# BB#224:                               # %while.end544.loopexit
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -116(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -68(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r14, r13
	l.sub	r23, r24, r23
	l.sub	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sub	r13, r13, r14
	l.sub	r23, r23, r24
	l.sub	r3, r3, r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -76(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -88(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
.LBB39_225:                             # %while.end544
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -100(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-68(r2), r3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfgtu	r4, r3
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.bf	.LBB39_227
	l.nop	0                       # in delay slot
# BB#226:                               # %while.end544
                                        #   in Loop: Header=BB39_1 Depth=1
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
.LBB39_227:                             # %while.end544
                                        #   in Loop: Header=BB39_1 Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sw	-64(r2), r5
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -64(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -64(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -68(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfges	r4, r3
	l.bf	.LBB39_229
	l.nop	0                       # in delay slot
# BB#228:                               # %print_back_to_string.exit738
	l.j	.LBB39_9
	l.nop	0                       # in delay slot
.LBB39_233:                             # %while.body501.us
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r16, 0
	l.ori	r23, r26, 0
	l.ori	r3, r6, 0
	l.j	.LBB39_223
	l.nop	0                       # in delay slot
.LBB39_232:                             # %while.body471.us
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.movhi	r13, hi(vfnprintf.zeroes)
	l.movhi	r23, hi(vfnprintf.zeroes)
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r14, r13, lo(vfnprintf.zeroes)
	l.ori	r24, r23, lo(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.j	.LBB39_223
	l.nop	0                       # in delay slot
.LBB39_231:                             # %while.body415.us
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -100(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r5, -112(r2)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -76(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -112(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.j	.LBB39_10
	l.nop	0                       # in delay slot
.LBB39_222:                             # %while.body538.us
	l.movhi	r13, hi(vfnprintf.blanks)
	l.movhi	r23, hi(vfnprintf.blanks)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r14, r13, lo(vfnprintf.blanks)
	l.ori	r24, r23, lo(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r13, r17, 0
	l.ori	r23, r27, 0
	l.ori	r3, r7, 0
.LBB39_223:                             # %error
	l.jal	memcpy
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -76(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -80(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB39_10:                              # %error
	l.add	r13, r14, r13
	l.add	r23, r24, r23
	l.add	r3, r4, r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-76(r2), r3
.LBB39_11:                              # %error
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -76(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end39:
	.size	vfnprintf, .Lfunc_end39-vfnprintf
	.section	.rodata,"a",@progbits
	.p2align	2
.LJTI39_0:
	.long	.LBB39_11
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_20
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_22
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_26
	.long	.LBB39_29
	.long	.LBB39_144
	.long	.LBB39_28
	.long	.LBB39_30
	.long	.LBB39_144
	.long	.LBB39_40
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_41
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_49
	.long	.LBB39_61
	.long	.LBB39_144
	.long	.LBB39_61
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_68
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_86
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_94
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_48
	.long	.LBB39_50
	.long	.LBB39_61
	.long	.LBB39_61
	.long	.LBB39_61
	.long	.LBB39_43
	.long	.LBB39_50
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_44
	.long	.LBB39_144
	.long	.LBB39_62
	.long	.LBB39_69
	.long	.LBB39_76
	.long	.LBB39_47
	.long	.LBB39_144
	.long	.LBB39_77
	.long	.LBB39_144
	.long	.LBB39_87
	.long	.LBB39_144
	.long	.LBB39_144
	.long	.LBB39_95
	.long	.LBB39_144
	.long	.LBB39_143

	.text
	.hidden	sprintf
	.globl	sprintf
	.p2align	2
	.type	sprintf,@function
sprintf:                                # @sprintf
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -12
	l.addi	r21, r21, -12           # CFC
	l.addi	r1, r1, -12
	l.ori	r15, r14, 0
	l.ori	r25, r24, 0
	l.ori	r5, r4, 0
	l.addi	r16, r12, 0
	l.addi	r26, r22, 0
	l.addi	r6, r2, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.addi	r14, r0, 1024
	l.addi	r24, r0, 1024
	l.addi	r4, r0, 1024
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end40:
	.size	sprintf, .Lfunc_end40-sprintf

	.hidden	printf_to_sim
	.globl	printf_to_sim
	.p2align	2
	.type	printf_to_sim,@function
printf_to_sim:                          # @printf_to_sim
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -24
	l.addi	r21, r21, -24           # CFC
	l.addi	r1, r1, -24
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.addi	r16, r12, 0
	l.addi	r26, r22, 0
	l.addi	r6, r2, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.movhi	r13, hi(PRINTFBUFFER)
	l.movhi	r23, hi(PRINTFBUFFER)
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r14, r0, 2048
	l.addi	r24, r0, 2048
	l.addi	r4, r0, 2048
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB41_5
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.cond.preheader
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-24(r2), r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltsi	r3, 1
	l.bf	.LBB41_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.movhi	r13, hi(PRINTFBUFFER)
	l.movhi	r23, hi(PRINTFBUFFER)
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB41_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.jal	sim_putc
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 1
	l.addi	r23, r23, 1
	l.addi	r3, r3, 1
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB41_3
	l.nop	0                       # in delay slot
.LBB41_4:                               # %while.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -24(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB41_5:                               # %cleanup
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end41:
	.size	printf_to_sim, .Lfunc_end41-printf_to_sim

	.hidden	puts_to_sim
	.globl	puts_to_sim
	.p2align	2
	.type	puts_to_sim,@function
puts_to_sim:                            # @puts_to_sim
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -12
	l.addi	r21, r21, -12           # CFC
	l.addi	r1, r1, -12
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r1), r3
	l.movhi	r13, hi(.L.str.5)
	l.movhi	r23, hi(.L.str.5)
	l.movhi	r3, hi(.L.str.5)
	l.ori	r13, r13, lo(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.ori	r3, r3, lo(.L.str.5)
	l.jal	printf_to_sim
	l.nop	0                       # in delay slot
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end42:
	.size	puts_to_sim, .Lfunc_end42-puts_to_sim

	.hidden	printf_to_uart
	.globl	printf_to_uart
	.p2align	2
	.type	printf_to_uart,@function
printf_to_uart:                         # @printf_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -24
	l.addi	r21, r21, -24           # CFC
	l.addi	r1, r1, -24
	l.ori	r15, r13, 0
	l.ori	r25, r23, 0
	l.ori	r5, r3, 0
	l.addi	r16, r12, 0
	l.addi	r26, r22, 0
	l.addi	r6, r2, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sw	-12(r2), r6
	l.movhi	r13, hi(PRINTFBUFFER)
	l.movhi	r23, hi(PRINTFBUFFER)
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r14, r0, 2048
	l.addi	r24, r0, 2048
	l.addi	r4, r0, 2048
	l.jal	vfnprintf
	l.nop	0                       # in delay slot
	l.ori	r13, r8, 0
	l.ori	r23, r31, 0
	l.ori	r3, r11, 0
	l.addi	r8, r0, -1
	l.addi	r31, r0, -1
	l.addi	r11, r0, -1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfeqi	r3, 0
	l.bf	.LBB43_5
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.cond.preheader
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-24(r2), r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfltsi	r3, 1
	l.bf	.LBB43_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.movhi	r13, hi(PRINTFBUFFER)
	l.movhi	r23, hi(PRINTFBUFFER)
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r13, r13, lo(PRINTFBUFFER)
	l.ori	r23, r23, lo(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -24(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
.LBB43_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sw	-20(r2), r4
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-16(r2), r3
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.movhi	r13, 0
	l.movhi	r23, 0
	l.movhi	r3, 0
	l.jal	uart_putc
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r4, -20(r2)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r3, -16(r2)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r13, r13, 1
	l.addi	r23, r23, 1
	l.addi	r3, r3, 1
	l.addi	r14, r14, -1
	l.addi	r24, r24, -1
	l.addi	r4, r4, -1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 0
	l.bf	.LBB43_3
	l.nop	0                       # in delay slot
.LBB43_4:                               # %while.end
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -24(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
.LBB43_5:                               # %cleanup
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end43:
	.size	printf_to_uart, .Lfunc_end43-printf_to_uart

	.hidden	putchar_to_uart
	.globl	putchar_to_uart
	.p2align	2
	.type	putchar_to_uart,@function
putchar_to_uart:                        # @putchar_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -16
	l.addi	r21, r21, -16           # CFC
	l.addi	r1, r1, -16
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	-12(r2), r3
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r1), r3
	l.movhi	r13, hi(.L.str.6)
	l.movhi	r23, hi(.L.str.6)
	l.movhi	r3, hi(.L.str.6)
	l.ori	r13, r13, lo(.L.str.6)
	l.ori	r23, r23, lo(.L.str.6)
	l.ori	r3, r3, lo(.L.str.6)
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.lwz	r11, -12(r2)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end44:
	.size	putchar_to_uart, .Lfunc_end44-putchar_to_uart

	.hidden	puts_to_uart
	.globl	puts_to_uart
	.p2align	2
	.type	puts_to_uart,@function
puts_to_uart:                           # @puts_to_uart
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.sw	-4(r1), r9
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-8(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -12
	l.addi	r21, r21, -12           # CFC
	l.addi	r1, r1, -12
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sw	0(r1), r3
	l.movhi	r13, hi(.L.str.5)
	l.movhi	r23, hi(.L.str.5)
	l.movhi	r3, hi(.L.str.5)
	l.ori	r13, r13, lo(.L.str.5)
	l.ori	r23, r23, lo(.L.str.5)
	l.ori	r3, r3, lo(.L.str.5)
	l.jal	printf_to_uart
	l.nop	0                       # in delay slot
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -8(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r9, -4(r1)
	l.addi	r29, r9, 0
	l.addi	r19, r9, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end45:
	.size	puts_to_uart, .Lfunc_end45-puts_to_uart

	.hidden	uart_init
	.globl	uart_init
	.p2align	2
	.type	uart_init,@function
uart_init:                              # @uart_init
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r14, 36864
	l.movhi	r24, 36864
	l.movhi	r4, 36864
	l.ori	r15, r14, 2
	l.ori	r25, r24, 2
	l.ori	r5, r4, 2
	l.addi	r16, r0, 199
	l.addi	r26, r0, 199
	l.addi	r6, r0, 199
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sb	0(r5), r6
	l.ori	r15, r14, 1
	l.ori	r25, r24, 1
	l.ori	r5, r4, 1
	l.movhi	r16, 0
	l.movhi	r26, 0
	l.movhi	r6, 0
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sb	0(r5), r6
	l.ori	r14, r14, 3
	l.ori	r24, r24, 3
	l.ori	r4, r4, 3
	l.addi	r17, r0, 3
	l.addi	r27, r0, 3
	l.addi	r7, r0, 3
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	0(r4), r7
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r7, 0(r4)
	l.addi	r27, r7, 0
	l.addi	r17, r7, 0
	l.ori	r17, r17, 128
	l.ori	r27, r27, 128
	l.ori	r7, r7, 128
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	0(r4), r7
	l.movhi	r17, hi(UART_BASE_ADR)
	l.movhi	r27, hi(UART_BASE_ADR)
	l.movhi	r7, hi(UART_BASE_ADR)
	l.ori	r17, r17, lo(UART_BASE_ADR)
	l.ori	r27, r27, lo(UART_BASE_ADR)
	l.ori	r7, r7, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.slli	r23, r23, 2
	l.slli	r3, r3, 2
	l.add	r13, r13, r17
	l.add	r23, r23, r27
	l.add	r3, r3, r7
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.addi	r17, r0, 27
	l.addi	r27, r0, 27
	l.addi	r7, r0, 27
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r7, r17
	l.cmov	r7, r27, r7
	l.cmov	r17, r27, r17
	l.sb	0(r3), r7
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sb	0(r5), r6
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r3, 0(r4)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r13, r13, 127
	l.andi	r23, r23, 127
	l.andi	r3, r3, 127
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sb	0(r4), r3
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end46:
	.size	uart_init, .Lfunc_end46-uart_init

	.hidden	uart_putc
	.globl	uart_putc
	.p2align	2
	.type	uart_putc,@function
uart_putc:                              # @uart_putc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r15, 36864
	l.movhi	r25, 36864
	l.movhi	r5, 36864
	l.ori	r15, r15, 5
	l.ori	r25, r25, 5
	l.ori	r5, r5, 5
.LBB47_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.lbz	r6, 0(r5)
	l.addi	r26, r6, 0
	l.addi	r16, r6, 0
	l.andi	r16, r16, 32
	l.andi	r26, r26, 32
	l.andi	r6, r6, 32
	l.sfne	r6, r16
	l.cmov	r6, r26, r6
	l.cmov	r16, r26, r16
	l.sfeqi	r6, 0
	l.bf	.LBB47_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %do.end
	l.movhi	r15, hi(UART_BASE_ADR)
	l.movhi	r25, hi(UART_BASE_ADR)
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.slli	r23, r23, 2
	l.slli	r3, r3, 2
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.andi	r14, r14, 255
	l.andi	r24, r24, 255
	l.andi	r4, r4, 255
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 10
	l.bf	.LBB47_6
	l.nop	0                       # in delay slot
# BB#3:                                 # %do.body7.preheader
	l.movhi	r14, 36864
	l.movhi	r24, 36864
	l.movhi	r4, 36864
	l.ori	r14, r14, 5
	l.ori	r24, r24, 5
	l.ori	r4, r4, 5
.LBB47_4:                               # %do.body7
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r5, 0(r4)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 32
	l.andi	r25, r25, 32
	l.andi	r5, r5, 32
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB47_4
	l.nop	0                       # in delay slot
# BB#5:                                 # %do.end15
	l.addi	r14, r0, 13
	l.addi	r24, r0, 13
	l.addi	r4, r0, 13
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
.LBB47_6:                               # %do.body18.preheader
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 5
	l.ori	r23, r23, 5
	l.ori	r3, r3, 5
.LBB47_7:                               # %do.body18
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 96
	l.andi	r24, r24, 96
	l.andi	r4, r4, 96
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sfnei	r4, 96
	l.bf	.LBB47_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %do.end26
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end47:
	.size	uart_putc, .Lfunc_end47-uart_putc

	.hidden	uart_putc_noblock
	.globl	uart_putc_noblock
	.p2align	2
	.type	uart_putc_noblock,@function
uart_putc_noblock:                      # @uart_putc_noblock
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r15, hi(UART_BASE_ADR)
	l.movhi	r25, hi(UART_BASE_ADR)
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r15, r15, lo(UART_BASE_ADR)
	l.ori	r25, r25, lo(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.slli	r23, r23, 2
	l.slli	r3, r3, 2
	l.add	r13, r13, r15
	l.add	r23, r23, r25
	l.add	r3, r3, r5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end48:
	.size	uart_putc_noblock, .Lfunc_end48-uart_putc_noblock

	.hidden	uart_getc
	.globl	uart_getc
	.p2align	2
	.type	uart_getc,@function
uart_getc:                              # @uart_getc
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r14, 36864
	l.movhi	r24, 36864
	l.movhi	r4, 36864
	l.ori	r14, r14, 5
	l.ori	r24, r24, 5
	l.ori	r4, r4, 5
.LBB49_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.lbz	r5, 0(r4)
	l.addi	r25, r5, 0
	l.addi	r15, r5, 0
	l.andi	r15, r15, 1
	l.andi	r25, r25, 1
	l.andi	r5, r5, 1
	l.sfne	r5, r15
	l.cmov	r5, r25, r5
	l.cmov	r15, r25, r15
	l.sfeqi	r5, 0
	l.bf	.LBB49_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %do.end
	l.movhi	r14, hi(UART_BASE_ADR)
	l.movhi	r24, hi(UART_BASE_ADR)
	l.movhi	r4, hi(UART_BASE_ADR)
	l.ori	r14, r14, lo(UART_BASE_ADR)
	l.ori	r24, r24, lo(UART_BASE_ADR)
	l.ori	r4, r4, lo(UART_BASE_ADR)
	l.slli	r13, r13, 2
	l.slli	r23, r23, 2
	l.slli	r3, r3, 2
	l.add	r13, r13, r14
	l.add	r23, r23, r24
	l.add	r3, r3, r4
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lwz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end49:
	.size	uart_getc, .Lfunc_end49-uart_getc

	.hidden	uart_check_for_char
	.globl	uart_check_for_char
	.p2align	2
	.type	uart_check_for_char,@function
uart_check_for_char:                    # @uart_check_for_char
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 5
	l.ori	r23, r23, 5
	l.ori	r3, r3, 5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r3, 0(r3)
	l.addi	r23, r3, 0
	l.addi	r13, r3, 0
	l.andi	r8, r13, 1
	l.andi	r31, r23, 1
	l.andi	r11, r3, 1
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end50:
	.size	uart_check_for_char, .Lfunc_end50-uart_check_for_char

	.hidden	uart_rxint_enable
	.globl	uart_rxint_enable
	.p2align	2
	.type	uart_rxint_enable,@function
uart_rxint_enable:                      # @uart_rxint_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.ori	r14, r14, 1
	l.ori	r24, r24, 1
	l.ori	r4, r4, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end51:
	.size	uart_rxint_enable, .Lfunc_end51-uart_rxint_enable

	.hidden	uart_rxint_disable
	.globl	uart_rxint_disable
	.p2align	2
	.type	uart_rxint_disable,@function
uart_rxint_disable:                     # @uart_rxint_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 254
	l.andi	r24, r24, 254
	l.andi	r4, r4, 254
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end52:
	.size	uart_rxint_disable, .Lfunc_end52-uart_rxint_disable

	.hidden	uart_txint_enable
	.globl	uart_txint_enable
	.p2align	2
	.type	uart_txint_enable,@function
uart_txint_enable:                      # @uart_txint_enable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.ori	r14, r14, 2
	l.ori	r24, r24, 2
	l.ori	r4, r4, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end53:
	.size	uart_txint_enable, .Lfunc_end53-uart_txint_enable

	.hidden	uart_txint_disable
	.globl	uart_txint_disable
	.p2align	2
	.type	uart_txint_disable,@function
uart_txint_disable:                     # @uart_txint_disable
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 1
	l.ori	r23, r23, 1
	l.ori	r3, r3, 1
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbz	r4, 0(r3)
	l.addi	r24, r4, 0
	l.addi	r14, r4, 0
	l.andi	r14, r14, 253
	l.andi	r24, r24, 253
	l.andi	r4, r4, 253
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.sfne	r4, r14
	l.cmov	r4, r24, r4
	l.cmov	r14, r24, r14
	l.sb	0(r3), r4
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end54:
	.size	uart_txint_disable, .Lfunc_end54-uart_txint_disable

	.hidden	uart_get_iir
	.globl	uart_get_iir
	.p2align	2
	.type	uart_get_iir,@function
uart_get_iir:                           # @uart_get_iir
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 2
	l.ori	r23, r23, 2
	l.ori	r3, r3, 2
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end55:
	.size	uart_get_iir, .Lfunc_end55-uart_get_iir

	.hidden	uart_get_lsr
	.globl	uart_get_lsr
	.p2align	2
	.type	uart_get_lsr,@function
uart_get_lsr:                           # @uart_get_lsr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 5
	l.ori	r23, r23, 5
	l.ori	r3, r3, 5
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end56:
	.size	uart_get_lsr, .Lfunc_end56-uart_get_lsr

	.hidden	uart_get_msr
	.globl	uart_get_msr
	.p2align	2
	.type	uart_get_msr,@function
uart_get_msr:                           # @uart_get_msr
# BB#0:                                 # %entry
	l.addi	r19, r9, 0
	l.addi	r29, r9, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.sfne	r2, r12
	l.cmov	r2, r22, r2
	l.cmov	r12, r22, r12
	l.sw	-4(r1), r2
	l.addi	r12, r10, 0
	l.addi	r22, r21, 0             # CFC
	l.addi	r2, r1, 0
	l.addi	r10, r10, -4
	l.addi	r21, r21, -4            # CFC
	l.addi	r1, r1, -4
	l.movhi	r13, 36864
	l.movhi	r23, 36864
	l.movhi	r3, 36864
	l.ori	r13, r13, 6
	l.ori	r23, r23, 6
	l.ori	r3, r3, 6
	l.sfne	r3, r13
	l.cmov	r3, r23, r3
	l.cmov	r13, r23, r13
	l.lbs	r11, 0(r3)
	l.addi	r31, r11, 0
	l.addi	r8, r11, 0
	l.addi	r10, r12, 0
	l.addi	r21, r22, 0             # CFC
	l.addi	r1, r2, 0
	l.sfne	r1, r10
	l.cmov	r1, r21, r1
	l.cmov	r10, r21, r10
	l.lwz	r2, -4(r1)
	l.addi	r22, r2, 0              # CFC
	l.addi	r12, r2, 0
	l.sfne	r9, r19
	l.cmov	r9, r29, r9
	l.cmov	r19, r29, r19
	l.jr	r9
	l.nop	0                       # in delay slot
.Lfunc_end57:
	.size	uart_get_msr, .Lfunc_end57-uart_get_msr

	.type	bits,@object            # @bits
	.section	.rodata,"a",@progbits
bits:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits, 256

	.type	bits.1,@object          # @bits.1
bits.1:
	.ascii	"\000\001\001\002\001\002\002\003\001\002\002\003\002\003\003\004\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\001\002\002\003\002\003\003\004\002\003\003\004\003\004\004\005\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\002\003\003\004\003\004\004\005\003\004\004\005\004\005\005\006\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\003\004\004\005\004\005\005\006\004\005\005\006\005\006\006\007\004\005\005\006\005\006\006\007\005\006\006\007\006\007\007\b"
	.size	bits.1, 256

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"%ld\n"
	.size	.L.str.7, 5

	.type	.L.str,@object          # @.str
.L.str:
	.asciz	"01"
	.size	.L.str, 3

	.hidden	int_handlers            # @int_handlers
	.type	int_handlers,@object
	.comm	int_handlers,256,4
	.type	rand.lfsr,@object       # @rand.lfsr
	.data
	.p2align	2
rand.lfsr:
	.long	347520060               # 0x14b6bc3c
	.size	rand.lfsr, 4

	.type	rand.period,@object     # @rand.period
	.local	rand.period
	.comm	rand.period,4,4
	.hidden	timer_ticks             # @timer_ticks
	.type	timer_ticks,@object
	.comm	timer_ticks,4,4
	.hidden	PRINTFBUFFER            # @PRINTFBUFFER
	.type	PRINTFBUFFER,@object
	.comm	PRINTFBUFFER,2048,1
	.type	.L.str.2,@object        # @.str.2
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.2:
	.asciz	"(null)"
	.size	.L.str.2, 7

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"0123456789abcdef"
	.size	.L.str.1, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.4, 26

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.zero	1
	.size	.L.str.8, 1

	.type	vfnprintf.blanks,@object # @vfnprintf.blanks
	.data
vfnprintf.blanks:
	.zero	16,32
	.size	vfnprintf.blanks, 16

	.type	vfnprintf.zeroes,@object # @vfnprintf.zeroes
vfnprintf.zeroes:
	.zero	16,48
	.size	vfnprintf.zeroes, 16

	.type	.L.str.5,@object        # @.str.5
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.5:
	.asciz	"%s\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c"
	.size	.L.str.6, 3

	.hidden	UART_BASE_ADR           # @UART_BASE_ADR
	.type	UART_BASE_ADR,@object
	.section	.rodata,"a",@progbits
	.globl	UART_BASE_ADR
	.p2align	2
UART_BASE_ADR:
	.long	2415919104              # 0x90000000
	.size	UART_BASE_ADR, 4

	.hidden	UART_BAUDS              # @UART_BAUDS
	.type	UART_BAUDS,@object
	.globl	UART_BAUDS
	.p2align	2
UART_BAUDS:
	.long	115200                  # 0x1c200
	.size	UART_BAUDS, 4

	.hidden	tx_buff                 # @tx_buff
	.type	tx_buff,@object
	.comm	tx_buff,32,1
	.hidden	tx_level                # @tx_level
	.type	tx_level,@object
	.comm	tx_level,4,4
	.hidden	rx_level                # @rx_level
	.type	rx_level,@object
	.comm	rx_level,4,4

	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.ident	"clang version 3.9.1 (git://github.com/openrisc/clang-or1k.git a6cc86e01f03c312de170d69c422eb589a47a6d4) (git://github.com/openrisc/llvm-or1k.git e7a754c40e8f2bcf3889573d2fa447f008c1a7a7)"
	.section	".note.GNU-stack","",@progbits
