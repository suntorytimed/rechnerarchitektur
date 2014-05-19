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
.LBB4:
.LBB5:
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
.LBE5:
.LBE4:
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
# 118 "hmcmd.c" 1
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
# 126 "hmcmd.c" 1
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
# 110 "hmcmd.c" 1
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
# 102 "hmcmd.c" 1
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
	.string	"number: %i\n"
.LC10:
	.string	"MIPS: %i\n"
	.section .text
	.align	4
.proc	mips_measurement
	.global mips_measurement
	.type	mips_measurement, @function
mips_measurement:
.LFB4:
.LM66:
.LVL35:
	l.sw    	-8(r1),r2	 # SI store
.LCFI16:
	l.addi  	r2,r1,0
.LCFI17:
	l.sw    	-4(r1),r9	 # SI store
.LCFI18:
	l.sw    	-20(r1),r14	 # SI store
.LCFI19:
	l.sw    	-16(r1),r16	 # SI store
.LCFI20:
	l.sw    	-12(r1),r18	 # SI store
.LCFI21:
	l.ori   	r14,r3,0	 # move reg to reg
	l.addi	r1,r1,-24	# allocate frame
.LCFI22:
.LM67:
#APP
# 143 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LM68:
#NO_APP
	l.movhi  	r3,hi(timestamp)
.LVL36:
.LM69:
	l.addi  	r4,r0,0	 # move immediate I
.LM70:
	l.ori   	r3,r3,lo(timestamp)
.LM71:
	l.sfles 	r14,r4
.LM72:
	l.lwz   	r16,0(r3)	 # SI load
.LVL37:
.LM73:
	l.bf	.L33
	l.nop			# nop delay slot
.LVL38:
	l.addi  	r4,r4,1
.LVL39:
.L37:
	l.sfne 	r4,r14
	l.bf	.L37	# delay slot filled
	l.addi  	r4,r4,1
	l.addi  	r4,r0,313	 # move immediate I
.LVL40:
.L33:
.LM74:
	l.lwz   	r18,0(r3)	 # SI load
.LVL41:
.LM75:
#APP
# 161 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL42:
.LM76:
#NO_APP
	l.movhi  	r3,hi(.LC9)
	l.sw    	0(r1),r4	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC9)
.LM77:
	l.sub   	r4,r18,r16
.LM78:
	l.addi  	r3,r0,10000	 # move immediate I
	l.slli  	r5,r14,3
	l.mul   	r4,r4,r3
	l.add   	r6,r14,r14
	l.movhi  	r3,hi(.LC10)
	l.add   	r5,r6,r5
	l.ori   	r3,r3,lo(.LC10)
	l.add   	r14,r5,r14
.LVL43:
	l.div   	r14,r14,r4
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM79:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-20(r1)	 # SI load
	l.lwz   	r16,-16(r1)	 # SI load
.LVL44:
	l.jr    	r9	# delay slot filled
	l.lwz   	r18,-12(r1)	 # SI load
.LFE4:
	.size	mips_measurement, .-mips_measurement
	.section	.rodata.str1.1
.LC12:
	.string	"cpi success: %i\n"
.LC13:
	.string	"cpi not: %i\n"
	.section	.rodata
	.align	4
.LC11:
	.long	1052821239
	.long	-1598689907
	.section .text
	.align	4
.proc	branch
	.global branch
	.type	branch, @function
branch:
.LFB5:
.LM80:
.LVL45:
	l.sw    	-8(r1),r2	 # SI store
.LCFI23:
	l.sw    	-28(r1),r16	 # SI store
.LCFI24:
	l.addi  	r2,r1,0
.LCFI25:
.LM81:
	l.movhi  	r16,hi(timestamp)
.LM82:
	l.sw    	-32(r1),r14	 # SI store
.LCFI26:
	l.sw    	-4(r1),r9	 # SI store
.LCFI27:
	l.sw    	-24(r1),r18	 # SI store
.LCFI28:
	l.sw    	-20(r1),r20	 # SI store
.LCFI29:
	l.sw    	-16(r1),r22	 # SI store
.LCFI30:
	l.sw    	-12(r1),r24	 # SI store
.LCFI31:
.LM83:
	l.ori   	r16,r16,lo(timestamp)
.LM84:
	l.addi	r1,r1,-36	# allocate frame
.LCFI32:
.LM85:
	l.ori   	r14,r3,0	 # move reg to reg
.LM86:
	l.lwz   	r3,0(r16)	 # SI load
.LVL46:
.LM87:
	l.sflesi	r14,0
	l.bf	.L39	# delay slot filled
	l.addi  	r4,r0,0	 # move immediate I
.LM88:
	l.addi  	r5,r0,1	 # move immediate I
.LVL47:
.L40:
#APP
# 177 "hmcmd.c" 1
	l.sfgtsi r5,0
l.bf 1f
1:

# 0 "" 2
.LM89:
#NO_APP
	l.addi  	r4,r4,1
.LVL48:
	l.sfne 	r4,r14
	l.bf	.L40
	l.nop			# nop delay slot
.LVL49:
.L39:
.LM90:
	l.lwz   	r24,0(r16)	 # SI load
.LVL50:
.LBB10:
.LBB11:
.LM91:
	l.movhi  	r22,hi(.LC11)
.LM92:
	l.sub   	r24,r24,r3
.LVL51:
.LM93:
	l.ori   	r22,r22,lo(.LC11)
	l.ori   	r3,r24,0	 # move reg to reg
.LVL52:
	l.jal   	__floatsidf	# delay slot filled
	l.add   	r18,r14,r14
		l.lwz   	r5, 0(r22)
		l.lwz   	r6, 4(r22)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__divdf3	# delay slot filled
	l.add   	r18,r18,r14
.LM94:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi	# delay slot filled
	l.add   	r18,r18,r18
.LM95:
	l.movhi  	r3,hi(.LC5)
.LM96:
	l.ori   	r20,r11,0	 # move reg to reg
.LM97:
	l.ori   	r3,r3,lo(.LC5)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r24	 # SI store
.LM98:
	l.movhi  	r3,hi(.LC6)
	l.ori   	r3,r3,lo(.LC6)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LVL53:
.LM99:
	l.movhi  	r3,hi(.LC7)
.LM100:
	l.sub   	r20,r20,r18
.LVL54:
.LM101:
	l.ori   	r3,r3,lo(.LC7)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LM102:
	l.div   	r20,r20,r14
.LVL55:
.LBE11:
.LBE10:
.LM103:
	l.movhi  	r3,hi(.LC12)
	l.sw    	0(r1),r20	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC12)
.LM104:
	l.lwz   	r3,0(r16)	 # SI load
.LVL56:
.LM105:
	l.sflesi	r14,0
	l.bf	.L41	# delay slot filled
	l.addi  	r4,r0,0	 # move immediate I
.LM106:
	l.addi  	r5,r0,1	 # move immediate I
.LVL57:
.L42:
#APP
# 190 "hmcmd.c" 1
	l.sfgtsi r5,0
l.bnf 1f
1:

# 0 "" 2
.LM107:
#NO_APP
	l.addi  	r4,r4,1
.LVL58:
	l.sfne 	r4,r14
	l.bf	.L42
	l.nop			# nop delay slot
.LVL59:
.L41:
.LM108:
	l.lwz   	r20,0(r16)	 # SI load
.LVL60:
.LBB12:
.LBB13:
.LM109:
	l.sub   	r20,r20,r3
.LVL61:
.LM110:
	l.jal   	__floatsidf	# delay slot filled
	l.ori   	r3,r20,0	 # move reg to reg
		l.lwz   	r5, 0(r22)
		l.lwz   	r6, 4(r22)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__divdf3
	l.nop			# nop delay slot
.LM111:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi
	l.nop			# nop delay slot
.LM112:
	l.movhi  	r3,hi(.LC5)
.LM113:
	l.ori   	r16,r11,0	 # move reg to reg
.LM114:
	l.ori   	r3,r3,lo(.LC5)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LM115:
	l.movhi  	r3,hi(.LC6)
	l.sw    	0(r1),r16	 # SI store
	l.ori   	r3,r3,lo(.LC6)
	l.jal   	printf	# delay slot filled
	l.sub   	r16,r16,r18
.LVL62:
.LM116:
	l.movhi  	r3,hi(.LC7)
	l.sw    	0(r1),r16	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC7)
.LM117:
	l.div   	r14,r16,r14
.LVL63:
.LBE13:
.LBE12:
.LM118:
	l.movhi  	r3,hi(.LC13)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC13)
.LM119:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-32(r1)	 # SI load
.LVL64:
	l.lwz   	r16,-28(r1)	 # SI load
.LVL65:
	l.lwz   	r18,-24(r1)	 # SI load
.LVL66:
	l.lwz   	r20,-20(r1)	 # SI load
.LVL67:
	l.lwz   	r22,-16(r1)	 # SI load
.LVL68:
	l.jr    	r9	# delay slot filled
	l.lwz   	r24,-12(r1)	 # SI load
.LFE5:
	.size	branch, .-branch
	.section	.rodata
	.align	4
.LC14:
	.long	1052821239
	.long	-1598689907
	.section .text
	.align	4
.proc	cpi_calc
	.global cpi_calc
	.type	cpi_calc, @function
cpi_calc:
.LFB6:
.LM120:
.LVL69:
	l.sw    	-8(r1),r2	 # SI store
.LCFI33:
	l.sw    	-12(r1),r20	 # SI store
.LCFI34:
	l.addi  	r2,r1,0
.LCFI35:
.LM121:
	l.sub   	r20,r5,r4
.LVL70:
.LM122:
	l.sw    	-4(r1),r9	 # SI store
.LCFI36:
	l.sw    	-24(r1),r14	 # SI store
.LCFI37:
	l.sw    	-20(r1),r16	 # SI store
.LCFI38:
	l.ori   	r14,r3,0	 # move reg to reg
.LVL71:
	l.sw    	-16(r1),r18	 # SI store
.LCFI39:
.LM123:
	l.ori   	r3,r20,0	 # move reg to reg
.LVL72:
.LM124:
	l.addi	r1,r1,-28	# allocate frame
.LCFI40:
.LM125:
	l.jal   	__floatsidf	# delay slot filled
	l.add   	r16,r14,r14
.LVL73:
	l.movhi  	r5,hi(.LC14)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.ori   	r5,r5,lo(.LC14)
		l.lwz   	r6, 4(r5)
		l.lwz   	r5, 0(r5)
	l.jal   	__divdf3	# delay slot filled
	l.add   	r16,r16,r14
.LM126:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi	# delay slot filled
	l.add   	r16,r16,r16
.LM127:
	l.movhi  	r3,hi(.LC5)
	l.ori   	r3,r3,lo(.LC5)
.LM128:
	l.sub   	r16,r11,r16
.LVL74:
	l.ori   	r18,r11,0	 # move reg to reg
.LM129:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r20	 # SI store
.LM130:
	l.movhi  	r3,hi(.LC6)
	l.sw    	0(r1),r18	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC6)
.LM131:
	l.movhi  	r3,hi(.LC7)
	l.sw    	0(r1),r16	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC7)
.LM132:
	l.ori	r1,r2,0	# deallocate frame
	l.div   	r11,r16,r14
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-24(r1)	 # SI load
.LVL75:
	l.lwz   	r16,-20(r1)	 # SI load
.LVL76:
	l.lwz   	r18,-16(r1)	 # SI load
.LVL77:
	l.jr    	r9	# delay slot filled
	l.lwz   	r20,-12(r1)	 # SI load
.LFE6:
	.size	cpi_calc, .-cpi_calc
	.section	.rodata.str1.1
.LC15:
	.string	"Number of positive elements: %i\n"
	.section	.rodata
	.align	4
.LC16:
	.long	1052821239
	.long	-1598689907
	.section .text
	.align	4
.proc	do_count
	.global do_count
	.type	do_count, @function
do_count:
.LFB7:
.LM133:
.LVL78:
	l.sw    	-8(r1),r2	 # SI store
.LCFI41:
	l.addi  	r2,r1,0
.LCFI42:
	l.sw    	-4(r1),r9	 # SI store
.LCFI43:
.LM134:
	l.addi  	r8,r2,-416
.LM135:
	l.sw    	-16(r1),r14	 # SI store
.LCFI44:
	l.sw    	-12(r1),r16	 # SI store
.LCFI45:
	l.addi  	r3,r0,-1000	 # move immediate I
	l.addi	r1,r1,-420	# allocate frame
.LCFI46:
.LM136:
	l.ori   	r4,r8,0	 # move reg to reg
.LVL79:
.L47:
.LM137:
	l.sw    	0(r4),r3	 # SI store
	l.addi  	r3,r3,1
.LM138:
	l.sfnei	r3,-900
	l.bf	.L47	# delay slot filled
	l.addi  	r4,r4,4
.LVL80:
.LM139:
	l.movhi  	r11,hi(timestamp)
	l.movhi 	r3,hi(65536)	 # move immediate M
	l.ori   	r11,r11,lo(timestamp)
	l.ori   	r3,r3,34464
	l.lwz   	r12,0(r11)	 # SI load
.LVL81:
.L48:
.LM140:
#APP
# 229 "hmcmd.c" 1
	l.addi r5,r0,0
l.addi r4,r0,0
l.addi r6,r8,0
0:
l.lwz r7,0(r6)
l.sfgtsi r7,0
l.bnf 1f
l.addi r6,r6,4
l.addi r4,r4,1
1:
l.sfeqi r5, 100-1
l.bnf 0b
l.addi r5,r5,1

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1
.LM141:
	l.sfnei	r3,0
	l.bf	.L48
	l.nop			# nop delay slot
.LM142:
	l.movhi  	r3,hi(.LC15)
.LM143:
	l.lwz   	r16,0(r11)	 # SI load
.LVL82:
.LM144:
	l.ori   	r3,r3,lo(.LC15)
.LBB16:
.LBB18:
.LM145:
	l.sub   	r16,r16,r12
.LVL83:
.LBE18:
.LBE16:
.LM146:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r4	 # SI store
.LVL84:
.LBB21:
.LBB19:
.LM147:
	l.jal   	__floatsidf	# delay slot filled
	l.ori   	r3,r16,0	 # move reg to reg
	l.movhi  	r5,hi(.LC16)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.ori   	r5,r5,lo(.LC16)
		l.lwz   	r6, 4(r5)
		l.lwz   	r5, 0(r5)
	l.jal   	__divdf3
	l.nop			# nop delay slot
.LM148:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi
	l.nop			# nop delay slot
.LM149:
	l.movhi  	r3,hi(.LC5)
.LM150:
	l.ori   	r14,r11,0	 # move reg to reg
.LM151:
	l.ori   	r3,r3,lo(.LC5)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r16	 # SI store
.LM152:
	l.movhi  	r3,hi(.LC6)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC6)
.LM153:
	l.movhi 	r3,hi(-655360)	 # move immediate M
	l.ori   	r3,r3,55360
	l.add   	r14,r14,r3
.LVL85:
.LM154:
	l.movhi  	r3,hi(.LC7)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC7)
.LM155:
	l.movhi 	r4,hi(65536)	 # move immediate M
.LBE19:
.LBE21:
.LM156:
	l.movhi  	r3,hi(.LC8)
.LBB22:
.LBB17:
.LM157:
	l.ori   	r4,r4,34464
.LBE17:
.LBE22:
.LM158:
	l.ori   	r3,r3,lo(.LC8)
.LBB23:
.LBB20:
.LM159:
	l.div   	r14,r14,r4
.LVL86:
.LBE20:
.LBE23:
.LM160:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM161:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-16(r1)	 # SI load
.LVL87:
	l.jr    	r9	# delay slot filled
	l.lwz   	r16,-12(r1)	 # SI load
.LFE7:
	.size	do_count, .-do_count
	.section	.rodata
	.align	4
.LC17:
	.long	1052821239
	.long	-1598689907
	.section .text
	.align	4
.proc	do_count_cmov
	.global do_count_cmov
	.type	do_count_cmov, @function
do_count_cmov:
.LFB8:
.LM162:
.LVL88:
	l.sw    	-8(r1),r2	 # SI store
.LCFI47:
	l.addi  	r2,r1,0
.LCFI48:
	l.sw    	-4(r1),r9	 # SI store
.LCFI49:
.LM163:
	l.addi  	r8,r2,-416
.LM164:
	l.sw    	-16(r1),r14	 # SI store
.LCFI50:
	l.sw    	-12(r1),r16	 # SI store
.LCFI51:
	l.addi  	r3,r0,-1000	 # move immediate I
	l.addi	r1,r1,-420	# allocate frame
.LCFI52:
.LM165:
	l.ori   	r4,r8,0	 # move reg to reg
.LVL89:
.L52:
.LM166:
	l.sw    	0(r4),r3	 # SI store
	l.addi  	r3,r3,1
.LM167:
	l.sfnei	r3,-900
	l.bf	.L52	# delay slot filled
	l.addi  	r4,r4,4
.LVL90:
.LM168:
	l.movhi  	r11,hi(timestamp)
	l.movhi 	r3,hi(65536)	 # move immediate M
	l.ori   	r11,r11,lo(timestamp)
	l.ori   	r3,r3,34464
	l.lwz   	r12,0(r11)	 # SI load
.LVL91:
.L53:
.LM169:
#APP
# 268 "hmcmd.c" 1
	l.addi r5,r0,0
l.addi r4,r0,0
l.addi r6,r8,0
0:
l.lwz r7,0(r6)
l.addi r60,r4,1
l.sfgtsi r7,0
l.cmov r4,r60,r4
l.addi r6,r6,4
l.sfeqi r5, 100-1
l.bnf 0b
l.addi r5,r5,1

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1
.LM170:
	l.sfnei	r3,0
	l.bf	.L53
	l.nop			# nop delay slot
.LM171:
	l.movhi  	r3,hi(.LC15)
.LM172:
	l.lwz   	r16,0(r11)	 # SI load
.LVL92:
.LM173:
	l.ori   	r3,r3,lo(.LC15)
.LBB26:
.LBB28:
.LM174:
	l.sub   	r16,r16,r12
.LVL93:
.LBE28:
.LBE26:
.LM175:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r4	 # SI store
.LVL94:
.LBB31:
.LBB29:
.LM176:
	l.jal   	__floatsidf	# delay slot filled
	l.ori   	r3,r16,0	 # move reg to reg
	l.movhi  	r5,hi(.LC17)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.ori   	r5,r5,lo(.LC17)
		l.lwz   	r6, 4(r5)
		l.lwz   	r5, 0(r5)
	l.jal   	__divdf3
	l.nop			# nop delay slot
.LM177:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi
	l.nop			# nop delay slot
.LM178:
	l.movhi  	r3,hi(.LC5)
.LM179:
	l.ori   	r14,r11,0	 # move reg to reg
.LM180:
	l.ori   	r3,r3,lo(.LC5)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r16	 # SI store
.LM181:
	l.movhi  	r3,hi(.LC6)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC6)
.LM182:
	l.movhi 	r3,hi(-655360)	 # move immediate M
	l.ori   	r3,r3,55360
	l.add   	r14,r14,r3
.LVL95:
.LM183:
	l.movhi  	r3,hi(.LC7)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC7)
.LM184:
	l.movhi 	r4,hi(65536)	 # move immediate M
.LBE29:
.LBE31:
.LM185:
	l.movhi  	r3,hi(.LC8)
.LBB32:
.LBB27:
.LM186:
	l.ori   	r4,r4,34464
.LBE27:
.LBE32:
.LM187:
	l.ori   	r3,r3,lo(.LC8)
.LBB33:
.LBB30:
.LM188:
	l.div   	r14,r14,r4
.LVL96:
.LBE30:
.LBE33:
.LM189:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM190:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-16(r1)	 # SI load
.LVL97:
	l.jr    	r9	# delay slot filled
	l.lwz   	r16,-12(r1)	 # SI load
.LFE8:
	.size	do_count_cmov, .-do_count_cmov
	.section	.rodata
	.align	4
.LC18:
	.long	1052821239
	.long	-1598689907
	.section .text
	.align	4
.proc	do_count_partial
	.global do_count_partial
	.type	do_count_partial, @function
do_count_partial:
.LFB9:
.LM191:
.LVL98:
	l.sw    	-8(r1),r2	 # SI store
.LCFI53:
	l.addi  	r2,r1,0
.LCFI54:
	l.sw    	-4(r1),r9	 # SI store
.LCFI55:
.LM192:
	l.addi  	r8,r2,-416
.LM193:
	l.sw    	-16(r1),r14	 # SI store
.LCFI56:
	l.sw    	-12(r1),r16	 # SI store
.LCFI57:
	l.addi  	r3,r0,-1000	 # move immediate I
	l.addi	r1,r1,-420	# allocate frame
.LCFI58:
.LM194:
	l.ori   	r4,r8,0	 # move reg to reg
.LVL99:
.L57:
.LM195:
	l.sw    	0(r4),r3	 # SI store
	l.addi  	r3,r3,1
.LM196:
	l.sfnei	r3,-900
	l.bf	.L57	# delay slot filled
	l.addi  	r4,r4,4
.LVL100:
.LM197:
	l.movhi  	r11,hi(timestamp)
	l.movhi 	r3,hi(65536)	 # move immediate M
	l.ori   	r11,r11,lo(timestamp)
	l.ori   	r3,r3,34464
	l.lwz   	r12,0(r11)	 # SI load
.LVL101:
.L58:
.LM198:
#APP
# 306 "hmcmd.c" 1
	l.addi r5,r0,0
l.addi r4,r0,0
l.addi r6,r8,0
0:
l.lwz r7,0(r6)
l.addi r60,r4,1
l.sfgtsi r7,0
l.cmov r4,r60,r4
l.addi r6,r6,4
l.lwz r7,0(r6)
l.addi r60,r4,1
l.sfgtsi r7,0
l.cmov r4,r60,r4
l.addi r6,r6,4
l.lwz r7,0(r6)
l.addi r60,r4,1
l.sfgtsi r7,0
l.cmov r4,r60,r4
l.addi r6,r6,4
l.lwz r7,0(r6)
l.addi r60,r4,1
l.sfgtsi r7,0
l.cmov r4,r60,r4
l.addi r6,r6,4
l.sfeqi r5, 100-4
l.bnf 0b
l.addi r5,r5,4

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1
.LM199:
	l.sfnei	r3,0
	l.bf	.L58
	l.nop			# nop delay slot
.LM200:
	l.movhi  	r3,hi(.LC15)
.LM201:
	l.lwz   	r16,0(r11)	 # SI load
.LVL102:
.LM202:
	l.ori   	r3,r3,lo(.LC15)
.LBB36:
.LBB38:
.LM203:
	l.sub   	r16,r16,r12
.LVL103:
.LBE38:
.LBE36:
.LM204:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r4	 # SI store
.LVL104:
.LBB41:
.LBB39:
.LM205:
	l.jal   	__floatsidf	# delay slot filled
	l.ori   	r3,r16,0	 # move reg to reg
	l.movhi  	r5,hi(.LC18)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.ori   	r5,r5,lo(.LC18)
		l.lwz   	r6, 4(r5)
		l.lwz   	r5, 0(r5)
	l.jal   	__divdf3
	l.nop			# nop delay slot
.LM206:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi
	l.nop			# nop delay slot
.LM207:
	l.movhi  	r3,hi(.LC5)
.LM208:
	l.ori   	r14,r11,0	 # move reg to reg
.LM209:
	l.ori   	r3,r3,lo(.LC5)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r16	 # SI store
.LM210:
	l.movhi  	r3,hi(.LC6)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC6)
.LM211:
	l.movhi 	r3,hi(-655360)	 # move immediate M
	l.ori   	r3,r3,55360
	l.add   	r14,r14,r3
.LVL105:
.LM212:
	l.movhi  	r3,hi(.LC7)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC7)
.LM213:
	l.movhi 	r4,hi(65536)	 # move immediate M
.LBE39:
.LBE41:
.LM214:
	l.movhi  	r3,hi(.LC8)
.LBB42:
.LBB37:
.LM215:
	l.ori   	r4,r4,34464
.LBE37:
.LBE42:
.LM216:
	l.ori   	r3,r3,lo(.LC8)
.LBB43:
.LBB40:
.LM217:
	l.div   	r14,r14,r4
.LVL106:
.LBE40:
.LBE43:
.LM218:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM219:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-16(r1)	 # SI load
.LVL107:
	l.jr    	r9	# delay slot filled
	l.lwz   	r16,-12(r1)	 # SI load
.LFE9:
	.size	do_count_partial, .-do_count_partial
	.section	.rodata
	.align	4
.LC19:
	.long	1052821239
	.long	-1598689907
	.section .text
	.align	4
.proc	raw
	.global raw
	.type	raw, @function
raw:
.LFB10:
.LM220:
.LVL108:
	l.sw    	-8(r1),r2	 # SI store
.LCFI59:
.LM221:
	l.movhi  	r4,hi(timestamp)
.LM222:
	l.addi  	r2,r1,0
.LCFI60:
	l.sw    	-4(r1),r9	 # SI store
.LCFI61:
	l.sw    	-24(r1),r14	 # SI store
.LCFI62:
	l.sw    	-20(r1),r16	 # SI store
.LCFI63:
	l.sw    	-16(r1),r20	 # SI store
.LCFI64:
	l.sw    	-12(r1),r30	 # SI store
.LCFI65:
.LM223:
	l.ori   	r4,r4,lo(timestamp)
.LM224:
	l.addi	r1,r1,-28	# allocate frame
.LCFI66:
.LM225:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.lwz   	r5,0(r4)	 # SI load
.LVL109:
	l.ori   	r3,r3,38528
.LVL110:
.L62:
.LM226:
#APP
# 360 "hmcmd.c" 1
	l.add r20, r21, r22
l.add r30, r20, r31

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1
.LM227:
	l.sfnei	r3,0
	l.bf	.L62
	l.nop			# nop delay slot
.LM228:
	l.lwz   	r16,0(r4)	 # SI load
.LVL111:
.LBB46:
.LBB48:
.LM229:
	l.sub   	r16,r16,r5
.LVL112:
.LM230:
	l.jal   	__floatsidf	# delay slot filled
	l.ori   	r3,r16,0	 # move reg to reg
.LVL113:
	l.movhi  	r5,hi(.LC19)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.ori   	r5,r5,lo(.LC19)
		l.lwz   	r6, 4(r5)
		l.lwz   	r5, 0(r5)
	l.jal   	__divdf3
	l.nop			# nop delay slot
.LM231:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi
	l.nop			# nop delay slot
.LM232:
	l.movhi  	r3,hi(.LC5)
.LM233:
	l.ori   	r14,r11,0	 # move reg to reg
.LM234:
	l.ori   	r3,r3,lo(.LC5)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r16	 # SI store
.LM235:
	l.movhi  	r3,hi(.LC6)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC6)
.LM236:
	l.movhi 	r3,hi(-60030976)	 # move immediate M
	l.ori   	r3,r3,30976
	l.add   	r14,r14,r3
.LVL114:
.LM237:
	l.movhi  	r3,hi(.LC7)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC7)
.LM238:
	l.movhi 	r4,hi(9961472)	 # move immediate M
.LBE48:
.LBE46:
.LM239:
	l.movhi  	r3,hi(.LC8)
.LBB50:
.LBB47:
.LM240:
	l.ori   	r4,r4,38528
.LBE47:
.LBE50:
.LM241:
	l.ori   	r3,r3,lo(.LC8)
.LBB51:
.LBB49:
.LM242:
	l.div   	r14,r14,r4
.LVL115:
.LBE49:
.LBE51:
.LM243:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM244:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-24(r1)	 # SI load
	l.lwz   	r16,-20(r1)	 # SI load
.LVL116:
	l.lwz   	r20,-16(r1)	 # SI load
	l.jr    	r9	# delay slot filled
	l.lwz   	r30,-12(r1)	 # SI load
.LFE10:
	.size	raw, .-raw
	.section	.rodata
	.align	4
.LC20:
	.long	1052821239
	.long	-1598689907
	.section .text
	.align	4
.proc	not_raw
	.global not_raw
	.type	not_raw, @function
not_raw:
.LFB11:
.LM245:
.LVL117:
	l.sw    	-8(r1),r2	 # SI store
.LCFI67:
.LM246:
	l.movhi  	r4,hi(timestamp)
.LM247:
	l.addi  	r2,r1,0
.LCFI68:
	l.sw    	-4(r1),r9	 # SI store
.LCFI69:
	l.sw    	-24(r1),r14	 # SI store
.LCFI70:
	l.sw    	-20(r1),r16	 # SI store
.LCFI71:
	l.sw    	-16(r1),r20	 # SI store
.LCFI72:
	l.sw    	-12(r1),r30	 # SI store
.LCFI73:
.LM248:
	l.ori   	r4,r4,lo(timestamp)
.LM249:
	l.addi	r1,r1,-28	# allocate frame
.LCFI74:
.LM250:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.lwz   	r5,0(r4)	 # SI load
.LVL118:
	l.ori   	r3,r3,38528
.LVL119:
.L65:
.LM251:
#APP
# 375 "hmcmd.c" 1
	l.add r20, r21, r22
l.add r30, r32, r31

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1
.LM252:
	l.sfnei	r3,0
	l.bf	.L65
	l.nop			# nop delay slot
.LM253:
	l.lwz   	r16,0(r4)	 # SI load
.LVL120:
.LBB54:
.LBB56:
.LM254:
	l.sub   	r16,r16,r5
.LVL121:
.LM255:
	l.jal   	__floatsidf	# delay slot filled
	l.ori   	r3,r16,0	 # move reg to reg
.LVL122:
	l.movhi  	r5,hi(.LC20)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.ori   	r5,r5,lo(.LC20)
		l.lwz   	r6, 4(r5)
		l.lwz   	r5, 0(r5)
	l.jal   	__divdf3
	l.nop			# nop delay slot
.LM256:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi
	l.nop			# nop delay slot
.LM257:
	l.movhi  	r3,hi(.LC5)
.LM258:
	l.ori   	r14,r11,0	 # move reg to reg
.LM259:
	l.ori   	r3,r3,lo(.LC5)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r16	 # SI store
.LM260:
	l.movhi  	r3,hi(.LC6)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC6)
.LM261:
	l.movhi 	r3,hi(-60030976)	 # move immediate M
	l.ori   	r3,r3,30976
	l.add   	r14,r14,r3
.LVL123:
.LM262:
	l.movhi  	r3,hi(.LC7)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC7)
.LM263:
	l.movhi 	r4,hi(9961472)	 # move immediate M
.LBE56:
.LBE54:
.LM264:
	l.movhi  	r3,hi(.LC8)
.LBB58:
.LBB55:
.LM265:
	l.ori   	r4,r4,38528
.LBE55:
.LBE58:
.LM266:
	l.ori   	r3,r3,lo(.LC8)
.LBB59:
.LBB57:
.LM267:
	l.div   	r14,r14,r4
.LVL124:
.LBE57:
.LBE59:
.LM268:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM269:
	l.ori	r1,r2,0	# deallocate frame
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-24(r1)	 # SI load
	l.lwz   	r16,-20(r1)	 # SI load
.LVL125:
	l.lwz   	r20,-16(r1)	 # SI load
	l.jr    	r9	# delay slot filled
	l.lwz   	r30,-12(r1)	 # SI load
.LFE11:
	.size	not_raw, .-not_raw
	.section	.rodata.str1.1
.LC21:
	.string	"usage:  [no usage information available, yet] \n"
.LC22:
	.string	"cpi_nop"
.LC23:
	.string	"cpi_add"
.LC24:
	.string	"cpi_div"
.LC25:
	.string	"cpi_lbz"
.LC26:
	.string	"branch"
.LC27:
	.string	"mips"
.LC28:
	.string	"do_count"
.LC29:
	.string	"do_count_cmov"
.LC30:
	.string	"do_count_partial"
.LC31:
	.string	"raw"
.LC33:
	.string	"not_raw"
.LC34:
	.string	"hello"
.LC35:
	.string	"Hello from University of Applied Sciences, Munich, Germany! \n"
	.section	.rodata
	.align	4
.LC32:
	.long	1052821239
	.long	-1598689907
	.section .text
	.align	4
.proc	hmcmd_cmd
	.global hmcmd_cmd
	.type	hmcmd_cmd, @function
hmcmd_cmd:
.LFB0:
.LM270:
.LVL126:
	l.sw    	-8(r1),r2	 # SI store
.LCFI75:
	l.addi  	r2,r1,0
.LCFI76:
	l.sw    	-28(r1),r14	 # SI store
.LCFI77:
	l.sw    	-24(r1),r16	 # SI store
.LCFI78:
	l.sw    	-4(r1),r9	 # SI store
.LCFI79:
	l.sw    	-20(r1),r18	 # SI store
.LCFI80:
	l.sw    	-16(r1),r20	 # SI store
.LCFI81:
	l.sw    	-12(r1),r30	 # SI store
.LCFI82:
	l.addi	r1,r1,-32	# allocate frame
.LCFI83:
.LM271:
	l.ori   	r16,r3,0	 # move reg to reg
.LM272:
	l.sfnei	r3,0
	l.bnf	.L106	# delay slot filled
	l.ori   	r14,r4,0	 # move reg to reg
.LM273:
	l.lwz   	r3,0(r4)	 # SI load
.LVL127:
	l.movhi  	r4,hi(.LC22)
.LVL128:
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC22)
	l.sfnei	r11,0
	l.bnf	.L107	# delay slot filled
	l.ori   	r18,r11,0	 # move reg to reg
.LM274:
	l.movhi  	r4,hi(.LC23)
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC23)
	l.sfnei	r11,0
	l.bnf	.L108	# delay slot filled
	l.ori   	r18,r11,0	 # move reg to reg
.LM275:
	l.movhi  	r4,hi(.LC24)
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC24)
	l.sfnei	r11,0
	l.bnf	.L109	# delay slot filled
	l.ori   	r18,r11,0	 # move reg to reg
.LM276:
	l.movhi  	r4,hi(.LC25)
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC25)
	l.sfnei	r11,0
	l.bnf	.L110	# delay slot filled
	l.ori   	r18,r11,0	 # move reg to reg
.LM277:
	l.movhi  	r4,hi(.LC26)
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC26)
	l.sfnei	r11,0
	l.bnf	.L111	# delay slot filled
	l.ori   	r18,r11,0	 # move reg to reg
.LM278:
	l.movhi  	r4,hi(.LC27)
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC27)
	l.sfnei	r11,0
	l.bnf	.L112	# delay slot filled
	l.movhi  	r4,hi(.LC28)
.LM279:
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC28)
	l.sfnei	r11,0
	l.bnf	.L113	# delay slot filled
	l.movhi  	r4,hi(.LC29)
.LM280:
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC29)
	l.sfnei	r11,0
	l.bnf	.L114	# delay slot filled
	l.movhi  	r4,hi(.LC30)
.LM281:
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC30)
	l.sfnei	r11,0
	l.bnf	.L115	# delay slot filled
	l.movhi  	r4,hi(.LC31)
.LM282:
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC31)
	l.sfnei	r11,0
	l.bnf	.L116	# delay slot filled
	l.movhi  	r4,hi(.LC33)
.LM283:
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC33)
	l.sfnei	r11,0
	l.bnf	.L117	# delay slot filled
	l.sfnei	r16,1
.LM284:
	l.bnf	.L118	# delay slot filled
	l.movhi  	r3,hi(.LC3)
.LM285:
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM286:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.L107:
.LVL129:
.LBB78:
.LBB80:
.LM287:
	l.sfnei	r16,2
	l.bnf	.L119	# delay slot filled
	l.sfeqi	r16,1
.LM288:
	l.bnf	.L120
	l.nop			# nop delay slot
.LM289:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528
.LVL130:
.L72:
.LBE80:
.LBE78:
.LM290:
	l.jal   	cpi	# delay slot filled
	l.addi  	r4,r0,0	 # move immediate I
.LM291:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL131:
.L106:
.LM292:
	l.movhi  	r3,hi(.LC21)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC21)
.LVL132:
.L69:
.LM293:
	l.ori	r1,r2,0	# deallocate frame
.L131:
	l.addi  	r11,r0,0	 # move immediate I
	l.lwz   	r9,-4(r1)	 # SI load
	l.lwz   	r2,-8(r1)	 # SI load
	l.lwz   	r14,-28(r1)	 # SI load
	l.lwz   	r16,-24(r1)	 # SI load
	l.lwz   	r18,-20(r1)	 # SI load
	l.lwz   	r20,-16(r1)	 # SI load
	l.jr    	r9	# delay slot filled
	l.lwz   	r30,-12(r1)	 # SI load
.LVL133:
.L109:
.LBB82:
.LBB84:
.LM294:
	l.sfnei	r16,2
	l.bnf	.L121	# delay slot filled
	l.sfeqi	r16,1
.LM295:
	l.bnf	.L122
	l.nop			# nop delay slot
.LM296:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528
.LVL134:
.L78:
.LBE84:
.LBE82:
.LM297:
	l.jal   	cpi	# delay slot filled
	l.addi  	r4,r0,2	 # move immediate I
.LM298:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL135:
.L120:
.LBB86:
.LBB79:
.LM299:
	l.movhi  	r3,hi(.LC3)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM300:
	l.j     	.L72	# delay slot filled
	l.ori   	r3,r18,0	 # move reg to reg
.LVL136:
.L108:
.LBE79:
.LBE86:
.LBB87:
.LBB89:
.LM301:
	l.sfnei	r16,2
	l.bnf	.L123	# delay slot filled
	l.sfeqi	r16,1
.LM302:
	l.bnf	.L124
	l.nop			# nop delay slot
.LM303:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528
.LVL137:
.L75:
.LBE89:
.LBE87:
.LM304:
	l.jal   	cpi	# delay slot filled
	l.addi  	r4,r0,1	 # move immediate I
.LM305:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL138:
.L110:
.LBB91:
.LBB93:
.LM306:
	l.sfnei	r16,2
	l.bnf	.L125	# delay slot filled
	l.sfeqi	r16,1
.LM307:
	l.bnf	.L126
	l.nop			# nop delay slot
.LM308:
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r3,r3,38528
.LVL139:
.L81:
.LBE93:
.LBE91:
.LM309:
	l.jal   	cpi	# delay slot filled
	l.addi  	r4,r0,3	 # move immediate I
.LM310:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL140:
.L124:
.LBB95:
.LBB88:
.LM311:
	l.movhi  	r3,hi(.LC3)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM312:
	l.j     	.L75	# delay slot filled
	l.ori   	r3,r18,0	 # move reg to reg
.LVL141:
.L122:
.LBE88:
.LBE95:
.LBB96:
.LBB83:
.LM313:
	l.movhi  	r3,hi(.LC3)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM314:
	l.j     	.L78	# delay slot filled
	l.ori   	r3,r18,0	 # move reg to reg
.LVL142:
.L112:
.LBE83:
.LBE96:
.LBB97:
.LBB99:
.LM315:
	l.sfnei	r16,2
	l.bnf	.L127	# delay slot filled
	l.sfeqi	r16,1
.LM316:
	l.bnf	.L128	# delay slot filled
	l.movhi  	r3,hi(.LC3)
	l.movhi 	r14,hi(109969408)	 # move immediate M
.LVL143:
.LM317:
	l.movhi 	r11,hi(9961472)	 # move immediate M
.LM318:
	l.ori   	r14,r14,30592
.LM319:
	l.ori   	r11,r11,38528
.LVL144:
.L87:
.LBE99:
.LBE97:
.LBB101:
.LBB102:
.LM320:
#APP
# 143 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LM321:
#NO_APP
	l.movhi  	r5,hi(timestamp)
.LM322:
	l.addi  	r4,r0,0	 # move immediate I
.LM323:
	l.ori   	r5,r5,lo(timestamp)
.LM324:
	l.sfles 	r11,r4
.LM325:
	l.lwz   	r16,0(r5)	 # SI load
.LVL145:
.LM326:
	l.bf	.L88
	l.nop			# nop delay slot
	l.ori   	r3,r4,0	 # move reg to reg
.LVL146:
	l.addi  	r3,r3,1
.LVL147:
.L132:
	l.sfne 	r3,r11
	l.bf	.L132	# delay slot filled
	l.addi  	r3,r3,1
	l.addi  	r3,r3,-1
	l.addi  	r4,r0,313	 # move immediate I
.LVL148:
.L88:
.LM327:
	l.lwz   	r18,0(r5)	 # SI load
.LVL149:
.LM328:
#APP
# 161 "hmcmd.c" 1
	l.nop
# 0 "" 2
.LVL150:
.LM329:
#NO_APP
	l.movhi  	r3,hi(.LC9)
	l.sw    	0(r1),r4	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC9)
.LVL151:
.LM330:
	l.sub   	r5,r18,r16
.LM331:
	l.addi  	r4,r0,10000	 # move immediate I
	l.movhi  	r3,hi(.LC10)
	l.mul   	r4,r5,r4
	l.div   	r14,r14,r4
	l.ori   	r3,r3,lo(.LC10)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM332:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL152:
.L125:
.LBE102:
.LBE101:
.LBB103:
.LBB92:
.LM333:
	l.lwz   	r3,4(r14)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL153:
	l.j     	.L81	# delay slot filled
	l.ori   	r3,r11,0	 # move reg to reg
.LVL154:
.L111:
.LBE92:
.LBE103:
.LBB104:
.LBB106:
.LM334:
	l.sfnei	r16,2
	l.bnf	.L129	# delay slot filled
	l.sfeqi	r16,1
.LM335:
	l.bnf	.L130
	l.nop			# nop delay slot
.LM336:
	l.movhi 	r3,hi(9961472)	 # move immediate M
.LBE106:
.LBE104:
.LM337:
	l.jal   	branch	# delay slot filled
	l.ori   	r3,r3,38528
.LM338:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL155:
.L119:
.LBB108:
.LBB81:
.LM339:
	l.lwz   	r3,4(r14)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL156:
	l.j     	.L72	# delay slot filled
	l.ori   	r3,r11,0	 # move reg to reg
.LVL157:
.L123:
.LBE81:
.LBE108:
.LBB109:
.LBB90:
	l.lwz   	r3,4(r14)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL158:
	l.j     	.L75	# delay slot filled
	l.ori   	r3,r11,0	 # move reg to reg
.LVL159:
.L126:
.LBE90:
.LBE109:
.LBB110:
.LBB94:
.LM340:
	l.movhi  	r3,hi(.LC3)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM341:
	l.j     	.L81	# delay slot filled
	l.ori   	r3,r18,0	 # move reg to reg
.LVL160:
.L113:
.LBE94:
.LBE110:
.LM342:
	l.jal   	do_count
	l.nop			# nop delay slot
.LM343:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL161:
.L121:
.LBB111:
.LBB85:
.LM344:
	l.lwz   	r3,4(r14)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL162:
	l.j     	.L78	# delay slot filled
	l.ori   	r3,r11,0	 # move reg to reg
.LVL163:
.L130:
.LBE85:
.LBE111:
.LBB112:
.LBB105:
.LM345:
	l.movhi  	r3,hi(.LC3)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LBE105:
.LBE112:
.LM346:
	l.jal   	branch	# delay slot filled
	l.ori   	r3,r18,0	 # move reg to reg
.LM347:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL164:
.L114:
.LM348:
	l.jal   	do_count_cmov
	l.nop			# nop delay slot
.LM349:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL165:
.L128:
.LBB113:
.LBB98:
.LM350:
	l.ori   	r14,r11,0	 # move reg to reg
.LVL166:
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC3)
.LM351:
	l.j     	.L87	# delay slot filled
	l.ori   	r11,r14,0	 # move reg to reg
.LVL167:
.L115:
.LBE98:
.LBE113:
.LM352:
	l.jal   	do_count_partial
	l.nop			# nop delay slot
.LM353:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL168:
.L129:
.LBB114:
.LBB107:
.LM354:
	l.lwz   	r3,4(r14)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL169:
.LBE107:
.LBE114:
.LM355:
	l.jal   	branch	# delay slot filled
	l.ori   	r3,r11,0	 # move reg to reg
.LVL170:
.LM356:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL171:
.L116:
.LBB115:
.LBB116:
.LM357:
	l.movhi  	r5,hi(timestamp)
	l.movhi 	r3,hi(9961472)	 # move immediate M
	l.ori   	r5,r5,lo(timestamp)
	l.ori   	r3,r3,38528
	l.lwz   	r4,0(r5)	 # SI load
.LVL172:
.L94:
.LM358:
#APP
# 360 "hmcmd.c" 1
	l.add r20, r21, r22
l.add r30, r20, r31

# 0 "" 2
#NO_APP
	l.addi  	r3,r3,-1
.LM359:
	l.sfnei	r3,0
	l.bf	.L94
	l.nop			# nop delay slot
.LM360:
	l.lwz   	r16,0(r5)	 # SI load
.LVL173:
.LBB117:
.LBB119:
.LM361:
	l.sub   	r16,r16,r4
.LVL174:
.LM362:
	l.jal   	__floatsidf	# delay slot filled
	l.ori   	r3,r16,0	 # move reg to reg
.LVL175:
	l.movhi  	r5,hi(.LC32)
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.ori   	r5,r5,lo(.LC32)
		l.lwz   	r6, 4(r5)
		l.lwz   	r5, 0(r5)
	l.jal   	__divdf3
	l.nop			# nop delay slot
.LM363:
		l.or    	r3, r11, r0
		l.or    	r4, r12, r0
	l.jal   	__fixdfsi
	l.nop			# nop delay slot
.LM364:
	l.movhi  	r3,hi(.LC5)
.LM365:
	l.ori   	r14,r11,0	 # move reg to reg
.LVL176:
.LM366:
	l.ori   	r3,r3,lo(.LC5)
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r16	 # SI store
.LM367:
	l.movhi  	r3,hi(.LC6)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC6)
.LM368:
	l.movhi 	r3,hi(-60030976)	 # move immediate M
	l.ori   	r3,r3,30976
	l.add   	r14,r14,r3
.LVL177:
.LM369:
	l.movhi  	r3,hi(.LC7)
	l.sw    	0(r1),r14	 # SI store
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC7)
.LM370:
	l.movhi 	r4,hi(9961472)	 # move immediate M
.LBE119:
.LBE117:
.LM371:
	l.movhi  	r3,hi(.LC8)
.LBB121:
.LBB118:
.LM372:
	l.ori   	r4,r4,38528
.LBE118:
.LBE121:
.LM373:
	l.ori   	r3,r3,lo(.LC8)
.LBB122:
.LBB120:
.LM374:
	l.div   	r14,r14,r4
.LVL178:
.LBE120:
.LBE122:
.LM375:
	l.jal   	printf	# delay slot filled
	l.sw    	0(r1),r14	 # SI store
.LM376:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LVL179:
.L127:
.LBE116:
.LBE115:
.LBB123:
.LBB100:
.LM377:
	l.lwz   	r3,4(r14)	 # SI load
	l.ori   	r4,r11,0	 # move reg to reg
	l.jal   	strtoul	# delay slot filled
	l.ori   	r5,r11,0	 # move reg to reg
.LVL180:
	l.slli  	r3,r11,3
	l.add   	r14,r11,r11
.LVL181:
	l.add   	r14,r14,r3
	l.j     	.L87	# delay slot filled
	l.add   	r14,r14,r11
.LVL182:
.L118:
.LBE100:
.LBE123:
.LM378:
	l.movhi  	r4,hi(.LC34)
	l.lwz   	r3,0(r14)	 # SI load
	l.jal   	strcmp	# delay slot filled
	l.ori   	r4,r4,lo(.LC34)
	l.sfnei	r11,0
	l.bf	.L69
	l.nop			# nop delay slot
.LM379:
	l.movhi  	r3,hi(.LC35)
	l.jal   	printf	# delay slot filled
	l.ori   	r3,r3,lo(.LC35)
.LM380:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.L117:
.LM381:
	l.jal   	not_raw
	l.nop			# nop delay slot
.LM382:
	l.j     	.L131	# delay slot filled
	l.ori	r1,r2,0	# deallocate frame
.LFE0:
	.size	hmcmd_cmd, .-hmcmd_cmd
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI16-.LFB4
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI21-.LCFI17
	.byte	0x92
	.uleb128 0x3
	.byte	0x90
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x5
	.byte	0x89
	.uleb128 0x1
	.align	4
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI24-.LFB5
	.byte	0x90
	.uleb128 0x7
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI32-.LCFI25
	.byte	0x98
	.uleb128 0x3
	.byte	0x96
	.uleb128 0x4
	.byte	0x94
	.uleb128 0x5
	.byte	0x92
	.uleb128 0x6
	.byte	0x89
	.uleb128 0x1
	.byte	0x8e
	.uleb128 0x8
	.align	4
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI34-.LFB6
	.byte	0x94
	.uleb128 0x3
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI38-.LCFI35
	.byte	0x90
	.uleb128 0x5
	.byte	0x8e
	.uleb128 0x6
	.byte	0x89
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI40-.LCFI38
	.byte	0x92
	.uleb128 0x4
	.align	4
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI41-.LFB7
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI46-.LCFI42
	.byte	0x90
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
	.byte	0x89
	.uleb128 0x1
	.align	4
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI47-.LFB8
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI52-.LCFI48
	.byte	0x90
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
	.byte	0x89
	.uleb128 0x1
	.align	4
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI53-.LFB9
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI58-.LCFI54
	.byte	0x90
	.uleb128 0x3
	.byte	0x8e
	.uleb128 0x4
	.byte	0x89
	.uleb128 0x1
	.align	4
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI59-.LFB10
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI66-.LCFI60
	.byte	0x9e
	.uleb128 0x3
	.byte	0x94
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5
	.byte	0x8e
	.uleb128 0x6
	.byte	0x89
	.uleb128 0x1
	.align	4
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI67-.LFB11
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI74-.LCFI68
	.byte	0x9e
	.uleb128 0x3
	.byte	0x94
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x5
	.byte	0x8e
	.uleb128 0x6
	.byte	0x89
	.uleb128 0x1
	.align	4
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI75-.LFB0
	.byte	0x82
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xd
	.uleb128 0x2
	.byte	0x4
	.4byte	.LCFI83-.LCFI76
	.byte	0x9e
	.uleb128 0x3
	.byte	0x94
	.uleb128 0x4
	.byte	0x92
	.uleb128 0x5
	.byte	0x89
	.uleb128 0x1
	.byte	0x90
	.uleb128 0x6
	.byte	0x8e
	.uleb128 0x7
	.align	4
.LEFDE22:
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
	.4byte	.LVL11-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST11:
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
.LLST12:
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
.LLST13:
	.4byte	.LVL9-.Ltext0
	.4byte	.LVL13-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST14:
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
.LLST15:
	.4byte	.LFB4-.Ltext0
	.4byte	.LCFI17-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI17-.Ltext0
	.4byte	.LFE4-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST16:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL36-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-.Ltext0
	.4byte	.LVL43-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST17:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL39-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST18:
	.4byte	.LVL35-.Ltext0
	.4byte	.LVL38-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38-.Ltext0
	.4byte	.LVL40-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x139
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST19:
	.4byte	.LVL37-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST20:
	.4byte	.LVL41-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST21:
	.4byte	.LVL42-.Ltext0
	.4byte	.LVL44-.Ltext0
	.2byte	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST22:
	.4byte	.LFB5-.Ltext0
	.4byte	.LCFI25-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI25-.Ltext0
	.4byte	.LFE5-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST23:
	.4byte	.LVL45-.Ltext0
	.4byte	.LVL46-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST24:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL47-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48-.Ltext0
	.4byte	.LVL49-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL57-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58-.Ltext0
	.4byte	.LVL59-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST25:
	.4byte	.LVL46-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL56-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST26:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST27:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL51-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST28:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL52-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST29:
	.4byte	.LVL50-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST30:
	.4byte	.LVL51-.Ltext0
	.4byte	.LVL68-.Ltext0
	.2byte	0x1
	.byte	0x68
	.4byte	0x0
	.4byte	0x0
.LLST31:
	.4byte	.LVL53-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST32:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST33:
	.4byte	.LVL54-.Ltext0
	.4byte	.LVL55-.Ltext0
	.2byte	0x6
	.byte	0x84
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL55-.Ltext0
	.4byte	.LVL60-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST34:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST35:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL61-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST36:
	.4byte	.LVL60-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST37:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL67-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST38:
	.4byte	.LVL61-.Ltext0
	.4byte	.LVL66-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST39:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL65-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST40:
	.4byte	.LVL62-.Ltext0
	.4byte	.LVL63-.Ltext0
	.2byte	0x6
	.byte	0x80
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL63-.Ltext0
	.4byte	.LVL64-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST41:
	.4byte	.LFB6-.Ltext0
	.4byte	.LCFI35-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI35-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST42:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST43:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST44:
	.4byte	.LVL69-.Ltext0
	.4byte	.LVL73-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST45:
	.4byte	.LVL70-.Ltext0
	.4byte	.LVL77-.Ltext0
	.2byte	0x1
	.byte	0x64
	.4byte	0x0
	.4byte	0x0
.LLST46:
	.4byte	.LVL71-.Ltext0
	.4byte	.LVL72-.Ltext0
	.2byte	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x9f
	.4byte	.LVL72-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x5
	.byte	0x7e
	.sleb128 0
	.byte	0x36
	.byte	0x1e
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST47:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL76-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST48:
	.4byte	.LVL74-.Ltext0
	.4byte	.LVL75-.Ltext0
	.2byte	0x6
	.byte	0x80
	.sleb128 0
	.byte	0x7e
	.sleb128 0
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL75-.Ltext0
	.4byte	.LFE6-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST49:
	.4byte	.LFB7-.Ltext0
	.4byte	.LCFI42-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI42-.Ltext0
	.4byte	.LFE7-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST50:
	.4byte	.LVL81-.Ltext0
	.4byte	.LVL84-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST51:
	.4byte	.LVL82-.Ltext0
	.4byte	.LVL83-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST52:
	.4byte	.LVL78-.Ltext0
	.4byte	.LVL79-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST53:
	.4byte	0x0
	.4byte	0x0
.LLST54:
	.4byte	.LVL80-.Ltext0
	.4byte	.LVL81-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST55:
	.4byte	.LVL84-.Ltext0
	.4byte	.LVL87-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST56:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST57:
	.4byte	.LVL85-.Ltext0
	.4byte	.LVL86-.Ltext0
	.2byte	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0xc
	.4byte	0x186a0
	.byte	0x1b
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST58:
	.4byte	.LFB8-.Ltext0
	.4byte	.LCFI48-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI48-.Ltext0
	.4byte	.LFE8-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST59:
	.4byte	.LVL91-.Ltext0
	.4byte	.LVL94-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST60:
	.4byte	.LVL92-.Ltext0
	.4byte	.LVL93-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST61:
	.4byte	.LVL88-.Ltext0
	.4byte	.LVL89-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST62:
	.4byte	0x0
	.4byte	0x0
.LLST63:
	.4byte	.LVL90-.Ltext0
	.4byte	.LVL91-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST64:
	.4byte	.LVL94-.Ltext0
	.4byte	.LVL97-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST65:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST66:
	.4byte	.LVL95-.Ltext0
	.4byte	.LVL96-.Ltext0
	.2byte	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0xc
	.4byte	0x186a0
	.byte	0x1b
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST67:
	.4byte	.LFB9-.Ltext0
	.4byte	.LCFI54-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI54-.Ltext0
	.4byte	.LFE9-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST68:
	.4byte	.LVL101-.Ltext0
	.4byte	.LVL104-1-.Ltext0
	.2byte	0x1
	.byte	0x5c
	.4byte	0x0
	.4byte	0x0
.LLST69:
	.4byte	.LVL102-.Ltext0
	.4byte	.LVL103-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST70:
	.4byte	.LVL98-.Ltext0
	.4byte	.LVL99-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST71:
	.4byte	0x0
	.4byte	0x0
.LLST72:
	.4byte	.LVL100-.Ltext0
	.4byte	.LVL101-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST73:
	.4byte	.LVL104-.Ltext0
	.4byte	.LVL107-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST74:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST75:
	.4byte	.LVL105-.Ltext0
	.4byte	.LVL106-.Ltext0
	.2byte	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0xc
	.4byte	0x186a0
	.byte	0x1b
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST76:
	.4byte	.LFB10-.Ltext0
	.4byte	.LCFI60-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI60-.Ltext0
	.4byte	.LFE10-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST77:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL110-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST78:
	.4byte	.LVL109-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST79:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST80:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL112-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST81:
	.4byte	.LVL111-.Ltext0
	.4byte	.LVL113-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST82:
	.4byte	.LVL112-.Ltext0
	.4byte	.LVL116-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST83:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST84:
	.4byte	.LVL114-.Ltext0
	.4byte	.LVL115-.Ltext0
	.2byte	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0xc
	.4byte	0x989680
	.byte	0x1b
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST85:
	.4byte	.LFB11-.Ltext0
	.4byte	.LCFI68-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI68-.Ltext0
	.4byte	.LFE11-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST86:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL119-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST87:
	.4byte	.LVL118-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST88:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST89:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL121-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST90:
	.4byte	.LVL120-.Ltext0
	.4byte	.LVL122-1-.Ltext0
	.2byte	0x1
	.byte	0x55
	.4byte	0x0
	.4byte	0x0
.LLST91:
	.4byte	.LVL121-.Ltext0
	.4byte	.LVL125-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST92:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST93:
	.4byte	.LVL123-.Ltext0
	.4byte	.LVL124-.Ltext0
	.2byte	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0xc
	.4byte	0x989680
	.byte	0x1b
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST94:
	.4byte	.LFB0-.Ltext0
	.4byte	.LCFI76-.Ltext0
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LCFI76-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0x0
	.4byte	0x0
.LLST95:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL127-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL127-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL173-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL179-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST96:
	.4byte	.LVL126-.Ltext0
	.4byte	.LVL128-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL128-.Ltext0
	.4byte	.LVL132-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL167-.Ltext0
	.4byte	.LVL176-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL182-.Ltext0
	.4byte	.LFE0-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST97:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST98:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL131-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST99:
	.4byte	.LVL129-.Ltext0
	.4byte	.LVL130-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL135-.Ltext0
	.4byte	.LVL136-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL155-.Ltext0
	.4byte	.LVL156-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL156-.Ltext0
	.4byte	.LVL157-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST100:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST101:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL135-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST102:
	.4byte	.LVL133-.Ltext0
	.4byte	.LVL134-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL141-.Ltext0
	.4byte	.LVL142-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL161-.Ltext0
	.4byte	.LVL162-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL162-.Ltext0
	.4byte	.LVL163-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST103:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST104:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL138-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST105:
	.4byte	.LVL136-.Ltext0
	.4byte	.LVL137-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL140-.Ltext0
	.4byte	.LVL141-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL157-.Ltext0
	.4byte	.LVL158-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL158-.Ltext0
	.4byte	.LVL159-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST106:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST107:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL140-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST108:
	.4byte	.LVL138-.Ltext0
	.4byte	.LVL139-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL152-.Ltext0
	.4byte	.LVL153-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL153-.Ltext0
	.4byte	.LVL154-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL159-.Ltext0
	.4byte	.LVL160-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST109:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL143-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL166-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL181-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST110:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL145-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST111:
	.4byte	.LVL142-.Ltext0
	.4byte	.LVL144-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL165-.Ltext0
	.4byte	.LVL167-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL179-.Ltext0
	.4byte	.LVL180-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL180-.Ltext0
	.4byte	.LVL182-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST112:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL151-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST113:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL147-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x1
	.byte	0x53
	.4byte	0x0
	.4byte	0x0
.LLST114:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL146-.Ltext0
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146-.Ltext0
	.4byte	.LVL148-.Ltext0
	.2byte	0x4
	.byte	0xa
	.2byte	0x139
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST115:
	.4byte	.LVL144-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x2
	.byte	0x3b
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST116:
	.4byte	.LVL145-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST117:
	.4byte	.LVL149-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x1
	.byte	0x62
	.4byte	0x0
	.4byte	0x0
.LLST118:
	.4byte	.LVL150-.Ltext0
	.4byte	.LVL152-.Ltext0
	.2byte	0x6
	.byte	0x82
	.sleb128 0
	.byte	0x80
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST119:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST120:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL171-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST121:
	.4byte	.LVL154-.Ltext0
	.4byte	.LVL155-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL163-.Ltext0
	.4byte	.LVL164-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL168-.Ltext0
	.4byte	.LVL169-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	.LVL169-.Ltext0
	.4byte	.LVL170-1-.Ltext0
	.2byte	0x1
	.byte	0x5b
	.4byte	0x0
	.4byte	0x0
.LLST122:
	.4byte	0x0
	.4byte	0x0
.LLST123:
	.4byte	.LVL171-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST124:
	.4byte	.LVL172-.Ltext0
	.4byte	.LVL175-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST125:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST126:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL174-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST127:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL175-1-.Ltext0
	.2byte	0x1
	.byte	0x54
	.4byte	0x0
	.4byte	0x0
.LLST128:
	.4byte	.LVL173-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x989680
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST129:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x1
	.byte	0x60
	.4byte	0x0
	.4byte	0x0
.LLST130:
	.4byte	.LVL174-.Ltext0
	.4byte	.LVL179-.Ltext0
	.2byte	0x6
	.byte	0xc
	.4byte	0x3938700
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
.LLST131:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x1
	.byte	0x5e
	.4byte	0x0
	.4byte	0x0
.LLST132:
	.4byte	.LVL177-.Ltext0
	.4byte	.LVL178-.Ltext0
	.2byte	0x9
	.byte	0x7e
	.sleb128 0
	.byte	0xc
	.4byte	0x989680
	.byte	0x1b
	.byte	0x9f
	.4byte	0x0
	.4byte	0x0
	.section	.debug_info
	.4byte	0xac7
	.2byte	0x2
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF29
	.byte	0x1
	.4byte	.LASF30
	.4byte	.LASF31
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
	.4byte	.LASF32
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LLST0
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF7
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.4byte	0xa4
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.byte	0x4d
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x1
	.byte	0x4d
	.4byte	0x48
	.uleb128 0x8
	.4byte	.LASF9
	.byte	0x1
	.byte	0x4f
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
	.uleb128 0x6
	.byte	0x1
	.4byte	.LASF8
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.4byte	0x41
	.byte	0x1
	.4byte	0x140
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x1
	.byte	0xca
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x1
	.byte	0xca
	.4byte	0x41
	.uleb128 0xc
	.string	"end"
	.byte	0x1
	.byte	0xca
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0xcb
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0xcc
	.4byte	0x140
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0xcd
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0xce
	.4byte	0x41
	.uleb128 0xd
	.string	"cpi"
	.byte	0x1
	.byte	0xcf
	.4byte	0x41
	.byte	0x0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF15
	.uleb128 0xe
	.byte	0x1
	.string	"cpi"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LLST4
	.4byte	0x200
	.uleb128 0xf
	.4byte	.LASF9
	.byte	0x1
	.byte	0x5a
	.4byte	0x41
	.4byte	.LLST5
	.uleb128 0x10
	.string	"cmd"
	.byte	0x1
	.byte	0x5a
	.4byte	0x41
	.4byte	.LLST6
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x5c
	.4byte	0x41
	.4byte	.LLST7
	.uleb128 0x12
	.4byte	.LASF10
	.byte	0x1
	.byte	0x5e
	.4byte	0x41
	.4byte	.LLST8
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0x5f
	.4byte	0x41
	.4byte	.LLST9
	.uleb128 0x13
	.4byte	0xd5
	.4byte	.LBB4
	.4byte	.LBE4
	.byte	0x1
	.byte	0x87
	.uleb128 0x14
	.4byte	0xfd
	.uleb128 0x14
	.4byte	0xf2
	.uleb128 0xa
	.4byte	0xe7
	.4byte	.LLST10
	.uleb128 0x15
	.4byte	.LBB5
	.4byte	.LBE5
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST11
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0x16
	.4byte	0x11e
	.4byte	.LLST12
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST13
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST14
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
	.byte	0x1
	.4byte	.LASF33
	.byte	0x1
	.byte	0x8a
	.byte	0x1
	.byte	0x1
	.4byte	0x25a
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x1
	.byte	0x8a
	.4byte	0x41
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x8c
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x8d
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x8e
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF10
	.byte	0x1
	.byte	0x90
	.4byte	0x41
	.uleb128 0xd
	.string	"end"
	.byte	0x1
	.byte	0xa0
	.4byte	0x41
	.uleb128 0x8
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa2
	.4byte	0x41
	.byte	0x0
	.uleb128 0x9
	.4byte	0x200
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LLST15
	.4byte	0x2ac
	.uleb128 0xa
	.4byte	0x20e
	.4byte	.LLST16
	.uleb128 0x16
	.4byte	0x219
	.4byte	.LLST17
	.uleb128 0x16
	.4byte	0x222
	.4byte	.LLST18
	.uleb128 0x19
	.4byte	0x22d
	.byte	0xb
	.uleb128 0x16
	.4byte	0x238
	.4byte	.LLST19
	.uleb128 0x16
	.4byte	0x243
	.4byte	.LLST20
	.uleb128 0x16
	.4byte	0x24e
	.4byte	.LLST21
	.byte	0x0
	.uleb128 0x1a
	.byte	0x1
	.4byte	.LASF19
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LLST22
	.4byte	0x3cc
	.uleb128 0xf
	.4byte	.LASF9
	.byte	0x1
	.byte	0xa7
	.4byte	0x41
	.4byte	.LLST23
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xa9
	.4byte	0x41
	.4byte	.LLST24
	.uleb128 0x12
	.4byte	.LASF10
	.byte	0x1
	.byte	0xaa
	.4byte	0x41
	.4byte	.LLST25
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0xab
	.4byte	0x41
	.4byte	.LLST26
	.uleb128 0x1b
	.4byte	.LASF20
	.byte	0x1
	.byte	0xac
	.4byte	0x41
	.byte	0x1
	.uleb128 0x1c
	.4byte	0xd5
	.4byte	.LBB10
	.4byte	.LBE10
	.byte	0x1
	.byte	0xba
	.4byte	0x36d
	.uleb128 0xa
	.4byte	0xfd
	.4byte	.LLST27
	.uleb128 0xa
	.4byte	0xf2
	.4byte	.LLST28
	.uleb128 0xa
	.4byte	0xe7
	.4byte	.LLST29
	.uleb128 0x15
	.4byte	.LBB11
	.4byte	.LBE11
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST30
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0x16
	.4byte	0x11e
	.4byte	.LLST31
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST32
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST33
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.4byte	0xd5
	.4byte	.LBB12
	.4byte	.LBE12
	.byte	0x1
	.byte	0xc7
	.uleb128 0xa
	.4byte	0xfd
	.4byte	.LLST34
	.uleb128 0xa
	.4byte	0xf2
	.4byte	.LLST35
	.uleb128 0xa
	.4byte	0xe7
	.4byte	.LLST36
	.uleb128 0x15
	.4byte	.LBB13
	.4byte	.LBE13
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST37
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0x16
	.4byte	0x11e
	.4byte	.LLST38
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST39
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST40
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x9
	.4byte	0xd5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LLST41
	.4byte	0x426
	.uleb128 0xa
	.4byte	0xe7
	.4byte	.LLST42
	.uleb128 0xa
	.4byte	0xf2
	.4byte	.LLST43
	.uleb128 0xa
	.4byte	0xfd
	.4byte	.LLST44
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST45
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0x16
	.4byte	0x11e
	.4byte	.LLST46
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST47
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST48
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF21
	.byte	0x1
	.byte	0xd6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LLST49
	.4byte	0x4f6
	.uleb128 0x1e
	.4byte	.LASF22
	.byte	0x1
	.byte	0xd8
	.4byte	0x4f6
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x12
	.4byte	.LASF10
	.byte	0x1
	.byte	0xd9
	.4byte	0x41
	.4byte	.LLST50
	.uleb128 0x11
	.string	"end"
	.byte	0x1
	.byte	0xda
	.4byte	0x41
	.4byte	.LLST51
	.uleb128 0x11
	.string	"j"
	.byte	0x1
	.byte	0xdb
	.4byte	0x41
	.4byte	.LLST52
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0xdf
	.4byte	0x41
	.4byte	.LLST53
	.uleb128 0x1f
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe0
	.4byte	0x41
	.4byte	0x186a0
	.uleb128 0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0xe1
	.4byte	0x41
	.4byte	.LLST54
	.uleb128 0x20
	.4byte	0xd5
	.4byte	.LBB16
	.4byte	.Ldebug_ranges0+0x0
	.byte	0x1
	.byte	0xfa
	.uleb128 0x14
	.4byte	0xfd
	.uleb128 0x14
	.4byte	0xf2
	.uleb128 0x21
	.4byte	0xe7
	.4byte	0x186a0
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x28
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST55
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0xb
	.4byte	0x11e
	.4byte	0x927c0
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST56
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST57
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.4byte	0x41
	.4byte	0x506
	.uleb128 0x24
	.4byte	0x25
	.byte	0x63
	.byte	0x0
	.uleb128 0x1d
	.byte	0x1
	.4byte	.LASF25
	.byte	0x1
	.byte	0xfd
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LLST58
	.4byte	0x5dd
	.uleb128 0x1e
	.4byte	.LASF22
	.byte	0x1
	.byte	0xff
	.4byte	0x4f6
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x25
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x100
	.4byte	0x41
	.4byte	.LLST59
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.2byte	0x101
	.4byte	0x41
	.4byte	.LLST60
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.2byte	0x102
	.4byte	0x41
	.4byte	.LLST61
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x106
	.4byte	0x41
	.4byte	.LLST62
	.uleb128 0x27
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x107
	.4byte	0x41
	.4byte	0x186a0
	.uleb128 0x25
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x108
	.4byte	0x41
	.4byte	.LLST63
	.uleb128 0x28
	.4byte	0xd5
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x50
	.byte	0x1
	.2byte	0x120
	.uleb128 0x14
	.4byte	0xfd
	.uleb128 0x14
	.4byte	0xf2
	.uleb128 0x21
	.4byte	0xe7
	.4byte	0x186a0
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x78
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST64
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0xb
	.4byte	0x11e
	.4byte	0x927c0
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST65
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST66
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x123
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LLST67
	.4byte	0x6b6
	.uleb128 0x2a
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x125
	.4byte	0x4f6
	.byte	0x3
	.byte	0x91
	.sleb128 -416
	.uleb128 0x25
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x126
	.4byte	0x41
	.4byte	.LLST68
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.2byte	0x127
	.4byte	0x41
	.4byte	.LLST69
	.uleb128 0x26
	.string	"j"
	.byte	0x1
	.2byte	0x128
	.4byte	0x41
	.4byte	.LLST70
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x12c
	.4byte	0x41
	.4byte	.LLST71
	.uleb128 0x27
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x12d
	.4byte	0x41
	.4byte	0x186a0
	.uleb128 0x25
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x12e
	.4byte	0x41
	.4byte	.LLST72
	.uleb128 0x28
	.4byte	0xd5
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x160
	.uleb128 0x14
	.4byte	0xfd
	.uleb128 0x14
	.4byte	0xf2
	.uleb128 0x21
	.4byte	0xe7
	.4byte	0x186a0
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0xc8
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST73
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0xb
	.4byte	0x11e
	.4byte	0x927c0
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST74
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST75
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.byte	0x1
	.string	"raw"
	.byte	0x1
	.2byte	0x163
	.byte	0x1
	.4byte	0x6f3
	.uleb128 0x2c
	.string	"i"
	.byte	0x1
	.2byte	0x164
	.4byte	0x41
	.uleb128 0x2d
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x165
	.4byte	0x41
	.uleb128 0x2d
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x166
	.4byte	0x41
	.uleb128 0x2c
	.string	"end"
	.byte	0x1
	.2byte	0x16d
	.4byte	0x41
	.byte	0x0
	.uleb128 0x9
	.4byte	0x6b6
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LLST76
	.4byte	0x788
	.uleb128 0x16
	.4byte	0x6c4
	.4byte	.LLST77
	.uleb128 0xb
	.4byte	0x6ce
	.4byte	0x989680
	.uleb128 0x16
	.4byte	0x6da
	.4byte	.LLST78
	.uleb128 0x16
	.4byte	0x6e6
	.4byte	.LLST79
	.uleb128 0x28
	.4byte	0xd5
	.4byte	.LBB46
	.4byte	.Ldebug_ranges0+0xf0
	.byte	0x1
	.2byte	0x16f
	.uleb128 0xa
	.4byte	0xfd
	.4byte	.LLST80
	.uleb128 0xa
	.4byte	0xf2
	.4byte	.LLST81
	.uleb128 0x21
	.4byte	0xe7
	.4byte	0x989680
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x110
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST82
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0xb
	.4byte	0x11e
	.4byte	0x3938700
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST83
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST84
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.byte	0x1
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x172
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LLST85
	.4byte	0x83b
	.uleb128 0x26
	.string	"i"
	.byte	0x1
	.2byte	0x173
	.4byte	0x41
	.4byte	.LLST86
	.uleb128 0x27
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x174
	.4byte	0x41
	.4byte	0x989680
	.uleb128 0x25
	.4byte	.LASF10
	.byte	0x1
	.2byte	0x175
	.4byte	0x41
	.4byte	.LLST87
	.uleb128 0x26
	.string	"end"
	.byte	0x1
	.2byte	0x17c
	.4byte	0x41
	.4byte	.LLST88
	.uleb128 0x28
	.4byte	0xd5
	.4byte	.LBB54
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x17e
	.uleb128 0xa
	.4byte	0xfd
	.4byte	.LLST89
	.uleb128 0xa
	.4byte	0xf2
	.4byte	.LLST90
	.uleb128 0x21
	.4byte	0xe7
	.4byte	0x989680
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x150
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST91
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0xb
	.4byte	0x11e
	.4byte	0x3938700
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST92
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST93
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
	.byte	0x1
	.4byte	.LASF34
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.4byte	0x41
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LLST94
	.4byte	0xaab
	.uleb128 0xf
	.4byte	.LASF5
	.byte	0x1
	.byte	0x23
	.4byte	0x41
	.4byte	.LLST95
	.uleb128 0xf
	.4byte	.LASF6
	.byte	0x1
	.byte	0x23
	.4byte	0x48
	.4byte	.LLST96
	.uleb128 0x2f
	.4byte	0x70
	.4byte	.LBB78
	.4byte	.Ldebug_ranges0+0x170
	.byte	0x1
	.byte	0x28
	.4byte	0x8ab
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST97
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST98
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x190
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST99
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x70
	.4byte	.LBB82
	.4byte	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.byte	0x2c
	.4byte	0x8e0
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST100
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST101
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x1d0
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST102
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x70
	.4byte	.LBB87
	.4byte	.Ldebug_ranges0+0x1f0
	.byte	0x1
	.byte	0x2a
	.4byte	0x915
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST103
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST104
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x210
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST105
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x70
	.4byte	.LBB91
	.4byte	.Ldebug_ranges0+0x230
	.byte	0x1
	.byte	0x2e
	.4byte	0x94a
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST106
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST107
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x250
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST108
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x70
	.4byte	.LBB97
	.4byte	.Ldebug_ranges0+0x270
	.byte	0x1
	.byte	0x32
	.4byte	0x97f
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST109
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST110
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x290
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST111
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
	.4byte	0x200
	.4byte	.LBB101
	.4byte	.LBE101
	.byte	0x1
	.byte	0x32
	.4byte	0x9dc
	.uleb128 0xa
	.4byte	0x20e
	.4byte	.LLST112
	.uleb128 0x15
	.4byte	.LBB102
	.4byte	.LBE102
	.uleb128 0x16
	.4byte	0x219
	.4byte	.LLST113
	.uleb128 0x16
	.4byte	0x222
	.4byte	.LLST114
	.uleb128 0x16
	.4byte	0x22d
	.4byte	.LLST115
	.uleb128 0x16
	.4byte	0x238
	.4byte	.LLST116
	.uleb128 0x16
	.4byte	0x243
	.4byte	.LLST117
	.uleb128 0x16
	.4byte	0x24e
	.4byte	.LLST118
	.byte	0x0
	.byte	0x0
	.uleb128 0x2f
	.4byte	0x70
	.4byte	.LBB104
	.4byte	.Ldebug_ranges0+0x2b0
	.byte	0x1
	.byte	0x30
	.4byte	0xa11
	.uleb128 0xa
	.4byte	0x8d
	.4byte	.LLST119
	.uleb128 0xa
	.4byte	0x82
	.4byte	.LLST120
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x2d0
	.uleb128 0x16
	.4byte	0x98
	.4byte	.LLST121
	.byte	0x0
	.byte	0x0
	.uleb128 0x13
	.4byte	0x6b6
	.4byte	.LBB115
	.4byte	.LBE115
	.byte	0x1
	.byte	0x3a
	.uleb128 0x15
	.4byte	.LBB116
	.4byte	.LBE116
	.uleb128 0x16
	.4byte	0x6c4
	.4byte	.LLST122
	.uleb128 0x16
	.4byte	0x6ce
	.4byte	.LLST123
	.uleb128 0x16
	.4byte	0x6da
	.4byte	.LLST124
	.uleb128 0x16
	.4byte	0x6e6
	.4byte	.LLST125
	.uleb128 0x28
	.4byte	0xd5
	.4byte	.LBB117
	.4byte	.Ldebug_ranges0+0x2f0
	.byte	0x1
	.2byte	0x16f
	.uleb128 0xa
	.4byte	0xfd
	.4byte	.LLST126
	.uleb128 0xa
	.4byte	0xf2
	.4byte	.LLST127
	.uleb128 0xa
	.4byte	0xe7
	.4byte	.LLST128
	.uleb128 0x22
	.4byte	.Ldebug_ranges0+0x310
	.uleb128 0x16
	.4byte	0x108
	.4byte	.LLST129
	.uleb128 0x17
	.4byte	0x113
	.uleb128 0x16
	.4byte	0x11e
	.4byte	.LLST130
	.uleb128 0x16
	.4byte	0x129
	.4byte	.LLST131
	.uleb128 0x16
	.4byte	0x134
	.4byte	.LLST132
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.uleb128 0x30
	.4byte	.LASF28
	.byte	0x2
	.byte	0x37
	.4byte	0xab8
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.4byte	0x25
	.uleb128 0x30
	.4byte	.LASF28
	.byte	0x2
	.byte	0x37
	.4byte	0xab8
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
	.byte	0x0
	.byte	0x0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
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
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x18
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x1c
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x1f
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
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x20
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
	.byte	0x0
	.byte	0x0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0x0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x22
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x23
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x0
	.byte	0x0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0x0
	.byte	0x0
	.uleb128 0x28
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
	.uleb128 0x5
	.byte	0x0
	.byte	0x0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0x0
	.byte	0x0
	.uleb128 0x2b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0x0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x35
	.byte	0x0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0x0
	.byte	0x0
	.byte	0x0
	.section	.debug_pubnames,"",@progbits
	.4byte	0xc4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xacb
	.4byte	0x5b
	.string	"module_hmcmd_init"
	.4byte	0xa4
	.string	"iteration_setter"
	.4byte	0x147
	.string	"cpi"
	.4byte	0x25a
	.string	"mips_measurement"
	.4byte	0x2ac
	.string	"branch"
	.4byte	0x3cc
	.string	"cpi_calc"
	.4byte	0x426
	.string	"do_count"
	.4byte	0x506
	.string	"do_count_cmov"
	.4byte	0x5dd
	.string	"do_count_partial"
	.4byte	0x6f3
	.string	"raw"
	.4byte	0x788
	.string	"not_raw"
	.4byte	0x83b
	.string	"hmcmd_cmd"
	.4byte	0x0
	.section	.debug_pubtypes,"",@progbits
	.4byte	0xe
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xacb
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
	.4byte	.LBB16-.Ltext0
	.4byte	.LBE16-.Ltext0
	.4byte	.LBB23-.Ltext0
	.4byte	.LBE23-.Ltext0
	.4byte	.LBB22-.Ltext0
	.4byte	.LBE22-.Ltext0
	.4byte	.LBB21-.Ltext0
	.4byte	.LBE21-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB18-.Ltext0
	.4byte	.LBE18-.Ltext0
	.4byte	.LBB20-.Ltext0
	.4byte	.LBE20-.Ltext0
	.4byte	.LBB17-.Ltext0
	.4byte	.LBE17-.Ltext0
	.4byte	.LBB19-.Ltext0
	.4byte	.LBE19-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB26-.Ltext0
	.4byte	.LBE26-.Ltext0
	.4byte	.LBB33-.Ltext0
	.4byte	.LBE33-.Ltext0
	.4byte	.LBB32-.Ltext0
	.4byte	.LBE32-.Ltext0
	.4byte	.LBB31-.Ltext0
	.4byte	.LBE31-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB28-.Ltext0
	.4byte	.LBE28-.Ltext0
	.4byte	.LBB30-.Ltext0
	.4byte	.LBE30-.Ltext0
	.4byte	.LBB27-.Ltext0
	.4byte	.LBE27-.Ltext0
	.4byte	.LBB29-.Ltext0
	.4byte	.LBE29-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB36-.Ltext0
	.4byte	.LBE36-.Ltext0
	.4byte	.LBB43-.Ltext0
	.4byte	.LBE43-.Ltext0
	.4byte	.LBB42-.Ltext0
	.4byte	.LBE42-.Ltext0
	.4byte	.LBB41-.Ltext0
	.4byte	.LBE41-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB38-.Ltext0
	.4byte	.LBE38-.Ltext0
	.4byte	.LBB40-.Ltext0
	.4byte	.LBE40-.Ltext0
	.4byte	.LBB37-.Ltext0
	.4byte	.LBE37-.Ltext0
	.4byte	.LBB39-.Ltext0
	.4byte	.LBE39-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB46-.Ltext0
	.4byte	.LBE46-.Ltext0
	.4byte	.LBB51-.Ltext0
	.4byte	.LBE51-.Ltext0
	.4byte	.LBB50-.Ltext0
	.4byte	.LBE50-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB48-.Ltext0
	.4byte	.LBE48-.Ltext0
	.4byte	.LBB49-.Ltext0
	.4byte	.LBE49-.Ltext0
	.4byte	.LBB47-.Ltext0
	.4byte	.LBE47-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB54-.Ltext0
	.4byte	.LBE54-.Ltext0
	.4byte	.LBB59-.Ltext0
	.4byte	.LBE59-.Ltext0
	.4byte	.LBB58-.Ltext0
	.4byte	.LBE58-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB56-.Ltext0
	.4byte	.LBE56-.Ltext0
	.4byte	.LBB57-.Ltext0
	.4byte	.LBE57-.Ltext0
	.4byte	.LBB55-.Ltext0
	.4byte	.LBE55-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB78-.Ltext0
	.4byte	.LBE78-.Ltext0
	.4byte	.LBB108-.Ltext0
	.4byte	.LBE108-.Ltext0
	.4byte	.LBB86-.Ltext0
	.4byte	.LBE86-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB80-.Ltext0
	.4byte	.LBE80-.Ltext0
	.4byte	.LBB81-.Ltext0
	.4byte	.LBE81-.Ltext0
	.4byte	.LBB79-.Ltext0
	.4byte	.LBE79-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB82-.Ltext0
	.4byte	.LBE82-.Ltext0
	.4byte	.LBB111-.Ltext0
	.4byte	.LBE111-.Ltext0
	.4byte	.LBB96-.Ltext0
	.4byte	.LBE96-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB84-.Ltext0
	.4byte	.LBE84-.Ltext0
	.4byte	.LBB85-.Ltext0
	.4byte	.LBE85-.Ltext0
	.4byte	.LBB83-.Ltext0
	.4byte	.LBE83-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB87-.Ltext0
	.4byte	.LBE87-.Ltext0
	.4byte	.LBB109-.Ltext0
	.4byte	.LBE109-.Ltext0
	.4byte	.LBB95-.Ltext0
	.4byte	.LBE95-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB89-.Ltext0
	.4byte	.LBE89-.Ltext0
	.4byte	.LBB90-.Ltext0
	.4byte	.LBE90-.Ltext0
	.4byte	.LBB88-.Ltext0
	.4byte	.LBE88-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB91-.Ltext0
	.4byte	.LBE91-.Ltext0
	.4byte	.LBB110-.Ltext0
	.4byte	.LBE110-.Ltext0
	.4byte	.LBB103-.Ltext0
	.4byte	.LBE103-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB93-.Ltext0
	.4byte	.LBE93-.Ltext0
	.4byte	.LBB94-.Ltext0
	.4byte	.LBE94-.Ltext0
	.4byte	.LBB92-.Ltext0
	.4byte	.LBE92-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB97-.Ltext0
	.4byte	.LBE97-.Ltext0
	.4byte	.LBB123-.Ltext0
	.4byte	.LBE123-.Ltext0
	.4byte	.LBB113-.Ltext0
	.4byte	.LBE113-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB99-.Ltext0
	.4byte	.LBE99-.Ltext0
	.4byte	.LBB100-.Ltext0
	.4byte	.LBE100-.Ltext0
	.4byte	.LBB98-.Ltext0
	.4byte	.LBE98-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB104-.Ltext0
	.4byte	.LBE104-.Ltext0
	.4byte	.LBB114-.Ltext0
	.4byte	.LBE114-.Ltext0
	.4byte	.LBB112-.Ltext0
	.4byte	.LBE112-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB106-.Ltext0
	.4byte	.LBE106-.Ltext0
	.4byte	.LBB107-.Ltext0
	.4byte	.LBE107-.Ltext0
	.4byte	.LBB105-.Ltext0
	.4byte	.LBE105-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB117-.Ltext0
	.4byte	.LBE117-.Ltext0
	.4byte	.LBB122-.Ltext0
	.4byte	.LBE122-.Ltext0
	.4byte	.LBB121-.Ltext0
	.4byte	.LBE121-.Ltext0
	.4byte	0x0
	.4byte	0x0
	.4byte	.LBB119-.Ltext0
	.4byte	.LBE119-.Ltext0
	.4byte	.LBB120-.Ltext0
	.4byte	.LBE120-.Ltext0
	.4byte	.LBB118-.Ltext0
	.4byte	.LBE118-.Ltext0
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
	.byte	0x5c
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
	.byte	0x7f
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
	.byte	0x3
	.sleb128 -72
	.byte	0x1
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
	.sleb128 -20
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
	.byte	0x1f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM67
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM68
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM69
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM70
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM71
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM72
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM73
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM74
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM75
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM76
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM77
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM78
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM79
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM80
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM81
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM82
	.byte	0xd
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM83
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM84
	.byte	0xd
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM85
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM86
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM87
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM88
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM89
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM90
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM91
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM92
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM93
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM94
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM95
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM96
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM97
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM98
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM99
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM100
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM101
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM102
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM103
	.byte	0x3
	.sleb128 -21
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM104
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM105
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM106
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM107
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM108
	.byte	0x1c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM109
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM110
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM111
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM112
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM113
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM114
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM115
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM116
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM117
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM118
	.byte	0xc
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM119
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM120
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM121
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM122
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM123
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM124
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM125
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM126
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM127
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM128
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM129
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM130
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM131
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM132
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM133
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM134
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM135
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM136
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM137
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM138
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM139
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM140
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM141
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM142
	.byte	0x29
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM143
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM144
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM145
	.byte	0x3
	.sleb128 -46
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM146
	.byte	0x42
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM147
	.byte	0x3
	.sleb128 -45
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM148
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM149
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM150
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM151
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM152
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM153
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM154
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM155
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM156
	.byte	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM157
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM158
	.byte	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM159
	.byte	0x3
	.sleb128 -43
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM160
	.byte	0x3f
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM161
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM162
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM163
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM164
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM165
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM166
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM167
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM168
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM169
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM170
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM171
	.byte	0x28
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM172
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM173
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM174
	.byte	0x3
	.sleb128 -84
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM175
	.byte	0x68
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM176
	.byte	0x3
	.sleb128 -83
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM177
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM178
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM179
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM180
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM181
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM182
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM183
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM184
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM185
	.byte	0x65
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM186
	.byte	0x3
	.sleb128 -81
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM187
	.byte	0x65
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM188
	.byte	0x3
	.sleb128 -81
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM189
	.byte	0x65
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM190
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM191
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM192
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM193
	.byte	0x3
	.sleb128 -12
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM194
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM195
	.byte	0xe
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM196
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM197
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM198
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM199
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM200
	.byte	0x42
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM201
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM202
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM203
	.byte	0x3
	.sleb128 -148
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM204
	.byte	0xa8
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM205
	.byte	0x3
	.sleb128 -147
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM206
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM207
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM208
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM209
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM210
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM211
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM212
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM213
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM214
	.byte	0xa5
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM215
	.byte	0x3
	.sleb128 -145
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM216
	.byte	0xa5
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM217
	.byte	0x3
	.sleb128 -145
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM218
	.byte	0xa5
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM219
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM220
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM221
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM222
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM223
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM224
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM225
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM226
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM227
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM228
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM229
	.byte	0x3
	.sleb128 -162
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM230
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM231
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM232
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM233
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM234
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM235
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM236
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM237
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM238
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM239
	.byte	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM240
	.byte	0x3
	.sleb128 -160
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM241
	.byte	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM242
	.byte	0x3
	.sleb128 -160
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM243
	.byte	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM244
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM245
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM246
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM247
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM248
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM249
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM250
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM251
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM252
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM253
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM254
	.byte	0x3
	.sleb128 -177
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM255
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM256
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM257
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM258
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM259
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM260
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM261
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM262
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM263
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM264
	.byte	0xc3
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM265
	.byte	0x3
	.sleb128 -175
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM266
	.byte	0xc3
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM267
	.byte	0x3
	.sleb128 -175
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM268
	.byte	0xc3
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM269
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM270
	.byte	0x3
	.sleb128 -347
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM271
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM272
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM273
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM274
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM275
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM276
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM277
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM278
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM279
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM280
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM281
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM282
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM283
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM284
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM285
	.byte	0x19
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM286
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM287
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM288
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM289
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM290
	.byte	0x3
	.sleb128 -39
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM291
	.byte	0x32
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM292
	.byte	0x3
	.sleb128 -32
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM293
	.byte	0x34
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM294
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM295
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM296
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM297
	.byte	0x3
	.sleb128 -35
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM298
	.byte	0x2e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM299
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM300
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM301
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM302
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM303
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM304
	.byte	0x3
	.sleb128 -37
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM305
	.byte	0x30
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM306
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM307
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM308
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM309
	.byte	0x3
	.sleb128 -33
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM310
	.byte	0x2c
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM311
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM312
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM313
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM314
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM315
	.byte	0xf
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM316
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM317
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM318
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM319
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM320
	.byte	0x54
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM321
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM322
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM323
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM324
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM325
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM326
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM327
	.byte	0x23
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM328
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM329
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM330
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM331
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM332
	.byte	0x3
	.sleb128 -94
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM333
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM334
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM335
	.byte	0x17
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM336
	.byte	0x10
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM337
	.byte	0x3
	.sleb128 -31
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM338
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM339
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM340
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM341
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM342
	.byte	0x3
	.sleb128 -33
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM343
	.byte	0x26
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM344
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM345
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM346
	.byte	0x3
	.sleb128 -36
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM347
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM348
	.byte	0x3
	.sleb128 -16
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM349
	.byte	0x24
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM350
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM351
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM352
	.byte	0x3
	.sleb128 -29
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM353
	.byte	0x22
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM354
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM355
	.byte	0x3
	.sleb128 -34
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM356
	.byte	0x2a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM357
	.byte	0x3
	.sleb128 288
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM358
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM359
	.byte	0x13
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM360
	.byte	0x1a
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM361
	.byte	0x3
	.sleb128 -162
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM362
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM363
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM364
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM365
	.byte	0x12
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM366
	.byte	0x16
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM367
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM368
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM369
	.byte	0x18
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM370
	.byte	0x11
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM371
	.byte	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM372
	.byte	0x3
	.sleb128 -160
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM373
	.byte	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM374
	.byte	0x3
	.sleb128 -160
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM375
	.byte	0xb4
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM376
	.byte	0x3
	.sleb128 -297
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM377
	.byte	0x20
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM378
	.byte	0x3
	.sleb128 -20
	.byte	0x1
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM379
	.byte	0x15
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM380
	.byte	0x1b
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM381
	.byte	0xa
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.LM382
	.byte	0x1e
	.byte	0x0
	.uleb128 0x5
	.byte	0x2
	.4byte	.Letext0
	.byte	0x0
	.uleb128 0x1
	.byte	0x1
.LELT0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"timestamp"
.LASF23:
	.string	"runs"
.LASF12:
	.string	"tacts"
.LASF20:
	.string	"value"
.LASF10:
	.string	"start"
.LASF26:
	.string	"do_count_partial"
.LASF25:
	.string	"do_count_cmov"
.LASF14:
	.string	"real_tacts"
.LASF2:
	.string	"unsigned char"
.LASF22:
	.string	"input"
.LASF0:
	.string	"long unsigned int"
.LASF1:
	.string	"short unsigned int"
.LASF9:
	.string	"iterations"
.LASF33:
	.string	"mips_measurement"
.LASF32:
	.string	"module_hmcmd_init"
.LASF11:
	.string	"elapsed_ms"
.LASF15:
	.string	"double"
.LASF8:
	.string	"cpi_calc"
.LASF31:
	.string	"/home/openrisc/soc-design/orpmon/cmds"
.LASF29:
	.string	"GNU C 4.5.1-or32-1.0rc4"
.LASF3:
	.string	"char"
.LASF24:
	.string	"result"
.LASF19:
	.string	"branch"
.LASF13:
	.string	"for_tacts"
.LASF18:
	.string	"time"
.LASF16:
	.string	"number"
.LASF5:
	.string	"argc"
.LASF30:
	.string	"hmcmd.c"
.LASF7:
	.string	"iteration_setter"
.LASF34:
	.string	"hmcmd_cmd"
.LASF6:
	.string	"argv"
.LASF17:
	.string	"instructions"
.LASF4:
	.string	"long int"
.LASF21:
	.string	"do_count"
.LASF27:
	.string	"not_raw"
	.ident	"GCC: (OpenRISC 32-bit toolchain for or32-elf (built 20111013)) 4.5.1-or32-1.0rc4"
