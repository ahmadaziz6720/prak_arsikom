
code.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 d5 33 00 00 	mov    0x33d5(%rip),%rax        # 1400043f0 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 d6 33 00 00 	mov    0x33d6(%rip),%rax        # 140004400 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 d9 33 00 00 	mov    0x33d9(%rip),%rax        # 140004410 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 4c 33 00 00 	mov    0x334c(%rip),%rax        # 140004390 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 7f 33 00 00 	mov    0x337f(%rip),%rax        # 1400043e0 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 5f 00 00    	mov    %ecx,0x5fb9(%rip)        # 140007020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 31 16 00 00       	call   1400026a8 <__set_app_type>
   140001077:	e8 a4 15 00 00       	call   140002620 <__p__fmode>
   14000107c:	48 8b 15 2d 34 00 00 	mov    0x342d(%rip),%rdx        # 1400044b0 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 a4 15 00 00       	call   140002630 <__p__commode>
   14000108c:	48 8b 15 fd 33 00 00 	mov    0x33fd(%rip),%rdx        # 140004490 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 a4 05 00 00       	call   140001640 <_setargv>
   14000109c:	48 8b 05 9d 32 00 00 	mov    0x329d(%rip),%rax        # 140004340 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 ee 15 00 00       	call   1400026a8 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d d1 33 00 00 	mov    0x33d1(%rip),%rcx        # 1400044d0 <.refptr._matherr>
   1400010ff:	e8 9c 0c 00 00       	call   140001da0 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret    
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 a5 33 00 00 	mov    0x33a5(%rip),%rax        # 1400044e0 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 5e 00 00 	lea    0x5ee6(%rip),%r8        # 140007028 <envp>
   140001142:	48 8d 15 e7 5e 00 00 	lea    0x5ee7(%rip),%rdx        # 140007030 <argv>
   140001149:	48 8d 0d e8 5e 00 00 	lea    0x5ee8(%rip),%rcx        # 140007038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 5e 00 00    	mov    %eax,0x5ec0(%rip)        # 140007018 <startinfo>
   140001158:	48 8d 05 b9 5e 00 00 	lea    0x5eb9(%rip),%rax        # 140007018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 35 33 00 00 	mov    0x3335(%rip),%rax        # 1400044a0 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 25 15 00 00       	call   140002698 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret    
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 55                	push   %r13
   140001182:	41 54                	push   %r12
   140001184:	55                   	push   %rbp
   140001185:	57                   	push   %rdi
   140001186:	56                   	push   %rsi
   140001187:	53                   	push   %rbx
   140001188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   140001194:	31 c0                	xor    %eax,%eax
   140001196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   14000119b:	4c 89 c7             	mov    %r8,%rdi
   14000119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011a1:	48 8b 3d 38 32 00 00 	mov    0x3238(%rip),%rdi        # 1400043e0 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d 6c 32 00 00 	mov    0x326c(%rip),%rbx        # 140004430 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 d3 6f 00 00 	mov    0x6fd3(%rip),%r12        # 1400081a4 <__imp_Sleep>
   1400011d1:	eb 16                	jmp    1400011e9 <__tmainCRTStartup+0x69>
   1400011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011d8:	48 39 c6             	cmp    %rax,%rsi
   1400011db:	0f 84 17 02 00 00    	je     1400013f8 <__tmainCRTStartup+0x278>
   1400011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011e6:	41 ff d4             	call   *%r12
   1400011e9:	48 89 e8             	mov    %rbp,%rax
   1400011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011f1:	48 85 c0             	test   %rax,%rax
   1400011f4:	75 e2                	jne    1400011d8 <__tmainCRTStartup+0x58>
   1400011f6:	48 8b 35 43 32 00 00 	mov    0x3243(%rip),%rsi        # 140004440 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 05 02 00 00    	je     14000140f <__tmainCRTStartup+0x28f>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 5d 00 00 01 	movl   $0x1,0x5dfe(%rip)        # 14000701c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 fb 01 00 00    	je     140001424 <__tmainCRTStartup+0x2a4>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 14 02 00 00    	je     140001445 <__tmainCRTStartup+0x2c5>
   140001231:	48 8b 05 48 31 00 00 	mov    0x3148(%rip),%rax        # 140004380 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 bf 07 00 00       	call   140001a10 <_pei386_runtime_relocator>
   140001251:	48 8b 0d 68 32 00 00 	mov    0x3268(%rip),%rcx        # 1400044c0 <.refptr._gnu_exception_handler>
   140001258:	ff 15 3e 6f 00 00    	call   *0x6f3e(%rip)        # 14000819c <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 bb 31 00 00 	mov    0x31bb(%rip),%rdx        # 140004420 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 ec 13 00 00       	call   140002660 <_set_invalid_parameter_handler>
   140001274:	e8 a7 05 00 00       	call   140001820 <_fpreset>
   140001279:	48 8b 05 10 31 00 00 	mov    0x3110(%rip),%rax        # 140004390 <.refptr.__image_base__>
   140001280:	48 89 05 89 5d 00 00 	mov    %rax,0x5d89(%rip)        # 140007010 <__mingw_winmain_hInstance>
   140001287:	e8 b4 13 00 00       	call   140002640 <__p__acmdln>
   14000128c:	31 c9                	xor    %ecx,%ecx
   14000128e:	48 8b 00             	mov    (%rax),%rax
   140001291:	48 85 c0             	test   %rax,%rax
   140001294:	75 1c                	jne    1400012b2 <__tmainCRTStartup+0x132>
   140001296:	eb 58                	jmp    1400012f0 <__tmainCRTStartup+0x170>
   140001298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000129f:	00 
   1400012a0:	84 d2                	test   %dl,%dl
   1400012a2:	74 45                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012a4:	83 e1 01             	and    $0x1,%ecx
   1400012a7:	74 27                	je     1400012d0 <__tmainCRTStartup+0x150>
   1400012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012ae:	48 83 c0 01          	add    $0x1,%rax
   1400012b2:	0f b6 10             	movzbl (%rax),%edx
   1400012b5:	80 fa 20             	cmp    $0x20,%dl
   1400012b8:	7e e6                	jle    1400012a0 <__tmainCRTStartup+0x120>
   1400012ba:	41 89 c8             	mov    %ecx,%r8d
   1400012bd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012c1:	80 fa 22             	cmp    $0x22,%dl
   1400012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012c8:	eb e4                	jmp    1400012ae <__tmainCRTStartup+0x12e>
   1400012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012d0:	84 d2                	test   %dl,%dl
   1400012d2:	74 15                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012dc:	48 83 c0 01          	add    $0x1,%rax
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 05                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012e4:	80 fa 20             	cmp    $0x20,%dl
   1400012e7:	7e ef                	jle    1400012d8 <__tmainCRTStartup+0x158>
   1400012e9:	48 89 05 18 5d 00 00 	mov    %rax,0x5d18(%rip)        # 140007008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 e0 00 00 00    	jne    1400013e8 <__tmainCRTStartup+0x268>
   140001308:	89 05 f2 1c 00 00    	mov    %eax,0x1cf2(%rip)        # 140003000 <__data_start__>
   14000130e:	48 63 2d 23 5d 00 00 	movslq 0x5d23(%rip),%rbp        # 140007038 <argc>
   140001315:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001319:	4d 63 e4             	movslq %r12d,%r12
   14000131c:	49 c1 e4 03          	shl    $0x3,%r12
   140001320:	4c 89 e1             	mov    %r12,%rcx
   140001323:	e8 e0 13 00 00       	call   140002708 <malloc>
   140001328:	4c 8b 2d 01 5d 00 00 	mov    0x5d01(%rip),%r13        # 140007030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 d6 13 00 00       	call   140002720 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 b2 13 00 00       	call   140002708 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 a2 13 00 00       	call   140002710 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 5c 00 00 	mov    %rdi,0x5caa(%rip)        # 140007030 <argv>
   140001386:	e8 95 02 00 00       	call   140001620 <__main>
   14000138b:	48 8b 05 0e 30 00 00 	mov    0x300e(%rip),%rax        # 1400043a0 <.refptr.__imp___initenv>
   140001392:	4c 8b 05 8f 5c 00 00 	mov    0x5c8f(%rip),%r8        # 140007028 <envp>
   140001399:	8b 0d 99 5c 00 00    	mov    0x5c99(%rip),%ecx        # 140007038 <argc>
   14000139f:	48 8b 00             	mov    (%rax),%rax
   1400013a2:	4c 89 00             	mov    %r8,(%rax)
   1400013a5:	48 8b 15 84 5c 00 00 	mov    0x5c84(%rip),%rdx        # 140007030 <argv>
   1400013ac:	e8 7f 01 00 00       	call   140001530 <main>
   1400013b1:	8b 0d 69 5c 00 00    	mov    0x5c69(%rip),%ecx        # 140007020 <managedapp>
   1400013b7:	89 05 67 5c 00 00    	mov    %eax,0x5c67(%rip)        # 140007024 <mainret>
   1400013bd:	85 c9                	test   %ecx,%ecx
   1400013bf:	0f 84 d9 00 00 00    	je     14000149e <__tmainCRTStartup+0x31e>
   1400013c5:	8b 15 51 5c 00 00    	mov    0x5c51(%rip),%edx        # 14000701c <has_cctor>
   1400013cb:	85 d2                	test   %edx,%edx
   1400013cd:	0f 84 8d 00 00 00    	je     140001460 <__tmainCRTStartup+0x2e0>
   1400013d3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013da:	5b                   	pop    %rbx
   1400013db:	5e                   	pop    %rsi
   1400013dc:	5f                   	pop    %rdi
   1400013dd:	5d                   	pop    %rbp
   1400013de:	41 5c                	pop    %r12
   1400013e0:	41 5d                	pop    %r13
   1400013e2:	c3                   	ret    
   1400013e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013e8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013ed:	e9 16 ff ff ff       	jmp    140001308 <__tmainCRTStartup+0x188>
   1400013f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400013f8:	48 8b 35 41 30 00 00 	mov    0x3041(%rip),%rsi        # 140004440 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 9f 12 00 00       	call   1400026b8 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 35 30 00 00 	mov    0x3035(%rip),%rdx        # 140004460 <.refptr.__xc_z>
   14000142b:	48 8b 0d 1e 30 00 00 	mov    0x301e(%rip),%rcx        # 140004450 <.refptr.__xc_a>
   140001432:	e8 91 12 00 00       	call   1400026c8 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 2b 6d 00 00    	call   *0x6d2b(%rip)        # 140008184 <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 5b 12 00 00       	call   1400026c0 <_cexit>
   140001465:	8b 05 b9 5b 00 00    	mov    0x5bb9(%rip),%eax        # 140007024 <mainret>
   14000146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	41 5d                	pop    %r13
   14000147a:	c3                   	ret    
   14000147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001480:	48 8b 15 f9 2f 00 00 	mov    0x2ff9(%rip),%rdx        # 140004480 <.refptr.__xi_z>
   140001487:	48 8b 0d e2 2f 00 00 	mov    0x2fe2(%rip),%rcx        # 140004470 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 2f 12 00 00       	call   1400026c8 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 43 12 00 00       	call   1400026e8 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 25 2f 00 00 	mov    0x2f25(%rip),%rax        # 1400043e0 <.refptr.__mingw_app_type>
   1400014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014c1:	e8 ba fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014c6:	90                   	nop

00000001400014c7 <.l_endw>:
   1400014c7:	90                   	nop
   1400014c8:	48 83 c4 28          	add    $0x28,%rsp
   1400014cc:	c3                   	ret    
   1400014cd:	0f 1f 00             	nopl   (%rax)

00000001400014d0 <mainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_start>:
   1400014d4:	48 8b 05 05 2f 00 00 	mov    0x2f05(%rip),%rax        # 1400043e0 <.refptr.__mingw_app_type>
   1400014db:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014e1:	e8 9a fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_end>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)

00000001400014f0 <atexit>:
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f4:	e8 d7 11 00 00       	call   1400026d0 <_onexit>
   1400014f9:	48 83 f8 01          	cmp    $0x1,%rax
   1400014fd:	19 c0                	sbb    %eax,%eax
   1400014ff:	48 83 c4 28          	add    $0x28,%rsp
   140001503:	c3                   	ret    
   140001504:	90                   	nop
   140001505:	90                   	nop
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	90                   	nop
   140001509:	90                   	nop
   14000150a:	90                   	nop
   14000150b:	90                   	nop
   14000150c:	90                   	nop
   14000150d:	90                   	nop
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <__gcc_register_frame>:
   140001510:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001520 <__gcc_deregister_frame>
   140001517:	e9 d4 ff ff ff       	jmp    1400014f0 <atexit>
   14000151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001520 <__gcc_deregister_frame>:
   140001520:	c3                   	ret    
   140001521:	90                   	nop
   140001522:	90                   	nop
   140001523:	90                   	nop
   140001524:	90                   	nop
   140001525:	90                   	nop
   140001526:	90                   	nop
   140001527:	90                   	nop
   140001528:	90                   	nop
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
   14000152f:	90                   	nop

0000000140001530 <main>:
   140001530:	55                   	push   %rbp
   140001531:	48 89 e5             	mov    %rsp,%rbp
   140001534:	48 83 ec 30          	sub    $0x30,%rsp
   140001538:	e8 e3 00 00 00       	call   140001620 <__main>
   14000153d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
   140001544:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
   14000154b:	eb 0a                	jmp    140001557 <main+0x27>
   14000154d:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001550:	01 45 f8             	add    %eax,-0x8(%rbp)
   140001553:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
   140001557:	81 7d fc f3 01 00 00 	cmpl   $0x1f3,-0x4(%rbp)
   14000155e:	7e ed                	jle    14000154d <main+0x1d>
   140001560:	8b 45 f8             	mov    -0x8(%rbp),%eax
   140001563:	48 83 c4 30          	add    $0x30,%rsp
   140001567:	5d                   	pop    %rbp
   140001568:	c3                   	ret    
   140001569:	90                   	nop
   14000156a:	90                   	nop
   14000156b:	90                   	nop
   14000156c:	90                   	nop
   14000156d:	90                   	nop
   14000156e:	90                   	nop
   14000156f:	90                   	nop

0000000140001570 <__do_global_dtors>:
   140001570:	48 83 ec 28          	sub    $0x28,%rsp
   140001574:	48 8b 05 95 1a 00 00 	mov    0x1a95(%rip),%rax        # 140003010 <p.0>
   14000157b:	48 8b 00             	mov    (%rax),%rax
   14000157e:	48 85 c0             	test   %rax,%rax
   140001581:	74 22                	je     1400015a5 <__do_global_dtors+0x35>
   140001583:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001588:	ff d0                	call   *%rax
   14000158a:	48 8b 05 7f 1a 00 00 	mov    0x1a7f(%rip),%rax        # 140003010 <p.0>
   140001591:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001595:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001599:	48 89 15 70 1a 00 00 	mov    %rdx,0x1a70(%rip)        # 140003010 <p.0>
   1400015a0:	48 85 c0             	test   %rax,%rax
   1400015a3:	75 e3                	jne    140001588 <__do_global_dtors+0x18>
   1400015a5:	48 83 c4 28          	add    $0x28,%rsp
   1400015a9:	c3                   	ret    
   1400015aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400015b0 <__do_global_ctors>:
   1400015b0:	56                   	push   %rsi
   1400015b1:	53                   	push   %rbx
   1400015b2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015b6:	48 8b 15 93 2d 00 00 	mov    0x2d93(%rip),%rdx        # 140004350 <.refptr.__CTOR_LIST__>
   1400015bd:	48 8b 02             	mov    (%rdx),%rax
   1400015c0:	89 c1                	mov    %eax,%ecx
   1400015c2:	83 f8 ff             	cmp    $0xffffffff,%eax
   1400015c5:	74 39                	je     140001600 <__do_global_ctors+0x50>
   1400015c7:	85 c9                	test   %ecx,%ecx
   1400015c9:	74 20                	je     1400015eb <__do_global_ctors+0x3b>
   1400015cb:	89 c8                	mov    %ecx,%eax
   1400015cd:	83 e9 01             	sub    $0x1,%ecx
   1400015d0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   1400015d4:	48 29 c8             	sub    %rcx,%rax
   1400015d7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   1400015dc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400015e0:	ff 13                	call   *(%rbx)
   1400015e2:	48 83 eb 08          	sub    $0x8,%rbx
   1400015e6:	48 39 f3             	cmp    %rsi,%rbx
   1400015e9:	75 f5                	jne    1400015e0 <__do_global_ctors+0x30>
   1400015eb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001570 <__do_global_dtors>
   1400015f2:	48 83 c4 28          	add    $0x28,%rsp
   1400015f6:	5b                   	pop    %rbx
   1400015f7:	5e                   	pop    %rsi
   1400015f8:	e9 f3 fe ff ff       	jmp    1400014f0 <atexit>
   1400015fd:	0f 1f 00             	nopl   (%rax)
   140001600:	31 c0                	xor    %eax,%eax
   140001602:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001608:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000160c:	89 c1                	mov    %eax,%ecx
   14000160e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001613:	4c 89 c0             	mov    %r8,%rax
   140001616:	75 f0                	jne    140001608 <__do_global_ctors+0x58>
   140001618:	eb ad                	jmp    1400015c7 <__do_global_ctors+0x17>
   14000161a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001620 <__main>:
   140001620:	8b 05 1a 5a 00 00    	mov    0x5a1a(%rip),%eax        # 140007040 <initialized>
   140001626:	85 c0                	test   %eax,%eax
   140001628:	74 06                	je     140001630 <__main+0x10>
   14000162a:	c3                   	ret    
   14000162b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001630:	c7 05 06 5a 00 00 01 	movl   $0x1,0x5a06(%rip)        # 140007040 <initialized>
   140001637:	00 00 00 
   14000163a:	e9 71 ff ff ff       	jmp    1400015b0 <__do_global_ctors>
   14000163f:	90                   	nop

0000000140001640 <_setargv>:
   140001640:	31 c0                	xor    %eax,%eax
   140001642:	c3                   	ret    
   140001643:	90                   	nop
   140001644:	90                   	nop
   140001645:	90                   	nop
   140001646:	90                   	nop
   140001647:	90                   	nop
   140001648:	90                   	nop
   140001649:	90                   	nop
   14000164a:	90                   	nop
   14000164b:	90                   	nop
   14000164c:	90                   	nop
   14000164d:	90                   	nop
   14000164e:	90                   	nop
   14000164f:	90                   	nop

0000000140001650 <__dyn_tls_dtor>:
   140001650:	48 83 ec 28          	sub    $0x28,%rsp
   140001654:	83 fa 03             	cmp    $0x3,%edx
   140001657:	74 17                	je     140001670 <__dyn_tls_dtor+0x20>
   140001659:	85 d2                	test   %edx,%edx
   14000165b:	74 13                	je     140001670 <__dyn_tls_dtor+0x20>
   14000165d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001662:	48 83 c4 28          	add    $0x28,%rsp
   140001666:	c3                   	ret    
   140001667:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000166e:	00 00 
   140001670:	e8 9b 0a 00 00       	call   140002110 <__mingw_TLScallback>
   140001675:	b8 01 00 00 00       	mov    $0x1,%eax
   14000167a:	48 83 c4 28          	add    $0x28,%rsp
   14000167e:	c3                   	ret    
   14000167f:	90                   	nop

0000000140001680 <__dyn_tls_init>:
   140001680:	56                   	push   %rsi
   140001681:	53                   	push   %rbx
   140001682:	48 83 ec 28          	sub    $0x28,%rsp
   140001686:	48 8b 05 a3 2c 00 00 	mov    0x2ca3(%rip),%rax        # 140004330 <.refptr._CRT_MT>
   14000168d:	83 38 02             	cmpl   $0x2,(%rax)
   140001690:	74 06                	je     140001698 <__dyn_tls_init+0x18>
   140001692:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001698:	83 fa 02             	cmp    $0x2,%edx
   14000169b:	74 13                	je     1400016b0 <__dyn_tls_init+0x30>
   14000169d:	83 fa 01             	cmp    $0x1,%edx
   1400016a0:	74 4e                	je     1400016f0 <__dyn_tls_init+0x70>
   1400016a2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016a7:	48 83 c4 28          	add    $0x28,%rsp
   1400016ab:	5b                   	pop    %rbx
   1400016ac:	5e                   	pop    %rsi
   1400016ad:	c3                   	ret    
   1400016ae:	66 90                	xchg   %ax,%ax
   1400016b0:	48 8d 1d a1 79 00 00 	lea    0x79a1(%rip),%rbx        # 140009058 <__xd_z>
   1400016b7:	48 8d 35 9a 79 00 00 	lea    0x799a(%rip),%rsi        # 140009058 <__xd_z>
   1400016be:	48 39 de             	cmp    %rbx,%rsi
   1400016c1:	74 df                	je     1400016a2 <__dyn_tls_init+0x22>
   1400016c3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400016c8:	48 8b 03             	mov    (%rbx),%rax
   1400016cb:	48 85 c0             	test   %rax,%rax
   1400016ce:	74 02                	je     1400016d2 <__dyn_tls_init+0x52>
   1400016d0:	ff d0                	call   *%rax
   1400016d2:	48 83 c3 08          	add    $0x8,%rbx
   1400016d6:	48 39 de             	cmp    %rbx,%rsi
   1400016d9:	75 ed                	jne    1400016c8 <__dyn_tls_init+0x48>
   1400016db:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016e0:	48 83 c4 28          	add    $0x28,%rsp
   1400016e4:	5b                   	pop    %rbx
   1400016e5:	5e                   	pop    %rsi
   1400016e6:	c3                   	ret    
   1400016e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400016ee:	00 00 
   1400016f0:	e8 1b 0a 00 00       	call   140002110 <__mingw_TLScallback>
   1400016f5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400016fa:	48 83 c4 28          	add    $0x28,%rsp
   1400016fe:	5b                   	pop    %rbx
   1400016ff:	5e                   	pop    %rsi
   140001700:	c3                   	ret    
   140001701:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001708:	00 00 00 00 
   14000170c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001710 <__tlregdtor>:
   140001710:	31 c0                	xor    %eax,%eax
   140001712:	c3                   	ret    
   140001713:	90                   	nop
   140001714:	90                   	nop
   140001715:	90                   	nop
   140001716:	90                   	nop
   140001717:	90                   	nop
   140001718:	90                   	nop
   140001719:	90                   	nop
   14000171a:	90                   	nop
   14000171b:	90                   	nop
   14000171c:	90                   	nop
   14000171d:	90                   	nop
   14000171e:	90                   	nop
   14000171f:	90                   	nop

0000000140001720 <_matherr>:
   140001720:	56                   	push   %rsi
   140001721:	53                   	push   %rbx
   140001722:	48 83 ec 78          	sub    $0x78,%rsp
   140001726:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000172b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   140001730:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   140001736:	83 39 06             	cmpl   $0x6,(%rcx)
   140001739:	0f 87 cd 00 00 00    	ja     14000180c <_matherr+0xec>
   14000173f:	8b 01                	mov    (%rcx),%eax
   140001741:	48 8d 15 3c 2a 00 00 	lea    0x2a3c(%rip),%rdx        # 140004184 <.rdata+0x124>
   140001748:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000174c:	48 01 d0             	add    %rdx,%rax
   14000174f:	ff e0                	jmp    *%rax
   140001751:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001758:	48 8d 1d 20 29 00 00 	lea    0x2920(%rip),%rbx        # 14000407f <.rdata+0x1f>
   14000175f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001765:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000176a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000176f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001773:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001778:	e8 f3 0e 00 00       	call   140002670 <__acrt_iob_func>
   14000177d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001784:	49 89 d8             	mov    %rbx,%r8
   140001787:	48 8d 15 ca 29 00 00 	lea    0x29ca(%rip),%rdx        # 140004158 <.rdata+0xf8>
   14000178e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001794:	48 89 c1             	mov    %rax,%rcx
   140001797:	49 89 f1             	mov    %rsi,%r9
   14000179a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400017a0:	e8 4b 0f 00 00       	call   1400026f0 <fprintf>
   1400017a5:	90                   	nop
   1400017a6:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   1400017ab:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   1400017b0:	31 c0                	xor    %eax,%eax
   1400017b2:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   1400017b8:	48 83 c4 78          	add    $0x78,%rsp
   1400017bc:	5b                   	pop    %rbx
   1400017bd:	5e                   	pop    %rsi
   1400017be:	c3                   	ret    
   1400017bf:	90                   	nop
   1400017c0:	48 8d 1d 99 28 00 00 	lea    0x2899(%rip),%rbx        # 140004060 <.rdata>
   1400017c7:	eb 96                	jmp    14000175f <_matherr+0x3f>
   1400017c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017d0:	48 8d 1d e9 28 00 00 	lea    0x28e9(%rip),%rbx        # 1400040c0 <.rdata+0x60>
   1400017d7:	eb 86                	jmp    14000175f <_matherr+0x3f>
   1400017d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400017e0:	48 8d 1d b9 28 00 00 	lea    0x28b9(%rip),%rbx        # 1400040a0 <.rdata+0x40>
   1400017e7:	e9 73 ff ff ff       	jmp    14000175f <_matherr+0x3f>
   1400017ec:	0f 1f 40 00          	nopl   0x0(%rax)
   1400017f0:	48 8d 1d 19 29 00 00 	lea    0x2919(%rip),%rbx        # 140004110 <.rdata+0xb0>
   1400017f7:	e9 63 ff ff ff       	jmp    14000175f <_matherr+0x3f>
   1400017fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001800:	48 8d 1d e1 28 00 00 	lea    0x28e1(%rip),%rbx        # 1400040e8 <.rdata+0x88>
   140001807:	e9 53 ff ff ff       	jmp    14000175f <_matherr+0x3f>
   14000180c:	48 8d 1d 33 29 00 00 	lea    0x2933(%rip),%rbx        # 140004146 <.rdata+0xe6>
   140001813:	e9 47 ff ff ff       	jmp    14000175f <_matherr+0x3f>
   140001818:	90                   	nop
   140001819:	90                   	nop
   14000181a:	90                   	nop
   14000181b:	90                   	nop
   14000181c:	90                   	nop
   14000181d:	90                   	nop
   14000181e:	90                   	nop
   14000181f:	90                   	nop

0000000140001820 <_fpreset>:
   140001820:	db e3                	fninit 
   140001822:	c3                   	ret    
   140001823:	90                   	nop
   140001824:	90                   	nop
   140001825:	90                   	nop
   140001826:	90                   	nop
   140001827:	90                   	nop
   140001828:	90                   	nop
   140001829:	90                   	nop
   14000182a:	90                   	nop
   14000182b:	90                   	nop
   14000182c:	90                   	nop
   14000182d:	90                   	nop
   14000182e:	90                   	nop
   14000182f:	90                   	nop

0000000140001830 <__report_error>:
   140001830:	41 54                	push   %r12
   140001832:	53                   	push   %rbx
   140001833:	48 83 ec 38          	sub    $0x38,%rsp
   140001837:	49 89 cc             	mov    %rcx,%r12
   14000183a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000183f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001844:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001849:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000184e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001853:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001858:	e8 13 0e 00 00       	call   140002670 <__acrt_iob_func>
   14000185d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001863:	ba 01 00 00 00       	mov    $0x1,%edx
   140001868:	48 8d 0d 31 29 00 00 	lea    0x2931(%rip),%rcx        # 1400041a0 <.rdata>
   14000186f:	49 89 c1             	mov    %rax,%r9
   140001872:	e8 89 0e 00 00       	call   140002700 <fwrite>
   140001877:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   14000187c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001881:	e8 ea 0d 00 00       	call   140002670 <__acrt_iob_func>
   140001886:	4c 89 e2             	mov    %r12,%rdx
   140001889:	48 89 c1             	mov    %rax,%rcx
   14000188c:	49 89 d8             	mov    %rbx,%r8
   14000188f:	e8 9c 0e 00 00       	call   140002730 <vfprintf>
   140001894:	e8 3f 0e 00 00       	call   1400026d8 <abort>
   140001899:	90                   	nop
   14000189a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400018a0 <mark_section_writable>:
   1400018a0:	41 54                	push   %r12
   1400018a2:	56                   	push   %rsi
   1400018a3:	53                   	push   %rbx
   1400018a4:	48 83 ec 50          	sub    $0x50,%rsp
   1400018a8:	48 63 1d f5 57 00 00 	movslq 0x57f5(%rip),%rbx        # 1400070a4 <maxSections>
   1400018af:	49 89 cc             	mov    %rcx,%r12
   1400018b2:	85 db                	test   %ebx,%ebx
   1400018b4:	0f 8e 16 01 00 00    	jle    1400019d0 <mark_section_writable+0x130>
   1400018ba:	48 8b 05 e7 57 00 00 	mov    0x57e7(%rip),%rax        # 1400070a8 <the_secs>
   1400018c1:	45 31 c9             	xor    %r9d,%r9d
   1400018c4:	48 83 c0 18          	add    $0x18,%rax
   1400018c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400018cf:	00 
   1400018d0:	4c 8b 00             	mov    (%rax),%r8
   1400018d3:	4d 39 e0             	cmp    %r12,%r8
   1400018d6:	77 13                	ja     1400018eb <mark_section_writable+0x4b>
   1400018d8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   1400018dc:	8b 52 08             	mov    0x8(%rdx),%edx
   1400018df:	49 01 d0             	add    %rdx,%r8
   1400018e2:	4d 39 c4             	cmp    %r8,%r12
   1400018e5:	0f 82 8a 00 00 00    	jb     140001975 <mark_section_writable+0xd5>
   1400018eb:	41 83 c1 01          	add    $0x1,%r9d
   1400018ef:	48 83 c0 28          	add    $0x28,%rax
   1400018f3:	41 39 d9             	cmp    %ebx,%r9d
   1400018f6:	75 d8                	jne    1400018d0 <mark_section_writable+0x30>
   1400018f8:	4c 89 e1             	mov    %r12,%rcx
   1400018fb:	e8 20 0a 00 00       	call   140002320 <__mingw_GetSectionForAddress>
   140001900:	48 89 c6             	mov    %rax,%rsi
   140001903:	48 85 c0             	test   %rax,%rax
   140001906:	0f 84 e6 00 00 00    	je     1400019f2 <mark_section_writable+0x152>
   14000190c:	48 8b 05 95 57 00 00 	mov    0x5795(%rip),%rax        # 1400070a8 <the_secs>
   140001913:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140001917:	48 c1 e3 03          	shl    $0x3,%rbx
   14000191b:	48 01 d8             	add    %rbx,%rax
   14000191e:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140001922:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001928:	e8 23 0b 00 00       	call   140002450 <_GetPEImageBase>
   14000192d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140001930:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140001936:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000193a:	48 8b 05 67 57 00 00 	mov    0x5767(%rip),%rax        # 1400070a8 <the_secs>
   140001941:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140001946:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000194b:	ff 15 6b 68 00 00    	call   *0x686b(%rip)        # 1400081bc <__imp_VirtualQuery>
   140001951:	48 85 c0             	test   %rax,%rax
   140001954:	0f 84 7d 00 00 00    	je     1400019d7 <mark_section_writable+0x137>
   14000195a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000195e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140001961:	83 e2 bf             	and    $0xffffffbf,%edx
   140001964:	74 08                	je     14000196e <mark_section_writable+0xce>
   140001966:	8d 50 fc             	lea    -0x4(%rax),%edx
   140001969:	83 e2 fb             	and    $0xfffffffb,%edx
   14000196c:	75 12                	jne    140001980 <mark_section_writable+0xe0>
   14000196e:	83 05 2f 57 00 00 01 	addl   $0x1,0x572f(%rip)        # 1400070a4 <maxSections>
   140001975:	48 83 c4 50          	add    $0x50,%rsp
   140001979:	5b                   	pop    %rbx
   14000197a:	5e                   	pop    %rsi
   14000197b:	41 5c                	pop    %r12
   14000197d:	c3                   	ret    
   14000197e:	66 90                	xchg   %ax,%ax
   140001980:	83 f8 02             	cmp    $0x2,%eax
   140001983:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140001988:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000198d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140001993:	b8 40 00 00 00       	mov    $0x40,%eax
   140001998:	44 0f 45 c0          	cmovne %eax,%r8d
   14000199c:	48 03 1d 05 57 00 00 	add    0x5705(%rip),%rbx        # 1400070a8 <the_secs>
   1400019a3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400019a7:	49 89 d9             	mov    %rbx,%r9
   1400019aa:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400019ae:	ff 15 00 68 00 00    	call   *0x6800(%rip)        # 1400081b4 <__imp_VirtualProtect>
   1400019b4:	85 c0                	test   %eax,%eax
   1400019b6:	75 b6                	jne    14000196e <mark_section_writable+0xce>
   1400019b8:	ff 15 be 67 00 00    	call   *0x67be(%rip)        # 14000817c <__imp_GetLastError>
   1400019be:	48 8d 0d 53 28 00 00 	lea    0x2853(%rip),%rcx        # 140004218 <.rdata+0x78>
   1400019c5:	89 c2                	mov    %eax,%edx
   1400019c7:	e8 64 fe ff ff       	call   140001830 <__report_error>
   1400019cc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400019d0:	31 db                	xor    %ebx,%ebx
   1400019d2:	e9 21 ff ff ff       	jmp    1400018f8 <mark_section_writable+0x58>
   1400019d7:	48 8b 05 ca 56 00 00 	mov    0x56ca(%rip),%rax        # 1400070a8 <the_secs>
   1400019de:	8b 56 08             	mov    0x8(%rsi),%edx
   1400019e1:	48 8d 0d f8 27 00 00 	lea    0x27f8(%rip),%rcx        # 1400041e0 <.rdata+0x40>
   1400019e8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400019ed:	e8 3e fe ff ff       	call   140001830 <__report_error>
   1400019f2:	4c 89 e2             	mov    %r12,%rdx
   1400019f5:	48 8d 0d c4 27 00 00 	lea    0x27c4(%rip),%rcx        # 1400041c0 <.rdata+0x20>
   1400019fc:	e8 2f fe ff ff       	call   140001830 <__report_error>
   140001a01:	90                   	nop
   140001a02:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001a09:	00 00 00 00 
   140001a0d:	0f 1f 00             	nopl   (%rax)

0000000140001a10 <_pei386_runtime_relocator>:
   140001a10:	55                   	push   %rbp
   140001a11:	41 57                	push   %r15
   140001a13:	41 56                	push   %r14
   140001a15:	41 55                	push   %r13
   140001a17:	41 54                	push   %r12
   140001a19:	57                   	push   %rdi
   140001a1a:	56                   	push   %rsi
   140001a1b:	53                   	push   %rbx
   140001a1c:	48 83 ec 48          	sub    $0x48,%rsp
   140001a20:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001a25:	8b 35 75 56 00 00    	mov    0x5675(%rip),%esi        # 1400070a0 <was_init.0>
   140001a2b:	85 f6                	test   %esi,%esi
   140001a2d:	74 11                	je     140001a40 <_pei386_runtime_relocator+0x30>
   140001a2f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140001a33:	5b                   	pop    %rbx
   140001a34:	5e                   	pop    %rsi
   140001a35:	5f                   	pop    %rdi
   140001a36:	41 5c                	pop    %r12
   140001a38:	41 5d                	pop    %r13
   140001a3a:	41 5e                	pop    %r14
   140001a3c:	41 5f                	pop    %r15
   140001a3e:	5d                   	pop    %rbp
   140001a3f:	c3                   	ret    
   140001a40:	c7 05 56 56 00 00 01 	movl   $0x1,0x5656(%rip)        # 1400070a0 <was_init.0>
   140001a47:	00 00 00 
   140001a4a:	e8 51 09 00 00       	call   1400023a0 <__mingw_GetSectionCount>
   140001a4f:	48 98                	cltq   
   140001a51:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140001a55:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   140001a5c:	00 
   140001a5d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140001a61:	e8 7a 0b 00 00       	call   1400025e0 <___chkstk_ms>
   140001a66:	48 8b 3d f3 28 00 00 	mov    0x28f3(%rip),%rdi        # 140004360 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   140001a6d:	48 8b 1d fc 28 00 00 	mov    0x28fc(%rip),%rbx        # 140004370 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140001a74:	c7 05 26 56 00 00 00 	movl   $0x0,0x5626(%rip)        # 1400070a4 <maxSections>
   140001a7b:	00 00 00 
   140001a7e:	48 29 c4             	sub    %rax,%rsp
   140001a81:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140001a86:	48 89 05 1b 56 00 00 	mov    %rax,0x561b(%rip)        # 1400070a8 <the_secs>
   140001a8d:	48 89 f8             	mov    %rdi,%rax
   140001a90:	48 29 d8             	sub    %rbx,%rax
   140001a93:	48 83 f8 07          	cmp    $0x7,%rax
   140001a97:	7e 96                	jle    140001a2f <_pei386_runtime_relocator+0x1f>
   140001a99:	8b 13                	mov    (%rbx),%edx
   140001a9b:	48 83 f8 0b          	cmp    $0xb,%rax
   140001a9f:	0f 8f 83 01 00 00    	jg     140001c28 <_pei386_runtime_relocator+0x218>
   140001aa5:	8b 03                	mov    (%rbx),%eax
   140001aa7:	85 c0                	test   %eax,%eax
   140001aa9:	0f 85 29 02 00 00    	jne    140001cd8 <_pei386_runtime_relocator+0x2c8>
   140001aaf:	8b 43 04             	mov    0x4(%rbx),%eax
   140001ab2:	85 c0                	test   %eax,%eax
   140001ab4:	0f 85 1e 02 00 00    	jne    140001cd8 <_pei386_runtime_relocator+0x2c8>
   140001aba:	8b 53 08             	mov    0x8(%rbx),%edx
   140001abd:	83 fa 01             	cmp    $0x1,%edx
   140001ac0:	0f 85 72 02 00 00    	jne    140001d38 <_pei386_runtime_relocator+0x328>
   140001ac6:	48 83 c3 0c          	add    $0xc,%rbx
   140001aca:	48 39 fb             	cmp    %rdi,%rbx
   140001acd:	0f 83 5c ff ff ff    	jae    140001a2f <_pei386_runtime_relocator+0x1f>
   140001ad3:	4c 8b 3d b6 28 00 00 	mov    0x28b6(%rip),%r15        # 140004390 <.refptr.__image_base__>
   140001ada:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   140001ae1:	ff ff ff 
   140001ae4:	eb 5d                	jmp    140001b43 <_pei386_runtime_relocator+0x133>
   140001ae6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001aed:	00 00 00 
   140001af0:	41 0f b6 06          	movzbl (%r14),%eax
   140001af4:	49 89 c3             	mov    %rax,%r11
   140001af7:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   140001afe:	84 c0                	test   %al,%al
   140001b00:	49 0f 48 c3          	cmovs  %r11,%rax
   140001b04:	48 29 c8             	sub    %rcx,%rax
   140001b07:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001b0e:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001b12:	75 17                	jne    140001b2b <_pei386_runtime_relocator+0x11b>
   140001b14:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   140001b18:	0f 8c 06 02 00 00    	jl     140001d24 <_pei386_runtime_relocator+0x314>
   140001b1e:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   140001b25:	0f 8f f9 01 00 00    	jg     140001d24 <_pei386_runtime_relocator+0x314>
   140001b2b:	4c 89 f1             	mov    %r14,%rcx
   140001b2e:	e8 6d fd ff ff       	call   1400018a0 <mark_section_writable>
   140001b33:	45 88 2e             	mov    %r13b,(%r14)
   140001b36:	48 83 c3 0c          	add    $0xc,%rbx
   140001b3a:	48 39 fb             	cmp    %rdi,%rbx
   140001b3d:	0f 83 8d 00 00 00    	jae    140001bd0 <_pei386_runtime_relocator+0x1c0>
   140001b43:	8b 0b                	mov    (%rbx),%ecx
   140001b45:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140001b49:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   140001b4d:	4c 01 f9             	add    %r15,%rcx
   140001b50:	41 0f b6 d0          	movzbl %r8b,%edx
   140001b54:	4c 8b 09             	mov    (%rcx),%r9
   140001b57:	4d 01 fe             	add    %r15,%r14
   140001b5a:	83 fa 20             	cmp    $0x20,%edx
   140001b5d:	0f 84 25 01 00 00    	je     140001c88 <_pei386_runtime_relocator+0x278>
   140001b63:	0f 87 e7 00 00 00    	ja     140001c50 <_pei386_runtime_relocator+0x240>
   140001b69:	83 fa 08             	cmp    $0x8,%edx
   140001b6c:	74 82                	je     140001af0 <_pei386_runtime_relocator+0xe0>
   140001b6e:	83 fa 10             	cmp    $0x10,%edx
   140001b71:	0f 85 a1 01 00 00    	jne    140001d18 <_pei386_runtime_relocator+0x308>
   140001b77:	41 0f b7 06          	movzwl (%r14),%eax
   140001b7b:	49 89 c3             	mov    %rax,%r11
   140001b7e:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   140001b85:	66 85 c0             	test   %ax,%ax
   140001b88:	49 0f 48 c3          	cmovs  %r11,%rax
   140001b8c:	48 29 c8             	sub    %rcx,%rax
   140001b8f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001b96:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001b9a:	75 1a                	jne    140001bb6 <_pei386_runtime_relocator+0x1a6>
   140001b9c:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   140001ba3:	0f 8c 7b 01 00 00    	jl     140001d24 <_pei386_runtime_relocator+0x314>
   140001ba9:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   140001bb0:	0f 8f 6e 01 00 00    	jg     140001d24 <_pei386_runtime_relocator+0x314>
   140001bb6:	4c 89 f1             	mov    %r14,%rcx
   140001bb9:	48 83 c3 0c          	add    $0xc,%rbx
   140001bbd:	e8 de fc ff ff       	call   1400018a0 <mark_section_writable>
   140001bc2:	66 45 89 2e          	mov    %r13w,(%r14)
   140001bc6:	48 39 fb             	cmp    %rdi,%rbx
   140001bc9:	0f 82 74 ff ff ff    	jb     140001b43 <_pei386_runtime_relocator+0x133>
   140001bcf:	90                   	nop
   140001bd0:	8b 15 ce 54 00 00    	mov    0x54ce(%rip),%edx        # 1400070a4 <maxSections>
   140001bd6:	85 d2                	test   %edx,%edx
   140001bd8:	0f 8e 51 fe ff ff    	jle    140001a2f <_pei386_runtime_relocator+0x1f>
   140001bde:	48 8b 3d cf 65 00 00 	mov    0x65cf(%rip),%rdi        # 1400081b4 <__imp_VirtualProtect>
   140001be5:	31 db                	xor    %ebx,%ebx
   140001be7:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   140001beb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001bf0:	48 8b 05 b1 54 00 00 	mov    0x54b1(%rip),%rax        # 1400070a8 <the_secs>
   140001bf7:	48 01 d8             	add    %rbx,%rax
   140001bfa:	44 8b 00             	mov    (%rax),%r8d
   140001bfd:	45 85 c0             	test   %r8d,%r8d
   140001c00:	74 0d                	je     140001c0f <_pei386_runtime_relocator+0x1ff>
   140001c02:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001c06:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001c0a:	4d 89 e1             	mov    %r12,%r9
   140001c0d:	ff d7                	call   *%rdi
   140001c0f:	83 c6 01             	add    $0x1,%esi
   140001c12:	48 83 c3 28          	add    $0x28,%rbx
   140001c16:	3b 35 88 54 00 00    	cmp    0x5488(%rip),%esi        # 1400070a4 <maxSections>
   140001c1c:	7c d2                	jl     140001bf0 <_pei386_runtime_relocator+0x1e0>
   140001c1e:	e9 0c fe ff ff       	jmp    140001a2f <_pei386_runtime_relocator+0x1f>
   140001c23:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c28:	85 d2                	test   %edx,%edx
   140001c2a:	0f 85 a8 00 00 00    	jne    140001cd8 <_pei386_runtime_relocator+0x2c8>
   140001c30:	8b 43 04             	mov    0x4(%rbx),%eax
   140001c33:	89 c2                	mov    %eax,%edx
   140001c35:	0b 53 08             	or     0x8(%rbx),%edx
   140001c38:	0f 85 74 fe ff ff    	jne    140001ab2 <_pei386_runtime_relocator+0xa2>
   140001c3e:	48 83 c3 0c          	add    $0xc,%rbx
   140001c42:	e9 5e fe ff ff       	jmp    140001aa5 <_pei386_runtime_relocator+0x95>
   140001c47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001c4e:	00 00 
   140001c50:	83 fa 40             	cmp    $0x40,%edx
   140001c53:	0f 85 bf 00 00 00    	jne    140001d18 <_pei386_runtime_relocator+0x308>
   140001c59:	49 8b 06             	mov    (%r14),%rax
   140001c5c:	48 29 c8             	sub    %rcx,%rax
   140001c5f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001c66:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001c6a:	75 09                	jne    140001c75 <_pei386_runtime_relocator+0x265>
   140001c6c:	4d 85 ed             	test   %r13,%r13
   140001c6f:	0f 89 af 00 00 00    	jns    140001d24 <_pei386_runtime_relocator+0x314>
   140001c75:	4c 89 f1             	mov    %r14,%rcx
   140001c78:	e8 23 fc ff ff       	call   1400018a0 <mark_section_writable>
   140001c7d:	4d 89 2e             	mov    %r13,(%r14)
   140001c80:	e9 b1 fe ff ff       	jmp    140001b36 <_pei386_runtime_relocator+0x126>
   140001c85:	0f 1f 00             	nopl   (%rax)
   140001c88:	41 8b 06             	mov    (%r14),%eax
   140001c8b:	49 89 c2             	mov    %rax,%r10
   140001c8e:	4c 09 e0             	or     %r12,%rax
   140001c91:	45 85 d2             	test   %r10d,%r10d
   140001c94:	49 0f 49 c2          	cmovns %r10,%rax
   140001c98:	48 29 c8             	sub    %rcx,%rax
   140001c9b:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140001ca2:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140001ca6:	75 19                	jne    140001cc1 <_pei386_runtime_relocator+0x2b1>
   140001ca8:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   140001caf:	ff ff ff 
   140001cb2:	49 39 c5             	cmp    %rax,%r13
   140001cb5:	7e 6d                	jle    140001d24 <_pei386_runtime_relocator+0x314>
   140001cb7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001cbc:	49 39 c5             	cmp    %rax,%r13
   140001cbf:	7f 63                	jg     140001d24 <_pei386_runtime_relocator+0x314>
   140001cc1:	4c 89 f1             	mov    %r14,%rcx
   140001cc4:	e8 d7 fb ff ff       	call   1400018a0 <mark_section_writable>
   140001cc9:	45 89 2e             	mov    %r13d,(%r14)
   140001ccc:	e9 65 fe ff ff       	jmp    140001b36 <_pei386_runtime_relocator+0x126>
   140001cd1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001cd8:	48 39 fb             	cmp    %rdi,%rbx
   140001cdb:	0f 83 4e fd ff ff    	jae    140001a2f <_pei386_runtime_relocator+0x1f>
   140001ce1:	4c 8b 35 a8 26 00 00 	mov    0x26a8(%rip),%r14        # 140004390 <.refptr.__image_base__>
   140001ce8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001cef:	00 
   140001cf0:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   140001cf4:	44 8b 2b             	mov    (%rbx),%r13d
   140001cf7:	48 83 c3 08          	add    $0x8,%rbx
   140001cfb:	4d 01 f4             	add    %r14,%r12
   140001cfe:	45 03 2c 24          	add    (%r12),%r13d
   140001d02:	4c 89 e1             	mov    %r12,%rcx
   140001d05:	e8 96 fb ff ff       	call   1400018a0 <mark_section_writable>
   140001d0a:	45 89 2c 24          	mov    %r13d,(%r12)
   140001d0e:	48 39 fb             	cmp    %rdi,%rbx
   140001d11:	72 dd                	jb     140001cf0 <_pei386_runtime_relocator+0x2e0>
   140001d13:	e9 b8 fe ff ff       	jmp    140001bd0 <_pei386_runtime_relocator+0x1c0>
   140001d18:	48 8d 0d 59 25 00 00 	lea    0x2559(%rip),%rcx        # 140004278 <.rdata+0xd8>
   140001d1f:	e8 0c fb ff ff       	call   140001830 <__report_error>
   140001d24:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   140001d29:	4d 89 f0             	mov    %r14,%r8
   140001d2c:	48 8d 0d 75 25 00 00 	lea    0x2575(%rip),%rcx        # 1400042a8 <.rdata+0x108>
   140001d33:	e8 f8 fa ff ff       	call   140001830 <__report_error>
   140001d38:	48 8d 0d 01 25 00 00 	lea    0x2501(%rip),%rcx        # 140004240 <.rdata+0xa0>
   140001d3f:	e8 ec fa ff ff       	call   140001830 <__report_error>
   140001d44:	90                   	nop
   140001d45:	90                   	nop
   140001d46:	90                   	nop
   140001d47:	90                   	nop
   140001d48:	90                   	nop
   140001d49:	90                   	nop
   140001d4a:	90                   	nop
   140001d4b:	90                   	nop
   140001d4c:	90                   	nop
   140001d4d:	90                   	nop
   140001d4e:	90                   	nop
   140001d4f:	90                   	nop

0000000140001d50 <__mingw_raise_matherr>:
   140001d50:	48 83 ec 58          	sub    $0x58,%rsp
   140001d54:	48 8b 05 55 53 00 00 	mov    0x5355(%rip),%rax        # 1400070b0 <stUserMathErr>
   140001d5b:	48 85 c0             	test   %rax,%rax
   140001d5e:	74 2c                	je     140001d8c <__mingw_raise_matherr+0x3c>
   140001d60:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001d67:	00 00 
   140001d69:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001d6d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001d72:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001d77:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   140001d7d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140001d83:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001d89:	ff d0                	call   *%rax
   140001d8b:	90                   	nop
   140001d8c:	48 83 c4 58          	add    $0x58,%rsp
   140001d90:	c3                   	ret    
   140001d91:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001d98:	00 00 00 00 
   140001d9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001da0 <__mingw_setusermatherr>:
   140001da0:	48 89 0d 09 53 00 00 	mov    %rcx,0x5309(%rip)        # 1400070b0 <stUserMathErr>
   140001da7:	e9 04 09 00 00       	jmp    1400026b0 <__setusermatherr>
   140001dac:	90                   	nop
   140001dad:	90                   	nop
   140001dae:	90                   	nop
   140001daf:	90                   	nop

0000000140001db0 <_gnu_exception_handler>:
   140001db0:	41 54                	push   %r12
   140001db2:	48 83 ec 20          	sub    $0x20,%rsp
   140001db6:	48 8b 11             	mov    (%rcx),%rdx
   140001db9:	8b 02                	mov    (%rdx),%eax
   140001dbb:	49 89 cc             	mov    %rcx,%r12
   140001dbe:	89 c1                	mov    %eax,%ecx
   140001dc0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001dc6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001dcc:	0f 84 be 00 00 00    	je     140001e90 <_gnu_exception_handler+0xe0>
   140001dd2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001dd7:	0f 87 9a 00 00 00    	ja     140001e77 <_gnu_exception_handler+0xc7>
   140001ddd:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001de2:	76 44                	jbe    140001e28 <_gnu_exception_handler+0x78>
   140001de4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001de9:	83 f8 09             	cmp    $0x9,%eax
   140001dec:	77 2a                	ja     140001e18 <_gnu_exception_handler+0x68>
   140001dee:	48 8d 15 0b 25 00 00 	lea    0x250b(%rip),%rdx        # 140004300 <.rdata>
   140001df5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001df9:	48 01 d0             	add    %rdx,%rax
   140001dfc:	ff e0                	jmp    *%rax
   140001dfe:	66 90                	xchg   %ax,%ax
   140001e00:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e05:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e0a:	e8 09 09 00 00       	call   140002718 <signal>
   140001e0f:	e8 0c fa ff ff       	call   140001820 <_fpreset>
   140001e14:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e18:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e1d:	48 83 c4 20          	add    $0x20,%rsp
   140001e21:	41 5c                	pop    %r12
   140001e23:	c3                   	ret    
   140001e24:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e28:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001e2d:	0f 84 dd 00 00 00    	je     140001f10 <_gnu_exception_handler+0x160>
   140001e33:	76 3b                	jbe    140001e70 <_gnu_exception_handler+0xc0>
   140001e35:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001e3a:	74 dc                	je     140001e18 <_gnu_exception_handler+0x68>
   140001e3c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001e41:	75 34                	jne    140001e77 <_gnu_exception_handler+0xc7>
   140001e43:	31 d2                	xor    %edx,%edx
   140001e45:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e4a:	e8 c9 08 00 00       	call   140002718 <signal>
   140001e4f:	48 83 f8 01          	cmp    $0x1,%rax
   140001e53:	0f 84 e3 00 00 00    	je     140001f3c <_gnu_exception_handler+0x18c>
   140001e59:	48 85 c0             	test   %rax,%rax
   140001e5c:	74 19                	je     140001e77 <_gnu_exception_handler+0xc7>
   140001e5e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001e63:	ff d0                	call   *%rax
   140001e65:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e6a:	eb b1                	jmp    140001e1d <_gnu_exception_handler+0x6d>
   140001e6c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e70:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001e75:	74 a1                	je     140001e18 <_gnu_exception_handler+0x68>
   140001e77:	48 8b 05 52 52 00 00 	mov    0x5252(%rip),%rax        # 1400070d0 <__mingw_oldexcpt_handler>
   140001e7e:	48 85 c0             	test   %rax,%rax
   140001e81:	74 1d                	je     140001ea0 <_gnu_exception_handler+0xf0>
   140001e83:	4c 89 e1             	mov    %r12,%rcx
   140001e86:	48 83 c4 20          	add    $0x20,%rsp
   140001e8a:	41 5c                	pop    %r12
   140001e8c:	48 ff e0             	rex.W jmp *%rax
   140001e8f:	90                   	nop
   140001e90:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001e94:	0f 85 38 ff ff ff    	jne    140001dd2 <_gnu_exception_handler+0x22>
   140001e9a:	e9 79 ff ff ff       	jmp    140001e18 <_gnu_exception_handler+0x68>
   140001e9f:	90                   	nop
   140001ea0:	31 c0                	xor    %eax,%eax
   140001ea2:	48 83 c4 20          	add    $0x20,%rsp
   140001ea6:	41 5c                	pop    %r12
   140001ea8:	c3                   	ret    
   140001ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001eb0:	31 d2                	xor    %edx,%edx
   140001eb2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001eb7:	e8 5c 08 00 00       	call   140002718 <signal>
   140001ebc:	48 83 f8 01          	cmp    $0x1,%rax
   140001ec0:	0f 84 3a ff ff ff    	je     140001e00 <_gnu_exception_handler+0x50>
   140001ec6:	48 85 c0             	test   %rax,%rax
   140001ec9:	74 ac                	je     140001e77 <_gnu_exception_handler+0xc7>
   140001ecb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ed0:	ff d0                	call   *%rax
   140001ed2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001ed7:	e9 41 ff ff ff       	jmp    140001e1d <_gnu_exception_handler+0x6d>
   140001edc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ee0:	31 d2                	xor    %edx,%edx
   140001ee2:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ee7:	e8 2c 08 00 00       	call   140002718 <signal>
   140001eec:	48 83 f8 01          	cmp    $0x1,%rax
   140001ef0:	75 d4                	jne    140001ec6 <_gnu_exception_handler+0x116>
   140001ef2:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ef7:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001efc:	e8 17 08 00 00       	call   140002718 <signal>
   140001f01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f06:	e9 12 ff ff ff       	jmp    140001e1d <_gnu_exception_handler+0x6d>
   140001f0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001f10:	31 d2                	xor    %edx,%edx
   140001f12:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f17:	e8 fc 07 00 00       	call   140002718 <signal>
   140001f1c:	48 83 f8 01          	cmp    $0x1,%rax
   140001f20:	74 31                	je     140001f53 <_gnu_exception_handler+0x1a3>
   140001f22:	48 85 c0             	test   %rax,%rax
   140001f25:	0f 84 4c ff ff ff    	je     140001e77 <_gnu_exception_handler+0xc7>
   140001f2b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f30:	ff d0                	call   *%rax
   140001f32:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001f37:	e9 e1 fe ff ff       	jmp    140001e1d <_gnu_exception_handler+0x6d>
   140001f3c:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f41:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001f46:	e8 cd 07 00 00       	call   140002718 <signal>
   140001f4b:	83 c8 ff             	or     $0xffffffff,%eax
   140001f4e:	e9 ca fe ff ff       	jmp    140001e1d <_gnu_exception_handler+0x6d>
   140001f53:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f58:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001f5d:	e8 b6 07 00 00       	call   140002718 <signal>
   140001f62:	83 c8 ff             	or     $0xffffffff,%eax
   140001f65:	e9 b3 fe ff ff       	jmp    140001e1d <_gnu_exception_handler+0x6d>
   140001f6a:	90                   	nop
   140001f6b:	90                   	nop
   140001f6c:	90                   	nop
   140001f6d:	90                   	nop
   140001f6e:	90                   	nop
   140001f6f:	90                   	nop

0000000140001f70 <__mingwthr_run_key_dtors.part.0>:
   140001f70:	41 55                	push   %r13
   140001f72:	41 54                	push   %r12
   140001f74:	57                   	push   %rdi
   140001f75:	56                   	push   %rsi
   140001f76:	53                   	push   %rbx
   140001f77:	48 83 ec 20          	sub    $0x20,%rsp
   140001f7b:	4c 8d 2d 7e 51 00 00 	lea    0x517e(%rip),%r13        # 140007100 <__mingwthr_cs>
   140001f82:	4c 89 e9             	mov    %r13,%rcx
   140001f85:	ff 15 e9 61 00 00    	call   *0x61e9(%rip)        # 140008174 <__imp_EnterCriticalSection>
   140001f8b:	48 8b 1d 4e 51 00 00 	mov    0x514e(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001f92:	48 85 db             	test   %rbx,%rbx
   140001f95:	74 35                	je     140001fcc <__mingwthr_run_key_dtors.part.0+0x5c>
   140001f97:	48 8b 3d 0e 62 00 00 	mov    0x620e(%rip),%rdi        # 1400081ac <__imp_TlsGetValue>
   140001f9e:	48 8b 35 d7 61 00 00 	mov    0x61d7(%rip),%rsi        # 14000817c <__imp_GetLastError>
   140001fa5:	0f 1f 00             	nopl   (%rax)
   140001fa8:	8b 0b                	mov    (%rbx),%ecx
   140001faa:	ff d7                	call   *%rdi
   140001fac:	49 89 c4             	mov    %rax,%r12
   140001faf:	ff d6                	call   *%rsi
   140001fb1:	85 c0                	test   %eax,%eax
   140001fb3:	75 0e                	jne    140001fc3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001fb5:	4d 85 e4             	test   %r12,%r12
   140001fb8:	74 09                	je     140001fc3 <__mingwthr_run_key_dtors.part.0+0x53>
   140001fba:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001fbe:	4c 89 e1             	mov    %r12,%rcx
   140001fc1:	ff d0                	call   *%rax
   140001fc3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001fc7:	48 85 db             	test   %rbx,%rbx
   140001fca:	75 dc                	jne    140001fa8 <__mingwthr_run_key_dtors.part.0+0x38>
   140001fcc:	4c 89 e9             	mov    %r13,%rcx
   140001fcf:	48 83 c4 20          	add    $0x20,%rsp
   140001fd3:	5b                   	pop    %rbx
   140001fd4:	5e                   	pop    %rsi
   140001fd5:	5f                   	pop    %rdi
   140001fd6:	41 5c                	pop    %r12
   140001fd8:	41 5d                	pop    %r13
   140001fda:	48 ff 25 b3 61 00 00 	rex.W jmp *0x61b3(%rip)        # 140008194 <__imp_LeaveCriticalSection>
   140001fe1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001fe8:	00 00 00 00 
   140001fec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001ff0 <___w64_mingwthr_add_key_dtor>:
   140001ff0:	41 54                	push   %r12
   140001ff2:	57                   	push   %rdi
   140001ff3:	56                   	push   %rsi
   140001ff4:	53                   	push   %rbx
   140001ff5:	48 83 ec 28          	sub    $0x28,%rsp
   140001ff9:	8b 05 e9 50 00 00    	mov    0x50e9(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001fff:	89 cf                	mov    %ecx,%edi
   140002001:	48 89 d6             	mov    %rdx,%rsi
   140002004:	85 c0                	test   %eax,%eax
   140002006:	75 10                	jne    140002018 <___w64_mingwthr_add_key_dtor+0x28>
   140002008:	48 83 c4 28          	add    $0x28,%rsp
   14000200c:	5b                   	pop    %rbx
   14000200d:	5e                   	pop    %rsi
   14000200e:	5f                   	pop    %rdi
   14000200f:	41 5c                	pop    %r12
   140002011:	c3                   	ret    
   140002012:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002018:	ba 18 00 00 00       	mov    $0x18,%edx
   14000201d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002022:	e8 b9 06 00 00       	call   1400026e0 <calloc>
   140002027:	48 89 c3             	mov    %rax,%rbx
   14000202a:	48 85 c0             	test   %rax,%rax
   14000202d:	74 3d                	je     14000206c <___w64_mingwthr_add_key_dtor+0x7c>
   14000202f:	4c 8d 25 ca 50 00 00 	lea    0x50ca(%rip),%r12        # 140007100 <__mingwthr_cs>
   140002036:	89 38                	mov    %edi,(%rax)
   140002038:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000203c:	4c 89 e1             	mov    %r12,%rcx
   14000203f:	ff 15 2f 61 00 00    	call   *0x612f(%rip)        # 140008174 <__imp_EnterCriticalSection>
   140002045:	48 8b 05 94 50 00 00 	mov    0x5094(%rip),%rax        # 1400070e0 <key_dtor_list>
   14000204c:	4c 89 e1             	mov    %r12,%rcx
   14000204f:	48 89 1d 8a 50 00 00 	mov    %rbx,0x508a(%rip)        # 1400070e0 <key_dtor_list>
   140002056:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000205a:	ff 15 34 61 00 00    	call   *0x6134(%rip)        # 140008194 <__imp_LeaveCriticalSection>
   140002060:	31 c0                	xor    %eax,%eax
   140002062:	48 83 c4 28          	add    $0x28,%rsp
   140002066:	5b                   	pop    %rbx
   140002067:	5e                   	pop    %rsi
   140002068:	5f                   	pop    %rdi
   140002069:	41 5c                	pop    %r12
   14000206b:	c3                   	ret    
   14000206c:	83 c8 ff             	or     $0xffffffff,%eax
   14000206f:	eb 97                	jmp    140002008 <___w64_mingwthr_add_key_dtor+0x18>
   140002071:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002078:	00 00 00 00 
   14000207c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002080 <___w64_mingwthr_remove_key_dtor>:
   140002080:	41 54                	push   %r12
   140002082:	53                   	push   %rbx
   140002083:	48 83 ec 28          	sub    $0x28,%rsp
   140002087:	8b 05 5b 50 00 00    	mov    0x505b(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000208d:	89 cb                	mov    %ecx,%ebx
   14000208f:	85 c0                	test   %eax,%eax
   140002091:	75 0d                	jne    1400020a0 <___w64_mingwthr_remove_key_dtor+0x20>
   140002093:	31 c0                	xor    %eax,%eax
   140002095:	48 83 c4 28          	add    $0x28,%rsp
   140002099:	5b                   	pop    %rbx
   14000209a:	41 5c                	pop    %r12
   14000209c:	c3                   	ret    
   14000209d:	0f 1f 00             	nopl   (%rax)
   1400020a0:	4c 8d 25 59 50 00 00 	lea    0x5059(%rip),%r12        # 140007100 <__mingwthr_cs>
   1400020a7:	4c 89 e1             	mov    %r12,%rcx
   1400020aa:	ff 15 c4 60 00 00    	call   *0x60c4(%rip)        # 140008174 <__imp_EnterCriticalSection>
   1400020b0:	48 8b 0d 29 50 00 00 	mov    0x5029(%rip),%rcx        # 1400070e0 <key_dtor_list>
   1400020b7:	48 85 c9             	test   %rcx,%rcx
   1400020ba:	74 27                	je     1400020e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020bc:	31 d2                	xor    %edx,%edx
   1400020be:	eb 0b                	jmp    1400020cb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400020c0:	48 89 ca             	mov    %rcx,%rdx
   1400020c3:	48 85 c0             	test   %rax,%rax
   1400020c6:	74 1b                	je     1400020e3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400020c8:	48 89 c1             	mov    %rax,%rcx
   1400020cb:	8b 01                	mov    (%rcx),%eax
   1400020cd:	39 d8                	cmp    %ebx,%eax
   1400020cf:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400020d3:	75 eb                	jne    1400020c0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400020d5:	48 85 d2             	test   %rdx,%rdx
   1400020d8:	74 26                	je     140002100 <___w64_mingwthr_remove_key_dtor+0x80>
   1400020da:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400020de:	e8 15 06 00 00       	call   1400026f8 <free>
   1400020e3:	4c 89 e1             	mov    %r12,%rcx
   1400020e6:	ff 15 a8 60 00 00    	call   *0x60a8(%rip)        # 140008194 <__imp_LeaveCriticalSection>
   1400020ec:	31 c0                	xor    %eax,%eax
   1400020ee:	48 83 c4 28          	add    $0x28,%rsp
   1400020f2:	5b                   	pop    %rbx
   1400020f3:	41 5c                	pop    %r12
   1400020f5:	c3                   	ret    
   1400020f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400020fd:	00 00 00 
   140002100:	48 89 05 d9 4f 00 00 	mov    %rax,0x4fd9(%rip)        # 1400070e0 <key_dtor_list>
   140002107:	eb d5                	jmp    1400020de <___w64_mingwthr_remove_key_dtor+0x5e>
   140002109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002110 <__mingw_TLScallback>:
   140002110:	53                   	push   %rbx
   140002111:	48 83 ec 20          	sub    $0x20,%rsp
   140002115:	83 fa 02             	cmp    $0x2,%edx
   140002118:	74 46                	je     140002160 <__mingw_TLScallback+0x50>
   14000211a:	77 2c                	ja     140002148 <__mingw_TLScallback+0x38>
   14000211c:	85 d2                	test   %edx,%edx
   14000211e:	74 50                	je     140002170 <__mingw_TLScallback+0x60>
   140002120:	8b 05 c2 4f 00 00    	mov    0x4fc2(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002126:	85 c0                	test   %eax,%eax
   140002128:	0f 84 b2 00 00 00    	je     1400021e0 <__mingw_TLScallback+0xd0>
   14000212e:	c7 05 b0 4f 00 00 01 	movl   $0x1,0x4fb0(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002135:	00 00 00 
   140002138:	b8 01 00 00 00       	mov    $0x1,%eax
   14000213d:	48 83 c4 20          	add    $0x20,%rsp
   140002141:	5b                   	pop    %rbx
   140002142:	c3                   	ret    
   140002143:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002148:	83 fa 03             	cmp    $0x3,%edx
   14000214b:	75 eb                	jne    140002138 <__mingw_TLScallback+0x28>
   14000214d:	8b 05 95 4f 00 00    	mov    0x4f95(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002153:	85 c0                	test   %eax,%eax
   140002155:	74 e1                	je     140002138 <__mingw_TLScallback+0x28>
   140002157:	e8 14 fe ff ff       	call   140001f70 <__mingwthr_run_key_dtors.part.0>
   14000215c:	eb da                	jmp    140002138 <__mingw_TLScallback+0x28>
   14000215e:	66 90                	xchg   %ax,%ax
   140002160:	e8 bb f6 ff ff       	call   140001820 <_fpreset>
   140002165:	b8 01 00 00 00       	mov    $0x1,%eax
   14000216a:	48 83 c4 20          	add    $0x20,%rsp
   14000216e:	5b                   	pop    %rbx
   14000216f:	c3                   	ret    
   140002170:	8b 05 72 4f 00 00    	mov    0x4f72(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002176:	85 c0                	test   %eax,%eax
   140002178:	75 56                	jne    1400021d0 <__mingw_TLScallback+0xc0>
   14000217a:	8b 05 68 4f 00 00    	mov    0x4f68(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140002180:	83 f8 01             	cmp    $0x1,%eax
   140002183:	75 b3                	jne    140002138 <__mingw_TLScallback+0x28>
   140002185:	48 8b 1d 54 4f 00 00 	mov    0x4f54(%rip),%rbx        # 1400070e0 <key_dtor_list>
   14000218c:	48 85 db             	test   %rbx,%rbx
   14000218f:	74 18                	je     1400021a9 <__mingw_TLScallback+0x99>
   140002191:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002198:	48 89 d9             	mov    %rbx,%rcx
   14000219b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000219f:	e8 54 05 00 00       	call   1400026f8 <free>
   1400021a4:	48 85 db             	test   %rbx,%rbx
   1400021a7:	75 ef                	jne    140002198 <__mingw_TLScallback+0x88>
   1400021a9:	48 8d 0d 50 4f 00 00 	lea    0x4f50(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400021b0:	48 c7 05 25 4f 00 00 	movq   $0x0,0x4f25(%rip)        # 1400070e0 <key_dtor_list>
   1400021b7:	00 00 00 00 
   1400021bb:	c7 05 23 4f 00 00 00 	movl   $0x0,0x4f23(%rip)        # 1400070e8 <__mingwthr_cs_init>
   1400021c2:	00 00 00 
   1400021c5:	ff 15 a1 5f 00 00    	call   *0x5fa1(%rip)        # 14000816c <__IAT_start__>
   1400021cb:	e9 68 ff ff ff       	jmp    140002138 <__mingw_TLScallback+0x28>
   1400021d0:	e8 9b fd ff ff       	call   140001f70 <__mingwthr_run_key_dtors.part.0>
   1400021d5:	eb a3                	jmp    14000217a <__mingw_TLScallback+0x6a>
   1400021d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400021de:	00 00 
   1400021e0:	48 8d 0d 19 4f 00 00 	lea    0x4f19(%rip),%rcx        # 140007100 <__mingwthr_cs>
   1400021e7:	ff 15 9f 5f 00 00    	call   *0x5f9f(%rip)        # 14000818c <__imp_InitializeCriticalSection>
   1400021ed:	e9 3c ff ff ff       	jmp    14000212e <__mingw_TLScallback+0x1e>
   1400021f2:	90                   	nop
   1400021f3:	90                   	nop
   1400021f4:	90                   	nop
   1400021f5:	90                   	nop
   1400021f6:	90                   	nop
   1400021f7:	90                   	nop
   1400021f8:	90                   	nop
   1400021f9:	90                   	nop
   1400021fa:	90                   	nop
   1400021fb:	90                   	nop
   1400021fc:	90                   	nop
   1400021fd:	90                   	nop
   1400021fe:	90                   	nop
   1400021ff:	90                   	nop

0000000140002200 <_ValidateImageBase>:
   140002200:	31 c0                	xor    %eax,%eax
   140002202:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002207:	75 0f                	jne    140002218 <_ValidateImageBase+0x18>
   140002209:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000220d:	48 01 d1             	add    %rdx,%rcx
   140002210:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002216:	74 08                	je     140002220 <_ValidateImageBase+0x20>
   140002218:	c3                   	ret    
   140002219:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002220:	31 c0                	xor    %eax,%eax
   140002222:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002228:	0f 94 c0             	sete   %al
   14000222b:	c3                   	ret    
   14000222c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002230 <_FindPESection>:
   140002230:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002234:	48 01 c1             	add    %rax,%rcx
   140002237:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000223b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002240:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002244:	85 c9                	test   %ecx,%ecx
   140002246:	74 2d                	je     140002275 <_FindPESection+0x45>
   140002248:	83 e9 01             	sub    $0x1,%ecx
   14000224b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   14000224f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002254:	0f 1f 40 00          	nopl   0x0(%rax)
   140002258:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000225c:	4c 89 c1             	mov    %r8,%rcx
   14000225f:	49 39 d0             	cmp    %rdx,%r8
   140002262:	77 08                	ja     14000226c <_FindPESection+0x3c>
   140002264:	03 48 08             	add    0x8(%rax),%ecx
   140002267:	48 39 d1             	cmp    %rdx,%rcx
   14000226a:	77 0b                	ja     140002277 <_FindPESection+0x47>
   14000226c:	48 83 c0 28          	add    $0x28,%rax
   140002270:	4c 39 c8             	cmp    %r9,%rax
   140002273:	75 e3                	jne    140002258 <_FindPESection+0x28>
   140002275:	31 c0                	xor    %eax,%eax
   140002277:	c3                   	ret    
   140002278:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000227f:	00 

0000000140002280 <_FindPESectionByName>:
   140002280:	41 54                	push   %r12
   140002282:	56                   	push   %rsi
   140002283:	53                   	push   %rbx
   140002284:	48 83 ec 20          	sub    $0x20,%rsp
   140002288:	48 89 cb             	mov    %rcx,%rbx
   14000228b:	e8 90 04 00 00       	call   140002720 <strlen>
   140002290:	48 83 f8 08          	cmp    $0x8,%rax
   140002294:	77 7a                	ja     140002310 <_FindPESectionByName+0x90>
   140002296:	48 8b 15 f3 20 00 00 	mov    0x20f3(%rip),%rdx        # 140004390 <.refptr.__image_base__>
   14000229d:	45 31 e4             	xor    %r12d,%r12d
   1400022a0:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   1400022a5:	75 57                	jne    1400022fe <_FindPESectionByName+0x7e>
   1400022a7:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   1400022ab:	48 01 d0             	add    %rdx,%rax
   1400022ae:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400022b4:	75 48                	jne    1400022fe <_FindPESectionByName+0x7e>
   1400022b6:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400022bc:	75 40                	jne    1400022fe <_FindPESectionByName+0x7e>
   1400022be:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400022c2:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   1400022c7:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   1400022cb:	85 c0                	test   %eax,%eax
   1400022cd:	74 41                	je     140002310 <_FindPESectionByName+0x90>
   1400022cf:	83 e8 01             	sub    $0x1,%eax
   1400022d2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400022d6:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   1400022db:	eb 0c                	jmp    1400022e9 <_FindPESectionByName+0x69>
   1400022dd:	0f 1f 00             	nopl   (%rax)
   1400022e0:	49 83 c4 28          	add    $0x28,%r12
   1400022e4:	49 39 f4             	cmp    %rsi,%r12
   1400022e7:	74 27                	je     140002310 <_FindPESectionByName+0x90>
   1400022e9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400022ef:	48 89 da             	mov    %rbx,%rdx
   1400022f2:	4c 89 e1             	mov    %r12,%rcx
   1400022f5:	e8 2e 04 00 00       	call   140002728 <strncmp>
   1400022fa:	85 c0                	test   %eax,%eax
   1400022fc:	75 e2                	jne    1400022e0 <_FindPESectionByName+0x60>
   1400022fe:	4c 89 e0             	mov    %r12,%rax
   140002301:	48 83 c4 20          	add    $0x20,%rsp
   140002305:	5b                   	pop    %rbx
   140002306:	5e                   	pop    %rsi
   140002307:	41 5c                	pop    %r12
   140002309:	c3                   	ret    
   14000230a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002310:	45 31 e4             	xor    %r12d,%r12d
   140002313:	4c 89 e0             	mov    %r12,%rax
   140002316:	48 83 c4 20          	add    $0x20,%rsp
   14000231a:	5b                   	pop    %rbx
   14000231b:	5e                   	pop    %rsi
   14000231c:	41 5c                	pop    %r12
   14000231e:	c3                   	ret    
   14000231f:	90                   	nop

0000000140002320 <__mingw_GetSectionForAddress>:
   140002320:	48 8b 15 69 20 00 00 	mov    0x2069(%rip),%rdx        # 140004390 <.refptr.__image_base__>
   140002327:	31 c0                	xor    %eax,%eax
   140002329:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000232e:	75 10                	jne    140002340 <__mingw_GetSectionForAddress+0x20>
   140002330:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002334:	49 01 d0             	add    %rdx,%r8
   140002337:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000233e:	74 08                	je     140002348 <__mingw_GetSectionForAddress+0x28>
   140002340:	c3                   	ret    
   140002341:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002348:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000234f:	75 ef                	jne    140002340 <__mingw_GetSectionForAddress+0x20>
   140002351:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002356:	48 29 d1             	sub    %rdx,%rcx
   140002359:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   14000235e:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002363:	85 d2                	test   %edx,%edx
   140002365:	74 2e                	je     140002395 <__mingw_GetSectionForAddress+0x75>
   140002367:	83 ea 01             	sub    $0x1,%edx
   14000236a:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000236e:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002373:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002378:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000237c:	4c 89 c2             	mov    %r8,%rdx
   14000237f:	4c 39 c1             	cmp    %r8,%rcx
   140002382:	72 08                	jb     14000238c <__mingw_GetSectionForAddress+0x6c>
   140002384:	03 50 08             	add    0x8(%rax),%edx
   140002387:	48 39 d1             	cmp    %rdx,%rcx
   14000238a:	72 b4                	jb     140002340 <__mingw_GetSectionForAddress+0x20>
   14000238c:	48 83 c0 28          	add    $0x28,%rax
   140002390:	4c 39 c8             	cmp    %r9,%rax
   140002393:	75 e3                	jne    140002378 <__mingw_GetSectionForAddress+0x58>
   140002395:	31 c0                	xor    %eax,%eax
   140002397:	c3                   	ret    
   140002398:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000239f:	00 

00000001400023a0 <__mingw_GetSectionCount>:
   1400023a0:	48 8b 05 e9 1f 00 00 	mov    0x1fe9(%rip),%rax        # 140004390 <.refptr.__image_base__>
   1400023a7:	45 31 c0             	xor    %r8d,%r8d
   1400023aa:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023af:	75 0f                	jne    1400023c0 <__mingw_GetSectionCount+0x20>
   1400023b1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   1400023b5:	48 01 d0             	add    %rdx,%rax
   1400023b8:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   1400023be:	74 08                	je     1400023c8 <__mingw_GetSectionCount+0x28>
   1400023c0:	44 89 c0             	mov    %r8d,%eax
   1400023c3:	c3                   	ret    
   1400023c4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400023c8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   1400023ce:	75 f0                	jne    1400023c0 <__mingw_GetSectionCount+0x20>
   1400023d0:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   1400023d5:	44 89 c0             	mov    %r8d,%eax
   1400023d8:	c3                   	ret    
   1400023d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400023e0 <_FindPESectionExec>:
   1400023e0:	4c 8b 05 a9 1f 00 00 	mov    0x1fa9(%rip),%r8        # 140004390 <.refptr.__image_base__>
   1400023e7:	31 c0                	xor    %eax,%eax
   1400023e9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   1400023ef:	75 0f                	jne    140002400 <_FindPESectionExec+0x20>
   1400023f1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   1400023f5:	4c 01 c2             	add    %r8,%rdx
   1400023f8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   1400023fe:	74 08                	je     140002408 <_FindPESectionExec+0x28>
   140002400:	c3                   	ret    
   140002401:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002408:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000240e:	75 f0                	jne    140002400 <_FindPESectionExec+0x20>
   140002410:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002414:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002419:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   14000241d:	85 d2                	test   %edx,%edx
   14000241f:	74 27                	je     140002448 <_FindPESectionExec+0x68>
   140002421:	83 ea 01             	sub    $0x1,%edx
   140002424:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002428:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   14000242d:	0f 1f 00             	nopl   (%rax)
   140002430:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002434:	74 09                	je     14000243f <_FindPESectionExec+0x5f>
   140002436:	48 85 c9             	test   %rcx,%rcx
   140002439:	74 c5                	je     140002400 <_FindPESectionExec+0x20>
   14000243b:	48 83 e9 01          	sub    $0x1,%rcx
   14000243f:	48 83 c0 28          	add    $0x28,%rax
   140002443:	48 39 d0             	cmp    %rdx,%rax
   140002446:	75 e8                	jne    140002430 <_FindPESectionExec+0x50>
   140002448:	31 c0                	xor    %eax,%eax
   14000244a:	c3                   	ret    
   14000244b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002450 <_GetPEImageBase>:
   140002450:	48 8b 05 39 1f 00 00 	mov    0x1f39(%rip),%rax        # 140004390 <.refptr.__image_base__>
   140002457:	45 31 c0             	xor    %r8d,%r8d
   14000245a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000245f:	75 0f                	jne    140002470 <_GetPEImageBase+0x20>
   140002461:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002465:	48 01 c2             	add    %rax,%rdx
   140002468:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000246e:	74 08                	je     140002478 <_GetPEImageBase+0x28>
   140002470:	4c 89 c0             	mov    %r8,%rax
   140002473:	c3                   	ret    
   140002474:	0f 1f 40 00          	nopl   0x0(%rax)
   140002478:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000247e:	4c 0f 44 c0          	cmove  %rax,%r8
   140002482:	4c 89 c0             	mov    %r8,%rax
   140002485:	c3                   	ret    
   140002486:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000248d:	00 00 00 

0000000140002490 <_IsNonwritableInCurrentImage>:
   140002490:	48 8b 15 f9 1e 00 00 	mov    0x1ef9(%rip),%rdx        # 140004390 <.refptr.__image_base__>
   140002497:	31 c0                	xor    %eax,%eax
   140002499:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000249e:	75 10                	jne    1400024b0 <_IsNonwritableInCurrentImage+0x20>
   1400024a0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   1400024a4:	49 01 d0             	add    %rdx,%r8
   1400024a7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400024ae:	74 08                	je     1400024b8 <_IsNonwritableInCurrentImage+0x28>
   1400024b0:	c3                   	ret    
   1400024b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400024b8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024bf:	75 ef                	jne    1400024b0 <_IsNonwritableInCurrentImage+0x20>
   1400024c1:	48 29 d1             	sub    %rdx,%rcx
   1400024c4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024c9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024ce:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400024d3:	45 85 c0             	test   %r8d,%r8d
   1400024d6:	74 d8                	je     1400024b0 <_IsNonwritableInCurrentImage+0x20>
   1400024d8:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   1400024dc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400024e0:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   1400024e5:	0f 1f 00             	nopl   (%rax)
   1400024e8:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   1400024ec:	4c 89 c0             	mov    %r8,%rax
   1400024ef:	4c 39 c1             	cmp    %r8,%rcx
   1400024f2:	72 08                	jb     1400024fc <_IsNonwritableInCurrentImage+0x6c>
   1400024f4:	03 42 08             	add    0x8(%rdx),%eax
   1400024f7:	48 39 c1             	cmp    %rax,%rcx
   1400024fa:	72 14                	jb     140002510 <_IsNonwritableInCurrentImage+0x80>
   1400024fc:	48 83 c2 28          	add    $0x28,%rdx
   140002500:	4c 39 ca             	cmp    %r9,%rdx
   140002503:	75 e3                	jne    1400024e8 <_IsNonwritableInCurrentImage+0x58>
   140002505:	31 c0                	xor    %eax,%eax
   140002507:	c3                   	ret    
   140002508:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000250f:	00 
   140002510:	8b 42 24             	mov    0x24(%rdx),%eax
   140002513:	f7 d0                	not    %eax
   140002515:	c1 e8 1f             	shr    $0x1f,%eax
   140002518:	c3                   	ret    
   140002519:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002520 <__mingw_enum_import_library_names>:
   140002520:	4c 8b 1d 69 1e 00 00 	mov    0x1e69(%rip),%r11        # 140004390 <.refptr.__image_base__>
   140002527:	45 31 c9             	xor    %r9d,%r9d
   14000252a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002530:	75 10                	jne    140002542 <__mingw_enum_import_library_names+0x22>
   140002532:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002536:	4d 01 d8             	add    %r11,%r8
   140002539:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002540:	74 0e                	je     140002550 <__mingw_enum_import_library_names+0x30>
   140002542:	4c 89 c8             	mov    %r9,%rax
   140002545:	c3                   	ret    
   140002546:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000254d:	00 00 00 
   140002550:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002557:	75 e9                	jne    140002542 <__mingw_enum_import_library_names+0x22>
   140002559:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002560:	85 c0                	test   %eax,%eax
   140002562:	74 de                	je     140002542 <__mingw_enum_import_library_names+0x22>
   140002564:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002569:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   14000256e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002573:	45 85 c0             	test   %r8d,%r8d
   140002576:	74 ca                	je     140002542 <__mingw_enum_import_library_names+0x22>
   140002578:	41 83 e8 01          	sub    $0x1,%r8d
   14000257c:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002580:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002585:	0f 1f 00             	nopl   (%rax)
   140002588:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   14000258c:	4d 89 c8             	mov    %r9,%r8
   14000258f:	4c 39 c8             	cmp    %r9,%rax
   140002592:	72 09                	jb     14000259d <__mingw_enum_import_library_names+0x7d>
   140002594:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002598:	4c 39 c0             	cmp    %r8,%rax
   14000259b:	72 13                	jb     1400025b0 <__mingw_enum_import_library_names+0x90>
   14000259d:	48 83 c2 28          	add    $0x28,%rdx
   1400025a1:	49 39 d2             	cmp    %rdx,%r10
   1400025a4:	75 e2                	jne    140002588 <__mingw_enum_import_library_names+0x68>
   1400025a6:	45 31 c9             	xor    %r9d,%r9d
   1400025a9:	4c 89 c8             	mov    %r9,%rax
   1400025ac:	c3                   	ret    
   1400025ad:	0f 1f 00             	nopl   (%rax)
   1400025b0:	4c 01 d8             	add    %r11,%rax
   1400025b3:	eb 0a                	jmp    1400025bf <__mingw_enum_import_library_names+0x9f>
   1400025b5:	0f 1f 00             	nopl   (%rax)
   1400025b8:	83 e9 01             	sub    $0x1,%ecx
   1400025bb:	48 83 c0 14          	add    $0x14,%rax
   1400025bf:	44 8b 40 04          	mov    0x4(%rax),%r8d
   1400025c3:	45 85 c0             	test   %r8d,%r8d
   1400025c6:	75 07                	jne    1400025cf <__mingw_enum_import_library_names+0xaf>
   1400025c8:	8b 50 0c             	mov    0xc(%rax),%edx
   1400025cb:	85 d2                	test   %edx,%edx
   1400025cd:	74 d7                	je     1400025a6 <__mingw_enum_import_library_names+0x86>
   1400025cf:	85 c9                	test   %ecx,%ecx
   1400025d1:	7f e5                	jg     1400025b8 <__mingw_enum_import_library_names+0x98>
   1400025d3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   1400025d7:	4d 01 d9             	add    %r11,%r9
   1400025da:	4c 89 c8             	mov    %r9,%rax
   1400025dd:	c3                   	ret    
   1400025de:	90                   	nop
   1400025df:	90                   	nop

00000001400025e0 <___chkstk_ms>:
   1400025e0:	51                   	push   %rcx
   1400025e1:	50                   	push   %rax
   1400025e2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   1400025e8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   1400025ed:	72 19                	jb     140002608 <___chkstk_ms+0x28>
   1400025ef:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   1400025f6:	48 83 09 00          	orq    $0x0,(%rcx)
   1400025fa:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002600:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002606:	77 e7                	ja     1400025ef <___chkstk_ms+0xf>
   140002608:	48 29 c1             	sub    %rax,%rcx
   14000260b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000260f:	58                   	pop    %rax
   140002610:	59                   	pop    %rcx
   140002611:	c3                   	ret    
   140002612:	90                   	nop
   140002613:	90                   	nop
   140002614:	90                   	nop
   140002615:	90                   	nop
   140002616:	90                   	nop
   140002617:	90                   	nop
   140002618:	90                   	nop
   140002619:	90                   	nop
   14000261a:	90                   	nop
   14000261b:	90                   	nop
   14000261c:	90                   	nop
   14000261d:	90                   	nop
   14000261e:	90                   	nop
   14000261f:	90                   	nop

0000000140002620 <__p__fmode>:
   140002620:	48 8b 05 a9 1d 00 00 	mov    0x1da9(%rip),%rax        # 1400043d0 <.refptr.__imp__fmode>
   140002627:	48 8b 00             	mov    (%rax),%rax
   14000262a:	c3                   	ret    
   14000262b:	90                   	nop
   14000262c:	90                   	nop
   14000262d:	90                   	nop
   14000262e:	90                   	nop
   14000262f:	90                   	nop

0000000140002630 <__p__commode>:
   140002630:	48 8b 05 89 1d 00 00 	mov    0x1d89(%rip),%rax        # 1400043c0 <.refptr.__imp__commode>
   140002637:	48 8b 00             	mov    (%rax),%rax
   14000263a:	c3                   	ret    
   14000263b:	90                   	nop
   14000263c:	90                   	nop
   14000263d:	90                   	nop
   14000263e:	90                   	nop
   14000263f:	90                   	nop

0000000140002640 <__p__acmdln>:
   140002640:	48 8b 05 69 1d 00 00 	mov    0x1d69(%rip),%rax        # 1400043b0 <.refptr.__imp__acmdln>
   140002647:	48 8b 00             	mov    (%rax),%rax
   14000264a:	c3                   	ret    
   14000264b:	90                   	nop
   14000264c:	90                   	nop
   14000264d:	90                   	nop
   14000264e:	90                   	nop
   14000264f:	90                   	nop

0000000140002650 <_get_invalid_parameter_handler>:
   140002650:	48 8b 05 19 4b 00 00 	mov    0x4b19(%rip),%rax        # 140007170 <handler>
   140002657:	c3                   	ret    
   140002658:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000265f:	00 

0000000140002660 <_set_invalid_parameter_handler>:
   140002660:	48 89 c8             	mov    %rcx,%rax
   140002663:	48 87 05 06 4b 00 00 	xchg   %rax,0x4b06(%rip)        # 140007170 <handler>
   14000266a:	c3                   	ret    
   14000266b:	90                   	nop
   14000266c:	90                   	nop
   14000266d:	90                   	nop
   14000266e:	90                   	nop
   14000266f:	90                   	nop

0000000140002670 <__acrt_iob_func>:
   140002670:	53                   	push   %rbx
   140002671:	48 83 ec 20          	sub    $0x20,%rsp
   140002675:	89 cb                	mov    %ecx,%ebx
   140002677:	e8 24 00 00 00       	call   1400026a0 <__iob_func>
   14000267c:	89 d9                	mov    %ebx,%ecx
   14000267e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140002682:	48 c1 e2 04          	shl    $0x4,%rdx
   140002686:	48 01 d0             	add    %rdx,%rax
   140002689:	48 83 c4 20          	add    $0x20,%rsp
   14000268d:	5b                   	pop    %rbx
   14000268e:	c3                   	ret    
   14000268f:	90                   	nop

0000000140002690 <__C_specific_handler>:
   140002690:	ff 25 36 5b 00 00    	jmp    *0x5b36(%rip)        # 1400081cc <__imp___C_specific_handler>
   140002696:	90                   	nop
   140002697:	90                   	nop

0000000140002698 <__getmainargs>:
   140002698:	ff 25 36 5b 00 00    	jmp    *0x5b36(%rip)        # 1400081d4 <__imp___getmainargs>
   14000269e:	90                   	nop
   14000269f:	90                   	nop

00000001400026a0 <__iob_func>:
   1400026a0:	ff 25 3e 5b 00 00    	jmp    *0x5b3e(%rip)        # 1400081e4 <__imp___iob_func>
   1400026a6:	90                   	nop
   1400026a7:	90                   	nop

00000001400026a8 <__set_app_type>:
   1400026a8:	ff 25 3e 5b 00 00    	jmp    *0x5b3e(%rip)        # 1400081ec <__imp___set_app_type>
   1400026ae:	90                   	nop
   1400026af:	90                   	nop

00000001400026b0 <__setusermatherr>:
   1400026b0:	ff 25 3e 5b 00 00    	jmp    *0x5b3e(%rip)        # 1400081f4 <__imp___setusermatherr>
   1400026b6:	90                   	nop
   1400026b7:	90                   	nop

00000001400026b8 <_amsg_exit>:
   1400026b8:	ff 25 46 5b 00 00    	jmp    *0x5b46(%rip)        # 140008204 <__imp__amsg_exit>
   1400026be:	90                   	nop
   1400026bf:	90                   	nop

00000001400026c0 <_cexit>:
   1400026c0:	ff 25 46 5b 00 00    	jmp    *0x5b46(%rip)        # 14000820c <__imp__cexit>
   1400026c6:	90                   	nop
   1400026c7:	90                   	nop

00000001400026c8 <_initterm>:
   1400026c8:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 140008224 <__imp__initterm>
   1400026ce:	90                   	nop
   1400026cf:	90                   	nop

00000001400026d0 <_onexit>:
   1400026d0:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 14000822c <__imp__onexit>
   1400026d6:	90                   	nop
   1400026d7:	90                   	nop

00000001400026d8 <abort>:
   1400026d8:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 140008234 <__imp_abort>
   1400026de:	90                   	nop
   1400026df:	90                   	nop

00000001400026e0 <calloc>:
   1400026e0:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 14000823c <__imp_calloc>
   1400026e6:	90                   	nop
   1400026e7:	90                   	nop

00000001400026e8 <exit>:
   1400026e8:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 140008244 <__imp_exit>
   1400026ee:	90                   	nop
   1400026ef:	90                   	nop

00000001400026f0 <fprintf>:
   1400026f0:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 14000824c <__imp_fprintf>
   1400026f6:	90                   	nop
   1400026f7:	90                   	nop

00000001400026f8 <free>:
   1400026f8:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 140008254 <__imp_free>
   1400026fe:	90                   	nop
   1400026ff:	90                   	nop

0000000140002700 <fwrite>:
   140002700:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 14000825c <__imp_fwrite>
   140002706:	90                   	nop
   140002707:	90                   	nop

0000000140002708 <malloc>:
   140002708:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 140008264 <__imp_malloc>
   14000270e:	90                   	nop
   14000270f:	90                   	nop

0000000140002710 <memcpy>:
   140002710:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 14000826c <__imp_memcpy>
   140002716:	90                   	nop
   140002717:	90                   	nop

0000000140002718 <signal>:
   140002718:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 140008274 <__imp_signal>
   14000271e:	90                   	nop
   14000271f:	90                   	nop

0000000140002720 <strlen>:
   140002720:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 14000827c <__imp_strlen>
   140002726:	90                   	nop
   140002727:	90                   	nop

0000000140002728 <strncmp>:
   140002728:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 140008284 <__imp_strncmp>
   14000272e:	90                   	nop
   14000272f:	90                   	nop

0000000140002730 <vfprintf>:
   140002730:	ff 25 56 5b 00 00    	jmp    *0x5b56(%rip)        # 14000828c <__imp_vfprintf>
   140002736:	90                   	nop
   140002737:	90                   	nop
   140002738:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000273f:	00 

0000000140002740 <VirtualQuery>:
   140002740:	ff 25 76 5a 00 00    	jmp    *0x5a76(%rip)        # 1400081bc <__imp_VirtualQuery>
   140002746:	90                   	nop
   140002747:	90                   	nop

0000000140002748 <VirtualProtect>:
   140002748:	ff 25 66 5a 00 00    	jmp    *0x5a66(%rip)        # 1400081b4 <__imp_VirtualProtect>
   14000274e:	90                   	nop
   14000274f:	90                   	nop

0000000140002750 <TlsGetValue>:
   140002750:	ff 25 56 5a 00 00    	jmp    *0x5a56(%rip)        # 1400081ac <__imp_TlsGetValue>
   140002756:	90                   	nop
   140002757:	90                   	nop

0000000140002758 <Sleep>:
   140002758:	ff 25 46 5a 00 00    	jmp    *0x5a46(%rip)        # 1400081a4 <__imp_Sleep>
   14000275e:	90                   	nop
   14000275f:	90                   	nop

0000000140002760 <SetUnhandledExceptionFilter>:
   140002760:	ff 25 36 5a 00 00    	jmp    *0x5a36(%rip)        # 14000819c <__imp_SetUnhandledExceptionFilter>
   140002766:	90                   	nop
   140002767:	90                   	nop

0000000140002768 <LeaveCriticalSection>:
   140002768:	ff 25 26 5a 00 00    	jmp    *0x5a26(%rip)        # 140008194 <__imp_LeaveCriticalSection>
   14000276e:	90                   	nop
   14000276f:	90                   	nop

0000000140002770 <InitializeCriticalSection>:
   140002770:	ff 25 16 5a 00 00    	jmp    *0x5a16(%rip)        # 14000818c <__imp_InitializeCriticalSection>
   140002776:	90                   	nop
   140002777:	90                   	nop

0000000140002778 <GetStartupInfoA>:
   140002778:	ff 25 06 5a 00 00    	jmp    *0x5a06(%rip)        # 140008184 <__imp_GetStartupInfoA>
   14000277e:	90                   	nop
   14000277f:	90                   	nop

0000000140002780 <GetLastError>:
   140002780:	ff 25 f6 59 00 00    	jmp    *0x59f6(%rip)        # 14000817c <__imp_GetLastError>
   140002786:	90                   	nop
   140002787:	90                   	nop

0000000140002788 <EnterCriticalSection>:
   140002788:	ff 25 e6 59 00 00    	jmp    *0x59e6(%rip)        # 140008174 <__imp_EnterCriticalSection>
   14000278e:	90                   	nop
   14000278f:	90                   	nop

0000000140002790 <DeleteCriticalSection>:
   140002790:	ff 25 d6 59 00 00    	jmp    *0x59d6(%rip)        # 14000816c <__IAT_start__>
   140002796:	90                   	nop
   140002797:	90                   	nop
   140002798:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000279f:	00 

00000001400027a0 <register_frame_ctor>:
   1400027a0:	e9 6b ed ff ff       	jmp    140001510 <__gcc_register_frame>
   1400027a5:	90                   	nop
   1400027a6:	90                   	nop
   1400027a7:	90                   	nop
   1400027a8:	90                   	nop
   1400027a9:	90                   	nop
   1400027aa:	90                   	nop
   1400027ab:	90                   	nop
   1400027ac:	90                   	nop
   1400027ad:	90                   	nop
   1400027ae:	90                   	nop
   1400027af:	90                   	nop

00000001400027b0 <__CTOR_LIST__>:
   1400027b0:	ff                   	(bad)  
   1400027b1:	ff                   	(bad)  
   1400027b2:	ff                   	(bad)  
   1400027b3:	ff                   	(bad)  
   1400027b4:	ff                   	(bad)  
   1400027b5:	ff                   	(bad)  
   1400027b6:	ff                   	(bad)  
   1400027b7:	ff                   	.byte 0xff

00000001400027b8 <.ctors.65535>:
   1400027b8:	a0 27 00 40 01 00 00 	movabs 0x1400027,%al
   1400027bf:	00 00 
   1400027c1:	00 00                	add    %al,(%rax)
   1400027c3:	00 00                	add    %al,(%rax)
   1400027c5:	00 00                	add    %al,(%rax)
	...

00000001400027c8 <__DTOR_LIST__>:
   1400027c8:	ff                   	(bad)  
   1400027c9:	ff                   	(bad)  
   1400027ca:	ff                   	(bad)  
   1400027cb:	ff                   	(bad)  
   1400027cc:	ff                   	(bad)  
   1400027cd:	ff                   	(bad)  
   1400027ce:	ff                   	(bad)  
   1400027cf:	ff 00                	incl   (%rax)
   1400027d1:	00 00                	add    %al,(%rax)
   1400027d3:	00 00                	add    %al,(%rax)
   1400027d5:	00 00                	add    %al,(%rax)
	...
