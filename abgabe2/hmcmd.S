	.file	"hmcmd.c"
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section .text
.Ltext0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"hmcmd"
.LC1:
	.string	""
.LC2:
	.string	"additional commands and tests by University of Applied Sciences Munich"
	.section .text
	.align	4
.proc	module_hmcmd_init
	.global module_hmcmd_init
	.type	module_hmcmd_init, @function
module_hmcmd_init:
.LFB1:
.LM1:
	l.sw    	-8(r1),r2	 # SI store
.LCFI0:
	l.addi  	r2,r1,0
.LCFI1:
	l.sw    	-4(r1),r9	 # SI store
.LCFI2:
	l.addi	r1,r1,-8	# allocate frame
.LCFI3:
.LM2:
	l.ori	r1,r2,0	# deallocate frame
.LM3:
	l.movhi  	r3,hi(.LC0)
	l.movhi  	r4,hi(.LC1)
	l.movhi  	r5,hi(.LC2)
	l.movhi  	r6,hi(hmcmd_cmd)
	l.ori   	r3,r3,lo(.LC0)
	l.ori   	r4,r4,lo(.LC1)
	l.ori   	r5,r5,lo(.LC2)
	l.ori   	r6,r6,lo(hmcmd_cmd)
.LM4:
	l.lwz   	r9,-4(r1)	 # SI load
.LM5:
	l.j	register_command_func	# delay slot filled	# sibcall s
	l.lwz   	r2,-8(r1)	 # SI load
.LFE1:
	.size	module_hmcmd_init, .-module_hmcmd_init
	.section	.rodata.str1.1
.LC3:
	.string	"Invalid number of arguments!\n"
	.section .text
	.align	4
.proc	iteration_setter
	.global iteration_setter
	.type	iteration_setter, @function
iteration_setter:
.LFB2:
.LM6:
.LVL0:
	l.sw    	-8(r1),r2	 # SI store
.LCFI4:
	l.addi  	r2,r1,0
.LCFI5:
	l.sw    	-4(r1),r9	 # SI store
.LCFI6:
	l.addi	r1,r1,-8	# allocate frame
.LCFI7:
.LM7:
	l.sfnei	r3,2
	l.bnf	.L7	# delay slot filled
	l.ori   	r5,r4,0	 # move reg to reg
.LM8:
	l.sfeqi	r3,1
	l.bnf	.L8	# delay slot filled
	l.movhi 	r11,hi(9961472)	 # move immediate M
.LM9:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
.LM10:
	l.ori   	r11,r11,38528
.LM11:
	l.jr    	r9	# delay slot filled
	l.lwz   	r2,-8(r1)	 # SI load
.L8:
.LM12:
	l.movhi  	r3,hi(.LC3)
.LVL1:
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LVL2:
.LM13:
	l.ori	r1,r2,0	# deallocate frame
.LM14:
	l.addi  	r11,r0,0	 # move immediate I
.LM15:
	l.lwz   	r9,-4(r1)	 # SI load
	l.jr    	r9	# delay slot filled
	l.lwz   	r2,-8(r1)	 # SI load
.LVL3:
.L7:
.LM16:
	l.lwz   	r3,4(r5)	 # SI load
.LVL4:
	l.addi  	r4,r0,0	 # move immediate I
.LVL5:
.LM17:
	l.ori	r1,r2,0	# deallocate frame
.LM18:
	l.ori   	r5,r4,0	 # move reg to reg
.LVL6:
.LM19:
	l.lwz   	r9,-4(r1)	 # SI load
.LM20:
	l.j	strtoul	# delay slot filled	# sibcall s
	l.lwz   	r2,-8(r1)	 # SI load
.LFE2:
	.size	iteration_setter, .-iteration_setter
	.global __floatsidf
	.global __divdf3
	.global __fixdfsi
	.section	.rodata.str1.1
.LC5:
	.string	"ms: %i\n"
.LC6:
	.string	"tacts: %i\n"
.LC7:
	.string	"real_tacts: %i\n"
.LC8:
	.string	"cpi: %i\n"
	.section	.rodata
	.align	4
.LC4:
	.long	1052821239
	.long	-1598689907
	.section .text
	.align	4
.proc	cpi
	.global cpi
	.type	cpi, @function
cpi:
.LFB3:
.LM21:
.LVL7:
	l.sw    	-8(r1),r2	 # SI store
.LCFI8:
	l.addi  	r2,r1,0
.LCFI9:
	l.sw    	-24(r1),r14	 # SI store
.LCFI10:
	l.sw    	-4(r1),r9	 # SI store
.LCFI11:
	l.sw    	-20(r1),r16	 # SI store
.LCFI12:
	l.sw    	-16(r1),r18	 # SI store
.LCFI13:
	l.sw    	-12(r1),r20	 # SI store
.LCFI14:
	l.addi	r1,r1,-28	# allocate frame
.LCFI15:
.LM22:
	l.sfeqi	r4,1
	l.bf	.L12	# delay slot filled
	l.ori   	r14,r3,0	 # move reg to reg
	l.sfgtsi	r4,1
	l.bnf	.L29	# delay slot filled
	l.sfeqi	r4,2
	l.bf	.L13	# delay slot filled
	l.sfeqi	r4,3
	l.bf	.L30	# delay slot filled
	l.movhi  	r5,hi(timestamp)
	l.addi  	r16,r0,0	 # move immediate I
.LVL8:
.L10:
.L31:
.LM23:
	l.jal   	__floatsidf	# delay slot filled
	l.ori   	r3,r16,0	 # move reg to reg
	l.movhi  	r5,hi(.LC4)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.ori   	r5,r5,lo(.LC4)
		l.lwz   	r6, 4(r5)
		l.lwz   	r5, 0(r5)
	l.jal   	__divdf3
	l.nop			# nop delay slot
.LM24:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi
	l.nop			# nop delay slot
.LM25:
	l.add   	r4,r14,r14
.LM26:
	l.movhi  	r3,hi(.LC5)
.LM27:
	l.add   	r4,r4,r14
.LM28:
	l.ori   	r3,r3,lo(.LC5)
.LM29:
	l.add   	r4,r4,r4
.LM30:
	l.ori   	r18,r11,0	 # move reg to reg
.LM31:
	l.sw    	0(r1),r16	 # SI store
.LVL9:
	l.jal   	printf	# delay slot filled
	l.sub   	r16,r11,r4
.LVL10:
.LM32:
	l.movhi  	r3,hi(.LC6)
	l.sw    	0(r1),r18	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC6)
.LM33:
	l.movhi  	r3,hi(.LC7)
	l.sw    	0(r1),r16	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC7)
.LM34:
	l.div   	r14,r16,r14
.LVL11:
.LM35:
	l.movhi  	r3,hi(.LC8)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC8)
.LM36:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-24(r1)	 # SI load
.LVL12:
	l.lwz   	r16,-20(r1)	 # SI load
.LVL13:
	l.lwz   	r18,-16(r1)	 # SI load
	l.jr    	r9	# delay slot filled
	l.lwz   	r20,-12(r1)	 # SI load
.LVL14:
.L13:
.LM37:
	l.movhi  	r5,hi(timestamp)
.LM38:
	l.sflesi	r3,0
.LM39:
	l.ori   	r5,r5,lo(timestamp)
	l.lwz   	r3,0(r5)	 # SI load
.LVL15:
.LM40:
	l.bf	.L22	# delay slot filled
	l.addi  	r4,r0,0	 # move immediate I
.LVL16:
.L21:
.LM41:
#APP
# 96 "hmcmd.c" 1
	l.div r20, r21, r22
# 0 "" 2
.LM42:
#NO_APP
	l.addi  	r4,r4,1
.LVL17:
	l.sfne 	r4,r14
	l.bf	.L21
	l.nop			# nop delay slot
.LVL18:
.L22:
.LM43:
	l.lwz   	r16,0(r5)	 # SI load
.LVL19:
.LM44:
	l.j     	.L10	# delay slot filled
	l.sub   	r16,r16,r3
.LVL20:
.L30:
.LM45:
	l.sflesi	r3,0
.LM46:
	l.ori   	r5,r5,lo(timestamp)
	l.lwz   	r3,0(r5)	 # SI load
.LVL21:
.LM47:
	l.bf	.L22	# delay slot filled
	l.addi  	r4,r0,0	 # move immediate I
.LVL22:
.L23:
.LM48:
#APP
# 104 "hmcmd.c" 1
	l.lbz r20, 0(r21)
# 0 "" 2
.LM49:
#NO_APP
	l.addi  	r4,r4,1
.LVL23:
	l.sfne 	r4,r14
	l.bf	.L23
	l.nop			# nop delay slot
.LM50:
	l.lwz   	r16,0(r5)	 # SI load
.LVL24:
	l.j     	.L10	# delay slot filled
	l.sub   	r16,r16,r3
.LVL25:
.L12:
.LM51:
	l.movhi  	r5,hi(timestamp)
.LM52:
	l.sflesi	r3,0
.LM53:
	l.ori   	r5,r5,lo(timestamp)
	l.lwz   	r3,0(r5)	 # SI load
.LVL26:
.LM54:
	l.bf	.L22	# delay slot filled
	l.addi  	r4,r0,0	 # move immediate I
.LVL27:
.L19:
.LM55:
#APP
# 88 "hmcmd.c" 1
	l.add r20, r21, r22
# 0 "" 2
.LM56:
#NO_APP
	l.addi  	r4,r4,1
.LVL28:
	l.sfne 	r4,r14
	l.bf	.L19
	l.nop			# nop delay slot
.LM57:
	l.lwz   	r16,0(r5)	 # SI load
.LVL29:
	l.j     	.L10	# delay slot filled
	l.sub   	r16,r16,r3
.LVL30:
.L29:
.LM58:
	l.sfeqi	r4,0
	l.bnf	.L31	# delay slot filled
	l.addi  	r16,r0,0	 # move immediate I
.LM59:
	l.movhi  	r5,hi(timestamp)
.LM60:
	l.sflesi	r3,0
.LM61:
	l.ori   	r5,r5,lo(timestamp)
	l.lwz   	r3,0(r5)	 # SI load
.LVL31:
.LM62:
	l.bf	.L22
	l.nop			# nop delay slot
.LVL32:
.L17:
.LM63:
#APP
# 80 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LM64:
#NO_APP
	l.addi  	r4,r4,1
.LVL33:
	l.sfne 	r4,r14
	l.bf	.L17
	l.nop			# nop delay slot
.LM65:
	l.lwz   	r16,0(r5)	 # SI load
.LVL34:
	l.j     	.L10	# delay slot filled
	l.sub   	r16,r16,r3
.LFE3:
	.size	cpi, .-cpi
	.section	.rodata.str1.1
.LC9:
	.string	"usage:  [no usage information available, yet] \n"
.LC10:
	.string	"cpi_nop"
.LC11:
	.string	"cpi_add"
.LC12:
	.string	"cpi_div"
.LC13:
	.string	"cpi_lbz"
.LC14:
	.string	"mips"
.LC15:
	.string	"number: %i\n"
.LC16:
	.string	"MIPS: %i\n"
.LC17:
	.string	"hello"
.LC18:
	.string	"Hello from University of Applied Sciences, Munich, Germany! \n"
	.section .text
	.align	4
.proc	hmcmd_cmd
	.global hmcmd_cmd
	.type	hmcmd_cmd, @function
hmcmd_cmd:
.LFB0:
.LM66:
.LVL35:
	l.sw    	-8(r1),r2	 # SI store
.LCFI16:
	l.addi  	r2,r1,0
.LCFI17:
	l.sw    	-20(r1),r14	 # SI store
.LCFI18:
	l.sw    	-16(r1),r16	 # SI store
.LCFI19:
	l.sw    	-4(r1),r9	 # SI store
.LCFI20:
	l.sw    	-12(r1),r18	 # SI store
.LCFI21:
	l.addi	r1,r1,-24	# allocate frame
.LCFI22:
.LM67:
	l.ori   	r14,r3,0	 # move reg to reg
.LM68:
	l.sfnei	r3,0
	l.bnf	.L60	# delay slot filled
	l.ori   	r16,r4,0	 # move reg to reg
.LM69:
	l.lwz   	r3,0(r4)	 # SI load
.LVL36:
	l.movhi  	r4,hi(.LC10)
.LVL37:
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC10)
	l.sfnei	r11,0
	l.bnf	.L61	# delay slot filled
	l.ori   	r18,r11,0	 # move reg to reg
.LM70:
	l.movhi  	r4,hi(.LC11)
	l.lwz   	r3,0(r16)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC11)
	l.sfnei	r11,0
	l.bnf	.L62	# delay slot filled
	l.ori   	r18,r11,0	 # move reg to reg
.LM71:
	l.movhi  	r4,hi(.LC12)
	l.lwz   	r3,0(r16)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC12)
	l.sfnei	r11,0
	l.bnf	.L63	# delay slot filled
	l.ori   	r18,r11,0	 # move reg to reg
.LM72:
	l.movhi  	r4,hi(.LC13)
	l.lwz   	r3,0(r16)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC13)
	l.sfnei	r11,0
	l.bnf	.L64	# delay slot filled
	l.ori   	r18,r11,0	 # move reg to reg
.LM73:
	l.movhi  	r4,hi(.LC14)
	l.lwz   	r3,0(r16)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC14)
	l.sfnei	r11,0
	l.bnf	.L65	# delay slot filled
	l.sfnei	r14,1
.LM74:
	l.bnf	.L66	# delay slot filled
	l.movhi  	r3,hi(.LC3)
.LM75:
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM76:
	l.j     	.L77	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.L61:
.LVL38:
.LBB14:
.LBB16:
.LM77:
	l.sfnei	r14,2
	l.bnf	.L67	# delay slot filled
	l.sfeqi	r14,1
.LM78:
	l.bnf	.L68	# delay slot filled
	l.movhi  	r3,hi(.LC3)
.LM79:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528
.LVL39:
.L37:
.LBE16:
.LBE14:
.LM80:
	l.jal   	cpi	# delay slot filled
	l.addi  	r4,r0,0	 # move immediate I
.LM81:
	l.ori	r1,r2,0	# deallocate frame
	l.addi  	r11,r0,0	 # move immediate I
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-20(r1)	 # SI load
.LVL40:
	l.lwz   	r16,-16(r1)	 # SI load
.LVL41:
	l.jr    	r9	# delay slot filled
	l.lwz   	r18,-12(r1)	 # SI load
.LVL42:
.L60:
.LM82:
	l.movhi  	r3,hi(.LC9)
.LVL43:
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC9)
.LVL44:
.L34:
.LM83:
	l.ori	r1,r2,0	# deallocate frame
.L77:
	l.addi  	r11,r0,0	 # move immediate I
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-20(r1)	 # SI load
	l.lwz   	r16,-16(r1)	 # SI load
	l.jr    	r9	# delay slot filled
	l.lwz   	r18,-12(r1)	 # SI load
.LVL45:
.L63:
.LBB18:
.LBB20:
.LM84:
	l.sfnei	r14,2
	l.bnf	.L69	# delay slot filled
	l.sfeqi	r14,1
.LM85:
	l.bnf	.L70
	l.nop			# nop delay slot
.LM86:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528
.LVL46:
.L43:
.LBE20:
.LBE18:
.LM87:
	l.jal   	cpi	# delay slot filled
	l.addi  	r4,r0,2	 # move immediate I
.LM88:
	l.j     	.L77	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL47:
.L68:
.LBB22:
.LBB15:
.LM89:
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM90:
	l.j     	.L37	# delay slot filled
	l.ori   	r3,r18,0	 # move reg to reg
.LVL48:
.L62:
.LBE15:
.LBE22:
.LBB23:
.LBB25:
.LM91:
	l.sfnei	r14,2
	l.bnf	.L71	# delay slot filled
	l.sfeqi	r14,1
.LM92:
	l.bnf	.L72	# delay slot filled
	l.movhi  	r3,hi(.LC3)
.LM93:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528
.LVL49:
.L40:
.LBE25:
.LBE23:
.LM94:
	l.jal   	cpi	# delay slot filled
	l.addi  	r4,r0,1	 # move immediate I
.LM95:
	l.ori	r1,r2,0	# deallocate frame
	l.addi  	r11,r0,0	 # move immediate I
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-20(r1)	 # SI load
.LVL50:
	l.lwz   	r16,-16(r1)	 # SI load
.LVL51:
	l.jr    	r9	# delay slot filled
	l.lwz   	r18,-12(r1)	 # SI load
.LVL52:
.L64:
.LBB27:
.LBB29:
.LM96:
	l.sfnei	r14,2
	l.bnf	.L73	# delay slot filled
	l.sfeqi	r14,1
.LM97:
	l.bnf	.L74
	l.nop			# nop delay slot
.LM98:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528
.LVL53:
.L46:
.LBE29:
.LBE27:
.LM99:
	l.jal   	cpi	# delay slot filled
	l.addi  	r4,r0,3	 # move immediate I
.LM100:
	l.j     	.L77	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL54:
.L72:
.LBB31:
.LBB24:
.LM101:
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM102:
	l.j     	.L40	# delay slot filled
	l.ori   	r3,r18,0	 # move reg to reg
.LVL55:
.L70:
.LBE24:
.LBE31:
.LBB32:
.LBB19:
.LM103:
	l.movhi  	r3,hi(.LC3)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM104:
	l.j     	.L43	# delay slot filled
	l.ori   	r3,r18,0	 # move reg to reg
.LVL56:
.L66:
.LBE19:
.LBE32:
.LM105:
	l.movhi  	r4,hi(.LC17)
	l.lwz   	r3,0(r16)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC17)
	l.sfnei	r11,0
	l.bf	.L34
	l.nop			# nop delay slot
.LM106:
	l.movhi  	r3,hi(.LC18)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC18)
.LM107:
	l.j     	.L77	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL57:
.L73:
.LBB33:
.LBB28:
.LM108:
	l.lwz   	r3,4(r16)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL58:
	l.j     	.L46	# delay slot filled
	l.ori   	r3,r11,0	 # move reg to reg
.LVL59:
.L67:
.LBE28:
.LBE33:
.LBB34:
.LBB17:
	l.lwz   	r3,4(r16)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL60:
	l.j     	.L37	# delay slot filled
	l.ori   	r3,r11,0	 # move reg to reg
.LVL61:
.L71:
.LBE17:
.LBE34:
.LBB35:
.LBB26:
	l.lwz   	r3,4(r16)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL62:
	l.j     	.L40	# delay slot filled
	l.ori   	r3,r11,0	 # move reg to reg
.LVL63:
.L74:
.LBE26:
.LBE35:
.LBB36:
.LBB30:
.LM109:
	l.movhi  	r3,hi(.LC3)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM110:
	l.j     	.L46	# delay slot filled
	l.ori   	r3,r18,0	 # move reg to reg
.LVL64:
.L65:
.LBE30:
.LBE36:
.LBB37:
.LBB38:
.LM111:
	l.sfnei	r14,2
	l.bnf	.L75	# delay slot filled
	l.sfeqi	r14,1
.LM112:
	l.bnf	.L76	# delay slot filled
	l.movhi  	r3,hi(.LC3)
	l.movhi 	r14,hi(109969408)	 # move immediate M
.LVL65:
.LM113:
	l.movhi 	r4,hi(9961472)	 # move immediate M
.LM114:
	l.ori   	r14,r14,30592
.LM115:
	l.ori   	r4,r4,38528
.LVL66:
.L49:
.LBE38:
.LBE37:
.LBB40:
.LBB41:
.LM116:
#APP
# 129 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LM117:
#NO_APP
	l.movhi  	r6,hi(timestamp)
.LM118:
	l.addi  	r5,r0,0	 # move immediate I
.LM119:
	l.ori   	r6,r6,lo(timestamp)
.LM120:
	l.sfles 	r4,r5
.LM121:
	l.lwz   	r16,0(r6)	 # SI load
.LVL67:
.LM122:
	l.bf	.L50
	l.nop			# nop delay slot
	l.ori   	r3,r5,0	 # move reg to reg
.LVL68:
	l.addi  	r3,r3,1
.LVL69:
.L78:
	l.sfne 	r3,r4
	l.bf	.L78	# delay slot filled
	l.addi  	r3,r3,1
	l.addi  	r3,r3,-1
	l.addi  	r5,r0,313	 # move immediate I
.LVL70:
.L50:
.LM123:
	l.lwz   	r18,0(r6)	 # SI load
.LVL71:
.LM124:
#APP
# 147 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL72:
.LM125:
#NO_APP
	l.movhi  	r3,hi(.LC15)
	l.sw    	0(r1),r5	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC15)
.LVL73:
.LM126:
	l.sub   	r5,r18,r16
.LM127:
	l.addi  	r4,r0,10000	 # move immediate I
	l.movhi  	r3,hi(.LC16)
	l.mul   	r4,r5,r4
	l.div   	r14,r14,r4
	l.ori   	r3,r3,lo(.LC16)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM128:
	l.j     	.L77	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL74:
.L69:
.LBE41:
.LBE40:
.LBB42:
.LBB21:
.LM129:
	l.lwz   	r3,4(r16)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL75:
	l.j     	.L43	# delay slot filled
	l.ori   	r3,r11,0	 # move reg to reg
.LVL76:
.L76:
.LBE21:
.LBE42:
.LBB43:
.LBB39:
.LM130:
	l.ori   	r14,r11,0	 # move reg to reg
.LVL77:
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM131:
	l.j     	.L49	# delay slot filled
	l.ori   	r4,r14,0	 # move reg to reg
.LVL78:
.L75:
.LM132:
	l.ori   	r4,r11,0	 # move reg to reg
	l.lwz   	r3,4(r16)	 # SI load
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
	l.slli  	r3,r11,3
	l.add   	r14,r11,r11
.LVL79:
	l.ori   	r4,r11,0	 # move reg to reg
.LVL80:
	l.add   	r14,r14,r3
	l.j     	.L49	# delay slot filled
	l.add   	r14,r14,r11
.LBE39:
.LBE43:
.LFE0:
	.size	hmcmd_cmd, .-hmcmd_cmd
	.align	4
.proc	mips_measurement
	.global mips_measurement
	.type	mips_measurement, @function
mips_measurement:
.LFB4:
.LM133:
.LVL81:
	l.sw    	-8(r1),r2	 # SI store
.LCFI23:
	l.addi  	r2,r1,0
.LCFI24:
	l.sw    	-4(r1),r9	 # SI store
.LCFI25:
	l.sw    	-20(r1),r14	 # SI store
.LCFI26:
	l.sw    	-16(r1),r16	 # SI store
.LCFI27:
	l.sw    	-12(r1),r18	 # SI store
.LCFI28:
	l.ori   	r14,r3,0	 # move reg to reg
	l.addi	r1,r1,-24	# allocate frame
.LCFI29:
.LM134:
#APP
# 129 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LM135:
#NO_APP
	l.movhi  	r3,hi(timestamp)
.LVL82:
.LM136:
	l.addi  	r4,r0,0	 # move immediate I
.LM137:
	l.ori   	r3,r3,lo(timestamp)
.LM138:
	l.sfles 	r14,r4
.LM139:
	l.lwz   	r16,0(r3)	 # SI load
.LVL83:
.LM140:
	l.bf	.L80
	l.nop			# nop delay slot
.LVL84:
	l.addi  	r4,r4,1
.LVL85:
.L84:
	l.sfne 	r4,r14
	l.bf	.L84	# delay slot filled
	l.addi  	r4,r4,1
	l.addi  	r4,r0,313	 # move immediate I
.LVL86:
.L80:
.LM141:
	l.lwz   	r18,0(r3)	 # SI load
.LVL87:
.LM142:
#APP
# 147 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL88:
.LM143:
#NO_APP
	l.movhi  	r3,hi(.LC15)
	l.sw    	0(r1),r4	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC15)
.LM144:
	l.sub   	r4,r18,r16
.LM145:
	l.addi  	r3,r0,10000	 # move immediate I
	l.slli  	r5,r14,3
	l.mul   	r4,r4,r3
	l.add   	r6,r14,r14
	l.movhi  	r3,hi(.LC16)
	l.add   	r5,r6,r5
	l.ori   	r3,r3,lo(.LC16)
	l.add   	r14,r5,r14
.LVL89:
	l.div   	r14,r14,r4
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM146:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-20(r1)	 # SI load
	l.lwz   	r16,-16(r1)	 # SI load
.LVL90:
	l.jr    	r9	# delay slot filled
	l.lwz   	r18,-12(r1)	 # SI load
.LFE4:
	.size	mips_measurement, .-mips_measurement
	.section	.debug_frame,"",@progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 -4
	.byte	0x9
	.byte	0xc
	.uleb128 0x1
	.uleb128 0x0
	.align	4
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI0-.LFB1
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI3-.LCFI1
	.byte	0x89
	.uleb128 0x1
	.align	4
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI7-.LCFI5
	.byte	0x89
	.uleb128 0x1
	.align	4
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI8-.LFB3
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI15-.LCFI9
	.byte	0x94
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5
	.byte	0x89
	.uleb128 0x1
	.byte	0x8e
	.uleb128 0x6
	.align	4
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI16-.LFB0
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI22-.LCFI17
	.byte	0x92
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x5
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI23-.LFB4
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI28-.LCFI24
	.byte	0x92
	.uleb128 0x3
	.byte	0x90
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x5
	.byte	0x89
	.uleb128 0x1
	.align	4
.LEFDE8:
	.section .text
.Letext0:
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LFB1-.Ltext0
	.4byte	.LCFI1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI1-.Ltext0
	.4byte	.LFE1-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST1:
	.4byte	.LFB2-.Ltext0
	.4byte	.LCFI5-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI5-.Ltext0
	.4byte	.LFE2-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST2:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL1-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL4-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST3:
	.4byte	.LVL0-.Ltext0
	.4byte	.LVL2-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL3-.Ltext0
	.4byte	.LVL5-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5-.Ltext0
	.4byte	.LVL6-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST4:
	.4byte	.LFB3-.Ltext0
	.4byte	.LCFI9-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI9-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST5:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL15-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL15-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST6:
	.4byte	.LVL7-.Ltext0
	.4byte	.LVL8-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL14-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL20-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL25-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL30-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST7:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL16-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17-.Ltext0
	.4byte	.LVL18-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL22-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL27-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL31-.Ltext0
	.4byte	.LVL32-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST8:
	.4byte	.LVL15-.Ltext0
	.4byte	.LVL20-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL21-.Ltext0
	.4byte	.LVL25-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL26-.Ltext0
	.4byte	.LVL30-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL31-.Ltext0
	.4byte	.LFE3-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST9:
	.4byte	0x0
	.4byte	0x0
.LLST10:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL9-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL10-1-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST11:
	.4byte	.LVL8-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST12:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST13:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL11-.Ltext0
	.2byte	0x6
	.byte	0x80
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL11-.Ltext0
	.4byte	.LVL12-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST14:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST15:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL43-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL37-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44-1-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL74-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL41-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL39-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL47-.Ltext0
	.4byte	.LVL48-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL59-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL56-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL50-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL62-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL54-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL52-.Ltext0
	.4byte	.LVL53-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL57-.Ltext0
	.4byte	.LVL58-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL76-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL64-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL76-.Ltext0
	.4byte	.LVL80-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL80-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL68-.Ltext0
	.4byte	.LVL70-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x139
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL66-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL67-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL74-.Ltext0
	.2byte	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI24-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI24-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL82-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL84-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x139
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL83-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL87-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL90-.Ltext0
	.2byte	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0x3ec
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF18
	.byte	0x1
	.4byte	.LASF19
	.4byte	.LASF20
	.4byte	.Ltext0
	.4byte	.Letext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.byte	0x4
	.4byte	0x4e
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3a
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.uleb128 0x5
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0x32
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST0
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF22
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.4byte	0xa4
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0x37
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x1
	.byte	0x37
	.4byte	0x48
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x1
	.byte	0x39
	.4byte	0x41
	.byte	0x0
	.uleb128 0x9
	.4byte	0x70
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LLST1
	.4byte	0xd5
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST2
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST3
	.uleb128 0xb
	.4byte	0x98
	.4byte	0x989680
	.byte	0x0
	.uleb128 0xc
	.byte	0x1
	.string	"cpi"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST4
	.4byte	0x17f
	.uleb128 0xd
	.4byte	.LASF7
	.byte	0x1
	.byte	0x44
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0xe
	.string	"cmd"
	.byte	0x1
	.byte	0x44
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x46
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x10
	.4byte	.LASF8
	.byte	0x1
	.byte	0x48
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0xf
	.string	"end"
	.byte	0x1
	.byte	0x49
	.4byte	0x41
	.4byte	.LLST9
	.uleb128 0x10
	.4byte	.LASF9
	.byte	0x1
	.byte	0x71
	.4byte	0x41
	.4byte	.LLST10
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x1
	.byte	0x72
	.4byte	0x17f
	.uleb128 0x10
	.4byte	.LASF11
	.byte	0x1
	.byte	0x73
	.4byte	0x41
	.4byte	.LLST11
	.uleb128 0x10
	.4byte	.LASF12
	.byte	0x1
	.byte	0x74
	.4byte	0x41
	.4byte	.LLST12
	.uleb128 0xf
	.string	"cpi"
	.byte	0x1
	.byte	0x75
	.4byte	0x41
	.4byte	.LLST13
	.byte	0x0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF13
	.uleb128 0x11
	.byte	0x1
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7c
	.byte	0x1
	.byte	0x1
	.4byte	0x1e0
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x1
	.byte	0x7c
	.4byte	0x41
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x7f
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF15
	.byte	0x1
	.byte	0x80
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF8
	.byte	0x1
	.byte	0x82
	.4byte	0x41
	.uleb128 0x12
	.string	"end"
	.byte	0x1
	.byte	0x92
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x94
	.4byte	0x41
	.byte	0x0
	.uleb128 0x13
	.byte	0x1
	.4byte	.LASF24
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST14
	.4byte	0x37e
	.uleb128 0xd
	.4byte	.LASF5
	.byte	0x1
	.byte	0x19
	.4byte	0x41
	.4byte	.LLST15
	.uleb128 0xd
	.4byte	.LASF6
	.byte	0x1
	.byte	0x19
	.4byte	0x48
	.4byte	.LLST16
	.uleb128 0x14
	.4byte	0x70
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0x1e
	.4byte	0x250
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST17
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST18
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0x20
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST19
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.4byte	0x70
	.4byte	.LBB18
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x22
	.4byte	0x285
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST20
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST21
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0x60
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST22
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.4byte	0x70
	.4byte	.LBB23
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x20
	.4byte	0x2ba
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST23
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST24
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0xa0
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST25
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.4byte	0x70
	.4byte	.LBB27
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0x24
	.4byte	0x2ef
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST26
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST27
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0xe0
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST28
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.4byte	0x70
	.4byte	.LBB37
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0x26
	.4byte	0x324
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST29
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST30
	.uleb128 0x15
	.4byte	.Ldebug_ranges0+0x118
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST31
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.4byte	0x186
	.4byte	.LBB40
	.4byte	.LBE40
	.byte	0x1
	.byte	0x26
	.uleb128 0xa
	.4byte	0x194
	.4byte	.LLST32
	.uleb128 0x18
	.4byte	.LBB41
	.4byte	.LBE41
	.uleb128 0x16
	.4byte	0x19f
	.4byte	.LLST33
	.uleb128 0x16
	.4byte	0x1a8
	.4byte	.LLST34
	.uleb128 0x16
	.4byte	0x1b3
	.4byte	.LLST35
	.uleb128 0x16
	.4byte	0x1be
	.4byte	.LLST36
	.uleb128 0x16
	.4byte	0x1c9
	.4byte	.LLST37
	.uleb128 0x16
	.4byte	0x1d4
	.4byte	.LLST38
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.4byte	0x186
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST39
	.4byte	0x3d0
	.uleb128 0xa
	.4byte	0x194
	.4byte	.LLST40
	.uleb128 0x16
	.4byte	0x19f
	.4byte	.LLST41
	.uleb128 0x16
	.4byte	0x1a8
	.4byte	.LLST42
	.uleb128 0x19
	.4byte	0x1b3
	.byte	0xb
	.uleb128 0x16
	.4byte	0x1be
	.4byte	.LLST43
	.uleb128 0x16
	.4byte	0x1c9
	.4byte	.LLST44
	.uleb128 0x16
	.4byte	0x1d4
	.4byte	.LLST45
	.byte	0x0
	.uleb128 0x1a
	.4byte	.LASF17
	.byte	0x2
	.byte	0x37
	.4byte	0x3dd
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.4byte	0x25
	.uleb128 0x1a
	.4byte	.LASF17
	.byte	0x2
	.byte	0x37
	.4byte	0x3dd
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.section	.debug_abbrev
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0x0
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0x0
	.byte	0x0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0x0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0x0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x8
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x12
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x0
	.byte	0x0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0x0
	.byte	0x0
	.uleb128 0x1b
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x3f0
	.4byte	0x5b
	.string	"module_hmcmd_init"
	.4byte	0xa4
	.string	"iteration_setter"
	.4byte	0xd5
	.string	"cpi"
	.4byte	0x1e0
	.string	"hmcmd_cmd"
	.4byte	0x37e
	.string	"mips_measurement"
	.4byte	0x0
	.section	.debug_pubtypes,"",@progbits
	.4byte	0xe
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x3f0
	.4byte	0x0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0x0
	.2byte	0x0
	.2byte	0x0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14-.Ltext0
	.4byte	.LBE14-.Ltext0
	.4byte	.LBB34-.Ltext0
	.4byte	.LBE34-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB15-.Ltext0
	.4byte	.LBE15-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB35-.Ltext0
	.4byte	.LBE35-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB25-.Ltext0
	.4byte	.LBE25-.Ltext0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB24-.Ltext0
	.4byte	.LBE24-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.section	.debug_line
	.4byte	.LELT0-.LSLT0
.LSLT0:
	.2byte	0x2
	.4byte	.LELTP0-.LASLTP0
.LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf5
	.byte	0xa
	.byte	0x0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x1
	.ascii	"/home/openrisc/soc-design/orpmon/include"
	.byte	0
	.byte	0x0
	.string	"hmcmd.c"
	.uleb128 0x0
	.uleb128 0x0
	.uleb128 0x0
	.string	"support.h"
	.uleb128 0x1
	.uleb128 0x0
	.uleb128 0x0
	.byte	0x0
.LELTP0:
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM1
	.byte	0x46
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM2
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM3
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM4
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM5
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM6
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM7
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM8
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM9
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM10
	.byte	0xb
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM11
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM12
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM13
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM14
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM15
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM16
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM17
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM18
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM19
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM20
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM21
	.byte	0x1d
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM22
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM23
	.byte	0x3b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM24
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM25
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM26
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM27
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM28
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM29
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM30
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM31
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM32
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM33
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM34
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM35
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM36
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM37
	.byte	0x3
	.sleb128 -28
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM38
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM39
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM40
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM41
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM42
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM43
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM44
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM45
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM46
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM47
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM48
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM49
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM50
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM51
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM52
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM53
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM54
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM55
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM56
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM57
	.byte	0x27
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM58
	.byte	0x3
	.sleb128 -31
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM59
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM60
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM61
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM62
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM63
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM64
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM65
	.byte	0x2f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM66
	.byte	0x3
	.sleb128 -80
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM71
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM73
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM78
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM79
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM80
	.byte	0x3
	.sleb128 -27
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM81
	.byte	0x26
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM82
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM83
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM84
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM85
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM86
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM87
	.byte	0x3
	.sleb128 -23
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM88
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM89
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM90
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM91
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM92
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM93
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM94
	.byte	0x3
	.sleb128 -25
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM95
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM96
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM97
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM98
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM99
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM100
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM101
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM102
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM103
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM104
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM105
	.byte	0x3
	.sleb128 -23
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM106
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM107
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM108
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM109
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM110
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM111
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM112
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM113
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM114
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM115
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM116
	.byte	0x5c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM117
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM118
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM119
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM120
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM121
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM122
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM123
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM124
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM125
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM126
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM127
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM128
	.byte	0x3
	.sleb128 -102
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM129
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM130
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM131
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM132
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM133
	.byte	0x55
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM134
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM135
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM136
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM137
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM138
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM139
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM140
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM141
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM142
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM143
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM144
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM145
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM146
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"timestamp"
.LASF10:
	.string	"tacts"
.LASF8:
	.string	"start"
.LASF12:
	.string	"real_tacts"
.LASF2:
	.string	"unsigned char"
.LASF0:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF7:
	.string	"iterations"
.LASF23:
	.string	"mips_measurement"
.LASF21:
	.string	"module_hmcmd_init"
.LASF9:
	.string	"elapsed_ms"
.LASF13:
	.string	"double"
.LASF20:
	.string	"/home/openrisc/soc-design/orpmon/cmds"
.LASF18:
	.string	"GNU C 4.5.1-or32-1.0rc4"
.LASF3:
	.string	"char"
.LASF11:
	.string	"for_tacts"
.LASF16:
	.string	"time"
.LASF14:
	.string	"number"
.LASF5:
	.string	"argc"
.LASF19:
	.string	"hmcmd.c"
.LASF22:
	.string	"iteration_setter"
.LASF24:
	.string	"hmcmd_cmd"
.LASF6:
	.string	"argv"
.LASF15:
	.string	"instructions"
.LASF4:
	.string	"long int"
	.ident	"GCC: (OpenRISC 32-bit toolchain for or32-elf (built 20111013)) 4.5.1-or32-1.0rc4"
