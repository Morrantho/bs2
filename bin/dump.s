
bin/bs:     file format elf64-x86-64


Disassembly of section .init:

0000000000004000 <_init>:
    4000:	f3 0f 1e fa          	endbr64
    4004:	48 83 ec 08          	sub    $0x8,%rsp
    4008:	48 8b 05 d9 9f 00 00 	mov    0x9fd9(%rip),%rax        # dfe8 <__gmon_start__@Base>
    400f:	48 85 c0             	test   %rax,%rax
    4012:	74 02                	je     4016 <_init+0x16>
    4014:	ff d0                	call   *%rax
    4016:	48 83 c4 08          	add    $0x8,%rsp
    401a:	c3                   	ret

Disassembly of section .plt:

0000000000004020 <.plt>:
    4020:	ff 35 f2 9e 00 00    	push   0x9ef2(%rip)        # df18 <_GLOBAL_OFFSET_TABLE_+0x8>
    4026:	ff 25 f4 9e 00 00    	jmp    *0x9ef4(%rip)        # df20 <_GLOBAL_OFFSET_TABLE_+0x10>
    402c:	0f 1f 40 00          	nopl   0x0(%rax)
    4030:	f3 0f 1e fa          	endbr64
    4034:	68 00 00 00 00       	push   $0x0
    4039:	e9 e2 ff ff ff       	jmp    4020 <_init+0x20>
    403e:	66 90                	xchg   %ax,%ax
    4040:	f3 0f 1e fa          	endbr64
    4044:	68 01 00 00 00       	push   $0x1
    4049:	e9 d2 ff ff ff       	jmp    4020 <_init+0x20>
    404e:	66 90                	xchg   %ax,%ax
    4050:	f3 0f 1e fa          	endbr64
    4054:	68 02 00 00 00       	push   $0x2
    4059:	e9 c2 ff ff ff       	jmp    4020 <_init+0x20>
    405e:	66 90                	xchg   %ax,%ax
    4060:	f3 0f 1e fa          	endbr64
    4064:	68 03 00 00 00       	push   $0x3
    4069:	e9 b2 ff ff ff       	jmp    4020 <_init+0x20>
    406e:	66 90                	xchg   %ax,%ax
    4070:	f3 0f 1e fa          	endbr64
    4074:	68 04 00 00 00       	push   $0x4
    4079:	e9 a2 ff ff ff       	jmp    4020 <_init+0x20>
    407e:	66 90                	xchg   %ax,%ax
    4080:	f3 0f 1e fa          	endbr64
    4084:	68 05 00 00 00       	push   $0x5
    4089:	e9 92 ff ff ff       	jmp    4020 <_init+0x20>
    408e:	66 90                	xchg   %ax,%ax
    4090:	f3 0f 1e fa          	endbr64
    4094:	68 06 00 00 00       	push   $0x6
    4099:	e9 82 ff ff ff       	jmp    4020 <_init+0x20>
    409e:	66 90                	xchg   %ax,%ax
    40a0:	f3 0f 1e fa          	endbr64
    40a4:	68 07 00 00 00       	push   $0x7
    40a9:	e9 72 ff ff ff       	jmp    4020 <_init+0x20>
    40ae:	66 90                	xchg   %ax,%ax
    40b0:	f3 0f 1e fa          	endbr64
    40b4:	68 08 00 00 00       	push   $0x8
    40b9:	e9 62 ff ff ff       	jmp    4020 <_init+0x20>
    40be:	66 90                	xchg   %ax,%ax
    40c0:	f3 0f 1e fa          	endbr64
    40c4:	68 09 00 00 00       	push   $0x9
    40c9:	e9 52 ff ff ff       	jmp    4020 <_init+0x20>
    40ce:	66 90                	xchg   %ax,%ax
    40d0:	f3 0f 1e fa          	endbr64
    40d4:	68 0a 00 00 00       	push   $0xa
    40d9:	e9 42 ff ff ff       	jmp    4020 <_init+0x20>
    40de:	66 90                	xchg   %ax,%ax
    40e0:	f3 0f 1e fa          	endbr64
    40e4:	68 0b 00 00 00       	push   $0xb
    40e9:	e9 32 ff ff ff       	jmp    4020 <_init+0x20>
    40ee:	66 90                	xchg   %ax,%ax
    40f0:	f3 0f 1e fa          	endbr64
    40f4:	68 0c 00 00 00       	push   $0xc
    40f9:	e9 22 ff ff ff       	jmp    4020 <_init+0x20>
    40fe:	66 90                	xchg   %ax,%ax
    4100:	f3 0f 1e fa          	endbr64
    4104:	68 0d 00 00 00       	push   $0xd
    4109:	e9 12 ff ff ff       	jmp    4020 <_init+0x20>
    410e:	66 90                	xchg   %ax,%ax
    4110:	f3 0f 1e fa          	endbr64
    4114:	68 0e 00 00 00       	push   $0xe
    4119:	e9 02 ff ff ff       	jmp    4020 <_init+0x20>
    411e:	66 90                	xchg   %ax,%ax
    4120:	f3 0f 1e fa          	endbr64
    4124:	68 0f 00 00 00       	push   $0xf
    4129:	e9 f2 fe ff ff       	jmp    4020 <_init+0x20>
    412e:	66 90                	xchg   %ax,%ax
    4130:	f3 0f 1e fa          	endbr64
    4134:	68 10 00 00 00       	push   $0x10
    4139:	e9 e2 fe ff ff       	jmp    4020 <_init+0x20>
    413e:	66 90                	xchg   %ax,%ax
    4140:	f3 0f 1e fa          	endbr64
    4144:	68 11 00 00 00       	push   $0x11
    4149:	e9 d2 fe ff ff       	jmp    4020 <_init+0x20>
    414e:	66 90                	xchg   %ax,%ax
    4150:	f3 0f 1e fa          	endbr64
    4154:	68 12 00 00 00       	push   $0x12
    4159:	e9 c2 fe ff ff       	jmp    4020 <_init+0x20>
    415e:	66 90                	xchg   %ax,%ax
    4160:	f3 0f 1e fa          	endbr64
    4164:	68 13 00 00 00       	push   $0x13
    4169:	e9 b2 fe ff ff       	jmp    4020 <_init+0x20>
    416e:	66 90                	xchg   %ax,%ax
    4170:	f3 0f 1e fa          	endbr64
    4174:	68 14 00 00 00       	push   $0x14
    4179:	e9 a2 fe ff ff       	jmp    4020 <_init+0x20>
    417e:	66 90                	xchg   %ax,%ax
    4180:	f3 0f 1e fa          	endbr64
    4184:	68 15 00 00 00       	push   $0x15
    4189:	e9 92 fe ff ff       	jmp    4020 <_init+0x20>
    418e:	66 90                	xchg   %ax,%ax

Disassembly of section .plt.got:

0000000000004190 <__cxa_finalize@plt>:
    4190:	f3 0f 1e fa          	endbr64
    4194:	ff 25 5e 9e 00 00    	jmp    *0x9e5e(%rip)        # dff8 <__cxa_finalize@GLIBC_2.2.5>
    419a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000041a0 <free@plt>:
    41a0:	f3 0f 1e fa          	endbr64
    41a4:	ff 25 7e 9d 00 00    	jmp    *0x9d7e(%rip)        # df28 <free@GLIBC_2.2.5>
    41aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041b0 <puts@plt>:
    41b0:	f3 0f 1e fa          	endbr64
    41b4:	ff 25 76 9d 00 00    	jmp    *0x9d76(%rip)        # df30 <puts@GLIBC_2.2.5>
    41ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041c0 <fread@plt>:
    41c0:	f3 0f 1e fa          	endbr64
    41c4:	ff 25 6e 9d 00 00    	jmp    *0x9d6e(%rip)        # df38 <fread@GLIBC_2.2.5>
    41ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041d0 <strtod@plt>:
    41d0:	f3 0f 1e fa          	endbr64
    41d4:	ff 25 66 9d 00 00    	jmp    *0x9d66(%rip)        # df40 <strtod@GLIBC_2.2.5>
    41da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041e0 <pow@plt>:
    41e0:	f3 0f 1e fa          	endbr64
    41e4:	ff 25 5e 9d 00 00    	jmp    *0x9d5e(%rip)        # df48 <pow@GLIBC_2.29>
    41ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041f0 <fclose@plt>:
    41f0:	f3 0f 1e fa          	endbr64
    41f4:	ff 25 56 9d 00 00    	jmp    *0x9d56(%rip)        # df50 <fclose@GLIBC_2.2.5>
    41fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004200 <__stack_chk_fail@plt>:
    4200:	f3 0f 1e fa          	endbr64
    4204:	ff 25 4e 9d 00 00    	jmp    *0x9d4e(%rip)        # df58 <__stack_chk_fail@GLIBC_2.4>
    420a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004210 <printf@plt>:
    4210:	f3 0f 1e fa          	endbr64
    4214:	ff 25 46 9d 00 00    	jmp    *0x9d46(%rip)        # df60 <printf@GLIBC_2.2.5>
    421a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004220 <__isoc23_strtoll@plt>:
    4220:	f3 0f 1e fa          	endbr64
    4224:	ff 25 3e 9d 00 00    	jmp    *0x9d3e(%rip)        # df68 <__isoc23_strtoll@GLIBC_2.38>
    422a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004230 <memcmp@plt>:
    4230:	f3 0f 1e fa          	endbr64
    4234:	ff 25 36 9d 00 00    	jmp    *0x9d36(%rip)        # df70 <memcmp@GLIBC_2.2.5>
    423a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004240 <fgets@plt>:
    4240:	f3 0f 1e fa          	endbr64
    4244:	ff 25 2e 9d 00 00    	jmp    *0x9d2e(%rip)        # df78 <fgets@GLIBC_2.2.5>
    424a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004250 <_setjmp@plt>:
    4250:	f3 0f 1e fa          	endbr64
    4254:	ff 25 26 9d 00 00    	jmp    *0x9d26(%rip)        # df80 <_setjmp@GLIBC_2.2.5>
    425a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004260 <calloc@plt>:
    4260:	f3 0f 1e fa          	endbr64
    4264:	ff 25 1e 9d 00 00    	jmp    *0x9d1e(%rip)        # df88 <calloc@GLIBC_2.2.5>
    426a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004270 <ftell@plt>:
    4270:	f3 0f 1e fa          	endbr64
    4274:	ff 25 16 9d 00 00    	jmp    *0x9d16(%rip)        # df90 <ftell@GLIBC_2.2.5>
    427a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004280 <memcpy@plt>:
    4280:	f3 0f 1e fa          	endbr64
    4284:	ff 25 0e 9d 00 00    	jmp    *0x9d0e(%rip)        # df98 <memcpy@GLIBC_2.14>
    428a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004290 <__sysv_signal@plt>:
    4290:	f3 0f 1e fa          	endbr64
    4294:	ff 25 06 9d 00 00    	jmp    *0x9d06(%rip)        # dfa0 <__sysv_signal@GLIBC_2.2.5>
    429a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042a0 <malloc@plt>:
    42a0:	f3 0f 1e fa          	endbr64
    42a4:	ff 25 fe 9c 00 00    	jmp    *0x9cfe(%rip)        # dfa8 <malloc@GLIBC_2.2.5>
    42aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042b0 <fseek@plt>:
    42b0:	f3 0f 1e fa          	endbr64
    42b4:	ff 25 f6 9c 00 00    	jmp    *0x9cf6(%rip)        # dfb0 <fseek@GLIBC_2.2.5>
    42ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042c0 <realloc@plt>:
    42c0:	f3 0f 1e fa          	endbr64
    42c4:	ff 25 ee 9c 00 00    	jmp    *0x9cee(%rip)        # dfb8 <realloc@GLIBC_2.2.5>
    42ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042d0 <longjmp@plt>:
    42d0:	f3 0f 1e fa          	endbr64
    42d4:	ff 25 e6 9c 00 00    	jmp    *0x9ce6(%rip)        # dfc0 <longjmp@GLIBC_2.2.5>
    42da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042e0 <fopen@plt>:
    42e0:	f3 0f 1e fa          	endbr64
    42e4:	ff 25 de 9c 00 00    	jmp    *0x9cde(%rip)        # dfc8 <fopen@GLIBC_2.2.5>
    42ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042f0 <vfprintf@plt>:
    42f0:	f3 0f 1e fa          	endbr64
    42f4:	ff 25 d6 9c 00 00    	jmp    *0x9cd6(%rip)        # dfd0 <vfprintf@GLIBC_2.2.5>
    42fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000004300 <_start>:
    4300:	f3 0f 1e fa          	endbr64
    4304:	31 ed                	xor    %ebp,%ebp
    4306:	49 89 d1             	mov    %rdx,%r9
    4309:	5e                   	pop    %rsi
    430a:	48 89 e2             	mov    %rsp,%rdx
    430d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    4311:	50                   	push   %rax
    4312:	54                   	push   %rsp
    4313:	45 31 c0             	xor    %r8d,%r8d
    4316:	31 c9                	xor    %ecx,%ecx
    4318:	48 8d 3d 24 62 00 00 	lea    0x6224(%rip),%rdi        # a543 <main>
    431f:	ff 15 b3 9c 00 00    	call   *0x9cb3(%rip)        # dfd8 <__libc_start_main@GLIBC_2.34>
    4325:	f4                   	hlt
    4326:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    432d:	00 00 00 

0000000000004330 <deregister_tm_clones>:
    4330:	48 8d 3d 71 b0 00 00 	lea    0xb071(%rip),%rdi        # f3a8 <__TMC_END__>
    4337:	48 8d 05 6a b0 00 00 	lea    0xb06a(%rip),%rax        # f3a8 <__TMC_END__>
    433e:	48 39 f8             	cmp    %rdi,%rax
    4341:	74 15                	je     4358 <deregister_tm_clones+0x28>
    4343:	48 8b 05 96 9c 00 00 	mov    0x9c96(%rip),%rax        # dfe0 <_ITM_deregisterTMCloneTable@Base>
    434a:	48 85 c0             	test   %rax,%rax
    434d:	74 09                	je     4358 <deregister_tm_clones+0x28>
    434f:	ff e0                	jmp    *%rax
    4351:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4358:	c3                   	ret
    4359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000004360 <register_tm_clones>:
    4360:	48 8d 3d 41 b0 00 00 	lea    0xb041(%rip),%rdi        # f3a8 <__TMC_END__>
    4367:	48 8d 35 3a b0 00 00 	lea    0xb03a(%rip),%rsi        # f3a8 <__TMC_END__>
    436e:	48 29 fe             	sub    %rdi,%rsi
    4371:	48 89 f0             	mov    %rsi,%rax
    4374:	48 c1 ee 3f          	shr    $0x3f,%rsi
    4378:	48 c1 f8 03          	sar    $0x3,%rax
    437c:	48 01 c6             	add    %rax,%rsi
    437f:	48 d1 fe             	sar    $1,%rsi
    4382:	74 14                	je     4398 <register_tm_clones+0x38>
    4384:	48 8b 05 65 9c 00 00 	mov    0x9c65(%rip),%rax        # dff0 <_ITM_registerTMCloneTable@Base>
    438b:	48 85 c0             	test   %rax,%rax
    438e:	74 08                	je     4398 <register_tm_clones+0x38>
    4390:	ff e0                	jmp    *%rax
    4392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4398:	c3                   	ret
    4399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000043a0 <__do_global_dtors_aux>:
    43a0:	f3 0f 1e fa          	endbr64
    43a4:	80 3d 3d b0 00 00 00 	cmpb   $0x0,0xb03d(%rip)        # f3e8 <completed.0>
    43ab:	75 2b                	jne    43d8 <__do_global_dtors_aux+0x38>
    43ad:	55                   	push   %rbp
    43ae:	48 83 3d 42 9c 00 00 	cmpq   $0x0,0x9c42(%rip)        # dff8 <__cxa_finalize@GLIBC_2.2.5>
    43b5:	00 
    43b6:	48 89 e5             	mov    %rsp,%rbp
    43b9:	74 0c                	je     43c7 <__do_global_dtors_aux+0x27>
    43bb:	48 8b 3d 46 9c 00 00 	mov    0x9c46(%rip),%rdi        # e008 <__dso_handle>
    43c2:	e8 c9 fd ff ff       	call   4190 <__cxa_finalize@plt>
    43c7:	e8 64 ff ff ff       	call   4330 <deregister_tm_clones>
    43cc:	c6 05 15 b0 00 00 01 	movb   $0x1,0xb015(%rip)        # f3e8 <completed.0>
    43d3:	5d                   	pop    %rbp
    43d4:	c3                   	ret
    43d5:	0f 1f 00             	nopl   (%rax)
    43d8:	c3                   	ret
    43d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000043e0 <frame_dummy>:
    43e0:	f3 0f 1e fa          	endbr64
    43e4:	e9 77 ff ff ff       	jmp    4360 <register_tm_clones>

00000000000043e9 <GetSrc>:
    43e9:	55                   	push   %rbp
    43ea:	48 89 e5             	mov    %rsp,%rbp
    43ed:	48 8d 05 ec b1 00 00 	lea    0xb1ec(%rip),%rax        # f5e0 <src.1>
    43f4:	5d                   	pop    %rbp
    43f5:	c3                   	ret

00000000000043f6 <GetStrings>:
    43f6:	55                   	push   %rbp
    43f7:	48 89 e5             	mov    %rsp,%rbp
    43fa:	48 8d 05 ef b0 00 00 	lea    0xb0ef(%rip),%rax        # f4f0 <strings.46>
    4401:	5d                   	pop    %rbp
    4402:	c3                   	ret

0000000000004403 <ArenaAlloc>:
    4403:	f3 0f 1e fa          	endbr64
    4407:	55                   	push   %rbp
    4408:	48 89 e5             	mov    %rsp,%rbp
    440b:	48 83 ec 10          	sub    $0x10,%rsp
    440f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4413:	89 75 f4             	mov    %esi,-0xc(%rbp)
    4416:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4419:	05 ff 0f 00 00       	add    $0xfff,%eax
    441e:	25 00 f0 ff ff       	and    $0xfffff000,%eax
    4423:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4426:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4429:	48 89 c7             	mov    %rax,%rdi
    442c:	e8 6f fe ff ff       	call   42a0 <malloc@plt>
    4431:	48 89 c2             	mov    %rax,%rdx
    4434:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4438:	48 89 10             	mov    %rdx,(%rax)
    443b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    443f:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    4446:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    444a:	8b 55 f4             	mov    -0xc(%rbp),%edx
    444d:	89 50 0c             	mov    %edx,0xc(%rax)
    4450:	90                   	nop
    4451:	c9                   	leave
    4452:	c3                   	ret

0000000000004453 <ArenaPush>:
    4453:	f3 0f 1e fa          	endbr64
    4457:	55                   	push   %rbp
    4458:	48 89 e5             	mov    %rsp,%rbp
    445b:	48 83 ec 20          	sub    $0x20,%rsp
    445f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4463:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    4466:	89 55 e0             	mov    %edx,-0x20(%rbp)
    4469:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    446d:	8b 50 08             	mov    0x8(%rax),%edx
    4470:	8b 45 e0             	mov    -0x20(%rbp),%eax
    4473:	01 d0                	add    %edx,%eax
    4475:	8d 50 ff             	lea    -0x1(%rax),%edx
    4478:	8b 45 e0             	mov    -0x20(%rbp),%eax
    447b:	f7 d8                	neg    %eax
    447d:	21 d0                	and    %edx,%eax
    447f:	89 45 fc             	mov    %eax,-0x4(%rbp)
    4482:	8b 55 fc             	mov    -0x4(%rbp),%edx
    4485:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    4488:	01 c2                	add    %eax,%edx
    448a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    448e:	8b 40 0c             	mov    0xc(%rax),%eax
    4491:	39 d0                	cmp    %edx,%eax
    4493:	73 33                	jae    44c8 <ArenaPush+0x75>
    4495:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4499:	8b 40 0c             	mov    0xc(%rax),%eax
    449c:	8d 14 00             	lea    (%rax,%rax,1),%edx
    449f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    44a3:	89 50 0c             	mov    %edx,0xc(%rax)
    44a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    44aa:	8b 40 0c             	mov    0xc(%rax),%eax
    44ad:	89 c2                	mov    %eax,%edx
    44af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    44b3:	48 8b 00             	mov    (%rax),%rax
    44b6:	48 89 d6             	mov    %rdx,%rsi
    44b9:	48 89 c7             	mov    %rax,%rdi
    44bc:	e8 ff fd ff ff       	call   42c0 <realloc@plt>
    44c1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    44c5:	48 89 02             	mov    %rax,(%rdx)
    44c8:	8b 55 fc             	mov    -0x4(%rbp),%edx
    44cb:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    44ce:	01 c2                	add    %eax,%edx
    44d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    44d4:	89 50 08             	mov    %edx,0x8(%rax)
    44d7:	8b 45 fc             	mov    -0x4(%rbp),%eax
    44da:	c9                   	leave
    44db:	c3                   	ret

00000000000044dc <ArenaPop>:
    44dc:	f3 0f 1e fa          	endbr64
    44e0:	55                   	push   %rbp
    44e1:	48 89 e5             	mov    %rsp,%rbp
    44e4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    44e8:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    44eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    44ef:	8b 40 08             	mov    0x8(%rax),%eax
    44f2:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    44f5:	73 07                	jae    44fe <ArenaPop+0x22>
    44f7:	b8 00 00 00 00       	mov    $0x0,%eax
    44fc:	eb 20                	jmp    451e <ArenaPop+0x42>
    44fe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4502:	8b 40 08             	mov    0x8(%rax),%eax
    4505:	89 45 fc             	mov    %eax,-0x4(%rbp)
    4508:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    450c:	8b 40 08             	mov    0x8(%rax),%eax
    450f:	2b 45 e4             	sub    -0x1c(%rbp),%eax
    4512:	89 c2                	mov    %eax,%edx
    4514:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4518:	89 50 08             	mov    %edx,0x8(%rax)
    451b:	8b 45 fc             	mov    -0x4(%rbp),%eax
    451e:	5d                   	pop    %rbp
    451f:	c3                   	ret

0000000000004520 <ArenaOff>:
    4520:	f3 0f 1e fa          	endbr64
    4524:	55                   	push   %rbp
    4525:	48 89 e5             	mov    %rsp,%rbp
    4528:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    452c:	89 75 f4             	mov    %esi,-0xc(%rbp)
    452f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4533:	48 8b 10             	mov    (%rax),%rdx
    4536:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4539:	48 01 d0             	add    %rdx,%rax
    453c:	5d                   	pop    %rbp
    453d:	c3                   	ret

000000000000453e <ArenaClear>:
    453e:	f3 0f 1e fa          	endbr64
    4542:	55                   	push   %rbp
    4543:	48 89 e5             	mov    %rsp,%rbp
    4546:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    454a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    454e:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    4555:	90                   	nop
    4556:	5d                   	pop    %rbp
    4557:	c3                   	ret

0000000000004558 <GetConsts>:
    4558:	55                   	push   %rbp
    4559:	48 89 e5             	mov    %rsp,%rbp
    455c:	48 8d 05 ed af 00 00 	lea    0xafed(%rip),%rax        # f550 <consts.40>
    4563:	5d                   	pop    %rbp
    4564:	c3                   	ret

0000000000004565 <GetLocals>:
    4565:	55                   	push   %rbp
    4566:	48 89 e5             	mov    %rsp,%rbp
    4569:	48 8d 05 00 b0 00 00 	lea    0xb000(%rip),%rax        # f570 <locals.39>
    4570:	5d                   	pop    %rbp
    4571:	c3                   	ret

0000000000004572 <GetGlobals>:
    4572:	55                   	push   %rbp
    4573:	48 89 e5             	mov    %rsp,%rbp
    4576:	48 8d 05 33 b0 00 00 	lea    0xb033(%rip),%rax        # f5b0 <globals.37>
    457d:	5d                   	pop    %rbp
    457e:	c3                   	ret

000000000000457f <GetCode>:
    457f:	55                   	push   %rbp
    4580:	48 89 e5             	mov    %rsp,%rbp
    4583:	48 8d 05 06 b0 00 00 	lea    0xb006(%rip),%rax        # f590 <code.38>
    458a:	5d                   	pop    %rbp
    458b:	c3                   	ret

000000000000458c <GetFuncs>:
    458c:	55                   	push   %rbp
    458d:	48 89 e5             	mov    %rsp,%rbp
    4590:	48 8d 05 99 af 00 00 	lea    0xaf99(%rip),%rax        # f530 <funcs.41>
    4597:	5d                   	pop    %rbp
    4598:	c3                   	ret

0000000000004599 <VecAlloc>:
    4599:	f3 0f 1e fa          	endbr64
    459d:	55                   	push   %rbp
    459e:	48 89 e5             	mov    %rsp,%rbp
    45a1:	48 83 ec 10          	sub    $0x10,%rsp
    45a5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    45a9:	89 75 f4             	mov    %esi,-0xc(%rbp)
    45ac:	89 55 f0             	mov    %edx,-0x10(%rbp)
    45af:	8b 45 f4             	mov    -0xc(%rbp),%eax
    45b2:	0f af 45 f0          	imul   -0x10(%rbp),%eax
    45b6:	89 c0                	mov    %eax,%eax
    45b8:	48 89 c7             	mov    %rax,%rdi
    45bb:	e8 e0 fc ff ff       	call   42a0 <malloc@plt>
    45c0:	48 89 c2             	mov    %rax,%rdx
    45c3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    45c7:	48 89 10             	mov    %rdx,(%rax)
    45ca:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    45ce:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    45d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    45d9:	8b 55 f4             	mov    -0xc(%rbp),%edx
    45dc:	89 50 0c             	mov    %edx,0xc(%rax)
    45df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    45e3:	8b 55 f0             	mov    -0x10(%rbp),%edx
    45e6:	89 50 10             	mov    %edx,0x10(%rax)
    45e9:	90                   	nop
    45ea:	c9                   	leave
    45eb:	c3                   	ret

00000000000045ec <VecCommit>:
    45ec:	f3 0f 1e fa          	endbr64
    45f0:	55                   	push   %rbp
    45f1:	48 89 e5             	mov    %rsp,%rbp
    45f4:	48 83 ec 10          	sub    $0x10,%rsp
    45f8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    45fc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4600:	8b 40 08             	mov    0x8(%rax),%eax
    4603:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4607:	8b 52 0c             	mov    0xc(%rdx),%edx
    460a:	39 c2                	cmp    %eax,%edx
    460c:	73 3d                	jae    464b <VecCommit+0x5f>
    460e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4612:	8b 40 0c             	mov    0xc(%rax),%eax
    4615:	8d 14 00             	lea    (%rax,%rax,1),%edx
    4618:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    461c:	89 50 0c             	mov    %edx,0xc(%rax)
    461f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4623:	8b 50 0c             	mov    0xc(%rax),%edx
    4626:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    462a:	8b 40 10             	mov    0x10(%rax),%eax
    462d:	0f af c2             	imul   %edx,%eax
    4630:	89 c2                	mov    %eax,%edx
    4632:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4636:	48 8b 00             	mov    (%rax),%rax
    4639:	48 89 d6             	mov    %rdx,%rsi
    463c:	48 89 c7             	mov    %rax,%rdi
    463f:	e8 7c fc ff ff       	call   42c0 <realloc@plt>
    4644:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4648:	48 89 02             	mov    %rax,(%rdx)
    464b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    464f:	48 8b 30             	mov    (%rax),%rsi
    4652:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4656:	8b 40 08             	mov    0x8(%rax),%eax
    4659:	8d 48 01             	lea    0x1(%rax),%ecx
    465c:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4660:	89 4a 08             	mov    %ecx,0x8(%rdx)
    4663:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4667:	8b 52 10             	mov    0x10(%rdx),%edx
    466a:	0f af c2             	imul   %edx,%eax
    466d:	89 c0                	mov    %eax,%eax
    466f:	48 01 f0             	add    %rsi,%rax
    4672:	c9                   	leave
    4673:	c3                   	ret

0000000000004674 <VecPush>:
    4674:	f3 0f 1e fa          	endbr64
    4678:	55                   	push   %rbp
    4679:	48 89 e5             	mov    %rsp,%rbp
    467c:	48 83 ec 20          	sub    $0x20,%rsp
    4680:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4684:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4688:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    468c:	48 89 c7             	mov    %rax,%rdi
    468f:	e8 58 ff ff ff       	call   45ec <VecCommit>
    4694:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4698:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    469c:	8b 40 10             	mov    0x10(%rax),%eax
    469f:	89 c2                	mov    %eax,%edx
    46a1:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    46a5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46a9:	48 89 ce             	mov    %rcx,%rsi
    46ac:	48 89 c7             	mov    %rax,%rdi
    46af:	e8 cc fb ff ff       	call   4280 <memcpy@plt>
    46b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    46b8:	8b 40 08             	mov    0x8(%rax),%eax
    46bb:	83 e8 01             	sub    $0x1,%eax
    46be:	c9                   	leave
    46bf:	c3                   	ret

00000000000046c0 <VecPop>:
    46c0:	f3 0f 1e fa          	endbr64
    46c4:	55                   	push   %rbp
    46c5:	48 89 e5             	mov    %rsp,%rbp
    46c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    46cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46d0:	8b 40 08             	mov    0x8(%rax),%eax
    46d3:	85 c0                	test   %eax,%eax
    46d5:	75 09                	jne    46e0 <VecPop+0x20>
    46d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46db:	48 8b 00             	mov    (%rax),%rax
    46de:	eb 2e                	jmp    470e <VecPop+0x4e>
    46e0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46e4:	48 8b 08             	mov    (%rax),%rcx
    46e7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46eb:	8b 40 08             	mov    0x8(%rax),%eax
    46ee:	8d 50 ff             	lea    -0x1(%rax),%edx
    46f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46f5:	89 50 08             	mov    %edx,0x8(%rax)
    46f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    46fc:	8b 50 08             	mov    0x8(%rax),%edx
    46ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4703:	8b 40 10             	mov    0x10(%rax),%eax
    4706:	0f af c2             	imul   %edx,%eax
    4709:	89 c0                	mov    %eax,%eax
    470b:	48 01 c8             	add    %rcx,%rax
    470e:	5d                   	pop    %rbp
    470f:	c3                   	ret

0000000000004710 <VecSet>:
    4710:	f3 0f 1e fa          	endbr64
    4714:	55                   	push   %rbp
    4715:	48 89 e5             	mov    %rsp,%rbp
    4718:	48 83 ec 30          	sub    $0x30,%rsp
    471c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4720:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    4723:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4727:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    472b:	8b 40 08             	mov    0x8(%rax),%eax
    472e:	39 45 e4             	cmp    %eax,-0x1c(%rbp)
    4731:	73 39                	jae    476c <VecSet+0x5c>
    4733:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4737:	48 8b 10             	mov    (%rax),%rdx
    473a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    473e:	8b 40 10             	mov    0x10(%rax),%eax
    4741:	0f af 45 e4          	imul   -0x1c(%rbp),%eax
    4745:	89 c0                	mov    %eax,%eax
    4747:	48 01 d0             	add    %rdx,%rax
    474a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    474e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4752:	8b 40 10             	mov    0x10(%rax),%eax
    4755:	89 c2                	mov    %eax,%edx
    4757:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    475b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    475f:	48 89 ce             	mov    %rcx,%rsi
    4762:	48 89 c7             	mov    %rax,%rdi
    4765:	e8 16 fb ff ff       	call   4280 <memcpy@plt>
    476a:	eb 01                	jmp    476d <VecSet+0x5d>
    476c:	90                   	nop
    476d:	c9                   	leave
    476e:	c3                   	ret

000000000000476f <VecGet>:
    476f:	f3 0f 1e fa          	endbr64
    4773:	55                   	push   %rbp
    4774:	48 89 e5             	mov    %rsp,%rbp
    4777:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    477b:	89 75 f4             	mov    %esi,-0xc(%rbp)
    477e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4782:	8b 40 08             	mov    0x8(%rax),%eax
    4785:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    4788:	72 09                	jb     4793 <VecGet+0x24>
    478a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    478e:	48 8b 00             	mov    (%rax),%rax
    4791:	eb 17                	jmp    47aa <VecGet+0x3b>
    4793:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4797:	48 8b 10             	mov    (%rax),%rdx
    479a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    479e:	8b 40 10             	mov    0x10(%rax),%eax
    47a1:	0f af 45 f4          	imul   -0xc(%rbp),%eax
    47a5:	89 c0                	mov    %eax,%eax
    47a7:	48 01 d0             	add    %rdx,%rax
    47aa:	5d                   	pop    %rbp
    47ab:	c3                   	ret

00000000000047ac <VecPeek>:
    47ac:	f3 0f 1e fa          	endbr64
    47b0:	55                   	push   %rbp
    47b1:	48 89 e5             	mov    %rsp,%rbp
    47b4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    47b8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    47bc:	8b 40 08             	mov    0x8(%rax),%eax
    47bf:	85 c0                	test   %eax,%eax
    47c1:	75 09                	jne    47cc <VecPeek+0x20>
    47c3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    47c7:	48 8b 00             	mov    (%rax),%rax
    47ca:	eb 20                	jmp    47ec <VecPeek+0x40>
    47cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    47d0:	48 8b 10             	mov    (%rax),%rdx
    47d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    47d7:	8b 40 08             	mov    0x8(%rax),%eax
    47da:	8d 48 ff             	lea    -0x1(%rax),%ecx
    47dd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    47e1:	8b 40 10             	mov    0x10(%rax),%eax
    47e4:	0f af c1             	imul   %ecx,%eax
    47e7:	89 c0                	mov    %eax,%eax
    47e9:	48 01 d0             	add    %rdx,%rax
    47ec:	5d                   	pop    %rbp
    47ed:	c3                   	ret

00000000000047ee <VecPeekN>:
    47ee:	f3 0f 1e fa          	endbr64
    47f2:	55                   	push   %rbp
    47f3:	48 89 e5             	mov    %rsp,%rbp
    47f6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    47fa:	89 75 f4             	mov    %esi,-0xc(%rbp)
    47fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4801:	8b 40 08             	mov    0x8(%rax),%eax
    4804:	39 45 f4             	cmp    %eax,-0xc(%rbp)
    4807:	72 09                	jb     4812 <VecPeekN+0x24>
    4809:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    480d:	48 8b 00             	mov    (%rax),%rax
    4810:	eb 23                	jmp    4835 <VecPeekN+0x47>
    4812:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4816:	48 8b 10             	mov    (%rax),%rdx
    4819:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    481d:	8b 40 08             	mov    0x8(%rax),%eax
    4820:	2b 45 f4             	sub    -0xc(%rbp),%eax
    4823:	8d 48 ff             	lea    -0x1(%rax),%ecx
    4826:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    482a:	8b 40 10             	mov    0x10(%rax),%eax
    482d:	0f af c1             	imul   %ecx,%eax
    4830:	89 c0                	mov    %eax,%eax
    4832:	48 01 d0             	add    %rdx,%rax
    4835:	5d                   	pop    %rbp
    4836:	c3                   	ret

0000000000004837 <StringHash>:
    4837:	55                   	push   %rbp
    4838:	48 89 e5             	mov    %rsp,%rbp
    483b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    483f:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    4842:	c7 45 f4 c5 9d 1c 81 	movl   $0x811c9dc5,-0xc(%rbp)
    4849:	c7 45 fc 93 01 00 01 	movl   $0x1000193,-0x4(%rbp)
    4850:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    4857:	eb 21                	jmp    487a <StringHash+0x43>
    4859:	8b 55 f8             	mov    -0x8(%rbp),%edx
    485c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4860:	48 01 d0             	add    %rdx,%rax
    4863:	0f b6 00             	movzbl (%rax),%eax
    4866:	0f be c0             	movsbl %al,%eax
    4869:	31 45 f4             	xor    %eax,-0xc(%rbp)
    486c:	8b 45 f4             	mov    -0xc(%rbp),%eax
    486f:	0f af 45 fc          	imul   -0x4(%rbp),%eax
    4873:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4876:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    487a:	8b 45 f8             	mov    -0x8(%rbp),%eax
    487d:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
    4880:	72 d7                	jb     4859 <StringHash+0x22>
    4882:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4885:	5d                   	pop    %rbp
    4886:	c3                   	ret

0000000000004887 <StringAlloc>:
    4887:	55                   	push   %rbp
    4888:	48 89 e5             	mov    %rsp,%rbp
    488b:	48 83 ec 30          	sub    $0x30,%rsp
    488f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4893:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4897:	89 55 dc             	mov    %edx,-0x24(%rbp)
    489a:	8b 4d dc             	mov    -0x24(%rbp),%ecx
    489d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    48a1:	ba 01 00 00 00       	mov    $0x1,%edx
    48a6:	89 ce                	mov    %ecx,%esi
    48a8:	48 89 c7             	mov    %rax,%rdi
    48ab:	e8 a3 fb ff ff       	call   4453 <ArenaPush>
    48b0:	89 45 f4             	mov    %eax,-0xc(%rbp)
    48b3:	8b 55 f4             	mov    -0xc(%rbp),%edx
    48b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    48ba:	89 d6                	mov    %edx,%esi
    48bc:	48 89 c7             	mov    %rax,%rdi
    48bf:	e8 5c fc ff ff       	call   4520 <ArenaOff>
    48c4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    48c8:	8b 55 dc             	mov    -0x24(%rbp),%edx
    48cb:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    48cf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    48d3:	48 89 ce             	mov    %rcx,%rsi
    48d6:	48 89 c7             	mov    %rax,%rdi
    48d9:	e8 a2 f9 ff ff       	call   4280 <memcpy@plt>
    48de:	8b 45 f4             	mov    -0xc(%rbp),%eax
    48e1:	c9                   	leave
    48e2:	c3                   	ret

00000000000048e3 <ValueSet>:
    48e3:	f3 0f 1e fa          	endbr64
    48e7:	55                   	push   %rbp
    48e8:	48 89 e5             	mov    %rsp,%rbp
    48eb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    48ef:	89 75 f4             	mov    %esi,-0xc(%rbp)
    48f2:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    48f6:	8b 45 f4             	mov    -0xc(%rbp),%eax
    48f9:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    4900:	00 
    4901:	48 8d 05 58 98 00 00 	lea    0x9858(%rip),%rax        # e160 <types.51>
    4908:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    490c:	90                   	nop
    490d:	ff e0                	jmp    *%rax
    490f:	f3 0f 1e fa          	endbr64
    4913:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4917:	48 8b 10             	mov    (%rax),%rdx
    491a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    491e:	48 89 50 08          	mov    %rdx,0x8(%rax)
    4922:	eb 27                	jmp    494b <ValueSet+0x68>
    4924:	f3 0f 1e fa          	endbr64
    4928:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    492c:	f2 0f 10 00          	movsd  (%rax),%xmm0
    4930:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4934:	f2 0f 11 40 08       	movsd  %xmm0,0x8(%rax)
    4939:	eb 10                	jmp    494b <ValueSet+0x68>
    493b:	f3 0f 1e fa          	endbr64
    493f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4943:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4947:	48 89 50 08          	mov    %rdx,0x8(%rax)
    494b:	5d                   	pop    %rbp
    494c:	c3                   	ret

000000000000494d <GetInterns>:
    494d:	55                   	push   %rbp
    494e:	48 89 e5             	mov    %rsp,%rbp
    4951:	48 8d 05 98 ac 00 00 	lea    0xac98(%rip),%rax        # f5f0 <interns.0>
    4958:	5d                   	pop    %rbp
    4959:	c3                   	ret

000000000000495a <TableAlloc>:
    495a:	f3 0f 1e fa          	endbr64
    495e:	55                   	push   %rbp
    495f:	48 89 e5             	mov    %rsp,%rbp
    4962:	48 83 ec 20          	sub    $0x20,%rsp
    4966:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    496a:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    496e:	89 55 ec             	mov    %edx,-0x14(%rbp)
    4971:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4975:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    4979:	48 89 50 08          	mov    %rdx,0x8(%rax)
    497d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    4980:	be 0c 00 00 00       	mov    $0xc,%esi
    4985:	48 89 c7             	mov    %rax,%rdi
    4988:	e8 d3 f8 ff ff       	call   4260 <calloc@plt>
    498d:	48 89 c2             	mov    %rax,%rdx
    4990:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4994:	48 89 10             	mov    %rdx,(%rax)
    4997:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    499b:	c7 40 10 00 00 00 00 	movl   $0x0,0x10(%rax)
    49a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    49a6:	8b 55 ec             	mov    -0x14(%rbp),%edx
    49a9:	89 50 14             	mov    %edx,0x14(%rax)
    49ac:	90                   	nop
    49ad:	c9                   	leave
    49ae:	c3                   	ret

00000000000049af <TableFind>:
    49af:	f3 0f 1e fa          	endbr64
    49b3:	55                   	push   %rbp
    49b4:	48 89 e5             	mov    %rsp,%rbp
    49b7:	48 83 ec 40          	sub    $0x40,%rsp
    49bb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    49bf:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    49c3:	89 55 cc             	mov    %edx,-0x34(%rbp)
    49c6:	89 4d c8             	mov    %ecx,-0x38(%rbp)
    49c9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    49cd:	8b 40 14             	mov    0x14(%rax),%eax
    49d0:	83 e8 01             	sub    $0x1,%eax
    49d3:	23 45 c8             	and    -0x38(%rbp),%eax
    49d6:	89 45 e8             	mov    %eax,-0x18(%rbp)
    49d9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    49dd:	48 8b 08             	mov    (%rax),%rcx
    49e0:	8b 55 e8             	mov    -0x18(%rbp),%edx
    49e3:	48 89 d0             	mov    %rdx,%rax
    49e6:	48 01 c0             	add    %rax,%rax
    49e9:	48 01 d0             	add    %rdx,%rax
    49ec:	48 c1 e0 02          	shl    $0x2,%rax
    49f0:	48 01 c8             	add    %rcx,%rax
    49f3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    49f7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    49fb:	8b 40 08             	mov    0x8(%rax),%eax
    49fe:	85 c0                	test   %eax,%eax
    4a00:	75 06                	jne    4a08 <TableFind+0x59>
    4a02:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4a06:	eb 66                	jmp    4a6e <TableFind+0xbf>
    4a08:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4a0c:	8b 40 04             	mov    0x4(%rax),%eax
    4a0f:	39 45 cc             	cmp    %eax,-0x34(%rbp)
    4a12:	75 3f                	jne    4a53 <TableFind+0xa4>
    4a14:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4a18:	48 8b 40 08          	mov    0x8(%rax),%rax
    4a1c:	48 8b 10             	mov    (%rax),%rdx
    4a1f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4a23:	8b 00                	mov    (%rax),%eax
    4a25:	89 c0                	mov    %eax,%eax
    4a27:	48 01 d0             	add    %rdx,%rax
    4a2a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4a2e:	8b 55 cc             	mov    -0x34(%rbp),%edx
    4a31:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    4a35:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4a39:	48 89 ce             	mov    %rcx,%rsi
    4a3c:	48 89 c7             	mov    %rax,%rdi
    4a3f:	e8 ec f7 ff ff       	call   4230 <memcmp@plt>
    4a44:	89 45 ec             	mov    %eax,-0x14(%rbp)
    4a47:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
    4a4b:	75 07                	jne    4a54 <TableFind+0xa5>
    4a4d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4a51:	eb 1b                	jmp    4a6e <TableFind+0xbf>
    4a53:	90                   	nop
    4a54:	8b 45 e8             	mov    -0x18(%rbp),%eax
    4a57:	8d 50 01             	lea    0x1(%rax),%edx
    4a5a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4a5e:	8b 40 14             	mov    0x14(%rax),%eax
    4a61:	83 e8 01             	sub    $0x1,%eax
    4a64:	21 d0                	and    %edx,%eax
    4a66:	89 45 e8             	mov    %eax,-0x18(%rbp)
    4a69:	e9 6b ff ff ff       	jmp    49d9 <TableFind+0x2a>
    4a6e:	c9                   	leave
    4a6f:	c3                   	ret

0000000000004a70 <TableReput>:
    4a70:	f3 0f 1e fa          	endbr64
    4a74:	55                   	push   %rbp
    4a75:	48 89 e5             	mov    %rsp,%rbp
    4a78:	48 83 ec 20          	sub    $0x20,%rsp
    4a7c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4a80:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4a84:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4a88:	8b 10                	mov    (%rax),%edx
    4a8a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4a8e:	48 8b 40 08          	mov    0x8(%rax),%rax
    4a92:	89 d6                	mov    %edx,%esi
    4a94:	48 89 c7             	mov    %rax,%rdi
    4a97:	e8 84 fa ff ff       	call   4520 <ArenaOff>
    4a9c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4aa0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4aa4:	8b 48 08             	mov    0x8(%rax),%ecx
    4aa7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4aab:	8b 50 04             	mov    0x4(%rax),%edx
    4aae:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    4ab2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ab6:	48 89 c7             	mov    %rax,%rdi
    4ab9:	e8 f1 fe ff ff       	call   49af <TableFind>
    4abe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4ac2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ac6:	8b 40 10             	mov    0x10(%rax),%eax
    4ac9:	8d 50 01             	lea    0x1(%rax),%edx
    4acc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ad0:	89 50 10             	mov    %edx,0x10(%rax)
    4ad3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4ad7:	8b 10                	mov    (%rax),%edx
    4ad9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4add:	89 10                	mov    %edx,(%rax)
    4adf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4ae3:	8b 50 04             	mov    0x4(%rax),%edx
    4ae6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4aea:	89 50 04             	mov    %edx,0x4(%rax)
    4aed:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4af1:	8b 50 08             	mov    0x8(%rax),%edx
    4af4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4af8:	89 50 08             	mov    %edx,0x8(%rax)
    4afb:	90                   	nop
    4afc:	c9                   	leave
    4afd:	c3                   	ret

0000000000004afe <TableGrow>:
    4afe:	f3 0f 1e fa          	endbr64
    4b02:	55                   	push   %rbp
    4b03:	48 89 e5             	mov    %rsp,%rbp
    4b06:	48 83 ec 30          	sub    $0x30,%rsp
    4b0a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4b0e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4b12:	48 8b 00             	mov    (%rax),%rax
    4b15:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4b19:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4b1d:	8b 40 10             	mov    0x10(%rax),%eax
    4b20:	89 45 ec             	mov    %eax,-0x14(%rbp)
    4b23:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4b27:	8b 40 14             	mov    0x14(%rax),%eax
    4b2a:	8d 14 00             	lea    (%rax,%rax,1),%edx
    4b2d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4b31:	48 8b 48 08          	mov    0x8(%rax),%rcx
    4b35:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4b39:	48 89 ce             	mov    %rcx,%rsi
    4b3c:	48 89 c7             	mov    %rax,%rdi
    4b3f:	e8 16 fe ff ff       	call   495a <TableAlloc>
    4b44:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    4b4b:	eb 43                	jmp    4b90 <TableGrow+0x92>
    4b4d:	8b 55 e8             	mov    -0x18(%rbp),%edx
    4b50:	48 89 d0             	mov    %rdx,%rax
    4b53:	48 01 c0             	add    %rax,%rax
    4b56:	48 01 d0             	add    %rdx,%rax
    4b59:	48 c1 e0 02          	shl    $0x2,%rax
    4b5d:	48 89 c2             	mov    %rax,%rdx
    4b60:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4b64:	48 01 d0             	add    %rdx,%rax
    4b67:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4b6b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4b6f:	8b 40 08             	mov    0x8(%rax),%eax
    4b72:	85 c0                	test   %eax,%eax
    4b74:	74 15                	je     4b8b <TableGrow+0x8d>
    4b76:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4b7a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4b7e:	48 89 d6             	mov    %rdx,%rsi
    4b81:	48 89 c7             	mov    %rax,%rdi
    4b84:	e8 e7 fe ff ff       	call   4a70 <TableReput>
    4b89:	eb 01                	jmp    4b8c <TableGrow+0x8e>
    4b8b:	90                   	nop
    4b8c:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    4b90:	8b 45 e8             	mov    -0x18(%rbp),%eax
    4b93:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    4b96:	72 b5                	jb     4b4d <TableGrow+0x4f>
    4b98:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4b9c:	48 89 c7             	mov    %rax,%rdi
    4b9f:	e8 fc f5 ff ff       	call   41a0 <free@plt>
    4ba4:	90                   	nop
    4ba5:	c9                   	leave
    4ba6:	c3                   	ret

0000000000004ba7 <TablePut>:
    4ba7:	f3 0f 1e fa          	endbr64
    4bab:	55                   	push   %rbp
    4bac:	48 89 e5             	mov    %rsp,%rbp
    4baf:	48 83 ec 30          	sub    $0x30,%rsp
    4bb3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4bb7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4bbb:	89 55 dc             	mov    %edx,-0x24(%rbp)
    4bbe:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4bc2:	8b 40 10             	mov    0x10(%rax),%eax
    4bc5:	89 c0                	mov    %eax,%eax
    4bc7:	48 85 c0             	test   %rax,%rax
    4bca:	78 0b                	js     4bd7 <TablePut+0x30>
    4bcc:	66 0f ef c0          	pxor   %xmm0,%xmm0
    4bd0:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    4bd5:	eb 19                	jmp    4bf0 <TablePut+0x49>
    4bd7:	48 89 c2             	mov    %rax,%rdx
    4bda:	48 d1 ea             	shr    $1,%rdx
    4bdd:	83 e0 01             	and    $0x1,%eax
    4be0:	48 09 c2             	or     %rax,%rdx
    4be3:	66 0f ef c0          	pxor   %xmm0,%xmm0
    4be7:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    4bec:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    4bf0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4bf4:	8b 40 14             	mov    0x14(%rax),%eax
    4bf7:	89 c0                	mov    %eax,%eax
    4bf9:	48 85 c0             	test   %rax,%rax
    4bfc:	78 0b                	js     4c09 <TablePut+0x62>
    4bfe:	66 0f ef c9          	pxor   %xmm1,%xmm1
    4c02:	f2 48 0f 2a c8       	cvtsi2sd %rax,%xmm1
    4c07:	eb 19                	jmp    4c22 <TablePut+0x7b>
    4c09:	48 89 c2             	mov    %rax,%rdx
    4c0c:	48 d1 ea             	shr    $1,%rdx
    4c0f:	83 e0 01             	and    $0x1,%eax
    4c12:	48 09 c2             	or     %rax,%rdx
    4c15:	66 0f ef c9          	pxor   %xmm1,%xmm1
    4c19:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
    4c1e:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
    4c22:	f2 0f 10 15 c6 64 00 	movsd  0x64c6(%rip),%xmm2        # b0f0 <_IO_stdin_used+0xf0>
    4c29:	00 
    4c2a:	f2 0f 59 ca          	mulsd  %xmm2,%xmm1
    4c2e:	66 0f 2f c1          	comisd %xmm1,%xmm0
    4c32:	76 0c                	jbe    4c40 <TablePut+0x99>
    4c34:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c38:	48 89 c7             	mov    %rax,%rdi
    4c3b:	e8 be fe ff ff       	call   4afe <TableGrow>
    4c40:	8b 55 dc             	mov    -0x24(%rbp),%edx
    4c43:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4c47:	89 d6                	mov    %edx,%esi
    4c49:	48 89 c7             	mov    %rax,%rdi
    4c4c:	e8 e6 fb ff ff       	call   4837 <StringHash>
    4c51:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4c54:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    4c57:	8b 55 dc             	mov    -0x24(%rbp),%edx
    4c5a:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    4c5e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c62:	48 89 c7             	mov    %rax,%rdi
    4c65:	e8 45 fd ff ff       	call   49af <TableFind>
    4c6a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4c6e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4c72:	8b 40 08             	mov    0x8(%rax),%eax
    4c75:	85 c0                	test   %eax,%eax
    4c77:	74 06                	je     4c7f <TablePut+0xd8>
    4c79:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4c7d:	eb 49                	jmp    4cc8 <TablePut+0x121>
    4c7f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c83:	8b 40 10             	mov    0x10(%rax),%eax
    4c86:	8d 50 01             	lea    0x1(%rax),%edx
    4c89:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c8d:	89 50 10             	mov    %edx,0x10(%rax)
    4c90:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4c94:	48 8b 40 08          	mov    0x8(%rax),%rax
    4c98:	8b 55 dc             	mov    -0x24(%rbp),%edx
    4c9b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    4c9f:	48 89 ce             	mov    %rcx,%rsi
    4ca2:	48 89 c7             	mov    %rax,%rdi
    4ca5:	e8 dd fb ff ff       	call   4887 <StringAlloc>
    4caa:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    4cae:	89 02                	mov    %eax,(%rdx)
    4cb0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4cb4:	8b 55 dc             	mov    -0x24(%rbp),%edx
    4cb7:	89 50 04             	mov    %edx,0x4(%rax)
    4cba:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4cbe:	8b 55 f4             	mov    -0xc(%rbp),%edx
    4cc1:	89 50 08             	mov    %edx,0x8(%rax)
    4cc4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4cc8:	c9                   	leave
    4cc9:	c3                   	ret

0000000000004cca <GetEnv>:
    4cca:	55                   	push   %rbp
    4ccb:	48 89 e5             	mov    %rsp,%rbp
    4cce:	48 8d 05 fb a8 00 00 	lea    0xa8fb(%rip),%rax        # f5d0 <env.36>
    4cd5:	5d                   	pop    %rbp
    4cd6:	c3                   	ret

0000000000004cd7 <MapAlloc>:
    4cd7:	f3 0f 1e fa          	endbr64
    4cdb:	55                   	push   %rbp
    4cdc:	48 89 e5             	mov    %rsp,%rbp
    4cdf:	48 83 ec 10          	sub    $0x10,%rsp
    4ce3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4ce7:	89 75 f4             	mov    %esi,-0xc(%rbp)
    4cea:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4ced:	be 18 00 00 00       	mov    $0x18,%esi
    4cf2:	48 89 c7             	mov    %rax,%rdi
    4cf5:	e8 66 f5 ff ff       	call   4260 <calloc@plt>
    4cfa:	48 89 c2             	mov    %rax,%rdx
    4cfd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d01:	48 89 10             	mov    %rdx,(%rax)
    4d04:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d08:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    4d0f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d13:	8b 55 f4             	mov    -0xc(%rbp),%edx
    4d16:	89 50 0c             	mov    %edx,0xc(%rax)
    4d19:	90                   	nop
    4d1a:	c9                   	leave
    4d1b:	c3                   	ret

0000000000004d1c <MapGrow>:
    4d1c:	f3 0f 1e fa          	endbr64
    4d20:	55                   	push   %rbp
    4d21:	48 89 e5             	mov    %rsp,%rbp
    4d24:	48 83 ec 30          	sub    $0x30,%rsp
    4d28:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4d2c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d30:	48 8b 00             	mov    (%rax),%rax
    4d33:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4d37:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d3b:	8b 40 0c             	mov    0xc(%rax),%eax
    4d3e:	89 45 ec             	mov    %eax,-0x14(%rbp)
    4d41:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d45:	8b 40 0c             	mov    0xc(%rax),%eax
    4d48:	8d 14 00             	lea    (%rax,%rax,1),%edx
    4d4b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d4f:	89 d6                	mov    %edx,%esi
    4d51:	48 89 c7             	mov    %rax,%rdi
    4d54:	e8 7e ff ff ff       	call   4cd7 <MapAlloc>
    4d59:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    4d60:	eb 4f                	jmp    4db1 <MapGrow+0x95>
    4d62:	8b 55 e8             	mov    -0x18(%rbp),%edx
    4d65:	48 89 d0             	mov    %rdx,%rax
    4d68:	48 01 c0             	add    %rax,%rax
    4d6b:	48 01 d0             	add    %rdx,%rax
    4d6e:	48 c1 e0 03          	shl    $0x3,%rax
    4d72:	48 89 c2             	mov    %rax,%rdx
    4d75:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4d79:	48 01 d0             	add    %rdx,%rax
    4d7c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4d80:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d84:	48 8b 00             	mov    (%rax),%rax
    4d87:	48 85 c0             	test   %rax,%rax
    4d8a:	74 20                	je     4dac <MapGrow+0x90>
    4d8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d90:	48 8b 30             	mov    (%rax),%rsi
    4d93:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d97:	8b 50 08             	mov    0x8(%rax),%edx
    4d9a:	48 8b 48 10          	mov    0x10(%rax),%rcx
    4d9e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4da2:	48 89 c7             	mov    %rax,%rdi
    4da5:	e8 a0 00 00 00       	call   4e4a <MapPut>
    4daa:	eb 01                	jmp    4dad <MapGrow+0x91>
    4dac:	90                   	nop
    4dad:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    4db1:	8b 45 e8             	mov    -0x18(%rbp),%eax
    4db4:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    4db7:	72 a9                	jb     4d62 <MapGrow+0x46>
    4db9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4dbd:	48 89 c7             	mov    %rax,%rdi
    4dc0:	e8 db f3 ff ff       	call   41a0 <free@plt>
    4dc5:	90                   	nop
    4dc6:	c9                   	leave
    4dc7:	c3                   	ret

0000000000004dc8 <MapGet>:
    4dc8:	f3 0f 1e fa          	endbr64
    4dcc:	55                   	push   %rbp
    4dcd:	48 89 e5             	mov    %rsp,%rbp
    4dd0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4dd4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4dd8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4ddc:	8b 50 08             	mov    0x8(%rax),%edx
    4ddf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4de3:	8b 40 0c             	mov    0xc(%rax),%eax
    4de6:	83 e8 01             	sub    $0x1,%eax
    4de9:	21 d0                	and    %edx,%eax
    4deb:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4dee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4df2:	48 8b 08             	mov    (%rax),%rcx
    4df5:	8b 55 f4             	mov    -0xc(%rbp),%edx
    4df8:	48 89 d0             	mov    %rdx,%rax
    4dfb:	48 01 c0             	add    %rax,%rax
    4dfe:	48 01 d0             	add    %rdx,%rax
    4e01:	48 c1 e0 03          	shl    $0x3,%rax
    4e05:	48 01 c8             	add    %rcx,%rax
    4e08:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4e0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e10:	48 8b 00             	mov    (%rax),%rax
    4e13:	48 85 c0             	test   %rax,%rax
    4e16:	75 06                	jne    4e1e <MapGet+0x56>
    4e18:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e1c:	eb 2a                	jmp    4e48 <MapGet+0x80>
    4e1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e22:	48 8b 00             	mov    (%rax),%rax
    4e25:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    4e29:	75 06                	jne    4e31 <MapGet+0x69>
    4e2b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e2f:	eb 17                	jmp    4e48 <MapGet+0x80>
    4e31:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4e34:	8d 50 01             	lea    0x1(%rax),%edx
    4e37:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e3b:	8b 40 0c             	mov    0xc(%rax),%eax
    4e3e:	83 e8 01             	sub    $0x1,%eax
    4e41:	21 d0                	and    %edx,%eax
    4e43:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4e46:	eb a6                	jmp    4dee <MapGet+0x26>
    4e48:	5d                   	pop    %rbp
    4e49:	c3                   	ret

0000000000004e4a <MapPut>:
    4e4a:	f3 0f 1e fa          	endbr64
    4e4e:	55                   	push   %rbp
    4e4f:	48 89 e5             	mov    %rsp,%rbp
    4e52:	48 83 ec 30          	sub    $0x30,%rsp
    4e56:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4e5a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4e5e:	89 d0                	mov    %edx,%eax
    4e60:	48 89 ca             	mov    %rcx,%rdx
    4e63:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    4e67:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4e6b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e6f:	8b 40 08             	mov    0x8(%rax),%eax
    4e72:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4e76:	8b 52 0c             	mov    0xc(%rdx),%edx
    4e79:	39 c2                	cmp    %eax,%edx
    4e7b:	73 0c                	jae    4e89 <MapPut+0x3f>
    4e7d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e81:	48 89 c7             	mov    %rax,%rdi
    4e84:	e8 93 fe ff ff       	call   4d1c <MapGrow>
    4e89:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4e8d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e91:	48 89 d6             	mov    %rdx,%rsi
    4e94:	48 89 c7             	mov    %rax,%rdi
    4e97:	e8 2c ff ff ff       	call   4dc8 <MapGet>
    4e9c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4ea0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ea4:	8b 50 08             	mov    0x8(%rax),%edx
    4ea7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4eab:	48 8b 00             	mov    (%rax),%rax
    4eae:	48 85 c0             	test   %rax,%rax
    4eb1:	0f 94 c0             	sete   %al
    4eb4:	0f b6 c0             	movzbl %al,%eax
    4eb7:	01 c2                	add    %eax,%edx
    4eb9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ebd:	89 50 08             	mov    %edx,0x8(%rax)
    4ec0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ec4:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4ec8:	48 89 10             	mov    %rdx,(%rax)
    4ecb:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    4ecf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4ed3:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4ed7:	48 89 41 08          	mov    %rax,0x8(%rcx)
    4edb:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    4edf:	90                   	nop
    4ee0:	c9                   	leave
    4ee1:	c3                   	ret

0000000000004ee2 <MapDel>:
    4ee2:	f3 0f 1e fa          	endbr64
    4ee6:	55                   	push   %rbp
    4ee7:	48 89 e5             	mov    %rsp,%rbp
    4eea:	48 83 ec 20          	sub    $0x20,%rsp
    4eee:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4ef2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4ef6:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4efa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4efe:	48 89 d6             	mov    %rdx,%rsi
    4f01:	48 89 c7             	mov    %rax,%rdi
    4f04:	e8 bf fe ff ff       	call   4dc8 <MapGet>
    4f09:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4f0d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f11:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    4f18:	90                   	nop
    4f19:	c9                   	leave
    4f1a:	c3                   	ret

0000000000004f1b <GetJmp>:
    4f1b:	55                   	push   %rbp
    4f1c:	48 89 e5             	mov    %rsp,%rbp
    4f1f:	48 8d 05 fa a4 00 00 	lea    0xa4fa(%rip),%rax        # f420 <buf.48>
    4f26:	5d                   	pop    %rbp
    4f27:	c3                   	ret

0000000000004f28 <Throw>:
    4f28:	55                   	push   %rbp
    4f29:	48 89 e5             	mov    %rsp,%rbp
    4f2c:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
    4f33:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
    4f3a:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
    4f41:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
    4f48:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    4f4f:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
    4f56:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
    4f5d:	84 c0                	test   %al,%al
    4f5f:	74 20                	je     4f81 <Throw+0x59>
    4f61:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
    4f65:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
    4f69:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
    4f6d:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
    4f71:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
    4f75:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
    4f79:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
    4f7d:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
    4f81:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4f88:	00 00 
    4f8a:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    4f91:	31 c0                	xor    %eax,%eax
    4f93:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
    4f9a:	00 00 00 
    4f9d:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
    4fa4:	00 00 00 
    4fa7:	48 8d 45 10          	lea    0x10(%rbp),%rax
    4fab:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    4fb2:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
    4fb9:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    4fc0:	48 8b 05 19 a4 00 00 	mov    0xa419(%rip),%rax        # f3e0 <stderr@GLIBC_2.2.5>
    4fc7:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
    4fce:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
    4fd5:	48 89 ce             	mov    %rcx,%rsi
    4fd8:	48 89 c7             	mov    %rax,%rdi
    4fdb:	e8 10 f3 ff ff       	call   42f0 <vfprintf@plt>
    4fe0:	e8 36 ff ff ff       	call   4f1b <GetJmp>
    4fe5:	be 01 00 00 00       	mov    $0x1,%esi
    4fea:	48 89 c7             	mov    %rax,%rdi
    4fed:	e8 de f2 ff ff       	call   42d0 <longjmp@plt>

0000000000004ff2 <IoRead>:
    4ff2:	55                   	push   %rbp
    4ff3:	48 89 e5             	mov    %rsp,%rbp
    4ff6:	48 83 ec 30          	sub    $0x30,%rsp
    4ffa:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4ffe:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    5002:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5006:	48 8d 15 03 60 00 00 	lea    0x6003(%rip),%rdx        # b010 <_IO_stdin_used+0x10>
    500d:	48 89 d6             	mov    %rdx,%rsi
    5010:	48 89 c7             	mov    %rax,%rdi
    5013:	e8 c8 f2 ff ff       	call   42e0 <fopen@plt>
    5018:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    501c:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    5021:	75 1b                	jne    503e <IoRead+0x4c>
    5023:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5027:	48 89 c6             	mov    %rax,%rsi
    502a:	48 8d 05 e2 5f 00 00 	lea    0x5fe2(%rip),%rax        # b013 <_IO_stdin_used+0x13>
    5031:	48 89 c7             	mov    %rax,%rdi
    5034:	b8 00 00 00 00       	mov    $0x0,%eax
    5039:	e8 ea fe ff ff       	call   4f28 <Throw>
    503e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5042:	ba 02 00 00 00       	mov    $0x2,%edx
    5047:	be 00 00 00 00       	mov    $0x0,%esi
    504c:	48 89 c7             	mov    %rax,%rdi
    504f:	e8 5c f2 ff ff       	call   42b0 <fseek@plt>
    5054:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5058:	48 89 c7             	mov    %rax,%rdi
    505b:	e8 10 f2 ff ff       	call   4270 <ftell@plt>
    5060:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5064:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5068:	ba 00 00 00 00       	mov    $0x0,%edx
    506d:	be 00 00 00 00       	mov    $0x0,%esi
    5072:	48 89 c7             	mov    %rax,%rdi
    5075:	e8 36 f2 ff ff       	call   42b0 <fseek@plt>
    507a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    507e:	89 c1                	mov    %eax,%ecx
    5080:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5084:	ba 01 00 00 00       	mov    $0x1,%edx
    5089:	89 ce                	mov    %ecx,%esi
    508b:	48 89 c7             	mov    %rax,%rdi
    508e:	e8 c0 f3 ff ff       	call   4453 <ArenaPush>
    5093:	89 c2                	mov    %eax,%edx
    5095:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5099:	89 d6                	mov    %edx,%esi
    509b:	48 89 c7             	mov    %rax,%rdi
    509e:	e8 7d f4 ff ff       	call   4520 <ArenaOff>
    50a3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    50a7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    50ab:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    50af:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    50b3:	be 01 00 00 00       	mov    $0x1,%esi
    50b8:	48 89 c7             	mov    %rax,%rdi
    50bb:	e8 00 f1 ff ff       	call   41c0 <fread@plt>
    50c0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    50c4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    50c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50cc:	48 01 d0             	add    %rdx,%rax
    50cf:	c6 00 00             	movb   $0x0,(%rax)
    50d2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    50d6:	48 89 c7             	mov    %rax,%rdi
    50d9:	e8 12 f1 ff ff       	call   41f0 <fclose@plt>
    50de:	90                   	nop
    50df:	c9                   	leave
    50e0:	c3                   	ret

00000000000050e1 <GetLexer>:
    50e1:	55                   	push   %rbp
    50e2:	48 89 e5             	mov    %rsp,%rbp
    50e5:	48 8d 05 14 a3 00 00 	lea    0xa314(%rip),%rax        # f400 <lexer.49>
    50ec:	5d                   	pop    %rbp
    50ed:	c3                   	ret

00000000000050ee <LexerInit>:
    50ee:	55                   	push   %rbp
    50ef:	48 89 e5             	mov    %rsp,%rbp
    50f2:	48 83 ec 20          	sub    $0x20,%rsp
    50f6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    50fa:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    50fe:	e8 de ff ff ff       	call   50e1 <GetLexer>
    5103:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5107:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    510b:	48 8b 10             	mov    (%rax),%rdx
    510e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5112:	48 89 10             	mov    %rdx,(%rax)
    5115:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5119:	48 8b 10             	mov    (%rax),%rdx
    511c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5120:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5124:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5128:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
    512f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5133:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%rax)
    513a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    513e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    5142:	48 89 50 18          	mov    %rdx,0x18(%rax)
    5146:	90                   	nop
    5147:	c9                   	leave
    5148:	c3                   	ret

0000000000005149 <LexReinit>:
    5149:	55                   	push   %rbp
    514a:	48 89 e5             	mov    %rsp,%rbp
    514d:	48 83 ec 18          	sub    $0x18,%rsp
    5151:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5155:	e8 87 ff ff ff       	call   50e1 <GetLexer>
    515a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    515e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5162:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5166:	48 89 10             	mov    %rdx,(%rax)
    5169:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    516d:	48 8b 10             	mov    (%rax),%rdx
    5170:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5174:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5178:	90                   	nop
    5179:	c9                   	leave
    517a:	c3                   	ret

000000000000517b <LexSet>:
    517b:	55                   	push   %rbp
    517c:	48 89 e5             	mov    %rsp,%rbp
    517f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5183:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    5187:	89 55 cc             	mov    %edx,-0x34(%rbp)
    518a:	89 c8                	mov    %ecx,%eax
    518c:	44 89 c2             	mov    %r8d,%edx
    518f:	88 45 c8             	mov    %al,-0x38(%rbp)
    5192:	89 d0                	mov    %edx,%eax
    5194:	88 45 c4             	mov    %al,-0x3c(%rbp)
    5197:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    519b:	48 8b 50 08          	mov    0x8(%rax),%rdx
    519f:	0f b6 45 c4          	movzbl -0x3c(%rbp),%eax
    51a3:	48 01 c2             	add    %rax,%rdx
    51a6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    51aa:	48 89 50 08          	mov    %rdx,0x8(%rax)
    51ae:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    51b2:	8b 50 14             	mov    0x14(%rax),%edx
    51b5:	0f b6 45 c4          	movzbl -0x3c(%rbp),%eax
    51b9:	01 c2                	add    %eax,%edx
    51bb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    51bf:	89 50 14             	mov    %edx,0x14(%rax)
    51c2:	0f b6 55 c8          	movzbl -0x38(%rbp),%edx
    51c6:	8b 45 cc             	mov    -0x34(%rbp),%eax
    51c9:	01 c2                	add    %eax,%edx
    51cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51cf:	66 0f ef c0          	pxor   %xmm0,%xmm0
    51d3:	0f 11 00             	movups %xmm0,(%rax)
    51d6:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    51db:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51df:	89 10                	mov    %edx,(%rax)
    51e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51e5:	5d                   	pop    %rbp
    51e6:	c3                   	ret

00000000000051e7 <LexEof>:
    51e7:	55                   	push   %rbp
    51e8:	48 89 e5             	mov    %rsp,%rbp
    51eb:	48 83 ec 20          	sub    $0x20,%rsp
    51ef:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    51f3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    51f7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    51fe:	00 00 
    5200:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5204:	31 c0                	xor    %eax,%eax
    5206:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    520a:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    520e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5214:	b9 00 00 00 00       	mov    $0x0,%ecx
    5219:	ba 00 00 00 00       	mov    $0x0,%edx
    521e:	48 89 c7             	mov    %rax,%rdi
    5221:	e8 55 ff ff ff       	call   517b <LexSet>
    5226:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    522a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5231:	00 00 
    5233:	74 05                	je     523a <LexEof+0x53>
    5235:	e8 c6 ef ff ff       	call   4200 <__stack_chk_fail@plt>
    523a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    523e:	c9                   	leave
    523f:	c3                   	ret

0000000000005240 <LexLine>:
    5240:	55                   	push   %rbp
    5241:	48 89 e5             	mov    %rsp,%rbp
    5244:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5248:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    524c:	8b 40 10             	mov    0x10(%rax),%eax
    524f:	8d 50 01             	lea    0x1(%rax),%edx
    5252:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5256:	89 50 10             	mov    %edx,0x10(%rax)
    5259:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    525d:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%rax)
    5264:	90                   	nop
    5265:	5d                   	pop    %rbp
    5266:	c3                   	ret

0000000000005267 <LexNot>:
    5267:	55                   	push   %rbp
    5268:	48 89 e5             	mov    %rsp,%rbp
    526b:	48 83 ec 20          	sub    $0x20,%rsp
    526f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5273:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5277:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    527e:	00 00 
    5280:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5284:	31 c0                	xor    %eax,%eax
    5286:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    528a:	48 8b 40 08          	mov    0x8(%rax),%rax
    528e:	0f b6 00             	movzbl (%rax),%eax
    5291:	3c 3d                	cmp    $0x3d,%al
    5293:	0f 94 c0             	sete   %al
    5296:	88 45 f7             	mov    %al,-0x9(%rbp)
    5299:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    529d:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    52a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    52a5:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    52a9:	41 89 c8             	mov    %ecx,%r8d
    52ac:	89 d1                	mov    %edx,%ecx
    52ae:	ba 01 00 00 00       	mov    $0x1,%edx
    52b3:	48 89 c7             	mov    %rax,%rdi
    52b6:	e8 c0 fe ff ff       	call   517b <LexSet>
    52bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    52bf:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    52c6:	00 00 
    52c8:	74 05                	je     52cf <LexNot+0x68>
    52ca:	e8 31 ef ff ff       	call   4200 <__stack_chk_fail@plt>
    52cf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    52d3:	c9                   	leave
    52d4:	c3                   	ret

00000000000052d5 <LexStr>:
    52d5:	55                   	push   %rbp
    52d6:	48 89 e5             	mov    %rsp,%rbp
    52d9:	48 83 ec 40          	sub    $0x40,%rsp
    52dd:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    52e1:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    52e5:	eb 14                	jmp    52fb <LexStr+0x26>
    52e7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    52eb:	48 8b 40 08          	mov    0x8(%rax),%rax
    52ef:	48 8d 50 01          	lea    0x1(%rax),%rdx
    52f3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    52f7:	48 89 50 08          	mov    %rdx,0x8(%rax)
    52fb:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    52ff:	48 8b 40 08          	mov    0x8(%rax),%rax
    5303:	0f b6 00             	movzbl (%rax),%eax
    5306:	84 c0                	test   %al,%al
    5308:	74 0f                	je     5319 <LexStr+0x44>
    530a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    530e:	48 8b 40 08          	mov    0x8(%rax),%rax
    5312:	0f b6 00             	movzbl (%rax),%eax
    5315:	3c 22                	cmp    $0x22,%al
    5317:	75 ce                	jne    52e7 <LexStr+0x12>
    5319:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    531d:	48 8b 40 08          	mov    0x8(%rax),%rax
    5321:	0f b6 00             	movzbl (%rax),%eax
    5324:	3c 22                	cmp    $0x22,%al
    5326:	74 14                	je     533c <LexStr+0x67>
    5328:	48 8d 05 f8 5c 00 00 	lea    0x5cf8(%rip),%rax        # b027 <_IO_stdin_used+0x27>
    532f:	48 89 c7             	mov    %rax,%rdi
    5332:	b8 00 00 00 00       	mov    $0x0,%eax
    5337:	e8 ec fb ff ff       	call   4f28 <Throw>
    533c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5340:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    5344:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    5349:	c7 45 e0 38 00 00 00 	movl   $0x38,-0x20(%rbp)
    5350:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5354:	48 8b 50 08          	mov    0x8(%rax),%rdx
    5358:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    535c:	48 8b 00             	mov    (%rax),%rax
    535f:	48 29 c2             	sub    %rax,%rdx
    5362:	89 d0                	mov    %edx,%eax
    5364:	83 e8 01             	sub    $0x1,%eax
    5367:	89 45 dc             	mov    %eax,-0x24(%rbp)
    536a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    536e:	48 8b 00             	mov    (%rax),%rax
    5371:	48 8d 48 01          	lea    0x1(%rax),%rcx
    5375:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5379:	48 8b 40 18          	mov    0x18(%rax),%rax
    537d:	8b 55 dc             	mov    -0x24(%rbp),%edx
    5380:	48 89 ce             	mov    %rcx,%rsi
    5383:	48 89 c7             	mov    %rax,%rdi
    5386:	e8 1c f8 ff ff       	call   4ba7 <TablePut>
    538b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    538f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5393:	48 8b 40 08          	mov    0x8(%rax),%rax
    5397:	48 8d 50 01          	lea    0x1(%rax),%rdx
    539b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    539f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    53a3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    53a7:	8b 50 14             	mov    0x14(%rax),%edx
    53aa:	8b 45 dc             	mov    -0x24(%rbp),%eax
    53ad:	01 d0                	add    %edx,%eax
    53af:	8d 50 02             	lea    0x2(%rax),%edx
    53b2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    53b6:	89 50 14             	mov    %edx,0x14(%rax)
    53b9:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    53bd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    53c1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    53c5:	48 89 01             	mov    %rax,(%rcx)
    53c8:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    53cc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    53d0:	48 89 41 10          	mov    %rax,0x10(%rcx)
    53d4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    53d8:	c9                   	leave
    53d9:	c3                   	ret

00000000000053da <LexComment>:
    53da:	55                   	push   %rbp
    53db:	48 89 e5             	mov    %rsp,%rbp
    53de:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    53e2:	eb 14                	jmp    53f8 <LexComment+0x1e>
    53e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53e8:	48 8b 40 08          	mov    0x8(%rax),%rax
    53ec:	48 8d 50 01          	lea    0x1(%rax),%rdx
    53f0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53f4:	48 89 50 08          	mov    %rdx,0x8(%rax)
    53f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53fc:	48 8b 40 08          	mov    0x8(%rax),%rax
    5400:	0f b6 00             	movzbl (%rax),%eax
    5403:	84 c0                	test   %al,%al
    5405:	74 0f                	je     5416 <LexComment+0x3c>
    5407:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    540b:	48 8b 40 08          	mov    0x8(%rax),%rax
    540f:	0f b6 00             	movzbl (%rax),%eax
    5412:	3c 0a                	cmp    $0xa,%al
    5414:	75 ce                	jne    53e4 <LexComment+0xa>
    5416:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    541a:	8b 40 10             	mov    0x10(%rax),%eax
    541d:	8d 50 01             	lea    0x1(%rax),%edx
    5420:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5424:	89 50 10             	mov    %edx,0x10(%rax)
    5427:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    542b:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%rax)
    5432:	90                   	nop
    5433:	5d                   	pop    %rbp
    5434:	c3                   	ret

0000000000005435 <LexMod>:
    5435:	55                   	push   %rbp
    5436:	48 89 e5             	mov    %rsp,%rbp
    5439:	48 83 ec 20          	sub    $0x20,%rsp
    543d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5441:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5445:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    544c:	00 00 
    544e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5452:	31 c0                	xor    %eax,%eax
    5454:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5458:	48 8b 40 08          	mov    0x8(%rax),%rax
    545c:	0f b6 00             	movzbl (%rax),%eax
    545f:	3c 3d                	cmp    $0x3d,%al
    5461:	0f 94 c0             	sete   %al
    5464:	88 45 f7             	mov    %al,-0x9(%rbp)
    5467:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    546b:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    546f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5473:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5477:	41 89 c8             	mov    %ecx,%r8d
    547a:	89 d1                	mov    %edx,%ecx
    547c:	ba 10 00 00 00       	mov    $0x10,%edx
    5481:	48 89 c7             	mov    %rax,%rdi
    5484:	e8 f2 fc ff ff       	call   517b <LexSet>
    5489:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    548d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5494:	00 00 
    5496:	74 05                	je     549d <LexMod+0x68>
    5498:	e8 63 ed ff ff       	call   4200 <__stack_chk_fail@plt>
    549d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    54a1:	c9                   	leave
    54a2:	c3                   	ret

00000000000054a3 <LexBand>:
    54a3:	55                   	push   %rbp
    54a4:	48 89 e5             	mov    %rsp,%rbp
    54a7:	48 83 ec 20          	sub    $0x20,%rsp
    54ab:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    54af:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    54b3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    54ba:	00 00 
    54bc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    54c0:	31 c0                	xor    %eax,%eax
    54c2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    54c6:	48 8b 40 08          	mov    0x8(%rax),%rax
    54ca:	0f b6 00             	movzbl (%rax),%eax
    54cd:	3c 3d                	cmp    $0x3d,%al
    54cf:	0f 94 c0             	sete   %al
    54d2:	89 c2                	mov    %eax,%edx
    54d4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    54d8:	48 8b 40 08          	mov    0x8(%rax),%rax
    54dc:	0f b6 00             	movzbl (%rax),%eax
    54df:	3c 26                	cmp    $0x26,%al
    54e1:	75 07                	jne    54ea <LexBand+0x47>
    54e3:	b8 02 00 00 00       	mov    $0x2,%eax
    54e8:	eb 05                	jmp    54ef <LexBand+0x4c>
    54ea:	b8 00 00 00 00       	mov    $0x0,%eax
    54ef:	01 d0                	add    %edx,%eax
    54f1:	88 45 f7             	mov    %al,-0x9(%rbp)
    54f4:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    54f8:	0f 95 c0             	setne  %al
    54fb:	0f b6 c8             	movzbl %al,%ecx
    54fe:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5502:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5506:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    550a:	41 89 c8             	mov    %ecx,%r8d
    550d:	89 d1                	mov    %edx,%ecx
    550f:	ba 12 00 00 00       	mov    $0x12,%edx
    5514:	48 89 c7             	mov    %rax,%rdi
    5517:	e8 5f fc ff ff       	call   517b <LexSet>
    551c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5520:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5527:	00 00 
    5529:	74 05                	je     5530 <LexBand+0x8d>
    552b:	e8 d0 ec ff ff       	call   4200 <__stack_chk_fail@plt>
    5530:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5534:	c9                   	leave
    5535:	c3                   	ret

0000000000005536 <LexLp>:
    5536:	55                   	push   %rbp
    5537:	48 89 e5             	mov    %rsp,%rbp
    553a:	48 83 ec 20          	sub    $0x20,%rsp
    553e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5542:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5546:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    554d:	00 00 
    554f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5553:	31 c0                	xor    %eax,%eax
    5555:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5559:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    555d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5563:	b9 00 00 00 00       	mov    $0x0,%ecx
    5568:	ba 24 00 00 00       	mov    $0x24,%edx
    556d:	48 89 c7             	mov    %rax,%rdi
    5570:	e8 06 fc ff ff       	call   517b <LexSet>
    5575:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5579:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5580:	00 00 
    5582:	74 05                	je     5589 <LexLp+0x53>
    5584:	e8 77 ec ff ff       	call   4200 <__stack_chk_fail@plt>
    5589:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    558d:	c9                   	leave
    558e:	c3                   	ret

000000000000558f <LexRp>:
    558f:	55                   	push   %rbp
    5590:	48 89 e5             	mov    %rsp,%rbp
    5593:	48 83 ec 20          	sub    $0x20,%rsp
    5597:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    559b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    559f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    55a6:	00 00 
    55a8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    55ac:	31 c0                	xor    %eax,%eax
    55ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    55b2:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    55b6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    55bc:	b9 00 00 00 00       	mov    $0x0,%ecx
    55c1:	ba 25 00 00 00       	mov    $0x25,%edx
    55c6:	48 89 c7             	mov    %rax,%rdi
    55c9:	e8 ad fb ff ff       	call   517b <LexSet>
    55ce:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    55d2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    55d9:	00 00 
    55db:	74 05                	je     55e2 <LexRp+0x53>
    55dd:	e8 1e ec ff ff       	call   4200 <__stack_chk_fail@plt>
    55e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    55e6:	c9                   	leave
    55e7:	c3                   	ret

00000000000055e8 <LexMul>:
    55e8:	55                   	push   %rbp
    55e9:	48 89 e5             	mov    %rsp,%rbp
    55ec:	48 83 ec 20          	sub    $0x20,%rsp
    55f0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    55f4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    55f8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    55ff:	00 00 
    5601:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5605:	31 c0                	xor    %eax,%eax
    5607:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    560b:	48 8b 40 08          	mov    0x8(%rax),%rax
    560f:	0f b6 00             	movzbl (%rax),%eax
    5612:	3c 3d                	cmp    $0x3d,%al
    5614:	0f 94 c0             	sete   %al
    5617:	89 c2                	mov    %eax,%edx
    5619:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    561d:	48 8b 40 08          	mov    0x8(%rax),%rax
    5621:	0f b6 00             	movzbl (%rax),%eax
    5624:	3c 2a                	cmp    $0x2a,%al
    5626:	75 07                	jne    562f <LexMul+0x47>
    5628:	b8 02 00 00 00       	mov    $0x2,%eax
    562d:	eb 05                	jmp    5634 <LexMul+0x4c>
    562f:	b8 00 00 00 00       	mov    $0x0,%eax
    5634:	01 c2                	add    %eax,%edx
    5636:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    563a:	48 8b 40 08          	mov    0x8(%rax),%rax
    563e:	48 83 c0 01          	add    $0x1,%rax
    5642:	0f b6 00             	movzbl (%rax),%eax
    5645:	3c 3d                	cmp    $0x3d,%al
    5647:	0f 94 c0             	sete   %al
    564a:	01 d0                	add    %edx,%eax
    564c:	88 45 f7             	mov    %al,-0x9(%rbp)
    564f:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5653:	0f 95 c0             	setne  %al
    5656:	0f b6 d0             	movzbl %al,%edx
    5659:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    565d:	01 d0                	add    %edx,%eax
    565f:	83 f8 02             	cmp    $0x2,%eax
    5662:	0f 9f c0             	setg   %al
    5665:	0f b6 c8             	movzbl %al,%ecx
    5668:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    566c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5670:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5674:	41 89 c8             	mov    %ecx,%r8d
    5677:	89 d1                	mov    %edx,%ecx
    5679:	ba 0a 00 00 00       	mov    $0xa,%edx
    567e:	48 89 c7             	mov    %rax,%rdi
    5681:	e8 f5 fa ff ff       	call   517b <LexSet>
    5686:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    568a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5691:	00 00 
    5693:	74 05                	je     569a <LexMul+0xb2>
    5695:	e8 66 eb ff ff       	call   4200 <__stack_chk_fail@plt>
    569a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    569e:	c9                   	leave
    569f:	c3                   	ret

00000000000056a0 <LexAdd>:
    56a0:	55                   	push   %rbp
    56a1:	48 89 e5             	mov    %rsp,%rbp
    56a4:	48 83 ec 20          	sub    $0x20,%rsp
    56a8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    56ac:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    56b0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    56b7:	00 00 
    56b9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    56bd:	31 c0                	xor    %eax,%eax
    56bf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    56c3:	48 8b 40 08          	mov    0x8(%rax),%rax
    56c7:	0f b6 00             	movzbl (%rax),%eax
    56ca:	3c 3d                	cmp    $0x3d,%al
    56cc:	0f 94 c0             	sete   %al
    56cf:	89 c2                	mov    %eax,%edx
    56d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    56d5:	48 8b 40 08          	mov    0x8(%rax),%rax
    56d9:	0f b6 00             	movzbl (%rax),%eax
    56dc:	3c 2b                	cmp    $0x2b,%al
    56de:	75 07                	jne    56e7 <LexAdd+0x47>
    56e0:	b8 02 00 00 00       	mov    $0x2,%eax
    56e5:	eb 05                	jmp    56ec <LexAdd+0x4c>
    56e7:	b8 00 00 00 00       	mov    $0x0,%eax
    56ec:	01 d0                	add    %edx,%eax
    56ee:	88 45 f7             	mov    %al,-0x9(%rbp)
    56f1:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    56f5:	0f 95 c0             	setne  %al
    56f8:	0f b6 c8             	movzbl %al,%ecx
    56fb:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    56ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5703:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5707:	41 89 c8             	mov    %ecx,%r8d
    570a:	89 d1                	mov    %edx,%ecx
    570c:	ba 04 00 00 00       	mov    $0x4,%edx
    5711:	48 89 c7             	mov    %rax,%rdi
    5714:	e8 62 fa ff ff       	call   517b <LexSet>
    5719:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    571d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5724:	00 00 
    5726:	74 05                	je     572d <LexAdd+0x8d>
    5728:	e8 d3 ea ff ff       	call   4200 <__stack_chk_fail@plt>
    572d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5731:	c9                   	leave
    5732:	c3                   	ret

0000000000005733 <LexComma>:
    5733:	55                   	push   %rbp
    5734:	48 89 e5             	mov    %rsp,%rbp
    5737:	48 83 ec 20          	sub    $0x20,%rsp
    573b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    573f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5743:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    574a:	00 00 
    574c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5750:	31 c0                	xor    %eax,%eax
    5752:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5756:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    575a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5760:	b9 00 00 00 00       	mov    $0x0,%ecx
    5765:	ba 34 00 00 00       	mov    $0x34,%edx
    576a:	48 89 c7             	mov    %rax,%rdi
    576d:	e8 09 fa ff ff       	call   517b <LexSet>
    5772:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5776:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    577d:	00 00 
    577f:	74 05                	je     5786 <LexComma+0x53>
    5781:	e8 7a ea ff ff       	call   4200 <__stack_chk_fail@plt>
    5786:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    578a:	c9                   	leave
    578b:	c3                   	ret

000000000000578c <LexSub>:
    578c:	55                   	push   %rbp
    578d:	48 89 e5             	mov    %rsp,%rbp
    5790:	48 83 ec 20          	sub    $0x20,%rsp
    5794:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5798:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    579c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    57a3:	00 00 
    57a5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    57a9:	31 c0                	xor    %eax,%eax
    57ab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    57af:	48 8b 40 08          	mov    0x8(%rax),%rax
    57b3:	0f b6 00             	movzbl (%rax),%eax
    57b6:	3c 3d                	cmp    $0x3d,%al
    57b8:	0f 94 c0             	sete   %al
    57bb:	89 c2                	mov    %eax,%edx
    57bd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    57c1:	48 8b 40 08          	mov    0x8(%rax),%rax
    57c5:	0f b6 00             	movzbl (%rax),%eax
    57c8:	3c 2d                	cmp    $0x2d,%al
    57ca:	75 07                	jne    57d3 <LexSub+0x47>
    57cc:	b8 02 00 00 00       	mov    $0x2,%eax
    57d1:	eb 05                	jmp    57d8 <LexSub+0x4c>
    57d3:	b8 00 00 00 00       	mov    $0x0,%eax
    57d8:	01 d0                	add    %edx,%eax
    57da:	88 45 f7             	mov    %al,-0x9(%rbp)
    57dd:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    57e1:	0f 95 c0             	setne  %al
    57e4:	0f b6 c8             	movzbl %al,%ecx
    57e7:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    57eb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    57ef:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    57f3:	41 89 c8             	mov    %ecx,%r8d
    57f6:	89 d1                	mov    %edx,%ecx
    57f8:	ba 07 00 00 00       	mov    $0x7,%edx
    57fd:	48 89 c7             	mov    %rax,%rdi
    5800:	e8 76 f9 ff ff       	call   517b <LexSet>
    5805:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5809:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5810:	00 00 
    5812:	74 05                	je     5819 <LexSub+0x8d>
    5814:	e8 e7 e9 ff ff       	call   4200 <__stack_chk_fail@plt>
    5819:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    581d:	c9                   	leave
    581e:	c3                   	ret

000000000000581f <LexDot>:
    581f:	55                   	push   %rbp
    5820:	48 89 e5             	mov    %rsp,%rbp
    5823:	48 83 ec 20          	sub    $0x20,%rsp
    5827:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    582b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    582f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5836:	00 00 
    5838:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    583c:	31 c0                	xor    %eax,%eax
    583e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5842:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5846:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    584c:	b9 00 00 00 00       	mov    $0x0,%ecx
    5851:	ba 2a 00 00 00       	mov    $0x2a,%edx
    5856:	48 89 c7             	mov    %rax,%rdi
    5859:	e8 1d f9 ff ff       	call   517b <LexSet>
    585e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5862:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5869:	00 00 
    586b:	74 05                	je     5872 <LexDot+0x53>
    586d:	e8 8e e9 ff ff       	call   4200 <__stack_chk_fail@plt>
    5872:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5876:	c9                   	leave
    5877:	c3                   	ret

0000000000005878 <LexDiv>:
    5878:	55                   	push   %rbp
    5879:	48 89 e5             	mov    %rsp,%rbp
    587c:	48 83 ec 20          	sub    $0x20,%rsp
    5880:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5884:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5888:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    588f:	00 00 
    5891:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5895:	31 c0                	xor    %eax,%eax
    5897:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    589b:	48 8b 40 08          	mov    0x8(%rax),%rax
    589f:	0f b6 00             	movzbl (%rax),%eax
    58a2:	3c 3d                	cmp    $0x3d,%al
    58a4:	0f 94 c0             	sete   %al
    58a7:	88 45 f7             	mov    %al,-0x9(%rbp)
    58aa:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    58ae:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    58b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    58b6:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    58ba:	41 89 c8             	mov    %ecx,%r8d
    58bd:	89 d1                	mov    %edx,%ecx
    58bf:	ba 0e 00 00 00       	mov    $0xe,%edx
    58c4:	48 89 c7             	mov    %rax,%rdi
    58c7:	e8 af f8 ff ff       	call   517b <LexSet>
    58cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    58d0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    58d7:	00 00 
    58d9:	74 05                	je     58e0 <LexDiv+0x68>
    58db:	e8 20 e9 ff ff       	call   4200 <__stack_chk_fail@plt>
    58e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    58e4:	c9                   	leave
    58e5:	c3                   	ret

00000000000058e6 <LexNum>:
    58e6:	55                   	push   %rbp
    58e7:	48 89 e5             	mov    %rsp,%rbp
    58ea:	48 83 ec 40          	sub    $0x40,%rsp
    58ee:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    58f2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    58f6:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    58fa:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    58fe:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5902:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    5906:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    590b:	c7 45 e0 36 00 00 00 	movl   $0x36,-0x20(%rbp)
    5912:	eb 14                	jmp    5928 <LexNum+0x42>
    5914:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5918:	48 8b 40 08          	mov    0x8(%rax),%rax
    591c:	48 8d 50 01          	lea    0x1(%rax),%rdx
    5920:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5924:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5928:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    592c:	48 8b 40 08          	mov    0x8(%rax),%rax
    5930:	0f b6 00             	movzbl (%rax),%eax
    5933:	0f b6 c0             	movzbl %al,%eax
    5936:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    593d:	00 
    593e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5942:	48 01 d0             	add    %rdx,%rax
    5945:	48 8b 00             	mov    (%rax),%rax
    5948:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    594c:	74 c6                	je     5914 <LexNum+0x2e>
    594e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5952:	48 8b 40 08          	mov    0x8(%rax),%rax
    5956:	0f b6 00             	movzbl (%rax),%eax
    5959:	3c 2e                	cmp    $0x2e,%al
    595b:	74 43                	je     59a0 <LexNum+0xba>
    595d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5961:	48 8d 48 08          	lea    0x8(%rax),%rcx
    5965:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5969:	48 8b 00             	mov    (%rax),%rax
    596c:	ba 0a 00 00 00       	mov    $0xa,%edx
    5971:	48 89 ce             	mov    %rcx,%rsi
    5974:	48 89 c7             	mov    %rax,%rdi
    5977:	e8 a4 e8 ff ff       	call   4220 <__isoc23_strtoll@plt>
    597c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5980:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    5984:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5988:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    598c:	48 89 01             	mov    %rax,(%rcx)
    598f:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    5993:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5997:	48 89 41 10          	mov    %rax,0x10(%rcx)
    599b:	e9 c8 00 00 00       	jmp    5a68 <LexNum+0x182>
    59a0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    59a4:	48 8b 40 08          	mov    0x8(%rax),%rax
    59a8:	48 8d 50 01          	lea    0x1(%rax),%rdx
    59ac:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    59b0:	48 89 50 08          	mov    %rdx,0x8(%rax)
    59b4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    59b8:	48 8b 40 08          	mov    0x8(%rax),%rax
    59bc:	0f b6 00             	movzbl (%rax),%eax
    59bf:	0f b6 c0             	movzbl %al,%eax
    59c2:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    59c9:	00 
    59ca:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    59ce:	48 01 d0             	add    %rdx,%rax
    59d1:	48 8b 00             	mov    (%rax),%rax
    59d4:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    59d8:	74 2a                	je     5a04 <LexNum+0x11e>
    59da:	48 8d 05 5b 56 00 00 	lea    0x565b(%rip),%rax        # b03c <_IO_stdin_used+0x3c>
    59e1:	48 89 c7             	mov    %rax,%rdi
    59e4:	b8 00 00 00 00       	mov    $0x0,%eax
    59e9:	e8 3a f5 ff ff       	call   4f28 <Throw>
    59ee:	eb 14                	jmp    5a04 <LexNum+0x11e>
    59f0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    59f4:	48 8b 40 08          	mov    0x8(%rax),%rax
    59f8:	48 8d 50 01          	lea    0x1(%rax),%rdx
    59fc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5a00:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5a04:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5a08:	48 8b 40 08          	mov    0x8(%rax),%rax
    5a0c:	0f b6 00             	movzbl (%rax),%eax
    5a0f:	0f b6 c0             	movzbl %al,%eax
    5a12:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5a19:	00 
    5a1a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5a1e:	48 01 d0             	add    %rdx,%rax
    5a21:	48 8b 00             	mov    (%rax),%rax
    5a24:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    5a28:	74 c6                	je     59f0 <LexNum+0x10a>
    5a2a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5a2e:	48 8d 50 08          	lea    0x8(%rax),%rdx
    5a32:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5a36:	48 8b 00             	mov    (%rax),%rax
    5a39:	48 89 d6             	mov    %rdx,%rsi
    5a3c:	48 89 c7             	mov    %rax,%rdi
    5a3f:	e8 8c e7 ff ff       	call   41d0 <strtod@plt>
    5a44:	66 48 0f 7e c0       	movq   %xmm0,%rax
    5a49:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5a4d:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    5a51:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5a55:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5a59:	48 89 01             	mov    %rax,(%rcx)
    5a5c:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    5a60:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5a64:	48 89 41 10          	mov    %rax,0x10(%rcx)
    5a68:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5a6c:	c9                   	leave
    5a6d:	c3                   	ret

0000000000005a6e <LexColon>:
    5a6e:	55                   	push   %rbp
    5a6f:	48 89 e5             	mov    %rsp,%rbp
    5a72:	48 83 ec 20          	sub    $0x20,%rsp
    5a76:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5a7a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5a7e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5a85:	00 00 
    5a87:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5a8b:	31 c0                	xor    %eax,%eax
    5a8d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5a91:	48 8b 40 08          	mov    0x8(%rax),%rax
    5a95:	0f b6 00             	movzbl (%rax),%eax
    5a98:	3c 2e                	cmp    $0x2e,%al
    5a9a:	0f 94 c0             	sete   %al
    5a9d:	89 c2                	mov    %eax,%edx
    5a9f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5aa3:	48 8b 40 08          	mov    0x8(%rax),%rax
    5aa7:	0f b6 00             	movzbl (%rax),%eax
    5aaa:	3c 3a                	cmp    $0x3a,%al
    5aac:	75 07                	jne    5ab5 <LexColon+0x47>
    5aae:	b8 02 00 00 00       	mov    $0x2,%eax
    5ab3:	eb 05                	jmp    5aba <LexColon+0x4c>
    5ab5:	b8 00 00 00 00       	mov    $0x0,%eax
    5aba:	01 d0                	add    %edx,%eax
    5abc:	88 45 f7             	mov    %al,-0x9(%rbp)
    5abf:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5ac3:	0f 95 c0             	setne  %al
    5ac6:	0f b6 c8             	movzbl %al,%ecx
    5ac9:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5acd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ad1:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5ad5:	41 89 c8             	mov    %ecx,%r8d
    5ad8:	89 d1                	mov    %edx,%ecx
    5ada:	ba 31 00 00 00       	mov    $0x31,%edx
    5adf:	48 89 c7             	mov    %rax,%rdi
    5ae2:	e8 94 f6 ff ff       	call   517b <LexSet>
    5ae7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5aeb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5af2:	00 00 
    5af4:	74 05                	je     5afb <LexColon+0x8d>
    5af6:	e8 05 e7 ff ff       	call   4200 <__stack_chk_fail@plt>
    5afb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5aff:	c9                   	leave
    5b00:	c3                   	ret

0000000000005b01 <LexSemi>:
    5b01:	55                   	push   %rbp
    5b02:	48 89 e5             	mov    %rsp,%rbp
    5b05:	48 83 ec 20          	sub    $0x20,%rsp
    5b09:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5b0d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5b11:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5b18:	00 00 
    5b1a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5b1e:	31 c0                	xor    %eax,%eax
    5b20:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b24:	48 8b 40 08          	mov    0x8(%rax),%rax
    5b28:	0f b6 00             	movzbl (%rax),%eax
    5b2b:	3c 2e                	cmp    $0x2e,%al
    5b2d:	0f 94 c0             	sete   %al
    5b30:	89 c2                	mov    %eax,%edx
    5b32:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b36:	48 8b 40 08          	mov    0x8(%rax),%rax
    5b3a:	0f b6 00             	movzbl (%rax),%eax
    5b3d:	3c 3b                	cmp    $0x3b,%al
    5b3f:	75 07                	jne    5b48 <LexSemi+0x47>
    5b41:	b8 02 00 00 00       	mov    $0x2,%eax
    5b46:	eb 05                	jmp    5b4d <LexSemi+0x4c>
    5b48:	b8 00 00 00 00       	mov    $0x0,%eax
    5b4d:	01 d0                	add    %edx,%eax
    5b4f:	88 45 f7             	mov    %al,-0x9(%rbp)
    5b52:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5b56:	0f 95 c0             	setne  %al
    5b59:	0f b6 c8             	movzbl %al,%ecx
    5b5c:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5b60:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5b64:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5b68:	41 89 c8             	mov    %ecx,%r8d
    5b6b:	89 d1                	mov    %edx,%ecx
    5b6d:	ba 2e 00 00 00       	mov    $0x2e,%edx
    5b72:	48 89 c7             	mov    %rax,%rdi
    5b75:	e8 01 f6 ff ff       	call   517b <LexSet>
    5b7a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5b7e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5b85:	00 00 
    5b87:	74 05                	je     5b8e <LexSemi+0x8d>
    5b89:	e8 72 e6 ff ff       	call   4200 <__stack_chk_fail@plt>
    5b8e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5b92:	c9                   	leave
    5b93:	c3                   	ret

0000000000005b94 <LexLt>:
    5b94:	55                   	push   %rbp
    5b95:	48 89 e5             	mov    %rsp,%rbp
    5b98:	48 83 ec 20          	sub    $0x20,%rsp
    5b9c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5ba0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5ba4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5bab:	00 00 
    5bad:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5bb1:	31 c0                	xor    %eax,%eax
    5bb3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5bb7:	48 8b 40 08          	mov    0x8(%rax),%rax
    5bbb:	0f b6 00             	movzbl (%rax),%eax
    5bbe:	3c 3d                	cmp    $0x3d,%al
    5bc0:	0f 94 c0             	sete   %al
    5bc3:	89 c2                	mov    %eax,%edx
    5bc5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5bc9:	48 8b 40 08          	mov    0x8(%rax),%rax
    5bcd:	0f b6 00             	movzbl (%rax),%eax
    5bd0:	3c 3c                	cmp    $0x3c,%al
    5bd2:	75 07                	jne    5bdb <LexLt+0x47>
    5bd4:	b8 02 00 00 00       	mov    $0x2,%eax
    5bd9:	eb 05                	jmp    5be0 <LexLt+0x4c>
    5bdb:	b8 00 00 00 00       	mov    $0x0,%eax
    5be0:	01 c2                	add    %eax,%edx
    5be2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5be6:	48 8b 40 08          	mov    0x8(%rax),%rax
    5bea:	48 83 c0 01          	add    $0x1,%rax
    5bee:	0f b6 00             	movzbl (%rax),%eax
    5bf1:	3c 3d                	cmp    $0x3d,%al
    5bf3:	0f 94 c0             	sete   %al
    5bf6:	01 d0                	add    %edx,%eax
    5bf8:	88 45 f7             	mov    %al,-0x9(%rbp)
    5bfb:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5bff:	0f 95 c0             	setne  %al
    5c02:	0f b6 d0             	movzbl %al,%edx
    5c05:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    5c09:	01 d0                	add    %edx,%eax
    5c0b:	83 f8 02             	cmp    $0x2,%eax
    5c0e:	0f 9f c0             	setg   %al
    5c11:	0f b6 c8             	movzbl %al,%ecx
    5c14:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5c18:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5c1c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5c20:	41 89 c8             	mov    %ecx,%r8d
    5c23:	89 d1                	mov    %edx,%ecx
    5c25:	ba 1c 00 00 00       	mov    $0x1c,%edx
    5c2a:	48 89 c7             	mov    %rax,%rdi
    5c2d:	e8 49 f5 ff ff       	call   517b <LexSet>
    5c32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c36:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5c3d:	00 00 
    5c3f:	74 05                	je     5c46 <LexLt+0xb2>
    5c41:	e8 ba e5 ff ff       	call   4200 <__stack_chk_fail@plt>
    5c46:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5c4a:	c9                   	leave
    5c4b:	c3                   	ret

0000000000005c4c <LexEq>:
    5c4c:	55                   	push   %rbp
    5c4d:	48 89 e5             	mov    %rsp,%rbp
    5c50:	48 83 ec 20          	sub    $0x20,%rsp
    5c54:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5c58:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5c5c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5c63:	00 00 
    5c65:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5c69:	31 c0                	xor    %eax,%eax
    5c6b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5c6f:	48 8b 40 08          	mov    0x8(%rax),%rax
    5c73:	0f b6 00             	movzbl (%rax),%eax
    5c76:	3c 3d                	cmp    $0x3d,%al
    5c78:	0f 94 c0             	sete   %al
    5c7b:	88 45 f7             	mov    %al,-0x9(%rbp)
    5c7e:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    5c82:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5c86:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5c8a:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5c8e:	41 89 c8             	mov    %ecx,%r8d
    5c91:	89 d1                	mov    %edx,%ecx
    5c93:	ba 1a 00 00 00       	mov    $0x1a,%edx
    5c98:	48 89 c7             	mov    %rax,%rdi
    5c9b:	e8 db f4 ff ff       	call   517b <LexSet>
    5ca0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ca4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5cab:	00 00 
    5cad:	74 05                	je     5cb4 <LexEq+0x68>
    5caf:	e8 4c e5 ff ff       	call   4200 <__stack_chk_fail@plt>
    5cb4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5cb8:	c9                   	leave
    5cb9:	c3                   	ret

0000000000005cba <LexGt>:
    5cba:	55                   	push   %rbp
    5cbb:	48 89 e5             	mov    %rsp,%rbp
    5cbe:	48 83 ec 20          	sub    $0x20,%rsp
    5cc2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5cc6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5cca:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5cd1:	00 00 
    5cd3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5cd7:	31 c0                	xor    %eax,%eax
    5cd9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5cdd:	48 8b 40 08          	mov    0x8(%rax),%rax
    5ce1:	0f b6 00             	movzbl (%rax),%eax
    5ce4:	3c 3d                	cmp    $0x3d,%al
    5ce6:	0f 94 c0             	sete   %al
    5ce9:	89 c2                	mov    %eax,%edx
    5ceb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5cef:	48 8b 40 08          	mov    0x8(%rax),%rax
    5cf3:	0f b6 00             	movzbl (%rax),%eax
    5cf6:	3c 3e                	cmp    $0x3e,%al
    5cf8:	75 07                	jne    5d01 <LexGt+0x47>
    5cfa:	b8 02 00 00 00       	mov    $0x2,%eax
    5cff:	eb 05                	jmp    5d06 <LexGt+0x4c>
    5d01:	b8 00 00 00 00       	mov    $0x0,%eax
    5d06:	01 c2                	add    %eax,%edx
    5d08:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5d0c:	48 8b 40 08          	mov    0x8(%rax),%rax
    5d10:	48 83 c0 01          	add    $0x1,%rax
    5d14:	0f b6 00             	movzbl (%rax),%eax
    5d17:	3c 3d                	cmp    $0x3d,%al
    5d19:	0f 94 c0             	sete   %al
    5d1c:	01 d0                	add    %edx,%eax
    5d1e:	88 45 f7             	mov    %al,-0x9(%rbp)
    5d21:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5d25:	0f 95 c0             	setne  %al
    5d28:	0f b6 d0             	movzbl %al,%edx
    5d2b:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    5d2f:	01 d0                	add    %edx,%eax
    5d31:	83 f8 02             	cmp    $0x2,%eax
    5d34:	0f 9f c0             	setg   %al
    5d37:	0f b6 c8             	movzbl %al,%ecx
    5d3a:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5d3e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d42:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5d46:	41 89 c8             	mov    %ecx,%r8d
    5d49:	89 d1                	mov    %edx,%ecx
    5d4b:	ba 20 00 00 00       	mov    $0x20,%edx
    5d50:	48 89 c7             	mov    %rax,%rdi
    5d53:	e8 23 f4 ff ff       	call   517b <LexSet>
    5d58:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d5c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5d63:	00 00 
    5d65:	74 05                	je     5d6c <LexGt+0xb2>
    5d67:	e8 94 e4 ff ff       	call   4200 <__stack_chk_fail@plt>
    5d6c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d70:	c9                   	leave
    5d71:	c3                   	ret

0000000000005d72 <LexReturn>:
    5d72:	55                   	push   %rbp
    5d73:	48 89 e5             	mov    %rsp,%rbp
    5d76:	48 83 ec 20          	sub    $0x20,%rsp
    5d7a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5d7e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5d82:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5d89:	00 00 
    5d8b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5d8f:	31 c0                	xor    %eax,%eax
    5d91:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d95:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5d99:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5d9f:	b9 00 00 00 00       	mov    $0x0,%ecx
    5da4:	ba 35 00 00 00       	mov    $0x35,%edx
    5da9:	48 89 c7             	mov    %rax,%rdi
    5dac:	e8 ca f3 ff ff       	call   517b <LexSet>
    5db1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5db5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5dbc:	00 00 
    5dbe:	74 05                	je     5dc5 <LexReturn+0x53>
    5dc0:	e8 3b e4 ff ff       	call   4200 <__stack_chk_fail@plt>
    5dc5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5dc9:	c9                   	leave
    5dca:	c3                   	ret

0000000000005dcb <LexId>:
    5dcb:	55                   	push   %rbp
    5dcc:	48 89 e5             	mov    %rsp,%rbp
    5dcf:	48 83 ec 60          	sub    $0x60,%rsp
    5dd3:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    5dd7:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    5ddb:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    5ddf:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    5de3:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
    5de7:	eb 14                	jmp    5dfd <LexId+0x32>
    5de9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5ded:	48 8b 40 08          	mov    0x8(%rax),%rax
    5df1:	48 8d 50 01          	lea    0x1(%rax),%rdx
    5df5:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5df9:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5dfd:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e01:	48 8b 40 08          	mov    0x8(%rax),%rax
    5e05:	0f b6 00             	movzbl (%rax),%eax
    5e08:	0f b6 c0             	movzbl %al,%eax
    5e0b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5e12:	00 
    5e13:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5e17:	48 01 d0             	add    %rdx,%rax
    5e1a:	48 8b 00             	mov    (%rax),%rax
    5e1d:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
    5e21:	74 c6                	je     5de9 <LexId+0x1e>
    5e23:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e27:	48 8b 40 08          	mov    0x8(%rax),%rax
    5e2b:	0f b6 00             	movzbl (%rax),%eax
    5e2e:	0f b6 c0             	movzbl %al,%eax
    5e31:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5e38:	00 
    5e39:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5e3d:	48 01 d0             	add    %rdx,%rax
    5e40:	48 8b 00             	mov    (%rax),%rax
    5e43:	48 39 45 b0          	cmp    %rax,-0x50(%rbp)
    5e47:	74 a0                	je     5de9 <LexId+0x1e>
    5e49:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e4d:	48 8b 50 08          	mov    0x8(%rax),%rdx
    5e51:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e55:	48 8b 00             	mov    (%rax),%rax
    5e58:	48 29 c2             	sub    %rax,%rdx
    5e5b:	89 55 dc             	mov    %edx,-0x24(%rbp)
    5e5e:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5e62:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    5e66:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    5e6b:	c7 45 e0 39 00 00 00 	movl   $0x39,-0x20(%rbp)
    5e72:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e76:	48 8b 00             	mov    (%rax),%rax
    5e79:	48 8d 48 01          	lea    0x1(%rax),%rcx
    5e7d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e81:	48 8b 40 18          	mov    0x18(%rax),%rax
    5e85:	8b 55 dc             	mov    -0x24(%rbp),%edx
    5e88:	48 89 ce             	mov    %rcx,%rsi
    5e8b:	48 89 c7             	mov    %rax,%rdi
    5e8e:	e8 14 ed ff ff       	call   4ba7 <TablePut>
    5e93:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5e97:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    5e9b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5e9f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5ea3:	48 89 01             	mov    %rax,(%rcx)
    5ea6:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    5eaa:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5eae:	48 89 41 10          	mov    %rax,0x10(%rcx)
    5eb2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5eb6:	c9                   	leave
    5eb7:	c3                   	ret

0000000000005eb8 <LexLs>:
    5eb8:	55                   	push   %rbp
    5eb9:	48 89 e5             	mov    %rsp,%rbp
    5ebc:	48 83 ec 20          	sub    $0x20,%rsp
    5ec0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5ec4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5ec8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5ecf:	00 00 
    5ed1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ed5:	31 c0                	xor    %eax,%eax
    5ed7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5edb:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5edf:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5ee5:	b9 00 00 00 00       	mov    $0x0,%ecx
    5eea:	ba 26 00 00 00       	mov    $0x26,%edx
    5eef:	48 89 c7             	mov    %rax,%rdi
    5ef2:	e8 84 f2 ff ff       	call   517b <LexSet>
    5ef7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5efb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5f02:	00 00 
    5f04:	74 05                	je     5f0b <LexLs+0x53>
    5f06:	e8 f5 e2 ff ff       	call   4200 <__stack_chk_fail@plt>
    5f0b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5f0f:	c9                   	leave
    5f10:	c3                   	ret

0000000000005f11 <LexRs>:
    5f11:	55                   	push   %rbp
    5f12:	48 89 e5             	mov    %rsp,%rbp
    5f15:	48 83 ec 20          	sub    $0x20,%rsp
    5f19:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5f1d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5f21:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5f28:	00 00 
    5f2a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5f2e:	31 c0                	xor    %eax,%eax
    5f30:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5f34:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5f38:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5f3e:	b9 00 00 00 00       	mov    $0x0,%ecx
    5f43:	ba 27 00 00 00       	mov    $0x27,%edx
    5f48:	48 89 c7             	mov    %rax,%rdi
    5f4b:	e8 2b f2 ff ff       	call   517b <LexSet>
    5f50:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5f54:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5f5b:	00 00 
    5f5d:	74 05                	je     5f64 <LexRs+0x53>
    5f5f:	e8 9c e2 ff ff       	call   4200 <__stack_chk_fail@plt>
    5f64:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5f68:	c9                   	leave
    5f69:	c3                   	ret

0000000000005f6a <LexBxor>:
    5f6a:	55                   	push   %rbp
    5f6b:	48 89 e5             	mov    %rsp,%rbp
    5f6e:	48 83 ec 20          	sub    $0x20,%rsp
    5f72:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5f76:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5f7a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5f81:	00 00 
    5f83:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5f87:	31 c0                	xor    %eax,%eax
    5f89:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f8d:	48 8b 40 08          	mov    0x8(%rax),%rax
    5f91:	0f b6 00             	movzbl (%rax),%eax
    5f94:	3c 3d                	cmp    $0x3d,%al
    5f96:	0f 94 c0             	sete   %al
    5f99:	88 45 f7             	mov    %al,-0x9(%rbp)
    5f9c:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    5fa0:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5fa4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5fa8:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5fac:	41 89 c8             	mov    %ecx,%r8d
    5faf:	89 d1                	mov    %edx,%ecx
    5fb1:	ba 18 00 00 00       	mov    $0x18,%edx
    5fb6:	48 89 c7             	mov    %rax,%rdi
    5fb9:	e8 bd f1 ff ff       	call   517b <LexSet>
    5fbe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5fc2:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5fc9:	00 00 
    5fcb:	74 05                	je     5fd2 <LexBxor+0x68>
    5fcd:	e8 2e e2 ff ff       	call   4200 <__stack_chk_fail@plt>
    5fd2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5fd6:	c9                   	leave
    5fd7:	c3                   	ret

0000000000005fd8 <LexBnot>:
    5fd8:	55                   	push   %rbp
    5fd9:	48 89 e5             	mov    %rsp,%rbp
    5fdc:	48 83 ec 20          	sub    $0x20,%rsp
    5fe0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5fe4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5fe8:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5fef:	00 00 
    5ff1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ff5:	31 c0                	xor    %eax,%eax
    5ff7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ffb:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5fff:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    6005:	b9 00 00 00 00       	mov    $0x0,%ecx
    600a:	ba 03 00 00 00       	mov    $0x3,%edx
    600f:	48 89 c7             	mov    %rax,%rdi
    6012:	e8 64 f1 ff ff       	call   517b <LexSet>
    6017:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    601b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6022:	00 00 
    6024:	74 05                	je     602b <LexBnot+0x53>
    6026:	e8 d5 e1 ff ff       	call   4200 <__stack_chk_fail@plt>
    602b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    602f:	c9                   	leave
    6030:	c3                   	ret

0000000000006031 <LexLc>:
    6031:	55                   	push   %rbp
    6032:	48 89 e5             	mov    %rsp,%rbp
    6035:	48 83 ec 20          	sub    $0x20,%rsp
    6039:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    603d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6041:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6048:	00 00 
    604a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    604e:	31 c0                	xor    %eax,%eax
    6050:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6054:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    6058:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    605e:	b9 00 00 00 00       	mov    $0x0,%ecx
    6063:	ba 28 00 00 00       	mov    $0x28,%edx
    6068:	48 89 c7             	mov    %rax,%rdi
    606b:	e8 0b f1 ff ff       	call   517b <LexSet>
    6070:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6074:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    607b:	00 00 
    607d:	74 05                	je     6084 <LexLc+0x53>
    607f:	e8 7c e1 ff ff       	call   4200 <__stack_chk_fail@plt>
    6084:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6088:	c9                   	leave
    6089:	c3                   	ret

000000000000608a <LexBor>:
    608a:	55                   	push   %rbp
    608b:	48 89 e5             	mov    %rsp,%rbp
    608e:	48 83 ec 20          	sub    $0x20,%rsp
    6092:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6096:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    609a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    60a1:	00 00 
    60a3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    60a7:	31 c0                	xor    %eax,%eax
    60a9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    60ad:	48 8b 40 08          	mov    0x8(%rax),%rax
    60b1:	0f b6 00             	movzbl (%rax),%eax
    60b4:	3c 3d                	cmp    $0x3d,%al
    60b6:	0f 94 c0             	sete   %al
    60b9:	89 c2                	mov    %eax,%edx
    60bb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    60bf:	48 8b 40 08          	mov    0x8(%rax),%rax
    60c3:	0f b6 00             	movzbl (%rax),%eax
    60c6:	3c 7c                	cmp    $0x7c,%al
    60c8:	75 07                	jne    60d1 <LexBor+0x47>
    60ca:	b8 02 00 00 00       	mov    $0x2,%eax
    60cf:	eb 05                	jmp    60d6 <LexBor+0x4c>
    60d1:	b8 00 00 00 00       	mov    $0x0,%eax
    60d6:	01 d0                	add    %edx,%eax
    60d8:	88 45 f7             	mov    %al,-0x9(%rbp)
    60db:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    60df:	0f 95 c0             	setne  %al
    60e2:	0f b6 c8             	movzbl %al,%ecx
    60e5:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    60e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    60ed:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    60f1:	41 89 c8             	mov    %ecx,%r8d
    60f4:	89 d1                	mov    %edx,%ecx
    60f6:	ba 15 00 00 00       	mov    $0x15,%edx
    60fb:	48 89 c7             	mov    %rax,%rdi
    60fe:	e8 78 f0 ff ff       	call   517b <LexSet>
    6103:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6107:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    610e:	00 00 
    6110:	74 05                	je     6117 <LexBor+0x8d>
    6112:	e8 e9 e0 ff ff       	call   4200 <__stack_chk_fail@plt>
    6117:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    611b:	c9                   	leave
    611c:	c3                   	ret

000000000000611d <LexRc>:
    611d:	55                   	push   %rbp
    611e:	48 89 e5             	mov    %rsp,%rbp
    6121:	48 83 ec 20          	sub    $0x20,%rsp
    6125:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6129:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    612d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6134:	00 00 
    6136:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    613a:	31 c0                	xor    %eax,%eax
    613c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6140:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    6144:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    614a:	b9 00 00 00 00       	mov    $0x0,%ecx
    614f:	ba 29 00 00 00       	mov    $0x29,%edx
    6154:	48 89 c7             	mov    %rax,%rdi
    6157:	e8 1f f0 ff ff       	call   517b <LexSet>
    615c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6160:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6167:	00 00 
    6169:	74 05                	je     6170 <LexRc+0x53>
    616b:	e8 90 e0 ff ff       	call   4200 <__stack_chk_fail@plt>
    6170:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6174:	c9                   	leave
    6175:	c3                   	ret

0000000000006176 <Lex>:
    6176:	f3 0f 1e fa          	endbr64
    617a:	55                   	push   %rbp
    617b:	48 89 e5             	mov    %rsp,%rbp
    617e:	48 83 ec 20          	sub    $0x20,%rsp
    6182:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6186:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    618d:	00 00 
    618f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6193:	31 c0                	xor    %eax,%eax
    6195:	e8 47 ef ff ff       	call   50e1 <GetLexer>
    619a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    619e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    61a2:	48 8b 50 08          	mov    0x8(%rax),%rdx
    61a6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    61aa:	48 89 10             	mov    %rdx,(%rax)
    61ad:	f3 0f 1e fa          	endbr64
    61b1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    61b5:	48 8b 40 08          	mov    0x8(%rax),%rax
    61b9:	48 8d 48 01          	lea    0x1(%rax),%rcx
    61bd:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    61c1:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    61c5:	0f b6 00             	movzbl (%rax),%eax
    61c8:	0f b6 c0             	movzbl %al,%eax
    61cb:	48 98                	cltq
    61cd:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    61d4:	00 
    61d5:	48 8d 05 a4 7f 00 00 	lea    0x7fa4(%rip),%rax        # e180 <ascii.50>
    61dc:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    61e0:	90                   	nop
    61e1:	ff e0                	jmp    *%rax
    61e3:	f3 0f 1e fa          	endbr64
    61e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    61eb:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    61ef:	48 89 d6             	mov    %rdx,%rsi
    61f2:	48 89 c7             	mov    %rax,%rdi
    61f5:	e8 ed ef ff ff       	call   51e7 <LexEof>
    61fa:	e9 2a 03 00 00       	jmp    6529 <Lex+0x3b3>
    61ff:	f3 0f 1e fa          	endbr64
    6203:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6207:	48 89 c7             	mov    %rax,%rdi
    620a:	e8 31 f0 ff ff       	call   5240 <LexLine>
    620f:	eb 9c                	jmp    61ad <Lex+0x37>
    6211:	f3 0f 1e fa          	endbr64
    6215:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6219:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    621d:	48 89 d6             	mov    %rdx,%rsi
    6220:	48 89 c7             	mov    %rax,%rdi
    6223:	e8 3f f0 ff ff       	call   5267 <LexNot>
    6228:	e9 fc 02 00 00       	jmp    6529 <Lex+0x3b3>
    622d:	f3 0f 1e fa          	endbr64
    6231:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6235:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6239:	48 89 d6             	mov    %rdx,%rsi
    623c:	48 89 c7             	mov    %rax,%rdi
    623f:	e8 91 f0 ff ff       	call   52d5 <LexStr>
    6244:	e9 e0 02 00 00       	jmp    6529 <Lex+0x3b3>
    6249:	f3 0f 1e fa          	endbr64
    624d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6251:	48 89 c7             	mov    %rax,%rdi
    6254:	e8 81 f1 ff ff       	call   53da <LexComment>
    6259:	e9 4f ff ff ff       	jmp    61ad <Lex+0x37>
    625e:	f3 0f 1e fa          	endbr64
    6262:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6266:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    626a:	48 89 d6             	mov    %rdx,%rsi
    626d:	48 89 c7             	mov    %rax,%rdi
    6270:	e8 c0 f1 ff ff       	call   5435 <LexMod>
    6275:	e9 af 02 00 00       	jmp    6529 <Lex+0x3b3>
    627a:	f3 0f 1e fa          	endbr64
    627e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6282:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6286:	48 89 d6             	mov    %rdx,%rsi
    6289:	48 89 c7             	mov    %rax,%rdi
    628c:	e8 12 f2 ff ff       	call   54a3 <LexBand>
    6291:	e9 93 02 00 00       	jmp    6529 <Lex+0x3b3>
    6296:	f3 0f 1e fa          	endbr64
    629a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    629e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    62a2:	48 89 d6             	mov    %rdx,%rsi
    62a5:	48 89 c7             	mov    %rax,%rdi
    62a8:	e8 89 f2 ff ff       	call   5536 <LexLp>
    62ad:	e9 77 02 00 00       	jmp    6529 <Lex+0x3b3>
    62b2:	f3 0f 1e fa          	endbr64
    62b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    62ba:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    62be:	48 89 d6             	mov    %rdx,%rsi
    62c1:	48 89 c7             	mov    %rax,%rdi
    62c4:	e8 c6 f2 ff ff       	call   558f <LexRp>
    62c9:	e9 5b 02 00 00       	jmp    6529 <Lex+0x3b3>
    62ce:	f3 0f 1e fa          	endbr64
    62d2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    62d6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    62da:	48 89 d6             	mov    %rdx,%rsi
    62dd:	48 89 c7             	mov    %rax,%rdi
    62e0:	e8 03 f3 ff ff       	call   55e8 <LexMul>
    62e5:	e9 3f 02 00 00       	jmp    6529 <Lex+0x3b3>
    62ea:	f3 0f 1e fa          	endbr64
    62ee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    62f2:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    62f6:	48 89 d6             	mov    %rdx,%rsi
    62f9:	48 89 c7             	mov    %rax,%rdi
    62fc:	e8 9f f3 ff ff       	call   56a0 <LexAdd>
    6301:	e9 23 02 00 00       	jmp    6529 <Lex+0x3b3>
    6306:	f3 0f 1e fa          	endbr64
    630a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    630e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6312:	48 89 d6             	mov    %rdx,%rsi
    6315:	48 89 c7             	mov    %rax,%rdi
    6318:	e8 16 f4 ff ff       	call   5733 <LexComma>
    631d:	e9 07 02 00 00       	jmp    6529 <Lex+0x3b3>
    6322:	f3 0f 1e fa          	endbr64
    6326:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    632a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    632e:	48 89 d6             	mov    %rdx,%rsi
    6331:	48 89 c7             	mov    %rax,%rdi
    6334:	e8 53 f4 ff ff       	call   578c <LexSub>
    6339:	e9 eb 01 00 00       	jmp    6529 <Lex+0x3b3>
    633e:	f3 0f 1e fa          	endbr64
    6342:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6346:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    634a:	48 89 d6             	mov    %rdx,%rsi
    634d:	48 89 c7             	mov    %rax,%rdi
    6350:	e8 ca f4 ff ff       	call   581f <LexDot>
    6355:	e9 cf 01 00 00       	jmp    6529 <Lex+0x3b3>
    635a:	f3 0f 1e fa          	endbr64
    635e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6362:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6366:	48 89 d6             	mov    %rdx,%rsi
    6369:	48 89 c7             	mov    %rax,%rdi
    636c:	e8 07 f5 ff ff       	call   5878 <LexDiv>
    6371:	e9 b3 01 00 00       	jmp    6529 <Lex+0x3b3>
    6376:	f3 0f 1e fa          	endbr64
    637a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    637e:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    6382:	48 8d 15 f7 7d 00 00 	lea    0x7df7(%rip),%rdx        # e180 <ascii.50>
    6389:	48 89 d1             	mov    %rdx,%rcx
    638c:	48 8d 15 e3 ff ff ff 	lea    -0x1d(%rip),%rdx        # 6376 <Lex+0x200>
    6393:	48 89 c7             	mov    %rax,%rdi
    6396:	e8 4b f5 ff ff       	call   58e6 <LexNum>
    639b:	e9 89 01 00 00       	jmp    6529 <Lex+0x3b3>
    63a0:	f3 0f 1e fa          	endbr64
    63a4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63a8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    63ac:	48 89 d6             	mov    %rdx,%rsi
    63af:	48 89 c7             	mov    %rax,%rdi
    63b2:	e8 b7 f6 ff ff       	call   5a6e <LexColon>
    63b7:	e9 6d 01 00 00       	jmp    6529 <Lex+0x3b3>
    63bc:	f3 0f 1e fa          	endbr64
    63c0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63c4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    63c8:	48 89 d6             	mov    %rdx,%rsi
    63cb:	48 89 c7             	mov    %rax,%rdi
    63ce:	e8 2e f7 ff ff       	call   5b01 <LexSemi>
    63d3:	e9 51 01 00 00       	jmp    6529 <Lex+0x3b3>
    63d8:	f3 0f 1e fa          	endbr64
    63dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63e0:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    63e4:	48 89 d6             	mov    %rdx,%rsi
    63e7:	48 89 c7             	mov    %rax,%rdi
    63ea:	e8 a5 f7 ff ff       	call   5b94 <LexLt>
    63ef:	e9 35 01 00 00       	jmp    6529 <Lex+0x3b3>
    63f4:	f3 0f 1e fa          	endbr64
    63f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63fc:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6400:	48 89 d6             	mov    %rdx,%rsi
    6403:	48 89 c7             	mov    %rax,%rdi
    6406:	e8 41 f8 ff ff       	call   5c4c <LexEq>
    640b:	e9 19 01 00 00       	jmp    6529 <Lex+0x3b3>
    6410:	f3 0f 1e fa          	endbr64
    6414:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6418:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    641c:	48 89 d6             	mov    %rdx,%rsi
    641f:	48 89 c7             	mov    %rax,%rdi
    6422:	e8 93 f8 ff ff       	call   5cba <LexGt>
    6427:	e9 fd 00 00 00       	jmp    6529 <Lex+0x3b3>
    642c:	f3 0f 1e fa          	endbr64
    6430:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6434:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6438:	48 89 d6             	mov    %rdx,%rsi
    643b:	48 89 c7             	mov    %rax,%rdi
    643e:	e8 2f f9 ff ff       	call   5d72 <LexReturn>
    6443:	e9 e1 00 00 00       	jmp    6529 <Lex+0x3b3>
    6448:	f3 0f 1e fa          	endbr64
    644c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6450:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    6454:	4c 8d 05 25 7d 00 00 	lea    0x7d25(%rip),%r8        # e180 <ascii.50>
    645b:	48 8d 15 14 ff ff ff 	lea    -0xec(%rip),%rdx        # 6376 <Lex+0x200>
    6462:	48 89 d1             	mov    %rdx,%rcx
    6465:	48 8d 15 dc ff ff ff 	lea    -0x24(%rip),%rdx        # 6448 <Lex+0x2d2>
    646c:	48 89 c7             	mov    %rax,%rdi
    646f:	e8 57 f9 ff ff       	call   5dcb <LexId>
    6474:	e9 b0 00 00 00       	jmp    6529 <Lex+0x3b3>
    6479:	f3 0f 1e fa          	endbr64
    647d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6481:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6485:	48 89 d6             	mov    %rdx,%rsi
    6488:	48 89 c7             	mov    %rax,%rdi
    648b:	e8 28 fa ff ff       	call   5eb8 <LexLs>
    6490:	e9 94 00 00 00       	jmp    6529 <Lex+0x3b3>
    6495:	f3 0f 1e fa          	endbr64
    6499:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    649d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64a1:	48 89 d6             	mov    %rdx,%rsi
    64a4:	48 89 c7             	mov    %rax,%rdi
    64a7:	e8 65 fa ff ff       	call   5f11 <LexRs>
    64ac:	eb 7b                	jmp    6529 <Lex+0x3b3>
    64ae:	f3 0f 1e fa          	endbr64
    64b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64b6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64ba:	48 89 d6             	mov    %rdx,%rsi
    64bd:	48 89 c7             	mov    %rax,%rdi
    64c0:	e8 a5 fa ff ff       	call   5f6a <LexBxor>
    64c5:	eb 62                	jmp    6529 <Lex+0x3b3>
    64c7:	f3 0f 1e fa          	endbr64
    64cb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64cf:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64d3:	48 89 d6             	mov    %rdx,%rsi
    64d6:	48 89 c7             	mov    %rax,%rdi
    64d9:	e8 fa fa ff ff       	call   5fd8 <LexBnot>
    64de:	eb 49                	jmp    6529 <Lex+0x3b3>
    64e0:	f3 0f 1e fa          	endbr64
    64e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64e8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64ec:	48 89 d6             	mov    %rdx,%rsi
    64ef:	48 89 c7             	mov    %rax,%rdi
    64f2:	e8 3a fb ff ff       	call   6031 <LexLc>
    64f7:	eb 30                	jmp    6529 <Lex+0x3b3>
    64f9:	f3 0f 1e fa          	endbr64
    64fd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6501:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6505:	48 89 d6             	mov    %rdx,%rsi
    6508:	48 89 c7             	mov    %rax,%rdi
    650b:	e8 7a fb ff ff       	call   608a <LexBor>
    6510:	eb 17                	jmp    6529 <Lex+0x3b3>
    6512:	f3 0f 1e fa          	endbr64
    6516:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    651a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    651e:	48 89 d6             	mov    %rdx,%rsi
    6521:	48 89 c7             	mov    %rax,%rdi
    6524:	e8 f4 fb ff ff       	call   611d <LexRc>
    6529:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    652d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6534:	00 00 
    6536:	74 05                	je     653d <Lex+0x3c7>
    6538:	e8 c3 dc ff ff       	call   4200 <__stack_chk_fail@plt>
    653d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6541:	c9                   	leave
    6542:	c3                   	ret

0000000000006543 <GetParser>:
    6543:	55                   	push   %rbp
    6544:	48 89 e5             	mov    %rsp,%rbp
    6547:	48 8d 05 b2 8f 00 00 	lea    0x8fb2(%rip),%rax        # f500 <parser.43>
    654e:	5d                   	pop    %rbp
    654f:	c3                   	ret

0000000000006550 <ParserInit>:
    6550:	f3 0f 1e fa          	endbr64
    6554:	55                   	push   %rbp
    6555:	48 89 e5             	mov    %rsp,%rbp
    6558:	90                   	nop
    6559:	5d                   	pop    %rbp
    655a:	c3                   	ret

000000000000655b <ParseNodeLog>:
    655b:	f3 0f 1e fa          	endbr64
    655f:	55                   	push   %rbp
    6560:	48 89 e5             	mov    %rsp,%rbp
    6563:	48 83 ec 20          	sub    $0x20,%rsp
    6567:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    656b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    656f:	8b 00                	mov    (%rax),%eax
    6571:	85 c0                	test   %eax,%eax
    6573:	0f 85 a2 00 00 00    	jne    661b <ParseNodeLog+0xc0>
    6579:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    657d:	8b 40 08             	mov    0x8(%rax),%eax
    6580:	89 c0                	mov    %eax,%eax
    6582:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    6589:	00 
    658a:	48 8d 05 ef 7f 00 00 	lea    0x7fef(%rip),%rax        # e580 <types.47>
    6591:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    6595:	90                   	nop
    6596:	ff e0                	jmp    *%rax
    6598:	f3 0f 1e fa          	endbr64
    659c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    65a0:	48 8b 40 10          	mov    0x10(%rax),%rax
    65a4:	48 89 c6             	mov    %rax,%rsi
    65a7:	48 8d 05 9f 4a 00 00 	lea    0x4a9f(%rip),%rax        # b04d <_IO_stdin_used+0x4d>
    65ae:	48 89 c7             	mov    %rax,%rdi
    65b1:	b8 00 00 00 00       	mov    $0x0,%eax
    65b6:	e8 55 dc ff ff       	call   4210 <printf@plt>
    65bb:	eb 5f                	jmp    661c <ParseNodeLog+0xc1>
    65bd:	f3 0f 1e fa          	endbr64
    65c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    65c5:	48 8b 40 10          	mov    0x10(%rax),%rax
    65c9:	66 48 0f 6e c0       	movq   %rax,%xmm0
    65ce:	48 8d 05 7d 4a 00 00 	lea    0x4a7d(%rip),%rax        # b052 <_IO_stdin_used+0x52>
    65d5:	48 89 c7             	mov    %rax,%rdi
    65d8:	b8 01 00 00 00       	mov    $0x1,%eax
    65dd:	e8 2e dc ff ff       	call   4210 <printf@plt>
    65e2:	eb 38                	jmp    661c <ParseNodeLog+0xc1>
    65e4:	f3 0f 1e fa          	endbr64
    65e8:	e8 09 de ff ff       	call   43f6 <GetStrings>
    65ed:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    65f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    65f5:	48 8b 40 10          	mov    0x10(%rax),%rax
    65f9:	8b 10                	mov    (%rax),%edx
    65fb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    65ff:	89 d6                	mov    %edx,%esi
    6601:	48 89 c7             	mov    %rax,%rdi
    6604:	e8 17 df ff ff       	call   4520 <ArenaOff>
    6609:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    660d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6611:	48 89 c7             	mov    %rax,%rdi
    6614:	e8 97 db ff ff       	call   41b0 <puts@plt>
    6619:	eb 01                	jmp    661c <ParseNodeLog+0xc1>
    661b:	90                   	nop
    661c:	c9                   	leave
    661d:	c3                   	ret

000000000000661e <ParseMatch>:
    661e:	f3 0f 1e fa          	endbr64
    6622:	55                   	push   %rbp
    6623:	48 89 e5             	mov    %rsp,%rbp
    6626:	53                   	push   %rbx
    6627:	48 83 ec 48          	sub    $0x48,%rsp
    662b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    662f:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    6632:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6639:	00 00 
    663b:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    663f:	31 c0                	xor    %eax,%eax
    6641:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6645:	8b 00                	mov    (%rax),%eax
    6647:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
    664a:	74 1f                	je     666b <ParseMatch+0x4d>
    664c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6650:	8b 10                	mov    (%rax),%edx
    6652:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    6655:	89 c6                	mov    %eax,%esi
    6657:	48 8d 05 f8 49 00 00 	lea    0x49f8(%rip),%rax        # b056 <_IO_stdin_used+0x56>
    665e:	48 89 c7             	mov    %rax,%rdi
    6661:	b8 00 00 00 00       	mov    $0x0,%eax
    6666:	e8 bd e8 ff ff       	call   4f28 <Throw>
    666b:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    666f:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    6673:	48 89 c7             	mov    %rax,%rdi
    6676:	e8 fb fa ff ff       	call   6176 <Lex>
    667b:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    667f:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    6683:	48 89 03             	mov    %rax,(%rbx)
    6686:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    668a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    668e:	48 89 43 10          	mov    %rax,0x10(%rbx)
    6692:	90                   	nop
    6693:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6697:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    669e:	00 00 
    66a0:	74 05                	je     66a7 <ParseMatch+0x89>
    66a2:	e8 59 db ff ff       	call   4200 <__stack_chk_fail@plt>
    66a7:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    66ab:	c9                   	leave
    66ac:	c3                   	ret

00000000000066ad <ParseIf>:
    66ad:	f3 0f 1e fa          	endbr64
    66b1:	55                   	push   %rbp
    66b2:	48 89 e5             	mov    %rsp,%rbp
    66b5:	48 83 ec 50          	sub    $0x50,%rsp
    66b9:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    66bd:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    66c1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    66c8:	00 00 
    66ca:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    66ce:	31 c0                	xor    %eax,%eax
    66d0:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    66d4:	be 2b 00 00 00       	mov    $0x2b,%esi
    66d9:	48 89 c7             	mov    %rax,%rdi
    66dc:	e8 3d ff ff ff       	call   661e <ParseMatch>
    66e1:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    66e5:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    66e9:	ba 00 00 00 00       	mov    $0x0,%edx
    66ee:	48 89 ce             	mov    %rcx,%rsi
    66f1:	48 89 c7             	mov    %rax,%rdi
    66f4:	e8 cd 06 00 00       	call   6dc6 <ParseExpr>
    66f9:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    66fd:	be 32 00 00 00       	mov    $0x32,%esi
    6702:	48 89 c7             	mov    %rax,%rdi
    6705:	e8 14 ff ff ff       	call   661e <ParseMatch>
    670a:	eb 3a                	jmp    6746 <ParseIf+0x99>
    670c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6710:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    6714:	48 89 d6             	mov    %rdx,%rsi
    6717:	48 89 c7             	mov    %rax,%rdi
    671a:	e8 8f 09 00 00       	call   70ae <ParseStmt>
    671f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6723:	8b 00                	mov    (%rax),%eax
    6725:	83 f8 33             	cmp    $0x33,%eax
    6728:	74 28                	je     6752 <ParseIf+0xa5>
    672a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    672e:	8b 00                	mov    (%rax),%eax
    6730:	83 f8 2d             	cmp    $0x2d,%eax
    6733:	75 11                	jne    6746 <ParseIf+0x99>
    6735:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6739:	be 2d 00 00 00       	mov    $0x2d,%esi
    673e:	48 89 c7             	mov    %rax,%rdi
    6741:	e8 d8 fe ff ff       	call   661e <ParseMatch>
    6746:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    674a:	8b 00                	mov    (%rax),%eax
    674c:	85 c0                	test   %eax,%eax
    674e:	75 bc                	jne    670c <ParseIf+0x5f>
    6750:	eb 01                	jmp    6753 <ParseIf+0xa6>
    6752:	90                   	nop
    6753:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6757:	be 33 00 00 00       	mov    $0x33,%esi
    675c:	48 89 c7             	mov    %rax,%rdi
    675f:	e8 ba fe ff ff       	call   661e <ParseMatch>
    6764:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    6768:	66 0f ef c0          	pxor   %xmm0,%xmm0
    676c:	0f 11 00             	movups %xmm0,(%rax)
    676f:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6774:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6778:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    677f:	00 00 
    6781:	74 05                	je     6788 <ParseIf+0xdb>
    6783:	e8 78 da ff ff       	call   4200 <__stack_chk_fail@plt>
    6788:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    678c:	c9                   	leave
    678d:	c3                   	ret

000000000000678e <ParseFor>:
    678e:	f3 0f 1e fa          	endbr64
    6792:	55                   	push   %rbp
    6793:	48 89 e5             	mov    %rsp,%rbp
    6796:	48 83 ec 30          	sub    $0x30,%rsp
    679a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    679e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    67a2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    67a6:	be 2c 00 00 00       	mov    $0x2c,%esi
    67ab:	48 89 c7             	mov    %rax,%rdi
    67ae:	e8 6b fe ff ff       	call   661e <ParseMatch>
    67b3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    67b7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    67bb:	0f 11 00             	movups %xmm0,(%rax)
    67be:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    67c3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    67c7:	c9                   	leave
    67c8:	c3                   	ret

00000000000067c9 <ParseDo>:
    67c9:	f3 0f 1e fa          	endbr64
    67cd:	55                   	push   %rbp
    67ce:	48 89 e5             	mov    %rsp,%rbp
    67d1:	48 83 ec 30          	sub    $0x30,%rsp
    67d5:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    67d9:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    67dd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    67e1:	be 2f 00 00 00       	mov    $0x2f,%esi
    67e6:	48 89 c7             	mov    %rax,%rdi
    67e9:	e8 30 fe ff ff       	call   661e <ParseMatch>
    67ee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    67f2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    67f6:	0f 11 00             	movups %xmm0,(%rax)
    67f9:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    67fe:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6802:	c9                   	leave
    6803:	c3                   	ret

0000000000006804 <ParseWhile>:
    6804:	f3 0f 1e fa          	endbr64
    6808:	55                   	push   %rbp
    6809:	48 89 e5             	mov    %rsp,%rbp
    680c:	48 83 ec 30          	sub    $0x30,%rsp
    6810:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6814:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6818:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    681c:	be 30 00 00 00       	mov    $0x30,%esi
    6821:	48 89 c7             	mov    %rax,%rdi
    6824:	e8 f5 fd ff ff       	call   661e <ParseMatch>
    6829:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    682d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6831:	0f 11 00             	movups %xmm0,(%rax)
    6834:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6839:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    683d:	c9                   	leave
    683e:	c3                   	ret

000000000000683f <ParseFunc>:
    683f:	f3 0f 1e fa          	endbr64
    6843:	55                   	push   %rbp
    6844:	48 89 e5             	mov    %rsp,%rbp
    6847:	48 83 ec 60          	sub    $0x60,%rsp
    684b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    684f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6853:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    6857:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    685e:	00 00 
    6860:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6864:	31 c0                	xor    %eax,%eax
    6866:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    686a:	be 24 00 00 00       	mov    $0x24,%esi
    686f:	48 89 c7             	mov    %rax,%rdi
    6872:	e8 a7 fd ff ff       	call   661e <ParseMatch>
    6877:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    687b:	be 25 00 00 00       	mov    $0x25,%esi
    6880:	48 89 c7             	mov    %rax,%rdi
    6883:	e8 96 fd ff ff       	call   661e <ParseMatch>
    6888:	eb 13                	jmp    689d <ParseFunc+0x5e>
    688a:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    688e:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    6892:	48 89 d6             	mov    %rdx,%rsi
    6895:	48 89 c7             	mov    %rax,%rdi
    6898:	e8 11 08 00 00       	call   70ae <ParseStmt>
    689d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    68a1:	8b 00                	mov    (%rax),%eax
    68a3:	85 c0                	test   %eax,%eax
    68a5:	74 0b                	je     68b2 <ParseFunc+0x73>
    68a7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    68ab:	8b 00                	mov    (%rax),%eax
    68ad:	83 f8 33             	cmp    $0x33,%eax
    68b0:	75 d8                	jne    688a <ParseFunc+0x4b>
    68b2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    68b6:	be 33 00 00 00       	mov    $0x33,%esi
    68bb:	48 89 c7             	mov    %rax,%rdi
    68be:	e8 5b fd ff ff       	call   661e <ParseMatch>
    68c3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    68c7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    68cb:	0f 11 00             	movups %xmm0,(%rax)
    68ce:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    68d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    68d7:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    68de:	00 00 
    68e0:	74 05                	je     68e7 <ParseFunc+0xa8>
    68e2:	e8 19 d9 ff ff       	call   4200 <__stack_chk_fail@plt>
    68e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    68eb:	c9                   	leave
    68ec:	c3                   	ret

00000000000068ed <ParseId>:
    68ed:	f3 0f 1e fa          	endbr64
    68f1:	55                   	push   %rbp
    68f2:	48 89 e5             	mov    %rsp,%rbp
    68f5:	48 83 ec 40          	sub    $0x40,%rsp
    68f9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    68fd:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6901:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6908:	00 00 
    690a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    690e:	31 c0                	xor    %eax,%eax
    6910:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6914:	48 8b 40 10          	mov    0x10(%rax),%rax
    6918:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    691c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6920:	be 39 00 00 00       	mov    $0x39,%esi
    6925:	48 89 c7             	mov    %rax,%rdi
    6928:	e8 f1 fc ff ff       	call   661e <ParseMatch>
    692d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6931:	be 31 00 00 00       	mov    $0x31,%esi
    6936:	48 89 c7             	mov    %rax,%rdi
    6939:	e8 e0 fc ff ff       	call   661e <ParseMatch>
    693e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6942:	8b 00                	mov    (%rax),%eax
    6944:	83 f8 24             	cmp    $0x24,%eax
    6947:	75 19                	jne    6962 <ParseId+0x75>
    6949:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    694d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    6951:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6955:	48 89 ce             	mov    %rcx,%rsi
    6958:	48 89 c7             	mov    %rax,%rdi
    695b:	e8 df fe ff ff       	call   683f <ParseFunc>
    6960:	eb 33                	jmp    6995 <ParseId+0xa8>
    6962:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6966:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    696a:	ba 00 00 00 00       	mov    $0x0,%edx
    696f:	48 89 ce             	mov    %rcx,%rsi
    6972:	48 89 c7             	mov    %rax,%rdi
    6975:	e8 4c 04 00 00       	call   6dc6 <ParseExpr>
    697a:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    697e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6982:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6986:	48 89 01             	mov    %rax,(%rcx)
    6989:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    698d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6991:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6995:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6999:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    69a0:	00 00 
    69a2:	74 05                	je     69a9 <ParseId+0xbc>
    69a4:	e8 57 d8 ff ff       	call   4200 <__stack_chk_fail@plt>
    69a9:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    69ad:	c9                   	leave
    69ae:	c3                   	ret

00000000000069af <ParseEos>:
    69af:	f3 0f 1e fa          	endbr64
    69b3:	55                   	push   %rbp
    69b4:	48 89 e5             	mov    %rsp,%rbp
    69b7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    69bb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    69bf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    69c3:	66 0f ef c0          	pxor   %xmm0,%xmm0
    69c7:	0f 11 00             	movups %xmm0,(%rax)
    69ca:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    69cf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    69d3:	5d                   	pop    %rbp
    69d4:	c3                   	ret

00000000000069d5 <ParseErr>:
    69d5:	f3 0f 1e fa          	endbr64
    69d9:	55                   	push   %rbp
    69da:	48 89 e5             	mov    %rsp,%rbp
    69dd:	48 83 ec 30          	sub    $0x30,%rsp
    69e1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    69e5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    69e9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    69ed:	8b 00                	mov    (%rax),%eax
    69ef:	89 c6                	mov    %eax,%esi
    69f1:	48 8d 05 74 46 00 00 	lea    0x4674(%rip),%rax        # b06c <_IO_stdin_used+0x6c>
    69f8:	48 89 c7             	mov    %rax,%rdi
    69fb:	b8 00 00 00 00       	mov    $0x0,%eax
    6a00:	e8 23 e5 ff ff       	call   4f28 <Throw>
    6a05:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6a09:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6a0d:	0f 11 00             	movups %xmm0,(%rax)
    6a10:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6a15:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6a19:	c9                   	leave
    6a1a:	c3                   	ret

0000000000006a1b <ParseUnary>:
    6a1b:	f3 0f 1e fa          	endbr64
    6a1f:	55                   	push   %rbp
    6a20:	48 89 e5             	mov    %rsp,%rbp
    6a23:	48 83 ec 50          	sub    $0x50,%rsp
    6a27:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6a2b:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6a2f:	89 55 bc             	mov    %edx,-0x44(%rbp)
    6a32:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6a39:	00 00 
    6a3b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6a3f:	31 c0                	xor    %eax,%eax
    6a41:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6a45:	8b 00                	mov    (%rax),%eax
    6a47:	89 45 dc             	mov    %eax,-0x24(%rbp)
    6a4a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6a4e:	8b 10                	mov    (%rax),%edx
    6a50:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6a54:	89 d6                	mov    %edx,%esi
    6a56:	48 89 c7             	mov    %rax,%rdi
    6a59:	e8 c0 fb ff ff       	call   661e <ParseMatch>
    6a5e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6a62:	8b 55 bc             	mov    -0x44(%rbp),%edx
    6a65:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6a69:	48 89 ce             	mov    %rcx,%rsi
    6a6c:	48 89 c7             	mov    %rax,%rdi
    6a6f:	e8 52 03 00 00       	call   6dc6 <ParseExpr>
    6a74:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6a78:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    6a7c:	8b 4d dc             	mov    -0x24(%rbp),%ecx
    6a7f:	89 ce                	mov    %ecx,%esi
    6a81:	48 89 c7             	mov    %rax,%rdi
    6a84:	e8 30 16 00 00       	call   80b9 <CompileUna>
    6a89:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6a8d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6a94:	00 00 
    6a96:	74 05                	je     6a9d <ParseUnary+0x82>
    6a98:	e8 63 d7 ff ff       	call   4200 <__stack_chk_fail@plt>
    6a9d:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6aa1:	c9                   	leave
    6aa2:	c3                   	ret

0000000000006aa3 <ParseBinary>:
    6aa3:	f3 0f 1e fa          	endbr64
    6aa7:	55                   	push   %rbp
    6aa8:	48 89 e5             	mov    %rsp,%rbp
    6aab:	48 83 ec 50          	sub    $0x50,%rsp
    6aaf:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6ab3:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6ab7:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    6abb:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
    6abe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6ac5:	00 00 
    6ac7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6acb:	31 c0                	xor    %eax,%eax
    6acd:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6ad1:	8b 00                	mov    (%rax),%eax
    6ad3:	89 45 dc             	mov    %eax,-0x24(%rbp)
    6ad6:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6ada:	8b 10                	mov    (%rax),%edx
    6adc:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6ae0:	89 d6                	mov    %edx,%esi
    6ae2:	48 89 c7             	mov    %rax,%rdi
    6ae5:	e8 34 fb ff ff       	call   661e <ParseMatch>
    6aea:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6aee:	8b 55 b4             	mov    -0x4c(%rbp),%edx
    6af1:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6af5:	48 89 ce             	mov    %rcx,%rsi
    6af8:	48 89 c7             	mov    %rax,%rdi
    6afb:	e8 c6 02 00 00       	call   6dc6 <ParseExpr>
    6b00:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6b04:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    6b08:	8b 55 dc             	mov    -0x24(%rbp),%edx
    6b0b:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
    6b0f:	48 89 c7             	mov    %rax,%rdi
    6b12:	e8 95 35 00 00       	call   a0ac <CompileBin>
    6b17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6b1b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6b22:	00 00 
    6b24:	74 05                	je     6b2b <ParseBinary+0x88>
    6b26:	e8 d5 d6 ff ff       	call   4200 <__stack_chk_fail@plt>
    6b2b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6b2f:	c9                   	leave
    6b30:	c3                   	ret

0000000000006b31 <ParseGroup>:
    6b31:	f3 0f 1e fa          	endbr64
    6b35:	55                   	push   %rbp
    6b36:	48 89 e5             	mov    %rsp,%rbp
    6b39:	48 83 ec 30          	sub    $0x30,%rsp
    6b3d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6b41:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6b45:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6b4c:	00 00 
    6b4e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6b52:	31 c0                	xor    %eax,%eax
    6b54:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6b58:	be 24 00 00 00       	mov    $0x24,%esi
    6b5d:	48 89 c7             	mov    %rax,%rdi
    6b60:	e8 b9 fa ff ff       	call   661e <ParseMatch>
    6b65:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6b69:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    6b6d:	ba 00 00 00 00       	mov    $0x0,%edx
    6b72:	48 89 ce             	mov    %rcx,%rsi
    6b75:	48 89 c7             	mov    %rax,%rdi
    6b78:	e8 49 02 00 00       	call   6dc6 <ParseExpr>
    6b7d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6b81:	be 25 00 00 00       	mov    $0x25,%esi
    6b86:	48 89 c7             	mov    %rax,%rdi
    6b89:	e8 90 fa ff ff       	call   661e <ParseMatch>
    6b8e:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6b92:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6b96:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6b9a:	48 89 01             	mov    %rax,(%rcx)
    6b9d:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6ba1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6ba5:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6ba9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6bad:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6bb4:	00 00 
    6bb6:	74 05                	je     6bbd <ParseGroup+0x8c>
    6bb8:	e8 43 d6 ff ff       	call   4200 <__stack_chk_fail@plt>
    6bbd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6bc1:	c9                   	leave
    6bc2:	c3                   	ret

0000000000006bc3 <ParseCall>:
    6bc3:	f3 0f 1e fa          	endbr64
    6bc7:	55                   	push   %rbp
    6bc8:	48 89 e5             	mov    %rsp,%rbp
    6bcb:	48 83 ec 40          	sub    $0x40,%rsp
    6bcf:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6bd3:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6bd7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6bdb:	48 8b 40 10          	mov    0x10(%rax),%rax
    6bdf:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    6be3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6be7:	be 39 00 00 00       	mov    $0x39,%esi
    6bec:	48 89 c7             	mov    %rax,%rdi
    6bef:	e8 2a fa ff ff       	call   661e <ParseMatch>
    6bf4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6bf8:	be 24 00 00 00       	mov    $0x24,%esi
    6bfd:	48 89 c7             	mov    %rax,%rdi
    6c00:	e8 19 fa ff ff       	call   661e <ParseMatch>
    6c05:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6c09:	be 25 00 00 00       	mov    $0x25,%esi
    6c0e:	48 89 c7             	mov    %rax,%rdi
    6c11:	e8 08 fa ff ff       	call   661e <ParseMatch>
    6c16:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6c1a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6c1e:	0f 11 00             	movups %xmm0,(%rax)
    6c21:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6c26:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6c2a:	c9                   	leave
    6c2b:	c3                   	ret

0000000000006c2c <ParseI64>:
    6c2c:	f3 0f 1e fa          	endbr64
    6c30:	55                   	push   %rbp
    6c31:	48 89 e5             	mov    %rsp,%rbp
    6c34:	48 83 ec 30          	sub    $0x30,%rsp
    6c38:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6c3c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6c40:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6c44:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6c48:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6c4d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6c51:	48 8b 40 10          	mov    0x10(%rax),%rax
    6c55:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6c59:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6c5d:	be 36 00 00 00       	mov    $0x36,%esi
    6c62:	48 89 c7             	mov    %rax,%rdi
    6c65:	e8 b4 f9 ff ff       	call   661e <ParseMatch>
    6c6a:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6c6e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6c72:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6c76:	48 89 01             	mov    %rax,(%rcx)
    6c79:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6c7d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6c81:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6c85:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6c89:	c9                   	leave
    6c8a:	c3                   	ret

0000000000006c8b <ParseF64>:
    6c8b:	f3 0f 1e fa          	endbr64
    6c8f:	55                   	push   %rbp
    6c90:	48 89 e5             	mov    %rsp,%rbp
    6c93:	48 83 ec 30          	sub    $0x30,%rsp
    6c97:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6c9b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6c9f:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6ca3:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6ca7:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6cac:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    6cb3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6cb7:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    6cbc:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    6cc1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6cc5:	be 37 00 00 00       	mov    $0x37,%esi
    6cca:	48 89 c7             	mov    %rax,%rdi
    6ccd:	e8 4c f9 ff ff       	call   661e <ParseMatch>
    6cd2:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6cd6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6cda:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6cde:	48 89 01             	mov    %rax,(%rcx)
    6ce1:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6ce5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6ce9:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6ced:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6cf1:	c9                   	leave
    6cf2:	c3                   	ret

0000000000006cf3 <ParseStr>:
    6cf3:	f3 0f 1e fa          	endbr64
    6cf7:	55                   	push   %rbp
    6cf8:	48 89 e5             	mov    %rsp,%rbp
    6cfb:	48 83 ec 30          	sub    $0x30,%rsp
    6cff:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6d03:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6d07:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6d0b:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6d0f:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6d14:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
    6d1b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6d1f:	48 8b 40 10          	mov    0x10(%rax),%rax
    6d23:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6d27:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6d2b:	be 38 00 00 00       	mov    $0x38,%esi
    6d30:	48 89 c7             	mov    %rax,%rdi
    6d33:	e8 e6 f8 ff ff       	call   661e <ParseMatch>
    6d38:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6d3c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6d40:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6d44:	48 89 01             	mov    %rax,(%rcx)
    6d47:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6d4b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6d4f:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6d53:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6d57:	c9                   	leave
    6d58:	c3                   	ret

0000000000006d59 <ParseRef>:
    6d59:	f3 0f 1e fa          	endbr64
    6d5d:	55                   	push   %rbp
    6d5e:	48 89 e5             	mov    %rsp,%rbp
    6d61:	48 83 ec 30          	sub    $0x30,%rsp
    6d65:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6d69:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6d6d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6d71:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6d75:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6d7a:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%rbp)
    6d81:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
    6d88:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6d8c:	48 8b 40 10          	mov    0x10(%rax),%rax
    6d90:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6d94:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6d98:	be 39 00 00 00       	mov    $0x39,%esi
    6d9d:	48 89 c7             	mov    %rax,%rdi
    6da0:	e8 79 f8 ff ff       	call   661e <ParseMatch>
    6da5:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6da9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6dad:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6db1:	48 89 01             	mov    %rax,(%rcx)
    6db4:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6db8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6dbc:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6dc0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6dc4:	c9                   	leave
    6dc5:	c3                   	ret

0000000000006dc6 <ParseExpr>:
    6dc6:	f3 0f 1e fa          	endbr64
    6dca:	55                   	push   %rbp
    6dcb:	48 89 e5             	mov    %rsp,%rbp
    6dce:	48 83 ec 70          	sub    $0x70,%rsp
    6dd2:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6dd6:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6dda:	89 55 bc             	mov    %edx,-0x44(%rbp)
    6ddd:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6de4:	00 00 
    6de6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6dea:	31 c0                	xor    %eax,%eax
    6dec:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6df0:	8b 00                	mov    (%rax),%eax
    6df2:	89 c2                	mov    %eax,%edx
    6df4:	48 89 d0             	mov    %rdx,%rax
    6df7:	48 01 c0             	add    %rax,%rax
    6dfa:	48 01 d0             	add    %rdx,%rax
    6dfd:	48 c1 e0 03          	shl    $0x3,%rax
    6e01:	48 8d 15 98 77 00 00 	lea    0x7798(%rip),%rdx        # e5a0 <rules.45>
    6e08:	48 01 d0             	add    %rdx,%rax
    6e0b:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    6e0f:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6e13:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6e17:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6e1c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6e20:	48 8b 00             	mov    (%rax),%rax
    6e23:	eb 6e                	jmp    6e93 <ParseExpr+0xcd>
    6e25:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6e29:	8b 00                	mov    (%rax),%eax
    6e2b:	89 c2                	mov    %eax,%edx
    6e2d:	48 89 d0             	mov    %rdx,%rax
    6e30:	48 01 c0             	add    %rax,%rax
    6e33:	48 01 d0             	add    %rdx,%rax
    6e36:	48 c1 e0 03          	shl    $0x3,%rax
    6e3a:	48 8d 15 5f 77 00 00 	lea    0x775f(%rip),%rdx        # e5a0 <rules.45>
    6e41:	48 01 d0             	add    %rdx,%rax
    6e44:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    6e48:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6e4c:	8b 40 10             	mov    0x10(%rax),%eax
    6e4f:	39 45 bc             	cmp    %eax,-0x44(%rbp)
    6e52:	0f 83 20 02 00 00    	jae    7078 <ParseExpr+0x2b2>
    6e58:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6e5c:	48 8b 40 08          	mov    0x8(%rax),%rax
    6e60:	eb 31                	jmp    6e93 <ParseExpr+0xcd>
    6e62:	f3 0f 1e fa          	endbr64
    6e66:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6e6a:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6e6e:	48 89 d6             	mov    %rdx,%rsi
    6e71:	48 89 c7             	mov    %rax,%rdi
    6e74:	e8 36 fb ff ff       	call   69af <ParseEos>
    6e79:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6e7d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6e81:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6e85:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6e89:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6e8d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6e91:	eb 92                	jmp    6e25 <ParseExpr+0x5f>
    6e93:	ff e0                	jmp    *%rax
    6e95:	f3 0f 1e fa          	endbr64
    6e99:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6e9d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6ea1:	48 89 d6             	mov    %rdx,%rsi
    6ea4:	48 89 c7             	mov    %rax,%rdi
    6ea7:	e8 29 fb ff ff       	call   69d5 <ParseErr>
    6eac:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6eb0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6eb4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6eb8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6ebc:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6ec0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6ec4:	e9 5c ff ff ff       	jmp    6e25 <ParseExpr+0x5f>
    6ec9:	f3 0f 1e fa          	endbr64
    6ecd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6ed1:	8b 50 10             	mov    0x10(%rax),%edx
    6ed4:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6ed8:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6edc:	48 89 ce             	mov    %rcx,%rsi
    6edf:	48 89 c7             	mov    %rax,%rdi
    6ee2:	e8 34 fb ff ff       	call   6a1b <ParseUnary>
    6ee7:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6eeb:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6eef:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6ef3:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6ef7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6efb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6eff:	e9 21 ff ff ff       	jmp    6e25 <ParseExpr+0x5f>
    6f04:	f3 0f 1e fa          	endbr64
    6f08:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6f0c:	8b 48 10             	mov    0x10(%rax),%ecx
    6f0f:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6f13:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    6f17:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
    6f1b:	48 89 c7             	mov    %rax,%rdi
    6f1e:	e8 80 fb ff ff       	call   6aa3 <ParseBinary>
    6f23:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6f27:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6f2b:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6f2f:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6f33:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6f37:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6f3b:	e9 e5 fe ff ff       	jmp    6e25 <ParseExpr+0x5f>
    6f40:	f3 0f 1e fa          	endbr64
    6f44:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6f48:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6f4c:	48 89 d6             	mov    %rdx,%rsi
    6f4f:	48 89 c7             	mov    %rax,%rdi
    6f52:	e8 da fb ff ff       	call   6b31 <ParseGroup>
    6f57:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6f5b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6f5f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6f63:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6f67:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6f6b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6f6f:	e9 b1 fe ff ff       	jmp    6e25 <ParseExpr+0x5f>
    6f74:	f3 0f 1e fa          	endbr64
    6f78:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6f7c:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6f80:	48 89 d6             	mov    %rdx,%rsi
    6f83:	48 89 c7             	mov    %rax,%rdi
    6f86:	e8 38 fc ff ff       	call   6bc3 <ParseCall>
    6f8b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6f8f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6f93:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6f97:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6f9b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6f9f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6fa3:	e9 7d fe ff ff       	jmp    6e25 <ParseExpr+0x5f>
    6fa8:	f3 0f 1e fa          	endbr64
    6fac:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6fb0:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6fb4:	48 89 d6             	mov    %rdx,%rsi
    6fb7:	48 89 c7             	mov    %rax,%rdi
    6fba:	e8 6d fc ff ff       	call   6c2c <ParseI64>
    6fbf:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6fc3:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6fc7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6fcb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6fcf:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6fd3:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6fd7:	e9 49 fe ff ff       	jmp    6e25 <ParseExpr+0x5f>
    6fdc:	f3 0f 1e fa          	endbr64
    6fe0:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6fe4:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6fe8:	48 89 d6             	mov    %rdx,%rsi
    6feb:	48 89 c7             	mov    %rax,%rdi
    6fee:	e8 98 fc ff ff       	call   6c8b <ParseF64>
    6ff3:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6ff7:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6ffb:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6fff:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7003:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    7007:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    700b:	e9 15 fe ff ff       	jmp    6e25 <ParseExpr+0x5f>
    7010:	f3 0f 1e fa          	endbr64
    7014:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    7018:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    701c:	48 89 d6             	mov    %rdx,%rsi
    701f:	48 89 c7             	mov    %rax,%rdi
    7022:	e8 cc fc ff ff       	call   6cf3 <ParseStr>
    7027:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    702b:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    702f:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7033:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7037:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    703b:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    703f:	e9 e1 fd ff ff       	jmp    6e25 <ParseExpr+0x5f>
    7044:	f3 0f 1e fa          	endbr64
    7048:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    704c:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    7050:	48 89 d6             	mov    %rdx,%rsi
    7053:	48 89 c7             	mov    %rax,%rdi
    7056:	e8 fe fc ff ff       	call   6d59 <ParseRef>
    705b:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    705f:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    7063:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7067:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    706b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    706f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7073:	e9 ad fd ff ff       	jmp    6e25 <ParseExpr+0x5f>
    7078:	90                   	nop
    7079:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    707d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7081:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7085:	48 89 01             	mov    %rax,(%rcx)
    7088:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    708c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7090:	48 89 41 10          	mov    %rax,0x10(%rcx)
    7094:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7098:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    709f:	00 00 
    70a1:	74 05                	je     70a8 <ParseExpr+0x2e2>
    70a3:	e8 58 d1 ff ff       	call   4200 <__stack_chk_fail@plt>
    70a8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    70ac:	c9                   	leave
    70ad:	c3                   	ret

00000000000070ae <ParseStmt>:
    70ae:	f3 0f 1e fa          	endbr64
    70b2:	55                   	push   %rbp
    70b3:	48 89 e5             	mov    %rsp,%rbp
    70b6:	48 83 ec 20          	sub    $0x20,%rsp
    70ba:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    70be:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    70c2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    70c9:	00 00 
    70cb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    70cf:	31 c0                	xor    %eax,%eax
    70d1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    70d5:	8b 00                	mov    (%rax),%eax
    70d7:	89 c0                	mov    %eax,%eax
    70d9:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    70e0:	00 
    70e1:	48 8d 05 38 7a 00 00 	lea    0x7a38(%rip),%rax        # eb20 <stmts.44>
    70e8:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    70ec:	90                   	nop
    70ed:	ff e0                	jmp    *%rax
    70ef:	f3 0f 1e fa          	endbr64
    70f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    70f7:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    70fb:	ba 00 00 00 00       	mov    $0x0,%edx
    7100:	48 89 ce             	mov    %rcx,%rsi
    7103:	48 89 c7             	mov    %rax,%rdi
    7106:	e8 bb fc ff ff       	call   6dc6 <ParseExpr>
    710b:	eb 7b                	jmp    7188 <ParseStmt+0xda>
    710d:	f3 0f 1e fa          	endbr64
    7111:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7115:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7119:	48 89 d6             	mov    %rdx,%rsi
    711c:	48 89 c7             	mov    %rax,%rdi
    711f:	e8 89 f5 ff ff       	call   66ad <ParseIf>
    7124:	eb 62                	jmp    7188 <ParseStmt+0xda>
    7126:	f3 0f 1e fa          	endbr64
    712a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    712e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7132:	48 89 d6             	mov    %rdx,%rsi
    7135:	48 89 c7             	mov    %rax,%rdi
    7138:	e8 51 f6 ff ff       	call   678e <ParseFor>
    713d:	eb 49                	jmp    7188 <ParseStmt+0xda>
    713f:	f3 0f 1e fa          	endbr64
    7143:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7147:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    714b:	48 89 d6             	mov    %rdx,%rsi
    714e:	48 89 c7             	mov    %rax,%rdi
    7151:	e8 73 f6 ff ff       	call   67c9 <ParseDo>
    7156:	eb 30                	jmp    7188 <ParseStmt+0xda>
    7158:	f3 0f 1e fa          	endbr64
    715c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7160:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7164:	48 89 d6             	mov    %rdx,%rsi
    7167:	48 89 c7             	mov    %rax,%rdi
    716a:	e8 95 f6 ff ff       	call   6804 <ParseWhile>
    716f:	eb 17                	jmp    7188 <ParseStmt+0xda>
    7171:	f3 0f 1e fa          	endbr64
    7175:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7179:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    717d:	48 89 d6             	mov    %rdx,%rsi
    7180:	48 89 c7             	mov    %rax,%rdi
    7183:	e8 65 f7 ff ff       	call   68ed <ParseId>
    7188:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    718c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7193:	00 00 
    7195:	74 05                	je     719c <ParseStmt+0xee>
    7197:	e8 64 d0 ff ff       	call   4200 <__stack_chk_fail@plt>
    719c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    71a0:	c9                   	leave
    71a1:	c3                   	ret

00000000000071a2 <Parse>:
    71a2:	f3 0f 1e fa          	endbr64
    71a6:	55                   	push   %rbp
    71a7:	48 89 e5             	mov    %rsp,%rbp
    71aa:	53                   	push   %rbx
    71ab:	48 83 ec 58          	sub    $0x58,%rsp
    71af:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    71b6:	00 00 
    71b8:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    71bc:	31 c0                	xor    %eax,%eax
    71be:	e8 80 f3 ff ff       	call   6543 <GetParser>
    71c3:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    71c7:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
    71cb:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    71cf:	48 89 c7             	mov    %rax,%rdi
    71d2:	e8 9f ef ff ff       	call   6176 <Lex>
    71d7:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    71db:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    71df:	48 89 03             	mov    %rax,(%rbx)
    71e2:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    71e6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    71ea:	48 89 43 10          	mov    %rax,0x10(%rbx)
    71ee:	eb 1f                	jmp    720f <Parse+0x6d>
    71f0:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    71f4:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    71f8:	48 89 d6             	mov    %rdx,%rsi
    71fb:	48 89 c7             	mov    %rax,%rdi
    71fe:	e8 ab fe ff ff       	call   70ae <ParseStmt>
    7203:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    7207:	48 89 c7             	mov    %rax,%rdi
    720a:	e8 4c f3 ff ff       	call   655b <ParseNodeLog>
    720f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    7213:	8b 00                	mov    (%rax),%eax
    7215:	85 c0                	test   %eax,%eax
    7217:	75 d7                	jne    71f0 <Parse+0x4e>
    7219:	90                   	nop
    721a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    721e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7225:	00 00 
    7227:	74 05                	je     722e <Parse+0x8c>
    7229:	e8 d2 cf ff ff       	call   4200 <__stack_chk_fail@plt>
    722e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7232:	c9                   	leave
    7233:	c3                   	ret

0000000000007234 <GetCompiler>:
    7234:	55                   	push   %rbp
    7235:	48 89 e5             	mov    %rsp,%rbp
    7238:	48 8d 05 e1 82 00 00 	lea    0x82e1(%rip),%rax        # f520 <compiler.42>
    723f:	5d                   	pop    %rbp
    7240:	c3                   	ret

0000000000007241 <FnCommit>:
    7241:	f3 0f 1e fa          	endbr64
    7245:	55                   	push   %rbp
    7246:	48 89 e5             	mov    %rsp,%rbp
    7249:	48 83 ec 10          	sub    $0x10,%rsp
    724d:	e8 e2 ff ff ff       	call   7234 <GetCompiler>
    7252:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7256:	e8 31 d3 ff ff       	call   458c <GetFuncs>
    725b:	48 89 c7             	mov    %rax,%rdi
    725e:	e8 89 d3 ff ff       	call   45ec <VecCommit>
    7263:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7267:	e8 ec d2 ff ff       	call   4558 <GetConsts>
    726c:	8b 50 08             	mov    0x8(%rax),%edx
    726f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7273:	89 10                	mov    %edx,(%rax)
    7275:	e8 eb d2 ff ff       	call   4565 <GetLocals>
    727a:	8b 50 08             	mov    0x8(%rax),%edx
    727d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7281:	89 50 04             	mov    %edx,0x4(%rax)
    7284:	e8 f6 d2 ff ff       	call   457f <GetCode>
    7289:	8b 50 08             	mov    0x8(%rax),%edx
    728c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7290:	89 50 08             	mov    %edx,0x8(%rax)
    7293:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7297:	66 c7 40 0e 00 00    	movw   $0x0,0xe(%rax)
    729d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    72a1:	c6 40 0d 00          	movb   $0x0,0xd(%rax)
    72a5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    72a9:	0f b6 50 0d          	movzbl 0xd(%rax),%edx
    72ad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    72b1:	88 50 0c             	mov    %dl,0xc(%rax)
    72b4:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    72b8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    72bc:	48 89 10             	mov    %rdx,(%rax)
    72bf:	90                   	nop
    72c0:	c9                   	leave
    72c1:	c3                   	ret

00000000000072c2 <CompilerInit>:
    72c2:	f3 0f 1e fa          	endbr64
    72c6:	55                   	push   %rbp
    72c7:	48 89 e5             	mov    %rsp,%rbp
    72ca:	48 83 ec 10          	sub    $0x10,%rsp
    72ce:	e8 61 ff ff ff       	call   7234 <GetCompiler>
    72d3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    72d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    72db:	c6 40 08 00          	movb   $0x0,0x8(%rax)
    72df:	e8 5d ff ff ff       	call   7241 <FnCommit>
    72e4:	90                   	nop
    72e5:	c9                   	leave
    72e6:	c3                   	ret

00000000000072e7 <ConstPush>:
    72e7:	55                   	push   %rbp
    72e8:	48 89 e5             	mov    %rsp,%rbp
    72eb:	48 83 ec 20          	sub    $0x20,%rsp
    72ef:	89 f8                	mov    %edi,%eax
    72f1:	48 89 f1             	mov    %rsi,%rcx
    72f4:	48 89 ca             	mov    %rcx,%rdx
    72f7:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    72fb:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    72ff:	e8 30 ff ff ff       	call   7234 <GetCompiler>
    7304:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7308:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    730c:	48 8b 00             	mov    (%rax),%rax
    730f:	0f b6 50 0c          	movzbl 0xc(%rax),%edx
    7313:	83 c2 01             	add    $0x1,%edx
    7316:	88 50 0c             	mov    %dl,0xc(%rax)
    7319:	e8 3a d2 ff ff       	call   4558 <GetConsts>
    731e:	48 89 c2             	mov    %rax,%rdx
    7321:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    7325:	48 89 c6             	mov    %rax,%rsi
    7328:	48 89 d7             	mov    %rdx,%rdi
    732b:	e8 44 d3 ff ff       	call   4674 <VecPush>
    7330:	c9                   	leave
    7331:	c3                   	ret

0000000000007332 <LocalPush>:
    7332:	55                   	push   %rbp
    7333:	48 89 e5             	mov    %rsp,%rbp
    7336:	48 83 ec 40          	sub    $0x40,%rsp
    733a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    733e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7342:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    7346:	89 c8                	mov    %ecx,%eax
    7348:	4c 89 c1             	mov    %r8,%rcx
    734b:	48 89 ca             	mov    %rcx,%rdx
    734e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    7352:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    7356:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    735a:	0f b6 40 0d          	movzbl 0xd(%rax),%eax
    735e:	8d 50 01             	lea    0x1(%rax),%edx
    7361:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7365:	88 50 0d             	mov    %dl,0xd(%rax)
    7368:	e8 f8 d1 ff ff       	call   4565 <GetLocals>
    736d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7371:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7375:	48 89 c7             	mov    %rax,%rdi
    7378:	e8 6f d2 ff ff       	call   45ec <VecCommit>
    737d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7381:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7385:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7389:	48 89 10             	mov    %rdx,(%rax)
    738c:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    7390:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    7394:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    7398:	48 89 41 08          	mov    %rax,0x8(%rcx)
    739c:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    73a0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    73a4:	8b 40 08             	mov    0x8(%rax),%eax
    73a7:	8d 50 ff             	lea    -0x1(%rax),%edx
    73aa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    73ae:	89 10                	mov    %edx,(%rax)
    73b0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    73b4:	c9                   	leave
    73b5:	c3                   	ret

00000000000073b6 <LocalGet>:
    73b6:	55                   	push   %rbp
    73b7:	48 89 e5             	mov    %rsp,%rbp
    73ba:	48 83 ec 38          	sub    $0x38,%rsp
    73be:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    73c2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    73c6:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    73ca:	e8 96 d1 ff ff       	call   4565 <GetLocals>
    73cf:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    73d3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    73d7:	8b 40 04             	mov    0x4(%rax),%eax
    73da:	89 45 ec             	mov    %eax,-0x14(%rbp)
    73dd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    73e1:	0f b6 40 0d          	movzbl 0xd(%rax),%eax
    73e5:	0f b6 d0             	movzbl %al,%edx
    73e8:	8b 45 ec             	mov    -0x14(%rbp),%eax
    73eb:	01 d0                	add    %edx,%eax
    73ed:	83 e8 01             	sub    $0x1,%eax
    73f0:	89 45 e8             	mov    %eax,-0x18(%rbp)
    73f3:	eb 35                	jmp    742a <LocalGet+0x74>
    73f5:	8b 55 e8             	mov    -0x18(%rbp),%edx
    73f8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    73fc:	89 d6                	mov    %edx,%esi
    73fe:	48 89 c7             	mov    %rax,%rdi
    7401:	e8 69 d3 ff ff       	call   476f <VecGet>
    7406:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    740a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    740e:	48 8b 00             	mov    (%rax),%rax
    7411:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    7415:	75 0f                	jne    7426 <LocalGet+0x70>
    7417:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    741b:	8b 55 e8             	mov    -0x18(%rbp),%edx
    741e:	89 10                	mov    %edx,(%rax)
    7420:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7424:	eb 11                	jmp    7437 <LocalGet+0x81>
    7426:	83 6d e8 01          	subl   $0x1,-0x18(%rbp)
    742a:	8b 45 e8             	mov    -0x18(%rbp),%eax
    742d:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    7430:	73 c3                	jae    73f5 <LocalGet+0x3f>
    7432:	b8 00 00 00 00       	mov    $0x0,%eax
    7437:	c9                   	leave
    7438:	c3                   	ret

0000000000007439 <GlobalPush>:
    7439:	55                   	push   %rbp
    743a:	48 89 e5             	mov    %rsp,%rbp
    743d:	41 55                	push   %r13
    743f:	41 54                	push   %r12
    7441:	53                   	push   %rbx
    7442:	48 83 ec 48          	sub    $0x48,%rsp
    7446:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    744a:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    744e:	89 d0                	mov    %edx,%eax
    7450:	48 89 ca             	mov    %rcx,%rdx
    7453:	48 89 45 a0          	mov    %rax,-0x60(%rbp)
    7457:	48 89 55 a8          	mov    %rdx,-0x58(%rbp)
    745b:	e8 12 d1 ff ff       	call   4572 <GetGlobals>
    7460:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    7464:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    7468:	8b 40 08             	mov    0x8(%rax),%eax
    746b:	89 45 cc             	mov    %eax,-0x34(%rbp)
    746e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    7472:	48 89 c7             	mov    %rax,%rdi
    7475:	e8 72 d1 ff ff       	call   45ec <VecCommit>
    747a:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    747e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7482:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    7486:	48 89 10             	mov    %rdx,(%rax)
    7489:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    748d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    7491:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    7495:	48 89 41 08          	mov    %rax,0x8(%rcx)
    7499:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    749d:	41 bc 00 00 00 00    	mov    $0x0,%r12d
    74a3:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    74a9:	8b 45 cc             	mov    -0x34(%rbp),%eax
    74ac:	49 89 c5             	mov    %rax,%r13
    74af:	e8 16 d8 ff ff       	call   4cca <GetEnv>
    74b4:	48 89 c7             	mov    %rax,%rdi
    74b7:	4c 89 e0             	mov    %r12,%rax
    74ba:	4c 89 ea             	mov    %r13,%rdx
    74bd:	4c 89 e1             	mov    %r12,%rcx
    74c0:	4c 89 eb             	mov    %r13,%rbx
    74c3:	89 c2                	mov    %eax,%edx
    74c5:	48 89 d9             	mov    %rbx,%rcx
    74c8:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    74cc:	48 89 c6             	mov    %rax,%rsi
    74cf:	e8 76 d9 ff ff       	call   4e4a <MapPut>
    74d4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    74d8:	8b 55 cc             	mov    -0x34(%rbp),%edx
    74db:	89 10                	mov    %edx,(%rax)
    74dd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    74e1:	48 83 c4 48          	add    $0x48,%rsp
    74e5:	5b                   	pop    %rbx
    74e6:	41 5c                	pop    %r12
    74e8:	41 5d                	pop    %r13
    74ea:	5d                   	pop    %rbp
    74eb:	c3                   	ret

00000000000074ec <GlobalGet>:
    74ec:	55                   	push   %rbp
    74ed:	48 89 e5             	mov    %rsp,%rbp
    74f0:	48 83 ec 20          	sub    $0x20,%rsp
    74f4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    74f8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    74fc:	e8 71 d0 ff ff       	call   4572 <GetGlobals>
    7501:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7505:	e8 c0 d7 ff ff       	call   4cca <GetEnv>
    750a:	48 89 c2             	mov    %rax,%rdx
    750d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7511:	48 89 c6             	mov    %rax,%rsi
    7514:	48 89 d7             	mov    %rdx,%rdi
    7517:	e8 ac d8 ff ff       	call   4dc8 <MapGet>
    751c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7520:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    7525:	75 07                	jne    752e <GlobalGet+0x42>
    7527:	b8 00 00 00 00       	mov    $0x0,%eax
    752c:	eb 24                	jmp    7552 <GlobalGet+0x66>
    752e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7532:	48 8b 40 10          	mov    0x10(%rax),%rax
    7536:	89 c2                	mov    %eax,%edx
    7538:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    753c:	89 10                	mov    %edx,(%rax)
    753e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7542:	8b 10                	mov    (%rax),%edx
    7544:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7548:	89 d6                	mov    %edx,%esi
    754a:	48 89 c7             	mov    %rax,%rdi
    754d:	e8 1d d2 ff ff       	call   476f <VecGet>
    7552:	c9                   	leave
    7553:	c3                   	ret

0000000000007554 <OpPush>:
    7554:	55                   	push   %rbp
    7555:	48 89 e5             	mov    %rsp,%rbp
    7558:	48 83 ec 40          	sub    $0x40,%rsp
    755c:	89 7d dc             	mov    %edi,-0x24(%rbp)
    755f:	89 c8                	mov    %ecx,%eax
    7561:	44 89 cf             	mov    %r9d,%edi
    7564:	89 f1                	mov    %esi,%ecx
    7566:	88 4d d8             	mov    %cl,-0x28(%rbp)
    7569:	88 55 d4             	mov    %dl,-0x2c(%rbp)
    756c:	88 45 d0             	mov    %al,-0x30(%rbp)
    756f:	44 89 c0             	mov    %r8d,%eax
    7572:	88 45 cc             	mov    %al,-0x34(%rbp)
    7575:	89 f8                	mov    %edi,%eax
    7577:	88 45 c8             	mov    %al,-0x38(%rbp)
    757a:	e8 b5 fc ff ff       	call   7234 <GetCompiler>
    757f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    7583:	e8 f7 cf ff ff       	call   457f <GetCode>
    7588:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    758c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7590:	48 8b 00             	mov    (%rax),%rax
    7593:	0f b7 50 0e          	movzwl 0xe(%rax),%edx
    7597:	83 c2 01             	add    $0x1,%edx
    759a:	66 89 50 0e          	mov    %dx,0xe(%rax)
    759e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    75a2:	48 89 c7             	mov    %rax,%rdi
    75a5:	e8 42 d0 ff ff       	call   45ec <VecCommit>
    75aa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    75ae:	8b 45 dc             	mov    -0x24(%rbp),%eax
    75b1:	89 c2                	mov    %eax,%edx
    75b3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75b7:	88 10                	mov    %dl,(%rax)
    75b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75bd:	0f b6 55 d8          	movzbl -0x28(%rbp),%edx
    75c1:	88 50 01             	mov    %dl,0x1(%rax)
    75c4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75c8:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
    75cc:	88 50 02             	mov    %dl,0x2(%rax)
    75cf:	0f b6 45 d0          	movzbl -0x30(%rbp),%eax
    75d3:	83 e0 03             	and    $0x3,%eax
    75d6:	89 c2                	mov    %eax,%edx
    75d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75dc:	89 d1                	mov    %edx,%ecx
    75de:	83 e1 03             	and    $0x3,%ecx
    75e1:	0f b6 50 03          	movzbl 0x3(%rax),%edx
    75e5:	83 e2 fc             	and    $0xfffffffc,%edx
    75e8:	09 ca                	or     %ecx,%edx
    75ea:	88 50 03             	mov    %dl,0x3(%rax)
    75ed:	0f b6 45 cc          	movzbl -0x34(%rbp),%eax
    75f1:	83 e0 07             	and    $0x7,%eax
    75f4:	89 c2                	mov    %eax,%edx
    75f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    75fa:	83 e2 07             	and    $0x7,%edx
    75fd:	8d 0c 95 00 00 00 00 	lea    0x0(,%rdx,4),%ecx
    7604:	0f b6 50 03          	movzbl 0x3(%rax),%edx
    7608:	83 e2 e3             	and    $0xffffffe3,%edx
    760b:	09 ca                	or     %ecx,%edx
    760d:	88 50 03             	mov    %dl,0x3(%rax)
    7610:	0f b6 45 c8          	movzbl -0x38(%rbp),%eax
    7614:	83 e0 07             	and    $0x7,%eax
    7617:	89 c2                	mov    %eax,%edx
    7619:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    761d:	89 d1                	mov    %edx,%ecx
    761f:	c1 e1 05             	shl    $0x5,%ecx
    7622:	0f b6 50 03          	movzbl 0x3(%rax),%edx
    7626:	83 e2 1f             	and    $0x1f,%edx
    7629:	09 ca                	or     %ecx,%edx
    762b:	88 50 03             	mov    %dl,0x3(%rax)
    762e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7632:	8b 40 08             	mov    0x8(%rax),%eax
    7635:	83 e8 01             	sub    $0x1,%eax
    7638:	c9                   	leave
    7639:	c3                   	ret

000000000000763a <TkToOp>:
    763a:	55                   	push   %rbp
    763b:	48 89 e5             	mov    %rsp,%rbp
    763e:	89 7d fc             	mov    %edi,-0x4(%rbp)
    7641:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7644:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    764b:	00 
    764c:	48 8d 05 cd 69 00 00 	lea    0x69cd(%rip),%rax        # e020 <token_ops.27>
    7653:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    7656:	5d                   	pop    %rbp
    7657:	c3                   	ret

0000000000007658 <LocalAssign>:
    7658:	55                   	push   %rbp
    7659:	48 89 e5             	mov    %rsp,%rbp
    765c:	48 83 ec 40          	sub    $0x40,%rsp
    7660:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    7664:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    7668:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    766c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7673:	00 00 
    7675:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7679:	31 c0                	xor    %eax,%eax
    767b:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    7682:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    7686:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    768a:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    768e:	48 89 ce             	mov    %rcx,%rsi
    7691:	48 89 c7             	mov    %rax,%rdi
    7694:	e8 1d fd ff ff       	call   73b6 <LocalGet>
    7699:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    769d:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    76a2:	75 26                	jne    76ca <LocalAssign+0x72>
    76a4:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    76a8:	8b 48 08             	mov    0x8(%rax),%ecx
    76ab:	48 8b 78 10          	mov    0x10(%rax),%rdi
    76af:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    76b3:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    76b7:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    76bb:	49 89 f8             	mov    %rdi,%r8
    76be:	48 89 c7             	mov    %rax,%rdi
    76c1:	e8 6c fc ff ff       	call   7332 <LocalPush>
    76c6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    76ca:	8b 45 ec             	mov    -0x14(%rbp),%eax
    76cd:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    76d1:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    76d8:	00 00 
    76da:	74 05                	je     76e1 <LocalAssign+0x89>
    76dc:	e8 1f cb ff ff       	call   4200 <__stack_chk_fail@plt>
    76e1:	c9                   	leave
    76e2:	c3                   	ret

00000000000076e3 <GlobalAssignConst>:
    76e3:	55                   	push   %rbp
    76e4:	48 89 e5             	mov    %rsp,%rbp
    76e7:	48 83 ec 20          	sub    $0x20,%rsp
    76eb:	89 7d ec             	mov    %edi,-0x14(%rbp)
    76ee:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    76f2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    76f6:	8b 50 08             	mov    0x8(%rax),%edx
    76f9:	48 8b 40 10          	mov    0x10(%rax),%rax
    76fd:	89 d7                	mov    %edx,%edi
    76ff:	48 89 c6             	mov    %rax,%rsi
    7702:	e8 e0 fb ff ff       	call   72e7 <ConstPush>
    7707:	89 45 f8             	mov    %eax,-0x8(%rbp)
    770a:	8b 45 f8             	mov    -0x8(%rbp),%eax
    770d:	0f b6 d0             	movzbl %al,%edx
    7710:	8b 45 ec             	mov    -0x14(%rbp),%eax
    7713:	0f b6 c0             	movzbl %al,%eax
    7716:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    771c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    7722:	b9 01 00 00 00       	mov    $0x1,%ecx
    7727:	89 c6                	mov    %eax,%esi
    7729:	bf 1a 00 00 00       	mov    $0x1a,%edi
    772e:	e8 21 fe ff ff       	call   7554 <OpPush>
    7733:	89 45 fc             	mov    %eax,-0x4(%rbp)
    7736:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7739:	c9                   	leave
    773a:	c3                   	ret

000000000000773b <GlobalAssignRef>:
    773b:	55                   	push   %rbp
    773c:	48 89 e5             	mov    %rsp,%rbp
    773f:	53                   	push   %rbx
    7740:	48 83 ec 48          	sub    $0x48,%rsp
    7744:	89 7d bc             	mov    %edi,-0x44(%rbp)
    7747:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    774b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7752:	00 00 
    7754:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    7758:	31 c0                	xor    %eax,%eax
    775a:	e8 d5 fa ff ff       	call   7234 <GetCompiler>
    775f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    7763:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    776a:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    776e:	48 8b 50 10          	mov    0x10(%rax),%rdx
    7772:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    7776:	48 8b 08             	mov    (%rax),%rcx
    7779:	48 8d 45 cc          	lea    -0x34(%rbp),%rax
    777d:	48 89 ce             	mov    %rcx,%rsi
    7780:	48 89 c7             	mov    %rax,%rdi
    7783:	e8 2e fc ff ff       	call   73b6 <LocalGet>
    7788:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    778c:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    7791:	74 2e                	je     77c1 <GlobalAssignRef+0x86>
    7793:	8b 45 cc             	mov    -0x34(%rbp),%eax
    7796:	0f b6 d0             	movzbl %al,%edx
    7799:	8b 45 bc             	mov    -0x44(%rbp),%eax
    779c:	0f b6 c0             	movzbl %al,%eax
    779f:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    77a5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    77ab:	b9 00 00 00 00       	mov    $0x0,%ecx
    77b0:	89 c6                	mov    %eax,%esi
    77b2:	bf 1a 00 00 00       	mov    $0x1a,%edi
    77b7:	e8 98 fd ff ff       	call   7554 <OpPush>
    77bc:	e9 8a 00 00 00       	jmp    784b <GlobalAssignRef+0x110>
    77c1:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    77c5:	48 8b 50 10          	mov    0x10(%rax),%rdx
    77c9:	48 8d 45 cc          	lea    -0x34(%rbp),%rax
    77cd:	48 89 d6             	mov    %rdx,%rsi
    77d0:	48 89 c7             	mov    %rax,%rdi
    77d3:	e8 14 fd ff ff       	call   74ec <GlobalGet>
    77d8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    77dc:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    77e1:	74 2b                	je     780e <GlobalAssignRef+0xd3>
    77e3:	8b 45 cc             	mov    -0x34(%rbp),%eax
    77e6:	0f b6 d0             	movzbl %al,%edx
    77e9:	8b 45 bc             	mov    -0x44(%rbp),%eax
    77ec:	0f b6 c0             	movzbl %al,%eax
    77ef:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    77f5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    77fb:	b9 02 00 00 00       	mov    $0x2,%ecx
    7800:	89 c6                	mov    %eax,%esi
    7802:	bf 1a 00 00 00       	mov    $0x1a,%edi
    7807:	e8 48 fd ff ff       	call   7554 <OpPush>
    780c:	eb 3d                	jmp    784b <GlobalAssignRef+0x110>
    780e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    7812:	48 8b 40 10          	mov    0x10(%rax),%rax
    7816:	8b 18                	mov    (%rax),%ebx
    7818:	e8 d9 cb ff ff       	call   43f6 <GetStrings>
    781d:	89 de                	mov    %ebx,%esi
    781f:	48 89 c7             	mov    %rax,%rdi
    7822:	e8 f9 cc ff ff       	call   4520 <ArenaOff>
    7827:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    782b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    782f:	48 89 c6             	mov    %rax,%rsi
    7832:	48 8d 05 4f 38 00 00 	lea    0x384f(%rip),%rax        # b088 <_IO_stdin_used+0x88>
    7839:	48 89 c7             	mov    %rax,%rdi
    783c:	b8 00 00 00 00       	mov    $0x0,%eax
    7841:	e8 e2 d6 ff ff       	call   4f28 <Throw>
    7846:	b8 00 00 00 00       	mov    $0x0,%eax
    784b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    784f:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    7856:	00 00 
    7858:	74 05                	je     785f <GlobalAssignRef+0x124>
    785a:	e8 a1 c9 ff ff       	call   4200 <__stack_chk_fail@plt>
    785f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7863:	c9                   	leave
    7864:	c3                   	ret

0000000000007865 <GlobalAssignCall>:
    7865:	55                   	push   %rbp
    7866:	48 89 e5             	mov    %rsp,%rbp
    7869:	89 7d fc             	mov    %edi,-0x4(%rbp)
    786c:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    7870:	b8 00 00 00 00       	mov    $0x0,%eax
    7875:	5d                   	pop    %rbp
    7876:	c3                   	ret

0000000000007877 <GlobalAssign>:
    7877:	55                   	push   %rbp
    7878:	48 89 e5             	mov    %rsp,%rbp
    787b:	48 83 ec 20          	sub    $0x20,%rsp
    787f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7883:	89 75 f4             	mov    %esi,-0xc(%rbp)
    7886:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    788a:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    788e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    7893:	75 1f                	jne    78b4 <GlobalAssign+0x3d>
    7895:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7899:	8b 50 08             	mov    0x8(%rax),%edx
    789c:	48 8b 48 10          	mov    0x10(%rax),%rcx
    78a0:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    78a4:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    78a8:	48 89 c7             	mov    %rax,%rdi
    78ab:	e8 89 fb ff ff       	call   7439 <GlobalPush>
    78b0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    78b4:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    78b8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    78bc:	48 8b 50 10          	mov    0x10(%rax),%rdx
    78c0:	48 8b 40 08          	mov    0x8(%rax),%rax
    78c4:	48 89 41 08          	mov    %rax,0x8(%rcx)
    78c8:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    78cc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    78d0:	8b 00                	mov    (%rax),%eax
    78d2:	89 c0                	mov    %eax,%eax
    78d4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    78db:	00 
    78dc:	48 8d 05 0d 74 00 00 	lea    0x740d(%rip),%rax        # ecf0 <types.35>
    78e3:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    78e7:	90                   	nop
    78e8:	ff e0                	jmp    *%rax
    78ea:	f3 0f 1e fa          	endbr64
    78ee:	8b 45 f4             	mov    -0xc(%rbp),%eax
    78f1:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    78f5:	48 89 d6             	mov    %rdx,%rsi
    78f8:	89 c7                	mov    %eax,%edi
    78fa:	e8 e4 fd ff ff       	call   76e3 <GlobalAssignConst>
    78ff:	eb 2c                	jmp    792d <GlobalAssign+0xb6>
    7901:	f3 0f 1e fa          	endbr64
    7905:	8b 45 f4             	mov    -0xc(%rbp),%eax
    7908:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    790c:	48 89 d6             	mov    %rdx,%rsi
    790f:	89 c7                	mov    %eax,%edi
    7911:	e8 25 fe ff ff       	call   773b <GlobalAssignRef>
    7916:	eb 15                	jmp    792d <GlobalAssign+0xb6>
    7918:	f3 0f 1e fa          	endbr64
    791c:	8b 45 f4             	mov    -0xc(%rbp),%eax
    791f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    7923:	48 89 d6             	mov    %rdx,%rsi
    7926:	89 c7                	mov    %eax,%edi
    7928:	e8 38 ff ff ff       	call   7865 <GlobalAssignCall>
    792d:	c9                   	leave
    792e:	c3                   	ret

000000000000792f <CompileAssign>:
    792f:	f3 0f 1e fa          	endbr64
    7933:	55                   	push   %rbp
    7934:	48 89 e5             	mov    %rsp,%rbp
    7937:	48 83 ec 30          	sub    $0x30,%rsp
    793b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    793f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    7943:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    794a:	00 00 
    794c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7950:	31 c0                	xor    %eax,%eax
    7952:	e8 dd f8 ff ff       	call   7234 <GetCompiler>
    7957:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    795b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    795f:	48 8b 00             	mov    (%rax),%rax
    7962:	48 85 c0             	test   %rax,%rax
    7965:	75 1f                	jne    7986 <CompileAssign+0x57>
    7967:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    796b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    796f:	48 89 d1             	mov    %rdx,%rcx
    7972:	48 89 c2             	mov    %rax,%rdx
    7975:	be 00 00 00 00       	mov    $0x0,%esi
    797a:	bf 00 00 00 00       	mov    $0x0,%edi
    797f:	e8 f3 fe ff ff       	call   7877 <GlobalAssign>
    7984:	eb 58                	jmp    79de <CompileAssign+0xaf>
    7986:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    798d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7991:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
    7995:	48 89 d6             	mov    %rdx,%rsi
    7998:	48 89 c7             	mov    %rax,%rdi
    799b:	e8 4c fb ff ff       	call   74ec <GlobalGet>
    79a0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    79a4:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    79a9:	74 19                	je     79c4 <CompileAssign+0x95>
    79ab:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    79ae:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    79b2:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    79b6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    79ba:	48 89 c7             	mov    %rax,%rdi
    79bd:	e8 b5 fe ff ff       	call   7877 <GlobalAssign>
    79c2:	eb 1a                	jmp    79de <CompileAssign+0xaf>
    79c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    79c8:	48 8b 00             	mov    (%rax),%rax
    79cb:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    79cf:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    79d3:	48 89 ce             	mov    %rcx,%rsi
    79d6:	48 89 c7             	mov    %rax,%rdi
    79d9:	e8 7a fc ff ff       	call   7658 <LocalAssign>
    79de:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    79e2:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    79e9:	00 00 
    79eb:	74 05                	je     79f2 <CompileAssign+0xc3>
    79ed:	e8 0e c8 ff ff       	call   4200 <__stack_chk_fail@plt>
    79f2:	c9                   	leave
    79f3:	c3                   	ret

00000000000079f4 <EvalUnaErr>:
    79f4:	f3 0f 1e fa          	endbr64
    79f8:	55                   	push   %rbp
    79f9:	48 89 e5             	mov    %rsp,%rbp
    79fc:	53                   	push   %rbx
    79fd:	48 83 ec 18          	sub    $0x18,%rsp
    7a01:	89 7d ec             	mov    %edi,-0x14(%rbp)
    7a04:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7a08:	8b 45 ec             	mov    -0x14(%rbp),%eax
    7a0b:	89 c6                	mov    %eax,%esi
    7a0d:	48 8d 05 9b 36 00 00 	lea    0x369b(%rip),%rax        # b0af <_IO_stdin_used+0xaf>
    7a14:	48 89 c7             	mov    %rax,%rdi
    7a17:	b8 00 00 00 00       	mov    $0x0,%eax
    7a1c:	e8 07 d5 ff ff       	call   4f28 <Throw>
    7a21:	b8 00 00 00 00       	mov    $0x0,%eax
    7a26:	ba 00 00 00 00       	mov    $0x0,%edx
    7a2b:	48 89 c6             	mov    %rax,%rsi
    7a2e:	48 89 d7             	mov    %rdx,%rdi
    7a31:	48 89 c1             	mov    %rax,%rcx
    7a34:	48 89 d3             	mov    %rdx,%rbx
    7a37:	89 f0                	mov    %esi,%eax
    7a39:	48 89 da             	mov    %rbx,%rdx
    7a3c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7a40:	c9                   	leave
    7a41:	c3                   	ret

0000000000007a42 <EvalNot>:
    7a42:	f3 0f 1e fa          	endbr64
    7a46:	55                   	push   %rbp
    7a47:	48 89 e5             	mov    %rsp,%rbp
    7a4a:	53                   	push   %rbx
    7a4b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7a4f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7a53:	8b 09                	mov    (%rcx),%ecx
    7a55:	89 c9                	mov    %ecx,%ecx
    7a57:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7a5e:	00 
    7a5f:	48 8d 0d aa 72 00 00 	lea    0x72aa(%rip),%rcx        # ed10 <types.34>
    7a66:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7a6a:	90                   	nop
    7a6b:	ff e1                	jmp    *%rcx
    7a6d:	f3 0f 1e fa          	endbr64
    7a71:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7a75:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7a79:	48 85 c9             	test   %rcx,%rcx
    7a7c:	0f 94 c1             	sete   %cl
    7a7f:	0f b6 c9             	movzbl %cl,%ecx
    7a82:	48 89 c7             	mov    %rax,%rdi
    7a85:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7a8c:	ff ff ff 
    7a8f:	48 21 fe             	and    %rdi,%rsi
    7a92:	48 89 f0             	mov    %rsi,%rax
    7a95:	48 89 ca             	mov    %rcx,%rdx
    7a98:	eb 73                	jmp    7b0d <EvalNot+0xcb>
    7a9a:	f3 0f 1e fa          	endbr64
    7a9e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7aa2:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7aa7:	66 0f ef c9          	pxor   %xmm1,%xmm1
    7aab:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7aaf:	7a 14                	jp     7ac5 <EvalNot+0x83>
    7ab1:	66 0f ef c9          	pxor   %xmm1,%xmm1
    7ab5:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7ab9:	75 0a                	jne    7ac5 <EvalNot+0x83>
    7abb:	f2 0f 10 05 35 36 00 	movsd  0x3635(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    7ac2:	00 
    7ac3:	eb 04                	jmp    7ac9 <EvalNot+0x87>
    7ac5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7ac9:	48 89 c6             	mov    %rax,%rsi
    7acc:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7ad3:	ff ff ff 
    7ad6:	48 21 f1             	and    %rsi,%rcx
    7ad9:	48 83 c9 01          	or     $0x1,%rcx
    7add:	48 89 c8             	mov    %rcx,%rax
    7ae0:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7ae5:	eb 26                	jmp    7b0d <EvalNot+0xcb>
    7ae7:	f3 0f 1e fa          	endbr64
    7aeb:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7aef:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7af3:	48 89 c7             	mov    %rax,%rdi
    7af6:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7afd:	ff ff ff 
    7b00:	48 21 f9             	and    %rdi,%rcx
    7b03:	48 83 c9 02          	or     $0x2,%rcx
    7b07:	48 89 c8             	mov    %rcx,%rax
    7b0a:	48 89 f2             	mov    %rsi,%rdx
    7b0d:	48 89 c6             	mov    %rax,%rsi
    7b10:	48 89 d7             	mov    %rdx,%rdi
    7b13:	48 89 c1             	mov    %rax,%rcx
    7b16:	48 89 d3             	mov    %rdx,%rbx
    7b19:	89 f0                	mov    %esi,%eax
    7b1b:	48 89 da             	mov    %rbx,%rdx
    7b1e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7b22:	c9                   	leave
    7b23:	c3                   	ret

0000000000007b24 <EvalBnot>:
    7b24:	f3 0f 1e fa          	endbr64
    7b28:	55                   	push   %rbp
    7b29:	48 89 e5             	mov    %rsp,%rbp
    7b2c:	53                   	push   %rbx
    7b2d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7b31:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7b35:	8b 09                	mov    (%rcx),%ecx
    7b37:	89 c9                	mov    %ecx,%ecx
    7b39:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7b40:	00 
    7b41:	48 8d 0d e8 71 00 00 	lea    0x71e8(%rip),%rcx        # ed30 <types.33>
    7b48:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7b4c:	90                   	nop
    7b4d:	ff e1                	jmp    *%rcx
    7b4f:	f3 0f 1e fa          	endbr64
    7b53:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7b57:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7b5b:	48 f7 d1             	not    %rcx
    7b5e:	48 89 c7             	mov    %rax,%rdi
    7b61:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7b68:	ff ff ff 
    7b6b:	48 21 fe             	and    %rdi,%rsi
    7b6e:	48 89 f0             	mov    %rsi,%rax
    7b71:	48 89 ca             	mov    %rcx,%rdx
    7b74:	eb 62                	jmp    7bd8 <EvalBnot+0xb4>
    7b76:	f3 0f 1e fa          	endbr64
    7b7a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7b7e:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7b83:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    7b88:	48 f7 d1             	not    %rcx
    7b8b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7b8f:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    7b94:	48 89 c6             	mov    %rax,%rsi
    7b97:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7b9e:	ff ff ff 
    7ba1:	48 21 f1             	and    %rsi,%rcx
    7ba4:	48 83 c9 01          	or     $0x1,%rcx
    7ba8:	48 89 c8             	mov    %rcx,%rax
    7bab:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7bb0:	eb 26                	jmp    7bd8 <EvalBnot+0xb4>
    7bb2:	f3 0f 1e fa          	endbr64
    7bb6:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7bba:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7bbe:	48 89 c7             	mov    %rax,%rdi
    7bc1:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7bc8:	ff ff ff 
    7bcb:	48 21 f9             	and    %rdi,%rcx
    7bce:	48 83 c9 02          	or     $0x2,%rcx
    7bd2:	48 89 c8             	mov    %rcx,%rax
    7bd5:	48 89 f2             	mov    %rsi,%rdx
    7bd8:	48 89 c6             	mov    %rax,%rsi
    7bdb:	48 89 d7             	mov    %rdx,%rdi
    7bde:	48 89 c1             	mov    %rax,%rcx
    7be1:	48 89 d3             	mov    %rdx,%rbx
    7be4:	89 f0                	mov    %esi,%eax
    7be6:	48 89 da             	mov    %rbx,%rdx
    7be9:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7bed:	c9                   	leave
    7bee:	c3                   	ret

0000000000007bef <EvalPlus>:
    7bef:	f3 0f 1e fa          	endbr64
    7bf3:	55                   	push   %rbp
    7bf4:	48 89 e5             	mov    %rsp,%rbp
    7bf7:	53                   	push   %rbx
    7bf8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7bfc:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7c00:	8b 09                	mov    (%rcx),%ecx
    7c02:	89 c9                	mov    %ecx,%ecx
    7c04:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7c0b:	00 
    7c0c:	48 8d 0d 3d 71 00 00 	lea    0x713d(%rip),%rcx        # ed50 <types.32>
    7c13:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7c17:	90                   	nop
    7c18:	ff e1                	jmp    *%rcx
    7c1a:	f3 0f 1e fa          	endbr64
    7c1e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7c22:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7c26:	48 89 c7             	mov    %rax,%rdi
    7c29:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7c30:	ff ff ff 
    7c33:	48 21 fe             	and    %rdi,%rsi
    7c36:	48 89 f0             	mov    %rsi,%rax
    7c39:	48 89 ca             	mov    %rcx,%rdx
    7c3c:	eb 51                	jmp    7c8f <EvalPlus+0xa0>
    7c3e:	f3 0f 1e fa          	endbr64
    7c42:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7c46:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7c4b:	48 89 c6             	mov    %rax,%rsi
    7c4e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7c55:	ff ff ff 
    7c58:	48 21 f1             	and    %rsi,%rcx
    7c5b:	48 83 c9 01          	or     $0x1,%rcx
    7c5f:	48 89 c8             	mov    %rcx,%rax
    7c62:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7c67:	eb 26                	jmp    7c8f <EvalPlus+0xa0>
    7c69:	f3 0f 1e fa          	endbr64
    7c6d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7c71:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7c75:	48 89 c7             	mov    %rax,%rdi
    7c78:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7c7f:	ff ff ff 
    7c82:	48 21 f9             	and    %rdi,%rcx
    7c85:	48 83 c9 02          	or     $0x2,%rcx
    7c89:	48 89 c8             	mov    %rcx,%rax
    7c8c:	48 89 f2             	mov    %rsi,%rdx
    7c8f:	48 89 c6             	mov    %rax,%rsi
    7c92:	48 89 d7             	mov    %rdx,%rdi
    7c95:	48 89 c1             	mov    %rax,%rcx
    7c98:	48 89 d3             	mov    %rdx,%rbx
    7c9b:	89 f0                	mov    %esi,%eax
    7c9d:	48 89 da             	mov    %rbx,%rdx
    7ca0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7ca4:	c9                   	leave
    7ca5:	c3                   	ret

0000000000007ca6 <EvalMinus>:
    7ca6:	f3 0f 1e fa          	endbr64
    7caa:	55                   	push   %rbp
    7cab:	48 89 e5             	mov    %rsp,%rbp
    7cae:	53                   	push   %rbx
    7caf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7cb3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7cb7:	8b 09                	mov    (%rcx),%ecx
    7cb9:	89 c9                	mov    %ecx,%ecx
    7cbb:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7cc2:	00 
    7cc3:	48 8d 0d a6 70 00 00 	lea    0x70a6(%rip),%rcx        # ed70 <types.31>
    7cca:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7cce:	90                   	nop
    7ccf:	ff e1                	jmp    *%rcx
    7cd1:	f3 0f 1e fa          	endbr64
    7cd5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7cd9:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7cdd:	48 f7 d9             	neg    %rcx
    7ce0:	48 89 c7             	mov    %rax,%rdi
    7ce3:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7cea:	ff ff ff 
    7ced:	48 21 fe             	and    %rdi,%rsi
    7cf0:	48 89 f0             	mov    %rsi,%rax
    7cf3:	48 89 ca             	mov    %rcx,%rdx
    7cf6:	eb 5d                	jmp    7d55 <EvalMinus+0xaf>
    7cf8:	f3 0f 1e fa          	endbr64
    7cfc:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7d00:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7d05:	f3 0f 7e 0d f3 33 00 	movq   0x33f3(%rip),%xmm1        # b100 <_IO_stdin_used+0x100>
    7d0c:	00 
    7d0d:	66 0f 57 c1          	xorpd  %xmm1,%xmm0
    7d11:	48 89 c6             	mov    %rax,%rsi
    7d14:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7d1b:	ff ff ff 
    7d1e:	48 21 f1             	and    %rsi,%rcx
    7d21:	48 83 c9 01          	or     $0x1,%rcx
    7d25:	48 89 c8             	mov    %rcx,%rax
    7d28:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7d2d:	eb 26                	jmp    7d55 <EvalMinus+0xaf>
    7d2f:	f3 0f 1e fa          	endbr64
    7d33:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7d37:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7d3b:	48 89 c7             	mov    %rax,%rdi
    7d3e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7d45:	ff ff ff 
    7d48:	48 21 f9             	and    %rdi,%rcx
    7d4b:	48 83 c9 02          	or     $0x2,%rcx
    7d4f:	48 89 c8             	mov    %rcx,%rax
    7d52:	48 89 f2             	mov    %rsi,%rdx
    7d55:	48 89 c6             	mov    %rax,%rsi
    7d58:	48 89 d7             	mov    %rdx,%rdi
    7d5b:	48 89 c1             	mov    %rax,%rcx
    7d5e:	48 89 d3             	mov    %rdx,%rbx
    7d61:	89 f0                	mov    %esi,%eax
    7d63:	48 89 da             	mov    %rbx,%rdx
    7d66:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7d6a:	c9                   	leave
    7d6b:	c3                   	ret

0000000000007d6c <EvalInc>:
    7d6c:	f3 0f 1e fa          	endbr64
    7d70:	55                   	push   %rbp
    7d71:	48 89 e5             	mov    %rsp,%rbp
    7d74:	53                   	push   %rbx
    7d75:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7d79:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7d7d:	8b 09                	mov    (%rcx),%ecx
    7d7f:	89 c9                	mov    %ecx,%ecx
    7d81:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7d88:	00 
    7d89:	48 8d 0d 00 70 00 00 	lea    0x7000(%rip),%rcx        # ed90 <types.30>
    7d90:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7d94:	90                   	nop
    7d95:	ff e1                	jmp    *%rcx
    7d97:	f3 0f 1e fa          	endbr64
    7d9b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7d9f:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7da3:	48 83 c1 01          	add    $0x1,%rcx
    7da7:	48 89 c7             	mov    %rax,%rdi
    7daa:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7db1:	ff ff ff 
    7db4:	48 21 fe             	and    %rdi,%rsi
    7db7:	48 89 f0             	mov    %rsi,%rax
    7dba:	48 89 ca             	mov    %rcx,%rdx
    7dbd:	eb 5d                	jmp    7e1c <EvalInc+0xb0>
    7dbf:	f3 0f 1e fa          	endbr64
    7dc3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7dc7:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    7dcc:	f2 0f 10 05 24 33 00 	movsd  0x3324(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    7dd3:	00 
    7dd4:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    7dd8:	48 89 c6             	mov    %rax,%rsi
    7ddb:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7de2:	ff ff ff 
    7de5:	48 21 f1             	and    %rsi,%rcx
    7de8:	48 83 c9 01          	or     $0x1,%rcx
    7dec:	48 89 c8             	mov    %rcx,%rax
    7def:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7df4:	eb 26                	jmp    7e1c <EvalInc+0xb0>
    7df6:	f3 0f 1e fa          	endbr64
    7dfa:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7dfe:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7e02:	48 89 c7             	mov    %rax,%rdi
    7e05:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7e0c:	ff ff ff 
    7e0f:	48 21 f9             	and    %rdi,%rcx
    7e12:	48 83 c9 02          	or     $0x2,%rcx
    7e16:	48 89 c8             	mov    %rcx,%rax
    7e19:	48 89 f2             	mov    %rsi,%rdx
    7e1c:	48 89 c6             	mov    %rax,%rsi
    7e1f:	48 89 d7             	mov    %rdx,%rdi
    7e22:	48 89 c1             	mov    %rax,%rcx
    7e25:	48 89 d3             	mov    %rdx,%rbx
    7e28:	89 f0                	mov    %esi,%eax
    7e2a:	48 89 da             	mov    %rbx,%rdx
    7e2d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7e31:	c9                   	leave
    7e32:	c3                   	ret

0000000000007e33 <EvalDec>:
    7e33:	f3 0f 1e fa          	endbr64
    7e37:	55                   	push   %rbp
    7e38:	48 89 e5             	mov    %rsp,%rbp
    7e3b:	53                   	push   %rbx
    7e3c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7e40:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7e44:	8b 09                	mov    (%rcx),%ecx
    7e46:	89 c9                	mov    %ecx,%ecx
    7e48:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7e4f:	00 
    7e50:	48 8d 0d 59 6f 00 00 	lea    0x6f59(%rip),%rcx        # edb0 <types.29>
    7e57:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7e5b:	90                   	nop
    7e5c:	ff e1                	jmp    *%rcx
    7e5e:	f3 0f 1e fa          	endbr64
    7e62:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7e66:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7e6a:	48 83 e9 01          	sub    $0x1,%rcx
    7e6e:	48 89 c7             	mov    %rax,%rdi
    7e71:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7e78:	ff ff ff 
    7e7b:	48 21 fe             	and    %rdi,%rsi
    7e7e:	48 89 f0             	mov    %rsi,%rax
    7e81:	48 89 ca             	mov    %rcx,%rdx
    7e84:	eb 5d                	jmp    7ee3 <EvalDec+0xb0>
    7e86:	f3 0f 1e fa          	endbr64
    7e8a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7e8e:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7e93:	f2 0f 10 0d 5d 32 00 	movsd  0x325d(%rip),%xmm1        # b0f8 <_IO_stdin_used+0xf8>
    7e9a:	00 
    7e9b:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    7e9f:	48 89 c6             	mov    %rax,%rsi
    7ea2:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7ea9:	ff ff ff 
    7eac:	48 21 f1             	and    %rsi,%rcx
    7eaf:	48 83 c9 01          	or     $0x1,%rcx
    7eb3:	48 89 c8             	mov    %rcx,%rax
    7eb6:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7ebb:	eb 26                	jmp    7ee3 <EvalDec+0xb0>
    7ebd:	f3 0f 1e fa          	endbr64
    7ec1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7ec5:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7ec9:	48 89 c7             	mov    %rax,%rdi
    7ecc:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7ed3:	ff ff ff 
    7ed6:	48 21 f9             	and    %rdi,%rcx
    7ed9:	48 83 c9 02          	or     $0x2,%rcx
    7edd:	48 89 c8             	mov    %rcx,%rax
    7ee0:	48 89 f2             	mov    %rsi,%rdx
    7ee3:	48 89 c6             	mov    %rax,%rsi
    7ee6:	48 89 d7             	mov    %rdx,%rdi
    7ee9:	48 89 c1             	mov    %rax,%rcx
    7eec:	48 89 d3             	mov    %rdx,%rbx
    7eef:	89 f0                	mov    %esi,%eax
    7ef1:	48 89 da             	mov    %rbx,%rdx
    7ef4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7ef8:	c9                   	leave
    7ef9:	c3                   	ret

0000000000007efa <UnaFold>:
    7efa:	55                   	push   %rbp
    7efb:	48 89 e5             	mov    %rsp,%rbp
    7efe:	53                   	push   %rbx
    7eff:	48 83 ec 18          	sub    $0x18,%rsp
    7f03:	89 7d ec             	mov    %edi,-0x14(%rbp)
    7f06:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7f0a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    7f0d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7f14:	00 
    7f15:	48 8d 05 e4 6e 00 00 	lea    0x6ee4(%rip),%rax        # ee00 <ops.26>
    7f1c:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    7f20:	90                   	nop
    7f21:	ff e0                	jmp    *%rax
    7f23:	f3 0f 1e fa          	endbr64
    7f27:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7f2b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    7f2f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    7f32:	48 89 d6             	mov    %rdx,%rsi
    7f35:	89 c7                	mov    %eax,%edi
    7f37:	e8 b8 fa ff ff       	call   79f4 <EvalUnaErr>
    7f3c:	48 89 d1             	mov    %rdx,%rcx
    7f3f:	48 89 ca             	mov    %rcx,%rdx
    7f42:	e9 a9 00 00 00       	jmp    7ff0 <UnaFold+0xf6>
    7f47:	f3 0f 1e fa          	endbr64
    7f4b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7f4f:	48 83 c0 08          	add    $0x8,%rax
    7f53:	48 89 c7             	mov    %rax,%rdi
    7f56:	e8 e7 fa ff ff       	call   7a42 <EvalNot>
    7f5b:	48 89 d1             	mov    %rdx,%rcx
    7f5e:	48 89 ca             	mov    %rcx,%rdx
    7f61:	e9 8a 00 00 00       	jmp    7ff0 <UnaFold+0xf6>
    7f66:	f3 0f 1e fa          	endbr64
    7f6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7f6e:	48 83 c0 08          	add    $0x8,%rax
    7f72:	48 89 c7             	mov    %rax,%rdi
    7f75:	e8 aa fb ff ff       	call   7b24 <EvalBnot>
    7f7a:	48 89 d1             	mov    %rdx,%rcx
    7f7d:	48 89 ca             	mov    %rcx,%rdx
    7f80:	eb 6e                	jmp    7ff0 <UnaFold+0xf6>
    7f82:	f3 0f 1e fa          	endbr64
    7f86:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7f8a:	48 83 c0 08          	add    $0x8,%rax
    7f8e:	48 89 c7             	mov    %rax,%rdi
    7f91:	e8 59 fc ff ff       	call   7bef <EvalPlus>
    7f96:	48 89 d1             	mov    %rdx,%rcx
    7f99:	48 89 ca             	mov    %rcx,%rdx
    7f9c:	eb 52                	jmp    7ff0 <UnaFold+0xf6>
    7f9e:	f3 0f 1e fa          	endbr64
    7fa2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7fa6:	48 83 c0 08          	add    $0x8,%rax
    7faa:	48 89 c7             	mov    %rax,%rdi
    7fad:	e8 f4 fc ff ff       	call   7ca6 <EvalMinus>
    7fb2:	48 89 d1             	mov    %rdx,%rcx
    7fb5:	48 89 ca             	mov    %rcx,%rdx
    7fb8:	eb 36                	jmp    7ff0 <UnaFold+0xf6>
    7fba:	f3 0f 1e fa          	endbr64
    7fbe:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7fc2:	48 83 c0 08          	add    $0x8,%rax
    7fc6:	48 89 c7             	mov    %rax,%rdi
    7fc9:	e8 9e fd ff ff       	call   7d6c <EvalInc>
    7fce:	48 89 d1             	mov    %rdx,%rcx
    7fd1:	48 89 ca             	mov    %rcx,%rdx
    7fd4:	eb 1a                	jmp    7ff0 <UnaFold+0xf6>
    7fd6:	f3 0f 1e fa          	endbr64
    7fda:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7fde:	48 83 c0 08          	add    $0x8,%rax
    7fe2:	48 89 c7             	mov    %rax,%rdi
    7fe5:	e8 49 fe ff ff       	call   7e33 <EvalDec>
    7fea:	48 89 d1             	mov    %rdx,%rcx
    7fed:	48 89 ca             	mov    %rcx,%rdx
    7ff0:	48 89 c6             	mov    %rax,%rsi
    7ff3:	48 89 d7             	mov    %rdx,%rdi
    7ff6:	48 89 c1             	mov    %rax,%rcx
    7ff9:	48 89 d3             	mov    %rdx,%rbx
    7ffc:	89 f0                	mov    %esi,%eax
    7ffe:	48 89 da             	mov    %rbx,%rdx
    8001:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8005:	c9                   	leave
    8006:	c3                   	ret

0000000000008007 <UnaConst>:
    8007:	55                   	push   %rbp
    8008:	48 89 e5             	mov    %rsp,%rbp
    800b:	48 83 ec 40          	sub    $0x40,%rsp
    800f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    8013:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    8016:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    801a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    801e:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    8022:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    8027:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    802b:	8b 40 08             	mov    0x8(%rax),%eax
    802e:	89 45 e8             	mov    %eax,-0x18(%rbp)
    8031:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    8035:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    8038:	48 89 d6             	mov    %rdx,%rsi
    803b:	89 c7                	mov    %eax,%edi
    803d:	e8 b8 fe ff ff       	call   7efa <UnaFold>
    8042:	89 c1                	mov    %eax,%ecx
    8044:	48 89 d0             	mov    %rdx,%rax
    8047:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    804a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    804e:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    8052:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    8056:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    805a:	48 89 01             	mov    %rax,(%rcx)
    805d:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    8061:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    8065:	48 89 41 10          	mov    %rax,0x10(%rcx)
    8069:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    806d:	c9                   	leave
    806e:	c3                   	ret

000000000000806f <UnaRef>:
    806f:	55                   	push   %rbp
    8070:	48 89 e5             	mov    %rsp,%rbp
    8073:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    8077:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    807a:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    807e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8082:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8086:	0f 11 00             	movups %xmm0,(%rax)
    8089:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    808e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8092:	5d                   	pop    %rbp
    8093:	c3                   	ret

0000000000008094 <UnaCall>:
    8094:	55                   	push   %rbp
    8095:	48 89 e5             	mov    %rsp,%rbp
    8098:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    809c:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    809f:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    80a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    80a7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    80ab:	0f 11 00             	movups %xmm0,(%rax)
    80ae:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    80b3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    80b7:	5d                   	pop    %rbp
    80b8:	c3                   	ret

00000000000080b9 <CompileUna>:
    80b9:	f3 0f 1e fa          	endbr64
    80bd:	55                   	push   %rbp
    80be:	48 89 e5             	mov    %rsp,%rbp
    80c1:	48 83 ec 30          	sub    $0x30,%rsp
    80c5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    80c9:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    80cc:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    80d0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    80d7:	00 00 
    80d9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    80dd:	31 c0                	xor    %eax,%eax
    80df:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    80e2:	89 c7                	mov    %eax,%edi
    80e4:	e8 51 f5 ff ff       	call   763a <TkToOp>
    80e9:	89 45 f4             	mov    %eax,-0xc(%rbp)
    80ec:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    80f0:	8b 00                	mov    (%rax),%eax
    80f2:	89 c0                	mov    %eax,%eax
    80f4:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    80fb:	00 
    80fc:	48 8d 05 cd 6c 00 00 	lea    0x6ccd(%rip),%rax        # edd0 <irs.28>
    8103:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    8107:	90                   	nop
    8108:	ff e0                	jmp    *%rax
    810a:	f3 0f 1e fa          	endbr64
    810e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8112:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    8116:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    8119:	89 ce                	mov    %ecx,%esi
    811b:	48 89 c7             	mov    %rax,%rdi
    811e:	e8 e4 fe ff ff       	call   8007 <UnaConst>
    8123:	eb 34                	jmp    8159 <CompileUna+0xa0>
    8125:	f3 0f 1e fa          	endbr64
    8129:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    812d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    8131:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    8134:	89 ce                	mov    %ecx,%esi
    8136:	48 89 c7             	mov    %rax,%rdi
    8139:	e8 31 ff ff ff       	call   806f <UnaRef>
    813e:	eb 19                	jmp    8159 <CompileUna+0xa0>
    8140:	f3 0f 1e fa          	endbr64
    8144:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8148:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    814c:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    814f:	89 ce                	mov    %ecx,%esi
    8151:	48 89 c7             	mov    %rax,%rdi
    8154:	e8 3b ff ff ff       	call   8094 <UnaCall>
    8159:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    815d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    8164:	00 00 
    8166:	74 05                	je     816d <CompileUna+0xb4>
    8168:	e8 93 c0 ff ff       	call   4200 <__stack_chk_fail@plt>
    816d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8171:	c9                   	leave
    8172:	c3                   	ret

0000000000008173 <EvalBinErr>:
    8173:	55                   	push   %rbp
    8174:	48 89 e5             	mov    %rsp,%rbp
    8177:	53                   	push   %rbx
    8178:	48 83 ec 28          	sub    $0x28,%rsp
    817c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8180:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    8183:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    8187:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    818a:	89 c6                	mov    %eax,%esi
    818c:	48 8d 05 39 2f 00 00 	lea    0x2f39(%rip),%rax        # b0cc <_IO_stdin_used+0xcc>
    8193:	48 89 c7             	mov    %rax,%rdi
    8196:	b8 00 00 00 00       	mov    $0x0,%eax
    819b:	e8 88 cd ff ff       	call   4f28 <Throw>
    81a0:	b8 00 00 00 00       	mov    $0x0,%eax
    81a5:	ba 00 00 00 00       	mov    $0x0,%edx
    81aa:	48 89 c6             	mov    %rax,%rsi
    81ad:	48 89 d7             	mov    %rdx,%rdi
    81b0:	48 89 c1             	mov    %rax,%rcx
    81b3:	48 89 d3             	mov    %rdx,%rbx
    81b6:	89 f0                	mov    %esi,%eax
    81b8:	48 89 da             	mov    %rbx,%rdx
    81bb:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    81bf:	c9                   	leave
    81c0:	c3                   	ret

00000000000081c1 <EvalAdd>:
    81c1:	55                   	push   %rbp
    81c2:	48 89 e5             	mov    %rsp,%rbp
    81c5:	53                   	push   %rbx
    81c6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    81ca:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    81ce:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    81d2:	8b 09                	mov    (%rcx),%ecx
    81d4:	89 c9                	mov    %ecx,%ecx
    81d6:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    81dd:	00 
    81de:	48 8d 0d eb 6e 00 00 	lea    0x6eeb(%rip),%rcx        # f0d0 <ops.22>
    81e5:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    81e9:	90                   	nop
    81ea:	ff e1                	jmp    *%rcx
    81ec:	f3 0f 1e fa          	endbr64
    81f0:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    81f4:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    81f8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    81fc:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8200:	48 01 f1             	add    %rsi,%rcx
    8203:	48 89 c7             	mov    %rax,%rdi
    8206:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    820d:	ff ff ff 
    8210:	48 21 fe             	and    %rdi,%rsi
    8213:	48 89 f0             	mov    %rsi,%rax
    8216:	48 89 ca             	mov    %rcx,%rdx
    8219:	eb 6c                	jmp    8287 <EvalAdd+0xc6>
    821b:	f3 0f 1e fa          	endbr64
    821f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8223:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    8228:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    822c:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8231:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    8235:	48 89 c6             	mov    %rax,%rsi
    8238:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    823f:	ff ff ff 
    8242:	48 21 f1             	and    %rsi,%rcx
    8245:	48 83 c9 01          	or     $0x1,%rcx
    8249:	48 89 c8             	mov    %rcx,%rax
    824c:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8251:	eb 34                	jmp    8287 <EvalAdd+0xc6>
    8253:	f3 0f 1e fa          	endbr64
    8257:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    825b:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    825f:	8b 71 04             	mov    0x4(%rcx),%esi
    8262:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8266:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    826a:	8b 49 04             	mov    0x4(%rcx),%ecx
    826d:	01 f1                	add    %esi,%ecx
    826f:	89 ce                	mov    %ecx,%esi
    8271:	48 89 c7             	mov    %rax,%rdi
    8274:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    827b:	ff ff ff 
    827e:	48 21 f9             	and    %rdi,%rcx
    8281:	48 89 c8             	mov    %rcx,%rax
    8284:	48 89 f2             	mov    %rsi,%rdx
    8287:	48 89 c6             	mov    %rax,%rsi
    828a:	48 89 d7             	mov    %rdx,%rdi
    828d:	48 89 c1             	mov    %rax,%rcx
    8290:	48 89 d3             	mov    %rdx,%rbx
    8293:	89 f0                	mov    %esi,%eax
    8295:	48 89 da             	mov    %rbx,%rdx
    8298:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    829c:	c9                   	leave
    829d:	c3                   	ret

000000000000829e <EvalSub>:
    829e:	55                   	push   %rbp
    829f:	48 89 e5             	mov    %rsp,%rbp
    82a2:	53                   	push   %rbx
    82a3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    82a7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    82ab:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    82af:	8b 09                	mov    (%rcx),%ecx
    82b1:	89 c9                	mov    %ecx,%ecx
    82b3:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    82ba:	00 
    82bb:	48 8d 0d 2e 6e 00 00 	lea    0x6e2e(%rip),%rcx        # f0f0 <ops.21>
    82c2:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    82c6:	90                   	nop
    82c7:	ff e1                	jmp    *%rcx
    82c9:	f3 0f 1e fa          	endbr64
    82cd:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    82d1:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    82d5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    82d9:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    82dd:	48 29 ce             	sub    %rcx,%rsi
    82e0:	48 89 c7             	mov    %rax,%rdi
    82e3:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    82ea:	ff ff ff 
    82ed:	48 21 f9             	and    %rdi,%rcx
    82f0:	48 89 c8             	mov    %rcx,%rax
    82f3:	48 89 f2             	mov    %rsi,%rdx
    82f6:	eb 6c                	jmp    8364 <EvalSub+0xc6>
    82f8:	f3 0f 1e fa          	endbr64
    82fc:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8300:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8305:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8309:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    830e:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    8312:	48 89 c6             	mov    %rax,%rsi
    8315:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    831c:	ff ff ff 
    831f:	48 21 f1             	and    %rsi,%rcx
    8322:	48 83 c9 01          	or     $0x1,%rcx
    8326:	48 89 c8             	mov    %rcx,%rax
    8329:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    832e:	eb 34                	jmp    8364 <EvalSub+0xc6>
    8330:	f3 0f 1e fa          	endbr64
    8334:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8338:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    833c:	8b 71 04             	mov    0x4(%rcx),%esi
    833f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8343:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8347:	8b 49 04             	mov    0x4(%rcx),%ecx
    834a:	29 ce                	sub    %ecx,%esi
    834c:	89 f6                	mov    %esi,%esi
    834e:	48 89 c7             	mov    %rax,%rdi
    8351:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8358:	ff ff ff 
    835b:	48 21 f9             	and    %rdi,%rcx
    835e:	48 89 c8             	mov    %rcx,%rax
    8361:	48 89 f2             	mov    %rsi,%rdx
    8364:	48 89 c6             	mov    %rax,%rsi
    8367:	48 89 d7             	mov    %rdx,%rdi
    836a:	48 89 c1             	mov    %rax,%rcx
    836d:	48 89 d3             	mov    %rdx,%rbx
    8370:	89 f0                	mov    %esi,%eax
    8372:	48 89 da             	mov    %rbx,%rdx
    8375:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8379:	c9                   	leave
    837a:	c3                   	ret

000000000000837b <EvalMul>:
    837b:	55                   	push   %rbp
    837c:	48 89 e5             	mov    %rsp,%rbp
    837f:	53                   	push   %rbx
    8380:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8384:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8388:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    838c:	8b 09                	mov    (%rcx),%ecx
    838e:	89 c9                	mov    %ecx,%ecx
    8390:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8397:	00 
    8398:	48 8d 0d 71 6d 00 00 	lea    0x6d71(%rip),%rcx        # f110 <ops.20>
    839f:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    83a3:	90                   	nop
    83a4:	ff e1                	jmp    *%rcx
    83a6:	f3 0f 1e fa          	endbr64
    83aa:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    83ae:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    83b2:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    83b6:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    83ba:	48 0f af ce          	imul   %rsi,%rcx
    83be:	48 89 c7             	mov    %rax,%rdi
    83c1:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    83c8:	ff ff ff 
    83cb:	48 21 fe             	and    %rdi,%rsi
    83ce:	48 89 f0             	mov    %rsi,%rax
    83d1:	48 89 ca             	mov    %rcx,%rdx
    83d4:	eb 6d                	jmp    8443 <EvalMul+0xc8>
    83d6:	f3 0f 1e fa          	endbr64
    83da:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    83de:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    83e3:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    83e7:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    83ec:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    83f0:	48 89 c6             	mov    %rax,%rsi
    83f3:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    83fa:	ff ff ff 
    83fd:	48 21 f1             	and    %rsi,%rcx
    8400:	48 83 c9 01          	or     $0x1,%rcx
    8404:	48 89 c8             	mov    %rcx,%rax
    8407:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    840c:	eb 35                	jmp    8443 <EvalMul+0xc8>
    840e:	f3 0f 1e fa          	endbr64
    8412:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8416:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    841a:	8b 71 04             	mov    0x4(%rcx),%esi
    841d:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8421:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8425:	8b 49 04             	mov    0x4(%rcx),%ecx
    8428:	0f af ce             	imul   %esi,%ecx
    842b:	89 ce                	mov    %ecx,%esi
    842d:	48 89 c7             	mov    %rax,%rdi
    8430:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8437:	ff ff ff 
    843a:	48 21 f9             	and    %rdi,%rcx
    843d:	48 89 c8             	mov    %rcx,%rax
    8440:	48 89 f2             	mov    %rsi,%rdx
    8443:	48 89 c6             	mov    %rax,%rsi
    8446:	48 89 d7             	mov    %rdx,%rdi
    8449:	48 89 c1             	mov    %rax,%rcx
    844c:	48 89 d3             	mov    %rdx,%rbx
    844f:	89 f0                	mov    %esi,%eax
    8451:	48 89 da             	mov    %rbx,%rdx
    8454:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8458:	c9                   	leave
    8459:	c3                   	ret

000000000000845a <EvalDiv>:
    845a:	55                   	push   %rbp
    845b:	48 89 e5             	mov    %rsp,%rbp
    845e:	53                   	push   %rbx
    845f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8463:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8467:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    846b:	8b 00                	mov    (%rax),%eax
    846d:	89 c0                	mov    %eax,%eax
    846f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    8476:	00 
    8477:	48 8d 05 b2 6c 00 00 	lea    0x6cb2(%rip),%rax        # f130 <ops.19>
    847e:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    8482:	90                   	nop
    8483:	ff e0                	jmp    *%rax
    8485:	f3 0f 1e fa          	endbr64
    8489:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    848d:	48 8b 40 08          	mov    0x8(%rax),%rax
    8491:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8495:	48 8b 7a 08          	mov    0x8(%rdx),%rdi
    8499:	48 99                	cqto
    849b:	48 f7 ff             	idiv   %rdi
    849e:	48 89 c2             	mov    %rax,%rdx
    84a1:	48 89 ce             	mov    %rcx,%rsi
    84a4:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    84ab:	ff ff ff 
    84ae:	48 21 f0             	and    %rsi,%rax
    84b1:	48 89 c1             	mov    %rax,%rcx
    84b4:	48 89 d3             	mov    %rdx,%rbx
    84b7:	eb 71                	jmp    852a <EvalDiv+0xd0>
    84b9:	f3 0f 1e fa          	endbr64
    84bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    84c1:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    84c6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    84ca:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    84cf:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    84d3:	48 89 ca             	mov    %rcx,%rdx
    84d6:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    84dd:	ff ff ff 
    84e0:	48 21 d0             	and    %rdx,%rax
    84e3:	48 83 c8 01          	or     $0x1,%rax
    84e7:	48 89 c1             	mov    %rax,%rcx
    84ea:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    84ef:	eb 39                	jmp    852a <EvalDiv+0xd0>
    84f1:	f3 0f 1e fa          	endbr64
    84f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    84f9:	48 8b 40 08          	mov    0x8(%rax),%rax
    84fd:	8b 40 04             	mov    0x4(%rax),%eax
    8500:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8504:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    8508:	8b 7a 04             	mov    0x4(%rdx),%edi
    850b:	ba 00 00 00 00       	mov    $0x0,%edx
    8510:	f7 f7                	div    %edi
    8512:	89 c2                	mov    %eax,%edx
    8514:	48 89 ce             	mov    %rcx,%rsi
    8517:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    851e:	ff ff ff 
    8521:	48 21 f0             	and    %rsi,%rax
    8524:	48 89 c1             	mov    %rax,%rcx
    8527:	48 89 d3             	mov    %rdx,%rbx
    852a:	48 89 c8             	mov    %rcx,%rax
    852d:	48 89 da             	mov    %rbx,%rdx
    8530:	48 89 da             	mov    %rbx,%rdx
    8533:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8537:	c9                   	leave
    8538:	c3                   	ret

0000000000008539 <EvalMod>:
    8539:	55                   	push   %rbp
    853a:	48 89 e5             	mov    %rsp,%rbp
    853d:	53                   	push   %rbx
    853e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8542:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8546:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    854a:	8b 00                	mov    (%rax),%eax
    854c:	89 c0                	mov    %eax,%eax
    854e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    8555:	00 
    8556:	48 8d 05 f3 6b 00 00 	lea    0x6bf3(%rip),%rax        # f150 <ops.18>
    855d:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    8561:	90                   	nop
    8562:	ff e0                	jmp    *%rax
    8564:	f3 0f 1e fa          	endbr64
    8568:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    856c:	48 8b 40 08          	mov    0x8(%rax),%rax
    8570:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8574:	48 8b 7a 08          	mov    0x8(%rdx),%rdi
    8578:	48 99                	cqto
    857a:	48 f7 ff             	idiv   %rdi
    857d:	48 89 d6             	mov    %rdx,%rsi
    8580:	48 89 f2             	mov    %rsi,%rdx
    8583:	48 89 ce             	mov    %rcx,%rsi
    8586:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    858d:	ff ff ff 
    8590:	48 21 f0             	and    %rsi,%rax
    8593:	48 89 c1             	mov    %rax,%rcx
    8596:	48 89 d3             	mov    %rdx,%rbx
    8599:	e9 8f 00 00 00       	jmp    862d <EvalMod+0xf4>
    859e:	f3 0f 1e fa          	endbr64
    85a2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    85a6:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    85ab:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    85b0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    85b4:	f2 0f 10 42 08       	movsd  0x8(%rdx),%xmm0
    85b9:	f2 48 0f 2c f8       	cvttsd2si %xmm0,%rdi
    85be:	48 99                	cqto
    85c0:	48 f7 ff             	idiv   %rdi
    85c3:	48 89 d6             	mov    %rdx,%rsi
    85c6:	48 89 f0             	mov    %rsi,%rax
    85c9:	66 0f ef c0          	pxor   %xmm0,%xmm0
    85cd:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    85d2:	48 89 ca             	mov    %rcx,%rdx
    85d5:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    85dc:	ff ff ff 
    85df:	48 21 d0             	and    %rdx,%rax
    85e2:	48 83 c8 01          	or     $0x1,%rax
    85e6:	48 89 c1             	mov    %rax,%rcx
    85e9:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    85ee:	eb 3d                	jmp    862d <EvalMod+0xf4>
    85f0:	f3 0f 1e fa          	endbr64
    85f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    85f8:	48 8b 40 08          	mov    0x8(%rax),%rax
    85fc:	8b 40 04             	mov    0x4(%rax),%eax
    85ff:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8603:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    8607:	8b 7a 04             	mov    0x4(%rdx),%edi
    860a:	ba 00 00 00 00       	mov    $0x0,%edx
    860f:	f7 f7                	div    %edi
    8611:	89 d6                	mov    %edx,%esi
    8613:	89 f0                	mov    %esi,%eax
    8615:	89 c2                	mov    %eax,%edx
    8617:	48 89 ce             	mov    %rcx,%rsi
    861a:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    8621:	ff ff ff 
    8624:	48 21 f0             	and    %rsi,%rax
    8627:	48 89 c1             	mov    %rax,%rcx
    862a:	48 89 d3             	mov    %rdx,%rbx
    862d:	48 89 c8             	mov    %rcx,%rax
    8630:	48 89 da             	mov    %rbx,%rdx
    8633:	48 89 da             	mov    %rbx,%rdx
    8636:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    863a:	c9                   	leave
    863b:	c3                   	ret

000000000000863c <EvalPow>:
    863c:	55                   	push   %rbp
    863d:	48 89 e5             	mov    %rsp,%rbp
    8640:	41 55                	push   %r13
    8642:	41 54                	push   %r12
    8644:	53                   	push   %rbx
    8645:	48 83 ec 18          	sub    $0x18,%rsp
    8649:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    864d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    8651:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8655:	8b 00                	mov    (%rax),%eax
    8657:	89 c0                	mov    %eax,%eax
    8659:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    8660:	00 
    8661:	48 8d 05 08 6b 00 00 	lea    0x6b08(%rip),%rax        # f170 <ops.17>
    8668:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    866c:	90                   	nop
    866d:	ff e0                	jmp    *%rax
    866f:	f3 0f 1e fa          	endbr64
    8673:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8677:	48 8b 40 08          	mov    0x8(%rax),%rax
    867b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    867f:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    8684:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8688:	48 8b 40 08          	mov    0x8(%rax),%rax
    868c:	66 0f ef d2          	pxor   %xmm2,%xmm2
    8690:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
    8695:	66 48 0f 7e d0       	movq   %xmm2,%rax
    869a:	66 0f 28 c8          	movapd %xmm0,%xmm1
    869e:	66 48 0f 6e c0       	movq   %rax,%xmm0
    86a3:	e8 38 bb ff ff       	call   41e0 <pow@plt>
    86a8:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    86ad:	4c 89 e1             	mov    %r12,%rcx
    86b0:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
    86b7:	ff ff ff 
    86ba:	48 21 ca             	and    %rcx,%rdx
    86bd:	49 89 d4             	mov    %rdx,%r12
    86c0:	49 89 c5             	mov    %rax,%r13
    86c3:	e9 e7 00 00 00       	jmp    87af <EvalPow+0x173>
    86c8:	f3 0f 1e fa          	endbr64
    86cc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    86d0:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    86d5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    86d9:	48 8b 40 08          	mov    0x8(%rax),%rax
    86dd:	66 0f 28 c8          	movapd %xmm0,%xmm1
    86e1:	66 48 0f 6e c0       	movq   %rax,%xmm0
    86e6:	e8 f5 ba ff ff       	call   41e0 <pow@plt>
    86eb:	4c 89 e2             	mov    %r12,%rdx
    86ee:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    86f5:	ff ff ff 
    86f8:	48 21 d0             	and    %rdx,%rax
    86fb:	48 83 c8 01          	or     $0x1,%rax
    86ff:	49 89 c4             	mov    %rax,%r12
    8702:	66 49 0f 7e c5       	movq   %xmm0,%r13
    8707:	e9 a3 00 00 00       	jmp    87af <EvalPow+0x173>
    870c:	f3 0f 1e fa          	endbr64
    8710:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8714:	48 8b 40 08          	mov    0x8(%rax),%rax
    8718:	8b 40 04             	mov    0x4(%rax),%eax
    871b:	89 c0                	mov    %eax,%eax
    871d:	48 85 c0             	test   %rax,%rax
    8720:	78 0b                	js     872d <EvalPow+0xf1>
    8722:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8726:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    872b:	eb 19                	jmp    8746 <EvalPow+0x10a>
    872d:	48 89 c2             	mov    %rax,%rdx
    8730:	48 d1 ea             	shr    $1,%rdx
    8733:	83 e0 01             	and    $0x1,%eax
    8736:	48 09 c2             	or     %rax,%rdx
    8739:	66 0f ef c0          	pxor   %xmm0,%xmm0
    873d:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    8742:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    8746:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    874a:	48 8b 40 08          	mov    0x8(%rax),%rax
    874e:	8b 40 04             	mov    0x4(%rax),%eax
    8751:	89 c0                	mov    %eax,%eax
    8753:	48 85 c0             	test   %rax,%rax
    8756:	78 10                	js     8768 <EvalPow+0x12c>
    8758:	66 0f ef db          	pxor   %xmm3,%xmm3
    875c:	f2 48 0f 2a d8       	cvtsi2sd %rax,%xmm3
    8761:	66 48 0f 7e d8       	movq   %xmm3,%rax
    8766:	eb 1e                	jmp    8786 <EvalPow+0x14a>
    8768:	48 89 c2             	mov    %rax,%rdx
    876b:	48 d1 ea             	shr    $1,%rdx
    876e:	83 e0 01             	and    $0x1,%eax
    8771:	48 09 c2             	or     %rax,%rdx
    8774:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8778:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
    877d:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
    8781:	66 48 0f 7e c8       	movq   %xmm1,%rax
    8786:	66 0f 28 c8          	movapd %xmm0,%xmm1
    878a:	66 48 0f 6e c0       	movq   %rax,%xmm0
    878f:	e8 4c ba ff ff       	call   41e0 <pow@plt>
    8794:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    8799:	4c 89 e1             	mov    %r12,%rcx
    879c:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
    87a3:	ff ff ff 
    87a6:	48 21 ca             	and    %rcx,%rdx
    87a9:	49 89 d4             	mov    %rdx,%r12
    87ac:	49 89 c5             	mov    %rax,%r13
    87af:	4c 89 e0             	mov    %r12,%rax
    87b2:	4c 89 ea             	mov    %r13,%rdx
    87b5:	4c 89 e1             	mov    %r12,%rcx
    87b8:	4c 89 eb             	mov    %r13,%rbx
    87bb:	48 89 da             	mov    %rbx,%rdx
    87be:	48 83 c4 18          	add    $0x18,%rsp
    87c2:	5b                   	pop    %rbx
    87c3:	41 5c                	pop    %r12
    87c5:	41 5d                	pop    %r13
    87c7:	5d                   	pop    %rbp
    87c8:	c3                   	ret

00000000000087c9 <EvalBand>:
    87c9:	55                   	push   %rbp
    87ca:	48 89 e5             	mov    %rsp,%rbp
    87cd:	53                   	push   %rbx
    87ce:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    87d2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    87d6:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    87da:	8b 09                	mov    (%rcx),%ecx
    87dc:	89 c9                	mov    %ecx,%ecx
    87de:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    87e5:	00 
    87e6:	48 8d 0d a3 69 00 00 	lea    0x69a3(%rip),%rcx        # f190 <ops.16>
    87ed:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    87f1:	90                   	nop
    87f2:	ff e1                	jmp    *%rcx
    87f4:	f3 0f 1e fa          	endbr64
    87f8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    87fc:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8800:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8804:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8808:	48 21 f1             	and    %rsi,%rcx
    880b:	48 89 c7             	mov    %rax,%rdi
    880e:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8815:	ff ff ff 
    8818:	48 21 fe             	and    %rdi,%rsi
    881b:	48 89 f0             	mov    %rsi,%rax
    881e:	48 89 ca             	mov    %rcx,%rdx
    8821:	eb 7e                	jmp    88a1 <EvalBand+0xd8>
    8823:	f3 0f 1e fa          	endbr64
    8827:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    882b:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8830:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8835:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8839:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    883e:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8843:	48 21 f1             	and    %rsi,%rcx
    8846:	66 0f ef c0          	pxor   %xmm0,%xmm0
    884a:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    884f:	48 89 c6             	mov    %rax,%rsi
    8852:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8859:	ff ff ff 
    885c:	48 21 f1             	and    %rsi,%rcx
    885f:	48 83 c9 01          	or     $0x1,%rcx
    8863:	48 89 c8             	mov    %rcx,%rax
    8866:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    886b:	eb 34                	jmp    88a1 <EvalBand+0xd8>
    886d:	f3 0f 1e fa          	endbr64
    8871:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8875:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8879:	8b 71 04             	mov    0x4(%rcx),%esi
    887c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8880:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8884:	8b 49 04             	mov    0x4(%rcx),%ecx
    8887:	21 f1                	and    %esi,%ecx
    8889:	89 ce                	mov    %ecx,%esi
    888b:	48 89 c7             	mov    %rax,%rdi
    888e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8895:	ff ff ff 
    8898:	48 21 f9             	and    %rdi,%rcx
    889b:	48 89 c8             	mov    %rcx,%rax
    889e:	48 89 f2             	mov    %rsi,%rdx
    88a1:	48 89 c6             	mov    %rax,%rsi
    88a4:	48 89 d7             	mov    %rdx,%rdi
    88a7:	48 89 c1             	mov    %rax,%rcx
    88aa:	48 89 d3             	mov    %rdx,%rbx
    88ad:	89 f0                	mov    %esi,%eax
    88af:	48 89 da             	mov    %rbx,%rdx
    88b2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    88b6:	c9                   	leave
    88b7:	c3                   	ret

00000000000088b8 <EvalBor>:
    88b8:	55                   	push   %rbp
    88b9:	48 89 e5             	mov    %rsp,%rbp
    88bc:	53                   	push   %rbx
    88bd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    88c1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    88c5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    88c9:	8b 09                	mov    (%rcx),%ecx
    88cb:	89 c9                	mov    %ecx,%ecx
    88cd:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    88d4:	00 
    88d5:	48 8d 0d d4 68 00 00 	lea    0x68d4(%rip),%rcx        # f1b0 <ops.15>
    88dc:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    88e0:	90                   	nop
    88e1:	ff e1                	jmp    *%rcx
    88e3:	f3 0f 1e fa          	endbr64
    88e7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    88eb:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    88ef:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    88f3:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    88f7:	48 09 f1             	or     %rsi,%rcx
    88fa:	48 89 c7             	mov    %rax,%rdi
    88fd:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8904:	ff ff ff 
    8907:	48 21 fe             	and    %rdi,%rsi
    890a:	48 89 f0             	mov    %rsi,%rax
    890d:	48 89 ca             	mov    %rcx,%rdx
    8910:	eb 7e                	jmp    8990 <EvalBor+0xd8>
    8912:	f3 0f 1e fa          	endbr64
    8916:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    891a:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    891f:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8924:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8928:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    892d:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8932:	48 09 f1             	or     %rsi,%rcx
    8935:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8939:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    893e:	48 89 c6             	mov    %rax,%rsi
    8941:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8948:	ff ff ff 
    894b:	48 21 f1             	and    %rsi,%rcx
    894e:	48 83 c9 01          	or     $0x1,%rcx
    8952:	48 89 c8             	mov    %rcx,%rax
    8955:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    895a:	eb 34                	jmp    8990 <EvalBor+0xd8>
    895c:	f3 0f 1e fa          	endbr64
    8960:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8964:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8968:	8b 71 04             	mov    0x4(%rcx),%esi
    896b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    896f:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8973:	8b 49 04             	mov    0x4(%rcx),%ecx
    8976:	09 f1                	or     %esi,%ecx
    8978:	89 ce                	mov    %ecx,%esi
    897a:	48 89 c7             	mov    %rax,%rdi
    897d:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8984:	ff ff ff 
    8987:	48 21 f9             	and    %rdi,%rcx
    898a:	48 89 c8             	mov    %rcx,%rax
    898d:	48 89 f2             	mov    %rsi,%rdx
    8990:	48 89 c6             	mov    %rax,%rsi
    8993:	48 89 d7             	mov    %rdx,%rdi
    8996:	48 89 c1             	mov    %rax,%rcx
    8999:	48 89 d3             	mov    %rdx,%rbx
    899c:	89 f0                	mov    %esi,%eax
    899e:	48 89 da             	mov    %rbx,%rdx
    89a1:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    89a5:	c9                   	leave
    89a6:	c3                   	ret

00000000000089a7 <EvalBxor>:
    89a7:	55                   	push   %rbp
    89a8:	48 89 e5             	mov    %rsp,%rbp
    89ab:	53                   	push   %rbx
    89ac:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    89b0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    89b4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    89b8:	8b 09                	mov    (%rcx),%ecx
    89ba:	89 c9                	mov    %ecx,%ecx
    89bc:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    89c3:	00 
    89c4:	48 8d 0d 05 68 00 00 	lea    0x6805(%rip),%rcx        # f1d0 <ops.14>
    89cb:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    89cf:	90                   	nop
    89d0:	ff e1                	jmp    *%rcx
    89d2:	f3 0f 1e fa          	endbr64
    89d6:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    89da:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    89de:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    89e2:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    89e6:	48 31 f1             	xor    %rsi,%rcx
    89e9:	48 89 c7             	mov    %rax,%rdi
    89ec:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    89f3:	ff ff ff 
    89f6:	48 21 fe             	and    %rdi,%rsi
    89f9:	48 89 f0             	mov    %rsi,%rax
    89fc:	48 89 ca             	mov    %rcx,%rdx
    89ff:	eb 7e                	jmp    8a7f <EvalBxor+0xd8>
    8a01:	f3 0f 1e fa          	endbr64
    8a05:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8a09:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8a0e:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8a13:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8a17:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8a1c:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8a21:	48 31 f1             	xor    %rsi,%rcx
    8a24:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8a28:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    8a2d:	48 89 c6             	mov    %rax,%rsi
    8a30:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8a37:	ff ff ff 
    8a3a:	48 21 f1             	and    %rsi,%rcx
    8a3d:	48 83 c9 01          	or     $0x1,%rcx
    8a41:	48 89 c8             	mov    %rcx,%rax
    8a44:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8a49:	eb 34                	jmp    8a7f <EvalBxor+0xd8>
    8a4b:	f3 0f 1e fa          	endbr64
    8a4f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8a53:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8a57:	8b 71 04             	mov    0x4(%rcx),%esi
    8a5a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8a5e:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8a62:	8b 49 04             	mov    0x4(%rcx),%ecx
    8a65:	31 f1                	xor    %esi,%ecx
    8a67:	89 ce                	mov    %ecx,%esi
    8a69:	48 89 c7             	mov    %rax,%rdi
    8a6c:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8a73:	ff ff ff 
    8a76:	48 21 f9             	and    %rdi,%rcx
    8a79:	48 89 c8             	mov    %rcx,%rax
    8a7c:	48 89 f2             	mov    %rsi,%rdx
    8a7f:	48 89 c6             	mov    %rax,%rsi
    8a82:	48 89 d7             	mov    %rdx,%rdi
    8a85:	48 89 c1             	mov    %rax,%rcx
    8a88:	48 89 d3             	mov    %rdx,%rbx
    8a8b:	89 f0                	mov    %esi,%eax
    8a8d:	48 89 da             	mov    %rbx,%rdx
    8a90:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8a94:	c9                   	leave
    8a95:	c3                   	ret

0000000000008a96 <EvalLsh>:
    8a96:	55                   	push   %rbp
    8a97:	48 89 e5             	mov    %rsp,%rbp
    8a9a:	53                   	push   %rbx
    8a9b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8a9f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8aa3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8aa7:	8b 09                	mov    (%rcx),%ecx
    8aa9:	89 c9                	mov    %ecx,%ecx
    8aab:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8ab2:	00 
    8ab3:	48 8d 0d 36 67 00 00 	lea    0x6736(%rip),%rcx        # f1f0 <ops.13>
    8aba:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8abe:	90                   	nop
    8abf:	ff e1                	jmp    *%rcx
    8ac1:	f3 0f 1e fa          	endbr64
    8ac5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8ac9:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8acd:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8ad1:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8ad5:	48 d3 e6             	shl    %cl,%rsi
    8ad8:	48 89 f1             	mov    %rsi,%rcx
    8adb:	48 89 c7             	mov    %rax,%rdi
    8ade:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8ae5:	ff ff ff 
    8ae8:	48 21 fe             	and    %rdi,%rsi
    8aeb:	48 89 f0             	mov    %rsi,%rax
    8aee:	48 89 ca             	mov    %rcx,%rdx
    8af1:	e9 83 00 00 00       	jmp    8b79 <EvalLsh+0xe3>
    8af6:	f3 0f 1e fa          	endbr64
    8afa:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8afe:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8b03:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8b08:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8b0c:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8b11:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8b16:	48 d3 e6             	shl    %cl,%rsi
    8b19:	48 89 f1             	mov    %rsi,%rcx
    8b1c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8b20:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    8b25:	48 89 c6             	mov    %rax,%rsi
    8b28:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8b2f:	ff ff ff 
    8b32:	48 21 f1             	and    %rsi,%rcx
    8b35:	48 83 c9 01          	or     $0x1,%rcx
    8b39:	48 89 c8             	mov    %rcx,%rax
    8b3c:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8b41:	eb 36                	jmp    8b79 <EvalLsh+0xe3>
    8b43:	f3 0f 1e fa          	endbr64
    8b47:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8b4b:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8b4f:	8b 71 04             	mov    0x4(%rcx),%esi
    8b52:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8b56:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8b5a:	8b 49 04             	mov    0x4(%rcx),%ecx
    8b5d:	d3 e6                	shl    %cl,%esi
    8b5f:	89 f1                	mov    %esi,%ecx
    8b61:	89 ce                	mov    %ecx,%esi
    8b63:	48 89 c7             	mov    %rax,%rdi
    8b66:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8b6d:	ff ff ff 
    8b70:	48 21 f9             	and    %rdi,%rcx
    8b73:	48 89 c8             	mov    %rcx,%rax
    8b76:	48 89 f2             	mov    %rsi,%rdx
    8b79:	48 89 c6             	mov    %rax,%rsi
    8b7c:	48 89 d7             	mov    %rdx,%rdi
    8b7f:	48 89 c1             	mov    %rax,%rcx
    8b82:	48 89 d3             	mov    %rdx,%rbx
    8b85:	89 f0                	mov    %esi,%eax
    8b87:	48 89 da             	mov    %rbx,%rdx
    8b8a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8b8e:	c9                   	leave
    8b8f:	c3                   	ret

0000000000008b90 <EvalRsh>:
    8b90:	55                   	push   %rbp
    8b91:	48 89 e5             	mov    %rsp,%rbp
    8b94:	53                   	push   %rbx
    8b95:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8b99:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8b9d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8ba1:	8b 09                	mov    (%rcx),%ecx
    8ba3:	89 c9                	mov    %ecx,%ecx
    8ba5:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8bac:	00 
    8bad:	48 8d 0d 5c 66 00 00 	lea    0x665c(%rip),%rcx        # f210 <ops.12>
    8bb4:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8bb8:	90                   	nop
    8bb9:	ff e1                	jmp    *%rcx
    8bbb:	f3 0f 1e fa          	endbr64
    8bbf:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8bc3:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8bc7:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8bcb:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8bcf:	48 d3 fe             	sar    %cl,%rsi
    8bd2:	48 89 f1             	mov    %rsi,%rcx
    8bd5:	48 89 c7             	mov    %rax,%rdi
    8bd8:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8bdf:	ff ff ff 
    8be2:	48 21 fe             	and    %rdi,%rsi
    8be5:	48 89 f0             	mov    %rsi,%rax
    8be8:	48 89 ca             	mov    %rcx,%rdx
    8beb:	e9 83 00 00 00       	jmp    8c73 <EvalRsh+0xe3>
    8bf0:	f3 0f 1e fa          	endbr64
    8bf4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8bf8:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8bfd:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8c02:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8c06:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8c0b:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8c10:	48 d3 fe             	sar    %cl,%rsi
    8c13:	48 89 f1             	mov    %rsi,%rcx
    8c16:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8c1a:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    8c1f:	48 89 c6             	mov    %rax,%rsi
    8c22:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8c29:	ff ff ff 
    8c2c:	48 21 f1             	and    %rsi,%rcx
    8c2f:	48 83 c9 01          	or     $0x1,%rcx
    8c33:	48 89 c8             	mov    %rcx,%rax
    8c36:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8c3b:	eb 36                	jmp    8c73 <EvalRsh+0xe3>
    8c3d:	f3 0f 1e fa          	endbr64
    8c41:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8c45:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8c49:	8b 71 04             	mov    0x4(%rcx),%esi
    8c4c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8c50:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8c54:	8b 49 04             	mov    0x4(%rcx),%ecx
    8c57:	d3 ee                	shr    %cl,%esi
    8c59:	89 f1                	mov    %esi,%ecx
    8c5b:	89 ce                	mov    %ecx,%esi
    8c5d:	48 89 c7             	mov    %rax,%rdi
    8c60:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8c67:	ff ff ff 
    8c6a:	48 21 f9             	and    %rdi,%rcx
    8c6d:	48 89 c8             	mov    %rcx,%rax
    8c70:	48 89 f2             	mov    %rsi,%rdx
    8c73:	48 89 c6             	mov    %rax,%rsi
    8c76:	48 89 d7             	mov    %rdx,%rdi
    8c79:	48 89 c1             	mov    %rax,%rcx
    8c7c:	48 89 d3             	mov    %rdx,%rbx
    8c7f:	89 f0                	mov    %esi,%eax
    8c81:	48 89 da             	mov    %rbx,%rdx
    8c84:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8c88:	c9                   	leave
    8c89:	c3                   	ret

0000000000008c8a <EvalEqEq>:
    8c8a:	55                   	push   %rbp
    8c8b:	48 89 e5             	mov    %rsp,%rbp
    8c8e:	53                   	push   %rbx
    8c8f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8c93:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8c97:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8c9b:	8b 09                	mov    (%rcx),%ecx
    8c9d:	89 c9                	mov    %ecx,%ecx
    8c9f:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8ca6:	00 
    8ca7:	48 8d 0d 82 65 00 00 	lea    0x6582(%rip),%rcx        # f230 <ops.11>
    8cae:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8cb2:	90                   	nop
    8cb3:	ff e1                	jmp    *%rcx
    8cb5:	f3 0f 1e fa          	endbr64
    8cb9:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8cbd:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8cc1:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8cc5:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8cc9:	48 39 ce             	cmp    %rcx,%rsi
    8ccc:	0f 94 c1             	sete   %cl
    8ccf:	0f b6 c9             	movzbl %cl,%ecx
    8cd2:	48 89 c7             	mov    %rax,%rdi
    8cd5:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8cdc:	ff ff ff 
    8cdf:	48 21 fe             	and    %rdi,%rsi
    8ce2:	48 89 f0             	mov    %rsi,%rax
    8ce5:	48 89 ca             	mov    %rcx,%rdx
    8ce8:	e9 81 00 00 00       	jmp    8d6e <EvalEqEq+0xe4>
    8ced:	f3 0f 1e fa          	endbr64
    8cf1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8cf5:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8cfa:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8cfe:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    8d03:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8d07:	7a 10                	jp     8d19 <EvalEqEq+0x8f>
    8d09:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8d0d:	75 0a                	jne    8d19 <EvalEqEq+0x8f>
    8d0f:	f2 0f 10 05 e1 23 00 	movsd  0x23e1(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    8d16:	00 
    8d17:	eb 04                	jmp    8d1d <EvalEqEq+0x93>
    8d19:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8d1d:	48 89 c6             	mov    %rax,%rsi
    8d20:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8d27:	ff ff ff 
    8d2a:	48 21 f1             	and    %rsi,%rcx
    8d2d:	48 83 c9 01          	or     $0x1,%rcx
    8d31:	48 89 c8             	mov    %rcx,%rax
    8d34:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8d39:	eb 33                	jmp    8d6e <EvalEqEq+0xe4>
    8d3b:	f3 0f 1e fa          	endbr64
    8d3f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8d43:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8d47:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8d4b:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8d4f:	48 39 ce             	cmp    %rcx,%rsi
    8d52:	0f 94 c1             	sete   %cl
    8d55:	0f b6 c9             	movzbl %cl,%ecx
    8d58:	48 89 c7             	mov    %rax,%rdi
    8d5b:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8d62:	ff ff ff 
    8d65:	48 21 fe             	and    %rdi,%rsi
    8d68:	48 89 f0             	mov    %rsi,%rax
    8d6b:	48 89 ca             	mov    %rcx,%rdx
    8d6e:	48 89 c6             	mov    %rax,%rsi
    8d71:	48 89 d7             	mov    %rdx,%rdi
    8d74:	48 89 c1             	mov    %rax,%rcx
    8d77:	48 89 d3             	mov    %rdx,%rbx
    8d7a:	89 f0                	mov    %esi,%eax
    8d7c:	48 89 da             	mov    %rbx,%rdx
    8d7f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8d83:	c9                   	leave
    8d84:	c3                   	ret

0000000000008d85 <EvalNeq>:
    8d85:	55                   	push   %rbp
    8d86:	48 89 e5             	mov    %rsp,%rbp
    8d89:	53                   	push   %rbx
    8d8a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8d8e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8d92:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8d96:	8b 09                	mov    (%rcx),%ecx
    8d98:	89 c9                	mov    %ecx,%ecx
    8d9a:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8da1:	00 
    8da2:	48 8d 0d a7 64 00 00 	lea    0x64a7(%rip),%rcx        # f250 <ops.10>
    8da9:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8dad:	90                   	nop
    8dae:	ff e1                	jmp    *%rcx
    8db0:	f3 0f 1e fa          	endbr64
    8db4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8db8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8dbc:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8dc0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8dc4:	48 39 ce             	cmp    %rcx,%rsi
    8dc7:	0f 95 c1             	setne  %cl
    8dca:	0f b6 c9             	movzbl %cl,%ecx
    8dcd:	48 89 c7             	mov    %rax,%rdi
    8dd0:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8dd7:	ff ff ff 
    8dda:	48 21 fe             	and    %rdi,%rsi
    8ddd:	48 89 f0             	mov    %rsi,%rax
    8de0:	48 89 ca             	mov    %rcx,%rdx
    8de3:	e9 81 00 00 00       	jmp    8e69 <EvalNeq+0xe4>
    8de8:	f3 0f 1e fa          	endbr64
    8dec:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8df0:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8df5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8df9:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    8dfe:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8e02:	7a 06                	jp     8e0a <EvalNeq+0x85>
    8e04:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8e08:	74 0a                	je     8e14 <EvalNeq+0x8f>
    8e0a:	f2 0f 10 05 e6 22 00 	movsd  0x22e6(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    8e11:	00 
    8e12:	eb 04                	jmp    8e18 <EvalNeq+0x93>
    8e14:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8e18:	48 89 c6             	mov    %rax,%rsi
    8e1b:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8e22:	ff ff ff 
    8e25:	48 21 f1             	and    %rsi,%rcx
    8e28:	48 83 c9 01          	or     $0x1,%rcx
    8e2c:	48 89 c8             	mov    %rcx,%rax
    8e2f:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8e34:	eb 33                	jmp    8e69 <EvalNeq+0xe4>
    8e36:	f3 0f 1e fa          	endbr64
    8e3a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8e3e:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8e42:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8e46:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8e4a:	48 39 ce             	cmp    %rcx,%rsi
    8e4d:	0f 95 c1             	setne  %cl
    8e50:	0f b6 c9             	movzbl %cl,%ecx
    8e53:	48 89 c7             	mov    %rax,%rdi
    8e56:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8e5d:	ff ff ff 
    8e60:	48 21 fe             	and    %rdi,%rsi
    8e63:	48 89 f0             	mov    %rsi,%rax
    8e66:	48 89 ca             	mov    %rcx,%rdx
    8e69:	48 89 c6             	mov    %rax,%rsi
    8e6c:	48 89 d7             	mov    %rdx,%rdi
    8e6f:	48 89 c1             	mov    %rax,%rcx
    8e72:	48 89 d3             	mov    %rdx,%rbx
    8e75:	89 f0                	mov    %esi,%eax
    8e77:	48 89 da             	mov    %rbx,%rdx
    8e7a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8e7e:	c9                   	leave
    8e7f:	c3                   	ret

0000000000008e80 <EvalLt>:
    8e80:	55                   	push   %rbp
    8e81:	48 89 e5             	mov    %rsp,%rbp
    8e84:	53                   	push   %rbx
    8e85:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8e89:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8e8d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8e91:	8b 09                	mov    (%rcx),%ecx
    8e93:	89 c9                	mov    %ecx,%ecx
    8e95:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8e9c:	00 
    8e9d:	48 8d 0d cc 63 00 00 	lea    0x63cc(%rip),%rcx        # f270 <ops.9>
    8ea4:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8ea8:	90                   	nop
    8ea9:	ff e1                	jmp    *%rcx
    8eab:	f3 0f 1e fa          	endbr64
    8eaf:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8eb3:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8eb7:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8ebb:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8ebf:	48 39 ce             	cmp    %rcx,%rsi
    8ec2:	0f 9c c1             	setl   %cl
    8ec5:	0f b6 c9             	movzbl %cl,%ecx
    8ec8:	48 89 c7             	mov    %rax,%rdi
    8ecb:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8ed2:	ff ff ff 
    8ed5:	48 21 fe             	and    %rdi,%rsi
    8ed8:	48 89 f0             	mov    %rsi,%rax
    8edb:	48 89 ca             	mov    %rcx,%rdx
    8ede:	e9 80 00 00 00       	jmp    8f63 <EvalLt+0xe3>
    8ee3:	f3 0f 1e fa          	endbr64
    8ee7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8eeb:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    8ef0:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8ef4:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8ef9:	66 0f 2f c1          	comisd %xmm1,%xmm0
    8efd:	76 0a                	jbe    8f09 <EvalLt+0x89>
    8eff:	f2 0f 10 05 f1 21 00 	movsd  0x21f1(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    8f06:	00 
    8f07:	eb 04                	jmp    8f0d <EvalLt+0x8d>
    8f09:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8f0d:	48 89 c6             	mov    %rax,%rsi
    8f10:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8f17:	ff ff ff 
    8f1a:	48 21 f1             	and    %rsi,%rcx
    8f1d:	48 83 c9 01          	or     $0x1,%rcx
    8f21:	48 89 c8             	mov    %rcx,%rax
    8f24:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8f29:	eb 38                	jmp    8f63 <EvalLt+0xe3>
    8f2b:	f3 0f 1e fa          	endbr64
    8f2f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8f33:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8f37:	8b 71 04             	mov    0x4(%rcx),%esi
    8f3a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8f3e:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8f42:	8b 49 04             	mov    0x4(%rcx),%ecx
    8f45:	39 ce                	cmp    %ecx,%esi
    8f47:	0f 92 c1             	setb   %cl
    8f4a:	0f b6 c9             	movzbl %cl,%ecx
    8f4d:	48 89 c7             	mov    %rax,%rdi
    8f50:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8f57:	ff ff ff 
    8f5a:	48 21 fe             	and    %rdi,%rsi
    8f5d:	48 89 f0             	mov    %rsi,%rax
    8f60:	48 89 ca             	mov    %rcx,%rdx
    8f63:	48 89 c6             	mov    %rax,%rsi
    8f66:	48 89 d7             	mov    %rdx,%rdi
    8f69:	48 89 c1             	mov    %rax,%rcx
    8f6c:	48 89 d3             	mov    %rdx,%rbx
    8f6f:	89 f0                	mov    %esi,%eax
    8f71:	48 89 da             	mov    %rbx,%rdx
    8f74:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8f78:	c9                   	leave
    8f79:	c3                   	ret

0000000000008f7a <EvalLe>:
    8f7a:	55                   	push   %rbp
    8f7b:	48 89 e5             	mov    %rsp,%rbp
    8f7e:	53                   	push   %rbx
    8f7f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8f83:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8f87:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8f8b:	8b 09                	mov    (%rcx),%ecx
    8f8d:	89 c9                	mov    %ecx,%ecx
    8f8f:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8f96:	00 
    8f97:	48 8d 0d f2 62 00 00 	lea    0x62f2(%rip),%rcx        # f290 <ops.8>
    8f9e:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8fa2:	90                   	nop
    8fa3:	ff e1                	jmp    *%rcx
    8fa5:	f3 0f 1e fa          	endbr64
    8fa9:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8fad:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8fb1:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8fb5:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8fb9:	48 39 ce             	cmp    %rcx,%rsi
    8fbc:	0f 9e c1             	setle  %cl
    8fbf:	0f b6 c9             	movzbl %cl,%ecx
    8fc2:	48 89 c7             	mov    %rax,%rdi
    8fc5:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8fcc:	ff ff ff 
    8fcf:	48 21 fe             	and    %rdi,%rsi
    8fd2:	48 89 f0             	mov    %rsi,%rax
    8fd5:	48 89 ca             	mov    %rcx,%rdx
    8fd8:	e9 80 00 00 00       	jmp    905d <EvalLe+0xe3>
    8fdd:	f3 0f 1e fa          	endbr64
    8fe1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8fe5:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    8fea:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8fee:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8ff3:	66 0f 2f c1          	comisd %xmm1,%xmm0
    8ff7:	72 0a                	jb     9003 <EvalLe+0x89>
    8ff9:	f2 0f 10 05 f7 20 00 	movsd  0x20f7(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    9000:	00 
    9001:	eb 04                	jmp    9007 <EvalLe+0x8d>
    9003:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9007:	48 89 c6             	mov    %rax,%rsi
    900a:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9011:	ff ff ff 
    9014:	48 21 f1             	and    %rsi,%rcx
    9017:	48 83 c9 01          	or     $0x1,%rcx
    901b:	48 89 c8             	mov    %rcx,%rax
    901e:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    9023:	eb 38                	jmp    905d <EvalLe+0xe3>
    9025:	f3 0f 1e fa          	endbr64
    9029:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    902d:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9031:	8b 49 04             	mov    0x4(%rcx),%ecx
    9034:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9038:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    903c:	8b 76 04             	mov    0x4(%rsi),%esi
    903f:	39 ce                	cmp    %ecx,%esi
    9041:	0f 93 c1             	setae  %cl
    9044:	0f b6 c9             	movzbl %cl,%ecx
    9047:	48 89 c7             	mov    %rax,%rdi
    904a:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9051:	ff ff ff 
    9054:	48 21 fe             	and    %rdi,%rsi
    9057:	48 89 f0             	mov    %rsi,%rax
    905a:	48 89 ca             	mov    %rcx,%rdx
    905d:	48 89 c6             	mov    %rax,%rsi
    9060:	48 89 d7             	mov    %rdx,%rdi
    9063:	48 89 c1             	mov    %rax,%rcx
    9066:	48 89 d3             	mov    %rdx,%rbx
    9069:	89 f0                	mov    %esi,%eax
    906b:	48 89 da             	mov    %rbx,%rdx
    906e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9072:	c9                   	leave
    9073:	c3                   	ret

0000000000009074 <EvalGt>:
    9074:	55                   	push   %rbp
    9075:	48 89 e5             	mov    %rsp,%rbp
    9078:	53                   	push   %rbx
    9079:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    907d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9081:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9085:	8b 09                	mov    (%rcx),%ecx
    9087:	89 c9                	mov    %ecx,%ecx
    9089:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    9090:	00 
    9091:	48 8d 0d 18 62 00 00 	lea    0x6218(%rip),%rcx        # f2b0 <ops.7>
    9098:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    909c:	90                   	nop
    909d:	ff e1                	jmp    *%rcx
    909f:	f3 0f 1e fa          	endbr64
    90a3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    90a7:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    90ab:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    90af:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    90b3:	48 39 ce             	cmp    %rcx,%rsi
    90b6:	0f 9f c1             	setg   %cl
    90b9:	0f b6 c9             	movzbl %cl,%ecx
    90bc:	48 89 c7             	mov    %rax,%rdi
    90bf:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    90c6:	ff ff ff 
    90c9:	48 21 fe             	and    %rdi,%rsi
    90cc:	48 89 f0             	mov    %rsi,%rax
    90cf:	48 89 ca             	mov    %rcx,%rdx
    90d2:	e9 80 00 00 00       	jmp    9157 <EvalGt+0xe3>
    90d7:	f3 0f 1e fa          	endbr64
    90db:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    90df:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    90e4:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    90e8:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    90ed:	66 0f 2f c1          	comisd %xmm1,%xmm0
    90f1:	76 0a                	jbe    90fd <EvalGt+0x89>
    90f3:	f2 0f 10 05 fd 1f 00 	movsd  0x1ffd(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    90fa:	00 
    90fb:	eb 04                	jmp    9101 <EvalGt+0x8d>
    90fd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9101:	48 89 c6             	mov    %rax,%rsi
    9104:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    910b:	ff ff ff 
    910e:	48 21 f1             	and    %rsi,%rcx
    9111:	48 83 c9 01          	or     $0x1,%rcx
    9115:	48 89 c8             	mov    %rcx,%rax
    9118:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    911d:	eb 38                	jmp    9157 <EvalGt+0xe3>
    911f:	f3 0f 1e fa          	endbr64
    9123:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9127:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    912b:	8b 49 04             	mov    0x4(%rcx),%ecx
    912e:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9132:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    9136:	8b 76 04             	mov    0x4(%rsi),%esi
    9139:	39 ce                	cmp    %ecx,%esi
    913b:	0f 92 c1             	setb   %cl
    913e:	0f b6 c9             	movzbl %cl,%ecx
    9141:	48 89 c7             	mov    %rax,%rdi
    9144:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    914b:	ff ff ff 
    914e:	48 21 fe             	and    %rdi,%rsi
    9151:	48 89 f0             	mov    %rsi,%rax
    9154:	48 89 ca             	mov    %rcx,%rdx
    9157:	48 89 c6             	mov    %rax,%rsi
    915a:	48 89 d7             	mov    %rdx,%rdi
    915d:	48 89 c1             	mov    %rax,%rcx
    9160:	48 89 d3             	mov    %rdx,%rbx
    9163:	89 f0                	mov    %esi,%eax
    9165:	48 89 da             	mov    %rbx,%rdx
    9168:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    916c:	c9                   	leave
    916d:	c3                   	ret

000000000000916e <EvalGe>:
    916e:	55                   	push   %rbp
    916f:	48 89 e5             	mov    %rsp,%rbp
    9172:	53                   	push   %rbx
    9173:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9177:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    917b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    917f:	8b 09                	mov    (%rcx),%ecx
    9181:	89 c9                	mov    %ecx,%ecx
    9183:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    918a:	00 
    918b:	48 8d 0d 3e 61 00 00 	lea    0x613e(%rip),%rcx        # f2d0 <ops.6>
    9192:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    9196:	90                   	nop
    9197:	ff e1                	jmp    *%rcx
    9199:	f3 0f 1e fa          	endbr64
    919d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    91a1:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    91a5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    91a9:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    91ad:	48 39 ce             	cmp    %rcx,%rsi
    91b0:	0f 9d c1             	setge  %cl
    91b3:	0f b6 c9             	movzbl %cl,%ecx
    91b6:	48 89 c7             	mov    %rax,%rdi
    91b9:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    91c0:	ff ff ff 
    91c3:	48 21 fe             	and    %rdi,%rsi
    91c6:	48 89 f0             	mov    %rsi,%rax
    91c9:	48 89 ca             	mov    %rcx,%rdx
    91cc:	e9 80 00 00 00       	jmp    9251 <EvalGe+0xe3>
    91d1:	f3 0f 1e fa          	endbr64
    91d5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    91d9:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    91de:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    91e2:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    91e7:	66 0f 2f c1          	comisd %xmm1,%xmm0
    91eb:	72 0a                	jb     91f7 <EvalGe+0x89>
    91ed:	f2 0f 10 05 03 1f 00 	movsd  0x1f03(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    91f4:	00 
    91f5:	eb 04                	jmp    91fb <EvalGe+0x8d>
    91f7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    91fb:	48 89 c6             	mov    %rax,%rsi
    91fe:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9205:	ff ff ff 
    9208:	48 21 f1             	and    %rsi,%rcx
    920b:	48 83 c9 01          	or     $0x1,%rcx
    920f:	48 89 c8             	mov    %rcx,%rax
    9212:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    9217:	eb 38                	jmp    9251 <EvalGe+0xe3>
    9219:	f3 0f 1e fa          	endbr64
    921d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9221:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9225:	8b 71 04             	mov    0x4(%rcx),%esi
    9228:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    922c:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9230:	8b 49 04             	mov    0x4(%rcx),%ecx
    9233:	39 ce                	cmp    %ecx,%esi
    9235:	0f 93 c1             	setae  %cl
    9238:	0f b6 c9             	movzbl %cl,%ecx
    923b:	48 89 c7             	mov    %rax,%rdi
    923e:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9245:	ff ff ff 
    9248:	48 21 fe             	and    %rdi,%rsi
    924b:	48 89 f0             	mov    %rsi,%rax
    924e:	48 89 ca             	mov    %rcx,%rdx
    9251:	48 89 c6             	mov    %rax,%rsi
    9254:	48 89 d7             	mov    %rdx,%rdi
    9257:	48 89 c1             	mov    %rax,%rcx
    925a:	48 89 d3             	mov    %rdx,%rbx
    925d:	89 f0                	mov    %esi,%eax
    925f:	48 89 da             	mov    %rbx,%rdx
    9262:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9266:	c9                   	leave
    9267:	c3                   	ret

0000000000009268 <EvalAnd>:
    9268:	55                   	push   %rbp
    9269:	48 89 e5             	mov    %rsp,%rbp
    926c:	53                   	push   %rbx
    926d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9271:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9275:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9279:	8b 09                	mov    (%rcx),%ecx
    927b:	89 c9                	mov    %ecx,%ecx
    927d:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    9284:	00 
    9285:	48 8d 0d 64 60 00 00 	lea    0x6064(%rip),%rcx        # f2f0 <ops.5>
    928c:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    9290:	90                   	nop
    9291:	ff e1                	jmp    *%rcx
    9293:	f3 0f 1e fa          	endbr64
    9297:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    929b:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    929f:	48 85 c9             	test   %rcx,%rcx
    92a2:	74 14                	je     92b8 <EvalAnd+0x50>
    92a4:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    92a8:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    92ac:	48 85 c9             	test   %rcx,%rcx
    92af:	74 07                	je     92b8 <EvalAnd+0x50>
    92b1:	b9 01 00 00 00       	mov    $0x1,%ecx
    92b6:	eb 05                	jmp    92bd <EvalAnd+0x55>
    92b8:	b9 00 00 00 00       	mov    $0x0,%ecx
    92bd:	48 63 c9             	movslq %ecx,%rcx
    92c0:	48 89 c7             	mov    %rax,%rdi
    92c3:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    92ca:	ff ff ff 
    92cd:	48 21 fe             	and    %rdi,%rsi
    92d0:	48 89 f0             	mov    %rsi,%rax
    92d3:	48 89 ca             	mov    %rcx,%rdx
    92d6:	e9 b3 00 00 00       	jmp    938e <EvalAnd+0x126>
    92db:	f3 0f 1e fa          	endbr64
    92df:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    92e3:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    92e8:	66 0f ef c9          	pxor   %xmm1,%xmm1
    92ec:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    92f0:	7a 0a                	jp     92fc <EvalAnd+0x94>
    92f2:	66 0f ef c9          	pxor   %xmm1,%xmm1
    92f6:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    92fa:	74 24                	je     9320 <EvalAnd+0xb8>
    92fc:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9300:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9305:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9309:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    930d:	7a 0a                	jp     9319 <EvalAnd+0xb1>
    930f:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9313:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9317:	74 07                	je     9320 <EvalAnd+0xb8>
    9319:	b9 01 00 00 00       	mov    $0x1,%ecx
    931e:	eb 05                	jmp    9325 <EvalAnd+0xbd>
    9320:	b9 00 00 00 00       	mov    $0x0,%ecx
    9325:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9329:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    932d:	48 89 c6             	mov    %rax,%rsi
    9330:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9337:	ff ff ff 
    933a:	48 21 f1             	and    %rsi,%rcx
    933d:	48 83 c9 01          	or     $0x1,%rcx
    9341:	48 89 c8             	mov    %rcx,%rax
    9344:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    9349:	eb 43                	jmp    938e <EvalAnd+0x126>
    934b:	f3 0f 1e fa          	endbr64
    934f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9353:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9357:	48 85 c9             	test   %rcx,%rcx
    935a:	74 14                	je     9370 <EvalAnd+0x108>
    935c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9360:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9364:	48 85 c9             	test   %rcx,%rcx
    9367:	74 07                	je     9370 <EvalAnd+0x108>
    9369:	b9 01 00 00 00       	mov    $0x1,%ecx
    936e:	eb 05                	jmp    9375 <EvalAnd+0x10d>
    9370:	b9 00 00 00 00       	mov    $0x0,%ecx
    9375:	48 63 c9             	movslq %ecx,%rcx
    9378:	48 89 c7             	mov    %rax,%rdi
    937b:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9382:	ff ff ff 
    9385:	48 21 fe             	and    %rdi,%rsi
    9388:	48 89 f0             	mov    %rsi,%rax
    938b:	48 89 ca             	mov    %rcx,%rdx
    938e:	48 89 c6             	mov    %rax,%rsi
    9391:	48 89 d7             	mov    %rdx,%rdi
    9394:	48 89 c1             	mov    %rax,%rcx
    9397:	48 89 d3             	mov    %rdx,%rbx
    939a:	89 f0                	mov    %esi,%eax
    939c:	48 89 da             	mov    %rbx,%rdx
    939f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    93a3:	c9                   	leave
    93a4:	c3                   	ret

00000000000093a5 <EvalOr>:
    93a5:	55                   	push   %rbp
    93a6:	48 89 e5             	mov    %rsp,%rbp
    93a9:	53                   	push   %rbx
    93aa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    93ae:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    93b2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    93b6:	8b 09                	mov    (%rcx),%ecx
    93b8:	89 c9                	mov    %ecx,%ecx
    93ba:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    93c1:	00 
    93c2:	48 8d 0d 47 5f 00 00 	lea    0x5f47(%rip),%rcx        # f310 <ops.4>
    93c9:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    93cd:	90                   	nop
    93ce:	ff e1                	jmp    *%rcx
    93d0:	f3 0f 1e fa          	endbr64
    93d4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    93d8:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    93dc:	48 85 c9             	test   %rcx,%rcx
    93df:	75 0d                	jne    93ee <EvalOr+0x49>
    93e1:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    93e5:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    93e9:	48 85 c9             	test   %rcx,%rcx
    93ec:	74 07                	je     93f5 <EvalOr+0x50>
    93ee:	b9 01 00 00 00       	mov    $0x1,%ecx
    93f3:	eb 05                	jmp    93fa <EvalOr+0x55>
    93f5:	b9 00 00 00 00       	mov    $0x0,%ecx
    93fa:	48 63 c9             	movslq %ecx,%rcx
    93fd:	48 89 c7             	mov    %rax,%rdi
    9400:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9407:	ff ff ff 
    940a:	48 21 fe             	and    %rdi,%rsi
    940d:	48 89 f0             	mov    %rsi,%rax
    9410:	48 89 ca             	mov    %rcx,%rdx
    9413:	e9 b3 00 00 00       	jmp    94cb <EvalOr+0x126>
    9418:	f3 0f 1e fa          	endbr64
    941c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9420:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9425:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9429:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    942d:	7a 27                	jp     9456 <EvalOr+0xb1>
    942f:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9433:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9437:	75 1d                	jne    9456 <EvalOr+0xb1>
    9439:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    943d:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9442:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9446:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    944a:	7a 0a                	jp     9456 <EvalOr+0xb1>
    944c:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9450:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9454:	74 07                	je     945d <EvalOr+0xb8>
    9456:	b9 01 00 00 00       	mov    $0x1,%ecx
    945b:	eb 05                	jmp    9462 <EvalOr+0xbd>
    945d:	b9 00 00 00 00       	mov    $0x0,%ecx
    9462:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9466:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    946a:	48 89 c6             	mov    %rax,%rsi
    946d:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9474:	ff ff ff 
    9477:	48 21 f1             	and    %rsi,%rcx
    947a:	48 83 c9 01          	or     $0x1,%rcx
    947e:	48 89 c8             	mov    %rcx,%rax
    9481:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    9486:	eb 43                	jmp    94cb <EvalOr+0x126>
    9488:	f3 0f 1e fa          	endbr64
    948c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9490:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9494:	48 85 c9             	test   %rcx,%rcx
    9497:	75 0d                	jne    94a6 <EvalOr+0x101>
    9499:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    949d:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    94a1:	48 85 c9             	test   %rcx,%rcx
    94a4:	74 07                	je     94ad <EvalOr+0x108>
    94a6:	b9 01 00 00 00       	mov    $0x1,%ecx
    94ab:	eb 05                	jmp    94b2 <EvalOr+0x10d>
    94ad:	b9 00 00 00 00       	mov    $0x0,%ecx
    94b2:	48 63 c9             	movslq %ecx,%rcx
    94b5:	48 89 c7             	mov    %rax,%rdi
    94b8:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    94bf:	ff ff ff 
    94c2:	48 21 fe             	and    %rdi,%rsi
    94c5:	48 89 f0             	mov    %rsi,%rax
    94c8:	48 89 ca             	mov    %rcx,%rdx
    94cb:	48 89 c6             	mov    %rax,%rsi
    94ce:	48 89 d7             	mov    %rdx,%rdi
    94d1:	48 89 c1             	mov    %rax,%rcx
    94d4:	48 89 d3             	mov    %rdx,%rbx
    94d7:	89 f0                	mov    %esi,%eax
    94d9:	48 89 da             	mov    %rbx,%rdx
    94dc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    94e0:	c9                   	leave
    94e1:	c3                   	ret

00000000000094e2 <EvalMov>:
    94e2:	55                   	push   %rbp
    94e3:	48 89 e5             	mov    %rsp,%rbp
    94e6:	53                   	push   %rbx
    94e7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    94eb:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    94ef:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    94f3:	8b 09                	mov    (%rcx),%ecx
    94f5:	89 c9                	mov    %ecx,%ecx
    94f7:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    94fe:	00 
    94ff:	48 8d 0d 2a 5e 00 00 	lea    0x5e2a(%rip),%rcx        # f330 <ops.3>
    9506:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    950a:	90                   	nop
    950b:	ff e1                	jmp    *%rcx
    950d:	f3 0f 1e fa          	endbr64
    9511:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9515:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9519:	48 89 c7             	mov    %rax,%rdi
    951c:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9523:	ff ff ff 
    9526:	48 21 fe             	and    %rdi,%rsi
    9529:	48 89 f0             	mov    %rsi,%rax
    952c:	48 89 ca             	mov    %rcx,%rdx
    952f:	eb 51                	jmp    9582 <EvalMov+0xa0>
    9531:	f3 0f 1e fa          	endbr64
    9535:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9539:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    953e:	48 89 c6             	mov    %rax,%rsi
    9541:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9548:	ff ff ff 
    954b:	48 21 f1             	and    %rsi,%rcx
    954e:	48 83 c9 01          	or     $0x1,%rcx
    9552:	48 89 c8             	mov    %rcx,%rax
    9555:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    955a:	eb 26                	jmp    9582 <EvalMov+0xa0>
    955c:	f3 0f 1e fa          	endbr64
    9560:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9564:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    9568:	48 89 c7             	mov    %rax,%rdi
    956b:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9572:	ff ff ff 
    9575:	48 21 f9             	and    %rdi,%rcx
    9578:	48 83 c9 02          	or     $0x2,%rcx
    957c:	48 89 c8             	mov    %rcx,%rax
    957f:	48 89 f2             	mov    %rsi,%rdx
    9582:	48 89 c6             	mov    %rax,%rsi
    9585:	48 89 d7             	mov    %rdx,%rdi
    9588:	48 89 c1             	mov    %rax,%rcx
    958b:	48 89 d3             	mov    %rdx,%rbx
    958e:	89 f0                	mov    %esi,%eax
    9590:	48 89 da             	mov    %rbx,%rdx
    9593:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9597:	c9                   	leave
    9598:	c3                   	ret

0000000000009599 <EvalAddEq>:
    9599:	55                   	push   %rbp
    959a:	48 89 e5             	mov    %rsp,%rbp
    959d:	53                   	push   %rbx
    959e:	48 83 ec 18          	sub    $0x18,%rsp
    95a2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    95a6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    95aa:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    95ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    95b2:	48 89 d6             	mov    %rdx,%rsi
    95b5:	48 89 c7             	mov    %rax,%rdi
    95b8:	e8 04 ec ff ff       	call   81c1 <EvalAdd>
    95bd:	48 89 d1             	mov    %rdx,%rcx
    95c0:	48 89 ca             	mov    %rcx,%rdx
    95c3:	48 89 c6             	mov    %rax,%rsi
    95c6:	48 89 d7             	mov    %rdx,%rdi
    95c9:	48 89 c1             	mov    %rax,%rcx
    95cc:	48 89 d3             	mov    %rdx,%rbx
    95cf:	89 f0                	mov    %esi,%eax
    95d1:	48 89 da             	mov    %rbx,%rdx
    95d4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    95d8:	c9                   	leave
    95d9:	c3                   	ret

00000000000095da <EvalSubEq>:
    95da:	55                   	push   %rbp
    95db:	48 89 e5             	mov    %rsp,%rbp
    95de:	53                   	push   %rbx
    95df:	48 83 ec 18          	sub    $0x18,%rsp
    95e3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    95e7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    95eb:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    95ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    95f3:	48 89 d6             	mov    %rdx,%rsi
    95f6:	48 89 c7             	mov    %rax,%rdi
    95f9:	e8 a0 ec ff ff       	call   829e <EvalSub>
    95fe:	48 89 d1             	mov    %rdx,%rcx
    9601:	48 89 ca             	mov    %rcx,%rdx
    9604:	48 89 c6             	mov    %rax,%rsi
    9607:	48 89 d7             	mov    %rdx,%rdi
    960a:	48 89 c1             	mov    %rax,%rcx
    960d:	48 89 d3             	mov    %rdx,%rbx
    9610:	89 f0                	mov    %esi,%eax
    9612:	48 89 da             	mov    %rbx,%rdx
    9615:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9619:	c9                   	leave
    961a:	c3                   	ret

000000000000961b <EvalMulEq>:
    961b:	55                   	push   %rbp
    961c:	48 89 e5             	mov    %rsp,%rbp
    961f:	53                   	push   %rbx
    9620:	48 83 ec 18          	sub    $0x18,%rsp
    9624:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9628:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    962c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9630:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9634:	48 89 d6             	mov    %rdx,%rsi
    9637:	48 89 c7             	mov    %rax,%rdi
    963a:	e8 3c ed ff ff       	call   837b <EvalMul>
    963f:	48 89 d1             	mov    %rdx,%rcx
    9642:	48 89 ca             	mov    %rcx,%rdx
    9645:	48 89 c6             	mov    %rax,%rsi
    9648:	48 89 d7             	mov    %rdx,%rdi
    964b:	48 89 c1             	mov    %rax,%rcx
    964e:	48 89 d3             	mov    %rdx,%rbx
    9651:	89 f0                	mov    %esi,%eax
    9653:	48 89 da             	mov    %rbx,%rdx
    9656:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    965a:	c9                   	leave
    965b:	c3                   	ret

000000000000965c <EvalDivEq>:
    965c:	55                   	push   %rbp
    965d:	48 89 e5             	mov    %rsp,%rbp
    9660:	53                   	push   %rbx
    9661:	48 83 ec 18          	sub    $0x18,%rsp
    9665:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9669:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    966d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9671:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9675:	48 89 d6             	mov    %rdx,%rsi
    9678:	48 89 c7             	mov    %rax,%rdi
    967b:	e8 da ed ff ff       	call   845a <EvalDiv>
    9680:	48 89 d1             	mov    %rdx,%rcx
    9683:	48 89 ca             	mov    %rcx,%rdx
    9686:	48 89 c6             	mov    %rax,%rsi
    9689:	48 89 d7             	mov    %rdx,%rdi
    968c:	48 89 c1             	mov    %rax,%rcx
    968f:	48 89 d3             	mov    %rdx,%rbx
    9692:	89 f0                	mov    %esi,%eax
    9694:	48 89 da             	mov    %rbx,%rdx
    9697:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    969b:	c9                   	leave
    969c:	c3                   	ret

000000000000969d <EvalModEq>:
    969d:	55                   	push   %rbp
    969e:	48 89 e5             	mov    %rsp,%rbp
    96a1:	53                   	push   %rbx
    96a2:	48 83 ec 18          	sub    $0x18,%rsp
    96a6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    96aa:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    96ae:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    96b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    96b6:	48 89 d6             	mov    %rdx,%rsi
    96b9:	48 89 c7             	mov    %rax,%rdi
    96bc:	e8 78 ee ff ff       	call   8539 <EvalMod>
    96c1:	48 89 d1             	mov    %rdx,%rcx
    96c4:	48 89 ca             	mov    %rcx,%rdx
    96c7:	48 89 c6             	mov    %rax,%rsi
    96ca:	48 89 d7             	mov    %rdx,%rdi
    96cd:	48 89 c1             	mov    %rax,%rcx
    96d0:	48 89 d3             	mov    %rdx,%rbx
    96d3:	89 f0                	mov    %esi,%eax
    96d5:	48 89 da             	mov    %rbx,%rdx
    96d8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    96dc:	c9                   	leave
    96dd:	c3                   	ret

00000000000096de <EvalPowEq>:
    96de:	55                   	push   %rbp
    96df:	48 89 e5             	mov    %rsp,%rbp
    96e2:	53                   	push   %rbx
    96e3:	48 83 ec 18          	sub    $0x18,%rsp
    96e7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    96eb:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    96ef:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    96f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    96f7:	48 89 d6             	mov    %rdx,%rsi
    96fa:	48 89 c7             	mov    %rax,%rdi
    96fd:	e8 3a ef ff ff       	call   863c <EvalPow>
    9702:	48 89 d1             	mov    %rdx,%rcx
    9705:	48 89 ca             	mov    %rcx,%rdx
    9708:	48 89 c6             	mov    %rax,%rsi
    970b:	48 89 d7             	mov    %rdx,%rdi
    970e:	48 89 c1             	mov    %rax,%rcx
    9711:	48 89 d3             	mov    %rdx,%rbx
    9714:	89 f0                	mov    %esi,%eax
    9716:	48 89 da             	mov    %rbx,%rdx
    9719:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    971d:	c9                   	leave
    971e:	c3                   	ret

000000000000971f <EvalBandEq>:
    971f:	55                   	push   %rbp
    9720:	48 89 e5             	mov    %rsp,%rbp
    9723:	53                   	push   %rbx
    9724:	48 83 ec 18          	sub    $0x18,%rsp
    9728:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    972c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9730:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9734:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9738:	48 89 d6             	mov    %rdx,%rsi
    973b:	48 89 c7             	mov    %rax,%rdi
    973e:	e8 86 f0 ff ff       	call   87c9 <EvalBand>
    9743:	48 89 d1             	mov    %rdx,%rcx
    9746:	48 89 ca             	mov    %rcx,%rdx
    9749:	48 89 c6             	mov    %rax,%rsi
    974c:	48 89 d7             	mov    %rdx,%rdi
    974f:	48 89 c1             	mov    %rax,%rcx
    9752:	48 89 d3             	mov    %rdx,%rbx
    9755:	89 f0                	mov    %esi,%eax
    9757:	48 89 da             	mov    %rbx,%rdx
    975a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    975e:	c9                   	leave
    975f:	c3                   	ret

0000000000009760 <EvalBorEq>:
    9760:	55                   	push   %rbp
    9761:	48 89 e5             	mov    %rsp,%rbp
    9764:	53                   	push   %rbx
    9765:	48 83 ec 18          	sub    $0x18,%rsp
    9769:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    976d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9771:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9775:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9779:	48 89 d6             	mov    %rdx,%rsi
    977c:	48 89 c7             	mov    %rax,%rdi
    977f:	e8 34 f1 ff ff       	call   88b8 <EvalBor>
    9784:	48 89 d1             	mov    %rdx,%rcx
    9787:	48 89 ca             	mov    %rcx,%rdx
    978a:	48 89 c6             	mov    %rax,%rsi
    978d:	48 89 d7             	mov    %rdx,%rdi
    9790:	48 89 c1             	mov    %rax,%rcx
    9793:	48 89 d3             	mov    %rdx,%rbx
    9796:	89 f0                	mov    %esi,%eax
    9798:	48 89 da             	mov    %rbx,%rdx
    979b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    979f:	c9                   	leave
    97a0:	c3                   	ret

00000000000097a1 <EvalBxorEq>:
    97a1:	55                   	push   %rbp
    97a2:	48 89 e5             	mov    %rsp,%rbp
    97a5:	53                   	push   %rbx
    97a6:	48 83 ec 18          	sub    $0x18,%rsp
    97aa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    97ae:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    97b2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    97b6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    97ba:	48 89 d6             	mov    %rdx,%rsi
    97bd:	48 89 c7             	mov    %rax,%rdi
    97c0:	e8 e2 f1 ff ff       	call   89a7 <EvalBxor>
    97c5:	48 89 d1             	mov    %rdx,%rcx
    97c8:	48 89 ca             	mov    %rcx,%rdx
    97cb:	48 89 c6             	mov    %rax,%rsi
    97ce:	48 89 d7             	mov    %rdx,%rdi
    97d1:	48 89 c1             	mov    %rax,%rcx
    97d4:	48 89 d3             	mov    %rdx,%rbx
    97d7:	89 f0                	mov    %esi,%eax
    97d9:	48 89 da             	mov    %rbx,%rdx
    97dc:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    97e0:	c9                   	leave
    97e1:	c3                   	ret

00000000000097e2 <EvalLshEq>:
    97e2:	55                   	push   %rbp
    97e3:	48 89 e5             	mov    %rsp,%rbp
    97e6:	53                   	push   %rbx
    97e7:	48 83 ec 18          	sub    $0x18,%rsp
    97eb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    97ef:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    97f3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    97f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    97fb:	48 89 d6             	mov    %rdx,%rsi
    97fe:	48 89 c7             	mov    %rax,%rdi
    9801:	e8 90 f2 ff ff       	call   8a96 <EvalLsh>
    9806:	48 89 d1             	mov    %rdx,%rcx
    9809:	48 89 ca             	mov    %rcx,%rdx
    980c:	48 89 c6             	mov    %rax,%rsi
    980f:	48 89 d7             	mov    %rdx,%rdi
    9812:	48 89 c1             	mov    %rax,%rcx
    9815:	48 89 d3             	mov    %rdx,%rbx
    9818:	89 f0                	mov    %esi,%eax
    981a:	48 89 da             	mov    %rbx,%rdx
    981d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9821:	c9                   	leave
    9822:	c3                   	ret

0000000000009823 <EvalRshEq>:
    9823:	55                   	push   %rbp
    9824:	48 89 e5             	mov    %rsp,%rbp
    9827:	53                   	push   %rbx
    9828:	48 83 ec 18          	sub    $0x18,%rsp
    982c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9830:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9834:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9838:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    983c:	48 89 d6             	mov    %rdx,%rsi
    983f:	48 89 c7             	mov    %rax,%rdi
    9842:	e8 49 f3 ff ff       	call   8b90 <EvalRsh>
    9847:	48 89 d1             	mov    %rdx,%rcx
    984a:	48 89 ca             	mov    %rcx,%rdx
    984d:	48 89 c6             	mov    %rax,%rsi
    9850:	48 89 d7             	mov    %rdx,%rdi
    9853:	48 89 c1             	mov    %rax,%rcx
    9856:	48 89 d3             	mov    %rdx,%rbx
    9859:	89 f0                	mov    %esi,%eax
    985b:	48 89 da             	mov    %rbx,%rdx
    985e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9862:	c9                   	leave
    9863:	c3                   	ret

0000000000009864 <BinPromote>:
    9864:	f3 0f 1e fa          	endbr64
    9868:	55                   	push   %rbp
    9869:	48 89 e5             	mov    %rsp,%rbp
    986c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9870:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    9874:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9878:	8b 50 08             	mov    0x8(%rax),%edx
    987b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    987f:	8b 40 08             	mov    0x8(%rax),%eax
    9882:	89 c1                	mov    %eax,%ecx
    9884:	89 d2                	mov    %edx,%edx
    9886:	48 89 d0             	mov    %rdx,%rax
    9889:	48 01 c0             	add    %rax,%rax
    988c:	48 01 d0             	add    %rdx,%rax
    988f:	48 01 c8             	add    %rcx,%rax
    9892:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    9899:	00 
    989a:	48 8d 05 7f 48 00 00 	lea    0x487f(%rip),%rax        # e120 <types.25>
    98a1:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    98a4:	5d                   	pop    %rbp
    98a5:	c3                   	ret

00000000000098a6 <BinCast>:
    98a6:	f3 0f 1e fa          	endbr64
    98aa:	55                   	push   %rbp
    98ab:	48 89 e5             	mov    %rsp,%rbp
    98ae:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    98b2:	89 75 f4             	mov    %esi,-0xc(%rbp)
    98b5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    98b9:	8b 55 f4             	mov    -0xc(%rbp),%edx
    98bc:	89 50 08             	mov    %edx,0x8(%rax)
    98bf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    98c3:	8b 40 08             	mov    0x8(%rax),%eax
    98c6:	8b 55 f4             	mov    -0xc(%rbp),%edx
    98c9:	89 c1                	mov    %eax,%ecx
    98cb:	48 89 c8             	mov    %rcx,%rax
    98ce:	48 01 c0             	add    %rax,%rax
    98d1:	48 01 c8             	add    %rcx,%rax
    98d4:	48 01 d0             	add    %rdx,%rax
    98d7:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    98de:	00 
    98df:	48 8d 05 5a 56 00 00 	lea    0x565a(%rip),%rax        # ef40 <types.24>
    98e6:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    98ea:	90                   	nop
    98eb:	ff e0                	jmp    *%rax
    98ed:	f3 0f 1e fa          	endbr64
    98f1:	eb 5f                	jmp    9952 <BinCast+0xac>
    98f3:	f3 0f 1e fa          	endbr64
    98f7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    98fb:	48 8b 40 10          	mov    0x10(%rax),%rax
    98ff:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9903:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    9908:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    990c:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    9911:	eb 3f                	jmp    9952 <BinCast+0xac>
    9913:	f3 0f 1e fa          	endbr64
    9917:	eb 39                	jmp    9952 <BinCast+0xac>
    9919:	f3 0f 1e fa          	endbr64
    991d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9921:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    9926:	f2 48 0f 2c d0       	cvttsd2si %xmm0,%rdx
    992b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    992f:	48 89 50 10          	mov    %rdx,0x10(%rax)
    9933:	eb 1d                	jmp    9952 <BinCast+0xac>
    9935:	f3 0f 1e fa          	endbr64
    9939:	eb 17                	jmp    9952 <BinCast+0xac>
    993b:	f3 0f 1e fa          	endbr64
    993f:	eb 11                	jmp    9952 <BinCast+0xac>
    9941:	f3 0f 1e fa          	endbr64
    9945:	eb 0b                	jmp    9952 <BinCast+0xac>
    9947:	f3 0f 1e fa          	endbr64
    994b:	eb 05                	jmp    9952 <BinCast+0xac>
    994d:	f3 0f 1e fa          	endbr64
    9951:	90                   	nop
    9952:	5d                   	pop    %rbp
    9953:	c3                   	ret

0000000000009954 <BinFold>:
    9954:	f3 0f 1e fa          	endbr64
    9958:	55                   	push   %rbp
    9959:	48 89 e5             	mov    %rsp,%rbp
    995c:	53                   	push   %rbx
    995d:	48 83 ec 28          	sub    $0x28,%rsp
    9961:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9965:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    9968:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    996c:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    996f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    9976:	00 
    9977:	48 8d 05 22 56 00 00 	lea    0x5622(%rip),%rax        # efa0 <ops.23>
    997e:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    9982:	90                   	nop
    9983:	ff e0                	jmp    *%rax
    9985:	f3 0f 1e fa          	endbr64
    9989:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    998d:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9991:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9995:	48 8d 48 08          	lea    0x8(%rax),%rcx
    9999:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    999c:	89 c6                	mov    %eax,%esi
    999e:	48 89 cf             	mov    %rcx,%rdi
    99a1:	e8 cd e7 ff ff       	call   8173 <EvalBinErr>
    99a6:	48 89 d1             	mov    %rdx,%rcx
    99a9:	48 89 ca             	mov    %rcx,%rdx
    99ac:	e9 08 05 00 00       	jmp    9eb9 <BinFold+0x565>
    99b1:	f3 0f 1e fa          	endbr64
    99b5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    99b9:	48 8d 50 08          	lea    0x8(%rax),%rdx
    99bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    99c1:	48 83 c0 08          	add    $0x8,%rax
    99c5:	48 89 d6             	mov    %rdx,%rsi
    99c8:	48 89 c7             	mov    %rax,%rdi
    99cb:	e8 f1 e7 ff ff       	call   81c1 <EvalAdd>
    99d0:	48 89 d1             	mov    %rdx,%rcx
    99d3:	48 89 ca             	mov    %rcx,%rdx
    99d6:	e9 de 04 00 00       	jmp    9eb9 <BinFold+0x565>
    99db:	f3 0f 1e fa          	endbr64
    99df:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    99e3:	48 8d 50 08          	lea    0x8(%rax),%rdx
    99e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    99eb:	48 83 c0 08          	add    $0x8,%rax
    99ef:	48 89 d6             	mov    %rdx,%rsi
    99f2:	48 89 c7             	mov    %rax,%rdi
    99f5:	e8 a4 e8 ff ff       	call   829e <EvalSub>
    99fa:	48 89 d1             	mov    %rdx,%rcx
    99fd:	48 89 ca             	mov    %rcx,%rdx
    9a00:	e9 b4 04 00 00       	jmp    9eb9 <BinFold+0x565>
    9a05:	f3 0f 1e fa          	endbr64
    9a09:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9a0d:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9a11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a15:	48 83 c0 08          	add    $0x8,%rax
    9a19:	48 89 d6             	mov    %rdx,%rsi
    9a1c:	48 89 c7             	mov    %rax,%rdi
    9a1f:	e8 57 e9 ff ff       	call   837b <EvalMul>
    9a24:	48 89 d1             	mov    %rdx,%rcx
    9a27:	48 89 ca             	mov    %rcx,%rdx
    9a2a:	e9 8a 04 00 00       	jmp    9eb9 <BinFold+0x565>
    9a2f:	f3 0f 1e fa          	endbr64
    9a33:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9a37:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9a3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a3f:	48 83 c0 08          	add    $0x8,%rax
    9a43:	48 89 d6             	mov    %rdx,%rsi
    9a46:	48 89 c7             	mov    %rax,%rdi
    9a49:	e8 0c ea ff ff       	call   845a <EvalDiv>
    9a4e:	48 89 d1             	mov    %rdx,%rcx
    9a51:	48 89 ca             	mov    %rcx,%rdx
    9a54:	e9 60 04 00 00       	jmp    9eb9 <BinFold+0x565>
    9a59:	f3 0f 1e fa          	endbr64
    9a5d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9a61:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9a65:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a69:	48 83 c0 08          	add    $0x8,%rax
    9a6d:	48 89 d6             	mov    %rdx,%rsi
    9a70:	48 89 c7             	mov    %rax,%rdi
    9a73:	e8 c1 ea ff ff       	call   8539 <EvalMod>
    9a78:	48 89 d1             	mov    %rdx,%rcx
    9a7b:	48 89 ca             	mov    %rcx,%rdx
    9a7e:	e9 36 04 00 00       	jmp    9eb9 <BinFold+0x565>
    9a83:	f3 0f 1e fa          	endbr64
    9a87:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9a8b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9a8f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a93:	48 83 c0 08          	add    $0x8,%rax
    9a97:	48 89 d6             	mov    %rdx,%rsi
    9a9a:	48 89 c7             	mov    %rax,%rdi
    9a9d:	e8 9a eb ff ff       	call   863c <EvalPow>
    9aa2:	48 89 d1             	mov    %rdx,%rcx
    9aa5:	48 89 ca             	mov    %rcx,%rdx
    9aa8:	e9 0c 04 00 00       	jmp    9eb9 <BinFold+0x565>
    9aad:	f3 0f 1e fa          	endbr64
    9ab1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9ab5:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9ab9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9abd:	48 83 c0 08          	add    $0x8,%rax
    9ac1:	48 89 d6             	mov    %rdx,%rsi
    9ac4:	48 89 c7             	mov    %rax,%rdi
    9ac7:	e8 fd ec ff ff       	call   87c9 <EvalBand>
    9acc:	48 89 d1             	mov    %rdx,%rcx
    9acf:	48 89 ca             	mov    %rcx,%rdx
    9ad2:	e9 e2 03 00 00       	jmp    9eb9 <BinFold+0x565>
    9ad7:	f3 0f 1e fa          	endbr64
    9adb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9adf:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9ae3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9ae7:	48 83 c0 08          	add    $0x8,%rax
    9aeb:	48 89 d6             	mov    %rdx,%rsi
    9aee:	48 89 c7             	mov    %rax,%rdi
    9af1:	e8 c2 ed ff ff       	call   88b8 <EvalBor>
    9af6:	48 89 d1             	mov    %rdx,%rcx
    9af9:	48 89 ca             	mov    %rcx,%rdx
    9afc:	e9 b8 03 00 00       	jmp    9eb9 <BinFold+0x565>
    9b01:	f3 0f 1e fa          	endbr64
    9b05:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9b09:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9b0d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9b11:	48 83 c0 08          	add    $0x8,%rax
    9b15:	48 89 d6             	mov    %rdx,%rsi
    9b18:	48 89 c7             	mov    %rax,%rdi
    9b1b:	e8 87 ee ff ff       	call   89a7 <EvalBxor>
    9b20:	48 89 d1             	mov    %rdx,%rcx
    9b23:	48 89 ca             	mov    %rcx,%rdx
    9b26:	e9 8e 03 00 00       	jmp    9eb9 <BinFold+0x565>
    9b2b:	f3 0f 1e fa          	endbr64
    9b2f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9b33:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9b37:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9b3b:	48 83 c0 08          	add    $0x8,%rax
    9b3f:	48 89 d6             	mov    %rdx,%rsi
    9b42:	48 89 c7             	mov    %rax,%rdi
    9b45:	e8 4c ef ff ff       	call   8a96 <EvalLsh>
    9b4a:	48 89 d1             	mov    %rdx,%rcx
    9b4d:	48 89 ca             	mov    %rcx,%rdx
    9b50:	e9 64 03 00 00       	jmp    9eb9 <BinFold+0x565>
    9b55:	f3 0f 1e fa          	endbr64
    9b59:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9b5d:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9b61:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9b65:	48 83 c0 08          	add    $0x8,%rax
    9b69:	48 89 d6             	mov    %rdx,%rsi
    9b6c:	48 89 c7             	mov    %rax,%rdi
    9b6f:	e8 1c f0 ff ff       	call   8b90 <EvalRsh>
    9b74:	48 89 d1             	mov    %rdx,%rcx
    9b77:	48 89 ca             	mov    %rcx,%rdx
    9b7a:	e9 3a 03 00 00       	jmp    9eb9 <BinFold+0x565>
    9b7f:	f3 0f 1e fa          	endbr64
    9b83:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9b87:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9b8b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9b8f:	48 83 c0 08          	add    $0x8,%rax
    9b93:	48 89 d6             	mov    %rdx,%rsi
    9b96:	48 89 c7             	mov    %rax,%rdi
    9b99:	e8 ec f0 ff ff       	call   8c8a <EvalEqEq>
    9b9e:	48 89 d1             	mov    %rdx,%rcx
    9ba1:	48 89 ca             	mov    %rcx,%rdx
    9ba4:	e9 10 03 00 00       	jmp    9eb9 <BinFold+0x565>
    9ba9:	f3 0f 1e fa          	endbr64
    9bad:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9bb1:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9bb5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9bb9:	48 83 c0 08          	add    $0x8,%rax
    9bbd:	48 89 d6             	mov    %rdx,%rsi
    9bc0:	48 89 c7             	mov    %rax,%rdi
    9bc3:	e8 bd f1 ff ff       	call   8d85 <EvalNeq>
    9bc8:	48 89 d1             	mov    %rdx,%rcx
    9bcb:	48 89 ca             	mov    %rcx,%rdx
    9bce:	e9 e6 02 00 00       	jmp    9eb9 <BinFold+0x565>
    9bd3:	f3 0f 1e fa          	endbr64
    9bd7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9bdb:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9bdf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9be3:	48 83 c0 08          	add    $0x8,%rax
    9be7:	48 89 d6             	mov    %rdx,%rsi
    9bea:	48 89 c7             	mov    %rax,%rdi
    9bed:	e8 8e f2 ff ff       	call   8e80 <EvalLt>
    9bf2:	48 89 d1             	mov    %rdx,%rcx
    9bf5:	48 89 ca             	mov    %rcx,%rdx
    9bf8:	e9 bc 02 00 00       	jmp    9eb9 <BinFold+0x565>
    9bfd:	f3 0f 1e fa          	endbr64
    9c01:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9c05:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9c09:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9c0d:	48 83 c0 08          	add    $0x8,%rax
    9c11:	48 89 d6             	mov    %rdx,%rsi
    9c14:	48 89 c7             	mov    %rax,%rdi
    9c17:	e8 5e f3 ff ff       	call   8f7a <EvalLe>
    9c1c:	48 89 d1             	mov    %rdx,%rcx
    9c1f:	48 89 ca             	mov    %rcx,%rdx
    9c22:	e9 92 02 00 00       	jmp    9eb9 <BinFold+0x565>
    9c27:	f3 0f 1e fa          	endbr64
    9c2b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9c2f:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9c33:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9c37:	48 83 c0 08          	add    $0x8,%rax
    9c3b:	48 89 d6             	mov    %rdx,%rsi
    9c3e:	48 89 c7             	mov    %rax,%rdi
    9c41:	e8 2e f4 ff ff       	call   9074 <EvalGt>
    9c46:	48 89 d1             	mov    %rdx,%rcx
    9c49:	48 89 ca             	mov    %rcx,%rdx
    9c4c:	e9 68 02 00 00       	jmp    9eb9 <BinFold+0x565>
    9c51:	f3 0f 1e fa          	endbr64
    9c55:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9c59:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9c5d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9c61:	48 83 c0 08          	add    $0x8,%rax
    9c65:	48 89 d6             	mov    %rdx,%rsi
    9c68:	48 89 c7             	mov    %rax,%rdi
    9c6b:	e8 fe f4 ff ff       	call   916e <EvalGe>
    9c70:	48 89 d1             	mov    %rdx,%rcx
    9c73:	48 89 ca             	mov    %rcx,%rdx
    9c76:	e9 3e 02 00 00       	jmp    9eb9 <BinFold+0x565>
    9c7b:	f3 0f 1e fa          	endbr64
    9c7f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9c83:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9c87:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9c8b:	48 83 c0 08          	add    $0x8,%rax
    9c8f:	48 89 d6             	mov    %rdx,%rsi
    9c92:	48 89 c7             	mov    %rax,%rdi
    9c95:	e8 ce f5 ff ff       	call   9268 <EvalAnd>
    9c9a:	48 89 d1             	mov    %rdx,%rcx
    9c9d:	48 89 ca             	mov    %rcx,%rdx
    9ca0:	e9 14 02 00 00       	jmp    9eb9 <BinFold+0x565>
    9ca5:	f3 0f 1e fa          	endbr64
    9ca9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9cad:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9cb1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9cb5:	48 83 c0 08          	add    $0x8,%rax
    9cb9:	48 89 d6             	mov    %rdx,%rsi
    9cbc:	48 89 c7             	mov    %rax,%rdi
    9cbf:	e8 e1 f6 ff ff       	call   93a5 <EvalOr>
    9cc4:	48 89 d1             	mov    %rdx,%rcx
    9cc7:	48 89 ca             	mov    %rcx,%rdx
    9cca:	e9 ea 01 00 00       	jmp    9eb9 <BinFold+0x565>
    9ccf:	f3 0f 1e fa          	endbr64
    9cd3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9cd7:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9cdb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9cdf:	48 83 c0 08          	add    $0x8,%rax
    9ce3:	48 89 d6             	mov    %rdx,%rsi
    9ce6:	48 89 c7             	mov    %rax,%rdi
    9ce9:	e8 f4 f7 ff ff       	call   94e2 <EvalMov>
    9cee:	48 89 d1             	mov    %rdx,%rcx
    9cf1:	48 89 ca             	mov    %rcx,%rdx
    9cf4:	e9 c0 01 00 00       	jmp    9eb9 <BinFold+0x565>
    9cf9:	f3 0f 1e fa          	endbr64
    9cfd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9d01:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9d05:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9d09:	48 83 c0 08          	add    $0x8,%rax
    9d0d:	48 89 d6             	mov    %rdx,%rsi
    9d10:	48 89 c7             	mov    %rax,%rdi
    9d13:	e8 81 f8 ff ff       	call   9599 <EvalAddEq>
    9d18:	48 89 d1             	mov    %rdx,%rcx
    9d1b:	48 89 ca             	mov    %rcx,%rdx
    9d1e:	e9 96 01 00 00       	jmp    9eb9 <BinFold+0x565>
    9d23:	f3 0f 1e fa          	endbr64
    9d27:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9d2b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9d2f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9d33:	48 83 c0 08          	add    $0x8,%rax
    9d37:	48 89 d6             	mov    %rdx,%rsi
    9d3a:	48 89 c7             	mov    %rax,%rdi
    9d3d:	e8 98 f8 ff ff       	call   95da <EvalSubEq>
    9d42:	48 89 d1             	mov    %rdx,%rcx
    9d45:	48 89 ca             	mov    %rcx,%rdx
    9d48:	e9 6c 01 00 00       	jmp    9eb9 <BinFold+0x565>
    9d4d:	f3 0f 1e fa          	endbr64
    9d51:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9d55:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9d59:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9d5d:	48 83 c0 08          	add    $0x8,%rax
    9d61:	48 89 d6             	mov    %rdx,%rsi
    9d64:	48 89 c7             	mov    %rax,%rdi
    9d67:	e8 af f8 ff ff       	call   961b <EvalMulEq>
    9d6c:	48 89 d1             	mov    %rdx,%rcx
    9d6f:	48 89 ca             	mov    %rcx,%rdx
    9d72:	e9 42 01 00 00       	jmp    9eb9 <BinFold+0x565>
    9d77:	f3 0f 1e fa          	endbr64
    9d7b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9d7f:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9d83:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9d87:	48 83 c0 08          	add    $0x8,%rax
    9d8b:	48 89 d6             	mov    %rdx,%rsi
    9d8e:	48 89 c7             	mov    %rax,%rdi
    9d91:	e8 c6 f8 ff ff       	call   965c <EvalDivEq>
    9d96:	48 89 d1             	mov    %rdx,%rcx
    9d99:	48 89 ca             	mov    %rcx,%rdx
    9d9c:	e9 18 01 00 00       	jmp    9eb9 <BinFold+0x565>
    9da1:	f3 0f 1e fa          	endbr64
    9da5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9da9:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9dad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9db1:	48 83 c0 08          	add    $0x8,%rax
    9db5:	48 89 d6             	mov    %rdx,%rsi
    9db8:	48 89 c7             	mov    %rax,%rdi
    9dbb:	e8 dd f8 ff ff       	call   969d <EvalModEq>
    9dc0:	48 89 d1             	mov    %rdx,%rcx
    9dc3:	48 89 ca             	mov    %rcx,%rdx
    9dc6:	e9 ee 00 00 00       	jmp    9eb9 <BinFold+0x565>
    9dcb:	f3 0f 1e fa          	endbr64
    9dcf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9dd3:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9dd7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9ddb:	48 83 c0 08          	add    $0x8,%rax
    9ddf:	48 89 d6             	mov    %rdx,%rsi
    9de2:	48 89 c7             	mov    %rax,%rdi
    9de5:	e8 f4 f8 ff ff       	call   96de <EvalPowEq>
    9dea:	48 89 d1             	mov    %rdx,%rcx
    9ded:	48 89 ca             	mov    %rcx,%rdx
    9df0:	e9 c4 00 00 00       	jmp    9eb9 <BinFold+0x565>
    9df5:	f3 0f 1e fa          	endbr64
    9df9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9dfd:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9e01:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9e05:	48 83 c0 08          	add    $0x8,%rax
    9e09:	48 89 d6             	mov    %rdx,%rsi
    9e0c:	48 89 c7             	mov    %rax,%rdi
    9e0f:	e8 0b f9 ff ff       	call   971f <EvalBandEq>
    9e14:	48 89 d1             	mov    %rdx,%rcx
    9e17:	48 89 ca             	mov    %rcx,%rdx
    9e1a:	e9 9a 00 00 00       	jmp    9eb9 <BinFold+0x565>
    9e1f:	f3 0f 1e fa          	endbr64
    9e23:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9e27:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9e2b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9e2f:	48 83 c0 08          	add    $0x8,%rax
    9e33:	48 89 d6             	mov    %rdx,%rsi
    9e36:	48 89 c7             	mov    %rax,%rdi
    9e39:	e8 22 f9 ff ff       	call   9760 <EvalBorEq>
    9e3e:	48 89 d1             	mov    %rdx,%rcx
    9e41:	48 89 ca             	mov    %rcx,%rdx
    9e44:	eb 73                	jmp    9eb9 <BinFold+0x565>
    9e46:	f3 0f 1e fa          	endbr64
    9e4a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9e4e:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9e52:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9e56:	48 83 c0 08          	add    $0x8,%rax
    9e5a:	48 89 d6             	mov    %rdx,%rsi
    9e5d:	48 89 c7             	mov    %rax,%rdi
    9e60:	e8 3c f9 ff ff       	call   97a1 <EvalBxorEq>
    9e65:	48 89 d1             	mov    %rdx,%rcx
    9e68:	48 89 ca             	mov    %rcx,%rdx
    9e6b:	eb 4c                	jmp    9eb9 <BinFold+0x565>
    9e6d:	f3 0f 1e fa          	endbr64
    9e71:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9e75:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9e79:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9e7d:	48 83 c0 08          	add    $0x8,%rax
    9e81:	48 89 d6             	mov    %rdx,%rsi
    9e84:	48 89 c7             	mov    %rax,%rdi
    9e87:	e8 56 f9 ff ff       	call   97e2 <EvalLshEq>
    9e8c:	48 89 d1             	mov    %rdx,%rcx
    9e8f:	48 89 ca             	mov    %rcx,%rdx
    9e92:	eb 25                	jmp    9eb9 <BinFold+0x565>
    9e94:	f3 0f 1e fa          	endbr64
    9e98:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9e9c:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9ea0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9ea4:	48 83 c0 08          	add    $0x8,%rax
    9ea8:	48 89 d6             	mov    %rdx,%rsi
    9eab:	48 89 c7             	mov    %rax,%rdi
    9eae:	e8 70 f9 ff ff       	call   9823 <EvalRshEq>
    9eb3:	48 89 d1             	mov    %rdx,%rcx
    9eb6:	48 89 ca             	mov    %rcx,%rdx
    9eb9:	48 89 c6             	mov    %rax,%rsi
    9ebc:	48 89 d7             	mov    %rdx,%rdi
    9ebf:	48 89 c1             	mov    %rax,%rcx
    9ec2:	48 89 d3             	mov    %rdx,%rbx
    9ec5:	89 f0                	mov    %esi,%eax
    9ec7:	48 89 da             	mov    %rbx,%rdx
    9eca:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9ece:	c9                   	leave
    9ecf:	c3                   	ret

0000000000009ed0 <BinConstConst>:
    9ed0:	f3 0f 1e fa          	endbr64
    9ed4:	55                   	push   %rbp
    9ed5:	48 89 e5             	mov    %rsp,%rbp
    9ed8:	48 83 ec 40          	sub    $0x40,%rsp
    9edc:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    9ee0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    9ee4:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9ee7:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    9eeb:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9eef:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    9ef3:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    9ef8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    9efc:	8b 40 08             	mov    0x8(%rax),%eax
    9eff:	89 45 e8             	mov    %eax,-0x18(%rbp)
    9f02:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    9f06:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    9f09:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    9f0d:	89 ce                	mov    %ecx,%esi
    9f0f:	48 89 c7             	mov    %rax,%rdi
    9f12:	e8 3d fa ff ff       	call   9954 <BinFold>
    9f17:	89 c1                	mov    %eax,%ecx
    9f19:	48 89 d0             	mov    %rdx,%rax
    9f1c:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    9f1f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    9f23:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    9f27:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9f2b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    9f2f:	48 89 01             	mov    %rax,(%rcx)
    9f32:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    9f36:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9f3a:	48 89 41 10          	mov    %rax,0x10(%rcx)
    9f3e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f42:	c9                   	leave
    9f43:	c3                   	ret

0000000000009f44 <BinConstRef>:
    9f44:	f3 0f 1e fa          	endbr64
    9f48:	55                   	push   %rbp
    9f49:	48 89 e5             	mov    %rsp,%rbp
    9f4c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    9f50:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    9f54:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9f57:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    9f5b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f5f:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9f63:	0f 11 00             	movups %xmm0,(%rax)
    9f66:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    9f6b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f6f:	5d                   	pop    %rbp
    9f70:	c3                   	ret

0000000000009f71 <BinConstCall>:
    9f71:	f3 0f 1e fa          	endbr64
    9f75:	55                   	push   %rbp
    9f76:	48 89 e5             	mov    %rsp,%rbp
    9f79:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    9f7d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    9f81:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9f84:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    9f88:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f8c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9f90:	0f 11 00             	movups %xmm0,(%rax)
    9f93:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    9f98:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f9c:	5d                   	pop    %rbp
    9f9d:	c3                   	ret

0000000000009f9e <BinRefConst>:
    9f9e:	f3 0f 1e fa          	endbr64
    9fa2:	55                   	push   %rbp
    9fa3:	48 89 e5             	mov    %rsp,%rbp
    9fa6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    9faa:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    9fae:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9fb1:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    9fb5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9fb9:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9fbd:	0f 11 00             	movups %xmm0,(%rax)
    9fc0:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    9fc5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9fc9:	5d                   	pop    %rbp
    9fca:	c3                   	ret

0000000000009fcb <BinRefRef>:
    9fcb:	f3 0f 1e fa          	endbr64
    9fcf:	55                   	push   %rbp
    9fd0:	48 89 e5             	mov    %rsp,%rbp
    9fd3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    9fd7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    9fdb:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9fde:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    9fe2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9fe6:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9fea:	0f 11 00             	movups %xmm0,(%rax)
    9fed:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    9ff2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9ff6:	5d                   	pop    %rbp
    9ff7:	c3                   	ret

0000000000009ff8 <BinRefCall>:
    9ff8:	f3 0f 1e fa          	endbr64
    9ffc:	55                   	push   %rbp
    9ffd:	48 89 e5             	mov    %rsp,%rbp
    a000:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a004:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a008:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a00b:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a00f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a013:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a017:	0f 11 00             	movups %xmm0,(%rax)
    a01a:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a01f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a023:	5d                   	pop    %rbp
    a024:	c3                   	ret

000000000000a025 <BinCallConst>:
    a025:	f3 0f 1e fa          	endbr64
    a029:	55                   	push   %rbp
    a02a:	48 89 e5             	mov    %rsp,%rbp
    a02d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a031:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a035:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a038:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a03c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a040:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a044:	0f 11 00             	movups %xmm0,(%rax)
    a047:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a04c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a050:	5d                   	pop    %rbp
    a051:	c3                   	ret

000000000000a052 <BinCallRef>:
    a052:	f3 0f 1e fa          	endbr64
    a056:	55                   	push   %rbp
    a057:	48 89 e5             	mov    %rsp,%rbp
    a05a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a05e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a062:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a065:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a069:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a06d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a071:	0f 11 00             	movups %xmm0,(%rax)
    a074:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a079:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a07d:	5d                   	pop    %rbp
    a07e:	c3                   	ret

000000000000a07f <BinCallCall>:
    a07f:	f3 0f 1e fa          	endbr64
    a083:	55                   	push   %rbp
    a084:	48 89 e5             	mov    %rsp,%rbp
    a087:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a08b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a08f:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a092:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a096:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a09a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a09e:	0f 11 00             	movups %xmm0,(%rax)
    a0a1:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a0a6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a0aa:	5d                   	pop    %rbp
    a0ab:	c3                   	ret

000000000000a0ac <CompileBin>:
    a0ac:	f3 0f 1e fa          	endbr64
    a0b0:	55                   	push   %rbp
    a0b1:	48 89 e5             	mov    %rsp,%rbp
    a0b4:	48 83 ec 30          	sub    $0x30,%rsp
    a0b8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    a0bc:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    a0c0:	89 55 dc             	mov    %edx,-0x24(%rbp)
    a0c3:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    a0c7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    a0ce:	00 00 
    a0d0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    a0d4:	31 c0                	xor    %eax,%eax
    a0d6:	8b 45 dc             	mov    -0x24(%rbp),%eax
    a0d9:	89 c7                	mov    %eax,%edi
    a0db:	e8 5a d5 ff ff       	call   763a <TkToOp>
    a0e0:	89 45 f0             	mov    %eax,-0x10(%rbp)
    a0e3:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    a0e7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a0eb:	48 89 d6             	mov    %rdx,%rsi
    a0ee:	48 89 c7             	mov    %rax,%rdi
    a0f1:	e8 6e f7 ff ff       	call   9864 <BinPromote>
    a0f6:	89 45 f4             	mov    %eax,-0xc(%rbp)
    a0f9:	8b 55 f4             	mov    -0xc(%rbp),%edx
    a0fc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a100:	89 d6                	mov    %edx,%esi
    a102:	48 89 c7             	mov    %rax,%rdi
    a105:	e8 9c f7 ff ff       	call   98a6 <BinCast>
    a10a:	8b 55 f4             	mov    -0xc(%rbp),%edx
    a10d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a111:	89 d6                	mov    %edx,%esi
    a113:	48 89 c7             	mov    %rax,%rdi
    a116:	e8 8b f7 ff ff       	call   98a6 <BinCast>
    a11b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a11f:	8b 10                	mov    (%rax),%edx
    a121:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a125:	8b 00                	mov    (%rax),%eax
    a127:	89 c1                	mov    %eax,%ecx
    a129:	89 d2                	mov    %edx,%edx
    a12b:	48 89 d0             	mov    %rdx,%rax
    a12e:	48 01 c0             	add    %rax,%rax
    a131:	48 01 d0             	add    %rdx,%rax
    a134:	48 01 c8             	add    %rcx,%rax
    a137:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    a13e:	00 
    a13f:	48 8d 05 1a 52 00 00 	lea    0x521a(%rip),%rax        # f360 <irs.2>
    a146:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    a14a:	90                   	nop
    a14b:	ff e0                	jmp    *%rax
    a14d:	f3 0f 1e fa          	endbr64
    a151:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a155:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a159:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a15c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a160:	48 89 c7             	mov    %rax,%rdi
    a163:	e8 68 fd ff ff       	call   9ed0 <BinConstConst>
    a168:	e9 ef 00 00 00       	jmp    a25c <CompileBin+0x1b0>
    a16d:	f3 0f 1e fa          	endbr64
    a171:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a175:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a179:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a17c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a180:	48 89 c7             	mov    %rax,%rdi
    a183:	e8 bc fd ff ff       	call   9f44 <BinConstRef>
    a188:	e9 cf 00 00 00       	jmp    a25c <CompileBin+0x1b0>
    a18d:	f3 0f 1e fa          	endbr64
    a191:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a195:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a199:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a19c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a1a0:	48 89 c7             	mov    %rax,%rdi
    a1a3:	e8 c9 fd ff ff       	call   9f71 <BinConstCall>
    a1a8:	e9 af 00 00 00       	jmp    a25c <CompileBin+0x1b0>
    a1ad:	f3 0f 1e fa          	endbr64
    a1b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a1b5:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a1b9:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a1bc:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a1c0:	48 89 c7             	mov    %rax,%rdi
    a1c3:	e8 d6 fd ff ff       	call   9f9e <BinRefConst>
    a1c8:	e9 8f 00 00 00       	jmp    a25c <CompileBin+0x1b0>
    a1cd:	f3 0f 1e fa          	endbr64
    a1d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a1d5:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a1d9:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a1dc:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a1e0:	48 89 c7             	mov    %rax,%rdi
    a1e3:	e8 e3 fd ff ff       	call   9fcb <BinRefRef>
    a1e8:	eb 72                	jmp    a25c <CompileBin+0x1b0>
    a1ea:	f3 0f 1e fa          	endbr64
    a1ee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a1f2:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a1f6:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a1f9:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a1fd:	48 89 c7             	mov    %rax,%rdi
    a200:	e8 f3 fd ff ff       	call   9ff8 <BinRefCall>
    a205:	eb 55                	jmp    a25c <CompileBin+0x1b0>
    a207:	f3 0f 1e fa          	endbr64
    a20b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a20f:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a213:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a216:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a21a:	48 89 c7             	mov    %rax,%rdi
    a21d:	e8 03 fe ff ff       	call   a025 <BinCallConst>
    a222:	eb 38                	jmp    a25c <CompileBin+0x1b0>
    a224:	f3 0f 1e fa          	endbr64
    a228:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a22c:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a230:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a233:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a237:	48 89 c7             	mov    %rax,%rdi
    a23a:	e8 13 fe ff ff       	call   a052 <BinCallRef>
    a23f:	eb 1b                	jmp    a25c <CompileBin+0x1b0>
    a241:	f3 0f 1e fa          	endbr64
    a245:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a249:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a24d:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a250:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a254:	48 89 c7             	mov    %rax,%rdi
    a257:	e8 23 fe ff ff       	call   a07f <BinCallCall>
    a25c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a260:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    a267:	00 00 
    a269:	74 05                	je     a270 <CompileBin+0x1c4>
    a26b:	e8 90 9f ff ff       	call   4200 <__stack_chk_fail@plt>
    a270:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a274:	c9                   	leave
    a275:	c3                   	ret

000000000000a276 <MemAlloc>:
    a276:	f3 0f 1e fa          	endbr64
    a27a:	55                   	push   %rbp
    a27b:	48 89 e5             	mov    %rsp,%rbp
    a27e:	53                   	push   %rbx
    a27f:	48 83 ec 08          	sub    $0x8,%rsp
    a283:	e8 61 a1 ff ff       	call   43e9 <GetSrc>
    a288:	be 00 80 00 00       	mov    $0x8000,%esi
    a28d:	48 89 c7             	mov    %rax,%rdi
    a290:	e8 6e a1 ff ff       	call   4403 <ArenaAlloc>
    a295:	e8 5c a1 ff ff       	call   43f6 <GetStrings>
    a29a:	be 00 40 00 00       	mov    $0x4000,%esi
    a29f:	48 89 c7             	mov    %rax,%rdi
    a2a2:	e8 5c a1 ff ff       	call   4403 <ArenaAlloc>
    a2a7:	e8 4a a1 ff ff       	call   43f6 <GetStrings>
    a2ac:	48 89 c3             	mov    %rax,%rbx
    a2af:	e8 99 a6 ff ff       	call   494d <GetInterns>
    a2b4:	ba 00 01 00 00       	mov    $0x100,%edx
    a2b9:	48 89 de             	mov    %rbx,%rsi
    a2bc:	48 89 c7             	mov    %rax,%rdi
    a2bf:	e8 96 a6 ff ff       	call   495a <TableAlloc>
    a2c4:	e8 8f a2 ff ff       	call   4558 <GetConsts>
    a2c9:	ba 10 00 00 00       	mov    $0x10,%edx
    a2ce:	be 00 01 00 00       	mov    $0x100,%esi
    a2d3:	48 89 c7             	mov    %rax,%rdi
    a2d6:	e8 be a2 ff ff       	call   4599 <VecAlloc>
    a2db:	e8 85 a2 ff ff       	call   4565 <GetLocals>
    a2e0:	ba 18 00 00 00       	mov    $0x18,%edx
    a2e5:	be 00 01 00 00       	mov    $0x100,%esi
    a2ea:	48 89 c7             	mov    %rax,%rdi
    a2ed:	e8 a7 a2 ff ff       	call   4599 <VecAlloc>
    a2f2:	e8 7b a2 ff ff       	call   4572 <GetGlobals>
    a2f7:	ba 18 00 00 00       	mov    $0x18,%edx
    a2fc:	be 00 01 00 00       	mov    $0x100,%esi
    a301:	48 89 c7             	mov    %rax,%rdi
    a304:	e8 90 a2 ff ff       	call   4599 <VecAlloc>
    a309:	e8 bc a9 ff ff       	call   4cca <GetEnv>
    a30e:	be 00 01 00 00       	mov    $0x100,%esi
    a313:	48 89 c7             	mov    %rax,%rdi
    a316:	e8 bc a9 ff ff       	call   4cd7 <MapAlloc>
    a31b:	e8 5f a2 ff ff       	call   457f <GetCode>
    a320:	ba 04 00 00 00       	mov    $0x4,%edx
    a325:	be 00 01 00 00       	mov    $0x100,%esi
    a32a:	48 89 c7             	mov    %rax,%rdi
    a32d:	e8 67 a2 ff ff       	call   4599 <VecAlloc>
    a332:	e8 55 a2 ff ff       	call   458c <GetFuncs>
    a337:	ba 10 00 00 00       	mov    $0x10,%edx
    a33c:	be 80 00 00 00       	mov    $0x80,%esi
    a341:	48 89 c7             	mov    %rax,%rdi
    a344:	e8 50 a2 ff ff       	call   4599 <VecAlloc>
    a349:	90                   	nop
    a34a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a34e:	c9                   	leave
    a34f:	c3                   	ret

000000000000a350 <MemDealloc>:
    a350:	f3 0f 1e fa          	endbr64
    a354:	55                   	push   %rbp
    a355:	48 89 e5             	mov    %rsp,%rbp
    a358:	e8 2f a2 ff ff       	call   458c <GetFuncs>
    a35d:	48 8b 00             	mov    (%rax),%rax
    a360:	48 89 c7             	mov    %rax,%rdi
    a363:	e8 38 9e ff ff       	call   41a0 <free@plt>
    a368:	e8 12 a2 ff ff       	call   457f <GetCode>
    a36d:	48 8b 00             	mov    (%rax),%rax
    a370:	48 89 c7             	mov    %rax,%rdi
    a373:	e8 28 9e ff ff       	call   41a0 <free@plt>
    a378:	e8 4d a9 ff ff       	call   4cca <GetEnv>
    a37d:	48 8b 00             	mov    (%rax),%rax
    a380:	48 89 c7             	mov    %rax,%rdi
    a383:	e8 18 9e ff ff       	call   41a0 <free@plt>
    a388:	e8 e5 a1 ff ff       	call   4572 <GetGlobals>
    a38d:	48 8b 00             	mov    (%rax),%rax
    a390:	48 89 c7             	mov    %rax,%rdi
    a393:	e8 08 9e ff ff       	call   41a0 <free@plt>
    a398:	e8 c8 a1 ff ff       	call   4565 <GetLocals>
    a39d:	48 8b 00             	mov    (%rax),%rax
    a3a0:	48 89 c7             	mov    %rax,%rdi
    a3a3:	e8 f8 9d ff ff       	call   41a0 <free@plt>
    a3a8:	e8 ab a1 ff ff       	call   4558 <GetConsts>
    a3ad:	48 8b 00             	mov    (%rax),%rax
    a3b0:	48 89 c7             	mov    %rax,%rdi
    a3b3:	e8 e8 9d ff ff       	call   41a0 <free@plt>
    a3b8:	e8 90 a5 ff ff       	call   494d <GetInterns>
    a3bd:	48 8b 00             	mov    (%rax),%rax
    a3c0:	48 89 c7             	mov    %rax,%rdi
    a3c3:	e8 d8 9d ff ff       	call   41a0 <free@plt>
    a3c8:	e8 29 a0 ff ff       	call   43f6 <GetStrings>
    a3cd:	48 8b 00             	mov    (%rax),%rax
    a3d0:	48 89 c7             	mov    %rax,%rdi
    a3d3:	e8 c8 9d ff ff       	call   41a0 <free@plt>
    a3d8:	e8 0c a0 ff ff       	call   43e9 <GetSrc>
    a3dd:	48 8b 00             	mov    (%rax),%rax
    a3e0:	48 89 c7             	mov    %rax,%rdi
    a3e3:	e8 b8 9d ff ff       	call   41a0 <free@plt>
    a3e8:	90                   	nop
    a3e9:	5d                   	pop    %rbp
    a3ea:	c3                   	ret

000000000000a3eb <OnSig>:
    a3eb:	f3 0f 1e fa          	endbr64
    a3ef:	55                   	push   %rbp
    a3f0:	48 89 e5             	mov    %rsp,%rbp
    a3f3:	48 83 ec 10          	sub    $0x10,%rsp
    a3f7:	89 7d fc             	mov    %edi,-0x4(%rbp)
    a3fa:	e8 1c ab ff ff       	call   4f1b <GetJmp>
    a3ff:	be 00 00 00 00       	mov    $0x0,%esi
    a404:	48 89 c7             	mov    %rax,%rdi
    a407:	e8 c4 9e ff ff       	call   42d0 <longjmp@plt>

000000000000a40c <Init>:
    a40c:	55                   	push   %rbp
    a40d:	48 89 e5             	mov    %rsp,%rbp
    a410:	53                   	push   %rbx
    a411:	48 83 ec 08          	sub    $0x8,%rsp
    a415:	e8 5c fe ff ff       	call   a276 <MemAlloc>
    a41a:	e8 2e a5 ff ff       	call   494d <GetInterns>
    a41f:	48 89 c3             	mov    %rax,%rbx
    a422:	e8 c2 9f ff ff       	call   43e9 <GetSrc>
    a427:	48 89 de             	mov    %rbx,%rsi
    a42a:	48 89 c7             	mov    %rax,%rdi
    a42d:	e8 bc ac ff ff       	call   50ee <LexerInit>
    a432:	e8 19 c1 ff ff       	call   6550 <ParserInit>
    a437:	e8 86 ce ff ff       	call   72c2 <CompilerInit>
    a43c:	48 8d 05 a8 ff ff ff 	lea    -0x58(%rip),%rax        # a3eb <OnSig>
    a443:	48 89 c6             	mov    %rax,%rsi
    a446:	bf 02 00 00 00       	mov    $0x2,%edi
    a44b:	e8 40 9e ff ff       	call   4290 <__sysv_signal@plt>
    a450:	48 8d 05 94 ff ff ff 	lea    -0x6c(%rip),%rax        # a3eb <OnSig>
    a457:	48 89 c6             	mov    %rax,%rsi
    a45a:	bf 14 00 00 00       	mov    $0x14,%edi
    a45f:	e8 2c 9e ff ff       	call   4290 <__sysv_signal@plt>
    a464:	48 8d 05 80 ff ff ff 	lea    -0x80(%rip),%rax        # a3eb <OnSig>
    a46b:	48 89 c6             	mov    %rax,%rsi
    a46e:	bf 09 00 00 00       	mov    $0x9,%edi
    a473:	e8 18 9e ff ff       	call   4290 <__sysv_signal@plt>
    a478:	90                   	nop
    a479:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a47d:	c9                   	leave
    a47e:	c3                   	ret

000000000000a47f <Run>:
    a47f:	55                   	push   %rbp
    a480:	48 89 e5             	mov    %rsp,%rbp
    a483:	e8 61 9f ff ff       	call   43e9 <GetSrc>
    a488:	48 8b 00             	mov    (%rax),%rax
    a48b:	48 89 c7             	mov    %rax,%rdi
    a48e:	e8 b6 ac ff ff       	call   5149 <LexReinit>
    a493:	e8 0a cd ff ff       	call   71a2 <Parse>
    a498:	90                   	nop
    a499:	5d                   	pop    %rbp
    a49a:	c3                   	ret

000000000000a49b <Repl>:
    a49b:	55                   	push   %rbp
    a49c:	48 89 e5             	mov    %rsp,%rbp
    a49f:	48 83 ec 10          	sub    $0x10,%rsp
    a4a3:	e8 64 ff ff ff       	call   a40c <Init>
    a4a8:	e8 3c 9f ff ff       	call   43e9 <GetSrc>
    a4ad:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    a4b1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a4b5:	48 8b 00             	mov    (%rax),%rax
    a4b8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    a4bc:	48 8d 05 26 0c 00 00 	lea    0xc26(%rip),%rax        # b0e9 <_IO_stdin_used+0xe9>
    a4c3:	48 89 c7             	mov    %rax,%rdi
    a4c6:	b8 00 00 00 00       	mov    $0x0,%eax
    a4cb:	e8 40 9d ff ff       	call   4210 <printf@plt>
    a4d0:	48 8b 15 e9 4e 00 00 	mov    0x4ee9(%rip),%rdx        # f3c0 <stdin@GLIBC_2.2.5>
    a4d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a4db:	8b 40 0c             	mov    0xc(%rax),%eax
    a4de:	89 c1                	mov    %eax,%ecx
    a4e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    a4e4:	89 ce                	mov    %ecx,%esi
    a4e6:	48 89 c7             	mov    %rax,%rdi
    a4e9:	e8 52 9d ff ff       	call   4240 <fgets@plt>
    a4ee:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    a4f2:	e8 88 ff ff ff       	call   a47f <Run>
    a4f7:	90                   	nop
    a4f8:	eb c2                	jmp    a4bc <Repl+0x21>

000000000000a4fa <Load>:
    a4fa:	55                   	push   %rbp
    a4fb:	48 89 e5             	mov    %rsp,%rbp
    a4fe:	48 83 ec 10          	sub    $0x10,%rsp
    a502:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a506:	e8 01 ff ff ff       	call   a40c <Init>
    a50b:	e8 d9 9e ff ff       	call   43e9 <GetSrc>
    a510:	48 89 c2             	mov    %rax,%rdx
    a513:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a517:	48 89 c6             	mov    %rax,%rsi
    a51a:	48 89 d7             	mov    %rdx,%rdi
    a51d:	e8 d0 aa ff ff       	call   4ff2 <IoRead>
    a522:	e8 58 ff ff ff       	call   a47f <Run>
    a527:	b8 00 00 00 00       	mov    $0x0,%eax
    a52c:	c9                   	leave
    a52d:	c3                   	ret

000000000000a52e <Deinit>:
    a52e:	55                   	push   %rbp
    a52f:	48 89 e5             	mov    %rsp,%rbp
    a532:	48 83 ec 10          	sub    $0x10,%rsp
    a536:	89 7d fc             	mov    %edi,-0x4(%rbp)
    a539:	e8 12 fe ff ff       	call   a350 <MemDealloc>
    a53e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    a541:	c9                   	leave
    a542:	c3                   	ret

000000000000a543 <main>:
    a543:	f3 0f 1e fa          	endbr64
    a547:	55                   	push   %rbp
    a548:	48 89 e5             	mov    %rsp,%rbp
    a54b:	48 83 ec 20          	sub    $0x20,%rsp
    a54f:	89 7d ec             	mov    %edi,-0x14(%rbp)
    a552:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    a556:	e8 c0 a9 ff ff       	call   4f1b <GetJmp>
    a55b:	48 89 c7             	mov    %rax,%rdi
    a55e:	e8 ed 9c ff ff       	call   4250 <_setjmp@plt>
    a563:	f3 0f 1e fa          	endbr64
    a567:	89 45 fc             	mov    %eax,-0x4(%rbp)
    a56a:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    a56e:	74 0c                	je     a57c <main+0x39>
    a570:	8b 45 fc             	mov    -0x4(%rbp),%eax
    a573:	89 c7                	mov    %eax,%edi
    a575:	e8 b4 ff ff ff       	call   a52e <Deinit>
    a57a:	eb 20                	jmp    a59c <main+0x59>
    a57c:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
    a580:	75 07                	jne    a589 <main+0x46>
    a582:	e8 14 ff ff ff       	call   a49b <Repl>
    a587:	eb 13                	jmp    a59c <main+0x59>
    a589:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a58d:	48 83 c0 08          	add    $0x8,%rax
    a591:	48 8b 00             	mov    (%rax),%rax
    a594:	48 89 c7             	mov    %rax,%rdi
    a597:	e8 5e ff ff ff       	call   a4fa <Load>
    a59c:	c9                   	leave
    a59d:	c3                   	ret

Disassembly of section .fini:

000000000000a5a0 <_fini>:
    a5a0:	f3 0f 1e fa          	endbr64
    a5a4:	48 83 ec 08          	sub    $0x8,%rsp
    a5a8:	48 83 c4 08          	add    $0x8,%rsp
    a5ac:	c3                   	ret
