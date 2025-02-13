
bin/bs:     file format elf64-x86-64


Disassembly of section .init:

0000000000004000 <_init>:
    4000:	f3 0f 1e fa          	endbr64
    4004:	48 83 ec 08          	sub    $0x8,%rsp
    4008:	48 8b 05 d9 8f 00 00 	mov    0x8fd9(%rip),%rax        # cfe8 <__gmon_start__@Base>
    400f:	48 85 c0             	test   %rax,%rax
    4012:	74 02                	je     4016 <_init+0x16>
    4014:	ff d0                	call   *%rax
    4016:	48 83 c4 08          	add    $0x8,%rsp
    401a:	c3                   	ret

Disassembly of section .plt:

0000000000004020 <.plt>:
    4020:	ff 35 f2 8e 00 00    	push   0x8ef2(%rip)        # cf18 <_GLOBAL_OFFSET_TABLE_+0x8>
    4026:	ff 25 f4 8e 00 00    	jmp    *0x8ef4(%rip)        # cf20 <_GLOBAL_OFFSET_TABLE_+0x10>
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
    4194:	ff 25 5e 8e 00 00    	jmp    *0x8e5e(%rip)        # cff8 <__cxa_finalize@GLIBC_2.2.5>
    419a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

Disassembly of section .plt.sec:

00000000000041a0 <free@plt>:
    41a0:	f3 0f 1e fa          	endbr64
    41a4:	ff 25 7e 8d 00 00    	jmp    *0x8d7e(%rip)        # cf28 <free@GLIBC_2.2.5>
    41aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041b0 <puts@plt>:
    41b0:	f3 0f 1e fa          	endbr64
    41b4:	ff 25 76 8d 00 00    	jmp    *0x8d76(%rip)        # cf30 <puts@GLIBC_2.2.5>
    41ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041c0 <fread@plt>:
    41c0:	f3 0f 1e fa          	endbr64
    41c4:	ff 25 6e 8d 00 00    	jmp    *0x8d6e(%rip)        # cf38 <fread@GLIBC_2.2.5>
    41ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041d0 <strtod@plt>:
    41d0:	f3 0f 1e fa          	endbr64
    41d4:	ff 25 66 8d 00 00    	jmp    *0x8d66(%rip)        # cf40 <strtod@GLIBC_2.2.5>
    41da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041e0 <pow@plt>:
    41e0:	f3 0f 1e fa          	endbr64
    41e4:	ff 25 5e 8d 00 00    	jmp    *0x8d5e(%rip)        # cf48 <pow@GLIBC_2.29>
    41ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000041f0 <fclose@plt>:
    41f0:	f3 0f 1e fa          	endbr64
    41f4:	ff 25 56 8d 00 00    	jmp    *0x8d56(%rip)        # cf50 <fclose@GLIBC_2.2.5>
    41fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004200 <__stack_chk_fail@plt>:
    4200:	f3 0f 1e fa          	endbr64
    4204:	ff 25 4e 8d 00 00    	jmp    *0x8d4e(%rip)        # cf58 <__stack_chk_fail@GLIBC_2.4>
    420a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004210 <printf@plt>:
    4210:	f3 0f 1e fa          	endbr64
    4214:	ff 25 46 8d 00 00    	jmp    *0x8d46(%rip)        # cf60 <printf@GLIBC_2.2.5>
    421a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004220 <__isoc23_strtoll@plt>:
    4220:	f3 0f 1e fa          	endbr64
    4224:	ff 25 3e 8d 00 00    	jmp    *0x8d3e(%rip)        # cf68 <__isoc23_strtoll@GLIBC_2.38>
    422a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004230 <memcmp@plt>:
    4230:	f3 0f 1e fa          	endbr64
    4234:	ff 25 36 8d 00 00    	jmp    *0x8d36(%rip)        # cf70 <memcmp@GLIBC_2.2.5>
    423a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004240 <fgets@plt>:
    4240:	f3 0f 1e fa          	endbr64
    4244:	ff 25 2e 8d 00 00    	jmp    *0x8d2e(%rip)        # cf78 <fgets@GLIBC_2.2.5>
    424a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004250 <_setjmp@plt>:
    4250:	f3 0f 1e fa          	endbr64
    4254:	ff 25 26 8d 00 00    	jmp    *0x8d26(%rip)        # cf80 <_setjmp@GLIBC_2.2.5>
    425a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004260 <calloc@plt>:
    4260:	f3 0f 1e fa          	endbr64
    4264:	ff 25 1e 8d 00 00    	jmp    *0x8d1e(%rip)        # cf88 <calloc@GLIBC_2.2.5>
    426a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004270 <ftell@plt>:
    4270:	f3 0f 1e fa          	endbr64
    4274:	ff 25 16 8d 00 00    	jmp    *0x8d16(%rip)        # cf90 <ftell@GLIBC_2.2.5>
    427a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004280 <memcpy@plt>:
    4280:	f3 0f 1e fa          	endbr64
    4284:	ff 25 0e 8d 00 00    	jmp    *0x8d0e(%rip)        # cf98 <memcpy@GLIBC_2.14>
    428a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000004290 <__sysv_signal@plt>:
    4290:	f3 0f 1e fa          	endbr64
    4294:	ff 25 06 8d 00 00    	jmp    *0x8d06(%rip)        # cfa0 <__sysv_signal@GLIBC_2.2.5>
    429a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042a0 <malloc@plt>:
    42a0:	f3 0f 1e fa          	endbr64
    42a4:	ff 25 fe 8c 00 00    	jmp    *0x8cfe(%rip)        # cfa8 <malloc@GLIBC_2.2.5>
    42aa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042b0 <fseek@plt>:
    42b0:	f3 0f 1e fa          	endbr64
    42b4:	ff 25 f6 8c 00 00    	jmp    *0x8cf6(%rip)        # cfb0 <fseek@GLIBC_2.2.5>
    42ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042c0 <realloc@plt>:
    42c0:	f3 0f 1e fa          	endbr64
    42c4:	ff 25 ee 8c 00 00    	jmp    *0x8cee(%rip)        # cfb8 <realloc@GLIBC_2.2.5>
    42ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042d0 <longjmp@plt>:
    42d0:	f3 0f 1e fa          	endbr64
    42d4:	ff 25 e6 8c 00 00    	jmp    *0x8ce6(%rip)        # cfc0 <longjmp@GLIBC_2.2.5>
    42da:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042e0 <fopen@plt>:
    42e0:	f3 0f 1e fa          	endbr64
    42e4:	ff 25 de 8c 00 00    	jmp    *0x8cde(%rip)        # cfc8 <fopen@GLIBC_2.2.5>
    42ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000000042f0 <vfprintf@plt>:
    42f0:	f3 0f 1e fa          	endbr64
    42f4:	ff 25 d6 8c 00 00    	jmp    *0x8cd6(%rip)        # cfd0 <vfprintf@GLIBC_2.2.5>
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
    4318:	48 8d 3d 12 5b 00 00 	lea    0x5b12(%rip),%rdi        # 9e31 <main>
    431f:	ff 15 b3 8c 00 00    	call   *0x8cb3(%rip)        # cfd8 <__libc_start_main@GLIBC_2.34>
    4325:	f4                   	hlt
    4326:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    432d:	00 00 00 

0000000000004330 <deregister_tm_clones>:
    4330:	48 8d 3d 51 a0 00 00 	lea    0xa051(%rip),%rdi        # e388 <__TMC_END__>
    4337:	48 8d 05 4a a0 00 00 	lea    0xa04a(%rip),%rax        # e388 <__TMC_END__>
    433e:	48 39 f8             	cmp    %rdi,%rax
    4341:	74 15                	je     4358 <deregister_tm_clones+0x28>
    4343:	48 8b 05 96 8c 00 00 	mov    0x8c96(%rip),%rax        # cfe0 <_ITM_deregisterTMCloneTable@Base>
    434a:	48 85 c0             	test   %rax,%rax
    434d:	74 09                	je     4358 <deregister_tm_clones+0x28>
    434f:	ff e0                	jmp    *%rax
    4351:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    4358:	c3                   	ret
    4359:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000004360 <register_tm_clones>:
    4360:	48 8d 3d 21 a0 00 00 	lea    0xa021(%rip),%rdi        # e388 <__TMC_END__>
    4367:	48 8d 35 1a a0 00 00 	lea    0xa01a(%rip),%rsi        # e388 <__TMC_END__>
    436e:	48 29 fe             	sub    %rdi,%rsi
    4371:	48 89 f0             	mov    %rsi,%rax
    4374:	48 c1 ee 3f          	shr    $0x3f,%rsi
    4378:	48 c1 f8 03          	sar    $0x3,%rax
    437c:	48 01 c6             	add    %rax,%rsi
    437f:	48 d1 fe             	sar    $1,%rsi
    4382:	74 14                	je     4398 <register_tm_clones+0x38>
    4384:	48 8b 05 65 8c 00 00 	mov    0x8c65(%rip),%rax        # cff0 <_ITM_registerTMCloneTable@Base>
    438b:	48 85 c0             	test   %rax,%rax
    438e:	74 08                	je     4398 <register_tm_clones+0x38>
    4390:	ff e0                	jmp    *%rax
    4392:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    4398:	c3                   	ret
    4399:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000043a0 <__do_global_dtors_aux>:
    43a0:	f3 0f 1e fa          	endbr64
    43a4:	80 3d 1d a0 00 00 00 	cmpb   $0x0,0xa01d(%rip)        # e3c8 <completed.0>
    43ab:	75 2b                	jne    43d8 <__do_global_dtors_aux+0x38>
    43ad:	55                   	push   %rbp
    43ae:	48 83 3d 42 8c 00 00 	cmpq   $0x0,0x8c42(%rip)        # cff8 <__cxa_finalize@GLIBC_2.2.5>
    43b5:	00 
    43b6:	48 89 e5             	mov    %rsp,%rbp
    43b9:	74 0c                	je     43c7 <__do_global_dtors_aux+0x27>
    43bb:	48 8b 3d 46 8c 00 00 	mov    0x8c46(%rip),%rdi        # d008 <__dso_handle>
    43c2:	e8 c9 fd ff ff       	call   4190 <__cxa_finalize@plt>
    43c7:	e8 64 ff ff ff       	call   4330 <deregister_tm_clones>
    43cc:	c6 05 f5 9f 00 00 01 	movb   $0x1,0x9ff5(%rip)        # e3c8 <completed.0>
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
    43ed:	48 8d 05 9c a1 00 00 	lea    0xa19c(%rip),%rax        # e590 <src.3>
    43f4:	5d                   	pop    %rbp
    43f5:	c3                   	ret

00000000000043f6 <GetStrings>:
    43f6:	55                   	push   %rbp
    43f7:	48 89 e5             	mov    %rsp,%rbp
    43fa:	48 8d 05 cf a0 00 00 	lea    0xa0cf(%rip),%rax        # e4d0 <strings.45>
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
    455c:	48 8d 05 cd 9f 00 00 	lea    0x9fcd(%rip),%rax        # e530 <consts.39>
    4563:	5d                   	pop    %rbp
    4564:	c3                   	ret

0000000000004565 <GetLocals>:
    4565:	55                   	push   %rbp
    4566:	48 89 e5             	mov    %rsp,%rbp
    4569:	48 8d 05 e0 9f 00 00 	lea    0x9fe0(%rip),%rax        # e550 <locals.38>
    4570:	5d                   	pop    %rbp
    4571:	c3                   	ret

0000000000004572 <GetGlobals>:
    4572:	55                   	push   %rbp
    4573:	48 89 e5             	mov    %rsp,%rbp
    4576:	48 8d 05 43 a0 00 00 	lea    0xa043(%rip),%rax        # e5c0 <globals.1>
    457d:	5d                   	pop    %rbp
    457e:	c3                   	ret

000000000000457f <GetCode>:
    457f:	55                   	push   %rbp
    4580:	48 89 e5             	mov    %rsp,%rbp
    4583:	48 8d 05 e6 9f 00 00 	lea    0x9fe6(%rip),%rax        # e570 <code.37>
    458a:	5d                   	pop    %rbp
    458b:	c3                   	ret

000000000000458c <GetFuncs>:
    458c:	55                   	push   %rbp
    458d:	48 89 e5             	mov    %rsp,%rbp
    4590:	48 8d 05 79 9f 00 00 	lea    0x9f79(%rip),%rax        # e510 <funcs.40>
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
    4901:	48 8d 05 58 88 00 00 	lea    0x8858(%rip),%rax        # d160 <types.50>
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
    4951:	48 8d 05 48 9c 00 00 	lea    0x9c48(%rip),%rax        # e5a0 <interns.2>
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
    4c22:	f2 0f 10 15 96 54 00 	movsd  0x5496(%rip),%xmm2        # a0c0 <_IO_stdin_used+0xc0>
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
    4cce:	48 8d 05 0b 99 00 00 	lea    0x990b(%rip),%rax        # e5e0 <env.0>
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
    4ced:	be 10 00 00 00       	mov    $0x10,%esi
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
    4d60:	eb 46                	jmp    4da8 <MapGrow+0x8c>
    4d62:	8b 45 e8             	mov    -0x18(%rbp),%eax
    4d65:	48 c1 e0 04          	shl    $0x4,%rax
    4d69:	48 89 c2             	mov    %rax,%rdx
    4d6c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4d70:	48 01 d0             	add    %rdx,%rax
    4d73:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4d77:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d7b:	48 8b 00             	mov    (%rax),%rax
    4d7e:	48 85 c0             	test   %rax,%rax
    4d81:	74 20                	je     4da3 <MapGrow+0x87>
    4d83:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d87:	48 8b 50 08          	mov    0x8(%rax),%rdx
    4d8b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4d8f:	48 8b 08             	mov    (%rax),%rcx
    4d92:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    4d96:	48 89 ce             	mov    %rcx,%rsi
    4d99:	48 89 c7             	mov    %rax,%rdi
    4d9c:	e8 97 00 00 00       	call   4e38 <MapPut>
    4da1:	eb 01                	jmp    4da4 <MapGrow+0x88>
    4da3:	90                   	nop
    4da4:	83 45 e8 01          	addl   $0x1,-0x18(%rbp)
    4da8:	8b 45 e8             	mov    -0x18(%rbp),%eax
    4dab:	3b 45 ec             	cmp    -0x14(%rbp),%eax
    4dae:	72 b2                	jb     4d62 <MapGrow+0x46>
    4db0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    4db4:	48 89 c7             	mov    %rax,%rdi
    4db7:	e8 e4 f3 ff ff       	call   41a0 <free@plt>
    4dbc:	90                   	nop
    4dbd:	c9                   	leave
    4dbe:	c3                   	ret

0000000000004dbf <MapGet>:
    4dbf:	f3 0f 1e fa          	endbr64
    4dc3:	55                   	push   %rbp
    4dc4:	48 89 e5             	mov    %rsp,%rbp
    4dc7:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4dcb:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4dcf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    4dd3:	8b 50 08             	mov    0x8(%rax),%edx
    4dd6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4dda:	8b 40 0c             	mov    0xc(%rax),%eax
    4ddd:	83 e8 01             	sub    $0x1,%eax
    4de0:	21 d0                	and    %edx,%eax
    4de2:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4de5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4de9:	48 8b 00             	mov    (%rax),%rax
    4dec:	8b 55 f4             	mov    -0xc(%rbp),%edx
    4def:	48 c1 e2 04          	shl    $0x4,%rdx
    4df3:	48 01 d0             	add    %rdx,%rax
    4df6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4dfa:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4dfe:	48 8b 00             	mov    (%rax),%rax
    4e01:	48 85 c0             	test   %rax,%rax
    4e04:	75 06                	jne    4e0c <MapGet+0x4d>
    4e06:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e0a:	eb 2a                	jmp    4e36 <MapGet+0x77>
    4e0c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e10:	48 8b 00             	mov    (%rax),%rax
    4e13:	48 39 45 e0          	cmp    %rax,-0x20(%rbp)
    4e17:	75 06                	jne    4e1f <MapGet+0x60>
    4e19:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e1d:	eb 17                	jmp    4e36 <MapGet+0x77>
    4e1f:	8b 45 f4             	mov    -0xc(%rbp),%eax
    4e22:	8d 50 01             	lea    0x1(%rax),%edx
    4e25:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e29:	8b 40 0c             	mov    0xc(%rax),%eax
    4e2c:	83 e8 01             	sub    $0x1,%eax
    4e2f:	21 d0                	and    %edx,%eax
    4e31:	89 45 f4             	mov    %eax,-0xc(%rbp)
    4e34:	eb af                	jmp    4de5 <MapGet+0x26>
    4e36:	5d                   	pop    %rbp
    4e37:	c3                   	ret

0000000000004e38 <MapPut>:
    4e38:	f3 0f 1e fa          	endbr64
    4e3c:	55                   	push   %rbp
    4e3d:	48 89 e5             	mov    %rsp,%rbp
    4e40:	48 83 ec 30          	sub    $0x30,%rsp
    4e44:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4e48:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4e4c:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    4e50:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e54:	8b 40 08             	mov    0x8(%rax),%eax
    4e57:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    4e5b:	8b 52 0c             	mov    0xc(%rdx),%edx
    4e5e:	39 c2                	cmp    %eax,%edx
    4e60:	73 0c                	jae    4e6e <MapPut+0x36>
    4e62:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e66:	48 89 c7             	mov    %rax,%rdi
    4e69:	e8 ae fe ff ff       	call   4d1c <MapGrow>
    4e6e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4e72:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e76:	48 89 d6             	mov    %rdx,%rsi
    4e79:	48 89 c7             	mov    %rax,%rdi
    4e7c:	e8 3e ff ff ff       	call   4dbf <MapGet>
    4e81:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4e85:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4e89:	8b 50 08             	mov    0x8(%rax),%edx
    4e8c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4e90:	48 8b 00             	mov    (%rax),%rax
    4e93:	48 85 c0             	test   %rax,%rax
    4e96:	0f 94 c0             	sete   %al
    4e99:	0f b6 c0             	movzbl %al,%eax
    4e9c:	01 c2                	add    %eax,%edx
    4e9e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4ea2:	89 50 08             	mov    %edx,0x8(%rax)
    4ea5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4ea9:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4ead:	48 89 10             	mov    %rdx,(%rax)
    4eb0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4eb4:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    4eb8:	48 89 50 08          	mov    %rdx,0x8(%rax)
    4ebc:	90                   	nop
    4ebd:	c9                   	leave
    4ebe:	c3                   	ret

0000000000004ebf <MapDel>:
    4ebf:	f3 0f 1e fa          	endbr64
    4ec3:	55                   	push   %rbp
    4ec4:	48 89 e5             	mov    %rsp,%rbp
    4ec7:	48 83 ec 20          	sub    $0x20,%rsp
    4ecb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    4ecf:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    4ed3:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    4ed7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    4edb:	48 89 d6             	mov    %rdx,%rsi
    4ede:	48 89 c7             	mov    %rax,%rdi
    4ee1:	e8 d9 fe ff ff       	call   4dbf <MapGet>
    4ee6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    4eea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    4eee:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
    4ef5:	90                   	nop
    4ef6:	c9                   	leave
    4ef7:	c3                   	ret

0000000000004ef8 <GetJmp>:
    4ef8:	55                   	push   %rbp
    4ef9:	48 89 e5             	mov    %rsp,%rbp
    4efc:	48 8d 05 fd 94 00 00 	lea    0x94fd(%rip),%rax        # e400 <buf.47>
    4f03:	5d                   	pop    %rbp
    4f04:	c3                   	ret

0000000000004f05 <Throw>:
    4f05:	55                   	push   %rbp
    4f06:	48 89 e5             	mov    %rsp,%rbp
    4f09:	48 81 ec e0 00 00 00 	sub    $0xe0,%rsp
    4f10:	48 89 bd 28 ff ff ff 	mov    %rdi,-0xd8(%rbp)
    4f17:	48 89 b5 58 ff ff ff 	mov    %rsi,-0xa8(%rbp)
    4f1e:	48 89 95 60 ff ff ff 	mov    %rdx,-0xa0(%rbp)
    4f25:	48 89 8d 68 ff ff ff 	mov    %rcx,-0x98(%rbp)
    4f2c:	4c 89 85 70 ff ff ff 	mov    %r8,-0x90(%rbp)
    4f33:	4c 89 8d 78 ff ff ff 	mov    %r9,-0x88(%rbp)
    4f3a:	84 c0                	test   %al,%al
    4f3c:	74 20                	je     4f5e <Throw+0x59>
    4f3e:	0f 29 45 80          	movaps %xmm0,-0x80(%rbp)
    4f42:	0f 29 4d 90          	movaps %xmm1,-0x70(%rbp)
    4f46:	0f 29 55 a0          	movaps %xmm2,-0x60(%rbp)
    4f4a:	0f 29 5d b0          	movaps %xmm3,-0x50(%rbp)
    4f4e:	0f 29 65 c0          	movaps %xmm4,-0x40(%rbp)
    4f52:	0f 29 6d d0          	movaps %xmm5,-0x30(%rbp)
    4f56:	0f 29 75 e0          	movaps %xmm6,-0x20(%rbp)
    4f5a:	0f 29 7d f0          	movaps %xmm7,-0x10(%rbp)
    4f5e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    4f65:	00 00 
    4f67:	48 89 85 48 ff ff ff 	mov    %rax,-0xb8(%rbp)
    4f6e:	31 c0                	xor    %eax,%eax
    4f70:	c7 85 30 ff ff ff 08 	movl   $0x8,-0xd0(%rbp)
    4f77:	00 00 00 
    4f7a:	c7 85 34 ff ff ff 30 	movl   $0x30,-0xcc(%rbp)
    4f81:	00 00 00 
    4f84:	48 8d 45 10          	lea    0x10(%rbp),%rax
    4f88:	48 89 85 38 ff ff ff 	mov    %rax,-0xc8(%rbp)
    4f8f:	48 8d 85 50 ff ff ff 	lea    -0xb0(%rbp),%rax
    4f96:	48 89 85 40 ff ff ff 	mov    %rax,-0xc0(%rbp)
    4f9d:	48 8b 05 1c 94 00 00 	mov    0x941c(%rip),%rax        # e3c0 <stderr@GLIBC_2.2.5>
    4fa4:	48 8d 95 30 ff ff ff 	lea    -0xd0(%rbp),%rdx
    4fab:	48 8b 8d 28 ff ff ff 	mov    -0xd8(%rbp),%rcx
    4fb2:	48 89 ce             	mov    %rcx,%rsi
    4fb5:	48 89 c7             	mov    %rax,%rdi
    4fb8:	e8 33 f3 ff ff       	call   42f0 <vfprintf@plt>
    4fbd:	e8 36 ff ff ff       	call   4ef8 <GetJmp>
    4fc2:	be 01 00 00 00       	mov    $0x1,%esi
    4fc7:	48 89 c7             	mov    %rax,%rdi
    4fca:	e8 01 f3 ff ff       	call   42d0 <longjmp@plt>

0000000000004fcf <IoRead>:
    4fcf:	55                   	push   %rbp
    4fd0:	48 89 e5             	mov    %rsp,%rbp
    4fd3:	48 83 ec 30          	sub    $0x30,%rsp
    4fd7:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    4fdb:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    4fdf:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    4fe3:	48 8d 15 26 50 00 00 	lea    0x5026(%rip),%rdx        # a010 <_IO_stdin_used+0x10>
    4fea:	48 89 d6             	mov    %rdx,%rsi
    4fed:	48 89 c7             	mov    %rax,%rdi
    4ff0:	e8 eb f2 ff ff       	call   42e0 <fopen@plt>
    4ff5:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    4ff9:	48 83 7d e0 00       	cmpq   $0x0,-0x20(%rbp)
    4ffe:	75 1b                	jne    501b <IoRead+0x4c>
    5000:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5004:	48 89 c6             	mov    %rax,%rsi
    5007:	48 8d 05 05 50 00 00 	lea    0x5005(%rip),%rax        # a013 <_IO_stdin_used+0x13>
    500e:	48 89 c7             	mov    %rax,%rdi
    5011:	b8 00 00 00 00       	mov    $0x0,%eax
    5016:	e8 ea fe ff ff       	call   4f05 <Throw>
    501b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    501f:	ba 02 00 00 00       	mov    $0x2,%edx
    5024:	be 00 00 00 00       	mov    $0x0,%esi
    5029:	48 89 c7             	mov    %rax,%rdi
    502c:	e8 7f f2 ff ff       	call   42b0 <fseek@plt>
    5031:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5035:	48 89 c7             	mov    %rax,%rdi
    5038:	e8 33 f2 ff ff       	call   4270 <ftell@plt>
    503d:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    5041:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5045:	ba 00 00 00 00       	mov    $0x0,%edx
    504a:	be 00 00 00 00       	mov    $0x0,%esi
    504f:	48 89 c7             	mov    %rax,%rdi
    5052:	e8 59 f2 ff ff       	call   42b0 <fseek@plt>
    5057:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    505b:	89 c1                	mov    %eax,%ecx
    505d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5061:	ba 01 00 00 00       	mov    $0x1,%edx
    5066:	89 ce                	mov    %ecx,%esi
    5068:	48 89 c7             	mov    %rax,%rdi
    506b:	e8 e3 f3 ff ff       	call   4453 <ArenaPush>
    5070:	89 c2                	mov    %eax,%edx
    5072:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5076:	89 d6                	mov    %edx,%esi
    5078:	48 89 c7             	mov    %rax,%rdi
    507b:	e8 a0 f4 ff ff       	call   4520 <ArenaOff>
    5080:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5084:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5088:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    508c:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5090:	be 01 00 00 00       	mov    $0x1,%esi
    5095:	48 89 c7             	mov    %rax,%rdi
    5098:	e8 23 f1 ff ff       	call   41c0 <fread@plt>
    509d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    50a1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    50a5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50a9:	48 01 d0             	add    %rdx,%rax
    50ac:	c6 00 00             	movb   $0x0,(%rax)
    50af:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    50b3:	48 89 c7             	mov    %rax,%rdi
    50b6:	e8 35 f1 ff ff       	call   41f0 <fclose@plt>
    50bb:	90                   	nop
    50bc:	c9                   	leave
    50bd:	c3                   	ret

00000000000050be <GetLexer>:
    50be:	55                   	push   %rbp
    50bf:	48 89 e5             	mov    %rsp,%rbp
    50c2:	48 8d 05 17 93 00 00 	lea    0x9317(%rip),%rax        # e3e0 <lexer.48>
    50c9:	5d                   	pop    %rbp
    50ca:	c3                   	ret

00000000000050cb <LexerInit>:
    50cb:	55                   	push   %rbp
    50cc:	48 89 e5             	mov    %rsp,%rbp
    50cf:	48 83 ec 20          	sub    $0x20,%rsp
    50d3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    50d7:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    50db:	e8 de ff ff ff       	call   50be <GetLexer>
    50e0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    50e4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50e8:	48 8b 10             	mov    (%rax),%rdx
    50eb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50ef:	48 89 10             	mov    %rdx,(%rax)
    50f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    50f6:	48 8b 10             	mov    (%rax),%rdx
    50f9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    50fd:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5101:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5105:	c7 40 14 01 00 00 00 	movl   $0x1,0x14(%rax)
    510c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5110:	c7 40 10 01 00 00 00 	movl   $0x1,0x10(%rax)
    5117:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    511b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    511f:	48 89 50 18          	mov    %rdx,0x18(%rax)
    5123:	90                   	nop
    5124:	c9                   	leave
    5125:	c3                   	ret

0000000000005126 <LexReinit>:
    5126:	55                   	push   %rbp
    5127:	48 89 e5             	mov    %rsp,%rbp
    512a:	48 83 ec 18          	sub    $0x18,%rsp
    512e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5132:	e8 87 ff ff ff       	call   50be <GetLexer>
    5137:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    513b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    513f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5143:	48 89 10             	mov    %rdx,(%rax)
    5146:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    514a:	48 8b 10             	mov    (%rax),%rdx
    514d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5151:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5155:	90                   	nop
    5156:	c9                   	leave
    5157:	c3                   	ret

0000000000005158 <LexSet>:
    5158:	55                   	push   %rbp
    5159:	48 89 e5             	mov    %rsp,%rbp
    515c:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    5160:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    5164:	89 55 cc             	mov    %edx,-0x34(%rbp)
    5167:	89 c8                	mov    %ecx,%eax
    5169:	44 89 c2             	mov    %r8d,%edx
    516c:	88 45 c8             	mov    %al,-0x38(%rbp)
    516f:	89 d0                	mov    %edx,%eax
    5171:	88 45 c4             	mov    %al,-0x3c(%rbp)
    5174:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5178:	48 8b 50 08          	mov    0x8(%rax),%rdx
    517c:	0f b6 45 c4          	movzbl -0x3c(%rbp),%eax
    5180:	48 01 c2             	add    %rax,%rdx
    5183:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5187:	48 89 50 08          	mov    %rdx,0x8(%rax)
    518b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    518f:	8b 50 14             	mov    0x14(%rax),%edx
    5192:	0f b6 45 c4          	movzbl -0x3c(%rbp),%eax
    5196:	01 c2                	add    %eax,%edx
    5198:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    519c:	89 50 14             	mov    %edx,0x14(%rax)
    519f:	0f b6 55 c8          	movzbl -0x38(%rbp),%edx
    51a3:	8b 45 cc             	mov    -0x34(%rbp),%eax
    51a6:	01 c2                	add    %eax,%edx
    51a8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51ac:	66 0f ef c0          	pxor   %xmm0,%xmm0
    51b0:	0f 11 00             	movups %xmm0,(%rax)
    51b3:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    51b8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51bc:	89 10                	mov    %edx,(%rax)
    51be:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    51c2:	5d                   	pop    %rbp
    51c3:	c3                   	ret

00000000000051c4 <LexEof>:
    51c4:	55                   	push   %rbp
    51c5:	48 89 e5             	mov    %rsp,%rbp
    51c8:	48 83 ec 20          	sub    $0x20,%rsp
    51cc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    51d0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    51d4:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    51db:	00 00 
    51dd:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    51e1:	31 c0                	xor    %eax,%eax
    51e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    51e7:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    51eb:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    51f1:	b9 00 00 00 00       	mov    $0x0,%ecx
    51f6:	ba 00 00 00 00       	mov    $0x0,%edx
    51fb:	48 89 c7             	mov    %rax,%rdi
    51fe:	e8 55 ff ff ff       	call   5158 <LexSet>
    5203:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5207:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    520e:	00 00 
    5210:	74 05                	je     5217 <LexEof+0x53>
    5212:	e8 e9 ef ff ff       	call   4200 <__stack_chk_fail@plt>
    5217:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    521b:	c9                   	leave
    521c:	c3                   	ret

000000000000521d <LexLine>:
    521d:	55                   	push   %rbp
    521e:	48 89 e5             	mov    %rsp,%rbp
    5221:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    5225:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5229:	8b 40 10             	mov    0x10(%rax),%eax
    522c:	8d 50 01             	lea    0x1(%rax),%edx
    522f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5233:	89 50 10             	mov    %edx,0x10(%rax)
    5236:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    523a:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%rax)
    5241:	90                   	nop
    5242:	5d                   	pop    %rbp
    5243:	c3                   	ret

0000000000005244 <LexNot>:
    5244:	55                   	push   %rbp
    5245:	48 89 e5             	mov    %rsp,%rbp
    5248:	48 83 ec 20          	sub    $0x20,%rsp
    524c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5250:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5254:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    525b:	00 00 
    525d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5261:	31 c0                	xor    %eax,%eax
    5263:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5267:	48 8b 40 08          	mov    0x8(%rax),%rax
    526b:	0f b6 00             	movzbl (%rax),%eax
    526e:	3c 3d                	cmp    $0x3d,%al
    5270:	0f 94 c0             	sete   %al
    5273:	88 45 f7             	mov    %al,-0x9(%rbp)
    5276:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    527a:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    527e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5282:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5286:	41 89 c8             	mov    %ecx,%r8d
    5289:	89 d1                	mov    %edx,%ecx
    528b:	ba 01 00 00 00       	mov    $0x1,%edx
    5290:	48 89 c7             	mov    %rax,%rdi
    5293:	e8 c0 fe ff ff       	call   5158 <LexSet>
    5298:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    529c:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    52a3:	00 00 
    52a5:	74 05                	je     52ac <LexNot+0x68>
    52a7:	e8 54 ef ff ff       	call   4200 <__stack_chk_fail@plt>
    52ac:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    52b0:	c9                   	leave
    52b1:	c3                   	ret

00000000000052b2 <LexStr>:
    52b2:	55                   	push   %rbp
    52b3:	48 89 e5             	mov    %rsp,%rbp
    52b6:	48 83 ec 40          	sub    $0x40,%rsp
    52ba:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    52be:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    52c2:	eb 14                	jmp    52d8 <LexStr+0x26>
    52c4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    52c8:	48 8b 40 08          	mov    0x8(%rax),%rax
    52cc:	48 8d 50 01          	lea    0x1(%rax),%rdx
    52d0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    52d4:	48 89 50 08          	mov    %rdx,0x8(%rax)
    52d8:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    52dc:	48 8b 40 08          	mov    0x8(%rax),%rax
    52e0:	0f b6 00             	movzbl (%rax),%eax
    52e3:	84 c0                	test   %al,%al
    52e5:	74 0f                	je     52f6 <LexStr+0x44>
    52e7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    52eb:	48 8b 40 08          	mov    0x8(%rax),%rax
    52ef:	0f b6 00             	movzbl (%rax),%eax
    52f2:	3c 22                	cmp    $0x22,%al
    52f4:	75 ce                	jne    52c4 <LexStr+0x12>
    52f6:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    52fa:	48 8b 40 08          	mov    0x8(%rax),%rax
    52fe:	0f b6 00             	movzbl (%rax),%eax
    5301:	3c 22                	cmp    $0x22,%al
    5303:	74 14                	je     5319 <LexStr+0x67>
    5305:	48 8d 05 1b 4d 00 00 	lea    0x4d1b(%rip),%rax        # a027 <_IO_stdin_used+0x27>
    530c:	48 89 c7             	mov    %rax,%rdi
    530f:	b8 00 00 00 00       	mov    $0x0,%eax
    5314:	e8 ec fb ff ff       	call   4f05 <Throw>
    5319:	66 0f ef c0          	pxor   %xmm0,%xmm0
    531d:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    5321:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    5326:	c7 45 e0 38 00 00 00 	movl   $0x38,-0x20(%rbp)
    532d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5331:	48 8b 50 08          	mov    0x8(%rax),%rdx
    5335:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5339:	48 8b 00             	mov    (%rax),%rax
    533c:	48 29 c2             	sub    %rax,%rdx
    533f:	89 d0                	mov    %edx,%eax
    5341:	83 e8 01             	sub    $0x1,%eax
    5344:	89 45 dc             	mov    %eax,-0x24(%rbp)
    5347:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    534b:	48 8b 00             	mov    (%rax),%rax
    534e:	48 8d 48 01          	lea    0x1(%rax),%rcx
    5352:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5356:	48 8b 40 18          	mov    0x18(%rax),%rax
    535a:	8b 55 dc             	mov    -0x24(%rbp),%edx
    535d:	48 89 ce             	mov    %rcx,%rsi
    5360:	48 89 c7             	mov    %rax,%rdi
    5363:	e8 3f f8 ff ff       	call   4ba7 <TablePut>
    5368:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    536c:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5370:	48 8b 40 08          	mov    0x8(%rax),%rax
    5374:	48 8d 50 01          	lea    0x1(%rax),%rdx
    5378:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    537c:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5380:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5384:	8b 50 14             	mov    0x14(%rax),%edx
    5387:	8b 45 dc             	mov    -0x24(%rbp),%eax
    538a:	01 d0                	add    %edx,%eax
    538c:	8d 50 02             	lea    0x2(%rax),%edx
    538f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5393:	89 50 14             	mov    %edx,0x14(%rax)
    5396:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    539a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    539e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    53a2:	48 89 01             	mov    %rax,(%rcx)
    53a5:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    53a9:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    53ad:	48 89 41 10          	mov    %rax,0x10(%rcx)
    53b1:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    53b5:	c9                   	leave
    53b6:	c3                   	ret

00000000000053b7 <LexComment>:
    53b7:	55                   	push   %rbp
    53b8:	48 89 e5             	mov    %rsp,%rbp
    53bb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    53bf:	eb 14                	jmp    53d5 <LexComment+0x1e>
    53c1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53c5:	48 8b 40 08          	mov    0x8(%rax),%rax
    53c9:	48 8d 50 01          	lea    0x1(%rax),%rdx
    53cd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53d1:	48 89 50 08          	mov    %rdx,0x8(%rax)
    53d5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53d9:	48 8b 40 08          	mov    0x8(%rax),%rax
    53dd:	0f b6 00             	movzbl (%rax),%eax
    53e0:	84 c0                	test   %al,%al
    53e2:	74 0f                	je     53f3 <LexComment+0x3c>
    53e4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53e8:	48 8b 40 08          	mov    0x8(%rax),%rax
    53ec:	0f b6 00             	movzbl (%rax),%eax
    53ef:	3c 0a                	cmp    $0xa,%al
    53f1:	75 ce                	jne    53c1 <LexComment+0xa>
    53f3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    53f7:	8b 40 10             	mov    0x10(%rax),%eax
    53fa:	8d 50 01             	lea    0x1(%rax),%edx
    53fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5401:	89 50 10             	mov    %edx,0x10(%rax)
    5404:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5408:	c7 40 14 00 00 00 00 	movl   $0x0,0x14(%rax)
    540f:	90                   	nop
    5410:	5d                   	pop    %rbp
    5411:	c3                   	ret

0000000000005412 <LexMod>:
    5412:	55                   	push   %rbp
    5413:	48 89 e5             	mov    %rsp,%rbp
    5416:	48 83 ec 20          	sub    $0x20,%rsp
    541a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    541e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5422:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5429:	00 00 
    542b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    542f:	31 c0                	xor    %eax,%eax
    5431:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5435:	48 8b 40 08          	mov    0x8(%rax),%rax
    5439:	0f b6 00             	movzbl (%rax),%eax
    543c:	3c 3d                	cmp    $0x3d,%al
    543e:	0f 94 c0             	sete   %al
    5441:	88 45 f7             	mov    %al,-0x9(%rbp)
    5444:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    5448:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    544c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5450:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5454:	41 89 c8             	mov    %ecx,%r8d
    5457:	89 d1                	mov    %edx,%ecx
    5459:	ba 10 00 00 00       	mov    $0x10,%edx
    545e:	48 89 c7             	mov    %rax,%rdi
    5461:	e8 f2 fc ff ff       	call   5158 <LexSet>
    5466:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    546a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5471:	00 00 
    5473:	74 05                	je     547a <LexMod+0x68>
    5475:	e8 86 ed ff ff       	call   4200 <__stack_chk_fail@plt>
    547a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    547e:	c9                   	leave
    547f:	c3                   	ret

0000000000005480 <LexBand>:
    5480:	55                   	push   %rbp
    5481:	48 89 e5             	mov    %rsp,%rbp
    5484:	48 83 ec 20          	sub    $0x20,%rsp
    5488:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    548c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5490:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5497:	00 00 
    5499:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    549d:	31 c0                	xor    %eax,%eax
    549f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    54a3:	48 8b 40 08          	mov    0x8(%rax),%rax
    54a7:	0f b6 00             	movzbl (%rax),%eax
    54aa:	3c 3d                	cmp    $0x3d,%al
    54ac:	0f 94 c0             	sete   %al
    54af:	89 c2                	mov    %eax,%edx
    54b1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    54b5:	48 8b 40 08          	mov    0x8(%rax),%rax
    54b9:	0f b6 00             	movzbl (%rax),%eax
    54bc:	3c 26                	cmp    $0x26,%al
    54be:	75 07                	jne    54c7 <LexBand+0x47>
    54c0:	b8 02 00 00 00       	mov    $0x2,%eax
    54c5:	eb 05                	jmp    54cc <LexBand+0x4c>
    54c7:	b8 00 00 00 00       	mov    $0x0,%eax
    54cc:	01 d0                	add    %edx,%eax
    54ce:	88 45 f7             	mov    %al,-0x9(%rbp)
    54d1:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    54d5:	0f 95 c0             	setne  %al
    54d8:	0f b6 c8             	movzbl %al,%ecx
    54db:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    54df:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    54e3:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    54e7:	41 89 c8             	mov    %ecx,%r8d
    54ea:	89 d1                	mov    %edx,%ecx
    54ec:	ba 12 00 00 00       	mov    $0x12,%edx
    54f1:	48 89 c7             	mov    %rax,%rdi
    54f4:	e8 5f fc ff ff       	call   5158 <LexSet>
    54f9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    54fd:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5504:	00 00 
    5506:	74 05                	je     550d <LexBand+0x8d>
    5508:	e8 f3 ec ff ff       	call   4200 <__stack_chk_fail@plt>
    550d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5511:	c9                   	leave
    5512:	c3                   	ret

0000000000005513 <LexLp>:
    5513:	55                   	push   %rbp
    5514:	48 89 e5             	mov    %rsp,%rbp
    5517:	48 83 ec 20          	sub    $0x20,%rsp
    551b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    551f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5523:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    552a:	00 00 
    552c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5530:	31 c0                	xor    %eax,%eax
    5532:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5536:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    553a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5540:	b9 00 00 00 00       	mov    $0x0,%ecx
    5545:	ba 24 00 00 00       	mov    $0x24,%edx
    554a:	48 89 c7             	mov    %rax,%rdi
    554d:	e8 06 fc ff ff       	call   5158 <LexSet>
    5552:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5556:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    555d:	00 00 
    555f:	74 05                	je     5566 <LexLp+0x53>
    5561:	e8 9a ec ff ff       	call   4200 <__stack_chk_fail@plt>
    5566:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    556a:	c9                   	leave
    556b:	c3                   	ret

000000000000556c <LexRp>:
    556c:	55                   	push   %rbp
    556d:	48 89 e5             	mov    %rsp,%rbp
    5570:	48 83 ec 20          	sub    $0x20,%rsp
    5574:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5578:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    557c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5583:	00 00 
    5585:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5589:	31 c0                	xor    %eax,%eax
    558b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    558f:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5593:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5599:	b9 00 00 00 00       	mov    $0x0,%ecx
    559e:	ba 25 00 00 00       	mov    $0x25,%edx
    55a3:	48 89 c7             	mov    %rax,%rdi
    55a6:	e8 ad fb ff ff       	call   5158 <LexSet>
    55ab:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    55af:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    55b6:	00 00 
    55b8:	74 05                	je     55bf <LexRp+0x53>
    55ba:	e8 41 ec ff ff       	call   4200 <__stack_chk_fail@plt>
    55bf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    55c3:	c9                   	leave
    55c4:	c3                   	ret

00000000000055c5 <LexMul>:
    55c5:	55                   	push   %rbp
    55c6:	48 89 e5             	mov    %rsp,%rbp
    55c9:	48 83 ec 20          	sub    $0x20,%rsp
    55cd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    55d1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    55d5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    55dc:	00 00 
    55de:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    55e2:	31 c0                	xor    %eax,%eax
    55e4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    55e8:	48 8b 40 08          	mov    0x8(%rax),%rax
    55ec:	0f b6 00             	movzbl (%rax),%eax
    55ef:	3c 3d                	cmp    $0x3d,%al
    55f1:	0f 94 c0             	sete   %al
    55f4:	89 c2                	mov    %eax,%edx
    55f6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    55fa:	48 8b 40 08          	mov    0x8(%rax),%rax
    55fe:	0f b6 00             	movzbl (%rax),%eax
    5601:	3c 2a                	cmp    $0x2a,%al
    5603:	75 07                	jne    560c <LexMul+0x47>
    5605:	b8 02 00 00 00       	mov    $0x2,%eax
    560a:	eb 05                	jmp    5611 <LexMul+0x4c>
    560c:	b8 00 00 00 00       	mov    $0x0,%eax
    5611:	01 c2                	add    %eax,%edx
    5613:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5617:	48 8b 40 08          	mov    0x8(%rax),%rax
    561b:	48 83 c0 01          	add    $0x1,%rax
    561f:	0f b6 00             	movzbl (%rax),%eax
    5622:	3c 3d                	cmp    $0x3d,%al
    5624:	0f 94 c0             	sete   %al
    5627:	01 d0                	add    %edx,%eax
    5629:	88 45 f7             	mov    %al,-0x9(%rbp)
    562c:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5630:	0f 95 c0             	setne  %al
    5633:	0f b6 d0             	movzbl %al,%edx
    5636:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    563a:	01 d0                	add    %edx,%eax
    563c:	83 f8 02             	cmp    $0x2,%eax
    563f:	0f 9f c0             	setg   %al
    5642:	0f b6 c8             	movzbl %al,%ecx
    5645:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5649:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    564d:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5651:	41 89 c8             	mov    %ecx,%r8d
    5654:	89 d1                	mov    %edx,%ecx
    5656:	ba 0a 00 00 00       	mov    $0xa,%edx
    565b:	48 89 c7             	mov    %rax,%rdi
    565e:	e8 f5 fa ff ff       	call   5158 <LexSet>
    5663:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5667:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    566e:	00 00 
    5670:	74 05                	je     5677 <LexMul+0xb2>
    5672:	e8 89 eb ff ff       	call   4200 <__stack_chk_fail@plt>
    5677:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    567b:	c9                   	leave
    567c:	c3                   	ret

000000000000567d <LexAdd>:
    567d:	55                   	push   %rbp
    567e:	48 89 e5             	mov    %rsp,%rbp
    5681:	48 83 ec 20          	sub    $0x20,%rsp
    5685:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5689:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    568d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5694:	00 00 
    5696:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    569a:	31 c0                	xor    %eax,%eax
    569c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    56a0:	48 8b 40 08          	mov    0x8(%rax),%rax
    56a4:	0f b6 00             	movzbl (%rax),%eax
    56a7:	3c 3d                	cmp    $0x3d,%al
    56a9:	0f 94 c0             	sete   %al
    56ac:	89 c2                	mov    %eax,%edx
    56ae:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    56b2:	48 8b 40 08          	mov    0x8(%rax),%rax
    56b6:	0f b6 00             	movzbl (%rax),%eax
    56b9:	3c 2b                	cmp    $0x2b,%al
    56bb:	75 07                	jne    56c4 <LexAdd+0x47>
    56bd:	b8 02 00 00 00       	mov    $0x2,%eax
    56c2:	eb 05                	jmp    56c9 <LexAdd+0x4c>
    56c4:	b8 00 00 00 00       	mov    $0x0,%eax
    56c9:	01 d0                	add    %edx,%eax
    56cb:	88 45 f7             	mov    %al,-0x9(%rbp)
    56ce:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    56d2:	0f 95 c0             	setne  %al
    56d5:	0f b6 c8             	movzbl %al,%ecx
    56d8:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    56dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    56e0:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    56e4:	41 89 c8             	mov    %ecx,%r8d
    56e7:	89 d1                	mov    %edx,%ecx
    56e9:	ba 04 00 00 00       	mov    $0x4,%edx
    56ee:	48 89 c7             	mov    %rax,%rdi
    56f1:	e8 62 fa ff ff       	call   5158 <LexSet>
    56f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    56fa:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5701:	00 00 
    5703:	74 05                	je     570a <LexAdd+0x8d>
    5705:	e8 f6 ea ff ff       	call   4200 <__stack_chk_fail@plt>
    570a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    570e:	c9                   	leave
    570f:	c3                   	ret

0000000000005710 <LexComma>:
    5710:	55                   	push   %rbp
    5711:	48 89 e5             	mov    %rsp,%rbp
    5714:	48 83 ec 20          	sub    $0x20,%rsp
    5718:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    571c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5720:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5727:	00 00 
    5729:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    572d:	31 c0                	xor    %eax,%eax
    572f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5733:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5737:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    573d:	b9 00 00 00 00       	mov    $0x0,%ecx
    5742:	ba 34 00 00 00       	mov    $0x34,%edx
    5747:	48 89 c7             	mov    %rax,%rdi
    574a:	e8 09 fa ff ff       	call   5158 <LexSet>
    574f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5753:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    575a:	00 00 
    575c:	74 05                	je     5763 <LexComma+0x53>
    575e:	e8 9d ea ff ff       	call   4200 <__stack_chk_fail@plt>
    5763:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5767:	c9                   	leave
    5768:	c3                   	ret

0000000000005769 <LexSub>:
    5769:	55                   	push   %rbp
    576a:	48 89 e5             	mov    %rsp,%rbp
    576d:	48 83 ec 20          	sub    $0x20,%rsp
    5771:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5775:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5779:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5780:	00 00 
    5782:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5786:	31 c0                	xor    %eax,%eax
    5788:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    578c:	48 8b 40 08          	mov    0x8(%rax),%rax
    5790:	0f b6 00             	movzbl (%rax),%eax
    5793:	3c 3d                	cmp    $0x3d,%al
    5795:	0f 94 c0             	sete   %al
    5798:	89 c2                	mov    %eax,%edx
    579a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    579e:	48 8b 40 08          	mov    0x8(%rax),%rax
    57a2:	0f b6 00             	movzbl (%rax),%eax
    57a5:	3c 2d                	cmp    $0x2d,%al
    57a7:	75 07                	jne    57b0 <LexSub+0x47>
    57a9:	b8 02 00 00 00       	mov    $0x2,%eax
    57ae:	eb 05                	jmp    57b5 <LexSub+0x4c>
    57b0:	b8 00 00 00 00       	mov    $0x0,%eax
    57b5:	01 d0                	add    %edx,%eax
    57b7:	88 45 f7             	mov    %al,-0x9(%rbp)
    57ba:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    57be:	0f 95 c0             	setne  %al
    57c1:	0f b6 c8             	movzbl %al,%ecx
    57c4:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    57c8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    57cc:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    57d0:	41 89 c8             	mov    %ecx,%r8d
    57d3:	89 d1                	mov    %edx,%ecx
    57d5:	ba 07 00 00 00       	mov    $0x7,%edx
    57da:	48 89 c7             	mov    %rax,%rdi
    57dd:	e8 76 f9 ff ff       	call   5158 <LexSet>
    57e2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    57e6:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    57ed:	00 00 
    57ef:	74 05                	je     57f6 <LexSub+0x8d>
    57f1:	e8 0a ea ff ff       	call   4200 <__stack_chk_fail@plt>
    57f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    57fa:	c9                   	leave
    57fb:	c3                   	ret

00000000000057fc <LexDot>:
    57fc:	55                   	push   %rbp
    57fd:	48 89 e5             	mov    %rsp,%rbp
    5800:	48 83 ec 20          	sub    $0x20,%rsp
    5804:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5808:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    580c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5813:	00 00 
    5815:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5819:	31 c0                	xor    %eax,%eax
    581b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    581f:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5823:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5829:	b9 00 00 00 00       	mov    $0x0,%ecx
    582e:	ba 2a 00 00 00       	mov    $0x2a,%edx
    5833:	48 89 c7             	mov    %rax,%rdi
    5836:	e8 1d f9 ff ff       	call   5158 <LexSet>
    583b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    583f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5846:	00 00 
    5848:	74 05                	je     584f <LexDot+0x53>
    584a:	e8 b1 e9 ff ff       	call   4200 <__stack_chk_fail@plt>
    584f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5853:	c9                   	leave
    5854:	c3                   	ret

0000000000005855 <LexDiv>:
    5855:	55                   	push   %rbp
    5856:	48 89 e5             	mov    %rsp,%rbp
    5859:	48 83 ec 20          	sub    $0x20,%rsp
    585d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5861:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5865:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    586c:	00 00 
    586e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5872:	31 c0                	xor    %eax,%eax
    5874:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5878:	48 8b 40 08          	mov    0x8(%rax),%rax
    587c:	0f b6 00             	movzbl (%rax),%eax
    587f:	3c 3d                	cmp    $0x3d,%al
    5881:	0f 94 c0             	sete   %al
    5884:	88 45 f7             	mov    %al,-0x9(%rbp)
    5887:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    588b:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    588f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5893:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5897:	41 89 c8             	mov    %ecx,%r8d
    589a:	89 d1                	mov    %edx,%ecx
    589c:	ba 0e 00 00 00       	mov    $0xe,%edx
    58a1:	48 89 c7             	mov    %rax,%rdi
    58a4:	e8 af f8 ff ff       	call   5158 <LexSet>
    58a9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    58ad:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    58b4:	00 00 
    58b6:	74 05                	je     58bd <LexDiv+0x68>
    58b8:	e8 43 e9 ff ff       	call   4200 <__stack_chk_fail@plt>
    58bd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    58c1:	c9                   	leave
    58c2:	c3                   	ret

00000000000058c3 <LexNum>:
    58c3:	55                   	push   %rbp
    58c4:	48 89 e5             	mov    %rsp,%rbp
    58c7:	48 83 ec 40          	sub    $0x40,%rsp
    58cb:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    58cf:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    58d3:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    58d7:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    58db:	66 0f ef c0          	pxor   %xmm0,%xmm0
    58df:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    58e3:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    58e8:	c7 45 e0 36 00 00 00 	movl   $0x36,-0x20(%rbp)
    58ef:	eb 14                	jmp    5905 <LexNum+0x42>
    58f1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    58f5:	48 8b 40 08          	mov    0x8(%rax),%rax
    58f9:	48 8d 50 01          	lea    0x1(%rax),%rdx
    58fd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5901:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5905:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5909:	48 8b 40 08          	mov    0x8(%rax),%rax
    590d:	0f b6 00             	movzbl (%rax),%eax
    5910:	0f b6 c0             	movzbl %al,%eax
    5913:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    591a:	00 
    591b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    591f:	48 01 d0             	add    %rdx,%rax
    5922:	48 8b 00             	mov    (%rax),%rax
    5925:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    5929:	74 c6                	je     58f1 <LexNum+0x2e>
    592b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    592f:	48 8b 40 08          	mov    0x8(%rax),%rax
    5933:	0f b6 00             	movzbl (%rax),%eax
    5936:	3c 2e                	cmp    $0x2e,%al
    5938:	74 43                	je     597d <LexNum+0xba>
    593a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    593e:	48 8d 48 08          	lea    0x8(%rax),%rcx
    5942:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5946:	48 8b 00             	mov    (%rax),%rax
    5949:	ba 0a 00 00 00       	mov    $0xa,%edx
    594e:	48 89 ce             	mov    %rcx,%rsi
    5951:	48 89 c7             	mov    %rax,%rdi
    5954:	e8 c7 e8 ff ff       	call   4220 <__isoc23_strtoll@plt>
    5959:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    595d:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    5961:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5965:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5969:	48 89 01             	mov    %rax,(%rcx)
    596c:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    5970:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5974:	48 89 41 10          	mov    %rax,0x10(%rcx)
    5978:	e9 c8 00 00 00       	jmp    5a45 <LexNum+0x182>
    597d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5981:	48 8b 40 08          	mov    0x8(%rax),%rax
    5985:	48 8d 50 01          	lea    0x1(%rax),%rdx
    5989:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    598d:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5991:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5995:	48 8b 40 08          	mov    0x8(%rax),%rax
    5999:	0f b6 00             	movzbl (%rax),%eax
    599c:	0f b6 c0             	movzbl %al,%eax
    599f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    59a6:	00 
    59a7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    59ab:	48 01 d0             	add    %rdx,%rax
    59ae:	48 8b 00             	mov    (%rax),%rax
    59b1:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    59b5:	74 2a                	je     59e1 <LexNum+0x11e>
    59b7:	48 8d 05 7e 46 00 00 	lea    0x467e(%rip),%rax        # a03c <_IO_stdin_used+0x3c>
    59be:	48 89 c7             	mov    %rax,%rdi
    59c1:	b8 00 00 00 00       	mov    $0x0,%eax
    59c6:	e8 3a f5 ff ff       	call   4f05 <Throw>
    59cb:	eb 14                	jmp    59e1 <LexNum+0x11e>
    59cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    59d1:	48 8b 40 08          	mov    0x8(%rax),%rax
    59d5:	48 8d 50 01          	lea    0x1(%rax),%rdx
    59d9:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    59dd:	48 89 50 08          	mov    %rdx,0x8(%rax)
    59e1:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    59e5:	48 8b 40 08          	mov    0x8(%rax),%rax
    59e9:	0f b6 00             	movzbl (%rax),%eax
    59ec:	0f b6 c0             	movzbl %al,%eax
    59ef:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    59f6:	00 
    59f7:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    59fb:	48 01 d0             	add    %rdx,%rax
    59fe:	48 8b 00             	mov    (%rax),%rax
    5a01:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
    5a05:	74 c6                	je     59cd <LexNum+0x10a>
    5a07:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5a0b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    5a0f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    5a13:	48 8b 00             	mov    (%rax),%rax
    5a16:	48 89 d6             	mov    %rdx,%rsi
    5a19:	48 89 c7             	mov    %rax,%rdi
    5a1c:	e8 af e7 ff ff       	call   41d0 <strtod@plt>
    5a21:	66 48 0f 7e c0       	movq   %xmm0,%rax
    5a26:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5a2a:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    5a2e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5a32:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5a36:	48 89 01             	mov    %rax,(%rcx)
    5a39:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    5a3d:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5a41:	48 89 41 10          	mov    %rax,0x10(%rcx)
    5a45:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    5a49:	c9                   	leave
    5a4a:	c3                   	ret

0000000000005a4b <LexColon>:
    5a4b:	55                   	push   %rbp
    5a4c:	48 89 e5             	mov    %rsp,%rbp
    5a4f:	48 83 ec 20          	sub    $0x20,%rsp
    5a53:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5a57:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5a5b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5a62:	00 00 
    5a64:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5a68:	31 c0                	xor    %eax,%eax
    5a6a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5a6e:	48 8b 40 08          	mov    0x8(%rax),%rax
    5a72:	0f b6 00             	movzbl (%rax),%eax
    5a75:	3c 2e                	cmp    $0x2e,%al
    5a77:	0f 94 c0             	sete   %al
    5a7a:	89 c2                	mov    %eax,%edx
    5a7c:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5a80:	48 8b 40 08          	mov    0x8(%rax),%rax
    5a84:	0f b6 00             	movzbl (%rax),%eax
    5a87:	3c 3a                	cmp    $0x3a,%al
    5a89:	75 07                	jne    5a92 <LexColon+0x47>
    5a8b:	b8 02 00 00 00       	mov    $0x2,%eax
    5a90:	eb 05                	jmp    5a97 <LexColon+0x4c>
    5a92:	b8 00 00 00 00       	mov    $0x0,%eax
    5a97:	01 d0                	add    %edx,%eax
    5a99:	88 45 f7             	mov    %al,-0x9(%rbp)
    5a9c:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5aa0:	0f 95 c0             	setne  %al
    5aa3:	0f b6 c8             	movzbl %al,%ecx
    5aa6:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5aaa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5aae:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5ab2:	41 89 c8             	mov    %ecx,%r8d
    5ab5:	89 d1                	mov    %edx,%ecx
    5ab7:	ba 31 00 00 00       	mov    $0x31,%edx
    5abc:	48 89 c7             	mov    %rax,%rdi
    5abf:	e8 94 f6 ff ff       	call   5158 <LexSet>
    5ac4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ac8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5acf:	00 00 
    5ad1:	74 05                	je     5ad8 <LexColon+0x8d>
    5ad3:	e8 28 e7 ff ff       	call   4200 <__stack_chk_fail@plt>
    5ad8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5adc:	c9                   	leave
    5add:	c3                   	ret

0000000000005ade <LexSemi>:
    5ade:	55                   	push   %rbp
    5adf:	48 89 e5             	mov    %rsp,%rbp
    5ae2:	48 83 ec 20          	sub    $0x20,%rsp
    5ae6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5aea:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5aee:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5af5:	00 00 
    5af7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5afb:	31 c0                	xor    %eax,%eax
    5afd:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b01:	48 8b 40 08          	mov    0x8(%rax),%rax
    5b05:	0f b6 00             	movzbl (%rax),%eax
    5b08:	3c 2e                	cmp    $0x2e,%al
    5b0a:	0f 94 c0             	sete   %al
    5b0d:	89 c2                	mov    %eax,%edx
    5b0f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b13:	48 8b 40 08          	mov    0x8(%rax),%rax
    5b17:	0f b6 00             	movzbl (%rax),%eax
    5b1a:	3c 3b                	cmp    $0x3b,%al
    5b1c:	75 07                	jne    5b25 <LexSemi+0x47>
    5b1e:	b8 02 00 00 00       	mov    $0x2,%eax
    5b23:	eb 05                	jmp    5b2a <LexSemi+0x4c>
    5b25:	b8 00 00 00 00       	mov    $0x0,%eax
    5b2a:	01 d0                	add    %edx,%eax
    5b2c:	88 45 f7             	mov    %al,-0x9(%rbp)
    5b2f:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5b33:	0f 95 c0             	setne  %al
    5b36:	0f b6 c8             	movzbl %al,%ecx
    5b39:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5b3d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5b41:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5b45:	41 89 c8             	mov    %ecx,%r8d
    5b48:	89 d1                	mov    %edx,%ecx
    5b4a:	ba 2e 00 00 00       	mov    $0x2e,%edx
    5b4f:	48 89 c7             	mov    %rax,%rdi
    5b52:	e8 01 f6 ff ff       	call   5158 <LexSet>
    5b57:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5b5b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5b62:	00 00 
    5b64:	74 05                	je     5b6b <LexSemi+0x8d>
    5b66:	e8 95 e6 ff ff       	call   4200 <__stack_chk_fail@plt>
    5b6b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5b6f:	c9                   	leave
    5b70:	c3                   	ret

0000000000005b71 <LexLt>:
    5b71:	55                   	push   %rbp
    5b72:	48 89 e5             	mov    %rsp,%rbp
    5b75:	48 83 ec 20          	sub    $0x20,%rsp
    5b79:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5b7d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5b81:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5b88:	00 00 
    5b8a:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5b8e:	31 c0                	xor    %eax,%eax
    5b90:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5b94:	48 8b 40 08          	mov    0x8(%rax),%rax
    5b98:	0f b6 00             	movzbl (%rax),%eax
    5b9b:	3c 3d                	cmp    $0x3d,%al
    5b9d:	0f 94 c0             	sete   %al
    5ba0:	89 c2                	mov    %eax,%edx
    5ba2:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ba6:	48 8b 40 08          	mov    0x8(%rax),%rax
    5baa:	0f b6 00             	movzbl (%rax),%eax
    5bad:	3c 3c                	cmp    $0x3c,%al
    5baf:	75 07                	jne    5bb8 <LexLt+0x47>
    5bb1:	b8 02 00 00 00       	mov    $0x2,%eax
    5bb6:	eb 05                	jmp    5bbd <LexLt+0x4c>
    5bb8:	b8 00 00 00 00       	mov    $0x0,%eax
    5bbd:	01 c2                	add    %eax,%edx
    5bbf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5bc3:	48 8b 40 08          	mov    0x8(%rax),%rax
    5bc7:	48 83 c0 01          	add    $0x1,%rax
    5bcb:	0f b6 00             	movzbl (%rax),%eax
    5bce:	3c 3d                	cmp    $0x3d,%al
    5bd0:	0f 94 c0             	sete   %al
    5bd3:	01 d0                	add    %edx,%eax
    5bd5:	88 45 f7             	mov    %al,-0x9(%rbp)
    5bd8:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5bdc:	0f 95 c0             	setne  %al
    5bdf:	0f b6 d0             	movzbl %al,%edx
    5be2:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    5be6:	01 d0                	add    %edx,%eax
    5be8:	83 f8 02             	cmp    $0x2,%eax
    5beb:	0f 9f c0             	setg   %al
    5bee:	0f b6 c8             	movzbl %al,%ecx
    5bf1:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5bf5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5bf9:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5bfd:	41 89 c8             	mov    %ecx,%r8d
    5c00:	89 d1                	mov    %edx,%ecx
    5c02:	ba 1c 00 00 00       	mov    $0x1c,%edx
    5c07:	48 89 c7             	mov    %rax,%rdi
    5c0a:	e8 49 f5 ff ff       	call   5158 <LexSet>
    5c0f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c13:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5c1a:	00 00 
    5c1c:	74 05                	je     5c23 <LexLt+0xb2>
    5c1e:	e8 dd e5 ff ff       	call   4200 <__stack_chk_fail@plt>
    5c23:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5c27:	c9                   	leave
    5c28:	c3                   	ret

0000000000005c29 <LexEq>:
    5c29:	55                   	push   %rbp
    5c2a:	48 89 e5             	mov    %rsp,%rbp
    5c2d:	48 83 ec 20          	sub    $0x20,%rsp
    5c31:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5c35:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5c39:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5c40:	00 00 
    5c42:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5c46:	31 c0                	xor    %eax,%eax
    5c48:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5c4c:	48 8b 40 08          	mov    0x8(%rax),%rax
    5c50:	0f b6 00             	movzbl (%rax),%eax
    5c53:	3c 3d                	cmp    $0x3d,%al
    5c55:	0f 94 c0             	sete   %al
    5c58:	88 45 f7             	mov    %al,-0x9(%rbp)
    5c5b:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    5c5f:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5c63:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5c67:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5c6b:	41 89 c8             	mov    %ecx,%r8d
    5c6e:	89 d1                	mov    %edx,%ecx
    5c70:	ba 1a 00 00 00       	mov    $0x1a,%edx
    5c75:	48 89 c7             	mov    %rax,%rdi
    5c78:	e8 db f4 ff ff       	call   5158 <LexSet>
    5c7d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5c81:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5c88:	00 00 
    5c8a:	74 05                	je     5c91 <LexEq+0x68>
    5c8c:	e8 6f e5 ff ff       	call   4200 <__stack_chk_fail@plt>
    5c91:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5c95:	c9                   	leave
    5c96:	c3                   	ret

0000000000005c97 <LexGt>:
    5c97:	55                   	push   %rbp
    5c98:	48 89 e5             	mov    %rsp,%rbp
    5c9b:	48 83 ec 20          	sub    $0x20,%rsp
    5c9f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5ca3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5ca7:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5cae:	00 00 
    5cb0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5cb4:	31 c0                	xor    %eax,%eax
    5cb6:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5cba:	48 8b 40 08          	mov    0x8(%rax),%rax
    5cbe:	0f b6 00             	movzbl (%rax),%eax
    5cc1:	3c 3d                	cmp    $0x3d,%al
    5cc3:	0f 94 c0             	sete   %al
    5cc6:	89 c2                	mov    %eax,%edx
    5cc8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ccc:	48 8b 40 08          	mov    0x8(%rax),%rax
    5cd0:	0f b6 00             	movzbl (%rax),%eax
    5cd3:	3c 3e                	cmp    $0x3e,%al
    5cd5:	75 07                	jne    5cde <LexGt+0x47>
    5cd7:	b8 02 00 00 00       	mov    $0x2,%eax
    5cdc:	eb 05                	jmp    5ce3 <LexGt+0x4c>
    5cde:	b8 00 00 00 00       	mov    $0x0,%eax
    5ce3:	01 c2                	add    %eax,%edx
    5ce5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5ce9:	48 8b 40 08          	mov    0x8(%rax),%rax
    5ced:	48 83 c0 01          	add    $0x1,%rax
    5cf1:	0f b6 00             	movzbl (%rax),%eax
    5cf4:	3c 3d                	cmp    $0x3d,%al
    5cf6:	0f 94 c0             	sete   %al
    5cf9:	01 d0                	add    %edx,%eax
    5cfb:	88 45 f7             	mov    %al,-0x9(%rbp)
    5cfe:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    5d02:	0f 95 c0             	setne  %al
    5d05:	0f b6 d0             	movzbl %al,%edx
    5d08:	0f b6 45 f7          	movzbl -0x9(%rbp),%eax
    5d0c:	01 d0                	add    %edx,%eax
    5d0e:	83 f8 02             	cmp    $0x2,%eax
    5d11:	0f 9f c0             	setg   %al
    5d14:	0f b6 c8             	movzbl %al,%ecx
    5d17:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5d1b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d1f:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5d23:	41 89 c8             	mov    %ecx,%r8d
    5d26:	89 d1                	mov    %edx,%ecx
    5d28:	ba 20 00 00 00       	mov    $0x20,%edx
    5d2d:	48 89 c7             	mov    %rax,%rdi
    5d30:	e8 23 f4 ff ff       	call   5158 <LexSet>
    5d35:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d39:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5d40:	00 00 
    5d42:	74 05                	je     5d49 <LexGt+0xb2>
    5d44:	e8 b7 e4 ff ff       	call   4200 <__stack_chk_fail@plt>
    5d49:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d4d:	c9                   	leave
    5d4e:	c3                   	ret

0000000000005d4f <LexReturn>:
    5d4f:	55                   	push   %rbp
    5d50:	48 89 e5             	mov    %rsp,%rbp
    5d53:	48 83 ec 20          	sub    $0x20,%rsp
    5d57:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5d5b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5d5f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5d66:	00 00 
    5d68:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5d6c:	31 c0                	xor    %eax,%eax
    5d6e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5d72:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5d76:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5d7c:	b9 00 00 00 00       	mov    $0x0,%ecx
    5d81:	ba 35 00 00 00       	mov    $0x35,%edx
    5d86:	48 89 c7             	mov    %rax,%rdi
    5d89:	e8 ca f3 ff ff       	call   5158 <LexSet>
    5d8e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5d92:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5d99:	00 00 
    5d9b:	74 05                	je     5da2 <LexReturn+0x53>
    5d9d:	e8 5e e4 ff ff       	call   4200 <__stack_chk_fail@plt>
    5da2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5da6:	c9                   	leave
    5da7:	c3                   	ret

0000000000005da8 <LexId>:
    5da8:	55                   	push   %rbp
    5da9:	48 89 e5             	mov    %rsp,%rbp
    5dac:	48 83 ec 60          	sub    $0x60,%rsp
    5db0:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    5db4:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    5db8:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    5dbc:	48 89 4d b0          	mov    %rcx,-0x50(%rbp)
    5dc0:	4c 89 45 a8          	mov    %r8,-0x58(%rbp)
    5dc4:	eb 14                	jmp    5dda <LexId+0x32>
    5dc6:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5dca:	48 8b 40 08          	mov    0x8(%rax),%rax
    5dce:	48 8d 50 01          	lea    0x1(%rax),%rdx
    5dd2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5dd6:	48 89 50 08          	mov    %rdx,0x8(%rax)
    5dda:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5dde:	48 8b 40 08          	mov    0x8(%rax),%rax
    5de2:	0f b6 00             	movzbl (%rax),%eax
    5de5:	0f b6 c0             	movzbl %al,%eax
    5de8:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5def:	00 
    5df0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5df4:	48 01 d0             	add    %rdx,%rax
    5df7:	48 8b 00             	mov    (%rax),%rax
    5dfa:	48 39 45 b8          	cmp    %rax,-0x48(%rbp)
    5dfe:	74 c6                	je     5dc6 <LexId+0x1e>
    5e00:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e04:	48 8b 40 08          	mov    0x8(%rax),%rax
    5e08:	0f b6 00             	movzbl (%rax),%eax
    5e0b:	0f b6 c0             	movzbl %al,%eax
    5e0e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    5e15:	00 
    5e16:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
    5e1a:	48 01 d0             	add    %rdx,%rax
    5e1d:	48 8b 00             	mov    (%rax),%rax
    5e20:	48 39 45 b0          	cmp    %rax,-0x50(%rbp)
    5e24:	74 a0                	je     5dc6 <LexId+0x1e>
    5e26:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e2a:	48 8b 50 08          	mov    0x8(%rax),%rdx
    5e2e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e32:	48 8b 00             	mov    (%rax),%rax
    5e35:	48 29 c2             	sub    %rax,%rdx
    5e38:	89 55 dc             	mov    %edx,-0x24(%rbp)
    5e3b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    5e3f:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    5e43:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    5e48:	c7 45 e0 39 00 00 00 	movl   $0x39,-0x20(%rbp)
    5e4f:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e53:	48 8b 00             	mov    (%rax),%rax
    5e56:	48 8d 48 01          	lea    0x1(%rax),%rcx
    5e5a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    5e5e:	48 8b 40 18          	mov    0x18(%rax),%rax
    5e62:	8b 55 dc             	mov    -0x24(%rbp),%edx
    5e65:	48 89 ce             	mov    %rcx,%rsi
    5e68:	48 89 c7             	mov    %rax,%rdi
    5e6b:	e8 37 ed ff ff       	call   4ba7 <TablePut>
    5e70:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    5e74:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    5e78:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5e7c:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    5e80:	48 89 01             	mov    %rax,(%rcx)
    5e83:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    5e87:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    5e8b:	48 89 41 10          	mov    %rax,0x10(%rcx)
    5e8f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    5e93:	c9                   	leave
    5e94:	c3                   	ret

0000000000005e95 <LexLs>:
    5e95:	55                   	push   %rbp
    5e96:	48 89 e5             	mov    %rsp,%rbp
    5e99:	48 83 ec 20          	sub    $0x20,%rsp
    5e9d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5ea1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5ea5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5eac:	00 00 
    5eae:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5eb2:	31 c0                	xor    %eax,%eax
    5eb4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5eb8:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5ebc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5ec2:	b9 00 00 00 00       	mov    $0x0,%ecx
    5ec7:	ba 26 00 00 00       	mov    $0x26,%edx
    5ecc:	48 89 c7             	mov    %rax,%rdi
    5ecf:	e8 84 f2 ff ff       	call   5158 <LexSet>
    5ed4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ed8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5edf:	00 00 
    5ee1:	74 05                	je     5ee8 <LexLs+0x53>
    5ee3:	e8 18 e3 ff ff       	call   4200 <__stack_chk_fail@plt>
    5ee8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5eec:	c9                   	leave
    5eed:	c3                   	ret

0000000000005eee <LexRs>:
    5eee:	55                   	push   %rbp
    5eef:	48 89 e5             	mov    %rsp,%rbp
    5ef2:	48 83 ec 20          	sub    $0x20,%rsp
    5ef6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5efa:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5efe:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5f05:	00 00 
    5f07:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5f0b:	31 c0                	xor    %eax,%eax
    5f0d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5f11:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5f15:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5f1b:	b9 00 00 00 00       	mov    $0x0,%ecx
    5f20:	ba 27 00 00 00       	mov    $0x27,%edx
    5f25:	48 89 c7             	mov    %rax,%rdi
    5f28:	e8 2b f2 ff ff       	call   5158 <LexSet>
    5f2d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5f31:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5f38:	00 00 
    5f3a:	74 05                	je     5f41 <LexRs+0x53>
    5f3c:	e8 bf e2 ff ff       	call   4200 <__stack_chk_fail@plt>
    5f41:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5f45:	c9                   	leave
    5f46:	c3                   	ret

0000000000005f47 <LexBxor>:
    5f47:	55                   	push   %rbp
    5f48:	48 89 e5             	mov    %rsp,%rbp
    5f4b:	48 83 ec 20          	sub    $0x20,%rsp
    5f4f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5f53:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5f57:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5f5e:	00 00 
    5f60:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5f64:	31 c0                	xor    %eax,%eax
    5f66:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    5f6a:	48 8b 40 08          	mov    0x8(%rax),%rax
    5f6e:	0f b6 00             	movzbl (%rax),%eax
    5f71:	3c 3d                	cmp    $0x3d,%al
    5f73:	0f 94 c0             	sete   %al
    5f76:	88 45 f7             	mov    %al,-0x9(%rbp)
    5f79:	0f b6 4d f7          	movzbl -0x9(%rbp),%ecx
    5f7d:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    5f81:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5f85:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5f89:	41 89 c8             	mov    %ecx,%r8d
    5f8c:	89 d1                	mov    %edx,%ecx
    5f8e:	ba 18 00 00 00       	mov    $0x18,%edx
    5f93:	48 89 c7             	mov    %rax,%rdi
    5f96:	e8 bd f1 ff ff       	call   5158 <LexSet>
    5f9b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5f9f:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5fa6:	00 00 
    5fa8:	74 05                	je     5faf <LexBxor+0x68>
    5faa:	e8 51 e2 ff ff       	call   4200 <__stack_chk_fail@plt>
    5faf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5fb3:	c9                   	leave
    5fb4:	c3                   	ret

0000000000005fb5 <LexBnot>:
    5fb5:	55                   	push   %rbp
    5fb6:	48 89 e5             	mov    %rsp,%rbp
    5fb9:	48 83 ec 20          	sub    $0x20,%rsp
    5fbd:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    5fc1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    5fc5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    5fcc:	00 00 
    5fce:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    5fd2:	31 c0                	xor    %eax,%eax
    5fd4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    5fd8:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    5fdc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    5fe2:	b9 00 00 00 00       	mov    $0x0,%ecx
    5fe7:	ba 03 00 00 00       	mov    $0x3,%edx
    5fec:	48 89 c7             	mov    %rax,%rdi
    5fef:	e8 64 f1 ff ff       	call   5158 <LexSet>
    5ff4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    5ff8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    5fff:	00 00 
    6001:	74 05                	je     6008 <LexBnot+0x53>
    6003:	e8 f8 e1 ff ff       	call   4200 <__stack_chk_fail@plt>
    6008:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    600c:	c9                   	leave
    600d:	c3                   	ret

000000000000600e <LexLc>:
    600e:	55                   	push   %rbp
    600f:	48 89 e5             	mov    %rsp,%rbp
    6012:	48 83 ec 20          	sub    $0x20,%rsp
    6016:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    601a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    601e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6025:	00 00 
    6027:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    602b:	31 c0                	xor    %eax,%eax
    602d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6031:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    6035:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    603b:	b9 00 00 00 00       	mov    $0x0,%ecx
    6040:	ba 28 00 00 00       	mov    $0x28,%edx
    6045:	48 89 c7             	mov    %rax,%rdi
    6048:	e8 0b f1 ff ff       	call   5158 <LexSet>
    604d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6051:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6058:	00 00 
    605a:	74 05                	je     6061 <LexLc+0x53>
    605c:	e8 9f e1 ff ff       	call   4200 <__stack_chk_fail@plt>
    6061:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6065:	c9                   	leave
    6066:	c3                   	ret

0000000000006067 <LexBor>:
    6067:	55                   	push   %rbp
    6068:	48 89 e5             	mov    %rsp,%rbp
    606b:	48 83 ec 20          	sub    $0x20,%rsp
    606f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6073:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    6077:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    607e:	00 00 
    6080:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6084:	31 c0                	xor    %eax,%eax
    6086:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    608a:	48 8b 40 08          	mov    0x8(%rax),%rax
    608e:	0f b6 00             	movzbl (%rax),%eax
    6091:	3c 3d                	cmp    $0x3d,%al
    6093:	0f 94 c0             	sete   %al
    6096:	89 c2                	mov    %eax,%edx
    6098:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    609c:	48 8b 40 08          	mov    0x8(%rax),%rax
    60a0:	0f b6 00             	movzbl (%rax),%eax
    60a3:	3c 7c                	cmp    $0x7c,%al
    60a5:	75 07                	jne    60ae <LexBor+0x47>
    60a7:	b8 02 00 00 00       	mov    $0x2,%eax
    60ac:	eb 05                	jmp    60b3 <LexBor+0x4c>
    60ae:	b8 00 00 00 00       	mov    $0x0,%eax
    60b3:	01 d0                	add    %edx,%eax
    60b5:	88 45 f7             	mov    %al,-0x9(%rbp)
    60b8:	80 7d f7 00          	cmpb   $0x0,-0x9(%rbp)
    60bc:	0f 95 c0             	setne  %al
    60bf:	0f b6 c8             	movzbl %al,%ecx
    60c2:	0f b6 55 f7          	movzbl -0x9(%rbp),%edx
    60c6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    60ca:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    60ce:	41 89 c8             	mov    %ecx,%r8d
    60d1:	89 d1                	mov    %edx,%ecx
    60d3:	ba 15 00 00 00       	mov    $0x15,%edx
    60d8:	48 89 c7             	mov    %rax,%rdi
    60db:	e8 78 f0 ff ff       	call   5158 <LexSet>
    60e0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    60e4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    60eb:	00 00 
    60ed:	74 05                	je     60f4 <LexBor+0x8d>
    60ef:	e8 0c e1 ff ff       	call   4200 <__stack_chk_fail@plt>
    60f4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    60f8:	c9                   	leave
    60f9:	c3                   	ret

00000000000060fa <LexRc>:
    60fa:	55                   	push   %rbp
    60fb:	48 89 e5             	mov    %rsp,%rbp
    60fe:	48 83 ec 20          	sub    $0x20,%rsp
    6102:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6106:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    610a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6111:	00 00 
    6113:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6117:	31 c0                	xor    %eax,%eax
    6119:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    611d:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    6121:	41 b8 00 00 00 00    	mov    $0x0,%r8d
    6127:	b9 00 00 00 00       	mov    $0x0,%ecx
    612c:	ba 29 00 00 00       	mov    $0x29,%edx
    6131:	48 89 c7             	mov    %rax,%rdi
    6134:	e8 1f f0 ff ff       	call   5158 <LexSet>
    6139:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    613d:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6144:	00 00 
    6146:	74 05                	je     614d <LexRc+0x53>
    6148:	e8 b3 e0 ff ff       	call   4200 <__stack_chk_fail@plt>
    614d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6151:	c9                   	leave
    6152:	c3                   	ret

0000000000006153 <Lex>:
    6153:	f3 0f 1e fa          	endbr64
    6157:	55                   	push   %rbp
    6158:	48 89 e5             	mov    %rsp,%rbp
    615b:	48 83 ec 20          	sub    $0x20,%rsp
    615f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6163:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    616a:	00 00 
    616c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6170:	31 c0                	xor    %eax,%eax
    6172:	e8 47 ef ff ff       	call   50be <GetLexer>
    6177:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    617b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    617f:	48 8b 50 08          	mov    0x8(%rax),%rdx
    6183:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6187:	48 89 10             	mov    %rdx,(%rax)
    618a:	f3 0f 1e fa          	endbr64
    618e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6192:	48 8b 40 08          	mov    0x8(%rax),%rax
    6196:	48 8d 48 01          	lea    0x1(%rax),%rcx
    619a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    619e:	48 89 4a 08          	mov    %rcx,0x8(%rdx)
    61a2:	0f b6 00             	movzbl (%rax),%eax
    61a5:	0f b6 c0             	movzbl %al,%eax
    61a8:	48 98                	cltq
    61aa:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    61b1:	00 
    61b2:	48 8d 05 c7 6f 00 00 	lea    0x6fc7(%rip),%rax        # d180 <ascii.49>
    61b9:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    61bd:	90                   	nop
    61be:	ff e0                	jmp    *%rax
    61c0:	f3 0f 1e fa          	endbr64
    61c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    61c8:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    61cc:	48 89 d6             	mov    %rdx,%rsi
    61cf:	48 89 c7             	mov    %rax,%rdi
    61d2:	e8 ed ef ff ff       	call   51c4 <LexEof>
    61d7:	e9 2a 03 00 00       	jmp    6506 <Lex+0x3b3>
    61dc:	f3 0f 1e fa          	endbr64
    61e0:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    61e4:	48 89 c7             	mov    %rax,%rdi
    61e7:	e8 31 f0 ff ff       	call   521d <LexLine>
    61ec:	eb 9c                	jmp    618a <Lex+0x37>
    61ee:	f3 0f 1e fa          	endbr64
    61f2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    61f6:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    61fa:	48 89 d6             	mov    %rdx,%rsi
    61fd:	48 89 c7             	mov    %rax,%rdi
    6200:	e8 3f f0 ff ff       	call   5244 <LexNot>
    6205:	e9 fc 02 00 00       	jmp    6506 <Lex+0x3b3>
    620a:	f3 0f 1e fa          	endbr64
    620e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6212:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6216:	48 89 d6             	mov    %rdx,%rsi
    6219:	48 89 c7             	mov    %rax,%rdi
    621c:	e8 91 f0 ff ff       	call   52b2 <LexStr>
    6221:	e9 e0 02 00 00       	jmp    6506 <Lex+0x3b3>
    6226:	f3 0f 1e fa          	endbr64
    622a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    622e:	48 89 c7             	mov    %rax,%rdi
    6231:	e8 81 f1 ff ff       	call   53b7 <LexComment>
    6236:	e9 4f ff ff ff       	jmp    618a <Lex+0x37>
    623b:	f3 0f 1e fa          	endbr64
    623f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6243:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6247:	48 89 d6             	mov    %rdx,%rsi
    624a:	48 89 c7             	mov    %rax,%rdi
    624d:	e8 c0 f1 ff ff       	call   5412 <LexMod>
    6252:	e9 af 02 00 00       	jmp    6506 <Lex+0x3b3>
    6257:	f3 0f 1e fa          	endbr64
    625b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    625f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6263:	48 89 d6             	mov    %rdx,%rsi
    6266:	48 89 c7             	mov    %rax,%rdi
    6269:	e8 12 f2 ff ff       	call   5480 <LexBand>
    626e:	e9 93 02 00 00       	jmp    6506 <Lex+0x3b3>
    6273:	f3 0f 1e fa          	endbr64
    6277:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    627b:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    627f:	48 89 d6             	mov    %rdx,%rsi
    6282:	48 89 c7             	mov    %rax,%rdi
    6285:	e8 89 f2 ff ff       	call   5513 <LexLp>
    628a:	e9 77 02 00 00       	jmp    6506 <Lex+0x3b3>
    628f:	f3 0f 1e fa          	endbr64
    6293:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6297:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    629b:	48 89 d6             	mov    %rdx,%rsi
    629e:	48 89 c7             	mov    %rax,%rdi
    62a1:	e8 c6 f2 ff ff       	call   556c <LexRp>
    62a6:	e9 5b 02 00 00       	jmp    6506 <Lex+0x3b3>
    62ab:	f3 0f 1e fa          	endbr64
    62af:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    62b3:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    62b7:	48 89 d6             	mov    %rdx,%rsi
    62ba:	48 89 c7             	mov    %rax,%rdi
    62bd:	e8 03 f3 ff ff       	call   55c5 <LexMul>
    62c2:	e9 3f 02 00 00       	jmp    6506 <Lex+0x3b3>
    62c7:	f3 0f 1e fa          	endbr64
    62cb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    62cf:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    62d3:	48 89 d6             	mov    %rdx,%rsi
    62d6:	48 89 c7             	mov    %rax,%rdi
    62d9:	e8 9f f3 ff ff       	call   567d <LexAdd>
    62de:	e9 23 02 00 00       	jmp    6506 <Lex+0x3b3>
    62e3:	f3 0f 1e fa          	endbr64
    62e7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    62eb:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    62ef:	48 89 d6             	mov    %rdx,%rsi
    62f2:	48 89 c7             	mov    %rax,%rdi
    62f5:	e8 16 f4 ff ff       	call   5710 <LexComma>
    62fa:	e9 07 02 00 00       	jmp    6506 <Lex+0x3b3>
    62ff:	f3 0f 1e fa          	endbr64
    6303:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6307:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    630b:	48 89 d6             	mov    %rdx,%rsi
    630e:	48 89 c7             	mov    %rax,%rdi
    6311:	e8 53 f4 ff ff       	call   5769 <LexSub>
    6316:	e9 eb 01 00 00       	jmp    6506 <Lex+0x3b3>
    631b:	f3 0f 1e fa          	endbr64
    631f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6323:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6327:	48 89 d6             	mov    %rdx,%rsi
    632a:	48 89 c7             	mov    %rax,%rdi
    632d:	e8 ca f4 ff ff       	call   57fc <LexDot>
    6332:	e9 cf 01 00 00       	jmp    6506 <Lex+0x3b3>
    6337:	f3 0f 1e fa          	endbr64
    633b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    633f:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6343:	48 89 d6             	mov    %rdx,%rsi
    6346:	48 89 c7             	mov    %rax,%rdi
    6349:	e8 07 f5 ff ff       	call   5855 <LexDiv>
    634e:	e9 b3 01 00 00       	jmp    6506 <Lex+0x3b3>
    6353:	f3 0f 1e fa          	endbr64
    6357:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    635b:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    635f:	48 8d 15 1a 6e 00 00 	lea    0x6e1a(%rip),%rdx        # d180 <ascii.49>
    6366:	48 89 d1             	mov    %rdx,%rcx
    6369:	48 8d 15 e3 ff ff ff 	lea    -0x1d(%rip),%rdx        # 6353 <Lex+0x200>
    6370:	48 89 c7             	mov    %rax,%rdi
    6373:	e8 4b f5 ff ff       	call   58c3 <LexNum>
    6378:	e9 89 01 00 00       	jmp    6506 <Lex+0x3b3>
    637d:	f3 0f 1e fa          	endbr64
    6381:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6385:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6389:	48 89 d6             	mov    %rdx,%rsi
    638c:	48 89 c7             	mov    %rax,%rdi
    638f:	e8 b7 f6 ff ff       	call   5a4b <LexColon>
    6394:	e9 6d 01 00 00       	jmp    6506 <Lex+0x3b3>
    6399:	f3 0f 1e fa          	endbr64
    639d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63a1:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    63a5:	48 89 d6             	mov    %rdx,%rsi
    63a8:	48 89 c7             	mov    %rax,%rdi
    63ab:	e8 2e f7 ff ff       	call   5ade <LexSemi>
    63b0:	e9 51 01 00 00       	jmp    6506 <Lex+0x3b3>
    63b5:	f3 0f 1e fa          	endbr64
    63b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63bd:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    63c1:	48 89 d6             	mov    %rdx,%rsi
    63c4:	48 89 c7             	mov    %rax,%rdi
    63c7:	e8 a5 f7 ff ff       	call   5b71 <LexLt>
    63cc:	e9 35 01 00 00       	jmp    6506 <Lex+0x3b3>
    63d1:	f3 0f 1e fa          	endbr64
    63d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63d9:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    63dd:	48 89 d6             	mov    %rdx,%rsi
    63e0:	48 89 c7             	mov    %rax,%rdi
    63e3:	e8 41 f8 ff ff       	call   5c29 <LexEq>
    63e8:	e9 19 01 00 00       	jmp    6506 <Lex+0x3b3>
    63ed:	f3 0f 1e fa          	endbr64
    63f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    63f5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    63f9:	48 89 d6             	mov    %rdx,%rsi
    63fc:	48 89 c7             	mov    %rax,%rdi
    63ff:	e8 93 f8 ff ff       	call   5c97 <LexGt>
    6404:	e9 fd 00 00 00       	jmp    6506 <Lex+0x3b3>
    6409:	f3 0f 1e fa          	endbr64
    640d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6411:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6415:	48 89 d6             	mov    %rdx,%rsi
    6418:	48 89 c7             	mov    %rax,%rdi
    641b:	e8 2f f9 ff ff       	call   5d4f <LexReturn>
    6420:	e9 e1 00 00 00       	jmp    6506 <Lex+0x3b3>
    6425:	f3 0f 1e fa          	endbr64
    6429:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    642d:	48 8b 75 f0          	mov    -0x10(%rbp),%rsi
    6431:	4c 8d 05 48 6d 00 00 	lea    0x6d48(%rip),%r8        # d180 <ascii.49>
    6438:	48 8d 15 14 ff ff ff 	lea    -0xec(%rip),%rdx        # 6353 <Lex+0x200>
    643f:	48 89 d1             	mov    %rdx,%rcx
    6442:	48 8d 15 dc ff ff ff 	lea    -0x24(%rip),%rdx        # 6425 <Lex+0x2d2>
    6449:	48 89 c7             	mov    %rax,%rdi
    644c:	e8 57 f9 ff ff       	call   5da8 <LexId>
    6451:	e9 b0 00 00 00       	jmp    6506 <Lex+0x3b3>
    6456:	f3 0f 1e fa          	endbr64
    645a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    645e:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6462:	48 89 d6             	mov    %rdx,%rsi
    6465:	48 89 c7             	mov    %rax,%rdi
    6468:	e8 28 fa ff ff       	call   5e95 <LexLs>
    646d:	e9 94 00 00 00       	jmp    6506 <Lex+0x3b3>
    6472:	f3 0f 1e fa          	endbr64
    6476:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    647a:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    647e:	48 89 d6             	mov    %rdx,%rsi
    6481:	48 89 c7             	mov    %rax,%rdi
    6484:	e8 65 fa ff ff       	call   5eee <LexRs>
    6489:	eb 7b                	jmp    6506 <Lex+0x3b3>
    648b:	f3 0f 1e fa          	endbr64
    648f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6493:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    6497:	48 89 d6             	mov    %rdx,%rsi
    649a:	48 89 c7             	mov    %rax,%rdi
    649d:	e8 a5 fa ff ff       	call   5f47 <LexBxor>
    64a2:	eb 62                	jmp    6506 <Lex+0x3b3>
    64a4:	f3 0f 1e fa          	endbr64
    64a8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64ac:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64b0:	48 89 d6             	mov    %rdx,%rsi
    64b3:	48 89 c7             	mov    %rax,%rdi
    64b6:	e8 fa fa ff ff       	call   5fb5 <LexBnot>
    64bb:	eb 49                	jmp    6506 <Lex+0x3b3>
    64bd:	f3 0f 1e fa          	endbr64
    64c1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64c5:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64c9:	48 89 d6             	mov    %rdx,%rsi
    64cc:	48 89 c7             	mov    %rax,%rdi
    64cf:	e8 3a fb ff ff       	call   600e <LexLc>
    64d4:	eb 30                	jmp    6506 <Lex+0x3b3>
    64d6:	f3 0f 1e fa          	endbr64
    64da:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64de:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64e2:	48 89 d6             	mov    %rdx,%rsi
    64e5:	48 89 c7             	mov    %rax,%rdi
    64e8:	e8 7a fb ff ff       	call   6067 <LexBor>
    64ed:	eb 17                	jmp    6506 <Lex+0x3b3>
    64ef:	f3 0f 1e fa          	endbr64
    64f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    64f7:	48 8b 55 f0          	mov    -0x10(%rbp),%rdx
    64fb:	48 89 d6             	mov    %rdx,%rsi
    64fe:	48 89 c7             	mov    %rax,%rdi
    6501:	e8 f4 fb ff ff       	call   60fa <LexRc>
    6506:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    650a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6511:	00 00 
    6513:	74 05                	je     651a <Lex+0x3c7>
    6515:	e8 e6 dc ff ff       	call   4200 <__stack_chk_fail@plt>
    651a:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    651e:	c9                   	leave
    651f:	c3                   	ret

0000000000006520 <GetParser>:
    6520:	55                   	push   %rbp
    6521:	48 89 e5             	mov    %rsp,%rbp
    6524:	48 8d 05 b5 7f 00 00 	lea    0x7fb5(%rip),%rax        # e4e0 <parser.42>
    652b:	5d                   	pop    %rbp
    652c:	c3                   	ret

000000000000652d <ParserInit>:
    652d:	f3 0f 1e fa          	endbr64
    6531:	55                   	push   %rbp
    6532:	48 89 e5             	mov    %rsp,%rbp
    6535:	90                   	nop
    6536:	5d                   	pop    %rbp
    6537:	c3                   	ret

0000000000006538 <ParseNodeLog>:
    6538:	f3 0f 1e fa          	endbr64
    653c:	55                   	push   %rbp
    653d:	48 89 e5             	mov    %rsp,%rbp
    6540:	48 83 ec 20          	sub    $0x20,%rsp
    6544:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    6548:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    654c:	8b 00                	mov    (%rax),%eax
    654e:	85 c0                	test   %eax,%eax
    6550:	0f 85 a2 00 00 00    	jne    65f8 <ParseNodeLog+0xc0>
    6556:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    655a:	8b 40 08             	mov    0x8(%rax),%eax
    655d:	89 c0                	mov    %eax,%eax
    655f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    6566:	00 
    6567:	48 8d 05 12 70 00 00 	lea    0x7012(%rip),%rax        # d580 <types.46>
    656e:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    6572:	90                   	nop
    6573:	ff e0                	jmp    *%rax
    6575:	f3 0f 1e fa          	endbr64
    6579:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    657d:	48 8b 40 10          	mov    0x10(%rax),%rax
    6581:	48 89 c6             	mov    %rax,%rsi
    6584:	48 8d 05 c2 3a 00 00 	lea    0x3ac2(%rip),%rax        # a04d <_IO_stdin_used+0x4d>
    658b:	48 89 c7             	mov    %rax,%rdi
    658e:	b8 00 00 00 00       	mov    $0x0,%eax
    6593:	e8 78 dc ff ff       	call   4210 <printf@plt>
    6598:	eb 5f                	jmp    65f9 <ParseNodeLog+0xc1>
    659a:	f3 0f 1e fa          	endbr64
    659e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    65a2:	48 8b 40 10          	mov    0x10(%rax),%rax
    65a6:	66 48 0f 6e c0       	movq   %rax,%xmm0
    65ab:	48 8d 05 a0 3a 00 00 	lea    0x3aa0(%rip),%rax        # a052 <_IO_stdin_used+0x52>
    65b2:	48 89 c7             	mov    %rax,%rdi
    65b5:	b8 01 00 00 00       	mov    $0x1,%eax
    65ba:	e8 51 dc ff ff       	call   4210 <printf@plt>
    65bf:	eb 38                	jmp    65f9 <ParseNodeLog+0xc1>
    65c1:	f3 0f 1e fa          	endbr64
    65c5:	e8 2c de ff ff       	call   43f6 <GetStrings>
    65ca:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    65ce:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    65d2:	48 8b 40 10          	mov    0x10(%rax),%rax
    65d6:	8b 10                	mov    (%rax),%edx
    65d8:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    65dc:	89 d6                	mov    %edx,%esi
    65de:	48 89 c7             	mov    %rax,%rdi
    65e1:	e8 3a df ff ff       	call   4520 <ArenaOff>
    65e6:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    65ea:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    65ee:	48 89 c7             	mov    %rax,%rdi
    65f1:	e8 ba db ff ff       	call   41b0 <puts@plt>
    65f6:	eb 01                	jmp    65f9 <ParseNodeLog+0xc1>
    65f8:	90                   	nop
    65f9:	c9                   	leave
    65fa:	c3                   	ret

00000000000065fb <ParseMatch>:
    65fb:	f3 0f 1e fa          	endbr64
    65ff:	55                   	push   %rbp
    6600:	48 89 e5             	mov    %rsp,%rbp
    6603:	53                   	push   %rbx
    6604:	48 83 ec 48          	sub    $0x48,%rsp
    6608:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    660c:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    660f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6616:	00 00 
    6618:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    661c:	31 c0                	xor    %eax,%eax
    661e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6622:	8b 00                	mov    (%rax),%eax
    6624:	39 45 d4             	cmp    %eax,-0x2c(%rbp)
    6627:	74 1f                	je     6648 <ParseMatch+0x4d>
    6629:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    662d:	8b 10                	mov    (%rax),%edx
    662f:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    6632:	89 c6                	mov    %eax,%esi
    6634:	48 8d 05 1b 3a 00 00 	lea    0x3a1b(%rip),%rax        # a056 <_IO_stdin_used+0x56>
    663b:	48 89 c7             	mov    %rax,%rdi
    663e:	b8 00 00 00 00       	mov    $0x0,%eax
    6643:	e8 bd e8 ff ff       	call   4f05 <Throw>
    6648:	48 8b 5d d8          	mov    -0x28(%rbp),%rbx
    664c:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
    6650:	48 89 c7             	mov    %rax,%rdi
    6653:	e8 fb fa ff ff       	call   6153 <Lex>
    6658:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    665c:	48 8b 55 b8          	mov    -0x48(%rbp),%rdx
    6660:	48 89 03             	mov    %rax,(%rbx)
    6663:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    6667:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    666b:	48 89 43 10          	mov    %rax,0x10(%rbx)
    666f:	90                   	nop
    6670:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    6674:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    667b:	00 00 
    667d:	74 05                	je     6684 <ParseMatch+0x89>
    667f:	e8 7c db ff ff       	call   4200 <__stack_chk_fail@plt>
    6684:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    6688:	c9                   	leave
    6689:	c3                   	ret

000000000000668a <ParseIf>:
    668a:	f3 0f 1e fa          	endbr64
    668e:	55                   	push   %rbp
    668f:	48 89 e5             	mov    %rsp,%rbp
    6692:	48 83 ec 50          	sub    $0x50,%rsp
    6696:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
    669a:	48 89 75 b0          	mov    %rsi,-0x50(%rbp)
    669e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    66a5:	00 00 
    66a7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    66ab:	31 c0                	xor    %eax,%eax
    66ad:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    66b1:	be 2b 00 00 00       	mov    $0x2b,%esi
    66b6:	48 89 c7             	mov    %rax,%rdi
    66b9:	e8 3d ff ff ff       	call   65fb <ParseMatch>
    66be:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
    66c2:	48 8b 4d b0          	mov    -0x50(%rbp),%rcx
    66c6:	ba 00 00 00 00       	mov    $0x0,%edx
    66cb:	48 89 ce             	mov    %rcx,%rsi
    66ce:	48 89 c7             	mov    %rax,%rdi
    66d1:	e8 cd 06 00 00       	call   6da3 <ParseExpr>
    66d6:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    66da:	be 32 00 00 00       	mov    $0x32,%esi
    66df:	48 89 c7             	mov    %rax,%rdi
    66e2:	e8 14 ff ff ff       	call   65fb <ParseMatch>
    66e7:	eb 3a                	jmp    6723 <ParseIf+0x99>
    66e9:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    66ed:	48 8b 55 b0          	mov    -0x50(%rbp),%rdx
    66f1:	48 89 d6             	mov    %rdx,%rsi
    66f4:	48 89 c7             	mov    %rax,%rdi
    66f7:	e8 8f 09 00 00       	call   708b <ParseStmt>
    66fc:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6700:	8b 00                	mov    (%rax),%eax
    6702:	83 f8 33             	cmp    $0x33,%eax
    6705:	74 28                	je     672f <ParseIf+0xa5>
    6707:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    670b:	8b 00                	mov    (%rax),%eax
    670d:	83 f8 2d             	cmp    $0x2d,%eax
    6710:	75 11                	jne    6723 <ParseIf+0x99>
    6712:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6716:	be 2d 00 00 00       	mov    $0x2d,%esi
    671b:	48 89 c7             	mov    %rax,%rdi
    671e:	e8 d8 fe ff ff       	call   65fb <ParseMatch>
    6723:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6727:	8b 00                	mov    (%rax),%eax
    6729:	85 c0                	test   %eax,%eax
    672b:	75 bc                	jne    66e9 <ParseIf+0x5f>
    672d:	eb 01                	jmp    6730 <ParseIf+0xa6>
    672f:	90                   	nop
    6730:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    6734:	be 33 00 00 00       	mov    $0x33,%esi
    6739:	48 89 c7             	mov    %rax,%rdi
    673c:	e8 ba fe ff ff       	call   65fb <ParseMatch>
    6741:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    6745:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6749:	0f 11 00             	movups %xmm0,(%rax)
    674c:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6751:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6755:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    675c:	00 00 
    675e:	74 05                	je     6765 <ParseIf+0xdb>
    6760:	e8 9b da ff ff       	call   4200 <__stack_chk_fail@plt>
    6765:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
    6769:	c9                   	leave
    676a:	c3                   	ret

000000000000676b <ParseFor>:
    676b:	f3 0f 1e fa          	endbr64
    676f:	55                   	push   %rbp
    6770:	48 89 e5             	mov    %rsp,%rbp
    6773:	48 83 ec 30          	sub    $0x30,%rsp
    6777:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    677b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    677f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6783:	be 2c 00 00 00       	mov    $0x2c,%esi
    6788:	48 89 c7             	mov    %rax,%rdi
    678b:	e8 6b fe ff ff       	call   65fb <ParseMatch>
    6790:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6794:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6798:	0f 11 00             	movups %xmm0,(%rax)
    679b:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    67a0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    67a4:	c9                   	leave
    67a5:	c3                   	ret

00000000000067a6 <ParseDo>:
    67a6:	f3 0f 1e fa          	endbr64
    67aa:	55                   	push   %rbp
    67ab:	48 89 e5             	mov    %rsp,%rbp
    67ae:	48 83 ec 30          	sub    $0x30,%rsp
    67b2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    67b6:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    67ba:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    67be:	be 2f 00 00 00       	mov    $0x2f,%esi
    67c3:	48 89 c7             	mov    %rax,%rdi
    67c6:	e8 30 fe ff ff       	call   65fb <ParseMatch>
    67cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    67cf:	66 0f ef c0          	pxor   %xmm0,%xmm0
    67d3:	0f 11 00             	movups %xmm0,(%rax)
    67d6:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    67db:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    67df:	c9                   	leave
    67e0:	c3                   	ret

00000000000067e1 <ParseWhile>:
    67e1:	f3 0f 1e fa          	endbr64
    67e5:	55                   	push   %rbp
    67e6:	48 89 e5             	mov    %rsp,%rbp
    67e9:	48 83 ec 30          	sub    $0x30,%rsp
    67ed:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    67f1:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    67f5:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    67f9:	be 30 00 00 00       	mov    $0x30,%esi
    67fe:	48 89 c7             	mov    %rax,%rdi
    6801:	e8 f5 fd ff ff       	call   65fb <ParseMatch>
    6806:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    680a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    680e:	0f 11 00             	movups %xmm0,(%rax)
    6811:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6816:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    681a:	c9                   	leave
    681b:	c3                   	ret

000000000000681c <ParseFunc>:
    681c:	f3 0f 1e fa          	endbr64
    6820:	55                   	push   %rbp
    6821:	48 89 e5             	mov    %rsp,%rbp
    6824:	48 83 ec 60          	sub    $0x60,%rsp
    6828:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    682c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6830:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    6834:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    683b:	00 00 
    683d:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6841:	31 c0                	xor    %eax,%eax
    6843:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6847:	be 24 00 00 00       	mov    $0x24,%esi
    684c:	48 89 c7             	mov    %rax,%rdi
    684f:	e8 a7 fd ff ff       	call   65fb <ParseMatch>
    6854:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6858:	be 25 00 00 00       	mov    $0x25,%esi
    685d:	48 89 c7             	mov    %rax,%rdi
    6860:	e8 96 fd ff ff       	call   65fb <ParseMatch>
    6865:	eb 13                	jmp    687a <ParseFunc+0x5e>
    6867:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    686b:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    686f:	48 89 d6             	mov    %rdx,%rsi
    6872:	48 89 c7             	mov    %rax,%rdi
    6875:	e8 11 08 00 00       	call   708b <ParseStmt>
    687a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    687e:	8b 00                	mov    (%rax),%eax
    6880:	85 c0                	test   %eax,%eax
    6882:	74 0b                	je     688f <ParseFunc+0x73>
    6884:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6888:	8b 00                	mov    (%rax),%eax
    688a:	83 f8 33             	cmp    $0x33,%eax
    688d:	75 d8                	jne    6867 <ParseFunc+0x4b>
    688f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6893:	be 33 00 00 00       	mov    $0x33,%esi
    6898:	48 89 c7             	mov    %rax,%rdi
    689b:	e8 5b fd ff ff       	call   65fb <ParseMatch>
    68a0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    68a4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    68a8:	0f 11 00             	movups %xmm0,(%rax)
    68ab:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    68b0:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    68b4:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    68bb:	00 00 
    68bd:	74 05                	je     68c4 <ParseFunc+0xa8>
    68bf:	e8 3c d9 ff ff       	call   4200 <__stack_chk_fail@plt>
    68c4:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    68c8:	c9                   	leave
    68c9:	c3                   	ret

00000000000068ca <ParseId>:
    68ca:	f3 0f 1e fa          	endbr64
    68ce:	55                   	push   %rbp
    68cf:	48 89 e5             	mov    %rsp,%rbp
    68d2:	48 83 ec 40          	sub    $0x40,%rsp
    68d6:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    68da:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    68de:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    68e5:	00 00 
    68e7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    68eb:	31 c0                	xor    %eax,%eax
    68ed:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    68f1:	48 8b 40 10          	mov    0x10(%rax),%rax
    68f5:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    68f9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    68fd:	be 39 00 00 00       	mov    $0x39,%esi
    6902:	48 89 c7             	mov    %rax,%rdi
    6905:	e8 f1 fc ff ff       	call   65fb <ParseMatch>
    690a:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    690e:	be 31 00 00 00       	mov    $0x31,%esi
    6913:	48 89 c7             	mov    %rax,%rdi
    6916:	e8 e0 fc ff ff       	call   65fb <ParseMatch>
    691b:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    691f:	8b 00                	mov    (%rax),%eax
    6921:	83 f8 24             	cmp    $0x24,%eax
    6924:	75 19                	jne    693f <ParseId+0x75>
    6926:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    692a:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    692e:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6932:	48 89 ce             	mov    %rcx,%rsi
    6935:	48 89 c7             	mov    %rax,%rdi
    6938:	e8 df fe ff ff       	call   681c <ParseFunc>
    693d:	eb 33                	jmp    6972 <ParseId+0xa8>
    693f:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6943:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6947:	ba 00 00 00 00       	mov    $0x0,%edx
    694c:	48 89 ce             	mov    %rcx,%rsi
    694f:	48 89 c7             	mov    %rax,%rdi
    6952:	e8 4c 04 00 00       	call   6da3 <ParseExpr>
    6957:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    695b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    695f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6963:	48 89 01             	mov    %rax,(%rcx)
    6966:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    696a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    696e:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6972:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6976:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    697d:	00 00 
    697f:	74 05                	je     6986 <ParseId+0xbc>
    6981:	e8 7a d8 ff ff       	call   4200 <__stack_chk_fail@plt>
    6986:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    698a:	c9                   	leave
    698b:	c3                   	ret

000000000000698c <ParseEos>:
    698c:	f3 0f 1e fa          	endbr64
    6990:	55                   	push   %rbp
    6991:	48 89 e5             	mov    %rsp,%rbp
    6994:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6998:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    699c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    69a0:	66 0f ef c0          	pxor   %xmm0,%xmm0
    69a4:	0f 11 00             	movups %xmm0,(%rax)
    69a7:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    69ac:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    69b0:	5d                   	pop    %rbp
    69b1:	c3                   	ret

00000000000069b2 <ParseErr>:
    69b2:	f3 0f 1e fa          	endbr64
    69b6:	55                   	push   %rbp
    69b7:	48 89 e5             	mov    %rsp,%rbp
    69ba:	48 83 ec 30          	sub    $0x30,%rsp
    69be:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    69c2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    69c6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    69ca:	8b 00                	mov    (%rax),%eax
    69cc:	89 c6                	mov    %eax,%esi
    69ce:	48 8d 05 97 36 00 00 	lea    0x3697(%rip),%rax        # a06c <_IO_stdin_used+0x6c>
    69d5:	48 89 c7             	mov    %rax,%rdi
    69d8:	b8 00 00 00 00       	mov    $0x0,%eax
    69dd:	e8 23 e5 ff ff       	call   4f05 <Throw>
    69e2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    69e6:	66 0f ef c0          	pxor   %xmm0,%xmm0
    69ea:	0f 11 00             	movups %xmm0,(%rax)
    69ed:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    69f2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    69f6:	c9                   	leave
    69f7:	c3                   	ret

00000000000069f8 <ParseUnary>:
    69f8:	f3 0f 1e fa          	endbr64
    69fc:	55                   	push   %rbp
    69fd:	48 89 e5             	mov    %rsp,%rbp
    6a00:	48 83 ec 50          	sub    $0x50,%rsp
    6a04:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6a08:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6a0c:	89 55 bc             	mov    %edx,-0x44(%rbp)
    6a0f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6a16:	00 00 
    6a18:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6a1c:	31 c0                	xor    %eax,%eax
    6a1e:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6a22:	8b 00                	mov    (%rax),%eax
    6a24:	89 45 dc             	mov    %eax,-0x24(%rbp)
    6a27:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6a2b:	8b 10                	mov    (%rax),%edx
    6a2d:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6a31:	89 d6                	mov    %edx,%esi
    6a33:	48 89 c7             	mov    %rax,%rdi
    6a36:	e8 c0 fb ff ff       	call   65fb <ParseMatch>
    6a3b:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6a3f:	8b 55 bc             	mov    -0x44(%rbp),%edx
    6a42:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6a46:	48 89 ce             	mov    %rcx,%rsi
    6a49:	48 89 c7             	mov    %rax,%rdi
    6a4c:	e8 52 03 00 00       	call   6da3 <ParseExpr>
    6a51:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6a55:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    6a59:	8b 4d dc             	mov    -0x24(%rbp),%ecx
    6a5c:	89 ce                	mov    %ecx,%esi
    6a5e:	48 89 c7             	mov    %rax,%rdi
    6a61:	e8 41 0f 00 00       	call   79a7 <CompileUna>
    6a66:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6a6a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6a71:	00 00 
    6a73:	74 05                	je     6a7a <ParseUnary+0x82>
    6a75:	e8 86 d7 ff ff       	call   4200 <__stack_chk_fail@plt>
    6a7a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6a7e:	c9                   	leave
    6a7f:	c3                   	ret

0000000000006a80 <ParseBinary>:
    6a80:	f3 0f 1e fa          	endbr64
    6a84:	55                   	push   %rbp
    6a85:	48 89 e5             	mov    %rsp,%rbp
    6a88:	48 83 ec 50          	sub    $0x50,%rsp
    6a8c:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6a90:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6a94:	48 89 55 b8          	mov    %rdx,-0x48(%rbp)
    6a98:	89 4d b4             	mov    %ecx,-0x4c(%rbp)
    6a9b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6aa2:	00 00 
    6aa4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6aa8:	31 c0                	xor    %eax,%eax
    6aaa:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6aae:	8b 00                	mov    (%rax),%eax
    6ab0:	89 45 dc             	mov    %eax,-0x24(%rbp)
    6ab3:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6ab7:	8b 10                	mov    (%rax),%edx
    6ab9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6abd:	89 d6                	mov    %edx,%esi
    6abf:	48 89 c7             	mov    %rax,%rdi
    6ac2:	e8 34 fb ff ff       	call   65fb <ParseMatch>
    6ac7:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6acb:	8b 55 b4             	mov    -0x4c(%rbp),%edx
    6ace:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6ad2:	48 89 ce             	mov    %rcx,%rsi
    6ad5:	48 89 c7             	mov    %rax,%rdi
    6ad8:	e8 c6 02 00 00       	call   6da3 <ParseExpr>
    6add:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6ae1:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
    6ae5:	8b 55 dc             	mov    -0x24(%rbp),%edx
    6ae8:	48 8b 75 b8          	mov    -0x48(%rbp),%rsi
    6aec:	48 89 c7             	mov    %rax,%rdi
    6aef:	e8 a6 2e 00 00       	call   999a <CompileBin>
    6af4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6af8:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6aff:	00 00 
    6b01:	74 05                	je     6b08 <ParseBinary+0x88>
    6b03:	e8 f8 d6 ff ff       	call   4200 <__stack_chk_fail@plt>
    6b08:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6b0c:	c9                   	leave
    6b0d:	c3                   	ret

0000000000006b0e <ParseGroup>:
    6b0e:	f3 0f 1e fa          	endbr64
    6b12:	55                   	push   %rbp
    6b13:	48 89 e5             	mov    %rsp,%rbp
    6b16:	48 83 ec 30          	sub    $0x30,%rsp
    6b1a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6b1e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6b22:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6b29:	00 00 
    6b2b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6b2f:	31 c0                	xor    %eax,%eax
    6b31:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6b35:	be 24 00 00 00       	mov    $0x24,%esi
    6b3a:	48 89 c7             	mov    %rax,%rdi
    6b3d:	e8 b9 fa ff ff       	call   65fb <ParseMatch>
    6b42:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
    6b46:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    6b4a:	ba 00 00 00 00       	mov    $0x0,%edx
    6b4f:	48 89 ce             	mov    %rcx,%rsi
    6b52:	48 89 c7             	mov    %rax,%rdi
    6b55:	e8 49 02 00 00       	call   6da3 <ParseExpr>
    6b5a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6b5e:	be 25 00 00 00       	mov    $0x25,%esi
    6b63:	48 89 c7             	mov    %rax,%rdi
    6b66:	e8 90 fa ff ff       	call   65fb <ParseMatch>
    6b6b:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6b6f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6b73:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6b77:	48 89 01             	mov    %rax,(%rcx)
    6b7a:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6b7e:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6b82:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6b86:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    6b8a:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    6b91:	00 00 
    6b93:	74 05                	je     6b9a <ParseGroup+0x8c>
    6b95:	e8 66 d6 ff ff       	call   4200 <__stack_chk_fail@plt>
    6b9a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6b9e:	c9                   	leave
    6b9f:	c3                   	ret

0000000000006ba0 <ParseCall>:
    6ba0:	f3 0f 1e fa          	endbr64
    6ba4:	55                   	push   %rbp
    6ba5:	48 89 e5             	mov    %rsp,%rbp
    6ba8:	48 83 ec 40          	sub    $0x40,%rsp
    6bac:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6bb0:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6bb4:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6bb8:	48 8b 40 10          	mov    0x10(%rax),%rax
    6bbc:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    6bc0:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6bc4:	be 39 00 00 00       	mov    $0x39,%esi
    6bc9:	48 89 c7             	mov    %rax,%rdi
    6bcc:	e8 2a fa ff ff       	call   65fb <ParseMatch>
    6bd1:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6bd5:	be 24 00 00 00       	mov    $0x24,%esi
    6bda:	48 89 c7             	mov    %rax,%rdi
    6bdd:	e8 19 fa ff ff       	call   65fb <ParseMatch>
    6be2:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6be6:	be 25 00 00 00       	mov    $0x25,%esi
    6beb:	48 89 c7             	mov    %rax,%rdi
    6bee:	e8 08 fa ff ff       	call   65fb <ParseMatch>
    6bf3:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6bf7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6bfb:	0f 11 00             	movups %xmm0,(%rax)
    6bfe:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    6c03:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    6c07:	c9                   	leave
    6c08:	c3                   	ret

0000000000006c09 <ParseI64>:
    6c09:	f3 0f 1e fa          	endbr64
    6c0d:	55                   	push   %rbp
    6c0e:	48 89 e5             	mov    %rsp,%rbp
    6c11:	48 83 ec 30          	sub    $0x30,%rsp
    6c15:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6c19:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6c1d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6c21:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6c25:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6c2a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6c2e:	48 8b 40 10          	mov    0x10(%rax),%rax
    6c32:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6c36:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6c3a:	be 36 00 00 00       	mov    $0x36,%esi
    6c3f:	48 89 c7             	mov    %rax,%rdi
    6c42:	e8 b4 f9 ff ff       	call   65fb <ParseMatch>
    6c47:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6c4b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6c4f:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6c53:	48 89 01             	mov    %rax,(%rcx)
    6c56:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6c5a:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6c5e:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6c62:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6c66:	c9                   	leave
    6c67:	c3                   	ret

0000000000006c68 <ParseF64>:
    6c68:	f3 0f 1e fa          	endbr64
    6c6c:	55                   	push   %rbp
    6c6d:	48 89 e5             	mov    %rsp,%rbp
    6c70:	48 83 ec 30          	sub    $0x30,%rsp
    6c74:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6c78:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6c7c:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6c80:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6c84:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6c89:	c7 45 e8 01 00 00 00 	movl   $0x1,-0x18(%rbp)
    6c90:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6c94:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    6c99:	f2 0f 11 45 f0       	movsd  %xmm0,-0x10(%rbp)
    6c9e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6ca2:	be 37 00 00 00       	mov    $0x37,%esi
    6ca7:	48 89 c7             	mov    %rax,%rdi
    6caa:	e8 4c f9 ff ff       	call   65fb <ParseMatch>
    6caf:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6cb3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6cb7:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6cbb:	48 89 01             	mov    %rax,(%rcx)
    6cbe:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6cc2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6cc6:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6cca:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6cce:	c9                   	leave
    6ccf:	c3                   	ret

0000000000006cd0 <ParseStr>:
    6cd0:	f3 0f 1e fa          	endbr64
    6cd4:	55                   	push   %rbp
    6cd5:	48 89 e5             	mov    %rsp,%rbp
    6cd8:	48 83 ec 30          	sub    $0x30,%rsp
    6cdc:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6ce0:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6ce4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6ce8:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6cec:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6cf1:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
    6cf8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6cfc:	48 8b 40 10          	mov    0x10(%rax),%rax
    6d00:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6d04:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6d08:	be 38 00 00 00       	mov    $0x38,%esi
    6d0d:	48 89 c7             	mov    %rax,%rdi
    6d10:	e8 e6 f8 ff ff       	call   65fb <ParseMatch>
    6d15:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6d19:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6d1d:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6d21:	48 89 01             	mov    %rax,(%rcx)
    6d24:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6d28:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6d2c:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6d30:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6d34:	c9                   	leave
    6d35:	c3                   	ret

0000000000006d36 <ParseRef>:
    6d36:	f3 0f 1e fa          	endbr64
    6d3a:	55                   	push   %rbp
    6d3b:	48 89 e5             	mov    %rsp,%rbp
    6d3e:	48 83 ec 30          	sub    $0x30,%rsp
    6d42:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    6d46:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    6d4a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6d4e:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6d52:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6d57:	c7 45 e0 01 00 00 00 	movl   $0x1,-0x20(%rbp)
    6d5e:	c7 45 e8 02 00 00 00 	movl   $0x2,-0x18(%rbp)
    6d65:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6d69:	48 8b 40 10          	mov    0x10(%rax),%rax
    6d6d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6d71:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    6d75:	be 39 00 00 00       	mov    $0x39,%esi
    6d7a:	48 89 c7             	mov    %rax,%rdi
    6d7d:	e8 79 f8 ff ff       	call   65fb <ParseMatch>
    6d82:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    6d86:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    6d8a:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    6d8e:	48 89 01             	mov    %rax,(%rcx)
    6d91:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    6d95:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    6d99:	48 89 41 10          	mov    %rax,0x10(%rcx)
    6d9d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6da1:	c9                   	leave
    6da2:	c3                   	ret

0000000000006da3 <ParseExpr>:
    6da3:	f3 0f 1e fa          	endbr64
    6da7:	55                   	push   %rbp
    6da8:	48 89 e5             	mov    %rsp,%rbp
    6dab:	48 83 ec 70          	sub    $0x70,%rsp
    6daf:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
    6db3:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
    6db7:	89 55 bc             	mov    %edx,-0x44(%rbp)
    6dba:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    6dc1:	00 00 
    6dc3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    6dc7:	31 c0                	xor    %eax,%eax
    6dc9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6dcd:	8b 00                	mov    (%rax),%eax
    6dcf:	89 c2                	mov    %eax,%edx
    6dd1:	48 89 d0             	mov    %rdx,%rax
    6dd4:	48 01 c0             	add    %rax,%rax
    6dd7:	48 01 d0             	add    %rdx,%rax
    6dda:	48 c1 e0 03          	shl    $0x3,%rax
    6dde:	48 8d 15 bb 67 00 00 	lea    0x67bb(%rip),%rdx        # d5a0 <rules.44>
    6de5:	48 01 d0             	add    %rdx,%rax
    6de8:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    6dec:	66 0f ef c0          	pxor   %xmm0,%xmm0
    6df0:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    6df4:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    6df9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6dfd:	48 8b 00             	mov    (%rax),%rax
    6e00:	eb 6e                	jmp    6e70 <ParseExpr+0xcd>
    6e02:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
    6e06:	8b 00                	mov    (%rax),%eax
    6e08:	89 c2                	mov    %eax,%edx
    6e0a:	48 89 d0             	mov    %rdx,%rax
    6e0d:	48 01 c0             	add    %rax,%rax
    6e10:	48 01 d0             	add    %rdx,%rax
    6e13:	48 c1 e0 03          	shl    $0x3,%rax
    6e17:	48 8d 15 82 67 00 00 	lea    0x6782(%rip),%rdx        # d5a0 <rules.44>
    6e1e:	48 01 d0             	add    %rdx,%rax
    6e21:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    6e25:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6e29:	8b 40 10             	mov    0x10(%rax),%eax
    6e2c:	39 45 bc             	cmp    %eax,-0x44(%rbp)
    6e2f:	0f 83 20 02 00 00    	jae    7055 <ParseExpr+0x2b2>
    6e35:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6e39:	48 8b 40 08          	mov    0x8(%rax),%rax
    6e3d:	eb 31                	jmp    6e70 <ParseExpr+0xcd>
    6e3f:	f3 0f 1e fa          	endbr64
    6e43:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6e47:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6e4b:	48 89 d6             	mov    %rdx,%rsi
    6e4e:	48 89 c7             	mov    %rax,%rdi
    6e51:	e8 36 fb ff ff       	call   698c <ParseEos>
    6e56:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6e5a:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6e5e:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6e62:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6e66:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6e6a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6e6e:	eb 92                	jmp    6e02 <ParseExpr+0x5f>
    6e70:	ff e0                	jmp    *%rax
    6e72:	f3 0f 1e fa          	endbr64
    6e76:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6e7a:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6e7e:	48 89 d6             	mov    %rdx,%rsi
    6e81:	48 89 c7             	mov    %rax,%rdi
    6e84:	e8 29 fb ff ff       	call   69b2 <ParseErr>
    6e89:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6e8d:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6e91:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6e95:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6e99:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6e9d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6ea1:	e9 5c ff ff ff       	jmp    6e02 <ParseExpr+0x5f>
    6ea6:	f3 0f 1e fa          	endbr64
    6eaa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6eae:	8b 50 10             	mov    0x10(%rax),%edx
    6eb1:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6eb5:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
    6eb9:	48 89 ce             	mov    %rcx,%rsi
    6ebc:	48 89 c7             	mov    %rax,%rdi
    6ebf:	e8 34 fb ff ff       	call   69f8 <ParseUnary>
    6ec4:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6ec8:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6ecc:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6ed0:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6ed4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6ed8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6edc:	e9 21 ff ff ff       	jmp    6e02 <ParseExpr+0x5f>
    6ee1:	f3 0f 1e fa          	endbr64
    6ee5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    6ee9:	8b 48 10             	mov    0x10(%rax),%ecx
    6eec:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6ef0:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
    6ef4:	48 8b 75 c0          	mov    -0x40(%rbp),%rsi
    6ef8:	48 89 c7             	mov    %rax,%rdi
    6efb:	e8 80 fb ff ff       	call   6a80 <ParseBinary>
    6f00:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6f04:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6f08:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6f0c:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6f10:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6f14:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6f18:	e9 e5 fe ff ff       	jmp    6e02 <ParseExpr+0x5f>
    6f1d:	f3 0f 1e fa          	endbr64
    6f21:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6f25:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6f29:	48 89 d6             	mov    %rdx,%rsi
    6f2c:	48 89 c7             	mov    %rax,%rdi
    6f2f:	e8 da fb ff ff       	call   6b0e <ParseGroup>
    6f34:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6f38:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6f3c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6f40:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6f44:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6f48:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6f4c:	e9 b1 fe ff ff       	jmp    6e02 <ParseExpr+0x5f>
    6f51:	f3 0f 1e fa          	endbr64
    6f55:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6f59:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6f5d:	48 89 d6             	mov    %rdx,%rsi
    6f60:	48 89 c7             	mov    %rax,%rdi
    6f63:	e8 38 fc ff ff       	call   6ba0 <ParseCall>
    6f68:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6f6c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6f70:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6f74:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6f78:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6f7c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6f80:	e9 7d fe ff ff       	jmp    6e02 <ParseExpr+0x5f>
    6f85:	f3 0f 1e fa          	endbr64
    6f89:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6f8d:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6f91:	48 89 d6             	mov    %rdx,%rsi
    6f94:	48 89 c7             	mov    %rax,%rdi
    6f97:	e8 6d fc ff ff       	call   6c09 <ParseI64>
    6f9c:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6fa0:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6fa4:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6fa8:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6fac:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6fb0:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6fb4:	e9 49 fe ff ff       	jmp    6e02 <ParseExpr+0x5f>
    6fb9:	f3 0f 1e fa          	endbr64
    6fbd:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6fc1:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6fc5:	48 89 d6             	mov    %rdx,%rsi
    6fc8:	48 89 c7             	mov    %rax,%rdi
    6fcb:	e8 98 fc ff ff       	call   6c68 <ParseF64>
    6fd0:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    6fd4:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    6fd8:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    6fdc:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    6fe0:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    6fe4:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    6fe8:	e9 15 fe ff ff       	jmp    6e02 <ParseExpr+0x5f>
    6fed:	f3 0f 1e fa          	endbr64
    6ff1:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    6ff5:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    6ff9:	48 89 d6             	mov    %rdx,%rsi
    6ffc:	48 89 c7             	mov    %rax,%rdi
    6fff:	e8 cc fc ff ff       	call   6cd0 <ParseStr>
    7004:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    7008:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    700c:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7010:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7014:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    7018:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    701c:	e9 e1 fd ff ff       	jmp    6e02 <ParseExpr+0x5f>
    7021:	f3 0f 1e fa          	endbr64
    7025:	48 8d 45 90          	lea    -0x70(%rbp),%rax
    7029:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    702d:	48 89 d6             	mov    %rdx,%rsi
    7030:	48 89 c7             	mov    %rax,%rdi
    7033:	e8 fe fc ff ff       	call   6d36 <ParseRef>
    7038:	48 8b 45 90          	mov    -0x70(%rbp),%rax
    703c:	48 8b 55 98          	mov    -0x68(%rbp),%rdx
    7040:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
    7044:	48 89 55 e8          	mov    %rdx,-0x18(%rbp)
    7048:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    704c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7050:	e9 ad fd ff ff       	jmp    6e02 <ParseExpr+0x5f>
    7055:	90                   	nop
    7056:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
    705a:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    705e:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7062:	48 89 01             	mov    %rax,(%rcx)
    7065:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    7069:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    706d:	48 89 41 10          	mov    %rax,0x10(%rcx)
    7071:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7075:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    707c:	00 00 
    707e:	74 05                	je     7085 <ParseExpr+0x2e2>
    7080:	e8 7b d1 ff ff       	call   4200 <__stack_chk_fail@plt>
    7085:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    7089:	c9                   	leave
    708a:	c3                   	ret

000000000000708b <ParseStmt>:
    708b:	f3 0f 1e fa          	endbr64
    708f:	55                   	push   %rbp
    7090:	48 89 e5             	mov    %rsp,%rbp
    7093:	48 83 ec 20          	sub    $0x20,%rsp
    7097:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    709b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    709f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    70a6:	00 00 
    70a8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    70ac:	31 c0                	xor    %eax,%eax
    70ae:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    70b2:	8b 00                	mov    (%rax),%eax
    70b4:	89 c0                	mov    %eax,%eax
    70b6:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    70bd:	00 
    70be:	48 8d 05 5b 6a 00 00 	lea    0x6a5b(%rip),%rax        # db20 <stmts.43>
    70c5:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    70c9:	90                   	nop
    70ca:	ff e0                	jmp    *%rax
    70cc:	f3 0f 1e fa          	endbr64
    70d0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    70d4:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    70d8:	ba 00 00 00 00       	mov    $0x0,%edx
    70dd:	48 89 ce             	mov    %rcx,%rsi
    70e0:	48 89 c7             	mov    %rax,%rdi
    70e3:	e8 bb fc ff ff       	call   6da3 <ParseExpr>
    70e8:	eb 7b                	jmp    7165 <ParseStmt+0xda>
    70ea:	f3 0f 1e fa          	endbr64
    70ee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    70f2:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    70f6:	48 89 d6             	mov    %rdx,%rsi
    70f9:	48 89 c7             	mov    %rax,%rdi
    70fc:	e8 89 f5 ff ff       	call   668a <ParseIf>
    7101:	eb 62                	jmp    7165 <ParseStmt+0xda>
    7103:	f3 0f 1e fa          	endbr64
    7107:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    710b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    710f:	48 89 d6             	mov    %rdx,%rsi
    7112:	48 89 c7             	mov    %rax,%rdi
    7115:	e8 51 f6 ff ff       	call   676b <ParseFor>
    711a:	eb 49                	jmp    7165 <ParseStmt+0xda>
    711c:	f3 0f 1e fa          	endbr64
    7120:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7124:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7128:	48 89 d6             	mov    %rdx,%rsi
    712b:	48 89 c7             	mov    %rax,%rdi
    712e:	e8 73 f6 ff ff       	call   67a6 <ParseDo>
    7133:	eb 30                	jmp    7165 <ParseStmt+0xda>
    7135:	f3 0f 1e fa          	endbr64
    7139:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    713d:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7141:	48 89 d6             	mov    %rdx,%rsi
    7144:	48 89 c7             	mov    %rax,%rdi
    7147:	e8 95 f6 ff ff       	call   67e1 <ParseWhile>
    714c:	eb 17                	jmp    7165 <ParseStmt+0xda>
    714e:	f3 0f 1e fa          	endbr64
    7152:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7156:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    715a:	48 89 d6             	mov    %rdx,%rsi
    715d:	48 89 c7             	mov    %rax,%rdi
    7160:	e8 65 f7 ff ff       	call   68ca <ParseId>
    7165:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7169:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7170:	00 00 
    7172:	74 05                	je     7179 <ParseStmt+0xee>
    7174:	e8 87 d0 ff ff       	call   4200 <__stack_chk_fail@plt>
    7179:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    717d:	c9                   	leave
    717e:	c3                   	ret

000000000000717f <Parse>:
    717f:	f3 0f 1e fa          	endbr64
    7183:	55                   	push   %rbp
    7184:	48 89 e5             	mov    %rsp,%rbp
    7187:	53                   	push   %rbx
    7188:	48 83 ec 58          	sub    $0x58,%rsp
    718c:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    7193:	00 00 
    7195:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
    7199:	31 c0                	xor    %eax,%eax
    719b:	e8 80 f3 ff ff       	call   6520 <GetParser>
    71a0:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    71a4:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
    71a8:	48 8d 45 a0          	lea    -0x60(%rbp),%rax
    71ac:	48 89 c7             	mov    %rax,%rdi
    71af:	e8 9f ef ff ff       	call   6153 <Lex>
    71b4:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
    71b8:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
    71bc:	48 89 03             	mov    %rax,(%rbx)
    71bf:	48 89 53 08          	mov    %rdx,0x8(%rbx)
    71c3:	48 8b 45 b0          	mov    -0x50(%rbp),%rax
    71c7:	48 89 43 10          	mov    %rax,0x10(%rbx)
    71cb:	eb 1f                	jmp    71ec <Parse+0x6d>
    71cd:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    71d1:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    71d5:	48 89 d6             	mov    %rdx,%rsi
    71d8:	48 89 c7             	mov    %rax,%rdi
    71db:	e8 ab fe ff ff       	call   708b <ParseStmt>
    71e0:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
    71e4:	48 89 c7             	mov    %rax,%rdi
    71e7:	e8 4c f3 ff ff       	call   6538 <ParseNodeLog>
    71ec:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    71f0:	8b 00                	mov    (%rax),%eax
    71f2:	85 c0                	test   %eax,%eax
    71f4:	75 d7                	jne    71cd <Parse+0x4e>
    71f6:	90                   	nop
    71f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    71fb:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7202:	00 00 
    7204:	74 05                	je     720b <Parse+0x8c>
    7206:	e8 f5 cf ff ff       	call   4200 <__stack_chk_fail@plt>
    720b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    720f:	c9                   	leave
    7210:	c3                   	ret

0000000000007211 <GetCompiler>:
    7211:	55                   	push   %rbp
    7212:	48 89 e5             	mov    %rsp,%rbp
    7215:	48 8d 05 e4 72 00 00 	lea    0x72e4(%rip),%rax        # e500 <compiler.41>
    721c:	5d                   	pop    %rbp
    721d:	c3                   	ret

000000000000721e <FnCommit>:
    721e:	f3 0f 1e fa          	endbr64
    7222:	55                   	push   %rbp
    7223:	48 89 e5             	mov    %rsp,%rbp
    7226:	48 83 ec 10          	sub    $0x10,%rsp
    722a:	e8 e2 ff ff ff       	call   7211 <GetCompiler>
    722f:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    7233:	e8 54 d3 ff ff       	call   458c <GetFuncs>
    7238:	48 89 c7             	mov    %rax,%rdi
    723b:	e8 ac d3 ff ff       	call   45ec <VecCommit>
    7240:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    7244:	e8 0f d3 ff ff       	call   4558 <GetConsts>
    7249:	8b 50 08             	mov    0x8(%rax),%edx
    724c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7250:	89 10                	mov    %edx,(%rax)
    7252:	e8 0e d3 ff ff       	call   4565 <GetLocals>
    7257:	8b 50 08             	mov    0x8(%rax),%edx
    725a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    725e:	89 50 04             	mov    %edx,0x4(%rax)
    7261:	e8 19 d3 ff ff       	call   457f <GetCode>
    7266:	8b 50 08             	mov    0x8(%rax),%edx
    7269:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    726d:	89 50 08             	mov    %edx,0x8(%rax)
    7270:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7274:	66 c7 40 0e 00 00    	movw   $0x0,0xe(%rax)
    727a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    727e:	c6 40 0d 00          	movb   $0x0,0xd(%rax)
    7282:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7286:	0f b6 50 0d          	movzbl 0xd(%rax),%edx
    728a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    728e:	88 50 0c             	mov    %dl,0xc(%rax)
    7291:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7295:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
    7299:	48 89 10             	mov    %rdx,(%rax)
    729c:	90                   	nop
    729d:	c9                   	leave
    729e:	c3                   	ret

000000000000729f <CompilerInit>:
    729f:	f3 0f 1e fa          	endbr64
    72a3:	55                   	push   %rbp
    72a4:	48 89 e5             	mov    %rsp,%rbp
    72a7:	48 83 ec 10          	sub    $0x10,%rsp
    72ab:	e8 61 ff ff ff       	call   7211 <GetCompiler>
    72b0:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    72b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    72b8:	c6 40 08 00          	movb   $0x0,0x8(%rax)
    72bc:	e8 5d ff ff ff       	call   721e <FnCommit>
    72c1:	90                   	nop
    72c2:	c9                   	leave
    72c3:	c3                   	ret

00000000000072c4 <TkToOp>:
    72c4:	55                   	push   %rbp
    72c5:	48 89 e5             	mov    %rsp,%rbp
    72c8:	89 7d fc             	mov    %edi,-0x4(%rbp)
    72cb:	8b 45 fc             	mov    -0x4(%rbp),%eax
    72ce:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    72d5:	00 
    72d6:	48 8d 05 43 5d 00 00 	lea    0x5d43(%rip),%rax        # d020 <token_ops.29>
    72dd:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    72e0:	5d                   	pop    %rbp
    72e1:	c3                   	ret

00000000000072e2 <EvalUnaErr>:
    72e2:	f3 0f 1e fa          	endbr64
    72e6:	55                   	push   %rbp
    72e7:	48 89 e5             	mov    %rsp,%rbp
    72ea:	53                   	push   %rbx
    72eb:	48 83 ec 18          	sub    $0x18,%rsp
    72ef:	89 7d ec             	mov    %edi,-0x14(%rbp)
    72f2:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    72f6:	8b 45 ec             	mov    -0x14(%rbp),%eax
    72f9:	89 c6                	mov    %eax,%esi
    72fb:	48 8d 05 81 2d 00 00 	lea    0x2d81(%rip),%rax        # a083 <_IO_stdin_used+0x83>
    7302:	48 89 c7             	mov    %rax,%rdi
    7305:	b8 00 00 00 00       	mov    $0x0,%eax
    730a:	e8 f6 db ff ff       	call   4f05 <Throw>
    730f:	b8 00 00 00 00       	mov    $0x0,%eax
    7314:	ba 00 00 00 00       	mov    $0x0,%edx
    7319:	48 89 c6             	mov    %rax,%rsi
    731c:	48 89 d7             	mov    %rdx,%rdi
    731f:	48 89 c1             	mov    %rax,%rcx
    7322:	48 89 d3             	mov    %rdx,%rbx
    7325:	89 f0                	mov    %esi,%eax
    7327:	48 89 da             	mov    %rbx,%rdx
    732a:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    732e:	c9                   	leave
    732f:	c3                   	ret

0000000000007330 <EvalNot>:
    7330:	f3 0f 1e fa          	endbr64
    7334:	55                   	push   %rbp
    7335:	48 89 e5             	mov    %rsp,%rbp
    7338:	53                   	push   %rbx
    7339:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    733d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7341:	8b 09                	mov    (%rcx),%ecx
    7343:	89 c9                	mov    %ecx,%ecx
    7345:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    734c:	00 
    734d:	48 8d 0d 9c 69 00 00 	lea    0x699c(%rip),%rcx        # dcf0 <types.36>
    7354:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7358:	90                   	nop
    7359:	ff e1                	jmp    *%rcx
    735b:	f3 0f 1e fa          	endbr64
    735f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7363:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7367:	48 85 c9             	test   %rcx,%rcx
    736a:	0f 94 c1             	sete   %cl
    736d:	0f b6 c9             	movzbl %cl,%ecx
    7370:	48 89 c7             	mov    %rax,%rdi
    7373:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    737a:	ff ff ff 
    737d:	48 21 fe             	and    %rdi,%rsi
    7380:	48 89 f0             	mov    %rsi,%rax
    7383:	48 89 ca             	mov    %rcx,%rdx
    7386:	eb 73                	jmp    73fb <EvalNot+0xcb>
    7388:	f3 0f 1e fa          	endbr64
    738c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7390:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7395:	66 0f ef c9          	pxor   %xmm1,%xmm1
    7399:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    739d:	7a 14                	jp     73b3 <EvalNot+0x83>
    739f:	66 0f ef c9          	pxor   %xmm1,%xmm1
    73a3:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    73a7:	75 0a                	jne    73b3 <EvalNot+0x83>
    73a9:	f2 0f 10 05 17 2d 00 	movsd  0x2d17(%rip),%xmm0        # a0c8 <_IO_stdin_used+0xc8>
    73b0:	00 
    73b1:	eb 04                	jmp    73b7 <EvalNot+0x87>
    73b3:	66 0f ef c0          	pxor   %xmm0,%xmm0
    73b7:	48 89 c6             	mov    %rax,%rsi
    73ba:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    73c1:	ff ff ff 
    73c4:	48 21 f1             	and    %rsi,%rcx
    73c7:	48 83 c9 01          	or     $0x1,%rcx
    73cb:	48 89 c8             	mov    %rcx,%rax
    73ce:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    73d3:	eb 26                	jmp    73fb <EvalNot+0xcb>
    73d5:	f3 0f 1e fa          	endbr64
    73d9:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    73dd:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    73e1:	48 89 c7             	mov    %rax,%rdi
    73e4:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    73eb:	ff ff ff 
    73ee:	48 21 f9             	and    %rdi,%rcx
    73f1:	48 83 c9 02          	or     $0x2,%rcx
    73f5:	48 89 c8             	mov    %rcx,%rax
    73f8:	48 89 f2             	mov    %rsi,%rdx
    73fb:	48 89 c6             	mov    %rax,%rsi
    73fe:	48 89 d7             	mov    %rdx,%rdi
    7401:	48 89 c1             	mov    %rax,%rcx
    7404:	48 89 d3             	mov    %rdx,%rbx
    7407:	89 f0                	mov    %esi,%eax
    7409:	48 89 da             	mov    %rbx,%rdx
    740c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7410:	c9                   	leave
    7411:	c3                   	ret

0000000000007412 <EvalBnot>:
    7412:	f3 0f 1e fa          	endbr64
    7416:	55                   	push   %rbp
    7417:	48 89 e5             	mov    %rsp,%rbp
    741a:	53                   	push   %rbx
    741b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    741f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7423:	8b 09                	mov    (%rcx),%ecx
    7425:	89 c9                	mov    %ecx,%ecx
    7427:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    742e:	00 
    742f:	48 8d 0d da 68 00 00 	lea    0x68da(%rip),%rcx        # dd10 <types.35>
    7436:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    743a:	90                   	nop
    743b:	ff e1                	jmp    *%rcx
    743d:	f3 0f 1e fa          	endbr64
    7441:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7445:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7449:	48 f7 d1             	not    %rcx
    744c:	48 89 c7             	mov    %rax,%rdi
    744f:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7456:	ff ff ff 
    7459:	48 21 fe             	and    %rdi,%rsi
    745c:	48 89 f0             	mov    %rsi,%rax
    745f:	48 89 ca             	mov    %rcx,%rdx
    7462:	eb 62                	jmp    74c6 <EvalBnot+0xb4>
    7464:	f3 0f 1e fa          	endbr64
    7468:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    746c:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7471:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    7476:	48 f7 d1             	not    %rcx
    7479:	66 0f ef c0          	pxor   %xmm0,%xmm0
    747d:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    7482:	48 89 c6             	mov    %rax,%rsi
    7485:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    748c:	ff ff ff 
    748f:	48 21 f1             	and    %rsi,%rcx
    7492:	48 83 c9 01          	or     $0x1,%rcx
    7496:	48 89 c8             	mov    %rcx,%rax
    7499:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    749e:	eb 26                	jmp    74c6 <EvalBnot+0xb4>
    74a0:	f3 0f 1e fa          	endbr64
    74a4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    74a8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    74ac:	48 89 c7             	mov    %rax,%rdi
    74af:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    74b6:	ff ff ff 
    74b9:	48 21 f9             	and    %rdi,%rcx
    74bc:	48 83 c9 02          	or     $0x2,%rcx
    74c0:	48 89 c8             	mov    %rcx,%rax
    74c3:	48 89 f2             	mov    %rsi,%rdx
    74c6:	48 89 c6             	mov    %rax,%rsi
    74c9:	48 89 d7             	mov    %rdx,%rdi
    74cc:	48 89 c1             	mov    %rax,%rcx
    74cf:	48 89 d3             	mov    %rdx,%rbx
    74d2:	89 f0                	mov    %esi,%eax
    74d4:	48 89 da             	mov    %rbx,%rdx
    74d7:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    74db:	c9                   	leave
    74dc:	c3                   	ret

00000000000074dd <EvalPlus>:
    74dd:	f3 0f 1e fa          	endbr64
    74e1:	55                   	push   %rbp
    74e2:	48 89 e5             	mov    %rsp,%rbp
    74e5:	53                   	push   %rbx
    74e6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    74ea:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    74ee:	8b 09                	mov    (%rcx),%ecx
    74f0:	89 c9                	mov    %ecx,%ecx
    74f2:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    74f9:	00 
    74fa:	48 8d 0d 2f 68 00 00 	lea    0x682f(%rip),%rcx        # dd30 <types.34>
    7501:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7505:	90                   	nop
    7506:	ff e1                	jmp    *%rcx
    7508:	f3 0f 1e fa          	endbr64
    750c:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7510:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7514:	48 89 c7             	mov    %rax,%rdi
    7517:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    751e:	ff ff ff 
    7521:	48 21 fe             	and    %rdi,%rsi
    7524:	48 89 f0             	mov    %rsi,%rax
    7527:	48 89 ca             	mov    %rcx,%rdx
    752a:	eb 51                	jmp    757d <EvalPlus+0xa0>
    752c:	f3 0f 1e fa          	endbr64
    7530:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7534:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7539:	48 89 c6             	mov    %rax,%rsi
    753c:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7543:	ff ff ff 
    7546:	48 21 f1             	and    %rsi,%rcx
    7549:	48 83 c9 01          	or     $0x1,%rcx
    754d:	48 89 c8             	mov    %rcx,%rax
    7550:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7555:	eb 26                	jmp    757d <EvalPlus+0xa0>
    7557:	f3 0f 1e fa          	endbr64
    755b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    755f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7563:	48 89 c7             	mov    %rax,%rdi
    7566:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    756d:	ff ff ff 
    7570:	48 21 f9             	and    %rdi,%rcx
    7573:	48 83 c9 02          	or     $0x2,%rcx
    7577:	48 89 c8             	mov    %rcx,%rax
    757a:	48 89 f2             	mov    %rsi,%rdx
    757d:	48 89 c6             	mov    %rax,%rsi
    7580:	48 89 d7             	mov    %rdx,%rdi
    7583:	48 89 c1             	mov    %rax,%rcx
    7586:	48 89 d3             	mov    %rdx,%rbx
    7589:	89 f0                	mov    %esi,%eax
    758b:	48 89 da             	mov    %rbx,%rdx
    758e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7592:	c9                   	leave
    7593:	c3                   	ret

0000000000007594 <EvalMinus>:
    7594:	f3 0f 1e fa          	endbr64
    7598:	55                   	push   %rbp
    7599:	48 89 e5             	mov    %rsp,%rbp
    759c:	53                   	push   %rbx
    759d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    75a1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    75a5:	8b 09                	mov    (%rcx),%ecx
    75a7:	89 c9                	mov    %ecx,%ecx
    75a9:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    75b0:	00 
    75b1:	48 8d 0d 98 67 00 00 	lea    0x6798(%rip),%rcx        # dd50 <types.33>
    75b8:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    75bc:	90                   	nop
    75bd:	ff e1                	jmp    *%rcx
    75bf:	f3 0f 1e fa          	endbr64
    75c3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    75c7:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    75cb:	48 f7 d9             	neg    %rcx
    75ce:	48 89 c7             	mov    %rax,%rdi
    75d1:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    75d8:	ff ff ff 
    75db:	48 21 fe             	and    %rdi,%rsi
    75de:	48 89 f0             	mov    %rsi,%rax
    75e1:	48 89 ca             	mov    %rcx,%rdx
    75e4:	eb 5d                	jmp    7643 <EvalMinus+0xaf>
    75e6:	f3 0f 1e fa          	endbr64
    75ea:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    75ee:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    75f3:	f3 0f 7e 0d d5 2a 00 	movq   0x2ad5(%rip),%xmm1        # a0d0 <_IO_stdin_used+0xd0>
    75fa:	00 
    75fb:	66 0f 57 c1          	xorpd  %xmm1,%xmm0
    75ff:	48 89 c6             	mov    %rax,%rsi
    7602:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7609:	ff ff ff 
    760c:	48 21 f1             	and    %rsi,%rcx
    760f:	48 83 c9 01          	or     $0x1,%rcx
    7613:	48 89 c8             	mov    %rcx,%rax
    7616:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    761b:	eb 26                	jmp    7643 <EvalMinus+0xaf>
    761d:	f3 0f 1e fa          	endbr64
    7621:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7625:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7629:	48 89 c7             	mov    %rax,%rdi
    762c:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7633:	ff ff ff 
    7636:	48 21 f9             	and    %rdi,%rcx
    7639:	48 83 c9 02          	or     $0x2,%rcx
    763d:	48 89 c8             	mov    %rcx,%rax
    7640:	48 89 f2             	mov    %rsi,%rdx
    7643:	48 89 c6             	mov    %rax,%rsi
    7646:	48 89 d7             	mov    %rdx,%rdi
    7649:	48 89 c1             	mov    %rax,%rcx
    764c:	48 89 d3             	mov    %rdx,%rbx
    764f:	89 f0                	mov    %esi,%eax
    7651:	48 89 da             	mov    %rbx,%rdx
    7654:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7658:	c9                   	leave
    7659:	c3                   	ret

000000000000765a <EvalInc>:
    765a:	f3 0f 1e fa          	endbr64
    765e:	55                   	push   %rbp
    765f:	48 89 e5             	mov    %rsp,%rbp
    7662:	53                   	push   %rbx
    7663:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7667:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    766b:	8b 09                	mov    (%rcx),%ecx
    766d:	89 c9                	mov    %ecx,%ecx
    766f:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7676:	00 
    7677:	48 8d 0d f2 66 00 00 	lea    0x66f2(%rip),%rcx        # dd70 <types.32>
    767e:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7682:	90                   	nop
    7683:	ff e1                	jmp    *%rcx
    7685:	f3 0f 1e fa          	endbr64
    7689:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    768d:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7691:	48 83 c1 01          	add    $0x1,%rcx
    7695:	48 89 c7             	mov    %rax,%rdi
    7698:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    769f:	ff ff ff 
    76a2:	48 21 fe             	and    %rdi,%rsi
    76a5:	48 89 f0             	mov    %rsi,%rax
    76a8:	48 89 ca             	mov    %rcx,%rdx
    76ab:	eb 5d                	jmp    770a <EvalInc+0xb0>
    76ad:	f3 0f 1e fa          	endbr64
    76b1:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    76b5:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    76ba:	f2 0f 10 05 06 2a 00 	movsd  0x2a06(%rip),%xmm0        # a0c8 <_IO_stdin_used+0xc8>
    76c1:	00 
    76c2:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    76c6:	48 89 c6             	mov    %rax,%rsi
    76c9:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    76d0:	ff ff ff 
    76d3:	48 21 f1             	and    %rsi,%rcx
    76d6:	48 83 c9 01          	or     $0x1,%rcx
    76da:	48 89 c8             	mov    %rcx,%rax
    76dd:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    76e2:	eb 26                	jmp    770a <EvalInc+0xb0>
    76e4:	f3 0f 1e fa          	endbr64
    76e8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    76ec:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    76f0:	48 89 c7             	mov    %rax,%rdi
    76f3:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    76fa:	ff ff ff 
    76fd:	48 21 f9             	and    %rdi,%rcx
    7700:	48 83 c9 02          	or     $0x2,%rcx
    7704:	48 89 c8             	mov    %rcx,%rax
    7707:	48 89 f2             	mov    %rsi,%rdx
    770a:	48 89 c6             	mov    %rax,%rsi
    770d:	48 89 d7             	mov    %rdx,%rdi
    7710:	48 89 c1             	mov    %rax,%rcx
    7713:	48 89 d3             	mov    %rdx,%rbx
    7716:	89 f0                	mov    %esi,%eax
    7718:	48 89 da             	mov    %rbx,%rdx
    771b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    771f:	c9                   	leave
    7720:	c3                   	ret

0000000000007721 <EvalDec>:
    7721:	f3 0f 1e fa          	endbr64
    7725:	55                   	push   %rbp
    7726:	48 89 e5             	mov    %rsp,%rbp
    7729:	53                   	push   %rbx
    772a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    772e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7732:	8b 09                	mov    (%rcx),%ecx
    7734:	89 c9                	mov    %ecx,%ecx
    7736:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    773d:	00 
    773e:	48 8d 0d 4b 66 00 00 	lea    0x664b(%rip),%rcx        # dd90 <types.31>
    7745:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7749:	90                   	nop
    774a:	ff e1                	jmp    *%rcx
    774c:	f3 0f 1e fa          	endbr64
    7750:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7754:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7758:	48 83 e9 01          	sub    $0x1,%rcx
    775c:	48 89 c7             	mov    %rax,%rdi
    775f:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7766:	ff ff ff 
    7769:	48 21 fe             	and    %rdi,%rsi
    776c:	48 89 f0             	mov    %rsi,%rax
    776f:	48 89 ca             	mov    %rcx,%rdx
    7772:	eb 5d                	jmp    77d1 <EvalDec+0xb0>
    7774:	f3 0f 1e fa          	endbr64
    7778:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    777c:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7781:	f2 0f 10 0d 3f 29 00 	movsd  0x293f(%rip),%xmm1        # a0c8 <_IO_stdin_used+0xc8>
    7788:	00 
    7789:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    778d:	48 89 c6             	mov    %rax,%rsi
    7790:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7797:	ff ff ff 
    779a:	48 21 f1             	and    %rsi,%rcx
    779d:	48 83 c9 01          	or     $0x1,%rcx
    77a1:	48 89 c8             	mov    %rcx,%rax
    77a4:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    77a9:	eb 26                	jmp    77d1 <EvalDec+0xb0>
    77ab:	f3 0f 1e fa          	endbr64
    77af:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    77b3:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    77b7:	48 89 c7             	mov    %rax,%rdi
    77ba:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    77c1:	ff ff ff 
    77c4:	48 21 f9             	and    %rdi,%rcx
    77c7:	48 83 c9 02          	or     $0x2,%rcx
    77cb:	48 89 c8             	mov    %rcx,%rax
    77ce:	48 89 f2             	mov    %rsi,%rdx
    77d1:	48 89 c6             	mov    %rax,%rsi
    77d4:	48 89 d7             	mov    %rdx,%rdi
    77d7:	48 89 c1             	mov    %rax,%rcx
    77da:	48 89 d3             	mov    %rdx,%rbx
    77dd:	89 f0                	mov    %esi,%eax
    77df:	48 89 da             	mov    %rbx,%rdx
    77e2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    77e6:	c9                   	leave
    77e7:	c3                   	ret

00000000000077e8 <UnaFold>:
    77e8:	55                   	push   %rbp
    77e9:	48 89 e5             	mov    %rsp,%rbp
    77ec:	53                   	push   %rbx
    77ed:	48 83 ec 18          	sub    $0x18,%rsp
    77f1:	89 7d ec             	mov    %edi,-0x14(%rbp)
    77f4:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    77f8:	8b 45 ec             	mov    -0x14(%rbp),%eax
    77fb:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7802:	00 
    7803:	48 8d 05 d6 65 00 00 	lea    0x65d6(%rip),%rax        # dde0 <ops.28>
    780a:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    780e:	90                   	nop
    780f:	ff e0                	jmp    *%rax
    7811:	f3 0f 1e fa          	endbr64
    7815:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7819:	48 8d 50 08          	lea    0x8(%rax),%rdx
    781d:	8b 45 ec             	mov    -0x14(%rbp),%eax
    7820:	48 89 d6             	mov    %rdx,%rsi
    7823:	89 c7                	mov    %eax,%edi
    7825:	e8 b8 fa ff ff       	call   72e2 <EvalUnaErr>
    782a:	48 89 d1             	mov    %rdx,%rcx
    782d:	48 89 ca             	mov    %rcx,%rdx
    7830:	e9 a9 00 00 00       	jmp    78de <UnaFold+0xf6>
    7835:	f3 0f 1e fa          	endbr64
    7839:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    783d:	48 83 c0 08          	add    $0x8,%rax
    7841:	48 89 c7             	mov    %rax,%rdi
    7844:	e8 e7 fa ff ff       	call   7330 <EvalNot>
    7849:	48 89 d1             	mov    %rdx,%rcx
    784c:	48 89 ca             	mov    %rcx,%rdx
    784f:	e9 8a 00 00 00       	jmp    78de <UnaFold+0xf6>
    7854:	f3 0f 1e fa          	endbr64
    7858:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    785c:	48 83 c0 08          	add    $0x8,%rax
    7860:	48 89 c7             	mov    %rax,%rdi
    7863:	e8 aa fb ff ff       	call   7412 <EvalBnot>
    7868:	48 89 d1             	mov    %rdx,%rcx
    786b:	48 89 ca             	mov    %rcx,%rdx
    786e:	eb 6e                	jmp    78de <UnaFold+0xf6>
    7870:	f3 0f 1e fa          	endbr64
    7874:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7878:	48 83 c0 08          	add    $0x8,%rax
    787c:	48 89 c7             	mov    %rax,%rdi
    787f:	e8 59 fc ff ff       	call   74dd <EvalPlus>
    7884:	48 89 d1             	mov    %rdx,%rcx
    7887:	48 89 ca             	mov    %rcx,%rdx
    788a:	eb 52                	jmp    78de <UnaFold+0xf6>
    788c:	f3 0f 1e fa          	endbr64
    7890:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7894:	48 83 c0 08          	add    $0x8,%rax
    7898:	48 89 c7             	mov    %rax,%rdi
    789b:	e8 f4 fc ff ff       	call   7594 <EvalMinus>
    78a0:	48 89 d1             	mov    %rdx,%rcx
    78a3:	48 89 ca             	mov    %rcx,%rdx
    78a6:	eb 36                	jmp    78de <UnaFold+0xf6>
    78a8:	f3 0f 1e fa          	endbr64
    78ac:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    78b0:	48 83 c0 08          	add    $0x8,%rax
    78b4:	48 89 c7             	mov    %rax,%rdi
    78b7:	e8 9e fd ff ff       	call   765a <EvalInc>
    78bc:	48 89 d1             	mov    %rdx,%rcx
    78bf:	48 89 ca             	mov    %rcx,%rdx
    78c2:	eb 1a                	jmp    78de <UnaFold+0xf6>
    78c4:	f3 0f 1e fa          	endbr64
    78c8:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    78cc:	48 83 c0 08          	add    $0x8,%rax
    78d0:	48 89 c7             	mov    %rax,%rdi
    78d3:	e8 49 fe ff ff       	call   7721 <EvalDec>
    78d8:	48 89 d1             	mov    %rdx,%rcx
    78db:	48 89 ca             	mov    %rcx,%rdx
    78de:	48 89 c6             	mov    %rax,%rsi
    78e1:	48 89 d7             	mov    %rdx,%rdi
    78e4:	48 89 c1             	mov    %rax,%rcx
    78e7:	48 89 d3             	mov    %rdx,%rbx
    78ea:	89 f0                	mov    %esi,%eax
    78ec:	48 89 da             	mov    %rbx,%rdx
    78ef:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    78f3:	c9                   	leave
    78f4:	c3                   	ret

00000000000078f5 <UnaConst>:
    78f5:	55                   	push   %rbp
    78f6:	48 89 e5             	mov    %rsp,%rbp
    78f9:	48 83 ec 40          	sub    $0x40,%rsp
    78fd:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    7901:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    7904:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    7908:	66 0f ef c0          	pxor   %xmm0,%xmm0
    790c:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    7910:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    7915:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
    7919:	8b 40 08             	mov    0x8(%rax),%eax
    791c:	89 45 e8             	mov    %eax,-0x18(%rbp)
    791f:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
    7923:	8b 45 d4             	mov    -0x2c(%rbp),%eax
    7926:	48 89 d6             	mov    %rdx,%rsi
    7929:	89 c7                	mov    %eax,%edi
    792b:	e8 b8 fe ff ff       	call   77e8 <UnaFold>
    7930:	89 c1                	mov    %eax,%ecx
    7932:	48 89 d0             	mov    %rdx,%rax
    7935:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    7938:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    793c:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    7940:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7944:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    7948:	48 89 01             	mov    %rax,(%rcx)
    794b:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    794f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    7953:	48 89 41 10          	mov    %rax,0x10(%rcx)
    7957:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    795b:	c9                   	leave
    795c:	c3                   	ret

000000000000795d <UnaRef>:
    795d:	55                   	push   %rbp
    795e:	48 89 e5             	mov    %rsp,%rbp
    7961:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    7965:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    7968:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    796c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7970:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7974:	0f 11 00             	movups %xmm0,(%rax)
    7977:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    797c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7980:	5d                   	pop    %rbp
    7981:	c3                   	ret

0000000000007982 <UnaCall>:
    7982:	55                   	push   %rbp
    7983:	48 89 e5             	mov    %rsp,%rbp
    7986:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    798a:	89 75 d4             	mov    %esi,-0x2c(%rbp)
    798d:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
    7991:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7995:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7999:	0f 11 00             	movups %xmm0,(%rax)
    799c:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    79a1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    79a5:	5d                   	pop    %rbp
    79a6:	c3                   	ret

00000000000079a7 <CompileUna>:
    79a7:	f3 0f 1e fa          	endbr64
    79ab:	55                   	push   %rbp
    79ac:	48 89 e5             	mov    %rsp,%rbp
    79af:	48 83 ec 30          	sub    $0x30,%rsp
    79b3:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    79b7:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    79ba:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    79be:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    79c5:	00 00 
    79c7:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    79cb:	31 c0                	xor    %eax,%eax
    79cd:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    79d0:	89 c7                	mov    %eax,%edi
    79d2:	e8 ed f8 ff ff       	call   72c4 <TkToOp>
    79d7:	89 45 f4             	mov    %eax,-0xc(%rbp)
    79da:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    79de:	8b 00                	mov    (%rax),%eax
    79e0:	89 c0                	mov    %eax,%eax
    79e2:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    79e9:	00 
    79ea:	48 8d 05 bf 63 00 00 	lea    0x63bf(%rip),%rax        # ddb0 <irs.30>
    79f1:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    79f5:	90                   	nop
    79f6:	ff e0                	jmp    *%rax
    79f8:	f3 0f 1e fa          	endbr64
    79fc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7a00:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7a04:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    7a07:	89 ce                	mov    %ecx,%esi
    7a09:	48 89 c7             	mov    %rax,%rdi
    7a0c:	e8 e4 fe ff ff       	call   78f5 <UnaConst>
    7a11:	eb 34                	jmp    7a47 <CompileUna+0xa0>
    7a13:	f3 0f 1e fa          	endbr64
    7a17:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7a1b:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7a1f:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    7a22:	89 ce                	mov    %ecx,%esi
    7a24:	48 89 c7             	mov    %rax,%rdi
    7a27:	e8 31 ff ff ff       	call   795d <UnaRef>
    7a2c:	eb 19                	jmp    7a47 <CompileUna+0xa0>
    7a2e:	f3 0f 1e fa          	endbr64
    7a32:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7a36:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
    7a3a:	8b 4d f4             	mov    -0xc(%rbp),%ecx
    7a3d:	89 ce                	mov    %ecx,%esi
    7a3f:	48 89 c7             	mov    %rax,%rdi
    7a42:	e8 3b ff ff ff       	call   7982 <UnaCall>
    7a47:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    7a4b:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    7a52:	00 00 
    7a54:	74 05                	je     7a5b <CompileUna+0xb4>
    7a56:	e8 a5 c7 ff ff       	call   4200 <__stack_chk_fail@plt>
    7a5b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7a5f:	c9                   	leave
    7a60:	c3                   	ret

0000000000007a61 <EvalBinErr>:
    7a61:	55                   	push   %rbp
    7a62:	48 89 e5             	mov    %rsp,%rbp
    7a65:	53                   	push   %rbx
    7a66:	48 83 ec 28          	sub    $0x28,%rsp
    7a6a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7a6e:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    7a71:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    7a75:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    7a78:	89 c6                	mov    %eax,%esi
    7a7a:	48 8d 05 1f 26 00 00 	lea    0x261f(%rip),%rax        # a0a0 <_IO_stdin_used+0xa0>
    7a81:	48 89 c7             	mov    %rax,%rdi
    7a84:	b8 00 00 00 00       	mov    $0x0,%eax
    7a89:	e8 77 d4 ff ff       	call   4f05 <Throw>
    7a8e:	b8 00 00 00 00       	mov    $0x0,%eax
    7a93:	ba 00 00 00 00       	mov    $0x0,%edx
    7a98:	48 89 c6             	mov    %rax,%rsi
    7a9b:	48 89 d7             	mov    %rdx,%rdi
    7a9e:	48 89 c1             	mov    %rax,%rcx
    7aa1:	48 89 d3             	mov    %rdx,%rbx
    7aa4:	89 f0                	mov    %esi,%eax
    7aa6:	48 89 da             	mov    %rbx,%rdx
    7aa9:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7aad:	c9                   	leave
    7aae:	c3                   	ret

0000000000007aaf <EvalAdd>:
    7aaf:	55                   	push   %rbp
    7ab0:	48 89 e5             	mov    %rsp,%rbp
    7ab3:	53                   	push   %rbx
    7ab4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7ab8:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7abc:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7ac0:	8b 09                	mov    (%rcx),%ecx
    7ac2:	89 c9                	mov    %ecx,%ecx
    7ac4:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7acb:	00 
    7acc:	48 8d 0d dd 65 00 00 	lea    0x65dd(%rip),%rcx        # e0b0 <ops.24>
    7ad3:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7ad7:	90                   	nop
    7ad8:	ff e1                	jmp    *%rcx
    7ada:	f3 0f 1e fa          	endbr64
    7ade:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7ae2:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7ae6:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7aea:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7aee:	48 01 f1             	add    %rsi,%rcx
    7af1:	48 89 c7             	mov    %rax,%rdi
    7af4:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7afb:	ff ff ff 
    7afe:	48 21 fe             	and    %rdi,%rsi
    7b01:	48 89 f0             	mov    %rsi,%rax
    7b04:	48 89 ca             	mov    %rcx,%rdx
    7b07:	eb 6c                	jmp    7b75 <EvalAdd+0xc6>
    7b09:	f3 0f 1e fa          	endbr64
    7b0d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7b11:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    7b16:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7b1a:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7b1f:	f2 0f 58 c1          	addsd  %xmm1,%xmm0
    7b23:	48 89 c6             	mov    %rax,%rsi
    7b26:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7b2d:	ff ff ff 
    7b30:	48 21 f1             	and    %rsi,%rcx
    7b33:	48 83 c9 01          	or     $0x1,%rcx
    7b37:	48 89 c8             	mov    %rcx,%rax
    7b3a:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7b3f:	eb 34                	jmp    7b75 <EvalAdd+0xc6>
    7b41:	f3 0f 1e fa          	endbr64
    7b45:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7b49:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7b4d:	8b 71 04             	mov    0x4(%rcx),%esi
    7b50:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7b54:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7b58:	8b 49 04             	mov    0x4(%rcx),%ecx
    7b5b:	01 f1                	add    %esi,%ecx
    7b5d:	89 ce                	mov    %ecx,%esi
    7b5f:	48 89 c7             	mov    %rax,%rdi
    7b62:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7b69:	ff ff ff 
    7b6c:	48 21 f9             	and    %rdi,%rcx
    7b6f:	48 89 c8             	mov    %rcx,%rax
    7b72:	48 89 f2             	mov    %rsi,%rdx
    7b75:	48 89 c6             	mov    %rax,%rsi
    7b78:	48 89 d7             	mov    %rdx,%rdi
    7b7b:	48 89 c1             	mov    %rax,%rcx
    7b7e:	48 89 d3             	mov    %rdx,%rbx
    7b81:	89 f0                	mov    %esi,%eax
    7b83:	48 89 da             	mov    %rbx,%rdx
    7b86:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7b8a:	c9                   	leave
    7b8b:	c3                   	ret

0000000000007b8c <EvalSub>:
    7b8c:	55                   	push   %rbp
    7b8d:	48 89 e5             	mov    %rsp,%rbp
    7b90:	53                   	push   %rbx
    7b91:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7b95:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7b99:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7b9d:	8b 09                	mov    (%rcx),%ecx
    7b9f:	89 c9                	mov    %ecx,%ecx
    7ba1:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7ba8:	00 
    7ba9:	48 8d 0d 20 65 00 00 	lea    0x6520(%rip),%rcx        # e0d0 <ops.23>
    7bb0:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7bb4:	90                   	nop
    7bb5:	ff e1                	jmp    *%rcx
    7bb7:	f3 0f 1e fa          	endbr64
    7bbb:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7bbf:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7bc3:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7bc7:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7bcb:	48 29 ce             	sub    %rcx,%rsi
    7bce:	48 89 c7             	mov    %rax,%rdi
    7bd1:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7bd8:	ff ff ff 
    7bdb:	48 21 f9             	and    %rdi,%rcx
    7bde:	48 89 c8             	mov    %rcx,%rax
    7be1:	48 89 f2             	mov    %rsi,%rdx
    7be4:	eb 6c                	jmp    7c52 <EvalSub+0xc6>
    7be6:	f3 0f 1e fa          	endbr64
    7bea:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7bee:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7bf3:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7bf7:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    7bfc:	f2 0f 5c c1          	subsd  %xmm1,%xmm0
    7c00:	48 89 c6             	mov    %rax,%rsi
    7c03:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7c0a:	ff ff ff 
    7c0d:	48 21 f1             	and    %rsi,%rcx
    7c10:	48 83 c9 01          	or     $0x1,%rcx
    7c14:	48 89 c8             	mov    %rcx,%rax
    7c17:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7c1c:	eb 34                	jmp    7c52 <EvalSub+0xc6>
    7c1e:	f3 0f 1e fa          	endbr64
    7c22:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7c26:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7c2a:	8b 71 04             	mov    0x4(%rcx),%esi
    7c2d:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7c31:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7c35:	8b 49 04             	mov    0x4(%rcx),%ecx
    7c38:	29 ce                	sub    %ecx,%esi
    7c3a:	89 f6                	mov    %esi,%esi
    7c3c:	48 89 c7             	mov    %rax,%rdi
    7c3f:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7c46:	ff ff ff 
    7c49:	48 21 f9             	and    %rdi,%rcx
    7c4c:	48 89 c8             	mov    %rcx,%rax
    7c4f:	48 89 f2             	mov    %rsi,%rdx
    7c52:	48 89 c6             	mov    %rax,%rsi
    7c55:	48 89 d7             	mov    %rdx,%rdi
    7c58:	48 89 c1             	mov    %rax,%rcx
    7c5b:	48 89 d3             	mov    %rdx,%rbx
    7c5e:	89 f0                	mov    %esi,%eax
    7c60:	48 89 da             	mov    %rbx,%rdx
    7c63:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7c67:	c9                   	leave
    7c68:	c3                   	ret

0000000000007c69 <EvalMul>:
    7c69:	55                   	push   %rbp
    7c6a:	48 89 e5             	mov    %rsp,%rbp
    7c6d:	53                   	push   %rbx
    7c6e:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7c72:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7c76:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7c7a:	8b 09                	mov    (%rcx),%ecx
    7c7c:	89 c9                	mov    %ecx,%ecx
    7c7e:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    7c85:	00 
    7c86:	48 8d 0d 63 64 00 00 	lea    0x6463(%rip),%rcx        # e0f0 <ops.22>
    7c8d:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    7c91:	90                   	nop
    7c92:	ff e1                	jmp    *%rcx
    7c94:	f3 0f 1e fa          	endbr64
    7c98:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7c9c:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    7ca0:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7ca4:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7ca8:	48 0f af ce          	imul   %rsi,%rcx
    7cac:	48 89 c7             	mov    %rax,%rdi
    7caf:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    7cb6:	ff ff ff 
    7cb9:	48 21 fe             	and    %rdi,%rsi
    7cbc:	48 89 f0             	mov    %rsi,%rax
    7cbf:	48 89 ca             	mov    %rcx,%rdx
    7cc2:	eb 6d                	jmp    7d31 <EvalMul+0xc8>
    7cc4:	f3 0f 1e fa          	endbr64
    7cc8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7ccc:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    7cd1:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7cd5:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    7cda:	f2 0f 59 c1          	mulsd  %xmm1,%xmm0
    7cde:	48 89 c6             	mov    %rax,%rsi
    7ce1:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7ce8:	ff ff ff 
    7ceb:	48 21 f1             	and    %rsi,%rcx
    7cee:	48 83 c9 01          	or     $0x1,%rcx
    7cf2:	48 89 c8             	mov    %rcx,%rax
    7cf5:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    7cfa:	eb 35                	jmp    7d31 <EvalMul+0xc8>
    7cfc:	f3 0f 1e fa          	endbr64
    7d00:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    7d04:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7d08:	8b 71 04             	mov    0x4(%rcx),%esi
    7d0b:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    7d0f:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    7d13:	8b 49 04             	mov    0x4(%rcx),%ecx
    7d16:	0f af ce             	imul   %esi,%ecx
    7d19:	89 ce                	mov    %ecx,%esi
    7d1b:	48 89 c7             	mov    %rax,%rdi
    7d1e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    7d25:	ff ff ff 
    7d28:	48 21 f9             	and    %rdi,%rcx
    7d2b:	48 89 c8             	mov    %rcx,%rax
    7d2e:	48 89 f2             	mov    %rsi,%rdx
    7d31:	48 89 c6             	mov    %rax,%rsi
    7d34:	48 89 d7             	mov    %rdx,%rdi
    7d37:	48 89 c1             	mov    %rax,%rcx
    7d3a:	48 89 d3             	mov    %rdx,%rbx
    7d3d:	89 f0                	mov    %esi,%eax
    7d3f:	48 89 da             	mov    %rbx,%rdx
    7d42:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7d46:	c9                   	leave
    7d47:	c3                   	ret

0000000000007d48 <EvalDiv>:
    7d48:	55                   	push   %rbp
    7d49:	48 89 e5             	mov    %rsp,%rbp
    7d4c:	53                   	push   %rbx
    7d4d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7d51:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7d55:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7d59:	8b 00                	mov    (%rax),%eax
    7d5b:	89 c0                	mov    %eax,%eax
    7d5d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7d64:	00 
    7d65:	48 8d 05 a4 63 00 00 	lea    0x63a4(%rip),%rax        # e110 <ops.21>
    7d6c:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    7d70:	90                   	nop
    7d71:	ff e0                	jmp    *%rax
    7d73:	f3 0f 1e fa          	endbr64
    7d77:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7d7b:	48 8b 40 08          	mov    0x8(%rax),%rax
    7d7f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7d83:	48 8b 7a 08          	mov    0x8(%rdx),%rdi
    7d87:	48 99                	cqto
    7d89:	48 f7 ff             	idiv   %rdi
    7d8c:	48 89 c2             	mov    %rax,%rdx
    7d8f:	48 89 ce             	mov    %rcx,%rsi
    7d92:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    7d99:	ff ff ff 
    7d9c:	48 21 f0             	and    %rsi,%rax
    7d9f:	48 89 c1             	mov    %rax,%rcx
    7da2:	48 89 d3             	mov    %rdx,%rbx
    7da5:	eb 71                	jmp    7e18 <EvalDiv+0xd0>
    7da7:	f3 0f 1e fa          	endbr64
    7dab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7daf:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    7db4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    7db8:	f2 0f 10 48 08       	movsd  0x8(%rax),%xmm1
    7dbd:	f2 0f 5e c1          	divsd  %xmm1,%xmm0
    7dc1:	48 89 ca             	mov    %rcx,%rdx
    7dc4:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    7dcb:	ff ff ff 
    7dce:	48 21 d0             	and    %rdx,%rax
    7dd1:	48 83 c8 01          	or     $0x1,%rax
    7dd5:	48 89 c1             	mov    %rax,%rcx
    7dd8:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    7ddd:	eb 39                	jmp    7e18 <EvalDiv+0xd0>
    7ddf:	f3 0f 1e fa          	endbr64
    7de3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7de7:	48 8b 40 08          	mov    0x8(%rax),%rax
    7deb:	8b 40 04             	mov    0x4(%rax),%eax
    7dee:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7df2:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    7df6:	8b 7a 04             	mov    0x4(%rdx),%edi
    7df9:	ba 00 00 00 00       	mov    $0x0,%edx
    7dfe:	f7 f7                	div    %edi
    7e00:	89 c2                	mov    %eax,%edx
    7e02:	48 89 ce             	mov    %rcx,%rsi
    7e05:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    7e0c:	ff ff ff 
    7e0f:	48 21 f0             	and    %rsi,%rax
    7e12:	48 89 c1             	mov    %rax,%rcx
    7e15:	48 89 d3             	mov    %rdx,%rbx
    7e18:	48 89 c8             	mov    %rcx,%rax
    7e1b:	48 89 da             	mov    %rbx,%rdx
    7e1e:	48 89 da             	mov    %rbx,%rdx
    7e21:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7e25:	c9                   	leave
    7e26:	c3                   	ret

0000000000007e27 <EvalMod>:
    7e27:	55                   	push   %rbp
    7e28:	48 89 e5             	mov    %rsp,%rbp
    7e2b:	53                   	push   %rbx
    7e2c:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    7e30:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    7e34:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e38:	8b 00                	mov    (%rax),%eax
    7e3a:	89 c0                	mov    %eax,%eax
    7e3c:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7e43:	00 
    7e44:	48 8d 05 e5 62 00 00 	lea    0x62e5(%rip),%rax        # e130 <ops.20>
    7e4b:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    7e4f:	90                   	nop
    7e50:	ff e0                	jmp    *%rax
    7e52:	f3 0f 1e fa          	endbr64
    7e56:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e5a:	48 8b 40 08          	mov    0x8(%rax),%rax
    7e5e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7e62:	48 8b 7a 08          	mov    0x8(%rdx),%rdi
    7e66:	48 99                	cqto
    7e68:	48 f7 ff             	idiv   %rdi
    7e6b:	48 89 d6             	mov    %rdx,%rsi
    7e6e:	48 89 f2             	mov    %rsi,%rdx
    7e71:	48 89 ce             	mov    %rcx,%rsi
    7e74:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    7e7b:	ff ff ff 
    7e7e:	48 21 f0             	and    %rsi,%rax
    7e81:	48 89 c1             	mov    %rax,%rcx
    7e84:	48 89 d3             	mov    %rdx,%rbx
    7e87:	e9 8f 00 00 00       	jmp    7f1b <EvalMod+0xf4>
    7e8c:	f3 0f 1e fa          	endbr64
    7e90:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7e94:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    7e99:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    7e9e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7ea2:	f2 0f 10 42 08       	movsd  0x8(%rdx),%xmm0
    7ea7:	f2 48 0f 2c f8       	cvttsd2si %xmm0,%rdi
    7eac:	48 99                	cqto
    7eae:	48 f7 ff             	idiv   %rdi
    7eb1:	48 89 d6             	mov    %rdx,%rsi
    7eb4:	48 89 f0             	mov    %rsi,%rax
    7eb7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7ebb:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    7ec0:	48 89 ca             	mov    %rcx,%rdx
    7ec3:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    7eca:	ff ff ff 
    7ecd:	48 21 d0             	and    %rdx,%rax
    7ed0:	48 83 c8 01          	or     $0x1,%rax
    7ed4:	48 89 c1             	mov    %rax,%rcx
    7ed7:	66 48 0f 7e c3       	movq   %xmm0,%rbx
    7edc:	eb 3d                	jmp    7f1b <EvalMod+0xf4>
    7ede:	f3 0f 1e fa          	endbr64
    7ee2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    7ee6:	48 8b 40 08          	mov    0x8(%rax),%rax
    7eea:	8b 40 04             	mov    0x4(%rax),%eax
    7eed:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    7ef1:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    7ef5:	8b 7a 04             	mov    0x4(%rdx),%edi
    7ef8:	ba 00 00 00 00       	mov    $0x0,%edx
    7efd:	f7 f7                	div    %edi
    7eff:	89 d6                	mov    %edx,%esi
    7f01:	89 f0                	mov    %esi,%eax
    7f03:	89 c2                	mov    %eax,%edx
    7f05:	48 89 ce             	mov    %rcx,%rsi
    7f08:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    7f0f:	ff ff ff 
    7f12:	48 21 f0             	and    %rsi,%rax
    7f15:	48 89 c1             	mov    %rax,%rcx
    7f18:	48 89 d3             	mov    %rdx,%rbx
    7f1b:	48 89 c8             	mov    %rcx,%rax
    7f1e:	48 89 da             	mov    %rbx,%rdx
    7f21:	48 89 da             	mov    %rbx,%rdx
    7f24:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    7f28:	c9                   	leave
    7f29:	c3                   	ret

0000000000007f2a <EvalPow>:
    7f2a:	55                   	push   %rbp
    7f2b:	48 89 e5             	mov    %rsp,%rbp
    7f2e:	41 55                	push   %r13
    7f30:	41 54                	push   %r12
    7f32:	53                   	push   %rbx
    7f33:	48 83 ec 18          	sub    $0x18,%rsp
    7f37:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    7f3b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    7f3f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7f43:	8b 00                	mov    (%rax),%eax
    7f45:	89 c0                	mov    %eax,%eax
    7f47:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    7f4e:	00 
    7f4f:	48 8d 05 fa 61 00 00 	lea    0x61fa(%rip),%rax        # e150 <ops.19>
    7f56:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    7f5a:	90                   	nop
    7f5b:	ff e0                	jmp    *%rax
    7f5d:	f3 0f 1e fa          	endbr64
    7f61:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    7f65:	48 8b 40 08          	mov    0x8(%rax),%rax
    7f69:	66 0f ef c0          	pxor   %xmm0,%xmm0
    7f6d:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    7f72:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7f76:	48 8b 40 08          	mov    0x8(%rax),%rax
    7f7a:	66 0f ef d2          	pxor   %xmm2,%xmm2
    7f7e:	f2 48 0f 2a d0       	cvtsi2sd %rax,%xmm2
    7f83:	66 48 0f 7e d0       	movq   %xmm2,%rax
    7f88:	66 0f 28 c8          	movapd %xmm0,%xmm1
    7f8c:	66 48 0f 6e c0       	movq   %rax,%xmm0
    7f91:	e8 4a c2 ff ff       	call   41e0 <pow@plt>
    7f96:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    7f9b:	4c 89 e1             	mov    %r12,%rcx
    7f9e:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
    7fa5:	ff ff ff 
    7fa8:	48 21 ca             	and    %rcx,%rdx
    7fab:	49 89 d4             	mov    %rdx,%r12
    7fae:	49 89 c5             	mov    %rax,%r13
    7fb1:	e9 e7 00 00 00       	jmp    809d <EvalPow+0x173>
    7fb6:	f3 0f 1e fa          	endbr64
    7fba:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    7fbe:	f2 0f 10 40 08       	movsd  0x8(%rax),%xmm0
    7fc3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    7fc7:	48 8b 40 08          	mov    0x8(%rax),%rax
    7fcb:	66 0f 28 c8          	movapd %xmm0,%xmm1
    7fcf:	66 48 0f 6e c0       	movq   %rax,%xmm0
    7fd4:	e8 07 c2 ff ff       	call   41e0 <pow@plt>
    7fd9:	4c 89 e2             	mov    %r12,%rdx
    7fdc:	48 b8 00 00 00 00 ff 	movabs $0xffffffff00000000,%rax
    7fe3:	ff ff ff 
    7fe6:	48 21 d0             	and    %rdx,%rax
    7fe9:	48 83 c8 01          	or     $0x1,%rax
    7fed:	49 89 c4             	mov    %rax,%r12
    7ff0:	66 49 0f 7e c5       	movq   %xmm0,%r13
    7ff5:	e9 a3 00 00 00       	jmp    809d <EvalPow+0x173>
    7ffa:	f3 0f 1e fa          	endbr64
    7ffe:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    8002:	48 8b 40 08          	mov    0x8(%rax),%rax
    8006:	8b 40 04             	mov    0x4(%rax),%eax
    8009:	89 c0                	mov    %eax,%eax
    800b:	48 85 c0             	test   %rax,%rax
    800e:	78 0b                	js     801b <EvalPow+0xf1>
    8010:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8014:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    8019:	eb 19                	jmp    8034 <EvalPow+0x10a>
    801b:	48 89 c2             	mov    %rax,%rdx
    801e:	48 d1 ea             	shr    $1,%rdx
    8021:	83 e0 01             	and    $0x1,%eax
    8024:	48 09 c2             	or     %rax,%rdx
    8027:	66 0f ef c0          	pxor   %xmm0,%xmm0
    802b:	f2 48 0f 2a c2       	cvtsi2sd %rdx,%xmm0
    8030:	f2 0f 58 c0          	addsd  %xmm0,%xmm0
    8034:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    8038:	48 8b 40 08          	mov    0x8(%rax),%rax
    803c:	8b 40 04             	mov    0x4(%rax),%eax
    803f:	89 c0                	mov    %eax,%eax
    8041:	48 85 c0             	test   %rax,%rax
    8044:	78 10                	js     8056 <EvalPow+0x12c>
    8046:	66 0f ef db          	pxor   %xmm3,%xmm3
    804a:	f2 48 0f 2a d8       	cvtsi2sd %rax,%xmm3
    804f:	66 48 0f 7e d8       	movq   %xmm3,%rax
    8054:	eb 1e                	jmp    8074 <EvalPow+0x14a>
    8056:	48 89 c2             	mov    %rax,%rdx
    8059:	48 d1 ea             	shr    $1,%rdx
    805c:	83 e0 01             	and    $0x1,%eax
    805f:	48 09 c2             	or     %rax,%rdx
    8062:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8066:	f2 48 0f 2a ca       	cvtsi2sd %rdx,%xmm1
    806b:	f2 0f 58 c9          	addsd  %xmm1,%xmm1
    806f:	66 48 0f 7e c8       	movq   %xmm1,%rax
    8074:	66 0f 28 c8          	movapd %xmm0,%xmm1
    8078:	66 48 0f 6e c0       	movq   %rax,%xmm0
    807d:	e8 5e c1 ff ff       	call   41e0 <pow@plt>
    8082:	f2 48 0f 2c c0       	cvttsd2si %xmm0,%rax
    8087:	4c 89 e1             	mov    %r12,%rcx
    808a:	48 ba 00 00 00 00 ff 	movabs $0xffffffff00000000,%rdx
    8091:	ff ff ff 
    8094:	48 21 ca             	and    %rcx,%rdx
    8097:	49 89 d4             	mov    %rdx,%r12
    809a:	49 89 c5             	mov    %rax,%r13
    809d:	4c 89 e0             	mov    %r12,%rax
    80a0:	4c 89 ea             	mov    %r13,%rdx
    80a3:	4c 89 e1             	mov    %r12,%rcx
    80a6:	4c 89 eb             	mov    %r13,%rbx
    80a9:	48 89 da             	mov    %rbx,%rdx
    80ac:	48 83 c4 18          	add    $0x18,%rsp
    80b0:	5b                   	pop    %rbx
    80b1:	41 5c                	pop    %r12
    80b3:	41 5d                	pop    %r13
    80b5:	5d                   	pop    %rbp
    80b6:	c3                   	ret

00000000000080b7 <EvalBand>:
    80b7:	55                   	push   %rbp
    80b8:	48 89 e5             	mov    %rsp,%rbp
    80bb:	53                   	push   %rbx
    80bc:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    80c0:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    80c4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    80c8:	8b 09                	mov    (%rcx),%ecx
    80ca:	89 c9                	mov    %ecx,%ecx
    80cc:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    80d3:	00 
    80d4:	48 8d 0d 95 60 00 00 	lea    0x6095(%rip),%rcx        # e170 <ops.18>
    80db:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    80df:	90                   	nop
    80e0:	ff e1                	jmp    *%rcx
    80e2:	f3 0f 1e fa          	endbr64
    80e6:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    80ea:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    80ee:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    80f2:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    80f6:	48 21 f1             	and    %rsi,%rcx
    80f9:	48 89 c7             	mov    %rax,%rdi
    80fc:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8103:	ff ff ff 
    8106:	48 21 fe             	and    %rdi,%rsi
    8109:	48 89 f0             	mov    %rsi,%rax
    810c:	48 89 ca             	mov    %rcx,%rdx
    810f:	eb 7e                	jmp    818f <EvalBand+0xd8>
    8111:	f3 0f 1e fa          	endbr64
    8115:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8119:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    811e:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8123:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8127:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    812c:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8131:	48 21 f1             	and    %rsi,%rcx
    8134:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8138:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    813d:	48 89 c6             	mov    %rax,%rsi
    8140:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8147:	ff ff ff 
    814a:	48 21 f1             	and    %rsi,%rcx
    814d:	48 83 c9 01          	or     $0x1,%rcx
    8151:	48 89 c8             	mov    %rcx,%rax
    8154:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8159:	eb 34                	jmp    818f <EvalBand+0xd8>
    815b:	f3 0f 1e fa          	endbr64
    815f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8163:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8167:	8b 71 04             	mov    0x4(%rcx),%esi
    816a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    816e:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8172:	8b 49 04             	mov    0x4(%rcx),%ecx
    8175:	21 f1                	and    %esi,%ecx
    8177:	89 ce                	mov    %ecx,%esi
    8179:	48 89 c7             	mov    %rax,%rdi
    817c:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8183:	ff ff ff 
    8186:	48 21 f9             	and    %rdi,%rcx
    8189:	48 89 c8             	mov    %rcx,%rax
    818c:	48 89 f2             	mov    %rsi,%rdx
    818f:	48 89 c6             	mov    %rax,%rsi
    8192:	48 89 d7             	mov    %rdx,%rdi
    8195:	48 89 c1             	mov    %rax,%rcx
    8198:	48 89 d3             	mov    %rdx,%rbx
    819b:	89 f0                	mov    %esi,%eax
    819d:	48 89 da             	mov    %rbx,%rdx
    81a0:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    81a4:	c9                   	leave
    81a5:	c3                   	ret

00000000000081a6 <EvalBor>:
    81a6:	55                   	push   %rbp
    81a7:	48 89 e5             	mov    %rsp,%rbp
    81aa:	53                   	push   %rbx
    81ab:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    81af:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    81b3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    81b7:	8b 09                	mov    (%rcx),%ecx
    81b9:	89 c9                	mov    %ecx,%ecx
    81bb:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    81c2:	00 
    81c3:	48 8d 0d c6 5f 00 00 	lea    0x5fc6(%rip),%rcx        # e190 <ops.17>
    81ca:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    81ce:	90                   	nop
    81cf:	ff e1                	jmp    *%rcx
    81d1:	f3 0f 1e fa          	endbr64
    81d5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    81d9:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    81dd:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    81e1:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    81e5:	48 09 f1             	or     %rsi,%rcx
    81e8:	48 89 c7             	mov    %rax,%rdi
    81eb:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    81f2:	ff ff ff 
    81f5:	48 21 fe             	and    %rdi,%rsi
    81f8:	48 89 f0             	mov    %rsi,%rax
    81fb:	48 89 ca             	mov    %rcx,%rdx
    81fe:	eb 7e                	jmp    827e <EvalBor+0xd8>
    8200:	f3 0f 1e fa          	endbr64
    8204:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8208:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    820d:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8212:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8216:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    821b:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8220:	48 09 f1             	or     %rsi,%rcx
    8223:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8227:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    822c:	48 89 c6             	mov    %rax,%rsi
    822f:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8236:	ff ff ff 
    8239:	48 21 f1             	and    %rsi,%rcx
    823c:	48 83 c9 01          	or     $0x1,%rcx
    8240:	48 89 c8             	mov    %rcx,%rax
    8243:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8248:	eb 34                	jmp    827e <EvalBor+0xd8>
    824a:	f3 0f 1e fa          	endbr64
    824e:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8252:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8256:	8b 71 04             	mov    0x4(%rcx),%esi
    8259:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    825d:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8261:	8b 49 04             	mov    0x4(%rcx),%ecx
    8264:	09 f1                	or     %esi,%ecx
    8266:	89 ce                	mov    %ecx,%esi
    8268:	48 89 c7             	mov    %rax,%rdi
    826b:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8272:	ff ff ff 
    8275:	48 21 f9             	and    %rdi,%rcx
    8278:	48 89 c8             	mov    %rcx,%rax
    827b:	48 89 f2             	mov    %rsi,%rdx
    827e:	48 89 c6             	mov    %rax,%rsi
    8281:	48 89 d7             	mov    %rdx,%rdi
    8284:	48 89 c1             	mov    %rax,%rcx
    8287:	48 89 d3             	mov    %rdx,%rbx
    828a:	89 f0                	mov    %esi,%eax
    828c:	48 89 da             	mov    %rbx,%rdx
    828f:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8293:	c9                   	leave
    8294:	c3                   	ret

0000000000008295 <EvalBxor>:
    8295:	55                   	push   %rbp
    8296:	48 89 e5             	mov    %rsp,%rbp
    8299:	53                   	push   %rbx
    829a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    829e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    82a2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    82a6:	8b 09                	mov    (%rcx),%ecx
    82a8:	89 c9                	mov    %ecx,%ecx
    82aa:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    82b1:	00 
    82b2:	48 8d 0d f7 5e 00 00 	lea    0x5ef7(%rip),%rcx        # e1b0 <ops.16>
    82b9:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    82bd:	90                   	nop
    82be:	ff e1                	jmp    *%rcx
    82c0:	f3 0f 1e fa          	endbr64
    82c4:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    82c8:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    82cc:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    82d0:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    82d4:	48 31 f1             	xor    %rsi,%rcx
    82d7:	48 89 c7             	mov    %rax,%rdi
    82da:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    82e1:	ff ff ff 
    82e4:	48 21 fe             	and    %rdi,%rsi
    82e7:	48 89 f0             	mov    %rsi,%rax
    82ea:	48 89 ca             	mov    %rcx,%rdx
    82ed:	eb 7e                	jmp    836d <EvalBxor+0xd8>
    82ef:	f3 0f 1e fa          	endbr64
    82f3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    82f7:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    82fc:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    8301:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8305:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    830a:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    830f:	48 31 f1             	xor    %rsi,%rcx
    8312:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8316:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    831b:	48 89 c6             	mov    %rax,%rsi
    831e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8325:	ff ff ff 
    8328:	48 21 f1             	and    %rsi,%rcx
    832b:	48 83 c9 01          	or     $0x1,%rcx
    832f:	48 89 c8             	mov    %rcx,%rax
    8332:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8337:	eb 34                	jmp    836d <EvalBxor+0xd8>
    8339:	f3 0f 1e fa          	endbr64
    833d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8341:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8345:	8b 71 04             	mov    0x4(%rcx),%esi
    8348:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    834c:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8350:	8b 49 04             	mov    0x4(%rcx),%ecx
    8353:	31 f1                	xor    %esi,%ecx
    8355:	89 ce                	mov    %ecx,%esi
    8357:	48 89 c7             	mov    %rax,%rdi
    835a:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8361:	ff ff ff 
    8364:	48 21 f9             	and    %rdi,%rcx
    8367:	48 89 c8             	mov    %rcx,%rax
    836a:	48 89 f2             	mov    %rsi,%rdx
    836d:	48 89 c6             	mov    %rax,%rsi
    8370:	48 89 d7             	mov    %rdx,%rdi
    8373:	48 89 c1             	mov    %rax,%rcx
    8376:	48 89 d3             	mov    %rdx,%rbx
    8379:	89 f0                	mov    %esi,%eax
    837b:	48 89 da             	mov    %rbx,%rdx
    837e:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8382:	c9                   	leave
    8383:	c3                   	ret

0000000000008384 <EvalLsh>:
    8384:	55                   	push   %rbp
    8385:	48 89 e5             	mov    %rsp,%rbp
    8388:	53                   	push   %rbx
    8389:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    838d:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8391:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8395:	8b 09                	mov    (%rcx),%ecx
    8397:	89 c9                	mov    %ecx,%ecx
    8399:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    83a0:	00 
    83a1:	48 8d 0d 28 5e 00 00 	lea    0x5e28(%rip),%rcx        # e1d0 <ops.15>
    83a8:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    83ac:	90                   	nop
    83ad:	ff e1                	jmp    *%rcx
    83af:	f3 0f 1e fa          	endbr64
    83b3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    83b7:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    83bb:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    83bf:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    83c3:	48 d3 e6             	shl    %cl,%rsi
    83c6:	48 89 f1             	mov    %rsi,%rcx
    83c9:	48 89 c7             	mov    %rax,%rdi
    83cc:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    83d3:	ff ff ff 
    83d6:	48 21 fe             	and    %rdi,%rsi
    83d9:	48 89 f0             	mov    %rsi,%rax
    83dc:	48 89 ca             	mov    %rcx,%rdx
    83df:	e9 83 00 00 00       	jmp    8467 <EvalLsh+0xe3>
    83e4:	f3 0f 1e fa          	endbr64
    83e8:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    83ec:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    83f1:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    83f6:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    83fa:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    83ff:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    8404:	48 d3 e6             	shl    %cl,%rsi
    8407:	48 89 f1             	mov    %rsi,%rcx
    840a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    840e:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    8413:	48 89 c6             	mov    %rax,%rsi
    8416:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    841d:	ff ff ff 
    8420:	48 21 f1             	and    %rsi,%rcx
    8423:	48 83 c9 01          	or     $0x1,%rcx
    8427:	48 89 c8             	mov    %rcx,%rax
    842a:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    842f:	eb 36                	jmp    8467 <EvalLsh+0xe3>
    8431:	f3 0f 1e fa          	endbr64
    8435:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8439:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    843d:	8b 71 04             	mov    0x4(%rcx),%esi
    8440:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8444:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8448:	8b 49 04             	mov    0x4(%rcx),%ecx
    844b:	d3 e6                	shl    %cl,%esi
    844d:	89 f1                	mov    %esi,%ecx
    844f:	89 ce                	mov    %ecx,%esi
    8451:	48 89 c7             	mov    %rax,%rdi
    8454:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    845b:	ff ff ff 
    845e:	48 21 f9             	and    %rdi,%rcx
    8461:	48 89 c8             	mov    %rcx,%rax
    8464:	48 89 f2             	mov    %rsi,%rdx
    8467:	48 89 c6             	mov    %rax,%rsi
    846a:	48 89 d7             	mov    %rdx,%rdi
    846d:	48 89 c1             	mov    %rax,%rcx
    8470:	48 89 d3             	mov    %rdx,%rbx
    8473:	89 f0                	mov    %esi,%eax
    8475:	48 89 da             	mov    %rbx,%rdx
    8478:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    847c:	c9                   	leave
    847d:	c3                   	ret

000000000000847e <EvalRsh>:
    847e:	55                   	push   %rbp
    847f:	48 89 e5             	mov    %rsp,%rbp
    8482:	53                   	push   %rbx
    8483:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8487:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    848b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    848f:	8b 09                	mov    (%rcx),%ecx
    8491:	89 c9                	mov    %ecx,%ecx
    8493:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    849a:	00 
    849b:	48 8d 0d 4e 5d 00 00 	lea    0x5d4e(%rip),%rcx        # e1f0 <ops.14>
    84a2:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    84a6:	90                   	nop
    84a7:	ff e1                	jmp    *%rcx
    84a9:	f3 0f 1e fa          	endbr64
    84ad:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    84b1:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    84b5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    84b9:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    84bd:	48 d3 fe             	sar    %cl,%rsi
    84c0:	48 89 f1             	mov    %rsi,%rcx
    84c3:	48 89 c7             	mov    %rax,%rdi
    84c6:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    84cd:	ff ff ff 
    84d0:	48 21 fe             	and    %rdi,%rsi
    84d3:	48 89 f0             	mov    %rsi,%rax
    84d6:	48 89 ca             	mov    %rcx,%rdx
    84d9:	e9 83 00 00 00       	jmp    8561 <EvalRsh+0xe3>
    84de:	f3 0f 1e fa          	endbr64
    84e2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    84e6:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    84eb:	f2 48 0f 2c f0       	cvttsd2si %xmm0,%rsi
    84f0:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    84f4:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    84f9:	f2 48 0f 2c c8       	cvttsd2si %xmm0,%rcx
    84fe:	48 d3 fe             	sar    %cl,%rsi
    8501:	48 89 f1             	mov    %rsi,%rcx
    8504:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8508:	f2 48 0f 2a c1       	cvtsi2sd %rcx,%xmm0
    850d:	48 89 c6             	mov    %rax,%rsi
    8510:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8517:	ff ff ff 
    851a:	48 21 f1             	and    %rsi,%rcx
    851d:	48 83 c9 01          	or     $0x1,%rcx
    8521:	48 89 c8             	mov    %rcx,%rax
    8524:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8529:	eb 36                	jmp    8561 <EvalRsh+0xe3>
    852b:	f3 0f 1e fa          	endbr64
    852f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8533:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8537:	8b 71 04             	mov    0x4(%rcx),%esi
    853a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    853e:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8542:	8b 49 04             	mov    0x4(%rcx),%ecx
    8545:	d3 ee                	shr    %cl,%esi
    8547:	89 f1                	mov    %esi,%ecx
    8549:	89 ce                	mov    %ecx,%esi
    854b:	48 89 c7             	mov    %rax,%rdi
    854e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8555:	ff ff ff 
    8558:	48 21 f9             	and    %rdi,%rcx
    855b:	48 89 c8             	mov    %rcx,%rax
    855e:	48 89 f2             	mov    %rsi,%rdx
    8561:	48 89 c6             	mov    %rax,%rsi
    8564:	48 89 d7             	mov    %rdx,%rdi
    8567:	48 89 c1             	mov    %rax,%rcx
    856a:	48 89 d3             	mov    %rdx,%rbx
    856d:	89 f0                	mov    %esi,%eax
    856f:	48 89 da             	mov    %rbx,%rdx
    8572:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8576:	c9                   	leave
    8577:	c3                   	ret

0000000000008578 <EvalEqEq>:
    8578:	55                   	push   %rbp
    8579:	48 89 e5             	mov    %rsp,%rbp
    857c:	53                   	push   %rbx
    857d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8581:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8585:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8589:	8b 09                	mov    (%rcx),%ecx
    858b:	89 c9                	mov    %ecx,%ecx
    858d:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8594:	00 
    8595:	48 8d 0d 74 5c 00 00 	lea    0x5c74(%rip),%rcx        # e210 <ops.13>
    859c:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    85a0:	90                   	nop
    85a1:	ff e1                	jmp    *%rcx
    85a3:	f3 0f 1e fa          	endbr64
    85a7:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    85ab:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    85af:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    85b3:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    85b7:	48 39 ce             	cmp    %rcx,%rsi
    85ba:	0f 94 c1             	sete   %cl
    85bd:	0f b6 c9             	movzbl %cl,%ecx
    85c0:	48 89 c7             	mov    %rax,%rdi
    85c3:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    85ca:	ff ff ff 
    85cd:	48 21 fe             	and    %rdi,%rsi
    85d0:	48 89 f0             	mov    %rsi,%rax
    85d3:	48 89 ca             	mov    %rcx,%rdx
    85d6:	e9 81 00 00 00       	jmp    865c <EvalEqEq+0xe4>
    85db:	f3 0f 1e fa          	endbr64
    85df:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    85e3:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    85e8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    85ec:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    85f1:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    85f5:	7a 10                	jp     8607 <EvalEqEq+0x8f>
    85f7:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    85fb:	75 0a                	jne    8607 <EvalEqEq+0x8f>
    85fd:	f2 0f 10 05 c3 1a 00 	movsd  0x1ac3(%rip),%xmm0        # a0c8 <_IO_stdin_used+0xc8>
    8604:	00 
    8605:	eb 04                	jmp    860b <EvalEqEq+0x93>
    8607:	66 0f ef c0          	pxor   %xmm0,%xmm0
    860b:	48 89 c6             	mov    %rax,%rsi
    860e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8615:	ff ff ff 
    8618:	48 21 f1             	and    %rsi,%rcx
    861b:	48 83 c9 01          	or     $0x1,%rcx
    861f:	48 89 c8             	mov    %rcx,%rax
    8622:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8627:	eb 33                	jmp    865c <EvalEqEq+0xe4>
    8629:	f3 0f 1e fa          	endbr64
    862d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8631:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8635:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8639:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    863d:	48 39 ce             	cmp    %rcx,%rsi
    8640:	0f 94 c1             	sete   %cl
    8643:	0f b6 c9             	movzbl %cl,%ecx
    8646:	48 89 c7             	mov    %rax,%rdi
    8649:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8650:	ff ff ff 
    8653:	48 21 fe             	and    %rdi,%rsi
    8656:	48 89 f0             	mov    %rsi,%rax
    8659:	48 89 ca             	mov    %rcx,%rdx
    865c:	48 89 c6             	mov    %rax,%rsi
    865f:	48 89 d7             	mov    %rdx,%rdi
    8662:	48 89 c1             	mov    %rax,%rcx
    8665:	48 89 d3             	mov    %rdx,%rbx
    8668:	89 f0                	mov    %esi,%eax
    866a:	48 89 da             	mov    %rbx,%rdx
    866d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8671:	c9                   	leave
    8672:	c3                   	ret

0000000000008673 <EvalNeq>:
    8673:	55                   	push   %rbp
    8674:	48 89 e5             	mov    %rsp,%rbp
    8677:	53                   	push   %rbx
    8678:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    867c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8680:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8684:	8b 09                	mov    (%rcx),%ecx
    8686:	89 c9                	mov    %ecx,%ecx
    8688:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    868f:	00 
    8690:	48 8d 0d 99 5b 00 00 	lea    0x5b99(%rip),%rcx        # e230 <ops.12>
    8697:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    869b:	90                   	nop
    869c:	ff e1                	jmp    *%rcx
    869e:	f3 0f 1e fa          	endbr64
    86a2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    86a6:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    86aa:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    86ae:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    86b2:	48 39 ce             	cmp    %rcx,%rsi
    86b5:	0f 95 c1             	setne  %cl
    86b8:	0f b6 c9             	movzbl %cl,%ecx
    86bb:	48 89 c7             	mov    %rax,%rdi
    86be:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    86c5:	ff ff ff 
    86c8:	48 21 fe             	and    %rdi,%rsi
    86cb:	48 89 f0             	mov    %rsi,%rax
    86ce:	48 89 ca             	mov    %rcx,%rdx
    86d1:	e9 81 00 00 00       	jmp    8757 <EvalNeq+0xe4>
    86d6:	f3 0f 1e fa          	endbr64
    86da:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    86de:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    86e3:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    86e7:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    86ec:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    86f0:	7a 06                	jp     86f8 <EvalNeq+0x85>
    86f2:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    86f6:	74 0a                	je     8702 <EvalNeq+0x8f>
    86f8:	f2 0f 10 05 c8 19 00 	movsd  0x19c8(%rip),%xmm0        # a0c8 <_IO_stdin_used+0xc8>
    86ff:	00 
    8700:	eb 04                	jmp    8706 <EvalNeq+0x93>
    8702:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8706:	48 89 c6             	mov    %rax,%rsi
    8709:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8710:	ff ff ff 
    8713:	48 21 f1             	and    %rsi,%rcx
    8716:	48 83 c9 01          	or     $0x1,%rcx
    871a:	48 89 c8             	mov    %rcx,%rax
    871d:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8722:	eb 33                	jmp    8757 <EvalNeq+0xe4>
    8724:	f3 0f 1e fa          	endbr64
    8728:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    872c:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8730:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8734:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8738:	48 39 ce             	cmp    %rcx,%rsi
    873b:	0f 95 c1             	setne  %cl
    873e:	0f b6 c9             	movzbl %cl,%ecx
    8741:	48 89 c7             	mov    %rax,%rdi
    8744:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    874b:	ff ff ff 
    874e:	48 21 fe             	and    %rdi,%rsi
    8751:	48 89 f0             	mov    %rsi,%rax
    8754:	48 89 ca             	mov    %rcx,%rdx
    8757:	48 89 c6             	mov    %rax,%rsi
    875a:	48 89 d7             	mov    %rdx,%rdi
    875d:	48 89 c1             	mov    %rax,%rcx
    8760:	48 89 d3             	mov    %rdx,%rbx
    8763:	89 f0                	mov    %esi,%eax
    8765:	48 89 da             	mov    %rbx,%rdx
    8768:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    876c:	c9                   	leave
    876d:	c3                   	ret

000000000000876e <EvalLt>:
    876e:	55                   	push   %rbp
    876f:	48 89 e5             	mov    %rsp,%rbp
    8772:	53                   	push   %rbx
    8773:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8777:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    877b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    877f:	8b 09                	mov    (%rcx),%ecx
    8781:	89 c9                	mov    %ecx,%ecx
    8783:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    878a:	00 
    878b:	48 8d 0d be 5a 00 00 	lea    0x5abe(%rip),%rcx        # e250 <ops.11>
    8792:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8796:	90                   	nop
    8797:	ff e1                	jmp    *%rcx
    8799:	f3 0f 1e fa          	endbr64
    879d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    87a1:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    87a5:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    87a9:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    87ad:	48 39 ce             	cmp    %rcx,%rsi
    87b0:	0f 9c c1             	setl   %cl
    87b3:	0f b6 c9             	movzbl %cl,%ecx
    87b6:	48 89 c7             	mov    %rax,%rdi
    87b9:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    87c0:	ff ff ff 
    87c3:	48 21 fe             	and    %rdi,%rsi
    87c6:	48 89 f0             	mov    %rsi,%rax
    87c9:	48 89 ca             	mov    %rcx,%rdx
    87cc:	e9 80 00 00 00       	jmp    8851 <EvalLt+0xe3>
    87d1:	f3 0f 1e fa          	endbr64
    87d5:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    87d9:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    87de:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    87e2:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    87e7:	66 0f 2f c1          	comisd %xmm1,%xmm0
    87eb:	76 0a                	jbe    87f7 <EvalLt+0x89>
    87ed:	f2 0f 10 05 d3 18 00 	movsd  0x18d3(%rip),%xmm0        # a0c8 <_IO_stdin_used+0xc8>
    87f4:	00 
    87f5:	eb 04                	jmp    87fb <EvalLt+0x8d>
    87f7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    87fb:	48 89 c6             	mov    %rax,%rsi
    87fe:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8805:	ff ff ff 
    8808:	48 21 f1             	and    %rsi,%rcx
    880b:	48 83 c9 01          	or     $0x1,%rcx
    880f:	48 89 c8             	mov    %rcx,%rax
    8812:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8817:	eb 38                	jmp    8851 <EvalLt+0xe3>
    8819:	f3 0f 1e fa          	endbr64
    881d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8821:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8825:	8b 71 04             	mov    0x4(%rcx),%esi
    8828:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    882c:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8830:	8b 49 04             	mov    0x4(%rcx),%ecx
    8833:	39 ce                	cmp    %ecx,%esi
    8835:	0f 92 c1             	setb   %cl
    8838:	0f b6 c9             	movzbl %cl,%ecx
    883b:	48 89 c7             	mov    %rax,%rdi
    883e:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8845:	ff ff ff 
    8848:	48 21 fe             	and    %rdi,%rsi
    884b:	48 89 f0             	mov    %rsi,%rax
    884e:	48 89 ca             	mov    %rcx,%rdx
    8851:	48 89 c6             	mov    %rax,%rsi
    8854:	48 89 d7             	mov    %rdx,%rdi
    8857:	48 89 c1             	mov    %rax,%rcx
    885a:	48 89 d3             	mov    %rdx,%rbx
    885d:	89 f0                	mov    %esi,%eax
    885f:	48 89 da             	mov    %rbx,%rdx
    8862:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8866:	c9                   	leave
    8867:	c3                   	ret

0000000000008868 <EvalLe>:
    8868:	55                   	push   %rbp
    8869:	48 89 e5             	mov    %rsp,%rbp
    886c:	53                   	push   %rbx
    886d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8871:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8875:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8879:	8b 09                	mov    (%rcx),%ecx
    887b:	89 c9                	mov    %ecx,%ecx
    887d:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8884:	00 
    8885:	48 8d 0d e4 59 00 00 	lea    0x59e4(%rip),%rcx        # e270 <ops.10>
    888c:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8890:	90                   	nop
    8891:	ff e1                	jmp    *%rcx
    8893:	f3 0f 1e fa          	endbr64
    8897:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    889b:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    889f:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    88a3:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    88a7:	48 39 ce             	cmp    %rcx,%rsi
    88aa:	0f 9e c1             	setle  %cl
    88ad:	0f b6 c9             	movzbl %cl,%ecx
    88b0:	48 89 c7             	mov    %rax,%rdi
    88b3:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    88ba:	ff ff ff 
    88bd:	48 21 fe             	and    %rdi,%rsi
    88c0:	48 89 f0             	mov    %rsi,%rax
    88c3:	48 89 ca             	mov    %rcx,%rdx
    88c6:	e9 80 00 00 00       	jmp    894b <EvalLe+0xe3>
    88cb:	f3 0f 1e fa          	endbr64
    88cf:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    88d3:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    88d8:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    88dc:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    88e1:	66 0f 2f c1          	comisd %xmm1,%xmm0
    88e5:	72 0a                	jb     88f1 <EvalLe+0x89>
    88e7:	f2 0f 10 05 d9 17 00 	movsd  0x17d9(%rip),%xmm0        # a0c8 <_IO_stdin_used+0xc8>
    88ee:	00 
    88ef:	eb 04                	jmp    88f5 <EvalLe+0x8d>
    88f1:	66 0f ef c0          	pxor   %xmm0,%xmm0
    88f5:	48 89 c6             	mov    %rax,%rsi
    88f8:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    88ff:	ff ff ff 
    8902:	48 21 f1             	and    %rsi,%rcx
    8905:	48 83 c9 01          	or     $0x1,%rcx
    8909:	48 89 c8             	mov    %rcx,%rax
    890c:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8911:	eb 38                	jmp    894b <EvalLe+0xe3>
    8913:	f3 0f 1e fa          	endbr64
    8917:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    891b:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    891f:	8b 49 04             	mov    0x4(%rcx),%ecx
    8922:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    8926:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    892a:	8b 76 04             	mov    0x4(%rsi),%esi
    892d:	39 ce                	cmp    %ecx,%esi
    892f:	0f 93 c1             	setae  %cl
    8932:	0f b6 c9             	movzbl %cl,%ecx
    8935:	48 89 c7             	mov    %rax,%rdi
    8938:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    893f:	ff ff ff 
    8942:	48 21 fe             	and    %rdi,%rsi
    8945:	48 89 f0             	mov    %rsi,%rax
    8948:	48 89 ca             	mov    %rcx,%rdx
    894b:	48 89 c6             	mov    %rax,%rsi
    894e:	48 89 d7             	mov    %rdx,%rdi
    8951:	48 89 c1             	mov    %rax,%rcx
    8954:	48 89 d3             	mov    %rdx,%rbx
    8957:	89 f0                	mov    %esi,%eax
    8959:	48 89 da             	mov    %rbx,%rdx
    895c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8960:	c9                   	leave
    8961:	c3                   	ret

0000000000008962 <EvalGt>:
    8962:	55                   	push   %rbp
    8963:	48 89 e5             	mov    %rsp,%rbp
    8966:	53                   	push   %rbx
    8967:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    896b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    896f:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8973:	8b 09                	mov    (%rcx),%ecx
    8975:	89 c9                	mov    %ecx,%ecx
    8977:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    897e:	00 
    897f:	48 8d 0d 0a 59 00 00 	lea    0x590a(%rip),%rcx        # e290 <ops.9>
    8986:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    898a:	90                   	nop
    898b:	ff e1                	jmp    *%rcx
    898d:	f3 0f 1e fa          	endbr64
    8991:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8995:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8999:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    899d:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    89a1:	48 39 ce             	cmp    %rcx,%rsi
    89a4:	0f 9f c1             	setg   %cl
    89a7:	0f b6 c9             	movzbl %cl,%ecx
    89aa:	48 89 c7             	mov    %rax,%rdi
    89ad:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    89b4:	ff ff ff 
    89b7:	48 21 fe             	and    %rdi,%rsi
    89ba:	48 89 f0             	mov    %rsi,%rax
    89bd:	48 89 ca             	mov    %rcx,%rdx
    89c0:	e9 80 00 00 00       	jmp    8a45 <EvalGt+0xe3>
    89c5:	f3 0f 1e fa          	endbr64
    89c9:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    89cd:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    89d2:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    89d6:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    89db:	66 0f 2f c1          	comisd %xmm1,%xmm0
    89df:	76 0a                	jbe    89eb <EvalGt+0x89>
    89e1:	f2 0f 10 05 df 16 00 	movsd  0x16df(%rip),%xmm0        # a0c8 <_IO_stdin_used+0xc8>
    89e8:	00 
    89e9:	eb 04                	jmp    89ef <EvalGt+0x8d>
    89eb:	66 0f ef c0          	pxor   %xmm0,%xmm0
    89ef:	48 89 c6             	mov    %rax,%rsi
    89f2:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    89f9:	ff ff ff 
    89fc:	48 21 f1             	and    %rsi,%rcx
    89ff:	48 83 c9 01          	or     $0x1,%rcx
    8a03:	48 89 c8             	mov    %rcx,%rax
    8a06:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8a0b:	eb 38                	jmp    8a45 <EvalGt+0xe3>
    8a0d:	f3 0f 1e fa          	endbr64
    8a11:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8a15:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8a19:	8b 49 04             	mov    0x4(%rcx),%ecx
    8a1c:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    8a20:	48 8b 76 08          	mov    0x8(%rsi),%rsi
    8a24:	8b 76 04             	mov    0x4(%rsi),%esi
    8a27:	39 ce                	cmp    %ecx,%esi
    8a29:	0f 92 c1             	setb   %cl
    8a2c:	0f b6 c9             	movzbl %cl,%ecx
    8a2f:	48 89 c7             	mov    %rax,%rdi
    8a32:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8a39:	ff ff ff 
    8a3c:	48 21 fe             	and    %rdi,%rsi
    8a3f:	48 89 f0             	mov    %rsi,%rax
    8a42:	48 89 ca             	mov    %rcx,%rdx
    8a45:	48 89 c6             	mov    %rax,%rsi
    8a48:	48 89 d7             	mov    %rdx,%rdi
    8a4b:	48 89 c1             	mov    %rax,%rcx
    8a4e:	48 89 d3             	mov    %rdx,%rbx
    8a51:	89 f0                	mov    %esi,%eax
    8a53:	48 89 da             	mov    %rbx,%rdx
    8a56:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8a5a:	c9                   	leave
    8a5b:	c3                   	ret

0000000000008a5c <EvalGe>:
    8a5c:	55                   	push   %rbp
    8a5d:	48 89 e5             	mov    %rsp,%rbp
    8a60:	53                   	push   %rbx
    8a61:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8a65:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8a69:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8a6d:	8b 09                	mov    (%rcx),%ecx
    8a6f:	89 c9                	mov    %ecx,%ecx
    8a71:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8a78:	00 
    8a79:	48 8d 0d 30 58 00 00 	lea    0x5830(%rip),%rcx        # e2b0 <ops.8>
    8a80:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8a84:	90                   	nop
    8a85:	ff e1                	jmp    *%rcx
    8a87:	f3 0f 1e fa          	endbr64
    8a8b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8a8f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8a93:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8a97:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8a9b:	48 39 ce             	cmp    %rcx,%rsi
    8a9e:	0f 9d c1             	setge  %cl
    8aa1:	0f b6 c9             	movzbl %cl,%ecx
    8aa4:	48 89 c7             	mov    %rax,%rdi
    8aa7:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8aae:	ff ff ff 
    8ab1:	48 21 fe             	and    %rdi,%rsi
    8ab4:	48 89 f0             	mov    %rsi,%rax
    8ab7:	48 89 ca             	mov    %rcx,%rdx
    8aba:	e9 80 00 00 00       	jmp    8b3f <EvalGe+0xe3>
    8abf:	f3 0f 1e fa          	endbr64
    8ac3:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8ac7:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8acc:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8ad0:	f2 0f 10 49 08       	movsd  0x8(%rcx),%xmm1
    8ad5:	66 0f 2f c1          	comisd %xmm1,%xmm0
    8ad9:	72 0a                	jb     8ae5 <EvalGe+0x89>
    8adb:	f2 0f 10 05 e5 15 00 	movsd  0x15e5(%rip),%xmm0        # a0c8 <_IO_stdin_used+0xc8>
    8ae2:	00 
    8ae3:	eb 04                	jmp    8ae9 <EvalGe+0x8d>
    8ae5:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8ae9:	48 89 c6             	mov    %rax,%rsi
    8aec:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8af3:	ff ff ff 
    8af6:	48 21 f1             	and    %rsi,%rcx
    8af9:	48 83 c9 01          	or     $0x1,%rcx
    8afd:	48 89 c8             	mov    %rcx,%rax
    8b00:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8b05:	eb 38                	jmp    8b3f <EvalGe+0xe3>
    8b07:	f3 0f 1e fa          	endbr64
    8b0b:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8b0f:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8b13:	8b 71 04             	mov    0x4(%rcx),%esi
    8b16:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8b1a:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8b1e:	8b 49 04             	mov    0x4(%rcx),%ecx
    8b21:	39 ce                	cmp    %ecx,%esi
    8b23:	0f 93 c1             	setae  %cl
    8b26:	0f b6 c9             	movzbl %cl,%ecx
    8b29:	48 89 c7             	mov    %rax,%rdi
    8b2c:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8b33:	ff ff ff 
    8b36:	48 21 fe             	and    %rdi,%rsi
    8b39:	48 89 f0             	mov    %rsi,%rax
    8b3c:	48 89 ca             	mov    %rcx,%rdx
    8b3f:	48 89 c6             	mov    %rax,%rsi
    8b42:	48 89 d7             	mov    %rdx,%rdi
    8b45:	48 89 c1             	mov    %rax,%rcx
    8b48:	48 89 d3             	mov    %rdx,%rbx
    8b4b:	89 f0                	mov    %esi,%eax
    8b4d:	48 89 da             	mov    %rbx,%rdx
    8b50:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8b54:	c9                   	leave
    8b55:	c3                   	ret

0000000000008b56 <EvalAnd>:
    8b56:	55                   	push   %rbp
    8b57:	48 89 e5             	mov    %rsp,%rbp
    8b5a:	53                   	push   %rbx
    8b5b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8b5f:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8b63:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8b67:	8b 09                	mov    (%rcx),%ecx
    8b69:	89 c9                	mov    %ecx,%ecx
    8b6b:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8b72:	00 
    8b73:	48 8d 0d 56 57 00 00 	lea    0x5756(%rip),%rcx        # e2d0 <ops.7>
    8b7a:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8b7e:	90                   	nop
    8b7f:	ff e1                	jmp    *%rcx
    8b81:	f3 0f 1e fa          	endbr64
    8b85:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8b89:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8b8d:	48 85 c9             	test   %rcx,%rcx
    8b90:	74 14                	je     8ba6 <EvalAnd+0x50>
    8b92:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8b96:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8b9a:	48 85 c9             	test   %rcx,%rcx
    8b9d:	74 07                	je     8ba6 <EvalAnd+0x50>
    8b9f:	b9 01 00 00 00       	mov    $0x1,%ecx
    8ba4:	eb 05                	jmp    8bab <EvalAnd+0x55>
    8ba6:	b9 00 00 00 00       	mov    $0x0,%ecx
    8bab:	48 63 c9             	movslq %ecx,%rcx
    8bae:	48 89 c7             	mov    %rax,%rdi
    8bb1:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8bb8:	ff ff ff 
    8bbb:	48 21 fe             	and    %rdi,%rsi
    8bbe:	48 89 f0             	mov    %rsi,%rax
    8bc1:	48 89 ca             	mov    %rcx,%rdx
    8bc4:	e9 b3 00 00 00       	jmp    8c7c <EvalAnd+0x126>
    8bc9:	f3 0f 1e fa          	endbr64
    8bcd:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8bd1:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8bd6:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8bda:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8bde:	7a 0a                	jp     8bea <EvalAnd+0x94>
    8be0:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8be4:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8be8:	74 24                	je     8c0e <EvalAnd+0xb8>
    8bea:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8bee:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8bf3:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8bf7:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8bfb:	7a 0a                	jp     8c07 <EvalAnd+0xb1>
    8bfd:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8c01:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8c05:	74 07                	je     8c0e <EvalAnd+0xb8>
    8c07:	b9 01 00 00 00       	mov    $0x1,%ecx
    8c0c:	eb 05                	jmp    8c13 <EvalAnd+0xbd>
    8c0e:	b9 00 00 00 00       	mov    $0x0,%ecx
    8c13:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8c17:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    8c1b:	48 89 c6             	mov    %rax,%rsi
    8c1e:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8c25:	ff ff ff 
    8c28:	48 21 f1             	and    %rsi,%rcx
    8c2b:	48 83 c9 01          	or     $0x1,%rcx
    8c2f:	48 89 c8             	mov    %rcx,%rax
    8c32:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8c37:	eb 43                	jmp    8c7c <EvalAnd+0x126>
    8c39:	f3 0f 1e fa          	endbr64
    8c3d:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8c41:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8c45:	48 85 c9             	test   %rcx,%rcx
    8c48:	74 14                	je     8c5e <EvalAnd+0x108>
    8c4a:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8c4e:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8c52:	48 85 c9             	test   %rcx,%rcx
    8c55:	74 07                	je     8c5e <EvalAnd+0x108>
    8c57:	b9 01 00 00 00       	mov    $0x1,%ecx
    8c5c:	eb 05                	jmp    8c63 <EvalAnd+0x10d>
    8c5e:	b9 00 00 00 00       	mov    $0x0,%ecx
    8c63:	48 63 c9             	movslq %ecx,%rcx
    8c66:	48 89 c7             	mov    %rax,%rdi
    8c69:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8c70:	ff ff ff 
    8c73:	48 21 fe             	and    %rdi,%rsi
    8c76:	48 89 f0             	mov    %rsi,%rax
    8c79:	48 89 ca             	mov    %rcx,%rdx
    8c7c:	48 89 c6             	mov    %rax,%rsi
    8c7f:	48 89 d7             	mov    %rdx,%rdi
    8c82:	48 89 c1             	mov    %rax,%rcx
    8c85:	48 89 d3             	mov    %rdx,%rbx
    8c88:	89 f0                	mov    %esi,%eax
    8c8a:	48 89 da             	mov    %rbx,%rdx
    8c8d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8c91:	c9                   	leave
    8c92:	c3                   	ret

0000000000008c93 <EvalOr>:
    8c93:	55                   	push   %rbp
    8c94:	48 89 e5             	mov    %rsp,%rbp
    8c97:	53                   	push   %rbx
    8c98:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8c9c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8ca0:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8ca4:	8b 09                	mov    (%rcx),%ecx
    8ca6:	89 c9                	mov    %ecx,%ecx
    8ca8:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8caf:	00 
    8cb0:	48 8d 0d 39 56 00 00 	lea    0x5639(%rip),%rcx        # e2f0 <ops.6>
    8cb7:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8cbb:	90                   	nop
    8cbc:	ff e1                	jmp    *%rcx
    8cbe:	f3 0f 1e fa          	endbr64
    8cc2:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8cc6:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8cca:	48 85 c9             	test   %rcx,%rcx
    8ccd:	75 0d                	jne    8cdc <EvalOr+0x49>
    8ccf:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8cd3:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8cd7:	48 85 c9             	test   %rcx,%rcx
    8cda:	74 07                	je     8ce3 <EvalOr+0x50>
    8cdc:	b9 01 00 00 00       	mov    $0x1,%ecx
    8ce1:	eb 05                	jmp    8ce8 <EvalOr+0x55>
    8ce3:	b9 00 00 00 00       	mov    $0x0,%ecx
    8ce8:	48 63 c9             	movslq %ecx,%rcx
    8ceb:	48 89 c7             	mov    %rax,%rdi
    8cee:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8cf5:	ff ff ff 
    8cf8:	48 21 fe             	and    %rdi,%rsi
    8cfb:	48 89 f0             	mov    %rsi,%rax
    8cfe:	48 89 ca             	mov    %rcx,%rdx
    8d01:	e9 b3 00 00 00       	jmp    8db9 <EvalOr+0x126>
    8d06:	f3 0f 1e fa          	endbr64
    8d0a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8d0e:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8d13:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8d17:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8d1b:	7a 27                	jp     8d44 <EvalOr+0xb1>
    8d1d:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8d21:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8d25:	75 1d                	jne    8d44 <EvalOr+0xb1>
    8d27:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8d2b:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8d30:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8d34:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8d38:	7a 0a                	jp     8d44 <EvalOr+0xb1>
    8d3a:	66 0f ef c9          	pxor   %xmm1,%xmm1
    8d3e:	66 0f 2e c1          	ucomisd %xmm1,%xmm0
    8d42:	74 07                	je     8d4b <EvalOr+0xb8>
    8d44:	b9 01 00 00 00       	mov    $0x1,%ecx
    8d49:	eb 05                	jmp    8d50 <EvalOr+0xbd>
    8d4b:	b9 00 00 00 00       	mov    $0x0,%ecx
    8d50:	66 0f ef c0          	pxor   %xmm0,%xmm0
    8d54:	f2 0f 2a c1          	cvtsi2sd %ecx,%xmm0
    8d58:	48 89 c6             	mov    %rax,%rsi
    8d5b:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8d62:	ff ff ff 
    8d65:	48 21 f1             	and    %rsi,%rcx
    8d68:	48 83 c9 01          	or     $0x1,%rcx
    8d6c:	48 89 c8             	mov    %rcx,%rax
    8d6f:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8d74:	eb 43                	jmp    8db9 <EvalOr+0x126>
    8d76:	f3 0f 1e fa          	endbr64
    8d7a:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8d7e:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8d82:	48 85 c9             	test   %rcx,%rcx
    8d85:	75 0d                	jne    8d94 <EvalOr+0x101>
    8d87:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8d8b:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8d8f:	48 85 c9             	test   %rcx,%rcx
    8d92:	74 07                	je     8d9b <EvalOr+0x108>
    8d94:	b9 01 00 00 00       	mov    $0x1,%ecx
    8d99:	eb 05                	jmp    8da0 <EvalOr+0x10d>
    8d9b:	b9 00 00 00 00       	mov    $0x0,%ecx
    8da0:	48 63 c9             	movslq %ecx,%rcx
    8da3:	48 89 c7             	mov    %rax,%rdi
    8da6:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8dad:	ff ff ff 
    8db0:	48 21 fe             	and    %rdi,%rsi
    8db3:	48 89 f0             	mov    %rsi,%rax
    8db6:	48 89 ca             	mov    %rcx,%rdx
    8db9:	48 89 c6             	mov    %rax,%rsi
    8dbc:	48 89 d7             	mov    %rdx,%rdi
    8dbf:	48 89 c1             	mov    %rax,%rcx
    8dc2:	48 89 d3             	mov    %rdx,%rbx
    8dc5:	89 f0                	mov    %esi,%eax
    8dc7:	48 89 da             	mov    %rbx,%rdx
    8dca:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8dce:	c9                   	leave
    8dcf:	c3                   	ret

0000000000008dd0 <EvalMov>:
    8dd0:	55                   	push   %rbp
    8dd1:	48 89 e5             	mov    %rsp,%rbp
    8dd4:	53                   	push   %rbx
    8dd5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8dd9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8ddd:	48 8b 4d e8          	mov    -0x18(%rbp),%rcx
    8de1:	8b 09                	mov    (%rcx),%ecx
    8de3:	89 c9                	mov    %ecx,%ecx
    8de5:	48 8d 34 cd 00 00 00 	lea    0x0(,%rcx,8),%rsi
    8dec:	00 
    8ded:	48 8d 0d 1c 55 00 00 	lea    0x551c(%rip),%rcx        # e310 <ops.5>
    8df4:	48 8b 0c 0e          	mov    (%rsi,%rcx,1),%rcx
    8df8:	90                   	nop
    8df9:	ff e1                	jmp    *%rcx
    8dfb:	f3 0f 1e fa          	endbr64
    8dff:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8e03:	48 8b 49 08          	mov    0x8(%rcx),%rcx
    8e07:	48 89 c7             	mov    %rax,%rdi
    8e0a:	48 be 00 00 00 00 ff 	movabs $0xffffffff00000000,%rsi
    8e11:	ff ff ff 
    8e14:	48 21 fe             	and    %rdi,%rsi
    8e17:	48 89 f0             	mov    %rsi,%rax
    8e1a:	48 89 ca             	mov    %rcx,%rdx
    8e1d:	eb 51                	jmp    8e70 <EvalMov+0xa0>
    8e1f:	f3 0f 1e fa          	endbr64
    8e23:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8e27:	f2 0f 10 41 08       	movsd  0x8(%rcx),%xmm0
    8e2c:	48 89 c6             	mov    %rax,%rsi
    8e2f:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8e36:	ff ff ff 
    8e39:	48 21 f1             	and    %rsi,%rcx
    8e3c:	48 83 c9 01          	or     $0x1,%rcx
    8e40:	48 89 c8             	mov    %rcx,%rax
    8e43:	66 48 0f 7e c2       	movq   %xmm0,%rdx
    8e48:	eb 26                	jmp    8e70 <EvalMov+0xa0>
    8e4a:	f3 0f 1e fa          	endbr64
    8e4e:	48 8b 4d e0          	mov    -0x20(%rbp),%rcx
    8e52:	48 8b 71 08          	mov    0x8(%rcx),%rsi
    8e56:	48 89 c7             	mov    %rax,%rdi
    8e59:	48 b9 00 00 00 00 ff 	movabs $0xffffffff00000000,%rcx
    8e60:	ff ff ff 
    8e63:	48 21 f9             	and    %rdi,%rcx
    8e66:	48 83 c9 02          	or     $0x2,%rcx
    8e6a:	48 89 c8             	mov    %rcx,%rax
    8e6d:	48 89 f2             	mov    %rsi,%rdx
    8e70:	48 89 c6             	mov    %rax,%rsi
    8e73:	48 89 d7             	mov    %rdx,%rdi
    8e76:	48 89 c1             	mov    %rax,%rcx
    8e79:	48 89 d3             	mov    %rdx,%rbx
    8e7c:	89 f0                	mov    %esi,%eax
    8e7e:	48 89 da             	mov    %rbx,%rdx
    8e81:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8e85:	c9                   	leave
    8e86:	c3                   	ret

0000000000008e87 <EvalAddEq>:
    8e87:	55                   	push   %rbp
    8e88:	48 89 e5             	mov    %rsp,%rbp
    8e8b:	53                   	push   %rbx
    8e8c:	48 83 ec 18          	sub    $0x18,%rsp
    8e90:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8e94:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8e98:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8e9c:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8ea0:	48 89 d6             	mov    %rdx,%rsi
    8ea3:	48 89 c7             	mov    %rax,%rdi
    8ea6:	e8 04 ec ff ff       	call   7aaf <EvalAdd>
    8eab:	48 89 d1             	mov    %rdx,%rcx
    8eae:	48 89 ca             	mov    %rcx,%rdx
    8eb1:	48 89 c6             	mov    %rax,%rsi
    8eb4:	48 89 d7             	mov    %rdx,%rdi
    8eb7:	48 89 c1             	mov    %rax,%rcx
    8eba:	48 89 d3             	mov    %rdx,%rbx
    8ebd:	89 f0                	mov    %esi,%eax
    8ebf:	48 89 da             	mov    %rbx,%rdx
    8ec2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8ec6:	c9                   	leave
    8ec7:	c3                   	ret

0000000000008ec8 <EvalSubEq>:
    8ec8:	55                   	push   %rbp
    8ec9:	48 89 e5             	mov    %rsp,%rbp
    8ecc:	53                   	push   %rbx
    8ecd:	48 83 ec 18          	sub    $0x18,%rsp
    8ed1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8ed5:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8ed9:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8edd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8ee1:	48 89 d6             	mov    %rdx,%rsi
    8ee4:	48 89 c7             	mov    %rax,%rdi
    8ee7:	e8 a0 ec ff ff       	call   7b8c <EvalSub>
    8eec:	48 89 d1             	mov    %rdx,%rcx
    8eef:	48 89 ca             	mov    %rcx,%rdx
    8ef2:	48 89 c6             	mov    %rax,%rsi
    8ef5:	48 89 d7             	mov    %rdx,%rdi
    8ef8:	48 89 c1             	mov    %rax,%rcx
    8efb:	48 89 d3             	mov    %rdx,%rbx
    8efe:	89 f0                	mov    %esi,%eax
    8f00:	48 89 da             	mov    %rbx,%rdx
    8f03:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8f07:	c9                   	leave
    8f08:	c3                   	ret

0000000000008f09 <EvalMulEq>:
    8f09:	55                   	push   %rbp
    8f0a:	48 89 e5             	mov    %rsp,%rbp
    8f0d:	53                   	push   %rbx
    8f0e:	48 83 ec 18          	sub    $0x18,%rsp
    8f12:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8f16:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8f1a:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8f1e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8f22:	48 89 d6             	mov    %rdx,%rsi
    8f25:	48 89 c7             	mov    %rax,%rdi
    8f28:	e8 3c ed ff ff       	call   7c69 <EvalMul>
    8f2d:	48 89 d1             	mov    %rdx,%rcx
    8f30:	48 89 ca             	mov    %rcx,%rdx
    8f33:	48 89 c6             	mov    %rax,%rsi
    8f36:	48 89 d7             	mov    %rdx,%rdi
    8f39:	48 89 c1             	mov    %rax,%rcx
    8f3c:	48 89 d3             	mov    %rdx,%rbx
    8f3f:	89 f0                	mov    %esi,%eax
    8f41:	48 89 da             	mov    %rbx,%rdx
    8f44:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8f48:	c9                   	leave
    8f49:	c3                   	ret

0000000000008f4a <EvalDivEq>:
    8f4a:	55                   	push   %rbp
    8f4b:	48 89 e5             	mov    %rsp,%rbp
    8f4e:	53                   	push   %rbx
    8f4f:	48 83 ec 18          	sub    $0x18,%rsp
    8f53:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8f57:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8f5b:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8f5f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8f63:	48 89 d6             	mov    %rdx,%rsi
    8f66:	48 89 c7             	mov    %rax,%rdi
    8f69:	e8 da ed ff ff       	call   7d48 <EvalDiv>
    8f6e:	48 89 d1             	mov    %rdx,%rcx
    8f71:	48 89 ca             	mov    %rcx,%rdx
    8f74:	48 89 c6             	mov    %rax,%rsi
    8f77:	48 89 d7             	mov    %rdx,%rdi
    8f7a:	48 89 c1             	mov    %rax,%rcx
    8f7d:	48 89 d3             	mov    %rdx,%rbx
    8f80:	89 f0                	mov    %esi,%eax
    8f82:	48 89 da             	mov    %rbx,%rdx
    8f85:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8f89:	c9                   	leave
    8f8a:	c3                   	ret

0000000000008f8b <EvalModEq>:
    8f8b:	55                   	push   %rbp
    8f8c:	48 89 e5             	mov    %rsp,%rbp
    8f8f:	53                   	push   %rbx
    8f90:	48 83 ec 18          	sub    $0x18,%rsp
    8f94:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8f98:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8f9c:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8fa0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8fa4:	48 89 d6             	mov    %rdx,%rsi
    8fa7:	48 89 c7             	mov    %rax,%rdi
    8faa:	e8 78 ee ff ff       	call   7e27 <EvalMod>
    8faf:	48 89 d1             	mov    %rdx,%rcx
    8fb2:	48 89 ca             	mov    %rcx,%rdx
    8fb5:	48 89 c6             	mov    %rax,%rsi
    8fb8:	48 89 d7             	mov    %rdx,%rdi
    8fbb:	48 89 c1             	mov    %rax,%rcx
    8fbe:	48 89 d3             	mov    %rdx,%rbx
    8fc1:	89 f0                	mov    %esi,%eax
    8fc3:	48 89 da             	mov    %rbx,%rdx
    8fc6:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    8fca:	c9                   	leave
    8fcb:	c3                   	ret

0000000000008fcc <EvalPowEq>:
    8fcc:	55                   	push   %rbp
    8fcd:	48 89 e5             	mov    %rsp,%rbp
    8fd0:	53                   	push   %rbx
    8fd1:	48 83 ec 18          	sub    $0x18,%rsp
    8fd5:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    8fd9:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    8fdd:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    8fe1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    8fe5:	48 89 d6             	mov    %rdx,%rsi
    8fe8:	48 89 c7             	mov    %rax,%rdi
    8feb:	e8 3a ef ff ff       	call   7f2a <EvalPow>
    8ff0:	48 89 d1             	mov    %rdx,%rcx
    8ff3:	48 89 ca             	mov    %rcx,%rdx
    8ff6:	48 89 c6             	mov    %rax,%rsi
    8ff9:	48 89 d7             	mov    %rdx,%rdi
    8ffc:	48 89 c1             	mov    %rax,%rcx
    8fff:	48 89 d3             	mov    %rdx,%rbx
    9002:	89 f0                	mov    %esi,%eax
    9004:	48 89 da             	mov    %rbx,%rdx
    9007:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    900b:	c9                   	leave
    900c:	c3                   	ret

000000000000900d <EvalBandEq>:
    900d:	55                   	push   %rbp
    900e:	48 89 e5             	mov    %rsp,%rbp
    9011:	53                   	push   %rbx
    9012:	48 83 ec 18          	sub    $0x18,%rsp
    9016:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    901a:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    901e:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9022:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9026:	48 89 d6             	mov    %rdx,%rsi
    9029:	48 89 c7             	mov    %rax,%rdi
    902c:	e8 86 f0 ff ff       	call   80b7 <EvalBand>
    9031:	48 89 d1             	mov    %rdx,%rcx
    9034:	48 89 ca             	mov    %rcx,%rdx
    9037:	48 89 c6             	mov    %rax,%rsi
    903a:	48 89 d7             	mov    %rdx,%rdi
    903d:	48 89 c1             	mov    %rax,%rcx
    9040:	48 89 d3             	mov    %rdx,%rbx
    9043:	89 f0                	mov    %esi,%eax
    9045:	48 89 da             	mov    %rbx,%rdx
    9048:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    904c:	c9                   	leave
    904d:	c3                   	ret

000000000000904e <EvalBorEq>:
    904e:	55                   	push   %rbp
    904f:	48 89 e5             	mov    %rsp,%rbp
    9052:	53                   	push   %rbx
    9053:	48 83 ec 18          	sub    $0x18,%rsp
    9057:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    905b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    905f:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9063:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9067:	48 89 d6             	mov    %rdx,%rsi
    906a:	48 89 c7             	mov    %rax,%rdi
    906d:	e8 34 f1 ff ff       	call   81a6 <EvalBor>
    9072:	48 89 d1             	mov    %rdx,%rcx
    9075:	48 89 ca             	mov    %rcx,%rdx
    9078:	48 89 c6             	mov    %rax,%rsi
    907b:	48 89 d7             	mov    %rdx,%rdi
    907e:	48 89 c1             	mov    %rax,%rcx
    9081:	48 89 d3             	mov    %rdx,%rbx
    9084:	89 f0                	mov    %esi,%eax
    9086:	48 89 da             	mov    %rbx,%rdx
    9089:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    908d:	c9                   	leave
    908e:	c3                   	ret

000000000000908f <EvalBxorEq>:
    908f:	55                   	push   %rbp
    9090:	48 89 e5             	mov    %rsp,%rbp
    9093:	53                   	push   %rbx
    9094:	48 83 ec 18          	sub    $0x18,%rsp
    9098:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    909c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    90a0:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    90a4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    90a8:	48 89 d6             	mov    %rdx,%rsi
    90ab:	48 89 c7             	mov    %rax,%rdi
    90ae:	e8 e2 f1 ff ff       	call   8295 <EvalBxor>
    90b3:	48 89 d1             	mov    %rdx,%rcx
    90b6:	48 89 ca             	mov    %rcx,%rdx
    90b9:	48 89 c6             	mov    %rax,%rsi
    90bc:	48 89 d7             	mov    %rdx,%rdi
    90bf:	48 89 c1             	mov    %rax,%rcx
    90c2:	48 89 d3             	mov    %rdx,%rbx
    90c5:	89 f0                	mov    %esi,%eax
    90c7:	48 89 da             	mov    %rbx,%rdx
    90ca:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    90ce:	c9                   	leave
    90cf:	c3                   	ret

00000000000090d0 <EvalLshEq>:
    90d0:	55                   	push   %rbp
    90d1:	48 89 e5             	mov    %rsp,%rbp
    90d4:	53                   	push   %rbx
    90d5:	48 83 ec 18          	sub    $0x18,%rsp
    90d9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    90dd:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    90e1:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    90e5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    90e9:	48 89 d6             	mov    %rdx,%rsi
    90ec:	48 89 c7             	mov    %rax,%rdi
    90ef:	e8 90 f2 ff ff       	call   8384 <EvalLsh>
    90f4:	48 89 d1             	mov    %rdx,%rcx
    90f7:	48 89 ca             	mov    %rcx,%rdx
    90fa:	48 89 c6             	mov    %rax,%rsi
    90fd:	48 89 d7             	mov    %rdx,%rdi
    9100:	48 89 c1             	mov    %rax,%rcx
    9103:	48 89 d3             	mov    %rdx,%rbx
    9106:	89 f0                	mov    %esi,%eax
    9108:	48 89 da             	mov    %rbx,%rdx
    910b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    910f:	c9                   	leave
    9110:	c3                   	ret

0000000000009111 <EvalRshEq>:
    9111:	55                   	push   %rbp
    9112:	48 89 e5             	mov    %rsp,%rbp
    9115:	53                   	push   %rbx
    9116:	48 83 ec 18          	sub    $0x18,%rsp
    911a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    911e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9122:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
    9126:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    912a:	48 89 d6             	mov    %rdx,%rsi
    912d:	48 89 c7             	mov    %rax,%rdi
    9130:	e8 49 f3 ff ff       	call   847e <EvalRsh>
    9135:	48 89 d1             	mov    %rdx,%rcx
    9138:	48 89 ca             	mov    %rcx,%rdx
    913b:	48 89 c6             	mov    %rax,%rsi
    913e:	48 89 d7             	mov    %rdx,%rdi
    9141:	48 89 c1             	mov    %rax,%rcx
    9144:	48 89 d3             	mov    %rdx,%rbx
    9147:	89 f0                	mov    %esi,%eax
    9149:	48 89 da             	mov    %rbx,%rdx
    914c:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9150:	c9                   	leave
    9151:	c3                   	ret

0000000000009152 <BinPromote>:
    9152:	f3 0f 1e fa          	endbr64
    9156:	55                   	push   %rbp
    9157:	48 89 e5             	mov    %rsp,%rbp
    915a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    915e:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
    9162:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9166:	8b 50 08             	mov    0x8(%rax),%edx
    9169:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    916d:	8b 40 08             	mov    0x8(%rax),%eax
    9170:	89 c1                	mov    %eax,%ecx
    9172:	89 d2                	mov    %edx,%edx
    9174:	48 89 d0             	mov    %rdx,%rax
    9177:	48 01 c0             	add    %rax,%rax
    917a:	48 01 d0             	add    %rdx,%rax
    917d:	48 01 c8             	add    %rcx,%rax
    9180:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
    9187:	00 
    9188:	48 8d 05 91 3f 00 00 	lea    0x3f91(%rip),%rax        # d120 <types.27>
    918f:	8b 04 02             	mov    (%rdx,%rax,1),%eax
    9192:	5d                   	pop    %rbp
    9193:	c3                   	ret

0000000000009194 <BinCast>:
    9194:	f3 0f 1e fa          	endbr64
    9198:	55                   	push   %rbp
    9199:	48 89 e5             	mov    %rsp,%rbp
    919c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    91a0:	89 75 f4             	mov    %esi,-0xc(%rbp)
    91a3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    91a7:	8b 55 f4             	mov    -0xc(%rbp),%edx
    91aa:	89 50 08             	mov    %edx,0x8(%rax)
    91ad:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    91b1:	8b 40 08             	mov    0x8(%rax),%eax
    91b4:	8b 55 f4             	mov    -0xc(%rbp),%edx
    91b7:	89 c1                	mov    %eax,%ecx
    91b9:	48 89 c8             	mov    %rcx,%rax
    91bc:	48 01 c0             	add    %rax,%rax
    91bf:	48 01 c8             	add    %rcx,%rax
    91c2:	48 01 d0             	add    %rdx,%rax
    91c5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    91cc:	00 
    91cd:	48 8d 05 4c 4d 00 00 	lea    0x4d4c(%rip),%rax        # df20 <types.26>
    91d4:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    91d8:	90                   	nop
    91d9:	ff e0                	jmp    *%rax
    91db:	f3 0f 1e fa          	endbr64
    91df:	eb 5f                	jmp    9240 <BinCast+0xac>
    91e1:	f3 0f 1e fa          	endbr64
    91e5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    91e9:	48 8b 40 10          	mov    0x10(%rax),%rax
    91ed:	66 0f ef c0          	pxor   %xmm0,%xmm0
    91f1:	f2 48 0f 2a c0       	cvtsi2sd %rax,%xmm0
    91f6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    91fa:	f2 0f 11 40 10       	movsd  %xmm0,0x10(%rax)
    91ff:	eb 3f                	jmp    9240 <BinCast+0xac>
    9201:	f3 0f 1e fa          	endbr64
    9205:	eb 39                	jmp    9240 <BinCast+0xac>
    9207:	f3 0f 1e fa          	endbr64
    920b:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    920f:	f2 0f 10 40 10       	movsd  0x10(%rax),%xmm0
    9214:	f2 48 0f 2c d0       	cvttsd2si %xmm0,%rdx
    9219:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    921d:	48 89 50 10          	mov    %rdx,0x10(%rax)
    9221:	eb 1d                	jmp    9240 <BinCast+0xac>
    9223:	f3 0f 1e fa          	endbr64
    9227:	eb 17                	jmp    9240 <BinCast+0xac>
    9229:	f3 0f 1e fa          	endbr64
    922d:	eb 11                	jmp    9240 <BinCast+0xac>
    922f:	f3 0f 1e fa          	endbr64
    9233:	eb 0b                	jmp    9240 <BinCast+0xac>
    9235:	f3 0f 1e fa          	endbr64
    9239:	eb 05                	jmp    9240 <BinCast+0xac>
    923b:	f3 0f 1e fa          	endbr64
    923f:	90                   	nop
    9240:	5d                   	pop    %rbp
    9241:	c3                   	ret

0000000000009242 <BinFold>:
    9242:	f3 0f 1e fa          	endbr64
    9246:	55                   	push   %rbp
    9247:	48 89 e5             	mov    %rsp,%rbp
    924a:	53                   	push   %rbx
    924b:	48 83 ec 28          	sub    $0x28,%rsp
    924f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    9253:	89 75 e4             	mov    %esi,-0x1c(%rbp)
    9256:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
    925a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    925d:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    9264:	00 
    9265:	48 8d 05 14 4d 00 00 	lea    0x4d14(%rip),%rax        # df80 <ops.25>
    926c:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    9270:	90                   	nop
    9271:	ff e0                	jmp    *%rax
    9273:	f3 0f 1e fa          	endbr64
    9277:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    927b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    927f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9283:	48 8d 48 08          	lea    0x8(%rax),%rcx
    9287:	8b 45 e4             	mov    -0x1c(%rbp),%eax
    928a:	89 c6                	mov    %eax,%esi
    928c:	48 89 cf             	mov    %rcx,%rdi
    928f:	e8 cd e7 ff ff       	call   7a61 <EvalBinErr>
    9294:	48 89 d1             	mov    %rdx,%rcx
    9297:	48 89 ca             	mov    %rcx,%rdx
    929a:	e9 08 05 00 00       	jmp    97a7 <BinFold+0x565>
    929f:	f3 0f 1e fa          	endbr64
    92a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    92a7:	48 8d 50 08          	lea    0x8(%rax),%rdx
    92ab:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    92af:	48 83 c0 08          	add    $0x8,%rax
    92b3:	48 89 d6             	mov    %rdx,%rsi
    92b6:	48 89 c7             	mov    %rax,%rdi
    92b9:	e8 f1 e7 ff ff       	call   7aaf <EvalAdd>
    92be:	48 89 d1             	mov    %rdx,%rcx
    92c1:	48 89 ca             	mov    %rcx,%rdx
    92c4:	e9 de 04 00 00       	jmp    97a7 <BinFold+0x565>
    92c9:	f3 0f 1e fa          	endbr64
    92cd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    92d1:	48 8d 50 08          	lea    0x8(%rax),%rdx
    92d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    92d9:	48 83 c0 08          	add    $0x8,%rax
    92dd:	48 89 d6             	mov    %rdx,%rsi
    92e0:	48 89 c7             	mov    %rax,%rdi
    92e3:	e8 a4 e8 ff ff       	call   7b8c <EvalSub>
    92e8:	48 89 d1             	mov    %rdx,%rcx
    92eb:	48 89 ca             	mov    %rcx,%rdx
    92ee:	e9 b4 04 00 00       	jmp    97a7 <BinFold+0x565>
    92f3:	f3 0f 1e fa          	endbr64
    92f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    92fb:	48 8d 50 08          	lea    0x8(%rax),%rdx
    92ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9303:	48 83 c0 08          	add    $0x8,%rax
    9307:	48 89 d6             	mov    %rdx,%rsi
    930a:	48 89 c7             	mov    %rax,%rdi
    930d:	e8 57 e9 ff ff       	call   7c69 <EvalMul>
    9312:	48 89 d1             	mov    %rdx,%rcx
    9315:	48 89 ca             	mov    %rcx,%rdx
    9318:	e9 8a 04 00 00       	jmp    97a7 <BinFold+0x565>
    931d:	f3 0f 1e fa          	endbr64
    9321:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9325:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9329:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    932d:	48 83 c0 08          	add    $0x8,%rax
    9331:	48 89 d6             	mov    %rdx,%rsi
    9334:	48 89 c7             	mov    %rax,%rdi
    9337:	e8 0c ea ff ff       	call   7d48 <EvalDiv>
    933c:	48 89 d1             	mov    %rdx,%rcx
    933f:	48 89 ca             	mov    %rcx,%rdx
    9342:	e9 60 04 00 00       	jmp    97a7 <BinFold+0x565>
    9347:	f3 0f 1e fa          	endbr64
    934b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    934f:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9353:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9357:	48 83 c0 08          	add    $0x8,%rax
    935b:	48 89 d6             	mov    %rdx,%rsi
    935e:	48 89 c7             	mov    %rax,%rdi
    9361:	e8 c1 ea ff ff       	call   7e27 <EvalMod>
    9366:	48 89 d1             	mov    %rdx,%rcx
    9369:	48 89 ca             	mov    %rcx,%rdx
    936c:	e9 36 04 00 00       	jmp    97a7 <BinFold+0x565>
    9371:	f3 0f 1e fa          	endbr64
    9375:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9379:	48 8d 50 08          	lea    0x8(%rax),%rdx
    937d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9381:	48 83 c0 08          	add    $0x8,%rax
    9385:	48 89 d6             	mov    %rdx,%rsi
    9388:	48 89 c7             	mov    %rax,%rdi
    938b:	e8 9a eb ff ff       	call   7f2a <EvalPow>
    9390:	48 89 d1             	mov    %rdx,%rcx
    9393:	48 89 ca             	mov    %rcx,%rdx
    9396:	e9 0c 04 00 00       	jmp    97a7 <BinFold+0x565>
    939b:	f3 0f 1e fa          	endbr64
    939f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    93a3:	48 8d 50 08          	lea    0x8(%rax),%rdx
    93a7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    93ab:	48 83 c0 08          	add    $0x8,%rax
    93af:	48 89 d6             	mov    %rdx,%rsi
    93b2:	48 89 c7             	mov    %rax,%rdi
    93b5:	e8 fd ec ff ff       	call   80b7 <EvalBand>
    93ba:	48 89 d1             	mov    %rdx,%rcx
    93bd:	48 89 ca             	mov    %rcx,%rdx
    93c0:	e9 e2 03 00 00       	jmp    97a7 <BinFold+0x565>
    93c5:	f3 0f 1e fa          	endbr64
    93c9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    93cd:	48 8d 50 08          	lea    0x8(%rax),%rdx
    93d1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    93d5:	48 83 c0 08          	add    $0x8,%rax
    93d9:	48 89 d6             	mov    %rdx,%rsi
    93dc:	48 89 c7             	mov    %rax,%rdi
    93df:	e8 c2 ed ff ff       	call   81a6 <EvalBor>
    93e4:	48 89 d1             	mov    %rdx,%rcx
    93e7:	48 89 ca             	mov    %rcx,%rdx
    93ea:	e9 b8 03 00 00       	jmp    97a7 <BinFold+0x565>
    93ef:	f3 0f 1e fa          	endbr64
    93f3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    93f7:	48 8d 50 08          	lea    0x8(%rax),%rdx
    93fb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    93ff:	48 83 c0 08          	add    $0x8,%rax
    9403:	48 89 d6             	mov    %rdx,%rsi
    9406:	48 89 c7             	mov    %rax,%rdi
    9409:	e8 87 ee ff ff       	call   8295 <EvalBxor>
    940e:	48 89 d1             	mov    %rdx,%rcx
    9411:	48 89 ca             	mov    %rcx,%rdx
    9414:	e9 8e 03 00 00       	jmp    97a7 <BinFold+0x565>
    9419:	f3 0f 1e fa          	endbr64
    941d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9421:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9425:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9429:	48 83 c0 08          	add    $0x8,%rax
    942d:	48 89 d6             	mov    %rdx,%rsi
    9430:	48 89 c7             	mov    %rax,%rdi
    9433:	e8 4c ef ff ff       	call   8384 <EvalLsh>
    9438:	48 89 d1             	mov    %rdx,%rcx
    943b:	48 89 ca             	mov    %rcx,%rdx
    943e:	e9 64 03 00 00       	jmp    97a7 <BinFold+0x565>
    9443:	f3 0f 1e fa          	endbr64
    9447:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    944b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    944f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9453:	48 83 c0 08          	add    $0x8,%rax
    9457:	48 89 d6             	mov    %rdx,%rsi
    945a:	48 89 c7             	mov    %rax,%rdi
    945d:	e8 1c f0 ff ff       	call   847e <EvalRsh>
    9462:	48 89 d1             	mov    %rdx,%rcx
    9465:	48 89 ca             	mov    %rcx,%rdx
    9468:	e9 3a 03 00 00       	jmp    97a7 <BinFold+0x565>
    946d:	f3 0f 1e fa          	endbr64
    9471:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9475:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9479:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    947d:	48 83 c0 08          	add    $0x8,%rax
    9481:	48 89 d6             	mov    %rdx,%rsi
    9484:	48 89 c7             	mov    %rax,%rdi
    9487:	e8 ec f0 ff ff       	call   8578 <EvalEqEq>
    948c:	48 89 d1             	mov    %rdx,%rcx
    948f:	48 89 ca             	mov    %rcx,%rdx
    9492:	e9 10 03 00 00       	jmp    97a7 <BinFold+0x565>
    9497:	f3 0f 1e fa          	endbr64
    949b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    949f:	48 8d 50 08          	lea    0x8(%rax),%rdx
    94a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    94a7:	48 83 c0 08          	add    $0x8,%rax
    94ab:	48 89 d6             	mov    %rdx,%rsi
    94ae:	48 89 c7             	mov    %rax,%rdi
    94b1:	e8 bd f1 ff ff       	call   8673 <EvalNeq>
    94b6:	48 89 d1             	mov    %rdx,%rcx
    94b9:	48 89 ca             	mov    %rcx,%rdx
    94bc:	e9 e6 02 00 00       	jmp    97a7 <BinFold+0x565>
    94c1:	f3 0f 1e fa          	endbr64
    94c5:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    94c9:	48 8d 50 08          	lea    0x8(%rax),%rdx
    94cd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    94d1:	48 83 c0 08          	add    $0x8,%rax
    94d5:	48 89 d6             	mov    %rdx,%rsi
    94d8:	48 89 c7             	mov    %rax,%rdi
    94db:	e8 8e f2 ff ff       	call   876e <EvalLt>
    94e0:	48 89 d1             	mov    %rdx,%rcx
    94e3:	48 89 ca             	mov    %rcx,%rdx
    94e6:	e9 bc 02 00 00       	jmp    97a7 <BinFold+0x565>
    94eb:	f3 0f 1e fa          	endbr64
    94ef:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    94f3:	48 8d 50 08          	lea    0x8(%rax),%rdx
    94f7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    94fb:	48 83 c0 08          	add    $0x8,%rax
    94ff:	48 89 d6             	mov    %rdx,%rsi
    9502:	48 89 c7             	mov    %rax,%rdi
    9505:	e8 5e f3 ff ff       	call   8868 <EvalLe>
    950a:	48 89 d1             	mov    %rdx,%rcx
    950d:	48 89 ca             	mov    %rcx,%rdx
    9510:	e9 92 02 00 00       	jmp    97a7 <BinFold+0x565>
    9515:	f3 0f 1e fa          	endbr64
    9519:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    951d:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9521:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9525:	48 83 c0 08          	add    $0x8,%rax
    9529:	48 89 d6             	mov    %rdx,%rsi
    952c:	48 89 c7             	mov    %rax,%rdi
    952f:	e8 2e f4 ff ff       	call   8962 <EvalGt>
    9534:	48 89 d1             	mov    %rdx,%rcx
    9537:	48 89 ca             	mov    %rcx,%rdx
    953a:	e9 68 02 00 00       	jmp    97a7 <BinFold+0x565>
    953f:	f3 0f 1e fa          	endbr64
    9543:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9547:	48 8d 50 08          	lea    0x8(%rax),%rdx
    954b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    954f:	48 83 c0 08          	add    $0x8,%rax
    9553:	48 89 d6             	mov    %rdx,%rsi
    9556:	48 89 c7             	mov    %rax,%rdi
    9559:	e8 fe f4 ff ff       	call   8a5c <EvalGe>
    955e:	48 89 d1             	mov    %rdx,%rcx
    9561:	48 89 ca             	mov    %rcx,%rdx
    9564:	e9 3e 02 00 00       	jmp    97a7 <BinFold+0x565>
    9569:	f3 0f 1e fa          	endbr64
    956d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9571:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9575:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9579:	48 83 c0 08          	add    $0x8,%rax
    957d:	48 89 d6             	mov    %rdx,%rsi
    9580:	48 89 c7             	mov    %rax,%rdi
    9583:	e8 ce f5 ff ff       	call   8b56 <EvalAnd>
    9588:	48 89 d1             	mov    %rdx,%rcx
    958b:	48 89 ca             	mov    %rcx,%rdx
    958e:	e9 14 02 00 00       	jmp    97a7 <BinFold+0x565>
    9593:	f3 0f 1e fa          	endbr64
    9597:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    959b:	48 8d 50 08          	lea    0x8(%rax),%rdx
    959f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    95a3:	48 83 c0 08          	add    $0x8,%rax
    95a7:	48 89 d6             	mov    %rdx,%rsi
    95aa:	48 89 c7             	mov    %rax,%rdi
    95ad:	e8 e1 f6 ff ff       	call   8c93 <EvalOr>
    95b2:	48 89 d1             	mov    %rdx,%rcx
    95b5:	48 89 ca             	mov    %rcx,%rdx
    95b8:	e9 ea 01 00 00       	jmp    97a7 <BinFold+0x565>
    95bd:	f3 0f 1e fa          	endbr64
    95c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    95c5:	48 8d 50 08          	lea    0x8(%rax),%rdx
    95c9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    95cd:	48 83 c0 08          	add    $0x8,%rax
    95d1:	48 89 d6             	mov    %rdx,%rsi
    95d4:	48 89 c7             	mov    %rax,%rdi
    95d7:	e8 f4 f7 ff ff       	call   8dd0 <EvalMov>
    95dc:	48 89 d1             	mov    %rdx,%rcx
    95df:	48 89 ca             	mov    %rcx,%rdx
    95e2:	e9 c0 01 00 00       	jmp    97a7 <BinFold+0x565>
    95e7:	f3 0f 1e fa          	endbr64
    95eb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    95ef:	48 8d 50 08          	lea    0x8(%rax),%rdx
    95f3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    95f7:	48 83 c0 08          	add    $0x8,%rax
    95fb:	48 89 d6             	mov    %rdx,%rsi
    95fe:	48 89 c7             	mov    %rax,%rdi
    9601:	e8 81 f8 ff ff       	call   8e87 <EvalAddEq>
    9606:	48 89 d1             	mov    %rdx,%rcx
    9609:	48 89 ca             	mov    %rcx,%rdx
    960c:	e9 96 01 00 00       	jmp    97a7 <BinFold+0x565>
    9611:	f3 0f 1e fa          	endbr64
    9615:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9619:	48 8d 50 08          	lea    0x8(%rax),%rdx
    961d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9621:	48 83 c0 08          	add    $0x8,%rax
    9625:	48 89 d6             	mov    %rdx,%rsi
    9628:	48 89 c7             	mov    %rax,%rdi
    962b:	e8 98 f8 ff ff       	call   8ec8 <EvalSubEq>
    9630:	48 89 d1             	mov    %rdx,%rcx
    9633:	48 89 ca             	mov    %rcx,%rdx
    9636:	e9 6c 01 00 00       	jmp    97a7 <BinFold+0x565>
    963b:	f3 0f 1e fa          	endbr64
    963f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9643:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9647:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    964b:	48 83 c0 08          	add    $0x8,%rax
    964f:	48 89 d6             	mov    %rdx,%rsi
    9652:	48 89 c7             	mov    %rax,%rdi
    9655:	e8 af f8 ff ff       	call   8f09 <EvalMulEq>
    965a:	48 89 d1             	mov    %rdx,%rcx
    965d:	48 89 ca             	mov    %rcx,%rdx
    9660:	e9 42 01 00 00       	jmp    97a7 <BinFold+0x565>
    9665:	f3 0f 1e fa          	endbr64
    9669:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    966d:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9671:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9675:	48 83 c0 08          	add    $0x8,%rax
    9679:	48 89 d6             	mov    %rdx,%rsi
    967c:	48 89 c7             	mov    %rax,%rdi
    967f:	e8 c6 f8 ff ff       	call   8f4a <EvalDivEq>
    9684:	48 89 d1             	mov    %rdx,%rcx
    9687:	48 89 ca             	mov    %rcx,%rdx
    968a:	e9 18 01 00 00       	jmp    97a7 <BinFold+0x565>
    968f:	f3 0f 1e fa          	endbr64
    9693:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9697:	48 8d 50 08          	lea    0x8(%rax),%rdx
    969b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    969f:	48 83 c0 08          	add    $0x8,%rax
    96a3:	48 89 d6             	mov    %rdx,%rsi
    96a6:	48 89 c7             	mov    %rax,%rdi
    96a9:	e8 dd f8 ff ff       	call   8f8b <EvalModEq>
    96ae:	48 89 d1             	mov    %rdx,%rcx
    96b1:	48 89 ca             	mov    %rcx,%rdx
    96b4:	e9 ee 00 00 00       	jmp    97a7 <BinFold+0x565>
    96b9:	f3 0f 1e fa          	endbr64
    96bd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    96c1:	48 8d 50 08          	lea    0x8(%rax),%rdx
    96c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    96c9:	48 83 c0 08          	add    $0x8,%rax
    96cd:	48 89 d6             	mov    %rdx,%rsi
    96d0:	48 89 c7             	mov    %rax,%rdi
    96d3:	e8 f4 f8 ff ff       	call   8fcc <EvalPowEq>
    96d8:	48 89 d1             	mov    %rdx,%rcx
    96db:	48 89 ca             	mov    %rcx,%rdx
    96de:	e9 c4 00 00 00       	jmp    97a7 <BinFold+0x565>
    96e3:	f3 0f 1e fa          	endbr64
    96e7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    96eb:	48 8d 50 08          	lea    0x8(%rax),%rdx
    96ef:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    96f3:	48 83 c0 08          	add    $0x8,%rax
    96f7:	48 89 d6             	mov    %rdx,%rsi
    96fa:	48 89 c7             	mov    %rax,%rdi
    96fd:	e8 0b f9 ff ff       	call   900d <EvalBandEq>
    9702:	48 89 d1             	mov    %rdx,%rcx
    9705:	48 89 ca             	mov    %rcx,%rdx
    9708:	e9 9a 00 00 00       	jmp    97a7 <BinFold+0x565>
    970d:	f3 0f 1e fa          	endbr64
    9711:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9715:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9719:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    971d:	48 83 c0 08          	add    $0x8,%rax
    9721:	48 89 d6             	mov    %rdx,%rsi
    9724:	48 89 c7             	mov    %rax,%rdi
    9727:	e8 22 f9 ff ff       	call   904e <EvalBorEq>
    972c:	48 89 d1             	mov    %rdx,%rcx
    972f:	48 89 ca             	mov    %rcx,%rdx
    9732:	eb 73                	jmp    97a7 <BinFold+0x565>
    9734:	f3 0f 1e fa          	endbr64
    9738:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    973c:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9740:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9744:	48 83 c0 08          	add    $0x8,%rax
    9748:	48 89 d6             	mov    %rdx,%rsi
    974b:	48 89 c7             	mov    %rax,%rdi
    974e:	e8 3c f9 ff ff       	call   908f <EvalBxorEq>
    9753:	48 89 d1             	mov    %rdx,%rcx
    9756:	48 89 ca             	mov    %rcx,%rdx
    9759:	eb 4c                	jmp    97a7 <BinFold+0x565>
    975b:	f3 0f 1e fa          	endbr64
    975f:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9763:	48 8d 50 08          	lea    0x8(%rax),%rdx
    9767:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    976b:	48 83 c0 08          	add    $0x8,%rax
    976f:	48 89 d6             	mov    %rdx,%rsi
    9772:	48 89 c7             	mov    %rax,%rdi
    9775:	e8 56 f9 ff ff       	call   90d0 <EvalLshEq>
    977a:	48 89 d1             	mov    %rdx,%rcx
    977d:	48 89 ca             	mov    %rcx,%rdx
    9780:	eb 25                	jmp    97a7 <BinFold+0x565>
    9782:	f3 0f 1e fa          	endbr64
    9786:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    978a:	48 8d 50 08          	lea    0x8(%rax),%rdx
    978e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9792:	48 83 c0 08          	add    $0x8,%rax
    9796:	48 89 d6             	mov    %rdx,%rsi
    9799:	48 89 c7             	mov    %rax,%rdi
    979c:	e8 70 f9 ff ff       	call   9111 <EvalRshEq>
    97a1:	48 89 d1             	mov    %rdx,%rcx
    97a4:	48 89 ca             	mov    %rcx,%rdx
    97a7:	48 89 c6             	mov    %rax,%rsi
    97aa:	48 89 d7             	mov    %rdx,%rdi
    97ad:	48 89 c1             	mov    %rax,%rcx
    97b0:	48 89 d3             	mov    %rdx,%rbx
    97b3:	89 f0                	mov    %esi,%eax
    97b5:	48 89 da             	mov    %rbx,%rdx
    97b8:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    97bc:	c9                   	leave
    97bd:	c3                   	ret

00000000000097be <BinConstConst>:
    97be:	f3 0f 1e fa          	endbr64
    97c2:	55                   	push   %rbp
    97c3:	48 89 e5             	mov    %rsp,%rbp
    97c6:	48 83 ec 40          	sub    $0x40,%rsp
    97ca:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    97ce:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    97d2:	89 55 cc             	mov    %edx,-0x34(%rbp)
    97d5:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    97d9:	66 0f ef c0          	pxor   %xmm0,%xmm0
    97dd:	0f 29 45 e0          	movaps %xmm0,-0x20(%rbp)
    97e1:	66 0f d6 45 f0       	movq   %xmm0,-0x10(%rbp)
    97e6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    97ea:	8b 40 08             	mov    0x8(%rax),%eax
    97ed:	89 45 e8             	mov    %eax,-0x18(%rbp)
    97f0:	48 8b 55 c0          	mov    -0x40(%rbp),%rdx
    97f4:	8b 4d cc             	mov    -0x34(%rbp),%ecx
    97f7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    97fb:	89 ce                	mov    %ecx,%esi
    97fd:	48 89 c7             	mov    %rax,%rdi
    9800:	e8 3d fa ff ff       	call   9242 <BinFold>
    9805:	89 c1                	mov    %eax,%ecx
    9807:	48 89 d0             	mov    %rdx,%rax
    980a:	89 4d e8             	mov    %ecx,-0x18(%rbp)
    980d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    9811:	48 8b 4d d8          	mov    -0x28(%rbp),%rcx
    9815:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9819:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
    981d:	48 89 01             	mov    %rax,(%rcx)
    9820:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    9824:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9828:	48 89 41 10          	mov    %rax,0x10(%rcx)
    982c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9830:	c9                   	leave
    9831:	c3                   	ret

0000000000009832 <BinConstRef>:
    9832:	f3 0f 1e fa          	endbr64
    9836:	55                   	push   %rbp
    9837:	48 89 e5             	mov    %rsp,%rbp
    983a:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    983e:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    9842:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9845:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    9849:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    984d:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9851:	0f 11 00             	movups %xmm0,(%rax)
    9854:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    9859:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    985d:	5d                   	pop    %rbp
    985e:	c3                   	ret

000000000000985f <BinConstCall>:
    985f:	f3 0f 1e fa          	endbr64
    9863:	55                   	push   %rbp
    9864:	48 89 e5             	mov    %rsp,%rbp
    9867:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    986b:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    986f:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9872:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    9876:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    987a:	66 0f ef c0          	pxor   %xmm0,%xmm0
    987e:	0f 11 00             	movups %xmm0,(%rax)
    9881:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    9886:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    988a:	5d                   	pop    %rbp
    988b:	c3                   	ret

000000000000988c <BinRefConst>:
    988c:	f3 0f 1e fa          	endbr64
    9890:	55                   	push   %rbp
    9891:	48 89 e5             	mov    %rsp,%rbp
    9894:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    9898:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    989c:	89 55 cc             	mov    %edx,-0x34(%rbp)
    989f:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    98a3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    98a7:	66 0f ef c0          	pxor   %xmm0,%xmm0
    98ab:	0f 11 00             	movups %xmm0,(%rax)
    98ae:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    98b3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    98b7:	5d                   	pop    %rbp
    98b8:	c3                   	ret

00000000000098b9 <BinRefRef>:
    98b9:	f3 0f 1e fa          	endbr64
    98bd:	55                   	push   %rbp
    98be:	48 89 e5             	mov    %rsp,%rbp
    98c1:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    98c5:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    98c9:	89 55 cc             	mov    %edx,-0x34(%rbp)
    98cc:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    98d0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    98d4:	66 0f ef c0          	pxor   %xmm0,%xmm0
    98d8:	0f 11 00             	movups %xmm0,(%rax)
    98db:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    98e0:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    98e4:	5d                   	pop    %rbp
    98e5:	c3                   	ret

00000000000098e6 <BinRefCall>:
    98e6:	f3 0f 1e fa          	endbr64
    98ea:	55                   	push   %rbp
    98eb:	48 89 e5             	mov    %rsp,%rbp
    98ee:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    98f2:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    98f6:	89 55 cc             	mov    %edx,-0x34(%rbp)
    98f9:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    98fd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9901:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9905:	0f 11 00             	movups %xmm0,(%rax)
    9908:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    990d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9911:	5d                   	pop    %rbp
    9912:	c3                   	ret

0000000000009913 <BinCallConst>:
    9913:	f3 0f 1e fa          	endbr64
    9917:	55                   	push   %rbp
    9918:	48 89 e5             	mov    %rsp,%rbp
    991b:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    991f:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    9923:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9926:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    992a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    992e:	66 0f ef c0          	pxor   %xmm0,%xmm0
    9932:	0f 11 00             	movups %xmm0,(%rax)
    9935:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    993a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    993e:	5d                   	pop    %rbp
    993f:	c3                   	ret

0000000000009940 <BinCallRef>:
    9940:	f3 0f 1e fa          	endbr64
    9944:	55                   	push   %rbp
    9945:	48 89 e5             	mov    %rsp,%rbp
    9948:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    994c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    9950:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9953:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    9957:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    995b:	66 0f ef c0          	pxor   %xmm0,%xmm0
    995f:	0f 11 00             	movups %xmm0,(%rax)
    9962:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    9967:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    996b:	5d                   	pop    %rbp
    996c:	c3                   	ret

000000000000996d <BinCallCall>:
    996d:	f3 0f 1e fa          	endbr64
    9971:	55                   	push   %rbp
    9972:	48 89 e5             	mov    %rsp,%rbp
    9975:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
    9979:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
    997d:	89 55 cc             	mov    %edx,-0x34(%rbp)
    9980:	48 89 4d c0          	mov    %rcx,-0x40(%rbp)
    9984:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9988:	66 0f ef c0          	pxor   %xmm0,%xmm0
    998c:	0f 11 00             	movups %xmm0,(%rax)
    998f:	66 0f d6 40 10       	movq   %xmm0,0x10(%rax)
    9994:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
    9998:	5d                   	pop    %rbp
    9999:	c3                   	ret

000000000000999a <CompileBin>:
    999a:	f3 0f 1e fa          	endbr64
    999e:	55                   	push   %rbp
    999f:	48 89 e5             	mov    %rsp,%rbp
    99a2:	48 83 ec 30          	sub    $0x30,%rsp
    99a6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
    99aa:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    99ae:	89 55 dc             	mov    %edx,-0x24(%rbp)
    99b1:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
    99b5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
    99bc:	00 00 
    99be:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    99c2:	31 c0                	xor    %eax,%eax
    99c4:	8b 45 dc             	mov    -0x24(%rbp),%eax
    99c7:	89 c7                	mov    %eax,%edi
    99c9:	e8 f6 d8 ff ff       	call   72c4 <TkToOp>
    99ce:	89 45 f0             	mov    %eax,-0x10(%rbp)
    99d1:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
    99d5:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    99d9:	48 89 d6             	mov    %rdx,%rsi
    99dc:	48 89 c7             	mov    %rax,%rdi
    99df:	e8 6e f7 ff ff       	call   9152 <BinPromote>
    99e4:	89 45 f4             	mov    %eax,-0xc(%rbp)
    99e7:	8b 55 f4             	mov    -0xc(%rbp),%edx
    99ea:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    99ee:	89 d6                	mov    %edx,%esi
    99f0:	48 89 c7             	mov    %rax,%rdi
    99f3:	e8 9c f7 ff ff       	call   9194 <BinCast>
    99f8:	8b 55 f4             	mov    -0xc(%rbp),%edx
    99fb:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    99ff:	89 d6                	mov    %edx,%esi
    9a01:	48 89 c7             	mov    %rax,%rdi
    9a04:	e8 8b f7 ff ff       	call   9194 <BinCast>
    9a09:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9a0d:	8b 10                	mov    (%rax),%edx
    9a0f:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
    9a13:	8b 00                	mov    (%rax),%eax
    9a15:	89 c1                	mov    %eax,%ecx
    9a17:	89 d2                	mov    %edx,%edx
    9a19:	48 89 d0             	mov    %rdx,%rax
    9a1c:	48 01 c0             	add    %rax,%rax
    9a1f:	48 01 d0             	add    %rdx,%rax
    9a22:	48 01 c8             	add    %rcx,%rax
    9a25:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
    9a2c:	00 
    9a2d:	48 8d 05 0c 49 00 00 	lea    0x490c(%rip),%rax        # e340 <irs.4>
    9a34:	48 8b 04 02          	mov    (%rdx,%rax,1),%rax
    9a38:	90                   	nop
    9a39:	ff e0                	jmp    *%rax
    9a3b:	f3 0f 1e fa          	endbr64
    9a3f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a43:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    9a47:	8b 55 f0             	mov    -0x10(%rbp),%edx
    9a4a:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9a4e:	48 89 c7             	mov    %rax,%rdi
    9a51:	e8 68 fd ff ff       	call   97be <BinConstConst>
    9a56:	e9 ef 00 00 00       	jmp    9b4a <CompileBin+0x1b0>
    9a5b:	f3 0f 1e fa          	endbr64
    9a5f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a63:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    9a67:	8b 55 f0             	mov    -0x10(%rbp),%edx
    9a6a:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9a6e:	48 89 c7             	mov    %rax,%rdi
    9a71:	e8 bc fd ff ff       	call   9832 <BinConstRef>
    9a76:	e9 cf 00 00 00       	jmp    9b4a <CompileBin+0x1b0>
    9a7b:	f3 0f 1e fa          	endbr64
    9a7f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9a83:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    9a87:	8b 55 f0             	mov    -0x10(%rbp),%edx
    9a8a:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9a8e:	48 89 c7             	mov    %rax,%rdi
    9a91:	e8 c9 fd ff ff       	call   985f <BinConstCall>
    9a96:	e9 af 00 00 00       	jmp    9b4a <CompileBin+0x1b0>
    9a9b:	f3 0f 1e fa          	endbr64
    9a9f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9aa3:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    9aa7:	8b 55 f0             	mov    -0x10(%rbp),%edx
    9aaa:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9aae:	48 89 c7             	mov    %rax,%rdi
    9ab1:	e8 d6 fd ff ff       	call   988c <BinRefConst>
    9ab6:	e9 8f 00 00 00       	jmp    9b4a <CompileBin+0x1b0>
    9abb:	f3 0f 1e fa          	endbr64
    9abf:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9ac3:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    9ac7:	8b 55 f0             	mov    -0x10(%rbp),%edx
    9aca:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9ace:	48 89 c7             	mov    %rax,%rdi
    9ad1:	e8 e3 fd ff ff       	call   98b9 <BinRefRef>
    9ad6:	eb 72                	jmp    9b4a <CompileBin+0x1b0>
    9ad8:	f3 0f 1e fa          	endbr64
    9adc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9ae0:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    9ae4:	8b 55 f0             	mov    -0x10(%rbp),%edx
    9ae7:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9aeb:	48 89 c7             	mov    %rax,%rdi
    9aee:	e8 f3 fd ff ff       	call   98e6 <BinRefCall>
    9af3:	eb 55                	jmp    9b4a <CompileBin+0x1b0>
    9af5:	f3 0f 1e fa          	endbr64
    9af9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9afd:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    9b01:	8b 55 f0             	mov    -0x10(%rbp),%edx
    9b04:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9b08:	48 89 c7             	mov    %rax,%rdi
    9b0b:	e8 03 fe ff ff       	call   9913 <BinCallConst>
    9b10:	eb 38                	jmp    9b4a <CompileBin+0x1b0>
    9b12:	f3 0f 1e fa          	endbr64
    9b16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9b1a:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    9b1e:	8b 55 f0             	mov    -0x10(%rbp),%edx
    9b21:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9b25:	48 89 c7             	mov    %rax,%rdi
    9b28:	e8 13 fe ff ff       	call   9940 <BinCallRef>
    9b2d:	eb 1b                	jmp    9b4a <CompileBin+0x1b0>
    9b2f:	f3 0f 1e fa          	endbr64
    9b33:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9b37:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
    9b3b:	8b 55 f0             	mov    -0x10(%rbp),%edx
    9b3e:	48 8b 75 e0          	mov    -0x20(%rbp),%rsi
    9b42:	48 89 c7             	mov    %rax,%rdi
    9b45:	e8 23 fe ff ff       	call   996d <BinCallCall>
    9b4a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9b4e:	64 48 2b 04 25 28 00 	sub    %fs:0x28,%rax
    9b55:	00 00 
    9b57:	74 05                	je     9b5e <CompileBin+0x1c4>
    9b59:	e8 a2 a6 ff ff       	call   4200 <__stack_chk_fail@plt>
    9b5e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
    9b62:	c9                   	leave
    9b63:	c3                   	ret

0000000000009b64 <MemAlloc>:
    9b64:	f3 0f 1e fa          	endbr64
    9b68:	55                   	push   %rbp
    9b69:	48 89 e5             	mov    %rsp,%rbp
    9b6c:	53                   	push   %rbx
    9b6d:	48 83 ec 08          	sub    $0x8,%rsp
    9b71:	e8 73 a8 ff ff       	call   43e9 <GetSrc>
    9b76:	be 00 80 00 00       	mov    $0x8000,%esi
    9b7b:	48 89 c7             	mov    %rax,%rdi
    9b7e:	e8 80 a8 ff ff       	call   4403 <ArenaAlloc>
    9b83:	e8 6e a8 ff ff       	call   43f6 <GetStrings>
    9b88:	be 00 40 00 00       	mov    $0x4000,%esi
    9b8d:	48 89 c7             	mov    %rax,%rdi
    9b90:	e8 6e a8 ff ff       	call   4403 <ArenaAlloc>
    9b95:	e8 5c a8 ff ff       	call   43f6 <GetStrings>
    9b9a:	48 89 c3             	mov    %rax,%rbx
    9b9d:	e8 ab ad ff ff       	call   494d <GetInterns>
    9ba2:	ba 00 01 00 00       	mov    $0x100,%edx
    9ba7:	48 89 de             	mov    %rbx,%rsi
    9baa:	48 89 c7             	mov    %rax,%rdi
    9bad:	e8 a8 ad ff ff       	call   495a <TableAlloc>
    9bb2:	e8 a1 a9 ff ff       	call   4558 <GetConsts>
    9bb7:	ba 10 00 00 00       	mov    $0x10,%edx
    9bbc:	be 00 01 00 00       	mov    $0x100,%esi
    9bc1:	48 89 c7             	mov    %rax,%rdi
    9bc4:	e8 d0 a9 ff ff       	call   4599 <VecAlloc>
    9bc9:	e8 97 a9 ff ff       	call   4565 <GetLocals>
    9bce:	ba 10 00 00 00       	mov    $0x10,%edx
    9bd3:	be 00 01 00 00       	mov    $0x100,%esi
    9bd8:	48 89 c7             	mov    %rax,%rdi
    9bdb:	e8 b9 a9 ff ff       	call   4599 <VecAlloc>
    9be0:	e8 8d a9 ff ff       	call   4572 <GetGlobals>
    9be5:	ba 10 00 00 00       	mov    $0x10,%edx
    9bea:	be 00 01 00 00       	mov    $0x100,%esi
    9bef:	48 89 c7             	mov    %rax,%rdi
    9bf2:	e8 a2 a9 ff ff       	call   4599 <VecAlloc>
    9bf7:	e8 ce b0 ff ff       	call   4cca <GetEnv>
    9bfc:	be 00 01 00 00       	mov    $0x100,%esi
    9c01:	48 89 c7             	mov    %rax,%rdi
    9c04:	e8 ce b0 ff ff       	call   4cd7 <MapAlloc>
    9c09:	e8 71 a9 ff ff       	call   457f <GetCode>
    9c0e:	ba 04 00 00 00       	mov    $0x4,%edx
    9c13:	be 00 01 00 00       	mov    $0x100,%esi
    9c18:	48 89 c7             	mov    %rax,%rdi
    9c1b:	e8 79 a9 ff ff       	call   4599 <VecAlloc>
    9c20:	e8 67 a9 ff ff       	call   458c <GetFuncs>
    9c25:	ba 10 00 00 00       	mov    $0x10,%edx
    9c2a:	be 80 00 00 00       	mov    $0x80,%esi
    9c2f:	48 89 c7             	mov    %rax,%rdi
    9c32:	e8 62 a9 ff ff       	call   4599 <VecAlloc>
    9c37:	90                   	nop
    9c38:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9c3c:	c9                   	leave
    9c3d:	c3                   	ret

0000000000009c3e <MemDealloc>:
    9c3e:	f3 0f 1e fa          	endbr64
    9c42:	55                   	push   %rbp
    9c43:	48 89 e5             	mov    %rsp,%rbp
    9c46:	e8 41 a9 ff ff       	call   458c <GetFuncs>
    9c4b:	48 8b 00             	mov    (%rax),%rax
    9c4e:	48 89 c7             	mov    %rax,%rdi
    9c51:	e8 4a a5 ff ff       	call   41a0 <free@plt>
    9c56:	e8 24 a9 ff ff       	call   457f <GetCode>
    9c5b:	48 8b 00             	mov    (%rax),%rax
    9c5e:	48 89 c7             	mov    %rax,%rdi
    9c61:	e8 3a a5 ff ff       	call   41a0 <free@plt>
    9c66:	e8 5f b0 ff ff       	call   4cca <GetEnv>
    9c6b:	48 8b 00             	mov    (%rax),%rax
    9c6e:	48 89 c7             	mov    %rax,%rdi
    9c71:	e8 2a a5 ff ff       	call   41a0 <free@plt>
    9c76:	e8 f7 a8 ff ff       	call   4572 <GetGlobals>
    9c7b:	48 8b 00             	mov    (%rax),%rax
    9c7e:	48 89 c7             	mov    %rax,%rdi
    9c81:	e8 1a a5 ff ff       	call   41a0 <free@plt>
    9c86:	e8 da a8 ff ff       	call   4565 <GetLocals>
    9c8b:	48 8b 00             	mov    (%rax),%rax
    9c8e:	48 89 c7             	mov    %rax,%rdi
    9c91:	e8 0a a5 ff ff       	call   41a0 <free@plt>
    9c96:	e8 bd a8 ff ff       	call   4558 <GetConsts>
    9c9b:	48 8b 00             	mov    (%rax),%rax
    9c9e:	48 89 c7             	mov    %rax,%rdi
    9ca1:	e8 fa a4 ff ff       	call   41a0 <free@plt>
    9ca6:	e8 a2 ac ff ff       	call   494d <GetInterns>
    9cab:	48 8b 00             	mov    (%rax),%rax
    9cae:	48 89 c7             	mov    %rax,%rdi
    9cb1:	e8 ea a4 ff ff       	call   41a0 <free@plt>
    9cb6:	e8 3b a7 ff ff       	call   43f6 <GetStrings>
    9cbb:	48 8b 00             	mov    (%rax),%rax
    9cbe:	48 89 c7             	mov    %rax,%rdi
    9cc1:	e8 da a4 ff ff       	call   41a0 <free@plt>
    9cc6:	e8 1e a7 ff ff       	call   43e9 <GetSrc>
    9ccb:	48 8b 00             	mov    (%rax),%rax
    9cce:	48 89 c7             	mov    %rax,%rdi
    9cd1:	e8 ca a4 ff ff       	call   41a0 <free@plt>
    9cd6:	90                   	nop
    9cd7:	5d                   	pop    %rbp
    9cd8:	c3                   	ret

0000000000009cd9 <OnSig>:
    9cd9:	f3 0f 1e fa          	endbr64
    9cdd:	55                   	push   %rbp
    9cde:	48 89 e5             	mov    %rsp,%rbp
    9ce1:	48 83 ec 10          	sub    $0x10,%rsp
    9ce5:	89 7d fc             	mov    %edi,-0x4(%rbp)
    9ce8:	e8 0b b2 ff ff       	call   4ef8 <GetJmp>
    9ced:	be 00 00 00 00       	mov    $0x0,%esi
    9cf2:	48 89 c7             	mov    %rax,%rdi
    9cf5:	e8 d6 a5 ff ff       	call   42d0 <longjmp@plt>

0000000000009cfa <Init>:
    9cfa:	55                   	push   %rbp
    9cfb:	48 89 e5             	mov    %rsp,%rbp
    9cfe:	53                   	push   %rbx
    9cff:	48 83 ec 08          	sub    $0x8,%rsp
    9d03:	e8 5c fe ff ff       	call   9b64 <MemAlloc>
    9d08:	e8 40 ac ff ff       	call   494d <GetInterns>
    9d0d:	48 89 c3             	mov    %rax,%rbx
    9d10:	e8 d4 a6 ff ff       	call   43e9 <GetSrc>
    9d15:	48 89 de             	mov    %rbx,%rsi
    9d18:	48 89 c7             	mov    %rax,%rdi
    9d1b:	e8 ab b3 ff ff       	call   50cb <LexerInit>
    9d20:	e8 08 c8 ff ff       	call   652d <ParserInit>
    9d25:	e8 75 d5 ff ff       	call   729f <CompilerInit>
    9d2a:	48 8d 05 a8 ff ff ff 	lea    -0x58(%rip),%rax        # 9cd9 <OnSig>
    9d31:	48 89 c6             	mov    %rax,%rsi
    9d34:	bf 02 00 00 00       	mov    $0x2,%edi
    9d39:	e8 52 a5 ff ff       	call   4290 <__sysv_signal@plt>
    9d3e:	48 8d 05 94 ff ff ff 	lea    -0x6c(%rip),%rax        # 9cd9 <OnSig>
    9d45:	48 89 c6             	mov    %rax,%rsi
    9d48:	bf 14 00 00 00       	mov    $0x14,%edi
    9d4d:	e8 3e a5 ff ff       	call   4290 <__sysv_signal@plt>
    9d52:	48 8d 05 80 ff ff ff 	lea    -0x80(%rip),%rax        # 9cd9 <OnSig>
    9d59:	48 89 c6             	mov    %rax,%rsi
    9d5c:	bf 09 00 00 00       	mov    $0x9,%edi
    9d61:	e8 2a a5 ff ff       	call   4290 <__sysv_signal@plt>
    9d66:	90                   	nop
    9d67:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
    9d6b:	c9                   	leave
    9d6c:	c3                   	ret

0000000000009d6d <Run>:
    9d6d:	55                   	push   %rbp
    9d6e:	48 89 e5             	mov    %rsp,%rbp
    9d71:	e8 73 a6 ff ff       	call   43e9 <GetSrc>
    9d76:	48 8b 00             	mov    (%rax),%rax
    9d79:	48 89 c7             	mov    %rax,%rdi
    9d7c:	e8 a5 b3 ff ff       	call   5126 <LexReinit>
    9d81:	e8 f9 d3 ff ff       	call   717f <Parse>
    9d86:	90                   	nop
    9d87:	5d                   	pop    %rbp
    9d88:	c3                   	ret

0000000000009d89 <Repl>:
    9d89:	55                   	push   %rbp
    9d8a:	48 89 e5             	mov    %rsp,%rbp
    9d8d:	48 83 ec 10          	sub    $0x10,%rsp
    9d91:	e8 64 ff ff ff       	call   9cfa <Init>
    9d96:	e8 4e a6 ff ff       	call   43e9 <GetSrc>
    9d9b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
    9d9f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9da3:	48 8b 00             	mov    (%rax),%rax
    9da6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    9daa:	48 8d 05 0c 03 00 00 	lea    0x30c(%rip),%rax        # a0bd <_IO_stdin_used+0xbd>
    9db1:	48 89 c7             	mov    %rax,%rdi
    9db4:	b8 00 00 00 00       	mov    $0x0,%eax
    9db9:	e8 52 a4 ff ff       	call   4210 <printf@plt>
    9dbe:	48 8b 15 db 45 00 00 	mov    0x45db(%rip),%rdx        # e3a0 <stdin@GLIBC_2.2.5>
    9dc5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9dc9:	8b 40 0c             	mov    0xc(%rax),%eax
    9dcc:	89 c1                	mov    %eax,%ecx
    9dce:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    9dd2:	89 ce                	mov    %ecx,%esi
    9dd4:	48 89 c7             	mov    %rax,%rdi
    9dd7:	e8 64 a4 ff ff       	call   4240 <fgets@plt>
    9ddc:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
    9de0:	e8 88 ff ff ff       	call   9d6d <Run>
    9de5:	90                   	nop
    9de6:	eb c2                	jmp    9daa <Repl+0x21>

0000000000009de8 <Load>:
    9de8:	55                   	push   %rbp
    9de9:	48 89 e5             	mov    %rsp,%rbp
    9dec:	48 83 ec 10          	sub    $0x10,%rsp
    9df0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
    9df4:	e8 01 ff ff ff       	call   9cfa <Init>
    9df9:	e8 eb a5 ff ff       	call   43e9 <GetSrc>
    9dfe:	48 89 c2             	mov    %rax,%rdx
    9e01:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    9e05:	48 89 c6             	mov    %rax,%rsi
    9e08:	48 89 d7             	mov    %rdx,%rdi
    9e0b:	e8 bf b1 ff ff       	call   4fcf <IoRead>
    9e10:	e8 58 ff ff ff       	call   9d6d <Run>
    9e15:	b8 00 00 00 00       	mov    $0x0,%eax
    9e1a:	c9                   	leave
    9e1b:	c3                   	ret

0000000000009e1c <Deinit>:
    9e1c:	55                   	push   %rbp
    9e1d:	48 89 e5             	mov    %rsp,%rbp
    9e20:	48 83 ec 10          	sub    $0x10,%rsp
    9e24:	89 7d fc             	mov    %edi,-0x4(%rbp)
    9e27:	e8 12 fe ff ff       	call   9c3e <MemDealloc>
    9e2c:	8b 45 fc             	mov    -0x4(%rbp),%eax
    9e2f:	c9                   	leave
    9e30:	c3                   	ret

0000000000009e31 <main>:
    9e31:	f3 0f 1e fa          	endbr64
    9e35:	55                   	push   %rbp
    9e36:	48 89 e5             	mov    %rsp,%rbp
    9e39:	48 83 ec 20          	sub    $0x20,%rsp
    9e3d:	89 7d ec             	mov    %edi,-0x14(%rbp)
    9e40:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
    9e44:	e8 af b0 ff ff       	call   4ef8 <GetJmp>
    9e49:	48 89 c7             	mov    %rax,%rdi
    9e4c:	e8 ff a3 ff ff       	call   4250 <_setjmp@plt>
    9e51:	f3 0f 1e fa          	endbr64
    9e55:	89 45 fc             	mov    %eax,-0x4(%rbp)
    9e58:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
    9e5c:	74 0c                	je     9e6a <main+0x39>
    9e5e:	8b 45 fc             	mov    -0x4(%rbp),%eax
    9e61:	89 c7                	mov    %eax,%edi
    9e63:	e8 b4 ff ff ff       	call   9e1c <Deinit>
    9e68:	eb 20                	jmp    9e8a <main+0x59>
    9e6a:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
    9e6e:	75 07                	jne    9e77 <main+0x46>
    9e70:	e8 14 ff ff ff       	call   9d89 <Repl>
    9e75:	eb 13                	jmp    9e8a <main+0x59>
    9e77:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
    9e7b:	48 83 c0 08          	add    $0x8,%rax
    9e7f:	48 8b 00             	mov    (%rax),%rax
    9e82:	48 89 c7             	mov    %rax,%rdi
    9e85:	e8 5e ff ff ff       	call   9de8 <Load>
    9e8a:	c9                   	leave
    9e8b:	c3                   	ret

Disassembly of section .fini:

0000000000009e8c <_fini>:
    9e8c:	f3 0f 1e fa          	endbr64
    9e90:	48 83 ec 08          	sub    $0x8,%rsp
    9e94:	48 83 c4 08          	add    $0x8,%rsp
    9e98:	c3                   	ret
