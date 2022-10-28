# contoh_ounces.asm
# Konversi dari ounces ke pounds dan ounce.
			.data
	prompt: .asciiz "Masukkan massa dalam ounces: "
	pout: 	.asciiz " Pounds\n"
	ozout: 	.asciiz " Ounces\n"
			.text
			.globl main
	main: 	addu $s0, $ra, $0 	# simpan $31 dalam $16
			li $v0,4 			# tampilkan perintah
			la $a0,prompt 
			syscall
			li $v0,5 			# baca input pengguna
			syscall
			li $t1,16 			# 1 pound = 16 ounce
			divu $v0,$t1 
			mflo $a0
			li $v0,1 			# tampilkan nilai pound
			syscall
			li $v0,4 			# tampilkan str "pounds"
			la $a0,pout
			syscall
			mfhi $a0 			# tampilkan nilai ounce
			li $v0,1
			syscall
			li $v0,4 			# tampilkan str "ounces"
			la $a0,ozout 
			syscall
			addu $ra, $0, $s0
			jr $ra 
# akhir dari program
