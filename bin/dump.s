
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
    4318:	48 8d 3d 84 64 00 00 	lea    0x6484(%rip),%rdi        # a7a3 <main>
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
    43ed:	48 8d 05 fc b1 00 00 	lea    0xb1fc(%rip),%rax        # f5f0 <src.1>
    43f4:	5d                   	pop    %rbp
    43f5:	c3                   	ret

00000000000043f6 <GetStrings>:
    43f6:	55                   	push   %rbp
    43f7:	48 89 e5             	mov    %rsp,%rbp
    43fa:	48 8d 05 ff af 00 00 	lea    0xafff(%rip),%rax        # f400 <strings.50>
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
    443f:	c7 40 08 01 00 00 00 	movl   $0x1,0x8(%rax)
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
    455c:	48 8d 05 1d b0 00 00 	lea    0xb01d(%rip),%rax        # f580 <consts.39>
    4563:	5d                   	pop    %rbp
    4564:	c3                   	ret

0000000000004565 <GetLocals>:
    4565:	55                   	push   %rbp
    4566:	48 89 e5             	mov    %rsp,%rbp
    4569:	48 8d 05 30 b0 00 00 	lea    0xb030(%rip),%rax        # f5a0 <locals.38>
    4570:	5d                   	pop    %rbp
    4571:	c3                   	ret

0000000000004572 <GetGlobals>:
    4572:	55                   	push   %rbp
    4573:	48 89 e5             	mov    %rsp,%rbp
    4576:	48 8d 05 93 ae 00 00 	lea    0xae93(%rip),%rax        # f410 <globals.49>
    457d:	5d                   	pop    %rbp
    457e:	c3                   	ret

000000000000457f <GetCode>:
    457f:	55                   	push   %rbp
    4580:	48 89 e5             	mov    %rsp,%rbp
    4583:	48 8d 05 36 b0 00 00 	lea    0xb036(%rip),%rax        # f5c0 <code.37>
    458a:	5d                   	pop    %rbp
    458b:	c3                   	ret

000000000000458c <GetFuncs>:
    458c:	55                   	push   %rbp
    458d:	48 89 e5             	mov    %rsp,%rbp
    4590:	48 8d 05 c9 af 00 00 	lea    0xafc9(%rip),%rax        # f560 <funcs.40>
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
    4951:	48 8d 05 a8 ac 00 00 	lea    0xaca8(%rip),%rax        # f600 <interns.0>
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

0000000000004cca <MapAlloc>:
    4cca:	f3 0f 1e fa          	endbr64
    4cce:	55                   	push   %rbp
    4ccf:	48 89 e5             	mov    %rsp,%rbp
    4cd2:	48 83 ec 10          	sub    $0x10,%rsp
    4cd6:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4cda:	89 75 f4             	mov    %esi,-0xc(%rbp)
    4cdd:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4ce0:	be 18 00 00 00       	mov    $0x18,%esi
    4ce5:	48 89 c7             	mov    %rax,%rdi
    4ce8:	e8 73 f5 ff ff       	call   4260 <calloc@plt>
    4ced:	48 89 c2             	mov    %rax,%rdx
    4cf0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4cf4:	48 89 10             	mov    %rdx,(%rax)
    4cf7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4cfb:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    4d02:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d06:	8b 55 f4             	mov    -0xc(%rbp),%edx
    4d09:	89 50 0c             	mov    %edx,0xc(%rax)
    4d0c:	90                   	nop
    4d0d:	c9                   	leave
    4d0e:	c3                   	ret

0000000000004d0f <MapGrow>:
    4d0f:	f3 0f 1e fa          	endbr64
    4d13:	55                   	push   %rbp
    4d14:	48 89 e5             	mov    %rsp,%rbp
    4d17:	48 83 ec 30          	sub    $0x30,%rsp
    4d1b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4d1f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d23:	48 8b 00             	mov    (%rax),%rax
    4d26:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4d2a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d2e:	8b 40 0c             	mov    0xc(%rax),%eax
    4d31:	89 45 ec             	mov    %eax,-0x14(%rbp)
    4d34:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d38:	8b 40 0c             	mov    0xc(%rax),%eax
    4d3b:	8d 14 00             	lea    (%rax,%rax,1),%edx
    4d3e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d42:	89 d6                	mov    %edx,%esi
    4d44:	48 89 c7             	mov    %rax,%rdi
    4d47:	e8 7e ff ff ff       	call   4cca <MapAlloc>
    4d4c:	c7 45 e8 00 00 00 00 	movl   $0x0,-0x18(%rbp)
    4d53:	eb 4f                	jmp    4da4 <MapGrow+0x95>
    4d55:	8b 55 e8             	mov    -0x18(%rbp),%edx
    4d58:	48 89 d0             	mov    %rdx,%rax
    4d5b:	48 01 c0             	add    %rax,%rax
    4d5e:	48 01 d0             	add    %rdx,%rax
    4d61:	48 c1 e0 03          	shl    $0x3,%rax
    4d65:	48 89 c2             	mov    %rax,%rdx
    4d68:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4d6c:	48 01 d0             	add    %rdx,%rax
    4d6f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4d73:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d77:	48 8b 00             	mov    (%rax),%rax
    4d7a:	48 85 c0             	test   %rax,%rax
    4d7d:	74 20                	je     4d9f <MapGrow+0x90>
    4d7f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d83:	48 8b 30             	mov    (%rax),%rsi
    4d86:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d8a:	8b 50 08             	mov    0x8(%rax),%edx
    4d8d:	48 8b 48 10          	mov    0x10(%rax),%rcx
    4d91:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d95:	48 89 c7             	mov    %rax,%rdi
    4d98:	e8 a0 00 00 00       	call   4e3d <MapPut>
    4d9d:	eb 01                	jmp    4da0 <MapGrow+0x91>
    4d9f:	90                   	nop
    4da0:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    4da4:	8b 45 e8             	mov    -0x18(%rbp),%eax
    4da7:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    4daa:	72 a9                	jb     4d55 <MapGrow+0x46>
    4dac:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4db0:	48 89 c7             	mov    %rax,%rdi
    4db3:	e8 e8 f3 ff ff       	call   41a0 <free@plt>
    4db8:	90                   	nop
    4db9:	c9                   	leave
    4dba:	c3                   	ret

0000000000004dbb <MapGet>:
    4dbb:	f3 0f 1e fa          	endbr64
    4dbf:	55                   	push   %rbp
    4dc0:	48 89 e5             	mov    %rsp,%rbp
    4dc3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4dc7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4dcb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4dcf:	8b 50 08             	mov    0x8(%rax),%edx
    4dd2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4dd6:	8b 40 0c             	mov    0xc(%rax),%eax
    4dd9:	83 e8 01             	sub    $0x1,%eax
    4ddc:	21 d0                	and    %edx,%eax
    4dde:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4de1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4de5:	48 8b 08             	mov    (%rax),%rcx
    4de8:	8b 55 f4             	mov    -0xc(%rbp),%edx
    4deb:	48 89 d0             	mov    %rdx,%rax
    4dee:	48 01 c0             	add    %rax,%rax
    4df1:	48 01 d0             	add    %rdx,%rax
    4df4:	48 c1 e0 03          	shl    $0x3,%rax
    4df8:	48 01 c8             	add    %rcx,%rax
    4dfb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4dff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e03:	48 8b 00             	mov    (%rax),%rax
    4e06:	48 85 c0             	test   %rax,%rax
    4e09:	75 06                	jne    4e11 <MapGet+0x56>
    4e0b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e0f:	eb 2a                	jmp    4e3b <MapGet+0x80>
    4e11:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e15:	48 8b 00             	mov    (%rax),%rax
    4e18:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    4e1c:	75 06                	jne    4e24 <MapGet+0x69>
    4e1e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e22:	eb 17                	jmp    4e3b <MapGet+0x80>
    4e24:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4e27:	8d 50 01             	lea    0x1(%rax),%edx
    4e2a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e2e:	8b 40 0c             	mov    0xc(%rax),%eax
    4e31:	83 e8 01             	sub    $0x1,%eax
    4e34:	21 d0                	and    %edx,%eax
    4e36:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4e39:	eb a6                	jmp    4de1 <MapGet+0x26>
    4e3b:	5d                   	pop    %rbp
    4e3c:	c3                   	ret

0000000000004e3d <MapPut>:
    4e3d:	f3 0f 1e fa          	endbr64
    4e41:	55                   	push   %rbp
    4e42:	48 89 e5             	mov    %rsp,%rbp
    4e45:	48 83 ec 30          	sub    $0x30,%rsp
    4e49:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4e4d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4e51:	89 d0                	mov    %edx,%eax
    4e53:	48 89 ca             	mov    %rcx,%rdx
    4e56:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    4e5a:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4e5e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e62:	8b 40 08             	mov    0x8(%rax),%eax
    4e65:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4e69:	8b 52 0c             	mov    0xc(%rdx),%edx
    4e6c:	39 c2                	cmp    %eax,%edx
    4e6e:	73 0c                	jae    4e7c <MapPut+0x3f>
    4e70:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e74:	48 89 c7             	mov    %rax,%rdi
    4e77:	e8 93 fe ff ff       	call   4d0f <MapGrow>
    4e7c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4e80:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e84:	48 89 d6             	mov    %rdx,%rsi
    4e87:	48 89 c7             	mov    %rax,%rdi
    4e8a:	e8 2c ff ff ff       	call   4dbb <MapGet>
    4e8f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4e93:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e97:	8b 50 08             	mov    0x8(%rax),%edx
    4e9a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e9e:	48 8b 00             	mov    (%rax),%rax
    4ea1:	48 85 c0             	test   %rax,%rax
    4ea4:	0f 94 c0             	sete   %al
    4ea7:	0f b6 c0             	movzbl %al,%eax
    4eaa:	01 c2                	add    %eax,%edx
    4eac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4eb0:	89 50 08             	mov    %edx,0x8(%rax)
    4eb3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4eb7:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4ebb:	48 89 10             	mov    %rdx,(%rax)
    4ebe:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    4ec2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4ec6:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4eca:	48 89 41 08          	mov    %rax,0x8(%rcx)
    4ece:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    4ed2:	90                   	nop
    4ed3:	c9                   	leave
    4ed4:	c3                   	ret

0000000000004ed5 <MapDel>:
    4ed5:	f3 0f 1e fa          	endbr64
    4ed9:	55                   	push   %rbp
    4eda:	48 89 e5             	mov    %rsp,%rbp
    4edd:	48 83 ec 20          	sub    $0x20,%rsp
    4ee1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4ee5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4ee9:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4eed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ef1:	48 89 d6             	mov    %rdx,%rsi
    4ef4:	48 89 c7             	mov    %rax,%rdi
    4ef7:	e8 bf fe ff ff       	call   4dbb <MapGet>
    4efc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4f00:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f04:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    4f0b:	90                   	nop
    4f0c:	c9                   	leave
    4f0d:	c3                   	ret

0000000000004f0e <GetEnv>:
    4f0e:	55                   	push   %rbp
    4f0f:	48 89 e5             	mov    %rsp,%rbp
    4f12:	48 8d 05 c7 a6 00 00 	lea    0xa6c7(%rip),%rax        # f5e0 <env.36>
    4f19:	5d                   	pop    %rbp
    4f1a:	c3                   	ret

0000000000004f1b <EnvAlloc>:
    4f1b:	f3 0f 1e fa          	endbr64
    4f1f:	55                   	push   %rbp
    4f20:	48 89 e5             	mov    %rsp,%rbp
    4f23:	48 83 ec 10          	sub    $0x10,%rsp
    4f27:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    4f2b:	89 75 f4             	mov    %esi,-0xc(%rbp)
    4f2e:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4f31:	be 08 00 00 00       	mov    $0x8,%esi
    4f36:	48 89 c7             	mov    %rax,%rdi
    4f39:	e8 22 f3 ff ff       	call   4260 <calloc@plt>
    4f3e:	48 89 c2             	mov    %rax,%rdx
    4f41:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f45:	48 89 10             	mov    %rdx,(%rax)
    4f48:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f4c:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%rax)
    4f53:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4f57:	8b 55 f4             	mov    -0xc(%rbp),%edx
    4f5a:	89 50 0c             	mov    %edx,0xc(%rax)
    4f5d:	90                   	nop
    4f5e:	c9                   	leave
    4f5f:	c3                   	ret

0000000000004f60 <EnvGrow>:
    4f60:	f3 0f 1e fa          	endbr64
    4f64:	55                   	push   %rbp
    4f65:	48 89 e5             	mov    %rsp,%rbp
    4f68:	48 83 ec 40          	sub    $0x40,%rsp
    4f6c:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    4f70:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4f74:	48 8b 00             	mov    (%rax),%rax
    4f77:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    4f7b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4f7f:	8b 40 0c             	mov    0xc(%rax),%eax
    4f82:	89 45 dc             	mov    %eax,-0x24(%rbp)
    4f85:	e8 6c f4 ff ff       	call   43f6 <GetStrings>
    4f8a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    4f8e:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4f92:	8b 40 0c             	mov    0xc(%rax),%eax
    4f95:	8d 14 00             	lea    (%rax,%rax,1),%edx
    4f98:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4f9c:	89 d6                	mov    %edx,%esi
    4f9e:	48 89 c7             	mov    %rax,%rdi
    4fa1:	e8 75 ff ff ff       	call   4f1b <EnvAlloc>
    4fa6:	c7 45 d8 00 00 00 00 	movl   $0x0,-0x28(%rbp)
    4fad:	eb 59                	jmp    5008 <EnvGrow+0xa8>
    4faf:	8b 45 d8             	mov    -0x28(%rbp),%eax
    4fb2:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    4fb9:	00 
    4fba:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4fbe:	48 01 d0             	add    %rdx,%rax
    4fc1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    4fc5:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4fc9:	8b 00                	mov    (%rax),%eax
    4fcb:	85 c0                	test   %eax,%eax
    4fcd:	74 34                	je     5003 <EnvGrow+0xa3>
    4fcf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4fd3:	8b 10                	mov    (%rax),%edx
    4fd5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4fd9:	89 d6                	mov    %edx,%esi
    4fdb:	48 89 c7             	mov    %rax,%rdi
    4fde:	e8 3d f5 ff ff       	call   4520 <ArenaOff>
    4fe3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4fe7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4feb:	8b 50 04             	mov    0x4(%rax),%edx
    4fee:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    4ff2:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    4ff6:	48 89 ce             	mov    %rcx,%rsi
    4ff9:	48 89 c7             	mov    %rax,%rdi
    4ffc:	e8 c5 00 00 00       	call   50c6 <EnvPut>
    5001:	eb 01                	jmp    5004 <EnvGrow+0xa4>
    5003:	90                   	nop
    5004:	83 45 d8 01          	addl   $0x1,-0x28(%rbp)
    5008:	8b 45 d8             	mov    -0x28(%rbp),%eax
    500b:	3b 45 dc             	cmp    -0x24(%rbp),%eax
    500e:	72 9f                	jb     4faf <EnvGrow+0x4f>
    5010:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5014:	48 89 c7             	mov    %rax,%rdi
    5017:	e8 84 f1 ff ff       	call   41a0 <free@plt>
    501c:	90                   	nop
    501d:	c9                   	leave
    501e:	c3                   	ret

000000000000501f <EvarToVar>:
    501f:	f3 0f 1e fa          	endbr64
    5023:	55                   	push   %rbp
    5024:	48 89 e5             	mov    %rsp,%rbp
    5027:	53                   	push   %rbx
    5028:	48 83 ec 08          	sub    $0x8,%rsp
    502c:	48 89 7d f0          	mov    %rdi,-0x10(%rbp)
    5030:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5034:	8b 58 04             	mov    0x4(%rax),%ebx
    5037:	e8 36 f5 ff ff       	call   4572 <GetGlobals>
    503c:	89 de                	mov    %ebx,%esi
    503e:	48 89 c7             	mov    %rax,%rdi
    5041:	e8 29 f7 ff ff       	call   476f <VecGet>
    5046:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    504a:	c9                   	leave
    504b:	c3                   	ret

000000000000504c <EnvGet>:
    504c:	f3 0f 1e fa          	endbr64
    5050:	55                   	push   %rbp
    5051:	48 89 e5             	mov    %rsp,%rbp
    5054:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5058:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    505c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5060:	8b 50 08             	mov    0x8(%rax),%edx
    5063:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5067:	8b 40 0c             	mov    0xc(%rax),%eax
    506a:	83 e8 01             	sub    $0x1,%eax
    506d:	21 d0                	and    %edx,%eax
    506f:	89 45 f4             	mov    %eax,-0xc(%rbp)
    5072:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5076:	48 8b 00             	mov    (%rax),%rax
    5079:	8b 55 f4             	mov    -0xc(%rbp),%edx
    507c:	48 c1 e2 03          	shl    $0x3,%rdx
    5080:	48 01 d0             	add    %rdx,%rax
    5083:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5087:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    508b:	8b 00                	mov    (%rax),%eax
    508d:	85 c0                	test   %eax,%eax
    508f:	75 06                	jne    5097 <EnvGet+0x4b>
    5091:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5095:	eb 2d                	jmp    50c4 <EnvGet+0x78>
    5097:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    509b:	8b 10                	mov    (%rax),%edx
    509d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    50a1:	8b 00                	mov    (%rax),%eax
    50a3:	39 c2                	cmp    %eax,%edx
    50a5:	75 06                	jne    50ad <EnvGet+0x61>
    50a7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50ab:	eb 17                	jmp    50c4 <EnvGet+0x78>
    50ad:	8b 45 f4             	mov    -0xc(%rbp),%eax
    50b0:	8d 50 01             	lea    0x1(%rax),%edx
    50b3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50b7:	8b 40 0c             	mov    0xc(%rax),%eax
    50ba:	83 e8 01             	sub    $0x1,%eax
    50bd:	21 d0                	and    %edx,%eax
    50bf:	89 45 f4             	mov    %eax,-0xc(%rbp)
    50c2:	eb ae                	jmp    5072 <EnvGet+0x26>
    50c4:	5d                   	pop    %rbp
    50c5:	c3                   	ret

00000000000050c6 <EnvPut>:
    50c6:	f3 0f 1e fa          	endbr64
    50ca:	55                   	push   %rbp
    50cb:	48 89 e5             	mov    %rsp,%rbp
    50ce:	48 83 ec 30          	sub    $0x30,%rsp
    50d2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    50d6:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    50da:	89 55 dc             	mov    %edx,-0x24(%rbp)
    50dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50e1:	8b 40 08             	mov    0x8(%rax),%eax
    50e4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    50e8:	8b 52 0c             	mov    0xc(%rdx),%edx
    50eb:	39 c2                	cmp    %eax,%edx
    50ed:	73 0c                	jae    50fb <EnvPut+0x35>
    50ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50f3:	48 89 c7             	mov    %rax,%rdi
    50f6:	e8 65 fe ff ff       	call   4f60 <EnvGrow>
    50fb:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    50ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5103:	48 89 d6             	mov    %rdx,%rsi
    5106:	48 89 c7             	mov    %rax,%rdi
    5109:	e8 3e ff ff ff       	call   504c <EnvGet>
    510e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5112:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5116:	8b 50 08             	mov    0x8(%rax),%edx
    5119:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    511d:	8b 00                	mov    (%rax),%eax
    511f:	85 c0                	test   %eax,%eax
    5121:	0f 94 c0             	sete   %al
    5124:	0f b6 c0             	movzbl %al,%eax
    5127:	01 c2                	add    %eax,%edx
    5129:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    512d:	89 50 08             	mov    %edx,0x8(%rax)
    5130:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5134:	8b 10                	mov    (%rax),%edx
    5136:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    513a:	89 10                	mov    %edx,(%rax)
    513c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5140:	8b 55 dc             	mov    -0x24(%rbp),%edx
    5143:	89 50 04             	mov    %edx,0x4(%rax)
    5146:	90                   	nop
    5147:	c9                   	leave
    5148:	c3                   	ret

0000000000005149 <EnvDel>:
    5149:	f3 0f 1e fa          	endbr64
    514d:	55                   	push   %rbp
    514e:	48 89 e5             	mov    %rsp,%rbp
    5151:	48 83 ec 20          	sub    $0x20,%rsp
    5155:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5159:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    515d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    5161:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5165:	48 89 d6             	mov    %rdx,%rsi
    5168:	48 89 c7             	mov    %rax,%rdi
    516b:	e8 dc fe ff ff       	call   504c <EnvGet>
    5170:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5174:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    5179:	74 0c                	je     5187 <EnvDel+0x3e>
    517b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    517f:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
    5185:	eb 01                	jmp    5188 <EnvDel+0x3f>
    5187:	90                   	nop
    5188:	c9                   	leave
    5189:	c3                   	ret

000000000000518a <GetJmp>:
    518a:	55                   	push   %rbp
    518b:	48 89 e5             	mov    %rsp,%rbp
    518e:	48 8d 05 cb a2 00 00 	lea    0xa2cb(%rip),%rax        # f460 <buf.46>
    5195:	5d                   	pop    %rbp
    5196:	c3                   	ret

0000000000005197 <Throw>:
    5197:	55                   	push   %rbp
    5198:	48 89 e5             	mov    %rsp,%rbp
    519b:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
    51a2:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
    51a9:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
    51b0:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
    51b7:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    51be:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
    51c5:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
    51cc:	84 c0                	test   %al,%al
    51ce:	74 20                	je     51f0 <Throw+0x59>
    51d0:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
    51d4:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
    51d8:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
    51dc:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
    51e0:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
    51e4:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
    51e8:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
    51ec:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
    51f0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    51f7:	00 00 
    51f9:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    5200:	31 c0                	xor    %eax,%eax
    5202:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
    5209:	00 00 00 
    520c:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
    5213:	00 00 00 
    5216:	48 8d 45 10          	lea    0x10(%rbp),%rax
    521a:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    5221:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
    5228:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    522f:	48 8b 05 aa a1 00 00 	mov    0xa1aa(%rip),%rax        # f3e0 <stderr@GLIBC_2.2.5>
    5236:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
    523d:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
    5244:	48 89 ce             	mov    %rcx,%rsi
    5247:	48 89 c7             	mov    %rax,%rdi
    524a:	e8 a1 f0 ff ff       	call   42f0 <vfprintf@plt>
    524f:	e8 36 ff ff ff       	call   518a <GetJmp>
    5254:	be 01 00 00 00       	mov    $0x1,%esi
    5259:	48 89 c7             	mov    %rax,%rdi
    525c:	e8 6f f0 ff ff       	call   42d0 <longjmp@plt>

0000000000005261 <IoRead>:
    5261:	55                   	push   %rbp
    5262:	48 89 e5             	mov    %rsp,%rbp
    5265:	48 83 ec 30          	sub    $0x30,%rsp
    5269:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    526d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    5271:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5275:	48 8d 15 94 5d 00 00 	lea    0x5d94(%rip),%rdx        # b010 <_IO_stdin_used+0x10>
    527c:	48 89 d6             	mov    %rdx,%rsi
    527f:	48 89 c7             	mov    %rax,%rdi
    5282:	e8 59 f0 ff ff       	call   42e0 <fopen@plt>
    5287:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    528b:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    5290:	75 1b                	jne    52ad <IoRead+0x4c>
    5292:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5296:	48 89 c6             	mov    %rax,%rsi
    5299:	48 8d 05 73 5d 00 00 	lea    0x5d73(%rip),%rax        # b013 <_IO_stdin_used+0x13>
    52a0:	48 89 c7             	mov    %rax,%rdi
    52a3:	b8 00 00 00 00       	mov    $0x0,%eax
    52a8:	e8 ea fe ff ff       	call   5197 <Throw>
    52ad:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    52b1:	ba 02 00 00 00       	mov    $0x2,%edx
    52b6:	be 00 00 00 00       	mov    $0x0,%esi
    52bb:	48 89 c7             	mov    %rax,%rdi
    52be:	e8 ed ef ff ff       	call   42b0 <fseek@plt>
    52c3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    52c7:	48 89 c7             	mov    %rax,%rdi
    52ca:	e8 a1 ef ff ff       	call   4270 <ftell@plt>
    52cf:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    52d3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    52d7:	ba 00 00 00 00       	mov    $0x0,%edx
    52dc:	be 00 00 00 00       	mov    $0x0,%esi
    52e1:	48 89 c7             	mov    %rax,%rdi
    52e4:	e8 c7 ef ff ff       	call   42b0 <fseek@plt>
    52e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    52ed:	89 c1                	mov    %eax,%ecx
    52ef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    52f3:	ba 01 00 00 00       	mov    $0x1,%edx
    52f8:	89 ce                	mov    %ecx,%esi
    52fa:	48 89 c7             	mov    %rax,%rdi
    52fd:	e8 51 f1 ff ff       	call   4453 <ArenaPush>
    5302:	89 c2                	mov    %eax,%edx
    5304:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5308:	89 d6                	mov    %edx,%esi
    530a:	48 89 c7             	mov    %rax,%rdi
    530d:	e8 0e f2 ff ff       	call   4520 <ArenaOff>
    5312:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5316:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    531a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    531e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5322:	be 01 00 00 00       	mov    $0x1,%esi
    5327:	48 89 c7             	mov    %rax,%rdi
    532a:	e8 91 ee ff ff       	call   41c0 <fread@plt>
    532f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5333:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    5337:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    533b:	48 01 d0             	add    %rdx,%rax
    533e:	c6 00 00             	movb   $0x0,(%rax)
    5341:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5345:	48 89 c7             	mov    %rax,%rdi
    5348:	e8 a3 ee ff ff       	call   41f0 <fclose@plt>
    534d:	90                   	nop
    534e:	c9                   	leave
    534f:	c3                   	ret

0000000000005350 <GetLexer>:
    5350:	55                   	push   %rbp
    5351:	48 89 e5             	mov    %rsp,%rbp
    5354:	48 8d 05 e5 a0 00 00 	lea    0xa0e5(%rip),%rax        # f440 <lexer.47>
    535b:	5d                   	pop    %rbp
    535c:	c3                   	ret

000000000000535d <LexerInit>:
    535d:	55                   	push   %rbp
    535e:	48 89 e5             	mov    %rsp,%rbp
    5361:	48 83 ec 20          	sub    $0x20,%rsp
    5365:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5369:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    536d:	e8 de ff ff ff       	call   5350 <GetLexer>
    5372:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5376:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    537a:	48 8b 10             	mov    (%rax),%rdx
    537d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5381:	48 89 10             	mov    %rdx,(%rax)
    5384:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5388:	48 8b 10             	mov    (%rax),%rdx
    538b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    538f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5393:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5397:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
    539e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53a2:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%rax)
    53a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53ad:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    53b1:	48 89 50 18          	mov    %rdx,0x18(%rax)
    53b5:	90                   	nop
    53b6:	c9                   	leave
    53b7:	c3                   	ret

00000000000053b8 <LexReinit>:
    53b8:	55                   	push   %rbp
    53b9:	48 89 e5             	mov    %rsp,%rbp
    53bc:	48 83 ec 18          	sub    $0x18,%rsp
    53c0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    53c4:	e8 87 ff ff ff       	call   5350 <GetLexer>
    53c9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    53cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53d1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    53d5:	48 89 10             	mov    %rdx,(%rax)
    53d8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53dc:	48 8b 10             	mov    (%rax),%rdx
    53df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53e3:	48 89 50 08          	mov    %rdx,0x8(%rax)
    53e7:	90                   	nop
    53e8:	c9                   	leave
    53e9:	c3                   	ret

00000000000053ea <LexSet>:
    53ea:	55                   	push   %rbp
    53eb:	48 89 e5             	mov    %rsp,%rbp
    53ee:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    53f2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    53f6:	89 55 cc             	mov    %edx,-0x34(%rbp)
    53f9:	89 c8                	mov    %ecx,%eax
    53fb:	44 89 c2             	mov    %r8d,%edx
    53fe:	88 45 c8             	mov    %al,-0x38(%rbp)
    5401:	89 d0                	mov    %edx,%eax
    5403:	88 45 c4             	mov    %al,-0x3c(%rbp)
    5406:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    540a:	48 8b 50 08          	mov    0x8(%rax),%rdx
    540e:	0f b6 45 c4          	movzbl -0x3c(%rbp),%eax
    5412:	48 01 c2             	add    %rax,%rdx
    5415:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5419:	48 89 50 08          	mov    %rdx,0x8(%rax)
    541d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5421:	8b 50 14             	mov    0x14(%rax),%edx
    5424:	0f b6 45 c4          	movzbl -0x3c(%rbp),%eax
    5428:	01 c2                	add    %eax,%edx
    542a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    542e:	89 50 14             	mov    %edx,0x14(%rax)
    5431:	0f b6 55 c8          	movzbl -0x38(%rbp),%edx
    5435:	8b 45 cc             	mov    -0x34(%rbp),%eax
    5438:	01 c2                	add    %eax,%edx
    543a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    543e:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5442:	0f 11 00             	movups %xmm0,(%rax)
    5445:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    544a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    544e:	89 10                	mov    %edx,(%rax)
    5450:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5454:	5d                   	pop    %rbp
    5455:	c3                   	ret

0000000000005456 <LexEof>:
    5456:	55                   	push   %rbp
    5457:	48 89 e5             	mov    %rsp,%rbp
    545a:	48 83 ec 20          	sub    $0x20,%rsp
    545e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5462:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5466:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    546d:	00 00 
    546f:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5473:	31 c0                	xor    %eax,%eax
    5475:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5479:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    547d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5483:	b9 00 00 00 00       	mov    $0x0,%ecx
    5488:	ba 00 00 00 00       	mov    $0x0,%edx
    548d:	48 89 c7             	mov    %rax,%rdi
    5490:	e8 55 ff ff ff       	call   53ea <LexSet>
    5495:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5499:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    54a0:	00 00 
    54a2:	74 05                	je     54a9 <LexEof+0x53>
    54a4:	e8 57 ed ff ff       	call   4200 <__stack_chk_fail@plt>
    54a9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    54ad:	c9                   	leave
    54ae:	c3                   	ret

00000000000054af <LexLine>:
    54af:	55                   	push   %rbp
    54b0:	48 89 e5             	mov    %rsp,%rbp
    54b3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    54b7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    54bb:	8b 40 10             	mov    0x10(%rax),%eax
    54be:	8d 50 01             	lea    0x1(%rax),%edx
    54c1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    54c5:	89 50 10             	mov    %edx,0x10(%rax)
    54c8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    54cc:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%rax)
    54d3:	90                   	nop
    54d4:	5d                   	pop    %rbp
    54d5:	c3                   	ret

00000000000054d6 <LexNot>:
    54d6:	55                   	push   %rbp
    54d7:	48 89 e5             	mov    %rsp,%rbp
    54da:	48 83 ec 20          	sub    $0x20,%rsp
    54de:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    54e2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    54e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    54ed:	00 00 
    54ef:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    54f3:	31 c0                	xor    %eax,%eax
    54f5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    54f9:	48 8b 40 08          	mov    0x8(%rax),%rax
    54fd:	0f b6 00             	movzbl (%rax),%eax
    5500:	3c 3d                	cmp    $0x3d,%al
    5502:	0f 94 c0             	sete   %al
    5505:	88 45 f7             	mov    %al,-0x9(%rbp)
    5508:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    550c:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5510:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5514:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5518:	41 89 c8             	mov    %ecx,%r8d
    551b:	89 d1                	mov    %edx,%ecx
    551d:	ba 01 00 00 00       	mov    $0x1,%edx
    5522:	48 89 c7             	mov    %rax,%rdi
    5525:	e8 c0 fe ff ff       	call   53ea <LexSet>
    552a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    552e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5535:	00 00 
    5537:	74 05                	je     553e <LexNot+0x68>
    5539:	e8 c2 ec ff ff       	call   4200 <__stack_chk_fail@plt>
    553e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5542:	c9                   	leave
    5543:	c3                   	ret

0000000000005544 <LexStr>:
    5544:	55                   	push   %rbp
    5545:	48 89 e5             	mov    %rsp,%rbp
    5548:	48 83 ec 40          	sub    $0x40,%rsp
    554c:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    5550:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    5554:	eb 14                	jmp    556a <LexStr+0x26>
    5556:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    555a:	48 8b 40 08          	mov    0x8(%rax),%rax
    555e:	48 8d 50 01          	lea    0x1(%rax),%rdx
    5562:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5566:	48 89 50 08          	mov    %rdx,0x8(%rax)
    556a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    556e:	48 8b 40 08          	mov    0x8(%rax),%rax
    5572:	0f b6 00             	movzbl (%rax),%eax
    5575:	84 c0                	test   %al,%al
    5577:	74 0f                	je     5588 <LexStr+0x44>
    5579:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    557d:	48 8b 40 08          	mov    0x8(%rax),%rax
    5581:	0f b6 00             	movzbl (%rax),%eax
    5584:	3c 22                	cmp    $0x22,%al
    5586:	75 ce                	jne    5556 <LexStr+0x12>
    5588:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    558c:	48 8b 40 08          	mov    0x8(%rax),%rax
    5590:	0f b6 00             	movzbl (%rax),%eax
    5593:	3c 22                	cmp    $0x22,%al
    5595:	74 14                	je     55ab <LexStr+0x67>
    5597:	48 8d 05 89 5a 00 00 	lea    0x5a89(%rip),%rax        # b027 <_IO_stdin_used+0x27>
    559e:	48 89 c7             	mov    %rax,%rdi
    55a1:	b8 00 00 00 00       	mov    $0x0,%eax
    55a6:	e8 ec fb ff ff       	call   5197 <Throw>
    55ab:	66 0f ef c0          	pxor   %xmm0,%xmm0
    55af:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    55b3:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    55b8:	c7 45 e0 38 00 00 00 	movl   $0x38,-0x20(%rbp)
    55bf:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    55c3:	48 8b 50 08          	mov    0x8(%rax),%rdx
    55c7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    55cb:	48 8b 00             	mov    (%rax),%rax
    55ce:	48 29 c2             	sub    %rax,%rdx
    55d1:	89 d0                	mov    %edx,%eax
    55d3:	83 e8 01             	sub    $0x1,%eax
    55d6:	89 45 dc             	mov    %eax,-0x24(%rbp)
    55d9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    55dd:	48 8b 00             	mov    (%rax),%rax
    55e0:	48 8d 48 01          	lea    0x1(%rax),%rcx
    55e4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    55e8:	48 8b 40 18          	mov    0x18(%rax),%rax
    55ec:	8b 55 dc             	mov    -0x24(%rbp),%edx
    55ef:	48 89 ce             	mov    %rcx,%rsi
    55f2:	48 89 c7             	mov    %rax,%rdi
    55f5:	e8 ad f5 ff ff       	call   4ba7 <TablePut>
    55fa:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    55fe:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5602:	48 8b 40 08          	mov    0x8(%rax),%rax
    5606:	48 8d 50 01          	lea    0x1(%rax),%rdx
    560a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    560e:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5612:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5616:	8b 50 14             	mov    0x14(%rax),%edx
    5619:	8b 45 dc             	mov    -0x24(%rbp),%eax
    561c:	01 d0                	add    %edx,%eax
    561e:	8d 50 02             	lea    0x2(%rax),%edx
    5621:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5625:	89 50 14             	mov    %edx,0x14(%rax)
    5628:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    562c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5630:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5634:	48 89 01             	mov    %rax,(%rcx)
    5637:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    563b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    563f:	48 89 41 10          	mov    %rax,0x10(%rcx)
    5643:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5647:	c9                   	leave
    5648:	c3                   	ret

0000000000005649 <LexComment>:
    5649:	55                   	push   %rbp
    564a:	48 89 e5             	mov    %rsp,%rbp
    564d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5651:	eb 14                	jmp    5667 <LexComment+0x1e>
    5653:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5657:	48 8b 40 08          	mov    0x8(%rax),%rax
    565b:	48 8d 50 01          	lea    0x1(%rax),%rdx
    565f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5663:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5667:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    566b:	48 8b 40 08          	mov    0x8(%rax),%rax
    566f:	0f b6 00             	movzbl (%rax),%eax
    5672:	84 c0                	test   %al,%al
    5674:	74 0f                	je     5685 <LexComment+0x3c>
    5676:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    567a:	48 8b 40 08          	mov    0x8(%rax),%rax
    567e:	0f b6 00             	movzbl (%rax),%eax
    5681:	3c 0a                	cmp    $0xa,%al
    5683:	75 ce                	jne    5653 <LexComment+0xa>
    5685:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5689:	8b 40 10             	mov    0x10(%rax),%eax
    568c:	8d 50 01             	lea    0x1(%rax),%edx
    568f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5693:	89 50 10             	mov    %edx,0x10(%rax)
    5696:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    569a:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%rax)
    56a1:	90                   	nop
    56a2:	5d                   	pop    %rbp
    56a3:	c3                   	ret

00000000000056a4 <LexMod>:
    56a4:	55                   	push   %rbp
    56a5:	48 89 e5             	mov    %rsp,%rbp
    56a8:	48 83 ec 20          	sub    $0x20,%rsp
    56ac:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    56b0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    56b4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    56bb:	00 00 
    56bd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    56c1:	31 c0                	xor    %eax,%eax
    56c3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    56c7:	48 8b 40 08          	mov    0x8(%rax),%rax
    56cb:	0f b6 00             	movzbl (%rax),%eax
    56ce:	3c 3d                	cmp    $0x3d,%al
    56d0:	0f 94 c0             	sete   %al
    56d3:	88 45 f7             	mov    %al,-0x9(%rbp)
    56d6:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    56da:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    56de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    56e2:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    56e6:	41 89 c8             	mov    %ecx,%r8d
    56e9:	89 d1                	mov    %edx,%ecx
    56eb:	ba 10 00 00 00       	mov    $0x10,%edx
    56f0:	48 89 c7             	mov    %rax,%rdi
    56f3:	e8 f2 fc ff ff       	call   53ea <LexSet>
    56f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    56fc:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5703:	00 00 
    5705:	74 05                	je     570c <LexMod+0x68>
    5707:	e8 f4 ea ff ff       	call   4200 <__stack_chk_fail@plt>
    570c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5710:	c9                   	leave
    5711:	c3                   	ret

0000000000005712 <LexBand>:
    5712:	55                   	push   %rbp
    5713:	48 89 e5             	mov    %rsp,%rbp
    5716:	48 83 ec 20          	sub    $0x20,%rsp
    571a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    571e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5722:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5729:	00 00 
    572b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    572f:	31 c0                	xor    %eax,%eax
    5731:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5735:	48 8b 40 08          	mov    0x8(%rax),%rax
    5739:	0f b6 00             	movzbl (%rax),%eax
    573c:	3c 3d                	cmp    $0x3d,%al
    573e:	0f 94 c0             	sete   %al
    5741:	89 c2                	mov    %eax,%edx
    5743:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5747:	48 8b 40 08          	mov    0x8(%rax),%rax
    574b:	0f b6 00             	movzbl (%rax),%eax
    574e:	3c 26                	cmp    $0x26,%al
    5750:	75 07                	jne    5759 <LexBand+0x47>
    5752:	b8 02 00 00 00       	mov    $0x2,%eax
    5757:	eb 05                	jmp    575e <LexBand+0x4c>
    5759:	b8 00 00 00 00       	mov    $0x0,%eax
    575e:	01 d0                	add    %edx,%eax
    5760:	88 45 f7             	mov    %al,-0x9(%rbp)
    5763:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5767:	0f 95 c0             	setne  %al
    576a:	0f b6 c8             	movzbl %al,%ecx
    576d:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5771:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5775:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5779:	41 89 c8             	mov    %ecx,%r8d
    577c:	89 d1                	mov    %edx,%ecx
    577e:	ba 12 00 00 00       	mov    $0x12,%edx
    5783:	48 89 c7             	mov    %rax,%rdi
    5786:	e8 5f fc ff ff       	call   53ea <LexSet>
    578b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    578f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5796:	00 00 
    5798:	74 05                	je     579f <LexBand+0x8d>
    579a:	e8 61 ea ff ff       	call   4200 <__stack_chk_fail@plt>
    579f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    57a3:	c9                   	leave
    57a4:	c3                   	ret

00000000000057a5 <LexLp>:
    57a5:	55                   	push   %rbp
    57a6:	48 89 e5             	mov    %rsp,%rbp
    57a9:	48 83 ec 20          	sub    $0x20,%rsp
    57ad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    57b1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    57b5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    57bc:	00 00 
    57be:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    57c2:	31 c0                	xor    %eax,%eax
    57c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    57c8:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    57cc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    57d2:	b9 00 00 00 00       	mov    $0x0,%ecx
    57d7:	ba 24 00 00 00       	mov    $0x24,%edx
    57dc:	48 89 c7             	mov    %rax,%rdi
    57df:	e8 06 fc ff ff       	call   53ea <LexSet>
    57e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    57e8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    57ef:	00 00 
    57f1:	74 05                	je     57f8 <LexLp+0x53>
    57f3:	e8 08 ea ff ff       	call   4200 <__stack_chk_fail@plt>
    57f8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    57fc:	c9                   	leave
    57fd:	c3                   	ret

00000000000057fe <LexRp>:
    57fe:	55                   	push   %rbp
    57ff:	48 89 e5             	mov    %rsp,%rbp
    5802:	48 83 ec 20          	sub    $0x20,%rsp
    5806:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    580a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    580e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5815:	00 00 
    5817:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    581b:	31 c0                	xor    %eax,%eax
    581d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5821:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5825:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    582b:	b9 00 00 00 00       	mov    $0x0,%ecx
    5830:	ba 25 00 00 00       	mov    $0x25,%edx
    5835:	48 89 c7             	mov    %rax,%rdi
    5838:	e8 ad fb ff ff       	call   53ea <LexSet>
    583d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5841:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5848:	00 00 
    584a:	74 05                	je     5851 <LexRp+0x53>
    584c:	e8 af e9 ff ff       	call   4200 <__stack_chk_fail@plt>
    5851:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5855:	c9                   	leave
    5856:	c3                   	ret

0000000000005857 <LexMul>:
    5857:	55                   	push   %rbp
    5858:	48 89 e5             	mov    %rsp,%rbp
    585b:	48 83 ec 20          	sub    $0x20,%rsp
    585f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5863:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5867:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    586e:	00 00 
    5870:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5874:	31 c0                	xor    %eax,%eax
    5876:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    587a:	48 8b 40 08          	mov    0x8(%rax),%rax
    587e:	0f b6 00             	movzbl (%rax),%eax
    5881:	3c 3d                	cmp    $0x3d,%al
    5883:	0f 94 c0             	sete   %al
    5886:	89 c2                	mov    %eax,%edx
    5888:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    588c:	48 8b 40 08          	mov    0x8(%rax),%rax
    5890:	0f b6 00             	movzbl (%rax),%eax
    5893:	3c 2a                	cmp    $0x2a,%al
    5895:	75 07                	jne    589e <LexMul+0x47>
    5897:	b8 02 00 00 00       	mov    $0x2,%eax
    589c:	eb 05                	jmp    58a3 <LexMul+0x4c>
    589e:	b8 00 00 00 00       	mov    $0x0,%eax
    58a3:	01 c2                	add    %eax,%edx
    58a5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    58a9:	48 8b 40 08          	mov    0x8(%rax),%rax
    58ad:	48 83 c0 01          	add    $0x1,%rax
    58b1:	0f b6 00             	movzbl (%rax),%eax
    58b4:	3c 3d                	cmp    $0x3d,%al
    58b6:	0f 94 c0             	sete   %al
    58b9:	01 d0                	add    %edx,%eax
    58bb:	88 45 f7             	mov    %al,-0x9(%rbp)
    58be:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    58c2:	0f 95 c0             	setne  %al
    58c5:	0f b6 d0             	movzbl %al,%edx
    58c8:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    58cc:	01 d0                	add    %edx,%eax
    58ce:	83 f8 02             	cmp    $0x2,%eax
    58d1:	0f 9f c0             	setg   %al
    58d4:	0f b6 c8             	movzbl %al,%ecx
    58d7:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    58db:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    58df:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    58e3:	41 89 c8             	mov    %ecx,%r8d
    58e6:	89 d1                	mov    %edx,%ecx
    58e8:	ba 0a 00 00 00       	mov    $0xa,%edx
    58ed:	48 89 c7             	mov    %rax,%rdi
    58f0:	e8 f5 fa ff ff       	call   53ea <LexSet>
    58f5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    58f9:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5900:	00 00 
    5902:	74 05                	je     5909 <LexMul+0xb2>
    5904:	e8 f7 e8 ff ff       	call   4200 <__stack_chk_fail@plt>
    5909:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    590d:	c9                   	leave
    590e:	c3                   	ret

000000000000590f <LexAdd>:
    590f:	55                   	push   %rbp
    5910:	48 89 e5             	mov    %rsp,%rbp
    5913:	48 83 ec 20          	sub    $0x20,%rsp
    5917:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    591b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    591f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5926:	00 00 
    5928:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    592c:	31 c0                	xor    %eax,%eax
    592e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5932:	48 8b 40 08          	mov    0x8(%rax),%rax
    5936:	0f b6 00             	movzbl (%rax),%eax
    5939:	3c 3d                	cmp    $0x3d,%al
    593b:	0f 94 c0             	sete   %al
    593e:	89 c2                	mov    %eax,%edx
    5940:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5944:	48 8b 40 08          	mov    0x8(%rax),%rax
    5948:	0f b6 00             	movzbl (%rax),%eax
    594b:	3c 2b                	cmp    $0x2b,%al
    594d:	75 07                	jne    5956 <LexAdd+0x47>
    594f:	b8 02 00 00 00       	mov    $0x2,%eax
    5954:	eb 05                	jmp    595b <LexAdd+0x4c>
    5956:	b8 00 00 00 00       	mov    $0x0,%eax
    595b:	01 d0                	add    %edx,%eax
    595d:	88 45 f7             	mov    %al,-0x9(%rbp)
    5960:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5964:	0f 95 c0             	setne  %al
    5967:	0f b6 c8             	movzbl %al,%ecx
    596a:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    596e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5972:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5976:	41 89 c8             	mov    %ecx,%r8d
    5979:	89 d1                	mov    %edx,%ecx
    597b:	ba 04 00 00 00       	mov    $0x4,%edx
    5980:	48 89 c7             	mov    %rax,%rdi
    5983:	e8 62 fa ff ff       	call   53ea <LexSet>
    5988:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    598c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5993:	00 00 
    5995:	74 05                	je     599c <LexAdd+0x8d>
    5997:	e8 64 e8 ff ff       	call   4200 <__stack_chk_fail@plt>
    599c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    59a0:	c9                   	leave
    59a1:	c3                   	ret

00000000000059a2 <LexComma>:
    59a2:	55                   	push   %rbp
    59a3:	48 89 e5             	mov    %rsp,%rbp
    59a6:	48 83 ec 20          	sub    $0x20,%rsp
    59aa:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    59ae:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    59b2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    59b9:	00 00 
    59bb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    59bf:	31 c0                	xor    %eax,%eax
    59c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    59c5:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    59c9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    59cf:	b9 00 00 00 00       	mov    $0x0,%ecx
    59d4:	ba 34 00 00 00       	mov    $0x34,%edx
    59d9:	48 89 c7             	mov    %rax,%rdi
    59dc:	e8 09 fa ff ff       	call   53ea <LexSet>
    59e1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    59e5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    59ec:	00 00 
    59ee:	74 05                	je     59f5 <LexComma+0x53>
    59f0:	e8 0b e8 ff ff       	call   4200 <__stack_chk_fail@plt>
    59f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    59f9:	c9                   	leave
    59fa:	c3                   	ret

00000000000059fb <LexSub>:
    59fb:	55                   	push   %rbp
    59fc:	48 89 e5             	mov    %rsp,%rbp
    59ff:	48 83 ec 20          	sub    $0x20,%rsp
    5a03:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5a07:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5a0b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5a12:	00 00 
    5a14:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5a18:	31 c0                	xor    %eax,%eax
    5a1a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5a1e:	48 8b 40 08          	mov    0x8(%rax),%rax
    5a22:	0f b6 00             	movzbl (%rax),%eax
    5a25:	3c 3d                	cmp    $0x3d,%al
    5a27:	0f 94 c0             	sete   %al
    5a2a:	89 c2                	mov    %eax,%edx
    5a2c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5a30:	48 8b 40 08          	mov    0x8(%rax),%rax
    5a34:	0f b6 00             	movzbl (%rax),%eax
    5a37:	3c 2d                	cmp    $0x2d,%al
    5a39:	75 07                	jne    5a42 <LexSub+0x47>
    5a3b:	b8 02 00 00 00       	mov    $0x2,%eax
    5a40:	eb 05                	jmp    5a47 <LexSub+0x4c>
    5a42:	b8 00 00 00 00       	mov    $0x0,%eax
    5a47:	01 d0                	add    %edx,%eax
    5a49:	88 45 f7             	mov    %al,-0x9(%rbp)
    5a4c:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5a50:	0f 95 c0             	setne  %al
    5a53:	0f b6 c8             	movzbl %al,%ecx
    5a56:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5a5a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5a5e:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5a62:	41 89 c8             	mov    %ecx,%r8d
    5a65:	89 d1                	mov    %edx,%ecx
    5a67:	ba 07 00 00 00       	mov    $0x7,%edx
    5a6c:	48 89 c7             	mov    %rax,%rdi
    5a6f:	e8 76 f9 ff ff       	call   53ea <LexSet>
    5a74:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5a78:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5a7f:	00 00 
    5a81:	74 05                	je     5a88 <LexSub+0x8d>
    5a83:	e8 78 e7 ff ff       	call   4200 <__stack_chk_fail@plt>
    5a88:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5a8c:	c9                   	leave
    5a8d:	c3                   	ret

0000000000005a8e <LexDot>:
    5a8e:	55                   	push   %rbp
    5a8f:	48 89 e5             	mov    %rsp,%rbp
    5a92:	48 83 ec 20          	sub    $0x20,%rsp
    5a96:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5a9a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5a9e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5aa5:	00 00 
    5aa7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5aab:	31 c0                	xor    %eax,%eax
    5aad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ab1:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5ab5:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5abb:	b9 00 00 00 00       	mov    $0x0,%ecx
    5ac0:	ba 2a 00 00 00       	mov    $0x2a,%edx
    5ac5:	48 89 c7             	mov    %rax,%rdi
    5ac8:	e8 1d f9 ff ff       	call   53ea <LexSet>
    5acd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ad1:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5ad8:	00 00 
    5ada:	74 05                	je     5ae1 <LexDot+0x53>
    5adc:	e8 1f e7 ff ff       	call   4200 <__stack_chk_fail@plt>
    5ae1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ae5:	c9                   	leave
    5ae6:	c3                   	ret

0000000000005ae7 <LexDiv>:
    5ae7:	55                   	push   %rbp
    5ae8:	48 89 e5             	mov    %rsp,%rbp
    5aeb:	48 83 ec 20          	sub    $0x20,%rsp
    5aef:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5af3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5af7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5afe:	00 00 
    5b00:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5b04:	31 c0                	xor    %eax,%eax
    5b06:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b0a:	48 8b 40 08          	mov    0x8(%rax),%rax
    5b0e:	0f b6 00             	movzbl (%rax),%eax
    5b11:	3c 3d                	cmp    $0x3d,%al
    5b13:	0f 94 c0             	sete   %al
    5b16:	88 45 f7             	mov    %al,-0x9(%rbp)
    5b19:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    5b1d:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5b21:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5b25:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5b29:	41 89 c8             	mov    %ecx,%r8d
    5b2c:	89 d1                	mov    %edx,%ecx
    5b2e:	ba 0e 00 00 00       	mov    $0xe,%edx
    5b33:	48 89 c7             	mov    %rax,%rdi
    5b36:	e8 af f8 ff ff       	call   53ea <LexSet>
    5b3b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5b3f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5b46:	00 00 
    5b48:	74 05                	je     5b4f <LexDiv+0x68>
    5b4a:	e8 b1 e6 ff ff       	call   4200 <__stack_chk_fail@plt>
    5b4f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5b53:	c9                   	leave
    5b54:	c3                   	ret

0000000000005b55 <LexNum>:
    5b55:	55                   	push   %rbp
    5b56:	48 89 e5             	mov    %rsp,%rbp
    5b59:	48 83 ec 40          	sub    $0x40,%rsp
    5b5d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5b61:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    5b65:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    5b69:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    5b6d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5b71:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    5b75:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    5b7a:	c7 45 e0 36 00 00 00 	movl   $0x36,-0x20(%rbp)
    5b81:	eb 14                	jmp    5b97 <LexNum+0x42>
    5b83:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5b87:	48 8b 40 08          	mov    0x8(%rax),%rax
    5b8b:	48 8d 50 01          	lea    0x1(%rax),%rdx
    5b8f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5b93:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5b97:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5b9b:	48 8b 40 08          	mov    0x8(%rax),%rax
    5b9f:	0f b6 00             	movzbl (%rax),%eax
    5ba2:	0f b6 c0             	movzbl %al,%eax
    5ba5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5bac:	00 
    5bad:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5bb1:	48 01 d0             	add    %rdx,%rax
    5bb4:	48 8b 00             	mov    (%rax),%rax
    5bb7:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    5bbb:	74 c6                	je     5b83 <LexNum+0x2e>
    5bbd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5bc1:	48 8b 40 08          	mov    0x8(%rax),%rax
    5bc5:	0f b6 00             	movzbl (%rax),%eax
    5bc8:	3c 2e                	cmp    $0x2e,%al
    5bca:	74 43                	je     5c0f <LexNum+0xba>
    5bcc:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5bd0:	48 8d 48 08          	lea    0x8(%rax),%rcx
    5bd4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5bd8:	48 8b 00             	mov    (%rax),%rax
    5bdb:	ba 0a 00 00 00       	mov    $0xa,%edx
    5be0:	48 89 ce             	mov    %rcx,%rsi
    5be3:	48 89 c7             	mov    %rax,%rdi
    5be6:	e8 35 e6 ff ff       	call   4220 <__isoc23_strtoll@plt>
    5beb:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5bef:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    5bf3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5bf7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5bfb:	48 89 01             	mov    %rax,(%rcx)
    5bfe:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    5c02:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5c06:	48 89 41 10          	mov    %rax,0x10(%rcx)
    5c0a:	e9 c8 00 00 00       	jmp    5cd7 <LexNum+0x182>
    5c0f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5c13:	48 8b 40 08          	mov    0x8(%rax),%rax
    5c17:	48 8d 50 01          	lea    0x1(%rax),%rdx
    5c1b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5c1f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5c23:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5c27:	48 8b 40 08          	mov    0x8(%rax),%rax
    5c2b:	0f b6 00             	movzbl (%rax),%eax
    5c2e:	0f b6 c0             	movzbl %al,%eax
    5c31:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5c38:	00 
    5c39:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5c3d:	48 01 d0             	add    %rdx,%rax
    5c40:	48 8b 00             	mov    (%rax),%rax
    5c43:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    5c47:	74 2a                	je     5c73 <LexNum+0x11e>
    5c49:	48 8d 05 ec 53 00 00 	lea    0x53ec(%rip),%rax        # b03c <_IO_stdin_used+0x3c>
    5c50:	48 89 c7             	mov    %rax,%rdi
    5c53:	b8 00 00 00 00       	mov    $0x0,%eax
    5c58:	e8 3a f5 ff ff       	call   5197 <Throw>
    5c5d:	eb 14                	jmp    5c73 <LexNum+0x11e>
    5c5f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5c63:	48 8b 40 08          	mov    0x8(%rax),%rax
    5c67:	48 8d 50 01          	lea    0x1(%rax),%rdx
    5c6b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5c6f:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5c73:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5c77:	48 8b 40 08          	mov    0x8(%rax),%rax
    5c7b:	0f b6 00             	movzbl (%rax),%eax
    5c7e:	0f b6 c0             	movzbl %al,%eax
    5c81:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5c88:	00 
    5c89:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5c8d:	48 01 d0             	add    %rdx,%rax
    5c90:	48 8b 00             	mov    (%rax),%rax
    5c93:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    5c97:	74 c6                	je     5c5f <LexNum+0x10a>
    5c99:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5c9d:	48 8d 50 08          	lea    0x8(%rax),%rdx
    5ca1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5ca5:	48 8b 00             	mov    (%rax),%rax
    5ca8:	48 89 d6             	mov    %rdx,%rsi
    5cab:	48 89 c7             	mov    %rax,%rdi
    5cae:	e8 1d e5 ff ff       	call   41d0 <strtod@plt>
    5cb3:	66 48 0f 7e c0       	movq   %xmm0,%rax
    5cb8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5cbc:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    5cc0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5cc4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5cc8:	48 89 01             	mov    %rax,(%rcx)
    5ccb:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    5ccf:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5cd3:	48 89 41 10          	mov    %rax,0x10(%rcx)
    5cd7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5cdb:	c9                   	leave
    5cdc:	c3                   	ret

0000000000005cdd <LexColon>:
    5cdd:	55                   	push   %rbp
    5cde:	48 89 e5             	mov    %rsp,%rbp
    5ce1:	48 83 ec 20          	sub    $0x20,%rsp
    5ce5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5ce9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5ced:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5cf4:	00 00 
    5cf6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5cfa:	31 c0                	xor    %eax,%eax
    5cfc:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5d00:	48 8b 40 08          	mov    0x8(%rax),%rax
    5d04:	0f b6 00             	movzbl (%rax),%eax
    5d07:	3c 2e                	cmp    $0x2e,%al
    5d09:	0f 94 c0             	sete   %al
    5d0c:	89 c2                	mov    %eax,%edx
    5d0e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5d12:	48 8b 40 08          	mov    0x8(%rax),%rax
    5d16:	0f b6 00             	movzbl (%rax),%eax
    5d19:	3c 3a                	cmp    $0x3a,%al
    5d1b:	75 07                	jne    5d24 <LexColon+0x47>
    5d1d:	b8 02 00 00 00       	mov    $0x2,%eax
    5d22:	eb 05                	jmp    5d29 <LexColon+0x4c>
    5d24:	b8 00 00 00 00       	mov    $0x0,%eax
    5d29:	01 d0                	add    %edx,%eax
    5d2b:	88 45 f7             	mov    %al,-0x9(%rbp)
    5d2e:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5d32:	0f 95 c0             	setne  %al
    5d35:	0f b6 c8             	movzbl %al,%ecx
    5d38:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5d3c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d40:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5d44:	41 89 c8             	mov    %ecx,%r8d
    5d47:	89 d1                	mov    %edx,%ecx
    5d49:	ba 31 00 00 00       	mov    $0x31,%edx
    5d4e:	48 89 c7             	mov    %rax,%rdi
    5d51:	e8 94 f6 ff ff       	call   53ea <LexSet>
    5d56:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d5a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5d61:	00 00 
    5d63:	74 05                	je     5d6a <LexColon+0x8d>
    5d65:	e8 96 e4 ff ff       	call   4200 <__stack_chk_fail@plt>
    5d6a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d6e:	c9                   	leave
    5d6f:	c3                   	ret

0000000000005d70 <LexSemi>:
    5d70:	55                   	push   %rbp
    5d71:	48 89 e5             	mov    %rsp,%rbp
    5d74:	48 83 ec 20          	sub    $0x20,%rsp
    5d78:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5d7c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5d80:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5d87:	00 00 
    5d89:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5d8d:	31 c0                	xor    %eax,%eax
    5d8f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5d93:	48 8b 40 08          	mov    0x8(%rax),%rax
    5d97:	0f b6 00             	movzbl (%rax),%eax
    5d9a:	3c 2e                	cmp    $0x2e,%al
    5d9c:	0f 94 c0             	sete   %al
    5d9f:	89 c2                	mov    %eax,%edx
    5da1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5da5:	48 8b 40 08          	mov    0x8(%rax),%rax
    5da9:	0f b6 00             	movzbl (%rax),%eax
    5dac:	3c 3b                	cmp    $0x3b,%al
    5dae:	75 07                	jne    5db7 <LexSemi+0x47>
    5db0:	b8 02 00 00 00       	mov    $0x2,%eax
    5db5:	eb 05                	jmp    5dbc <LexSemi+0x4c>
    5db7:	b8 00 00 00 00       	mov    $0x0,%eax
    5dbc:	01 d0                	add    %edx,%eax
    5dbe:	88 45 f7             	mov    %al,-0x9(%rbp)
    5dc1:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5dc5:	0f 95 c0             	setne  %al
    5dc8:	0f b6 c8             	movzbl %al,%ecx
    5dcb:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5dcf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5dd3:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5dd7:	41 89 c8             	mov    %ecx,%r8d
    5dda:	89 d1                	mov    %edx,%ecx
    5ddc:	ba 2e 00 00 00       	mov    $0x2e,%edx
    5de1:	48 89 c7             	mov    %rax,%rdi
    5de4:	e8 01 f6 ff ff       	call   53ea <LexSet>
    5de9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ded:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5df4:	00 00 
    5df6:	74 05                	je     5dfd <LexSemi+0x8d>
    5df8:	e8 03 e4 ff ff       	call   4200 <__stack_chk_fail@plt>
    5dfd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5e01:	c9                   	leave
    5e02:	c3                   	ret

0000000000005e03 <LexLt>:
    5e03:	55                   	push   %rbp
    5e04:	48 89 e5             	mov    %rsp,%rbp
    5e07:	48 83 ec 20          	sub    $0x20,%rsp
    5e0b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5e0f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5e13:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5e1a:	00 00 
    5e1c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5e20:	31 c0                	xor    %eax,%eax
    5e22:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5e26:	48 8b 40 08          	mov    0x8(%rax),%rax
    5e2a:	0f b6 00             	movzbl (%rax),%eax
    5e2d:	3c 3d                	cmp    $0x3d,%al
    5e2f:	0f 94 c0             	sete   %al
    5e32:	89 c2                	mov    %eax,%edx
    5e34:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5e38:	48 8b 40 08          	mov    0x8(%rax),%rax
    5e3c:	0f b6 00             	movzbl (%rax),%eax
    5e3f:	3c 3c                	cmp    $0x3c,%al
    5e41:	75 07                	jne    5e4a <LexLt+0x47>
    5e43:	b8 02 00 00 00       	mov    $0x2,%eax
    5e48:	eb 05                	jmp    5e4f <LexLt+0x4c>
    5e4a:	b8 00 00 00 00       	mov    $0x0,%eax
    5e4f:	01 c2                	add    %eax,%edx
    5e51:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5e55:	48 8b 40 08          	mov    0x8(%rax),%rax
    5e59:	48 83 c0 01          	add    $0x1,%rax
    5e5d:	0f b6 00             	movzbl (%rax),%eax
    5e60:	3c 3d                	cmp    $0x3d,%al
    5e62:	0f 94 c0             	sete   %al
    5e65:	01 d0                	add    %edx,%eax
    5e67:	88 45 f7             	mov    %al,-0x9(%rbp)
    5e6a:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5e6e:	0f 95 c0             	setne  %al
    5e71:	0f b6 d0             	movzbl %al,%edx
    5e74:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    5e78:	01 d0                	add    %edx,%eax
    5e7a:	83 f8 02             	cmp    $0x2,%eax
    5e7d:	0f 9f c0             	setg   %al
    5e80:	0f b6 c8             	movzbl %al,%ecx
    5e83:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5e87:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5e8b:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5e8f:	41 89 c8             	mov    %ecx,%r8d
    5e92:	89 d1                	mov    %edx,%ecx
    5e94:	ba 1c 00 00 00       	mov    $0x1c,%edx
    5e99:	48 89 c7             	mov    %rax,%rdi
    5e9c:	e8 49 f5 ff ff       	call   53ea <LexSet>
    5ea1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ea5:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5eac:	00 00 
    5eae:	74 05                	je     5eb5 <LexLt+0xb2>
    5eb0:	e8 4b e3 ff ff       	call   4200 <__stack_chk_fail@plt>
    5eb5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5eb9:	c9                   	leave
    5eba:	c3                   	ret

0000000000005ebb <LexEq>:
    5ebb:	55                   	push   %rbp
    5ebc:	48 89 e5             	mov    %rsp,%rbp
    5ebf:	48 83 ec 20          	sub    $0x20,%rsp
    5ec3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5ec7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5ecb:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5ed2:	00 00 
    5ed4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ed8:	31 c0                	xor    %eax,%eax
    5eda:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ede:	48 8b 40 08          	mov    0x8(%rax),%rax
    5ee2:	0f b6 00             	movzbl (%rax),%eax
    5ee5:	3c 3d                	cmp    $0x3d,%al
    5ee7:	0f 94 c0             	sete   %al
    5eea:	88 45 f7             	mov    %al,-0x9(%rbp)
    5eed:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    5ef1:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5ef5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5ef9:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5efd:	41 89 c8             	mov    %ecx,%r8d
    5f00:	89 d1                	mov    %edx,%ecx
    5f02:	ba 1a 00 00 00       	mov    $0x1a,%edx
    5f07:	48 89 c7             	mov    %rax,%rdi
    5f0a:	e8 db f4 ff ff       	call   53ea <LexSet>
    5f0f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5f13:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5f1a:	00 00 
    5f1c:	74 05                	je     5f23 <LexEq+0x68>
    5f1e:	e8 dd e2 ff ff       	call   4200 <__stack_chk_fail@plt>
    5f23:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5f27:	c9                   	leave
    5f28:	c3                   	ret

0000000000005f29 <LexGt>:
    5f29:	55                   	push   %rbp
    5f2a:	48 89 e5             	mov    %rsp,%rbp
    5f2d:	48 83 ec 20          	sub    $0x20,%rsp
    5f31:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5f35:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5f39:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5f40:	00 00 
    5f42:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5f46:	31 c0                	xor    %eax,%eax
    5f48:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f4c:	48 8b 40 08          	mov    0x8(%rax),%rax
    5f50:	0f b6 00             	movzbl (%rax),%eax
    5f53:	3c 3d                	cmp    $0x3d,%al
    5f55:	0f 94 c0             	sete   %al
    5f58:	89 c2                	mov    %eax,%edx
    5f5a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f5e:	48 8b 40 08          	mov    0x8(%rax),%rax
    5f62:	0f b6 00             	movzbl (%rax),%eax
    5f65:	3c 3e                	cmp    $0x3e,%al
    5f67:	75 07                	jne    5f70 <LexGt+0x47>
    5f69:	b8 02 00 00 00       	mov    $0x2,%eax
    5f6e:	eb 05                	jmp    5f75 <LexGt+0x4c>
    5f70:	b8 00 00 00 00       	mov    $0x0,%eax
    5f75:	01 c2                	add    %eax,%edx
    5f77:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f7b:	48 8b 40 08          	mov    0x8(%rax),%rax
    5f7f:	48 83 c0 01          	add    $0x1,%rax
    5f83:	0f b6 00             	movzbl (%rax),%eax
    5f86:	3c 3d                	cmp    $0x3d,%al
    5f88:	0f 94 c0             	sete   %al
    5f8b:	01 d0                	add    %edx,%eax
    5f8d:	88 45 f7             	mov    %al,-0x9(%rbp)
    5f90:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5f94:	0f 95 c0             	setne  %al
    5f97:	0f b6 d0             	movzbl %al,%edx
    5f9a:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    5f9e:	01 d0                	add    %edx,%eax
    5fa0:	83 f8 02             	cmp    $0x2,%eax
    5fa3:	0f 9f c0             	setg   %al
    5fa6:	0f b6 c8             	movzbl %al,%ecx
    5fa9:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5fad:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5fb1:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5fb5:	41 89 c8             	mov    %ecx,%r8d
    5fb8:	89 d1                	mov    %edx,%ecx
    5fba:	ba 20 00 00 00       	mov    $0x20,%edx
    5fbf:	48 89 c7             	mov    %rax,%rdi
    5fc2:	e8 23 f4 ff ff       	call   53ea <LexSet>
    5fc7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5fcb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5fd2:	00 00 
    5fd4:	74 05                	je     5fdb <LexGt+0xb2>
    5fd6:	e8 25 e2 ff ff       	call   4200 <__stack_chk_fail@plt>
    5fdb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5fdf:	c9                   	leave
    5fe0:	c3                   	ret

0000000000005fe1 <LexReturn>:
    5fe1:	55                   	push   %rbp
    5fe2:	48 89 e5             	mov    %rsp,%rbp
    5fe5:	48 83 ec 20          	sub    $0x20,%rsp
    5fe9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5fed:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5ff1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5ff8:	00 00 
    5ffa:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5ffe:	31 c0                	xor    %eax,%eax
    6000:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6004:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    6008:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    600e:	b9 00 00 00 00       	mov    $0x0,%ecx
    6013:	ba 35 00 00 00       	mov    $0x35,%edx
    6018:	48 89 c7             	mov    %rax,%rdi
    601b:	e8 ca f3 ff ff       	call   53ea <LexSet>
    6020:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6024:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    602b:	00 00 
    602d:	74 05                	je     6034 <LexReturn+0x53>
    602f:	e8 cc e1 ff ff       	call   4200 <__stack_chk_fail@plt>
    6034:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6038:	c9                   	leave
    6039:	c3                   	ret

000000000000603a <LexId>:
    603a:	55                   	push   %rbp
    603b:	48 89 e5             	mov    %rsp,%rbp
    603e:	48 83 ec 60          	sub    $0x60,%rsp
    6042:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6046:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    604a:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    604e:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    6052:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
    6056:	eb 14                	jmp    606c <LexId+0x32>
    6058:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    605c:	48 8b 40 08          	mov    0x8(%rax),%rax
    6060:	48 8d 50 01          	lea    0x1(%rax),%rdx
    6064:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6068:	48 89 50 08          	mov    %rdx,0x8(%rax)
    606c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6070:	48 8b 40 08          	mov    0x8(%rax),%rax
    6074:	0f b6 00             	movzbl (%rax),%eax
    6077:	0f b6 c0             	movzbl %al,%eax
    607a:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    6081:	00 
    6082:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    6086:	48 01 d0             	add    %rdx,%rax
    6089:	48 8b 00             	mov    (%rax),%rax
    608c:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
    6090:	74 c6                	je     6058 <LexId+0x1e>
    6092:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6096:	48 8b 40 08          	mov    0x8(%rax),%rax
    609a:	0f b6 00             	movzbl (%rax),%eax
    609d:	0f b6 c0             	movzbl %al,%eax
    60a0:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    60a7:	00 
    60a8:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    60ac:	48 01 d0             	add    %rdx,%rax
    60af:	48 8b 00             	mov    (%rax),%rax
    60b2:	48 39 45 b0          	cmp    %rax,-0x50(%rbp)
    60b6:	74 a0                	je     6058 <LexId+0x1e>
    60b8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    60bc:	48 8b 50 08          	mov    0x8(%rax),%rdx
    60c0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    60c4:	48 8b 00             	mov    (%rax),%rax
    60c7:	48 29 c2             	sub    %rax,%rdx
    60ca:	89 55 dc             	mov    %edx,-0x24(%rbp)
    60cd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    60d1:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    60d5:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    60da:	c7 45 e0 39 00 00 00 	movl   $0x39,-0x20(%rbp)
    60e1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    60e5:	48 8b 00             	mov    (%rax),%rax
    60e8:	48 8d 48 01          	lea    0x1(%rax),%rcx
    60ec:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    60f0:	48 8b 40 18          	mov    0x18(%rax),%rax
    60f4:	8b 55 dc             	mov    -0x24(%rbp),%edx
    60f7:	48 89 ce             	mov    %rcx,%rsi
    60fa:	48 89 c7             	mov    %rax,%rdi
    60fd:	e8 a5 ea ff ff       	call   4ba7 <TablePut>
    6102:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6106:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    610a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    610e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6112:	48 89 01             	mov    %rax,(%rcx)
    6115:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6119:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    611d:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6121:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6125:	c9                   	leave
    6126:	c3                   	ret

0000000000006127 <LexLs>:
    6127:	55                   	push   %rbp
    6128:	48 89 e5             	mov    %rsp,%rbp
    612b:	48 83 ec 20          	sub    $0x20,%rsp
    612f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6133:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6137:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    613e:	00 00 
    6140:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6144:	31 c0                	xor    %eax,%eax
    6146:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    614a:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    614e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    6154:	b9 00 00 00 00       	mov    $0x0,%ecx
    6159:	ba 26 00 00 00       	mov    $0x26,%edx
    615e:	48 89 c7             	mov    %rax,%rdi
    6161:	e8 84 f2 ff ff       	call   53ea <LexSet>
    6166:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    616a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6171:	00 00 
    6173:	74 05                	je     617a <LexLs+0x53>
    6175:	e8 86 e0 ff ff       	call   4200 <__stack_chk_fail@plt>
    617a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    617e:	c9                   	leave
    617f:	c3                   	ret

0000000000006180 <LexRs>:
    6180:	55                   	push   %rbp
    6181:	48 89 e5             	mov    %rsp,%rbp
    6184:	48 83 ec 20          	sub    $0x20,%rsp
    6188:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    618c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6190:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6197:	00 00 
    6199:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    619d:	31 c0                	xor    %eax,%eax
    619f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    61a3:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    61a7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    61ad:	b9 00 00 00 00       	mov    $0x0,%ecx
    61b2:	ba 27 00 00 00       	mov    $0x27,%edx
    61b7:	48 89 c7             	mov    %rax,%rdi
    61ba:	e8 2b f2 ff ff       	call   53ea <LexSet>
    61bf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    61c3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    61ca:	00 00 
    61cc:	74 05                	je     61d3 <LexRs+0x53>
    61ce:	e8 2d e0 ff ff       	call   4200 <__stack_chk_fail@plt>
    61d3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    61d7:	c9                   	leave
    61d8:	c3                   	ret

00000000000061d9 <LexBxor>:
    61d9:	55                   	push   %rbp
    61da:	48 89 e5             	mov    %rsp,%rbp
    61dd:	48 83 ec 20          	sub    $0x20,%rsp
    61e1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    61e5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    61e9:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    61f0:	00 00 
    61f2:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    61f6:	31 c0                	xor    %eax,%eax
    61f8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    61fc:	48 8b 40 08          	mov    0x8(%rax),%rax
    6200:	0f b6 00             	movzbl (%rax),%eax
    6203:	3c 3d                	cmp    $0x3d,%al
    6205:	0f 94 c0             	sete   %al
    6208:	88 45 f7             	mov    %al,-0x9(%rbp)
    620b:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    620f:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    6213:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6217:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    621b:	41 89 c8             	mov    %ecx,%r8d
    621e:	89 d1                	mov    %edx,%ecx
    6220:	ba 18 00 00 00       	mov    $0x18,%edx
    6225:	48 89 c7             	mov    %rax,%rdi
    6228:	e8 bd f1 ff ff       	call   53ea <LexSet>
    622d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6231:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6238:	00 00 
    623a:	74 05                	je     6241 <LexBxor+0x68>
    623c:	e8 bf df ff ff       	call   4200 <__stack_chk_fail@plt>
    6241:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6245:	c9                   	leave
    6246:	c3                   	ret

0000000000006247 <LexBnot>:
    6247:	55                   	push   %rbp
    6248:	48 89 e5             	mov    %rsp,%rbp
    624b:	48 83 ec 20          	sub    $0x20,%rsp
    624f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6253:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6257:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    625e:	00 00 
    6260:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6264:	31 c0                	xor    %eax,%eax
    6266:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    626a:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    626e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    6274:	b9 00 00 00 00       	mov    $0x0,%ecx
    6279:	ba 03 00 00 00       	mov    $0x3,%edx
    627e:	48 89 c7             	mov    %rax,%rdi
    6281:	e8 64 f1 ff ff       	call   53ea <LexSet>
    6286:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    628a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6291:	00 00 
    6293:	74 05                	je     629a <LexBnot+0x53>
    6295:	e8 66 df ff ff       	call   4200 <__stack_chk_fail@plt>
    629a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    629e:	c9                   	leave
    629f:	c3                   	ret

00000000000062a0 <LexLc>:
    62a0:	55                   	push   %rbp
    62a1:	48 89 e5             	mov    %rsp,%rbp
    62a4:	48 83 ec 20          	sub    $0x20,%rsp
    62a8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    62ac:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    62b0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    62b7:	00 00 
    62b9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    62bd:	31 c0                	xor    %eax,%eax
    62bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    62c3:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    62c7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    62cd:	b9 00 00 00 00       	mov    $0x0,%ecx
    62d2:	ba 28 00 00 00       	mov    $0x28,%edx
    62d7:	48 89 c7             	mov    %rax,%rdi
    62da:	e8 0b f1 ff ff       	call   53ea <LexSet>
    62df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    62e3:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    62ea:	00 00 
    62ec:	74 05                	je     62f3 <LexLc+0x53>
    62ee:	e8 0d df ff ff       	call   4200 <__stack_chk_fail@plt>
    62f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    62f7:	c9                   	leave
    62f8:	c3                   	ret

00000000000062f9 <LexBor>:
    62f9:	55                   	push   %rbp
    62fa:	48 89 e5             	mov    %rsp,%rbp
    62fd:	48 83 ec 20          	sub    $0x20,%rsp
    6301:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6305:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6309:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6310:	00 00 
    6312:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6316:	31 c0                	xor    %eax,%eax
    6318:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    631c:	48 8b 40 08          	mov    0x8(%rax),%rax
    6320:	0f b6 00             	movzbl (%rax),%eax
    6323:	3c 3d                	cmp    $0x3d,%al
    6325:	0f 94 c0             	sete   %al
    6328:	89 c2                	mov    %eax,%edx
    632a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    632e:	48 8b 40 08          	mov    0x8(%rax),%rax
    6332:	0f b6 00             	movzbl (%rax),%eax
    6335:	3c 7c                	cmp    $0x7c,%al
    6337:	75 07                	jne    6340 <LexBor+0x47>
    6339:	b8 02 00 00 00       	mov    $0x2,%eax
    633e:	eb 05                	jmp    6345 <LexBor+0x4c>
    6340:	b8 00 00 00 00       	mov    $0x0,%eax
    6345:	01 d0                	add    %edx,%eax
    6347:	88 45 f7             	mov    %al,-0x9(%rbp)
    634a:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    634e:	0f 95 c0             	setne  %al
    6351:	0f b6 c8             	movzbl %al,%ecx
    6354:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    6358:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    635c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    6360:	41 89 c8             	mov    %ecx,%r8d
    6363:	89 d1                	mov    %edx,%ecx
    6365:	ba 15 00 00 00       	mov    $0x15,%edx
    636a:	48 89 c7             	mov    %rax,%rdi
    636d:	e8 78 f0 ff ff       	call   53ea <LexSet>
    6372:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6376:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    637d:	00 00 
    637f:	74 05                	je     6386 <LexBor+0x8d>
    6381:	e8 7a de ff ff       	call   4200 <__stack_chk_fail@plt>
    6386:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    638a:	c9                   	leave
    638b:	c3                   	ret

000000000000638c <LexRc>:
    638c:	55                   	push   %rbp
    638d:	48 89 e5             	mov    %rsp,%rbp
    6390:	48 83 ec 20          	sub    $0x20,%rsp
    6394:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6398:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    639c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    63a3:	00 00 
    63a5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    63a9:	31 c0                	xor    %eax,%eax
    63ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63af:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    63b3:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    63b9:	b9 00 00 00 00       	mov    $0x0,%ecx
    63be:	ba 29 00 00 00       	mov    $0x29,%edx
    63c3:	48 89 c7             	mov    %rax,%rdi
    63c6:	e8 1f f0 ff ff       	call   53ea <LexSet>
    63cb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    63cf:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    63d6:	00 00 
    63d8:	74 05                	je     63df <LexRc+0x53>
    63da:	e8 21 de ff ff       	call   4200 <__stack_chk_fail@plt>
    63df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63e3:	c9                   	leave
    63e4:	c3                   	ret

00000000000063e5 <Lex>:
    63e5:	f3 0f 1e fa          	endbr64
    63e9:	55                   	push   %rbp
    63ea:	48 89 e5             	mov    %rsp,%rbp
    63ed:	48 83 ec 20          	sub    $0x20,%rsp
    63f1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    63f5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    63fc:	00 00 
    63fe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6402:	31 c0                	xor    %eax,%eax
    6404:	e8 47 ef ff ff       	call   5350 <GetLexer>
    6409:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    640d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6411:	48 8b 50 08          	mov    0x8(%rax),%rdx
    6415:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6419:	48 89 10             	mov    %rdx,(%rax)
    641c:	f3 0f 1e fa          	endbr64
    6420:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6424:	48 8b 40 08          	mov    0x8(%rax),%rax
    6428:	48 8d 48 01          	lea    0x1(%rax),%rcx
    642c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6430:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    6434:	0f b6 00             	movzbl (%rax),%eax
    6437:	0f b6 c0             	movzbl %al,%eax
    643a:	48 98                	cltq
    643c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    6443:	00 
    6444:	48 8d 05 35 7d 00 00 	lea    0x7d35(%rip),%rax        # e180 <ascii.48>
    644b:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    644f:	90                   	nop
    6450:	ff e0                	jmp    *%rax
    6452:	f3 0f 1e fa          	endbr64
    6456:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    645a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    645e:	48 89 d6             	mov    %rdx,%rsi
    6461:	48 89 c7             	mov    %rax,%rdi
    6464:	e8 ed ef ff ff       	call   5456 <LexEof>
    6469:	e9 2a 03 00 00       	jmp    6798 <Lex+0x3b3>
    646e:	f3 0f 1e fa          	endbr64
    6472:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6476:	48 89 c7             	mov    %rax,%rdi
    6479:	e8 31 f0 ff ff       	call   54af <LexLine>
    647e:	eb 9c                	jmp    641c <Lex+0x37>
    6480:	f3 0f 1e fa          	endbr64
    6484:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6488:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    648c:	48 89 d6             	mov    %rdx,%rsi
    648f:	48 89 c7             	mov    %rax,%rdi
    6492:	e8 3f f0 ff ff       	call   54d6 <LexNot>
    6497:	e9 fc 02 00 00       	jmp    6798 <Lex+0x3b3>
    649c:	f3 0f 1e fa          	endbr64
    64a0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64a4:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64a8:	48 89 d6             	mov    %rdx,%rsi
    64ab:	48 89 c7             	mov    %rax,%rdi
    64ae:	e8 91 f0 ff ff       	call   5544 <LexStr>
    64b3:	e9 e0 02 00 00       	jmp    6798 <Lex+0x3b3>
    64b8:	f3 0f 1e fa          	endbr64
    64bc:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    64c0:	48 89 c7             	mov    %rax,%rdi
    64c3:	e8 81 f1 ff ff       	call   5649 <LexComment>
    64c8:	e9 4f ff ff ff       	jmp    641c <Lex+0x37>
    64cd:	f3 0f 1e fa          	endbr64
    64d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64d5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64d9:	48 89 d6             	mov    %rdx,%rsi
    64dc:	48 89 c7             	mov    %rax,%rdi
    64df:	e8 c0 f1 ff ff       	call   56a4 <LexMod>
    64e4:	e9 af 02 00 00       	jmp    6798 <Lex+0x3b3>
    64e9:	f3 0f 1e fa          	endbr64
    64ed:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64f1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64f5:	48 89 d6             	mov    %rdx,%rsi
    64f8:	48 89 c7             	mov    %rax,%rdi
    64fb:	e8 12 f2 ff ff       	call   5712 <LexBand>
    6500:	e9 93 02 00 00       	jmp    6798 <Lex+0x3b3>
    6505:	f3 0f 1e fa          	endbr64
    6509:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    650d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6511:	48 89 d6             	mov    %rdx,%rsi
    6514:	48 89 c7             	mov    %rax,%rdi
    6517:	e8 89 f2 ff ff       	call   57a5 <LexLp>
    651c:	e9 77 02 00 00       	jmp    6798 <Lex+0x3b3>
    6521:	f3 0f 1e fa          	endbr64
    6525:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6529:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    652d:	48 89 d6             	mov    %rdx,%rsi
    6530:	48 89 c7             	mov    %rax,%rdi
    6533:	e8 c6 f2 ff ff       	call   57fe <LexRp>
    6538:	e9 5b 02 00 00       	jmp    6798 <Lex+0x3b3>
    653d:	f3 0f 1e fa          	endbr64
    6541:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6545:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6549:	48 89 d6             	mov    %rdx,%rsi
    654c:	48 89 c7             	mov    %rax,%rdi
    654f:	e8 03 f3 ff ff       	call   5857 <LexMul>
    6554:	e9 3f 02 00 00       	jmp    6798 <Lex+0x3b3>
    6559:	f3 0f 1e fa          	endbr64
    655d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6561:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6565:	48 89 d6             	mov    %rdx,%rsi
    6568:	48 89 c7             	mov    %rax,%rdi
    656b:	e8 9f f3 ff ff       	call   590f <LexAdd>
    6570:	e9 23 02 00 00       	jmp    6798 <Lex+0x3b3>
    6575:	f3 0f 1e fa          	endbr64
    6579:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    657d:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6581:	48 89 d6             	mov    %rdx,%rsi
    6584:	48 89 c7             	mov    %rax,%rdi
    6587:	e8 16 f4 ff ff       	call   59a2 <LexComma>
    658c:	e9 07 02 00 00       	jmp    6798 <Lex+0x3b3>
    6591:	f3 0f 1e fa          	endbr64
    6595:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6599:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    659d:	48 89 d6             	mov    %rdx,%rsi
    65a0:	48 89 c7             	mov    %rax,%rdi
    65a3:	e8 53 f4 ff ff       	call   59fb <LexSub>
    65a8:	e9 eb 01 00 00       	jmp    6798 <Lex+0x3b3>
    65ad:	f3 0f 1e fa          	endbr64
    65b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    65b5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    65b9:	48 89 d6             	mov    %rdx,%rsi
    65bc:	48 89 c7             	mov    %rax,%rdi
    65bf:	e8 ca f4 ff ff       	call   5a8e <LexDot>
    65c4:	e9 cf 01 00 00       	jmp    6798 <Lex+0x3b3>
    65c9:	f3 0f 1e fa          	endbr64
    65cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    65d1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    65d5:	48 89 d6             	mov    %rdx,%rsi
    65d8:	48 89 c7             	mov    %rax,%rdi
    65db:	e8 07 f5 ff ff       	call   5ae7 <LexDiv>
    65e0:	e9 b3 01 00 00       	jmp    6798 <Lex+0x3b3>
    65e5:	f3 0f 1e fa          	endbr64
    65e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    65ed:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    65f1:	48 8d 15 88 7b 00 00 	lea    0x7b88(%rip),%rdx        # e180 <ascii.48>
    65f8:	48 89 d1             	mov    %rdx,%rcx
    65fb:	48 8d 15 e3 ff ff ff 	lea    -0x1d(%rip),%rdx        # 65e5 <Lex+0x200>
    6602:	48 89 c7             	mov    %rax,%rdi
    6605:	e8 4b f5 ff ff       	call   5b55 <LexNum>
    660a:	e9 89 01 00 00       	jmp    6798 <Lex+0x3b3>
    660f:	f3 0f 1e fa          	endbr64
    6613:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6617:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    661b:	48 89 d6             	mov    %rdx,%rsi
    661e:	48 89 c7             	mov    %rax,%rdi
    6621:	e8 b7 f6 ff ff       	call   5cdd <LexColon>
    6626:	e9 6d 01 00 00       	jmp    6798 <Lex+0x3b3>
    662b:	f3 0f 1e fa          	endbr64
    662f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6633:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6637:	48 89 d6             	mov    %rdx,%rsi
    663a:	48 89 c7             	mov    %rax,%rdi
    663d:	e8 2e f7 ff ff       	call   5d70 <LexSemi>
    6642:	e9 51 01 00 00       	jmp    6798 <Lex+0x3b3>
    6647:	f3 0f 1e fa          	endbr64
    664b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    664f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6653:	48 89 d6             	mov    %rdx,%rsi
    6656:	48 89 c7             	mov    %rax,%rdi
    6659:	e8 a5 f7 ff ff       	call   5e03 <LexLt>
    665e:	e9 35 01 00 00       	jmp    6798 <Lex+0x3b3>
    6663:	f3 0f 1e fa          	endbr64
    6667:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    666b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    666f:	48 89 d6             	mov    %rdx,%rsi
    6672:	48 89 c7             	mov    %rax,%rdi
    6675:	e8 41 f8 ff ff       	call   5ebb <LexEq>
    667a:	e9 19 01 00 00       	jmp    6798 <Lex+0x3b3>
    667f:	f3 0f 1e fa          	endbr64
    6683:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6687:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    668b:	48 89 d6             	mov    %rdx,%rsi
    668e:	48 89 c7             	mov    %rax,%rdi
    6691:	e8 93 f8 ff ff       	call   5f29 <LexGt>
    6696:	e9 fd 00 00 00       	jmp    6798 <Lex+0x3b3>
    669b:	f3 0f 1e fa          	endbr64
    669f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    66a3:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    66a7:	48 89 d6             	mov    %rdx,%rsi
    66aa:	48 89 c7             	mov    %rax,%rdi
    66ad:	e8 2f f9 ff ff       	call   5fe1 <LexReturn>
    66b2:	e9 e1 00 00 00       	jmp    6798 <Lex+0x3b3>
    66b7:	f3 0f 1e fa          	endbr64
    66bb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    66bf:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    66c3:	4c 8d 05 b6 7a 00 00 	lea    0x7ab6(%rip),%r8        # e180 <ascii.48>
    66ca:	48 8d 15 14 ff ff ff 	lea    -0xec(%rip),%rdx        # 65e5 <Lex+0x200>
    66d1:	48 89 d1             	mov    %rdx,%rcx
    66d4:	48 8d 15 dc ff ff ff 	lea    -0x24(%rip),%rdx        # 66b7 <Lex+0x2d2>
    66db:	48 89 c7             	mov    %rax,%rdi
    66de:	e8 57 f9 ff ff       	call   603a <LexId>
    66e3:	e9 b0 00 00 00       	jmp    6798 <Lex+0x3b3>
    66e8:	f3 0f 1e fa          	endbr64
    66ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    66f0:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    66f4:	48 89 d6             	mov    %rdx,%rsi
    66f7:	48 89 c7             	mov    %rax,%rdi
    66fa:	e8 28 fa ff ff       	call   6127 <LexLs>
    66ff:	e9 94 00 00 00       	jmp    6798 <Lex+0x3b3>
    6704:	f3 0f 1e fa          	endbr64
    6708:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    670c:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6710:	48 89 d6             	mov    %rdx,%rsi
    6713:	48 89 c7             	mov    %rax,%rdi
    6716:	e8 65 fa ff ff       	call   6180 <LexRs>
    671b:	eb 7b                	jmp    6798 <Lex+0x3b3>
    671d:	f3 0f 1e fa          	endbr64
    6721:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6725:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6729:	48 89 d6             	mov    %rdx,%rsi
    672c:	48 89 c7             	mov    %rax,%rdi
    672f:	e8 a5 fa ff ff       	call   61d9 <LexBxor>
    6734:	eb 62                	jmp    6798 <Lex+0x3b3>
    6736:	f3 0f 1e fa          	endbr64
    673a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    673e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6742:	48 89 d6             	mov    %rdx,%rsi
    6745:	48 89 c7             	mov    %rax,%rdi
    6748:	e8 fa fa ff ff       	call   6247 <LexBnot>
    674d:	eb 49                	jmp    6798 <Lex+0x3b3>
    674f:	f3 0f 1e fa          	endbr64
    6753:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6757:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    675b:	48 89 d6             	mov    %rdx,%rsi
    675e:	48 89 c7             	mov    %rax,%rdi
    6761:	e8 3a fb ff ff       	call   62a0 <LexLc>
    6766:	eb 30                	jmp    6798 <Lex+0x3b3>
    6768:	f3 0f 1e fa          	endbr64
    676c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6770:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6774:	48 89 d6             	mov    %rdx,%rsi
    6777:	48 89 c7             	mov    %rax,%rdi
    677a:	e8 7a fb ff ff       	call   62f9 <LexBor>
    677f:	eb 17                	jmp    6798 <Lex+0x3b3>
    6781:	f3 0f 1e fa          	endbr64
    6785:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6789:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    678d:	48 89 d6             	mov    %rdx,%rsi
    6790:	48 89 c7             	mov    %rax,%rdi
    6793:	e8 f4 fb ff ff       	call   638c <LexRc>
    6798:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    679c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    67a3:	00 00 
    67a5:	74 05                	je     67ac <Lex+0x3c7>
    67a7:	e8 54 da ff ff       	call   4200 <__stack_chk_fail@plt>
    67ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    67b0:	c9                   	leave
    67b1:	c3                   	ret

00000000000067b2 <GetParser>:
    67b2:	55                   	push   %rbp
    67b3:	48 89 e5             	mov    %rsp,%rbp
    67b6:	48 8d 05 73 8d 00 00 	lea    0x8d73(%rip),%rax        # f530 <parser.42>
    67bd:	5d                   	pop    %rbp
    67be:	c3                   	ret

00000000000067bf <ParserInit>:
    67bf:	f3 0f 1e fa          	endbr64
    67c3:	55                   	push   %rbp
    67c4:	48 89 e5             	mov    %rsp,%rbp
    67c7:	90                   	nop
    67c8:	5d                   	pop    %rbp
    67c9:	c3                   	ret

00000000000067ca <ParseNodeLog>:
    67ca:	f3 0f 1e fa          	endbr64
    67ce:	55                   	push   %rbp
    67cf:	48 89 e5             	mov    %rsp,%rbp
    67d2:	48 83 ec 20          	sub    $0x20,%rsp
    67d6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    67da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    67de:	8b 00                	mov    (%rax),%eax
    67e0:	85 c0                	test   %eax,%eax
    67e2:	0f 85 a2 00 00 00    	jne    688a <ParseNodeLog+0xc0>
    67e8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    67ec:	8b 40 08             	mov    0x8(%rax),%eax
    67ef:	89 c0                	mov    %eax,%eax
    67f1:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    67f8:	00 
    67f9:	48 8d 05 80 7d 00 00 	lea    0x7d80(%rip),%rax        # e580 <types.45>
    6800:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    6804:	90                   	nop
    6805:	ff e0                	jmp    *%rax
    6807:	f3 0f 1e fa          	endbr64
    680b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    680f:	48 8b 40 10          	mov    0x10(%rax),%rax
    6813:	48 89 c6             	mov    %rax,%rsi
    6816:	48 8d 05 30 48 00 00 	lea    0x4830(%rip),%rax        # b04d <_IO_stdin_used+0x4d>
    681d:	48 89 c7             	mov    %rax,%rdi
    6820:	b8 00 00 00 00       	mov    $0x0,%eax
    6825:	e8 e6 d9 ff ff       	call   4210 <printf@plt>
    682a:	eb 5f                	jmp    688b <ParseNodeLog+0xc1>
    682c:	f3 0f 1e fa          	endbr64
    6830:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6834:	48 8b 40 10          	mov    0x10(%rax),%rax
    6838:	66 48 0f 6e c0       	movq   %rax,%xmm0
    683d:	48 8d 05 0e 48 00 00 	lea    0x480e(%rip),%rax        # b052 <_IO_stdin_used+0x52>
    6844:	48 89 c7             	mov    %rax,%rdi
    6847:	b8 01 00 00 00       	mov    $0x1,%eax
    684c:	e8 bf d9 ff ff       	call   4210 <printf@plt>
    6851:	eb 38                	jmp    688b <ParseNodeLog+0xc1>
    6853:	f3 0f 1e fa          	endbr64
    6857:	e8 9a db ff ff       	call   43f6 <GetStrings>
    685c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6860:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6864:	48 8b 40 10          	mov    0x10(%rax),%rax
    6868:	8b 10                	mov    (%rax),%edx
    686a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    686e:	89 d6                	mov    %edx,%esi
    6870:	48 89 c7             	mov    %rax,%rdi
    6873:	e8 a8 dc ff ff       	call   4520 <ArenaOff>
    6878:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    687c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6880:	48 89 c7             	mov    %rax,%rdi
    6883:	e8 28 d9 ff ff       	call   41b0 <puts@plt>
    6888:	eb 01                	jmp    688b <ParseNodeLog+0xc1>
    688a:	90                   	nop
    688b:	c9                   	leave
    688c:	c3                   	ret

000000000000688d <ParseMatch>:
    688d:	f3 0f 1e fa          	endbr64
    6891:	55                   	push   %rbp
    6892:	48 89 e5             	mov    %rsp,%rbp
    6895:	53                   	push   %rbx
    6896:	48 83 ec 48          	sub    $0x48,%rsp
    689a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    689e:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    68a1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    68a8:	00 00 
    68aa:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    68ae:	31 c0                	xor    %eax,%eax
    68b0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    68b4:	8b 00                	mov    (%rax),%eax
    68b6:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
    68b9:	74 1f                	je     68da <ParseMatch+0x4d>
    68bb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    68bf:	8b 10                	mov    (%rax),%edx
    68c1:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    68c4:	89 c6                	mov    %eax,%esi
    68c6:	48 8d 05 89 47 00 00 	lea    0x4789(%rip),%rax        # b056 <_IO_stdin_used+0x56>
    68cd:	48 89 c7             	mov    %rax,%rdi
    68d0:	b8 00 00 00 00       	mov    $0x0,%eax
    68d5:	e8 bd e8 ff ff       	call   5197 <Throw>
    68da:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    68de:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    68e2:	48 89 c7             	mov    %rax,%rdi
    68e5:	e8 fb fa ff ff       	call   63e5 <Lex>
    68ea:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    68ee:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    68f2:	48 89 03             	mov    %rax,(%rbx)
    68f5:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    68f9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    68fd:	48 89 43 10          	mov    %rax,0x10(%rbx)
    6901:	90                   	nop
    6902:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6906:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    690d:	00 00 
    690f:	74 05                	je     6916 <ParseMatch+0x89>
    6911:	e8 ea d8 ff ff       	call   4200 <__stack_chk_fail@plt>
    6916:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    691a:	c9                   	leave
    691b:	c3                   	ret

000000000000691c <ParseIf>:
    691c:	f3 0f 1e fa          	endbr64
    6920:	55                   	push   %rbp
    6921:	48 89 e5             	mov    %rsp,%rbp
    6924:	48 83 ec 50          	sub    $0x50,%rsp
    6928:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    692c:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    6930:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6937:	00 00 
    6939:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    693d:	31 c0                	xor    %eax,%eax
    693f:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6943:	be 2b 00 00 00       	mov    $0x2b,%esi
    6948:	48 89 c7             	mov    %rax,%rdi
    694b:	e8 3d ff ff ff       	call   688d <ParseMatch>
    6950:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    6954:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    6958:	ba 00 00 00 00       	mov    $0x0,%edx
    695d:	48 89 ce             	mov    %rcx,%rsi
    6960:	48 89 c7             	mov    %rax,%rdi
    6963:	e8 e0 06 00 00       	call   7048 <ParseExpr>
    6968:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    696c:	be 32 00 00 00       	mov    $0x32,%esi
    6971:	48 89 c7             	mov    %rax,%rdi
    6974:	e8 14 ff ff ff       	call   688d <ParseMatch>
    6979:	eb 3a                	jmp    69b5 <ParseIf+0x99>
    697b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    697f:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    6983:	48 89 d6             	mov    %rdx,%rsi
    6986:	48 89 c7             	mov    %rax,%rdi
    6989:	e8 a2 09 00 00       	call   7330 <ParseStmt>
    698e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6992:	8b 00                	mov    (%rax),%eax
    6994:	83 f8 33             	cmp    $0x33,%eax
    6997:	74 28                	je     69c1 <ParseIf+0xa5>
    6999:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    699d:	8b 00                	mov    (%rax),%eax
    699f:	83 f8 2d             	cmp    $0x2d,%eax
    69a2:	75 11                	jne    69b5 <ParseIf+0x99>
    69a4:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    69a8:	be 2d 00 00 00       	mov    $0x2d,%esi
    69ad:	48 89 c7             	mov    %rax,%rdi
    69b0:	e8 d8 fe ff ff       	call   688d <ParseMatch>
    69b5:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    69b9:	8b 00                	mov    (%rax),%eax
    69bb:	85 c0                	test   %eax,%eax
    69bd:	75 bc                	jne    697b <ParseIf+0x5f>
    69bf:	eb 01                	jmp    69c2 <ParseIf+0xa6>
    69c1:	90                   	nop
    69c2:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    69c6:	be 33 00 00 00       	mov    $0x33,%esi
    69cb:	48 89 c7             	mov    %rax,%rdi
    69ce:	e8 ba fe ff ff       	call   688d <ParseMatch>
    69d3:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    69d7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    69db:	0f 11 00             	movups %xmm0,(%rax)
    69de:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    69e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    69e7:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    69ee:	00 00 
    69f0:	74 05                	je     69f7 <ParseIf+0xdb>
    69f2:	e8 09 d8 ff ff       	call   4200 <__stack_chk_fail@plt>
    69f7:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    69fb:	c9                   	leave
    69fc:	c3                   	ret

00000000000069fd <ParseFor>:
    69fd:	f3 0f 1e fa          	endbr64
    6a01:	55                   	push   %rbp
    6a02:	48 89 e5             	mov    %rsp,%rbp
    6a05:	48 83 ec 30          	sub    $0x30,%rsp
    6a09:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6a0d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6a11:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6a15:	be 2c 00 00 00       	mov    $0x2c,%esi
    6a1a:	48 89 c7             	mov    %rax,%rdi
    6a1d:	e8 6b fe ff ff       	call   688d <ParseMatch>
    6a22:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6a26:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6a2a:	0f 11 00             	movups %xmm0,(%rax)
    6a2d:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6a32:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6a36:	c9                   	leave
    6a37:	c3                   	ret

0000000000006a38 <ParseDo>:
    6a38:	f3 0f 1e fa          	endbr64
    6a3c:	55                   	push   %rbp
    6a3d:	48 89 e5             	mov    %rsp,%rbp
    6a40:	48 83 ec 30          	sub    $0x30,%rsp
    6a44:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6a48:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6a4c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6a50:	be 2f 00 00 00       	mov    $0x2f,%esi
    6a55:	48 89 c7             	mov    %rax,%rdi
    6a58:	e8 30 fe ff ff       	call   688d <ParseMatch>
    6a5d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6a61:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6a65:	0f 11 00             	movups %xmm0,(%rax)
    6a68:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6a6d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6a71:	c9                   	leave
    6a72:	c3                   	ret

0000000000006a73 <ParseWhile>:
    6a73:	f3 0f 1e fa          	endbr64
    6a77:	55                   	push   %rbp
    6a78:	48 89 e5             	mov    %rsp,%rbp
    6a7b:	48 83 ec 30          	sub    $0x30,%rsp
    6a7f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6a83:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6a87:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6a8b:	be 30 00 00 00       	mov    $0x30,%esi
    6a90:	48 89 c7             	mov    %rax,%rdi
    6a93:	e8 f5 fd ff ff       	call   688d <ParseMatch>
    6a98:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6a9c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6aa0:	0f 11 00             	movups %xmm0,(%rax)
    6aa3:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6aa8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6aac:	c9                   	leave
    6aad:	c3                   	ret

0000000000006aae <ParseFunc>:
    6aae:	f3 0f 1e fa          	endbr64
    6ab2:	55                   	push   %rbp
    6ab3:	48 89 e5             	mov    %rsp,%rbp
    6ab6:	48 83 ec 60          	sub    $0x60,%rsp
    6aba:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6abe:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6ac2:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    6ac6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6acd:	00 00 
    6acf:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6ad3:	31 c0                	xor    %eax,%eax
    6ad5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6ad9:	be 24 00 00 00       	mov    $0x24,%esi
    6ade:	48 89 c7             	mov    %rax,%rdi
    6ae1:	e8 a7 fd ff ff       	call   688d <ParseMatch>
    6ae6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6aea:	be 25 00 00 00       	mov    $0x25,%esi
    6aef:	48 89 c7             	mov    %rax,%rdi
    6af2:	e8 96 fd ff ff       	call   688d <ParseMatch>
    6af7:	eb 13                	jmp    6b0c <ParseFunc+0x5e>
    6af9:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    6afd:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    6b01:	48 89 d6             	mov    %rdx,%rsi
    6b04:	48 89 c7             	mov    %rax,%rdi
    6b07:	e8 24 08 00 00       	call   7330 <ParseStmt>
    6b0c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6b10:	8b 00                	mov    (%rax),%eax
    6b12:	85 c0                	test   %eax,%eax
    6b14:	74 0b                	je     6b21 <ParseFunc+0x73>
    6b16:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6b1a:	8b 00                	mov    (%rax),%eax
    6b1c:	83 f8 33             	cmp    $0x33,%eax
    6b1f:	75 d8                	jne    6af9 <ParseFunc+0x4b>
    6b21:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6b25:	be 33 00 00 00       	mov    $0x33,%esi
    6b2a:	48 89 c7             	mov    %rax,%rdi
    6b2d:	e8 5b fd ff ff       	call   688d <ParseMatch>
    6b32:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6b36:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6b3a:	0f 11 00             	movups %xmm0,(%rax)
    6b3d:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6b42:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6b46:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6b4d:	00 00 
    6b4f:	74 05                	je     6b56 <ParseFunc+0xa8>
    6b51:	e8 aa d6 ff ff       	call   4200 <__stack_chk_fail@plt>
    6b56:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6b5a:	c9                   	leave
    6b5b:	c3                   	ret

0000000000006b5c <ParseId>:
    6b5c:	f3 0f 1e fa          	endbr64
    6b60:	55                   	push   %rbp
    6b61:	48 89 e5             	mov    %rsp,%rbp
    6b64:	48 83 ec 40          	sub    $0x40,%rsp
    6b68:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6b6c:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6b70:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6b77:	00 00 
    6b79:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6b7d:	31 c0                	xor    %eax,%eax
    6b7f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6b83:	48 8b 40 10          	mov    0x10(%rax),%rax
    6b87:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    6b8b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6b8f:	be 39 00 00 00       	mov    $0x39,%esi
    6b94:	48 89 c7             	mov    %rax,%rdi
    6b97:	e8 f1 fc ff ff       	call   688d <ParseMatch>
    6b9c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6ba0:	be 31 00 00 00       	mov    $0x31,%esi
    6ba5:	48 89 c7             	mov    %rax,%rdi
    6ba8:	e8 e0 fc ff ff       	call   688d <ParseMatch>
    6bad:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6bb1:	8b 00                	mov    (%rax),%eax
    6bb3:	83 f8 24             	cmp    $0x24,%eax
    6bb6:	75 19                	jne    6bd1 <ParseId+0x75>
    6bb8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6bbc:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    6bc0:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6bc4:	48 89 ce             	mov    %rcx,%rsi
    6bc7:	48 89 c7             	mov    %rax,%rdi
    6bca:	e8 df fe ff ff       	call   6aae <ParseFunc>
    6bcf:	eb 46                	jmp    6c17 <ParseId+0xbb>
    6bd1:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6bd5:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6bd9:	ba 00 00 00 00       	mov    $0x0,%edx
    6bde:	48 89 ce             	mov    %rcx,%rsi
    6be1:	48 89 c7             	mov    %rax,%rdi
    6be4:	e8 5f 04 00 00       	call   7048 <ParseExpr>
    6be9:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    6bed:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6bf1:	48 89 d6             	mov    %rdx,%rsi
    6bf4:	48 89 c7             	mov    %rax,%rdi
    6bf7:	e8 93 0f 00 00       	call   7b8f <CompileAssign>
    6bfc:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    6c00:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6c04:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6c08:	48 89 01             	mov    %rax,(%rcx)
    6c0b:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6c0f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6c13:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6c17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6c1b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6c22:	00 00 
    6c24:	74 05                	je     6c2b <ParseId+0xcf>
    6c26:	e8 d5 d5 ff ff       	call   4200 <__stack_chk_fail@plt>
    6c2b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6c2f:	c9                   	leave
    6c30:	c3                   	ret

0000000000006c31 <ParseEos>:
    6c31:	f3 0f 1e fa          	endbr64
    6c35:	55                   	push   %rbp
    6c36:	48 89 e5             	mov    %rsp,%rbp
    6c39:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6c3d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6c41:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6c45:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6c49:	0f 11 00             	movups %xmm0,(%rax)
    6c4c:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6c51:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6c55:	5d                   	pop    %rbp
    6c56:	c3                   	ret

0000000000006c57 <ParseErr>:
    6c57:	f3 0f 1e fa          	endbr64
    6c5b:	55                   	push   %rbp
    6c5c:	48 89 e5             	mov    %rsp,%rbp
    6c5f:	48 83 ec 30          	sub    $0x30,%rsp
    6c63:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6c67:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6c6b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6c6f:	8b 00                	mov    (%rax),%eax
    6c71:	89 c6                	mov    %eax,%esi
    6c73:	48 8d 05 f2 43 00 00 	lea    0x43f2(%rip),%rax        # b06c <_IO_stdin_used+0x6c>
    6c7a:	48 89 c7             	mov    %rax,%rdi
    6c7d:	b8 00 00 00 00       	mov    $0x0,%eax
    6c82:	e8 10 e5 ff ff       	call   5197 <Throw>
    6c87:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6c8b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6c8f:	0f 11 00             	movups %xmm0,(%rax)
    6c92:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6c97:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6c9b:	c9                   	leave
    6c9c:	c3                   	ret

0000000000006c9d <ParseUnary>:
    6c9d:	f3 0f 1e fa          	endbr64
    6ca1:	55                   	push   %rbp
    6ca2:	48 89 e5             	mov    %rsp,%rbp
    6ca5:	48 83 ec 50          	sub    $0x50,%rsp
    6ca9:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6cad:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6cb1:	89 55 bc             	mov    %edx,-0x44(%rbp)
    6cb4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6cbb:	00 00 
    6cbd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6cc1:	31 c0                	xor    %eax,%eax
    6cc3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6cc7:	8b 00                	mov    (%rax),%eax
    6cc9:	89 45 dc             	mov    %eax,-0x24(%rbp)
    6ccc:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6cd0:	8b 10                	mov    (%rax),%edx
    6cd2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6cd6:	89 d6                	mov    %edx,%esi
    6cd8:	48 89 c7             	mov    %rax,%rdi
    6cdb:	e8 ad fb ff ff       	call   688d <ParseMatch>
    6ce0:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6ce4:	8b 55 bc             	mov    -0x44(%rbp),%edx
    6ce7:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6ceb:	48 89 ce             	mov    %rcx,%rsi
    6cee:	48 89 c7             	mov    %rax,%rdi
    6cf1:	e8 52 03 00 00       	call   7048 <ParseExpr>
    6cf6:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6cfa:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    6cfe:	8b 4d dc             	mov    -0x24(%rbp),%ecx
    6d01:	89 ce                	mov    %ecx,%esi
    6d03:	48 89 c7             	mov    %rax,%rdi
    6d06:	e8 0e 16 00 00       	call   8319 <CompileUna>
    6d0b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6d0f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6d16:	00 00 
    6d18:	74 05                	je     6d1f <ParseUnary+0x82>
    6d1a:	e8 e1 d4 ff ff       	call   4200 <__stack_chk_fail@plt>
    6d1f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6d23:	c9                   	leave
    6d24:	c3                   	ret

0000000000006d25 <ParseBinary>:
    6d25:	f3 0f 1e fa          	endbr64
    6d29:	55                   	push   %rbp
    6d2a:	48 89 e5             	mov    %rsp,%rbp
    6d2d:	48 83 ec 50          	sub    $0x50,%rsp
    6d31:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6d35:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6d39:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    6d3d:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
    6d40:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6d47:	00 00 
    6d49:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6d4d:	31 c0                	xor    %eax,%eax
    6d4f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6d53:	8b 00                	mov    (%rax),%eax
    6d55:	89 45 dc             	mov    %eax,-0x24(%rbp)
    6d58:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6d5c:	8b 10                	mov    (%rax),%edx
    6d5e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6d62:	89 d6                	mov    %edx,%esi
    6d64:	48 89 c7             	mov    %rax,%rdi
    6d67:	e8 21 fb ff ff       	call   688d <ParseMatch>
    6d6c:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6d70:	8b 55 b4             	mov    -0x4c(%rbp),%edx
    6d73:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6d77:	48 89 ce             	mov    %rcx,%rsi
    6d7a:	48 89 c7             	mov    %rax,%rdi
    6d7d:	e8 c6 02 00 00       	call   7048 <ParseExpr>
    6d82:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6d86:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    6d8a:	8b 55 dc             	mov    -0x24(%rbp),%edx
    6d8d:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
    6d91:	48 89 c7             	mov    %rax,%rdi
    6d94:	e8 73 35 00 00       	call   a30c <CompileBin>
    6d99:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6d9d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6da4:	00 00 
    6da6:	74 05                	je     6dad <ParseBinary+0x88>
    6da8:	e8 53 d4 ff ff       	call   4200 <__stack_chk_fail@plt>
    6dad:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6db1:	c9                   	leave
    6db2:	c3                   	ret

0000000000006db3 <ParseGroup>:
    6db3:	f3 0f 1e fa          	endbr64
    6db7:	55                   	push   %rbp
    6db8:	48 89 e5             	mov    %rsp,%rbp
    6dbb:	48 83 ec 30          	sub    $0x30,%rsp
    6dbf:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6dc3:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6dc7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6dce:	00 00 
    6dd0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6dd4:	31 c0                	xor    %eax,%eax
    6dd6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6dda:	be 24 00 00 00       	mov    $0x24,%esi
    6ddf:	48 89 c7             	mov    %rax,%rdi
    6de2:	e8 a6 fa ff ff       	call   688d <ParseMatch>
    6de7:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6deb:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    6def:	ba 00 00 00 00       	mov    $0x0,%edx
    6df4:	48 89 ce             	mov    %rcx,%rsi
    6df7:	48 89 c7             	mov    %rax,%rdi
    6dfa:	e8 49 02 00 00       	call   7048 <ParseExpr>
    6dff:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6e03:	be 25 00 00 00       	mov    $0x25,%esi
    6e08:	48 89 c7             	mov    %rax,%rdi
    6e0b:	e8 7d fa ff ff       	call   688d <ParseMatch>
    6e10:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6e14:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6e18:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6e1c:	48 89 01             	mov    %rax,(%rcx)
    6e1f:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6e23:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6e27:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6e2b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6e2f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6e36:	00 00 
    6e38:	74 05                	je     6e3f <ParseGroup+0x8c>
    6e3a:	e8 c1 d3 ff ff       	call   4200 <__stack_chk_fail@plt>
    6e3f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6e43:	c9                   	leave
    6e44:	c3                   	ret

0000000000006e45 <ParseCall>:
    6e45:	f3 0f 1e fa          	endbr64
    6e49:	55                   	push   %rbp
    6e4a:	48 89 e5             	mov    %rsp,%rbp
    6e4d:	48 83 ec 40          	sub    $0x40,%rsp
    6e51:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6e55:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6e59:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6e5d:	48 8b 40 10          	mov    0x10(%rax),%rax
    6e61:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    6e65:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6e69:	be 39 00 00 00       	mov    $0x39,%esi
    6e6e:	48 89 c7             	mov    %rax,%rdi
    6e71:	e8 17 fa ff ff       	call   688d <ParseMatch>
    6e76:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6e7a:	be 24 00 00 00       	mov    $0x24,%esi
    6e7f:	48 89 c7             	mov    %rax,%rdi
    6e82:	e8 06 fa ff ff       	call   688d <ParseMatch>
    6e87:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6e8b:	be 25 00 00 00       	mov    $0x25,%esi
    6e90:	48 89 c7             	mov    %rax,%rdi
    6e93:	e8 f5 f9 ff ff       	call   688d <ParseMatch>
    6e98:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6e9c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6ea0:	0f 11 00             	movups %xmm0,(%rax)
    6ea3:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6ea8:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6eac:	c9                   	leave
    6ead:	c3                   	ret

0000000000006eae <ParseI64>:
    6eae:	f3 0f 1e fa          	endbr64
    6eb2:	55                   	push   %rbp
    6eb3:	48 89 e5             	mov    %rsp,%rbp
    6eb6:	48 83 ec 30          	sub    $0x30,%rsp
    6eba:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6ebe:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6ec2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6ec6:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6eca:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6ecf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6ed3:	48 8b 40 10          	mov    0x10(%rax),%rax
    6ed7:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6edb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6edf:	be 36 00 00 00       	mov    $0x36,%esi
    6ee4:	48 89 c7             	mov    %rax,%rdi
    6ee7:	e8 a1 f9 ff ff       	call   688d <ParseMatch>
    6eec:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6ef0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6ef4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6ef8:	48 89 01             	mov    %rax,(%rcx)
    6efb:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6eff:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6f03:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6f07:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6f0b:	c9                   	leave
    6f0c:	c3                   	ret

0000000000006f0d <ParseF64>:
    6f0d:	f3 0f 1e fa          	endbr64
    6f11:	55                   	push   %rbp
    6f12:	48 89 e5             	mov    %rsp,%rbp
    6f15:	48 83 ec 30          	sub    $0x30,%rsp
    6f19:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6f1d:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6f21:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6f25:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6f29:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6f2e:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    6f35:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6f39:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    6f3e:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    6f43:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6f47:	be 37 00 00 00       	mov    $0x37,%esi
    6f4c:	48 89 c7             	mov    %rax,%rdi
    6f4f:	e8 39 f9 ff ff       	call   688d <ParseMatch>
    6f54:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6f58:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6f5c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6f60:	48 89 01             	mov    %rax,(%rcx)
    6f63:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6f67:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6f6b:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6f6f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6f73:	c9                   	leave
    6f74:	c3                   	ret

0000000000006f75 <ParseStr>:
    6f75:	f3 0f 1e fa          	endbr64
    6f79:	55                   	push   %rbp
    6f7a:	48 89 e5             	mov    %rsp,%rbp
    6f7d:	48 83 ec 30          	sub    $0x30,%rsp
    6f81:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6f85:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6f89:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6f8d:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6f91:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6f96:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
    6f9d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6fa1:	48 8b 40 10          	mov    0x10(%rax),%rax
    6fa5:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6fa9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6fad:	be 38 00 00 00       	mov    $0x38,%esi
    6fb2:	48 89 c7             	mov    %rax,%rdi
    6fb5:	e8 d3 f8 ff ff       	call   688d <ParseMatch>
    6fba:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6fbe:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6fc2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6fc6:	48 89 01             	mov    %rax,(%rcx)
    6fc9:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6fcd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6fd1:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6fd5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6fd9:	c9                   	leave
    6fda:	c3                   	ret

0000000000006fdb <ParseRef>:
    6fdb:	f3 0f 1e fa          	endbr64
    6fdf:	55                   	push   %rbp
    6fe0:	48 89 e5             	mov    %rsp,%rbp
    6fe3:	48 83 ec 30          	sub    $0x30,%rsp
    6fe7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6feb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6fef:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6ff3:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6ff7:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6ffc:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%rbp)
    7003:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
    700a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    700e:	48 8b 40 10          	mov    0x10(%rax),%rax
    7012:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7016:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    701a:	be 39 00 00 00       	mov    $0x39,%esi
    701f:	48 89 c7             	mov    %rax,%rdi
    7022:	e8 66 f8 ff ff       	call   688d <ParseMatch>
    7027:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    702b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    702f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7033:	48 89 01             	mov    %rax,(%rcx)
    7036:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    703a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    703e:	48 89 41 10          	mov    %rax,0x10(%rcx)
    7042:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7046:	c9                   	leave
    7047:	c3                   	ret

0000000000007048 <ParseExpr>:
    7048:	f3 0f 1e fa          	endbr64
    704c:	55                   	push   %rbp
    704d:	48 89 e5             	mov    %rsp,%rbp
    7050:	48 83 ec 70          	sub    $0x70,%rsp
    7054:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    7058:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    705c:	89 55 bc             	mov    %edx,-0x44(%rbp)
    705f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7066:	00 00 
    7068:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    706c:	31 c0                	xor    %eax,%eax
    706e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    7072:	8b 00                	mov    (%rax),%eax
    7074:	89 c2                	mov    %eax,%edx
    7076:	48 89 d0             	mov    %rdx,%rax
    7079:	48 01 c0             	add    %rax,%rax
    707c:	48 01 d0             	add    %rdx,%rax
    707f:	48 c1 e0 03          	shl    $0x3,%rax
    7083:	48 8d 15 16 75 00 00 	lea    0x7516(%rip),%rdx        # e5a0 <rules.44>
    708a:	48 01 d0             	add    %rdx,%rax
    708d:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    7091:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7095:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    7099:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    709e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    70a2:	48 8b 00             	mov    (%rax),%rax
    70a5:	eb 6e                	jmp    7115 <ParseExpr+0xcd>
    70a7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    70ab:	8b 00                	mov    (%rax),%eax
    70ad:	89 c2                	mov    %eax,%edx
    70af:	48 89 d0             	mov    %rdx,%rax
    70b2:	48 01 c0             	add    %rax,%rax
    70b5:	48 01 d0             	add    %rdx,%rax
    70b8:	48 c1 e0 03          	shl    $0x3,%rax
    70bc:	48 8d 15 dd 74 00 00 	lea    0x74dd(%rip),%rdx        # e5a0 <rules.44>
    70c3:	48 01 d0             	add    %rdx,%rax
    70c6:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    70ca:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    70ce:	8b 40 10             	mov    0x10(%rax),%eax
    70d1:	39 45 bc             	cmp    %eax,-0x44(%rbp)
    70d4:	0f 83 20 02 00 00    	jae    72fa <ParseExpr+0x2b2>
    70da:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    70de:	48 8b 40 08          	mov    0x8(%rax),%rax
    70e2:	eb 31                	jmp    7115 <ParseExpr+0xcd>
    70e4:	f3 0f 1e fa          	endbr64
    70e8:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    70ec:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    70f0:	48 89 d6             	mov    %rdx,%rsi
    70f3:	48 89 c7             	mov    %rax,%rdi
    70f6:	e8 36 fb ff ff       	call   6c31 <ParseEos>
    70fb:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    70ff:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    7103:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7107:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    710b:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    710f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7113:	eb 92                	jmp    70a7 <ParseExpr+0x5f>
    7115:	ff e0                	jmp    *%rax
    7117:	f3 0f 1e fa          	endbr64
    711b:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    711f:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    7123:	48 89 d6             	mov    %rdx,%rsi
    7126:	48 89 c7             	mov    %rax,%rdi
    7129:	e8 29 fb ff ff       	call   6c57 <ParseErr>
    712e:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    7132:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    7136:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    713a:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    713e:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    7142:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7146:	e9 5c ff ff ff       	jmp    70a7 <ParseExpr+0x5f>
    714b:	f3 0f 1e fa          	endbr64
    714f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7153:	8b 50 10             	mov    0x10(%rax),%edx
    7156:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    715a:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    715e:	48 89 ce             	mov    %rcx,%rsi
    7161:	48 89 c7             	mov    %rax,%rdi
    7164:	e8 34 fb ff ff       	call   6c9d <ParseUnary>
    7169:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    716d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    7171:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7175:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7179:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    717d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7181:	e9 21 ff ff ff       	jmp    70a7 <ParseExpr+0x5f>
    7186:	f3 0f 1e fa          	endbr64
    718a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    718e:	8b 48 10             	mov    0x10(%rax),%ecx
    7191:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    7195:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    7199:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
    719d:	48 89 c7             	mov    %rax,%rdi
    71a0:	e8 80 fb ff ff       	call   6d25 <ParseBinary>
    71a5:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    71a9:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    71ad:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    71b1:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    71b5:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    71b9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    71bd:	e9 e5 fe ff ff       	jmp    70a7 <ParseExpr+0x5f>
    71c2:	f3 0f 1e fa          	endbr64
    71c6:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    71ca:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    71ce:	48 89 d6             	mov    %rdx,%rsi
    71d1:	48 89 c7             	mov    %rax,%rdi
    71d4:	e8 da fb ff ff       	call   6db3 <ParseGroup>
    71d9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    71dd:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    71e1:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    71e5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    71e9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    71ed:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    71f1:	e9 b1 fe ff ff       	jmp    70a7 <ParseExpr+0x5f>
    71f6:	f3 0f 1e fa          	endbr64
    71fa:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    71fe:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    7202:	48 89 d6             	mov    %rdx,%rsi
    7205:	48 89 c7             	mov    %rax,%rdi
    7208:	e8 38 fc ff ff       	call   6e45 <ParseCall>
    720d:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    7211:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    7215:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7219:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    721d:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    7221:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7225:	e9 7d fe ff ff       	jmp    70a7 <ParseExpr+0x5f>
    722a:	f3 0f 1e fa          	endbr64
    722e:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    7232:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    7236:	48 89 d6             	mov    %rdx,%rsi
    7239:	48 89 c7             	mov    %rax,%rdi
    723c:	e8 6d fc ff ff       	call   6eae <ParseI64>
    7241:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    7245:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    7249:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    724d:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7251:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    7255:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7259:	e9 49 fe ff ff       	jmp    70a7 <ParseExpr+0x5f>
    725e:	f3 0f 1e fa          	endbr64
    7262:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    7266:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    726a:	48 89 d6             	mov    %rdx,%rsi
    726d:	48 89 c7             	mov    %rax,%rdi
    7270:	e8 98 fc ff ff       	call   6f0d <ParseF64>
    7275:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    7279:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    727d:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7281:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7285:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    7289:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    728d:	e9 15 fe ff ff       	jmp    70a7 <ParseExpr+0x5f>
    7292:	f3 0f 1e fa          	endbr64
    7296:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    729a:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    729e:	48 89 d6             	mov    %rdx,%rsi
    72a1:	48 89 c7             	mov    %rax,%rdi
    72a4:	e8 cc fc ff ff       	call   6f75 <ParseStr>
    72a9:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    72ad:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    72b1:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    72b5:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    72b9:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    72bd:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    72c1:	e9 e1 fd ff ff       	jmp    70a7 <ParseExpr+0x5f>
    72c6:	f3 0f 1e fa          	endbr64
    72ca:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    72ce:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    72d2:	48 89 d6             	mov    %rdx,%rsi
    72d5:	48 89 c7             	mov    %rax,%rdi
    72d8:	e8 fe fc ff ff       	call   6fdb <ParseRef>
    72dd:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    72e1:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    72e5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    72e9:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    72ed:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    72f1:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    72f5:	e9 ad fd ff ff       	jmp    70a7 <ParseExpr+0x5f>
    72fa:	90                   	nop
    72fb:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    72ff:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7303:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7307:	48 89 01             	mov    %rax,(%rcx)
    730a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    730e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7312:	48 89 41 10          	mov    %rax,0x10(%rcx)
    7316:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    731a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7321:	00 00 
    7323:	74 05                	je     732a <ParseExpr+0x2e2>
    7325:	e8 d6 ce ff ff       	call   4200 <__stack_chk_fail@plt>
    732a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    732e:	c9                   	leave
    732f:	c3                   	ret

0000000000007330 <ParseStmt>:
    7330:	f3 0f 1e fa          	endbr64
    7334:	55                   	push   %rbp
    7335:	48 89 e5             	mov    %rsp,%rbp
    7338:	48 83 ec 20          	sub    $0x20,%rsp
    733c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7340:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7344:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    734b:	00 00 
    734d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7351:	31 c0                	xor    %eax,%eax
    7353:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7357:	8b 00                	mov    (%rax),%eax
    7359:	89 c0                	mov    %eax,%eax
    735b:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7362:	00 
    7363:	48 8d 05 b6 77 00 00 	lea    0x77b6(%rip),%rax        # eb20 <stmts.43>
    736a:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    736e:	90                   	nop
    736f:	ff e0                	jmp    *%rax
    7371:	f3 0f 1e fa          	endbr64
    7375:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7379:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    737d:	ba 00 00 00 00       	mov    $0x0,%edx
    7382:	48 89 ce             	mov    %rcx,%rsi
    7385:	48 89 c7             	mov    %rax,%rdi
    7388:	e8 bb fc ff ff       	call   7048 <ParseExpr>
    738d:	eb 7b                	jmp    740a <ParseStmt+0xda>
    738f:	f3 0f 1e fa          	endbr64
    7393:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7397:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    739b:	48 89 d6             	mov    %rdx,%rsi
    739e:	48 89 c7             	mov    %rax,%rdi
    73a1:	e8 76 f5 ff ff       	call   691c <ParseIf>
    73a6:	eb 62                	jmp    740a <ParseStmt+0xda>
    73a8:	f3 0f 1e fa          	endbr64
    73ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    73b0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    73b4:	48 89 d6             	mov    %rdx,%rsi
    73b7:	48 89 c7             	mov    %rax,%rdi
    73ba:	e8 3e f6 ff ff       	call   69fd <ParseFor>
    73bf:	eb 49                	jmp    740a <ParseStmt+0xda>
    73c1:	f3 0f 1e fa          	endbr64
    73c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    73c9:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    73cd:	48 89 d6             	mov    %rdx,%rsi
    73d0:	48 89 c7             	mov    %rax,%rdi
    73d3:	e8 60 f6 ff ff       	call   6a38 <ParseDo>
    73d8:	eb 30                	jmp    740a <ParseStmt+0xda>
    73da:	f3 0f 1e fa          	endbr64
    73de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    73e2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    73e6:	48 89 d6             	mov    %rdx,%rsi
    73e9:	48 89 c7             	mov    %rax,%rdi
    73ec:	e8 82 f6 ff ff       	call   6a73 <ParseWhile>
    73f1:	eb 17                	jmp    740a <ParseStmt+0xda>
    73f3:	f3 0f 1e fa          	endbr64
    73f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    73fb:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    73ff:	48 89 d6             	mov    %rdx,%rsi
    7402:	48 89 c7             	mov    %rax,%rdi
    7405:	e8 52 f7 ff ff       	call   6b5c <ParseId>
    740a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    740e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7415:	00 00 
    7417:	74 05                	je     741e <ParseStmt+0xee>
    7419:	e8 e2 cd ff ff       	call   4200 <__stack_chk_fail@plt>
    741e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7422:	c9                   	leave
    7423:	c3                   	ret

0000000000007424 <Parse>:
    7424:	f3 0f 1e fa          	endbr64
    7428:	55                   	push   %rbp
    7429:	48 89 e5             	mov    %rsp,%rbp
    742c:	53                   	push   %rbx
    742d:	48 83 ec 58          	sub    $0x58,%rsp
    7431:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7438:	00 00 
    743a:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    743e:	31 c0                	xor    %eax,%eax
    7440:	e8 6d f3 ff ff       	call   67b2 <GetParser>
    7445:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    7449:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
    744d:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    7451:	48 89 c7             	mov    %rax,%rdi
    7454:	e8 8c ef ff ff       	call   63e5 <Lex>
    7459:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    745d:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    7461:	48 89 03             	mov    %rax,(%rbx)
    7464:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    7468:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    746c:	48 89 43 10          	mov    %rax,0x10(%rbx)
    7470:	eb 1f                	jmp    7491 <Parse+0x6d>
    7472:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    7476:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    747a:	48 89 d6             	mov    %rdx,%rsi
    747d:	48 89 c7             	mov    %rax,%rdi
    7480:	e8 ab fe ff ff       	call   7330 <ParseStmt>
    7485:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    7489:	48 89 c7             	mov    %rax,%rdi
    748c:	e8 39 f3 ff ff       	call   67ca <ParseNodeLog>
    7491:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    7495:	8b 00                	mov    (%rax),%eax
    7497:	85 c0                	test   %eax,%eax
    7499:	75 d7                	jne    7472 <Parse+0x4e>
    749b:	90                   	nop
    749c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    74a0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    74a7:	00 00 
    74a9:	74 05                	je     74b0 <Parse+0x8c>
    74ab:	e8 50 cd ff ff       	call   4200 <__stack_chk_fail@plt>
    74b0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    74b4:	c9                   	leave
    74b5:	c3                   	ret

00000000000074b6 <GetCompiler>:
    74b6:	55                   	push   %rbp
    74b7:	48 89 e5             	mov    %rsp,%rbp
    74ba:	48 8d 05 8f 80 00 00 	lea    0x808f(%rip),%rax        # f550 <compiler.41>
    74c1:	5d                   	pop    %rbp
    74c2:	c3                   	ret

00000000000074c3 <FnCommit>:
    74c3:	f3 0f 1e fa          	endbr64
    74c7:	55                   	push   %rbp
    74c8:	48 89 e5             	mov    %rsp,%rbp
    74cb:	48 83 ec 10          	sub    $0x10,%rsp
    74cf:	e8 e2 ff ff ff       	call   74b6 <GetCompiler>
    74d4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    74d8:	e8 af d0 ff ff       	call   458c <GetFuncs>
    74dd:	48 89 c7             	mov    %rax,%rdi
    74e0:	e8 07 d1 ff ff       	call   45ec <VecCommit>
    74e5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    74e9:	e8 6a d0 ff ff       	call   4558 <GetConsts>
    74ee:	8b 50 08             	mov    0x8(%rax),%edx
    74f1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    74f5:	89 10                	mov    %edx,(%rax)
    74f7:	e8 69 d0 ff ff       	call   4565 <GetLocals>
    74fc:	8b 50 08             	mov    0x8(%rax),%edx
    74ff:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7503:	89 50 04             	mov    %edx,0x4(%rax)
    7506:	e8 74 d0 ff ff       	call   457f <GetCode>
    750b:	8b 50 08             	mov    0x8(%rax),%edx
    750e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7512:	89 50 08             	mov    %edx,0x8(%rax)
    7515:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7519:	66 c7 40 0e 00 00    	movw   $0x0,0xe(%rax)
    751f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7523:	c6 40 0d 00          	movb   $0x0,0xd(%rax)
    7527:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    752b:	0f b6 50 0d          	movzbl 0xd(%rax),%edx
    752f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7533:	88 50 0c             	mov    %dl,0xc(%rax)
    7536:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    753a:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    753e:	48 89 10             	mov    %rdx,(%rax)
    7541:	90                   	nop
    7542:	c9                   	leave
    7543:	c3                   	ret

0000000000007544 <CompilerInit>:
    7544:	f3 0f 1e fa          	endbr64
    7548:	55                   	push   %rbp
    7549:	48 89 e5             	mov    %rsp,%rbp
    754c:	48 83 ec 10          	sub    $0x10,%rsp
    7550:	e8 61 ff ff ff       	call   74b6 <GetCompiler>
    7555:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7559:	90                   	nop
    755a:	c9                   	leave
    755b:	c3                   	ret

000000000000755c <ConstPush>:
    755c:	55                   	push   %rbp
    755d:	48 89 e5             	mov    %rsp,%rbp
    7560:	48 83 ec 20          	sub    $0x20,%rsp
    7564:	89 f8                	mov    %edi,%eax
    7566:	48 89 f1             	mov    %rsi,%rcx
    7569:	48 89 ca             	mov    %rcx,%rdx
    756c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7570:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7574:	e8 3d ff ff ff       	call   74b6 <GetCompiler>
    7579:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    757d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7581:	48 8b 00             	mov    (%rax),%rax
    7584:	48 85 c0             	test   %rax,%rax
    7587:	74 11                	je     759a <ConstPush+0x3e>
    7589:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    758d:	48 8b 00             	mov    (%rax),%rax
    7590:	0f b6 50 0c          	movzbl 0xc(%rax),%edx
    7594:	83 c2 01             	add    $0x1,%edx
    7597:	88 50 0c             	mov    %dl,0xc(%rax)
    759a:	e8 b9 cf ff ff       	call   4558 <GetConsts>
    759f:	48 89 c2             	mov    %rax,%rdx
    75a2:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    75a6:	48 89 c6             	mov    %rax,%rsi
    75a9:	48 89 d7             	mov    %rdx,%rdi
    75ac:	e8 c3 d0 ff ff       	call   4674 <VecPush>
    75b1:	c9                   	leave
    75b2:	c3                   	ret

00000000000075b3 <LocalPush>:
    75b3:	55                   	push   %rbp
    75b4:	48 89 e5             	mov    %rsp,%rbp
    75b7:	48 83 ec 40          	sub    $0x40,%rsp
    75bb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    75bf:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    75c3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    75c7:	89 c8                	mov    %ecx,%eax
    75c9:	4c 89 c1             	mov    %r8,%rcx
    75cc:	48 89 ca             	mov    %rcx,%rdx
    75cf:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    75d3:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    75d7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    75db:	0f b6 40 0d          	movzbl 0xd(%rax),%eax
    75df:	8d 50 01             	lea    0x1(%rax),%edx
    75e2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    75e6:	88 50 0d             	mov    %dl,0xd(%rax)
    75e9:	e8 77 cf ff ff       	call   4565 <GetLocals>
    75ee:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    75f2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    75f6:	48 89 c7             	mov    %rax,%rdi
    75f9:	e8 ee cf ff ff       	call   45ec <VecCommit>
    75fe:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7602:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7606:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    760a:	48 89 10             	mov    %rdx,(%rax)
    760d:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    7611:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    7615:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    7619:	48 89 41 08          	mov    %rax,0x8(%rcx)
    761d:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    7621:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7625:	8b 40 08             	mov    0x8(%rax),%eax
    7628:	8d 50 ff             	lea    -0x1(%rax),%edx
    762b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    762f:	89 10                	mov    %edx,(%rax)
    7631:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7635:	c9                   	leave
    7636:	c3                   	ret

0000000000007637 <LocalGet>:
    7637:	55                   	push   %rbp
    7638:	48 89 e5             	mov    %rsp,%rbp
    763b:	48 83 ec 38          	sub    $0x38,%rsp
    763f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    7643:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    7647:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    764b:	e8 15 cf ff ff       	call   4565 <GetLocals>
    7650:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7654:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    7658:	8b 40 04             	mov    0x4(%rax),%eax
    765b:	89 45 ec             	mov    %eax,-0x14(%rbp)
    765e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    7662:	0f b6 40 0d          	movzbl 0xd(%rax),%eax
    7666:	0f b6 d0             	movzbl %al,%edx
    7669:	8b 45 ec             	mov    -0x14(%rbp),%eax
    766c:	01 d0                	add    %edx,%eax
    766e:	83 e8 01             	sub    $0x1,%eax
    7671:	89 45 e8             	mov    %eax,-0x18(%rbp)
    7674:	eb 35                	jmp    76ab <LocalGet+0x74>
    7676:	8b 55 e8             	mov    -0x18(%rbp),%edx
    7679:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    767d:	89 d6                	mov    %edx,%esi
    767f:	48 89 c7             	mov    %rax,%rdi
    7682:	e8 e8 d0 ff ff       	call   476f <VecGet>
    7687:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    768b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    768f:	48 8b 00             	mov    (%rax),%rax
    7692:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    7696:	75 0f                	jne    76a7 <LocalGet+0x70>
    7698:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    769c:	8b 55 e8             	mov    -0x18(%rbp),%edx
    769f:	89 10                	mov    %edx,(%rax)
    76a1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    76a5:	eb 11                	jmp    76b8 <LocalGet+0x81>
    76a7:	83 6d e8 01          	subl   $0x1,-0x18(%rbp)
    76ab:	8b 45 e8             	mov    -0x18(%rbp),%eax
    76ae:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    76b1:	73 c3                	jae    7676 <LocalGet+0x3f>
    76b3:	b8 00 00 00 00       	mov    $0x0,%eax
    76b8:	c9                   	leave
    76b9:	c3                   	ret

00000000000076ba <GlobalPush>:
    76ba:	55                   	push   %rbp
    76bb:	48 89 e5             	mov    %rsp,%rbp
    76be:	48 83 ec 40          	sub    $0x40,%rsp
    76c2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    76c6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    76ca:	89 d0                	mov    %edx,%eax
    76cc:	48 89 ca             	mov    %rcx,%rdx
    76cf:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    76d3:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    76d7:	e8 96 ce ff ff       	call   4572 <GetGlobals>
    76dc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    76e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    76e4:	8b 40 08             	mov    0x8(%rax),%eax
    76e7:	89 45 ec             	mov    %eax,-0x14(%rbp)
    76ea:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    76ee:	48 89 c7             	mov    %rax,%rdi
    76f1:	e8 f6 ce ff ff       	call   45ec <VecCommit>
    76f6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    76fa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    76fe:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    7702:	48 89 10             	mov    %rdx,(%rax)
    7705:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    7709:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    770d:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    7711:	48 89 41 08          	mov    %rax,0x8(%rcx)
    7715:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    7719:	e8 f0 d7 ff ff       	call   4f0e <GetEnv>
    771e:	48 89 c1             	mov    %rax,%rcx
    7721:	8b 55 ec             	mov    -0x14(%rbp),%edx
    7724:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    7728:	48 89 c6             	mov    %rax,%rsi
    772b:	48 89 cf             	mov    %rcx,%rdi
    772e:	e8 93 d9 ff ff       	call   50c6 <EnvPut>
    7733:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7737:	8b 55 ec             	mov    -0x14(%rbp),%edx
    773a:	89 10                	mov    %edx,(%rax)
    773c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7740:	c9                   	leave
    7741:	c3                   	ret

0000000000007742 <GlobalGet>:
    7742:	55                   	push   %rbp
    7743:	48 89 e5             	mov    %rsp,%rbp
    7746:	48 83 ec 20          	sub    $0x20,%rsp
    774a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    774e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7752:	e8 1b ce ff ff       	call   4572 <GetGlobals>
    7757:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    775b:	e8 ae d7 ff ff       	call   4f0e <GetEnv>
    7760:	48 89 c2             	mov    %rax,%rdx
    7763:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7767:	48 89 c6             	mov    %rax,%rsi
    776a:	48 89 d7             	mov    %rdx,%rdi
    776d:	e8 da d8 ff ff       	call   504c <EnvGet>
    7772:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7776:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    777b:	75 07                	jne    7784 <GlobalGet+0x42>
    777d:	b8 00 00 00 00       	mov    $0x0,%eax
    7782:	eb 22                	jmp    77a6 <GlobalGet+0x64>
    7784:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7788:	8b 50 04             	mov    0x4(%rax),%edx
    778b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    778f:	89 10                	mov    %edx,(%rax)
    7791:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7795:	8b 50 04             	mov    0x4(%rax),%edx
    7798:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    779c:	89 d6                	mov    %edx,%esi
    779e:	48 89 c7             	mov    %rax,%rdi
    77a1:	e8 c9 cf ff ff       	call   476f <VecGet>
    77a6:	c9                   	leave
    77a7:	c3                   	ret

00000000000077a8 <OpPush>:
    77a8:	55                   	push   %rbp
    77a9:	48 89 e5             	mov    %rsp,%rbp
    77ac:	48 83 ec 40          	sub    $0x40,%rsp
    77b0:	89 7d dc             	mov    %edi,-0x24(%rbp)
    77b3:	89 c8                	mov    %ecx,%eax
    77b5:	44 89 cf             	mov    %r9d,%edi
    77b8:	89 f1                	mov    %esi,%ecx
    77ba:	88 4d d8             	mov    %cl,-0x28(%rbp)
    77bd:	88 55 d4             	mov    %dl,-0x2c(%rbp)
    77c0:	88 45 d0             	mov    %al,-0x30(%rbp)
    77c3:	44 89 c0             	mov    %r8d,%eax
    77c6:	88 45 cc             	mov    %al,-0x34(%rbp)
    77c9:	89 f8                	mov    %edi,%eax
    77cb:	88 45 c8             	mov    %al,-0x38(%rbp)
    77ce:	e8 e3 fc ff ff       	call   74b6 <GetCompiler>
    77d3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    77d7:	e8 a3 cd ff ff       	call   457f <GetCode>
    77dc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    77e0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    77e4:	48 8b 00             	mov    (%rax),%rax
    77e7:	48 85 c0             	test   %rax,%rax
    77ea:	74 12                	je     77fe <OpPush+0x56>
    77ec:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    77f0:	48 8b 00             	mov    (%rax),%rax
    77f3:	0f b7 50 0e          	movzwl 0xe(%rax),%edx
    77f7:	83 c2 01             	add    $0x1,%edx
    77fa:	66 89 50 0e          	mov    %dx,0xe(%rax)
    77fe:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7802:	48 89 c7             	mov    %rax,%rdi
    7805:	e8 e2 cd ff ff       	call   45ec <VecCommit>
    780a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    780e:	8b 45 dc             	mov    -0x24(%rbp),%eax
    7811:	89 c2                	mov    %eax,%edx
    7813:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7817:	88 10                	mov    %dl,(%rax)
    7819:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    781d:	0f b6 55 d8          	movzbl -0x28(%rbp),%edx
    7821:	88 50 01             	mov    %dl,0x1(%rax)
    7824:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7828:	0f b6 55 d4          	movzbl -0x2c(%rbp),%edx
    782c:	88 50 02             	mov    %dl,0x2(%rax)
    782f:	0f b6 45 d0          	movzbl -0x30(%rbp),%eax
    7833:	83 e0 03             	and    $0x3,%eax
    7836:	89 c2                	mov    %eax,%edx
    7838:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    783c:	89 d1                	mov    %edx,%ecx
    783e:	83 e1 03             	and    $0x3,%ecx
    7841:	0f b6 50 03          	movzbl 0x3(%rax),%edx
    7845:	83 e2 fc             	and    $0xfffffffc,%edx
    7848:	09 ca                	or     %ecx,%edx
    784a:	88 50 03             	mov    %dl,0x3(%rax)
    784d:	0f b6 45 cc          	movzbl -0x34(%rbp),%eax
    7851:	83 e0 07             	and    $0x7,%eax
    7854:	89 c2                	mov    %eax,%edx
    7856:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    785a:	83 e2 07             	and    $0x7,%edx
    785d:	8d 0c 95 00 00 00 00 	lea    0x0(,%rdx,4),%ecx
    7864:	0f b6 50 03          	movzbl 0x3(%rax),%edx
    7868:	83 e2 e3             	and    $0xffffffe3,%edx
    786b:	09 ca                	or     %ecx,%edx
    786d:	88 50 03             	mov    %dl,0x3(%rax)
    7870:	0f b6 45 c8          	movzbl -0x38(%rbp),%eax
    7874:	83 e0 07             	and    $0x7,%eax
    7877:	89 c2                	mov    %eax,%edx
    7879:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    787d:	89 d1                	mov    %edx,%ecx
    787f:	c1 e1 05             	shl    $0x5,%ecx
    7882:	0f b6 50 03          	movzbl 0x3(%rax),%edx
    7886:	83 e2 1f             	and    $0x1f,%edx
    7889:	09 ca                	or     %ecx,%edx
    788b:	88 50 03             	mov    %dl,0x3(%rax)
    788e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7892:	8b 40 08             	mov    0x8(%rax),%eax
    7895:	83 e8 01             	sub    $0x1,%eax
    7898:	c9                   	leave
    7899:	c3                   	ret

000000000000789a <TkToOp>:
    789a:	55                   	push   %rbp
    789b:	48 89 e5             	mov    %rsp,%rbp
    789e:	89 7d fc             	mov    %edi,-0x4(%rbp)
    78a1:	8b 45 fc             	mov    -0x4(%rbp),%eax
    78a4:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    78ab:	00 
    78ac:	48 8d 05 6d 67 00 00 	lea    0x676d(%rip),%rax        # e020 <token_ops.27>
    78b3:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    78b6:	5d                   	pop    %rbp
    78b7:	c3                   	ret

00000000000078b8 <LocalAssign>:
    78b8:	55                   	push   %rbp
    78b9:	48 89 e5             	mov    %rsp,%rbp
    78bc:	48 83 ec 40          	sub    $0x40,%rsp
    78c0:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    78c4:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    78c8:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    78cc:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    78d3:	00 00 
    78d5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    78d9:	31 c0                	xor    %eax,%eax
    78db:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%rbp)
    78e2:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    78e6:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    78ea:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    78ee:	48 89 ce             	mov    %rcx,%rsi
    78f1:	48 89 c7             	mov    %rax,%rdi
    78f4:	e8 3e fd ff ff       	call   7637 <LocalGet>
    78f9:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    78fd:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    7902:	75 26                	jne    792a <LocalAssign+0x72>
    7904:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    7908:	8b 48 08             	mov    0x8(%rax),%ecx
    790b:	48 8b 78 10          	mov    0x10(%rax),%rdi
    790f:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    7913:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
    7917:	48 8d 45 ec          	lea    -0x14(%rbp),%rax
    791b:	49 89 f8             	mov    %rdi,%r8
    791e:	48 89 c7             	mov    %rax,%rdi
    7921:	e8 8d fc ff ff       	call   75b3 <LocalPush>
    7926:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    792a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    792d:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    7931:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    7938:	00 00 
    793a:	74 05                	je     7941 <LocalAssign+0x89>
    793c:	e8 bf c8 ff ff       	call   4200 <__stack_chk_fail@plt>
    7941:	c9                   	leave
    7942:	c3                   	ret

0000000000007943 <GlobalAssignConst>:
    7943:	55                   	push   %rbp
    7944:	48 89 e5             	mov    %rsp,%rbp
    7947:	48 83 ec 20          	sub    $0x20,%rsp
    794b:	89 7d ec             	mov    %edi,-0x14(%rbp)
    794e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7952:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7956:	8b 50 08             	mov    0x8(%rax),%edx
    7959:	48 8b 40 10          	mov    0x10(%rax),%rax
    795d:	89 d7                	mov    %edx,%edi
    795f:	48 89 c6             	mov    %rax,%rsi
    7962:	e8 f5 fb ff ff       	call   755c <ConstPush>
    7967:	89 45 f8             	mov    %eax,-0x8(%rbp)
    796a:	8b 45 f8             	mov    -0x8(%rbp),%eax
    796d:	0f b6 d0             	movzbl %al,%edx
    7970:	8b 45 ec             	mov    -0x14(%rbp),%eax
    7973:	0f b6 c0             	movzbl %al,%eax
    7976:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    797c:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    7982:	b9 01 00 00 00       	mov    $0x1,%ecx
    7987:	89 c6                	mov    %eax,%esi
    7989:	bf 1a 00 00 00       	mov    $0x1a,%edi
    798e:	e8 15 fe ff ff       	call   77a8 <OpPush>
    7993:	89 45 fc             	mov    %eax,-0x4(%rbp)
    7996:	8b 45 fc             	mov    -0x4(%rbp),%eax
    7999:	c9                   	leave
    799a:	c3                   	ret

000000000000799b <GlobalAssignRef>:
    799b:	55                   	push   %rbp
    799c:	48 89 e5             	mov    %rsp,%rbp
    799f:	53                   	push   %rbx
    79a0:	48 83 ec 48          	sub    $0x48,%rsp
    79a4:	89 7d bc             	mov    %edi,-0x44(%rbp)
    79a7:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    79ab:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    79b2:	00 00 
    79b4:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    79b8:	31 c0                	xor    %eax,%eax
    79ba:	e8 f7 fa ff ff       	call   74b6 <GetCompiler>
    79bf:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
    79c3:	c7 45 cc 00 00 00 00 	movl   $0x0,-0x34(%rbp)
    79ca:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    79ce:	48 8b 50 10          	mov    0x10(%rax),%rdx
    79d2:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    79d6:	48 8b 08             	mov    (%rax),%rcx
    79d9:	48 8d 45 cc          	lea    -0x34(%rbp),%rax
    79dd:	48 89 ce             	mov    %rcx,%rsi
    79e0:	48 89 c7             	mov    %rax,%rdi
    79e3:	e8 4f fc ff ff       	call   7637 <LocalGet>
    79e8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    79ec:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    79f1:	74 2e                	je     7a21 <GlobalAssignRef+0x86>
    79f3:	8b 45 cc             	mov    -0x34(%rbp),%eax
    79f6:	0f b6 d0             	movzbl %al,%edx
    79f9:	8b 45 bc             	mov    -0x44(%rbp),%eax
    79fc:	0f b6 c0             	movzbl %al,%eax
    79ff:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    7a05:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    7a0b:	b9 00 00 00 00       	mov    $0x0,%ecx
    7a10:	89 c6                	mov    %eax,%esi
    7a12:	bf 1a 00 00 00       	mov    $0x1a,%edi
    7a17:	e8 8c fd ff ff       	call   77a8 <OpPush>
    7a1c:	e9 8a 00 00 00       	jmp    7aab <GlobalAssignRef+0x110>
    7a21:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    7a25:	48 8b 50 10          	mov    0x10(%rax),%rdx
    7a29:	48 8d 45 cc          	lea    -0x34(%rbp),%rax
    7a2d:	48 89 d6             	mov    %rdx,%rsi
    7a30:	48 89 c7             	mov    %rax,%rdi
    7a33:	e8 0a fd ff ff       	call   7742 <GlobalGet>
    7a38:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    7a3c:	48 83 7d d8 00       	cmpq   $0x0,-0x28(%rbp)
    7a41:	74 2b                	je     7a6e <GlobalAssignRef+0xd3>
    7a43:	8b 45 cc             	mov    -0x34(%rbp),%eax
    7a46:	0f b6 d0             	movzbl %al,%edx
    7a49:	8b 45 bc             	mov    -0x44(%rbp),%eax
    7a4c:	0f b6 c0             	movzbl %al,%eax
    7a4f:	41 b9 00 00 00 00    	mov    $0x0,%r9d
    7a55:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    7a5b:	b9 02 00 00 00       	mov    $0x2,%ecx
    7a60:	89 c6                	mov    %eax,%esi
    7a62:	bf 1a 00 00 00       	mov    $0x1a,%edi
    7a67:	e8 3c fd ff ff       	call   77a8 <OpPush>
    7a6c:	eb 3d                	jmp    7aab <GlobalAssignRef+0x110>
    7a6e:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    7a72:	48 8b 40 10          	mov    0x10(%rax),%rax
    7a76:	8b 18                	mov    (%rax),%ebx
    7a78:	e8 79 c9 ff ff       	call   43f6 <GetStrings>
    7a7d:	89 de                	mov    %ebx,%esi
    7a7f:	48 89 c7             	mov    %rax,%rdi
    7a82:	e8 99 ca ff ff       	call   4520 <ArenaOff>
    7a87:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7a8b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7a8f:	48 89 c6             	mov    %rax,%rsi
    7a92:	48 8d 05 ef 35 00 00 	lea    0x35ef(%rip),%rax        # b088 <_IO_stdin_used+0x88>
    7a99:	48 89 c7             	mov    %rax,%rdi
    7a9c:	b8 00 00 00 00       	mov    $0x0,%eax
    7aa1:	e8 f1 d6 ff ff       	call   5197 <Throw>
    7aa6:	b8 00 00 00 00       	mov    $0x0,%eax
    7aab:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7aaf:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    7ab6:	00 00 
    7ab8:	74 05                	je     7abf <GlobalAssignRef+0x124>
    7aba:	e8 41 c7 ff ff       	call   4200 <__stack_chk_fail@plt>
    7abf:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7ac3:	c9                   	leave
    7ac4:	c3                   	ret

0000000000007ac5 <GlobalAssignCall>:
    7ac5:	55                   	push   %rbp
    7ac6:	48 89 e5             	mov    %rsp,%rbp
    7ac9:	89 7d fc             	mov    %edi,-0x4(%rbp)
    7acc:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    7ad0:	b8 00 00 00 00       	mov    $0x0,%eax
    7ad5:	5d                   	pop    %rbp
    7ad6:	c3                   	ret

0000000000007ad7 <GlobalAssign>:
    7ad7:	55                   	push   %rbp
    7ad8:	48 89 e5             	mov    %rsp,%rbp
    7adb:	48 83 ec 20          	sub    $0x20,%rsp
    7adf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    7ae3:	89 75 f4             	mov    %esi,-0xc(%rbp)
    7ae6:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7aea:	48 89 4d e0          	mov    %rcx,-0x20(%rbp)
    7aee:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
    7af3:	75 1f                	jne    7b14 <GlobalAssign+0x3d>
    7af5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7af9:	8b 50 08             	mov    0x8(%rax),%edx
    7afc:	48 8b 48 10          	mov    0x10(%rax),%rcx
    7b00:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
    7b04:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
    7b08:	48 89 c7             	mov    %rax,%rdi
    7b0b:	e8 aa fb ff ff       	call   76ba <GlobalPush>
    7b10:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7b14:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
    7b18:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7b1c:	48 8b 50 10          	mov    0x10(%rax),%rdx
    7b20:	48 8b 40 08          	mov    0x8(%rax),%rax
    7b24:	48 89 41 08          	mov    %rax,0x8(%rcx)
    7b28:	48 89 51 10          	mov    %rdx,0x10(%rcx)
    7b2c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7b30:	8b 00                	mov    (%rax),%eax
    7b32:	89 c0                	mov    %eax,%eax
    7b34:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7b3b:	00 
    7b3c:	48 8d 05 ad 71 00 00 	lea    0x71ad(%rip),%rax        # ecf0 <types.35>
    7b43:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    7b47:	90                   	nop
    7b48:	ff e0                	jmp    *%rax
    7b4a:	f3 0f 1e fa          	endbr64
    7b4e:	8b 45 f4             	mov    -0xc(%rbp),%eax
    7b51:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    7b55:	48 89 d6             	mov    %rdx,%rsi
    7b58:	89 c7                	mov    %eax,%edi
    7b5a:	e8 e4 fd ff ff       	call   7943 <GlobalAssignConst>
    7b5f:	eb 2c                	jmp    7b8d <GlobalAssign+0xb6>
    7b61:	f3 0f 1e fa          	endbr64
    7b65:	8b 45 f4             	mov    -0xc(%rbp),%eax
    7b68:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    7b6c:	48 89 d6             	mov    %rdx,%rsi
    7b6f:	89 c7                	mov    %eax,%edi
    7b71:	e8 25 fe ff ff       	call   799b <GlobalAssignRef>
    7b76:	eb 15                	jmp    7b8d <GlobalAssign+0xb6>
    7b78:	f3 0f 1e fa          	endbr64
    7b7c:	8b 45 f4             	mov    -0xc(%rbp),%eax
    7b7f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    7b83:	48 89 d6             	mov    %rdx,%rsi
    7b86:	89 c7                	mov    %eax,%edi
    7b88:	e8 38 ff ff ff       	call   7ac5 <GlobalAssignCall>
    7b8d:	c9                   	leave
    7b8e:	c3                   	ret

0000000000007b8f <CompileAssign>:
    7b8f:	f3 0f 1e fa          	endbr64
    7b93:	55                   	push   %rbp
    7b94:	48 89 e5             	mov    %rsp,%rbp
    7b97:	48 83 ec 30          	sub    $0x30,%rsp
    7b9b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    7b9f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    7ba3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7baa:	00 00 
    7bac:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7bb0:	31 c0                	xor    %eax,%eax
    7bb2:	e8 ff f8 ff ff       	call   74b6 <GetCompiler>
    7bb7:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    7bbb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7bbf:	48 8b 00             	mov    (%rax),%rax
    7bc2:	48 85 c0             	test   %rax,%rax
    7bc5:	75 1f                	jne    7be6 <CompileAssign+0x57>
    7bc7:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    7bcb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7bcf:	48 89 d1             	mov    %rdx,%rcx
    7bd2:	48 89 c2             	mov    %rax,%rdx
    7bd5:	be 00 00 00 00       	mov    $0x0,%esi
    7bda:	bf 00 00 00 00       	mov    $0x0,%edi
    7bdf:	e8 f3 fe ff ff       	call   7ad7 <GlobalAssign>
    7be4:	eb 58                	jmp    7c3e <CompileAssign+0xaf>
    7be6:	c7 45 e4 00 00 00 00 	movl   $0x0,-0x1c(%rbp)
    7bed:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7bf1:	48 8d 45 e4          	lea    -0x1c(%rbp),%rax
    7bf5:	48 89 d6             	mov    %rdx,%rsi
    7bf8:	48 89 c7             	mov    %rax,%rdi
    7bfb:	e8 42 fb ff ff       	call   7742 <GlobalGet>
    7c00:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7c04:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
    7c09:	74 19                	je     7c24 <CompileAssign+0x95>
    7c0b:	8b 75 e4             	mov    -0x1c(%rbp),%esi
    7c0e:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    7c12:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7c16:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7c1a:	48 89 c7             	mov    %rax,%rdi
    7c1d:	e8 b5 fe ff ff       	call   7ad7 <GlobalAssign>
    7c22:	eb 1a                	jmp    7c3e <CompileAssign+0xaf>
    7c24:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7c28:	48 8b 00             	mov    (%rax),%rax
    7c2b:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    7c2f:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    7c33:	48 89 ce             	mov    %rcx,%rsi
    7c36:	48 89 c7             	mov    %rax,%rdi
    7c39:	e8 7a fc ff ff       	call   78b8 <LocalAssign>
    7c3e:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    7c42:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
    7c49:	00 00 
    7c4b:	74 05                	je     7c52 <CompileAssign+0xc3>
    7c4d:	e8 ae c5 ff ff       	call   4200 <__stack_chk_fail@plt>
    7c52:	c9                   	leave
    7c53:	c3                   	ret

0000000000007c54 <EvalUnaErr>:
    7c54:	f3 0f 1e fa          	endbr64
    7c58:	55                   	push   %rbp
    7c59:	48 89 e5             	mov    %rsp,%rbp
    7c5c:	53                   	push   %rbx
    7c5d:	48 83 ec 18          	sub    $0x18,%rsp
    7c61:	89 7d ec             	mov    %edi,-0x14(%rbp)
    7c64:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7c68:	8b 45 ec             	mov    -0x14(%rbp),%eax
    7c6b:	89 c6                	mov    %eax,%esi
    7c6d:	48 8d 05 3b 34 00 00 	lea    0x343b(%rip),%rax        # b0af <_IO_stdin_used+0xaf>
    7c74:	48 89 c7             	mov    %rax,%rdi
    7c77:	b8 00 00 00 00       	mov    $0x0,%eax
    7c7c:	e8 16 d5 ff ff       	call   5197 <Throw>
    7c81:	b8 00 00 00 00       	mov    $0x0,%eax
    7c86:	ba 00 00 00 00       	mov    $0x0,%edx
    7c8b:	48 89 c6             	mov    %rax,%rsi
    7c8e:	48 89 d7             	mov    %rdx,%rdi
    7c91:	48 89 c1             	mov    %rax,%rcx
    7c94:	48 89 d3             	mov    %rdx,%rbx
    7c97:	89 f0                	mov    %esi,%eax
    7c99:	48 89 da             	mov    %rbx,%rdx
    7c9c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7ca0:	c9                   	leave
    7ca1:	c3                   	ret

0000000000007ca2 <EvalNot>:
    7ca2:	f3 0f 1e fa          	endbr64
    7ca6:	55                   	push   %rbp
    7ca7:	48 89 e5             	mov    %rsp,%rbp
    7caa:	53                   	push   %rbx
    7cab:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7caf:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7cb3:	8b 09                	mov    (%rcx),%ecx
    7cb5:	89 c9                	mov    %ecx,%ecx
    7cb7:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7cbe:	00 
    7cbf:	48 8d 0d 4a 70 00 00 	lea    0x704a(%rip),%rcx        # ed10 <types.34>
    7cc6:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7cca:	90                   	nop
    7ccb:	ff e1                	jmp    *%rcx
    7ccd:	f3 0f 1e fa          	endbr64
    7cd1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7cd5:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7cd9:	48 85 c9             	test   %rcx,%rcx
    7cdc:	0f 94 c1             	sete   %cl
    7cdf:	0f b6 c9             	movzbl %cl,%ecx
    7ce2:	48 89 c7             	mov    %rax,%rdi
    7ce5:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7cec:	ff ff ff 
    7cef:	48 21 fe             	and    %rdi,%rsi
    7cf2:	48 89 f0             	mov    %rsi,%rax
    7cf5:	48 89 ca             	mov    %rcx,%rdx
    7cf8:	eb 73                	jmp    7d6d <EvalNot+0xcb>
    7cfa:	f3 0f 1e fa          	endbr64
    7cfe:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7d02:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7d07:	66 0f ef c9          	pxor   %xmm1,%xmm1
    7d0b:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7d0f:	7a 14                	jp     7d25 <EvalNot+0x83>
    7d11:	66 0f ef c9          	pxor   %xmm1,%xmm1
    7d15:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    7d19:	75 0a                	jne    7d25 <EvalNot+0x83>
    7d1b:	f2 0f 10 05 d5 33 00 	movsd  0x33d5(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    7d22:	00 
    7d23:	eb 04                	jmp    7d29 <EvalNot+0x87>
    7d25:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7d29:	48 89 c6             	mov    %rax,%rsi
    7d2c:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7d33:	ff ff ff 
    7d36:	48 21 f1             	and    %rsi,%rcx
    7d39:	48 83 c9 01          	or     $0x1,%rcx
    7d3d:	48 89 c8             	mov    %rcx,%rax
    7d40:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7d45:	eb 26                	jmp    7d6d <EvalNot+0xcb>
    7d47:	f3 0f 1e fa          	endbr64
    7d4b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7d4f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7d53:	48 89 c7             	mov    %rax,%rdi
    7d56:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7d5d:	ff ff ff 
    7d60:	48 21 f9             	and    %rdi,%rcx
    7d63:	48 83 c9 02          	or     $0x2,%rcx
    7d67:	48 89 c8             	mov    %rcx,%rax
    7d6a:	48 89 f2             	mov    %rsi,%rdx
    7d6d:	48 89 c6             	mov    %rax,%rsi
    7d70:	48 89 d7             	mov    %rdx,%rdi
    7d73:	48 89 c1             	mov    %rax,%rcx
    7d76:	48 89 d3             	mov    %rdx,%rbx
    7d79:	89 f0                	mov    %esi,%eax
    7d7b:	48 89 da             	mov    %rbx,%rdx
    7d7e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7d82:	c9                   	leave
    7d83:	c3                   	ret

0000000000007d84 <EvalBnot>:
    7d84:	f3 0f 1e fa          	endbr64
    7d88:	55                   	push   %rbp
    7d89:	48 89 e5             	mov    %rsp,%rbp
    7d8c:	53                   	push   %rbx
    7d8d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7d91:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7d95:	8b 09                	mov    (%rcx),%ecx
    7d97:	89 c9                	mov    %ecx,%ecx
    7d99:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7da0:	00 
    7da1:	48 8d 0d 88 6f 00 00 	lea    0x6f88(%rip),%rcx        # ed30 <types.33>
    7da8:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7dac:	90                   	nop
    7dad:	ff e1                	jmp    *%rcx
    7daf:	f3 0f 1e fa          	endbr64
    7db3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7db7:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7dbb:	48 f7 d1             	not    %rcx
    7dbe:	48 89 c7             	mov    %rax,%rdi
    7dc1:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7dc8:	ff ff ff 
    7dcb:	48 21 fe             	and    %rdi,%rsi
    7dce:	48 89 f0             	mov    %rsi,%rax
    7dd1:	48 89 ca             	mov    %rcx,%rdx
    7dd4:	eb 62                	jmp    7e38 <EvalBnot+0xb4>
    7dd6:	f3 0f 1e fa          	endbr64
    7dda:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7dde:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7de3:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    7de8:	48 f7 d1             	not    %rcx
    7deb:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7def:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    7df4:	48 89 c6             	mov    %rax,%rsi
    7df7:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7dfe:	ff ff ff 
    7e01:	48 21 f1             	and    %rsi,%rcx
    7e04:	48 83 c9 01          	or     $0x1,%rcx
    7e08:	48 89 c8             	mov    %rcx,%rax
    7e0b:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7e10:	eb 26                	jmp    7e38 <EvalBnot+0xb4>
    7e12:	f3 0f 1e fa          	endbr64
    7e16:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7e1a:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7e1e:	48 89 c7             	mov    %rax,%rdi
    7e21:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7e28:	ff ff ff 
    7e2b:	48 21 f9             	and    %rdi,%rcx
    7e2e:	48 83 c9 02          	or     $0x2,%rcx
    7e32:	48 89 c8             	mov    %rcx,%rax
    7e35:	48 89 f2             	mov    %rsi,%rdx
    7e38:	48 89 c6             	mov    %rax,%rsi
    7e3b:	48 89 d7             	mov    %rdx,%rdi
    7e3e:	48 89 c1             	mov    %rax,%rcx
    7e41:	48 89 d3             	mov    %rdx,%rbx
    7e44:	89 f0                	mov    %esi,%eax
    7e46:	48 89 da             	mov    %rbx,%rdx
    7e49:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7e4d:	c9                   	leave
    7e4e:	c3                   	ret

0000000000007e4f <EvalPlus>:
    7e4f:	f3 0f 1e fa          	endbr64
    7e53:	55                   	push   %rbp
    7e54:	48 89 e5             	mov    %rsp,%rbp
    7e57:	53                   	push   %rbx
    7e58:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7e5c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7e60:	8b 09                	mov    (%rcx),%ecx
    7e62:	89 c9                	mov    %ecx,%ecx
    7e64:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7e6b:	00 
    7e6c:	48 8d 0d dd 6e 00 00 	lea    0x6edd(%rip),%rcx        # ed50 <types.32>
    7e73:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7e77:	90                   	nop
    7e78:	ff e1                	jmp    *%rcx
    7e7a:	f3 0f 1e fa          	endbr64
    7e7e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7e82:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7e86:	48 89 c7             	mov    %rax,%rdi
    7e89:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7e90:	ff ff ff 
    7e93:	48 21 fe             	and    %rdi,%rsi
    7e96:	48 89 f0             	mov    %rsi,%rax
    7e99:	48 89 ca             	mov    %rcx,%rdx
    7e9c:	eb 51                	jmp    7eef <EvalPlus+0xa0>
    7e9e:	f3 0f 1e fa          	endbr64
    7ea2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7ea6:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7eab:	48 89 c6             	mov    %rax,%rsi
    7eae:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7eb5:	ff ff ff 
    7eb8:	48 21 f1             	and    %rsi,%rcx
    7ebb:	48 83 c9 01          	or     $0x1,%rcx
    7ebf:	48 89 c8             	mov    %rcx,%rax
    7ec2:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7ec7:	eb 26                	jmp    7eef <EvalPlus+0xa0>
    7ec9:	f3 0f 1e fa          	endbr64
    7ecd:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7ed1:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7ed5:	48 89 c7             	mov    %rax,%rdi
    7ed8:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7edf:	ff ff ff 
    7ee2:	48 21 f9             	and    %rdi,%rcx
    7ee5:	48 83 c9 02          	or     $0x2,%rcx
    7ee9:	48 89 c8             	mov    %rcx,%rax
    7eec:	48 89 f2             	mov    %rsi,%rdx
    7eef:	48 89 c6             	mov    %rax,%rsi
    7ef2:	48 89 d7             	mov    %rdx,%rdi
    7ef5:	48 89 c1             	mov    %rax,%rcx
    7ef8:	48 89 d3             	mov    %rdx,%rbx
    7efb:	89 f0                	mov    %esi,%eax
    7efd:	48 89 da             	mov    %rbx,%rdx
    7f00:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7f04:	c9                   	leave
    7f05:	c3                   	ret

0000000000007f06 <EvalMinus>:
    7f06:	f3 0f 1e fa          	endbr64
    7f0a:	55                   	push   %rbp
    7f0b:	48 89 e5             	mov    %rsp,%rbp
    7f0e:	53                   	push   %rbx
    7f0f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7f13:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7f17:	8b 09                	mov    (%rcx),%ecx
    7f19:	89 c9                	mov    %ecx,%ecx
    7f1b:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7f22:	00 
    7f23:	48 8d 0d 46 6e 00 00 	lea    0x6e46(%rip),%rcx        # ed70 <types.31>
    7f2a:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7f2e:	90                   	nop
    7f2f:	ff e1                	jmp    *%rcx
    7f31:	f3 0f 1e fa          	endbr64
    7f35:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7f39:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7f3d:	48 f7 d9             	neg    %rcx
    7f40:	48 89 c7             	mov    %rax,%rdi
    7f43:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7f4a:	ff ff ff 
    7f4d:	48 21 fe             	and    %rdi,%rsi
    7f50:	48 89 f0             	mov    %rsi,%rax
    7f53:	48 89 ca             	mov    %rcx,%rdx
    7f56:	eb 5d                	jmp    7fb5 <EvalMinus+0xaf>
    7f58:	f3 0f 1e fa          	endbr64
    7f5c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7f60:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7f65:	f3 0f 7e 0d 93 31 00 	movq   0x3193(%rip),%xmm1        # b100 <_IO_stdin_used+0x100>
    7f6c:	00 
    7f6d:	66 0f 57 c1          	xorpd  %xmm1,%xmm0
    7f71:	48 89 c6             	mov    %rax,%rsi
    7f74:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7f7b:	ff ff ff 
    7f7e:	48 21 f1             	and    %rsi,%rcx
    7f81:	48 83 c9 01          	or     $0x1,%rcx
    7f85:	48 89 c8             	mov    %rcx,%rax
    7f88:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7f8d:	eb 26                	jmp    7fb5 <EvalMinus+0xaf>
    7f8f:	f3 0f 1e fa          	endbr64
    7f93:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7f97:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7f9b:	48 89 c7             	mov    %rax,%rdi
    7f9e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7fa5:	ff ff ff 
    7fa8:	48 21 f9             	and    %rdi,%rcx
    7fab:	48 83 c9 02          	or     $0x2,%rcx
    7faf:	48 89 c8             	mov    %rcx,%rax
    7fb2:	48 89 f2             	mov    %rsi,%rdx
    7fb5:	48 89 c6             	mov    %rax,%rsi
    7fb8:	48 89 d7             	mov    %rdx,%rdi
    7fbb:	48 89 c1             	mov    %rax,%rcx
    7fbe:	48 89 d3             	mov    %rdx,%rbx
    7fc1:	89 f0                	mov    %esi,%eax
    7fc3:	48 89 da             	mov    %rbx,%rdx
    7fc6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7fca:	c9                   	leave
    7fcb:	c3                   	ret

0000000000007fcc <EvalInc>:
    7fcc:	f3 0f 1e fa          	endbr64
    7fd0:	55                   	push   %rbp
    7fd1:	48 89 e5             	mov    %rsp,%rbp
    7fd4:	53                   	push   %rbx
    7fd5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7fd9:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7fdd:	8b 09                	mov    (%rcx),%ecx
    7fdf:	89 c9                	mov    %ecx,%ecx
    7fe1:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7fe8:	00 
    7fe9:	48 8d 0d a0 6d 00 00 	lea    0x6da0(%rip),%rcx        # ed90 <types.30>
    7ff0:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7ff4:	90                   	nop
    7ff5:	ff e1                	jmp    *%rcx
    7ff7:	f3 0f 1e fa          	endbr64
    7ffb:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7fff:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8003:	48 83 c1 01          	add    $0x1,%rcx
    8007:	48 89 c7             	mov    %rax,%rdi
    800a:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8011:	ff ff ff 
    8014:	48 21 fe             	and    %rdi,%rsi
    8017:	48 89 f0             	mov    %rsi,%rax
    801a:	48 89 ca             	mov    %rcx,%rdx
    801d:	eb 5d                	jmp    807c <EvalInc+0xb0>
    801f:	f3 0f 1e fa          	endbr64
    8023:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8027:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    802c:	f2 0f 10 05 c4 30 00 	movsd  0x30c4(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    8033:	00 
    8034:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    8038:	48 89 c6             	mov    %rax,%rsi
    803b:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8042:	ff ff ff 
    8045:	48 21 f1             	and    %rsi,%rcx
    8048:	48 83 c9 01          	or     $0x1,%rcx
    804c:	48 89 c8             	mov    %rcx,%rax
    804f:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8054:	eb 26                	jmp    807c <EvalInc+0xb0>
    8056:	f3 0f 1e fa          	endbr64
    805a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    805e:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8062:	48 89 c7             	mov    %rax,%rdi
    8065:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    806c:	ff ff ff 
    806f:	48 21 f9             	and    %rdi,%rcx
    8072:	48 83 c9 02          	or     $0x2,%rcx
    8076:	48 89 c8             	mov    %rcx,%rax
    8079:	48 89 f2             	mov    %rsi,%rdx
    807c:	48 89 c6             	mov    %rax,%rsi
    807f:	48 89 d7             	mov    %rdx,%rdi
    8082:	48 89 c1             	mov    %rax,%rcx
    8085:	48 89 d3             	mov    %rdx,%rbx
    8088:	89 f0                	mov    %esi,%eax
    808a:	48 89 da             	mov    %rbx,%rdx
    808d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8091:	c9                   	leave
    8092:	c3                   	ret

0000000000008093 <EvalDec>:
    8093:	f3 0f 1e fa          	endbr64
    8097:	55                   	push   %rbp
    8098:	48 89 e5             	mov    %rsp,%rbp
    809b:	53                   	push   %rbx
    809c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    80a0:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    80a4:	8b 09                	mov    (%rcx),%ecx
    80a6:	89 c9                	mov    %ecx,%ecx
    80a8:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    80af:	00 
    80b0:	48 8d 0d f9 6c 00 00 	lea    0x6cf9(%rip),%rcx        # edb0 <types.29>
    80b7:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    80bb:	90                   	nop
    80bc:	ff e1                	jmp    *%rcx
    80be:	f3 0f 1e fa          	endbr64
    80c2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    80c6:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    80ca:	48 83 e9 01          	sub    $0x1,%rcx
    80ce:	48 89 c7             	mov    %rax,%rdi
    80d1:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    80d8:	ff ff ff 
    80db:	48 21 fe             	and    %rdi,%rsi
    80de:	48 89 f0             	mov    %rsi,%rax
    80e1:	48 89 ca             	mov    %rcx,%rdx
    80e4:	eb 5d                	jmp    8143 <EvalDec+0xb0>
    80e6:	f3 0f 1e fa          	endbr64
    80ea:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    80ee:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    80f3:	f2 0f 10 0d fd 2f 00 	movsd  0x2ffd(%rip),%xmm1        # b0f8 <_IO_stdin_used+0xf8>
    80fa:	00 
    80fb:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    80ff:	48 89 c6             	mov    %rax,%rsi
    8102:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8109:	ff ff ff 
    810c:	48 21 f1             	and    %rsi,%rcx
    810f:	48 83 c9 01          	or     $0x1,%rcx
    8113:	48 89 c8             	mov    %rcx,%rax
    8116:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    811b:	eb 26                	jmp    8143 <EvalDec+0xb0>
    811d:	f3 0f 1e fa          	endbr64
    8121:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8125:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8129:	48 89 c7             	mov    %rax,%rdi
    812c:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8133:	ff ff ff 
    8136:	48 21 f9             	and    %rdi,%rcx
    8139:	48 83 c9 02          	or     $0x2,%rcx
    813d:	48 89 c8             	mov    %rcx,%rax
    8140:	48 89 f2             	mov    %rsi,%rdx
    8143:	48 89 c6             	mov    %rax,%rsi
    8146:	48 89 d7             	mov    %rdx,%rdi
    8149:	48 89 c1             	mov    %rax,%rcx
    814c:	48 89 d3             	mov    %rdx,%rbx
    814f:	89 f0                	mov    %esi,%eax
    8151:	48 89 da             	mov    %rbx,%rdx
    8154:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8158:	c9                   	leave
    8159:	c3                   	ret

000000000000815a <UnaFold>:
    815a:	55                   	push   %rbp
    815b:	48 89 e5             	mov    %rsp,%rbp
    815e:	53                   	push   %rbx
    815f:	48 83 ec 18          	sub    $0x18,%rsp
    8163:	89 7d ec             	mov    %edi,-0x14(%rbp)
    8166:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    816a:	8b 45 ec             	mov    -0x14(%rbp),%eax
    816d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    8174:	00 
    8175:	48 8d 05 84 6c 00 00 	lea    0x6c84(%rip),%rax        # ee00 <ops.26>
    817c:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    8180:	90                   	nop
    8181:	ff e0                	jmp    *%rax
    8183:	f3 0f 1e fa          	endbr64
    8187:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    818b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    818f:	8b 45 ec             	mov    -0x14(%rbp),%eax
    8192:	48 89 d6             	mov    %rdx,%rsi
    8195:	89 c7                	mov    %eax,%edi
    8197:	e8 b8 fa ff ff       	call   7c54 <EvalUnaErr>
    819c:	48 89 d1             	mov    %rdx,%rcx
    819f:	48 89 ca             	mov    %rcx,%rdx
    81a2:	e9 a9 00 00 00       	jmp    8250 <UnaFold+0xf6>
    81a7:	f3 0f 1e fa          	endbr64
    81ab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    81af:	48 83 c0 08          	add    $0x8,%rax
    81b3:	48 89 c7             	mov    %rax,%rdi
    81b6:	e8 e7 fa ff ff       	call   7ca2 <EvalNot>
    81bb:	48 89 d1             	mov    %rdx,%rcx
    81be:	48 89 ca             	mov    %rcx,%rdx
    81c1:	e9 8a 00 00 00       	jmp    8250 <UnaFold+0xf6>
    81c6:	f3 0f 1e fa          	endbr64
    81ca:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    81ce:	48 83 c0 08          	add    $0x8,%rax
    81d2:	48 89 c7             	mov    %rax,%rdi
    81d5:	e8 aa fb ff ff       	call   7d84 <EvalBnot>
    81da:	48 89 d1             	mov    %rdx,%rcx
    81dd:	48 89 ca             	mov    %rcx,%rdx
    81e0:	eb 6e                	jmp    8250 <UnaFold+0xf6>
    81e2:	f3 0f 1e fa          	endbr64
    81e6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    81ea:	48 83 c0 08          	add    $0x8,%rax
    81ee:	48 89 c7             	mov    %rax,%rdi
    81f1:	e8 59 fc ff ff       	call   7e4f <EvalPlus>
    81f6:	48 89 d1             	mov    %rdx,%rcx
    81f9:	48 89 ca             	mov    %rcx,%rdx
    81fc:	eb 52                	jmp    8250 <UnaFold+0xf6>
    81fe:	f3 0f 1e fa          	endbr64
    8202:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    8206:	48 83 c0 08          	add    $0x8,%rax
    820a:	48 89 c7             	mov    %rax,%rdi
    820d:	e8 f4 fc ff ff       	call   7f06 <EvalMinus>
    8212:	48 89 d1             	mov    %rdx,%rcx
    8215:	48 89 ca             	mov    %rcx,%rdx
    8218:	eb 36                	jmp    8250 <UnaFold+0xf6>
    821a:	f3 0f 1e fa          	endbr64
    821e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    8222:	48 83 c0 08          	add    $0x8,%rax
    8226:	48 89 c7             	mov    %rax,%rdi
    8229:	e8 9e fd ff ff       	call   7fcc <EvalInc>
    822e:	48 89 d1             	mov    %rdx,%rcx
    8231:	48 89 ca             	mov    %rcx,%rdx
    8234:	eb 1a                	jmp    8250 <UnaFold+0xf6>
    8236:	f3 0f 1e fa          	endbr64
    823a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    823e:	48 83 c0 08          	add    $0x8,%rax
    8242:	48 89 c7             	mov    %rax,%rdi
    8245:	e8 49 fe ff ff       	call   8093 <EvalDec>
    824a:	48 89 d1             	mov    %rdx,%rcx
    824d:	48 89 ca             	mov    %rcx,%rdx
    8250:	48 89 c6             	mov    %rax,%rsi
    8253:	48 89 d7             	mov    %rdx,%rdi
    8256:	48 89 c1             	mov    %rax,%rcx
    8259:	48 89 d3             	mov    %rdx,%rbx
    825c:	89 f0                	mov    %esi,%eax
    825e:	48 89 da             	mov    %rbx,%rdx
    8261:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8265:	c9                   	leave
    8266:	c3                   	ret

0000000000008267 <UnaConst>:
    8267:	55                   	push   %rbp
    8268:	48 89 e5             	mov    %rsp,%rbp
    826b:	48 83 ec 40          	sub    $0x40,%rsp
    826f:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    8273:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    8276:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    827a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    827e:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    8282:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    8287:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    828b:	8b 40 08             	mov    0x8(%rax),%eax
    828e:	89 45 e8             	mov    %eax,-0x18(%rbp)
    8291:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    8295:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    8298:	48 89 d6             	mov    %rdx,%rsi
    829b:	89 c7                	mov    %eax,%edi
    829d:	e8 b8 fe ff ff       	call   815a <UnaFold>
    82a2:	89 c1                	mov    %eax,%ecx
    82a4:	48 89 d0             	mov    %rdx,%rax
    82a7:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    82aa:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    82ae:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    82b2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    82b6:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    82ba:	48 89 01             	mov    %rax,(%rcx)
    82bd:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    82c1:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    82c5:	48 89 41 10          	mov    %rax,0x10(%rcx)
    82c9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    82cd:	c9                   	leave
    82ce:	c3                   	ret

00000000000082cf <UnaRef>:
    82cf:	55                   	push   %rbp
    82d0:	48 89 e5             	mov    %rsp,%rbp
    82d3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    82d7:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    82da:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    82de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    82e2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    82e6:	0f 11 00             	movups %xmm0,(%rax)
    82e9:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    82ee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    82f2:	5d                   	pop    %rbp
    82f3:	c3                   	ret

00000000000082f4 <UnaCall>:
    82f4:	55                   	push   %rbp
    82f5:	48 89 e5             	mov    %rsp,%rbp
    82f8:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    82fc:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    82ff:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    8303:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8307:	66 0f ef c0          	pxor   %xmm0,%xmm0
    830b:	0f 11 00             	movups %xmm0,(%rax)
    830e:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    8313:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8317:	5d                   	pop    %rbp
    8318:	c3                   	ret

0000000000008319 <CompileUna>:
    8319:	f3 0f 1e fa          	endbr64
    831d:	55                   	push   %rbp
    831e:	48 89 e5             	mov    %rsp,%rbp
    8321:	48 83 ec 30          	sub    $0x30,%rsp
    8325:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8329:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    832c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    8330:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    8337:	00 00 
    8339:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    833d:	31 c0                	xor    %eax,%eax
    833f:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    8342:	89 c7                	mov    %eax,%edi
    8344:	e8 51 f5 ff ff       	call   789a <TkToOp>
    8349:	89 45 f4             	mov    %eax,-0xc(%rbp)
    834c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8350:	8b 00                	mov    (%rax),%eax
    8352:	89 c0                	mov    %eax,%eax
    8354:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    835b:	00 
    835c:	48 8d 05 6d 6a 00 00 	lea    0x6a6d(%rip),%rax        # edd0 <irs.28>
    8363:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    8367:	90                   	nop
    8368:	ff e0                	jmp    *%rax
    836a:	f3 0f 1e fa          	endbr64
    836e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8372:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    8376:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    8379:	89 ce                	mov    %ecx,%esi
    837b:	48 89 c7             	mov    %rax,%rdi
    837e:	e8 e4 fe ff ff       	call   8267 <UnaConst>
    8383:	eb 34                	jmp    83b9 <CompileUna+0xa0>
    8385:	f3 0f 1e fa          	endbr64
    8389:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    838d:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    8391:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    8394:	89 ce                	mov    %ecx,%esi
    8396:	48 89 c7             	mov    %rax,%rdi
    8399:	e8 31 ff ff ff       	call   82cf <UnaRef>
    839e:	eb 19                	jmp    83b9 <CompileUna+0xa0>
    83a0:	f3 0f 1e fa          	endbr64
    83a4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    83a8:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    83ac:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    83af:	89 ce                	mov    %ecx,%esi
    83b1:	48 89 c7             	mov    %rax,%rdi
    83b4:	e8 3b ff ff ff       	call   82f4 <UnaCall>
    83b9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    83bd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    83c4:	00 00 
    83c6:	74 05                	je     83cd <CompileUna+0xb4>
    83c8:	e8 33 be ff ff       	call   4200 <__stack_chk_fail@plt>
    83cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    83d1:	c9                   	leave
    83d2:	c3                   	ret

00000000000083d3 <EvalBinErr>:
    83d3:	55                   	push   %rbp
    83d4:	48 89 e5             	mov    %rsp,%rbp
    83d7:	53                   	push   %rbx
    83d8:	48 83 ec 28          	sub    $0x28,%rsp
    83dc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    83e0:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    83e3:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    83e7:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    83ea:	89 c6                	mov    %eax,%esi
    83ec:	48 8d 05 d9 2c 00 00 	lea    0x2cd9(%rip),%rax        # b0cc <_IO_stdin_used+0xcc>
    83f3:	48 89 c7             	mov    %rax,%rdi
    83f6:	b8 00 00 00 00       	mov    $0x0,%eax
    83fb:	e8 97 cd ff ff       	call   5197 <Throw>
    8400:	b8 00 00 00 00       	mov    $0x0,%eax
    8405:	ba 00 00 00 00       	mov    $0x0,%edx
    840a:	48 89 c6             	mov    %rax,%rsi
    840d:	48 89 d7             	mov    %rdx,%rdi
    8410:	48 89 c1             	mov    %rax,%rcx
    8413:	48 89 d3             	mov    %rdx,%rbx
    8416:	89 f0                	mov    %esi,%eax
    8418:	48 89 da             	mov    %rbx,%rdx
    841b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    841f:	c9                   	leave
    8420:	c3                   	ret

0000000000008421 <EvalAdd>:
    8421:	55                   	push   %rbp
    8422:	48 89 e5             	mov    %rsp,%rbp
    8425:	53                   	push   %rbx
    8426:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    842a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    842e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8432:	8b 09                	mov    (%rcx),%ecx
    8434:	89 c9                	mov    %ecx,%ecx
    8436:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    843d:	00 
    843e:	48 8d 0d 8b 6c 00 00 	lea    0x6c8b(%rip),%rcx        # f0d0 <ops.22>
    8445:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8449:	90                   	nop
    844a:	ff e1                	jmp    *%rcx
    844c:	f3 0f 1e fa          	endbr64
    8450:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8454:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8458:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    845c:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8460:	48 01 f1             	add    %rsi,%rcx
    8463:	48 89 c7             	mov    %rax,%rdi
    8466:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    846d:	ff ff ff 
    8470:	48 21 fe             	and    %rdi,%rsi
    8473:	48 89 f0             	mov    %rsi,%rax
    8476:	48 89 ca             	mov    %rcx,%rdx
    8479:	eb 6c                	jmp    84e7 <EvalAdd+0xc6>
    847b:	f3 0f 1e fa          	endbr64
    847f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8483:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    8488:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    848c:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8491:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    8495:	48 89 c6             	mov    %rax,%rsi
    8498:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    849f:	ff ff ff 
    84a2:	48 21 f1             	and    %rsi,%rcx
    84a5:	48 83 c9 01          	or     $0x1,%rcx
    84a9:	48 89 c8             	mov    %rcx,%rax
    84ac:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    84b1:	eb 34                	jmp    84e7 <EvalAdd+0xc6>
    84b3:	f3 0f 1e fa          	endbr64
    84b7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    84bb:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    84bf:	8b 71 04             	mov    0x4(%rcx),%esi
    84c2:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    84c6:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    84ca:	8b 49 04             	mov    0x4(%rcx),%ecx
    84cd:	01 f1                	add    %esi,%ecx
    84cf:	89 ce                	mov    %ecx,%esi
    84d1:	48 89 c7             	mov    %rax,%rdi
    84d4:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    84db:	ff ff ff 
    84de:	48 21 f9             	and    %rdi,%rcx
    84e1:	48 89 c8             	mov    %rcx,%rax
    84e4:	48 89 f2             	mov    %rsi,%rdx
    84e7:	48 89 c6             	mov    %rax,%rsi
    84ea:	48 89 d7             	mov    %rdx,%rdi
    84ed:	48 89 c1             	mov    %rax,%rcx
    84f0:	48 89 d3             	mov    %rdx,%rbx
    84f3:	89 f0                	mov    %esi,%eax
    84f5:	48 89 da             	mov    %rbx,%rdx
    84f8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    84fc:	c9                   	leave
    84fd:	c3                   	ret

00000000000084fe <EvalSub>:
    84fe:	55                   	push   %rbp
    84ff:	48 89 e5             	mov    %rsp,%rbp
    8502:	53                   	push   %rbx
    8503:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8507:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    850b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    850f:	8b 09                	mov    (%rcx),%ecx
    8511:	89 c9                	mov    %ecx,%ecx
    8513:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    851a:	00 
    851b:	48 8d 0d ce 6b 00 00 	lea    0x6bce(%rip),%rcx        # f0f0 <ops.21>
    8522:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8526:	90                   	nop
    8527:	ff e1                	jmp    *%rcx
    8529:	f3 0f 1e fa          	endbr64
    852d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8531:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8535:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8539:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    853d:	48 29 ce             	sub    %rcx,%rsi
    8540:	48 89 c7             	mov    %rax,%rdi
    8543:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    854a:	ff ff ff 
    854d:	48 21 f9             	and    %rdi,%rcx
    8550:	48 89 c8             	mov    %rcx,%rax
    8553:	48 89 f2             	mov    %rsi,%rdx
    8556:	eb 6c                	jmp    85c4 <EvalSub+0xc6>
    8558:	f3 0f 1e fa          	endbr64
    855c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8560:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8565:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8569:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    856e:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    8572:	48 89 c6             	mov    %rax,%rsi
    8575:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    857c:	ff ff ff 
    857f:	48 21 f1             	and    %rsi,%rcx
    8582:	48 83 c9 01          	or     $0x1,%rcx
    8586:	48 89 c8             	mov    %rcx,%rax
    8589:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    858e:	eb 34                	jmp    85c4 <EvalSub+0xc6>
    8590:	f3 0f 1e fa          	endbr64
    8594:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8598:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    859c:	8b 71 04             	mov    0x4(%rcx),%esi
    859f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    85a3:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    85a7:	8b 49 04             	mov    0x4(%rcx),%ecx
    85aa:	29 ce                	sub    %ecx,%esi
    85ac:	89 f6                	mov    %esi,%esi
    85ae:	48 89 c7             	mov    %rax,%rdi
    85b1:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    85b8:	ff ff ff 
    85bb:	48 21 f9             	and    %rdi,%rcx
    85be:	48 89 c8             	mov    %rcx,%rax
    85c1:	48 89 f2             	mov    %rsi,%rdx
    85c4:	48 89 c6             	mov    %rax,%rsi
    85c7:	48 89 d7             	mov    %rdx,%rdi
    85ca:	48 89 c1             	mov    %rax,%rcx
    85cd:	48 89 d3             	mov    %rdx,%rbx
    85d0:	89 f0                	mov    %esi,%eax
    85d2:	48 89 da             	mov    %rbx,%rdx
    85d5:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    85d9:	c9                   	leave
    85da:	c3                   	ret

00000000000085db <EvalMul>:
    85db:	55                   	push   %rbp
    85dc:	48 89 e5             	mov    %rsp,%rbp
    85df:	53                   	push   %rbx
    85e0:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    85e4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    85e8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    85ec:	8b 09                	mov    (%rcx),%ecx
    85ee:	89 c9                	mov    %ecx,%ecx
    85f0:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    85f7:	00 
    85f8:	48 8d 0d 11 6b 00 00 	lea    0x6b11(%rip),%rcx        # f110 <ops.20>
    85ff:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8603:	90                   	nop
    8604:	ff e1                	jmp    *%rcx
    8606:	f3 0f 1e fa          	endbr64
    860a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    860e:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8612:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8616:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    861a:	48 0f af ce          	imul   %rsi,%rcx
    861e:	48 89 c7             	mov    %rax,%rdi
    8621:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8628:	ff ff ff 
    862b:	48 21 fe             	and    %rdi,%rsi
    862e:	48 89 f0             	mov    %rsi,%rax
    8631:	48 89 ca             	mov    %rcx,%rdx
    8634:	eb 6d                	jmp    86a3 <EvalMul+0xc8>
    8636:	f3 0f 1e fa          	endbr64
    863a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    863e:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    8643:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8647:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    864c:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    8650:	48 89 c6             	mov    %rax,%rsi
    8653:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    865a:	ff ff ff 
    865d:	48 21 f1             	and    %rsi,%rcx
    8660:	48 83 c9 01          	or     $0x1,%rcx
    8664:	48 89 c8             	mov    %rcx,%rax
    8667:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    866c:	eb 35                	jmp    86a3 <EvalMul+0xc8>
    866e:	f3 0f 1e fa          	endbr64
    8672:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8676:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    867a:	8b 71 04             	mov    0x4(%rcx),%esi
    867d:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8681:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8685:	8b 49 04             	mov    0x4(%rcx),%ecx
    8688:	0f af ce             	imul   %esi,%ecx
    868b:	89 ce                	mov    %ecx,%esi
    868d:	48 89 c7             	mov    %rax,%rdi
    8690:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8697:	ff ff ff 
    869a:	48 21 f9             	and    %rdi,%rcx
    869d:	48 89 c8             	mov    %rcx,%rax
    86a0:	48 89 f2             	mov    %rsi,%rdx
    86a3:	48 89 c6             	mov    %rax,%rsi
    86a6:	48 89 d7             	mov    %rdx,%rdi
    86a9:	48 89 c1             	mov    %rax,%rcx
    86ac:	48 89 d3             	mov    %rdx,%rbx
    86af:	89 f0                	mov    %esi,%eax
    86b1:	48 89 da             	mov    %rbx,%rdx
    86b4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    86b8:	c9                   	leave
    86b9:	c3                   	ret

00000000000086ba <EvalDiv>:
    86ba:	55                   	push   %rbp
    86bb:	48 89 e5             	mov    %rsp,%rbp
    86be:	53                   	push   %rbx
    86bf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    86c3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    86c7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    86cb:	8b 00                	mov    (%rax),%eax
    86cd:	89 c0                	mov    %eax,%eax
    86cf:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    86d6:	00 
    86d7:	48 8d 05 52 6a 00 00 	lea    0x6a52(%rip),%rax        # f130 <ops.19>
    86de:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    86e2:	90                   	nop
    86e3:	ff e0                	jmp    *%rax
    86e5:	f3 0f 1e fa          	endbr64
    86e9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    86ed:	48 8b 40 08          	mov    0x8(%rax),%rax
    86f1:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    86f5:	48 8b 7a 08          	mov    0x8(%rdx),%rdi
    86f9:	48 99                	cqto
    86fb:	48 f7 ff             	idiv   %rdi
    86fe:	48 89 c2             	mov    %rax,%rdx
    8701:	48 89 ce             	mov    %rcx,%rsi
    8704:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    870b:	ff ff ff 
    870e:	48 21 f0             	and    %rsi,%rax
    8711:	48 89 c1             	mov    %rax,%rcx
    8714:	48 89 d3             	mov    %rdx,%rbx
    8717:	eb 71                	jmp    878a <EvalDiv+0xd0>
    8719:	f3 0f 1e fa          	endbr64
    871d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8721:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    8726:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    872a:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    872f:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    8733:	48 89 ca             	mov    %rcx,%rdx
    8736:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    873d:	ff ff ff 
    8740:	48 21 d0             	and    %rdx,%rax
    8743:	48 83 c8 01          	or     $0x1,%rax
    8747:	48 89 c1             	mov    %rax,%rcx
    874a:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    874f:	eb 39                	jmp    878a <EvalDiv+0xd0>
    8751:	f3 0f 1e fa          	endbr64
    8755:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8759:	48 8b 40 08          	mov    0x8(%rax),%rax
    875d:	8b 40 04             	mov    0x4(%rax),%eax
    8760:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8764:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    8768:	8b 7a 04             	mov    0x4(%rdx),%edi
    876b:	ba 00 00 00 00       	mov    $0x0,%edx
    8770:	f7 f7                	div    %edi
    8772:	89 c2                	mov    %eax,%edx
    8774:	48 89 ce             	mov    %rcx,%rsi
    8777:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    877e:	ff ff ff 
    8781:	48 21 f0             	and    %rsi,%rax
    8784:	48 89 c1             	mov    %rax,%rcx
    8787:	48 89 d3             	mov    %rdx,%rbx
    878a:	48 89 c8             	mov    %rcx,%rax
    878d:	48 89 da             	mov    %rbx,%rdx
    8790:	48 89 da             	mov    %rbx,%rdx
    8793:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8797:	c9                   	leave
    8798:	c3                   	ret

0000000000008799 <EvalMod>:
    8799:	55                   	push   %rbp
    879a:	48 89 e5             	mov    %rsp,%rbp
    879d:	53                   	push   %rbx
    879e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    87a2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    87a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    87aa:	8b 00                	mov    (%rax),%eax
    87ac:	89 c0                	mov    %eax,%eax
    87ae:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    87b5:	00 
    87b6:	48 8d 05 93 69 00 00 	lea    0x6993(%rip),%rax        # f150 <ops.18>
    87bd:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    87c1:	90                   	nop
    87c2:	ff e0                	jmp    *%rax
    87c4:	f3 0f 1e fa          	endbr64
    87c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    87cc:	48 8b 40 08          	mov    0x8(%rax),%rax
    87d0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    87d4:	48 8b 7a 08          	mov    0x8(%rdx),%rdi
    87d8:	48 99                	cqto
    87da:	48 f7 ff             	idiv   %rdi
    87dd:	48 89 d6             	mov    %rdx,%rsi
    87e0:	48 89 f2             	mov    %rsi,%rdx
    87e3:	48 89 ce             	mov    %rcx,%rsi
    87e6:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    87ed:	ff ff ff 
    87f0:	48 21 f0             	and    %rsi,%rax
    87f3:	48 89 c1             	mov    %rax,%rcx
    87f6:	48 89 d3             	mov    %rdx,%rbx
    87f9:	e9 8f 00 00 00       	jmp    888d <EvalMod+0xf4>
    87fe:	f3 0f 1e fa          	endbr64
    8802:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8806:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    880b:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    8810:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8814:	f2 0f 10 42 08       	movsd  0x8(%rdx),%xmm0
    8819:	f2 48 0f 2c f8       	cvttsd2si %xmm0,%rdi
    881e:	48 99                	cqto
    8820:	48 f7 ff             	idiv   %rdi
    8823:	48 89 d6             	mov    %rdx,%rsi
    8826:	48 89 f0             	mov    %rsi,%rax
    8829:	66 0f ef c0          	pxor   %xmm0,%xmm0
    882d:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    8832:	48 89 ca             	mov    %rcx,%rdx
    8835:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    883c:	ff ff ff 
    883f:	48 21 d0             	and    %rdx,%rax
    8842:	48 83 c8 01          	or     $0x1,%rax
    8846:	48 89 c1             	mov    %rax,%rcx
    8849:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    884e:	eb 3d                	jmp    888d <EvalMod+0xf4>
    8850:	f3 0f 1e fa          	endbr64
    8854:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8858:	48 8b 40 08          	mov    0x8(%rax),%rax
    885c:	8b 40 04             	mov    0x4(%rax),%eax
    885f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8863:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    8867:	8b 7a 04             	mov    0x4(%rdx),%edi
    886a:	ba 00 00 00 00       	mov    $0x0,%edx
    886f:	f7 f7                	div    %edi
    8871:	89 d6                	mov    %edx,%esi
    8873:	89 f0                	mov    %esi,%eax
    8875:	89 c2                	mov    %eax,%edx
    8877:	48 89 ce             	mov    %rcx,%rsi
    887a:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    8881:	ff ff ff 
    8884:	48 21 f0             	and    %rsi,%rax
    8887:	48 89 c1             	mov    %rax,%rcx
    888a:	48 89 d3             	mov    %rdx,%rbx
    888d:	48 89 c8             	mov    %rcx,%rax
    8890:	48 89 da             	mov    %rbx,%rdx
    8893:	48 89 da             	mov    %rbx,%rdx
    8896:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    889a:	c9                   	leave
    889b:	c3                   	ret

000000000000889c <EvalPow>:
    889c:	55                   	push   %rbp
    889d:	48 89 e5             	mov    %rsp,%rbp
    88a0:	41 55                	push   %r13
    88a2:	41 54                	push   %r12
    88a4:	53                   	push   %rbx
    88a5:	48 83 ec 18          	sub    $0x18,%rsp
    88a9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    88ad:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    88b1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    88b5:	8b 00                	mov    (%rax),%eax
    88b7:	89 c0                	mov    %eax,%eax
    88b9:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    88c0:	00 
    88c1:	48 8d 05 a8 68 00 00 	lea    0x68a8(%rip),%rax        # f170 <ops.17>
    88c8:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    88cc:	90                   	nop
    88cd:	ff e0                	jmp    *%rax
    88cf:	f3 0f 1e fa          	endbr64
    88d3:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    88d7:	48 8b 40 08          	mov    0x8(%rax),%rax
    88db:	66 0f ef c0          	pxor   %xmm0,%xmm0
    88df:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    88e4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    88e8:	48 8b 40 08          	mov    0x8(%rax),%rax
    88ec:	66 0f ef d2          	pxor   %xmm2,%xmm2
    88f0:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
    88f5:	66 48 0f 7e d0       	movq   %xmm2,%rax
    88fa:	66 0f 28 c8          	movapd %xmm0,%xmm1
    88fe:	66 48 0f 6e c0       	movq   %rax,%xmm0
    8903:	e8 d8 b8 ff ff       	call   41e0 <pow@plt>
    8908:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    890d:	4c 89 e1             	mov    %r12,%rcx
    8910:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
    8917:	ff ff ff 
    891a:	48 21 ca             	and    %rcx,%rdx
    891d:	49 89 d4             	mov    %rdx,%r12
    8920:	49 89 c5             	mov    %rax,%r13
    8923:	e9 e7 00 00 00       	jmp    8a0f <EvalPow+0x173>
    8928:	f3 0f 1e fa          	endbr64
    892c:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8930:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    8935:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8939:	48 8b 40 08          	mov    0x8(%rax),%rax
    893d:	66 0f 28 c8          	movapd %xmm0,%xmm1
    8941:	66 48 0f 6e c0       	movq   %rax,%xmm0
    8946:	e8 95 b8 ff ff       	call   41e0 <pow@plt>
    894b:	4c 89 e2             	mov    %r12,%rdx
    894e:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    8955:	ff ff ff 
    8958:	48 21 d0             	and    %rdx,%rax
    895b:	48 83 c8 01          	or     $0x1,%rax
    895f:	49 89 c4             	mov    %rax,%r12
    8962:	66 49 0f 7e c5       	movq   %xmm0,%r13
    8967:	e9 a3 00 00 00       	jmp    8a0f <EvalPow+0x173>
    896c:	f3 0f 1e fa          	endbr64
    8970:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8974:	48 8b 40 08          	mov    0x8(%rax),%rax
    8978:	8b 40 04             	mov    0x4(%rax),%eax
    897b:	89 c0                	mov    %eax,%eax
    897d:	48 85 c0             	test   %rax,%rax
    8980:	78 0b                	js     898d <EvalPow+0xf1>
    8982:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8986:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    898b:	eb 19                	jmp    89a6 <EvalPow+0x10a>
    898d:	48 89 c2             	mov    %rax,%rdx
    8990:	48 d1 ea             	shr    $1,%rdx
    8993:	83 e0 01             	and    $0x1,%eax
    8996:	48 09 c2             	or     %rax,%rdx
    8999:	66 0f ef c0          	pxor   %xmm0,%xmm0
    899d:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    89a2:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    89a6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    89aa:	48 8b 40 08          	mov    0x8(%rax),%rax
    89ae:	8b 40 04             	mov    0x4(%rax),%eax
    89b1:	89 c0                	mov    %eax,%eax
    89b3:	48 85 c0             	test   %rax,%rax
    89b6:	78 10                	js     89c8 <EvalPow+0x12c>
    89b8:	66 0f ef db          	pxor   %xmm3,%xmm3
    89bc:	f2 48 0f 2a d8       	cvtsi2sd %rax,%xmm3
    89c1:	66 48 0f 7e d8       	movq   %xmm3,%rax
    89c6:	eb 1e                	jmp    89e6 <EvalPow+0x14a>
    89c8:	48 89 c2             	mov    %rax,%rdx
    89cb:	48 d1 ea             	shr    $1,%rdx
    89ce:	83 e0 01             	and    $0x1,%eax
    89d1:	48 09 c2             	or     %rax,%rdx
    89d4:	66 0f ef c9          	pxor   %xmm1,%xmm1
    89d8:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
    89dd:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
    89e1:	66 48 0f 7e c8       	movq   %xmm1,%rax
    89e6:	66 0f 28 c8          	movapd %xmm0,%xmm1
    89ea:	66 48 0f 6e c0       	movq   %rax,%xmm0
    89ef:	e8 ec b7 ff ff       	call   41e0 <pow@plt>
    89f4:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    89f9:	4c 89 e1             	mov    %r12,%rcx
    89fc:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
    8a03:	ff ff ff 
    8a06:	48 21 ca             	and    %rcx,%rdx
    8a09:	49 89 d4             	mov    %rdx,%r12
    8a0c:	49 89 c5             	mov    %rax,%r13
    8a0f:	4c 89 e0             	mov    %r12,%rax
    8a12:	4c 89 ea             	mov    %r13,%rdx
    8a15:	4c 89 e1             	mov    %r12,%rcx
    8a18:	4c 89 eb             	mov    %r13,%rbx
    8a1b:	48 89 da             	mov    %rbx,%rdx
    8a1e:	48 83 c4 18          	add    $0x18,%rsp
    8a22:	5b                   	pop    %rbx
    8a23:	41 5c                	pop    %r12
    8a25:	41 5d                	pop    %r13
    8a27:	5d                   	pop    %rbp
    8a28:	c3                   	ret

0000000000008a29 <EvalBand>:
    8a29:	55                   	push   %rbp
    8a2a:	48 89 e5             	mov    %rsp,%rbp
    8a2d:	53                   	push   %rbx
    8a2e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8a32:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8a36:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8a3a:	8b 09                	mov    (%rcx),%ecx
    8a3c:	89 c9                	mov    %ecx,%ecx
    8a3e:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8a45:	00 
    8a46:	48 8d 0d 43 67 00 00 	lea    0x6743(%rip),%rcx        # f190 <ops.16>
    8a4d:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8a51:	90                   	nop
    8a52:	ff e1                	jmp    *%rcx
    8a54:	f3 0f 1e fa          	endbr64
    8a58:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8a5c:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8a60:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8a64:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8a68:	48 21 f1             	and    %rsi,%rcx
    8a6b:	48 89 c7             	mov    %rax,%rdi
    8a6e:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8a75:	ff ff ff 
    8a78:	48 21 fe             	and    %rdi,%rsi
    8a7b:	48 89 f0             	mov    %rsi,%rax
    8a7e:	48 89 ca             	mov    %rcx,%rdx
    8a81:	eb 7e                	jmp    8b01 <EvalBand+0xd8>
    8a83:	f3 0f 1e fa          	endbr64
    8a87:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8a8b:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8a90:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8a95:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8a99:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8a9e:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8aa3:	48 21 f1             	and    %rsi,%rcx
    8aa6:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8aaa:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    8aaf:	48 89 c6             	mov    %rax,%rsi
    8ab2:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8ab9:	ff ff ff 
    8abc:	48 21 f1             	and    %rsi,%rcx
    8abf:	48 83 c9 01          	or     $0x1,%rcx
    8ac3:	48 89 c8             	mov    %rcx,%rax
    8ac6:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8acb:	eb 34                	jmp    8b01 <EvalBand+0xd8>
    8acd:	f3 0f 1e fa          	endbr64
    8ad1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8ad5:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8ad9:	8b 71 04             	mov    0x4(%rcx),%esi
    8adc:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8ae0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8ae4:	8b 49 04             	mov    0x4(%rcx),%ecx
    8ae7:	21 f1                	and    %esi,%ecx
    8ae9:	89 ce                	mov    %ecx,%esi
    8aeb:	48 89 c7             	mov    %rax,%rdi
    8aee:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8af5:	ff ff ff 
    8af8:	48 21 f9             	and    %rdi,%rcx
    8afb:	48 89 c8             	mov    %rcx,%rax
    8afe:	48 89 f2             	mov    %rsi,%rdx
    8b01:	48 89 c6             	mov    %rax,%rsi
    8b04:	48 89 d7             	mov    %rdx,%rdi
    8b07:	48 89 c1             	mov    %rax,%rcx
    8b0a:	48 89 d3             	mov    %rdx,%rbx
    8b0d:	89 f0                	mov    %esi,%eax
    8b0f:	48 89 da             	mov    %rbx,%rdx
    8b12:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8b16:	c9                   	leave
    8b17:	c3                   	ret

0000000000008b18 <EvalBor>:
    8b18:	55                   	push   %rbp
    8b19:	48 89 e5             	mov    %rsp,%rbp
    8b1c:	53                   	push   %rbx
    8b1d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8b21:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8b25:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8b29:	8b 09                	mov    (%rcx),%ecx
    8b2b:	89 c9                	mov    %ecx,%ecx
    8b2d:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8b34:	00 
    8b35:	48 8d 0d 74 66 00 00 	lea    0x6674(%rip),%rcx        # f1b0 <ops.15>
    8b3c:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8b40:	90                   	nop
    8b41:	ff e1                	jmp    *%rcx
    8b43:	f3 0f 1e fa          	endbr64
    8b47:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8b4b:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8b4f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8b53:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8b57:	48 09 f1             	or     %rsi,%rcx
    8b5a:	48 89 c7             	mov    %rax,%rdi
    8b5d:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8b64:	ff ff ff 
    8b67:	48 21 fe             	and    %rdi,%rsi
    8b6a:	48 89 f0             	mov    %rsi,%rax
    8b6d:	48 89 ca             	mov    %rcx,%rdx
    8b70:	eb 7e                	jmp    8bf0 <EvalBor+0xd8>
    8b72:	f3 0f 1e fa          	endbr64
    8b76:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8b7a:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8b7f:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8b84:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8b88:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8b8d:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8b92:	48 09 f1             	or     %rsi,%rcx
    8b95:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8b99:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    8b9e:	48 89 c6             	mov    %rax,%rsi
    8ba1:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8ba8:	ff ff ff 
    8bab:	48 21 f1             	and    %rsi,%rcx
    8bae:	48 83 c9 01          	or     $0x1,%rcx
    8bb2:	48 89 c8             	mov    %rcx,%rax
    8bb5:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8bba:	eb 34                	jmp    8bf0 <EvalBor+0xd8>
    8bbc:	f3 0f 1e fa          	endbr64
    8bc0:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8bc4:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8bc8:	8b 71 04             	mov    0x4(%rcx),%esi
    8bcb:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8bcf:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8bd3:	8b 49 04             	mov    0x4(%rcx),%ecx
    8bd6:	09 f1                	or     %esi,%ecx
    8bd8:	89 ce                	mov    %ecx,%esi
    8bda:	48 89 c7             	mov    %rax,%rdi
    8bdd:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8be4:	ff ff ff 
    8be7:	48 21 f9             	and    %rdi,%rcx
    8bea:	48 89 c8             	mov    %rcx,%rax
    8bed:	48 89 f2             	mov    %rsi,%rdx
    8bf0:	48 89 c6             	mov    %rax,%rsi
    8bf3:	48 89 d7             	mov    %rdx,%rdi
    8bf6:	48 89 c1             	mov    %rax,%rcx
    8bf9:	48 89 d3             	mov    %rdx,%rbx
    8bfc:	89 f0                	mov    %esi,%eax
    8bfe:	48 89 da             	mov    %rbx,%rdx
    8c01:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8c05:	c9                   	leave
    8c06:	c3                   	ret

0000000000008c07 <EvalBxor>:
    8c07:	55                   	push   %rbp
    8c08:	48 89 e5             	mov    %rsp,%rbp
    8c0b:	53                   	push   %rbx
    8c0c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8c10:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8c14:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8c18:	8b 09                	mov    (%rcx),%ecx
    8c1a:	89 c9                	mov    %ecx,%ecx
    8c1c:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8c23:	00 
    8c24:	48 8d 0d a5 65 00 00 	lea    0x65a5(%rip),%rcx        # f1d0 <ops.14>
    8c2b:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8c2f:	90                   	nop
    8c30:	ff e1                	jmp    *%rcx
    8c32:	f3 0f 1e fa          	endbr64
    8c36:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8c3a:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8c3e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8c42:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8c46:	48 31 f1             	xor    %rsi,%rcx
    8c49:	48 89 c7             	mov    %rax,%rdi
    8c4c:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8c53:	ff ff ff 
    8c56:	48 21 fe             	and    %rdi,%rsi
    8c59:	48 89 f0             	mov    %rsi,%rax
    8c5c:	48 89 ca             	mov    %rcx,%rdx
    8c5f:	eb 7e                	jmp    8cdf <EvalBxor+0xd8>
    8c61:	f3 0f 1e fa          	endbr64
    8c65:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8c69:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8c6e:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8c73:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8c77:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8c7c:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8c81:	48 31 f1             	xor    %rsi,%rcx
    8c84:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8c88:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    8c8d:	48 89 c6             	mov    %rax,%rsi
    8c90:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8c97:	ff ff ff 
    8c9a:	48 21 f1             	and    %rsi,%rcx
    8c9d:	48 83 c9 01          	or     $0x1,%rcx
    8ca1:	48 89 c8             	mov    %rcx,%rax
    8ca4:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8ca9:	eb 34                	jmp    8cdf <EvalBxor+0xd8>
    8cab:	f3 0f 1e fa          	endbr64
    8caf:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8cb3:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8cb7:	8b 71 04             	mov    0x4(%rcx),%esi
    8cba:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8cbe:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8cc2:	8b 49 04             	mov    0x4(%rcx),%ecx
    8cc5:	31 f1                	xor    %esi,%ecx
    8cc7:	89 ce                	mov    %ecx,%esi
    8cc9:	48 89 c7             	mov    %rax,%rdi
    8ccc:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8cd3:	ff ff ff 
    8cd6:	48 21 f9             	and    %rdi,%rcx
    8cd9:	48 89 c8             	mov    %rcx,%rax
    8cdc:	48 89 f2             	mov    %rsi,%rdx
    8cdf:	48 89 c6             	mov    %rax,%rsi
    8ce2:	48 89 d7             	mov    %rdx,%rdi
    8ce5:	48 89 c1             	mov    %rax,%rcx
    8ce8:	48 89 d3             	mov    %rdx,%rbx
    8ceb:	89 f0                	mov    %esi,%eax
    8ced:	48 89 da             	mov    %rbx,%rdx
    8cf0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8cf4:	c9                   	leave
    8cf5:	c3                   	ret

0000000000008cf6 <EvalLsh>:
    8cf6:	55                   	push   %rbp
    8cf7:	48 89 e5             	mov    %rsp,%rbp
    8cfa:	53                   	push   %rbx
    8cfb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8cff:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8d03:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8d07:	8b 09                	mov    (%rcx),%ecx
    8d09:	89 c9                	mov    %ecx,%ecx
    8d0b:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8d12:	00 
    8d13:	48 8d 0d d6 64 00 00 	lea    0x64d6(%rip),%rcx        # f1f0 <ops.13>
    8d1a:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8d1e:	90                   	nop
    8d1f:	ff e1                	jmp    *%rcx
    8d21:	f3 0f 1e fa          	endbr64
    8d25:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8d29:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8d2d:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8d31:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8d35:	48 d3 e6             	shl    %cl,%rsi
    8d38:	48 89 f1             	mov    %rsi,%rcx
    8d3b:	48 89 c7             	mov    %rax,%rdi
    8d3e:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8d45:	ff ff ff 
    8d48:	48 21 fe             	and    %rdi,%rsi
    8d4b:	48 89 f0             	mov    %rsi,%rax
    8d4e:	48 89 ca             	mov    %rcx,%rdx
    8d51:	e9 83 00 00 00       	jmp    8dd9 <EvalLsh+0xe3>
    8d56:	f3 0f 1e fa          	endbr64
    8d5a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8d5e:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8d63:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8d68:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8d6c:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8d71:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8d76:	48 d3 e6             	shl    %cl,%rsi
    8d79:	48 89 f1             	mov    %rsi,%rcx
    8d7c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8d80:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    8d85:	48 89 c6             	mov    %rax,%rsi
    8d88:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8d8f:	ff ff ff 
    8d92:	48 21 f1             	and    %rsi,%rcx
    8d95:	48 83 c9 01          	or     $0x1,%rcx
    8d99:	48 89 c8             	mov    %rcx,%rax
    8d9c:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8da1:	eb 36                	jmp    8dd9 <EvalLsh+0xe3>
    8da3:	f3 0f 1e fa          	endbr64
    8da7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8dab:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8daf:	8b 71 04             	mov    0x4(%rcx),%esi
    8db2:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8db6:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8dba:	8b 49 04             	mov    0x4(%rcx),%ecx
    8dbd:	d3 e6                	shl    %cl,%esi
    8dbf:	89 f1                	mov    %esi,%ecx
    8dc1:	89 ce                	mov    %ecx,%esi
    8dc3:	48 89 c7             	mov    %rax,%rdi
    8dc6:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8dcd:	ff ff ff 
    8dd0:	48 21 f9             	and    %rdi,%rcx
    8dd3:	48 89 c8             	mov    %rcx,%rax
    8dd6:	48 89 f2             	mov    %rsi,%rdx
    8dd9:	48 89 c6             	mov    %rax,%rsi
    8ddc:	48 89 d7             	mov    %rdx,%rdi
    8ddf:	48 89 c1             	mov    %rax,%rcx
    8de2:	48 89 d3             	mov    %rdx,%rbx
    8de5:	89 f0                	mov    %esi,%eax
    8de7:	48 89 da             	mov    %rbx,%rdx
    8dea:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8dee:	c9                   	leave
    8def:	c3                   	ret

0000000000008df0 <EvalRsh>:
    8df0:	55                   	push   %rbp
    8df1:	48 89 e5             	mov    %rsp,%rbp
    8df4:	53                   	push   %rbx
    8df5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8df9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8dfd:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8e01:	8b 09                	mov    (%rcx),%ecx
    8e03:	89 c9                	mov    %ecx,%ecx
    8e05:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8e0c:	00 
    8e0d:	48 8d 0d fc 63 00 00 	lea    0x63fc(%rip),%rcx        # f210 <ops.12>
    8e14:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8e18:	90                   	nop
    8e19:	ff e1                	jmp    *%rcx
    8e1b:	f3 0f 1e fa          	endbr64
    8e1f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8e23:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8e27:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8e2b:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8e2f:	48 d3 fe             	sar    %cl,%rsi
    8e32:	48 89 f1             	mov    %rsi,%rcx
    8e35:	48 89 c7             	mov    %rax,%rdi
    8e38:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8e3f:	ff ff ff 
    8e42:	48 21 fe             	and    %rdi,%rsi
    8e45:	48 89 f0             	mov    %rsi,%rax
    8e48:	48 89 ca             	mov    %rcx,%rdx
    8e4b:	e9 83 00 00 00       	jmp    8ed3 <EvalRsh+0xe3>
    8e50:	f3 0f 1e fa          	endbr64
    8e54:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8e58:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8e5d:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8e62:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8e66:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8e6b:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8e70:	48 d3 fe             	sar    %cl,%rsi
    8e73:	48 89 f1             	mov    %rsi,%rcx
    8e76:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8e7a:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    8e7f:	48 89 c6             	mov    %rax,%rsi
    8e82:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8e89:	ff ff ff 
    8e8c:	48 21 f1             	and    %rsi,%rcx
    8e8f:	48 83 c9 01          	or     $0x1,%rcx
    8e93:	48 89 c8             	mov    %rcx,%rax
    8e96:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8e9b:	eb 36                	jmp    8ed3 <EvalRsh+0xe3>
    8e9d:	f3 0f 1e fa          	endbr64
    8ea1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8ea5:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8ea9:	8b 71 04             	mov    0x4(%rcx),%esi
    8eac:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8eb0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8eb4:	8b 49 04             	mov    0x4(%rcx),%ecx
    8eb7:	d3 ee                	shr    %cl,%esi
    8eb9:	89 f1                	mov    %esi,%ecx
    8ebb:	89 ce                	mov    %ecx,%esi
    8ebd:	48 89 c7             	mov    %rax,%rdi
    8ec0:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8ec7:	ff ff ff 
    8eca:	48 21 f9             	and    %rdi,%rcx
    8ecd:	48 89 c8             	mov    %rcx,%rax
    8ed0:	48 89 f2             	mov    %rsi,%rdx
    8ed3:	48 89 c6             	mov    %rax,%rsi
    8ed6:	48 89 d7             	mov    %rdx,%rdi
    8ed9:	48 89 c1             	mov    %rax,%rcx
    8edc:	48 89 d3             	mov    %rdx,%rbx
    8edf:	89 f0                	mov    %esi,%eax
    8ee1:	48 89 da             	mov    %rbx,%rdx
    8ee4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8ee8:	c9                   	leave
    8ee9:	c3                   	ret

0000000000008eea <EvalEqEq>:
    8eea:	55                   	push   %rbp
    8eeb:	48 89 e5             	mov    %rsp,%rbp
    8eee:	53                   	push   %rbx
    8eef:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8ef3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8ef7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8efb:	8b 09                	mov    (%rcx),%ecx
    8efd:	89 c9                	mov    %ecx,%ecx
    8eff:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8f06:	00 
    8f07:	48 8d 0d 22 63 00 00 	lea    0x6322(%rip),%rcx        # f230 <ops.11>
    8f0e:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8f12:	90                   	nop
    8f13:	ff e1                	jmp    *%rcx
    8f15:	f3 0f 1e fa          	endbr64
    8f19:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8f1d:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8f21:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8f25:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8f29:	48 39 ce             	cmp    %rcx,%rsi
    8f2c:	0f 94 c1             	sete   %cl
    8f2f:	0f b6 c9             	movzbl %cl,%ecx
    8f32:	48 89 c7             	mov    %rax,%rdi
    8f35:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8f3c:	ff ff ff 
    8f3f:	48 21 fe             	and    %rdi,%rsi
    8f42:	48 89 f0             	mov    %rsi,%rax
    8f45:	48 89 ca             	mov    %rcx,%rdx
    8f48:	e9 81 00 00 00       	jmp    8fce <EvalEqEq+0xe4>
    8f4d:	f3 0f 1e fa          	endbr64
    8f51:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8f55:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8f5a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8f5e:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    8f63:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8f67:	7a 10                	jp     8f79 <EvalEqEq+0x8f>
    8f69:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8f6d:	75 0a                	jne    8f79 <EvalEqEq+0x8f>
    8f6f:	f2 0f 10 05 81 21 00 	movsd  0x2181(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    8f76:	00 
    8f77:	eb 04                	jmp    8f7d <EvalEqEq+0x93>
    8f79:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8f7d:	48 89 c6             	mov    %rax,%rsi
    8f80:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8f87:	ff ff ff 
    8f8a:	48 21 f1             	and    %rsi,%rcx
    8f8d:	48 83 c9 01          	or     $0x1,%rcx
    8f91:	48 89 c8             	mov    %rcx,%rax
    8f94:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8f99:	eb 33                	jmp    8fce <EvalEqEq+0xe4>
    8f9b:	f3 0f 1e fa          	endbr64
    8f9f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8fa3:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8fa7:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8fab:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8faf:	48 39 ce             	cmp    %rcx,%rsi
    8fb2:	0f 94 c1             	sete   %cl
    8fb5:	0f b6 c9             	movzbl %cl,%ecx
    8fb8:	48 89 c7             	mov    %rax,%rdi
    8fbb:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8fc2:	ff ff ff 
    8fc5:	48 21 fe             	and    %rdi,%rsi
    8fc8:	48 89 f0             	mov    %rsi,%rax
    8fcb:	48 89 ca             	mov    %rcx,%rdx
    8fce:	48 89 c6             	mov    %rax,%rsi
    8fd1:	48 89 d7             	mov    %rdx,%rdi
    8fd4:	48 89 c1             	mov    %rax,%rcx
    8fd7:	48 89 d3             	mov    %rdx,%rbx
    8fda:	89 f0                	mov    %esi,%eax
    8fdc:	48 89 da             	mov    %rbx,%rdx
    8fdf:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8fe3:	c9                   	leave
    8fe4:	c3                   	ret

0000000000008fe5 <EvalNeq>:
    8fe5:	55                   	push   %rbp
    8fe6:	48 89 e5             	mov    %rsp,%rbp
    8fe9:	53                   	push   %rbx
    8fea:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8fee:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8ff2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8ff6:	8b 09                	mov    (%rcx),%ecx
    8ff8:	89 c9                	mov    %ecx,%ecx
    8ffa:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    9001:	00 
    9002:	48 8d 0d 47 62 00 00 	lea    0x6247(%rip),%rcx        # f250 <ops.10>
    9009:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    900d:	90                   	nop
    900e:	ff e1                	jmp    *%rcx
    9010:	f3 0f 1e fa          	endbr64
    9014:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9018:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    901c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9020:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9024:	48 39 ce             	cmp    %rcx,%rsi
    9027:	0f 95 c1             	setne  %cl
    902a:	0f b6 c9             	movzbl %cl,%ecx
    902d:	48 89 c7             	mov    %rax,%rdi
    9030:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9037:	ff ff ff 
    903a:	48 21 fe             	and    %rdi,%rsi
    903d:	48 89 f0             	mov    %rsi,%rax
    9040:	48 89 ca             	mov    %rcx,%rdx
    9043:	e9 81 00 00 00       	jmp    90c9 <EvalNeq+0xe4>
    9048:	f3 0f 1e fa          	endbr64
    904c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9050:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9055:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9059:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    905e:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9062:	7a 06                	jp     906a <EvalNeq+0x85>
    9064:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9068:	74 0a                	je     9074 <EvalNeq+0x8f>
    906a:	f2 0f 10 05 86 20 00 	movsd  0x2086(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    9071:	00 
    9072:	eb 04                	jmp    9078 <EvalNeq+0x93>
    9074:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9078:	48 89 c6             	mov    %rax,%rsi
    907b:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9082:	ff ff ff 
    9085:	48 21 f1             	and    %rsi,%rcx
    9088:	48 83 c9 01          	or     $0x1,%rcx
    908c:	48 89 c8             	mov    %rcx,%rax
    908f:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    9094:	eb 33                	jmp    90c9 <EvalNeq+0xe4>
    9096:	f3 0f 1e fa          	endbr64
    909a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    909e:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    90a2:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    90a6:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    90aa:	48 39 ce             	cmp    %rcx,%rsi
    90ad:	0f 95 c1             	setne  %cl
    90b0:	0f b6 c9             	movzbl %cl,%ecx
    90b3:	48 89 c7             	mov    %rax,%rdi
    90b6:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    90bd:	ff ff ff 
    90c0:	48 21 fe             	and    %rdi,%rsi
    90c3:	48 89 f0             	mov    %rsi,%rax
    90c6:	48 89 ca             	mov    %rcx,%rdx
    90c9:	48 89 c6             	mov    %rax,%rsi
    90cc:	48 89 d7             	mov    %rdx,%rdi
    90cf:	48 89 c1             	mov    %rax,%rcx
    90d2:	48 89 d3             	mov    %rdx,%rbx
    90d5:	89 f0                	mov    %esi,%eax
    90d7:	48 89 da             	mov    %rbx,%rdx
    90da:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    90de:	c9                   	leave
    90df:	c3                   	ret

00000000000090e0 <EvalLt>:
    90e0:	55                   	push   %rbp
    90e1:	48 89 e5             	mov    %rsp,%rbp
    90e4:	53                   	push   %rbx
    90e5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    90e9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    90ed:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    90f1:	8b 09                	mov    (%rcx),%ecx
    90f3:	89 c9                	mov    %ecx,%ecx
    90f5:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    90fc:	00 
    90fd:	48 8d 0d 6c 61 00 00 	lea    0x616c(%rip),%rcx        # f270 <ops.9>
    9104:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    9108:	90                   	nop
    9109:	ff e1                	jmp    *%rcx
    910b:	f3 0f 1e fa          	endbr64
    910f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9113:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    9117:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    911b:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    911f:	48 39 ce             	cmp    %rcx,%rsi
    9122:	0f 9c c1             	setl   %cl
    9125:	0f b6 c9             	movzbl %cl,%ecx
    9128:	48 89 c7             	mov    %rax,%rdi
    912b:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9132:	ff ff ff 
    9135:	48 21 fe             	and    %rdi,%rsi
    9138:	48 89 f0             	mov    %rsi,%rax
    913b:	48 89 ca             	mov    %rcx,%rdx
    913e:	e9 80 00 00 00       	jmp    91c3 <EvalLt+0xe3>
    9143:	f3 0f 1e fa          	endbr64
    9147:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    914b:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    9150:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9154:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9159:	66 0f 2f c1          	comisd %xmm1,%xmm0
    915d:	76 0a                	jbe    9169 <EvalLt+0x89>
    915f:	f2 0f 10 05 91 1f 00 	movsd  0x1f91(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    9166:	00 
    9167:	eb 04                	jmp    916d <EvalLt+0x8d>
    9169:	66 0f ef c0          	pxor   %xmm0,%xmm0
    916d:	48 89 c6             	mov    %rax,%rsi
    9170:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9177:	ff ff ff 
    917a:	48 21 f1             	and    %rsi,%rcx
    917d:	48 83 c9 01          	or     $0x1,%rcx
    9181:	48 89 c8             	mov    %rcx,%rax
    9184:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    9189:	eb 38                	jmp    91c3 <EvalLt+0xe3>
    918b:	f3 0f 1e fa          	endbr64
    918f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9193:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9197:	8b 71 04             	mov    0x4(%rcx),%esi
    919a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    919e:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    91a2:	8b 49 04             	mov    0x4(%rcx),%ecx
    91a5:	39 ce                	cmp    %ecx,%esi
    91a7:	0f 92 c1             	setb   %cl
    91aa:	0f b6 c9             	movzbl %cl,%ecx
    91ad:	48 89 c7             	mov    %rax,%rdi
    91b0:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    91b7:	ff ff ff 
    91ba:	48 21 fe             	and    %rdi,%rsi
    91bd:	48 89 f0             	mov    %rsi,%rax
    91c0:	48 89 ca             	mov    %rcx,%rdx
    91c3:	48 89 c6             	mov    %rax,%rsi
    91c6:	48 89 d7             	mov    %rdx,%rdi
    91c9:	48 89 c1             	mov    %rax,%rcx
    91cc:	48 89 d3             	mov    %rdx,%rbx
    91cf:	89 f0                	mov    %esi,%eax
    91d1:	48 89 da             	mov    %rbx,%rdx
    91d4:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    91d8:	c9                   	leave
    91d9:	c3                   	ret

00000000000091da <EvalLe>:
    91da:	55                   	push   %rbp
    91db:	48 89 e5             	mov    %rsp,%rbp
    91de:	53                   	push   %rbx
    91df:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    91e3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    91e7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    91eb:	8b 09                	mov    (%rcx),%ecx
    91ed:	89 c9                	mov    %ecx,%ecx
    91ef:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    91f6:	00 
    91f7:	48 8d 0d 92 60 00 00 	lea    0x6092(%rip),%rcx        # f290 <ops.8>
    91fe:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    9202:	90                   	nop
    9203:	ff e1                	jmp    *%rcx
    9205:	f3 0f 1e fa          	endbr64
    9209:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    920d:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    9211:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9215:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9219:	48 39 ce             	cmp    %rcx,%rsi
    921c:	0f 9e c1             	setle  %cl
    921f:	0f b6 c9             	movzbl %cl,%ecx
    9222:	48 89 c7             	mov    %rax,%rdi
    9225:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    922c:	ff ff ff 
    922f:	48 21 fe             	and    %rdi,%rsi
    9232:	48 89 f0             	mov    %rsi,%rax
    9235:	48 89 ca             	mov    %rcx,%rdx
    9238:	e9 80 00 00 00       	jmp    92bd <EvalLe+0xe3>
    923d:	f3 0f 1e fa          	endbr64
    9241:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9245:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    924a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    924e:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9253:	66 0f 2f c1          	comisd %xmm1,%xmm0
    9257:	72 0a                	jb     9263 <EvalLe+0x89>
    9259:	f2 0f 10 05 97 1e 00 	movsd  0x1e97(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    9260:	00 
    9261:	eb 04                	jmp    9267 <EvalLe+0x8d>
    9263:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9267:	48 89 c6             	mov    %rax,%rsi
    926a:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9271:	ff ff ff 
    9274:	48 21 f1             	and    %rsi,%rcx
    9277:	48 83 c9 01          	or     $0x1,%rcx
    927b:	48 89 c8             	mov    %rcx,%rax
    927e:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    9283:	eb 38                	jmp    92bd <EvalLe+0xe3>
    9285:	f3 0f 1e fa          	endbr64
    9289:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    928d:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9291:	8b 49 04             	mov    0x4(%rcx),%ecx
    9294:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9298:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    929c:	8b 76 04             	mov    0x4(%rsi),%esi
    929f:	39 ce                	cmp    %ecx,%esi
    92a1:	0f 93 c1             	setae  %cl
    92a4:	0f b6 c9             	movzbl %cl,%ecx
    92a7:	48 89 c7             	mov    %rax,%rdi
    92aa:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    92b1:	ff ff ff 
    92b4:	48 21 fe             	and    %rdi,%rsi
    92b7:	48 89 f0             	mov    %rsi,%rax
    92ba:	48 89 ca             	mov    %rcx,%rdx
    92bd:	48 89 c6             	mov    %rax,%rsi
    92c0:	48 89 d7             	mov    %rdx,%rdi
    92c3:	48 89 c1             	mov    %rax,%rcx
    92c6:	48 89 d3             	mov    %rdx,%rbx
    92c9:	89 f0                	mov    %esi,%eax
    92cb:	48 89 da             	mov    %rbx,%rdx
    92ce:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    92d2:	c9                   	leave
    92d3:	c3                   	ret

00000000000092d4 <EvalGt>:
    92d4:	55                   	push   %rbp
    92d5:	48 89 e5             	mov    %rsp,%rbp
    92d8:	53                   	push   %rbx
    92d9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    92dd:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    92e1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    92e5:	8b 09                	mov    (%rcx),%ecx
    92e7:	89 c9                	mov    %ecx,%ecx
    92e9:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    92f0:	00 
    92f1:	48 8d 0d b8 5f 00 00 	lea    0x5fb8(%rip),%rcx        # f2b0 <ops.7>
    92f8:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    92fc:	90                   	nop
    92fd:	ff e1                	jmp    *%rcx
    92ff:	f3 0f 1e fa          	endbr64
    9303:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9307:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    930b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    930f:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9313:	48 39 ce             	cmp    %rcx,%rsi
    9316:	0f 9f c1             	setg   %cl
    9319:	0f b6 c9             	movzbl %cl,%ecx
    931c:	48 89 c7             	mov    %rax,%rdi
    931f:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9326:	ff ff ff 
    9329:	48 21 fe             	and    %rdi,%rsi
    932c:	48 89 f0             	mov    %rsi,%rax
    932f:	48 89 ca             	mov    %rcx,%rdx
    9332:	e9 80 00 00 00       	jmp    93b7 <EvalGt+0xe3>
    9337:	f3 0f 1e fa          	endbr64
    933b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    933f:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9344:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9348:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    934d:	66 0f 2f c1          	comisd %xmm1,%xmm0
    9351:	76 0a                	jbe    935d <EvalGt+0x89>
    9353:	f2 0f 10 05 9d 1d 00 	movsd  0x1d9d(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    935a:	00 
    935b:	eb 04                	jmp    9361 <EvalGt+0x8d>
    935d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9361:	48 89 c6             	mov    %rax,%rsi
    9364:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    936b:	ff ff ff 
    936e:	48 21 f1             	and    %rsi,%rcx
    9371:	48 83 c9 01          	or     $0x1,%rcx
    9375:	48 89 c8             	mov    %rcx,%rax
    9378:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    937d:	eb 38                	jmp    93b7 <EvalGt+0xe3>
    937f:	f3 0f 1e fa          	endbr64
    9383:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9387:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    938b:	8b 49 04             	mov    0x4(%rcx),%ecx
    938e:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9392:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    9396:	8b 76 04             	mov    0x4(%rsi),%esi
    9399:	39 ce                	cmp    %ecx,%esi
    939b:	0f 92 c1             	setb   %cl
    939e:	0f b6 c9             	movzbl %cl,%ecx
    93a1:	48 89 c7             	mov    %rax,%rdi
    93a4:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    93ab:	ff ff ff 
    93ae:	48 21 fe             	and    %rdi,%rsi
    93b1:	48 89 f0             	mov    %rsi,%rax
    93b4:	48 89 ca             	mov    %rcx,%rdx
    93b7:	48 89 c6             	mov    %rax,%rsi
    93ba:	48 89 d7             	mov    %rdx,%rdi
    93bd:	48 89 c1             	mov    %rax,%rcx
    93c0:	48 89 d3             	mov    %rdx,%rbx
    93c3:	89 f0                	mov    %esi,%eax
    93c5:	48 89 da             	mov    %rbx,%rdx
    93c8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    93cc:	c9                   	leave
    93cd:	c3                   	ret

00000000000093ce <EvalGe>:
    93ce:	55                   	push   %rbp
    93cf:	48 89 e5             	mov    %rsp,%rbp
    93d2:	53                   	push   %rbx
    93d3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    93d7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    93db:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    93df:	8b 09                	mov    (%rcx),%ecx
    93e1:	89 c9                	mov    %ecx,%ecx
    93e3:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    93ea:	00 
    93eb:	48 8d 0d de 5e 00 00 	lea    0x5ede(%rip),%rcx        # f2d0 <ops.6>
    93f2:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    93f6:	90                   	nop
    93f7:	ff e1                	jmp    *%rcx
    93f9:	f3 0f 1e fa          	endbr64
    93fd:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9401:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    9405:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9409:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    940d:	48 39 ce             	cmp    %rcx,%rsi
    9410:	0f 9d c1             	setge  %cl
    9413:	0f b6 c9             	movzbl %cl,%ecx
    9416:	48 89 c7             	mov    %rax,%rdi
    9419:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9420:	ff ff ff 
    9423:	48 21 fe             	and    %rdi,%rsi
    9426:	48 89 f0             	mov    %rsi,%rax
    9429:	48 89 ca             	mov    %rcx,%rdx
    942c:	e9 80 00 00 00       	jmp    94b1 <EvalGe+0xe3>
    9431:	f3 0f 1e fa          	endbr64
    9435:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9439:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    943e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9442:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    9447:	66 0f 2f c1          	comisd %xmm1,%xmm0
    944b:	72 0a                	jb     9457 <EvalGe+0x89>
    944d:	f2 0f 10 05 a3 1c 00 	movsd  0x1ca3(%rip),%xmm0        # b0f8 <_IO_stdin_used+0xf8>
    9454:	00 
    9455:	eb 04                	jmp    945b <EvalGe+0x8d>
    9457:	66 0f ef c0          	pxor   %xmm0,%xmm0
    945b:	48 89 c6             	mov    %rax,%rsi
    945e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9465:	ff ff ff 
    9468:	48 21 f1             	and    %rsi,%rcx
    946b:	48 83 c9 01          	or     $0x1,%rcx
    946f:	48 89 c8             	mov    %rcx,%rax
    9472:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    9477:	eb 38                	jmp    94b1 <EvalGe+0xe3>
    9479:	f3 0f 1e fa          	endbr64
    947d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9481:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9485:	8b 71 04             	mov    0x4(%rcx),%esi
    9488:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    948c:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9490:	8b 49 04             	mov    0x4(%rcx),%ecx
    9493:	39 ce                	cmp    %ecx,%esi
    9495:	0f 93 c1             	setae  %cl
    9498:	0f b6 c9             	movzbl %cl,%ecx
    949b:	48 89 c7             	mov    %rax,%rdi
    949e:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    94a5:	ff ff ff 
    94a8:	48 21 fe             	and    %rdi,%rsi
    94ab:	48 89 f0             	mov    %rsi,%rax
    94ae:	48 89 ca             	mov    %rcx,%rdx
    94b1:	48 89 c6             	mov    %rax,%rsi
    94b4:	48 89 d7             	mov    %rdx,%rdi
    94b7:	48 89 c1             	mov    %rax,%rcx
    94ba:	48 89 d3             	mov    %rdx,%rbx
    94bd:	89 f0                	mov    %esi,%eax
    94bf:	48 89 da             	mov    %rbx,%rdx
    94c2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    94c6:	c9                   	leave
    94c7:	c3                   	ret

00000000000094c8 <EvalAnd>:
    94c8:	55                   	push   %rbp
    94c9:	48 89 e5             	mov    %rsp,%rbp
    94cc:	53                   	push   %rbx
    94cd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    94d1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    94d5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    94d9:	8b 09                	mov    (%rcx),%ecx
    94db:	89 c9                	mov    %ecx,%ecx
    94dd:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    94e4:	00 
    94e5:	48 8d 0d 04 5e 00 00 	lea    0x5e04(%rip),%rcx        # f2f0 <ops.5>
    94ec:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    94f0:	90                   	nop
    94f1:	ff e1                	jmp    *%rcx
    94f3:	f3 0f 1e fa          	endbr64
    94f7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    94fb:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    94ff:	48 85 c9             	test   %rcx,%rcx
    9502:	74 14                	je     9518 <EvalAnd+0x50>
    9504:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9508:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    950c:	48 85 c9             	test   %rcx,%rcx
    950f:	74 07                	je     9518 <EvalAnd+0x50>
    9511:	b9 01 00 00 00       	mov    $0x1,%ecx
    9516:	eb 05                	jmp    951d <EvalAnd+0x55>
    9518:	b9 00 00 00 00       	mov    $0x0,%ecx
    951d:	48 63 c9             	movslq %ecx,%rcx
    9520:	48 89 c7             	mov    %rax,%rdi
    9523:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    952a:	ff ff ff 
    952d:	48 21 fe             	and    %rdi,%rsi
    9530:	48 89 f0             	mov    %rsi,%rax
    9533:	48 89 ca             	mov    %rcx,%rdx
    9536:	e9 b3 00 00 00       	jmp    95ee <EvalAnd+0x126>
    953b:	f3 0f 1e fa          	endbr64
    953f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9543:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9548:	66 0f ef c9          	pxor   %xmm1,%xmm1
    954c:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9550:	7a 0a                	jp     955c <EvalAnd+0x94>
    9552:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9556:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    955a:	74 24                	je     9580 <EvalAnd+0xb8>
    955c:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9560:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9565:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9569:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    956d:	7a 0a                	jp     9579 <EvalAnd+0xb1>
    956f:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9573:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9577:	74 07                	je     9580 <EvalAnd+0xb8>
    9579:	b9 01 00 00 00       	mov    $0x1,%ecx
    957e:	eb 05                	jmp    9585 <EvalAnd+0xbd>
    9580:	b9 00 00 00 00       	mov    $0x0,%ecx
    9585:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9589:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    958d:	48 89 c6             	mov    %rax,%rsi
    9590:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    9597:	ff ff ff 
    959a:	48 21 f1             	and    %rsi,%rcx
    959d:	48 83 c9 01          	or     $0x1,%rcx
    95a1:	48 89 c8             	mov    %rcx,%rax
    95a4:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    95a9:	eb 43                	jmp    95ee <EvalAnd+0x126>
    95ab:	f3 0f 1e fa          	endbr64
    95af:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    95b3:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    95b7:	48 85 c9             	test   %rcx,%rcx
    95ba:	74 14                	je     95d0 <EvalAnd+0x108>
    95bc:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    95c0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    95c4:	48 85 c9             	test   %rcx,%rcx
    95c7:	74 07                	je     95d0 <EvalAnd+0x108>
    95c9:	b9 01 00 00 00       	mov    $0x1,%ecx
    95ce:	eb 05                	jmp    95d5 <EvalAnd+0x10d>
    95d0:	b9 00 00 00 00       	mov    $0x0,%ecx
    95d5:	48 63 c9             	movslq %ecx,%rcx
    95d8:	48 89 c7             	mov    %rax,%rdi
    95db:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    95e2:	ff ff ff 
    95e5:	48 21 fe             	and    %rdi,%rsi
    95e8:	48 89 f0             	mov    %rsi,%rax
    95eb:	48 89 ca             	mov    %rcx,%rdx
    95ee:	48 89 c6             	mov    %rax,%rsi
    95f1:	48 89 d7             	mov    %rdx,%rdi
    95f4:	48 89 c1             	mov    %rax,%rcx
    95f7:	48 89 d3             	mov    %rdx,%rbx
    95fa:	89 f0                	mov    %esi,%eax
    95fc:	48 89 da             	mov    %rbx,%rdx
    95ff:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9603:	c9                   	leave
    9604:	c3                   	ret

0000000000009605 <EvalOr>:
    9605:	55                   	push   %rbp
    9606:	48 89 e5             	mov    %rsp,%rbp
    9609:	53                   	push   %rbx
    960a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    960e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9612:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9616:	8b 09                	mov    (%rcx),%ecx
    9618:	89 c9                	mov    %ecx,%ecx
    961a:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    9621:	00 
    9622:	48 8d 0d e7 5c 00 00 	lea    0x5ce7(%rip),%rcx        # f310 <ops.4>
    9629:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    962d:	90                   	nop
    962e:	ff e1                	jmp    *%rcx
    9630:	f3 0f 1e fa          	endbr64
    9634:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9638:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    963c:	48 85 c9             	test   %rcx,%rcx
    963f:	75 0d                	jne    964e <EvalOr+0x49>
    9641:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9645:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9649:	48 85 c9             	test   %rcx,%rcx
    964c:	74 07                	je     9655 <EvalOr+0x50>
    964e:	b9 01 00 00 00       	mov    $0x1,%ecx
    9653:	eb 05                	jmp    965a <EvalOr+0x55>
    9655:	b9 00 00 00 00       	mov    $0x0,%ecx
    965a:	48 63 c9             	movslq %ecx,%rcx
    965d:	48 89 c7             	mov    %rax,%rdi
    9660:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9667:	ff ff ff 
    966a:	48 21 fe             	and    %rdi,%rsi
    966d:	48 89 f0             	mov    %rsi,%rax
    9670:	48 89 ca             	mov    %rcx,%rdx
    9673:	e9 b3 00 00 00       	jmp    972b <EvalOr+0x126>
    9678:	f3 0f 1e fa          	endbr64
    967c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9680:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    9685:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9689:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    968d:	7a 27                	jp     96b6 <EvalOr+0xb1>
    968f:	66 0f ef c9          	pxor   %xmm1,%xmm1
    9693:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    9697:	75 1d                	jne    96b6 <EvalOr+0xb1>
    9699:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    969d:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    96a2:	66 0f ef c9          	pxor   %xmm1,%xmm1
    96a6:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    96aa:	7a 0a                	jp     96b6 <EvalOr+0xb1>
    96ac:	66 0f ef c9          	pxor   %xmm1,%xmm1
    96b0:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    96b4:	74 07                	je     96bd <EvalOr+0xb8>
    96b6:	b9 01 00 00 00       	mov    $0x1,%ecx
    96bb:	eb 05                	jmp    96c2 <EvalOr+0xbd>
    96bd:	b9 00 00 00 00       	mov    $0x0,%ecx
    96c2:	66 0f ef c0          	pxor   %xmm0,%xmm0
    96c6:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    96ca:	48 89 c6             	mov    %rax,%rsi
    96cd:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    96d4:	ff ff ff 
    96d7:	48 21 f1             	and    %rsi,%rcx
    96da:	48 83 c9 01          	or     $0x1,%rcx
    96de:	48 89 c8             	mov    %rcx,%rax
    96e1:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    96e6:	eb 43                	jmp    972b <EvalOr+0x126>
    96e8:	f3 0f 1e fa          	endbr64
    96ec:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    96f0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    96f4:	48 85 c9             	test   %rcx,%rcx
    96f7:	75 0d                	jne    9706 <EvalOr+0x101>
    96f9:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    96fd:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9701:	48 85 c9             	test   %rcx,%rcx
    9704:	74 07                	je     970d <EvalOr+0x108>
    9706:	b9 01 00 00 00       	mov    $0x1,%ecx
    970b:	eb 05                	jmp    9712 <EvalOr+0x10d>
    970d:	b9 00 00 00 00       	mov    $0x0,%ecx
    9712:	48 63 c9             	movslq %ecx,%rcx
    9715:	48 89 c7             	mov    %rax,%rdi
    9718:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    971f:	ff ff ff 
    9722:	48 21 fe             	and    %rdi,%rsi
    9725:	48 89 f0             	mov    %rsi,%rax
    9728:	48 89 ca             	mov    %rcx,%rdx
    972b:	48 89 c6             	mov    %rax,%rsi
    972e:	48 89 d7             	mov    %rdx,%rdi
    9731:	48 89 c1             	mov    %rax,%rcx
    9734:	48 89 d3             	mov    %rdx,%rbx
    9737:	89 f0                	mov    %esi,%eax
    9739:	48 89 da             	mov    %rbx,%rdx
    973c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9740:	c9                   	leave
    9741:	c3                   	ret

0000000000009742 <EvalMov>:
    9742:	55                   	push   %rbp
    9743:	48 89 e5             	mov    %rsp,%rbp
    9746:	53                   	push   %rbx
    9747:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    974b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    974f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    9753:	8b 09                	mov    (%rcx),%ecx
    9755:	89 c9                	mov    %ecx,%ecx
    9757:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    975e:	00 
    975f:	48 8d 0d ca 5b 00 00 	lea    0x5bca(%rip),%rcx        # f330 <ops.3>
    9766:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    976a:	90                   	nop
    976b:	ff e1                	jmp    *%rcx
    976d:	f3 0f 1e fa          	endbr64
    9771:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9775:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    9779:	48 89 c7             	mov    %rax,%rdi
    977c:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    9783:	ff ff ff 
    9786:	48 21 fe             	and    %rdi,%rsi
    9789:	48 89 f0             	mov    %rsi,%rax
    978c:	48 89 ca             	mov    %rcx,%rdx
    978f:	eb 51                	jmp    97e2 <EvalMov+0xa0>
    9791:	f3 0f 1e fa          	endbr64
    9795:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    9799:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    979e:	48 89 c6             	mov    %rax,%rsi
    97a1:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    97a8:	ff ff ff 
    97ab:	48 21 f1             	and    %rsi,%rcx
    97ae:	48 83 c9 01          	or     $0x1,%rcx
    97b2:	48 89 c8             	mov    %rcx,%rax
    97b5:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    97ba:	eb 26                	jmp    97e2 <EvalMov+0xa0>
    97bc:	f3 0f 1e fa          	endbr64
    97c0:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    97c4:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    97c8:	48 89 c7             	mov    %rax,%rdi
    97cb:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    97d2:	ff ff ff 
    97d5:	48 21 f9             	and    %rdi,%rcx
    97d8:	48 83 c9 02          	or     $0x2,%rcx
    97dc:	48 89 c8             	mov    %rcx,%rax
    97df:	48 89 f2             	mov    %rsi,%rdx
    97e2:	48 89 c6             	mov    %rax,%rsi
    97e5:	48 89 d7             	mov    %rdx,%rdi
    97e8:	48 89 c1             	mov    %rax,%rcx
    97eb:	48 89 d3             	mov    %rdx,%rbx
    97ee:	89 f0                	mov    %esi,%eax
    97f0:	48 89 da             	mov    %rbx,%rdx
    97f3:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    97f7:	c9                   	leave
    97f8:	c3                   	ret

00000000000097f9 <EvalAddEq>:
    97f9:	55                   	push   %rbp
    97fa:	48 89 e5             	mov    %rsp,%rbp
    97fd:	53                   	push   %rbx
    97fe:	48 83 ec 18          	sub    $0x18,%rsp
    9802:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9806:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    980a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    980e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9812:	48 89 d6             	mov    %rdx,%rsi
    9815:	48 89 c7             	mov    %rax,%rdi
    9818:	e8 04 ec ff ff       	call   8421 <EvalAdd>
    981d:	48 89 d1             	mov    %rdx,%rcx
    9820:	48 89 ca             	mov    %rcx,%rdx
    9823:	48 89 c6             	mov    %rax,%rsi
    9826:	48 89 d7             	mov    %rdx,%rdi
    9829:	48 89 c1             	mov    %rax,%rcx
    982c:	48 89 d3             	mov    %rdx,%rbx
    982f:	89 f0                	mov    %esi,%eax
    9831:	48 89 da             	mov    %rbx,%rdx
    9834:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9838:	c9                   	leave
    9839:	c3                   	ret

000000000000983a <EvalSubEq>:
    983a:	55                   	push   %rbp
    983b:	48 89 e5             	mov    %rsp,%rbp
    983e:	53                   	push   %rbx
    983f:	48 83 ec 18          	sub    $0x18,%rsp
    9843:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9847:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    984b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    984f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9853:	48 89 d6             	mov    %rdx,%rsi
    9856:	48 89 c7             	mov    %rax,%rdi
    9859:	e8 a0 ec ff ff       	call   84fe <EvalSub>
    985e:	48 89 d1             	mov    %rdx,%rcx
    9861:	48 89 ca             	mov    %rcx,%rdx
    9864:	48 89 c6             	mov    %rax,%rsi
    9867:	48 89 d7             	mov    %rdx,%rdi
    986a:	48 89 c1             	mov    %rax,%rcx
    986d:	48 89 d3             	mov    %rdx,%rbx
    9870:	89 f0                	mov    %esi,%eax
    9872:	48 89 da             	mov    %rbx,%rdx
    9875:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9879:	c9                   	leave
    987a:	c3                   	ret

000000000000987b <EvalMulEq>:
    987b:	55                   	push   %rbp
    987c:	48 89 e5             	mov    %rsp,%rbp
    987f:	53                   	push   %rbx
    9880:	48 83 ec 18          	sub    $0x18,%rsp
    9884:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9888:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    988c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9890:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9894:	48 89 d6             	mov    %rdx,%rsi
    9897:	48 89 c7             	mov    %rax,%rdi
    989a:	e8 3c ed ff ff       	call   85db <EvalMul>
    989f:	48 89 d1             	mov    %rdx,%rcx
    98a2:	48 89 ca             	mov    %rcx,%rdx
    98a5:	48 89 c6             	mov    %rax,%rsi
    98a8:	48 89 d7             	mov    %rdx,%rdi
    98ab:	48 89 c1             	mov    %rax,%rcx
    98ae:	48 89 d3             	mov    %rdx,%rbx
    98b1:	89 f0                	mov    %esi,%eax
    98b3:	48 89 da             	mov    %rbx,%rdx
    98b6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    98ba:	c9                   	leave
    98bb:	c3                   	ret

00000000000098bc <EvalDivEq>:
    98bc:	55                   	push   %rbp
    98bd:	48 89 e5             	mov    %rsp,%rbp
    98c0:	53                   	push   %rbx
    98c1:	48 83 ec 18          	sub    $0x18,%rsp
    98c5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    98c9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    98cd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    98d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    98d5:	48 89 d6             	mov    %rdx,%rsi
    98d8:	48 89 c7             	mov    %rax,%rdi
    98db:	e8 da ed ff ff       	call   86ba <EvalDiv>
    98e0:	48 89 d1             	mov    %rdx,%rcx
    98e3:	48 89 ca             	mov    %rcx,%rdx
    98e6:	48 89 c6             	mov    %rax,%rsi
    98e9:	48 89 d7             	mov    %rdx,%rdi
    98ec:	48 89 c1             	mov    %rax,%rcx
    98ef:	48 89 d3             	mov    %rdx,%rbx
    98f2:	89 f0                	mov    %esi,%eax
    98f4:	48 89 da             	mov    %rbx,%rdx
    98f7:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    98fb:	c9                   	leave
    98fc:	c3                   	ret

00000000000098fd <EvalModEq>:
    98fd:	55                   	push   %rbp
    98fe:	48 89 e5             	mov    %rsp,%rbp
    9901:	53                   	push   %rbx
    9902:	48 83 ec 18          	sub    $0x18,%rsp
    9906:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    990a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    990e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9912:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9916:	48 89 d6             	mov    %rdx,%rsi
    9919:	48 89 c7             	mov    %rax,%rdi
    991c:	e8 78 ee ff ff       	call   8799 <EvalMod>
    9921:	48 89 d1             	mov    %rdx,%rcx
    9924:	48 89 ca             	mov    %rcx,%rdx
    9927:	48 89 c6             	mov    %rax,%rsi
    992a:	48 89 d7             	mov    %rdx,%rdi
    992d:	48 89 c1             	mov    %rax,%rcx
    9930:	48 89 d3             	mov    %rdx,%rbx
    9933:	89 f0                	mov    %esi,%eax
    9935:	48 89 da             	mov    %rbx,%rdx
    9938:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    993c:	c9                   	leave
    993d:	c3                   	ret

000000000000993e <EvalPowEq>:
    993e:	55                   	push   %rbp
    993f:	48 89 e5             	mov    %rsp,%rbp
    9942:	53                   	push   %rbx
    9943:	48 83 ec 18          	sub    $0x18,%rsp
    9947:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    994b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    994f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9953:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9957:	48 89 d6             	mov    %rdx,%rsi
    995a:	48 89 c7             	mov    %rax,%rdi
    995d:	e8 3a ef ff ff       	call   889c <EvalPow>
    9962:	48 89 d1             	mov    %rdx,%rcx
    9965:	48 89 ca             	mov    %rcx,%rdx
    9968:	48 89 c6             	mov    %rax,%rsi
    996b:	48 89 d7             	mov    %rdx,%rdi
    996e:	48 89 c1             	mov    %rax,%rcx
    9971:	48 89 d3             	mov    %rdx,%rbx
    9974:	89 f0                	mov    %esi,%eax
    9976:	48 89 da             	mov    %rbx,%rdx
    9979:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    997d:	c9                   	leave
    997e:	c3                   	ret

000000000000997f <EvalBandEq>:
    997f:	55                   	push   %rbp
    9980:	48 89 e5             	mov    %rsp,%rbp
    9983:	53                   	push   %rbx
    9984:	48 83 ec 18          	sub    $0x18,%rsp
    9988:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    998c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9990:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9994:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9998:	48 89 d6             	mov    %rdx,%rsi
    999b:	48 89 c7             	mov    %rax,%rdi
    999e:	e8 86 f0 ff ff       	call   8a29 <EvalBand>
    99a3:	48 89 d1             	mov    %rdx,%rcx
    99a6:	48 89 ca             	mov    %rcx,%rdx
    99a9:	48 89 c6             	mov    %rax,%rsi
    99ac:	48 89 d7             	mov    %rdx,%rdi
    99af:	48 89 c1             	mov    %rax,%rcx
    99b2:	48 89 d3             	mov    %rdx,%rbx
    99b5:	89 f0                	mov    %esi,%eax
    99b7:	48 89 da             	mov    %rbx,%rdx
    99ba:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    99be:	c9                   	leave
    99bf:	c3                   	ret

00000000000099c0 <EvalBorEq>:
    99c0:	55                   	push   %rbp
    99c1:	48 89 e5             	mov    %rsp,%rbp
    99c4:	53                   	push   %rbx
    99c5:	48 83 ec 18          	sub    $0x18,%rsp
    99c9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    99cd:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    99d1:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    99d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    99d9:	48 89 d6             	mov    %rdx,%rsi
    99dc:	48 89 c7             	mov    %rax,%rdi
    99df:	e8 34 f1 ff ff       	call   8b18 <EvalBor>
    99e4:	48 89 d1             	mov    %rdx,%rcx
    99e7:	48 89 ca             	mov    %rcx,%rdx
    99ea:	48 89 c6             	mov    %rax,%rsi
    99ed:	48 89 d7             	mov    %rdx,%rdi
    99f0:	48 89 c1             	mov    %rax,%rcx
    99f3:	48 89 d3             	mov    %rdx,%rbx
    99f6:	89 f0                	mov    %esi,%eax
    99f8:	48 89 da             	mov    %rbx,%rdx
    99fb:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    99ff:	c9                   	leave
    9a00:	c3                   	ret

0000000000009a01 <EvalBxorEq>:
    9a01:	55                   	push   %rbp
    9a02:	48 89 e5             	mov    %rsp,%rbp
    9a05:	53                   	push   %rbx
    9a06:	48 83 ec 18          	sub    $0x18,%rsp
    9a0a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9a0e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9a12:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9a16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a1a:	48 89 d6             	mov    %rdx,%rsi
    9a1d:	48 89 c7             	mov    %rax,%rdi
    9a20:	e8 e2 f1 ff ff       	call   8c07 <EvalBxor>
    9a25:	48 89 d1             	mov    %rdx,%rcx
    9a28:	48 89 ca             	mov    %rcx,%rdx
    9a2b:	48 89 c6             	mov    %rax,%rsi
    9a2e:	48 89 d7             	mov    %rdx,%rdi
    9a31:	48 89 c1             	mov    %rax,%rcx
    9a34:	48 89 d3             	mov    %rdx,%rbx
    9a37:	89 f0                	mov    %esi,%eax
    9a39:	48 89 da             	mov    %rbx,%rdx
    9a3c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9a40:	c9                   	leave
    9a41:	c3                   	ret

0000000000009a42 <EvalLshEq>:
    9a42:	55                   	push   %rbp
    9a43:	48 89 e5             	mov    %rsp,%rbp
    9a46:	53                   	push   %rbx
    9a47:	48 83 ec 18          	sub    $0x18,%rsp
    9a4b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9a4f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9a53:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9a57:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a5b:	48 89 d6             	mov    %rdx,%rsi
    9a5e:	48 89 c7             	mov    %rax,%rdi
    9a61:	e8 90 f2 ff ff       	call   8cf6 <EvalLsh>
    9a66:	48 89 d1             	mov    %rdx,%rcx
    9a69:	48 89 ca             	mov    %rcx,%rdx
    9a6c:	48 89 c6             	mov    %rax,%rsi
    9a6f:	48 89 d7             	mov    %rdx,%rdi
    9a72:	48 89 c1             	mov    %rax,%rcx
    9a75:	48 89 d3             	mov    %rdx,%rbx
    9a78:	89 f0                	mov    %esi,%eax
    9a7a:	48 89 da             	mov    %rbx,%rdx
    9a7d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9a81:	c9                   	leave
    9a82:	c3                   	ret

0000000000009a83 <EvalRshEq>:
    9a83:	55                   	push   %rbp
    9a84:	48 89 e5             	mov    %rsp,%rbp
    9a87:	53                   	push   %rbx
    9a88:	48 83 ec 18          	sub    $0x18,%rsp
    9a8c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9a90:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9a94:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9a98:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a9c:	48 89 d6             	mov    %rdx,%rsi
    9a9f:	48 89 c7             	mov    %rax,%rdi
    9aa2:	e8 49 f3 ff ff       	call   8df0 <EvalRsh>
    9aa7:	48 89 d1             	mov    %rdx,%rcx
    9aaa:	48 89 ca             	mov    %rcx,%rdx
    9aad:	48 89 c6             	mov    %rax,%rsi
    9ab0:	48 89 d7             	mov    %rdx,%rdi
    9ab3:	48 89 c1             	mov    %rax,%rcx
    9ab6:	48 89 d3             	mov    %rdx,%rbx
    9ab9:	89 f0                	mov    %esi,%eax
    9abb:	48 89 da             	mov    %rbx,%rdx
    9abe:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9ac2:	c9                   	leave
    9ac3:	c3                   	ret

0000000000009ac4 <BinPromote>:
    9ac4:	f3 0f 1e fa          	endbr64
    9ac8:	55                   	push   %rbp
    9ac9:	48 89 e5             	mov    %rsp,%rbp
    9acc:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9ad0:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    9ad4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9ad8:	8b 50 08             	mov    0x8(%rax),%edx
    9adb:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9adf:	8b 40 08             	mov    0x8(%rax),%eax
    9ae2:	89 c1                	mov    %eax,%ecx
    9ae4:	89 d2                	mov    %edx,%edx
    9ae6:	48 89 d0             	mov    %rdx,%rax
    9ae9:	48 01 c0             	add    %rax,%rax
    9aec:	48 01 d0             	add    %rdx,%rax
    9aef:	48 01 c8             	add    %rcx,%rax
    9af2:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    9af9:	00 
    9afa:	48 8d 05 1f 46 00 00 	lea    0x461f(%rip),%rax        # e120 <types.25>
    9b01:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    9b04:	5d                   	pop    %rbp
    9b05:	c3                   	ret

0000000000009b06 <BinCast>:
    9b06:	f3 0f 1e fa          	endbr64
    9b0a:	55                   	push   %rbp
    9b0b:	48 89 e5             	mov    %rsp,%rbp
    9b0e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9b12:	89 75 f4             	mov    %esi,-0xc(%rbp)
    9b15:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9b19:	8b 55 f4             	mov    -0xc(%rbp),%edx
    9b1c:	89 50 08             	mov    %edx,0x8(%rax)
    9b1f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9b23:	8b 40 08             	mov    0x8(%rax),%eax
    9b26:	8b 55 f4             	mov    -0xc(%rbp),%edx
    9b29:	89 c1                	mov    %eax,%ecx
    9b2b:	48 89 c8             	mov    %rcx,%rax
    9b2e:	48 01 c0             	add    %rax,%rax
    9b31:	48 01 c8             	add    %rcx,%rax
    9b34:	48 01 d0             	add    %rdx,%rax
    9b37:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    9b3e:	00 
    9b3f:	48 8d 05 fa 53 00 00 	lea    0x53fa(%rip),%rax        # ef40 <types.24>
    9b46:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    9b4a:	90                   	nop
    9b4b:	ff e0                	jmp    *%rax
    9b4d:	f3 0f 1e fa          	endbr64
    9b51:	eb 5f                	jmp    9bb2 <BinCast+0xac>
    9b53:	f3 0f 1e fa          	endbr64
    9b57:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9b5b:	48 8b 40 10          	mov    0x10(%rax),%rax
    9b5f:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9b63:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    9b68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9b6c:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    9b71:	eb 3f                	jmp    9bb2 <BinCast+0xac>
    9b73:	f3 0f 1e fa          	endbr64
    9b77:	eb 39                	jmp    9bb2 <BinCast+0xac>
    9b79:	f3 0f 1e fa          	endbr64
    9b7d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9b81:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    9b86:	f2 48 0f 2c d0       	cvttsd2si %xmm0,%rdx
    9b8b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9b8f:	48 89 50 10          	mov    %rdx,0x10(%rax)
    9b93:	eb 1d                	jmp    9bb2 <BinCast+0xac>
    9b95:	f3 0f 1e fa          	endbr64
    9b99:	eb 17                	jmp    9bb2 <BinCast+0xac>
    9b9b:	f3 0f 1e fa          	endbr64
    9b9f:	eb 11                	jmp    9bb2 <BinCast+0xac>
    9ba1:	f3 0f 1e fa          	endbr64
    9ba5:	eb 0b                	jmp    9bb2 <BinCast+0xac>
    9ba7:	f3 0f 1e fa          	endbr64
    9bab:	eb 05                	jmp    9bb2 <BinCast+0xac>
    9bad:	f3 0f 1e fa          	endbr64
    9bb1:	90                   	nop
    9bb2:	5d                   	pop    %rbp
    9bb3:	c3                   	ret

0000000000009bb4 <BinFold>:
    9bb4:	f3 0f 1e fa          	endbr64
    9bb8:	55                   	push   %rbp
    9bb9:	48 89 e5             	mov    %rsp,%rbp
    9bbc:	53                   	push   %rbx
    9bbd:	48 83 ec 28          	sub    $0x28,%rsp
    9bc1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9bc5:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    9bc8:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    9bcc:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    9bcf:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    9bd6:	00 
    9bd7:	48 8d 05 c2 53 00 00 	lea    0x53c2(%rip),%rax        # efa0 <ops.23>
    9bde:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    9be2:	90                   	nop
    9be3:	ff e0                	jmp    *%rax
    9be5:	f3 0f 1e fa          	endbr64
    9be9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9bed:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9bf1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9bf5:	48 8d 48 08          	lea    0x8(%rax),%rcx
    9bf9:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    9bfc:	89 c6                	mov    %eax,%esi
    9bfe:	48 89 cf             	mov    %rcx,%rdi
    9c01:	e8 cd e7 ff ff       	call   83d3 <EvalBinErr>
    9c06:	48 89 d1             	mov    %rdx,%rcx
    9c09:	48 89 ca             	mov    %rcx,%rdx
    9c0c:	e9 08 05 00 00       	jmp    a119 <BinFold+0x565>
    9c11:	f3 0f 1e fa          	endbr64
    9c15:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9c19:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9c1d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9c21:	48 83 c0 08          	add    $0x8,%rax
    9c25:	48 89 d6             	mov    %rdx,%rsi
    9c28:	48 89 c7             	mov    %rax,%rdi
    9c2b:	e8 f1 e7 ff ff       	call   8421 <EvalAdd>
    9c30:	48 89 d1             	mov    %rdx,%rcx
    9c33:	48 89 ca             	mov    %rcx,%rdx
    9c36:	e9 de 04 00 00       	jmp    a119 <BinFold+0x565>
    9c3b:	f3 0f 1e fa          	endbr64
    9c3f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9c43:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9c47:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9c4b:	48 83 c0 08          	add    $0x8,%rax
    9c4f:	48 89 d6             	mov    %rdx,%rsi
    9c52:	48 89 c7             	mov    %rax,%rdi
    9c55:	e8 a4 e8 ff ff       	call   84fe <EvalSub>
    9c5a:	48 89 d1             	mov    %rdx,%rcx
    9c5d:	48 89 ca             	mov    %rcx,%rdx
    9c60:	e9 b4 04 00 00       	jmp    a119 <BinFold+0x565>
    9c65:	f3 0f 1e fa          	endbr64
    9c69:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9c6d:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9c71:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9c75:	48 83 c0 08          	add    $0x8,%rax
    9c79:	48 89 d6             	mov    %rdx,%rsi
    9c7c:	48 89 c7             	mov    %rax,%rdi
    9c7f:	e8 57 e9 ff ff       	call   85db <EvalMul>
    9c84:	48 89 d1             	mov    %rdx,%rcx
    9c87:	48 89 ca             	mov    %rcx,%rdx
    9c8a:	e9 8a 04 00 00       	jmp    a119 <BinFold+0x565>
    9c8f:	f3 0f 1e fa          	endbr64
    9c93:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9c97:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9c9b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9c9f:	48 83 c0 08          	add    $0x8,%rax
    9ca3:	48 89 d6             	mov    %rdx,%rsi
    9ca6:	48 89 c7             	mov    %rax,%rdi
    9ca9:	e8 0c ea ff ff       	call   86ba <EvalDiv>
    9cae:	48 89 d1             	mov    %rdx,%rcx
    9cb1:	48 89 ca             	mov    %rcx,%rdx
    9cb4:	e9 60 04 00 00       	jmp    a119 <BinFold+0x565>
    9cb9:	f3 0f 1e fa          	endbr64
    9cbd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9cc1:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9cc5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9cc9:	48 83 c0 08          	add    $0x8,%rax
    9ccd:	48 89 d6             	mov    %rdx,%rsi
    9cd0:	48 89 c7             	mov    %rax,%rdi
    9cd3:	e8 c1 ea ff ff       	call   8799 <EvalMod>
    9cd8:	48 89 d1             	mov    %rdx,%rcx
    9cdb:	48 89 ca             	mov    %rcx,%rdx
    9cde:	e9 36 04 00 00       	jmp    a119 <BinFold+0x565>
    9ce3:	f3 0f 1e fa          	endbr64
    9ce7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9ceb:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9cef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9cf3:	48 83 c0 08          	add    $0x8,%rax
    9cf7:	48 89 d6             	mov    %rdx,%rsi
    9cfa:	48 89 c7             	mov    %rax,%rdi
    9cfd:	e8 9a eb ff ff       	call   889c <EvalPow>
    9d02:	48 89 d1             	mov    %rdx,%rcx
    9d05:	48 89 ca             	mov    %rcx,%rdx
    9d08:	e9 0c 04 00 00       	jmp    a119 <BinFold+0x565>
    9d0d:	f3 0f 1e fa          	endbr64
    9d11:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9d15:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9d19:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9d1d:	48 83 c0 08          	add    $0x8,%rax
    9d21:	48 89 d6             	mov    %rdx,%rsi
    9d24:	48 89 c7             	mov    %rax,%rdi
    9d27:	e8 fd ec ff ff       	call   8a29 <EvalBand>
    9d2c:	48 89 d1             	mov    %rdx,%rcx
    9d2f:	48 89 ca             	mov    %rcx,%rdx
    9d32:	e9 e2 03 00 00       	jmp    a119 <BinFold+0x565>
    9d37:	f3 0f 1e fa          	endbr64
    9d3b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9d3f:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9d43:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9d47:	48 83 c0 08          	add    $0x8,%rax
    9d4b:	48 89 d6             	mov    %rdx,%rsi
    9d4e:	48 89 c7             	mov    %rax,%rdi
    9d51:	e8 c2 ed ff ff       	call   8b18 <EvalBor>
    9d56:	48 89 d1             	mov    %rdx,%rcx
    9d59:	48 89 ca             	mov    %rcx,%rdx
    9d5c:	e9 b8 03 00 00       	jmp    a119 <BinFold+0x565>
    9d61:	f3 0f 1e fa          	endbr64
    9d65:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9d69:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9d6d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9d71:	48 83 c0 08          	add    $0x8,%rax
    9d75:	48 89 d6             	mov    %rdx,%rsi
    9d78:	48 89 c7             	mov    %rax,%rdi
    9d7b:	e8 87 ee ff ff       	call   8c07 <EvalBxor>
    9d80:	48 89 d1             	mov    %rdx,%rcx
    9d83:	48 89 ca             	mov    %rcx,%rdx
    9d86:	e9 8e 03 00 00       	jmp    a119 <BinFold+0x565>
    9d8b:	f3 0f 1e fa          	endbr64
    9d8f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9d93:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9d97:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9d9b:	48 83 c0 08          	add    $0x8,%rax
    9d9f:	48 89 d6             	mov    %rdx,%rsi
    9da2:	48 89 c7             	mov    %rax,%rdi
    9da5:	e8 4c ef ff ff       	call   8cf6 <EvalLsh>
    9daa:	48 89 d1             	mov    %rdx,%rcx
    9dad:	48 89 ca             	mov    %rcx,%rdx
    9db0:	e9 64 03 00 00       	jmp    a119 <BinFold+0x565>
    9db5:	f3 0f 1e fa          	endbr64
    9db9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9dbd:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9dc1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9dc5:	48 83 c0 08          	add    $0x8,%rax
    9dc9:	48 89 d6             	mov    %rdx,%rsi
    9dcc:	48 89 c7             	mov    %rax,%rdi
    9dcf:	e8 1c f0 ff ff       	call   8df0 <EvalRsh>
    9dd4:	48 89 d1             	mov    %rdx,%rcx
    9dd7:	48 89 ca             	mov    %rcx,%rdx
    9dda:	e9 3a 03 00 00       	jmp    a119 <BinFold+0x565>
    9ddf:	f3 0f 1e fa          	endbr64
    9de3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9de7:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9deb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9def:	48 83 c0 08          	add    $0x8,%rax
    9df3:	48 89 d6             	mov    %rdx,%rsi
    9df6:	48 89 c7             	mov    %rax,%rdi
    9df9:	e8 ec f0 ff ff       	call   8eea <EvalEqEq>
    9dfe:	48 89 d1             	mov    %rdx,%rcx
    9e01:	48 89 ca             	mov    %rcx,%rdx
    9e04:	e9 10 03 00 00       	jmp    a119 <BinFold+0x565>
    9e09:	f3 0f 1e fa          	endbr64
    9e0d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9e11:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9e15:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9e19:	48 83 c0 08          	add    $0x8,%rax
    9e1d:	48 89 d6             	mov    %rdx,%rsi
    9e20:	48 89 c7             	mov    %rax,%rdi
    9e23:	e8 bd f1 ff ff       	call   8fe5 <EvalNeq>
    9e28:	48 89 d1             	mov    %rdx,%rcx
    9e2b:	48 89 ca             	mov    %rcx,%rdx
    9e2e:	e9 e6 02 00 00       	jmp    a119 <BinFold+0x565>
    9e33:	f3 0f 1e fa          	endbr64
    9e37:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9e3b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9e3f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9e43:	48 83 c0 08          	add    $0x8,%rax
    9e47:	48 89 d6             	mov    %rdx,%rsi
    9e4a:	48 89 c7             	mov    %rax,%rdi
    9e4d:	e8 8e f2 ff ff       	call   90e0 <EvalLt>
    9e52:	48 89 d1             	mov    %rdx,%rcx
    9e55:	48 89 ca             	mov    %rcx,%rdx
    9e58:	e9 bc 02 00 00       	jmp    a119 <BinFold+0x565>
    9e5d:	f3 0f 1e fa          	endbr64
    9e61:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9e65:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9e69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9e6d:	48 83 c0 08          	add    $0x8,%rax
    9e71:	48 89 d6             	mov    %rdx,%rsi
    9e74:	48 89 c7             	mov    %rax,%rdi
    9e77:	e8 5e f3 ff ff       	call   91da <EvalLe>
    9e7c:	48 89 d1             	mov    %rdx,%rcx
    9e7f:	48 89 ca             	mov    %rcx,%rdx
    9e82:	e9 92 02 00 00       	jmp    a119 <BinFold+0x565>
    9e87:	f3 0f 1e fa          	endbr64
    9e8b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9e8f:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9e93:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9e97:	48 83 c0 08          	add    $0x8,%rax
    9e9b:	48 89 d6             	mov    %rdx,%rsi
    9e9e:	48 89 c7             	mov    %rax,%rdi
    9ea1:	e8 2e f4 ff ff       	call   92d4 <EvalGt>
    9ea6:	48 89 d1             	mov    %rdx,%rcx
    9ea9:	48 89 ca             	mov    %rcx,%rdx
    9eac:	e9 68 02 00 00       	jmp    a119 <BinFold+0x565>
    9eb1:	f3 0f 1e fa          	endbr64
    9eb5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9eb9:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9ebd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9ec1:	48 83 c0 08          	add    $0x8,%rax
    9ec5:	48 89 d6             	mov    %rdx,%rsi
    9ec8:	48 89 c7             	mov    %rax,%rdi
    9ecb:	e8 fe f4 ff ff       	call   93ce <EvalGe>
    9ed0:	48 89 d1             	mov    %rdx,%rcx
    9ed3:	48 89 ca             	mov    %rcx,%rdx
    9ed6:	e9 3e 02 00 00       	jmp    a119 <BinFold+0x565>
    9edb:	f3 0f 1e fa          	endbr64
    9edf:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9ee3:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9ee7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9eeb:	48 83 c0 08          	add    $0x8,%rax
    9eef:	48 89 d6             	mov    %rdx,%rsi
    9ef2:	48 89 c7             	mov    %rax,%rdi
    9ef5:	e8 ce f5 ff ff       	call   94c8 <EvalAnd>
    9efa:	48 89 d1             	mov    %rdx,%rcx
    9efd:	48 89 ca             	mov    %rcx,%rdx
    9f00:	e9 14 02 00 00       	jmp    a119 <BinFold+0x565>
    9f05:	f3 0f 1e fa          	endbr64
    9f09:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f0d:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9f11:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9f15:	48 83 c0 08          	add    $0x8,%rax
    9f19:	48 89 d6             	mov    %rdx,%rsi
    9f1c:	48 89 c7             	mov    %rax,%rdi
    9f1f:	e8 e1 f6 ff ff       	call   9605 <EvalOr>
    9f24:	48 89 d1             	mov    %rdx,%rcx
    9f27:	48 89 ca             	mov    %rcx,%rdx
    9f2a:	e9 ea 01 00 00       	jmp    a119 <BinFold+0x565>
    9f2f:	f3 0f 1e fa          	endbr64
    9f33:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f37:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9f3b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9f3f:	48 83 c0 08          	add    $0x8,%rax
    9f43:	48 89 d6             	mov    %rdx,%rsi
    9f46:	48 89 c7             	mov    %rax,%rdi
    9f49:	e8 f4 f7 ff ff       	call   9742 <EvalMov>
    9f4e:	48 89 d1             	mov    %rdx,%rcx
    9f51:	48 89 ca             	mov    %rcx,%rdx
    9f54:	e9 c0 01 00 00       	jmp    a119 <BinFold+0x565>
    9f59:	f3 0f 1e fa          	endbr64
    9f5d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f61:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9f65:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9f69:	48 83 c0 08          	add    $0x8,%rax
    9f6d:	48 89 d6             	mov    %rdx,%rsi
    9f70:	48 89 c7             	mov    %rax,%rdi
    9f73:	e8 81 f8 ff ff       	call   97f9 <EvalAddEq>
    9f78:	48 89 d1             	mov    %rdx,%rcx
    9f7b:	48 89 ca             	mov    %rcx,%rdx
    9f7e:	e9 96 01 00 00       	jmp    a119 <BinFold+0x565>
    9f83:	f3 0f 1e fa          	endbr64
    9f87:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9f8b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9f8f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9f93:	48 83 c0 08          	add    $0x8,%rax
    9f97:	48 89 d6             	mov    %rdx,%rsi
    9f9a:	48 89 c7             	mov    %rax,%rdi
    9f9d:	e8 98 f8 ff ff       	call   983a <EvalSubEq>
    9fa2:	48 89 d1             	mov    %rdx,%rcx
    9fa5:	48 89 ca             	mov    %rcx,%rdx
    9fa8:	e9 6c 01 00 00       	jmp    a119 <BinFold+0x565>
    9fad:	f3 0f 1e fa          	endbr64
    9fb1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9fb5:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9fb9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9fbd:	48 83 c0 08          	add    $0x8,%rax
    9fc1:	48 89 d6             	mov    %rdx,%rsi
    9fc4:	48 89 c7             	mov    %rax,%rdi
    9fc7:	e8 af f8 ff ff       	call   987b <EvalMulEq>
    9fcc:	48 89 d1             	mov    %rdx,%rcx
    9fcf:	48 89 ca             	mov    %rcx,%rdx
    9fd2:	e9 42 01 00 00       	jmp    a119 <BinFold+0x565>
    9fd7:	f3 0f 1e fa          	endbr64
    9fdb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9fdf:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9fe3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9fe7:	48 83 c0 08          	add    $0x8,%rax
    9feb:	48 89 d6             	mov    %rdx,%rsi
    9fee:	48 89 c7             	mov    %rax,%rdi
    9ff1:	e8 c6 f8 ff ff       	call   98bc <EvalDivEq>
    9ff6:	48 89 d1             	mov    %rdx,%rcx
    9ff9:	48 89 ca             	mov    %rcx,%rdx
    9ffc:	e9 18 01 00 00       	jmp    a119 <BinFold+0x565>
    a001:	f3 0f 1e fa          	endbr64
    a005:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a009:	48 8d 50 08          	lea    0x8(%rax),%rdx
    a00d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a011:	48 83 c0 08          	add    $0x8,%rax
    a015:	48 89 d6             	mov    %rdx,%rsi
    a018:	48 89 c7             	mov    %rax,%rdi
    a01b:	e8 dd f8 ff ff       	call   98fd <EvalModEq>
    a020:	48 89 d1             	mov    %rdx,%rcx
    a023:	48 89 ca             	mov    %rcx,%rdx
    a026:	e9 ee 00 00 00       	jmp    a119 <BinFold+0x565>
    a02b:	f3 0f 1e fa          	endbr64
    a02f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a033:	48 8d 50 08          	lea    0x8(%rax),%rdx
    a037:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a03b:	48 83 c0 08          	add    $0x8,%rax
    a03f:	48 89 d6             	mov    %rdx,%rsi
    a042:	48 89 c7             	mov    %rax,%rdi
    a045:	e8 f4 f8 ff ff       	call   993e <EvalPowEq>
    a04a:	48 89 d1             	mov    %rdx,%rcx
    a04d:	48 89 ca             	mov    %rcx,%rdx
    a050:	e9 c4 00 00 00       	jmp    a119 <BinFold+0x565>
    a055:	f3 0f 1e fa          	endbr64
    a059:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a05d:	48 8d 50 08          	lea    0x8(%rax),%rdx
    a061:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a065:	48 83 c0 08          	add    $0x8,%rax
    a069:	48 89 d6             	mov    %rdx,%rsi
    a06c:	48 89 c7             	mov    %rax,%rdi
    a06f:	e8 0b f9 ff ff       	call   997f <EvalBandEq>
    a074:	48 89 d1             	mov    %rdx,%rcx
    a077:	48 89 ca             	mov    %rcx,%rdx
    a07a:	e9 9a 00 00 00       	jmp    a119 <BinFold+0x565>
    a07f:	f3 0f 1e fa          	endbr64
    a083:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a087:	48 8d 50 08          	lea    0x8(%rax),%rdx
    a08b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a08f:	48 83 c0 08          	add    $0x8,%rax
    a093:	48 89 d6             	mov    %rdx,%rsi
    a096:	48 89 c7             	mov    %rax,%rdi
    a099:	e8 22 f9 ff ff       	call   99c0 <EvalBorEq>
    a09e:	48 89 d1             	mov    %rdx,%rcx
    a0a1:	48 89 ca             	mov    %rcx,%rdx
    a0a4:	eb 73                	jmp    a119 <BinFold+0x565>
    a0a6:	f3 0f 1e fa          	endbr64
    a0aa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a0ae:	48 8d 50 08          	lea    0x8(%rax),%rdx
    a0b2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a0b6:	48 83 c0 08          	add    $0x8,%rax
    a0ba:	48 89 d6             	mov    %rdx,%rsi
    a0bd:	48 89 c7             	mov    %rax,%rdi
    a0c0:	e8 3c f9 ff ff       	call   9a01 <EvalBxorEq>
    a0c5:	48 89 d1             	mov    %rdx,%rcx
    a0c8:	48 89 ca             	mov    %rcx,%rdx
    a0cb:	eb 4c                	jmp    a119 <BinFold+0x565>
    a0cd:	f3 0f 1e fa          	endbr64
    a0d1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a0d5:	48 8d 50 08          	lea    0x8(%rax),%rdx
    a0d9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a0dd:	48 83 c0 08          	add    $0x8,%rax
    a0e1:	48 89 d6             	mov    %rdx,%rsi
    a0e4:	48 89 c7             	mov    %rax,%rdi
    a0e7:	e8 56 f9 ff ff       	call   9a42 <EvalLshEq>
    a0ec:	48 89 d1             	mov    %rdx,%rcx
    a0ef:	48 89 ca             	mov    %rcx,%rdx
    a0f2:	eb 25                	jmp    a119 <BinFold+0x565>
    a0f4:	f3 0f 1e fa          	endbr64
    a0f8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a0fc:	48 8d 50 08          	lea    0x8(%rax),%rdx
    a100:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a104:	48 83 c0 08          	add    $0x8,%rax
    a108:	48 89 d6             	mov    %rdx,%rsi
    a10b:	48 89 c7             	mov    %rax,%rdi
    a10e:	e8 70 f9 ff ff       	call   9a83 <EvalRshEq>
    a113:	48 89 d1             	mov    %rdx,%rcx
    a116:	48 89 ca             	mov    %rcx,%rdx
    a119:	48 89 c6             	mov    %rax,%rsi
    a11c:	48 89 d7             	mov    %rdx,%rdi
    a11f:	48 89 c1             	mov    %rax,%rcx
    a122:	48 89 d3             	mov    %rdx,%rbx
    a125:	89 f0                	mov    %esi,%eax
    a127:	48 89 da             	mov    %rbx,%rdx
    a12a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a12e:	c9                   	leave
    a12f:	c3                   	ret

000000000000a130 <BinConstConst>:
    a130:	f3 0f 1e fa          	endbr64
    a134:	55                   	push   %rbp
    a135:	48 89 e5             	mov    %rsp,%rbp
    a138:	48 83 ec 40          	sub    $0x40,%rsp
    a13c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a140:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a144:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a147:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a14b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a14f:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    a153:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    a158:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a15c:	8b 40 08             	mov    0x8(%rax),%eax
    a15f:	89 45 e8             	mov    %eax,-0x18(%rbp)
    a162:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    a166:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    a169:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a16d:	89 ce                	mov    %ecx,%esi
    a16f:	48 89 c7             	mov    %rax,%rdi
    a172:	e8 3d fa ff ff       	call   9bb4 <BinFold>
    a177:	89 c1                	mov    %eax,%ecx
    a179:	48 89 d0             	mov    %rdx,%rax
    a17c:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    a17f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    a183:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    a187:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a18b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    a18f:	48 89 01             	mov    %rax,(%rcx)
    a192:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    a196:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    a19a:	48 89 41 10          	mov    %rax,0x10(%rcx)
    a19e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a1a2:	c9                   	leave
    a1a3:	c3                   	ret

000000000000a1a4 <BinConstRef>:
    a1a4:	f3 0f 1e fa          	endbr64
    a1a8:	55                   	push   %rbp
    a1a9:	48 89 e5             	mov    %rsp,%rbp
    a1ac:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a1b0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a1b4:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a1b7:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a1bb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a1bf:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a1c3:	0f 11 00             	movups %xmm0,(%rax)
    a1c6:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a1cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a1cf:	5d                   	pop    %rbp
    a1d0:	c3                   	ret

000000000000a1d1 <BinConstCall>:
    a1d1:	f3 0f 1e fa          	endbr64
    a1d5:	55                   	push   %rbp
    a1d6:	48 89 e5             	mov    %rsp,%rbp
    a1d9:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a1dd:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a1e1:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a1e4:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a1e8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a1ec:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a1f0:	0f 11 00             	movups %xmm0,(%rax)
    a1f3:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a1f8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a1fc:	5d                   	pop    %rbp
    a1fd:	c3                   	ret

000000000000a1fe <BinRefConst>:
    a1fe:	f3 0f 1e fa          	endbr64
    a202:	55                   	push   %rbp
    a203:	48 89 e5             	mov    %rsp,%rbp
    a206:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a20a:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a20e:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a211:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a215:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a219:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a21d:	0f 11 00             	movups %xmm0,(%rax)
    a220:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a225:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a229:	5d                   	pop    %rbp
    a22a:	c3                   	ret

000000000000a22b <BinRefRef>:
    a22b:	f3 0f 1e fa          	endbr64
    a22f:	55                   	push   %rbp
    a230:	48 89 e5             	mov    %rsp,%rbp
    a233:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a237:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a23b:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a23e:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a242:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a246:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a24a:	0f 11 00             	movups %xmm0,(%rax)
    a24d:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a252:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a256:	5d                   	pop    %rbp
    a257:	c3                   	ret

000000000000a258 <BinRefCall>:
    a258:	f3 0f 1e fa          	endbr64
    a25c:	55                   	push   %rbp
    a25d:	48 89 e5             	mov    %rsp,%rbp
    a260:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a264:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a268:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a26b:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a26f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a273:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a277:	0f 11 00             	movups %xmm0,(%rax)
    a27a:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a27f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a283:	5d                   	pop    %rbp
    a284:	c3                   	ret

000000000000a285 <BinCallConst>:
    a285:	f3 0f 1e fa          	endbr64
    a289:	55                   	push   %rbp
    a28a:	48 89 e5             	mov    %rsp,%rbp
    a28d:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a291:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a295:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a298:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a29c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a2a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a2a4:	0f 11 00             	movups %xmm0,(%rax)
    a2a7:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a2ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a2b0:	5d                   	pop    %rbp
    a2b1:	c3                   	ret

000000000000a2b2 <BinCallRef>:
    a2b2:	f3 0f 1e fa          	endbr64
    a2b6:	55                   	push   %rbp
    a2b7:	48 89 e5             	mov    %rsp,%rbp
    a2ba:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a2be:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a2c2:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a2c5:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a2c9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a2cd:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a2d1:	0f 11 00             	movups %xmm0,(%rax)
    a2d4:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a2d9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a2dd:	5d                   	pop    %rbp
    a2de:	c3                   	ret

000000000000a2df <BinCallCall>:
    a2df:	f3 0f 1e fa          	endbr64
    a2e3:	55                   	push   %rbp
    a2e4:	48 89 e5             	mov    %rsp,%rbp
    a2e7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    a2eb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    a2ef:	89 55 cc             	mov    %edx,-0x34(%rbp)
    a2f2:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    a2f6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a2fa:	66 0f ef c0          	pxor   %xmm0,%xmm0
    a2fe:	0f 11 00             	movups %xmm0,(%rax)
    a301:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    a306:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    a30a:	5d                   	pop    %rbp
    a30b:	c3                   	ret

000000000000a30c <CompileBin>:
    a30c:	f3 0f 1e fa          	endbr64
    a310:	55                   	push   %rbp
    a311:	48 89 e5             	mov    %rsp,%rbp
    a314:	48 83 ec 30          	sub    $0x30,%rsp
    a318:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    a31c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    a320:	89 55 dc             	mov    %edx,-0x24(%rbp)
    a323:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    a327:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    a32e:	00 00 
    a330:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    a334:	31 c0                	xor    %eax,%eax
    a336:	8b 45 dc             	mov    -0x24(%rbp),%eax
    a339:	89 c7                	mov    %eax,%edi
    a33b:	e8 5a d5 ff ff       	call   789a <TkToOp>
    a340:	89 45 f0             	mov    %eax,-0x10(%rbp)
    a343:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    a347:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a34b:	48 89 d6             	mov    %rdx,%rsi
    a34e:	48 89 c7             	mov    %rax,%rdi
    a351:	e8 6e f7 ff ff       	call   9ac4 <BinPromote>
    a356:	89 45 f4             	mov    %eax,-0xc(%rbp)
    a359:	8b 55 f4             	mov    -0xc(%rbp),%edx
    a35c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a360:	89 d6                	mov    %edx,%esi
    a362:	48 89 c7             	mov    %rax,%rdi
    a365:	e8 9c f7 ff ff       	call   9b06 <BinCast>
    a36a:	8b 55 f4             	mov    -0xc(%rbp),%edx
    a36d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a371:	89 d6                	mov    %edx,%esi
    a373:	48 89 c7             	mov    %rax,%rdi
    a376:	e8 8b f7 ff ff       	call   9b06 <BinCast>
    a37b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a37f:	8b 10                	mov    (%rax),%edx
    a381:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    a385:	8b 00                	mov    (%rax),%eax
    a387:	89 c1                	mov    %eax,%ecx
    a389:	89 d2                	mov    %edx,%edx
    a38b:	48 89 d0             	mov    %rdx,%rax
    a38e:	48 01 c0             	add    %rax,%rax
    a391:	48 01 d0             	add    %rdx,%rax
    a394:	48 01 c8             	add    %rcx,%rax
    a397:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    a39e:	00 
    a39f:	48 8d 05 ba 4f 00 00 	lea    0x4fba(%rip),%rax        # f360 <irs.2>
    a3a6:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    a3aa:	90                   	nop
    a3ab:	ff e0                	jmp    *%rax
    a3ad:	f3 0f 1e fa          	endbr64
    a3b1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a3b5:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a3b9:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a3bc:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a3c0:	48 89 c7             	mov    %rax,%rdi
    a3c3:	e8 68 fd ff ff       	call   a130 <BinConstConst>
    a3c8:	e9 ef 00 00 00       	jmp    a4bc <CompileBin+0x1b0>
    a3cd:	f3 0f 1e fa          	endbr64
    a3d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a3d5:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a3d9:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a3dc:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a3e0:	48 89 c7             	mov    %rax,%rdi
    a3e3:	e8 bc fd ff ff       	call   a1a4 <BinConstRef>
    a3e8:	e9 cf 00 00 00       	jmp    a4bc <CompileBin+0x1b0>
    a3ed:	f3 0f 1e fa          	endbr64
    a3f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a3f5:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a3f9:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a3fc:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a400:	48 89 c7             	mov    %rax,%rdi
    a403:	e8 c9 fd ff ff       	call   a1d1 <BinConstCall>
    a408:	e9 af 00 00 00       	jmp    a4bc <CompileBin+0x1b0>
    a40d:	f3 0f 1e fa          	endbr64
    a411:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a415:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a419:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a41c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a420:	48 89 c7             	mov    %rax,%rdi
    a423:	e8 d6 fd ff ff       	call   a1fe <BinRefConst>
    a428:	e9 8f 00 00 00       	jmp    a4bc <CompileBin+0x1b0>
    a42d:	f3 0f 1e fa          	endbr64
    a431:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a435:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a439:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a43c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a440:	48 89 c7             	mov    %rax,%rdi
    a443:	e8 e3 fd ff ff       	call   a22b <BinRefRef>
    a448:	eb 72                	jmp    a4bc <CompileBin+0x1b0>
    a44a:	f3 0f 1e fa          	endbr64
    a44e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a452:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a456:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a459:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a45d:	48 89 c7             	mov    %rax,%rdi
    a460:	e8 f3 fd ff ff       	call   a258 <BinRefCall>
    a465:	eb 55                	jmp    a4bc <CompileBin+0x1b0>
    a467:	f3 0f 1e fa          	endbr64
    a46b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a46f:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a473:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a476:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a47a:	48 89 c7             	mov    %rax,%rdi
    a47d:	e8 03 fe ff ff       	call   a285 <BinCallConst>
    a482:	eb 38                	jmp    a4bc <CompileBin+0x1b0>
    a484:	f3 0f 1e fa          	endbr64
    a488:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a48c:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a490:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a493:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a497:	48 89 c7             	mov    %rax,%rdi
    a49a:	e8 13 fe ff ff       	call   a2b2 <BinCallRef>
    a49f:	eb 1b                	jmp    a4bc <CompileBin+0x1b0>
    a4a1:	f3 0f 1e fa          	endbr64
    a4a5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a4a9:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    a4ad:	8b 55 f0             	mov    -0x10(%rbp),%edx
    a4b0:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    a4b4:	48 89 c7             	mov    %rax,%rdi
    a4b7:	e8 23 fe ff ff       	call   a2df <BinCallCall>
    a4bc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a4c0:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    a4c7:	00 00 
    a4c9:	74 05                	je     a4d0 <CompileBin+0x1c4>
    a4cb:	e8 30 9d ff ff       	call   4200 <__stack_chk_fail@plt>
    a4d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    a4d4:	c9                   	leave
    a4d5:	c3                   	ret

000000000000a4d6 <MemAlloc>:
    a4d6:	f3 0f 1e fa          	endbr64
    a4da:	55                   	push   %rbp
    a4db:	48 89 e5             	mov    %rsp,%rbp
    a4de:	53                   	push   %rbx
    a4df:	48 83 ec 08          	sub    $0x8,%rsp
    a4e3:	e8 01 9f ff ff       	call   43e9 <GetSrc>
    a4e8:	be 00 80 00 00       	mov    $0x8000,%esi
    a4ed:	48 89 c7             	mov    %rax,%rdi
    a4f0:	e8 0e 9f ff ff       	call   4403 <ArenaAlloc>
    a4f5:	e8 fc 9e ff ff       	call   43f6 <GetStrings>
    a4fa:	be 00 40 00 00       	mov    $0x4000,%esi
    a4ff:	48 89 c7             	mov    %rax,%rdi
    a502:	e8 fc 9e ff ff       	call   4403 <ArenaAlloc>
    a507:	e8 ea 9e ff ff       	call   43f6 <GetStrings>
    a50c:	48 89 c3             	mov    %rax,%rbx
    a50f:	e8 39 a4 ff ff       	call   494d <GetInterns>
    a514:	ba 00 01 00 00       	mov    $0x100,%edx
    a519:	48 89 de             	mov    %rbx,%rsi
    a51c:	48 89 c7             	mov    %rax,%rdi
    a51f:	e8 36 a4 ff ff       	call   495a <TableAlloc>
    a524:	e8 2f a0 ff ff       	call   4558 <GetConsts>
    a529:	ba 10 00 00 00       	mov    $0x10,%edx
    a52e:	be 00 01 00 00       	mov    $0x100,%esi
    a533:	48 89 c7             	mov    %rax,%rdi
    a536:	e8 5e a0 ff ff       	call   4599 <VecAlloc>
    a53b:	e8 25 a0 ff ff       	call   4565 <GetLocals>
    a540:	ba 18 00 00 00       	mov    $0x18,%edx
    a545:	be 00 01 00 00       	mov    $0x100,%esi
    a54a:	48 89 c7             	mov    %rax,%rdi
    a54d:	e8 47 a0 ff ff       	call   4599 <VecAlloc>
    a552:	e8 1b a0 ff ff       	call   4572 <GetGlobals>
    a557:	ba 18 00 00 00       	mov    $0x18,%edx
    a55c:	be 00 01 00 00       	mov    $0x100,%esi
    a561:	48 89 c7             	mov    %rax,%rdi
    a564:	e8 30 a0 ff ff       	call   4599 <VecAlloc>
    a569:	e8 a0 a9 ff ff       	call   4f0e <GetEnv>
    a56e:	be 00 01 00 00       	mov    $0x100,%esi
    a573:	48 89 c7             	mov    %rax,%rdi
    a576:	e8 a0 a9 ff ff       	call   4f1b <EnvAlloc>
    a57b:	e8 ff 9f ff ff       	call   457f <GetCode>
    a580:	ba 04 00 00 00       	mov    $0x4,%edx
    a585:	be 00 01 00 00       	mov    $0x100,%esi
    a58a:	48 89 c7             	mov    %rax,%rdi
    a58d:	e8 07 a0 ff ff       	call   4599 <VecAlloc>
    a592:	e8 f5 9f ff ff       	call   458c <GetFuncs>
    a597:	ba 10 00 00 00       	mov    $0x10,%edx
    a59c:	be 80 00 00 00       	mov    $0x80,%esi
    a5a1:	48 89 c7             	mov    %rax,%rdi
    a5a4:	e8 f0 9f ff ff       	call   4599 <VecAlloc>
    a5a9:	90                   	nop
    a5aa:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a5ae:	c9                   	leave
    a5af:	c3                   	ret

000000000000a5b0 <MemDealloc>:
    a5b0:	f3 0f 1e fa          	endbr64
    a5b4:	55                   	push   %rbp
    a5b5:	48 89 e5             	mov    %rsp,%rbp
    a5b8:	e8 cf 9f ff ff       	call   458c <GetFuncs>
    a5bd:	48 8b 00             	mov    (%rax),%rax
    a5c0:	48 89 c7             	mov    %rax,%rdi
    a5c3:	e8 d8 9b ff ff       	call   41a0 <free@plt>
    a5c8:	e8 b2 9f ff ff       	call   457f <GetCode>
    a5cd:	48 8b 00             	mov    (%rax),%rax
    a5d0:	48 89 c7             	mov    %rax,%rdi
    a5d3:	e8 c8 9b ff ff       	call   41a0 <free@plt>
    a5d8:	e8 31 a9 ff ff       	call   4f0e <GetEnv>
    a5dd:	48 8b 00             	mov    (%rax),%rax
    a5e0:	48 89 c7             	mov    %rax,%rdi
    a5e3:	e8 b8 9b ff ff       	call   41a0 <free@plt>
    a5e8:	e8 85 9f ff ff       	call   4572 <GetGlobals>
    a5ed:	48 8b 00             	mov    (%rax),%rax
    a5f0:	48 89 c7             	mov    %rax,%rdi
    a5f3:	e8 a8 9b ff ff       	call   41a0 <free@plt>
    a5f8:	e8 68 9f ff ff       	call   4565 <GetLocals>
    a5fd:	48 8b 00             	mov    (%rax),%rax
    a600:	48 89 c7             	mov    %rax,%rdi
    a603:	e8 98 9b ff ff       	call   41a0 <free@plt>
    a608:	e8 4b 9f ff ff       	call   4558 <GetConsts>
    a60d:	48 8b 00             	mov    (%rax),%rax
    a610:	48 89 c7             	mov    %rax,%rdi
    a613:	e8 88 9b ff ff       	call   41a0 <free@plt>
    a618:	e8 30 a3 ff ff       	call   494d <GetInterns>
    a61d:	48 8b 00             	mov    (%rax),%rax
    a620:	48 89 c7             	mov    %rax,%rdi
    a623:	e8 78 9b ff ff       	call   41a0 <free@plt>
    a628:	e8 c9 9d ff ff       	call   43f6 <GetStrings>
    a62d:	48 8b 00             	mov    (%rax),%rax
    a630:	48 89 c7             	mov    %rax,%rdi
    a633:	e8 68 9b ff ff       	call   41a0 <free@plt>
    a638:	e8 ac 9d ff ff       	call   43e9 <GetSrc>
    a63d:	48 8b 00             	mov    (%rax),%rax
    a640:	48 89 c7             	mov    %rax,%rdi
    a643:	e8 58 9b ff ff       	call   41a0 <free@plt>
    a648:	90                   	nop
    a649:	5d                   	pop    %rbp
    a64a:	c3                   	ret

000000000000a64b <OnSig>:
    a64b:	f3 0f 1e fa          	endbr64
    a64f:	55                   	push   %rbp
    a650:	48 89 e5             	mov    %rsp,%rbp
    a653:	48 83 ec 10          	sub    $0x10,%rsp
    a657:	89 7d fc             	mov    %edi,-0x4(%rbp)
    a65a:	e8 2b ab ff ff       	call   518a <GetJmp>
    a65f:	be 00 00 00 00       	mov    $0x0,%esi
    a664:	48 89 c7             	mov    %rax,%rdi
    a667:	e8 64 9c ff ff       	call   42d0 <longjmp@plt>

000000000000a66c <Init>:
    a66c:	55                   	push   %rbp
    a66d:	48 89 e5             	mov    %rsp,%rbp
    a670:	53                   	push   %rbx
    a671:	48 83 ec 08          	sub    $0x8,%rsp
    a675:	e8 5c fe ff ff       	call   a4d6 <MemAlloc>
    a67a:	e8 ce a2 ff ff       	call   494d <GetInterns>
    a67f:	48 89 c3             	mov    %rax,%rbx
    a682:	e8 62 9d ff ff       	call   43e9 <GetSrc>
    a687:	48 89 de             	mov    %rbx,%rsi
    a68a:	48 89 c7             	mov    %rax,%rdi
    a68d:	e8 cb ac ff ff       	call   535d <LexerInit>
    a692:	e8 28 c1 ff ff       	call   67bf <ParserInit>
    a697:	e8 a8 ce ff ff       	call   7544 <CompilerInit>
    a69c:	48 8d 05 a8 ff ff ff 	lea    -0x58(%rip),%rax        # a64b <OnSig>
    a6a3:	48 89 c6             	mov    %rax,%rsi
    a6a6:	bf 02 00 00 00       	mov    $0x2,%edi
    a6ab:	e8 e0 9b ff ff       	call   4290 <__sysv_signal@plt>
    a6b0:	48 8d 05 94 ff ff ff 	lea    -0x6c(%rip),%rax        # a64b <OnSig>
    a6b7:	48 89 c6             	mov    %rax,%rsi
    a6ba:	bf 14 00 00 00       	mov    $0x14,%edi
    a6bf:	e8 cc 9b ff ff       	call   4290 <__sysv_signal@plt>
    a6c4:	48 8d 05 80 ff ff ff 	lea    -0x80(%rip),%rax        # a64b <OnSig>
    a6cb:	48 89 c6             	mov    %rax,%rsi
    a6ce:	bf 09 00 00 00       	mov    $0x9,%edi
    a6d3:	e8 b8 9b ff ff       	call   4290 <__sysv_signal@plt>
    a6d8:	90                   	nop
    a6d9:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    a6dd:	c9                   	leave
    a6de:	c3                   	ret

000000000000a6df <Run>:
    a6df:	55                   	push   %rbp
    a6e0:	48 89 e5             	mov    %rsp,%rbp
    a6e3:	e8 01 9d ff ff       	call   43e9 <GetSrc>
    a6e8:	48 8b 00             	mov    (%rax),%rax
    a6eb:	48 89 c7             	mov    %rax,%rdi
    a6ee:	e8 c5 ac ff ff       	call   53b8 <LexReinit>
    a6f3:	e8 2c cd ff ff       	call   7424 <Parse>
    a6f8:	90                   	nop
    a6f9:	5d                   	pop    %rbp
    a6fa:	c3                   	ret

000000000000a6fb <Repl>:
    a6fb:	55                   	push   %rbp
    a6fc:	48 89 e5             	mov    %rsp,%rbp
    a6ff:	48 83 ec 10          	sub    $0x10,%rsp
    a703:	e8 64 ff ff ff       	call   a66c <Init>
    a708:	e8 dc 9c ff ff       	call   43e9 <GetSrc>
    a70d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    a711:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a715:	48 8b 00             	mov    (%rax),%rax
    a718:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    a71c:	48 8d 05 c6 09 00 00 	lea    0x9c6(%rip),%rax        # b0e9 <_IO_stdin_used+0xe9>
    a723:	48 89 c7             	mov    %rax,%rdi
    a726:	b8 00 00 00 00       	mov    $0x0,%eax
    a72b:	e8 e0 9a ff ff       	call   4210 <printf@plt>
    a730:	48 8b 15 89 4c 00 00 	mov    0x4c89(%rip),%rdx        # f3c0 <stdin@GLIBC_2.2.5>
    a737:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a73b:	8b 40 0c             	mov    0xc(%rax),%eax
    a73e:	89 c1                	mov    %eax,%ecx
    a740:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    a744:	89 ce                	mov    %ecx,%esi
    a746:	48 89 c7             	mov    %rax,%rdi
    a749:	e8 f2 9a ff ff       	call   4240 <fgets@plt>
    a74e:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    a752:	e8 88 ff ff ff       	call   a6df <Run>
    a757:	90                   	nop
    a758:	eb c2                	jmp    a71c <Repl+0x21>

000000000000a75a <Load>:
    a75a:	55                   	push   %rbp
    a75b:	48 89 e5             	mov    %rsp,%rbp
    a75e:	48 83 ec 10          	sub    $0x10,%rsp
    a762:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    a766:	e8 01 ff ff ff       	call   a66c <Init>
    a76b:	e8 79 9c ff ff       	call   43e9 <GetSrc>
    a770:	48 89 c2             	mov    %rax,%rdx
    a773:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    a777:	48 89 c6             	mov    %rax,%rsi
    a77a:	48 89 d7             	mov    %rdx,%rdi
    a77d:	e8 df aa ff ff       	call   5261 <IoRead>
    a782:	e8 58 ff ff ff       	call   a6df <Run>
    a787:	b8 00 00 00 00       	mov    $0x0,%eax
    a78c:	c9                   	leave
    a78d:	c3                   	ret

000000000000a78e <Deinit>:
    a78e:	55                   	push   %rbp
    a78f:	48 89 e5             	mov    %rsp,%rbp
    a792:	48 83 ec 10          	sub    $0x10,%rsp
    a796:	89 7d fc             	mov    %edi,-0x4(%rbp)
    a799:	e8 12 fe ff ff       	call   a5b0 <MemDealloc>
    a79e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    a7a1:	c9                   	leave
    a7a2:	c3                   	ret

000000000000a7a3 <main>:
    a7a3:	f3 0f 1e fa          	endbr64
    a7a7:	55                   	push   %rbp
    a7a8:	48 89 e5             	mov    %rsp,%rbp
    a7ab:	48 83 ec 20          	sub    $0x20,%rsp
    a7af:	89 7d ec             	mov    %edi,-0x14(%rbp)
    a7b2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    a7b6:	e8 cf a9 ff ff       	call   518a <GetJmp>
    a7bb:	48 89 c7             	mov    %rax,%rdi
    a7be:	e8 8d 9a ff ff       	call   4250 <_setjmp@plt>
    a7c3:	f3 0f 1e fa          	endbr64
    a7c7:	89 45 fc             	mov    %eax,-0x4(%rbp)
    a7ca:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    a7ce:	74 0c                	je     a7dc <main+0x39>
    a7d0:	8b 45 fc             	mov    -0x4(%rbp),%eax
    a7d3:	89 c7                	mov    %eax,%edi
    a7d5:	e8 b4 ff ff ff       	call   a78e <Deinit>
    a7da:	eb 20                	jmp    a7fc <main+0x59>
    a7dc:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
    a7e0:	75 07                	jne    a7e9 <main+0x46>
    a7e2:	e8 14 ff ff ff       	call   a6fb <Repl>
    a7e7:	eb 13                	jmp    a7fc <main+0x59>
    a7e9:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    a7ed:	48 83 c0 08          	add    $0x8,%rax
    a7f1:	48 8b 00             	mov    (%rax),%rax
    a7f4:	48 89 c7             	mov    %rax,%rdi
    a7f7:	e8 5e ff ff ff       	call   a75a <Load>
    a7fc:	c9                   	leave
    a7fd:	c3                   	ret

Disassembly of section .fini:

000000000000a800 <_fini>:
    a800:	f3 0f 1e fa          	endbr64
    a804:	48 83 ec 08          	sub    $0x8,%rsp
    a808:	48 83 c4 08          	add    $0x8,%rsp
    a80c:	c3                   	ret
