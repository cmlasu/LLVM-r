	.text
	.file	"QSORT.LL"
	.hidden	__addsf3
	.globl	__addsf3
	.p2align	2
	.type	__addsf3,@function
__addsf3:                               # @__addsf3
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB0_142
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r5, 1023
	l.addi	r15, r14, 0
	l.ori	r6, r5, 65528
	l.addi	r14, r14, -4
	l.slli	r5, r4, 3
	l.movhi	r18, 1023
	l.and	r5, r5, r6
	l.ori	r19, r18, 65528
	l.slli	r7, r3, 3
	l.slli	r18, r17, 3
	l.and	r6, r7, r6
	l.and	r18, r18, r19
	l.srli	r7, r4, 23
	l.slli	r20, r16, 3
	l.andi	r11, r7, 255
	l.and	r19, r20, r19
	l.srli	r8, r3, 23
	l.srli	r20, r17, 23
	l.andi	r7, r8, 255
	l.andi	r24, r20, 255
	l.sub	r13, r7, r11
	l.srli	r21, r16, 23
	l.srli	r12, r4, 31
	l.andi	r20, r21, 255
	l.srli	r3, r3, 31
	l.sub	r26, r20, r24
	l.srli	r25, r17, 31
	l.srli	r16, r16, 31
	l.sfne	r3, r16
	l.bf	.LBB0_142
	l.sfne	r12, r25
	l.bf	.LBB0_142
	l.sfne	r3, r12
	l.bf	.LBB0_6
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfltsi	r13, 1
	l.bf	.LBB0_23
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then40
	l.sfne	r11, r24
	l.bf	.LBB0_142
	l.sfnei	r11, 0
	l.bf	.LBB0_11
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then42
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.ori	r4, r7, 0
	l.ori	r8, r6, 0
	l.ori	r17, r20, 0
	l.ori	r21, r19, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.else
	l.addi	r13, r13, -1
	l.addi	r26, r26, -1
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfnei	r13, 0
	l.bf	.LBB0_66
	l.nop	0                       # in delay slot
# BB#5:                                 # %if.then55
	l.add	r8, r5, r6
	l.ori	r4, r7, 0
	l.add	r21, r18, r19
	l.ori	r17, r20, 0
	l.j	.LBB0_112
	l.nop	0                       # in delay slot
.LBB0_6:                                # %if.else333
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfltsi	r13, 1
	l.bf	.LBB0_28
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then338
	l.sfne	r11, r24
	l.bf	.LBB0_142
	l.sfnei	r11, 0
	l.bf	.LBB0_17
	l.nop	0                       # in delay slot
# BB#8:                                 # %if.then341
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.ori	r4, r7, 0
	l.ori	r8, r6, 0
	l.ori	r17, r20, 0
	l.ori	r21, r19, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#9:                                 # %if.else363
	l.addi	r13, r13, -1
	l.addi	r26, r26, -1
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfnei	r13, 0
	l.bf	.LBB0_67
	l.nop	0                       # in delay slot
# BB#10:                                # %if.then367
	l.sub	r8, r6, r5
	l.sub	r21, r19, r18
	l.j	.LBB0_63
	l.nop	0                       # in delay slot
.LBB0_11:                               # %if.else76
	l.addi	r4, r0, 255
	l.addi	r17, r0, 255
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfeqi	r7, 255
	l.ori	r8, r6, 0
	l.ori	r21, r19, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#12:                                # %if.end96
	l.movhi	r4, 1024
	l.or	r5, r5, r4
	l.movhi	r17, 1024
	l.or	r18, r18, r17
.LBB0_13:                               # %add1
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfgtsi	r13, 27
	l.bf	.LBB0_55
	l.nop	0                       # in delay slot
# BB#14:                                # %if.then98
	l.addi	r4, r0, 32
	l.sub	r4, r4, r13
	l.sll	r8, r5, r4
	l.addi	r17, r0, 32
	l.addi	r4, r0, 1
	l.sub	r17, r17, r26
	l.sll	r21, r18, r17
	l.addi	r17, r0, 1
	l.sfne	r8, r21
	l.bf	.LBB0_142
	l.sfnei	r8, 0
	l.bf	.LBB0_16
	l.nop	0                       # in delay slot
# BB#15:                                # %if.then98
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB0_16:                               # %if.then98
	l.srl	r5, r5, r13
	l.andi	r4, r4, 1
	l.or	r4, r4, r5
	l.srl	r18, r18, r26
	l.andi	r17, r17, 1
	l.or	r17, r17, r18
	l.j	.LBB0_58
	l.nop	0                       # in delay slot
.LBB0_17:                               # %if.else392
	l.addi	r4, r0, 255
	l.addi	r17, r0, 255
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfeqi	r7, 255
	l.ori	r8, r6, 0
	l.ori	r21, r19, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#18:                                # %if.end415
	l.movhi	r4, 1024
	l.or	r5, r5, r4
	l.movhi	r17, 1024
	l.or	r18, r18, r17
.LBB0_19:                               # %sub1
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfgtsi	r13, 27
	l.bf	.LBB0_59
	l.nop	0                       # in delay slot
# BB#20:                                # %if.then419
	l.addi	r4, r0, 32
	l.sub	r4, r4, r13
	l.sll	r8, r5, r4
	l.addi	r17, r0, 32
	l.addi	r4, r0, 1
	l.sub	r17, r17, r26
	l.sll	r21, r18, r17
	l.addi	r17, r0, 1
	l.sfne	r8, r21
	l.bf	.LBB0_142
	l.sfnei	r8, 0
	l.bf	.LBB0_22
	l.nop	0                       # in delay slot
# BB#21:                                # %if.then419
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB0_22:                               # %if.then419
	l.srl	r5, r5, r13
	l.andi	r4, r4, 1
	l.or	r4, r4, r5
	l.srl	r18, r18, r26
	l.andi	r17, r17, 1
	l.or	r17, r17, r18
	l.j	.LBB0_62
	l.nop	0                       # in delay slot
.LBB0_23:                               # %if.else110
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfgtsi	r13, -1
	l.bf	.LBB0_33
	l.nop	0                       # in delay slot
# BB#24:                                # %if.then113
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfnei	r7, 0
	l.bf	.LBB0_68
	l.nop	0                       # in delay slot
# BB#25:                                # %if.then117
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfeqi	r6, 0
	l.ori	r4, r11, 0
	l.ori	r8, r5, 0
	l.ori	r17, r24, 0
	l.ori	r21, r18, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#26:                                # %if.else139
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfnei	r13, -1
	l.bf	.LBB0_134
	l.nop	0                       # in delay slot
# BB#27:                                # %if.then143
	l.add	r8, r5, r6
	l.add	r21, r18, r19
	l.j	.LBB0_111
	l.nop	0                       # in delay slot
.LBB0_28:                               # %if.else433
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfgtsi	r13, -1
	l.bf	.LBB0_45
	l.nop	0                       # in delay slot
# BB#29:                                # %if.then436
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfnei	r7, 0
	l.bf	.LBB0_74
	l.nop	0                       # in delay slot
# BB#30:                                # %if.then440
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfeqi	r6, 0
	l.ori	r3, r12, 0
	l.ori	r4, r11, 0
	l.ori	r8, r5, 0
	l.ori	r16, r25, 0
	l.ori	r17, r24, 0
	l.ori	r21, r18, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#31:                                # %if.else462
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfnei	r13, -1
	l.bf	.LBB0_135
	l.nop	0                       # in delay slot
# BB#32:                                # %if.then466
	l.sub	r8, r5, r6
	l.sub	r21, r18, r19
	l.j	.LBB0_133
	l.nop	0                       # in delay slot
.LBB0_33:                               # %if.else209
	l.addi	r4, r8, 1
	l.andi	r4, r4, 254
	l.addi	r17, r21, 1
	l.andi	r17, r17, 254
	l.sfne	r4, r17
	l.bf	.LBB0_142
	l.sfnei	r4, 0
	l.bf	.LBB0_51
	l.nop	0                       # in delay slot
# BB#34:                                # %if.then214
	l.addi	r4, r0, 1
	l.addi	r17, r0, 1
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.ori	r12, r4, 0
	l.ori	r25, r17, 0
	l.bf	.LBB0_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then214
	l.movhi	r12, 0
	l.movhi	r25, 0
.LBB0_36:                               # %if.then214
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfeqi	r6, 0
	l.bf	.LBB0_38
	l.nop	0                       # in delay slot
# BB#37:                                # %if.then214
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB0_38:                               # %if.then214
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfeqi	r6, 0
	l.ori	r8, r5, 0
	l.ori	r21, r18, 0
	l.bf	.LBB0_40
	l.nop	0                       # in delay slot
# BB#39:                                # %if.then214
	l.ori	r8, r6, 0
	l.ori	r21, r19, 0
.LBB0_40:                               # %if.then214
	l.or	r12, r4, r12
	l.or	r25, r17, r25
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfnei	r7, 0
	l.bf	.LBB0_87
	l.nop	0                       # in delay slot
# BB#41:                                # %if.then217
	l.movhi	r4, 0
	l.andi	r7, r12, 1
	l.movhi	r17, 0
	l.andi	r20, r25, 1
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfnei	r7, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#42:                                # %if.else229
	l.add	r4, r5, r6
	l.movhi	r5, 1024
	l.and	r5, r4, r5
	l.add	r17, r18, r19
	l.movhi	r18, 1024
	l.and	r18, r17, r18
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.ori	r8, r4, 0
	l.ori	r21, r17, 0
	l.bf	.LBB0_44
	l.nop	0                       # in delay slot
# BB#43:                                # %if.else229
	l.movhi	r5, 1023
	l.ori	r5, r5, 65528
	l.and	r8, r4, r5
	l.movhi	r18, 1023
	l.ori	r18, r18, 65528
	l.and	r21, r17, r18
.LBB0_44:                               # %if.else229
	l.srli	r4, r4, 26
	l.srli	r17, r17, 26
	l.j	.LBB0_116
	l.nop	0                       # in delay slot
.LBB0_45:                               # %if.else532
	l.addi	r4, r8, 1
	l.andi	r4, r4, 254
	l.addi	r17, r21, 1
	l.andi	r17, r17, 254
	l.sfne	r4, r17
	l.bf	.LBB0_142
	l.sfnei	r4, 0
	l.bf	.LBB0_53
	l.nop	0                       # in delay slot
# BB#46:                                # %if.then537
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfnei	r7, 0
	l.bf	.LBB0_93
	l.nop	0                       # in delay slot
# BB#47:                                # %if.then540
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfnei	r6, 0
	l.bf	.LBB0_136
	l.nop	0                       # in delay slot
# BB#48:                                # %if.then543
	l.movhi	r4, 0
	l.movhi	r17, 0
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.movhi	r3, 0
	l.movhi	r16, 0
	l.bf	.LBB0_115
	l.nop	0                       # in delay slot
# BB#49:                                # %if.then543
	l.ori	r3, r12, 0
	l.ori	r16, r25, 0
	l.j	.LBB0_115
	l.nop	0                       # in delay slot
.LBB0_51:                               # %if.end303
	l.addi	r4, r7, 1
	l.movhi	r8, 0
	l.addi	r17, r20, 1
	l.movhi	r21, 0
	l.sfne	r4, r17
	l.bf	.LBB0_142
	l.sfeqi	r4, 255
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#52:                                # %if.end303
	l.add	r5, r5, r6
	l.srli	r8, r5, 1
	l.add	r18, r18, r19
	l.srli	r21, r18, 1
	l.j	.LBB0_116
	l.nop	0                       # in delay slot
.LBB0_53:                               # %if.end641
	l.sub	r13, r6, r5
	l.movhi	r4, 1024
	l.and	r4, r13, r4
	l.sub	r26, r19, r18
	l.movhi	r17, 1024
	l.and	r17, r26, r17
	l.sfne	r4, r17
	l.bf	.LBB0_142
	l.sfeqi	r4, 0
	l.bf	.LBB0_80
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then645
	l.sub	r13, r5, r6
	l.sub	r26, r18, r19
	l.j	.LBB0_81
	l.nop	0                       # in delay slot
.LBB0_55:                               # %if.else103
	l.addi	r4, r0, 1
	l.addi	r17, r0, 1
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfnei	r5, 0
	l.bf	.LBB0_57
	l.nop	0                       # in delay slot
# BB#56:                                # %if.else103
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB0_57:                               # %if.else103
	l.andi	r4, r4, 1
	l.andi	r17, r17, 1
.LBB0_58:                               # %add3
	l.add	r8, r4, r6
	l.ori	r4, r7, 0
	l.add	r21, r17, r19
	l.ori	r17, r20, 0
	l.j	.LBB0_112
	l.nop	0                       # in delay slot
.LBB0_59:                               # %if.else426
	l.addi	r4, r0, 1
	l.addi	r17, r0, 1
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfnei	r5, 0
	l.bf	.LBB0_61
	l.nop	0                       # in delay slot
# BB#60:                                # %if.else426
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB0_61:                               # %if.else426
	l.andi	r4, r4, 1
	l.andi	r17, r17, 1
.LBB0_62:                               # %sub3
	l.sub	r8, r6, r4
	l.sub	r21, r19, r17
.LBB0_63:                               # %sub3
	l.ori	r4, r7, 0
	l.ori	r17, r20, 0
.LBB0_64:                               # %sub3
	l.movhi	r5, 1024
	l.and	r5, r8, r5
	l.movhi	r18, 1024
	l.and	r18, r21, r18
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#65:                                # %if.then657
	l.movhi	r5, 1023
	l.ori	r5, r5, 65535
	l.and	r13, r8, r5
	l.movhi	r18, 1023
	l.ori	r12, r3, 0
	l.ori	r18, r18, 65535
	l.ori	r7, r4, 0
	l.and	r26, r21, r18
	l.ori	r25, r16, 0
	l.ori	r20, r17, 0
	l.j	.LBB0_81
	l.nop	0                       # in delay slot
.LBB0_66:                               # %if.end56
	l.addi	r4, r0, 255
	l.addi	r17, r0, 255
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfeqi	r7, 255
	l.ori	r8, r6, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
	l.ori	r21, r19, 0
	l.j	.LBB0_13
	l.nop	0                       # in delay slot
.LBB0_67:                               # %if.end369
	l.addi	r4, r0, 255
	l.addi	r17, r0, 255
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfeqi	r7, 255
	l.ori	r8, r6, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
	l.ori	r21, r19, 0
	l.j	.LBB0_19
	l.nop	0                       # in delay slot
.LBB0_68:                               # %if.else168
	l.addi	r4, r0, 255
	l.addi	r17, r0, 255
	l.sfne	r11, r24
	l.bf	.LBB0_142
	l.sfeqi	r11, 255
	l.ori	r8, r5, 0
	l.ori	r21, r18, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#69:                                # %if.end191
	l.movhi	r4, 0
	l.sub	r7, r4, r13
	l.movhi	r4, 1024
	l.movhi	r17, 0
	l.or	r6, r6, r4
	l.sub	r20, r17, r26
	l.movhi	r17, 1024
	l.or	r19, r19, r17
.LBB0_70:                               # %add2
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfgtsi	r7, 27
	l.bf	.LBB0_107
	l.nop	0                       # in delay slot
# BB#71:                                # %if.then195
	l.addi	r4, r0, 32
	l.sub	r4, r4, r7
	l.sll	r8, r6, r4
	l.addi	r17, r0, 32
	l.addi	r4, r0, 1
	l.sub	r17, r17, r20
	l.sll	r21, r19, r17
	l.addi	r17, r0, 1
	l.sfne	r8, r21
	l.bf	.LBB0_142
	l.sfnei	r8, 0
	l.bf	.LBB0_73
	l.nop	0                       # in delay slot
# BB#72:                                # %if.then195
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB0_73:                               # %if.then195
	l.srl	r6, r6, r7
	l.andi	r4, r4, 1
	l.or	r4, r4, r6
	l.srl	r19, r19, r20
	l.andi	r17, r17, 1
	l.or	r17, r17, r19
	l.j	.LBB0_110
	l.nop	0                       # in delay slot
.LBB0_74:                               # %if.else491
	l.addi	r4, r0, 255
	l.addi	r17, r0, 255
	l.sfne	r11, r24
	l.bf	.LBB0_142
	l.sfeqi	r11, 255
	l.ori	r3, r12, 0
	l.ori	r8, r5, 0
	l.ori	r16, r25, 0
	l.ori	r21, r18, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#75:                                # %if.end514
	l.movhi	r3, 0
	l.sub	r7, r3, r13
	l.movhi	r3, 1024
	l.movhi	r16, 0
	l.or	r6, r6, r3
	l.sub	r20, r16, r26
	l.movhi	r16, 1024
	l.or	r19, r19, r16
.LBB0_76:                               # %sub2
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfgtsi	r7, 27
	l.bf	.LBB0_129
	l.nop	0                       # in delay slot
# BB#77:                                # %if.then518
	l.addi	r3, r0, 32
	l.sub	r3, r3, r7
	l.sll	r4, r6, r3
	l.addi	r16, r0, 32
	l.addi	r3, r0, 1
	l.sub	r16, r16, r20
	l.sll	r17, r19, r16
	l.addi	r16, r0, 1
	l.sfne	r4, r17
	l.bf	.LBB0_142
	l.sfnei	r4, 0
	l.bf	.LBB0_79
	l.nop	0                       # in delay slot
# BB#78:                                # %if.then518
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB0_79:                               # %if.then518
	l.srl	r4, r6, r7
	l.andi	r3, r3, 1
	l.or	r3, r3, r4
	l.srl	r17, r19, r20
	l.andi	r16, r16, 1
	l.or	r16, r16, r17
	l.j	.LBB0_132
	l.nop	0                       # in delay slot
.LBB0_80:                               # %if.else647
	l.movhi	r4, 0
	l.movhi	r17, 0
	l.sfne	r13, r26
	l.bf	.LBB0_142
	l.sfeqi	r13, 0
	l.ori	r12, r3, 0
	l.movhi	r3, 0
	l.movhi	r8, 0
	l.ori	r25, r16, 0
	l.movhi	r16, 0
	l.movhi	r21, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
.LBB0_81:                               # %do.body659
	l.srli	r3, r13, 1
	l.or	r3, r13, r3
	l.srli	r4, r3, 2
	l.srli	r16, r26, 1
	l.or	r3, r3, r4
	l.or	r16, r26, r16
	l.srli	r4, r3, 4
	l.srli	r17, r16, 2
	l.or	r3, r3, r4
	l.or	r16, r16, r17
	l.srli	r4, r3, 8
	l.srli	r17, r16, 4
	l.or	r3, r3, r4
	l.or	r16, r16, r17
	l.srli	r4, r3, 16
	l.srli	r17, r16, 8
	l.or	r3, r3, r4
	l.or	r16, r16, r17
	l.movhi	r4, 21845
	l.srli	r17, r16, 16
	l.ori	r4, r4, 21845
	l.or	r16, r16, r17
	l.xori	r3, r3, -1
	l.movhi	r17, 21845
	l.srli	r5, r3, 1
	l.ori	r17, r17, 21845
	l.and	r4, r5, r4
	l.xori	r16, r16, -1
	l.sub	r3, r3, r4
	l.srli	r18, r16, 1
	l.movhi	r4, 13107
	l.and	r17, r18, r17
	l.ori	r4, r4, 13107
	l.sub	r16, r16, r17
	l.and	r5, r3, r4
	l.movhi	r17, 13107
	l.srli	r3, r3, 2
	l.ori	r17, r17, 13107
	l.and	r3, r3, r4
	l.and	r18, r16, r17
	l.add	r3, r5, r3
	l.srli	r16, r16, 2
	l.srli	r4, r3, 4
	l.and	r16, r16, r17
	l.add	r3, r3, r4
	l.add	r16, r18, r16
	l.movhi	r4, 3855
	l.srli	r17, r16, 4
	l.ori	r4, r4, 3855
	l.add	r16, r16, r17
	l.and	r3, r3, r4
	l.movhi	r17, 3855
	l.movhi	r4, 257
	l.ori	r17, r17, 3855
	l.ori	r4, r4, 257
	l.and	r16, r16, r17
	l.mul	r3, r3, r4
	l.movhi	r17, 257
	l.srli	r3, r3, 24
	l.ori	r17, r17, 257
	l.addi	r4, r3, -5
	l.mul	r16, r16, r17
	l.sll	r3, r13, r4
	l.srli	r16, r16, 24
	l.addi	r17, r16, -5
	l.sll	r16, r26, r17
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfne	r4, r17
	l.bf	.LBB0_142
	l.sfgts	r7, r4
	l.bf	.LBB0_85
	l.nop	0                       # in delay slot
# BB#82:                                # %if.then669
	l.sub	r4, r4, r7
	l.addi	r5, r0, 31
	l.sub	r6, r5, r4
	l.sub	r17, r17, r20
	l.addi	r4, r4, 1
	l.addi	r18, r0, 31
	l.srl	r5, r3, r4
	l.sub	r19, r18, r17
	l.sll	r6, r3, r6
	l.addi	r17, r17, 1
	l.movhi	r4, 0
	l.srl	r18, r16, r17
	l.addi	r3, r0, 1
	l.sll	r19, r16, r19
	l.movhi	r17, 0
	l.addi	r16, r0, 1
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfnei	r6, 0
	l.bf	.LBB0_84
	l.nop	0                       # in delay slot
# BB#83:                                # %if.then669
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB0_84:                               # %if.then669
	l.andi	r3, r3, 1
	l.or	r8, r3, r5
	l.andi	r16, r16, 1
	l.or	r21, r16, r18
	l.j	.LBB0_86
	l.nop	0                       # in delay slot
.LBB0_85:                               # %if.else678
	l.sub	r4, r7, r4
	l.movhi	r5, 64511
	l.ori	r5, r5, 65535
	l.sub	r17, r20, r17
	l.and	r8, r3, r5
	l.movhi	r18, 64511
	l.ori	r18, r18, 65535
	l.and	r21, r16, r18
.LBB0_86:                               # %do.body687
	l.ori	r3, r12, 0
	l.ori	r16, r25, 0
	l.j	.LBB0_116
	l.nop	0                       # in delay slot
.LBB0_87:                               # %do.body237
	l.addi	r4, r0, 255
	l.andi	r7, r12, 1
	l.addi	r17, r0, 255
	l.andi	r20, r25, 1
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfnei	r7, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#88:                                # %do.body281
	l.srli	r6, r6, 3
	l.srli	r5, r5, 3
	l.movhi	r7, 64
	l.srli	r19, r19, 3
	l.and	r8, r5, r7
	l.srli	r18, r18, 3
	l.movhi	r20, 64
	l.and	r21, r18, r20
	l.sfne	r8, r21
	l.bf	.LBB0_142
	l.sfeqi	r8, 0
	l.bf	.LBB0_90
	l.nop	0                       # in delay slot
# BB#89:                                # %do.body281
	l.ori	r5, r6, 0
	l.ori	r18, r19, 0
.LBB0_90:                               # %do.body281
	l.and	r7, r6, r7
	l.and	r20, r19, r20
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfnei	r7, 0
	l.bf	.LBB0_92
	l.nop	0                       # in delay slot
# BB#91:                                # %do.body281
	l.ori	r5, r6, 0
	l.ori	r18, r19, 0
.LBB0_92:                               # %do.body281
	l.slli	r8, r5, 3
	l.slli	r21, r18, 3
	l.j	.LBB0_116
	l.nop	0                       # in delay slot
.LBB0_93:                               # %do.body566
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfnei	r6, 0
	l.bf	.LBB0_99
	l.nop	0                       # in delay slot
# BB#94:                                # %if.then604
	l.addi	r3, r0, 1
	l.addi	r16, r0, 1
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.bf	.LBB0_96
	l.nop	0                       # in delay slot
# BB#95:                                # %if.then604
	l.ori	r3, r12, 0
	l.ori	r16, r25, 0
.LBB0_96:                               # %if.then604
	l.movhi	r8, 512
	l.movhi	r21, 512
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.bf	.LBB0_98
	l.nop	0                       # in delay slot
# BB#97:                                # %if.then604
	l.ori	r8, r5, 0
	l.ori	r21, r18, 0
.LBB0_98:                               # %if.then604
	l.addi	r4, r0, 255
	l.addi	r17, r0, 255
	l.j	.LBB0_116
	l.nop	0                       # in delay slot
.LBB0_99:                               # %if.else614
	l.addi	r4, r0, 255
	l.addi	r17, r0, 255
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.ori	r8, r6, 0
	l.ori	r21, r19, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#100:                               # %do.body619
	l.srli	r5, r5, 3
	l.movhi	r7, 64
	l.and	r8, r5, r7
	l.srli	r18, r18, 3
	l.addi	r7, r0, 1
	l.movhi	r20, 64
	l.and	r21, r18, r20
	l.addi	r20, r0, 1              # CFC
	l.sfne	r8, r21
	l.bf	.LBB0_142
	l.sfeqi	r8, 0
	l.bf	.LBB0_102
	l.nop	0                       # in delay slot
# BB#101:                               # %do.body619
	l.movhi	r7, 0
	l.movhi	r20, 0
.LBB0_102:                              # %do.body619
	l.srli	r8, r6, 25
	l.and	r7, r8, r7
	l.andi	r7, r7, 1
	l.srli	r21, r19, 25
	l.and	r20, r21, r20
	l.andi	r20, r20, 1
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfnei	r7, 0
	l.bf	.LBB0_104
	l.nop	0                       # in delay slot
# BB#103:                               # %do.body619
	l.ori	r12, r3, 0
	l.ori	r25, r16, 0
.LBB0_104:                              # %do.body619
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfnei	r7, 0
	l.bf	.LBB0_106
	l.nop	0                       # in delay slot
# BB#105:                               # %do.body619
	l.srli	r5, r6, 3
	l.srli	r18, r19, 3
.LBB0_106:                              # %do.body619
	l.slli	r8, r5, 3
	l.slli	r21, r18, 3
	l.j	.LBB0_86
	l.nop	0                       # in delay slot
.LBB0_107:                              # %if.else202
	l.addi	r4, r0, 1
	l.addi	r17, r0, 1
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfnei	r6, 0
	l.bf	.LBB0_109
	l.nop	0                       # in delay slot
# BB#108:                               # %if.else202
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB0_109:                              # %if.else202
	l.andi	r4, r4, 1
	l.andi	r17, r17, 1
.LBB0_110:                              # %add3
	l.add	r8, r4, r5
	l.add	r21, r17, r18
.LBB0_111:                              # %add3
	l.ori	r4, r11, 0
	l.ori	r17, r24, 0
.LBB0_112:                              # %add3
	l.movhi	r5, 1024
	l.and	r5, r8, r5
	l.movhi	r18, 1024
	l.and	r18, r21, r18
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#113:                               # %if.then320
	l.addi	r4, r4, 1
	l.movhi	r5, 0
	l.addi	r17, r17, 1
	l.movhi	r18, 0
	l.sfne	r4, r17
	l.bf	.LBB0_142
	l.sfeqi	r4, 255
	l.bf	.LBB0_115
	l.nop	0                       # in delay slot
# BB#114:                               # %if.then320
	l.movhi	r5, 32255
	l.ori	r5, r5, 65535
	l.srli	r6, r8, 1
	l.movhi	r18, 32255
	l.and	r5, r6, r5
	l.ori	r18, r18, 65535
	l.andi	r6, r8, 1
	l.srli	r19, r21, 1
	l.or	r5, r5, r6
	l.and	r18, r19, r18
	l.andi	r19, r21, 1
	l.or	r18, r18, r19
.LBB0_115:                              # %if.then320
	l.ori	r8, r5, 0
	l.ori	r21, r18, 0
.LBB0_116:                              # %do.body687
	l.andi	r5, r8, 15
	l.andi	r18, r21, 15
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 4
	l.ori	r5, r8, 0
	l.ori	r18, r21, 0
	l.bf	.LBB0_118
	l.nop	0                       # in delay slot
# BB#117:                               # %do.body687
	l.addi	r5, r8, 4
	l.addi	r18, r21, 4
.LBB0_118:                              # %do.body687
	l.andi	r6, r8, 7
	l.andi	r19, r21, 7
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfeqi	r6, 0
	l.bf	.LBB0_120
	l.nop	0                       # in delay slot
# BB#119:                               # %do.body687
	l.ori	r8, r5, 0
	l.ori	r21, r18, 0
.LBB0_120:                              # %do.body687
	l.movhi	r5, 1024
	l.and	r5, r8, r5
	l.movhi	r18, 1024
	l.and	r18, r21, r18
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.bf	.LBB0_124
	l.nop	0                       # in delay slot
# BB#121:                               # %if.then718
	l.addi	r4, r4, 1
	l.movhi	r5, 0
	l.addi	r17, r17, 1
	l.movhi	r18, 0
	l.sfne	r4, r17
	l.bf	.LBB0_142
	l.sfeqi	r4, 255
	l.bf	.LBB0_123
	l.nop	0                       # in delay slot
# BB#122:                               # %if.then718
	l.movhi	r5, 64511
	l.ori	r5, r5, 65535
	l.and	r5, r8, r5
	l.movhi	r18, 64511
	l.ori	r18, r18, 65535
	l.and	r18, r21, r18
.LBB0_123:                              # %if.then718
	l.ori	r8, r5, 0
	l.ori	r21, r18, 0
.LBB0_124:                              # %if.end728
	l.srli	r5, r8, 3
	l.srli	r18, r21, 3
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.ori	r6, r5, 0
	l.ori	r19, r18, 0
	l.bf	.LBB0_126
	l.nop	0                       # in delay slot
# BB#125:                               # %if.end728
	l.movhi	r6, 64
	l.or	r6, r5, r6
	l.movhi	r19, 64
	l.or	r19, r18, r19
.LBB0_126:                              # %if.end728
	l.sfne	r4, r17
	l.bf	.LBB0_142
	l.sfnei	r4, 255
	l.bf	.LBB0_128
	l.nop	0                       # in delay slot
# BB#127:                               # %if.end728
	l.ori	r5, r6, 0
	l.ori	r18, r19, 0
.LBB0_128:                              # %if.end728
	l.slli	r4, r4, 23
	l.movhi	r6, 32640
	l.and	r4, r4, r6
	l.slli	r17, r17, 23
	l.slli	r3, r3, 31
	l.movhi	r19, 32640
	l.or	r3, r4, r3
	l.and	r17, r17, r19
	l.movhi	r4, 127
	l.slli	r16, r16, 31
	l.ori	r4, r4, 65535
	l.or	r16, r17, r16
	l.and	r4, r5, r4
	l.movhi	r17, 127
	l.or	r11, r3, r4
	l.ori	r17, r17, 65535
	l.addi	r1, r2, 0
	l.and	r17, r18, r17
	l.lwz	r2, -4(r1)
	l.or	r24, r16, r17
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB0_142
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB0_129:                              # %if.else525
	l.addi	r3, r0, 1
	l.addi	r16, r0, 1
	l.sfne	r6, r19
	l.bf	.LBB0_142
	l.sfnei	r6, 0
	l.bf	.LBB0_131
	l.nop	0                       # in delay slot
# BB#130:                               # %if.else525
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB0_131:                              # %if.else525
	l.andi	r3, r3, 1
	l.andi	r16, r16, 1
.LBB0_132:                              # %sub3
	l.sub	r8, r5, r3
	l.sub	r21, r18, r16
.LBB0_133:                              # %sub3
	l.ori	r3, r12, 0
	l.ori	r4, r11, 0
	l.ori	r16, r25, 0
	l.ori	r17, r24, 0
	l.j	.LBB0_64
	l.nop	0                       # in delay slot
.LBB0_134:                              # %if.end145
	l.addi	r4, r0, 255
	l.xori	r7, r13, -1
	l.addi	r17, r0, 255
	l.xori	r20, r26, -1            # CFC
	l.sfne	r11, r24
	l.bf	.LBB0_142
	l.sfeqi	r11, 255
	l.ori	r8, r5, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
	l.ori	r21, r18, 0
	l.j	.LBB0_70
	l.nop	0                       # in delay slot
.LBB0_135:                              # %if.end468
	l.addi	r4, r0, 255
	l.xori	r7, r13, -1
	l.addi	r17, r0, 255
	l.xori	r20, r26, -1            # CFC
	l.sfne	r11, r24
	l.bf	.LBB0_142
	l.sfeqi	r11, 255
	l.ori	r3, r12, 0
	l.ori	r8, r5, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
	l.ori	r16, r25, 0
	l.ori	r21, r18, 0
	l.j	.LBB0_76
	l.nop	0                       # in delay slot
.LBB0_136:                              # %if.else549
	l.movhi	r4, 0
	l.movhi	r17, 0
	l.sfne	r5, r18
	l.bf	.LBB0_142
	l.sfeqi	r5, 0
	l.ori	r8, r6, 0
	l.ori	r21, r19, 0
	l.bf	.LBB0_116
	l.nop	0                       # in delay slot
# BB#137:                               # %if.else553
	l.sub	r8, r6, r5
	l.movhi	r7, 1024
	l.and	r7, r8, r7
	l.sub	r21, r19, r18
	l.movhi	r20, 1024
	l.and	r20, r21, r20
	l.sfne	r7, r20
	l.bf	.LBB0_142
	l.sfeqi	r7, 0
	l.bf	.LBB0_139
	l.nop	0                       # in delay slot
# BB#138:                               # %if.then557
	l.sub	r8, r5, r6
	l.sub	r21, r18, r19
	l.j	.LBB0_86
	l.nop	0                       # in delay slot
.LBB0_139:                              # %if.else559
	l.movhi	r4, 0
	l.movhi	r17, 0
	l.sfne	r8, r21
	l.bf	.LBB0_142
	l.sfeqi	r8, 0
	l.movhi	r5, 0
	l.movhi	r18, 0
	l.bf	.LBB0_141
	l.nop	0                       # in delay slot
# BB#140:                               # %if.else559
	l.ori	r5, r3, 0
	l.ori	r18, r16, 0
.LBB0_141:                              # %if.else559
	l.ori	r3, r5, 0
	l.ori	r16, r18, 0
	l.j	.LBB0_116
	l.nop	0                       # in delay slot
.LBB0_142:
	l.nop	205
.LBB0_143:
	l.nop	204
.Lfunc_end0:
	.size	__addsf3, .Lfunc_end0-__addsf3

	.hidden	__divsf3
	.globl	__divsf3
	.p2align	2
	.type	__divsf3,@function
__divsf3:                               # @__divsf3
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB1_65
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.movhi	r5, 127
	l.addi	r15, r14, 0
	l.ori	r5, r5, 65535
	l.addi	r14, r14, -16
	l.and	r8, r3, r5
	l.movhi	r18, 127
	l.srli	r5, r3, 23
	l.ori	r18, r18, 65535
	l.andi	r6, r5, 255
	l.and	r21, r16, r18
	l.srli	r18, r16, 23
	l.andi	r19, r18, 255
	l.sfne	r6, r19
	l.bf	.LBB1_65
	l.sfeqi	r6, 0
	l.bf	.LBB1_3
	l.nop	0                       # in delay slot
.LBB1_1:                                # %entry
	l.sfne	r6, r19
	l.bf	.LBB1_65
	l.sfeqi	r6, 255
	l.bf	.LBB1_5
	l.nop	0                       # in delay slot
.LBB1_2:                                # %sw.default
	l.slli	r5, r8, 3
	l.movhi	r7, 1024
	l.or	r12, r5, r7
	l.slli	r18, r21, 3
	l.movhi	r7, 0
	l.movhi	r20, 1024
	l.addi	r6, r6, -127
	l.or	r25, r18, r20
	l.movhi	r20, 0
	l.addi	r19, r19, -127
	l.j	.LBB1_8
	l.nop	0                       # in delay slot
.LBB1_3:                                # %sw.bb
	l.addi	r7, r0, 1
	l.movhi	r12, 0
	l.addi	r20, r0, 1              # CFC
	l.movhi	r25, 0
	l.sfne	r8, r21
	l.bf	.LBB1_65
	l.sfeqi	r8, 0
	l.bf	.LBB1_8
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.else
	l.srli	r5, r8, 1
	l.or	r5, r8, r5
	l.srli	r7, r5, 2
	l.srli	r18, r21, 1
	l.or	r5, r5, r7
	l.or	r18, r21, r18
	l.srli	r7, r5, 4
	l.srli	r20, r18, 2
	l.or	r5, r5, r7
	l.or	r18, r18, r20
	l.srli	r7, r5, 8
	l.srli	r20, r18, 4
	l.or	r5, r5, r7
	l.or	r18, r18, r20
	l.srli	r7, r5, 16
	l.srli	r20, r18, 8
	l.or	r5, r5, r7
	l.or	r18, r18, r20
	l.movhi	r7, 21845
	l.srli	r20, r18, 16
	l.ori	r7, r7, 21845
	l.or	r18, r18, r20
	l.xori	r5, r5, -1
	l.movhi	r20, 21845
	l.srli	r12, r5, 1
	l.ori	r20, r20, 21845
	l.and	r7, r12, r7
	l.xori	r18, r18, -1
	l.sub	r5, r5, r7
	l.srli	r25, r18, 1
	l.movhi	r7, 13107
	l.and	r20, r25, r20
	l.ori	r7, r7, 13107
	l.sub	r18, r18, r20
	l.and	r12, r5, r7
	l.movhi	r20, 13107
	l.srli	r5, r5, 2
	l.ori	r20, r20, 13107
	l.and	r5, r5, r7
	l.and	r25, r18, r20
	l.add	r5, r12, r5
	l.srli	r18, r18, 2
	l.srli	r7, r5, 4
	l.and	r18, r18, r20
	l.add	r5, r5, r7
	l.add	r18, r25, r18
	l.movhi	r7, 3855
	l.srli	r20, r18, 4
	l.ori	r7, r7, 3855
	l.add	r18, r18, r20
	l.and	r5, r5, r7
	l.movhi	r20, 3855
	l.movhi	r7, 257
	l.ori	r20, r20, 3855
	l.ori	r7, r7, 257
	l.and	r18, r18, r20
	l.mul	r5, r5, r7
	l.movhi	r20, 257
	l.srli	r5, r5, 24
	l.ori	r20, r20, 257
	l.addi	r7, r0, -118
	l.mul	r18, r18, r20
	l.sub	r7, r7, r5
	l.srli	r18, r18, 24
	l.add	r6, r7, r6
	l.addi	r20, r0, -118           # CFC
	l.addi	r5, r5, -5
	l.sub	r20, r20, r18
	l.sll	r12, r8, r5
	l.add	r19, r20, r19
	l.movhi	r7, 0
	l.addi	r18, r18, -5
	l.sll	r25, r21, r18
	l.movhi	r20, 0
	l.j	.LBB1_8
	l.nop	0                       # in delay slot
.LBB1_5:                                # %sw.bb25
	l.addi	r7, r0, 2
	l.addi	r20, r0, 2              # CFC
	l.sfne	r8, r21
	l.bf	.LBB1_65
	l.sfeqi	r8, 0
	l.bf	.LBB1_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %sw.bb25
	l.addi	r7, r0, 3
	l.addi	r20, r0, 3              # CFC
.LBB1_7:                                # %sw.bb25
	l.ori	r12, r8, 0
	l.ori	r25, r21, 0
.LBB1_8:                                # %do.body39
	l.movhi	r5, 127
	l.ori	r5, r5, 65535
	l.and	r13, r4, r5
	l.movhi	r18, 127
	l.srli	r5, r4, 23
	l.ori	r18, r18, 65535
	l.andi	r8, r5, 255
	l.and	r26, r17, r18
	l.srli	r18, r17, 23
	l.andi	r21, r18, 255
	l.sfne	r12, r25
	l.bf	.LBB1_65
	l.sw	-12(r2), r12
	l.sw	4340(r15), r25
	l.sfne	r7, r20
	l.bf	.LBB1_65
	l.sw	-8(r2), r7
	l.sw	4344(r15), r20
	l.sfne	r8, r21
	l.bf	.LBB1_65
	l.sfeqi	r8, 0
	l.bf	.LBB1_11
	l.nop	0                       # in delay slot
.LBB1_9:                                # %do.body39
	l.sfne	r8, r21
	l.bf	.LBB1_65
	l.sfeqi	r8, 255
	l.bf	.LBB1_13
	l.nop	0                       # in delay slot
.LBB1_10:                               # %sw.default55
	l.slli	r5, r13, 3
	l.movhi	r12, 1024
	l.or	r5, r5, r12
	l.slli	r18, r26, 3
	l.movhi	r11, 0
	l.movhi	r25, 1024
	l.addi	r8, r8, -127
	l.or	r18, r18, r25
	l.movhi	r24, 0
	l.addi	r21, r21, -127          # CFC
	l.j	.LBB1_16
	l.nop	0                       # in delay slot
.LBB1_11:                               # %sw.bb62
	l.addi	r11, r0, 1
	l.movhi	r5, 0
	l.addi	r24, r0, 1
	l.movhi	r18, 0
	l.sfne	r13, r26
	l.bf	.LBB1_65
	l.sfeqi	r13, 0
	l.bf	.LBB1_16
	l.nop	0                       # in delay slot
# BB#12:                                # %if.else65
	l.srli	r5, r13, 1
	l.or	r5, r13, r5
	l.srli	r12, r5, 2
	l.srli	r18, r26, 1
	l.or	r5, r5, r12
	l.or	r18, r26, r18
	l.srli	r12, r5, 4
	l.srli	r25, r18, 2
	l.or	r5, r5, r12
	l.or	r18, r18, r25
	l.srli	r12, r5, 8
	l.srli	r25, r18, 4
	l.or	r5, r5, r12
	l.or	r18, r18, r25
	l.srli	r12, r5, 16
	l.srli	r25, r18, 8
	l.or	r5, r5, r12
	l.or	r18, r18, r25
	l.movhi	r12, 21845
	l.srli	r25, r18, 16
	l.ori	r12, r12, 21845
	l.or	r18, r18, r25
	l.xori	r5, r5, -1
	l.movhi	r25, 21845
	l.srli	r11, r5, 1
	l.ori	r25, r25, 21845
	l.and	r12, r11, r12
	l.xori	r18, r18, -1
	l.sub	r5, r5, r12
	l.srli	r24, r18, 1
	l.movhi	r12, 13107
	l.and	r25, r24, r25
	l.ori	r12, r12, 13107
	l.sub	r18, r18, r25
	l.and	r11, r5, r12
	l.movhi	r25, 13107
	l.srli	r5, r5, 2
	l.ori	r25, r25, 13107
	l.and	r5, r5, r12
	l.and	r24, r18, r25
	l.add	r5, r11, r5
	l.srli	r18, r18, 2
	l.srli	r12, r5, 4
	l.and	r18, r18, r25
	l.add	r5, r5, r12
	l.add	r18, r24, r18
	l.movhi	r12, 3855
	l.srli	r25, r18, 4
	l.ori	r12, r12, 3855
	l.add	r18, r18, r25
	l.and	r5, r5, r12
	l.movhi	r25, 3855
	l.movhi	r12, 257
	l.ori	r25, r25, 3855
	l.ori	r12, r12, 257
	l.and	r18, r18, r25
	l.mul	r5, r5, r12
	l.movhi	r25, 257
	l.srli	r5, r5, 24
	l.ori	r25, r25, 257
	l.addi	r12, r0, -118
	l.mul	r18, r18, r25
	l.sub	r12, r12, r5
	l.srli	r18, r18, 24
	l.add	r8, r12, r8
	l.addi	r25, r0, -118
	l.addi	r5, r5, -5
	l.sub	r25, r25, r18
	l.sll	r5, r13, r5
	l.add	r21, r25, r21
	l.movhi	r11, 0
	l.addi	r18, r18, -5
	l.sll	r18, r26, r18
	l.movhi	r24, 0
	l.j	.LBB1_16
	l.nop	0                       # in delay slot
.LBB1_13:                               # %sw.bb79
	l.addi	r11, r0, 2
	l.addi	r24, r0, 2
	l.sfne	r13, r26
	l.bf	.LBB1_65
	l.sfeqi	r13, 0
	l.bf	.LBB1_15
	l.nop	0                       # in delay slot
# BB#14:                                # %sw.bb79
	l.addi	r11, r0, 3
	l.addi	r24, r0, 3
.LBB1_15:                               # %sw.bb79
	l.ori	r5, r13, 0
	l.ori	r18, r26, 0
.LBB1_16:                               # %do.body98
	l.sfne	r5, r18
	l.bf	.LBB1_65
	l.sw	-16(r2), r5
	l.sw	4336(r15), r18
	l.srli	r7, r3, 31
	l.sub	r6, r6, r8
	l.lwz	r3, -8(r2)
	l.srli	r20, r16, 31
	l.slli	r5, r3, 2
	l.sub	r19, r19, r21
	l.or	r5, r11, r5
	l.lwz	r16, 4344(r15)
	l.andi	r12, r5, 15
	l.slli	r18, r16, 2
	l.or	r18, r24, r18
	l.andi	r25, r18, 15
	l.sfne	r12, r25
	l.bf	.LBB1_65
	l.sfgtui	r12, 15
	l.bf	.LBB1_42
	l.nop	0                       # in delay slot
.LBB1_17:                               # %do.body98
	l.srli	r8, r4, 31
	l.xor	r3, r8, r7
	l.addi	r13, r0, 1
	l.srli	r21, r17, 31
	l.movhi	r5, 64
	l.xor	r16, r21, r20
	l.movhi	r4, hi(.LJTI1_0)
	l.addi	r26, r0, 1
	l.ori	r4, r4, lo(.LJTI1_0)
	l.movhi	r18, 64
	l.slli	r12, r12, 2
	l.movhi	r17, hi(.LJTI1_0)
	l.add	r4, r12, r4
	l.ori	r17, r17, lo(.LJTI1_0)
	l.lwz	r4, 0(r4)
	l.slli	r25, r25, 2
	l.add	r17, r25, r17
	l.lwz	r17, 4352(r17)
	l.sfne	r4, r17
	l.bf	.LBB1_65
	l.nop	0
	l.jr	r4
	l.nop	0                       # in delay slot
.LBB1_41:                               # %sw.bb159
	l.sfne	r11, r24
	l.bf	.LBB1_65
	l.sw	-8(r2), r11
	l.sw	4344(r15), r24
	l.ori	r7, r8, 0
	l.lwz	r3, -16(r2)
	l.ori	r20, r21, 0
	l.lwz	r16, 4336(r15)
	l.sfne	r3, r16
	l.bf	.LBB1_65
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
.LBB1_42:                               # %do.body169
	l.lwz	r3, -8(r2)
	l.lwz	r16, 4344(r15)
	l.sfne	r3, r16
	l.bf	.LBB1_65
	l.sfgtui	r3, 3
	l.lwz	r8, -12(r2)
	l.ori	r12, r7, 0
	l.lwz	r21, 4340(r15)
	l.ori	r25, r20, 0
	l.bf	.LBB1_64
	l.nop	0                       # in delay slot
.LBB1_43:                               # %do.body169
	l.movhi	r4, hi(.LJTI1_1)
	l.ori	r4, r4, lo(.LJTI1_1)
	l.slli	r5, r3, 2
	l.movhi	r17, hi(.LJTI1_1)
	l.add	r4, r5, r4
	l.ori	r17, r17, lo(.LJTI1_1)
	l.lwz	r4, 0(r4)
	l.slli	r18, r16, 2
	l.ori	r3, r12, 0
	l.add	r17, r18, r17
	l.ori	r5, r8, 0
	l.lwz	r17, 4352(r17)
	l.ori	r13, r12, 0
	l.ori	r16, r25, 0
	l.ori	r18, r21, 0
	l.ori	r26, r25, 0
	l.sfne	r4, r17
	l.bf	.LBB1_65
	l.nop	0
	l.jr	r4
	l.nop	0                       # in delay slot
.LBB1_62:                               # %sw.bb269
	l.movhi	r6, 0
	l.ori	r12, r3, 0
	l.movhi	r8, 0
	l.movhi	r19, 0
	l.ori	r25, r16, 0
	l.movhi	r21, 0
	l.j	.LBB1_64
	l.nop	0                       # in delay slot
.LBB1_63:                               # %sw.bb270
	l.movhi	r8, 0
	l.addi	r6, r0, 255
	l.ori	r12, r3, 0
	l.movhi	r21, 0
	l.addi	r19, r0, 255
	l.ori	r25, r16, 0
	l.j	.LBB1_64
	l.nop	0                       # in delay slot
.LBB1_18:                               # %sw.bb102
	l.sfne	r6, r19
	l.bf	.LBB1_65
	l.sw	-8(r2), r6
	l.sw	4344(r15), r19
	l.ori	r6, r3, 0
	l.lwz	r3, -16(r2)
	l.slli	r3, r3, 5
	l.ori	r19, r16, 0
	l.lwz	r4, -12(r2)
	l.lwz	r16, 4336(r15)
	l.slli	r7, r4, 5
	l.slli	r16, r16, 5
	l.lwz	r17, 4340(r15)
	l.slli	r20, r17, 5
	l.sfne	r7, r20
	l.bf	.LBB1_65
	l.sfne	r3, r16
	l.bf	.LBB1_65
	l.sfltu	r7, r3
	l.bf	.LBB1_20
	l.nop	0                       # in delay slot
# BB#19:                                # %if.then113
	l.sub	r7, r7, r3
	l.addi	r8, r0, 26
	l.addi	r5, r0, 1
	l.sub	r20, r20, r16
	l.addi	r21, r0, 26             # CFC
	l.addi	r18, r0, 1
	l.j	.LBB1_21
	l.nop	0                       # in delay slot
.LBB1_33:                               # %do.body148
	l.movhi	r4, 64
	l.lwz	r3, -16(r2)
	l.and	r6, r3, r4
	l.movhi	r17, 64
	l.addi	r5, r0, 1
	l.lwz	r16, 4336(r15)
	l.and	r19, r16, r17
	l.addi	r18, r0, 1
	l.sfne	r6, r19
	l.bf	.LBB1_65
	l.sfeqi	r6, 0
	l.bf	.LBB1_35
	l.nop	0                       # in delay slot
# BB#34:                                # %do.body148
	l.movhi	r5, 0
	l.movhi	r18, 0
.LBB1_35:                               # %do.body148
	l.lwz	r6, -12(r2)
	l.and	r4, r6, r4
	l.srli	r4, r4, 22
	l.lwz	r19, 4340(r15)
	l.and	r4, r4, r5
	l.and	r17, r19, r17
	l.srli	r17, r17, 22
	l.and	r17, r17, r18
	l.sfne	r4, r17
	l.bf	.LBB1_65
	l.sfnei	r4, 0
	l.bf	.LBB1_37
	l.nop	0                       # in delay slot
# BB#36:                                # %do.body148
	l.ori	r3, r6, 0
	l.ori	r16, r19, 0
.LBB1_37:                               # %do.body148
	l.sfne	r4, r17
	l.bf	.LBB1_65
	l.sfnei	r4, 0
	l.bf	.LBB1_39
	l.nop	0                       # in delay slot
# BB#38:                                # %do.body148
	l.ori	r8, r7, 0
	l.ori	r21, r20, 0
.LBB1_39:                               # %do.body148
	l.ori	r5, r3, 0
	l.ori	r13, r8, 0
	l.ori	r18, r16, 0
	l.ori	r26, r21, 0
.LBB1_40:                               # %sw.bb271
	l.movhi	r3, 64
	l.or	r8, r5, r3
	l.addi	r6, r0, 255
	l.movhi	r16, 64
	l.ori	r12, r13, 0
	l.or	r21, r18, r16
	l.addi	r19, r0, 255
	l.ori	r25, r26, 0
.LBB1_64:                               # %do.body279
	l.movhi	r4, 127
	l.ori	r4, r4, 65535
	l.and	r4, r8, r4
	l.movhi	r17, 127
	l.slli	r5, r6, 23
	l.ori	r17, r17, 65535
	l.movhi	r6, 32640
	l.and	r17, r21, r17
	l.and	r5, r5, r6
	l.slli	r18, r19, 23
	l.slli	r3, r12, 31
	l.movhi	r19, 32640
	l.or	r3, r5, r3
	l.and	r18, r18, r19
	l.or	r11, r3, r4
	l.slli	r16, r25, 31
	l.addi	r1, r2, 0
	l.or	r16, r18, r16
	l.lwz	r2, -4(r1)
	l.or	r24, r16, r17
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB1_65
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB1_20:                               # %if.else116
	l.addi	r8, r0, 27
	l.movhi	r5, 0
	l.lwz	r4, -8(r2)
	l.addi	r21, r0, 27             # CFC
	l.addi	r4, r4, -1
	l.movhi	r18, 0
	l.lwz	r17, 4344(r15)
	l.addi	r17, r17, -1
	l.sfne	r4, r17
	l.bf	.LBB1_65
	l.sw	-8(r2), r4
	l.sw	4344(r15), r17
.LBB1_21:                               # %do.body119.preheader
	l.addi	r8, r8, 1
	l.addi	r21, r21, 1             # CFC
.LBB1_22:                               # %do.body119
                                        # =>This Inner Loop Header: Depth=1
	l.movhi	r12, 0
	l.addi	r13, r0, 1
	l.movhi	r25, 0
	l.addi	r26, r0, 1
	l.sfne	r7, r20
	l.bf	.LBB1_65
	l.sfgtsi	r7, -1
	l.ori	r11, r13, 0
	l.ori	r24, r26, 0
	l.bf	.LBB1_24
	l.nop	0                       # in delay slot
# BB#23:                                # %do.body119
                                        #   in Loop: Header=BB1_22 Depth=1
	l.movhi	r11, 0
	l.movhi	r24, 0
.LBB1_24:                               # %do.body119
                                        #   in Loop: Header=BB1_22 Depth=1
	l.slli	r7, r7, 1
	l.slli	r20, r20, 1
	l.sfne	r7, r20
	l.bf	.LBB1_65
	l.sfne	r3, r16
	l.bf	.LBB1_65
	l.sfltu	r7, r3
	l.bf	.LBB1_26
	l.nop	0                       # in delay slot
# BB#25:                                # %do.body119
                                        #   in Loop: Header=BB1_22 Depth=1
	l.movhi	r13, 0
	l.movhi	r26, 0
.LBB1_26:                               # %do.body119
                                        #   in Loop: Header=BB1_22 Depth=1
	l.and	r13, r11, r13
	l.and	r26, r24, r26
	l.sfne	r13, r26
	l.bf	.LBB1_65
	l.sfnei	r13, 0
	l.bf	.LBB1_28
	l.nop	0                       # in delay slot
# BB#27:                                # %do.body119
                                        #   in Loop: Header=BB1_22 Depth=1
	l.ori	r12, r3, 0
	l.ori	r25, r16, 0
.LBB1_28:                               # %do.body119
                                        #   in Loop: Header=BB1_22 Depth=1
	l.sub	r7, r7, r12
	l.andi	r4, r13, 1
	l.slli	r5, r5, 1
	l.sub	r20, r20, r25
	l.or	r4, r4, r5
	l.andi	r17, r26, 1
	l.xori	r5, r4, 1
	l.slli	r18, r18, 1
	l.addi	r8, r8, -1
	l.or	r17, r17, r18
	l.xori	r18, r17, 1
	l.addi	r21, r21, -1            # CFC
	l.sfne	r8, r21
	l.bf	.LBB1_65
	l.sfgtsi	r8, 1
	l.ori	r4, r6, 0
	l.ori	r17, r19, 0
	l.bf	.LBB1_22
	l.nop	0                       # in delay slot
# BB#29:                                # %do.body169.thread439
	l.addi	r3, r0, 1
	l.addi	r16, r0, 1
	l.sfne	r7, r20
	l.bf	.LBB1_65
	l.sfnei	r7, 0
	l.bf	.LBB1_31
	l.nop	0                       # in delay slot
# BB#30:                                # %do.body169.thread439
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB1_31:                               # %do.body169.thread439
	l.andi	r3, r3, 1
	l.or	r3, r3, r5
	l.andi	r16, r16, 1
	l.or	r16, r16, r18
	l.sfne	r3, r16
	l.bf	.LBB1_65
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.ori	r12, r4, 0
	l.lwz	r6, -8(r2)
	l.ori	r25, r17, 0
	l.lwz	r19, 4344(r15)
.LBB1_32:                               # %sw.bb170
	l.ori	r3, r12, 0
	l.ori	r7, r6, 0
	l.lwz	r4, -12(r2)
	l.ori	r16, r25, 0
	l.ori	r20, r19, 0
	l.lwz	r17, 4340(r15)
	l.sfne	r7, r20
	l.bf	.LBB1_65
	l.sfltsi	r7, -126
	l.bf	.LBB1_52
	l.nop	0                       # in delay slot
# BB#44:                                # %do.body175
	l.andi	r5, r4, 15
	l.andi	r18, r17, 15
	l.sfne	r5, r18
	l.bf	.LBB1_65
	l.sfeqi	r5, 4
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
	l.bf	.LBB1_46
	l.nop	0                       # in delay slot
# BB#45:                                # %do.body175
	l.addi	r5, r4, 4
	l.addi	r18, r17, 4
.LBB1_46:                               # %do.body175
	l.andi	r6, r4, 7
	l.andi	r19, r17, 7
	l.sfne	r6, r19
	l.bf	.LBB1_65
	l.sfeqi	r6, 0
	l.bf	.LBB1_48
	l.nop	0                       # in delay slot
# BB#47:                                # %do.body175
	l.ori	r4, r5, 0
	l.ori	r17, r18, 0
.LBB1_48:                               # %do.body175
	l.srli	r5, r4, 27
	l.andi	r5, r5, 1
	l.add	r5, r7, r5
	l.srli	r18, r17, 27
	l.addi	r5, r5, 127
	l.andi	r18, r18, 1
	l.movhi	r8, 0
	l.add	r18, r20, r18
	l.addi	r18, r18, 127
	l.movhi	r21, 0
	l.sfne	r5, r18
	l.bf	.LBB1_65
	l.sfgtsi	r5, 254
	l.ori	r12, r3, 0
	l.ori	r25, r16, 0
	l.bf	.LBB1_50
	l.nop	0                       # in delay slot
# BB#49:                                # %do.body175
	l.movhi	r6, 7935
	l.ori	r6, r6, 65535
	l.srli	r4, r4, 3
	l.movhi	r19, 7935
	l.and	r8, r4, r6
	l.ori	r19, r19, 65535
	l.srli	r17, r17, 3
	l.and	r21, r17, r19
.LBB1_50:                               # %do.body175
	l.addi	r6, r0, 255
	l.addi	r19, r0, 255
	l.sfne	r5, r18
	l.bf	.LBB1_65
	l.sfgtsi	r5, 254
	l.bf	.LBB1_64
	l.nop	0                       # in delay slot
# BB#51:                                # %do.body175
	l.ori	r6, r5, 0
	l.ori	r19, r18, 0
	l.j	.LBB1_64
	l.nop	0                       # in delay slot
.LBB1_52:                               # %if.else205
	l.addi	r5, r0, -126
	l.sub	r5, r5, r7
	l.movhi	r6, 0
	l.addi	r18, r0, -126
	l.sub	r18, r18, r20
	l.movhi	r19, 0
	l.sfne	r5, r18
	l.bf	.LBB1_65
	l.sfgtsi	r5, 27
	l.movhi	r8, 0
	l.ori	r12, r3, 0
	l.movhi	r21, 0
	l.ori	r25, r16, 0
	l.bf	.LBB1_64
	l.nop	0                       # in delay slot
# BB#53:                                # %if.then210
	l.addi	r6, r0, -127
	l.sub	r6, r6, r7
	l.addi	r7, r0, 31
	l.addi	r19, r0, -127
	l.sub	r6, r7, r6
	l.sub	r19, r19, r20
	l.srl	r5, r4, r5
	l.addi	r20, r0, 31             # CFC
	l.sll	r6, r4, r6
	l.sub	r19, r20, r19
	l.addi	r4, r0, 1
	l.srl	r18, r17, r18
	l.sll	r19, r17, r19
	l.addi	r17, r0, 1
	l.sfne	r6, r19
	l.bf	.LBB1_65
	l.sfnei	r6, 0
	l.bf	.LBB1_55
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then210
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB1_55:                               # %if.then210
	l.andi	r4, r4, 1
	l.or	r4, r4, r5
	l.andi	r5, r4, 15
	l.andi	r17, r17, 1
	l.or	r17, r17, r18
	l.andi	r18, r17, 15
	l.sfne	r5, r18
	l.bf	.LBB1_65
	l.sfeqi	r5, 4
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
	l.bf	.LBB1_57
	l.nop	0                       # in delay slot
# BB#56:                                # %if.then210
	l.addi	r5, r4, 4
	l.addi	r18, r17, 4
.LBB1_57:                               # %if.then210
	l.andi	r6, r4, 7
	l.andi	r19, r17, 7
	l.sfne	r6, r19
	l.bf	.LBB1_65
	l.sfeqi	r6, 0
	l.bf	.LBB1_59
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then210
	l.ori	r4, r5, 0
	l.ori	r17, r18, 0
.LBB1_59:                               # %if.then210
	l.movhi	r5, 1024
	l.and	r5, r4, r5
	l.srli	r8, r4, 3
	l.movhi	r18, 1024
	l.and	r18, r17, r18
	l.srli	r21, r17, 3
	l.sfne	r5, r18
	l.bf	.LBB1_65
	l.sfeqi	r5, 0
	l.bf	.LBB1_61
	l.nop	0                       # in delay slot
# BB#60:                                # %if.then210
	l.movhi	r8, 0
	l.movhi	r21, 0
.LBB1_61:                               # %if.then210
	l.srli	r6, r5, 26
	l.srli	r19, r18, 26
	l.j	.LBB1_64
	l.nop	0                       # in delay slot
.LBB1_65:
	l.nop	205
.LBB1_66:
	l.nop	204
.Lfunc_end1:
	.size	__divsf3, .Lfunc_end1-__divsf3


	.text
	.hidden	__fixsfsi
	.globl	__fixsfsi
	.p2align	2
	.type	__fixsfsi,@function
__fixsfsi:                              # @__fixsfsi
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB2_8
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.addi	r15, r14, 0
	l.srli	r4, r3, 23
	l.addi	r14, r14, -4
	l.andi	r5, r4, 255
	l.movhi	r24, 0
	l.srli	r17, r16, 23
	l.andi	r18, r17, 255
	l.sfne	r5, r18
	l.bf	.LBB2_8
	l.sfgtui	r5, 126
	l.bf	.LBB2_2
	l.nop	0                       # in delay slot
.LBB2_1:                                # %if.then
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB2_8
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB2_2:                                # %if.else16
	l.srli	r4, r3, 31
	l.srli	r17, r16, 31
	l.sfne	r5, r18
	l.bf	.LBB2_8
	l.sfltui	r5, 158
	l.bf	.LBB2_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then18
	l.xori	r3, r4, 1
	l.movhi	r4, 32768
	l.sub	r11, r4, r3
	l.xori	r16, r17, 1
	l.movhi	r17, 32768
	l.sub	r24, r17, r16
	l.j	.LBB2_1
	l.nop	0                       # in delay slot
.LBB2_4:                                # %if.else31
	l.movhi	r6, 127
	l.ori	r6, r6, 65535
	l.and	r3, r3, r6
	l.movhi	r19, 127
	l.movhi	r6, 128
	l.ori	r19, r19, 65535
	l.or	r3, r3, r6
	l.and	r16, r16, r19
	l.addi	r6, r5, -150
	l.movhi	r19, 128
	l.sll	r11, r3, r6
	l.or	r16, r16, r19
	l.addi	r19, r18, -150
	l.sll	r24, r16, r19
	l.sfne	r5, r18
	l.bf	.LBB2_8
	l.sfgtui	r5, 149
	l.bf	.LBB2_6
	l.nop	0                       # in delay slot
# BB#5:                                 # %if.else31
	l.addi	r6, r0, 150
	l.sub	r5, r6, r5
	l.srl	r11, r3, r5
	l.addi	r19, r0, 150
	l.sub	r18, r19, r18
	l.srl	r24, r16, r18
.LBB2_6:                                # %if.else31
	l.sfne	r4, r17
	l.bf	.LBB2_8
	l.sfeqi	r4, 0
	l.bf	.LBB2_1
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.else31
	l.movhi	r3, 0
	l.sub	r11, r3, r11
	l.movhi	r16, 0
	l.sub	r24, r16, r24
	l.j	.LBB2_1
	l.nop	0                       # in delay slot
.LBB2_8:
	l.nop	205
.LBB2_9:
	l.nop	204
.Lfunc_end2:
	.size	__fixsfsi, .Lfunc_end2-__fixsfsi

	.hidden	__floatsisf
	.globl	__floatsisf
	.p2align	2
	.type	__floatsisf,@function
__floatsisf:                            # @__floatsisf
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB3_24
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r6, 0
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	l.movhi	r19, 0
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfeqi	r3, 0
	l.movhi	r5, 0
	l.movhi	r4, 0
	l.movhi	r18, 0
	l.movhi	r17, 0
	l.bf	.LBB3_23
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.srai	r4, r3, 31
	l.add	r5, r3, r4
	l.xor	r6, r5, r4
	l.srai	r17, r16, 31
	l.srli	r4, r6, 1
	l.add	r18, r16, r17
	l.or	r4, r6, r4
	l.xor	r19, r18, r17
	l.srli	r5, r4, 2
	l.srli	r17, r19, 1
	l.or	r5, r4, r5
	l.or	r17, r19, r17
	l.movhi	r4, 32768
	l.srli	r18, r17, 2
	l.and	r4, r3, r4
	l.or	r18, r17, r18
	l.srli	r3, r5, 4
	l.movhi	r17, 32768
	l.or	r3, r5, r3
	l.and	r17, r16, r17
	l.srli	r5, r3, 8
	l.srli	r16, r18, 4
	l.or	r3, r3, r5
	l.or	r16, r18, r16
	l.srli	r5, r3, 16
	l.srli	r18, r16, 8
	l.or	r3, r3, r5
	l.or	r16, r16, r18
	l.movhi	r5, 21845
	l.srli	r18, r16, 16
	l.ori	r5, r5, 21845
	l.or	r16, r16, r18
	l.xori	r3, r3, -1
	l.movhi	r18, 21845
	l.srli	r7, r3, 1
	l.ori	r18, r18, 21845
	l.and	r5, r7, r5
	l.xori	r16, r16, -1
	l.sub	r3, r3, r5
	l.srli	r20, r16, 1
	l.movhi	r5, 13107
	l.and	r18, r20, r18
	l.ori	r5, r5, 13107
	l.sub	r16, r16, r18
	l.and	r7, r3, r5
	l.movhi	r18, 13107
	l.srli	r3, r3, 2
	l.ori	r18, r18, 13107
	l.and	r3, r3, r5
	l.and	r20, r16, r18
	l.add	r3, r7, r3
	l.srli	r16, r16, 2
	l.srli	r5, r3, 4
	l.and	r16, r16, r18
	l.add	r3, r3, r5
	l.add	r16, r20, r16
	l.movhi	r5, 3855
	l.srli	r18, r16, 4
	l.ori	r5, r5, 3855
	l.add	r16, r16, r18
	l.and	r3, r3, r5
	l.movhi	r18, 3855
	l.movhi	r5, 257
	l.ori	r18, r18, 3855
	l.ori	r5, r5, 257
	l.and	r16, r16, r18
	l.mul	r3, r3, r5
	l.movhi	r18, 257
	l.srli	r3, r3, 24
	l.ori	r18, r18, 257
	l.addi	r5, r0, 158
	l.mul	r16, r16, r18
	l.sub	r5, r5, r3
	l.srli	r16, r16, 24
	l.addi	r18, r0, 158
	l.sub	r18, r18, r16
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfgtui	r5, 150
	l.bf	.LBB3_5
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then9
	l.addi	r3, r0, 150
	l.sub	r3, r3, r5
	l.addi	r16, r0, 150
	l.sub	r16, r16, r18
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfgtsi	r3, 0
	l.bf	.LBB3_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then9
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB3_4:                                # %if.then9
	l.sll	r6, r6, r3
	l.sll	r19, r19, r16
	l.j	.LBB3_23
	l.nop	0                       # in delay slot
.LBB3_5:                                # %if.else
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfltui	r5, 154
	l.bf	.LBB3_9
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then21
	l.addi	r3, r0, 185
	l.sub	r3, r3, r5
	l.sll	r7, r6, r3
	l.addi	r16, r0, 185
	l.addi	r3, r0, 1
	l.sub	r16, r16, r18
	l.sll	r20, r19, r16
	l.addi	r16, r0, 1
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sfnei	r7, 0
	l.bf	.LBB3_8
	l.nop	0                       # in delay slot
# BB#7:                                 # %if.then21
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB3_8:                                # %if.then21
	l.addi	r7, r5, -153
	l.srl	r6, r6, r7
	l.andi	r3, r3, 1
	l.addi	r20, r18, -153          # CFC
	l.or	r6, r3, r6
	l.srl	r19, r19, r20
	l.andi	r16, r16, 1
	l.or	r19, r16, r19
.LBB3_9:                                # %if.end31
	l.addi	r3, r0, 153
	l.sub	r3, r3, r5
	l.addi	r16, r0, 153
	l.sub	r16, r16, r18
	l.sfne	r3, r16
	l.bf	.LBB3_24
	l.sfgtsi	r3, 0
	l.bf	.LBB3_11
	l.nop	0                       # in delay slot
# BB#10:                                # %if.end31
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB3_11:                               # %if.end31
	l.sll	r6, r6, r3
	l.movhi	r3, 64511
	l.ori	r3, r3, 65535
	l.sll	r19, r19, r16
	l.and	r3, r6, r3
	l.movhi	r16, 64511
	l.andi	r7, r6, 15
	l.ori	r16, r16, 65535
	l.and	r16, r19, r16
	l.andi	r20, r19, 15
	l.sfne	r7, r20
	l.bf	.LBB3_24
	l.sfeqi	r7, 4
	l.ori	r7, r3, 0
	l.ori	r20, r16, 0
	l.bf	.LBB3_13
	l.nop	0                       # in delay slot
# BB#12:                                # %if.end31
	l.addi	r7, r3, 4
	l.addi	r20, r16, 4             # CFC
.LBB3_13:                               # %if.end31
	l.andi	r6, r6, 7
	l.andi	r19, r19, 7
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.sfeqi	r6, 0
	l.bf	.LBB3_15
	l.nop	0                       # in delay slot
# BB#14:                                # %if.end31
	l.ori	r3, r7, 0
	l.ori	r16, r20, 0
.LBB3_15:                               # %if.end31
	l.movhi	r6, 1024
	l.and	r6, r3, r6
	l.movhi	r19, 1024
	l.and	r19, r16, r19
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.sfeqi	r6, 0
	l.bf	.LBB3_19
	l.nop	0                       # in delay slot
# BB#16:                                # %if.then73
	l.addi	r5, r5, 1
	l.movhi	r6, 0
	l.addi	r18, r18, 1
	l.movhi	r19, 0
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfeqi	r5, 255
	l.bf	.LBB3_18
	l.nop	0                       # in delay slot
# BB#17:                                # %if.then73
	l.movhi	r6, 64511
	l.ori	r6, r6, 65535
	l.and	r6, r3, r6
	l.movhi	r19, 64511
	l.ori	r19, r19, 65535
	l.and	r19, r16, r19
.LBB3_18:                               # %if.then73
	l.ori	r3, r6, 0
	l.ori	r16, r19, 0
.LBB3_19:                               # %if.end82
	l.srli	r6, r3, 3
	l.srli	r19, r16, 3
	l.sfne	r6, r19
	l.bf	.LBB3_24
	l.sfeqi	r6, 0
	l.ori	r3, r6, 0
	l.ori	r16, r19, 0
	l.bf	.LBB3_21
	l.nop	0                       # in delay slot
# BB#20:                                # %if.end82
	l.movhi	r3, 64
	l.or	r3, r6, r3
	l.movhi	r16, 64
	l.or	r16, r19, r16
.LBB3_21:                               # %if.end82
	l.sfne	r5, r18
	l.bf	.LBB3_24
	l.sfnei	r5, 255
	l.bf	.LBB3_23
	l.nop	0                       # in delay slot
# BB#22:                                # %if.end82
	l.ori	r6, r3, 0
	l.ori	r19, r16, 0
.LBB3_23:                               # %do.body101
	l.slli	r3, r5, 23
	l.movhi	r5, 32640
	l.and	r3, r3, r5
	l.slli	r16, r18, 23
	l.movhi	r5, 127
	l.movhi	r18, 32640
	l.ori	r5, r5, 65535
	l.and	r16, r16, r18
	l.and	r5, r6, r5
	l.movhi	r18, 127
	l.or	r4, r4, r5
	l.ori	r18, r18, 65535
	l.or	r11, r4, r3
	l.and	r18, r19, r18
	l.addi	r1, r2, 0
	l.or	r17, r17, r18
	l.lwz	r2, -4(r1)
	l.or	r24, r17, r16
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB3_24
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB3_24:
	l.nop	205
.LBB3_25:
	l.nop	204
.Lfunc_end3:
	.size	__floatsisf, .Lfunc_end3-__floatsisf

	.hidden	int_init
	.globl	int_init
	.p2align	2
	.type	int_init,@function
int_init:                               # @int_init
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB4_1
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB4_1
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.movhi	r3, hi(int_handlers)
	l.addi	r15, r14, 0
	l.ori	r3, r3, lo(int_handlers)
	l.addi	r14, r14, -8
	l.addi	r5, r0, 256
	l.movhi	r16, hi(int_handlers)
	l.movhi	r4, 0
	l.ori	r16, r16, lo(int_handlers)
	l.addi	r18, r0, 256
	l.movhi	r17, 0
# BB#3:                                 # %entry
	l.jal	memset
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.movhi	r11, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.movhi	r24, 0
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB4_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB4_1:
	l.nop	205
.LBB4_2:
	l.nop	204
.Lfunc_end4:
	.size	int_init, .Lfunc_end4-int_init

	.hidden	int_add
	.globl	int_add
	.p2align	2
	.type	int_add,@function
int_add:                                # @int_add
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB5_3
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB5_3
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.addi	r15, r14, 0
	l.addi	r14, r14, -16
	l.addi	r24, r0, -1
	l.sfne	r3, r16
	l.bf	.LBB5_3
	l.sfgtui	r3, 31
	l.bf	.LBB5_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.movhi	r6, hi(int_handlers)
	l.ori	r6, r6, lo(int_handlers)
	l.slli	r7, r3, 3
	l.movhi	r19, hi(int_handlers)
	l.add	r6, r7, r6
	l.ori	r19, r19, lo(int_handlers)
	l.slli	r20, r16, 3
	l.add	r19, r20, r19
	l.sfne	r4, r17
	l.bf	.LBB5_3
	l.sw	0(r6), r4
	l.sw	4352(r19), r17
	l.movhi	r4, hi(int_handlers+4)
	l.ori	r4, r4, lo(int_handlers+4)
	l.add	r4, r7, r4
	l.movhi	r17, hi(int_handlers+4)
	l.ori	r17, r17, lo(int_handlers+4)
	l.add	r17, r20, r17
	l.sfne	r5, r18
	l.bf	.LBB5_3
	l.sw	0(r4), r5
	l.sw	4352(r17), r18
	l.addi	r4, r0, 1
	l.sll	r3, r4, r3
	l.addi	r17, r0, 1
	l.sll	r16, r17, r16
	l.sfne	r3, r16
	l.bf	.LBB5_3
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.addi	r3, r0, 18432
	l.addi	r16, r0, 18432
	l.sfne	r3, r16
	l.bf	.LBB5_3
	l.sw	-16(r2), r3
	l.sw	4336(r15), r16
# BB#5:                                 # %if.end
	l.jal	mfspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -12(r2)
	l.or	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r16, 4340(r15)
	l.or	r17, r24, r16
	l.lwz	r16, 4336(r15)
# BB#6:                                 # %if.end
	l.jal	mtspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.movhi	r11, 0
	l.movhi	r24, 0
.LBB5_2:                                # %return
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB5_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB5_3:
	l.nop	205
.LBB5_4:
	l.nop	204
.Lfunc_end5:
	.size	int_add, .Lfunc_end5-int_add

	.hidden	int_disable
	.globl	int_disable
	.p2align	2
	.type	int_disable,@function
int_disable:                            # @int_disable
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB6_3
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB6_3
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.addi	r15, r14, 0
	l.addi	r14, r14, -16
	l.addi	r24, r0, -1
	l.sfne	r3, r16
	l.bf	.LBB6_3
	l.sfgtui	r3, 31
	l.bf	.LBB6_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.addi	r4, r0, 1
	l.sll	r3, r4, r3
	l.xori	r3, r3, -1
	l.addi	r17, r0, 1
	l.sll	r16, r17, r16
	l.xori	r16, r16, -1
	l.sfne	r3, r16
	l.bf	.LBB6_3
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.addi	r3, r0, 18432
	l.addi	r16, r0, 18432
	l.sfne	r3, r16
	l.bf	.LBB6_3
	l.sw	-16(r2), r3
	l.sw	4336(r15), r16
# BB#5:                                 # %if.end
	l.jal	mfspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -12(r2)
	l.and	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r16, 4340(r15)
	l.and	r17, r24, r16
	l.lwz	r16, 4336(r15)
# BB#6:                                 # %if.end
	l.jal	mtspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.movhi	r11, 0
	l.movhi	r24, 0
.LBB6_2:                                # %return
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB6_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB6_3:
	l.nop	205
.LBB6_4:
	l.nop	204
.Lfunc_end6:
	.size	int_disable, .Lfunc_end6-int_disable

	.hidden	int_enable
	.globl	int_enable
	.p2align	2
	.type	int_enable,@function
int_enable:                             # @int_enable
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB7_3
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB7_3
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r11, r0, -1
	l.addi	r15, r14, 0
	l.addi	r14, r14, -16
	l.addi	r24, r0, -1
	l.sfne	r3, r16
	l.bf	.LBB7_3
	l.sfgtui	r3, 31
	l.bf	.LBB7_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.addi	r4, r0, 1
	l.sll	r3, r4, r3
	l.addi	r17, r0, 1
	l.sll	r16, r17, r16
	l.sfne	r3, r16
	l.bf	.LBB7_3
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.addi	r3, r0, 18432
	l.addi	r16, r0, 18432
	l.sfne	r3, r16
	l.bf	.LBB7_3
	l.sw	-16(r2), r3
	l.sw	4336(r15), r16
# BB#5:                                 # %if.end
	l.jal	mfspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -12(r2)
	l.or	r4, r11, r3
	l.lwz	r3, -16(r2)
	l.lwz	r16, 4340(r15)
	l.or	r17, r24, r16
	l.lwz	r16, 4336(r15)
# BB#6:                                 # %if.end
	l.jal	mtspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.movhi	r11, 0
	l.movhi	r24, 0
.LBB7_2:                                # %return
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB7_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB7_3:
	l.nop	205
.LBB7_4:
	l.nop	204
.Lfunc_end7:
	.size	int_enable, .Lfunc_end7-int_enable

	.hidden	int_main
	.globl	int_main
	.p2align	2
	.type	int_main,@function
int_main:                               # @int_main
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB8_6
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB8_6
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -28
	l.addi	r3, r0, 18434
	l.addi	r15, r14, 0
	l.addi	r14, r14, -28
	l.addi	r16, r0, 18434
	l.sfne	r3, r16
	l.bf	.LBB8_6
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
# BB#8:                                 # %entry
	l.jal	mfspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.sfne	r11, r24
	l.bf	.LBB8_6
	l.sw	-28(r2), r11
	l.sw	4324(r15), r24
	l.lwz	r3, -12(r2)
	l.movhi	r4, 0
	l.lwz	r16, 4340(r15)
	l.movhi	r17, 0
# BB#9:                                 # %entry
	l.jal	mtspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.movhi	r6, 0
	l.lwz	r5, -28(r2)
	l.movhi	r3, hi(int_handlers+4)
	l.movhi	r19, 0
	l.ori	r7, r3, lo(int_handlers+4)
	l.lwz	r18, 4324(r15)
	l.movhi	r16, hi(int_handlers+4)
	l.ori	r20, r16, lo(int_handlers+4)
.LBB8_1:                                # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r3, r0, 1
	l.sll	r8, r3, r6
	l.and	r3, r8, r5
	l.addi	r16, r0, 1
	l.sll	r21, r16, r19
	l.and	r16, r21, r18
	l.sfne	r3, r16
	l.bf	.LBB8_6
	l.sfeqi	r3, 0
	l.bf	.LBB8_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %land.lhs.true
                                        #   in Loop: Header=BB8_1 Depth=1
	l.lwz	r4, -4(r7)
	l.lwz	r17, 4348(r20)
	l.sfne	r4, r17
	l.bf	.LBB8_6
	l.sfeqi	r4, 0
	l.bf	.LBB8_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.then
                                        #   in Loop: Header=BB8_1 Depth=1
	l.lwz	r3, 0(r7)
	l.lwz	r16, 4352(r20)
	l.sfne	r6, r19
	l.bf	.LBB8_6
	l.sw	-12(r2), r6
	l.sw	4340(r15), r19
	l.sfne	r7, r20
	l.bf	.LBB8_6
	l.sw	-16(r2), r7
	l.sw	4336(r15), r20
	l.sfne	r8, r21
	l.bf	.LBB8_6
	l.sw	-20(r2), r8
	l.sw	4332(r15), r21
# BB#10:                                # %if.then
	l.sfne	r4, r17
	l.bf	.LBB8_6
	l.nop	0
	l.jalr	r4
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.addi	r3, r0, 18434
	l.addi	r16, r0, 18434
	l.sfne	r3, r16
	l.bf	.LBB8_6
	l.sw	-24(r2), r3
	l.sw	4328(r15), r16
# BB#11:                                # %if.then
	l.jal	mfspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -20(r2)
	l.xori	r3, r3, -1
	l.and	r4, r11, r3
	l.lwz	r16, 4332(r15)
	l.lwz	r3, -24(r2)
	l.xori	r16, r16, -1
	l.and	r17, r24, r16
	l.lwz	r16, 4328(r15)
# BB#12:                                # %if.then
	l.jal	mtspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r7, -16(r2)
	l.lwz	r6, -12(r2)
	l.lwz	r5, -28(r2)
	l.lwz	r20, 4336(r15)
	l.lwz	r19, 4340(r15)
	l.lwz	r18, 4324(r15)
.LBB8_4:                                # %if.end
                                        #   in Loop: Header=BB8_1 Depth=1
	l.addi	r7, r7, 8
	l.addi	r6, r6, 1
	l.addi	r20, r20, 8             # CFC
	l.addi	r19, r19, 1
	l.sfne	r6, r19
	l.bf	.LBB8_6
	l.sfnei	r6, 32
	l.bf	.LBB8_1
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.end
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB8_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB8_6:
	l.nop	205
.LBB8_7:
	l.nop	204
.Lfunc_end8:
	.size	int_main, .Lfunc_end8-int_main

	.hidden	int_clear_all_pending
	.globl	int_clear_all_pending
	.p2align	2
	.type	int_clear_all_pending,@function
int_clear_all_pending:                  # @int_clear_all_pending
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB9_1
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB9_1
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.addi	r3, r0, 18434
	l.addi	r15, r14, 0
	l.movhi	r4, 0
	l.addi	r14, r14, -8
	l.addi	r16, r0, 18434
	l.movhi	r17, 0
# BB#3:                                 # %entry
	l.jal	mtspr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB9_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB9_1:
	l.nop	205
.LBB9_2:
	l.nop	204
.Lfunc_end9:
	.size	int_clear_all_pending, .Lfunc_end9-int_clear_all_pending

	.hidden	memcpy
	.globl	memcpy
	.p2align	2
	.type	memcpy,@function
memcpy:                                 # @memcpy
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB10_4
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	l.sfne	r5, r18
	l.bf	.LBB10_4
	l.sfeqi	r5, 0
	l.bf	.LBB10_3
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.body.preheader
	l.ori	r6, r3, 0
	l.ori	r19, r16, 0
.LBB10_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.lbz	r7, 0(r4)
	l.lbz	r20, 4352(r17)
	l.sfne	r7, r20
	l.bf	.LBB10_4
	l.sb	0(r6), r7
	l.sb	4352(r19), r20
	l.addi	r6, r6, 1
	l.addi	r4, r4, 1
	l.addi	r5, r5, -1
	l.addi	r19, r19, 1
	l.addi	r17, r17, 1
	l.addi	r18, r18, -1
	l.sfne	r5, r18
	l.bf	.LBB10_4
	l.sfnei	r5, 0
	l.bf	.LBB10_2
	l.nop	0                       # in delay slot
.LBB10_3:                               # %while.end
	l.ori	r11, r3, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.ori	r24, r16, 0
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB10_4
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB10_4:
	l.nop	205
.LBB10_5:
	l.nop	204
.Lfunc_end10:
	.size	memcpy, .Lfunc_end10-memcpy

	.hidden	strlen
	.globl	strlen
	.p2align	2
	.type	strlen,@function
strlen:                                 # @strlen
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB11_3
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r4, r3, -1
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	l.addi	r17, r16, -1
.LBB11_1:                               # %for.cond
                                        # =>This Inner Loop Header: Depth=1
	l.addi	r5, r4, 1
	l.lbz	r4, 1(r4)
	l.addi	r18, r17, 1
	l.lbz	r17, 4353(r17)
	l.sfne	r4, r17
	l.bf	.LBB11_3
	l.sfnei	r4, 0
	l.ori	r4, r5, 0
	l.ori	r17, r18, 0
	l.bf	.LBB11_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %for.end
	l.sub	r11, r5, r3
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.sub	r24, r18, r16
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB11_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB11_3:
	l.nop	205
.LBB11_4:
	l.nop	204
.Lfunc_end11:
	.size	strlen, .Lfunc_end11-strlen

	.hidden	memchr
	.globl	memchr
	.p2align	2
	.type	memchr,@function
memchr:                                 # @memchr
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB12_5
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r11, 0
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	l.movhi	r24, 0
	l.sfne	r5, r18
	l.bf	.LBB12_5
	l.sfeqi	r5, 0
	l.bf	.LBB12_4
	l.nop	0                       # in delay slot
# BB#1:                                 # %while.body.lr.ph
	l.andi	r4, r4, 255
	l.andi	r17, r17, 255
.LBB12_2:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.lbz	r6, 0(r3)
	l.lbz	r19, 4352(r16)
	l.sfne	r6, r19
	l.bf	.LBB12_5
	l.sfne	r4, r17
	l.bf	.LBB12_5
	l.sfeq	r6, r4
	l.ori	r11, r3, 0
	l.ori	r24, r16, 0
	l.bf	.LBB12_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %if.end
                                        #   in Loop: Header=BB12_2 Depth=1
	l.addi	r3, r3, 1
	l.addi	r5, r5, -1
	l.addi	r16, r16, 1
	l.addi	r18, r18, -1
	l.sfne	r5, r18
	l.bf	.LBB12_5
	l.sfnei	r5, 0
	l.movhi	r11, 0
	l.movhi	r24, 0
	l.bf	.LBB12_2
	l.nop	0                       # in delay slot
.LBB12_4:                               # %cleanup
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB12_5
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB12_5:
	l.nop	205
.LBB12_6:
	l.nop	204
.Lfunc_end12:
	.size	memchr, .Lfunc_end12-memchr

	.hidden	rand
	.globl	rand
	.p2align	2
	.type	rand,@function
rand:                                   # @rand
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB13_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(rand.lfsr)
	l.addi	r15, r14, 0
	l.ori	r3, r3, lo(rand.lfsr)
	l.addi	r14, r14, -4
	l.lwz	r4, 0(r3)
	l.movhi	r16, hi(rand.lfsr)
	l.andi	r5, r4, 1
	l.ori	r16, r16, lo(rand.lfsr)
	l.movhi	r6, 0
	l.lwz	r17, 4352(r16)
	l.sub	r5, r6, r5
	l.andi	r18, r17, 1
	l.movhi	r6, 53248
	l.movhi	r19, 0
	l.ori	r6, r6, 1
	l.sub	r18, r19, r18
	l.and	r5, r5, r6
	l.movhi	r19, 53248
	l.srli	r4, r4, 1
	l.ori	r19, r19, 1
	l.xor	r11, r5, r4
	l.and	r18, r18, r19
	l.srli	r17, r17, 1
	l.xor	r24, r18, r17
	l.sfne	r11, r24
	l.bf	.LBB13_1
	l.sw	0(r3), r11
	l.sw	4352(r16), r24
	l.movhi	r3, hi(rand.period)
	l.ori	r3, r3, lo(rand.period)
	l.lwz	r4, 0(r3)
	l.movhi	r16, hi(rand.period)
	l.addi	r4, r4, 1
	l.ori	r16, r16, lo(rand.period)
	l.lwz	r17, 4352(r16)
	l.addi	r17, r17, 1
	l.sfne	r4, r17
	l.bf	.LBB13_1
	l.sw	0(r3), r4
	l.sw	4352(r16), r17
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB13_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB13_1:
	l.nop	205
.LBB13_2:
	l.nop	204
.Lfunc_end13:
	.size	rand, .Lfunc_end13-rand

	.hidden	mtspr
	.globl	mtspr
	.p2align	2
	.type	mtspr,@function
mtspr:                                  # @mtspr
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB14_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	#APP
	l.mtspr		r16,r17,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB14_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB14_1:
	l.nop	205
.LBB14_2:
	l.nop	204
.Lfunc_end14:
	.size	mtspr, .Lfunc_end14-mtspr

	.hidden	mfspr
	.globl	mfspr
	.p2align	2
	.type	mfspr,@function
mfspr:                                  # @mfspr
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB15_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	#APP
	l.mfspr		r24,r16,0
	#NO_APP
	#APP
	l.mfspr		r11,r3,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB15_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB15_1:
	l.nop	205
.LBB15_2:
	l.nop	204
.Lfunc_end15:
	.size	mfspr, .Lfunc_end15-mfspr

	.hidden	sim_putc
	.globl	sim_putc
	.p2align	2
	.type	sim_putc,@function
sim_putc:                               # @sim_putc
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB16_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	#APP
	l.addi	r16,r16,0
	#NO_APP
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP
    l.sfne  r3, r16
    l.bf    .LBB16_1
	#NO_APP
	#APP
	l.nop 4
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB16_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB16_1:
	l.nop	205
.LBB16_2:
	l.nop	204
.Lfunc_end16:
	.size	sim_putc, .Lfunc_end16-sim_putc

	.hidden	report
	.globl	report
	.p2align	2
	.type	report,@function
report:                                 # @report
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB17_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	#APP
	l.addi	r16,r16,0
	#NO_APP
	#APP
	l.addi	r3,r3,0
	#NO_APP
	#APP
    l.sfne  r3, r16
    l.bf    .LBB17_1
	#NO_APP
	#APP
	l.nop 2
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB17_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB17_1:
	l.nop	205
.LBB17_2:
	l.nop	204
.Lfunc_end17:
	.size	report, .Lfunc_end17-report

	.hidden	cpu_enable_user_interrupts
	.globl	cpu_enable_user_interrupts
	.p2align	2
	.type	cpu_enable_user_interrupts,@function
cpu_enable_user_interrupts:             # @cpu_enable_user_interrupts
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB18_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r3, r0, 17
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	l.addi	r16, r0, 17
	#APP
	l.mfspr		r17,r16,0
	#NO_APP
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.ori	r4, r4, 4
	l.ori	r17, r17, 4
	#APP
	l.mtspr		r16,r17,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB18_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB18_1:
	l.nop	205
.LBB18_2:
	l.nop	204
.Lfunc_end18:
	.size	cpu_enable_user_interrupts, .Lfunc_end18-cpu_enable_user_interrupts

	.hidden	cpu_enable_timer
	.globl	cpu_enable_timer
	.p2align	2
	.type	cpu_enable_timer,@function
cpu_enable_timer:                       # @cpu_enable_timer
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB19_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 24576
	l.addi	r15, r14, 0
	l.ori	r3, r3, 1000
	l.addi	r14, r14, -4
	l.addi	r4, r0, 20480
	l.movhi	r16, 24576
	l.ori	r16, r16, 1000
	l.addi	r17, r0, 20480
	#APP
	l.mtspr		r17,r16,0
	#NO_APP
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r3, r0, 17
	l.addi	r16, r0, 17
	#APP
	l.mfspr		r17,r16,0
	#NO_APP
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.ori	r4, r4, 2
	l.ori	r17, r17, 2
	#APP
	l.mtspr		r16,r17,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB19_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB19_1:
	l.nop	205
.LBB19_2:
	l.nop	204
.Lfunc_end19:
	.size	cpu_enable_timer, .Lfunc_end19-cpu_enable_timer

	.hidden	cpu_disable_timer
	.globl	cpu_disable_timer
	.p2align	2
	.type	cpu_disable_timer,@function
cpu_disable_timer:                      # @cpu_disable_timer
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB20_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r3, r0, 17
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	l.addi	r16, r0, 17
	#APP
	l.mfspr		r17,r16,0
	#NO_APP
	#APP
	l.mfspr		r4,r3,0
	#NO_APP
	l.addi	r5, r0, -3
	l.and	r4, r4, r5
	l.addi	r18, r0, -3
	l.and	r17, r17, r18
	#APP
	l.mtspr		r16,r17,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r3, r0, 20480
	l.movhi	r4, 0
	l.addi	r16, r0, 20480
	l.movhi	r17, 0
	#APP
	l.mtspr		r16,r17,0
	#NO_APP
	#APP
	l.mtspr		r3,r4,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB20_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB20_1:
	l.nop	205
.LBB20_2:
	l.nop	204
.Lfunc_end20:
	.size	cpu_disable_timer, .Lfunc_end20-cpu_disable_timer

	.hidden	cpu_timer_tick
	.globl	cpu_timer_tick
	.p2align	2
	.type	cpu_timer_tick,@function
cpu_timer_tick:                         # @cpu_timer_tick
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB21_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.addi	r15, r14, 0
	l.ori	r3, r3, lo(timer_ticks)
	l.addi	r14, r14, -4
	l.lwz	r4, 0(r3)
	l.movhi	r16, hi(timer_ticks)
	l.addi	r4, r4, 1
	l.ori	r16, r16, lo(timer_ticks)
	l.lwz	r17, 4352(r16)
	l.addi	r17, r17, 1
	l.sfne	r4, r17
	l.bf	.LBB21_1
	l.sw	0(r3), r4
	l.sw	4352(r16), r17
	l.movhi	r3, 24576
	l.ori	r3, r3, 1000
	l.addi	r4, r0, 20480
	l.movhi	r16, 24576
	l.ori	r16, r16, 1000
	l.addi	r17, r0, 20480
	#APP
	l.mtspr		r17,r16,0
	#NO_APP
	#APP
	l.mtspr		r4,r3,0
	#NO_APP
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB21_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB21_1:
	l.nop	205
.LBB21_2:
	l.nop	204
.Lfunc_end21:
	.size	cpu_timer_tick, .Lfunc_end21-cpu_timer_tick

	.hidden	cpu_reset_timer_ticks
	.globl	cpu_reset_timer_ticks
	.p2align	2
	.type	cpu_reset_timer_ticks,@function
cpu_reset_timer_ticks:                  # @cpu_reset_timer_ticks
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB22_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.addi	r15, r14, 0
	l.ori	r3, r3, lo(timer_ticks)
	l.addi	r14, r14, -4
	l.movhi	r4, 0
	l.movhi	r16, hi(timer_ticks)
	l.ori	r16, r16, lo(timer_ticks)
	l.movhi	r17, 0
	l.sfne	r4, r17
	l.bf	.LBB22_1
	l.sw	0(r3), r4
	l.sw	4352(r16), r17
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB22_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB22_1:
	l.nop	205
.LBB22_2:
	l.nop	204
.Lfunc_end22:
	.size	cpu_reset_timer_ticks, .Lfunc_end22-cpu_reset_timer_ticks

	.hidden	cpu_get_timer_ticks
	.globl	cpu_get_timer_ticks
	.p2align	2
	.type	cpu_get_timer_ticks,@function
cpu_get_timer_ticks:                    # @cpu_get_timer_ticks
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB23_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, hi(timer_ticks)
	l.addi	r15, r14, 0
	l.ori	r3, r3, lo(timer_ticks)
	l.addi	r14, r14, -4
	l.lwz	r11, 0(r3)
	l.movhi	r16, hi(timer_ticks)
	l.addi	r1, r2, 0
	l.ori	r16, r16, lo(timer_ticks)
	l.lwz	r2, -4(r1)
	l.lwz	r24, 4352(r16)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB23_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB23_1:
	l.nop	205
.LBB23_2:
	l.nop	204
.Lfunc_end23:
	.size	cpu_get_timer_ticks, .Lfunc_end23-cpu_get_timer_ticks

	.hidden	cpu_sleep_10ms
	.globl	cpu_sleep_10ms
	.p2align	2
	.type	cpu_sleep_10ms,@function
cpu_sleep_10ms:                         # @cpu_sleep_10ms
# BB#0:                                 # %while.cond.preheader
	l.sfne	r2, r15
	l.bf	.LBB24_2
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
.LBB24_1:                               # %while.cond
                                        # =>This Inner Loop Header: Depth=1
	l.j	.LBB24_1
	l.nop	0                       # in delay slot
.LBB24_2:
	l.nop	205
.LBB24_3:
	l.nop	204
.Lfunc_end24:
	.size	cpu_sleep_10ms, .Lfunc_end24-cpu_sleep_10ms

	.hidden	print_back_to_string
	.globl	print_back_to_string
	.p2align	2
	.type	print_back_to_string,@function
print_back_to_string:                   # @print_back_to_string
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB25_5
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB25_5
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -20
	l.ori	r8, r3, 0
	l.addi	r15, r14, 0
	l.lwz	r5, 0(r5)
	l.addi	r14, r14, -20
	l.ori	r21, r16, 0
	l.lwz	r18, 4352(r18)
	l.sfne	r6, r19
	l.bf	.LBB25_5
	l.sw	-20(r2), r6
	l.sw	4332(r15), r19
	l.lwz	r6, 0(r6)
	l.lwz	r3, 0(r7)
	l.add	r3, r3, r6
	l.lwz	r19, 4352(r19)
	l.sub	r5, r5, r6
	l.lwz	r16, 4352(r20)
	l.addi	r6, r5, -1
	l.add	r16, r16, r19
	l.sub	r18, r18, r19
	l.addi	r19, r18, -1
	l.sfne	r4, r17
	l.bf	.LBB25_5
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
	l.sfne	r6, r19
	l.bf	.LBB25_5
	l.sfne	r4, r17
	l.bf	.LBB25_5
	l.sfgtu	r6, r4
	l.bf	.LBB25_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.ori	r5, r6, 0
	l.ori	r18, r19, 0
.LBB25_2:                               # %entry
	l.sfne	r5, r18
	l.bf	.LBB25_5
	l.sw	-16(r2), r5
	l.sw	4336(r15), r18
	l.ori	r4, r8, 0
	l.ori	r17, r21, 0
# BB#7:                                 # %entry
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r5, -16(r2)
	l.movhi	r11, 0
	l.lwz	r3, -12(r2)
	l.lwz	r18, 4336(r15)
	l.movhi	r24, 0
	l.lwz	r16, 4340(r15)
	l.sfne	r5, r18
	l.bf	.LBB25_5
	l.sfne	r3, r16
	l.bf	.LBB25_5
	l.sfges	r5, r3
	l.bf	.LBB25_4
	l.nop	0                       # in delay slot
.LBB25_3:                               # %cleanup
	l.lwz	r4, -20(r2)
	l.lwz	r3, 0(r4)
	l.add	r3, r3, r5
	l.lwz	r17, 4332(r15)
	l.lwz	r16, 4352(r17)
	l.add	r16, r16, r18
	l.sfne	r3, r16
	l.bf	.LBB25_5
	l.sw	0(r4), r3
	l.sw	4352(r17), r16
	l.addi	r11, r0, 1
	l.addi	r24, r0, 1
.LBB25_4:
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB25_5
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB25_5:
	l.nop	205
.LBB25_6:
	l.nop	204
.Lfunc_end25:
	.size	print_back_to_string, .Lfunc_end25-print_back_to_string

	.hidden	vfnprintf
	.globl	vfnprintf
	.p2align	2
	.type	vfnprintf,@function
vfnprintf:                              # @vfnprintf
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB26_235
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB26_235
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -164
	l.ori	r13, r5, 0
	l.addi	r15, r14, 0
	l.addi	r14, r14, -164
	l.ori	r26, r18, 0
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-84(r2), r4
	l.sw	4268(r15), r17
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-100(r2), r3
	l.sw	4252(r15), r16
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-12(r2), r6
	l.sw	4340(r15), r19
	l.movhi	r6, 0
	l.addi	r3, r2, -53
	l.addi	r4, r3, 39
	l.movhi	r19, 0
	l.addi	r16, r15, -53
	l.addi	r17, r16, 39
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-152(r2), r4
	l.sw	4200(r15), r17
	l.addi	r3, r3, 40
	l.addi	r16, r16, 40
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-144(r2), r3
	l.sw	4208(r15), r16
	l.movhi	r8, hi(.L.str.1)
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r3, r3, lo(vfnprintf.blanks)
	l.movhi	r21, hi(.L.str.1)
	l.movhi	r16, hi(vfnprintf.blanks)
	l.ori	r16, r16, lo(vfnprintf.blanks)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-104(r2), r3
	l.sw	4248(r15), r16
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r3, r3, lo(vfnprintf.zeroes)
	l.movhi	r16, hi(vfnprintf.zeroes)
	l.ori	r16, r16, lo(vfnprintf.zeroes)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-88(r2), r3
	l.sw	4264(r15), r16
	l.movhi	r3, hi(.LJTI26_0)
	l.ori	r12, r3, lo(.LJTI26_0)
	l.movhi	r3, 0
	l.movhi	r16, hi(.LJTI26_0)
	l.ori	r25, r16, lo(.LJTI26_0)
	l.movhi	r16, 0
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-120(r2), r3
	l.sw	4232(r15), r16
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sw	-136(r2), r12
	l.sw	4216(r15), r25
	l.j	.LBB26_1
	l.nop	0                       # in delay slot
.LBB26_231:                             # %do.end551
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r6, -64(r2)
	l.lwz	r3, -76(r2)
	l.add	r6, r6, r3
	l.lwz	r19, 4288(r15)
	l.movhi	r8, hi(.L.str.1)
	l.lwz	r16, 4276(r15)
	l.lwz	r12, -136(r2)
	l.add	r19, r19, r16
	l.lwz	r13, -80(r2)
	l.movhi	r21, hi(.L.str.1)
	l.lwz	r25, 4216(r15)
	l.lwz	r26, 4272(r15)
.LBB26_1:                               # %for.cond
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_2 Depth 2
                                        #     Child Loop BB26_16 Depth 2
                                        #       Child Loop BB26_17 Depth 3
                                        #         Child Loop BB26_18 Depth 4
                                        #           Child Loop BB26_40 Depth 5
                                        #           Child Loop BB26_31 Depth 5
                                        #     Child Loop BB26_116 Depth 2
                                        #     Child Loop BB26_129 Depth 2
                                        #     Child Loop BB26_132 Depth 2
                                        #     Child Loop BB26_118 Depth 2
                                        #     Child Loop BB26_162 Depth 2
                                        #     Child Loop BB26_192 Depth 2
                                        #     Child Loop BB26_206 Depth 2
                                        #     Child Loop BB26_225 Depth 2
	l.ori	r4, r13, 0
	l.ori	r17, r26, 0
.LBB26_2:                               # %while.cond
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.ori	r5, r4, 0
	l.movhi	r7, 0
	l.lbz	r3, 0(r5)
	l.ori	r18, r17, 0
	l.movhi	r20, 0
	l.lbz	r16, 4352(r18)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_4
	l.nop	0                       # in delay slot
# BB#3:                                 # %while.body
                                        #   in Loop: Header=BB26_2 Depth=2
	l.addi	r7, r0, 1
	l.addi	r4, r5, 1
	l.addi	r20, r0, 1              # CFC
	l.addi	r17, r18, 1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 37
	l.bf	.LBB26_2
	l.nop	0                       # in delay slot
.LBB26_4:                               # %while.end
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sub	r11, r5, r13
	l.sub	r24, r18, r26
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sfeqi	r11, 0
	l.bf	.LBB26_12
	l.nop	0                       # in delay slot
# BB#5:                                 # %if.then6
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-76(r2), r7
	l.sw	4276(r15), r20
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-72(r2), r5
	l.sw	4280(r15), r18
	l.lwz	r3, -100(r2)
	l.add	r3, r3, r6
	l.lwz	r16, 4252(r15)
	l.add	r16, r16, r19
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-64(r2), r6
	l.sw	4288(r15), r19
	l.lwz	r4, -84(r2)
	l.sub	r4, r4, r6
	l.addi	r4, r4, -1
	l.lwz	r17, 4268(r15)
	l.sub	r17, r17, r19
	l.addi	r17, r17, -1
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sw	-68(r2), r11
	l.sw	4284(r15), r24
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sfgtu	r4, r11
	l.bf	.LBB26_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then6
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r11, r4, 0
	l.ori	r24, r17, 0
.LBB26_7:                               # %if.then6
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sw	-60(r2), r11
	l.sw	4292(r15), r24
	l.ori	r4, r13, 0
	l.lwz	r5, -60(r2)
	l.ori	r17, r26, 0
	l.lwz	r18, 4292(r15)
# BB#237:                               # %if.then6
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -60(r2)
	l.lwz	r3, -68(r2)
	l.lwz	r17, 4292(r15)
	l.lwz	r16, 4284(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfges	r4, r3
	l.bf	.LBB26_11
	l.nop	0                       # in delay slot
.LBB26_8:                               # %print_back_to_string.exit
	l.lwz	r3, -64(r2)
	l.lwz	r16, 4288(r15)
	l.j	.LBB26_9
	l.nop	0                       # in delay slot
.LBB26_11:                              # %if.end8
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r6, -64(r2)
	l.add	r6, r3, r6
	l.movhi	r8, hi(.L.str.1)
	l.lwz	r19, 4288(r15)
	l.lwz	r12, -136(r2)
	l.add	r19, r16, r19
	l.lwz	r5, -72(r2)
	l.movhi	r21, hi(.L.str.1)
	l.lwz	r7, -76(r2)
	l.lwz	r25, 4216(r15)
	l.lwz	r18, 4280(r15)
	l.lwz	r20, 4276(r15)
.LBB26_12:                              # %if.end9
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r3, r0, 1
	l.lwz	r4, -84(r2)
	l.addi	r16, r0, 1
	l.lwz	r17, 4268(r15)
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-64(r2), r6
	l.sw	4288(r15), r19
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sflts	r6, r4
	l.bf	.LBB26_14
	l.nop	0                       # in delay slot
# BB#13:                                # %if.end9
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB26_14:                              # %if.end9
                                        #   in Loop: Header=BB26_1 Depth=1
	l.and	r3, r7, r3
	l.and	r16, r20, r16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 1
	l.bf	.LBB26_10
	l.nop	0                       # in delay slot
# BB#15:                                # %if.end15
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r3, r0, -1
	l.addi	r16, r0, -1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-96(r2), r3
	l.sw	4256(r15), r16
	l.movhi	r4, 0
	l.movhi	r3, 0
	l.movhi	r17, 0
	l.movhi	r16, 0
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-132(r2), r3
	l.sw	4220(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sb	-13(r2), r4
	l.sb	4339(r15), r17
	l.addi	r13, r5, 1
	l.movhi	r11, 0
	l.movhi	r3, 0
	l.addi	r26, r18, 1
	l.movhi	r24, 0
	l.movhi	r16, 0
	l.j	.LBB26_16
	l.nop	0                       # in delay slot
.LBB26_26:                              # %sw.bb28
                                        #   in Loop: Header=BB26_16 Depth=2
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 4
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 4
.LBB26_16:                              # %rflag
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB26_17 Depth 3
                                        #         Child Loop BB26_18 Depth 4
                                        #           Child Loop BB26_40 Depth 5
                                        #           Child Loop BB26_31 Depth 5
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-76(r2), r3
	l.sw	4276(r15), r16
	l.j	.LBB26_17
	l.nop	0                       # in delay slot
.LBB26_22:                              # %rflag
                                        #   in Loop: Header=BB26_17 Depth=3
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-132(r2), r3
	l.sw	4220(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sb	-13(r2), r3
	l.sb	4339(r15), r16
.LBB26_17:                              # %rflag
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_16 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB26_18 Depth 4
                                        #           Child Loop BB26_40 Depth 5
                                        #           Child Loop BB26_31 Depth 5
	l.lbs	r7, 0(r13)
	l.addi	r13, r13, 1
	l.lbs	r20, 4352(r26)
	l.addi	r26, r26, 1
	l.j	.LBB26_18
	l.nop	0                       # in delay slot
.LBB26_37:                              # %while.end50
                                        #   in Loop: Header=BB26_18 Depth=4
	l.ori	r13, r3, 0
	l.ori	r26, r16, 0
.LBB26_18:                              # %reswitch
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_16 Depth=2
                                        #       Parent Loop BB26_17 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB26_40 Depth 5
                                        #           Child Loop BB26_31 Depth 5
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sfgtui	r7, 122
	l.bf	.LBB26_144
	l.nop	0                       # in delay slot
.LBB26_19:                              # %reswitch
                                        #   in Loop: Header=BB26_18 Depth=4
	l.addi	r5, r0, 117
	l.addi	r6, r0, 111
	l.ori	r4, r8, lo(.L.str.1)
	l.addi	r18, r0, 117
	l.slli	r3, r7, 2
	l.addi	r19, r0, 111
	l.add	r3, r3, r12
	l.ori	r17, r21, lo(.L.str.1)
	l.lwz	r3, 0(r3)
	l.slli	r16, r20, 2
	l.add	r16, r16, r25
	l.lwz	r16, 4352(r16)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.nop	0
	l.jr	r3
	l.nop	0                       # in delay slot
.LBB26_39:                              # %do.body.preheader
                                        #   in Loop: Header=BB26_18 Depth=4
	l.movhi	r11, 0
	l.ori	r3, r13, 0
	l.movhi	r24, 0
	l.ori	r16, r26, 0
.LBB26_40:                              # %do.body
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_16 Depth=2
                                        #       Parent Loop BB26_17 Depth=3
                                        #         Parent Loop BB26_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	l.muli	r4, r11, 10
	l.add	r4, r7, r4
	l.addi	r13, r3, 1
	l.muli	r17, r24, 10
	l.addi	r11, r4, -48
	l.add	r17, r20, r17
	l.lbs	r7, 0(r3)
	l.addi	r26, r16, 1
	l.addi	r3, r7, -48
	l.addi	r24, r17, -48
	l.lbs	r20, 4352(r16)
	l.addi	r16, r20, -48
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfltui	r3, 10
	l.ori	r3, r13, 0
	l.bf	.LBB26_40
	l.nop	0                       # in delay slot
	l.ori	r16, r26, 0
	l.j	.LBB26_18
	l.nop	0                       # in delay slot
.LBB26_28:                              # %sw.bb31
                                        #   in Loop: Header=BB26_18 Depth=4
	l.addi	r3, r13, 1
	l.lbs	r7, 0(r13)
	l.addi	r16, r26, 1
	l.lbs	r20, 4352(r26)
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sfeqi	r7, 42
	l.bf	.LBB26_32
	l.nop	0                       # in delay slot
# BB#29:                                # %while.cond41.preheader
                                        #   in Loop: Header=BB26_18 Depth=4
	l.movhi	r6, 0
	l.addi	r4, r7, -48
	l.movhi	r19, 0
	l.addi	r17, r20, -48
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtui	r4, 9
	l.bf	.LBB26_35
	l.nop	0                       # in delay slot
# BB#30:                                # %while.body45.preheader
                                        #   in Loop: Header=BB26_18 Depth=4
	l.movhi	r6, 0
	l.ori	r5, r3, 0
	l.movhi	r19, 0
	l.ori	r18, r16, 0
.LBB26_31:                              # %while.body45
                                        #   Parent Loop BB26_1 Depth=1
                                        #     Parent Loop BB26_16 Depth=2
                                        #       Parent Loop BB26_17 Depth=3
                                        #         Parent Loop BB26_18 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	l.muli	r3, r6, 10
	l.add	r6, r3, r4
	l.addi	r3, r5, 1
	l.muli	r16, r19, 10
	l.lbs	r7, 0(r5)
	l.add	r19, r16, r17
	l.addi	r4, r7, -48
	l.addi	r16, r18, 1
	l.lbs	r20, 4352(r18)
	l.addi	r17, r20, -48
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfltui	r4, 10
	l.ori	r5, r3, 0
	l.ori	r18, r16, 0
	l.bf	.LBB26_31
	l.nop	0                       # in delay slot
.LBB26_35:                              # %while.end50
                                        #   in Loop: Header=BB26_18 Depth=4
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-96(r2), r6
	l.sw	4256(r15), r19
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfgtsi	r6, -1
	l.bf	.LBB26_37
	l.nop	0                       # in delay slot
# BB#36:                                # %while.end50
                                        #   in Loop: Header=BB26_18 Depth=4
	l.addi	r4, r0, -1
	l.addi	r17, r0, -1
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-96(r2), r4
	l.sw	4256(r15), r17
	l.j	.LBB26_37
	l.nop	0                       # in delay slot
.LBB26_20:                              # %sw.bb
                                        #   in Loop: Header=BB26_17 Depth=3
	l.lwz	r3, -132(r2)
	l.andi	r3, r3, 255
	l.lwz	r16, 4220(r15)
	l.andi	r16, r16, 255
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 0
	l.bf	.LBB26_17
	l.nop	0                       # in delay slot
# BB#21:                                # %if.then20
                                        #   in Loop: Header=BB26_17 Depth=3
	l.addi	r3, r0, 32
	l.addi	r16, r0, 32
	l.j	.LBB26_22
	l.nop	0                       # in delay slot
.LBB26_24:                              # %sw.bb23
                                        #   in Loop: Header=BB26_17 Depth=3
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r11, 0(r3)
	l.lwz	r24, 4352(r16)
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sfgtsi	r11, -1
	l.bf	.LBB26_17
	l.nop	0                       # in delay slot
# BB#25:                                # %if.end27
                                        #   in Loop: Header=BB26_16 Depth=2
	l.movhi	r3, 0
	l.sub	r11, r3, r11
	l.movhi	r16, 0
	l.sub	r24, r16, r24
	l.j	.LBB26_26
	l.nop	0                       # in delay slot
.LBB26_27:                              # %sw.bb30
                                        #   in Loop: Header=BB26_17 Depth=3
	l.addi	r3, r0, 43
	l.addi	r16, r0, 43
	l.j	.LBB26_22
	l.nop	0                       # in delay slot
.LBB26_42:                              # %sw.bb70
                                        #   in Loop: Header=BB26_17 Depth=3
	l.lbz	r3, 0(r13)
	l.lbz	r16, 4352(r26)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 108
	l.bf	.LBB26_44
	l.nop	0                       # in delay slot
# BB#43:                                # %if.then74
                                        #   in Loop: Header=BB26_17 Depth=3
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 32
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 32
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-76(r2), r3
	l.sw	4276(r15), r16
	l.addi	r13, r13, 1
	l.addi	r26, r26, 1
	l.j	.LBB26_17
	l.nop	0                       # in delay slot
.LBB26_32:                              # %if.then36
                                        #   in Loop: Header=BB26_17 Depth=3
	l.lwz	r4, -12(r2)
	l.addi	r4, r4, 3
	l.addi	r5, r0, -4
	l.lwz	r17, 4340(r15)
	l.and	r4, r4, r5
	l.addi	r17, r17, 3
	l.addi	r5, r4, 4
	l.addi	r18, r0, -4
	l.and	r17, r17, r18
	l.addi	r18, r17, 4
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-12(r2), r5
	l.sw	4340(r15), r18
	l.lwz	r4, 0(r4)
	l.lwz	r17, 4352(r17)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-96(r2), r4
	l.sw	4256(r15), r17
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtsi	r4, -1
	l.bf	.LBB26_34
	l.nop	0                       # in delay slot
# BB#33:                                # %if.then36
                                        #   in Loop: Header=BB26_17 Depth=3
	l.addi	r4, r0, -1
	l.addi	r17, r0, -1
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-96(r2), r4
	l.sw	4256(r15), r17
.LBB26_34:                              # %if.then36
                                        #   in Loop: Header=BB26_17 Depth=3
	l.ori	r13, r3, 0
	l.ori	r26, r16, 0
	l.j	.LBB26_17
	l.nop	0                       # in delay slot
.LBB26_23:                              # %sw.bb22
                                        #   in Loop: Header=BB26_16 Depth=2
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 1
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 1
	l.j	.LBB26_16
	l.nop	0                       # in delay slot
.LBB26_38:                              # %sw.bb57
                                        #   in Loop: Header=BB26_16 Depth=2
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 128
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 128
	l.j	.LBB26_16
	l.nop	0                       # in delay slot
.LBB26_41:                              # %sw.bb68
                                        #   in Loop: Header=BB26_16 Depth=2
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 64
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 64
	l.j	.LBB26_16
	l.nop	0                       # in delay slot
.LBB26_45:                              # %sw.bb79
                                        #   in Loop: Header=BB26_16 Depth=2
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 32
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 32
	l.j	.LBB26_16
	l.nop	0                       # in delay slot
.LBB26_143:                             # %sw.bb374
                                        #   in Loop: Header=BB26_16 Depth=2
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 512
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 512
	l.j	.LBB26_16
	l.nop	0                       # in delay slot
.LBB26_44:                              # %if.else
                                        #   in Loop: Header=BB26_16 Depth=2
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 16
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 16
	l.j	.LBB26_16
	l.nop	0                       # in delay slot
.LBB26_58:                              # %sw.bb123
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r3, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r16, r16, 4
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.movhi	r8, 0
	l.movhi	r21, 0
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sb	-13(r2), r8
	l.sb	4339(r15), r21
	l.movhi	r3, hi(.L.str)
	l.ori	r3, r3, lo(.L.str)
	l.movhi	r16, hi(.L.str)
	l.ori	r16, r16, lo(.L.str)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-124(r2), r3
	l.sw	4228(r15), r16
	l.movhi	r12, 0
	l.movhi	r25, 0
.LBB26_145:                             # %if.else386
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r5, -76(r2)
	l.lwz	r18, 4276(r15)
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-112(r2), r7
	l.sw	4240(r15), r20
.LBB26_148:                             # %if.else386
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r7, -64(r2)
	l.lwz	r20, 4288(r15)
	l.j	.LBB26_149
	l.nop	0                       # in delay slot
.LBB26_144:                             # %if.end380
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sb	-53(r2), r7
	l.sb	4299(r15), r20
	l.addi	r12, r0, 1
	l.movhi	r8, 0
	l.addi	r25, r0, 1
	l.movhi	r21, 0
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sb	-13(r2), r8
	l.sb	4339(r15), r21
	l.addi	r3, r2, -53
	l.addi	r16, r15, -53
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-124(r2), r3
	l.sw	4228(r15), r16
	l.j	.LBB26_145
	l.nop	0                       # in delay slot
.LBB26_46:                              # %sw.bb84
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r7, r0, 68
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 16
	l.addi	r20, r0, 68             # CFC
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-76(r2), r3
	l.sw	4276(r15), r16
.LBB26_47:                              # %sw.bb86
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-112(r2), r7
	l.sw	4240(r15), r20
	l.lwz	r12, -76(r2)
	l.andi	r3, r12, 32
	l.lwz	r25, 4276(r15)
	l.andi	r16, r25, 32
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_49
	l.nop	0                       # in delay slot
# BB#48:                                # %cond.true88
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r6, 0(r3)
	l.lwz	r3, -12(r2)
	l.addi	r4, r3, 4
	l.lwz	r19, 4352(r16)
	l.lwz	r16, 4340(r15)
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.lwz	r16, 4352(r16)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-60(r2), r3
	l.sw	4292(r15), r16
	l.lwz	r8, -96(r2)
	l.lwz	r3, -112(r2)
	l.lwz	r7, -64(r2)
	l.lwz	r21, 4256(r15)
	l.lwz	r16, 4240(r15)
	l.lwz	r20, 4288(r15)
	l.j	.LBB26_54
	l.nop	0                       # in delay slot
.LBB26_49:                              # %cond.false90
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r12, 16
	l.andi	r16, r25, 16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_51
	l.nop	0                       # in delay slot
# BB#50:                                # %cond.true93
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r4, 0(r3)
	l.lwz	r8, -96(r2)
	l.lwz	r3, -112(r2)
	l.lwz	r17, 4352(r16)
	l.lwz	r7, -64(r2)
	l.lwz	r21, 4256(r15)
	l.lwz	r16, 4240(r15)
	l.lwz	r20, 4288(r15)
	l.j	.LBB26_53
	l.nop	0                       # in delay slot
.LBB26_65:                              # %sw.bb153
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r6, r0, 79
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 16
	l.addi	r19, r0, 79
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-76(r2), r3
	l.sw	4276(r15), r16
.LBB26_66:                              # %sw.bb155
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r12, -76(r2)
	l.andi	r3, r12, 32
	l.lwz	r25, 4276(r15)
	l.andi	r16, r25, 32
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_68
	l.nop	0                       # in delay slot
# BB#67:                                # %cond.true158
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r5, 0(r3)
	l.lwz	r4, -12(r2)
	l.addi	r3, r4, 4
	l.lwz	r18, 4352(r16)
	l.lwz	r17, 4340(r15)
	l.addi	r16, r17, 4
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.movhi	r3, 0
	l.lwz	r4, 0(r4)
	l.movhi	r16, 0
	l.lwz	r17, 4352(r17)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-60(r2), r4
	l.sw	4292(r15), r17
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-112(r2), r6
	l.sw	4240(r15), r19
	l.ori	r6, r5, 0
	l.ori	r19, r18, 0
	l.j	.LBB26_87
	l.nop	0                       # in delay slot
.LBB26_84:                              # %sw.bb217
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r5, r0, 85
	l.lwz	r3, -76(r2)
	l.ori	r3, r3, 16
	l.addi	r18, r0, 85
	l.lwz	r16, 4276(r15)
	l.ori	r16, r16, 16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-76(r2), r3
	l.sw	4276(r15), r16
.LBB26_85:                              # %sw.bb219
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r12, -76(r2)
	l.andi	r3, r12, 32
	l.lwz	r25, 4276(r15)
	l.andi	r16, r25, 32
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_88
	l.nop	0                       # in delay slot
# BB#86:                                # %cond.true222
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r6, 0(r3)
	l.lwz	r4, -12(r2)
	l.addi	r3, r4, 4
	l.lwz	r19, 4352(r16)
	l.lwz	r17, 4340(r15)
	l.addi	r16, r17, 4
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.addi	r3, r0, 1
	l.lwz	r4, 0(r4)
	l.addi	r16, r0, 1
	l.lwz	r17, 4352(r17)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-60(r2), r4
	l.sw	4292(r15), r17
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-112(r2), r5
	l.sw	4240(r15), r18
	l.j	.LBB26_87
	l.nop	0                       # in delay slot
.LBB26_94:                              # %hex.loopexit
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r3, hi(.L.str.3)
	l.ori	r4, r3, lo(.L.str.3)
	l.movhi	r16, hi(.L.str.3)
	l.ori	r17, r16, lo(.L.str.3)
.LBB26_95:                              # %hex
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-112(r2), r7
	l.sw	4240(r15), r20
	l.lwz	r6, -76(r2)
	l.andi	r3, r6, 32
	l.lwz	r19, 4276(r15)
	l.andi	r16, r19, 32
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_97
	l.nop	0                       # in delay slot
# BB#96:                                # %cond.true256
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r5
	l.addi	r16, r16, 3
	l.addi	r5, r3, 4
	l.addi	r18, r0, -4
	l.and	r16, r16, r18
	l.addi	r18, r16, 4
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-12(r2), r5
	l.sw	4340(r15), r18
	l.lwz	r12, 0(r3)
	l.lwz	r3, -12(r2)
	l.addi	r5, r3, 4
	l.lwz	r25, 4352(r16)
	l.lwz	r16, 4340(r15)
	l.addi	r18, r16, 4
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-12(r2), r5
	l.sw	4340(r15), r18
	l.lwz	r8, 0(r3)
	l.lwz	r7, -64(r2)
	l.lwz	r21, 4352(r16)
	l.lwz	r20, 4288(r15)
	l.j	.LBB26_102
	l.nop	0                       # in delay slot
.LBB26_147:                             # %sw.bb81
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.lwz	r16, 4352(r16)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sb	-53(r2), r3
	l.sb	4299(r15), r16
	l.addi	r12, r0, 1
	l.movhi	r8, 0
	l.addi	r25, r0, 1
	l.movhi	r21, 0
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sb	-13(r2), r8
	l.sb	4339(r15), r21
	l.addi	r3, r0, 99
	l.addi	r16, r0, 99
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-112(r2), r3
	l.sw	4240(r15), r16
	l.addi	r3, r2, -53
	l.addi	r16, r15, -53
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-124(r2), r3
	l.sw	4228(r15), r16
	l.lwz	r5, -76(r2)
	l.lwz	r18, 4276(r15)
	l.j	.LBB26_148
	l.nop	0                       # in delay slot
.LBB26_59:                              # %sw.bb125
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r4, -76(r2)
	l.andi	r3, r4, 32
	l.lwz	r17, 4276(r15)
	l.andi	r16, r17, 32
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_61
	l.nop	0                       # in delay slot
# BB#60:                                # %if.then128
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.lwz	r6, -64(r2)
	l.lwz	r16, 4352(r16)
	l.lwz	r19, 4288(r15)
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	4(r3), r6
	l.sw	4356(r16), r19
	l.srai	r4, r6, 31
	l.srai	r17, r19, 31
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	0(r3), r4
	l.sw	4352(r16), r17
	l.j	.LBB26_1
	l.nop	0                       # in delay slot
.LBB26_74:                              # %sw.bb188
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r4, r3, r4
	l.addi	r16, r16, 3
	l.addi	r3, r4, 4
	l.addi	r17, r0, -4
	l.and	r17, r16, r17
	l.addi	r16, r17, 4
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.movhi	r6, 0
	l.addi	r3, r0, 120
	l.movhi	r19, 0
	l.addi	r16, r0, 120
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-112(r2), r3
	l.sw	4240(r15), r16
	l.addi	r3, r0, 2
	l.movhi	r5, hi(.L.str.1)
	l.ori	r5, r5, lo(.L.str.1)
	l.addi	r16, r0, 2
	l.movhi	r18, hi(.L.str.1)
	l.ori	r18, r18, lo(.L.str.1)
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-120(r2), r5
	l.sw	4232(r15), r18
	l.lwz	r12, -76(r2)
	l.ori	r12, r12, 2
	l.lwz	r4, 0(r4)
	l.lwz	r25, 4276(r15)
	l.ori	r25, r25, 2
	l.lwz	r17, 4352(r17)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-60(r2), r4
	l.sw	4292(r15), r17
.LBB26_87:                              # %nosign
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r8, -96(r2)
	l.lwz	r7, -64(r2)
	l.lwz	r21, 4256(r15)
	l.lwz	r20, 4288(r15)
	l.j	.LBB26_107
	l.nop	0                       # in delay slot
.LBB26_75:                              # %sw.bb192
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.movhi	r4, hi(.L.str.2)
	l.ori	r4, r4, lo(.L.str.2)
	l.lwz	r16, 4352(r16)
	l.movhi	r17, hi(.L.str.2)
	l.ori	r17, r17, lo(.L.str.2)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_77
	l.nop	0                       # in delay slot
# BB#76:                                # %sw.bb192
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r4, r3, 0
	l.ori	r17, r16, 0
.LBB26_77:                              # %sw.bb192
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-124(r2), r4
	l.sw	4228(r15), r17
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sw	-92(r2), r11
	l.sw	4260(r15), r24
	l.sfne	r13, r26
	l.bf	.LBB26_235
	l.sw	-80(r2), r13
	l.sw	4272(r15), r26
	l.lwz	r3, -64(r2)
	l.lwz	r5, -96(r2)
	l.lwz	r16, 4288(r15)
	l.lwz	r18, 4256(r15)
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfltsi	r5, 0
	l.bf	.LBB26_82
	l.nop	0                       # in delay slot
# BB#78:                                # %if.then200
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -124(r2)
	l.movhi	r4, 0
	l.lwz	r16, 4228(r15)
	l.movhi	r17, 0
# BB#238:                               # %if.then200
	l.jal	memchr
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -96(r2)
	l.lwz	r17, 4256(r15)
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sfeqi	r11, 0
	l.ori	r3, r4, 0
	l.lwz	r7, -64(r2)
	l.lwz	r13, -80(r2)
	l.ori	r16, r17, 0
	l.lwz	r5, -76(r2)
	l.lwz	r20, 4288(r15)
	l.lwz	r26, 4272(r15)
	l.lwz	r18, 4276(r15)
	l.bf	.LBB26_83
	l.nop	0                       # in delay slot
.LBB26_79:                              # %if.then204
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -124(r2)
	l.sub	r3, r11, r3
	l.lwz	r16, 4228(r15)
	l.sub	r16, r24, r16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgts	r3, r4
	l.bf	.LBB26_81
	l.nop	0                       # in delay slot
# BB#80:                                # %if.then204
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r4, r3, 0
	l.ori	r17, r16, 0
.LBB26_81:                              # %if.then204
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r3, r4, 0
	l.ori	r16, r17, 0
	l.j	.LBB26_83
	l.nop	0                       # in delay slot
.LBB26_68:                              # %cond.false160
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r12, 16
	l.andi	r16, r25, 16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_70
	l.nop	0                       # in delay slot
# BB#69:                                # %cond.true163
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.lwz	r16, 4352(r16)
	l.j	.LBB26_72
	l.nop	0                       # in delay slot
.LBB26_88:                              # %cond.false224
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r12, 16
	l.andi	r16, r25, 16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_90
	l.nop	0                       # in delay slot
# BB#89:                                # %cond.true227
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.lwz	r16, 4352(r16)
	l.j	.LBB26_92
	l.nop	0                       # in delay slot
.LBB26_97:                              # %cond.false258
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r6, 16
	l.andi	r16, r19, 16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.lwz	r7, -64(r2)
	l.lwz	r20, 4288(r15)
	l.bf	.LBB26_99
	l.nop	0                       # in delay slot
# BB#98:                                # %cond.true261
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r5
	l.addi	r16, r16, 3
	l.addi	r5, r3, 4
	l.addi	r18, r0, -4
	l.and	r16, r16, r18
	l.addi	r18, r16, 4
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-12(r2), r5
	l.sw	4340(r15), r18
	l.lwz	r8, 0(r3)
	l.lwz	r21, 4352(r16)
	l.j	.LBB26_101
	l.nop	0                       # in delay slot
.LBB26_51:                              # %cond.false95
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r4, 0(r3)
	l.andi	r3, r12, 64
	l.lwz	r17, 4352(r16)
	l.andi	r16, r25, 64
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.lwz	r8, -96(r2)
	l.lwz	r3, -112(r2)
	l.lwz	r7, -64(r2)
	l.lwz	r21, 4256(r15)
	l.lwz	r16, 4240(r15)
	l.lwz	r20, 4288(r15)
	l.bf	.LBB26_53
	l.nop	0                       # in delay slot
# BB#52:                                # %cond.true98
                                        #   in Loop: Header=BB26_1 Depth=1
	l.slli	r3, r4, 16
	l.srai	r4, r3, 16
	l.slli	r16, r17, 16
	l.srai	r17, r16, 16
.LBB26_53:                              # %cond.end113
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-60(r2), r4
	l.sw	4292(r15), r17
	l.srai	r6, r4, 31
	l.srai	r19, r17, 31
.LBB26_54:                              # %cond.end116
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r3, r0, 1
	l.addi	r16, r0, 1
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfgtsi	r6, -1
	l.bf	.LBB26_108
	l.nop	0                       # in delay slot
# BB#55:                                # %if.then120
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r3, 0
	l.sub	r5, r3, r6
	l.addi	r3, r0, 1
	l.movhi	r16, 0
	l.lwz	r4, -60(r2)
	l.sub	r18, r16, r19
	l.addi	r16, r0, 1
	l.lwz	r17, 4292(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfnei	r4, 0
	l.ori	r6, r3, 0
	l.ori	r19, r16, 0
	l.bf	.LBB26_57
	l.nop	0                       # in delay slot
# BB#56:                                # %if.then120
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r6, 0
	l.movhi	r19, 0
.LBB26_57:                              # %if.then120
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sub	r6, r5, r6
	l.movhi	r5, 0
	l.sub	r4, r5, r4
	l.sub	r19, r18, r19
	l.movhi	r18, 0
	l.sub	r17, r18, r17
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-60(r2), r4
	l.sw	4292(r15), r17
	l.addi	r4, r0, 45
	l.addi	r17, r0, 45
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-132(r2), r4
	l.sw	4220(r15), r17
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sb	-13(r2), r4
	l.sb	4339(r15), r17
	l.lwz	r4, -112(r2)
	l.lwz	r17, 4240(r15)
	l.j	.LBB26_108
	l.nop	0                       # in delay slot
.LBB26_70:                              # %cond.false165
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.lwz	r16, 4352(r16)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-60(r2), r3
	l.sw	4292(r15), r16
	l.andi	r3, r12, 64
	l.andi	r16, r25, 64
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_73
	l.nop	0                       # in delay slot
# BB#71:                                # %cond.false165
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -60(r2)
	l.andi	r3, r3, 65535
	l.lwz	r16, 4292(r15)
	l.andi	r16, r16, 65535
.LBB26_72:                              # %cond.false165
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-60(r2), r3
	l.sw	4292(r15), r16
.LBB26_73:                              # %cond.false165
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r8, -96(r2)
	l.lwz	r7, -64(r2)
	l.movhi	r3, 0
	l.lwz	r21, 4256(r15)
	l.lwz	r20, 4288(r15)
	l.movhi	r16, 0
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-112(r2), r6
	l.sw	4240(r15), r19
	l.movhi	r6, 0
	l.movhi	r19, 0
	l.j	.LBB26_107
	l.nop	0                       # in delay slot
.LBB26_90:                              # %cond.false229
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.lwz	r16, 4352(r16)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-60(r2), r3
	l.sw	4292(r15), r16
	l.andi	r3, r12, 64
	l.andi	r16, r25, 64
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_93
	l.nop	0                       # in delay slot
# BB#91:                                # %cond.false229
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -60(r2)
	l.andi	r3, r3, 65535
	l.lwz	r16, 4292(r15)
	l.andi	r16, r16, 65535
.LBB26_92:                              # %cond.false229
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-60(r2), r3
	l.sw	4292(r15), r16
.LBB26_93:                              # %cond.false229
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r8, -96(r2)
	l.lwz	r7, -64(r2)
	l.movhi	r6, 0
	l.lwz	r21, 4256(r15)
	l.addi	r3, r0, 1
	l.lwz	r20, 4288(r15)
	l.movhi	r19, 0
	l.addi	r16, r0, 1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-112(r2), r5
	l.sw	4240(r15), r18
	l.j	.LBB26_107
	l.nop	0                       # in delay slot
.LBB26_99:                              # %cond.false263
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r5, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r5
	l.addi	r16, r16, 3
	l.addi	r5, r3, 4
	l.addi	r18, r0, -4
	l.and	r16, r16, r18
	l.addi	r18, r16, 4
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-12(r2), r5
	l.sw	4340(r15), r18
	l.lwz	r8, 0(r3)
	l.andi	r3, r6, 64
	l.lwz	r21, 4352(r16)
	l.andi	r16, r19, 64
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_101
	l.nop	0                       # in delay slot
# BB#100:                               # %cond.false263
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r8, r8, 65535
	l.andi	r21, r21, 65535
.LBB26_101:                             # %cond.end281
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r12, 0
	l.movhi	r25, 0
.LBB26_102:                             # %cond.end284
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sw	-68(r2), r12
	l.sw	4284(r15), r25
	l.or	r3, r8, r12
	l.ori	r5, r6, 2
	l.or	r16, r21, r25
	l.ori	r18, r19, 2
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 0
	l.bf	.LBB26_104
	l.nop	0                       # in delay slot
# BB#103:                               # %cond.end284
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r6, 0
	l.ori	r18, r19, 0
.LBB26_104:                             # %cond.end284
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sw	-60(r2), r8
	l.sw	4292(r15), r21
	l.andi	r3, r6, 1
	l.andi	r16, r19, 1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 0
	l.lwz	r8, -96(r2)
	l.lwz	r21, 4256(r15)
	l.bf	.LBB26_106
	l.nop	0                       # in delay slot
# BB#105:                               # %cond.end284
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r6, 0
	l.ori	r18, r19, 0
.LBB26_106:                             # %cond.end284
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r3, r0, 2
	l.addi	r16, r0, 2
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-120(r2), r4
	l.sw	4232(r15), r17
	l.ori	r12, r5, 0
	l.lwz	r4, -112(r2)
	l.lwz	r6, -68(r2)
	l.ori	r25, r18, 0
	l.lwz	r17, 4240(r15)
	l.lwz	r19, 4284(r15)
.LBB26_107:                             # %nosign
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r5, 0
	l.movhi	r4, 0
	l.movhi	r18, 0
	l.movhi	r17, 0
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-132(r2), r4
	l.sw	4220(r15), r17
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sb	-13(r2), r5
	l.sb	4339(r15), r18
.LBB26_108:                             # %number
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r4, r0, -129
	l.and	r4, r12, r4
	l.addi	r17, r0, -129
	l.and	r17, r25, r17
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-72(r2), r4
	l.sw	4280(r15), r17
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sfgtsi	r8, -1
	l.bf	.LBB26_110
	l.nop	0                       # in delay slot
# BB#109:                               # %number
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sw	-72(r2), r12
	l.sw	4280(r15), r25
.LBB26_110:                             # %number
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sfnei	r8, 0
	l.lwz	r12, -60(r2)
	l.lwz	r25, 4292(r15)
	l.bf	.LBB26_112
	l.nop	0                       # in delay slot
# BB#111:                               # %number
                                        #   in Loop: Header=BB26_1 Depth=1
	l.or	r4, r12, r6
	l.or	r17, r25, r19
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfeqi	r4, 0
	l.lwz	r5, -144(r2)
	l.lwz	r18, 4208(r15)
	l.bf	.LBB26_141
	l.nop	0                       # in delay slot
.LBB26_112:                             # %if.then305
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_117
	l.nop	0                       # in delay slot
.LBB26_113:                             # %if.then305
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 1
	l.bf	.LBB26_122
	l.nop	0                       # in delay slot
.LBB26_114:                             # %if.then305
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r12, r0, 25
	l.movhi	r4, hi(.L.str.4)
	l.ori	r5, r4, lo(.L.str.4)
	l.addi	r25, r0, 25
	l.movhi	r17, hi(.L.str.4)
	l.ori	r18, r17, lo(.L.str.4)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 2
	l.lwz	r4, -132(r2)
	l.lwz	r17, 4220(r15)
	l.bf	.LBB26_142
	l.nop	0                       # in delay slot
.LBB26_115:                             # %do.body360.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r5, -144(r2)
	l.lwz	r12, -60(r2)
	l.lwz	r18, 4208(r15)
	l.lwz	r25, 4292(r15)
.LBB26_116:                             # %do.body360
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.andi	r3, r12, 15
	l.lwz	r4, -120(r2)
	l.add	r3, r4, r3
	l.andi	r16, r25, 15
	l.lbz	r3, 0(r3)
	l.lwz	r17, 4232(r15)
	l.add	r16, r17, r16
	l.lbz	r16, 4352(r16)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sb	-1(r5), r3
	l.sb	4351(r18), r16
	l.srli	r3, r12, 4
	l.slli	r4, r6, 28
	l.or	r12, r3, r4
	l.srli	r16, r25, 4
	l.addi	r5, r5, -1
	l.slli	r17, r19, 28
	l.srli	r6, r6, 4
	l.or	r25, r16, r17
	l.or	r3, r12, r6
	l.addi	r18, r18, -1
	l.srli	r19, r19, 4
	l.or	r16, r25, r19
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 0
	l.bf	.LBB26_116
	l.nop	0                       # in delay slot
	l.j	.LBB26_141
	l.nop	0                       # in delay slot
.LBB26_117:                             # %do.body307.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r7, -112(r2)
	l.lwz	r3, -152(r2)
	l.lwz	r20, 4240(r15)
	l.lwz	r16, 4200(r15)
.LBB26_118:                             # %do.body307
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.slli	r4, r6, 29
	l.srli	r5, r12, 3
	l.or	r5, r5, r4
	l.slli	r17, r19, 29
	l.andi	r4, r12, 7
	l.srli	r18, r25, 3
	l.ori	r4, r4, 48
	l.or	r18, r18, r17
	l.andi	r17, r25, 7
	l.ori	r17, r17, 48
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sb	0(r3), r4
	l.sb	4352(r16), r17
	l.addi	r3, r3, -1
	l.srli	r6, r6, 3
	l.ori	r12, r6, 0
	l.addi	r16, r16, -1
	l.or	r6, r5, r12
	l.srli	r19, r19, 3
	l.ori	r25, r19, 0
	l.or	r19, r18, r25
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfnei	r6, 0
	l.ori	r6, r12, 0
	l.ori	r12, r5, 0
	l.ori	r19, r25, 0
	l.ori	r25, r18, 0
	l.bf	.LBB26_118
	l.nop	0                       # in delay slot
# BB#119:                               # %do.end314
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r6, r3, 1
	l.lwz	r5, -72(r2)
	l.andi	r5, r5, 1
	l.addi	r19, r16, 1
	l.lwz	r18, 4280(r15)
	l.andi	r18, r18, 1
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-112(r2), r7
	l.sw	4240(r15), r20
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfeqi	r5, 0
	l.ori	r5, r6, 0
	l.lwz	r7, -64(r2)
	l.ori	r18, r19, 0
	l.lwz	r20, 4288(r15)
	l.bf	.LBB26_141
	l.nop	0                       # in delay slot
# BB#120:                               # %do.end314
                                        #   in Loop: Header=BB26_1 Depth=1
	l.xori	r4, r4, 48
	l.xori	r17, r17, 48
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfeqi	r4, 0
	l.bf	.LBB26_141
	l.nop	0                       # in delay slot
# BB#121:                               # %if.then321
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r4, r0, 48
	l.addi	r17, r0, 48
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sb	0(r3), r4
	l.sb	4352(r16), r17
	l.ori	r5, r3, 0
	l.ori	r18, r16, 0
	l.j	.LBB26_141
	l.nop	0                       # in delay slot
.LBB26_122:                             # %sw.bb324
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -72(r2)
	l.andi	r3, r3, 32
	l.lwz	r16, 4280(r15)
	l.andi	r16, r16, 32
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_130
	l.nop	0                       # in delay slot
# BB#123:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r3, r0, 1
	l.addi	r16, r0, 1
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sfltui	r12, 10
	l.lwz	r5, -112(r2)
	l.lwz	r18, 4240(r15)
	l.bf	.LBB26_125
	l.nop	0                       # in delay slot
# BB#124:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB26_125:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfeqi	r6, 0
	l.bf	.LBB26_127
	l.nop	0                       # in delay slot
# BB#126:                               # %while.cond343.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB26_127:                             # %while.cond343.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r3, 1
	l.lwz	r7, -144(r2)
	l.andi	r16, r16, 1
	l.lwz	r20, 4208(r15)
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-112(r2), r5
	l.sw	4240(r15), r18
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 0
	l.bf	.LBB26_140
	l.nop	0                       # in delay slot
# BB#128:                               # %while.body346.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r7, -144(r2)
	l.ori	r4, r12, 0
	l.lwz	r20, 4208(r15)
	l.ori	r17, r25, 0
	l.sfne	r13, r26
	l.bf	.LBB26_235
	l.sw	-80(r2), r13
	l.sw	4272(r15), r26
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sw	-92(r2), r11
	l.sw	4260(r15), r24
.LBB26_129:                             # %while.body346
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-76(r2), r7
	l.sw	4276(r15), r20
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-68(r2), r6
	l.sw	4284(r15), r19
	l.addi	r6, r0, 10
	l.lwz	r3, -68(r2)
	l.addi	r19, r0, 10
	l.lwz	r16, 4284(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-108(r2), r4
	l.sw	4244(r15), r17
	l.movhi	r5, 0
	l.movhi	r18, 0
# BB#239:                               # %while.body346
	l.jal	__udivdi3
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.addi	r5, r0, -1
	l.addi	r6, r0, -10
	l.addi	r18, r0, -1
	l.addi	r19, r0, -10
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sw	-116(r2), r11
	l.sw	4236(r15), r24
	l.ori	r3, r11, 0
	l.ori	r16, r24, 0
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sw	-60(r2), r12
	l.sw	4292(r15), r25
	l.ori	r4, r12, 0
	l.ori	r17, r25, 0
# BB#240:                               # %while.body346
	l.jal	__muldi3
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r5, -68(r2)
	l.addi	r3, r0, 1
	l.lwz	r18, 4284(r15)
	l.addi	r16, r0, 1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfnei	r5, 0
	l.ori	r4, r3, 0
	l.ori	r17, r16, 0
	l.bf	.LBB26_135
	l.nop	0                       # in delay slot
.LBB26_134:                             # %while.body346
                                        #   in Loop: Header=BB26_129 Depth=2
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB26_135:                             # %while.body346
                                        #   in Loop: Header=BB26_129 Depth=2
	l.lwz	r6, -108(r2)
	l.lwz	r19, 4244(r15)
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfgtui	r6, 99
	l.bf	.LBB26_137
	l.nop	0                       # in delay slot
# BB#136:                               # %while.body346
                                        #   in Loop: Header=BB26_129 Depth=2
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB26_137:                             # %while.body346
                                        #   in Loop: Header=BB26_129 Depth=2
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfeqi	r5, 0
	l.lwz	r13, -80(r2)
	l.lwz	r11, -92(r2)
	l.lwz	r5, -112(r2)
	l.lwz	r26, 4272(r15)
	l.lwz	r24, 4260(r15)
	l.lwz	r18, 4240(r15)
	l.bf	.LBB26_139
	l.nop	0                       # in delay slot
# BB#138:                               # %while.body346
                                        #   in Loop: Header=BB26_129 Depth=2
	l.ori	r3, r4, 0
	l.ori	r16, r17, 0
.LBB26_139:                             # %while.body346
                                        #   in Loop: Header=BB26_129 Depth=2
	l.add	r4, r6, r12
	l.addi	r4, r4, 48
	l.lwz	r6, -76(r2)
	l.add	r17, r19, r25
	l.addi	r17, r17, 48
	l.lwz	r19, 4276(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sb	-1(r6), r4
	l.sb	4351(r19), r17
	l.ori	r7, r6, 0
	l.addi	r7, r7, -1
	l.andi	r3, r3, 1
	l.ori	r20, r19, 0
	l.addi	r20, r20, -1            # CFC
	l.andi	r16, r16, 1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 0
	l.lwz	r6, -116(r2)
	l.lwz	r12, -60(r2)
	l.ori	r4, r12, 0
	l.lwz	r19, 4236(r15)
	l.lwz	r25, 4292(r15)
	l.ori	r17, r25, 0
	l.bf	.LBB26_129
	l.nop	0                       # in delay slot
.LBB26_140:                             # %while.end354
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r3, r12, 48
	l.addi	r16, r25, 48
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sb	-1(r7), r3
	l.sb	4351(r20), r16
	l.addi	r5, r7, -1
	l.lwz	r7, -64(r2)
	l.lwz	r8, -96(r2)
	l.addi	r18, r20, -1
	l.lwz	r20, 4288(r15)
	l.lwz	r21, 4256(r15)
	l.j	.LBB26_141
	l.nop	0                       # in delay slot
.LBB26_130:                             # %if.then327
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sfltui	r12, 10
	l.lwz	r3, -144(r2)
	l.lwz	r16, 4208(r15)
	l.bf	.LBB26_133
	l.nop	0                       # in delay slot
# BB#131:                               # %while.body332.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r4, r12, 0
	l.lwz	r3, -144(r2)
	l.ori	r17, r25, 0
	l.lwz	r16, 4208(r15)
.LBB26_132:                             # %while.body332
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.addi	r5, r0, 10
	l.divu	r12, r4, r5
	l.muli	r5, r12, -10
	l.addi	r18, r0, 10
	l.add	r5, r4, r5
	l.divu	r25, r17, r18
	l.addi	r5, r5, 48
	l.muli	r18, r25, -10
	l.add	r18, r17, r18
	l.addi	r18, r18, 48
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sb	-1(r3), r5
	l.sb	4351(r16), r18
	l.addi	r3, r3, -1
	l.addi	r16, r16, -1
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtui	r4, 99
	l.ori	r4, r12, 0
	l.ori	r17, r25, 0
	l.bf	.LBB26_132
	l.nop	0                       # in delay slot
.LBB26_133:                             # %while.end338
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r4, r12, 48
	l.addi	r17, r25, 48
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sb	-1(r3), r4
	l.sb	4351(r16), r17
	l.addi	r5, r3, -1
	l.addi	r18, r16, -1
.LBB26_141:                             # %if.end368
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -144(r2)
	l.sub	r12, r3, r5
	l.lbz	r4, -13(r2)
	l.lwz	r16, 4208(r15)
	l.sub	r25, r16, r18
	l.lbz	r17, 4339(r15)
.LBB26_142:                             # %sw.epilog383
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-124(r2), r5
	l.sw	4228(r15), r18
	l.andi	r3, r4, 255
	l.andi	r16, r17, 255
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.lwz	r3, -72(r2)
	l.ori	r5, r3, 0
	l.lwz	r16, 4280(r15)
	l.ori	r18, r16, 0
	l.bf	.LBB26_149
	l.nop	0                       # in delay slot
# BB#146:                               # %if.then385
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r6, r12, 1
	l.ori	r5, r3, 0
	l.ori	r3, r12, 0
	l.addi	r19, r25, 1
	l.ori	r12, r6, 0
	l.ori	r18, r16, 0
	l.ori	r16, r25, 0
	l.ori	r25, r19, 0
	l.j	.LBB26_152
	l.nop	0                       # in delay slot
.LBB26_82:                              # %if.else214
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -124(r2)
	l.lwz	r16, 4228(r15)
# BB#241:                               # %if.else214
	l.jal	strlen
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.ori	r3, r11, 0
	l.lwz	r7, -64(r2)
	l.lwz	r13, -80(r2)
	l.ori	r16, r24, 0
	l.lwz	r5, -76(r2)
	l.lwz	r20, 4288(r15)
	l.lwz	r26, 4272(r15)
	l.lwz	r18, 4276(r15)
.LBB26_83:                              # %if.end216
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r8, 0
	l.movhi	r21, 0
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sb	-13(r2), r8
	l.sb	4339(r15), r21
	l.addi	r4, r0, 115
	l.addi	r17, r0, 115
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-112(r2), r4
	l.sw	4240(r15), r17
	l.lwz	r11, -92(r2)
	l.ori	r12, r3, 0
	l.lwz	r24, 4260(r15)
	l.ori	r25, r16, 0
.LBB26_149:                             # %if.else386
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r5, 2
	l.andi	r16, r18, 2
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.ori	r4, r12, 0
	l.ori	r3, r12, 0
	l.ori	r17, r25, 0
	l.ori	r16, r25, 0
	l.bf	.LBB26_151
	l.nop	0                       # in delay slot
# BB#150:                               # %if.else386
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r12, r3, 2
	l.addi	r25, r16, 2
.LBB26_151:                             # %if.else386
                                        #   in Loop: Header=BB26_1 Depth=1
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB26_152:                             # %if.end392
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sw	-108(r2), r8
	l.sw	4244(r15), r21
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sfgts	r8, r12
	l.bf	.LBB26_154
	l.nop	0                       # in delay slot
# BB#153:                               # %if.end392
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sw	-108(r2), r12
	l.sw	4244(r15), r25
.LBB26_154:                             # %if.end392
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-116(r2), r3
	l.sw	4236(r15), r16
	l.andi	r3, r5, 132
	l.andi	r16, r18, 132
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-140(r2), r3
	l.sw	4212(r15), r16
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sw	-96(r2), r8
	l.sw	4256(r15), r21
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-76(r2), r5
	l.sw	4276(r15), r18
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sw	-128(r2), r12
	l.sw	4224(r15), r25
	l.sfne	r13, r26
	l.bf	.LBB26_235
	l.sw	-80(r2), r13
	l.sw	4272(r15), r26
	l.sfne	r11, r24
	l.bf	.LBB26_235
	l.sw	-92(r2), r11
	l.sw	4260(r15), r24
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 0
	l.bf	.LBB26_171
	l.nop	0                       # in delay slot
# BB#155:                               # %if.then402
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -108(r2)
	l.sub	r6, r11, r3
	l.lwz	r16, 4244(r15)
	l.sub	r19, r24, r16
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfltsi	r6, 1
	l.bf	.LBB26_171
	l.nop	0                       # in delay slot
# BB#156:                               # %while.cond412.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -84(r2)
	l.sub	r3, r3, r7
	l.addi	r8, r3, -1
	l.lwz	r16, 4268(r15)
	l.sub	r16, r16, r20
	l.addi	r21, r16, -1            # CFC
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-132(r2), r4
	l.sw	4220(r15), r17
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-148(r2), r6
	l.sw	4204(r15), r19
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfgtsi	r6, 16
	l.bf	.LBB26_158
	l.nop	0                       # in delay slot
# BB#157:                               # %while.cond412.preheader.while.end421_crit_edge
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -100(r2)
	l.add	r12, r3, r7
	l.ori	r5, r6, 0
	l.lwz	r16, 4252(r15)
	l.lwz	r3, -112(r2)
	l.add	r25, r16, r20
	l.ori	r18, r19, 0
	l.lwz	r16, 4240(r15)
	l.j	.LBB26_166
	l.nop	0                       # in delay slot
.LBB26_158:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r3, r0, 16
	l.lwz	r5, -112(r2)
	l.addi	r16, r0, 16
	l.lwz	r18, 4240(r15)
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-112(r2), r5
	l.sw	4240(r15), r18
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sfgtui	r8, 16
	l.bf	.LBB26_160
	l.nop	0                       # in delay slot
# BB#159:                               # %while.body415.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r3, r8, 0
	l.ori	r16, r21, 0
.LBB26_160:                             # %while.body415.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r3, 0
	l.lwz	r3, -100(r2)
	l.add	r12, r3, r7
	l.ori	r18, r16, 0
	l.lwz	r16, 4252(r15)
	l.add	r25, r16, r20
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-68(r2), r5
	l.sw	4284(r15), r18
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfltsi	r5, 16
	l.bf	.LBB26_163
	l.nop	0                       # in delay slot
# BB#161:                               # %while.body415.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sw	-156(r2), r8
	l.sw	4196(r15), r21
	l.lwz	r4, -112(r2)
	l.addi	r3, r11, -17
	l.lwz	r4, -108(r2)
	l.lwz	r17, 4240(r15)
	l.sub	r3, r3, r4
	l.addi	r16, r24, -17
	l.addi	r4, r0, -16
	l.lwz	r17, 4244(r15)
	l.and	r3, r3, r4
	l.sub	r16, r16, r17
	l.addi	r17, r0, -16
	l.and	r16, r16, r17
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-160(r2), r3
	l.sw	4192(r15), r16
	l.addi	r3, r11, -16
	l.addi	r16, r24, -16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-164(r2), r3
	l.sw	4188(r15), r16
	l.ori	r3, r6, 0
	l.lwz	r4, -104(r2)
	l.ori	r16, r19, 0
	l.lwz	r17, 4248(r15)
	l.sfne	r12, r25
	l.bf	.LBB26_235
	l.sw	-72(r2), r12
	l.sw	4280(r15), r25
.LBB26_162:                             # %while.body415
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-60(r2), r3
	l.sw	4292(r15), r16
	l.ori	r3, r12, 0
	l.lwz	r4, -104(r2)
	l.lwz	r5, -68(r2)
	l.ori	r16, r25, 0
	l.lwz	r17, 4248(r15)
	l.lwz	r18, 4284(r15)
# BB#242:                               # %while.body415
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -60(r2)
	l.lwz	r12, -72(r2)
	l.addi	r3, r3, -16
	l.lwz	r16, 4292(r15)
	l.lwz	r25, 4280(r15)
	l.addi	r16, r16, -16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfgtsi	r3, 16
	l.bf	.LBB26_162
	l.nop	0                       # in delay slot
.LBB26_165:                             # %while.end421.loopexit
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -108(r2)
	l.lwz	r4, -164(r2)
	l.sub	r3, r4, r3
	l.lwz	r16, 4244(r15)
	l.lwz	r4, -160(r2)
	l.lwz	r17, 4188(r15)
	l.sub	r5, r3, r4
	l.sub	r16, r17, r16
	l.lwz	r7, -64(r2)
	l.lwz	r17, 4192(r15)
	l.lwz	r13, -80(r2)
	l.sub	r18, r16, r17
	l.lwz	r3, -112(r2)
	l.lwz	r20, 4288(r15)
	l.lwz	r4, -132(r2)
	l.lwz	r26, 4272(r15)
	l.lwz	r6, -148(r2)
	l.lwz	r16, 4240(r15)
	l.lwz	r8, -156(r2)
	l.lwz	r17, 4220(r15)
	l.lwz	r19, 4204(r15)
	l.lwz	r21, 4196(r15)
.LBB26_166:                             # %while.end421
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-112(r2), r3
	l.sw	4240(r15), r16
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-68(r2), r5
	l.sw	4284(r15), r18
	l.movhi	r3, hi(vfnprintf.blanks)
	l.movhi	r16, hi(vfnprintf.blanks)
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfgtu	r8, r5
	l.bf	.LBB26_168
	l.nop	0                       # in delay slot
# BB#167:                               # %while.end421
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r8, 0
	l.ori	r18, r21, 0
.LBB26_168:                             # %while.end421
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-60(r2), r5
	l.sw	4292(r15), r18
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r12, 0
	l.lwz	r5, -60(r2)
	l.ori	r17, r16, lo(vfnprintf.blanks)
	l.ori	r16, r25, 0
	l.lwz	r18, 4292(r15)
# BB#243:                               # %while.end421
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -60(r2)
	l.lwz	r3, -68(r2)
	l.lwz	r17, 4292(r15)
	l.lwz	r16, 4284(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfges	r4, r3
	l.bf	.LBB26_170
	l.nop	0                       # in delay slot
.LBB26_169:                             # %print_back_to_string.exit819
	l.j	.LBB26_8
	l.nop	0                       # in delay slot
.LBB26_170:                             # %do.end428
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r7, -64(r2)
	l.lwz	r3, -148(r2)
	l.add	r7, r3, r7
	l.lwz	r20, 4288(r15)
	l.lwz	r13, -80(r2)
	l.lwz	r16, 4204(r15)
	l.lwz	r11, -92(r2)
	l.add	r20, r16, r20
	l.lwz	r8, -96(r2)
	l.lwz	r26, 4272(r15)
	l.lwz	r5, -76(r2)
	l.lwz	r24, 4260(r15)
	l.lwz	r3, -112(r2)
	l.lwz	r21, 4256(r15)
	l.lwz	r4, -132(r2)
	l.lwz	r18, 4276(r15)
	l.lwz	r12, -128(r2)
	l.lwz	r16, 4240(r15)
	l.lwz	r17, 4220(r15)
	l.lwz	r25, 4224(r15)
.LBB26_171:                             # %if.end432
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r4, 255
	l.andi	r16, r17, 255
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_177
	l.nop	0                       # in delay slot
# BB#172:                               # %if.then434
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -100(r2)
	l.add	r3, r3, r7
	l.lwz	r16, 4252(r15)
	l.add	r16, r16, r20
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-64(r2), r7
	l.sw	4288(r15), r20
	l.lwz	r4, -84(r2)
	l.sub	r4, r4, r7
	l.addi	r4, r4, -1
	l.lwz	r17, 4268(r15)
	l.addi	r5, r0, 1
	l.sub	r17, r17, r20
	l.addi	r17, r17, -1
	l.addi	r18, r0, 1
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtui	r4, 1
	l.bf	.LBB26_174
	l.nop	0                       # in delay slot
# BB#173:                               # %if.then434
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB26_174:                             # %if.then434
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-60(r2), r5
	l.sw	4292(r15), r18
	l.addi	r4, r2, -13
	l.lwz	r5, -60(r2)
	l.addi	r17, r15, -13
	l.lwz	r18, 4292(r15)
# BB#244:                               # %if.then434
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -60(r2)
	l.lwz	r17, 4292(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtsi	r4, 0
	l.bf	.LBB26_176
	l.nop	0                       # in delay slot
.LBB26_175:                             # %print_back_to_string.exit810
	l.j	.LBB26_8
	l.nop	0                       # in delay slot
.LBB26_176:                             # %if.end438
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r7, -64(r2)
	l.addi	r7, r7, 1
	l.lwz	r20, 4288(r15)
	l.addi	r20, r20, 1             # CFC
	l.j	.LBB26_183
	l.nop	0                       # in delay slot
.LBB26_177:                             # %if.else440
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r5, 2
	l.andi	r16, r18, 2
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_184
	l.nop	0                       # in delay slot
# BB#178:                               # %if.then443
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r3, r0, 48
	l.addi	r16, r0, 48
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sb	-55(r2), r3
	l.sb	4297(r15), r16
	l.lwz	r3, -112(r2)
	l.lwz	r16, 4240(r15)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sb	-54(r2), r3
	l.sb	4298(r15), r16
	l.lwz	r3, -100(r2)
	l.add	r3, r3, r7
	l.lwz	r16, 4252(r15)
	l.add	r16, r16, r20
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-64(r2), r7
	l.sw	4288(r15), r20
	l.lwz	r4, -84(r2)
	l.sub	r4, r4, r7
	l.addi	r4, r4, -1
	l.lwz	r17, 4268(r15)
	l.addi	r5, r0, 2
	l.sub	r17, r17, r20
	l.addi	r17, r17, -1
	l.addi	r18, r0, 2
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtui	r4, 2
	l.bf	.LBB26_180
	l.nop	0                       # in delay slot
# BB#179:                               # %if.then443
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB26_180:                             # %if.then443
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-60(r2), r5
	l.sw	4292(r15), r18
	l.addi	r4, r2, -55
	l.lwz	r5, -60(r2)
	l.addi	r17, r15, -55
	l.lwz	r18, 4292(r15)
# BB#245:                               # %if.then443
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -60(r2)
	l.lwz	r17, 4292(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtsi	r4, 1
	l.bf	.LBB26_182
	l.nop	0                       # in delay slot
.LBB26_181:                             # %print_back_to_string.exit801
	l.j	.LBB26_8
	l.nop	0                       # in delay slot
.LBB26_182:                             # %if.end451
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r7, -64(r2)
	l.addi	r7, r7, 2
	l.lwz	r20, 4288(r15)
	l.addi	r20, r20, 2             # CFC
.LBB26_183:                             # %if.end454
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r13, -80(r2)
	l.lwz	r11, -92(r2)
	l.lwz	r8, -96(r2)
	l.lwz	r26, 4272(r15)
	l.lwz	r12, -128(r2)
	l.lwz	r24, 4260(r15)
	l.lwz	r21, 4256(r15)
	l.lwz	r25, 4224(r15)
.LBB26_184:                             # %if.end454
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r4, r8, 0
	l.lwz	r3, -140(r2)
	l.ori	r17, r21, 0
	l.lwz	r16, 4212(r15)
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfnei	r3, 128
	l.bf	.LBB26_199
	l.nop	0                       # in delay slot
# BB#185:                               # %if.then458
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -108(r2)
	l.sub	r8, r11, r3
	l.lwz	r16, 4244(r15)
	l.sub	r21, r24, r16
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sfltsi	r8, 1
	l.bf	.LBB26_199
	l.nop	0                       # in delay slot
# BB#186:                               # %while.cond468.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -84(r2)
	l.sub	r3, r3, r7
	l.addi	r4, r3, -1
	l.lwz	r16, 4268(r15)
	l.sub	r16, r16, r20
	l.addi	r17, r16, -1
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-64(r2), r7
	l.sw	4288(r15), r20
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sw	-112(r2), r8
	l.sw	4240(r15), r21
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sfgtsi	r8, 16
	l.bf	.LBB26_188
	l.nop	0                       # in delay slot
# BB#187:                               # %while.cond468.preheader.while.end477_crit_edge
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -100(r2)
	l.add	r6, r3, r7
	l.ori	r3, r8, 0
	l.lwz	r16, 4252(r15)
	l.add	r19, r16, r20
	l.ori	r16, r21, 0
	l.j	.LBB26_194
	l.nop	0                       # in delay slot
.LBB26_188:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r5, r0, 16
	l.addi	r18, r0, 16
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtui	r4, 16
	l.bf	.LBB26_190
	l.nop	0                       # in delay slot
# BB#189:                               # %while.body471.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB26_190:                             # %while.body471.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -100(r2)
	l.add	r6, r3, r7
	l.lwz	r16, 4252(r15)
	l.add	r19, r16, r20
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-68(r2), r5
	l.sw	4284(r15), r18
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfltsi	r5, 16
	l.bf	.LBB26_232
	l.nop	0                       # in delay slot
# BB#191:                               # %while.body471.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-132(r2), r4
	l.sw	4220(r15), r17
	l.addi	r3, r11, -17
	l.lwz	r4, -108(r2)
	l.sub	r3, r3, r4
	l.addi	r16, r24, -17
	l.addi	r4, r0, -16
	l.lwz	r17, 4244(r15)
	l.and	r3, r3, r4
	l.sub	r16, r16, r17
	l.addi	r17, r0, -16
	l.and	r16, r16, r17
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-140(r2), r3
	l.sw	4212(r15), r16
	l.addi	r3, r11, -16
	l.addi	r16, r24, -16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-148(r2), r3
	l.sw	4204(r15), r16
	l.lwz	r4, -88(r2)
	l.lwz	r17, 4264(r15)
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-72(r2), r6
	l.sw	4280(r15), r19
.LBB26_192:                             # %while.body471
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sw	-60(r2), r8
	l.sw	4292(r15), r21
	l.ori	r3, r6, 0
	l.lwz	r4, -88(r2)
	l.ori	r16, r19, 0
	l.lwz	r17, 4264(r15)
# BB#246:                               # %while.body471
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r8, -60(r2)
	l.lwz	r5, -68(r2)
	l.lwz	r6, -72(r2)
	l.lwz	r21, 4292(r15)
	l.addi	r8, r8, -16
	l.lwz	r18, 4284(r15)
	l.lwz	r19, 4280(r15)
	l.addi	r21, r21, -16           # CFC
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sfgtsi	r8, 16
	l.bf	.LBB26_192
	l.nop	0                       # in delay slot
.LBB26_193:                             # %while.end477.loopexit
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -108(r2)
	l.lwz	r4, -148(r2)
	l.sub	r3, r4, r3
	l.lwz	r16, 4244(r15)
	l.lwz	r4, -140(r2)
	l.lwz	r17, 4204(r15)
	l.sub	r3, r3, r4
	l.sub	r16, r17, r16
	l.lwz	r13, -80(r2)
	l.lwz	r17, 4212(r15)
	l.lwz	r8, -112(r2)
	l.sub	r16, r16, r17
	l.lwz	r4, -132(r2)
	l.lwz	r26, 4272(r15)
	l.lwz	r21, 4240(r15)
	l.lwz	r17, 4220(r15)
.LBB26_194:                             # %while.end477
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-68(r2), r3
	l.sw	4284(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfgtu	r4, r3
	l.ori	r5, r3, 0
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r18, r16, 0
	l.movhi	r16, hi(vfnprintf.zeroes)
	l.bf	.LBB26_196
	l.nop	0                       # in delay slot
# BB#195:                               # %while.end477
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB26_196:                             # %while.end477
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-60(r2), r5
	l.sw	4292(r15), r18
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r6, 0
	l.lwz	r5, -60(r2)
	l.ori	r17, r16, lo(vfnprintf.zeroes)
	l.ori	r16, r19, 0
	l.lwz	r18, 4292(r15)
# BB#247:                               # %while.end477
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -60(r2)
	l.lwz	r3, -68(r2)
	l.lwz	r17, 4292(r15)
	l.lwz	r16, 4284(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfges	r4, r3
	l.bf	.LBB26_198
	l.nop	0                       # in delay slot
.LBB26_197:                             # %print_back_to_string.exit783
	l.j	.LBB26_8
	l.nop	0                       # in delay slot
.LBB26_198:                             # %do.end484
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r7, -64(r2)
	l.lwz	r3, -112(r2)
	l.add	r7, r7, r3
	l.lwz	r20, 4288(r15)
	l.lwz	r13, -80(r2)
	l.lwz	r16, 4240(r15)
	l.lwz	r11, -92(r2)
	l.add	r20, r20, r16
	l.lwz	r4, -96(r2)
	l.lwz	r26, 4272(r15)
	l.lwz	r12, -128(r2)
	l.lwz	r24, 4260(r15)
	l.lwz	r17, 4256(r15)
	l.lwz	r25, 4224(r15)
.LBB26_199:                             # %if.end488
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r8, r4, 0
	l.sub	r6, r8, r12
	l.ori	r21, r17, 0
	l.sub	r19, r21, r25
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfltsi	r6, 1
	l.ori	r5, r7, 0
	l.lwz	r7, -124(r2)
	l.ori	r18, r20, 0
	l.lwz	r20, 4228(r15)
	l.bf	.LBB26_213
	l.nop	0                       # in delay slot
# BB#200:                               # %while.cond498.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -84(r2)
	l.sub	r3, r3, r5
	l.addi	r4, r3, -1
	l.lwz	r16, 4268(r15)
	l.sub	r16, r16, r18
	l.addi	r17, r16, -1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-64(r2), r5
	l.sw	4288(r15), r18
	l.ori	r7, r5, 0
	l.ori	r20, r18, 0
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-96(r2), r6
	l.sw	4256(r15), r19
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sfgtsi	r6, 16
	l.bf	.LBB26_202
	l.nop	0                       # in delay slot
# BB#201:                               # %while.cond498.preheader.while.end507_crit_edge
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -100(r2)
	l.add	r7, r3, r7
	l.ori	r3, r6, 0
	l.lwz	r16, 4252(r15)
	l.add	r20, r16, r20
	l.ori	r16, r19, 0
	l.j	.LBB26_208
	l.nop	0                       # in delay slot
.LBB26_202:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r5, r0, 16
	l.addi	r18, r0, 16
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtui	r4, 16
	l.bf	.LBB26_204
	l.nop	0                       # in delay slot
# BB#203:                               # %while.body501.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB26_204:                             # %while.body501.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -100(r2)
	l.add	r7, r3, r7
	l.lwz	r16, 4252(r15)
	l.add	r20, r16, r20
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-68(r2), r5
	l.sw	4284(r15), r18
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfltsi	r5, 16
	l.bf	.LBB26_233
	l.nop	0                       # in delay slot
# BB#205:                               # %while.body501.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-112(r2), r4
	l.sw	4240(r15), r17
	l.addi	r3, r8, -17
	l.sub	r3, r3, r12
	l.addi	r4, r0, -16
	l.addi	r16, r21, -17
	l.and	r3, r3, r4
	l.sub	r16, r16, r25
	l.addi	r17, r0, -16
	l.and	r16, r16, r17
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-132(r2), r3
	l.sw	4220(r15), r16
	l.addi	r3, r8, -16
	l.addi	r16, r21, -16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-140(r2), r3
	l.sw	4212(r15), r16
	l.ori	r3, r6, 0
	l.ori	r16, r19, 0
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-72(r2), r7
	l.sw	4280(r15), r20
.LBB26_206:                             # %while.body501
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-60(r2), r3
	l.sw	4292(r15), r16
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r7, 0
	l.movhi	r16, hi(vfnprintf.zeroes)
	l.ori	r17, r16, lo(vfnprintf.zeroes)
	l.ori	r16, r20, 0
# BB#248:                               # %while.body501
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -60(r2)
	l.lwz	r5, -68(r2)
	l.lwz	r7, -72(r2)
	l.lwz	r16, 4292(r15)
	l.addi	r3, r3, -16
	l.lwz	r18, 4284(r15)
	l.lwz	r20, 4280(r15)
	l.addi	r16, r16, -16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfgtsi	r3, 16
	l.bf	.LBB26_206
	l.nop	0                       # in delay slot
.LBB26_207:                             # %while.end507.loopexit
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -128(r2)
	l.lwz	r4, -140(r2)
	l.sub	r3, r4, r3
	l.lwz	r16, 4224(r15)
	l.lwz	r4, -132(r2)
	l.lwz	r17, 4212(r15)
	l.sub	r3, r3, r4
	l.sub	r16, r17, r16
	l.lwz	r13, -80(r2)
	l.lwz	r17, 4220(r15)
	l.lwz	r11, -92(r2)
	l.sub	r16, r16, r17
	l.lwz	r6, -96(r2)
	l.lwz	r26, 4272(r15)
	l.lwz	r4, -112(r2)
	l.lwz	r24, 4260(r15)
	l.lwz	r19, 4256(r15)
	l.lwz	r17, 4240(r15)
.LBB26_208:                             # %while.end507
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-68(r2), r3
	l.sw	4284(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfgtu	r4, r3
	l.ori	r5, r3, 0
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r18, r16, 0
	l.movhi	r16, hi(vfnprintf.zeroes)
	l.bf	.LBB26_210
	l.nop	0                       # in delay slot
# BB#209:                               # %while.end507
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB26_210:                             # %while.end507
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-60(r2), r5
	l.sw	4292(r15), r18
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r7, 0
	l.lwz	r5, -60(r2)
	l.ori	r17, r16, lo(vfnprintf.zeroes)
	l.ori	r16, r20, 0
	l.lwz	r18, 4292(r15)
# BB#249:                               # %while.end507
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -60(r2)
	l.lwz	r3, -68(r2)
	l.lwz	r17, 4292(r15)
	l.lwz	r16, 4284(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfges	r4, r3
	l.bf	.LBB26_212
	l.nop	0                       # in delay slot
.LBB26_211:                             # %print_back_to_string.exit765
	l.j	.LBB26_8
	l.nop	0                       # in delay slot
.LBB26_212:                             # %do.end514
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r5, -64(r2)
	l.lwz	r3, -96(r2)
	l.add	r5, r5, r3
	l.lwz	r18, 4288(r15)
	l.lwz	r13, -80(r2)
	l.lwz	r16, 4256(r15)
	l.lwz	r11, -92(r2)
	l.add	r18, r18, r16
	l.lwz	r7, -124(r2)
	l.lwz	r26, 4272(r15)
	l.lwz	r24, 4260(r15)
	l.lwz	r20, 4228(r15)
.LBB26_213:                             # %if.end517
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -100(r2)
	l.add	r3, r3, r5
	l.lwz	r16, 4252(r15)
	l.add	r16, r16, r18
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-64(r2), r5
	l.sw	4288(r15), r18
	l.lwz	r4, -84(r2)
	l.sub	r4, r4, r5
	l.addi	r4, r4, -1
	l.lwz	r17, 4268(r15)
	l.lwz	r5, -116(r2)
	l.sub	r17, r17, r18
	l.addi	r17, r17, -1
	l.lwz	r18, 4236(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfgtu	r4, r5
	l.bf	.LBB26_215
	l.nop	0                       # in delay slot
# BB#214:                               # %if.end517
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB26_215:                             # %if.end517
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-60(r2), r5
	l.sw	4292(r15), r18
	l.ori	r4, r7, 0
	l.ori	r17, r20, 0
# BB#250:                               # %if.end517
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -60(r2)
	l.lwz	r3, -116(r2)
	l.lwz	r17, 4292(r15)
	l.lwz	r16, 4236(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfges	r4, r3
	l.bf	.LBB26_217
	l.nop	0                       # in delay slot
.LBB26_216:                             # %print_back_to_string.exit756
	l.j	.LBB26_8
	l.nop	0                       # in delay slot
.LBB26_217:                             # %if.end521
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r6, -64(r2)
	l.add	r6, r6, r3
	l.lwz	r3, -76(r2)
	l.lwz	r19, 4288(r15)
	l.andi	r3, r3, 4
	l.add	r19, r19, r16
	l.lwz	r16, 4276(r15)
	l.andi	r16, r16, 4
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.movhi	r8, hi(.L.str.1)
	l.lwz	r12, -136(r2)
	l.lwz	r13, -80(r2)
	l.movhi	r21, hi(.L.str.1)
	l.lwz	r11, -92(r2)
	l.lwz	r25, 4216(r15)
	l.lwz	r26, 4272(r15)
	l.lwz	r24, 4260(r15)
	l.bf	.LBB26_1
	l.nop	0                       # in delay slot
# BB#218:                               # %if.then525
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -108(r2)
	l.sub	r7, r11, r3
	l.lwz	r16, 4244(r15)
	l.sub	r20, r24, r16
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sfltsi	r7, 1
	l.bf	.LBB26_1
	l.nop	0                       # in delay slot
# BB#219:                               # %while.cond535.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -84(r2)
	l.sub	r3, r3, r6
	l.addi	r4, r3, -1
	l.lwz	r16, 4268(r15)
	l.sub	r16, r16, r19
	l.addi	r17, r16, -1
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	-64(r2), r6
	l.sw	4288(r15), r19
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sw	-76(r2), r7
	l.sw	4276(r15), r20
	l.sfne	r7, r20
	l.bf	.LBB26_235
	l.sfgtsi	r7, 16
	l.bf	.LBB26_221
	l.nop	0                       # in delay slot
# BB#220:                               # %while.cond535.preheader.while.end544_crit_edge
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -100(r2)
	l.add	r8, r3, r6
	l.ori	r3, r7, 0
	l.lwz	r16, 4252(r15)
	l.add	r21, r16, r19
	l.ori	r16, r20, 0
	l.j	.LBB26_227
	l.nop	0                       # in delay slot
.LBB26_221:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.addi	r5, r0, 16
	l.addi	r18, r0, 16
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfgtui	r4, 16
	l.bf	.LBB26_223
	l.nop	0                       # in delay slot
# BB#222:                               # %while.body538.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB26_223:                             # %while.body538.lr.ph
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -100(r2)
	l.add	r8, r3, r6
	l.lwz	r16, 4252(r15)
	l.add	r21, r16, r19
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-68(r2), r5
	l.sw	4284(r15), r18
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sfltsi	r5, 16
	l.bf	.LBB26_234
	l.nop	0                       # in delay slot
# BB#224:                               # %while.body538.preheader
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-96(r2), r4
	l.sw	4256(r15), r17
	l.addi	r3, r11, -17
	l.lwz	r4, -108(r2)
	l.sub	r3, r3, r4
	l.addi	r16, r24, -17
	l.addi	r4, r0, -16
	l.lwz	r17, 4244(r15)
	l.and	r3, r3, r4
	l.sub	r16, r16, r17
	l.addi	r17, r0, -16
	l.and	r16, r16, r17
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-112(r2), r3
	l.sw	4240(r15), r16
	l.addi	r3, r11, -16
	l.addi	r16, r24, -16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-92(r2), r3
	l.sw	4260(r15), r16
	l.ori	r3, r7, 0
	l.ori	r16, r20, 0
	l.sfne	r8, r21
	l.bf	.LBB26_235
	l.sw	-72(r2), r8
	l.sw	4280(r15), r21
.LBB26_225:                             # %while.body538
                                        #   Parent Loop BB26_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-60(r2), r3
	l.sw	4292(r15), r16
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r8, 0
	l.movhi	r16, hi(vfnprintf.blanks)
	l.ori	r17, r16, lo(vfnprintf.blanks)
	l.ori	r16, r21, 0
# BB#251:                               # %while.body538
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -60(r2)
	l.lwz	r5, -68(r2)
	l.lwz	r8, -72(r2)
	l.lwz	r16, 4292(r15)
	l.addi	r3, r3, -16
	l.lwz	r18, 4284(r15)
	l.lwz	r21, 4280(r15)
	l.addi	r16, r16, -16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfgtsi	r3, 16
	l.bf	.LBB26_225
	l.nop	0                       # in delay slot
.LBB26_226:                             # %while.end544.loopexit
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -108(r2)
	l.lwz	r4, -92(r2)
	l.sub	r3, r4, r3
	l.lwz	r16, 4244(r15)
	l.lwz	r4, -112(r2)
	l.lwz	r17, 4260(r15)
	l.sub	r3, r3, r4
	l.sub	r16, r17, r16
	l.lwz	r6, -64(r2)
	l.lwz	r17, 4240(r15)
	l.lwz	r7, -76(r2)
	l.sub	r16, r16, r17
	l.lwz	r4, -96(r2)
	l.lwz	r19, 4288(r15)
	l.lwz	r20, 4276(r15)
	l.lwz	r17, 4256(r15)
.LBB26_227:                             # %while.end544
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-68(r2), r3
	l.sw	4284(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfgtu	r4, r3
	l.ori	r5, r3, 0
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r18, r16, 0
	l.movhi	r16, hi(vfnprintf.blanks)
	l.bf	.LBB26_229
	l.nop	0                       # in delay slot
# BB#228:                               # %while.end544
                                        #   in Loop: Header=BB26_1 Depth=1
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB26_229:                             # %while.end544
                                        #   in Loop: Header=BB26_1 Depth=1
	l.sfne	r5, r18
	l.bf	.LBB26_235
	l.sw	-60(r2), r5
	l.sw	4292(r15), r18
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r8, 0
	l.lwz	r5, -60(r2)
	l.ori	r17, r16, lo(vfnprintf.blanks)
	l.ori	r16, r21, 0
	l.lwz	r18, 4292(r15)
# BB#252:                               # %while.end544
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -60(r2)
	l.lwz	r3, -68(r2)
	l.lwz	r17, 4292(r15)
	l.lwz	r16, 4284(r15)
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfges	r4, r3
	l.bf	.LBB26_231
	l.nop	0                       # in delay slot
.LBB26_230:                             # %print_back_to_string.exit738
	l.j	.LBB26_8
	l.nop	0                       # in delay slot
.LBB26_61:                              # %if.else131
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r4, 16
	l.andi	r16, r17, 16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_63
	l.nop	0                       # in delay slot
.LBB26_62:                              # %if.then134
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.lwz	r6, -64(r2)
	l.lwz	r16, 4352(r16)
	l.lwz	r19, 4288(r15)
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sw	0(r3), r6
	l.sw	4352(r16), r19
	l.j	.LBB26_1
	l.nop	0                       # in delay slot
.LBB26_63:                              # %if.else136
                                        #   in Loop: Header=BB26_1 Depth=1
	l.andi	r3, r4, 64
	l.andi	r16, r17, 64
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sfeqi	r3, 0
	l.bf	.LBB26_62
	l.nop	0                       # in delay slot
# BB#64:                                # %if.then139
                                        #   in Loop: Header=BB26_1 Depth=1
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 3
	l.addi	r4, r0, -4
	l.lwz	r16, 4340(r15)
	l.and	r3, r3, r4
	l.addi	r16, r16, 3
	l.addi	r4, r3, 4
	l.addi	r17, r0, -4
	l.and	r16, r16, r17
	l.addi	r17, r16, 4
	l.sfne	r4, r17
	l.bf	.LBB26_235
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.lwz	r3, 0(r3)
	l.lwz	r6, -64(r2)
	l.lwz	r16, 4352(r16)
	l.lwz	r19, 4288(r15)
	l.sfne	r6, r19
	l.bf	.LBB26_235
	l.sh	0(r3), r6
	l.sh	4352(r16), r19
	l.j	.LBB26_1
	l.nop	0                       # in delay slot
.LBB26_233:                             # %while.body501.us
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r7, 0
	l.movhi	r16, hi(vfnprintf.zeroes)
	l.ori	r17, r16, lo(vfnprintf.zeroes)
	l.ori	r16, r20, 0
	l.j	.LBB26_164
	l.nop	0                       # in delay slot
.LBB26_232:                             # %while.body471.us
	l.movhi	r3, hi(vfnprintf.zeroes)
	l.ori	r4, r3, lo(vfnprintf.zeroes)
	l.ori	r3, r6, 0
	l.movhi	r16, hi(vfnprintf.zeroes)
	l.ori	r17, r16, lo(vfnprintf.zeroes)
	l.ori	r16, r19, 0
	l.j	.LBB26_164
	l.nop	0                       # in delay slot
.LBB26_163:                             # %while.body415.us
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r12, 0
	l.movhi	r16, hi(vfnprintf.blanks)
	l.ori	r17, r16, lo(vfnprintf.blanks)
	l.ori	r16, r25, 0
	l.j	.LBB26_164
	l.nop	0                       # in delay slot
.LBB26_234:                             # %while.body538.us
	l.movhi	r3, hi(vfnprintf.blanks)
	l.ori	r4, r3, lo(vfnprintf.blanks)
	l.ori	r3, r8, 0
	l.movhi	r16, hi(vfnprintf.blanks)
	l.ori	r17, r16, lo(vfnprintf.blanks)
	l.ori	r16, r21, 0
.LBB26_164:                             # %error
	l.jal	memcpy
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -64(r2)
	l.lwz	r4, -68(r2)
	l.lwz	r16, 4288(r15)
	l.lwz	r17, 4284(r15)
.LBB26_9:                               # %error
	l.add	r3, r4, r3
	l.add	r16, r17, r16
	l.sfne	r3, r16
	l.bf	.LBB26_235
	l.sw	-64(r2), r3
	l.sw	4288(r15), r16
.LBB26_10:                              # %error
	l.lwz	r11, -64(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r24, 4288(r15)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB26_235
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB26_235:
	l.nop	205
.LBB26_236:
	l.nop	204
.Lfunc_end26:
	.size	vfnprintf, .Lfunc_end26-vfnprintf

	.text
	.hidden	sprintf
	.globl	sprintf
	.p2align	2
	.type	sprintf,@function
sprintf:                                # @sprintf
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB27_1
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB27_1
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.ori	r5, r4, 0
	l.addi	r15, r14, 0
	l.addi	r6, r2, 0
	l.addi	r14, r14, -12
	l.ori	r18, r17, 0
	l.addi	r19, r15, 0
	l.sfne	r6, r19
	l.bf	.LBB27_1
	l.sw	-12(r2), r6
	l.sw	4340(r15), r19
	l.addi	r4, r0, 1024
	l.addi	r17, r0, 1024
# BB#3:                                 # %entry
	l.jal	vfnprintf
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB27_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB27_1:
	l.nop	205
.LBB27_2:
	l.nop	204
.Lfunc_end27:
	.size	sprintf, .Lfunc_end27-sprintf

	.hidden	printf_to_sim
	.globl	printf_to_sim
	.p2align	2
	.type	printf_to_sim,@function
printf_to_sim:                          # @printf_to_sim
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB28_6
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB28_6
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.ori	r5, r3, 0
	l.addi	r15, r14, 0
	l.addi	r6, r2, 0
	l.addi	r14, r14, -24
	l.ori	r18, r16, 0
	l.addi	r19, r15, 0
	l.sfne	r6, r19
	l.bf	.LBB28_6
	l.sw	-12(r2), r6
	l.sw	4340(r15), r19
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r4, r0, 2048
	l.movhi	r16, hi(PRINTFBUFFER)
	l.ori	r16, r16, lo(PRINTFBUFFER)
	l.addi	r17, r0, 2048
# BB#8:                                 # %entry
	l.jal	vfnprintf
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.ori	r3, r11, 0
	l.addi	r11, r0, -1
	l.ori	r16, r24, 0
	l.addi	r24, r0, -1
	l.sfne	r3, r16
	l.bf	.LBB28_6
	l.sfeqi	r3, 0
	l.bf	.LBB28_5
	l.nop	0                       # in delay slot
.LBB28_1:                               # %while.cond.preheader
	l.sfne	r3, r16
	l.bf	.LBB28_6
	l.sw	-24(r2), r3
	l.sw	4328(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB28_6
	l.sfltsi	r3, 1
	l.bf	.LBB28_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.lwz	r4, -24(r2)
	l.movhi	r16, hi(PRINTFBUFFER)
	l.ori	r16, r16, lo(PRINTFBUFFER)
	l.lwz	r17, 4328(r15)
.LBB28_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r17
	l.bf	.LBB28_6
	l.sw	-20(r2), r4
	l.sw	4332(r15), r17
	l.sfne	r3, r16
	l.bf	.LBB28_6
	l.sw	-16(r2), r3
	l.sw	4336(r15), r16
	l.lwz	r3, -16(r2)
	l.lbz	r3, 0(r3)
	l.lwz	r16, 4336(r15)
	l.lbz	r16, 4352(r16)
# BB#9:                                 # %while.body
	l.jal	sim_putc
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -20(r2)
	l.lwz	r3, -16(r2)
	l.addi	r3, r3, 1
	l.lwz	r17, 4332(r15)
	l.addi	r4, r4, -1
	l.lwz	r16, 4336(r15)
	l.addi	r16, r16, 1
	l.addi	r17, r17, -1
	l.sfne	r4, r17
	l.bf	.LBB28_6
	l.sfnei	r4, 0
	l.bf	.LBB28_3
	l.nop	0                       # in delay slot
.LBB28_4:                               # %while.end
	l.lwz	r11, -24(r2)
	l.lwz	r24, 4328(r15)
.LBB28_5:                               # %cleanup
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB28_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB28_6:
	l.nop	205
.LBB28_7:
	l.nop	204
.Lfunc_end28:
	.size	printf_to_sim, .Lfunc_end28-printf_to_sim

	.hidden	puts_to_sim
	.globl	puts_to_sim
	.p2align	2
	.type	puts_to_sim,@function
puts_to_sim:                            # @puts_to_sim
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB29_1
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB29_1
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.addi	r15, r14, 0
	l.addi	r14, r14, -12
	l.sfne	r3, r16
	l.bf	.LBB29_1
	l.sw	0(r1), r3
	l.sw	4352(r14), r16
	l.movhi	r3, hi(.L.str.5)
	l.ori	r3, r3, lo(.L.str.5)
	l.movhi	r16, hi(.L.str.5)
	l.ori	r16, r16, lo(.L.str.5)
# BB#3:                                 # %entry
	l.jal	printf_to_sim
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB29_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB29_1:
	l.nop	205
.LBB29_2:
	l.nop	204
.Lfunc_end29:
	.size	puts_to_sim, .Lfunc_end29-puts_to_sim

	.hidden	printf_to_uart
	.globl	printf_to_uart
	.p2align	2
	.type	printf_to_uart,@function
printf_to_uart:                         # @printf_to_uart
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB30_6
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB30_6
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.ori	r5, r3, 0
	l.addi	r15, r14, 0
	l.addi	r6, r2, 0
	l.addi	r14, r14, -24
	l.ori	r18, r16, 0
	l.addi	r19, r15, 0
	l.sfne	r6, r19
	l.bf	.LBB30_6
	l.sw	-12(r2), r6
	l.sw	4340(r15), r19
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.addi	r4, r0, 2048
	l.movhi	r16, hi(PRINTFBUFFER)
	l.ori	r16, r16, lo(PRINTFBUFFER)
	l.addi	r17, r0, 2048
# BB#8:                                 # %entry
	l.jal	vfnprintf
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.ori	r3, r11, 0
	l.addi	r11, r0, -1
	l.ori	r16, r24, 0
	l.addi	r24, r0, -1
	l.sfne	r3, r16
	l.bf	.LBB30_6
	l.sfeqi	r3, 0
	l.bf	.LBB30_5
	l.nop	0                       # in delay slot
.LBB30_1:                               # %while.cond.preheader
	l.sfne	r3, r16
	l.bf	.LBB30_6
	l.sw	-24(r2), r3
	l.sw	4328(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB30_6
	l.sfltsi	r3, 1
	l.bf	.LBB30_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.movhi	r3, hi(PRINTFBUFFER)
	l.ori	r3, r3, lo(PRINTFBUFFER)
	l.lwz	r4, -24(r2)
	l.movhi	r16, hi(PRINTFBUFFER)
	l.ori	r16, r16, lo(PRINTFBUFFER)
	l.lwz	r17, 4328(r15)
.LBB30_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r17
	l.bf	.LBB30_6
	l.sw	-20(r2), r4
	l.sw	4332(r15), r17
	l.sfne	r3, r16
	l.bf	.LBB30_6
	l.sw	-16(r2), r3
	l.sw	4336(r15), r16
	l.lbs	r4, 0(r3)
	l.movhi	r3, 0
	l.lbs	r17, 4352(r16)
	l.movhi	r16, 0
# BB#9:                                 # %while.body
	l.jal	uart_putc
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -20(r2)
	l.lwz	r3, -16(r2)
	l.addi	r3, r3, 1
	l.lwz	r17, 4332(r15)
	l.addi	r4, r4, -1
	l.lwz	r16, 4336(r15)
	l.addi	r16, r16, 1
	l.addi	r17, r17, -1
	l.sfne	r4, r17
	l.bf	.LBB30_6
	l.sfnei	r4, 0
	l.bf	.LBB30_3
	l.nop	0                       # in delay slot
.LBB30_4:                               # %while.end
	l.lwz	r11, -24(r2)
	l.lwz	r24, 4328(r15)
.LBB30_5:                               # %cleanup
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB30_6
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB30_6:
	l.nop	205
.LBB30_7:
	l.nop	204
.Lfunc_end30:
	.size	printf_to_uart, .Lfunc_end30-printf_to_uart

	.hidden	putchar_to_uart
	.globl	putchar_to_uart
	.p2align	2
	.type	putchar_to_uart,@function
putchar_to_uart:                        # @putchar_to_uart
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB31_1
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB31_1
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -16
	l.addi	r15, r14, 0
	l.addi	r14, r14, -16
	l.sfne	r3, r16
	l.bf	.LBB31_1
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB31_1
	l.sw	0(r1), r3
	l.sw	4352(r14), r16
	l.movhi	r3, hi(.L.str.6)
	l.ori	r3, r3, lo(.L.str.6)
	l.movhi	r16, hi(.L.str.6)
	l.ori	r16, r16, lo(.L.str.6)
# BB#3:                                 # %entry
	l.jal	printf_to_uart
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r11, -12(r2)
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r24, 4340(r15)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB31_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB31_1:
	l.nop	205
.LBB31_2:
	l.nop	204
.Lfunc_end31:
	.size	putchar_to_uart, .Lfunc_end31-putchar_to_uart

	.hidden	puts_to_uart
	.globl	puts_to_uart
	.p2align	2
	.type	puts_to_uart,@function
puts_to_uart:                           # @puts_to_uart
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB32_1
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB32_1
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -12
	l.addi	r15, r14, 0
	l.addi	r14, r14, -12
	l.sfne	r3, r16
	l.bf	.LBB32_1
	l.sw	0(r1), r3
	l.sw	4352(r14), r16
	l.movhi	r3, hi(.L.str.5)
	l.ori	r3, r3, lo(.L.str.5)
	l.movhi	r16, hi(.L.str.5)
	l.ori	r16, r16, lo(.L.str.5)
# BB#3:                                 # %entry
	l.jal	printf_to_uart
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB32_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB32_1:
	l.nop	205
.LBB32_2:
	l.nop	204
.Lfunc_end32:
	.size	puts_to_uart, .Lfunc_end32-puts_to_uart

	.hidden	__muldi3
	.globl	__muldi3
	.p2align	2
	.type	__muldi3,@function
__muldi3:                               # @__muldi3
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB33_3
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -8
	l.addi	r15, r14, 0
	l.addi	r14, r14, -8
	l.sfne	r5, r18
	l.bf	.LBB33_3
	l.sw	-8(r2), r5
	l.sw	4344(r15), r18
	l.andi	r8, r4, 65535
	l.andi	r12, r6, 65535
	l.mul	r5, r12, r8
	l.andi	r21, r17, 65535
	l.srli	r13, r6, 16
	l.andi	r25, r19, 65535
	l.mul	r8, r13, r8
	l.mul	r18, r25, r21
	l.srli	r11, r4, 16
	l.srli	r26, r19, 16
	l.mul	r7, r12, r11
	l.mul	r21, r26, r21
	l.add	r8, r7, r8
	l.srli	r24, r17, 16
	l.srli	r12, r5, 16
	l.mul	r20, r25, r24
	l.add	r8, r8, r12
	l.add	r21, r20, r21
	l.mul	r13, r13, r11
	l.srli	r25, r18, 16
	l.movhi	r12, 1
	l.add	r21, r21, r25
	l.add	r12, r13, r12
	l.mul	r26, r26, r24
	l.movhi	r25, 1
	l.add	r25, r26, r25
	l.sfne	r8, r21
	l.bf	.LBB33_3
	l.sfne	r7, r20
	l.bf	.LBB33_3
	l.sfltu	r8, r7
	l.bf	.LBB33_2
	l.nop	0                       # in delay slot
# BB#1:                                 # %entry
	l.ori	r12, r13, 0
	l.ori	r25, r26, 0
.LBB33_2:                               # %entry
	l.mul	r3, r3, r6
	l.lwz	r6, -8(r2)
	l.mul	r4, r6, r4
	l.mul	r16, r16, r19
	l.add	r3, r4, r3
	l.lwz	r19, 4344(r15)
	l.srli	r4, r8, 16
	l.mul	r17, r19, r17
	l.add	r3, r3, r4
	l.add	r16, r17, r16
	l.add	r11, r3, r12
	l.srli	r17, r21, 16
	l.slli	r3, r8, 16
	l.add	r16, r16, r17
	l.andi	r4, r5, 65535
	l.add	r24, r16, r25
	l.or	r12, r3, r4
	l.slli	r16, r21, 16
	l.addi	r1, r2, 0
	l.andi	r17, r18, 65535
	l.lwz	r2, -4(r1)
	l.or	r25, r16, r17
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB33_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB33_3:
	l.nop	205
.LBB33_4:
	l.nop	204
.Lfunc_end33:
	.size	__muldi3, .Lfunc_end33-__muldi3

	.hidden	__udivdi3
	.globl	__udivdi3
	.p2align	2
	.type	__udivdi3,@function
__udivdi3:                              # @__udivdi3
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB34_73
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -20
	l.ori	r13, r4, 0
	l.addi	r15, r14, 0
	l.addi	r14, r14, -20
	l.ori	r26, r17, 0
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfnei	r5, 0
	l.bf	.LBB34_43
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then.i
	l.movhi	r5, 256
	l.addi	r4, r0, 16
	l.movhi	r18, 256
	l.addi	r17, r0, 16
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfltu	r6, r5
	l.bf	.LBB34_3
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then.i
	l.addi	r4, r0, 24
	l.addi	r17, r0, 24
.LBB34_3:                               # %if.then.i
	l.movhi	r5, 0
	l.movhi	r18, 0
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfltui	r6, 256
	l.bf	.LBB34_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %if.then.i
	l.addi	r5, r0, 8
	l.addi	r18, r0, 8
.LBB34_5:                               # %if.then.i
	l.movhi	r7, 1
	l.movhi	r20, 1
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfltu	r6, r7
	l.bf	.LBB34_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %if.then.i
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB34_7:                               # %if.then.i
	l.movhi	r4, hi(__clz_tab)
	l.ori	r4, r4, lo(__clz_tab)
	l.srl	r7, r6, r5
	l.movhi	r17, hi(__clz_tab)
	l.add	r4, r7, r4
	l.ori	r17, r17, lo(__clz_tab)
	l.lbz	r4, 0(r4)
	l.srl	r20, r19, r18
	l.add	r4, r4, r5
	l.add	r17, r20, r17
	l.addi	r5, r0, 32
	l.lbz	r17, 4352(r17)
	l.sub	r5, r5, r4
	l.add	r17, r17, r18
	l.addi	r18, r0, 32
	l.sub	r18, r18, r17
	l.sfne	r3, r16
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfgeu	r3, r6
	l.bf	.LBB34_21
	l.nop	0                       # in delay slot
# BB#8:                                 # %do.body.i
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfeqi	r5, 0
	l.bf	.LBB34_10
	l.nop	0                       # in delay slot
# BB#9:                                 # %if.then16.i
	l.srl	r4, r13, r4
	l.sll	r3, r3, r5
	l.or	r3, r3, r4
	l.srl	r17, r26, r17
	l.sll	r13, r13, r5
	l.sll	r16, r16, r18
	l.sll	r6, r6, r5
	l.or	r16, r16, r17
	l.sll	r26, r26, r18
	l.sll	r19, r19, r18
.LBB34_10:                              # %do.body21.i
	l.srli	r5, r6, 16
	l.divu	r12, r3, r5
	l.mul	r4, r12, r5
	l.srli	r18, r19, 16
	l.sub	r3, r3, r4
	l.divu	r25, r16, r18
	l.slli	r3, r3, 16
	l.mul	r17, r25, r18
	l.srli	r4, r13, 16
	l.sub	r16, r16, r17
	l.or	r8, r3, r4
	l.slli	r16, r16, 16
	l.andi	r7, r6, 65535
	l.srli	r17, r26, 16
	l.mul	r4, r12, r7
	l.or	r21, r16, r17
	l.andi	r20, r19, 65535
	l.mul	r17, r25, r20
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfgeu	r8, r4
	l.ori	r3, r12, 0
	l.ori	r16, r25, 0
	l.bf	.LBB34_14
	l.nop	0                       # in delay slot
# BB#11:                                # %if.then28.i
	l.addi	r3, r12, -1
	l.add	r8, r8, r6
	l.addi	r16, r25, -1
	l.add	r21, r21, r19
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfltu	r8, r6
	l.bf	.LBB34_14
	l.nop	0                       # in delay slot
# BB#12:                                # %if.then28.i
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfgeu	r8, r4
	l.bf	.LBB34_14
	l.nop	0                       # in delay slot
# BB#13:                                # %if.then35.i
	l.add	r8, r8, r6
	l.addi	r3, r12, -2
	l.add	r21, r21, r19
	l.addi	r16, r25, -2
.LBB34_14:                              # %if.end40.i
	l.sub	r4, r8, r4
	l.divu	r8, r4, r5
	l.mul	r5, r8, r5
	l.sub	r17, r21, r17
	l.sub	r4, r4, r5
	l.divu	r21, r17, r18
	l.slli	r4, r4, 16
	l.mul	r18, r21, r18
	l.andi	r5, r13, 65535
	l.sub	r17, r17, r18
	l.or	r4, r4, r5
	l.slli	r17, r17, 16
	l.mul	r12, r8, r7
	l.andi	r18, r26, 65535
	l.or	r17, r17, r18
	l.mul	r25, r21, r20
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfne	r12, r25
	l.bf	.LBB34_73
	l.sfgeu	r4, r12
	l.bf	.LBB34_20
	l.nop	0                       # in delay slot
# BB#15:                                # %if.then50.i
	l.add	r7, r4, r6
	l.addi	r4, r0, -1
	l.addi	r5, r0, -2
	l.add	r20, r17, r19
	l.addi	r17, r0, -1
	l.addi	r18, r0, -2
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfne	r12, r25
	l.bf	.LBB34_73
	l.sfltu	r7, r12
	l.bf	.LBB34_17
	l.nop	0                       # in delay slot
# BB#16:                                # %if.then50.i
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB34_17:                              # %if.then50.i
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfgeu	r7, r6
	l.bf	.LBB34_19
	l.nop	0                       # in delay slot
# BB#18:                                # %if.then50.i
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB34_19:                              # %if.then50.i
	l.add	r8, r8, r5
	l.add	r21, r21, r18
.LBB34_20:                              # %if.end63.i
	l.slli	r3, r3, 16
	l.or	r12, r8, r3
	l.movhi	r11, 0
	l.slli	r16, r16, 16
	l.or	r25, r21, r16
	l.movhi	r24, 0
	l.j	.LBB34_72
	l.nop	0                       # in delay slot
.LBB34_43:                              # %if.else240.i
	l.movhi	r11, 0
	l.movhi	r24, 0
	l.sfne	r3, r16
	l.bf	.LBB34_73
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfltu	r3, r5
	l.movhi	r12, 0
	l.movhi	r25, 0
	l.bf	.LBB34_72
	l.nop	0                       # in delay slot
# BB#44:                                # %do.body254.i
	l.movhi	r7, 256
	l.addi	r4, r0, 16
	l.movhi	r20, 256
	l.addi	r17, r0, 16
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfltu	r5, r7
	l.bf	.LBB34_46
	l.nop	0                       # in delay slot
# BB#45:                                # %do.body254.i
	l.addi	r4, r0, 24
	l.addi	r17, r0, 24
.LBB34_46:                              # %do.body254.i
	l.movhi	r7, 0
	l.movhi	r20, 0
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfltui	r5, 256
	l.bf	.LBB34_48
	l.nop	0                       # in delay slot
# BB#47:                                # %do.body254.i
	l.addi	r7, r0, 8
	l.addi	r20, r0, 8              # CFC
.LBB34_48:                              # %do.body254.i
	l.movhi	r8, 1
	l.movhi	r21, 1
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfltu	r5, r8
	l.bf	.LBB34_50
	l.nop	0                       # in delay slot
# BB#49:                                # %do.body254.i
	l.ori	r7, r4, 0
	l.ori	r20, r17, 0
.LBB34_50:                              # %do.body254.i
	l.srl	r4, r5, r7
	l.movhi	r8, hi(__clz_tab)
	l.ori	r8, r8, lo(__clz_tab)
	l.srl	r17, r18, r20
	l.add	r4, r4, r8
	l.movhi	r21, hi(__clz_tab)
	l.lbz	r4, 0(r4)
	l.ori	r21, r21, lo(__clz_tab)
	l.add	r7, r4, r7
	l.add	r17, r17, r21
	l.addi	r4, r0, 32
	l.lbz	r17, 4352(r17)
	l.sub	r4, r4, r7
	l.add	r20, r17, r20
	l.addi	r17, r0, 32
	l.sub	r17, r17, r20
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfnei	r4, 0
	l.bf	.LBB34_56
	l.nop	0                       # in delay slot
# BB#51:                                # %if.then278.i
	l.movhi	r11, 0
	l.addi	r4, r0, 1
	l.movhi	r24, 0
	l.addi	r17, r0, 1
	l.sfne	r3, r16
	l.bf	.LBB34_73
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfleu	r3, r5
	l.ori	r3, r4, 0
	l.ori	r16, r17, 0
	l.bf	.LBB34_53
	l.nop	0                       # in delay slot
# BB#52:                                # %if.then278.i
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB34_53:                              # %if.then278.i
	l.sfne	r13, r26
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfltu	r13, r6
	l.bf	.LBB34_55
	l.nop	0                       # in delay slot
# BB#54:                                # %if.then278.i
	l.movhi	r4, 0
	l.movhi	r17, 0
.LBB34_55:                              # %if.then278.i
	l.and	r3, r4, r3
	l.xori	r3, r3, -1
	l.andi	r12, r3, 1
	l.and	r16, r17, r16
	l.xori	r16, r16, -1
	l.andi	r25, r16, 1
	l.j	.LBB34_72
	l.nop	0                       # in delay slot
.LBB34_56:                              # %if.else303.i
	l.sll	r5, r5, r4
	l.srl	r8, r6, r7
	l.or	r8, r5, r8
	l.sll	r18, r18, r17
	l.srli	r11, r8, 16
	l.srl	r21, r19, r20
	l.srl	r12, r3, r7
	l.or	r21, r18, r21
	l.divu	r5, r12, r11
	l.srli	r24, r21, 16
	l.srl	r25, r16, r20
	l.divu	r18, r25, r24
	l.sfne	r11, r24
	l.bf	.LBB34_73
	l.sw	-16(r2), r11
	l.sw	4336(r15), r24
	l.mul	r11, r5, r11
	l.sub	r11, r12, r11
	l.mul	r24, r18, r24
	l.sub	r24, r25, r24
	l.sfne	r13, r26
	l.bf	.LBB34_73
	l.sw	-8(r2), r13
	l.sw	4344(r15), r26
	l.srl	r7, r13, r7
	l.ori	r13, r4, 0
	l.sll	r3, r3, r4
	l.srl	r20, r26, r20
	l.or	r12, r3, r7
	l.ori	r26, r17, 0
	l.slli	r3, r11, 16
	l.sll	r16, r16, r17
	l.srli	r7, r12, 16
	l.or	r25, r16, r20
	l.or	r3, r3, r7
	l.slli	r16, r24, 16
	l.ori	r4, r8, 0
	l.srli	r20, r25, 16
	l.andi	r11, r8, 65535
	l.or	r16, r16, r20
	l.mul	r7, r5, r11
	l.ori	r17, r21, 0
	l.andi	r24, r21, 65535
	l.mul	r20, r18, r24
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sw	-12(r2), r5
	l.sw	4340(r15), r18
	l.sfne	r3, r16
	l.bf	.LBB34_73
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfgeu	r3, r7
	l.bf	.LBB34_60
	l.nop	0                       # in delay slot
# BB#57:                                # %if.then332.i
	l.addi	r8, r5, -1
	l.addi	r21, r18, -1            # CFC
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sw	-12(r2), r8
	l.sw	4340(r15), r21
	l.ori	r8, r4, 0
	l.add	r3, r3, r8
	l.ori	r21, r17, 0
	l.add	r16, r16, r21
	l.sfne	r3, r16
	l.bf	.LBB34_73
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfltu	r3, r8
	l.bf	.LBB34_60
	l.nop	0                       # in delay slot
# BB#58:                                # %if.then332.i
	l.sfne	r3, r16
	l.bf	.LBB34_73
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfgeu	r3, r7
	l.bf	.LBB34_60
	l.nop	0                       # in delay slot
# BB#59:                                # %if.then340.i
	l.add	r3, r3, r4
	l.addi	r5, r5, -2
	l.add	r16, r16, r17
	l.addi	r18, r18, -2
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sw	-12(r2), r5
	l.sw	4340(r15), r18
.LBB34_60:                              # %if.end345.i
	l.sfne	r13, r26
	l.bf	.LBB34_73
	l.sw	-20(r2), r13
	l.sw	4332(r15), r26
	l.sll	r13, r6, r13
	l.sub	r3, r3, r7
	l.lwz	r5, -16(r2)
	l.sll	r26, r19, r26
	l.divu	r7, r3, r5
	l.sub	r16, r16, r20
	l.mul	r6, r7, r5
	l.lwz	r18, 4336(r15)
	l.sub	r3, r3, r6
	l.divu	r20, r16, r18
	l.slli	r3, r3, 16
	l.mul	r19, r20, r18
	l.andi	r6, r12, 65535
	l.sub	r16, r16, r19
	l.or	r6, r3, r6
	l.slli	r16, r16, 16
	l.mul	r8, r7, r11
	l.andi	r19, r25, 65535
	l.or	r19, r16, r19
	l.mul	r21, r20, r24
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfgeu	r6, r8
	l.ori	r3, r7, 0
	l.ori	r16, r20, 0
	l.bf	.LBB34_64
	l.nop	0                       # in delay slot
# BB#61:                                # %if.then355.i
	l.addi	r3, r7, -1
	l.ori	r5, r4, 0
	l.add	r6, r6, r5
	l.addi	r16, r20, -1
	l.ori	r18, r17, 0
	l.add	r19, r19, r18
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfltu	r6, r5
	l.bf	.LBB34_64
	l.nop	0                       # in delay slot
# BB#62:                                # %if.then355.i
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfgeu	r6, r8
	l.bf	.LBB34_64
	l.nop	0                       # in delay slot
# BB#63:                                # %if.then363.i
	l.add	r6, r6, r4
	l.addi	r3, r7, -2
	l.add	r19, r19, r17
	l.addi	r16, r20, -2
.LBB34_64:                              # %if.end368.i
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sw	-16(r2), r8
	l.sw	4336(r15), r21
	l.andi	r11, r13, 65535
	l.srli	r7, r13, 16
	l.andi	r5, r3, 65535
	l.andi	r24, r26, 65535
	l.mul	r12, r5, r7
	l.srli	r20, r26, 16
	l.mul	r5, r5, r11
	l.andi	r18, r16, 65535
	l.srli	r13, r5, 16
	l.mul	r25, r18, r20
	l.add	r8, r13, r12
	l.mul	r18, r18, r24
	l.lwz	r4, -12(r2)
	l.srli	r26, r18, 16
	l.slli	r12, r4, 16
	l.add	r21, r26, r25
	l.or	r12, r3, r12
	l.lwz	r17, 4340(r15)
	l.srli	r13, r12, 16
	l.slli	r25, r17, 16
	l.mul	r3, r13, r11
	l.or	r25, r16, r25
	l.add	r3, r8, r3
	l.srli	r26, r25, 16
	l.addi	r11, r0, 1
	l.mul	r16, r26, r24
	l.add	r16, r21, r16
	l.addi	r24, r0, 1
	l.sfne	r3, r16
	l.bf	.LBB34_73
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfltu	r3, r8
	l.bf	.LBB34_66
	l.nop	0                       # in delay slot
# BB#65:                                # %if.end368.i
	l.movhi	r11, 0
	l.movhi	r24, 0
.LBB34_66:                              # %if.end368.i
	l.mul	r13, r13, r7
	l.movhi	r7, 1
	l.add	r7, r13, r7
	l.mul	r26, r26, r20
	l.movhi	r20, 1
	l.add	r20, r26, r20
	l.sfne	r11, r24
	l.bf	.LBB34_73
	l.sfnei	r11, 0
	l.lwz	r4, -16(r2)
	l.lwz	r17, 4336(r15)
	l.bf	.LBB34_68
	l.nop	0                       # in delay slot
# BB#67:                                # %if.end368.i
	l.ori	r7, r13, 0
	l.ori	r20, r26, 0
.LBB34_68:                              # %if.end368.i
	l.sub	r6, r6, r4
	l.srli	r8, r3, 16
	l.add	r7, r7, r8
	l.sub	r19, r19, r17
	l.srli	r21, r16, 16
	l.add	r20, r20, r21
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfgtu	r7, r6
	l.lwz	r8, -8(r2)
	l.lwz	r21, 4344(r15)
	l.bf	.LBB34_71
	l.nop	0                       # in delay slot
# BB#69:                                # %lor.lhs.false401.i
	l.lwz	r4, -20(r2)
	l.sll	r4, r8, r4
	l.andi	r5, r5, 65535
	l.lwz	r17, 4332(r15)
	l.slli	r3, r3, 16
	l.sll	r17, r21, r17
	l.or	r3, r3, r5
	l.andi	r18, r18, 65535
	l.movhi	r11, 0
	l.slli	r16, r16, 16
	l.or	r16, r16, r18
	l.movhi	r24, 0
	l.sfne	r3, r16
	l.bf	.LBB34_73
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfleu	r3, r4
	l.bf	.LBB34_72
	l.nop	0                       # in delay slot
# BB#70:                                # %lor.lhs.false401.i
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfne	r7, r6
	l.bf	.LBB34_72
	l.nop	0                       # in delay slot
.LBB34_71:                              # %if.then406.i
	l.movhi	r11, 0
	l.addi	r12, r12, -1
	l.movhi	r24, 0
	l.addi	r25, r25, -1
	l.j	.LBB34_72
	l.nop	0                       # in delay slot
.LBB34_21:                              # %if.else.i
	l.sfne	r5, r18
	l.bf	.LBB34_73
	l.sfnei	r5, 0
	l.bf	.LBB34_23
	l.nop	0                       # in delay slot
# BB#22:                                # %if.then98.i
	l.sub	r4, r3, r6
	l.addi	r11, r0, 1
	l.sub	r17, r16, r19
	l.addi	r24, r0, 1
	l.j	.LBB34_32
	l.nop	0                       # in delay slot
.LBB34_23:                              # %if.else100.i
	l.sfne	r13, r26
	l.bf	.LBB34_73
	l.sw	-8(r2), r13
	l.sw	4344(r15), r26
	l.srl	r7, r13, r4
	l.sll	r8, r3, r5
	l.or	r7, r8, r7
	l.srl	r20, r26, r17
	l.srl	r3, r3, r4
	l.sll	r21, r16, r18
	l.sll	r6, r6, r5
	l.or	r20, r21, r20
	l.srli	r8, r6, 16
	l.srl	r16, r16, r17
	l.divu	r11, r3, r8
	l.sll	r19, r19, r18
	l.mul	r4, r11, r8
	l.srli	r21, r19, 16
	l.sub	r3, r3, r4
	l.divu	r24, r16, r21
	l.slli	r3, r3, 16
	l.mul	r17, r24, r21
	l.srli	r4, r7, 16
	l.sub	r16, r16, r17
	l.or	r13, r3, r4
	l.slli	r16, r16, 16
	l.andi	r12, r6, 65535
	l.srli	r17, r20, 16
	l.mul	r4, r11, r12
	l.or	r26, r16, r17
	l.andi	r25, r19, 65535
	l.mul	r17, r24, r25
	l.sfne	r13, r26
	l.bf	.LBB34_73
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfgeu	r13, r4
	l.ori	r3, r11, 0
	l.ori	r16, r24, 0
	l.bf	.LBB34_27
	l.nop	0                       # in delay slot
# BB#24:                                # %if.then126.i
	l.addi	r3, r11, -1
	l.add	r13, r13, r6
	l.addi	r16, r24, -1
	l.add	r26, r26, r19
	l.sfne	r13, r26
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfltu	r13, r6
	l.bf	.LBB34_27
	l.nop	0                       # in delay slot
# BB#25:                                # %if.then126.i
	l.sfne	r13, r26
	l.bf	.LBB34_73
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfgeu	r13, r4
	l.bf	.LBB34_27
	l.nop	0                       # in delay slot
# BB#26:                                # %if.then134.i
	l.add	r13, r13, r6
	l.addi	r3, r11, -2
	l.add	r26, r26, r19
	l.addi	r16, r24, -2
.LBB34_27:                              # %if.end139.i
	l.sub	r13, r13, r4
	l.divu	r4, r13, r8
	l.mul	r8, r4, r8
	l.sub	r26, r26, r17
	l.sub	r8, r13, r8
	l.divu	r17, r26, r21
	l.slli	r8, r8, 16
	l.mul	r21, r17, r21
	l.andi	r7, r7, 65535
	l.sub	r21, r26, r21
	l.or	r7, r8, r7
	l.slli	r21, r21, 16
	l.mul	r8, r4, r12
	l.andi	r20, r20, 65535
	l.or	r20, r21, r20
	l.mul	r21, r17, r25
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfgeu	r7, r8
	l.ori	r12, r4, 0
	l.ori	r25, r17, 0
	l.bf	.LBB34_31
	l.nop	0                       # in delay slot
# BB#28:                                # %if.then149.i
	l.addi	r12, r4, -1
	l.add	r7, r7, r6
	l.addi	r25, r17, -1
	l.add	r20, r20, r19
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfltu	r7, r6
	l.bf	.LBB34_31
	l.nop	0                       # in delay slot
# BB#29:                                # %if.then149.i
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfgeu	r7, r8
	l.bf	.LBB34_31
	l.nop	0                       # in delay slot
# BB#30:                                # %if.then157.i
	l.add	r7, r7, r6
	l.addi	r12, r4, -2
	l.add	r20, r20, r19
	l.addi	r25, r17, -2
.LBB34_31:                              # %if.end162.i
	l.lwz	r13, -8(r2)
	l.sll	r13, r13, r5
	l.sub	r4, r7, r8
	l.lwz	r26, 4344(r15)
	l.slli	r3, r3, 16
	l.sll	r26, r26, r18
	l.or	r11, r12, r3
	l.sub	r17, r20, r21
	l.slli	r16, r16, 16
	l.or	r24, r25, r16
.LBB34_32:                              # %do.body169.i
	l.srli	r5, r6, 16
	l.divu	r12, r4, r5
	l.mul	r3, r12, r5
	l.srli	r18, r19, 16
	l.sub	r3, r4, r3
	l.divu	r25, r17, r18
	l.slli	r3, r3, 16
	l.mul	r16, r25, r18
	l.srli	r4, r13, 16
	l.sub	r16, r17, r16
	l.or	r8, r3, r4
	l.slli	r16, r16, 16
	l.andi	r7, r6, 65535
	l.srli	r17, r26, 16
	l.mul	r4, r12, r7
	l.or	r21, r16, r17
	l.andi	r20, r19, 65535
	l.mul	r17, r25, r20
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfgeu	r8, r4
	l.ori	r3, r12, 0
	l.ori	r16, r25, 0
	l.bf	.LBB34_36
	l.nop	0                       # in delay slot
# BB#33:                                # %if.then187.i
	l.addi	r3, r12, -1
	l.add	r8, r8, r6
	l.addi	r16, r25, -1
	l.add	r21, r21, r19
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfltu	r8, r6
	l.bf	.LBB34_36
	l.nop	0                       # in delay slot
# BB#34:                                # %if.then187.i
	l.sfne	r8, r21
	l.bf	.LBB34_73
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfgeu	r8, r4
	l.bf	.LBB34_36
	l.nop	0                       # in delay slot
# BB#35:                                # %if.then195.i
	l.add	r8, r8, r6
	l.addi	r3, r12, -2
	l.add	r21, r21, r19
	l.addi	r16, r25, -2
.LBB34_36:                              # %if.end200.i
	l.sub	r4, r8, r4
	l.divu	r8, r4, r5
	l.mul	r5, r8, r5
	l.sub	r17, r21, r17
	l.sub	r4, r4, r5
	l.divu	r21, r17, r18
	l.slli	r4, r4, 16
	l.mul	r18, r21, r18
	l.andi	r5, r13, 65535
	l.sub	r17, r17, r18
	l.or	r4, r4, r5
	l.slli	r17, r17, 16
	l.mul	r12, r8, r7
	l.andi	r18, r26, 65535
	l.or	r17, r17, r18
	l.mul	r25, r21, r20
	l.sfne	r4, r17
	l.bf	.LBB34_73
	l.sfne	r12, r25
	l.bf	.LBB34_73
	l.sfgeu	r4, r12
	l.bf	.LBB34_42
	l.nop	0                       # in delay slot
# BB#37:                                # %if.then210.i
	l.add	r7, r4, r6
	l.addi	r4, r0, -1
	l.addi	r5, r0, -2
	l.add	r20, r17, r19
	l.addi	r17, r0, -1
	l.addi	r18, r0, -2
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfne	r12, r25
	l.bf	.LBB34_73
	l.sfltu	r7, r12
	l.bf	.LBB34_39
	l.nop	0                       # in delay slot
# BB#38:                                # %if.then210.i
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB34_39:                              # %if.then210.i
	l.sfne	r7, r20
	l.bf	.LBB34_73
	l.sfne	r6, r19
	l.bf	.LBB34_73
	l.sfgeu	r7, r6
	l.bf	.LBB34_41
	l.nop	0                       # in delay slot
# BB#40:                                # %if.then210.i
	l.ori	r5, r4, 0
	l.ori	r18, r17, 0
.LBB34_41:                              # %if.then210.i
	l.add	r8, r8, r5
	l.add	r21, r21, r18
.LBB34_42:                              # %if.end223.i
	l.slli	r3, r3, 16
	l.or	r12, r8, r3
	l.slli	r16, r16, 16
	l.or	r25, r21, r16
.LBB34_72:                              # %__udivmoddi4.exit
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB34_73
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB34_73:
	l.nop	205
.LBB34_74:
	l.nop	204
.Lfunc_end34:
	.size	__udivdi3, .Lfunc_end34-__udivdi3

	.hidden	memset
	.globl	memset
	.p2align	2
	.type	memset,@function
memset:                                 # @memset
    l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0
	l.addi	r21, r8, 0
	l.addi	r22, r9, 0
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB35_16
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
	l.sfne	r5, r18
	l.bf	.LBB35_16
	l.sfltui	r5, 8
	l.ori	r6, r3, 0
	l.ori	r19, r16, 0
	l.bf	.LBB35_13
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.then
	l.andi	r6, r4, 255
	l.slli	r7, r6, 8
	l.or	r7, r7, r6
	l.andi	r19, r17, 255
	l.slli	r8, r7, 16
	l.slli	r20, r19, 8
	l.andi	r6, r3, 3
	l.or	r20, r20, r19
	l.slli	r21, r20, 16
	l.andi	r19, r16, 3
	l.sfne	r6, r19
	l.bf	.LBB35_16
	l.sfeqi	r6, 0
	l.ori	r6, r3, 0
	l.ori	r19, r16, 0
	l.bf	.LBB35_4
	l.nop	0                       # in delay slot
# BB#2:                                 # %while.body.preheader
	l.ori	r6, r3, 0
	l.ori	r19, r16, 0
.LBB35_3:                               # %while.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r17
	l.bf	.LBB35_16
	l.sb	0(r6), r4
	l.sb	4352(r19), r17
	l.addi	r5, r5, -1
	l.addi	r6, r6, 1
	l.andi	r12, r6, 3
	l.addi	r18, r18, -1
	l.addi	r19, r19, 1
	l.andi	r25, r19, 3
	l.sfne	r12, r25
	l.bf	.LBB35_16
	l.sfnei	r12, 0
	l.bf	.LBB35_3
	l.nop	0                       # in delay slot
.LBB35_4:                               # %while.end
	l.or	r7, r8, r7
	l.srli	r8, r5, 5
	l.or	r20, r21, r20
	l.srli	r21, r18, 5
	l.sfne	r8, r21
	l.bf	.LBB35_16
	l.sfeqi	r8, 0
	l.bf	.LBB35_8
	l.nop	0                       # in delay slot
# BB#5:                                 # %while.body10.preheader
	l.movhi	r12, 0
	l.sub	r12, r12, r8
	l.slli	r8, r8, 5
	l.movhi	r25, 0
	l.ori	r13, r6, 0
	l.sub	r25, r25, r21
	l.slli	r21, r21, 5
	l.ori	r26, r19, 0
.LBB35_6:                               # %while.body10
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r7, r20
	l.bf	.LBB35_16
	l.sw	0(r13), r7
	l.sw	4352(r26), r20
	l.sfne	r7, r20
	l.bf	.LBB35_16
	l.sw	4(r13), r7
	l.sw	4356(r26), r20
	l.sfne	r7, r20
	l.bf	.LBB35_16
	l.sw	8(r13), r7
	l.sw	4360(r26), r20
	l.sfne	r7, r20
	l.bf	.LBB35_16
	l.sw	12(r13), r7
	l.sw	4364(r26), r20
	l.sfne	r7, r20
	l.bf	.LBB35_16
	l.sw	16(r13), r7
	l.sw	4368(r26), r20
	l.sfne	r7, r20
	l.bf	.LBB35_16
	l.sw	20(r13), r7
	l.sw	4372(r26), r20
	l.sfne	r7, r20
	l.bf	.LBB35_16
	l.sw	24(r13), r7
	l.sw	4376(r26), r20
	l.sfne	r7, r20
	l.bf	.LBB35_16
	l.sw	28(r13), r7
	l.sw	4380(r26), r20
	l.addi	r13, r13, 32
	l.addi	r12, r12, 1
	l.addi	r26, r26, 32
	l.addi	r25, r25, 1
	l.sfne	r12, r25
	l.bf	.LBB35_16
	l.sfnei	r12, 0
	l.bf	.LBB35_6
	l.nop	0                       # in delay slot
# BB#7:                                 # %while.end21.loopexit
	l.add	r6, r6, r8
	l.add	r19, r19, r21
.LBB35_8:                               # %while.end21
	l.srli	r8, r5, 2
	l.andi	r8, r8, 7
	l.srli	r21, r18, 2
	l.andi	r21, r21, 7
	l.sfne	r8, r21
	l.bf	.LBB35_16
	l.sfeqi	r8, 0
	l.bf	.LBB35_12
	l.nop	0                       # in delay slot
# BB#9:                                 # %while.body27.preheader
	l.movhi	r12, 0
	l.sub	r12, r12, r8
	l.slli	r8, r8, 2
	l.movhi	r25, 0
	l.ori	r13, r6, 0
	l.sub	r25, r25, r21
	l.slli	r21, r21, 2
	l.ori	r26, r19, 0
.LBB35_10:                              # %while.body27
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r7, r20
	l.bf	.LBB35_16
	l.sw	0(r13), r7
	l.sw	4352(r26), r20
	l.addi	r13, r13, 4
	l.addi	r12, r12, 1
	l.addi	r26, r26, 4
	l.addi	r25, r25, 1
	l.sfne	r12, r25
	l.bf	.LBB35_16
	l.sfnei	r12, 0
	l.bf	.LBB35_10
	l.nop	0                       # in delay slot
# BB#11:                                # %while.end31.loopexit
	l.add	r6, r6, r8
	l.add	r19, r19, r21
.LBB35_12:                              # %while.end31
	l.andi	r5, r5, 3
	l.andi	r18, r18, 3
.LBB35_13:                              # %while.cond33.preheader
	l.sfne	r5, r18
	l.bf	.LBB35_16
	l.sfeqi	r5, 0
	l.bf	.LBB35_15
	l.nop	0                       # in delay slot
.LBB35_14:                              # %while.body36
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r4, r17
	l.bf	.LBB35_16
	l.sb	0(r6), r4
	l.sb	4352(r19), r17
	l.addi	r6, r6, 1
	l.addi	r5, r5, -1
	l.addi	r19, r19, 1
	l.addi	r18, r18, -1
	l.sfne	r5, r18
	l.bf	.LBB35_16
	l.sfnei	r5, 0
	l.bf	.LBB35_14
	l.nop	0                       # in delay slot
.LBB35_15:                              # %while.end41
	l.ori	r11, r3, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.ori	r24, r16, 0
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB35_16
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB35_16:
	l.nop	205
.LBB35_17:
	l.nop	204
.Lfunc_end35:
	.size	memset, .Lfunc_end35-memset

	.hidden	my_strcmp
	.globl	my_strcmp
	.p2align	2
	.type	my_strcmp,@function
my_strcmp:                              # @my_strcmp
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB36_4
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
.LBB36_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.movhi	r7, 0
	l.lbz	r5, 0(r4)
	l.lbz	r6, 0(r3)
	l.movhi	r20, 0
	l.lbz	r18, 4352(r17)
	l.lbz	r19, 4352(r16)
	l.sfne	r6, r19
	l.bf	.LBB36_4
	l.sfeqi	r6, 0
	l.bf	.LBB36_3
	l.nop	0                       # in delay slot
# BB#2:                                 # %do.cond
                                        #   in Loop: Header=BB36_1 Depth=1
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.addi	r16, r16, 1
	l.addi	r17, r17, 1
	l.sfne	r6, r19
	l.bf	.LBB36_4
	l.sfne	r5, r18
	l.bf	.LBB36_4
	l.sfeq	r6, r5
	l.ori	r7, r6, 0
	l.ori	r20, r19, 0
	l.bf	.LBB36_1
	l.nop	0                       # in delay slot
.LBB36_3:                               # %cleanup
	l.sub	r11, r7, r5
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.sub	r24, r20, r18
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB36_4
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB36_4:
	l.nop	205
.LBB36_5:
	l.nop	204
.Lfunc_end36:
	.size	my_strcmp, .Lfunc_end36-my_strcmp

	.hidden	compare
	.globl	compare
	.p2align	2
	.type	compare,@function
compare:                                # @compare
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB37_8
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.addi	r15, r14, 0
	l.addi	r14, r14, -4
.LBB37_1:                               # %do.body.i
                                        # =>This Inner Loop Header: Depth=1
	l.lbz	r5, 0(r4)
	l.lbz	r6, 0(r3)
	l.lbz	r18, 4352(r17)
	l.lbz	r19, 4352(r16)
	l.sfne	r6, r19
	l.bf	.LBB37_8
	l.sfeqi	r6, 0
	l.movhi	r7, 0
	l.movhi	r20, 0
	l.bf	.LBB37_3
	l.nop	0                       # in delay slot
# BB#2:                                 # %do.cond.i
                                        #   in Loop: Header=BB37_1 Depth=1
	l.addi	r3, r3, 1
	l.addi	r4, r4, 1
	l.addi	r16, r16, 1
	l.addi	r17, r17, 1
	l.sfne	r6, r19
	l.bf	.LBB37_8
	l.sfne	r5, r18
	l.bf	.LBB37_8
	l.sfeq	r6, r5
	l.ori	r7, r6, 0
	l.ori	r20, r19, 0
	l.bf	.LBB37_1
	l.nop	0                       # in delay slot
.LBB37_3:                               # %my_strcmp.exit
	l.sub	r4, r7, r5
	l.addi	r3, r0, -1
	l.sub	r17, r20, r18
	l.addi	r16, r0, -1
	l.sfne	r4, r17
	l.bf	.LBB37_8
	l.sfnei	r4, 0
	l.bf	.LBB37_5
	l.nop	0                       # in delay slot
# BB#4:                                 # %my_strcmp.exit
	l.movhi	r3, 0
	l.movhi	r16, 0
.LBB37_5:                               # %my_strcmp.exit
	l.addi	r11, r0, 1
	l.addi	r24, r0, 1
	l.sfne	r4, r17
	l.bf	.LBB37_8
	l.sfltsi	r4, 0
	l.bf	.LBB37_7
	l.nop	0                       # in delay slot
# BB#6:                                 # %my_strcmp.exit
	l.ori	r11, r3, 0
	l.ori	r24, r16, 0
.LBB37_7:                               # %my_strcmp.exit
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB37_8
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB37_8:
	l.nop	205
.LBB37_9:
	l.nop	204
.Lfunc_end37:
	.size	compare, .Lfunc_end37-compare

	.hidden	_quicksort
	.globl	_quicksort
	.p2align	2
	.type	_quicksort,@function
_quicksort:                             # @_quicksort
# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB38_63
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB38_63
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -320
	l.ori	r11, r7, 0
	l.addi	r15, r14, 0
	l.addi	r14, r14, -320
	l.ori	r24, r20, 0
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.sw	-280(r2), r6
	l.sw	4072(r15), r19
	l.ori	r8, r5, 0
	l.ori	r21, r18, 0
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfeqi	r4, 0
	l.bf	.LBB38_62
	l.nop	0                       # in delay slot
# BB#1:                                 # %if.end
	l.slli	r7, r8, 2
	l.addi	r5, r4, -1
	l.mul	r5, r5, r8
	l.slli	r20, r21, 2
	l.add	r5, r3, r5
	l.addi	r18, r17, -1
	l.mul	r18, r18, r21
	l.add	r18, r16, r18
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sw	-284(r2), r11
	l.sw	4068(r15), r24
	l.sfne	r8, r21
	l.bf	.LBB38_63
	l.sw	-292(r2), r8
	l.sw	4060(r15), r21
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sw	-316(r2), r5
	l.sw	4036(r15), r18
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-320(r2), r3
	l.sw	4032(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfltui	r4, 5
	l.bf	.LBB38_39
	l.nop	0                       # in delay slot
# BB#2:                                 # %if.then3
	l.movhi	r4, 0
	l.movhi	r17, 0
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-264(r2), r4
	l.sw	4088(r15), r17
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-260(r2), r4
	l.sw	4092(r15), r17
	l.sub	r4, r4, r8
	l.sub	r17, r17, r21
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-288(r2), r4
	l.sw	4064(r15), r17
	l.addi	r4, r2, -264
	l.addi	r4, r4, 8
	l.addi	r17, r15, -264
	l.addi	r17, r17, 8
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-296(r2), r3
	l.sw	4056(r15), r16
	l.ori	r13, r5, 0
	l.lwz	r6, -280(r2)
	l.ori	r26, r18, 0
	l.lwz	r19, 4072(r15)
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sw	-308(r2), r7
	l.sw	4044(r15), r20
.LBB38_3:                               # %while.cond.outer.while.cond.outer.split_crit_edge
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_4 Depth 2
                                        #       Child Loop BB38_5 Depth 3
                                        #         Child Loop BB38_7 Depth 4
                                        #         Child Loop BB38_10 Depth 4
                                        #         Child Loop BB38_13 Depth 4
                                        #         Child Loop BB38_15 Depth 4
                                        #           Child Loop BB38_16 Depth 5
                                        #           Child Loop BB38_18 Depth 5
                                        #           Child Loop BB38_21 Depth 5
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-312(r2), r4
	l.sw	4040(r15), r17
.LBB38_4:                               # %while.cond.outer391
                                        #   Parent Loop BB38_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_5 Depth 3
                                        #         Child Loop BB38_7 Depth 4
                                        #         Child Loop BB38_10 Depth 4
                                        #         Child Loop BB38_13 Depth 4
                                        #         Child Loop BB38_15 Depth 4
                                        #           Child Loop BB38_16 Depth 5
                                        #           Child Loop BB38_18 Depth 5
                                        #           Child Loop BB38_21 Depth 5
	l.ori	r4, r13, 0
	l.lwz	r3, -288(r2)
	l.ori	r17, r26, 0
	l.lwz	r16, 4064(r15)
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-300(r2), r4
	l.sw	4052(r15), r17
	l.add	r3, r4, r3
	l.add	r16, r17, r16
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-304(r2), r3
	l.sw	4048(r15), r16
	l.lwz	r3, -296(r2)
	l.lwz	r16, 4056(r15)
.LBB38_5:                               # %while.cond
                                        #   Parent Loop BB38_3 Depth=1
                                        #     Parent Loop BB38_4 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB38_7 Depth 4
                                        #         Child Loop BB38_10 Depth 4
                                        #         Child Loop BB38_13 Depth 4
                                        #         Child Loop BB38_15 Depth 4
                                        #           Child Loop BB38_16 Depth 5
                                        #           Child Loop BB38_18 Depth 5
                                        #           Child Loop BB38_21 Depth 5
	l.ori	r4, r3, 0
	l.lwz	r3, -300(r2)
	l.sub	r3, r3, r4
	l.ori	r17, r16, 0
	l.divu	r3, r3, r8
	l.lwz	r16, 4052(r15)
	l.srli	r3, r3, 1
	l.sub	r16, r16, r17
	l.mul	r3, r3, r8
	l.divu	r16, r16, r21
	l.add	r3, r4, r3
	l.srli	r16, r16, 1
	l.mul	r16, r16, r21
	l.add	r16, r17, r16
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-272(r2), r3
	l.sw	4080(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-296(r2), r4
	l.sw	4056(r15), r17
	l.ori	r5, r11, 0
	l.ori	r18, r24, 0
# BB#65:                                # %while.cond
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.nop	0
	l.jalr	r6
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -272(r2)
	l.lwz	r17, 4080(r15)
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sfgtsi	r11, -1
	l.bf	.LBB38_8
	l.nop	0                       # in delay slot
.LBB38_6:                               # %do.body12.preheader
                                        #   in Loop: Header=BB38_5 Depth=3
	l.ori	r3, r4, 0
	l.lwz	r8, -296(r2)
	l.lwz	r5, -292(r2)
	l.ori	r16, r17, 0
	l.lwz	r21, 4056(r15)
	l.lwz	r18, 4060(r15)
.LBB38_7:                               # %do.body12
                                        #   Parent Loop BB38_3 Depth=1
                                        #     Parent Loop BB38_4 Depth=2
                                        #       Parent Loop BB38_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.lbz	r6, 0(r3)
	l.lbz	r7, 0(r8)
	l.lbz	r19, 4352(r16)
	l.lbz	r20, 4352(r21)
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sb	0(r3), r7
	l.sb	4352(r16), r20
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.sb	0(r8), r6
	l.sb	4352(r21), r19
	l.addi	r8, r8, 1
	l.addi	r3, r3, 1
	l.addi	r5, r5, -1
	l.addi	r21, r21, 1             # CFC
	l.addi	r16, r16, 1
	l.addi	r18, r18, -1
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sfnei	r5, 0
	l.bf	.LBB38_7
	l.nop	0                       # in delay slot
.LBB38_8:                               # %if.end18
                                        #   in Loop: Header=BB38_5 Depth=3
	l.lwz	r3, -300(r2)
	l.lwz	r5, -284(r2)
	l.lwz	r6, -280(r2)
	l.lwz	r16, 4052(r15)
	l.lwz	r18, 4068(r15)
	l.lwz	r19, 4072(r15)
# BB#66:                                # %if.end18
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.nop	0
	l.jalr	r6
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -272(r2)
	l.lwz	r17, 4080(r15)
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sfgtsi	r11, -1
	l.lwz	r8, -292(r2)
	l.lwz	r21, 4060(r15)
	l.bf	.LBB38_14
	l.nop	0                       # in delay slot
.LBB38_9:                               # %do.body26.preheader
                                        #   in Loop: Header=BB38_5 Depth=3
	l.ori	r3, r8, 0
	l.ori	r8, r4, 0
	l.lwz	r5, -300(r2)
	l.ori	r16, r21, 0
	l.ori	r21, r17, 0
	l.lwz	r18, 4052(r15)
.LBB38_10:                              # %do.body26
                                        #   Parent Loop BB38_3 Depth=1
                                        #     Parent Loop BB38_4 Depth=2
                                        #       Parent Loop BB38_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.lbz	r6, 0(r8)
	l.lbz	r7, 0(r5)
	l.lbz	r19, 4352(r21)
	l.lbz	r20, 4352(r18)
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sb	0(r8), r7
	l.sb	4352(r21), r20
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.sb	0(r5), r6
	l.sb	4352(r18), r19
	l.addi	r5, r5, 1
	l.addi	r8, r8, 1
	l.addi	r3, r3, -1
	l.addi	r18, r18, 1
	l.addi	r21, r21, 1             # CFC
	l.addi	r16, r16, -1
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfnei	r3, 0
	l.bf	.LBB38_10
	l.nop	0                       # in delay slot
# BB#11:                                # %do.end33
                                        #   in Loop: Header=BB38_5 Depth=3
	l.ori	r3, r4, 0
	l.lwz	r4, -296(r2)
	l.lwz	r5, -284(r2)
	l.ori	r16, r17, 0
	l.lwz	r6, -280(r2)
	l.lwz	r17, 4056(r15)
	l.lwz	r18, 4068(r15)
	l.lwz	r19, 4072(r15)
# BB#67:                                # %do.end33
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.nop	0
	l.jalr	r6
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r4, -272(r2)
	l.lwz	r17, 4080(r15)
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sfgtsi	r11, -1
	l.lwz	r8, -292(r2)
	l.lwz	r21, 4060(r15)
	l.bf	.LBB38_14
	l.nop	0                       # in delay slot
.LBB38_12:                              # %do.body44.preheader
                                        #   in Loop: Header=BB38_5 Depth=3
	l.ori	r3, r8, 0
	l.ori	r12, r4, 0
	l.lwz	r5, -296(r2)
	l.ori	r16, r21, 0
	l.ori	r25, r17, 0
	l.lwz	r18, 4056(r15)
.LBB38_13:                              # %do.body44
                                        #   Parent Loop BB38_3 Depth=1
                                        #     Parent Loop BB38_4 Depth=2
                                        #       Parent Loop BB38_5 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	l.lbz	r6, 0(r12)
	l.lbz	r7, 0(r5)
	l.lbz	r19, 4352(r25)
	l.lbz	r20, 4352(r18)
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sb	0(r12), r7
	l.sb	4352(r25), r20
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.sb	0(r5), r6
	l.sb	4352(r18), r19
	l.addi	r5, r5, 1
	l.addi	r12, r12, 1
	l.addi	r3, r3, -1
	l.addi	r18, r18, 1
	l.addi	r25, r25, 1
	l.addi	r16, r16, -1
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfnei	r3, 0
	l.bf	.LBB38_13
	l.nop	0                       # in delay slot
.LBB38_14:                              # %jump_over
                                        #   in Loop: Header=BB38_5 Depth=3
	l.lwz	r3, -296(r2)
	l.add	r7, r3, r8
	l.lwz	r13, -304(r2)
	l.lwz	r16, 4056(r15)
	l.lwz	r11, -284(r2)
	l.add	r20, r16, r21
	l.lwz	r6, -280(r2)
	l.lwz	r26, 4048(r15)
	l.lwz	r24, 4068(r15)
	l.lwz	r19, 4072(r15)
.LBB38_15:                              # %do.body57
                                        #   Parent Loop BB38_3 Depth=1
                                        #     Parent Loop BB38_4 Depth=2
                                        #       Parent Loop BB38_5 Depth=3
                                        # =>      This Loop Header: Depth=4
                                        #           Child Loop BB38_16 Depth 5
                                        #           Child Loop BB38_18 Depth 5
                                        #           Child Loop BB38_21 Depth 5
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sw	-268(r2), r7
	l.sw	4084(r15), r20
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-272(r2), r4
	l.sw	4080(r15), r17
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sw	-276(r2), r13
	l.sw	4076(r15), r26
	l.ori	r3, r7, 0
	l.ori	r5, r11, 0
	l.ori	r16, r20, 0
	l.ori	r18, r24, 0
# BB#68:                                # %do.body57
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.nop	0
	l.jalr	r6
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sfgtsi	r11, -1
	l.bf	.LBB38_17
	l.nop	0                       # in delay slot
.LBB38_16:                              # %while.body61
                                        #   Parent Loop BB38_3 Depth=1
                                        #     Parent Loop BB38_4 Depth=2
                                        #       Parent Loop BB38_5 Depth=3
                                        #         Parent Loop BB38_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	l.lwz	r3, -292(r2)
	l.lwz	r4, -268(r2)
	l.add	r4, r4, r3
	l.lwz	r16, 4060(r15)
	l.lwz	r17, 4084(r15)
	l.add	r17, r17, r16
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-268(r2), r4
	l.sw	4084(r15), r17
	l.ori	r3, r4, 0
	l.lwz	r4, -272(r2)
	l.lwz	r5, -284(r2)
	l.ori	r16, r17, 0
	l.lwz	r6, -280(r2)
	l.lwz	r17, 4080(r15)
	l.lwz	r18, 4068(r15)
	l.lwz	r19, 4072(r15)
# BB#69:                                # %while.body61
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.nop	0
	l.jalr	r6
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sfltsi	r11, 0
	l.bf	.LBB38_16
	l.nop	0                       # in delay slot
.LBB38_17:                              # %while.cond63.preheader
                                        #   in Loop: Header=BB38_15 Depth=4
	l.lwz	r3, -268(r2)
	l.lwz	r16, 4084(r15)
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-268(r2), r3
	l.sw	4084(r15), r16
	l.lwz	r3, -272(r2)
	l.lwz	r4, -276(r2)
	l.lwz	r5, -284(r2)
	l.lwz	r16, 4080(r15)
	l.lwz	r6, -280(r2)
	l.lwz	r17, 4076(r15)
	l.lwz	r18, 4068(r15)
	l.lwz	r19, 4072(r15)
# BB#70:                                # %while.cond63.preheader
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.nop	0
	l.jalr	r6
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sfgtsi	r11, -1
	l.lwz	r3, -288(r2)
	l.lwz	r16, 4064(r15)
	l.bf	.LBB38_19
	l.nop	0                       # in delay slot
.LBB38_18:                              # %while.body66
                                        #   Parent Loop BB38_3 Depth=1
                                        #     Parent Loop BB38_4 Depth=2
                                        #       Parent Loop BB38_5 Depth=3
                                        #         Parent Loop BB38_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	l.lwz	r4, -276(r2)
	l.add	r4, r4, r3
	l.lwz	r3, -272(r2)
	l.lwz	r17, 4076(r15)
	l.add	r17, r17, r16
	l.lwz	r16, 4080(r15)
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-276(r2), r4
	l.sw	4076(r15), r17
	l.lwz	r5, -284(r2)
	l.lwz	r6, -280(r2)
	l.lwz	r18, 4068(r15)
	l.lwz	r19, 4072(r15)
# BB#71:                                # %while.body66
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.nop	0
	l.jalr	r6
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -288(r2)
	l.lwz	r16, 4064(r15)
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sfltsi	r11, 0
	l.bf	.LBB38_18
	l.nop	0                       # in delay slot
.LBB38_19:                              # %while.end69
                                        #   in Loop: Header=BB38_15 Depth=4
	l.lwz	r4, -272(r2)
	l.lwz	r7, -268(r2)
	l.lwz	r3, -276(r2)
	l.lwz	r17, 4080(r15)
	l.lwz	r20, 4084(r15)
	l.lwz	r16, 4076(r15)
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfgeu	r7, r3
	l.ori	r13, r3, 0
	l.ori	r26, r16, 0
	l.bf	.LBB38_28
	l.nop	0                       # in delay slot
# BB#20:                                # %do.body76.preheader
                                        #   in Loop: Header=BB38_15 Depth=4
	l.movhi	r3, 0
	l.lwz	r11, -284(r2)
	l.lwz	r8, -292(r2)
	l.movhi	r16, 0
	l.ori	r12, r4, 0
	l.lwz	r24, 4068(r15)
	l.lwz	r21, 4060(r15)
	l.ori	r25, r17, 0
.LBB38_21:                              # %do.body76
                                        #   Parent Loop BB38_3 Depth=1
                                        #     Parent Loop BB38_4 Depth=2
                                        #       Parent Loop BB38_5 Depth=3
                                        #         Parent Loop BB38_15 Depth=4
                                        # =>        This Inner Loop Header: Depth=5
	l.add	r4, r13, r3
	l.add	r5, r7, r3
	l.lbz	r6, 0(r5)
	l.add	r17, r26, r16
	l.lbz	r7, 0(r4)
	l.add	r18, r20, r16
	l.lbz	r19, 4352(r18)
	l.lbz	r20, 4352(r17)
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sb	0(r5), r7
	l.sb	4352(r18), r20
	l.lwz	r7, -268(r2)
	l.lwz	r20, 4084(r15)
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.sb	0(r4), r6
	l.sb	4352(r17), r19
	l.addi	r3, r3, 1
	l.addi	r16, r16, 1
	l.sfne	r8, r21
	l.bf	.LBB38_63
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfne	r8, r3
	l.bf	.LBB38_21
	l.nop	0                       # in delay slot
# BB#22:                                # %do.end83
                                        #   in Loop: Header=BB38_15 Depth=4
	l.sfne	r12, r25
	l.bf	.LBB38_63
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sfeq	r12, r13
	l.ori	r3, r7, 0
	l.lwz	r6, -280(r2)
	l.ori	r16, r20, 0
	l.lwz	r19, 4072(r15)
	l.bf	.LBB38_24
	l.nop	0                       # in delay slot
# BB#23:                                # %do.end83
                                        #   in Loop: Header=BB38_15 Depth=4
	l.ori	r3, r12, 0
	l.ori	r16, r25, 0
.LBB38_24:                              # %do.end83
                                        #   in Loop: Header=BB38_15 Depth=4
	l.sfne	r12, r25
	l.bf	.LBB38_63
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sfeq	r12, r7
	l.ori	r4, r13, 0
	l.lwz	r5, -288(r2)
	l.ori	r17, r26, 0
	l.lwz	r18, 4064(r15)
	l.bf	.LBB38_26
	l.nop	0                       # in delay slot
# BB#25:                                # %do.end83
                                        #   in Loop: Header=BB38_15 Depth=4
	l.ori	r4, r3, 0
	l.ori	r17, r16, 0
.LBB38_26:                              # %do.end83
                                        #   in Loop: Header=BB38_15 Depth=4
	l.add	r13, r13, r5
	l.add	r7, r7, r8
	l.add	r26, r26, r18
	l.add	r20, r20, r21
	l.j	.LBB38_27
	l.nop	0                       # in delay slot
.LBB38_28:                              # %if.else96
                                        #   in Loop: Header=BB38_15 Depth=4
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sfne	r7, r13
	l.lwz	r11, -284(r2)
	l.lwz	r6, -280(r2)
	l.lwz	r8, -292(r2)
	l.lwz	r24, 4068(r15)
	l.lwz	r19, 4072(r15)
	l.lwz	r21, 4060(r15)
	l.bf	.LBB38_27
	l.nop	0                       # in delay slot
# BB#29:                                # %if.then98
                                        #   in Loop: Header=BB38_5 Depth=3
	l.lwz	r3, -288(r2)
	l.add	r13, r7, r3
	l.add	r7, r7, r8
	l.lwz	r16, 4064(r15)
	l.add	r26, r20, r16
	l.add	r20, r20, r21
	l.j	.LBB38_30
	l.nop	0                       # in delay slot
.LBB38_27:                              # %do.cond104
                                        #   in Loop: Header=BB38_15 Depth=4
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sfleu	r7, r13
	l.bf	.LBB38_15
	l.nop	0                       # in delay slot
.LBB38_30:                              # %do.end106
                                        #   in Loop: Header=BB38_5 Depth=3
	l.lwz	r3, -300(r2)
	l.sub	r3, r3, r7
	l.lwz	r4, -296(r2)
	l.lwz	r16, 4052(r15)
	l.sub	r4, r13, r4
	l.sub	r16, r16, r20
	l.ori	r5, r7, 0
	l.lwz	r17, 4056(r15)
	l.lwz	r7, -308(r2)
	l.sub	r17, r26, r17
	l.ori	r18, r20, 0
	l.lwz	r20, 4044(r15)
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sfgtu	r4, r7
	l.bf	.LBB38_34
	l.nop	0                       # in delay slot
# BB#31:                                # %if.then111
                                        #   in Loop: Header=BB38_5 Depth=3
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sfgtu	r3, r7
	l.ori	r3, r5, 0
	l.ori	r16, r18, 0
	l.bf	.LBB38_5
	l.nop	0                       # in delay slot
# BB#32:                                # %if.then116
                                        #   in Loop: Header=BB38_3 Depth=1
	l.lwz	r4, -312(r2)
	l.lwz	r13, -4(r4)
	l.lwz	r3, -8(r4)
	l.lwz	r17, 4040(r15)
	l.lwz	r26, 4348(r17)
	l.lwz	r16, 4344(r17)
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-296(r2), r3
	l.sw	4056(r15), r16
	l.addi	r4, r4, -8
	l.addi	r17, r17, -8
	l.j	.LBB38_33
	l.nop	0                       # in delay slot
.LBB38_34:                              # %if.else122
                                        #   in Loop: Header=BB38_4 Depth=2
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sfleu	r3, r7
	l.bf	.LBB38_4
	l.nop	0                       # in delay slot
# BB#35:                                # %if.else128
                                        #   in Loop: Header=BB38_3 Depth=1
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfles	r4, r3
	l.lwz	r4, -312(r2)
	l.lwz	r17, 4040(r15)
	l.bf	.LBB38_37
	l.nop	0                       # in delay slot
# BB#36:                                # %if.then136
                                        #   in Loop: Header=BB38_3 Depth=1
	l.lwz	r3, -296(r2)
	l.lwz	r16, 4056(r15)
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	0(r4), r3
	l.sw	4352(r17), r16
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sw	4(r4), r13
	l.sw	4356(r17), r26
	l.addi	r4, r4, 8
	l.lwz	r13, -300(r2)
	l.addi	r17, r17, 8
	l.lwz	r26, 4052(r15)
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sw	-296(r2), r5
	l.sw	4056(r15), r18
	l.j	.LBB38_33
	l.nop	0                       # in delay slot
.LBB38_37:                              # %if.else140
                                        #   in Loop: Header=BB38_3 Depth=1
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sw	0(r4), r5
	l.sw	4352(r17), r18
	l.lwz	r3, -300(r2)
	l.lwz	r16, 4052(r15)
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	4(r4), r3
	l.sw	4356(r17), r16
	l.addi	r4, r4, 8
	l.addi	r17, r17, 8
.LBB38_33:                              # %while.cond.outer.backedge
                                        #   in Loop: Header=BB38_3 Depth=1
	l.addi	r3, r2, -264
	l.addi	r16, r15, -264
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfltu	r3, r4
	l.bf	.LBB38_3
	l.nop	0                       # in delay slot
# BB#38:                                # %while.end147.split
	l.lwz	r5, -316(r2)
	l.lwz	r3, -320(r2)
	l.lwz	r18, 4036(r15)
	l.lwz	r16, 4032(r15)
.LBB38_39:                              # %if.end148
	l.add	r12, r3, r8
	l.add	r3, r3, r7
	l.add	r25, r16, r21
	l.add	r16, r16, r20
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfltu	r5, r3
	l.bf	.LBB38_41
	l.nop	0                       # in delay slot
# BB#40:                                # %if.end148
	l.ori	r5, r3, 0
	l.ori	r18, r16, 0
.LBB38_41:                              # %if.end148
	l.sfne	r12, r25
	l.bf	.LBB38_63
	l.sw	-296(r2), r12
	l.sw	4056(r15), r25
	l.sfne	r12, r25
	l.bf	.LBB38_63
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sfgtu	r12, r5
	l.bf	.LBB38_49
	l.nop	0                       # in delay slot
# BB#42:                                # %for.body.preheader
	l.ori	r3, r12, 0
	l.lwz	r4, -320(r2)
	l.lwz	r6, -280(r2)
	l.ori	r16, r25, 0
	l.lwz	r17, 4032(r15)
	l.lwz	r19, 4072(r15)
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sw	-276(r2), r5
	l.sw	4076(r15), r18
.LBB38_43:                              # %for.body
                                        # =>This Inner Loop Header: Depth=1
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-268(r2), r3
	l.sw	4084(r15), r16
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-272(r2), r4
	l.sw	4080(r15), r17
	l.ori	r5, r11, 0
	l.ori	r18, r24, 0
# BB#72:                                # %for.body
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.nop	0
	l.jalr	r6
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -268(r2)
	l.lwz	r16, 4084(r15)
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sfltsi	r11, 0
	l.ori	r13, r3, 0
	l.ori	r26, r16, 0
	l.bf	.LBB38_45
	l.nop	0                       # in delay slot
.LBB38_44:                              # %for.body
                                        #   in Loop: Header=BB38_43 Depth=1
	l.lwz	r13, -272(r2)
	l.lwz	r26, 4080(r15)
.LBB38_45:                              # %for.body
                                        #   in Loop: Header=BB38_43 Depth=1
	l.lwz	r8, -292(r2)
	l.add	r3, r3, r8
	l.lwz	r5, -276(r2)
	l.lwz	r21, 4060(r15)
	l.add	r16, r16, r21
	l.lwz	r18, 4076(r15)
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sfleu	r3, r5
	l.ori	r4, r13, 0
	l.lwz	r11, -284(r2)
	l.lwz	r6, -280(r2)
	l.ori	r17, r26, 0
	l.lwz	r24, 4068(r15)
	l.lwz	r19, 4072(r15)
	l.bf	.LBB38_43
	l.nop	0                       # in delay slot
# BB#46:                                # %for.end
	l.lwz	r4, -320(r2)
	l.lwz	r17, 4032(r15)
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfeq	r13, r4
	l.lwz	r12, -296(r2)
	l.lwz	r25, 4056(r15)
	l.bf	.LBB38_49
	l.nop	0                       # in delay slot
# BB#47:                                # %do.body168.preheader
	l.ori	r4, r8, 0
	l.lwz	r5, -320(r2)
	l.ori	r17, r21, 0
	l.lwz	r18, 4032(r15)
.LBB38_48:                              # %do.body168
                                        # =>This Inner Loop Header: Depth=1
	l.lbz	r6, 0(r13)
	l.lbz	r7, 0(r5)
	l.lbz	r19, 4352(r26)
	l.lbz	r20, 4352(r18)
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sb	0(r13), r7
	l.sb	4352(r26), r20
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.sb	0(r5), r6
	l.sb	4352(r18), r19
	l.addi	r5, r5, 1
	l.addi	r13, r13, 1
	l.addi	r4, r4, -1
	l.addi	r18, r18, 1
	l.addi	r26, r26, 1
	l.addi	r17, r17, -1
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfnei	r4, 0
	l.bf	.LBB38_48
	l.nop	0                       # in delay slot
.LBB38_49:                              # %while.cond180.preheader
	l.add	r13, r12, r8
	l.lwz	r4, -316(r2)
	l.add	r26, r25, r21
	l.lwz	r17, 4036(r15)
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfgtu	r13, r4
	l.lwz	r6, -320(r2)
	l.lwz	r19, 4032(r15)
	l.bf	.LBB38_62
	l.nop	0                       # in delay slot
# BB#50:                                # %while.body183.lr.ph
	l.movhi	r7, 0
	l.sub	r4, r7, r6
	l.muli	r5, r8, 3
	l.movhi	r20, 0
	l.sub	r12, r4, r5
	l.sub	r17, r20, r19
	l.add	r4, r6, r5
	l.muli	r18, r21, 3
	l.slli	r5, r8, 1
	l.sub	r25, r17, r18
	l.add	r5, r6, r5
	l.add	r17, r19, r18
	l.sub	r6, r7, r8
	l.slli	r18, r21, 1
	l.add	r18, r19, r18
	l.sub	r19, r20, r21
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.sw	-300(r2), r6
	l.sw	4052(r15), r19
	l.addi	r3, r5, -1
	l.addi	r16, r18, -1
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-304(r2), r3
	l.sw	4048(r15), r16
	l.addi	r3, r4, -1
	l.addi	r16, r17, -1
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-268(r2), r3
	l.sw	4084(r15), r16
	l.movhi	r3, 0
	l.movhi	r16, 0
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-308(r2), r3
	l.sw	4044(r15), r16
	l.j	.LBB38_51
	l.nop	0                       # in delay slot
.LBB38_55:                              # %if.then195
                                        #   in Loop: Header=BB38_51 Depth=1
	l.lwz	r3, -272(r2)
	l.addi	r4, r3, -1
	l.lwz	r16, 4080(r15)
	l.addi	r17, r16, -1
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfne	r12, r25
	l.bf	.LBB38_63
	l.sfltu	r4, r12
	l.bf	.LBB38_54
	l.nop	0                       # in delay slot
# BB#56:                                # %while.body200.preheader
                                        #   in Loop: Header=BB38_51 Depth=1
	l.movhi	r5, 0
	l.sub	r5, r5, r6
	l.lwz	r6, -308(r2)
	l.movhi	r18, 0
	l.sub	r18, r18, r19
	l.lwz	r19, 4044(r15)
.LBB38_57:                              # %while.body200
                                        #   Parent Loop BB38_51 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB38_59 Depth 3
	l.lwz	r7, -300(r2)
	l.add	r8, r4, r7
	l.lbz	r7, 0(r4)
	l.lwz	r20, 4052(r15)
	l.add	r21, r17, r20
	l.lbz	r20, 4352(r17)
	l.sfne	r8, r21
	l.bf	.LBB38_63
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sfltu	r8, r5
	l.ori	r8, r4, 0
	l.ori	r21, r17, 0
	l.bf	.LBB38_61
	l.nop	0                       # in delay slot
# BB#58:                                # %for.body207.preheader
                                        #   in Loop: Header=BB38_57 Depth=2
	l.ori	r8, r6, 0
	l.lwz	r3, -304(r2)
	l.ori	r21, r19, 0
	l.lwz	r16, 4048(r15)
.LBB38_59:                              # %for.body207
                                        #   Parent Loop BB38_51 Depth=1
                                        #     Parent Loop BB38_57 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	l.lwz	r12, -268(r2)
	l.add	r12, r12, r8
	l.add	r13, r3, r8
	l.lwz	r25, 4084(r15)
	l.lbz	r13, 0(r13)
	l.add	r25, r25, r21
	l.add	r26, r16, r21
	l.lbz	r26, 4352(r26)
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sb	0(r12), r13
	l.sb	4352(r25), r26
	l.lwz	r13, -292(r2)
	l.sub	r8, r8, r13
	l.add	r12, r3, r8
	l.lwz	r26, 4060(r15)
	l.sub	r21, r21, r26
	l.add	r25, r16, r21
	l.sfne	r12, r25
	l.bf	.LBB38_63
	l.sfne	r5, r18
	l.bf	.LBB38_63
	l.sfgeu	r12, r5
	l.lwz	r12, -268(r2)
	l.lwz	r25, 4084(r15)
	l.bf	.LBB38_59
	l.nop	0                       # in delay slot
# BB#60:                                # %for.end209.loopexit
                                        #   in Loop: Header=BB38_57 Depth=2
	l.add	r8, r12, r8
	l.lwz	r12, -288(r2)
	l.add	r21, r25, r21
	l.lwz	r25, 4064(r15)
.LBB38_61:                              # %for.end209
                                        #   in Loop: Header=BB38_57 Depth=2
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sb	0(r8), r7
	l.sb	4352(r21), r20
	l.addi	r6, r6, -1
	l.addi	r4, r4, -1
	l.addi	r19, r19, -1
	l.addi	r17, r17, -1
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfne	r12, r25
	l.bf	.LBB38_63
	l.sfltu	r4, r12
	l.bf	.LBB38_54
	l.nop	0                       # in delay slot
	l.j	.LBB38_57
	l.nop	0                       # in delay slot
.LBB38_51:                              # %while.body183
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB38_52 Depth 2
                                        #     Child Loop BB38_57 Depth 2
                                        #       Child Loop BB38_59 Depth 3
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sw	-288(r2), r13
	l.sw	4064(r15), r26
	l.sfne	r12, r25
	l.bf	.LBB38_63
	l.sw	-312(r2), r12
	l.sw	4040(r15), r25
	l.ori	r6, r12, 0
	l.movhi	r7, 0
	l.lwz	r3, -280(r2)
	l.ori	r19, r25, 0
	l.lwz	r3, -296(r2)
	l.movhi	r20, 0
	l.lwz	r16, 4072(r15)
	l.lwz	r16, 4056(r15)
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-296(r2), r3
	l.sw	4056(r15), r16
.LBB38_52:                              # %while.cond186
                                        #   Parent Loop BB38_51 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sw	-276(r2), r7
	l.sw	4076(r15), r20
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.sw	-272(r2), r6
	l.sw	4080(r15), r19
	l.lwz	r3, -296(r2)
	l.add	r4, r3, r7
	l.lwz	r3, -288(r2)
	l.lwz	r16, 4056(r15)
	l.ori	r5, r11, 0
	l.add	r17, r16, r20
	l.lwz	r6, -280(r2)
	l.lwz	r16, 4064(r15)
	l.ori	r18, r24, 0
	l.lwz	r19, 4072(r15)
# BB#73:                                # %while.cond186
	l.sfne	r6, r19
	l.bf	.LBB38_63
	l.nop	0
	l.jalr	r6
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r7, -276(r2)
	l.lwz	r6, -272(r2)
	l.lwz	r13, -292(r2)
	l.lwz	r20, 4076(r15)
	l.add	r6, r6, r13
	l.lwz	r19, 4080(r15)
	l.sub	r7, r7, r13
	l.lwz	r26, 4060(r15)
	l.add	r19, r19, r26
	l.sub	r20, r20, r26
	l.sfne	r11, r24
	l.bf	.LBB38_63
	l.sfltsi	r11, 0
	l.lwz	r11, -284(r2)
	l.lwz	r24, 4068(r15)
	l.bf	.LBB38_52
	l.nop	0                       # in delay slot
.LBB38_53:                              # %while.end192
                                        #   in Loop: Header=BB38_51 Depth=1
	l.lwz	r5, -288(r2)
	l.add	r3, r5, r13
	l.lwz	r18, 4064(r15)
	l.add	r16, r18, r26
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-272(r2), r3
	l.sw	4080(r15), r16
	l.lwz	r4, -300(r2)
	l.lwz	r17, 4052(r15)
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfne	r7, r20
	l.bf	.LBB38_63
	l.sfne	r4, r7
	l.ori	r12, r5, 0
	l.ori	r25, r18, 0
	l.bf	.LBB38_55
	l.nop	0                       # in delay slot
.LBB38_54:                              # %while.cond180.backedge
                                        #   in Loop: Header=BB38_51 Depth=1
	l.lwz	r3, -308(r2)
	l.add	r3, r3, r13
	l.lwz	r16, 4044(r15)
	l.add	r16, r16, r26
	l.sfne	r3, r16
	l.bf	.LBB38_63
	l.sw	-308(r2), r3
	l.sw	4044(r15), r16
	l.lwz	r4, -296(r2)
	l.add	r4, r4, r13
	l.lwz	r17, 4056(r15)
	l.add	r17, r17, r26
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sw	-296(r2), r4
	l.sw	4056(r15), r17
	l.lwz	r4, -312(r2)
	l.sub	r4, r4, r13
	l.ori	r12, r4, 0
	l.lwz	r17, 4040(r15)
	l.lwz	r4, -316(r2)
	l.sub	r17, r17, r26
	l.lwz	r13, -272(r2)
	l.ori	r25, r17, 0
	l.lwz	r17, 4036(r15)
	l.lwz	r26, 4080(r15)
	l.sfne	r13, r26
	l.bf	.LBB38_63
	l.sfne	r4, r17
	l.bf	.LBB38_63
	l.sfgtu	r13, r4
	l.bf	.LBB38_62
	l.nop	0                       # in delay slot
	l.j	.LBB38_51
	l.nop	0                       # in delay slot
.LBB38_62:                              # %cleanup
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB38_63
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB38_63:
	l.nop	205
.LBB38_64:
	l.nop	204
.Lfunc_end38:
	.size	_quicksort, .Lfunc_end38-_quicksort

	.hidden	main
	.globl	main
	.p2align	2
	.type	main,@function
main:                                   # @main
    l.addi	r14, r1, 0
	l.addi	r15, r2, 0
	l.addi	r16, r3, 0
	l.addi	r17, r4, 0
	l.addi	r18, r5, 0
	l.addi	r19, r6, 0
	l.addi	r20, r7, 0
	l.addi	r21, r8, 0
	l.addi	r22, r9, 0
	l.addi	r23, r10, 0
	l.addi	r24, r11, 0
	l.addi	r25, r12, 0
	l.addi	r26, r13, 0
    l.nop 100

# BB#0:                                 # %entry
	l.sfne	r9, r22
	l.bf	.LBB39_3
	l.sw	-4(r1), r9
	l.sw	4348(r14), r22
	l.sfne	r2, r15
	l.bf	.LBB39_3
	l.sw	-8(r1), r2
	l.sw	4344(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -24
	l.movhi	r3, hi(globalInput)
	l.addi	r15, r14, 0
	l.ori	r3, r3, lo(globalInput)
	l.addi	r14, r14, -24
	l.movhi	r4, hi(compare)
	l.movhi	r16, hi(globalInput)
	l.ori	r6, r4, lo(compare)
	l.ori	r16, r16, lo(globalInput)
	l.addi	r4, r0, 30
	l.movhi	r17, hi(compare)
	l.addi	r5, r0, 13
	l.ori	r19, r17, lo(compare)
	l.movhi	r7, 0
	l.addi	r17, r0, 30
	l.addi	r18, r0, 13
	l.movhi	r20, 0
	l.sfne	r7, r20
	l.bf	.LBB39_3
	l.sw	-12(r2), r7
	l.sw	4340(r15), r20
	l.sfne	r3, r16
	l.bf	.LBB39_3
	l.sw	-16(r2), r3
	l.sw	4336(r15), r16
	l.movhi	r7, 0
	l.movhi	r20, 0
# BB#5:                                 # %entry
	l.jal	_quicksort
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.movhi	r3, hi(.L.str.7)
	l.ori	r3, r3, lo(.L.str.7)
	l.movhi	r16, hi(.L.str.7)
	l.ori	r16, r16, lo(.L.str.7)
	l.sfne	r3, r16
	l.bf	.LBB39_3
	l.sw	-20(r2), r3
	l.sw	4332(r15), r16
.LBB39_1:                               # %for.body
                                        # =>This Inner Loop Header: Depth=1
	l.lwz	r3, -16(r2)
	l.lwz	r4, -12(r2)
	l.lwz	r16, 4336(r15)
	l.lwz	r17, 4340(r15)
	l.sfne	r4, r17
	l.bf	.LBB39_3
	l.sw	-12(r2), r4
	l.sw	4340(r15), r17
	l.add	r3, r4, r3
	l.add	r16, r17, r16
	l.sfne	r3, r16
	l.bf	.LBB39_3
	l.sw	0(r1), r3
	l.sw	4352(r14), r16
	l.lwz	r3, -20(r2)
	l.lwz	r16, 4332(r15)
# BB#6:                                 # %for.body
	l.jal	printf_to_sim
	l.addi	r22, r9, 0              # in delay slot
                                        # CFC
	l.lwz	r3, -12(r2)
	l.addi	r3, r3, 13
	l.lwz	r16, 4340(r15)
	l.addi	r16, r16, 13
	l.sfne	r3, r16
	l.bf	.LBB39_3
	l.sw	-12(r2), r3
	l.sw	4340(r15), r16
	l.sfne	r3, r16
	l.bf	.LBB39_3
	l.sfnei	r3, 390
	l.bf	.LBB39_1
	l.nop	0                       # in delay slot
.LBB39_2:                               # %for.end
	l.movhi	r11, 0
	l.addi	r1, r2, 0
	l.lwz	r2, -8(r1)
	l.movhi	r24, 0
	l.lwz	r9, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4344(r14)
	l.lwz	r22, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB39_3
	l.nop	0
    l.nop 200
	#l.jr	r9
    l.nop 1111
	l.nop	0                       # in delay slot
.LBB39_3:
	l.nop	205
.LBB39_4:
	l.nop	204
.Lfunc_end39:
	.size	main, .Lfunc_end39-main

	.hidden	uart_init
	.globl	uart_init
	.p2align	2
	.type	uart_init,@function
uart_init:                              # @uart_init
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB40_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 36864
	l.addi	r15, r14, 0
	l.ori	r5, r4, 2
	l.addi	r14, r14, -4
	l.addi	r6, r0, 199
	l.movhi	r17, 36864
	l.ori	r18, r17, 2
	l.addi	r19, r0, 199
	l.sfne	r6, r19
	l.bf	.LBB40_1
	l.sb	0(r5), r6
	l.sb	4352(r18), r19
	l.ori	r5, r4, 1
	l.movhi	r6, 0
	l.ori	r18, r17, 1
	l.movhi	r19, 0
	l.sfne	r6, r19
	l.bf	.LBB40_1
	l.sb	0(r5), r6
	l.sb	4352(r18), r19
	l.ori	r4, r4, 3
	l.addi	r7, r0, 3
	l.ori	r17, r17, 3
	l.addi	r20, r0, 3              # CFC
	l.sfne	r7, r20
	l.bf	.LBB40_1
	l.sb	0(r4), r7
	l.sb	4352(r17), r20
	l.lbz	r7, 0(r4)
	l.ori	r7, r7, 128
	l.lbz	r20, 4352(r17)
	l.ori	r20, r20, 128
	l.sfne	r7, r20
	l.bf	.LBB40_1
	l.sb	0(r4), r7
	l.sb	4352(r17), r20
	l.movhi	r7, hi(UART_BASE_ADR)
	l.ori	r7, r7, lo(UART_BASE_ADR)
	l.slli	r3, r3, 2
	l.movhi	r20, hi(UART_BASE_ADR)
	l.add	r3, r3, r7
	l.ori	r20, r20, lo(UART_BASE_ADR)
	l.lwz	r3, 0(r3)
	l.slli	r16, r16, 2
	l.addi	r7, r0, 27
	l.add	r16, r16, r20
	l.lwz	r16, 4352(r16)
	l.addi	r20, r0, 27             # CFC
	l.sfne	r7, r20
	l.bf	.LBB40_1
	l.sb	0(r3), r7
	l.sb	4352(r16), r20
	l.sfne	r6, r19
	l.bf	.LBB40_1
	l.sb	0(r5), r6
	l.sb	4352(r18), r19
	l.lbz	r3, 0(r4)
	l.andi	r3, r3, 127
	l.lbz	r16, 4352(r17)
	l.andi	r16, r16, 127
	l.sfne	r3, r16
	l.bf	.LBB40_1
	l.sb	0(r4), r3
	l.sb	4352(r17), r16
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB40_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB40_1:
	l.nop	205
.LBB40_2:
	l.nop	204
.Lfunc_end40:
	.size	uart_init, .Lfunc_end40-uart_init

	.hidden	uart_putc
	.globl	uart_putc
	.p2align	2
	.type	uart_putc,@function
uart_putc:                              # @uart_putc
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB41_9
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r5, 36864
	l.addi	r15, r14, 0
	l.ori	r5, r5, 5
	l.addi	r14, r14, -4
	l.movhi	r18, 36864
	l.ori	r18, r18, 5
.LBB41_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.lbz	r6, 0(r5)
	l.andi	r6, r6, 32
	l.lbz	r19, 4352(r18)
	l.andi	r19, r19, 32
	l.sfne	r6, r19
	l.bf	.LBB41_9
	l.sfeqi	r6, 0
	l.bf	.LBB41_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %do.end
	l.movhi	r5, hi(UART_BASE_ADR)
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.slli	r3, r3, 2
	l.movhi	r18, hi(UART_BASE_ADR)
	l.add	r3, r3, r5
	l.ori	r18, r18, lo(UART_BASE_ADR)
	l.lwz	r3, 0(r3)
	l.slli	r16, r16, 2
	l.add	r16, r16, r18
	l.lwz	r16, 4352(r16)
	l.sfne	r4, r17
	l.bf	.LBB41_9
	l.sb	0(r3), r4
	l.sb	4352(r16), r17
	l.andi	r4, r4, 255
	l.andi	r17, r17, 255
	l.sfne	r4, r17
	l.bf	.LBB41_9
	l.sfnei	r4, 10
	l.bf	.LBB41_6
	l.nop	0                       # in delay slot
# BB#3:                                 # %do.body7.preheader
	l.movhi	r4, 36864
	l.ori	r4, r4, 5
	l.movhi	r17, 36864
	l.ori	r17, r17, 5
.LBB41_4:                               # %do.body7
                                        # =>This Inner Loop Header: Depth=1
	l.lbz	r5, 0(r4)
	l.andi	r5, r5, 32
	l.lbz	r18, 4352(r17)
	l.andi	r18, r18, 32
	l.sfne	r5, r18
	l.bf	.LBB41_9
	l.sfeqi	r5, 0
	l.bf	.LBB41_4
	l.nop	0                       # in delay slot
# BB#5:                                 # %do.end15
	l.addi	r4, r0, 13
	l.addi	r17, r0, 13
	l.sfne	r4, r17
	l.bf	.LBB41_9
	l.sb	0(r3), r4
	l.sb	4352(r16), r17
.LBB41_6:                               # %do.body18.preheader
	l.movhi	r3, 36864
	l.ori	r3, r3, 5
	l.movhi	r16, 36864
	l.ori	r16, r16, 5
.LBB41_7:                               # %do.body18
                                        # =>This Inner Loop Header: Depth=1
	l.lbz	r4, 0(r3)
	l.andi	r4, r4, 96
	l.lbz	r17, 4352(r16)
	l.andi	r17, r17, 96
	l.sfne	r4, r17
	l.bf	.LBB41_9
	l.sfnei	r4, 96
	l.bf	.LBB41_7
	l.nop	0                       # in delay slot
# BB#8:                                 # %do.end26
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB41_9
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB41_9:
	l.nop	205
.LBB41_10:
	l.nop	204
.Lfunc_end41:
	.size	uart_putc, .Lfunc_end41-uart_putc

	.hidden	uart_putc_noblock
	.globl	uart_putc_noblock
	.p2align	2
	.type	uart_putc_noblock,@function
uart_putc_noblock:                      # @uart_putc_noblock
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB42_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r5, hi(UART_BASE_ADR)
	l.addi	r15, r14, 0
	l.ori	r5, r5, lo(UART_BASE_ADR)
	l.addi	r14, r14, -4
	l.slli	r3, r3, 2
	l.movhi	r18, hi(UART_BASE_ADR)
	l.add	r3, r3, r5
	l.ori	r18, r18, lo(UART_BASE_ADR)
	l.lwz	r3, 0(r3)
	l.slli	r16, r16, 2
	l.add	r16, r16, r18
	l.lwz	r16, 4352(r16)
	l.sfne	r4, r17
	l.bf	.LBB42_1
	l.sb	0(r3), r4
	l.sb	4352(r16), r17
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB42_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB42_1:
	l.nop	205
.LBB42_2:
	l.nop	204
.Lfunc_end42:
	.size	uart_putc_noblock, .Lfunc_end42-uart_putc_noblock

	.hidden	uart_getc
	.globl	uart_getc
	.p2align	2
	.type	uart_getc,@function
uart_getc:                              # @uart_getc
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB43_3
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r4, 36864
	l.addi	r15, r14, 0
	l.ori	r4, r4, 5
	l.addi	r14, r14, -4
	l.movhi	r17, 36864
	l.ori	r17, r17, 5
.LBB43_1:                               # %do.body
                                        # =>This Inner Loop Header: Depth=1
	l.lbz	r5, 0(r4)
	l.andi	r5, r5, 1
	l.lbz	r18, 4352(r17)
	l.andi	r18, r18, 1
	l.sfne	r5, r18
	l.bf	.LBB43_3
	l.sfeqi	r5, 0
	l.bf	.LBB43_1
	l.nop	0                       # in delay slot
# BB#2:                                 # %do.end
	l.movhi	r4, hi(UART_BASE_ADR)
	l.ori	r4, r4, lo(UART_BASE_ADR)
	l.slli	r3, r3, 2
	l.movhi	r17, hi(UART_BASE_ADR)
	l.add	r3, r3, r4
	l.ori	r17, r17, lo(UART_BASE_ADR)
	l.lwz	r3, 0(r3)
	l.slli	r16, r16, 2
	l.lbs	r11, 0(r3)
	l.add	r16, r16, r17
	l.addi	r1, r2, 0
	l.lwz	r16, 4352(r16)
	l.lwz	r2, -4(r1)
	l.lbs	r24, 4352(r16)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB43_3
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB43_3:
	l.nop	205
.LBB43_4:
	l.nop	204
.Lfunc_end43:
	.size	uart_getc, .Lfunc_end43-uart_getc

	.hidden	uart_check_for_char
	.globl	uart_check_for_char
	.p2align	2
	.type	uart_check_for_char,@function
uart_check_for_char:                    # @uart_check_for_char
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB44_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.addi	r15, r14, 0
	l.ori	r3, r3, 5
	l.addi	r14, r14, -4
	l.lbz	r3, 0(r3)
	l.movhi	r16, 36864
	l.andi	r11, r3, 1
	l.ori	r16, r16, 5
	l.addi	r1, r2, 0
	l.lbz	r16, 4352(r16)
	l.lwz	r2, -4(r1)
	l.andi	r24, r16, 1
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB44_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB44_1:
	l.nop	205
.LBB44_2:
	l.nop	204
.Lfunc_end44:
	.size	uart_check_for_char, .Lfunc_end44-uart_check_for_char

	.hidden	uart_rxint_enable
	.globl	uart_rxint_enable
	.p2align	2
	.type	uart_rxint_enable,@function
uart_rxint_enable:                      # @uart_rxint_enable
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB45_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.addi	r15, r14, 0
	l.ori	r3, r3, 1
	l.addi	r14, r14, -4
	l.lbz	r4, 0(r3)
	l.movhi	r16, 36864
	l.ori	r4, r4, 1
	l.ori	r16, r16, 1
	l.lbz	r17, 4352(r16)
	l.ori	r17, r17, 1
	l.sfne	r4, r17
	l.bf	.LBB45_1
	l.sb	0(r3), r4
	l.sb	4352(r16), r17
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB45_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB45_1:
	l.nop	205
.LBB45_2:
	l.nop	204
.Lfunc_end45:
	.size	uart_rxint_enable, .Lfunc_end45-uart_rxint_enable

	.hidden	uart_rxint_disable
	.globl	uart_rxint_disable
	.p2align	2
	.type	uart_rxint_disable,@function
uart_rxint_disable:                     # @uart_rxint_disable
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB46_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.addi	r15, r14, 0
	l.ori	r3, r3, 1
	l.addi	r14, r14, -4
	l.lbz	r4, 0(r3)
	l.movhi	r16, 36864
	l.andi	r4, r4, 254
	l.ori	r16, r16, 1
	l.lbz	r17, 4352(r16)
	l.andi	r17, r17, 254
	l.sfne	r4, r17
	l.bf	.LBB46_1
	l.sb	0(r3), r4
	l.sb	4352(r16), r17
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB46_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB46_1:
	l.nop	205
.LBB46_2:
	l.nop	204
.Lfunc_end46:
	.size	uart_rxint_disable, .Lfunc_end46-uart_rxint_disable

	.hidden	uart_txint_enable
	.globl	uart_txint_enable
	.p2align	2
	.type	uart_txint_enable,@function
uart_txint_enable:                      # @uart_txint_enable
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB47_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.addi	r15, r14, 0
	l.ori	r3, r3, 1
	l.addi	r14, r14, -4
	l.lbz	r4, 0(r3)
	l.movhi	r16, 36864
	l.ori	r4, r4, 2
	l.ori	r16, r16, 1
	l.lbz	r17, 4352(r16)
	l.ori	r17, r17, 2
	l.sfne	r4, r17
	l.bf	.LBB47_1
	l.sb	0(r3), r4
	l.sb	4352(r16), r17
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB47_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB47_1:
	l.nop	205
.LBB47_2:
	l.nop	204
.Lfunc_end47:
	.size	uart_txint_enable, .Lfunc_end47-uart_txint_enable

	.hidden	uart_txint_disable
	.globl	uart_txint_disable
	.p2align	2
	.type	uart_txint_disable,@function
uart_txint_disable:                     # @uart_txint_disable
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB48_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.addi	r15, r14, 0
	l.ori	r3, r3, 1
	l.addi	r14, r14, -4
	l.lbz	r4, 0(r3)
	l.movhi	r16, 36864
	l.andi	r4, r4, 253
	l.ori	r16, r16, 1
	l.lbz	r17, 4352(r16)
	l.andi	r17, r17, 253
	l.sfne	r4, r17
	l.bf	.LBB48_1
	l.sb	0(r3), r4
	l.sb	4352(r16), r17
	l.addi	r1, r2, 0
	l.lwz	r2, -4(r1)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB48_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB48_1:
	l.nop	205
.LBB48_2:
	l.nop	204
.Lfunc_end48:
	.size	uart_txint_disable, .Lfunc_end48-uart_txint_disable

	.hidden	uart_get_iir
	.globl	uart_get_iir
	.p2align	2
	.type	uart_get_iir,@function
uart_get_iir:                           # @uart_get_iir
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB49_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.addi	r15, r14, 0
	l.ori	r3, r3, 2
	l.addi	r14, r14, -4
	l.lbs	r11, 0(r3)
	l.movhi	r16, 36864
	l.addi	r1, r2, 0
	l.ori	r16, r16, 2
	l.lwz	r2, -4(r1)
	l.lbs	r24, 4352(r16)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB49_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB49_1:
	l.nop	205
.LBB49_2:
	l.nop	204
.Lfunc_end49:
	.size	uart_get_iir, .Lfunc_end49-uart_get_iir

	.hidden	uart_get_lsr
	.globl	uart_get_lsr
	.p2align	2
	.type	uart_get_lsr,@function
uart_get_lsr:                           # @uart_get_lsr
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB50_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.addi	r15, r14, 0
	l.ori	r3, r3, 5
	l.addi	r14, r14, -4
	l.lbs	r11, 0(r3)
	l.movhi	r16, 36864
	l.addi	r1, r2, 0
	l.ori	r16, r16, 5
	l.lwz	r2, -4(r1)
	l.lbs	r24, 4352(r16)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB50_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB50_1:
	l.nop	205
.LBB50_2:
	l.nop	204
.Lfunc_end50:
	.size	uart_get_lsr, .Lfunc_end50-uart_get_lsr

	.hidden	uart_get_msr
	.globl	uart_get_msr
	.p2align	2
	.type	uart_get_msr,@function
uart_get_msr:                           # @uart_get_msr
# BB#0:                                 # %entry
	l.sfne	r2, r15
	l.bf	.LBB51_1
	l.sw	-4(r1), r2
	l.sw	4348(r14), r15
	l.addi	r2, r1, 0
	l.addi	r1, r1, -4
	l.movhi	r3, 36864
	l.addi	r15, r14, 0
	l.ori	r3, r3, 6
	l.addi	r14, r14, -4
	l.lbs	r11, 0(r3)
	l.movhi	r16, 36864
	l.addi	r1, r2, 0
	l.ori	r16, r16, 6
	l.lwz	r2, -4(r1)
	l.lbs	r24, 4352(r16)
	l.addi	r14, r15, 0
	l.lwz	r15, 4348(r14)
	l.sfne	r9, r22
	l.bf	.LBB51_1
	l.nop	0
	l.jr	r9
	l.nop	0                       # in delay slot
.LBB51_1:
	l.nop	205
.LBB51_2:
	l.nop	204
.Lfunc_end51:
	.size	uart_get_msr, .Lfunc_end51-uart_get_msr

	.data
	.hidden	int_handlers            # @int_handlers
	.type	int_handlers,@object
	#.comm	int_handlers,256,4
int_handlers:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	
	.type	rand.lfsr,@object       # @rand.lfsr
	
	.p2align	2
rand.lfsr:
	.long	347520060               # 0x14b6bc3c
	.size	rand.lfsr, 4

	.type	rand.period,@object     # @rand.period
	#.comm	rand.period,4,4
rand.period:
	.long	0
	.type	timer_ticks,@object
	#.comm	timer_ticks,4,4
timer_ticks:
	.long	0
	.type	PRINTFBUFFER,@object
	#.comm	PRINTFBUFFER,2048,1
PRINTFBUFFER:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	
	.type	.L.str.2,@object        # @.str.2
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

	.type	.L.str,@object          # @.str
.L.str:
	.zero	1
	.size	.L.str, 1

	.type	vfnprintf.blanks,@object # @vfnprintf.blanks
vfnprintf.blanks:
	.zero	16,32
	.size	vfnprintf.blanks, 16

	.type	vfnprintf.zeroes,@object # @vfnprintf.zeroes
vfnprintf.zeroes:
	.zero	16,48
	.size	vfnprintf.zeroes, 16

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"%s\n"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"%c"
	.size	.L.str.6, 3

	.hidden	globalInput             # @globalInput
	.type	globalInput,@object
globalInput:
	.asciz	"Kurt\000\000\000\000\000\000\000\000"
	.asciz	"Vonneguts\000\000\000"
	.asciz	"Commencement"
	.asciz	"Address\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"MIT\000\000\000\000\000\000\000\000\000"
	.asciz	"Ladies\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"gentlemen\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"class\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"97\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Wear\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"If\000\000\000\000\000\000\000\000\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"could\000\000\000\000\000\000\000"
	.asciz	"offer\000\000\000\000\000\000\000"
	.asciz	"you\000\000\000\000\000\000\000\000\000"
	.asciz	"only\000\000\000\000\000\000\000\000"
	.asciz	"one\000\000\000\000\000\000\000\000\000"
	.asciz	"tip\000\000\000\000\000\000\000\000\000"
	.asciz	"for\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"future\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"would\000\000\000\000\000\000\000"
	.asciz	"be\000\000\000\000\000\000\000\000\000\000"
	.asciz	"it\000\000\000\000\000\000\000\000\000\000"
	.asciz	"The\000\000\000\000\000\000\000\000\000"
	.asciz	"longterm\000\000\000\000"
	.asciz	"benefits\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"have\000\000\000\000\000\000\000\000"
	.asciz	"been\000\000\000\000\000\000\000\000"
	.asciz	"proved\000\000\000\000\000\000"
	.asciz	"by\000\000\000\000\000\000\000\000\000\000"
	.asciz	"scientists\000\000"
	.asciz	"whereas\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"rest\000\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"has\000\000\000\000\000\000\000\000\000"
	.asciz	"no\000\000\000\000\000\000\000\000\000\000"
	.asciz	"basis\000\000\000\000\000\000\000"
	.asciz	"more\000\000\000\000\000\000\000\000"
	.asciz	"reliable\000\000\000\000"
	.asciz	"than\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"own\000\000\000\000\000\000\000\000\000"
	.asciz	"meandering\000\000"
	.asciz	"experience\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"dispense\000\000\000\000"
	.asciz	"this\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"now\000\000\000\000\000\000\000\000\000"
	.asciz	"Enjoy\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"Oh\000\000\000\000\000\000\000\000\000\000"
	.asciz	"never\000\000\000\000\000\000\000"
	.asciz	"mind\000\000\000\000\000\000\000\000"
	.asciz	"You\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"not\000\000\000\000\000\000\000\000\000"
	.asciz	"understand\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"until\000\000\000\000\000\000\000"
	.asciz	"theyve\000\000\000\000\000\000"
	.asciz	"faded\000\000\000\000\000\000\000"
	.asciz	"But\000\000\000\000\000\000\000\000\000"
	.asciz	"trust\000\000\000\000\000\000\000"
	.asciz	"me\000\000\000\000\000\000\000\000\000\000"
	.asciz	"in\000\000\000\000\000\000\000\000\000\000"
	.asciz	"20\000\000\000\000\000\000\000\000\000\000"
	.asciz	"years\000\000\000\000\000\000\000"
	.asciz	"youll\000\000\000\000\000\000\000"
	.asciz	"look\000\000\000\000\000\000\000\000"
	.asciz	"back\000\000\000\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"photos\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.size	globalInput, 1300

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"%s\n"
	.size	.L.str.7, 4

	.hidden	UART_BASE_ADR           # @UART_BASE_ADR
	.type	UART_BASE_ADR,@object
	.p2align	2
UART_BASE_ADR:
	.long	2415919104              # 0x90000000
	.size	UART_BASE_ADR, 4

	.hidden	UART_BAUDS              # @UART_BAUDS
	.type	UART_BAUDS,@object
	.p2align	2
UART_BAUDS:
	.long	115200                  # 0x1c200
	.size	UART_BAUDS, 4

	.type	tx_buff,@object
	#.comm	tx_buff,32,1
tx_buff:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	.type	tx_level,@object
	#.comm	tx_level,4,4
tx_level:
	.long	0
	
	.type	rx_level,@object
	#.comm	rx_level,4,4
rx_level:
	.long	0
	
	
	.p2align	2
.LJTI1_0:
	.long	.LBB1_18
	.long	.LBB1_63
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_62
	.long	.LBB1_40
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_63
	.long	.LBB1_63
	.long	.LBB1_40
	.long	.LBB1_41
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_33
.LJTI1_1:
	.long	.LBB1_32
	.long	.LBB1_62
	.long	.LBB1_63
	.long	.LBB1_40


	
	
	.p2align	2
.LJTI26_0:
    .long	.LBB26_10
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_20
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_23
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_24
	.long	.LBB26_27
	.long	.LBB26_144
	.long	.LBB26_26
	.long	.LBB26_28
	.long	.LBB26_144
	.long	.LBB26_38
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_46
	.long	.LBB26_58
	.long	.LBB26_144
	.long	.LBB26_58
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_65
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_84
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_94
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_147
	.long	.LBB26_47
	.long	.LBB26_58
	.long	.LBB26_58
	.long	.LBB26_58
	.long	.LBB26_41
	.long	.LBB26_47
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_42
	.long	.LBB26_144
	.long	.LBB26_59
	.long	.LBB26_66
	.long	.LBB26_74
	.long	.LBB26_45
	.long	.LBB26_144
	.long	.LBB26_75
	.long	.LBB26_144
	.long	.LBB26_85
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_95
	.long	.LBB26_144
	.long	.LBB26_143

	
	
	
#SHADOW1_START
	.hidden	int_handlers_SHADOW1            # @int_handlers
	.type	int_handlers_SHADOW1,@object
	#.comm	int_handlers_SHADOW1,256,4
int_handlers_SHADOW1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	
	.type	rand.lfsr_SHADOW1,@object       # @rand.lfsr
	
	.p2align	2
rand.lfsr_SHADOW1:
	.long	347520060               # 0x14b6bc3c
	.size	rand.lfsr_SHADOW1, 4

	.type	rand.period_SHADOW1,@object     # @rand.period
	#.comm	rand.period_SHADOW1,4,4
rand.period_SHADOW1:
	.long	0
	.type	timer_ticks_SHADOW1,@object
	#.comm	timer_ticks_SHADOW1,4,4
timer_ticks_SHADOW1:
	.long	0
	.type	PRINTFBUFFER_SHADOW1,@object
	#.comm	PRINTFBUFFER_SHADOW1,2048,1
PRINTFBUFFER_SHADOW1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	
	.type	.L.str.2_SHADOW1,@object        # @.str.2
.L.str.2_SHADOW1:
	.asciz	"(null)"
	.size	.L.str.2_SHADOW1, 7

	.type	.L.str.1_SHADOW1,@object        # @.str.1
.L.str.1_SHADOW1:
	.asciz	"0123456789abcdef"
	.size	.L.str.1_SHADOW1, 17

	.type	.L.str.3_SHADOW1,@object        # @.str.3
.L.str.3_SHADOW1:
	.asciz	"0123456789ABCDEF"
	.size	.L.str.3_SHADOW1, 17

	.type	.L.str.4_SHADOW1,@object        # @.str.4
.L.str.4_SHADOW1:
	.asciz	"bug in vfprintf: bad base"
	.size	.L.str.4_SHADOW1, 26

	.type	.L.str_SHADOW1,@object          # @.str
.L.str_SHADOW1:
	.zero	1
	.size	.L.str_SHADOW1, 1

	.type	vfnprintf.blanks_SHADOW1,@object # @vfnprintf.blanks
vfnprintf.blanks_SHADOW1:
	.zero	16,32
	.size	vfnprintf.blanks_SHADOW1, 16

	.type	vfnprintf.zeroes_SHADOW1,@object # @vfnprintf.zeroes
vfnprintf.zeroes_SHADOW1:
	.zero	16,48
	.size	vfnprintf.zeroes_SHADOW1, 16

	.type	.L.str.5_SHADOW1,@object        # @.str.5
.L.str.5_SHADOW1:
	.asciz	"%s\n"
	.size	.L.str.5_SHADOW1, 4

	.type	.L.str.6_SHADOW1,@object        # @.str.6
.L.str.6_SHADOW1:
	.asciz	"%c"
	.size	.L.str.6_SHADOW1, 3

	.hidden	globalInput_SHADOW1             # @globalInput
	.type	globalInput_SHADOW1,@object
globalInput_SHADOW1:
	.asciz	"Kurt\000\000\000\000\000\000\000\000"
	.asciz	"Vonneguts\000\000\000"
	.asciz	"Commencement"
	.asciz	"Address\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"MIT\000\000\000\000\000\000\000\000\000"
	.asciz	"Ladies\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"gentlemen\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"class\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"97\000\000\000\000\000\000\000\000\000\000"
	.asciz	"Wear\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"If\000\000\000\000\000\000\000\000\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"could\000\000\000\000\000\000\000"
	.asciz	"offer\000\000\000\000\000\000\000"
	.asciz	"you\000\000\000\000\000\000\000\000\000"
	.asciz	"only\000\000\000\000\000\000\000\000"
	.asciz	"one\000\000\000\000\000\000\000\000\000"
	.asciz	"tip\000\000\000\000\000\000\000\000\000"
	.asciz	"for\000\000\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"future\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"would\000\000\000\000\000\000\000"
	.asciz	"be\000\000\000\000\000\000\000\000\000\000"
	.asciz	"it\000\000\000\000\000\000\000\000\000\000"
	.asciz	"The\000\000\000\000\000\000\000\000\000"
	.asciz	"longterm\000\000\000\000"
	.asciz	"benefits\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"sunscreen\000\000\000"
	.asciz	"have\000\000\000\000\000\000\000\000"
	.asciz	"been\000\000\000\000\000\000\000\000"
	.asciz	"proved\000\000\000\000\000\000"
	.asciz	"by\000\000\000\000\000\000\000\000\000\000"
	.asciz	"scientists\000\000"
	.asciz	"whereas\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"rest\000\000\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"has\000\000\000\000\000\000\000\000\000"
	.asciz	"no\000\000\000\000\000\000\000\000\000\000"
	.asciz	"basis\000\000\000\000\000\000\000"
	.asciz	"more\000\000\000\000\000\000\000\000"
	.asciz	"reliable\000\000\000\000"
	.asciz	"than\000\000\000\000\000\000\000\000"
	.asciz	"my\000\000\000\000\000\000\000\000\000\000"
	.asciz	"own\000\000\000\000\000\000\000\000\000"
	.asciz	"meandering\000\000"
	.asciz	"experience\000\000"
	.asciz	"I\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"dispense\000\000\000\000"
	.asciz	"this\000\000\000\000\000\000\000\000"
	.asciz	"advice\000\000\000\000\000\000"
	.asciz	"now\000\000\000\000\000\000\000\000\000"
	.asciz	"Enjoy\000\000\000\000\000\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"Oh\000\000\000\000\000\000\000\000\000\000"
	.asciz	"never\000\000\000\000\000\000\000"
	.asciz	"mind\000\000\000\000\000\000\000\000"
	.asciz	"You\000\000\000\000\000\000\000\000\000"
	.asciz	"will\000\000\000\000\000\000\000\000"
	.asciz	"not\000\000\000\000\000\000\000\000\000"
	.asciz	"understand\000\000"
	.asciz	"the\000\000\000\000\000\000\000\000\000"
	.asciz	"power\000\000\000\000\000\000\000"
	.asciz	"and\000\000\000\000\000\000\000\000\000"
	.asciz	"beauty\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.asciz	"your\000\000\000\000\000\000\000\000"
	.asciz	"youth\000\000\000\000\000\000\000"
	.asciz	"until\000\000\000\000\000\000\000"
	.asciz	"theyve\000\000\000\000\000\000"
	.asciz	"faded\000\000\000\000\000\000\000"
	.asciz	"But\000\000\000\000\000\000\000\000\000"
	.asciz	"trust\000\000\000\000\000\000\000"
	.asciz	"me\000\000\000\000\000\000\000\000\000\000"
	.asciz	"in\000\000\000\000\000\000\000\000\000\000"
	.asciz	"20\000\000\000\000\000\000\000\000\000\000"
	.asciz	"years\000\000\000\000\000\000\000"
	.asciz	"youll\000\000\000\000\000\000\000"
	.asciz	"look\000\000\000\000\000\000\000\000"
	.asciz	"back\000\000\000\000\000\000\000\000"
	.asciz	"at\000\000\000\000\000\000\000\000\000\000"
	.asciz	"photos\000\000\000\000\000\000"
	.asciz	"of\000\000\000\000\000\000\000\000\000\000"
	.size	globalInput_SHADOW1, 1300

	.type	.L.str.7_SHADOW1,@object        # @.str.7
.L.str.7_SHADOW1:
	.asciz	"%s\n"
	.size	.L.str.7_SHADOW1, 4

	.hidden	UART_BASE_ADR_SHADOW1           # @UART_BASE_ADR
	.type	UART_BASE_ADR_SHADOW1,@object
	.p2align	2
UART_BASE_ADR_SHADOW1:
	.long	2415919104              # 0x90000000
	.size	UART_BASE_ADR_SHADOW1, 4

	.hidden	UART_BAUDS_SHADOW1              # @UART_BAUDS
	.type	UART_BAUDS_SHADOW1,@object
	.p2align	2
UART_BAUDS_SHADOW1:
	.long	115200                  # 0x1c200
	.size	UART_BAUDS_SHADOW1, 4

	.type	tx_buff_SHADOW1,@object
	#.comm	tx_buff,32,1
tx_buff_SHADOW1:
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	
	.type	tx_level_SHADOW1,@object
	#.comm	tx_level,4,4
tx_level_SHADOW1:
	.long	0
	
	.type	rx_level_SHADOW1,@object
	#.comm	rx_level,4,4
rx_level_SHADOW1:
	.long	0
	
	
	.p2align	2
.LJTI1_0_SHADOW1:
	.long	.LBB1_18
	.long	.LBB1_63
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_62
	.long	.LBB1_40
	.long	.LBB1_62
	.long	.LBB1_41
	.long	.LBB1_63
	.long	.LBB1_63
	.long	.LBB1_40
	.long	.LBB1_41
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_42
	.long	.LBB1_33
.LJTI1_1_SHADOW1:
	.long	.LBB1_32
	.long	.LBB1_62
	.long	.LBB1_63
	.long	.LBB1_40


	
	
	.p2align	2
.LJTI26_0_SHADOW1:
	.long	.LBB26_10
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_20
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_23
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_24
	.long	.LBB26_27
	.long	.LBB26_144
	.long	.LBB26_26
	.long	.LBB26_28
	.long	.LBB26_144
	.long	.LBB26_38
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_39
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_46
	.long	.LBB26_58
	.long	.LBB26_144
	.long	.LBB26_58
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_65
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_84
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_94
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_147
	.long	.LBB26_47
	.long	.LBB26_58
	.long	.LBB26_58
	.long	.LBB26_58
	.long	.LBB26_41
	.long	.LBB26_47
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_42
	.long	.LBB26_144
	.long	.LBB26_59
	.long	.LBB26_66
	.long	.LBB26_74
	.long	.LBB26_45
	.long	.LBB26_144
	.long	.LBB26_75
	.long	.LBB26_144
	.long	.LBB26_85
	.long	.LBB26_144
	.long	.LBB26_144
	.long	.LBB26_95
	.long	.LBB26_144
	.long	.LBB26_143

	
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
