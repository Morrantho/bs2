	.file	"bs.c"
	.intel_syntax noprefix
# GNU C2X (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -g -O0 -std=c2x -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/morrantho/Documents/code/c/bs2" "bs.c"
	.type	GetSrc, @function
GetSrc:
.LFB0:
	.file 1 "std/arena.h"
	.loc 1 15 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/arena.h:17: 	return &src;
	.loc 1 17 9
	lea	rax, src.1[rip]	# _1,
# std/arena.h:18: }
	.loc 1 18 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	GetSrc, .-GetSrc
	.type	GetStrings, @function
GetStrings:
.LFB1:
	.loc 1 21 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/arena.h:23: 	return &strings;
	.loc 1 23 9
	lea	rax, strings.50[rip]	# _1,
# std/arena.h:24: }
	.loc 1 24 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	GetStrings, .-GetStrings
	.globl	ArenaAlloc
	.type	ArenaAlloc, @function
ArenaAlloc:
.LFB2:
	.loc 1 27 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# arena, arena
	mov	DWORD PTR -12[rbp], esi	# max, max
# std/arena.h:28: 	max = ALIGN_UP( max, PAGE( 1 ) );
	.loc 1 28 8
	mov	eax, DWORD PTR -12[rbp]	# tmp85, max
	add	eax, 4095	# _1,
# std/arena.h:28: 	max = ALIGN_UP( max, PAGE( 1 ) );
	.loc 1 28 6
	and	eax, -4096	# tmp86,
	mov	DWORD PTR -12[rbp], eax	# max, tmp86
# std/arena.h:29: 	arena->base = malloc( max );
	.loc 1 29 16
	mov	eax, DWORD PTR -12[rbp]	# _2, max
	mov	rdi, rax	#, _2
	call	malloc@PLT	#
	mov	rdx, rax	# _3, tmp87
# std/arena.h:29: 	arena->base = malloc( max );
	.loc 1 29 14 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp88, arena
	mov	QWORD PTR [rax], rdx	# arena_8(D)->base, _3
# std/arena.h:30: 	arena->used = 1; /* ensures we can offset from 0 */
	.loc 1 30 14
	mov	rax, QWORD PTR -8[rbp]	# tmp89, arena
	mov	DWORD PTR 8[rax], 1	# arena_8(D)->used,
# std/arena.h:31: 	arena->max = max;
	.loc 1 31 13
	mov	rax, QWORD PTR -8[rbp]	# tmp90, arena
	mov	edx, DWORD PTR -12[rbp]	# tmp91, max
	mov	DWORD PTR 12[rax], edx	# arena_8(D)->max, tmp91
# std/arena.h:32: }
	.loc 1 32 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	ArenaAlloc, .-ArenaAlloc
	.globl	ArenaPush
	.type	ArenaPush, @function
ArenaPush:
.LFB3:
	.loc 1 35 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# arena, arena
	mov	DWORD PTR -28[rbp], esi	# size, size
	mov	DWORD PTR -32[rbp], edx	# p2align, p2align
# std/arena.h:36: 	U32 offset = ALIGN_UP( arena->used, p2align );
	.loc 1 36 15
	mov	rax, QWORD PTR -24[rbp]	# tmp97, arena
	mov	edx, DWORD PTR 8[rax]	# _1, arena_16(D)->used
	mov	eax, DWORD PTR -32[rbp]	# tmp98, p2align
	add	eax, edx	# _2, _1
	lea	edx, -1[rax]	# _3,
	mov	eax, DWORD PTR -32[rbp]	# tmp99, p2align
	neg	eax	# _4
# std/arena.h:36: 	U32 offset = ALIGN_UP( arena->used, p2align );
	.loc 1 36 6
	and	eax, edx	# tmp100, _3
	mov	DWORD PTR -4[rbp], eax	# offset, tmp100
# std/arena.h:37: 	if( offset + size > arena->max )
	.loc 1 37 13
	mov	edx, DWORD PTR -4[rbp]	# tmp101, offset
	mov	eax, DWORD PTR -28[rbp]	# tmp102, size
	add	edx, eax	# _5, tmp102
# std/arena.h:37: 	if( offset + size > arena->max )
	.loc 1 37 27
	mov	rax, QWORD PTR -24[rbp]	# tmp103, arena
	mov	eax, DWORD PTR 12[rax]	# _6, arena_16(D)->max
# std/arena.h:37: 	if( offset + size > arena->max )
	.loc 1 37 4
	cmp	eax, edx	# _6, _5
	jnb	.L7	#,
# std/arena.h:39: 		arena->max <<= 1;
	.loc 1 39 8
	mov	rax, QWORD PTR -24[rbp]	# tmp104, arena
	mov	eax, DWORD PTR 12[rax]	# _7, arena_16(D)->max
# std/arena.h:39: 		arena->max <<= 1;
	.loc 1 39 14
	lea	edx, [rax+rax]	# _8,
	mov	rax, QWORD PTR -24[rbp]	# tmp105, arena
	mov	DWORD PTR 12[rax], edx	# arena_16(D)->max, _8
# std/arena.h:40: 		arena->base = realloc( arena->base, arena->max ); /* owie */
	.loc 1 40 44
	mov	rax, QWORD PTR -24[rbp]	# tmp106, arena
	mov	eax, DWORD PTR 12[rax]	# _9, arena_16(D)->max
# std/arena.h:40: 		arena->base = realloc( arena->base, arena->max ); /* owie */
	.loc 1 40 17
	mov	edx, eax	# _10, _9
# std/arena.h:40: 		arena->base = realloc( arena->base, arena->max ); /* owie */
	.loc 1 40 31
	mov	rax, QWORD PTR -24[rbp]	# tmp107, arena
	mov	rax, QWORD PTR [rax]	# _11, arena_16(D)->base
# std/arena.h:40: 		arena->base = realloc( arena->base, arena->max ); /* owie */
	.loc 1 40 17
	mov	rsi, rdx	#, _10
	mov	rdi, rax	#, _11
	call	realloc@PLT	#
# std/arena.h:40: 		arena->base = realloc( arena->base, arena->max ); /* owie */
	.loc 1 40 15 discriminator 1
	mov	rdx, QWORD PTR -24[rbp]	# tmp108, arena
	mov	QWORD PTR [rdx], rax	# arena_16(D)->base, _12
.L7:
# std/arena.h:42: 	arena->used = offset + size;
	.loc 1 42 23
	mov	edx, DWORD PTR -4[rbp]	# tmp109, offset
	mov	eax, DWORD PTR -28[rbp]	# tmp110, size
	add	edx, eax	# _13, tmp110
# std/arena.h:42: 	arena->used = offset + size;
	.loc 1 42 14
	mov	rax, QWORD PTR -24[rbp]	# tmp111, arena
	mov	DWORD PTR 8[rax], edx	# arena_16(D)->used, _13
# std/arena.h:43: 	return offset;
	.loc 1 43 9
	mov	eax, DWORD PTR -4[rbp]	# _24, offset
# std/arena.h:44: }
	.loc 1 44 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	ArenaPush, .-ArenaPush
	.globl	ArenaPop
	.type	ArenaPop, @function
ArenaPop:
.LFB4:
	.loc 1 47 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi	# arena, arena
	mov	DWORD PTR -28[rbp], esi	# bytes, bytes
# std/arena.h:48: 	if( bytes > arena->used ){ return 0; }
	.loc 1 48 19
	mov	rax, QWORD PTR -24[rbp]	# tmp87, arena
	mov	eax, DWORD PTR 8[rax]	# _1, arena_7(D)->used
# std/arena.h:48: 	if( bytes > arena->used ){ return 0; }
	.loc 1 48 4
	cmp	eax, DWORD PTR -28[rbp]	# _1, bytes
	jnb	.L10	#,
# std/arena.h:48: 	if( bytes > arena->used ){ return 0; }
	.loc 1 48 36 discriminator 1
	mov	eax, 0	# _4,
# std/arena.h:48: 	if( bytes > arena->used ){ return 0; }
	.loc 1 48 36 is_stmt 0
	jmp	.L11	#
.L10:
# std/arena.h:49: 	U32 offset = arena->used;
	.loc 1 49 6 is_stmt 1
	mov	rax, QWORD PTR -24[rbp]	# tmp88, arena
	mov	eax, DWORD PTR 8[rax]	# tmp89, arena_7(D)->used
	mov	DWORD PTR -4[rbp], eax	# offset, tmp89
# std/arena.h:50: 	arena->used -= bytes;
	.loc 1 50 7
	mov	rax, QWORD PTR -24[rbp]	# tmp90, arena
	mov	eax, DWORD PTR 8[rax]	# _2, arena_7(D)->used
# std/arena.h:50: 	arena->used -= bytes;
	.loc 1 50 14
	sub	eax, DWORD PTR -28[rbp]	# _2, bytes
	mov	edx, eax	# _3, _2
	mov	rax, QWORD PTR -24[rbp]	# tmp91, arena
	mov	DWORD PTR 8[rax], edx	# arena_7(D)->used, _3
# std/arena.h:51: 	return offset;
	.loc 1 51 9
	mov	eax, DWORD PTR -4[rbp]	# _4, offset
.L11:
# std/arena.h:52: }
	.loc 1 52 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	ArenaPop, .-ArenaPop
	.globl	ArenaOff
	.type	ArenaOff, @function
ArenaOff:
.LFB5:
	.loc 1 55 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# arena, arena
	mov	DWORD PTR -12[rbp], esi	# offset, offset
# std/arena.h:56: 	return ( I8* )arena->base + offset;
	.loc 1 56 21
	mov	rax, QWORD PTR -8[rbp]	# tmp86, arena
	mov	rdx, QWORD PTR [rax]	# _1, arena_4(D)->base
# std/arena.h:56: 	return ( I8* )arena->base + offset;
	.loc 1 56 28
	mov	eax, DWORD PTR -12[rbp]	# _2, offset
	add	rax, rdx	# _6, _1
# std/arena.h:57: }
	.loc 1 57 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	ArenaOff, .-ArenaOff
	.globl	ArenaClear
	.type	ArenaClear, @function
ArenaClear:
.LFB6:
	.loc 1 60 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# arena, arena
# std/arena.h:61: 	arena->used = 0;
	.loc 1 61 14
	mov	rax, QWORD PTR -8[rbp]	# tmp82, arena
	mov	DWORD PTR 8[rax], 0	# arena_2(D)->used,
# std/arena.h:62: }
	.loc 1 62 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	ArenaClear, .-ArenaClear
	.type	GetConsts, @function
GetConsts:
.LFB7:
	.file 2 "std/vec.h"
	.loc 2 10 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/vec.h:12: 	return &consts;
	.loc 2 12 9
	lea	rax, consts.39[rip]	# _1,
# std/vec.h:13: }
	.loc 2 13 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE7:
	.size	GetConsts, .-GetConsts
	.type	GetLocals, @function
GetLocals:
.LFB8:
	.loc 2 16 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/vec.h:18: 	return &locals;
	.loc 2 18 9
	lea	rax, locals.38[rip]	# _1,
# std/vec.h:19: }
	.loc 2 19 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE8:
	.size	GetLocals, .-GetLocals
	.type	GetGlobals, @function
GetGlobals:
.LFB9:
	.loc 2 22 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/vec.h:24: 	return &globals;
	.loc 2 24 9
	lea	rax, globals.49[rip]	# _1,
# std/vec.h:25: }
	.loc 2 25 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE9:
	.size	GetGlobals, .-GetGlobals
	.type	GetCode, @function
GetCode:
.LFB10:
	.loc 2 28 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/vec.h:30: 	return &code;
	.loc 2 30 9
	lea	rax, code.37[rip]	# _1,
# std/vec.h:31: }
	.loc 2 31 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE10:
	.size	GetCode, .-GetCode
	.type	GetFuncs, @function
GetFuncs:
.LFB11:
	.loc 2 34 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/vec.h:36: 	return &funcs;
	.loc 2 36 9
	lea	rax, funcs.40[rip]	# _1,
# std/vec.h:37: }
	.loc 2 37 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE11:
	.size	GetFuncs, .-GetFuncs
	.globl	VecAlloc
	.type	VecAlloc, @function
VecAlloc:
.LFB12:
	.loc 2 40 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# vec, vec
	mov	DWORD PTR -12[rbp], esi	# max, max
	mov	DWORD PTR -16[rbp], edx	# szof, szof
# std/vec.h:41: 	vec->base = malloc( max * szof );
	.loc 2 41 26
	mov	eax, DWORD PTR -12[rbp]	# tmp85, max
	imul	eax, DWORD PTR -16[rbp]	# _1, szof
# std/vec.h:41: 	vec->base = malloc( max * szof );
	.loc 2 41 14
	mov	eax, eax	# _2, _1
	mov	rdi, rax	#, _2
	call	malloc@PLT	#
	mov	rdx, rax	# _3, tmp86
# std/vec.h:41: 	vec->base = malloc( max * szof );
	.loc 2 41 12 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp87, vec
	mov	QWORD PTR [rax], rdx	# vec_8(D)->base, _3
# std/vec.h:42: 	vec->len = 0;
	.loc 2 42 11
	mov	rax, QWORD PTR -8[rbp]	# tmp88, vec
	mov	DWORD PTR 8[rax], 0	# vec_8(D)->D.4073.len,
# std/vec.h:43: 	vec->max = max;
	.loc 2 43 11
	mov	rax, QWORD PTR -8[rbp]	# tmp89, vec
	mov	edx, DWORD PTR -12[rbp]	# tmp90, max
	mov	DWORD PTR 12[rax], edx	# vec_8(D)->max, tmp90
# std/vec.h:44: 	vec->szof = szof;
	.loc 2 44 12
	mov	rax, QWORD PTR -8[rbp]	# tmp91, vec
	mov	edx, DWORD PTR -16[rbp]	# tmp92, szof
	mov	DWORD PTR 16[rax], edx	# vec_8(D)->szof, tmp92
# std/vec.h:45: }
	.loc 2 45 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE12:
	.size	VecAlloc, .-VecAlloc
	.globl	VecCommit
	.type	VecCommit, @function
VecCommit:
.LFB13:
	.loc 2 48 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# vec, vec
# std/vec.h:49: 	if( vec->len > vec->max )
	.loc 2 49 9
	mov	rax, QWORD PTR -8[rbp]	# tmp100, vec
	mov	eax, DWORD PTR 8[rax]	# _1, vec_20(D)->D.4073.len
# std/vec.h:49: 	if( vec->len > vec->max )
	.loc 2 49 20
	mov	rdx, QWORD PTR -8[rbp]	# tmp101, vec
	mov	edx, DWORD PTR 12[rdx]	# _2, vec_20(D)->max
# std/vec.h:49: 	if( vec->len > vec->max )
	.loc 2 49 4
	cmp	edx, eax	# _2, _1
	jnb	.L27	#,
# std/vec.h:51: 		vec->max <<= 1;
	.loc 2 51 6
	mov	rax, QWORD PTR -8[rbp]	# tmp102, vec
	mov	eax, DWORD PTR 12[rax]	# _3, vec_20(D)->max
# std/vec.h:51: 		vec->max <<= 1;
	.loc 2 51 12
	lea	edx, [rax+rax]	# _4,
	mov	rax, QWORD PTR -8[rbp]	# tmp103, vec
	mov	DWORD PTR 12[rax], edx	# vec_20(D)->max, _4
# std/vec.h:52: 		vec->base = realloc( vec->base, vec->max * vec->szof );
	.loc 2 52 38
	mov	rax, QWORD PTR -8[rbp]	# tmp104, vec
	mov	edx, DWORD PTR 12[rax]	# _5, vec_20(D)->max
# std/vec.h:52: 		vec->base = realloc( vec->base, vec->max * vec->szof );
	.loc 2 52 49
	mov	rax, QWORD PTR -8[rbp]	# tmp105, vec
	mov	eax, DWORD PTR 16[rax]	# _6, vec_20(D)->szof
# std/vec.h:52: 		vec->base = realloc( vec->base, vec->max * vec->szof );
	.loc 2 52 44
	imul	eax, edx	# _7, _5
# std/vec.h:52: 		vec->base = realloc( vec->base, vec->max * vec->szof );
	.loc 2 52 15
	mov	edx, eax	# _8, _7
# std/vec.h:52: 		vec->base = realloc( vec->base, vec->max * vec->szof );
	.loc 2 52 27
	mov	rax, QWORD PTR -8[rbp]	# tmp106, vec
	mov	rax, QWORD PTR [rax]	# _9, vec_20(D)->base
# std/vec.h:52: 		vec->base = realloc( vec->base, vec->max * vec->szof );
	.loc 2 52 15
	mov	rsi, rdx	#, _8
	mov	rdi, rax	#, _9
	call	realloc@PLT	#
# std/vec.h:52: 		vec->base = realloc( vec->base, vec->max * vec->szof );
	.loc 2 52 13 discriminator 1
	mov	rdx, QWORD PTR -8[rbp]	# tmp107, vec
	mov	QWORD PTR [rdx], rax	# vec_20(D)->base, _10
.L27:
# std/vec.h:54: 	return ( I8* )vec->base + vec->len++ * vec->szof;
	.loc 2 54 19
	mov	rax, QWORD PTR -8[rbp]	# tmp108, vec
	mov	rsi, QWORD PTR [rax]	# _11, vec_20(D)->base
# std/vec.h:54: 	return ( I8* )vec->base + vec->len++ * vec->szof;
	.loc 2 54 31
	mov	rax, QWORD PTR -8[rbp]	# tmp109, vec
	mov	eax, DWORD PTR 8[rax]	# _12, vec_20(D)->D.4073.len
# std/vec.h:54: 	return ( I8* )vec->base + vec->len++ * vec->szof;
	.loc 2 54 36
	lea	ecx, 1[rax]	# _14,
	mov	rdx, QWORD PTR -8[rbp]	# tmp110, vec
	mov	DWORD PTR 8[rdx], ecx	# vec_20(D)->D.4073.len, _14
# std/vec.h:54: 	return ( I8* )vec->base + vec->len++ * vec->szof;
	.loc 2 54 44
	mov	rdx, QWORD PTR -8[rbp]	# tmp111, vec
	mov	edx, DWORD PTR 16[rdx]	# _15, vec_20(D)->szof
# std/vec.h:54: 	return ( I8* )vec->base + vec->len++ * vec->szof;
	.loc 2 54 39
	imul	eax, edx	# _16, _15
	mov	eax, eax	# _17, _16
# std/vec.h:54: 	return ( I8* )vec->base + vec->len++ * vec->szof;
	.loc 2 54 26
	add	rax, rsi	# _25, _11
# std/vec.h:55: }
	.loc 2 55 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE13:
	.size	VecCommit, .-VecCommit
	.globl	VecPush
	.type	VecPush, @function
VecPush:
.LFB14:
	.loc 2 58 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# vec, vec
	mov	QWORD PTR -32[rbp], rsi	# src, src
# std/vec.h:59: 	Void *dest = VecCommit( vec );
	.loc 2 59 15
	mov	rax, QWORD PTR -24[rbp]	# tmp87, vec
	mov	rdi, rax	#, tmp87
	call	VecCommit	#
	mov	QWORD PTR -8[rbp], rax	# dest, tmp88
# std/vec.h:60: 	memcpy( dest, src, vec->szof );
	.loc 2 60 24
	mov	rax, QWORD PTR -24[rbp]	# tmp89, vec
	mov	eax, DWORD PTR 16[rax]	# _1, vec_5(D)->szof
# std/vec.h:60: 	memcpy( dest, src, vec->szof );
	.loc 2 60 2
	mov	edx, eax	# _2, _1
	mov	rcx, QWORD PTR -32[rbp]	# tmp90, src
	mov	rax, QWORD PTR -8[rbp]	# tmp91, dest
	mov	rsi, rcx	#, tmp90
	mov	rdi, rax	#, tmp91
	call	memcpy@PLT	#
# std/vec.h:61: 	return vec->len - 1;
	.loc 2 61 12
	mov	rax, QWORD PTR -24[rbp]	# tmp92, vec
	mov	eax, DWORD PTR 8[rax]	# _3, vec_5(D)->D.4073.len
# std/vec.h:61: 	return vec->len - 1;
	.loc 2 61 18
	sub	eax, 1	# _10,
# std/vec.h:62: }
	.loc 2 62 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE14:
	.size	VecPush, .-VecPush
	.globl	VecPop
	.type	VecPop, @function
VecPop:
.LFB15:
	.loc 2 65 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# vec, vec
# std/vec.h:66: 	if( vec->len == 0 ){ return vec->base; }
	.loc 2 66 9
	mov	rax, QWORD PTR -8[rbp]	# tmp92, vec
	mov	eax, DWORD PTR 8[rax]	# _1, vec_12(D)->D.4073.len
# std/vec.h:66: 	if( vec->len == 0 ){ return vec->base; }
	.loc 2 66 4
	test	eax, eax	# _1
	jne	.L32	#,
# std/vec.h:66: 	if( vec->len == 0 ){ return vec->base; }
	.loc 2 66 33 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp93, vec
	mov	rax, QWORD PTR [rax]	# _9, vec_12(D)->base
# std/vec.h:66: 	if( vec->len == 0 ){ return vec->base; }
	.loc 2 66 33 is_stmt 0
	jmp	.L33	#
.L32:
# std/vec.h:67: 	return ( I8* )vec->base + --vec->len * vec->szof;
	.loc 2 67 19 is_stmt 1
	mov	rax, QWORD PTR -8[rbp]	# tmp94, vec
	mov	rcx, QWORD PTR [rax]	# _2, vec_12(D)->base
# std/vec.h:67: 	return ( I8* )vec->base + --vec->len * vec->szof;
	.loc 2 67 33
	mov	rax, QWORD PTR -8[rbp]	# tmp95, vec
	mov	eax, DWORD PTR 8[rax]	# _3, vec_12(D)->D.4073.len
# std/vec.h:67: 	return ( I8* )vec->base + --vec->len * vec->szof;
	.loc 2 67 28
	lea	edx, -1[rax]	# _4,
# std/vec.h:67: 	return ( I8* )vec->base + --vec->len * vec->szof;
	.loc 2 67 26
	mov	rax, QWORD PTR -8[rbp]	# tmp96, vec
	mov	DWORD PTR 8[rax], edx	# vec_12(D)->D.4073.len, _4
# std/vec.h:67: 	return ( I8* )vec->base + --vec->len * vec->szof;
	.loc 2 67 33
	mov	rax, QWORD PTR -8[rbp]	# tmp97, vec
	mov	edx, DWORD PTR 8[rax]	# _5, vec_12(D)->D.4073.len
# std/vec.h:67: 	return ( I8* )vec->base + --vec->len * vec->szof;
	.loc 2 67 44
	mov	rax, QWORD PTR -8[rbp]	# tmp98, vec
	mov	eax, DWORD PTR 16[rax]	# _6, vec_12(D)->szof
# std/vec.h:67: 	return ( I8* )vec->base + --vec->len * vec->szof;
	.loc 2 67 39
	imul	eax, edx	# _7, _5
	mov	eax, eax	# _8, _7
# std/vec.h:67: 	return ( I8* )vec->base + --vec->len * vec->szof;
	.loc 2 67 26
	add	rax, rcx	# _9, _2
.L33:
# std/vec.h:68: }
	.loc 2 68 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE15:
	.size	VecPop, .-VecPop
	.globl	VecSet
	.type	VecSet, @function
VecSet:
.LFB16:
	.loc 2 71 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# vec, vec
	mov	DWORD PTR -28[rbp], esi	# idx, idx
	mov	QWORD PTR -40[rbp], rdx	# src, src
# std/vec.h:72: 	if( idx >= vec->len ){ return; }
	.loc 2 72 16
	mov	rax, QWORD PTR -24[rbp]	# tmp89, vec
	mov	eax, DWORD PTR 8[rax]	# _1, vec_10(D)->D.4073.len
# std/vec.h:72: 	if( idx >= vec->len ){ return; }
	.loc 2 72 4
	cmp	DWORD PTR -28[rbp], eax	# idx, _1
	jnb	.L37	#,
# std/vec.h:73: 	Void *dest = ( I8* )vec->base + idx * vec->szof;
	.loc 2 73 25
	mov	rax, QWORD PTR -24[rbp]	# tmp90, vec
	mov	rdx, QWORD PTR [rax]	# _2, vec_10(D)->base
# std/vec.h:73: 	Void *dest = ( I8* )vec->base + idx * vec->szof;
	.loc 2 73 43
	mov	rax, QWORD PTR -24[rbp]	# tmp91, vec
	mov	eax, DWORD PTR 16[rax]	# _3, vec_10(D)->szof
# std/vec.h:73: 	Void *dest = ( I8* )vec->base + idx * vec->szof;
	.loc 2 73 38
	imul	eax, DWORD PTR -28[rbp]	# _4, idx
	mov	eax, eax	# _5, _4
# std/vec.h:73: 	Void *dest = ( I8* )vec->base + idx * vec->szof;
	.loc 2 73 8
	add	rax, rdx	# tmp92, _2
	mov	QWORD PTR -8[rbp], rax	# dest, tmp92
# std/vec.h:74: 	memcpy( dest, src, vec->szof );
	.loc 2 74 24
	mov	rax, QWORD PTR -24[rbp]	# tmp93, vec
	mov	eax, DWORD PTR 16[rax]	# _6, vec_10(D)->szof
# std/vec.h:74: 	memcpy( dest, src, vec->szof );
	.loc 2 74 2
	mov	edx, eax	# _7, _6
	mov	rcx, QWORD PTR -40[rbp]	# tmp94, src
	mov	rax, QWORD PTR -8[rbp]	# tmp95, dest
	mov	rsi, rcx	#, tmp94
	mov	rdi, rax	#, tmp95
	call	memcpy@PLT	#
	jmp	.L34	#
.L37:
# std/vec.h:72: 	if( idx >= vec->len ){ return; }
	.loc 2 72 25
	nop	
.L34:
# std/vec.h:75: }
	.loc 2 75 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE16:
	.size	VecSet, .-VecSet
	.globl	VecGet
	.type	VecGet, @function
VecGet:
.LFB17:
	.loc 2 78 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# vec, vec
	mov	DWORD PTR -12[rbp], esi	# idx, idx
# std/vec.h:79: 	if( idx >= vec->len ){ return vec->base; }
	.loc 2 79 16
	mov	rax, QWORD PTR -8[rbp]	# tmp89, vec
	mov	eax, DWORD PTR 8[rax]	# _1, vec_8(D)->D.4073.len
# std/vec.h:79: 	if( idx >= vec->len ){ return vec->base; }
	.loc 2 79 4
	cmp	DWORD PTR -12[rbp], eax	# idx, _1
	jb	.L39	#,
# std/vec.h:79: 	if( idx >= vec->len ){ return vec->base; }
	.loc 2 79 35 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp90, vec
	mov	rax, QWORD PTR [rax]	# _6, vec_8(D)->base
# std/vec.h:79: 	if( idx >= vec->len ){ return vec->base; }
	.loc 2 79 35 is_stmt 0
	jmp	.L40	#
.L39:
# std/vec.h:80: 	return ( I8* )vec->base + idx * vec->szof;
	.loc 2 80 19 is_stmt 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, vec
	mov	rdx, QWORD PTR [rax]	# _2, vec_8(D)->base
# std/vec.h:80: 	return ( I8* )vec->base + idx * vec->szof;
	.loc 2 80 37
	mov	rax, QWORD PTR -8[rbp]	# tmp92, vec
	mov	eax, DWORD PTR 16[rax]	# _3, vec_8(D)->szof
# std/vec.h:80: 	return ( I8* )vec->base + idx * vec->szof;
	.loc 2 80 32
	imul	eax, DWORD PTR -12[rbp]	# _4, idx
	mov	eax, eax	# _5, _4
# std/vec.h:80: 	return ( I8* )vec->base + idx * vec->szof;
	.loc 2 80 26
	add	rax, rdx	# _6, _2
.L40:
# std/vec.h:81: }
	.loc 2 81 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE17:
	.size	VecGet, .-VecGet
	.globl	VecPeek
	.type	VecPeek, @function
VecPeek:
.LFB18:
	.loc 2 84 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# vec, vec
# std/vec.h:85: 	if( vec->len == 0 ){ return vec->base; }
	.loc 2 85 9
	mov	rax, QWORD PTR -8[rbp]	# tmp91, vec
	mov	eax, DWORD PTR 8[rax]	# _1, vec_10(D)->D.4073.len
# std/vec.h:85: 	if( vec->len == 0 ){ return vec->base; }
	.loc 2 85 4
	test	eax, eax	# _1
	jne	.L42	#,
# std/vec.h:85: 	if( vec->len == 0 ){ return vec->base; }
	.loc 2 85 33 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp92, vec
	mov	rax, QWORD PTR [rax]	# _8, vec_10(D)->base
# std/vec.h:85: 	if( vec->len == 0 ){ return vec->base; }
	.loc 2 85 33 is_stmt 0
	jmp	.L43	#
.L42:
# std/vec.h:86: 	return ( I8* )vec->base + ( vec->len - 1 ) * vec->szof;
	.loc 2 86 19 is_stmt 1
	mov	rax, QWORD PTR -8[rbp]	# tmp93, vec
	mov	rdx, QWORD PTR [rax]	# _2, vec_10(D)->base
# std/vec.h:86: 	return ( I8* )vec->base + ( vec->len - 1 ) * vec->szof;
	.loc 2 86 33
	mov	rax, QWORD PTR -8[rbp]	# tmp94, vec
	mov	eax, DWORD PTR 8[rax]	# _3, vec_10(D)->D.4073.len
# std/vec.h:86: 	return ( I8* )vec->base + ( vec->len - 1 ) * vec->szof;
	.loc 2 86 39
	lea	ecx, -1[rax]	# _4,
# std/vec.h:86: 	return ( I8* )vec->base + ( vec->len - 1 ) * vec->szof;
	.loc 2 86 50
	mov	rax, QWORD PTR -8[rbp]	# tmp95, vec
	mov	eax, DWORD PTR 16[rax]	# _5, vec_10(D)->szof
# std/vec.h:86: 	return ( I8* )vec->base + ( vec->len - 1 ) * vec->szof;
	.loc 2 86 45
	imul	eax, ecx	# _6, _4
	mov	eax, eax	# _7, _6
# std/vec.h:86: 	return ( I8* )vec->base + ( vec->len - 1 ) * vec->szof;
	.loc 2 86 26
	add	rax, rdx	# _8, _2
.L43:
# std/vec.h:87: }
	.loc 2 87 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE18:
	.size	VecPeek, .-VecPeek
	.globl	VecPeekN
	.type	VecPeekN, @function
VecPeekN:
.LFB19:
	.loc 2 90 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# vec, vec
	mov	DWORD PTR -12[rbp], esi	# peek, peek
# std/vec.h:91: 	if( peek >= vec->len ){ return vec->base; }
	.loc 2 91 17
	mov	rax, QWORD PTR -8[rbp]	# tmp92, vec
	mov	eax, DWORD PTR 8[rax]	# _1, vec_11(D)->D.4073.len
# std/vec.h:91: 	if( peek >= vec->len ){ return vec->base; }
	.loc 2 91 4
	cmp	DWORD PTR -12[rbp], eax	# peek, _1
	jb	.L45	#,
# std/vec.h:91: 	if( peek >= vec->len ){ return vec->base; }
	.loc 2 91 36 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp93, vec
	mov	rax, QWORD PTR [rax]	# _9, vec_11(D)->base
# std/vec.h:91: 	if( peek >= vec->len ){ return vec->base; }
	.loc 2 91 36 is_stmt 0
	jmp	.L46	#
.L45:
# std/vec.h:92: 	return ( I8* )vec->base + ( vec->len - 1 - peek ) * vec->szof;
	.loc 2 92 19 is_stmt 1
	mov	rax, QWORD PTR -8[rbp]	# tmp94, vec
	mov	rdx, QWORD PTR [rax]	# _2, vec_11(D)->base
# std/vec.h:92: 	return ( I8* )vec->base + ( vec->len - 1 - peek ) * vec->szof;
	.loc 2 92 33
	mov	rax, QWORD PTR -8[rbp]	# tmp95, vec
	mov	eax, DWORD PTR 8[rax]	# _3, vec_11(D)->D.4073.len
# std/vec.h:92: 	return ( I8* )vec->base + ( vec->len - 1 - peek ) * vec->szof;
	.loc 2 92 43
	sub	eax, DWORD PTR -12[rbp]	# _4, peek
	lea	ecx, -1[rax]	# _5,
# std/vec.h:92: 	return ( I8* )vec->base + ( vec->len - 1 - peek ) * vec->szof;
	.loc 2 92 57
	mov	rax, QWORD PTR -8[rbp]	# tmp96, vec
	mov	eax, DWORD PTR 16[rax]	# _6, vec_11(D)->szof
# std/vec.h:92: 	return ( I8* )vec->base + ( vec->len - 1 - peek ) * vec->szof;
	.loc 2 92 52
	imul	eax, ecx	# _7, _5
	mov	eax, eax	# _8, _7
# std/vec.h:92: 	return ( I8* )vec->base + ( vec->len - 1 - peek ) * vec->szof;
	.loc 2 92 26
	add	rax, rdx	# _9, _2
.L46:
# std/vec.h:93: }
	.loc 2 93 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE19:
	.size	VecPeekN, .-VecPeekN
	.type	StringHash, @function
StringHash:
.LFB20:
	.file 3 "std/string.h"
	.loc 3 9 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi	# cstr, cstr
	mov	DWORD PTR -28[rbp], esi	# len, len
# std/string.h:10: 	U32 hash = 2166136261U;
	.loc 3 10 6
	mov	DWORD PTR -12[rbp], -2128831035	# hash,
# std/string.h:11: 	U32 prime = 16777619U;
	.loc 3 11 6
	mov	DWORD PTR -4[rbp], 16777619	# prime,
.LBB2:
# std/string.h:12: 	for( U32 i = 0; i < len; i++ )
	.loc 3 12 11
	mov	DWORD PTR -8[rbp], 0	# i,
# std/string.h:12: 	for( U32 i = 0; i < len; i++ )
	.loc 3 12 2
	jmp	.L48	#
.L49:
# std/string.h:14: 		hash ^= cstr[ i ];
	.loc 3 14 15
	mov	edx, DWORD PTR -8[rbp]	# _1, i
	mov	rax, QWORD PTR -24[rbp]	# tmp88, cstr
	add	rax, rdx	# _2, _1
	movzx	eax, BYTE PTR [rax]	# _3, *_2
	movsx	eax, al	# _4, _3
# std/string.h:14: 		hash ^= cstr[ i ];
	.loc 3 14 8
	xor	DWORD PTR -12[rbp], eax	# hash, _4
# std/string.h:15: 		hash *= prime;
	.loc 3 15 8
	mov	eax, DWORD PTR -12[rbp]	# tmp90, hash
	imul	eax, DWORD PTR -4[rbp]	# tmp89, prime
	mov	DWORD PTR -12[rbp], eax	# hash, tmp89
# std/string.h:12: 	for( U32 i = 0; i < len; i++ )
	.loc 3 12 28 discriminator 3
	add	DWORD PTR -8[rbp], 1	# i,
.L48:
# std/string.h:12: 	for( U32 i = 0; i < len; i++ )
	.loc 3 12 20 discriminator 1
	mov	eax, DWORD PTR -8[rbp]	# tmp91, i
	cmp	eax, DWORD PTR -28[rbp]	# tmp91, len
	jb	.L49	#,
.LBE2:
# std/string.h:17: 	return hash;
	.loc 3 17 9
	mov	eax, DWORD PTR -12[rbp]	# _11, hash
# std/string.h:18: }
	.loc 3 18 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE20:
	.size	StringHash, .-StringHash
	.type	StringAlloc, @function
StringAlloc:
.LFB21:
	.loc 3 21 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# strings, strings
	mov	QWORD PTR -32[rbp], rsi	# src, src
	mov	DWORD PTR -36[rbp], edx	# len, len
# std/string.h:22: 	U32 offset = ArenaPush( strings, len, 1 );
	.loc 3 22 15
	mov	ecx, DWORD PTR -36[rbp]	# tmp85, len
	mov	rax, QWORD PTR -24[rbp]	# tmp86, strings
	mov	edx, 1	#,
	mov	esi, ecx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	ArenaPush	#
	mov	DWORD PTR -12[rbp], eax	# offset, tmp87
# std/string.h:23: 	I8 *dest = ArenaOff( strings, offset );
	.loc 3 23 13
	mov	edx, DWORD PTR -12[rbp]	# tmp88, offset
	mov	rax, QWORD PTR -24[rbp]	# tmp89, strings
	mov	esi, edx	#, tmp88
	mov	rdi, rax	#, tmp89
	call	ArenaOff	#
	mov	QWORD PTR -8[rbp], rax	# dest, tmp90
# std/string.h:24: 	memcpy( dest, src, len );
	.loc 3 24 2
	mov	edx, DWORD PTR -36[rbp]	# _1, len
	mov	rcx, QWORD PTR -32[rbp]	# tmp91, src
	mov	rax, QWORD PTR -8[rbp]	# tmp92, dest
	mov	rsi, rcx	#, tmp91
	mov	rdi, rax	#, tmp92
	call	memcpy@PLT	#
# std/string.h:25: 	return offset;
	.loc 3 25 9
	mov	eax, DWORD PTR -12[rbp]	# _11, offset
# std/string.h:26: }
	.loc 3 26 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE21:
	.size	StringAlloc, .-StringAlloc
	.globl	ValueSet
	.type	ValueSet, @function
ValueSet:
.LFB22:
	.file 4 "std/value.h"
	.loc 4 23 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# value, value
	mov	DWORD PTR -12[rbp], esi	# type, type
	mov	QWORD PTR -24[rbp], rdx	# data, data
# std/value.h:25: 	goto *types[ type ];
	.loc 4 25 13
	mov	eax, DWORD PTR -12[rbp]	# tmp85, type
	lea	rdx, 0[0+rax*8]	# tmp86,
	lea	rax, types.51[rip]	# tmp87,
	mov	rax, QWORD PTR [rdx+rax]	# _1, types[type_6(D)]
# std/value.h:25: 	goto *types[ type ];
	.loc 4 25 2
	nop	
	jmp	rax	# _1
.L55:
	endbr64	
# std/value.h:26: 	I64: value->i64 = *( I64* )data; return;
	.loc 4 26 20
	mov	rax, QWORD PTR -24[rbp]	# tmp88, data
	mov	rdx, QWORD PTR [rax]	# _2, MEM[(I64 *)data_9(D)]
# std/value.h:26: 	I64: value->i64 = *( I64* )data; return;
	.loc 4 26 18
	mov	rax, QWORD PTR -8[rbp]	# tmp89, value
	mov	QWORD PTR 8[rax], rdx	# value_8(D)->D.4160.i64, _2
# std/value.h:26: 	I64: value->i64 = *( I64* )data; return;
	.loc 4 26 35
	jmp	.L53	#
.L57:
	endbr64	
# std/value.h:27: 	F64: value->f64 = *( F64* )data; return;
	.loc 4 27 20
	mov	rax, QWORD PTR -24[rbp]	# tmp90, data
	movsd	xmm0, QWORD PTR [rax]	# _3, MEM[(F64 *)data_9(D)]
# std/value.h:27: 	F64: value->f64 = *( F64* )data; return;
	.loc 4 27 18
	mov	rax, QWORD PTR -8[rbp]	# tmp91, value
	movsd	QWORD PTR 8[rax], xmm0	# value_8(D)->D.4160.f64, _3
# std/value.h:27: 	F64: value->f64 = *( F64* )data; return;
	.loc 4 27 35
	jmp	.L53	#
.L58:
	endbr64	
# std/value.h:28: 	STR: value->str = data;
	.loc 4 28 18
	mov	rax, QWORD PTR -8[rbp]	# tmp92, value
	mov	rdx, QWORD PTR -24[rbp]	# tmp93, data
	mov	QWORD PTR 8[rax], rdx	# value_8(D)->D.4160.str, tmp93
.L53:
# std/value.h:29: }
	.loc 4 29 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE22:
	.size	ValueSet, .-ValueSet
	.type	GetInterns, @function
GetInterns:
.LFB23:
	.file 5 "std/table.h"
	.loc 5 12 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/table.h:14: 	return &interns;
	.loc 5 14 9
	lea	rax, interns.0[rip]	# _1,
# std/table.h:15: }
	.loc 5 15 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE23:
	.size	GetInterns, .-GetInterns
	.globl	TableAlloc
	.type	TableAlloc, @function
TableAlloc:
.LFB24:
	.loc 5 18 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -8[rbp], rdi	# table, table
	mov	QWORD PTR -16[rbp], rsi	# strings, strings
	mov	DWORD PTR -20[rbp], edx	# max, max
# std/table.h:19: 	table->strings = strings;
	.loc 5 19 17
	mov	rax, QWORD PTR -8[rbp]	# tmp84, table
	mov	rdx, QWORD PTR -16[rbp]	# tmp85, strings
	mov	QWORD PTR 8[rax], rdx	# table_4(D)->strings, tmp85
# std/table.h:20: 	table->base = calloc( max, sizeof( String ) );
	.loc 5 20 16
	mov	eax, DWORD PTR -20[rbp]	# _1, max
	mov	esi, 12	#,
	mov	rdi, rax	#, _1
	call	calloc@PLT	#
	mov	rdx, rax	# _2, tmp86
# std/table.h:20: 	table->base = calloc( max, sizeof( String ) );
	.loc 5 20 14 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp87, table
	mov	QWORD PTR [rax], rdx	# table_4(D)->base, _2
# std/table.h:21: 	table->len = 0;
	.loc 5 21 13
	mov	rax, QWORD PTR -8[rbp]	# tmp88, table
	mov	DWORD PTR 16[rax], 0	# table_4(D)->len,
# std/table.h:22: 	table->max = max;
	.loc 5 22 13
	mov	rax, QWORD PTR -8[rbp]	# tmp89, table
	mov	edx, DWORD PTR -20[rbp]	# tmp90, max
	mov	DWORD PTR 20[rax], edx	# table_4(D)->max, tmp90
# std/table.h:23: }
	.loc 5 23 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE24:
	.size	TableAlloc, .-TableAlloc
	.globl	TableFind
	.type	TableFind, @function
TableFind:
.LFB25:
	.loc 5 26 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -40[rbp], rdi	# table, table
	mov	QWORD PTR -48[rbp], rsi	# str_a, str_a
	mov	DWORD PTR -52[rbp], edx	# len, len
	mov	DWORD PTR -56[rbp], ecx	# hash, hash
# std/table.h:27: 	U32 idx = hash & ( table->max - 1 );
	.loc 5 27 26
	mov	rax, QWORD PTR -40[rbp]	# tmp99, table
	mov	eax, DWORD PTR 20[rax]	# _1, table_19(D)->max
# std/table.h:27: 	U32 idx = hash & ( table->max - 1 );
	.loc 5 27 32
	sub	eax, 1	# _2,
# std/table.h:27: 	U32 idx = hash & ( table->max - 1 );
	.loc 5 27 6
	and	eax, DWORD PTR -56[rbp]	# tmp101, hash
	mov	DWORD PTR -24[rbp], eax	# idx, tmp101
.L67:
.LBB3:
# std/table.h:30: 		String *str = &table->base[ idx ];
	.loc 5 30 23
	mov	rax, QWORD PTR -40[rbp]	# tmp102, table
	mov	rcx, QWORD PTR [rax]	# _3, table_19(D)->base
# std/table.h:30: 		String *str = &table->base[ idx ];
	.loc 5 30 29
	mov	edx, DWORD PTR -24[rbp]	# _4, idx
	mov	rax, rdx	# tmp103, _4
	add	rax, rax	# tmp103
	add	rax, rdx	# tmp103, _4
	sal	rax, 2	# tmp104,
# std/table.h:30: 		String *str = &table->base[ idx ];
	.loc 5 30 11
	add	rax, rcx	# tmp105, _3
	mov	QWORD PTR -16[rbp], rax	# str, tmp105
# std/table.h:31: 		if( !str->hash ){ return str; }
	.loc 5 31 11
	mov	rax, QWORD PTR -16[rbp]	# tmp106, str
	mov	eax, DWORD PTR 8[rax]	# _6, str_22->hash
# std/table.h:31: 		if( !str->hash ){ return str; }
	.loc 5 31 5
	test	eax, eax	# _6
	jne	.L63	#,
# std/table.h:31: 		if( !str->hash ){ return str; }
	.loc 5 31 28 discriminator 1
	mov	rax, QWORD PTR -16[rbp]	# _17, str
# std/table.h:31: 		if( !str->hash ){ return str; }
	.loc 5 31 28 is_stmt 0
	jmp	.L64	#
.L63:
# std/table.h:32: 		if( str->len != len ){ continue; }
	.loc 5 32 10 is_stmt 1
	mov	rax, QWORD PTR -16[rbp]	# tmp107, str
	mov	eax, DWORD PTR 4[rax]	# _7, str_22->len
# std/table.h:32: 		if( str->len != len ){ continue; }
	.loc 5 32 5
	cmp	DWORD PTR -52[rbp], eax	# len, _7
	jne	.L68	#,
# std/table.h:33: 		I8 *str_b = ( I8* )table->strings->base + str->offset;
	.loc 5 33 27
	mov	rax, QWORD PTR -40[rbp]	# tmp108, table
	mov	rax, QWORD PTR 8[rax]	# _8, table_19(D)->strings
# std/table.h:33: 		I8 *str_b = ( I8* )table->strings->base + str->offset;
	.loc 5 33 36
	mov	rdx, QWORD PTR [rax]	# _9, _8->base
# std/table.h:33: 		I8 *str_b = ( I8* )table->strings->base + str->offset;
	.loc 5 33 48
	mov	rax, QWORD PTR -16[rbp]	# tmp109, str
	mov	eax, DWORD PTR [rax]	# _10, str_22->offset
	mov	eax, eax	# _11, _10
# std/table.h:33: 		I8 *str_b = ( I8* )table->strings->base + str->offset;
	.loc 5 33 7
	add	rax, rdx	# tmp110, _9
	mov	QWORD PTR -8[rbp], rax	# str_b, tmp110
# std/table.h:34: 		I32 cmp = memcmp( str_a, str_b, len );
	.loc 5 34 13
	mov	edx, DWORD PTR -52[rbp]	# _12, len
	mov	rcx, QWORD PTR -8[rbp]	# tmp111, str_b
	mov	rax, QWORD PTR -48[rbp]	# tmp112, str_a
	mov	rsi, rcx	#, tmp111
	mov	rdi, rax	#, tmp112
	call	memcmp@PLT	#
	mov	DWORD PTR -20[rbp], eax	# cmp, tmp113
# std/table.h:35: 		if( cmp == 0 ){ return str; }
	.loc 5 35 5
	cmp	DWORD PTR -20[rbp], 0	# cmp,
	jne	.L66	#,
# std/table.h:35: 		if( cmp == 0 ){ return str; }
	.loc 5 35 26 discriminator 1
	mov	rax, QWORD PTR -16[rbp]	# _17, str
# std/table.h:35: 		if( cmp == 0 ){ return str; }
	.loc 5 35 26 is_stmt 0
	jmp	.L64	#
.L68:
# std/table.h:32: 		if( str->len != len ){ continue; }
	.loc 5 32 26 is_stmt 1
	nop	
.L66:
.LBE3:
# std/table.h:28: 	for( ;; idx = ( idx + 1 ) & ( table->max - 1 ) )
	.loc 5 28 22
	mov	eax, DWORD PTR -24[rbp]	# tmp114, idx
	lea	edx, 1[rax]	# _13,
# std/table.h:28: 	for( ;; idx = ( idx + 1 ) & ( table->max - 1 ) )
	.loc 5 28 37
	mov	rax, QWORD PTR -40[rbp]	# tmp115, table
	mov	eax, DWORD PTR 20[rax]	# _14, table_19(D)->max
# std/table.h:28: 	for( ;; idx = ( idx + 1 ) & ( table->max - 1 ) )
	.loc 5 28 43
	sub	eax, 1	# _15,
# std/table.h:28: 	for( ;; idx = ( idx + 1 ) & ( table->max - 1 ) )
	.loc 5 28 14
	and	eax, edx	# tmp116, _13
	mov	DWORD PTR -24[rbp], eax	# idx, tmp116
# std/table.h:29: 	{
	.loc 5 29 2
	jmp	.L67	#
.L64:
# std/table.h:37: }
	.loc 5 37 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE25:
	.size	TableFind, .-TableFind
	.globl	TableReput
	.type	TableReput, @function
TableReput:
.LFB26:
	.loc 5 40 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# table, table
	mov	QWORD PTR -32[rbp], rsi	# old_str, old_str
# std/table.h:41: 	I8 *old_cstr = ArenaOff( table->strings, old_str->offset );
	.loc 5 41 17
	mov	rax, QWORD PTR -32[rbp]	# tmp91, old_str
	mov	edx, DWORD PTR [rax]	# _1, old_str_11(D)->offset
	mov	rax, QWORD PTR -24[rbp]	# tmp92, table
	mov	rax, QWORD PTR 8[rax]	# _2, table_12(D)->strings
	mov	esi, edx	#, _1
	mov	rdi, rax	#, _2
	call	ArenaOff	#
	mov	QWORD PTR -16[rbp], rax	# old_cstr, tmp93
# std/table.h:42: 	String *new_str = TableFind( table, old_cstr, old_str->len, old_str->hash );
	.loc 5 42 20
	mov	rax, QWORD PTR -32[rbp]	# tmp94, old_str
	mov	ecx, DWORD PTR 8[rax]	# _3, old_str_11(D)->hash
	mov	rax, QWORD PTR -32[rbp]	# tmp95, old_str
	mov	edx, DWORD PTR 4[rax]	# _4, old_str_11(D)->len
	mov	rsi, QWORD PTR -16[rbp]	# tmp96, old_cstr
	mov	rax, QWORD PTR -24[rbp]	# tmp97, table
	mov	rdi, rax	#, tmp97
	call	TableFind	#
	mov	QWORD PTR -8[rbp], rax	# new_str, tmp98
# std/table.h:43: 	table->len++;
	.loc 5 43 7
	mov	rax, QWORD PTR -24[rbp]	# tmp99, table
	mov	eax, DWORD PTR 16[rax]	# _5, table_12(D)->len
# std/table.h:43: 	table->len++;
	.loc 5 43 12
	lea	edx, 1[rax]	# _6,
	mov	rax, QWORD PTR -24[rbp]	# tmp100, table
	mov	DWORD PTR 16[rax], edx	# table_12(D)->len, _6
# std/table.h:44: 	new_str->offset = old_str->offset;
	.loc 5 44 27
	mov	rax, QWORD PTR -32[rbp]	# tmp101, old_str
	mov	edx, DWORD PTR [rax]	# _7, old_str_11(D)->offset
# std/table.h:44: 	new_str->offset = old_str->offset;
	.loc 5 44 18
	mov	rax, QWORD PTR -8[rbp]	# tmp102, new_str
	mov	DWORD PTR [rax], edx	# new_str_16->offset, _7
# std/table.h:45: 	new_str->len = old_str->len;
	.loc 5 45 24
	mov	rax, QWORD PTR -32[rbp]	# tmp103, old_str
	mov	edx, DWORD PTR 4[rax]	# _8, old_str_11(D)->len
# std/table.h:45: 	new_str->len = old_str->len;
	.loc 5 45 15
	mov	rax, QWORD PTR -8[rbp]	# tmp104, new_str
	mov	DWORD PTR 4[rax], edx	# new_str_16->len, _8
# std/table.h:46: 	new_str->hash = old_str->hash;
	.loc 5 46 25
	mov	rax, QWORD PTR -32[rbp]	# tmp105, old_str
	mov	edx, DWORD PTR 8[rax]	# _9, old_str_11(D)->hash
# std/table.h:46: 	new_str->hash = old_str->hash;
	.loc 5 46 16
	mov	rax, QWORD PTR -8[rbp]	# tmp106, new_str
	mov	DWORD PTR 8[rax], edx	# new_str_16->hash, _9
# std/table.h:47: }
	.loc 5 47 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE26:
	.size	TableReput, .-TableReput
	.globl	TableGrow
	.type	TableGrow, @function
TableGrow:
.LFB27:
	.loc 5 50 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# table, table
# std/table.h:51: 	String *old_base = table->base;
	.loc 5 51 10
	mov	rax, QWORD PTR -40[rbp]	# tmp88, table
	mov	rax, QWORD PTR [rax]	# tmp89, table_11(D)->base
	mov	QWORD PTR -16[rbp], rax	# old_base, tmp89
# std/table.h:52: 	U32 old_len = table->len;
	.loc 5 52 6
	mov	rax, QWORD PTR -40[rbp]	# tmp90, table
	mov	eax, DWORD PTR 16[rax]	# tmp91, table_11(D)->len
	mov	DWORD PTR -20[rbp], eax	# old_len, tmp91
# std/table.h:53: 	TableAlloc( table, table->strings, table->max << 1 );
	.loc 5 53 42
	mov	rax, QWORD PTR -40[rbp]	# tmp92, table
	mov	eax, DWORD PTR 20[rax]	# _1, table_11(D)->max
# std/table.h:53: 	TableAlloc( table, table->strings, table->max << 1 );
	.loc 5 53 2
	lea	edx, [rax+rax]	# _2,
	mov	rax, QWORD PTR -40[rbp]	# tmp93, table
	mov	rcx, QWORD PTR 8[rax]	# _3, table_11(D)->strings
	mov	rax, QWORD PTR -40[rbp]	# tmp94, table
	mov	rsi, rcx	#, _3
	mov	rdi, rax	#, tmp94
	call	TableAlloc	#
.LBB4:
# std/table.h:54: 	for( U32 i = 0; i < old_len; i++ )
	.loc 5 54 11
	mov	DWORD PTR -24[rbp], 0	# i,
# std/table.h:54: 	for( U32 i = 0; i < old_len; i++ )
	.loc 5 54 2
	jmp	.L71	#
.L74:
.LBB5:
# std/table.h:56: 		String *old_str = &old_base[ i ];
	.loc 5 56 30
	mov	edx, DWORD PTR -24[rbp]	# _4, i
	mov	rax, rdx	# tmp95, _4
	add	rax, rax	# tmp95
	add	rax, rdx	# tmp95, _4
	sal	rax, 2	# tmp96,
	mov	rdx, rax	# _5, tmp95
# std/table.h:56: 		String *old_str = &old_base[ i ];
	.loc 5 56 11
	mov	rax, QWORD PTR -16[rbp]	# tmp100, old_base
	add	rax, rdx	# tmp99, _5
	mov	QWORD PTR -8[rbp], rax	# old_str, tmp99
# std/table.h:57: 		if( !old_str->hash ){ continue; } /* skip empty / tombstones */
	.loc 5 57 15
	mov	rax, QWORD PTR -8[rbp]	# tmp101, old_str
	mov	eax, DWORD PTR 8[rax]	# _6, old_str_17->hash
# std/table.h:57: 		if( !old_str->hash ){ continue; } /* skip empty / tombstones */
	.loc 5 57 5
	test	eax, eax	# _6
	je	.L75	#,
# std/table.h:58: 		TableReput( table, old_str ); /* reinsert at new hash index */
	.loc 5 58 3
	mov	rdx, QWORD PTR -8[rbp]	# tmp102, old_str
	mov	rax, QWORD PTR -40[rbp]	# tmp103, table
	mov	rsi, rdx	#, tmp102
	mov	rdi, rax	#, tmp103
	call	TableReput	#
	jmp	.L73	#
.L75:
# std/table.h:57: 		if( !old_str->hash ){ continue; } /* skip empty / tombstones */
	.loc 5 57 25
	nop	
.L73:
.LBE5:
# std/table.h:54: 	for( U32 i = 0; i < old_len; i++ )
	.loc 5 54 32 discriminator 2
	add	DWORD PTR -24[rbp], 1	# i,
.L71:
# std/table.h:54: 	for( U32 i = 0; i < old_len; i++ )
	.loc 5 54 20 discriminator 1
	mov	eax, DWORD PTR -24[rbp]	# tmp104, i
	cmp	eax, DWORD PTR -20[rbp]	# tmp104, old_len
	jb	.L74	#,
.LBE4:
# std/table.h:60: 	free( old_base );
	.loc 5 60 2
	mov	rax, QWORD PTR -16[rbp]	# tmp105, old_base
	mov	rdi, rax	#, tmp105
	call	free@PLT	#
# std/table.h:61: }
	.loc 5 61 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE27:
	.size	TableGrow, .-TableGrow
	.globl	TablePut
	.type	TablePut, @function
TablePut:
.LFB28:
	.loc 5 64 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# table, table
	mov	QWORD PTR -32[rbp], rsi	# src, src
	mov	DWORD PTR -36[rbp], edx	# len, len
# std/table.h:65: 	if( table->len > table->max * TABLE_LOAD ){ TableGrow( table ); }
	.loc 5 65 11
	mov	rax, QWORD PTR -24[rbp]	# tmp94, table
	mov	eax, DWORD PTR 16[rax]	# _1, table_15(D)->len
# std/table.h:65: 	if( table->len > table->max * TABLE_LOAD ){ TableGrow( table ); }
	.loc 5 65 17
	mov	eax, eax	# tmp95, _1
	test	rax, rax	# tmp95
	js	.L77	#,
	pxor	xmm0, xmm0	# _2
	cvtsi2sd	xmm0, rax	# _2, tmp95
	jmp	.L78	#
.L77:
	mov	rdx, rax	# tmp97, tmp95
	shr	rdx	# tmp97
	and	eax, 1	# tmp98,
	or	rdx, rax	# tmp97, tmp98
	pxor	xmm0, xmm0	# tmp96
	cvtsi2sd	xmm0, rdx	# tmp96, tmp97
	addsd	xmm0, xmm0	# _2, tmp96
.L78:
# std/table.h:65: 	if( table->len > table->max * TABLE_LOAD ){ TableGrow( table ); }
	.loc 5 65 24
	mov	rax, QWORD PTR -24[rbp]	# tmp99, table
	mov	eax, DWORD PTR 20[rax]	# _3, table_15(D)->max
# std/table.h:65: 	if( table->len > table->max * TABLE_LOAD ){ TableGrow( table ); }
	.loc 5 65 30
	mov	eax, eax	# tmp100, _3
	test	rax, rax	# tmp100
	js	.L79	#,
	pxor	xmm1, xmm1	# _4
	cvtsi2sd	xmm1, rax	# _4, tmp100
	jmp	.L80	#
.L79:
	mov	rdx, rax	# tmp102, tmp100
	shr	rdx	# tmp102
	and	eax, 1	# tmp103,
	or	rdx, rax	# tmp102, tmp103
	pxor	xmm1, xmm1	# tmp101
	cvtsi2sd	xmm1, rdx	# tmp101, tmp102
	addsd	xmm1, xmm1	# _4, tmp101
.L80:
	movsd	xmm2, QWORD PTR .LC0[rip]	# tmp104,
	mulsd	xmm1, xmm2	# _5, tmp104
# std/table.h:65: 	if( table->len > table->max * TABLE_LOAD ){ TableGrow( table ); }
	.loc 5 65 4
	comisd	xmm0, xmm1	# _2, _5
	jbe	.L81	#,
# std/table.h:65: 	if( table->len > table->max * TABLE_LOAD ){ TableGrow( table ); }
	.loc 5 65 46 discriminator 1
	mov	rax, QWORD PTR -24[rbp]	# tmp105, table
	mov	rdi, rax	#, tmp105
	call	TableGrow	#
.L81:
# std/table.h:66: 	U32 hash = StringHash( src, len );
	.loc 5 66 13
	mov	edx, DWORD PTR -36[rbp]	# tmp106, len
	mov	rax, QWORD PTR -32[rbp]	# tmp107, src
	mov	esi, edx	#, tmp106
	mov	rdi, rax	#, tmp107
	call	StringHash	#
	mov	DWORD PTR -12[rbp], eax	# hash, tmp108
# std/table.h:67: 	String *str = TableFind( table, src, len, hash );
	.loc 5 67 16
	mov	ecx, DWORD PTR -12[rbp]	# tmp109, hash
	mov	edx, DWORD PTR -36[rbp]	# tmp110, len
	mov	rsi, QWORD PTR -32[rbp]	# tmp111, src
	mov	rax, QWORD PTR -24[rbp]	# tmp112, table
	mov	rdi, rax	#, tmp112
	call	TableFind	#
	mov	QWORD PTR -8[rbp], rax	# str, tmp113
# std/table.h:68: 	if( str->hash ){ return str; }
	.loc 5 68 9
	mov	rax, QWORD PTR -8[rbp]	# tmp114, str
	mov	eax, DWORD PTR 8[rax]	# _6, str_22->hash
# std/table.h:68: 	if( str->hash ){ return str; }
	.loc 5 68 4
	test	eax, eax	# _6
	je	.L83	#,
# std/table.h:68: 	if( str->hash ){ return str; }
	.loc 5 68 26 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# _11, str
# std/table.h:68: 	if( str->hash ){ return str; }
	.loc 5 68 26 is_stmt 0
	jmp	.L84	#
.L83:
# std/table.h:69: 	table->len++;
	.loc 5 69 7 is_stmt 1
	mov	rax, QWORD PTR -24[rbp]	# tmp115, table
	mov	eax, DWORD PTR 16[rax]	# _7, table_15(D)->len
# std/table.h:69: 	table->len++;
	.loc 5 69 12
	lea	edx, 1[rax]	# _8,
	mov	rax, QWORD PTR -24[rbp]	# tmp116, table
	mov	DWORD PTR 16[rax], edx	# table_15(D)->len, _8
# std/table.h:71: 	str->offset = StringAlloc( table->strings, src, len );
	.loc 5 71 16
	mov	rax, QWORD PTR -24[rbp]	# tmp117, table
	mov	rax, QWORD PTR 8[rax]	# _9, table_15(D)->strings
	mov	edx, DWORD PTR -36[rbp]	# tmp118, len
	mov	rcx, QWORD PTR -32[rbp]	# tmp119, src
	mov	rsi, rcx	#, tmp119
	mov	rdi, rax	#, _9
	call	StringAlloc	#
# std/table.h:71: 	str->offset = StringAlloc( table->strings, src, len );
	.loc 5 71 14 discriminator 1
	mov	rdx, QWORD PTR -8[rbp]	# tmp120, str
	mov	DWORD PTR [rdx], eax	# str_22->offset, _10
# std/table.h:72: 	str->len = len;
	.loc 5 72 11
	mov	rax, QWORD PTR -8[rbp]	# tmp121, str
	mov	edx, DWORD PTR -36[rbp]	# tmp122, len
	mov	DWORD PTR 4[rax], edx	# str_22->len, tmp122
# std/table.h:73: 	str->hash = hash;
	.loc 5 73 12
	mov	rax, QWORD PTR -8[rbp]	# tmp123, str
	mov	edx, DWORD PTR -12[rbp]	# tmp124, hash
	mov	DWORD PTR 8[rax], edx	# str_22->hash, tmp124
# std/table.h:74: 	return str;
	.loc 5 74 9
	mov	rax, QWORD PTR -8[rbp]	# _11, str
.L84:
# std/table.h:75: }
	.loc 5 75 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE28:
	.size	TablePut, .-TablePut
	.globl	MapAlloc
	.type	MapAlloc, @function
MapAlloc:
.LFB29:
	.file 6 "std/map.h"
	.loc 6 19 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# map, map
	mov	DWORD PTR -12[rbp], esi	# max, max
# std/map.h:20: 	map->base = calloc( max, sizeof( Entry ) );
	.loc 6 20 14
	mov	eax, DWORD PTR -12[rbp]	# _1, max
	mov	esi, 24	#,
	mov	rdi, rax	#, _1
	call	calloc@PLT	#
	mov	rdx, rax	# _2, tmp84
# std/map.h:20: 	map->base = calloc( max, sizeof( Entry ) );
	.loc 6 20 12 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp85, map
	mov	QWORD PTR [rax], rdx	# map_6(D)->base, _2
# std/map.h:21: 	map->len = 0;
	.loc 6 21 11
	mov	rax, QWORD PTR -8[rbp]	# tmp86, map
	mov	DWORD PTR 8[rax], 0	# map_6(D)->len,
# std/map.h:22: 	map->max = max;
	.loc 6 22 11
	mov	rax, QWORD PTR -8[rbp]	# tmp87, map
	mov	edx, DWORD PTR -12[rbp]	# tmp88, max
	mov	DWORD PTR 12[rax], edx	# map_6(D)->max, tmp88
# std/map.h:23: }
	.loc 6 23 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE29:
	.size	MapAlloc, .-MapAlloc
	.globl	MapGrow
	.type	MapGrow, @function
MapGrow:
.LFB30:
	.loc 6 26 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# map, map
# std/map.h:27: 	Entry *entries = map->base;
	.loc 6 27 9
	mov	rax, QWORD PTR -40[rbp]	# tmp88, map
	mov	rax, QWORD PTR [rax]	# tmp89, map_11(D)->base
	mov	QWORD PTR -16[rbp], rax	# entries, tmp89
# std/map.h:28: 	U32 old_max = map->max;
	.loc 6 28 6
	mov	rax, QWORD PTR -40[rbp]	# tmp90, map
	mov	eax, DWORD PTR 12[rax]	# tmp91, map_11(D)->max
	mov	DWORD PTR -20[rbp], eax	# old_max, tmp91
# std/map.h:29: 	MapAlloc( map, map->max << 1 );
	.loc 6 29 20
	mov	rax, QWORD PTR -40[rbp]	# tmp92, map
	mov	eax, DWORD PTR 12[rax]	# _1, map_11(D)->max
# std/map.h:29: 	MapAlloc( map, map->max << 1 );
	.loc 6 29 2
	lea	edx, [rax+rax]	# _2,
	mov	rax, QWORD PTR -40[rbp]	# tmp93, map
	mov	esi, edx	#, _2
	mov	rdi, rax	#, tmp93
	call	MapAlloc	#
.LBB6:
# std/map.h:30: 	for( U32 i = 0; i < old_max; i++ )
	.loc 6 30 11
	mov	DWORD PTR -24[rbp], 0	# i,
# std/map.h:30: 	for( U32 i = 0; i < old_max; i++ )
	.loc 6 30 2
	jmp	.L88	#
.L91:
.LBB7:
# std/map.h:32: 		Entry *entry = &entries[ i ];
	.loc 6 32 26
	mov	edx, DWORD PTR -24[rbp]	# _3, i
	mov	rax, rdx	# tmp94, _3
	add	rax, rax	# tmp94
	add	rax, rdx	# tmp94, _3
	sal	rax, 3	# tmp95,
	mov	rdx, rax	# _4, tmp94
# std/map.h:32: 		Entry *entry = &entries[ i ];
	.loc 6 32 10
	mov	rax, QWORD PTR -16[rbp]	# tmp99, entries
	add	rax, rdx	# tmp98, _4
	mov	QWORD PTR -8[rbp], rax	# entry, tmp98
# std/map.h:33: 		if( !entry->key ){ continue; }
	.loc 6 33 13
	mov	rax, QWORD PTR -8[rbp]	# tmp100, entry
	mov	rax, QWORD PTR [rax]	# _5, entry_17->D.4226.key
# std/map.h:33: 		if( !entry->key ){ continue; }
	.loc 6 33 5
	test	rax, rax	# _5
	je	.L92	#,
# std/map.h:34: 		MapPut( map, entry->key, entry->value );
	.loc 6 34 3
	mov	rax, QWORD PTR -8[rbp]	# tmp101, entry
	mov	rsi, QWORD PTR [rax]	# _6, entry_17->D.4226.key
	mov	rax, QWORD PTR -8[rbp]	# tmp102, entry
	mov	edx, DWORD PTR 8[rax]	# tmp103, entry_17->value
	mov	rcx, QWORD PTR 16[rax]	# tmp104, entry_17->value
	mov	rax, QWORD PTR -40[rbp]	# tmp105, map
	mov	rdi, rax	#, tmp105
	call	MapPut	#
	jmp	.L90	#
.L92:
# std/map.h:33: 		if( !entry->key ){ continue; }
	.loc 6 33 22
	nop	
.L90:
.LBE7:
# std/map.h:30: 	for( U32 i = 0; i < old_max; i++ )
	.loc 6 30 32 discriminator 2
	add	DWORD PTR -24[rbp], 1	# i,
.L88:
# std/map.h:30: 	for( U32 i = 0; i < old_max; i++ )
	.loc 6 30 20 discriminator 1
	mov	eax, DWORD PTR -24[rbp]	# tmp106, i
	cmp	eax, DWORD PTR -20[rbp]	# tmp106, old_max
	jb	.L91	#,
.LBE6:
# std/map.h:36: 	free( entries );
	.loc 6 36 2
	mov	rax, QWORD PTR -16[rbp]	# tmp107, entries
	mov	rdi, rax	#, tmp107
	call	free@PLT	#
# std/map.h:37: }
	.loc 6 37 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE30:
	.size	MapGrow, .-MapGrow
	.globl	MapGet
	.type	MapGet, @function
MapGet:
.LFB31:
	.loc 6 40 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi	# map, map
	mov	QWORD PTR -32[rbp], rsi	# key, key
# std/map.h:41: 	U32 idx = key->hash & ( map->max - 1 );
	.loc 6 41 15
	mov	rax, QWORD PTR -32[rbp]	# tmp95, key
	mov	edx, DWORD PTR 8[rax]	# _1, key_15(D)->hash
# std/map.h:41: 	U32 idx = key->hash & ( map->max - 1 );
	.loc 6 41 29
	mov	rax, QWORD PTR -24[rbp]	# tmp96, map
	mov	eax, DWORD PTR 12[rax]	# _2, map_16(D)->max
# std/map.h:41: 	U32 idx = key->hash & ( map->max - 1 );
	.loc 6 41 35
	sub	eax, 1	# _3,
# std/map.h:41: 	U32 idx = key->hash & ( map->max - 1 );
	.loc 6 41 6
	and	eax, edx	# tmp97, _1
	mov	DWORD PTR -12[rbp], eax	# idx, tmp97
.L97:
.LBB8:
# std/map.h:44: 		Entry *entry = &map->base[ idx ];
	.loc 6 44 22
	mov	rax, QWORD PTR -24[rbp]	# tmp98, map
	mov	rcx, QWORD PTR [rax]	# _4, map_16(D)->base
# std/map.h:44: 		Entry *entry = &map->base[ idx ];
	.loc 6 44 28
	mov	edx, DWORD PTR -12[rbp]	# _5, idx
	mov	rax, rdx	# tmp99, _5
	add	rax, rax	# tmp99
	add	rax, rdx	# tmp99, _5
	sal	rax, 3	# tmp100,
# std/map.h:44: 		Entry *entry = &map->base[ idx ];
	.loc 6 44 10
	add	rax, rcx	# tmp101, _4
	mov	QWORD PTR -8[rbp], rax	# entry, tmp101
# std/map.h:45: 		if( !entry->key ){ return entry; }
	.loc 6 45 13
	mov	rax, QWORD PTR -8[rbp]	# tmp102, entry
	mov	rax, QWORD PTR [rax]	# _7, entry_18->D.4226.key
# std/map.h:45: 		if( !entry->key ){ return entry; }
	.loc 6 45 5
	test	rax, rax	# _7
	jne	.L94	#,
# std/map.h:45: 		if( !entry->key ){ return entry; }
	.loc 6 45 29 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# _13, entry
# std/map.h:45: 		if( !entry->key ){ return entry; }
	.loc 6 45 29 is_stmt 0
	jmp	.L95	#
.L94:
# std/map.h:46: 		if( entry->key == key ){ return entry; }
	.loc 6 46 12 is_stmt 1
	mov	rax, QWORD PTR -8[rbp]	# tmp103, entry
	mov	rax, QWORD PTR [rax]	# _8, entry_18->D.4226.key
# std/map.h:46: 		if( entry->key == key ){ return entry; }
	.loc 6 46 5
	cmp	QWORD PTR -32[rbp], rax	# key, _8
	jne	.L96	#,
# std/map.h:46: 		if( entry->key == key ){ return entry; }
	.loc 6 46 35 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# _13, entry
# std/map.h:46: 		if( entry->key == key ){ return entry; }
	.loc 6 46 35 is_stmt 0
	jmp	.L95	#
.L96:
.LBE8:
# std/map.h:42: 	for( ;; idx = ( idx + 1 ) & ( map->max - 1 ) )
	.loc 6 42 22 is_stmt 1
	mov	eax, DWORD PTR -12[rbp]	# tmp104, idx
	lea	edx, 1[rax]	# _9,
# std/map.h:42: 	for( ;; idx = ( idx + 1 ) & ( map->max - 1 ) )
	.loc 6 42 35
	mov	rax, QWORD PTR -24[rbp]	# tmp105, map
	mov	eax, DWORD PTR 12[rax]	# _10, map_16(D)->max
# std/map.h:42: 	for( ;; idx = ( idx + 1 ) & ( map->max - 1 ) )
	.loc 6 42 41
	sub	eax, 1	# _11,
# std/map.h:42: 	for( ;; idx = ( idx + 1 ) & ( map->max - 1 ) )
	.loc 6 42 14
	and	eax, edx	# tmp106, _9
	mov	DWORD PTR -12[rbp], eax	# idx, tmp106
# std/map.h:43: 	{
	.loc 6 43 2
	jmp	.L97	#
.L95:
# std/map.h:49: }
	.loc 6 49 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE31:
	.size	MapGet, .-MapGet
	.globl	MapPut
	.type	MapPut, @function
MapPut:
.LFB32:
	.loc 6 52 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# map, map
	mov	QWORD PTR -32[rbp], rsi	# key, key
	mov	eax, edx	# tmp90, value
	mov	rdx, rcx	#, tmp91
	mov	QWORD PTR -48[rbp], rax	# value, tmp89
	mov	QWORD PTR -40[rbp], rdx	# value,
# std/map.h:53: 	if( map->len > map->max ){ MapGrow( map ); }
	.loc 6 53 9
	mov	rax, QWORD PTR -24[rbp]	# tmp92, map
	mov	eax, DWORD PTR 8[rax]	# _1, map_10(D)->len
# std/map.h:53: 	if( map->len > map->max ){ MapGrow( map ); }
	.loc 6 53 20
	mov	rdx, QWORD PTR -24[rbp]	# tmp93, map
	mov	edx, DWORD PTR 12[rdx]	# _2, map_10(D)->max
# std/map.h:53: 	if( map->len > map->max ){ MapGrow( map ); }
	.loc 6 53 4
	cmp	edx, eax	# _2, _1
	jnb	.L99	#,
# std/map.h:53: 	if( map->len > map->max ){ MapGrow( map ); }
	.loc 6 53 29 discriminator 1
	mov	rax, QWORD PTR -24[rbp]	# tmp94, map
	mov	rdi, rax	#, tmp94
	call	MapGrow	#
.L99:
# std/map.h:54: 	Entry *entry = MapGet( map, key );
	.loc 6 54 17
	mov	rdx, QWORD PTR -32[rbp]	# tmp95, key
	mov	rax, QWORD PTR -24[rbp]	# tmp96, map
	mov	rsi, rdx	#, tmp95
	mov	rdi, rax	#, tmp96
	call	MapGet	#
	mov	QWORD PTR -8[rbp], rax	# entry, tmp97
# std/map.h:55: 	map->len += entry->key == NULL;
	.loc 6 55 5
	mov	rax, QWORD PTR -24[rbp]	# tmp98, map
	mov	edx, DWORD PTR 8[rax]	# _3, map_10(D)->len
# std/map.h:55: 	map->len += entry->key == NULL;
	.loc 6 55 19
	mov	rax, QWORD PTR -8[rbp]	# tmp99, entry
	mov	rax, QWORD PTR [rax]	# _4, entry_14->D.4226.key
# std/map.h:55: 	map->len += entry->key == NULL;
	.loc 6 55 25
	test	rax, rax	# _4
	sete	al	#, _5
	movzx	eax, al	# _6, _5
# std/map.h:55: 	map->len += entry->key == NULL;
	.loc 6 55 11
	add	edx, eax	# _7, _6
	mov	rax, QWORD PTR -24[rbp]	# tmp100, map
	mov	DWORD PTR 8[rax], edx	# map_10(D)->len, _7
# std/map.h:56: 	entry->key = key;
	.loc 6 56 13
	mov	rax, QWORD PTR -8[rbp]	# tmp101, entry
	mov	rdx, QWORD PTR -32[rbp]	# tmp102, key
	mov	QWORD PTR [rax], rdx	# entry_14->D.4226.key, tmp102
# std/map.h:57: 	entry->value = value;
	.loc 6 57 15
	mov	rcx, QWORD PTR -8[rbp]	# tmp103, entry
	mov	rax, QWORD PTR -48[rbp]	# tmp104, value
	mov	rdx, QWORD PTR -40[rbp]	#, value
	mov	QWORD PTR 8[rcx], rax	# entry_14->value, tmp104
	mov	QWORD PTR 16[rcx], rdx	# entry_14->value,
# std/map.h:58: }
	.loc 6 58 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE32:
	.size	MapPut, .-MapPut
	.globl	MapDel
	.type	MapDel, @function
MapDel:
.LFB33:
	.loc 6 61 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# map, map
	mov	QWORD PTR -32[rbp], rsi	# key, key
# std/map.h:62: 	Entry *entry = MapGet( map, key );
	.loc 6 62 17
	mov	rdx, QWORD PTR -32[rbp]	# tmp82, key
	mov	rax, QWORD PTR -24[rbp]	# tmp83, map
	mov	rsi, rdx	#, tmp82
	mov	rdi, rax	#, tmp83
	call	MapGet	#
	mov	QWORD PTR -8[rbp], rax	# entry, tmp84
# std/map.h:63: 	entry->key = NULL;
	.loc 6 63 13
	mov	rax, QWORD PTR -8[rbp]	# tmp85, entry
	mov	QWORD PTR [rax], 0	# entry_5->D.4226.key,
# std/map.h:64: }
	.loc 6 64 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE33:
	.size	MapDel, .-MapDel
	.type	GetEnv, @function
GetEnv:
.LFB34:
	.file 7 "std/env.h"
	.loc 7 17 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/env.h:19: 	return &env;
	.loc 7 19 9
	lea	rax, env.36[rip]	# _1,
# std/env.h:20: }
	.loc 7 20 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE34:
	.size	GetEnv, .-GetEnv
	.globl	EnvAlloc
	.type	EnvAlloc, @function
EnvAlloc:
.LFB35:
	.loc 7 23 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# env, env
	mov	DWORD PTR -12[rbp], esi	# max, max
# std/env.h:24: 	env->base = calloc( max, sizeof( Evar ) );
	.loc 7 24 14
	mov	eax, DWORD PTR -12[rbp]	# _1, max
	mov	esi, 8	#,
	mov	rdi, rax	#, _1
	call	calloc@PLT	#
	mov	rdx, rax	# _2, tmp84
# std/env.h:24: 	env->base = calloc( max, sizeof( Evar ) );
	.loc 7 24 12 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp85, env
	mov	QWORD PTR [rax], rdx	# env_6(D)->base, _2
# std/env.h:25: 	env->len = 0;
	.loc 7 25 11
	mov	rax, QWORD PTR -8[rbp]	# tmp86, env
	mov	DWORD PTR 8[rax], 0	# env_6(D)->len,
# std/env.h:26: 	env->max = max;
	.loc 7 26 11
	mov	rax, QWORD PTR -8[rbp]	# tmp87, env
	mov	edx, DWORD PTR -12[rbp]	# tmp88, max
	mov	DWORD PTR 12[rax], edx	# env_6(D)->max, tmp88
# std/env.h:27: }
	.loc 7 27 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE35:
	.size	EnvAlloc, .-EnvAlloc
	.globl	EnvGrow
	.type	EnvGrow, @function
EnvGrow:
.LFB36:
	.loc 7 30 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -56[rbp], rdi	# env, env
# std/env.h:31: 	Evar *vars = env->base;
	.loc 7 31 8
	mov	rax, QWORD PTR -56[rbp]	# tmp89, env
	mov	rax, QWORD PTR [rax]	# tmp90, env_12(D)->base
	mov	QWORD PTR -32[rbp], rax	# vars, tmp90
# std/env.h:32: 	U32 old_max = env->max;
	.loc 7 32 6
	mov	rax, QWORD PTR -56[rbp]	# tmp91, env
	mov	eax, DWORD PTR 12[rax]	# tmp92, env_12(D)->max
	mov	DWORD PTR -36[rbp], eax	# old_max, tmp92
# std/env.h:33: 	Arena *strings = GetStrings( );
	.loc 7 33 19
	call	GetStrings	#
	mov	QWORD PTR -24[rbp], rax	# strings, tmp93
# std/env.h:34: 	EnvAlloc( env, env->max << 1 );
	.loc 7 34 20
	mov	rax, QWORD PTR -56[rbp]	# tmp94, env
	mov	eax, DWORD PTR 12[rax]	# _1, env_12(D)->max
# std/env.h:34: 	EnvAlloc( env, env->max << 1 );
	.loc 7 34 2
	lea	edx, [rax+rax]	# _2,
	mov	rax, QWORD PTR -56[rbp]	# tmp95, env
	mov	esi, edx	#, _2
	mov	rdi, rax	#, tmp95
	call	EnvAlloc	#
.LBB9:
# std/env.h:35: 	for( U32 i = 0; i < old_max; i++ )
	.loc 7 35 11
	mov	DWORD PTR -40[rbp], 0	# i,
# std/env.h:35: 	for( U32 i = 0; i < old_max; i++ )
	.loc 7 35 2
	jmp	.L105	#
.L108:
.LBB10:
# std/env.h:37: 		Evar *var = &vars[ i ];
	.loc 7 37 20
	mov	eax, DWORD PTR -40[rbp]	# _3, i
	lea	rdx, 0[0+rax*8]	# _4,
# std/env.h:37: 		Evar *var = &vars[ i ];
	.loc 7 37 9
	mov	rax, QWORD PTR -32[rbp]	# tmp99, vars
	add	rax, rdx	# tmp98, _4
	mov	QWORD PTR -16[rbp], rax	# var, tmp98
# std/env.h:38: 		if( !var->off ){ continue; } /* skip empties */
	.loc 7 38 11
	mov	rax, QWORD PTR -16[rbp]	# tmp100, var
	mov	eax, DWORD PTR [rax]	# _5, var_20->off
# std/env.h:38: 		if( !var->off ){ continue; } /* skip empties */
	.loc 7 38 5
	test	eax, eax	# _5
	je	.L109	#,
# std/env.h:39: 		String *str = ArenaOff( strings, var->off );
	.loc 7 39 17
	mov	rax, QWORD PTR -16[rbp]	# tmp101, var
	mov	edx, DWORD PTR [rax]	# _6, var_20->off
	mov	rax, QWORD PTR -24[rbp]	# tmp102, strings
	mov	esi, edx	#, _6
	mov	rdi, rax	#, tmp102
	call	ArenaOff	#
	mov	QWORD PTR -8[rbp], rax	# str, tmp103
# std/env.h:40: 		EnvPut( env, str, var->idx );
	.loc 7 40 3
	mov	rax, QWORD PTR -16[rbp]	# tmp104, var
	mov	edx, DWORD PTR 4[rax]	# _7, var_20->idx
	mov	rcx, QWORD PTR -8[rbp]	# tmp105, str
	mov	rax, QWORD PTR -56[rbp]	# tmp106, env
	mov	rsi, rcx	#, tmp105
	mov	rdi, rax	#, tmp106
	call	EnvPut	#
	jmp	.L107	#
.L109:
# std/env.h:38: 		if( !var->off ){ continue; } /* skip empties */
	.loc 7 38 20
	nop	
.L107:
.LBE10:
# std/env.h:35: 	for( U32 i = 0; i < old_max; i++ )
	.loc 7 35 32 discriminator 2
	add	DWORD PTR -40[rbp], 1	# i,
.L105:
# std/env.h:35: 	for( U32 i = 0; i < old_max; i++ )
	.loc 7 35 20 discriminator 1
	mov	eax, DWORD PTR -40[rbp]	# tmp107, i
	cmp	eax, DWORD PTR -36[rbp]	# tmp107, old_max
	jb	.L108	#,
.LBE9:
# std/env.h:42: 	free( vars );
	.loc 7 42 2
	mov	rax, QWORD PTR -32[rbp]	# tmp108, vars
	mov	rdi, rax	#, tmp108
	call	free@PLT	#
# std/env.h:43: }
	.loc 7 43 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE36:
	.size	EnvGrow, .-EnvGrow
	.globl	EvarToVar
	.type	EvarToVar, @function
EvarToVar:
.LFB37:
	.loc 7 46 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 8	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -16[rbp], rdi	# evar, evar
# std/env.h:47: 	return VecGet( GetGlobals( ), evar->idx );
	.loc 7 47 9
	mov	rax, QWORD PTR -16[rbp]	# tmp86, evar
	mov	ebx, DWORD PTR 4[rax]	# _1, evar_4(D)->idx
	call	GetGlobals	#
# std/env.h:47: 	return VecGet( GetGlobals( ), evar->idx );
	.loc 7 47 9 is_stmt 0 discriminator 1
	mov	esi, ebx	#, _1
	mov	rdi, rax	#, _2
	call	VecGet	#
# std/env.h:48: }
	.loc 7 48 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE37:
	.size	EvarToVar, .-EvarToVar
	.globl	EnvGet
	.type	EnvGet, @function
EnvGet:
.LFB38:
	.loc 7 51 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi	# env, env
	mov	QWORD PTR -32[rbp], rsi	# name, name
# std/env.h:52: 	U32 idx = name->hash & ( env->max - 1 );
	.loc 7 52 16
	mov	rax, QWORD PTR -32[rbp]	# tmp96, name
	mov	edx, DWORD PTR 8[rax]	# _1, name_16(D)->hash
# std/env.h:52: 	U32 idx = name->hash & ( env->max - 1 );
	.loc 7 52 30
	mov	rax, QWORD PTR -24[rbp]	# tmp97, env
	mov	eax, DWORD PTR 12[rax]	# _2, env_17(D)->max
# std/env.h:52: 	U32 idx = name->hash & ( env->max - 1 );
	.loc 7 52 36
	sub	eax, 1	# _3,
# std/env.h:52: 	U32 idx = name->hash & ( env->max - 1 );
	.loc 7 52 6
	and	eax, edx	# tmp98, _1
	mov	DWORD PTR -12[rbp], eax	# idx, tmp98
.L116:
.LBB11:
# std/env.h:55: 		Evar *var = &env->base[ idx ];
	.loc 7 55 19
	mov	rax, QWORD PTR -24[rbp]	# tmp99, env
	mov	rax, QWORD PTR [rax]	# _4, env_17(D)->base
# std/env.h:55: 		Evar *var = &env->base[ idx ];
	.loc 7 55 25
	mov	edx, DWORD PTR -12[rbp]	# _5, idx
	sal	rdx, 3	# _6,
# std/env.h:55: 		Evar *var = &env->base[ idx ];
	.loc 7 55 9
	add	rax, rdx	# tmp100, _6
	mov	QWORD PTR -8[rbp], rax	# var, tmp100
# std/env.h:56: 		if( !var->off ){ return var; }
	.loc 7 56 11
	mov	rax, QWORD PTR -8[rbp]	# tmp101, var
	mov	eax, DWORD PTR [rax]	# _7, var_19->off
# std/env.h:56: 		if( !var->off ){ return var; }
	.loc 7 56 5
	test	eax, eax	# _7
	jne	.L113	#,
# std/env.h:56: 		if( !var->off ){ return var; }
	.loc 7 56 27 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# _14, var
# std/env.h:56: 		if( !var->off ){ return var; }
	.loc 7 56 27 is_stmt 0
	jmp	.L114	#
.L113:
# std/env.h:57: 		if( var->off == name->offset ){ return var; }
	.loc 7 57 10 is_stmt 1
	mov	rax, QWORD PTR -8[rbp]	# tmp102, var
	mov	edx, DWORD PTR [rax]	# _8, var_19->off
# std/env.h:57: 		if( var->off == name->offset ){ return var; }
	.loc 7 57 23
	mov	rax, QWORD PTR -32[rbp]	# tmp103, name
	mov	eax, DWORD PTR [rax]	# _9, name_16(D)->offset
# std/env.h:57: 		if( var->off == name->offset ){ return var; }
	.loc 7 57 5
	cmp	edx, eax	# _8, _9
	jne	.L115	#,
# std/env.h:57: 		if( var->off == name->offset ){ return var; }
	.loc 7 57 42 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# _14, var
# std/env.h:57: 		if( var->off == name->offset ){ return var; }
	.loc 7 57 42 is_stmt 0
	jmp	.L114	#
.L115:
.LBE11:
# std/env.h:53: 	for( ;; idx = ( idx + 1 ) & ( env->max - 1 ) )
	.loc 7 53 22 is_stmt 1
	mov	eax, DWORD PTR -12[rbp]	# tmp104, idx
	lea	edx, 1[rax]	# _10,
# std/env.h:53: 	for( ;; idx = ( idx + 1 ) & ( env->max - 1 ) )
	.loc 7 53 35
	mov	rax, QWORD PTR -24[rbp]	# tmp105, env
	mov	eax, DWORD PTR 12[rax]	# _11, env_17(D)->max
# std/env.h:53: 	for( ;; idx = ( idx + 1 ) & ( env->max - 1 ) )
	.loc 7 53 41
	sub	eax, 1	# _12,
# std/env.h:53: 	for( ;; idx = ( idx + 1 ) & ( env->max - 1 ) )
	.loc 7 53 14
	and	eax, edx	# tmp106, _10
	mov	DWORD PTR -12[rbp], eax	# idx, tmp106
# std/env.h:54: 	{
	.loc 7 54 2
	jmp	.L116	#
.L114:
# std/env.h:60: }
	.loc 7 60 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE38:
	.size	EnvGet, .-EnvGet
	.globl	EnvPut
	.type	EnvPut, @function
EnvPut:
.LFB39:
	.loc 7 63 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# env, env
	mov	QWORD PTR -32[rbp], rsi	# name, name
	mov	DWORD PTR -36[rbp], edx	# idx, idx
# std/env.h:64: 	if( env->len > env->max ){ EnvGrow( env ); }
	.loc 7 64 9
	mov	rax, QWORD PTR -24[rbp]	# tmp90, env
	mov	eax, DWORD PTR 8[rax]	# _1, env_11(D)->len
# std/env.h:64: 	if( env->len > env->max ){ EnvGrow( env ); }
	.loc 7 64 20
	mov	rdx, QWORD PTR -24[rbp]	# tmp91, env
	mov	edx, DWORD PTR 12[rdx]	# _2, env_11(D)->max
# std/env.h:64: 	if( env->len > env->max ){ EnvGrow( env ); }
	.loc 7 64 4
	cmp	edx, eax	# _2, _1
	jnb	.L118	#,
# std/env.h:64: 	if( env->len > env->max ){ EnvGrow( env ); }
	.loc 7 64 29 discriminator 1
	mov	rax, QWORD PTR -24[rbp]	# tmp92, env
	mov	rdi, rax	#, tmp92
	call	EnvGrow	#
.L118:
# std/env.h:65: 	Evar *var = EnvGet( env, name );
	.loc 7 65 14
	mov	rdx, QWORD PTR -32[rbp]	# tmp93, name
	mov	rax, QWORD PTR -24[rbp]	# tmp94, env
	mov	rsi, rdx	#, tmp93
	mov	rdi, rax	#, tmp94
	call	EnvGet	#
	mov	QWORD PTR -8[rbp], rax	# var, tmp95
# std/env.h:66: 	env->len += var->off == 0;
	.loc 7 66 5
	mov	rax, QWORD PTR -24[rbp]	# tmp96, env
	mov	edx, DWORD PTR 8[rax]	# _3, env_11(D)->len
# std/env.h:66: 	env->len += var->off == 0;
	.loc 7 66 17
	mov	rax, QWORD PTR -8[rbp]	# tmp97, var
	mov	eax, DWORD PTR [rax]	# _4, var_15->off
# std/env.h:66: 	env->len += var->off == 0;
	.loc 7 66 23
	test	eax, eax	# _4
	sete	al	#, _5
	movzx	eax, al	# _6, _5
# std/env.h:66: 	env->len += var->off == 0;
	.loc 7 66 11
	add	edx, eax	# _7, _6
	mov	rax, QWORD PTR -24[rbp]	# tmp98, env
	mov	DWORD PTR 8[rax], edx	# env_11(D)->len, _7
# std/env.h:67: 	var->off = name->offset;
	.loc 7 67 17
	mov	rax, QWORD PTR -32[rbp]	# tmp99, name
	mov	edx, DWORD PTR [rax]	# _8, name_13(D)->offset
# std/env.h:67: 	var->off = name->offset;
	.loc 7 67 11
	mov	rax, QWORD PTR -8[rbp]	# tmp100, var
	mov	DWORD PTR [rax], edx	# var_15->off, _8
# std/env.h:68: 	var->idx = idx;
	.loc 7 68 11
	mov	rax, QWORD PTR -8[rbp]	# tmp101, var
	mov	edx, DWORD PTR -36[rbp]	# tmp102, idx
	mov	DWORD PTR 4[rax], edx	# var_15->idx, tmp102
# std/env.h:69: }
	.loc 7 69 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE39:
	.size	EnvPut, .-EnvPut
	.globl	EnvDel
	.type	EnvDel, @function
EnvDel:
.LFB40:
	.loc 7 72 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# env, env
	mov	QWORD PTR -32[rbp], rsi	# name, name
# std/env.h:73: 	Evar *var = EnvGet( env, name );
	.loc 7 73 14
	mov	rdx, QWORD PTR -32[rbp]	# tmp82, name
	mov	rax, QWORD PTR -24[rbp]	# tmp83, env
	mov	rsi, rdx	#, tmp82
	mov	rdi, rax	#, tmp83
	call	EnvGet	#
	mov	QWORD PTR -8[rbp], rax	# var, tmp84
# std/env.h:74: 	if( !var ){ return; }
	.loc 7 74 4
	cmp	QWORD PTR -8[rbp], 0	# var,
	je	.L122	#,
# std/env.h:75: 	var->off = 0;
	.loc 7 75 11
	mov	rax, QWORD PTR -8[rbp]	# tmp85, var
	mov	DWORD PTR [rax], 0	# var_6->off,
	jmp	.L119	#
.L122:
# std/env.h:74: 	if( !var ){ return; }
	.loc 7 74 14
	nop	
.L119:
# std/env.h:76: }
	.loc 7 76 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE40:
	.size	EnvDel, .-EnvDel
	.type	GetJmp, @function
GetJmp:
.LFB41:
	.file 8 "std/err.h"
	.loc 8 2 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/err.h:4: 	return &buf;
	.loc 8 4 9
	lea	rax, buf.46[rip]	# _1,
# std/err.h:5: }
	.loc 8 5 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE41:
	.size	GetJmp, .-GetJmp
	.type	Throw, @function
Throw:
.LFB42:
	.loc 8 8 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 224	#,
	mov	QWORD PTR -216[rbp], rdi	# fmt, fmt
	mov	QWORD PTR -168[rbp], rsi	#,
	mov	QWORD PTR -160[rbp], rdx	#,
	mov	QWORD PTR -152[rbp], rcx	#,
	mov	QWORD PTR -144[rbp], r8	#,
	mov	QWORD PTR -136[rbp], r9	#,
	test	al, al	#
	je	.L126	#,
	movaps	XMMWORD PTR -128[rbp], xmm0	#,
	movaps	XMMWORD PTR -112[rbp], xmm1	#,
	movaps	XMMWORD PTR -96[rbp], xmm2	#,
	movaps	XMMWORD PTR -80[rbp], xmm3	#,
	movaps	XMMWORD PTR -64[rbp], xmm4	#,
	movaps	XMMWORD PTR -48[rbp], xmm5	#,
	movaps	XMMWORD PTR -32[rbp], xmm6	#,
	movaps	XMMWORD PTR -16[rbp], xmm7	#,
.L126:
# std/err.h:8: {
	.loc 8 8 1
	mov	rax, QWORD PTR fs:40	# tmp87, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -184[rbp], rax	# D.6514, tmp87
	xor	eax, eax	# tmp87
# std/err.h:10: 	va_start( args, fmt );
	.loc 8 10 2
	mov	DWORD PTR -208[rbp], 8	# MEM[(struct [1] *)&args].gp_offset,
	mov	DWORD PTR -204[rbp], 48	# MEM[(struct [1] *)&args].fp_offset,
	lea	rax, 16[rbp]	# tmp89,
	mov	QWORD PTR -200[rbp], rax	# MEM[(struct [1] *)&args].overflow_arg_area, tmp89
	lea	rax, -176[rbp]	# tmp90,
	mov	QWORD PTR -192[rbp], rax	# MEM[(struct [1] *)&args].reg_save_area, tmp90
# std/err.h:11: 	vfprintf( stderr, fmt, args );
	.loc 8 11 2
	mov	rax, QWORD PTR stderr[rip]	# stderr.2_1, stderr
	lea	rdx, -208[rbp]	# tmp85,
	mov	rcx, QWORD PTR -216[rbp]	# tmp86, fmt
	mov	rsi, rcx	#, tmp86
	mov	rdi, rax	#, stderr.2_1
	call	vfprintf@PLT	#
# std/err.h:13: 	longjmp( *GetJmp( ), 1 );
	.loc 8 13 12
	call	GetJmp	#
# std/err.h:13: 	longjmp( *GetJmp( ), 1 );
	.loc 8 13 2 discriminator 1
	mov	esi, 1	#,
	mov	rdi, rax	#, _2
	call	longjmp@PLT	#
	.cfi_endproc
.LFE42:
	.size	Throw, .-Throw
	.section	.rodata
.LC1:
	.string	"rb"
.LC2:
	.string	"File not found: %s\n"
	.text
	.type	IoRead, @function
IoRead:
.LFB43:
	.file 9 "std/io.h"
	.loc 9 2 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# src, src
	mov	QWORD PTR -48[rbp], rsi	# file, file
# std/io.h:3: 	FILE *stream = fopen( file, "rb" );
	.loc 9 3 17
	mov	rax, QWORD PTR -48[rbp]	# tmp86, file
	lea	rdx, .LC1[rip]	# tmp87,
	mov	rsi, rdx	#, tmp87
	mov	rdi, rax	#, tmp86
	call	fopen@PLT	#
	mov	QWORD PTR -32[rbp], rax	# stream, tmp88
# std/io.h:4: 	if( !stream ){ Throw( "File not found: %s\n", file ); }
	.loc 9 4 4
	cmp	QWORD PTR -32[rbp], 0	# stream,
	jne	.L129	#,
# std/io.h:4: 	if( !stream ){ Throw( "File not found: %s\n", file ); }
	.loc 9 4 17 discriminator 1
	mov	rax, QWORD PTR -48[rbp]	# tmp89, file
	mov	rsi, rax	#, tmp89
	lea	rax, .LC2[rip]	# tmp90,
	mov	rdi, rax	#, tmp90
	mov	eax, 0	#,
	call	Throw	#
.L129:
# std/io.h:5: 	fseek( stream, 0, SEEK_END );
	.loc 9 5 2
	mov	rax, QWORD PTR -32[rbp]	# tmp91, stream
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp91
	call	fseek@PLT	#
# std/io.h:6: 	long len = ftell( stream );
	.loc 9 6 13
	mov	rax, QWORD PTR -32[rbp]	# tmp92, stream
	mov	rdi, rax	#, tmp92
	call	ftell@PLT	#
	mov	QWORD PTR -24[rbp], rax	# len, tmp93
# std/io.h:7: 	fseek( stream, 0, SEEK_SET );
	.loc 9 7 2
	mov	rax, QWORD PTR -32[rbp]	# tmp94, stream
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp94
	call	fseek@PLT	#
# std/io.h:9: 	I8 *buf = ArenaOff( src, ArenaPush( src, len, 1 ) );
	.loc 9 9 12
	mov	rax, QWORD PTR -24[rbp]	# tmp95, len
	mov	ecx, eax	# _1, tmp95
	mov	rax, QWORD PTR -40[rbp]	# tmp96, src
	mov	edx, 1	#,
	mov	esi, ecx	#, _1
	mov	rdi, rax	#, tmp96
	call	ArenaPush	#
	mov	edx, eax	# _2,
# std/io.h:9: 	I8 *buf = ArenaOff( src, ArenaPush( src, len, 1 ) );
	.loc 9 9 12 is_stmt 0 discriminator 1
	mov	rax, QWORD PTR -40[rbp]	# tmp97, src
	mov	esi, edx	#, _2
	mov	rdi, rax	#, tmp97
	call	ArenaOff	#
	mov	QWORD PTR -16[rbp], rax	# buf, tmp98
# std/io.h:10: 	U64 bytes = fread( buf, sizeof( I8 ), len, stream );
	.loc 9 10 14 is_stmt 1
	mov	rdx, QWORD PTR -24[rbp]	# len.67_3, len
	mov	rcx, QWORD PTR -32[rbp]	# tmp99, stream
	mov	rax, QWORD PTR -16[rbp]	# tmp100, buf
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp100
	call	fread@PLT	#
	mov	QWORD PTR -8[rbp], rax	# bytes, tmp101
# std/io.h:11: 	buf[ bytes ] = '\0';
	.loc 9 11 5
	mov	rdx, QWORD PTR -16[rbp]	# tmp102, buf
	mov	rax, QWORD PTR -8[rbp]	# tmp103, bytes
	add	rax, rdx	# _4, tmp102
# std/io.h:11: 	buf[ bytes ] = '\0';
	.loc 9 11 15
	mov	BYTE PTR [rax], 0	# *_4,
# std/io.h:12: 	fclose( stream );
	.loc 9 12 2
	mov	rax, QWORD PTR -32[rbp]	# tmp104, stream
	mov	rdi, rax	#, tmp104
	call	fclose@PLT	#
# std/io.h:13: }
	.loc 9 13 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE43:
	.size	IoRead, .-IoRead
	.type	GetLexer, @function
GetLexer:
.LFB44:
	.file 10 "lexer/lexer.h"
	.loc 10 17 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# lexer/lexer.h:19: 	return &lexer;
	.loc 10 19 9
	lea	rax, lexer.47[rip]	# _1,
# lexer/lexer.h:20: }
	.loc 10 20 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE44:
	.size	GetLexer, .-GetLexer
	.type	LexerInit, @function
LexerInit:
.LFB45:
	.loc 10 23 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# src, src
	mov	QWORD PTR -32[rbp], rsi	# interns, interns
# lexer/lexer.h:24: 	Lexer *lexer = GetLexer( );
	.loc 10 24 17
	call	GetLexer	#
	mov	QWORD PTR -8[rbp], rax	# lexer, tmp84
# lexer/lexer.h:25: 	lexer->start = ( I8* )src->base;
	.loc 10 25 27
	mov	rax, QWORD PTR -24[rbp]	# tmp85, src
	mov	rdx, QWORD PTR [rax]	# _1, src_6(D)->base
# lexer/lexer.h:25: 	lexer->start = ( I8* )src->base;
	.loc 10 25 15
	mov	rax, QWORD PTR -8[rbp]	# tmp86, lexer
	mov	QWORD PTR [rax], rdx	# lexer_5->start, _1
# lexer/lexer.h:26: 	lexer->end = ( I8* )src->base;
	.loc 10 26 25
	mov	rax, QWORD PTR -24[rbp]	# tmp87, src
	mov	rdx, QWORD PTR [rax]	# _2, src_6(D)->base
# lexer/lexer.h:26: 	lexer->end = ( I8* )src->base;
	.loc 10 26 13
	mov	rax, QWORD PTR -8[rbp]	# tmp88, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_5->end, _2
# lexer/lexer.h:27: 	lexer->col = 1;
	.loc 10 27 13
	mov	rax, QWORD PTR -8[rbp]	# tmp89, lexer
	mov	DWORD PTR 20[rax], 1	# lexer_5->col,
# lexer/lexer.h:28: 	lexer->line = 1;
	.loc 10 28 14
	mov	rax, QWORD PTR -8[rbp]	# tmp90, lexer
	mov	DWORD PTR 16[rax], 1	# lexer_5->line,
# lexer/lexer.h:29: 	lexer->interns = interns;
	.loc 10 29 17
	mov	rax, QWORD PTR -8[rbp]	# tmp91, lexer
	mov	rdx, QWORD PTR -32[rbp]	# tmp92, interns
	mov	QWORD PTR 24[rax], rdx	# lexer_5->interns, tmp92
# lexer/lexer.h:30: }
	.loc 10 30 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE45:
	.size	LexerInit, .-LexerInit
	.type	LexReinit, @function
LexReinit:
.LFB46:
	.loc 10 33 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 24	#,
	mov	QWORD PTR -24[rbp], rdi	# src, src
# lexer/lexer.h:34: 	Lexer *lexer = GetLexer( );
	.loc 10 34 17
	call	GetLexer	#
	mov	QWORD PTR -8[rbp], rax	# lexer, tmp83
# lexer/lexer.h:35: 	lexer->end = lexer->start = src;
	.loc 10 35 28
	mov	rax, QWORD PTR -8[rbp]	# tmp84, lexer
	mov	rdx, QWORD PTR -24[rbp]	# tmp85, src
	mov	QWORD PTR [rax], rdx	# lexer_4->start, tmp85
# lexer/lexer.h:35: 	lexer->end = lexer->start = src;
	.loc 10 35 20
	mov	rax, QWORD PTR -8[rbp]	# tmp86, lexer
	mov	rdx, QWORD PTR [rax]	# _1, lexer_4->start
# lexer/lexer.h:35: 	lexer->end = lexer->start = src;
	.loc 10 35 13
	mov	rax, QWORD PTR -8[rbp]	# tmp87, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_4->end, _1
# lexer/lexer.h:36: }
	.loc 10 36 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE46:
	.size	LexReinit, .-LexReinit
	.type	LexSet, @function
LexSet:
.LFB47:
	.loc 10 39 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lexer, lexer
	mov	DWORD PTR -52[rbp], edx	# type, type
	mov	eax, ecx	# tmp90, off
	mov	edx, r8d	# tmp92, len
	mov	BYTE PTR -56[rbp], al	# off, tmp91
	mov	eax, edx	# tmp93, tmp92
	mov	BYTE PTR -60[rbp], al	# len, tmp93
# lexer/lexer.h:40: 	lexer->end += len;
	.loc 10 40 7
	mov	rax, QWORD PTR -48[rbp]	# tmp94, lexer
	mov	rdx, QWORD PTR 8[rax]	# _1, lexer_10(D)->end
# lexer/lexer.h:40: 	lexer->end += len;
	.loc 10 40 13
	movzx	eax, BYTE PTR -60[rbp]	# _2, len
	add	rdx, rax	# _3, _2
	mov	rax, QWORD PTR -48[rbp]	# tmp95, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_10(D)->end, _3
# lexer/lexer.h:41: 	lexer->col += len;
	.loc 10 41 7
	mov	rax, QWORD PTR -48[rbp]	# tmp96, lexer
	mov	edx, DWORD PTR 20[rax]	# _4, lexer_10(D)->col
# lexer/lexer.h:41: 	lexer->col += len;
	.loc 10 41 13
	movzx	eax, BYTE PTR -60[rbp]	# _5, len
	add	edx, eax	# _6, _5
	mov	rax, QWORD PTR -48[rbp]	# tmp97, lexer
	mov	DWORD PTR 20[rax], edx	# lexer_10(D)->col, _6
# lexer/lexer.h:42: 	return ( Token ){ .type = type + off };
	.loc 10 42 33
	movzx	edx, BYTE PTR -56[rbp]	# _7, off
	mov	eax, DWORD PTR -52[rbp]	# tmp98, type
	add	edx, eax	# _8, tmp98
# lexer/lexer.h:42: 	return ( Token ){ .type = type + off };
	.loc 10 42 9
	mov	rax, QWORD PTR -40[rbp]	# tmp99, .result_ptr
	pxor	xmm0, xmm0	# tmp100
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp100
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp100
	mov	rax, QWORD PTR -40[rbp]	# tmp101, .result_ptr
	mov	DWORD PTR [rax], edx	# <retval>.type, _8
# lexer/lexer.h:43: }
	.loc 10 43 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE47:
	.size	LexSet, .-LexSet
	.type	LexEof, @function
LexEof:
.LFB48:
	.loc 10 45 34
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:45: STIL Token LexEof( Lexer *lexer ){ return LexSet( lexer, TK_EOS, 0, 0 ); }
	.loc 10 45 34
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6521, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:45: STIL Token LexEof( Lexer *lexer ){ return LexSet( lexer, TK_EOS, 0, 0 ); }
	.loc 10 45 43
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:45: STIL Token LexEof( Lexer *lexer ){ return LexSet( lexer, TK_EOS, 0, 0 ); }
	.loc 10 45 74
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6521
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L138	#,
	call	__stack_chk_fail@PLT	#
.L138:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE48:
	.size	LexEof, .-LexEof
	.type	LexLine, @function
LexLine:
.LFB49:
	.loc 10 48 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# lexer, lexer
# lexer/lexer.h:49: 	lexer->line++;
	.loc 10 49 7
	mov	rax, QWORD PTR -8[rbp]	# tmp84, lexer
	mov	eax, DWORD PTR 16[rax]	# _1, lexer_4(D)->line
# lexer/lexer.h:49: 	lexer->line++;
	.loc 10 49 13
	lea	edx, 1[rax]	# _2,
	mov	rax, QWORD PTR -8[rbp]	# tmp85, lexer
	mov	DWORD PTR 16[rax], edx	# lexer_4(D)->line, _2
# lexer/lexer.h:50: 	lexer->col = 0; 
	.loc 10 50 13
	mov	rax, QWORD PTR -8[rbp]	# tmp86, lexer
	mov	DWORD PTR 20[rax], 0	# lexer_4(D)->col,
# lexer/lexer.h:51: }
	.loc 10 51 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE49:
	.size	LexLine, .-LexLine
	.type	LexNot, @function
LexNot:
.LFB50:
	.loc 10 54 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:54: {	/* ! != */
	.loc 10 54 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6524, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:55: 	U8 off = ( *lexer->end == '=' );
	.loc 10 55 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:55: 	U8 off = ( *lexer->end == '=' );
	.loc 10 55 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:55: 	U8 off = ( *lexer->end == '=' );
	.loc 10 55 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:55: 	U8 off = ( *lexer->end == '=' );
	.loc 10 55 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:56: 	return LexSet( lexer, TK_NOT, off, off );
	.loc 10 56 9
	movzx	ecx, BYTE PTR -9[rbp]	# _4, off
	movzx	edx, BYTE PTR -9[rbp]	# _5, off
	mov	rax, QWORD PTR -24[rbp]	# tmp88, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp89, lexer
	mov	r8d, ecx	#, _4
	mov	ecx, edx	#, _5
	mov	edx, 1	#,
	mov	rdi, rax	#, tmp88
	call	LexSet	#
# lexer/lexer.h:57: }
	.loc 10 57 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6524
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L142	#,
	call	__stack_chk_fail@PLT	#
.L142:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE50:
	.size	LexNot, .-LexNot
	.section	.rodata
.LC3:
	.string	"Unterminated String\n"
	.text
	.type	LexStr, @function
LexStr:
.LFB51:
	.loc 10 60 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -56[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -64[rbp], rsi	# lexer, lexer
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 10 61 7
	jmp	.L144	#
.L146:
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 10 61 51 discriminator 3
	mov	rax, QWORD PTR -64[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_25(D)->end
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 10 61 56 discriminator 3
	lea	rdx, 1[rax]	# _2,
	mov	rax, QWORD PTR -64[rbp]	# tmp104, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_25(D)->end, _2
.L144:
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 10 61 15 discriminator 1
	mov	rax, QWORD PTR -64[rbp]	# tmp105, lexer
	mov	rax, QWORD PTR 8[rax]	# _3, lexer_25(D)->end
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 10 61 9 discriminator 1
	movzx	eax, BYTE PTR [rax]	# _4, *_3
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 10 61 21 discriminator 1
	test	al, al	# _4
	je	.L145	#,
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 10 61 30 discriminator 2
	mov	rax, QWORD PTR -64[rbp]	# tmp106, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_25(D)->end
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 10 61 24 discriminator 2
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 10 61 21 discriminator 2
	cmp	al, 34	# _6,
	jne	.L146	#,
.L145:
# lexer/lexer.h:62: 	if( *lexer->end != '"' ){ Throw( "Unterminated String\n" ); }
	.loc 10 62 12
	mov	rax, QWORD PTR -64[rbp]	# tmp107, lexer
	mov	rax, QWORD PTR 8[rax]	# _7, lexer_25(D)->end
# lexer/lexer.h:62: 	if( *lexer->end != '"' ){ Throw( "Unterminated String\n" ); }
	.loc 10 62 6
	movzx	eax, BYTE PTR [rax]	# _8, *_7
# lexer/lexer.h:62: 	if( *lexer->end != '"' ){ Throw( "Unterminated String\n" ); }
	.loc 10 62 4
	cmp	al, 34	# _8,
	je	.L147	#,
# lexer/lexer.h:62: 	if( *lexer->end != '"' ){ Throw( "Unterminated String\n" ); }
	.loc 10 62 28 discriminator 1
	lea	rax, .LC3[rip]	# tmp108,
	mov	rdi, rax	#, tmp108
	mov	eax, 0	#,
	call	Throw	#
.L147:
# lexer/lexer.h:63: 	Token token = { .type = TK_STR };
	.loc 10 63 8
	pxor	xmm0, xmm0	# tmp109
	movaps	XMMWORD PTR -32[rbp], xmm0	# token, tmp109
	movq	QWORD PTR -16[rbp], xmm0	# token, tmp109
	mov	DWORD PTR -32[rbp], 56	# token.type,
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 10 64 19
	mov	rax, QWORD PTR -64[rbp]	# tmp110, lexer
	mov	rdx, QWORD PTR 8[rax]	# _9, lexer_25(D)->end
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 10 64 32
	mov	rax, QWORD PTR -64[rbp]	# tmp111, lexer
	mov	rax, QWORD PTR [rax]	# _10, lexer_25(D)->start
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 10 64 25
	sub	rdx, rax	# _11, _10
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 10 64 42
	mov	eax, edx	# _12, _11
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 10 64 6
	sub	eax, 1	# tmp112,
	mov	DWORD PTR -36[rbp], eax	# len, tmp112
# lexer/lexer.h:65: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 10 65 51
	mov	rax, QWORD PTR -64[rbp]	# tmp113, lexer
	mov	rax, QWORD PTR [rax]	# _13, lexer_25(D)->start
# lexer/lexer.h:65: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 10 65 20
	lea	rcx, 1[rax]	# _14,
	mov	rax, QWORD PTR -64[rbp]	# tmp114, lexer
	mov	rax, QWORD PTR 24[rax]	# _15, lexer_25(D)->interns
	mov	edx, DWORD PTR -36[rbp]	# tmp115, len
	mov	rsi, rcx	#, _14
	mov	rdi, rax	#, _15
	call	TablePut	#
# lexer/lexer.h:65: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 10 65 18 discriminator 1
	mov	QWORD PTR -16[rbp], rax	# token.value.D.4160.str, _16
# lexer/lexer.h:66: 	lexer->end++;
	.loc 10 66 7
	mov	rax, QWORD PTR -64[rbp]	# tmp116, lexer
	mov	rax, QWORD PTR 8[rax]	# _17, lexer_25(D)->end
# lexer/lexer.h:66: 	lexer->end++;
	.loc 10 66 12
	lea	rdx, 1[rax]	# _18,
	mov	rax, QWORD PTR -64[rbp]	# tmp117, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_25(D)->end, _18
# lexer/lexer.h:67: 	lexer->col += len + 2;
	.loc 10 67 7
	mov	rax, QWORD PTR -64[rbp]	# tmp118, lexer
	mov	edx, DWORD PTR 20[rax]	# _19, lexer_25(D)->col
# lexer/lexer.h:67: 	lexer->col += len + 2;
	.loc 10 67 13
	mov	eax, DWORD PTR -36[rbp]	# tmp119, len
	add	eax, edx	# _20, _19
	lea	edx, 2[rax]	# _21,
	mov	rax, QWORD PTR -64[rbp]	# tmp120, lexer
	mov	DWORD PTR 20[rax], edx	# lexer_25(D)->col, _21
# lexer/lexer.h:68: 	return token;
	.loc 10 68 9
	mov	rcx, QWORD PTR -56[rbp]	# tmp121, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp122, token
	mov	rdx, QWORD PTR -24[rbp]	#, token
	mov	QWORD PTR [rcx], rax	# <retval>, tmp122
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp123, token
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp123
# lexer/lexer.h:69: }
	.loc 10 69 1
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE51:
	.size	LexStr, .-LexStr
	.type	LexComment, @function
LexComment:
.LFB52:
	.loc 10 72 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# lexer, lexer
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 10 73 7
	jmp	.L150	#
.L152:
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 10 73 52 discriminator 3
	mov	rax, QWORD PTR -8[rbp]	# tmp90, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_11(D)->end
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 10 73 57 discriminator 3
	lea	rdx, 1[rax]	# _2,
	mov	rax, QWORD PTR -8[rbp]	# tmp91, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_11(D)->end, _2
.L150:
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 10 73 15 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _3, lexer_11(D)->end
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 10 73 9 discriminator 1
	movzx	eax, BYTE PTR [rax]	# _4, *_3
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 10 73 21 discriminator 1
	test	al, al	# _4
	je	.L151	#,
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 10 73 30 discriminator 2
	mov	rax, QWORD PTR -8[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_11(D)->end
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 10 73 24 discriminator 2
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 10 73 21 discriminator 2
	cmp	al, 10	# _6,
	jne	.L152	#,
.L151:
# lexer/lexer.h:74: 	lexer->line++;
	.loc 10 74 7
	mov	rax, QWORD PTR -8[rbp]	# tmp94, lexer
	mov	eax, DWORD PTR 16[rax]	# _7, lexer_11(D)->line
# lexer/lexer.h:74: 	lexer->line++;
	.loc 10 74 13
	lea	edx, 1[rax]	# _8,
	mov	rax, QWORD PTR -8[rbp]	# tmp95, lexer
	mov	DWORD PTR 16[rax], edx	# lexer_11(D)->line, _8
# lexer/lexer.h:75: 	lexer->col = 0;
	.loc 10 75 13
	mov	rax, QWORD PTR -8[rbp]	# tmp96, lexer
	mov	DWORD PTR 20[rax], 0	# lexer_11(D)->col,
# lexer/lexer.h:76: }
	.loc 10 76 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE52:
	.size	LexComment, .-LexComment
	.type	LexMod, @function
LexMod:
.LFB53:
	.loc 10 79 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:79: {	/* % %= */
	.loc 10 79 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6529, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:80: 	U8 off = ( *lexer->end == '=' );
	.loc 10 80 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:80: 	U8 off = ( *lexer->end == '=' );
	.loc 10 80 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:80: 	U8 off = ( *lexer->end == '=' );
	.loc 10 80 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:80: 	U8 off = ( *lexer->end == '=' );
	.loc 10 80 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:81: 	return LexSet( lexer, TK_MOD, off, off );
	.loc 10 81 9
	movzx	ecx, BYTE PTR -9[rbp]	# _4, off
	movzx	edx, BYTE PTR -9[rbp]	# _5, off
	mov	rax, QWORD PTR -24[rbp]	# tmp88, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp89, lexer
	mov	r8d, ecx	#, _4
	mov	ecx, edx	#, _5
	mov	edx, 16	#,
	mov	rdi, rax	#, tmp88
	call	LexSet	#
# lexer/lexer.h:82: }
	.loc 10 82 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6529
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L155	#,
	call	__stack_chk_fail@PLT	#
.L155:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE53:
	.size	LexMod, .-LexMod
	.type	LexBand, @function
LexBand:
.LFB54:
	.loc 10 85 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:85: {	/* & &= && */
	.loc 10 85 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6532, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 10 86 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 10 86 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 10 86 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 10 86 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 10 86 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 10 86 34
	cmp	al, 38	# _6,
	jne	.L157	#,
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 10 86 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.3_10,
	jmp	.L158	#
.L157:
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 10 86 34 discriminator 2
	mov	eax, 0	# iftmp.3_10,
.L158:
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 10 86 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:87: 	return LexSet( lexer, TK_BAND, off, off != 0 );
	.loc 10 87 9
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _7
	movzx	ecx, al	# _8, _7
	movzx	edx, BYTE PTR -9[rbp]	# _9, off
	mov	rax, QWORD PTR -24[rbp]	# tmp95, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp96, lexer
	mov	r8d, ecx	#, _8
	mov	ecx, edx	#, _9
	mov	edx, 18	#,
	mov	rdi, rax	#, tmp95
	call	LexSet	#
# lexer/lexer.h:88: }
	.loc 10 88 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6532
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L160	#,
	call	__stack_chk_fail@PLT	#
.L160:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE54:
	.size	LexBand, .-LexBand
	.type	LexLp, @function
LexLp:
.LFB55:
	.loc 10 90 33
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:90: STIL Token LexLp( Lexer *lexer ){ return LexSet( lexer, TK_LP, 0, 0 ); }
	.loc 10 90 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6535, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:90: STIL Token LexLp( Lexer *lexer ){ return LexSet( lexer, TK_LP, 0, 0 ); }
	.loc 10 90 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 36	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:90: STIL Token LexLp( Lexer *lexer ){ return LexSet( lexer, TK_LP, 0, 0 ); }
	.loc 10 90 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6535
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L163	#,
	call	__stack_chk_fail@PLT	#
.L163:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE55:
	.size	LexLp, .-LexLp
	.type	LexRp, @function
LexRp:
.LFB56:
	.loc 10 91 33
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:91: STIL Token LexRp( Lexer *lexer ){ return LexSet( lexer, TK_RP, 0, 0 ); }
	.loc 10 91 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6538, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:91: STIL Token LexRp( Lexer *lexer ){ return LexSet( lexer, TK_RP, 0, 0 ); }
	.loc 10 91 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 37	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:91: STIL Token LexRp( Lexer *lexer ){ return LexSet( lexer, TK_RP, 0, 0 ); }
	.loc 10 91 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6538
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L166	#,
	call	__stack_chk_fail@PLT	#
.L166:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE56:
	.size	LexRp, .-LexRp
	.type	LexMul, @function
LexMul:
.LFB57:
	.loc 10 94 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:94: {	/* * *= ** **= */
	.loc 10 94 1
	mov	rax, QWORD PTR fs:40	# tmp108, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6541, tmp108
	xor	eax, eax	# tmp108
# lexer/lexer.h:95: 	U8 off = ( *lexer->end == '=' )
	.loc 10 95 19
	mov	rax, QWORD PTR -32[rbp]	# tmp102, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_22(D)->end
# lexer/lexer.h:95: 	U8 off = ( *lexer->end == '=' )
	.loc 10 95 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:95: 	U8 off = ( *lexer->end == '=' )
	.loc 10 95 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 10 96 13
	mov	rax, QWORD PTR -32[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_22(D)->end
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 10 96 7
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 10 96 3
	cmp	al, 42	# _6,
	jne	.L168	#,
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 10 96 3 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.4_20,
	jmp	.L169	#
.L168:
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 10 96 3 discriminator 2
	mov	eax, 0	# iftmp.4_20,
.L169:
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 10 96 3 discriminator 4
	add	edx, eax	# _7, iftmp.4_20
# lexer/lexer.h:97: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 97 15 is_stmt 1
	mov	rax, QWORD PTR -32[rbp]	# tmp104, lexer
	mov	rax, QWORD PTR 8[rax]	# _8, lexer_22(D)->end
# lexer/lexer.h:97: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 97 21
	add	rax, 1	# _9,
# lexer/lexer.h:97: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 97 7
	movzx	eax, BYTE PTR [rax]	# _10, *_9
# lexer/lexer.h:97: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 97 27
	cmp	al, 61	# _10,
	sete	al	#, _11
# lexer/lexer.h:95: 	U8 off = ( *lexer->end == '=' )
	.loc 10 95 5
	add	eax, edx	# tmp105, _7
	mov	BYTE PTR -9[rbp], al	# off, tmp105
# lexer/lexer.h:98: 	return LexSet( lexer, TK_MUL, off, ( off != 0 ) + off > 2 );
	.loc 10 98 43
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _13
	movzx	edx, al	# _14, _13
# lexer/lexer.h:98: 	return LexSet( lexer, TK_MUL, off, ( off != 0 ) + off > 2 );
	.loc 10 98 50
	movzx	eax, BYTE PTR -9[rbp]	# _15, off
	add	eax, edx	# _16, _14
# lexer/lexer.h:98: 	return LexSet( lexer, TK_MUL, off, ( off != 0 ) + off > 2 );
	.loc 10 98 9
	cmp	eax, 2	# _16,
	setg	al	#, _17
	movzx	ecx, al	# _18, _17
	movzx	edx, BYTE PTR -9[rbp]	# _19, off
	mov	rax, QWORD PTR -24[rbp]	# tmp106, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp107, lexer
	mov	r8d, ecx	#, _18
	mov	ecx, edx	#, _19
	mov	edx, 10	#,
	mov	rdi, rax	#, tmp106
	call	LexSet	#
# lexer/lexer.h:99: }
	.loc 10 99 1
	mov	rax, QWORD PTR -8[rbp]	# tmp109, D.6541
	sub	rax, QWORD PTR fs:40	# tmp109, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L171	#,
	call	__stack_chk_fail@PLT	#
.L171:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE57:
	.size	LexMul, .-LexMul
	.type	LexAdd, @function
LexAdd:
.LFB58:
	.loc 10 102 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:102: {	/* +, +=, ++ */
	.loc 10 102 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6544, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 10 103 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 10 103 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 10 103 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 10 103 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 10 103 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 10 103 34
	cmp	al, 43	# _6,
	jne	.L173	#,
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 10 103 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.5_10,
	jmp	.L174	#
.L173:
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 10 103 34 discriminator 2
	mov	eax, 0	# iftmp.5_10,
.L174:
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 10 103 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:104: 	return LexSet( lexer, TK_ADD, off, off != 0 );
	.loc 10 104 9
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _7
	movzx	ecx, al	# _8, _7
	movzx	edx, BYTE PTR -9[rbp]	# _9, off
	mov	rax, QWORD PTR -24[rbp]	# tmp95, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp96, lexer
	mov	r8d, ecx	#, _8
	mov	ecx, edx	#, _9
	mov	edx, 4	#,
	mov	rdi, rax	#, tmp95
	call	LexSet	#
# lexer/lexer.h:105: }
	.loc 10 105 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6544
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L176	#,
	call	__stack_chk_fail@PLT	#
.L176:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE58:
	.size	LexAdd, .-LexAdd
	.type	LexComma, @function
LexComma:
.LFB59:
	.loc 10 107 36
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:107: STIL Token LexComma( Lexer *lexer ){ return LexSet( lexer, TK_COMMA, 0, 0 ); }
	.loc 10 107 36
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6547, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:107: STIL Token LexComma( Lexer *lexer ){ return LexSet( lexer, TK_COMMA, 0, 0 ); }
	.loc 10 107 45
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 52	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:107: STIL Token LexComma( Lexer *lexer ){ return LexSet( lexer, TK_COMMA, 0, 0 ); }
	.loc 10 107 78
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6547
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L179	#,
	call	__stack_chk_fail@PLT	#
.L179:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE59:
	.size	LexComma, .-LexComma
	.type	LexSub, @function
LexSub:
.LFB60:
	.loc 10 110 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:110: {	/* -, -=, -- */
	.loc 10 110 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6550, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 10 111 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 10 111 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 10 111 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 10 111 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 10 111 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 10 111 34
	cmp	al, 45	# _6,
	jne	.L181	#,
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 10 111 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.6_10,
	jmp	.L182	#
.L181:
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 10 111 34 discriminator 2
	mov	eax, 0	# iftmp.6_10,
.L182:
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 10 111 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:112: 	return LexSet( lexer, TK_SUB, off, off != 0 );
	.loc 10 112 9
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _7
	movzx	ecx, al	# _8, _7
	movzx	edx, BYTE PTR -9[rbp]	# _9, off
	mov	rax, QWORD PTR -24[rbp]	# tmp95, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp96, lexer
	mov	r8d, ecx	#, _8
	mov	ecx, edx	#, _9
	mov	edx, 7	#,
	mov	rdi, rax	#, tmp95
	call	LexSet	#
# lexer/lexer.h:113: }
	.loc 10 113 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6550
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L184	#,
	call	__stack_chk_fail@PLT	#
.L184:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE60:
	.size	LexSub, .-LexSub
	.type	LexDot, @function
LexDot:
.LFB61:
	.loc 10 115 34
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:115: STIL Token LexDot( Lexer *lexer ){ return LexSet( lexer, TK_DOT, 0, 0 ); }
	.loc 10 115 34
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6553, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:115: STIL Token LexDot( Lexer *lexer ){ return LexSet( lexer, TK_DOT, 0, 0 ); }
	.loc 10 115 43
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 42	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:115: STIL Token LexDot( Lexer *lexer ){ return LexSet( lexer, TK_DOT, 0, 0 ); }
	.loc 10 115 74
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6553
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L187	#,
	call	__stack_chk_fail@PLT	#
.L187:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE61:
	.size	LexDot, .-LexDot
	.type	LexDiv, @function
LexDiv:
.LFB62:
	.loc 10 118 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:118: {	/* /, /= */
	.loc 10 118 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6556, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:119: 	U8 off = ( *lexer->end == '=' );
	.loc 10 119 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:119: 	U8 off = ( *lexer->end == '=' );
	.loc 10 119 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:119: 	U8 off = ( *lexer->end == '=' );
	.loc 10 119 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:119: 	U8 off = ( *lexer->end == '=' );
	.loc 10 119 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:120: 	return LexSet( lexer, TK_DIV, off, off );
	.loc 10 120 9
	movzx	ecx, BYTE PTR -9[rbp]	# _4, off
	movzx	edx, BYTE PTR -9[rbp]	# _5, off
	mov	rax, QWORD PTR -24[rbp]	# tmp88, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp89, lexer
	mov	r8d, ecx	#, _4
	mov	ecx, edx	#, _5
	mov	edx, 14	#,
	mov	rdi, rax	#, tmp88
	call	LexSet	#
# lexer/lexer.h:121: }
	.loc 10 121 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6556
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L190	#,
	call	__stack_chk_fail@PLT	#
.L190:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE62:
	.size	LexDiv, .-LexDiv
	.section	.rodata
.LC4:
	.string	"Malformed Float\n"
	.text
	.type	LexNum, @function
LexNum:
.LFB63:
	.loc 10 124 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lexer, lexer
	mov	QWORD PTR -56[rbp], rdx	# NUM, NUM
	mov	QWORD PTR -64[rbp], rcx	# ascii, ascii
# lexer/lexer.h:125: 	Token token = { .type = TK_I64 };
	.loc 10 125 8
	pxor	xmm0, xmm0	# tmp114
	movaps	XMMWORD PTR -32[rbp], xmm0	# token, tmp114
	movq	QWORD PTR -16[rbp], xmm0	# token, tmp114
	mov	DWORD PTR -32[rbp], 54	# token.type,
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 126 7
	jmp	.L192	#
.L193:
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 126 52 discriminator 2
	mov	rax, QWORD PTR -48[rbp]	# tmp115, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_40(D)->end
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 126 57 discriminator 2
	lea	rdx, 1[rax]	# _2,
	mov	rax, QWORD PTR -48[rbp]	# tmp116, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_40(D)->end, _2
.L192:
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 126 29 discriminator 1
	mov	rax, QWORD PTR -48[rbp]	# tmp117, lexer
	mov	rax, QWORD PTR 8[rax]	# _3, lexer_40(D)->end
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 126 16 discriminator 1
	movzx	eax, BYTE PTR [rax]	# _4, MEM[(U8 *)_3]
	movzx	eax, al	# _5, _4
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 126 14 discriminator 1
	lea	rdx, 0[0+rax*8]	# _6,
	mov	rax, QWORD PTR -64[rbp]	# tmp118, ascii
	add	rax, rdx	# _7, _6
	mov	rax, QWORD PTR [rax]	# _8, *_7
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 126 37 discriminator 1
	cmp	QWORD PTR -56[rbp], rax	# NUM, _8
	je	.L193	#,
# lexer/lexer.h:127: 	if( *lexer->end != '.' )
	.loc 10 127 12
	mov	rax, QWORD PTR -48[rbp]	# tmp119, lexer
	mov	rax, QWORD PTR 8[rax]	# _9, lexer_40(D)->end
# lexer/lexer.h:127: 	if( *lexer->end != '.' )
	.loc 10 127 6
	movzx	eax, BYTE PTR [rax]	# _10, *_9
# lexer/lexer.h:127: 	if( *lexer->end != '.' )
	.loc 10 127 4
	cmp	al, 46	# _10,
	je	.L194	#,
# lexer/lexer.h:129: 		token.value.i64 = strtoll( lexer->start, &lexer->end, 10 );
	.loc 10 129 44
	mov	rax, QWORD PTR -48[rbp]	# tmp120, lexer
	lea	rcx, 8[rax]	# _11,
# lexer/lexer.h:129: 		token.value.i64 = strtoll( lexer->start, &lexer->end, 10 );
	.loc 10 129 35
	mov	rax, QWORD PTR -48[rbp]	# tmp121, lexer
	mov	rax, QWORD PTR [rax]	# _12, lexer_40(D)->start
# lexer/lexer.h:129: 		token.value.i64 = strtoll( lexer->start, &lexer->end, 10 );
	.loc 10 129 21
	mov	edx, 10	#,
	mov	rsi, rcx	#, _11
	mov	rdi, rax	#, _12
	call	__isoc23_strtoll@PLT	#
# lexer/lexer.h:129: 		token.value.i64 = strtoll( lexer->start, &lexer->end, 10 );
	.loc 10 129 19 discriminator 1
	mov	QWORD PTR -16[rbp], rax	# token.value.D.4160.i64, _13
# lexer/lexer.h:130: 		return token;
	.loc 10 130 10
	mov	rcx, QWORD PTR -40[rbp]	# tmp122, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp123, token
	mov	rdx, QWORD PTR -24[rbp]	#, token
	mov	QWORD PTR [rcx], rax	# <retval>, tmp123
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp124, token
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp124
	jmp	.L199	#
.L194:
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 10 132 28
	mov	rax, QWORD PTR -48[rbp]	# tmp125, lexer
	mov	rax, QWORD PTR 8[rax]	# _14, lexer_40(D)->end
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 10 132 14
	lea	rdx, 1[rax]	# _15,
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 10 132 4
	mov	rax, QWORD PTR -48[rbp]	# tmp126, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_40(D)->end, _15
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 10 132 28
	mov	rax, QWORD PTR -48[rbp]	# tmp127, lexer
	mov	rax, QWORD PTR 8[rax]	# _16, lexer_40(D)->end
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 10 132 13
	movzx	eax, BYTE PTR [rax]	# _17, MEM[(U8 *)_16]
	movzx	eax, al	# _18, _17
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 10 132 11
	lea	rdx, 0[0+rax*8]	# _19,
	mov	rax, QWORD PTR -64[rbp]	# tmp128, ascii
	add	rax, rdx	# _20, _19
	mov	rax, QWORD PTR [rax]	# _21, *_20
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 10 132 4
	cmp	QWORD PTR -56[rbp], rax	# NUM, _21
	je	.L197	#,
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 10 132 46 discriminator 1
	lea	rax, .LC4[rip]	# tmp129,
	mov	rdi, rax	#, tmp129
	mov	eax, 0	#,
	call	Throw	#
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 133 7
	jmp	.L197	#
.L198:
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 133 52 discriminator 2
	mov	rax, QWORD PTR -48[rbp]	# tmp130, lexer
	mov	rax, QWORD PTR 8[rax]	# _22, lexer_40(D)->end
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 133 57 discriminator 2
	lea	rdx, 1[rax]	# _23,
	mov	rax, QWORD PTR -48[rbp]	# tmp131, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_40(D)->end, _23
.L197:
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 133 29 discriminator 1
	mov	rax, QWORD PTR -48[rbp]	# tmp132, lexer
	mov	rax, QWORD PTR 8[rax]	# _24, lexer_40(D)->end
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 133 16 discriminator 1
	movzx	eax, BYTE PTR [rax]	# _25, MEM[(U8 *)_24]
	movzx	eax, al	# _26, _25
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 133 14 discriminator 1
	lea	rdx, 0[0+rax*8]	# _27,
	mov	rax, QWORD PTR -64[rbp]	# tmp133, ascii
	add	rax, rdx	# _28, _27
	mov	rax, QWORD PTR [rax]	# _29, *_28
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 133 37 discriminator 1
	cmp	QWORD PTR -56[rbp], rax	# NUM, _29
	je	.L198	#,
# lexer/lexer.h:134: 	token.value.f64 = strtod( lexer->start, &lexer->end );
	.loc 10 134 42
	mov	rax, QWORD PTR -48[rbp]	# tmp134, lexer
	lea	rdx, 8[rax]	# _30,
# lexer/lexer.h:134: 	token.value.f64 = strtod( lexer->start, &lexer->end );
	.loc 10 134 33
	mov	rax, QWORD PTR -48[rbp]	# tmp135, lexer
	mov	rax, QWORD PTR [rax]	# _31, lexer_40(D)->start
# lexer/lexer.h:134: 	token.value.f64 = strtod( lexer->start, &lexer->end );
	.loc 10 134 20
	mov	rsi, rdx	#, _30
	mov	rdi, rax	#, _31
	call	strtod@PLT	#
	movq	rax, xmm0	# _32,
# lexer/lexer.h:134: 	token.value.f64 = strtod( lexer->start, &lexer->end );
	.loc 10 134 18 discriminator 1
	mov	QWORD PTR -16[rbp], rax	# token.value.D.4160.f64, _32
# lexer/lexer.h:135: 	return token;
	.loc 10 135 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp136, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp137, token
	mov	rdx, QWORD PTR -24[rbp]	#, token
	mov	QWORD PTR [rcx], rax	# <retval>, tmp137
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp138, token
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp138
.L199:
# lexer/lexer.h:136: }
	.loc 10 136 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE63:
	.size	LexNum, .-LexNum
	.type	LexColon, @function
LexColon:
.LFB64:
	.loc 10 139 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:139: {	/* : :. :: */
	.loc 10 139 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6561, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 10 140 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 10 140 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 10 140 25
	cmp	al, 46	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 10 140 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 10 140 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 10 140 34
	cmp	al, 58	# _6,
	jne	.L201	#,
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 10 140 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.7_10,
	jmp	.L202	#
.L201:
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 10 140 34 discriminator 2
	mov	eax, 0	# iftmp.7_10,
.L202:
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 10 140 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:141: 	return LexSet( lexer, TK_COLON, off, off != 0 );
	.loc 10 141 9
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _7
	movzx	ecx, al	# _8, _7
	movzx	edx, BYTE PTR -9[rbp]	# _9, off
	mov	rax, QWORD PTR -24[rbp]	# tmp95, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp96, lexer
	mov	r8d, ecx	#, _8
	mov	ecx, edx	#, _9
	mov	edx, 49	#,
	mov	rdi, rax	#, tmp95
	call	LexSet	#
# lexer/lexer.h:142: }
	.loc 10 142 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6561
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L204	#,
	call	__stack_chk_fail@PLT	#
.L204:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE64:
	.size	LexColon, .-LexColon
	.type	LexSemi, @function
LexSemi:
.LFB65:
	.loc 10 145 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:145: {	/* ; ;. ;; */
	.loc 10 145 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6564, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 10 146 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 10 146 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 10 146 25
	cmp	al, 46	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 10 146 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 10 146 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 10 146 34
	cmp	al, 59	# _6,
	jne	.L206	#,
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 10 146 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.8_10,
	jmp	.L207	#
.L206:
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 10 146 34 discriminator 2
	mov	eax, 0	# iftmp.8_10,
.L207:
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 10 146 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:147: 	return LexSet( lexer, TK_SEMI, off, off != 0 );
	.loc 10 147 9
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _7
	movzx	ecx, al	# _8, _7
	movzx	edx, BYTE PTR -9[rbp]	# _9, off
	mov	rax, QWORD PTR -24[rbp]	# tmp95, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp96, lexer
	mov	r8d, ecx	#, _8
	mov	ecx, edx	#, _9
	mov	edx, 46	#,
	mov	rdi, rax	#, tmp95
	call	LexSet	#
# lexer/lexer.h:148: }
	.loc 10 148 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6564
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L209	#,
	call	__stack_chk_fail@PLT	#
.L209:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE65:
	.size	LexSemi, .-LexSemi
	.type	LexLt, @function
LexLt:
.LFB66:
	.loc 10 151 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:151: {	/* < <= << <<= */
	.loc 10 151 1
	mov	rax, QWORD PTR fs:40	# tmp108, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6567, tmp108
	xor	eax, eax	# tmp108
# lexer/lexer.h:152: 	U8 off = ( *lexer->end == '=' )
	.loc 10 152 19
	mov	rax, QWORD PTR -32[rbp]	# tmp102, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_22(D)->end
# lexer/lexer.h:152: 	U8 off = ( *lexer->end == '=' )
	.loc 10 152 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:152: 	U8 off = ( *lexer->end == '=' )
	.loc 10 152 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 10 153 13
	mov	rax, QWORD PTR -32[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_22(D)->end
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 10 153 7
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 10 153 3
	cmp	al, 60	# _6,
	jne	.L211	#,
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 10 153 3 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.9_20,
	jmp	.L212	#
.L211:
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 10 153 3 discriminator 2
	mov	eax, 0	# iftmp.9_20,
.L212:
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 10 153 3 discriminator 4
	add	edx, eax	# _7, iftmp.9_20
# lexer/lexer.h:154: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 154 15 is_stmt 1
	mov	rax, QWORD PTR -32[rbp]	# tmp104, lexer
	mov	rax, QWORD PTR 8[rax]	# _8, lexer_22(D)->end
# lexer/lexer.h:154: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 154 21
	add	rax, 1	# _9,
# lexer/lexer.h:154: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 154 7
	movzx	eax, BYTE PTR [rax]	# _10, *_9
# lexer/lexer.h:154: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 154 27
	cmp	al, 61	# _10,
	sete	al	#, _11
# lexer/lexer.h:152: 	U8 off = ( *lexer->end == '=' )
	.loc 10 152 5
	add	eax, edx	# tmp105, _7
	mov	BYTE PTR -9[rbp], al	# off, tmp105
# lexer/lexer.h:155: 	return LexSet( lexer, TK_LT, off, ( off != 0 ) + off > 2 );
	.loc 10 155 42
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _13
	movzx	edx, al	# _14, _13
# lexer/lexer.h:155: 	return LexSet( lexer, TK_LT, off, ( off != 0 ) + off > 2 );
	.loc 10 155 49
	movzx	eax, BYTE PTR -9[rbp]	# _15, off
	add	eax, edx	# _16, _14
# lexer/lexer.h:155: 	return LexSet( lexer, TK_LT, off, ( off != 0 ) + off > 2 );
	.loc 10 155 9
	cmp	eax, 2	# _16,
	setg	al	#, _17
	movzx	ecx, al	# _18, _17
	movzx	edx, BYTE PTR -9[rbp]	# _19, off
	mov	rax, QWORD PTR -24[rbp]	# tmp106, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp107, lexer
	mov	r8d, ecx	#, _18
	mov	ecx, edx	#, _19
	mov	edx, 28	#,
	mov	rdi, rax	#, tmp106
	call	LexSet	#
# lexer/lexer.h:156: }
	.loc 10 156 1
	mov	rax, QWORD PTR -8[rbp]	# tmp109, D.6567
	sub	rax, QWORD PTR fs:40	# tmp109, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L214	#,
	call	__stack_chk_fail@PLT	#
.L214:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE66:
	.size	LexLt, .-LexLt
	.type	LexEq, @function
LexEq:
.LFB67:
	.loc 10 159 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:159: { /* = == */
	.loc 10 159 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6570, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:160: 	U8 off = ( *lexer->end == '=' );
	.loc 10 160 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:160: 	U8 off = ( *lexer->end == '=' );
	.loc 10 160 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:160: 	U8 off = ( *lexer->end == '=' );
	.loc 10 160 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:160: 	U8 off = ( *lexer->end == '=' );
	.loc 10 160 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:161: 	return LexSet( lexer, TK_EQ, off, off );
	.loc 10 161 9
	movzx	ecx, BYTE PTR -9[rbp]	# _4, off
	movzx	edx, BYTE PTR -9[rbp]	# _5, off
	mov	rax, QWORD PTR -24[rbp]	# tmp88, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp89, lexer
	mov	r8d, ecx	#, _4
	mov	ecx, edx	#, _5
	mov	edx, 26	#,
	mov	rdi, rax	#, tmp88
	call	LexSet	#
# lexer/lexer.h:162: }
	.loc 10 162 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6570
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L217	#,
	call	__stack_chk_fail@PLT	#
.L217:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE67:
	.size	LexEq, .-LexEq
	.type	LexGt, @function
LexGt:
.LFB68:
	.loc 10 165 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:165: {	/* > >= >> >>= */
	.loc 10 165 1
	mov	rax, QWORD PTR fs:40	# tmp108, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6573, tmp108
	xor	eax, eax	# tmp108
# lexer/lexer.h:166: 	U8 off = ( *lexer->end == '=' )
	.loc 10 166 19
	mov	rax, QWORD PTR -32[rbp]	# tmp102, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_22(D)->end
# lexer/lexer.h:166: 	U8 off = ( *lexer->end == '=' )
	.loc 10 166 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:166: 	U8 off = ( *lexer->end == '=' )
	.loc 10 166 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 10 167 13
	mov	rax, QWORD PTR -32[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_22(D)->end
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 10 167 7
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 10 167 3
	cmp	al, 62	# _6,
	jne	.L219	#,
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 10 167 3 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.10_20,
	jmp	.L220	#
.L219:
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 10 167 3 discriminator 2
	mov	eax, 0	# iftmp.10_20,
.L220:
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 10 167 3 discriminator 4
	add	edx, eax	# _7, iftmp.10_20
# lexer/lexer.h:168: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 168 15 is_stmt 1
	mov	rax, QWORD PTR -32[rbp]	# tmp104, lexer
	mov	rax, QWORD PTR 8[rax]	# _8, lexer_22(D)->end
# lexer/lexer.h:168: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 168 21
	add	rax, 1	# _9,
# lexer/lexer.h:168: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 168 7
	movzx	eax, BYTE PTR [rax]	# _10, *_9
# lexer/lexer.h:168: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 10 168 27
	cmp	al, 61	# _10,
	sete	al	#, _11
# lexer/lexer.h:166: 	U8 off = ( *lexer->end == '=' )
	.loc 10 166 5
	add	eax, edx	# tmp105, _7
	mov	BYTE PTR -9[rbp], al	# off, tmp105
# lexer/lexer.h:169: 	return LexSet( lexer, TK_GT, off, ( off != 0 ) + off > 2 );
	.loc 10 169 42
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _13
	movzx	edx, al	# _14, _13
# lexer/lexer.h:169: 	return LexSet( lexer, TK_GT, off, ( off != 0 ) + off > 2 );
	.loc 10 169 49
	movzx	eax, BYTE PTR -9[rbp]	# _15, off
	add	eax, edx	# _16, _14
# lexer/lexer.h:169: 	return LexSet( lexer, TK_GT, off, ( off != 0 ) + off > 2 );
	.loc 10 169 9
	cmp	eax, 2	# _16,
	setg	al	#, _17
	movzx	ecx, al	# _18, _17
	movzx	edx, BYTE PTR -9[rbp]	# _19, off
	mov	rax, QWORD PTR -24[rbp]	# tmp106, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp107, lexer
	mov	r8d, ecx	#, _18
	mov	ecx, edx	#, _19
	mov	edx, 32	#,
	mov	rdi, rax	#, tmp106
	call	LexSet	#
# lexer/lexer.h:170: }
	.loc 10 170 1
	mov	rax, QWORD PTR -8[rbp]	# tmp109, D.6573
	sub	rax, QWORD PTR fs:40	# tmp109, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L222	#,
	call	__stack_chk_fail@PLT	#
.L222:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE68:
	.size	LexGt, .-LexGt
	.type	LexReturn, @function
LexReturn:
.LFB69:
	.loc 10 172 37
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:172: STIL Token LexReturn( Lexer *lexer ){ return LexSet( lexer, TK_RET, 0, 0 ); }
	.loc 10 172 37
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6576, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:172: STIL Token LexReturn( Lexer *lexer ){ return LexSet( lexer, TK_RET, 0, 0 ); }
	.loc 10 172 46
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 53	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:172: STIL Token LexReturn( Lexer *lexer ){ return LexSet( lexer, TK_RET, 0, 0 ); }
	.loc 10 172 77
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6576
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L225	#,
	call	__stack_chk_fail@PLT	#
.L225:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE69:
	.size	LexReturn, .-LexReturn
	.type	LexId, @function
LexId:
.LFB70:
	.loc 10 175 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 96	#,
	mov	QWORD PTR -56[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -64[rbp], rsi	# lexer, lexer
	mov	QWORD PTR -72[rbp], rdx	# ID, ID
	mov	QWORD PTR -80[rbp], rcx	# NUM, NUM
	mov	QWORD PTR -88[rbp], r8	# ascii, ascii
# lexer/lexer.h:176: 	while( ascii[ *( U8* )lexer->end ] == ID
	.loc 10 176 7
	jmp	.L227	#
.L228:
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 177 49 discriminator 4
	mov	rax, QWORD PTR -64[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_24(D)->end
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 177 54 discriminator 4
	lea	rdx, 1[rax]	# _2,
	mov	rax, QWORD PTR -64[rbp]	# tmp104, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_24(D)->end, _2
.L227:
# lexer/lexer.h:176: 	while( ascii[ *( U8* )lexer->end ] == ID
	.loc 10 176 29
	mov	rax, QWORD PTR -64[rbp]	# tmp105, lexer
	mov	rax, QWORD PTR 8[rax]	# _3, lexer_24(D)->end
# lexer/lexer.h:176: 	while( ascii[ *( U8* )lexer->end ] == ID
	.loc 10 176 16
	movzx	eax, BYTE PTR [rax]	# _4, MEM[(U8 *)_3]
	movzx	eax, al	# _5, _4
# lexer/lexer.h:176: 	while( ascii[ *( U8* )lexer->end ] == ID
	.loc 10 176 14
	lea	rdx, 0[0+rax*8]	# _6,
	mov	rax, QWORD PTR -88[rbp]	# tmp106, ascii
	add	rax, rdx	# _7, _6
	mov	rax, QWORD PTR [rax]	# _8, *_7
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 177 3 discriminator 1
	cmp	QWORD PTR -72[rbp], rax	# ID, _8
	je	.L228	#,
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 177 26 discriminator 3
	mov	rax, QWORD PTR -64[rbp]	# tmp107, lexer
	mov	rax, QWORD PTR 8[rax]	# _9, lexer_24(D)->end
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 177 13 discriminator 3
	movzx	eax, BYTE PTR [rax]	# _10, MEM[(U8 *)_9]
	movzx	eax, al	# _11, _10
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 177 11 discriminator 3
	lea	rdx, 0[0+rax*8]	# _12,
	mov	rax, QWORD PTR -88[rbp]	# tmp108, ascii
	add	rax, rdx	# _13, _12
	mov	rax, QWORD PTR [rax]	# _14, *_13
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 10 177 3 discriminator 3
	cmp	QWORD PTR -80[rbp], rax	# NUM, _14
	je	.L228	#,
# lexer/lexer.h:178: 	U32 len = lexer->end - lexer->start;
	.loc 10 178 17
	mov	rax, QWORD PTR -64[rbp]	# tmp109, lexer
	mov	rdx, QWORD PTR 8[rax]	# _15, lexer_24(D)->end
# lexer/lexer.h:178: 	U32 len = lexer->end - lexer->start;
	.loc 10 178 30
	mov	rax, QWORD PTR -64[rbp]	# tmp110, lexer
	mov	rax, QWORD PTR [rax]	# _16, lexer_24(D)->start
# lexer/lexer.h:178: 	U32 len = lexer->end - lexer->start;
	.loc 10 178 23
	sub	rdx, rax	# _17, _16
# lexer/lexer.h:178: 	U32 len = lexer->end - lexer->start;
	.loc 10 178 6
	mov	DWORD PTR -36[rbp], edx	# len, _17
# lexer/lexer.h:179: 	Token token = { .type = TK_ID };
	.loc 10 179 8
	pxor	xmm0, xmm0	# tmp111
	movaps	XMMWORD PTR -32[rbp], xmm0	# token, tmp111
	movq	QWORD PTR -16[rbp], xmm0	# token, tmp111
	mov	DWORD PTR -32[rbp], 57	# token.type,
# lexer/lexer.h:180: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 10 180 51
	mov	rax, QWORD PTR -64[rbp]	# tmp112, lexer
	mov	rax, QWORD PTR [rax]	# _18, lexer_24(D)->start
# lexer/lexer.h:180: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 10 180 20
	lea	rcx, 1[rax]	# _19,
	mov	rax, QWORD PTR -64[rbp]	# tmp113, lexer
	mov	rax, QWORD PTR 24[rax]	# _20, lexer_24(D)->interns
	mov	edx, DWORD PTR -36[rbp]	# tmp114, len
	mov	rsi, rcx	#, _19
	mov	rdi, rax	#, _20
	call	TablePut	#
# lexer/lexer.h:180: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 10 180 18 discriminator 1
	mov	QWORD PTR -16[rbp], rax	# token.value.D.4160.str, _21
# lexer/lexer.h:181: 	return token;
	.loc 10 181 9
	mov	rcx, QWORD PTR -56[rbp]	# tmp115, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp116, token
	mov	rdx, QWORD PTR -24[rbp]	#, token
	mov	QWORD PTR [rcx], rax	# <retval>, tmp116
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp117, token
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp117
# lexer/lexer.h:182: }
	.loc 10 182 1
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE70:
	.size	LexId, .-LexId
	.type	LexLs, @function
LexLs:
.LFB71:
	.loc 10 184 33
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:184: STIL Token LexLs( Lexer *lexer ){ return LexSet( lexer, TK_LS, 0, 0 ); }
	.loc 10 184 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6580, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:184: STIL Token LexLs( Lexer *lexer ){ return LexSet( lexer, TK_LS, 0, 0 ); }
	.loc 10 184 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 38	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:184: STIL Token LexLs( Lexer *lexer ){ return LexSet( lexer, TK_LS, 0, 0 ); }
	.loc 10 184 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6580
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L232	#,
	call	__stack_chk_fail@PLT	#
.L232:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE71:
	.size	LexLs, .-LexLs
	.type	LexRs, @function
LexRs:
.LFB72:
	.loc 10 185 33
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:185: STIL Token LexRs( Lexer *lexer ){ return LexSet( lexer, TK_RS, 0, 0 ); }
	.loc 10 185 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6583, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:185: STIL Token LexRs( Lexer *lexer ){ return LexSet( lexer, TK_RS, 0, 0 ); }
	.loc 10 185 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 39	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:185: STIL Token LexRs( Lexer *lexer ){ return LexSet( lexer, TK_RS, 0, 0 ); }
	.loc 10 185 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6583
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L235	#,
	call	__stack_chk_fail@PLT	#
.L235:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE72:
	.size	LexRs, .-LexRs
	.type	LexBxor, @function
LexBxor:
.LFB73:
	.loc 10 188 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:188: { /* ^ ^= */
	.loc 10 188 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6586, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:189: 	U8 off = ( *lexer->end == '=' );
	.loc 10 189 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:189: 	U8 off = ( *lexer->end == '=' );
	.loc 10 189 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:189: 	U8 off = ( *lexer->end == '=' );
	.loc 10 189 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:189: 	U8 off = ( *lexer->end == '=' );
	.loc 10 189 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:190: 	return LexSet( lexer, TK_BXOR, off, off );
	.loc 10 190 9
	movzx	ecx, BYTE PTR -9[rbp]	# _4, off
	movzx	edx, BYTE PTR -9[rbp]	# _5, off
	mov	rax, QWORD PTR -24[rbp]	# tmp88, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp89, lexer
	mov	r8d, ecx	#, _4
	mov	ecx, edx	#, _5
	mov	edx, 24	#,
	mov	rdi, rax	#, tmp88
	call	LexSet	#
# lexer/lexer.h:191: }
	.loc 10 191 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6586
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L238	#,
	call	__stack_chk_fail@PLT	#
.L238:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE73:
	.size	LexBxor, .-LexBxor
	.type	LexBnot, @function
LexBnot:
.LFB74:
	.loc 10 193 35
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:193: STIL Token LexBnot( Lexer *lexer ){ return LexSet( lexer, TK_BNOT, 0, 0 ); }
	.loc 10 193 35
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6589, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:193: STIL Token LexBnot( Lexer *lexer ){ return LexSet( lexer, TK_BNOT, 0, 0 ); }
	.loc 10 193 44
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 3	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:193: STIL Token LexBnot( Lexer *lexer ){ return LexSet( lexer, TK_BNOT, 0, 0 ); }
	.loc 10 193 76
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6589
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L241	#,
	call	__stack_chk_fail@PLT	#
.L241:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE74:
	.size	LexBnot, .-LexBnot
	.type	LexLc, @function
LexLc:
.LFB75:
	.loc 10 194 33
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:194: STIL Token LexLc( Lexer *lexer ){ return LexSet( lexer, TK_LC, 0, 0 ); }
	.loc 10 194 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6592, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:194: STIL Token LexLc( Lexer *lexer ){ return LexSet( lexer, TK_LC, 0, 0 ); }
	.loc 10 194 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 40	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:194: STIL Token LexLc( Lexer *lexer ){ return LexSet( lexer, TK_LC, 0, 0 ); }
	.loc 10 194 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6592
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L244	#,
	call	__stack_chk_fail@PLT	#
.L244:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE75:
	.size	LexLc, .-LexLc
	.type	LexBor, @function
LexBor:
.LFB76:
	.loc 10 197 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:197: { /* | |= || */
	.loc 10 197 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6595, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 10 198 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 10 198 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 10 198 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 10 198 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 10 198 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 10 198 34
	cmp	al, 124	# _6,
	jne	.L246	#,
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 10 198 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.11_10,
	jmp	.L247	#
.L246:
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 10 198 34 discriminator 2
	mov	eax, 0	# iftmp.11_10,
.L247:
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 10 198 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:199: 	return LexSet( lexer, TK_BOR, off, off != 0 );
	.loc 10 199 9
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _7
	movzx	ecx, al	# _8, _7
	movzx	edx, BYTE PTR -9[rbp]	# _9, off
	mov	rax, QWORD PTR -24[rbp]	# tmp95, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp96, lexer
	mov	r8d, ecx	#, _8
	mov	ecx, edx	#, _9
	mov	edx, 21	#,
	mov	rdi, rax	#, tmp95
	call	LexSet	#
# lexer/lexer.h:200: }
	.loc 10 200 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6595
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L249	#,
	call	__stack_chk_fail@PLT	#
.L249:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE76:
	.size	LexBor, .-LexBor
	.type	LexRc, @function
LexRc:
.LFB77:
	.loc 10 202 33
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lexer, lexer
# lexer/lexer.h:202: STIL Token LexRc( Lexer *lexer ){ return LexSet( lexer, TK_RC, 0, 0 ); }
	.loc 10 202 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6598, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:202: STIL Token LexRc( Lexer *lexer ){ return LexSet( lexer, TK_RC, 0, 0 ); }
	.loc 10 202 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 41	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:202: STIL Token LexRc( Lexer *lexer ){ return LexSet( lexer, TK_RC, 0, 0 ); }
	.loc 10 202 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6598
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L252	#,
	call	__stack_chk_fail@PLT	#
.L252:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE77:
	.size	LexRc, .-LexRc
	.globl	Lex
	.type	Lex, @function
Lex:
.LFB78:
	.loc 10 205 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
# lexer/lexer.h:205: {
	.loc 10 205 1
	mov	rax, QWORD PTR fs:40	# tmp158, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6601, tmp158
	xor	eax, eax	# tmp158
# lexer/lexer.h:206: 	Lexer *lexer = GetLexer( );
	.loc 10 206 17
	call	GetLexer	#
	mov	QWORD PTR -16[rbp], rax	# lexer, tmp88
# lexer/lexer.h:208: 	lexer->start = lexer->end;
	.loc 10 208 22
	mov	rax, QWORD PTR -16[rbp]	# tmp89, lexer
	mov	rdx, QWORD PTR 8[rax]	# _1, lexer_12->end
# lexer/lexer.h:208: 	lexer->start = lexer->end;
	.loc 10 208 15
	mov	rax, QWORD PTR -16[rbp]	# tmp90, lexer
	mov	QWORD PTR [rax], rdx	# lexer_12->start, _1
.L254:
	endbr64	
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 10 209 33
	mov	rax, QWORD PTR -16[rbp]	# tmp91, lexer
	mov	rax, QWORD PTR 8[rax]	# _2, lexer_12->end
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 10 209 21
	lea	rcx, 1[rax]	# _4,
	mov	rdx, QWORD PTR -16[rbp]	# tmp92, lexer
	mov	QWORD PTR 8[rdx], rcx	# lexer_12->end, _4
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 10 209 20
	movzx	eax, BYTE PTR [rax]	# _5, MEM[(U8 *)_3]
	movzx	eax, al	# _6, _5
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 10 209 18
	cdqe
	lea	rdx, 0[0+rax*8]	# tmp94,
	lea	rax, ascii.48[rip]	# tmp95,
	mov	rax, QWORD PTR [rdx+rax]	# _7, ascii[_6]
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 10 209 7
	nop	
	jmp	rax	# _7
.L255:
	endbr64	
# lexer/ascii_labels.h:1: EOS: return LexEof( lexer );
	.file 11 "lexer/ascii_labels.h"
	.loc 11 1 13
	mov	rax, QWORD PTR -24[rbp]	# tmp96, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp97, lexer
	mov	rsi, rdx	#, tmp97
	mov	rdi, rax	#, tmp96
	call	LexEof	#
	jmp	.L256	#
.L257:
	endbr64	
# lexer/ascii_labels.h:2: LINE: LexLine( lexer ); goto LEX;
	.loc 11 2 7
	mov	rax, QWORD PTR -16[rbp]	# tmp98, lexer
	mov	rdi, rax	#, tmp98
	call	LexLine	#
# lexer/ascii_labels.h:2: LINE: LexLine( lexer ); goto LEX;
	.loc 11 2 25
	jmp	.L254	#
.L258:
	endbr64	
# lexer/ascii_labels.h:3: NOT: return LexNot( lexer );
	.loc 11 3 13
	mov	rax, QWORD PTR -24[rbp]	# tmp99, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp100, lexer
	mov	rsi, rdx	#, tmp100
	mov	rdi, rax	#, tmp99
	call	LexNot	#
	jmp	.L256	#
.L259:
	endbr64	
# lexer/ascii_labels.h:4: STR: return LexStr( lexer );
	.loc 11 4 13
	mov	rax, QWORD PTR -24[rbp]	# tmp101, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp102, lexer
	mov	rsi, rdx	#, tmp102
	mov	rdi, rax	#, tmp101
	call	LexStr	#
	jmp	.L256	#
.L260:
	endbr64	
# lexer/ascii_labels.h:5: COMMENT: LexComment( lexer ); goto LEX;
	.loc 11 5 10
	mov	rax, QWORD PTR -16[rbp]	# tmp103, lexer
	mov	rdi, rax	#, tmp103
	call	LexComment	#
# lexer/ascii_labels.h:5: COMMENT: LexComment( lexer ); goto LEX;
	.loc 11 5 31
	jmp	.L254	#
.L261:
	endbr64	
# lexer/ascii_labels.h:6: MOD: return LexMod( lexer );
	.loc 11 6 13
	mov	rax, QWORD PTR -24[rbp]	# tmp104, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp105, lexer
	mov	rsi, rdx	#, tmp105
	mov	rdi, rax	#, tmp104
	call	LexMod	#
	jmp	.L256	#
.L262:
	endbr64	
# lexer/ascii_labels.h:7: BAND: return LexBand( lexer );
	.loc 11 7 14
	mov	rax, QWORD PTR -24[rbp]	# tmp106, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp107, lexer
	mov	rsi, rdx	#, tmp107
	mov	rdi, rax	#, tmp106
	call	LexBand	#
	jmp	.L256	#
.L263:
	endbr64	
# lexer/ascii_labels.h:8: LP: return LexLp( lexer );
	.loc 11 8 12
	mov	rax, QWORD PTR -24[rbp]	# tmp108, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp109, lexer
	mov	rsi, rdx	#, tmp109
	mov	rdi, rax	#, tmp108
	call	LexLp	#
	jmp	.L256	#
.L264:
	endbr64	
# lexer/ascii_labels.h:9: RP: return LexRp( lexer );
	.loc 11 9 12
	mov	rax, QWORD PTR -24[rbp]	# tmp110, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp111, lexer
	mov	rsi, rdx	#, tmp111
	mov	rdi, rax	#, tmp110
	call	LexRp	#
	jmp	.L256	#
.L265:
	endbr64	
# lexer/ascii_labels.h:10: MUL: return LexMul( lexer );
	.loc 11 10 13
	mov	rax, QWORD PTR -24[rbp]	# tmp112, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp113, lexer
	mov	rsi, rdx	#, tmp113
	mov	rdi, rax	#, tmp112
	call	LexMul	#
	jmp	.L256	#
.L266:
	endbr64	
# lexer/ascii_labels.h:11: ADD: return LexAdd( lexer );
	.loc 11 11 13
	mov	rax, QWORD PTR -24[rbp]	# tmp114, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp115, lexer
	mov	rsi, rdx	#, tmp115
	mov	rdi, rax	#, tmp114
	call	LexAdd	#
	jmp	.L256	#
.L267:
	endbr64	
# lexer/ascii_labels.h:12: COMMA: return LexComma( lexer );
	.loc 11 12 15
	mov	rax, QWORD PTR -24[rbp]	# tmp116, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp117, lexer
	mov	rsi, rdx	#, tmp117
	mov	rdi, rax	#, tmp116
	call	LexComma	#
	jmp	.L256	#
.L268:
	endbr64	
# lexer/ascii_labels.h:13: SUB: return LexSub( lexer );
	.loc 11 13 13
	mov	rax, QWORD PTR -24[rbp]	# tmp118, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp119, lexer
	mov	rsi, rdx	#, tmp119
	mov	rdi, rax	#, tmp118
	call	LexSub	#
	jmp	.L256	#
.L269:
	endbr64	
# lexer/ascii_labels.h:14: DOT: return LexDot( lexer );
	.loc 11 14 13
	mov	rax, QWORD PTR -24[rbp]	# tmp120, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp121, lexer
	mov	rsi, rdx	#, tmp121
	mov	rdi, rax	#, tmp120
	call	LexDot	#
	jmp	.L256	#
.L270:
	endbr64	
# lexer/ascii_labels.h:15: DIV: return LexDiv( lexer );
	.loc 11 15 13
	mov	rax, QWORD PTR -24[rbp]	# tmp122, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp123, lexer
	mov	rsi, rdx	#, tmp123
	mov	rdi, rax	#, tmp122
	call	LexDiv	#
	jmp	.L256	#
.L271:
	endbr64	
# lexer/ascii_labels.h:16: NUM: return LexNum( lexer, &&NUM, ascii );
	.loc 11 16 13
	mov	rax, QWORD PTR -24[rbp]	# tmp124, .result_ptr
	mov	rsi, QWORD PTR -16[rbp]	# tmp125, lexer
	lea	rdx, ascii.48[rip]	# tmp126,
	mov	rcx, rdx	#, tmp126
	lea	rdx, .L271[rip]	# tmp127,
	mov	rdi, rax	#, tmp124
	call	LexNum	#
	jmp	.L256	#
.L272:
	endbr64	
# lexer/ascii_labels.h:17: COLON: return LexColon( lexer );
	.loc 11 17 15
	mov	rax, QWORD PTR -24[rbp]	# tmp128, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp129, lexer
	mov	rsi, rdx	#, tmp129
	mov	rdi, rax	#, tmp128
	call	LexColon	#
	jmp	.L256	#
.L273:
	endbr64	
# lexer/ascii_labels.h:18: SEMI: return LexSemi( lexer );
	.loc 11 18 14
	mov	rax, QWORD PTR -24[rbp]	# tmp130, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp131, lexer
	mov	rsi, rdx	#, tmp131
	mov	rdi, rax	#, tmp130
	call	LexSemi	#
	jmp	.L256	#
.L274:
	endbr64	
# lexer/ascii_labels.h:19: LT: return LexLt( lexer );
	.loc 11 19 12
	mov	rax, QWORD PTR -24[rbp]	# tmp132, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp133, lexer
	mov	rsi, rdx	#, tmp133
	mov	rdi, rax	#, tmp132
	call	LexLt	#
	jmp	.L256	#
.L275:
	endbr64	
# lexer/ascii_labels.h:20: EQ: return LexEq( lexer );
	.loc 11 20 12
	mov	rax, QWORD PTR -24[rbp]	# tmp134, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp135, lexer
	mov	rsi, rdx	#, tmp135
	mov	rdi, rax	#, tmp134
	call	LexEq	#
	jmp	.L256	#
.L276:
	endbr64	
# lexer/ascii_labels.h:21: GT: return LexGt( lexer );
	.loc 11 21 12
	mov	rax, QWORD PTR -24[rbp]	# tmp136, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp137, lexer
	mov	rsi, rdx	#, tmp137
	mov	rdi, rax	#, tmp136
	call	LexGt	#
	jmp	.L256	#
.L277:
	endbr64	
# lexer/ascii_labels.h:22: RET: return LexReturn( lexer );
	.loc 11 22 13
	mov	rax, QWORD PTR -24[rbp]	# tmp138, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp139, lexer
	mov	rsi, rdx	#, tmp139
	mov	rdi, rax	#, tmp138
	call	LexReturn	#
	jmp	.L256	#
.L278:
	endbr64	
# lexer/ascii_labels.h:23: ID: return LexId( lexer, &&ID, &&NUM, ascii );
	.loc 11 23 12
	mov	rax, QWORD PTR -24[rbp]	# tmp140, .result_ptr
	mov	rsi, QWORD PTR -16[rbp]	# tmp141, lexer
	lea	r8, ascii.48[rip]	#,
	lea	rdx, .L271[rip]	# tmp142,
	mov	rcx, rdx	#, tmp142
	lea	rdx, .L278[rip]	# tmp143,
	mov	rdi, rax	#, tmp140
	call	LexId	#
	jmp	.L256	#
.L279:
	endbr64	
# lexer/ascii_labels.h:24: LS: return LexLs( lexer );
	.loc 11 24 12
	mov	rax, QWORD PTR -24[rbp]	# tmp144, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp145, lexer
	mov	rsi, rdx	#, tmp145
	mov	rdi, rax	#, tmp144
	call	LexLs	#
	jmp	.L256	#
.L280:
	endbr64	
# lexer/ascii_labels.h:25: RS: return LexRs( lexer );
	.loc 11 25 12
	mov	rax, QWORD PTR -24[rbp]	# tmp146, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp147, lexer
	mov	rsi, rdx	#, tmp147
	mov	rdi, rax	#, tmp146
	call	LexRs	#
	jmp	.L256	#
.L281:
	endbr64	
# lexer/ascii_labels.h:26: BXOR: return LexBxor( lexer );
	.loc 11 26 14
	mov	rax, QWORD PTR -24[rbp]	# tmp148, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp149, lexer
	mov	rsi, rdx	#, tmp149
	mov	rdi, rax	#, tmp148
	call	LexBxor	#
	jmp	.L256	#
.L282:
	endbr64	
# lexer/ascii_labels.h:27: BNOT: return LexBnot( lexer );
	.loc 11 27 14
	mov	rax, QWORD PTR -24[rbp]	# tmp150, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp151, lexer
	mov	rsi, rdx	#, tmp151
	mov	rdi, rax	#, tmp150
	call	LexBnot	#
	jmp	.L256	#
.L283:
	endbr64	
# lexer/ascii_labels.h:28: LC: return LexLc( lexer );
	.loc 11 28 12
	mov	rax, QWORD PTR -24[rbp]	# tmp152, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp153, lexer
	mov	rsi, rdx	#, tmp153
	mov	rdi, rax	#, tmp152
	call	LexLc	#
	jmp	.L256	#
.L284:
	endbr64	
# lexer/ascii_labels.h:29: BOR: return LexBor( lexer );
	.loc 11 29 13
	mov	rax, QWORD PTR -24[rbp]	# tmp154, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp155, lexer
	mov	rsi, rdx	#, tmp155
	mov	rdi, rax	#, tmp154
	call	LexBor	#
	jmp	.L256	#
.L285:
	endbr64	
# lexer/ascii_labels.h:30: RC: return LexRc( lexer );
	.loc 11 30 12
	mov	rax, QWORD PTR -24[rbp]	# tmp156, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp157, lexer
	mov	rsi, rdx	#, tmp157
	mov	rdi, rax	#, tmp156
	call	LexRc	#
.L256:
# lexer/lexer.h:211: }
	.loc 10 211 1
	mov	rax, QWORD PTR -8[rbp]	# tmp159, D.6601
	sub	rax, QWORD PTR fs:40	# tmp159, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L286	#,
	call	__stack_chk_fail@PLT	#
.L286:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE78:
	.size	Lex, .-Lex
	.type	GetParser, @function
GetParser:
.LFB79:
	.file 12 "parser/parser.h"
	.loc 12 20 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# parser/parser.h:22: 	return &parser;
	.loc 12 22 9
	lea	rax, parser.42[rip]	# _1,
# parser/parser.h:23: }
	.loc 12 23 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE79:
	.size	GetParser, .-GetParser
	.globl	ParserInit
	.type	ParserInit, @function
ParserInit:
.LFB80:
	.loc 12 32 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# parser/parser.h:35: }
	.loc 12 35 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE80:
	.size	ParserInit, .-ParserInit
	.section	.rodata
.LC5:
	.string	"%ld\n"
.LC6:
	.string	"%f\n"
	.text
	.globl	ParseNodeLog
	.type	ParseNodeLog, @function
ParseNodeLog:
.LFB81:
	.loc 12 38 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# node, node
# parser/parser.h:40: 	if( node->type != PT_CONST ){ return; }
	.loc 12 40 10
	mov	rax, QWORD PTR -24[rbp]	# tmp89, node
	mov	eax, DWORD PTR [rax]	# _1, node_10(D)->type
# parser/parser.h:40: 	if( node->type != PT_CONST ){ return; }
	.loc 12 40 4
	test	eax, eax	# _1
	jne	.L297	#,
# parser/parser.h:41: 	goto *types[ node->value.type ];
	.loc 12 41 26
	mov	rax, QWORD PTR -24[rbp]	# tmp90, node
	mov	eax, DWORD PTR 8[rax]	# _2, node_10(D)->value.type
# parser/parser.h:41: 	goto *types[ node->value.type ];
	.loc 12 41 13
	mov	eax, eax	# tmp91, _2
	lea	rdx, 0[0+rax*8]	# tmp92,
	lea	rax, types.45[rip]	# tmp93,
	mov	rax, QWORD PTR [rdx+rax]	# _3, types[_2]
# parser/parser.h:41: 	goto *types[ node->value.type ];
	.loc 12 41 2
	nop	
	jmp	rax	# _3
.L294:
	endbr64	
# parser/parser.h:43: 		printf( "%ld\n", node->value.i64 );
	.loc 12 43 3
	mov	rax, QWORD PTR -24[rbp]	# tmp94, node
	mov	rax, QWORD PTR 16[rax]	# _4, node_10(D)->value.D.4160.i64
	mov	rsi, rax	#, _4
	lea	rax, .LC5[rip]	# tmp95,
	mov	rdi, rax	#, tmp95
	mov	eax, 0	#,
	call	printf@PLT	#
# parser/parser.h:44: 		return;
	.loc 12 44 3
	jmp	.L290	#
.L295:
	endbr64	
# parser/parser.h:46: 		printf( "%f\n", node->value.f64 );
	.loc 12 46 3
	mov	rax, QWORD PTR -24[rbp]	# tmp96, node
	mov	rax, QWORD PTR 16[rax]	# _5, node_10(D)->value.D.4160.f64
	movq	xmm0, rax	#, _5
	lea	rax, .LC6[rip]	# tmp97,
	mov	rdi, rax	#, tmp97
	mov	eax, 1	#,
	call	printf@PLT	#
# parser/parser.h:47: 		return;
	.loc 12 47 3
	jmp	.L290	#
.L296:
	endbr64	
# parser/parser.h:49: 		Arena *strings = GetStrings( );
	.loc 12 49 20
	call	GetStrings	#
	mov	QWORD PTR -16[rbp], rax	# strings, tmp98
# parser/parser.h:50: 		I8 *cstr = ArenaOff( strings, node->value.str->offset );
	.loc 12 50 44
	mov	rax, QWORD PTR -24[rbp]	# tmp99, node
	mov	rax, QWORD PTR 16[rax]	# _6, node_10(D)->value.D.4160.str
# parser/parser.h:50: 		I8 *cstr = ArenaOff( strings, node->value.str->offset );
	.loc 12 50 14
	mov	edx, DWORD PTR [rax]	# _7, _6->offset
	mov	rax, QWORD PTR -16[rbp]	# tmp100, strings
	mov	esi, edx	#, _7
	mov	rdi, rax	#, tmp100
	call	ArenaOff	#
	mov	QWORD PTR -8[rbp], rax	# cstr, tmp101
# parser/parser.h:51: 		printf( "%s\n", cstr );
	.loc 12 51 3
	mov	rax, QWORD PTR -8[rbp]	# tmp102, cstr
	mov	rdi, rax	#, tmp102
	call	puts@PLT	#
# parser/parser.h:52: 		return;
	.loc 12 52 3
	jmp	.L290	#
.L297:
# parser/parser.h:40: 	if( node->type != PT_CONST ){ return; }
	.loc 12 40 32
	nop	
.L290:
# parser/parser.h:53: }
	.loc 12 53 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE81:
	.size	ParseNodeLog, .-ParseNodeLog
	.section	.rodata
.LC7:
	.string	"Expected: %d Got: %d\n"
	.text
	.globl	ParseMatch
	.type	ParseMatch, @function
ParseMatch:
.LFB82:
	.loc 12 56 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 72	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -40[rbp], rdi	# parser, parser
	mov	DWORD PTR -44[rbp], esi	# type, type
# parser/parser.h:56: {
	.loc 12 56 1
	mov	rax, QWORD PTR fs:40	# tmp92, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -24[rbp], rax	# D.6633, tmp92
	xor	eax, eax	# tmp92
# parser/parser.h:57: 	if( type != parser->token.type )
	.loc 12 57 27
	mov	rax, QWORD PTR -40[rbp]	# tmp84, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_5(D)->token.type
# parser/parser.h:57: 	if( type != parser->token.type )
	.loc 12 57 4
	cmp	DWORD PTR -44[rbp], eax	# type, _1
	je	.L299	#,
# parser/parser.h:59: 		Throw( "Expected: %d Got: %d\n", type, parser->token.type );
	.loc 12 59 55
	mov	rax, QWORD PTR -40[rbp]	# tmp85, parser
	mov	edx, DWORD PTR [rax]	# _2, parser_5(D)->token.type
# parser/parser.h:59: 		Throw( "Expected: %d Got: %d\n", type, parser->token.type );
	.loc 12 59 3
	mov	eax, DWORD PTR -44[rbp]	# tmp86, type
	mov	esi, eax	#, tmp86
	lea	rax, .LC7[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	mov	eax, 0	#,
	call	Throw	#
.L299:
# parser/parser.h:61: 	parser->token = Lex( );
	.loc 12 61 18
	mov	rbx, QWORD PTR -40[rbp]	# tmp88, parser
	lea	rax, -80[rbp]	# tmp89,
	mov	rdi, rax	#, tmp89
	call	Lex	#
	mov	rax, QWORD PTR -80[rbp]	# tmp90,
	mov	rdx, QWORD PTR -72[rbp]	#,
	mov	QWORD PTR [rbx], rax	# parser_5(D)->token, tmp90
	mov	QWORD PTR 8[rbx], rdx	# parser_5(D)->token,
	mov	rax, QWORD PTR -64[rbp]	# tmp91,
	mov	QWORD PTR 16[rbx], rax	# parser_5(D)->token, tmp91
# parser/parser.h:62: }
	.loc 12 62 1
	nop	
	mov	rax, QWORD PTR -24[rbp]	# tmp93, D.6633
	sub	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L300	#,
	call	__stack_chk_fail@PLT	#
.L300:
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE82:
	.size	ParseMatch, .-ParseMatch
	.globl	ParseIf
	.type	ParseIf, @function
ParseIf:
.LFB83:
	.loc 12 67 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 80	#,
	mov	QWORD PTR -72[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -80[rbp], rsi	# parser, parser
# parser/parser.h:67: {
	.loc 12 67 1
	mov	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6637, tmp98
	xor	eax, eax	# tmp98
# parser/parser.h:68: 	ParseMatch( parser, TK_IF );
	.loc 12 68 2
	mov	rax, QWORD PTR -80[rbp]	# tmp85, parser
	mov	esi, 43	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:69: 	ParseNode cond = ParseExpr( parser, PREC_NONE );
	.loc 12 69 19
	lea	rax, -64[rbp]	# tmp86,
	mov	rcx, QWORD PTR -80[rbp]	# tmp87, parser
	mov	edx, 0	#,
	mov	rsi, rcx	#, tmp87
	mov	rdi, rax	#, tmp86
	call	ParseExpr	#
# parser/parser.h:71: 	ParseMatch( parser, TK_THEN );
	.loc 12 71 2
	mov	rax, QWORD PTR -80[rbp]	# tmp88, parser
	mov	esi, 50	#,
	mov	rdi, rax	#, tmp88
	call	ParseMatch	#
# parser/parser.h:73: 	for( ; parser->token.type; )
	.loc 12 73 2
	jmp	.L302	#
.L306:
.LBB12:
# parser/parser.h:75: 		ParseNode stmt = ParseStmt( parser );
	.loc 12 75 20
	lea	rax, -32[rbp]	# tmp89,
	mov	rdx, QWORD PTR -80[rbp]	# tmp90, parser
	mov	rsi, rdx	#, tmp90
	mov	rdi, rax	#, tmp89
	call	ParseStmt	#
# parser/parser.h:76: 		if( parser->token.type == TK_END ){ break; }
	.loc 12 76 20
	mov	rax, QWORD PTR -80[rbp]	# tmp91, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_8(D)->token.type
# parser/parser.h:76: 		if( parser->token.type == TK_END ){ break; }
	.loc 12 76 5
	cmp	eax, 51	# _1,
	je	.L309	#,
# parser/parser.h:77: 		if( parser->token.type == TK_ELSE )
	.loc 12 77 20
	mov	rax, QWORD PTR -80[rbp]	# tmp92, parser
	mov	eax, DWORD PTR [rax]	# _2, parser_8(D)->token.type
# parser/parser.h:77: 		if( parser->token.type == TK_ELSE )
	.loc 12 77 5
	cmp	eax, 45	# _2,
	jne	.L302	#,
# parser/parser.h:79: 			ParseMatch( parser, TK_ELSE );
	.loc 12 79 4
	mov	rax, QWORD PTR -80[rbp]	# tmp93, parser
	mov	esi, 45	#,
	mov	rdi, rax	#, tmp93
	call	ParseMatch	#
.L302:
.LBE12:
# parser/parser.h:73: 	for( ; parser->token.type; )
	.loc 12 73 22
	mov	rax, QWORD PTR -80[rbp]	# tmp94, parser
	mov	eax, DWORD PTR [rax]	# _3, parser_8(D)->token.type
# parser/parser.h:73: 	for( ; parser->token.type; )
	.loc 12 73 9
	test	eax, eax	# _3
	jne	.L306	#,
	jmp	.L304	#
.L309:
.LBB13:
# parser/parser.h:76: 		if( parser->token.type == TK_END ){ break; }
	.loc 12 76 39
	nop	
.L304:
.LBE13:
# parser/parser.h:83: 	ParseMatch( parser, TK_END );
	.loc 12 83 2
	mov	rax, QWORD PTR -80[rbp]	# tmp95, parser
	mov	esi, 51	#,
	mov	rdi, rax	#, tmp95
	call	ParseMatch	#
# parser/parser.h:84: 	return ( ParseNode ){ 0 };
	.loc 12 84 9
	mov	rax, QWORD PTR -72[rbp]	# tmp96, .result_ptr
	pxor	xmm0, xmm0	# tmp97
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp97
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp97
# parser/parser.h:85: }
	.loc 12 85 1
	mov	rax, QWORD PTR -8[rbp]	# tmp99, D.6637
	sub	rax, QWORD PTR fs:40	# tmp99, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L308	#,
	call	__stack_chk_fail@PLT	#
.L308:
	mov	rax, QWORD PTR -72[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE83:
	.size	ParseIf, .-ParseIf
	.globl	ParseFor
	.type	ParseFor, @function
ParseFor:
.LFB84:
	.loc 12 88 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:89: 	ParseMatch( parser, TK_FOR );
	.loc 12 89 2
	mov	rax, QWORD PTR -48[rbp]	# tmp82, parser
	mov	esi, 44	#,
	mov	rdi, rax	#, tmp82
	call	ParseMatch	#
# parser/parser.h:90: 	return ( ParseNode ){ 0 };	
	.loc 12 90 9
	mov	rax, QWORD PTR -40[rbp]	# tmp83, .result_ptr
	pxor	xmm0, xmm0	# tmp84
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp84
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp84
# parser/parser.h:91: }
	.loc 12 91 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE84:
	.size	ParseFor, .-ParseFor
	.globl	ParseDo
	.type	ParseDo, @function
ParseDo:
.LFB85:
	.loc 12 94 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:95: 	ParseMatch( parser, TK_DO );
	.loc 12 95 2
	mov	rax, QWORD PTR -48[rbp]	# tmp82, parser
	mov	esi, 47	#,
	mov	rdi, rax	#, tmp82
	call	ParseMatch	#
# parser/parser.h:96: 	return ( ParseNode ){ 0 };	
	.loc 12 96 9
	mov	rax, QWORD PTR -40[rbp]	# tmp83, .result_ptr
	pxor	xmm0, xmm0	# tmp84
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp84
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp84
# parser/parser.h:97: }
	.loc 12 97 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE85:
	.size	ParseDo, .-ParseDo
	.globl	ParseWhile
	.type	ParseWhile, @function
ParseWhile:
.LFB86:
	.loc 12 100 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:101: 	ParseMatch( parser, TK_WHILE );
	.loc 12 101 2
	mov	rax, QWORD PTR -48[rbp]	# tmp82, parser
	mov	esi, 48	#,
	mov	rdi, rax	#, tmp82
	call	ParseMatch	#
# parser/parser.h:102: 	return ( ParseNode ){ 0 };	
	.loc 12 102 9
	mov	rax, QWORD PTR -40[rbp]	# tmp83, .result_ptr
	pxor	xmm0, xmm0	# tmp84
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp84
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp84
# parser/parser.h:103: }
	.loc 12 103 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE86:
	.size	ParseWhile, .-ParseWhile
	.globl	ParseFunc
	.type	ParseFunc, @function
ParseFunc:
.LFB87:
	.loc 12 106 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 96	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
	mov	QWORD PTR -56[rbp], rdx	# name, name
# parser/parser.h:106: {
	.loc 12 106 1
	mov	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6644, tmp93
	xor	eax, eax	# tmp93
# parser/parser.h:107: 	ParseMatch( parser, TK_LP );
	.loc 12 107 2
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	mov	esi, 36	#,
	mov	rdi, rax	#, tmp84
	call	ParseMatch	#
# parser/parser.h:109: 	ParseMatch( parser, TK_RP );
	.loc 12 109 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 37	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 12 110 7
	jmp	.L317	#
.L319:
# parser/parser.h:112: 		ParseStmt( parser );
	.loc 12 112 3
	lea	rax, -96[rbp]	# tmp86,
	mov	rdx, QWORD PTR -48[rbp]	# tmp87, parser
	mov	rsi, rdx	#, tmp87
	mov	rdi, rax	#, tmp86
	call	ParseStmt	#
.L317:
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 12 110 22
	mov	rax, QWORD PTR -48[rbp]	# tmp88, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_5(D)->token.type
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 12 110 28
	test	eax, eax	# _1
	je	.L318	#,
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 12 110 44 discriminator 1
	mov	rax, QWORD PTR -48[rbp]	# tmp89, parser
	mov	eax, DWORD PTR [rax]	# _2, parser_5(D)->token.type
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 12 110 28 discriminator 1
	cmp	eax, 51	# _2,
	jne	.L319	#,
.L318:
# parser/parser.h:114: 	ParseMatch( parser, TK_END );
	.loc 12 114 2
	mov	rax, QWORD PTR -48[rbp]	# tmp90, parser
	mov	esi, 51	#,
	mov	rdi, rax	#, tmp90
	call	ParseMatch	#
# parser/parser.h:115: 	return ( ParseNode ){ 0 };
	.loc 12 115 9
	mov	rax, QWORD PTR -40[rbp]	# tmp91, .result_ptr
	pxor	xmm0, xmm0	# tmp92
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp92
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp92
# parser/parser.h:116: }
	.loc 12 116 1
	mov	rax, QWORD PTR -8[rbp]	# tmp94, D.6644
	sub	rax, QWORD PTR fs:40	# tmp94, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L321	#,
	call	__stack_chk_fail@PLT	#
.L321:
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE87:
	.size	ParseFunc, .-ParseFunc
	.globl	ParseId
	.type	ParseId, @function
ParseId:
.LFB88:
	.loc 12 119 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -56[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -64[rbp], rsi	# parser, parser
# parser/parser.h:119: {
	.loc 12 119 1
	mov	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6647, tmp98
	xor	eax, eax	# tmp98
# parser/parser.h:120: 	String* name = parser->token.value.str;
	.loc 12 120 10
	mov	rax, QWORD PTR -64[rbp]	# tmp83, parser
	mov	rax, QWORD PTR 16[rax]	# tmp84, parser_4(D)->token.value.D.4160.str
	mov	QWORD PTR -40[rbp], rax	# name, tmp84
# parser/parser.h:121: 	ParseMatch( parser, TK_ID );
	.loc 12 121 2
	mov	rax, QWORD PTR -64[rbp]	# tmp85, parser
	mov	esi, 57	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:122: 	ParseMatch( parser, TK_COLON );
	.loc 12 122 2
	mov	rax, QWORD PTR -64[rbp]	# tmp86, parser
	mov	esi, 49	#,
	mov	rdi, rax	#, tmp86
	call	ParseMatch	#
# parser/parser.h:123: 	if( parser->token.type == TK_LP ){ return ParseFunc( parser, name ); }
	.loc 12 123 19
	mov	rax, QWORD PTR -64[rbp]	# tmp87, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_4(D)->token.type
# parser/parser.h:123: 	if( parser->token.type == TK_LP ){ return ParseFunc( parser, name ); }
	.loc 12 123 4
	cmp	eax, 36	# _1,
	jne	.L323	#,
# parser/parser.h:123: 	if( parser->token.type == TK_LP ){ return ParseFunc( parser, name ); }
	.loc 12 123 44 discriminator 1
	mov	rax, QWORD PTR -56[rbp]	# tmp88, .result_ptr
	mov	rdx, QWORD PTR -40[rbp]	# tmp89, name
	mov	rcx, QWORD PTR -64[rbp]	# tmp90, parser
	mov	rsi, rcx	#, tmp90
	mov	rdi, rax	#, tmp88
	call	ParseFunc	#
# parser/parser.h:123: 	if( parser->token.type == TK_LP ){ return ParseFunc( parser, name ); }
	.loc 12 123 44 is_stmt 0
	jmp	.L325	#
.L323:
# parser/parser.h:124: 	ParseNode rhs = ParseExpr( parser, PREC_NONE );
	.loc 12 124 18 is_stmt 1
	lea	rax, -32[rbp]	# tmp91,
	mov	rcx, QWORD PTR -64[rbp]	# tmp92, parser
	mov	edx, 0	#,
	mov	rsi, rcx	#, tmp92
	mov	rdi, rax	#, tmp91
	call	ParseExpr	#
# parser/parser.h:125: 	CompileAssign( name, &rhs );
	.loc 12 125 2
	lea	rdx, -32[rbp]	# tmp93,
	mov	rax, QWORD PTR -40[rbp]	# tmp94, name
	mov	rsi, rdx	#, tmp93
	mov	rdi, rax	#, tmp94
	call	CompileAssign	#
# parser/parser.h:126: 	return rhs;
	.loc 12 126 9
	mov	rcx, QWORD PTR -56[rbp]	# tmp95, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp96, rhs
	mov	rdx, QWORD PTR -24[rbp]	#, rhs
	mov	QWORD PTR [rcx], rax	# <retval>, tmp96
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp97, rhs
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp97
.L325:
# parser/parser.h:127: }
	.loc 12 127 1
	mov	rax, QWORD PTR -8[rbp]	# tmp99, D.6647
	sub	rax, QWORD PTR fs:40	# tmp99, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L326	#,
	call	__stack_chk_fail@PLT	#
.L326:
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE88:
	.size	ParseId, .-ParseId
	.globl	ParseEos
	.type	ParseEos, @function
ParseEos:
.LFB89:
	.loc 12 132 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:133: 	return ( ParseNode ){ 0 };
	.loc 12 133 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# parser/parser.h:134: }
	.loc 12 134 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE89:
	.size	ParseEos, .-ParseEos
	.section	.rodata
.LC8:
	.string	"Illegal operation: %d\n"
	.text
	.globl	ParseErr
	.type	ParseErr, @function
ParseErr:
.LFB90:
	.loc 12 137 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:138: 	Throw( "Illegal operation: %d\n", parser->token.type );
	.loc 12 138 49
	mov	rax, QWORD PTR -48[rbp]	# tmp83, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_3(D)->token.type
# parser/parser.h:138: 	Throw( "Illegal operation: %d\n", parser->token.type );
	.loc 12 138 2
	mov	esi, eax	#, _1
	lea	rax, .LC8[rip]	# tmp84,
	mov	rdi, rax	#, tmp84
	mov	eax, 0	#,
	call	Throw	#
# parser/parser.h:139: 	return ( ParseNode ){ 0 };
	.loc 12 139 9
	mov	rax, QWORD PTR -40[rbp]	# tmp85, .result_ptr
	pxor	xmm0, xmm0	# tmp86
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp86
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp86
# parser/parser.h:140: }
	.loc 12 140 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE90:
	.size	ParseErr, .-ParseErr
	.globl	ParseUnary
	.type	ParseUnary, @function
ParseUnary:
.LFB91:
	.loc 12 143 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 80	#,
	mov	QWORD PTR -56[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -64[rbp], rsi	# parser, parser
	mov	DWORD PTR -68[rbp], edx	# cur, cur
# parser/parser.h:143: {
	.loc 12 143 1
	mov	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6654, tmp93
	xor	eax, eax	# tmp93
# parser/parser.h:144: 	TokenType op = parser->token.type;
	.loc 12 144 12
	mov	rax, QWORD PTR -64[rbp]	# tmp83, parser
	mov	eax, DWORD PTR [rax]	# tmp84, parser_3(D)->token.type
	mov	DWORD PTR -36[rbp], eax	# op, tmp84
# parser/parser.h:145: 	ParseMatch( parser, parser->token.type ); /* op */
	.loc 12 145 2
	mov	rax, QWORD PTR -64[rbp]	# tmp85, parser
	mov	edx, DWORD PTR [rax]	# _1, parser_3(D)->token.type
	mov	rax, QWORD PTR -64[rbp]	# tmp86, parser
	mov	esi, edx	#, _1
	mov	rdi, rax	#, tmp86
	call	ParseMatch	#
# parser/parser.h:146: 	ParseNode rhs = ParseExpr( parser, cur );
	.loc 12 146 18
	lea	rax, -32[rbp]	# tmp87,
	mov	edx, DWORD PTR -68[rbp]	# tmp88, cur
	mov	rcx, QWORD PTR -64[rbp]	# tmp89, parser
	mov	rsi, rcx	#, tmp89
	mov	rdi, rax	#, tmp87
	call	ParseExpr	#
# parser/parser.h:147: 	return CompileUna( op, &rhs );
	.loc 12 147 9
	mov	rax, QWORD PTR -56[rbp]	# tmp90, .result_ptr
	lea	rdx, -32[rbp]	# tmp91,
	mov	ecx, DWORD PTR -36[rbp]	# tmp92, op
	mov	esi, ecx	#, tmp92
	mov	rdi, rax	#, tmp90
	call	CompileUna	#
# parser/parser.h:148: }
	.loc 12 148 1
	mov	rax, QWORD PTR -8[rbp]	# tmp94, D.6654
	sub	rax, QWORD PTR fs:40	# tmp94, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L333	#,
	call	__stack_chk_fail@PLT	#
.L333:
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE91:
	.size	ParseUnary, .-ParseUnary
	.globl	ParseBinary
	.type	ParseBinary, @function
ParseBinary:
.LFB92:
	.loc 12 151 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 80	#,
	mov	QWORD PTR -56[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -64[rbp], rsi	# parser, parser
	mov	QWORD PTR -72[rbp], rdx	# lhs, lhs
	mov	DWORD PTR -76[rbp], ecx	# cur, cur
# parser/parser.h:151: {
	.loc 12 151 1
	mov	rax, QWORD PTR fs:40	# tmp94, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6658, tmp94
	xor	eax, eax	# tmp94
# parser/parser.h:152: 	TokenType op = parser->token.type;
	.loc 12 152 12
	mov	rax, QWORD PTR -64[rbp]	# tmp83, parser
	mov	eax, DWORD PTR [rax]	# tmp84, parser_3(D)->token.type
	mov	DWORD PTR -36[rbp], eax	# op, tmp84
# parser/parser.h:153: 	ParseMatch( parser, parser->token.type ); /* op */
	.loc 12 153 2
	mov	rax, QWORD PTR -64[rbp]	# tmp85, parser
	mov	edx, DWORD PTR [rax]	# _1, parser_3(D)->token.type
	mov	rax, QWORD PTR -64[rbp]	# tmp86, parser
	mov	esi, edx	#, _1
	mov	rdi, rax	#, tmp86
	call	ParseMatch	#
# parser/parser.h:154: 	ParseNode rhs = ParseExpr( parser, cur );
	.loc 12 154 18
	lea	rax, -32[rbp]	# tmp87,
	mov	edx, DWORD PTR -76[rbp]	# tmp88, cur
	mov	rcx, QWORD PTR -64[rbp]	# tmp89, parser
	mov	rsi, rcx	#, tmp89
	mov	rdi, rax	#, tmp87
	call	ParseExpr	#
# parser/parser.h:155: 	return CompileBin( lhs, op, &rhs );
	.loc 12 155 9
	mov	rax, QWORD PTR -56[rbp]	# tmp90, .result_ptr
	lea	rcx, -32[rbp]	# tmp91,
	mov	edx, DWORD PTR -36[rbp]	# tmp92, op
	mov	rsi, QWORD PTR -72[rbp]	# tmp93, lhs
	mov	rdi, rax	#, tmp90
	call	CompileBin	#
# parser/parser.h:156: }
	.loc 12 156 1
	mov	rax, QWORD PTR -8[rbp]	# tmp95, D.6658
	sub	rax, QWORD PTR fs:40	# tmp95, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L336	#,
	call	__stack_chk_fail@PLT	#
.L336:
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE92:
	.size	ParseBinary, .-ParseBinary
	.globl	ParseGroup
	.type	ParseGroup, @function
ParseGroup:
.LFB93:
	.loc 12 159 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:159: {
	.loc 12 159 1
	mov	rax, QWORD PTR fs:40	# tmp89, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6662, tmp89
	xor	eax, eax	# tmp89
# parser/parser.h:160: 	ParseMatch( parser, TK_LP );
	.loc 12 160 2
	mov	rax, QWORD PTR -48[rbp]	# tmp82, parser
	mov	esi, 36	#,
	mov	rdi, rax	#, tmp82
	call	ParseMatch	#
# parser/parser.h:161: 	ParseNode node = ParseExpr( parser, PREC_NONE );
	.loc 12 161 19
	lea	rax, -32[rbp]	# tmp83,
	mov	rcx, QWORD PTR -48[rbp]	# tmp84, parser
	mov	edx, 0	#,
	mov	rsi, rcx	#, tmp84
	mov	rdi, rax	#, tmp83
	call	ParseExpr	#
# parser/parser.h:162: 	ParseMatch( parser, TK_RP );
	.loc 12 162 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 37	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:163: 	return node;
	.loc 12 163 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:164: }
	.loc 12 164 1
	mov	rax, QWORD PTR -8[rbp]	# tmp90, D.6662
	sub	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L339	#,
	call	__stack_chk_fail@PLT	#
.L339:
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE93:
	.size	ParseGroup, .-ParseGroup
	.globl	ParseCall
	.type	ParseCall, @function
ParseCall:
.LFB94:
	.loc 12 167 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -56[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -64[rbp], rsi	# parser, parser
# parser/parser.h:168: 	String* name = parser->token.value.str;
	.loc 12 168 10
	mov	rax, QWORD PTR -64[rbp]	# tmp82, parser
	mov	rax, QWORD PTR 16[rax]	# tmp83, parser_2(D)->token.value.D.4160.str
	mov	QWORD PTR -40[rbp], rax	# name, tmp83
# parser/parser.h:169: 	ParseMatch( parser, TK_ID );
	.loc 12 169 2
	mov	rax, QWORD PTR -64[rbp]	# tmp84, parser
	mov	esi, 57	#,
	mov	rdi, rax	#, tmp84
	call	ParseMatch	#
# parser/parser.h:170: 	ParseMatch( parser, TK_LP );
	.loc 12 170 2
	mov	rax, QWORD PTR -64[rbp]	# tmp85, parser
	mov	esi, 36	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:172: 	ParseMatch( parser, TK_RP );
	.loc 12 172 2
	mov	rax, QWORD PTR -64[rbp]	# tmp86, parser
	mov	esi, 37	#,
	mov	rdi, rax	#, tmp86
	call	ParseMatch	#
# parser/parser.h:173: 	return ( ParseNode ){ 0 };
	.loc 12 173 9
	mov	rax, QWORD PTR -56[rbp]	# tmp87, .result_ptr
	pxor	xmm0, xmm0	# tmp88
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp88
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp88
# parser/parser.h:174: }
	.loc 12 174 1
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE94:
	.size	ParseCall, .-ParseCall
	.globl	ParseI64
	.type	ParseI64, @function
ParseI64:
.LFB95:
	.loc 12 177 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:178: 	ParseNode node = { .type = PT_CONST, .value.type = VALUE_I64 };
	.loc 12 178 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
# parser/parser.h:179: 	node.value.i64 = parser->token.value.i64;
	.loc 12 179 38
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	mov	rax, QWORD PTR 16[rax]	# _1, parser_4(D)->token.value.D.4160.i64
# parser/parser.h:179: 	node.value.i64 = parser->token.value.i64;
	.loc 12 179 17
	mov	QWORD PTR -16[rbp], rax	# node.value.D.4160.i64, _1
# parser/parser.h:180: 	ParseMatch( parser, TK_I64 );
	.loc 12 180 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 54	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:181: 	return node;
	.loc 12 181 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:182: }
	.loc 12 182 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE95:
	.size	ParseI64, .-ParseI64
	.globl	ParseF64
	.type	ParseF64, @function
ParseF64:
.LFB96:
	.loc 12 185 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:186: 	ParseNode node = { .type = PT_CONST, .value.type = VALUE_F64 };
	.loc 12 186 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
	mov	DWORD PTR -24[rbp], 1	# node.value.type,
# parser/parser.h:187: 	node.value.f64 = parser->token.value.f64;
	.loc 12 187 38
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	movsd	xmm0, QWORD PTR 16[rax]	# _1, parser_5(D)->token.value.D.4160.f64
# parser/parser.h:187: 	node.value.f64 = parser->token.value.f64;
	.loc 12 187 17
	movsd	QWORD PTR -16[rbp], xmm0	# node.value.D.4160.f64, _1
# parser/parser.h:188: 	ParseMatch( parser, TK_F64 );
	.loc 12 188 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 55	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:189: 	return node;
	.loc 12 189 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:190: }
	.loc 12 190 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE96:
	.size	ParseF64, .-ParseF64
	.globl	ParseStr
	.type	ParseStr, @function
ParseStr:
.LFB97:
	.loc 12 193 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:194: 	ParseNode node = { .type = PT_CONST, .value.type = VALUE_STR };
	.loc 12 194 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
	mov	DWORD PTR -24[rbp], 2	# node.value.type,
# parser/parser.h:195: 	node.value.str = parser->token.value.str;
	.loc 12 195 38
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	mov	rax, QWORD PTR 16[rax]	# _1, parser_5(D)->token.value.D.4160.str
# parser/parser.h:195: 	node.value.str = parser->token.value.str;
	.loc 12 195 17
	mov	QWORD PTR -16[rbp], rax	# node.value.D.4160.str, _1
# parser/parser.h:196: 	ParseMatch( parser, TK_STR );
	.loc 12 196 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 56	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:197: 	return node;
	.loc 12 197 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:198: }
	.loc 12 198 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE97:
	.size	ParseStr, .-ParseStr
	.globl	ParseRef
	.type	ParseRef, @function
ParseRef:
.LFB98:
	.loc 12 201 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# parser, parser
# parser/parser.h:202: 	ParseNode node = { .type = PT_REF, .value.type = VALUE_STR };
	.loc 12 202 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
	mov	DWORD PTR -32[rbp], 1	# node.type,
	mov	DWORD PTR -24[rbp], 2	# node.value.type,
# parser/parser.h:203: 	node.value.str = parser->token.value.str;
	.loc 12 203 38
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	mov	rax, QWORD PTR 16[rax]	# _1, parser_6(D)->token.value.D.4160.str
# parser/parser.h:203: 	node.value.str = parser->token.value.str;
	.loc 12 203 17
	mov	QWORD PTR -16[rbp], rax	# node.value.D.4160.str, _1
# parser/parser.h:204: 	ParseMatch( parser, TK_ID );
	.loc 12 204 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 57	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:205: 	return node;
	.loc 12 205 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:206: }
	.loc 12 206 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE98:
	.size	ParseRef, .-ParseRef
	.globl	ParseExpr
	.type	ParseExpr, @function
ParseExpr:
.LFB99:
	.loc 12 209 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 112	#,
	mov	QWORD PTR -56[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -64[rbp], rsi	# parser, parser
	mov	DWORD PTR -68[rbp], edx	# prec, prec
# parser/parser.h:209: {
	.loc 12 209 1
	mov	rax, QWORD PTR fs:40	# tmp150, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6670, tmp150
	xor	eax, eax	# tmp150
# parser/parser.h:211: 	ParseRule *rule = &rules[ parser->token.type ];
	.loc 12 211 41
	mov	rax, QWORD PTR -64[rbp]	# tmp88, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_13(D)->token.type
# parser/parser.h:211: 	ParseRule *rule = &rules[ parser->token.type ];
	.loc 12 211 13
	mov	edx, eax	# tmp89, _1
	mov	rax, rdx	# tmp90, tmp89
	add	rax, rax	# tmp90
	add	rax, rdx	# tmp90, tmp89
	sal	rax, 3	# tmp91,
	lea	rdx, rules.44[rip]	# tmp92,
	add	rax, rdx	# tmp93, tmp92
	mov	QWORD PTR -40[rbp], rax	# rule, tmp93
# parser/parser.h:212: 	ParseNode node = { 0 };
	.loc 12 212 12
	pxor	xmm0, xmm0	# tmp94
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp94
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp94
# parser/parser.h:213: 	goto *rule->nud;
	.loc 12 213 12
	mov	rax, QWORD PTR -40[rbp]	# tmp95, rule
	mov	rax, QWORD PTR [rax]	# _2, rule_14->nud
# parser/parser.h:213: 	goto *rule->nud;
	.loc 12 213 2
	jmp	.L351	#
.L352:
# parser/parser.h:215: 		rule = &rules[ parser->token.type ];
	.loc 12 215 31
	mov	rax, QWORD PTR -64[rbp]	# tmp96, parser
	mov	eax, DWORD PTR [rax]	# _3, parser_13(D)->token.type
# parser/parser.h:215: 		rule = &rules[ parser->token.type ];
	.loc 12 215 8
	mov	edx, eax	# tmp97, _3
	mov	rax, rdx	# tmp98, tmp97
	add	rax, rax	# tmp98
	add	rax, rdx	# tmp98, tmp97
	sal	rax, 3	# tmp99,
	lea	rdx, rules.44[rip]	# tmp100,
	add	rax, rdx	# tmp101, tmp100
	mov	QWORD PTR -40[rbp], rax	# rule, tmp101
# parser/parser.h:216: 		if( rule->prec > prec ){ goto *rule->led; }
	.loc 12 216 11
	mov	rax, QWORD PTR -40[rbp]	# tmp102, rule
	mov	eax, DWORD PTR 16[rax]	# _4, rule_27->prec
# parser/parser.h:216: 		if( rule->prec > prec ){ goto *rule->led; }
	.loc 12 216 5
	cmp	DWORD PTR -68[rbp], eax	# prec, _4
	jnb	.L367	#,
# parser/parser.h:216: 		if( rule->prec > prec ){ goto *rule->led; }
	.loc 12 216 38 discriminator 1
	mov	rax, QWORD PTR -40[rbp]	# tmp103, rule
	mov	rax, QWORD PTR 8[rax]	# _2, rule_27->led
# parser/parser.h:216: 		if( rule->prec > prec ){ goto *rule->led; }
	.loc 12 216 28
	jmp	.L351	#
.L355:
	endbr64	
# parser/expr_labels.h:1: EOS: node = ParseEos( parser ); goto LED;
	.file 13 "parser/expr_labels.h"
	.loc 13 1 13
	lea	rax, -112[rbp]	# tmp104,
	mov	rdx, QWORD PTR -64[rbp]	# tmp105, parser
	mov	rsi, rdx	#, tmp105
	mov	rdi, rax	#, tmp104
	call	ParseEos	#
	mov	rax, QWORD PTR -112[rbp]	# tmp106,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp106
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp107,
	mov	QWORD PTR -16[rbp], rax	# node, tmp107
# parser/expr_labels.h:1: EOS: node = ParseEos( parser ); goto LED;
	.loc 13 1 33
	jmp	.L352	#
.L351:
	jmp	rax	# _2
.L356:
	endbr64	
# parser/expr_labels.h:2: ERR: node = ParseErr( parser ); goto LED;
	.loc 13 2 13
	lea	rax, -112[rbp]	# tmp108,
	mov	rdx, QWORD PTR -64[rbp]	# tmp109, parser
	mov	rsi, rdx	#, tmp109
	mov	rdi, rax	#, tmp108
	call	ParseErr	#
	mov	rax, QWORD PTR -112[rbp]	# tmp110,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp110
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp111,
	mov	QWORD PTR -16[rbp], rax	# node, tmp111
# parser/expr_labels.h:2: ERR: node = ParseErr( parser ); goto LED;
	.loc 13 2 33
	jmp	.L352	#
.L357:
	endbr64	
# parser/expr_labels.h:3: UNARY: node = ParseUnary( parser, rule->prec ); goto LED;
	.loc 13 3 15
	mov	rax, QWORD PTR -40[rbp]	# tmp112, rule
	mov	edx, DWORD PTR 16[rax]	# _6, rule_8->prec
	lea	rax, -112[rbp]	# tmp113,
	mov	rcx, QWORD PTR -64[rbp]	# tmp114, parser
	mov	rsi, rcx	#, tmp114
	mov	rdi, rax	#, tmp113
	call	ParseUnary	#
	mov	rax, QWORD PTR -112[rbp]	# tmp115,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp115
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp116,
	mov	QWORD PTR -16[rbp], rax	# node, tmp116
# parser/expr_labels.h:3: UNARY: node = ParseUnary( parser, rule->prec ); goto LED;
	.loc 13 3 49
	jmp	.L352	#
.L358:
	endbr64	
# parser/expr_labels.h:4: BINARY: node = ParseBinary( parser, &node, rule->prec ); goto LED;
	.loc 13 4 16
	mov	rax, QWORD PTR -40[rbp]	# tmp117, rule
	mov	ecx, DWORD PTR 16[rax]	# _7, rule_8->prec
	lea	rax, -112[rbp]	# tmp118,
	lea	rdx, -32[rbp]	# tmp119,
	mov	rsi, QWORD PTR -64[rbp]	# tmp120, parser
	mov	rdi, rax	#, tmp118
	call	ParseBinary	#
	mov	rax, QWORD PTR -112[rbp]	# tmp121,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp121
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp122,
	mov	QWORD PTR -16[rbp], rax	# node, tmp122
# parser/expr_labels.h:4: BINARY: node = ParseBinary( parser, &node, rule->prec ); goto LED;
	.loc 13 4 58
	jmp	.L352	#
.L359:
	endbr64	
# parser/expr_labels.h:5: GROUP: node = ParseGroup( parser ); goto LED;
	.loc 13 5 15
	lea	rax, -112[rbp]	# tmp123,
	mov	rdx, QWORD PTR -64[rbp]	# tmp124, parser
	mov	rsi, rdx	#, tmp124
	mov	rdi, rax	#, tmp123
	call	ParseGroup	#
	mov	rax, QWORD PTR -112[rbp]	# tmp125,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp125
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp126,
	mov	QWORD PTR -16[rbp], rax	# node, tmp126
# parser/expr_labels.h:5: GROUP: node = ParseGroup( parser ); goto LED;
	.loc 13 5 37
	jmp	.L352	#
.L360:
	endbr64	
# parser/expr_labels.h:6: CALL: node = ParseCall( parser ); goto LED;
	.loc 13 6 14
	lea	rax, -112[rbp]	# tmp127,
	mov	rdx, QWORD PTR -64[rbp]	# tmp128, parser
	mov	rsi, rdx	#, tmp128
	mov	rdi, rax	#, tmp127
	call	ParseCall	#
	mov	rax, QWORD PTR -112[rbp]	# tmp129,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp129
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp130,
	mov	QWORD PTR -16[rbp], rax	# node, tmp130
# parser/expr_labels.h:6: CALL: node = ParseCall( parser ); goto LED;
	.loc 13 6 35
	jmp	.L352	#
.L361:
	endbr64	
# parser/expr_labels.h:7: I64: node = ParseI64( parser ); goto LED;
	.loc 13 7 13
	lea	rax, -112[rbp]	# tmp131,
	mov	rdx, QWORD PTR -64[rbp]	# tmp132, parser
	mov	rsi, rdx	#, tmp132
	mov	rdi, rax	#, tmp131
	call	ParseI64	#
	mov	rax, QWORD PTR -112[rbp]	# tmp133,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp133
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp134,
	mov	QWORD PTR -16[rbp], rax	# node, tmp134
# parser/expr_labels.h:7: I64: node = ParseI64( parser ); goto LED;
	.loc 13 7 33
	jmp	.L352	#
.L362:
	endbr64	
# parser/expr_labels.h:8: F64: node = ParseF64( parser ); goto LED; 
	.loc 13 8 13
	lea	rax, -112[rbp]	# tmp135,
	mov	rdx, QWORD PTR -64[rbp]	# tmp136, parser
	mov	rsi, rdx	#, tmp136
	mov	rdi, rax	#, tmp135
	call	ParseF64	#
	mov	rax, QWORD PTR -112[rbp]	# tmp137,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp137
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp138,
	mov	QWORD PTR -16[rbp], rax	# node, tmp138
# parser/expr_labels.h:8: F64: node = ParseF64( parser ); goto LED; 
	.loc 13 8 33
	jmp	.L352	#
.L363:
	endbr64	
# parser/expr_labels.h:9: STR: node = ParseStr( parser ); goto LED;
	.loc 13 9 13
	lea	rax, -112[rbp]	# tmp139,
	mov	rdx, QWORD PTR -64[rbp]	# tmp140, parser
	mov	rsi, rdx	#, tmp140
	mov	rdi, rax	#, tmp139
	call	ParseStr	#
	mov	rax, QWORD PTR -112[rbp]	# tmp141,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp141
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp142,
	mov	QWORD PTR -16[rbp], rax	# node, tmp142
# parser/expr_labels.h:9: STR: node = ParseStr( parser ); goto LED;
	.loc 13 9 33
	jmp	.L352	#
.L364:
	endbr64	
# parser/expr_labels.h:10: REF: node = ParseRef( parser ); goto LED;
	.loc 13 10 13
	lea	rax, -112[rbp]	# tmp143,
	mov	rdx, QWORD PTR -64[rbp]	# tmp144, parser
	mov	rsi, rdx	#, tmp144
	mov	rdi, rax	#, tmp143
	call	ParseRef	#
	mov	rax, QWORD PTR -112[rbp]	# tmp145,
	mov	rdx, QWORD PTR -104[rbp]	#,
	mov	QWORD PTR -32[rbp], rax	# node, tmp145
	mov	QWORD PTR -24[rbp], rdx	# node,
	mov	rax, QWORD PTR -96[rbp]	# tmp146,
	mov	QWORD PTR -16[rbp], rax	# node, tmp146
# parser/expr_labels.h:10: REF: node = ParseRef( parser ); goto LED;
	.loc 13 10 33
	jmp	.L352	#
.L367:
# parser/parser.h:217: 		goto DONE;
	.loc 12 217 3
	nop	
.L354:
# parser/parser.h:219: 	DONE: return node;
	.loc 12 219 15
	mov	rcx, QWORD PTR -56[rbp]	# tmp147, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp148, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp148
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp149, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp149
# parser/parser.h:220: }
	.loc 12 220 1
	mov	rax, QWORD PTR -8[rbp]	# tmp151, D.6670
	sub	rax, QWORD PTR fs:40	# tmp151, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L366	#,
	call	__stack_chk_fail@PLT	#
.L366:
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE99:
	.size	ParseExpr, .-ParseExpr
	.globl	ParseStmt
	.type	ParseStmt, @function
ParseStmt:
.LFB100:
	.loc 12 223 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# parser, parser
# parser/parser.h:223: {
	.loc 12 223 1
	mov	rax, QWORD PTR fs:40	# tmp100, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6682, tmp100
	xor	eax, eax	# tmp100
# parser/parser.h:225: 	goto *stmts[ parser->token.type ];
	.loc 12 225 28
	mov	rax, QWORD PTR -32[rbp]	# tmp84, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_5(D)->token.type
# parser/parser.h:225: 	goto *stmts[ parser->token.type ];
	.loc 12 225 13
	mov	eax, eax	# tmp85, _1
	lea	rdx, 0[0+rax*8]	# tmp86,
	lea	rax, stmts.43[rip]	# tmp87,
	mov	rax, QWORD PTR [rdx+rax]	# _2, stmts[_1]
# parser/parser.h:225: 	goto *stmts[ parser->token.type ];
	.loc 12 225 2
	nop	
	jmp	rax	# _2
.L370:
	endbr64	
# parser/stmt_labels.h:1: EXPR: return ParseExpr( parser, PREC_NONE );
	.file 14 "parser/stmt_labels.h"
	.loc 14 1 14
	mov	rax, QWORD PTR -24[rbp]	# tmp88, .result_ptr
	mov	rcx, QWORD PTR -32[rbp]	# tmp89, parser
	mov	edx, 0	#,
	mov	rsi, rcx	#, tmp89
	mov	rdi, rax	#, tmp88
	call	ParseExpr	#
	jmp	.L371	#
.L372:
	endbr64	
# parser/stmt_labels.h:2: IF: return ParseIf( parser );
	.loc 14 2 12
	mov	rax, QWORD PTR -24[rbp]	# tmp90, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp91, parser
	mov	rsi, rdx	#, tmp91
	mov	rdi, rax	#, tmp90
	call	ParseIf	#
	jmp	.L371	#
.L373:
	endbr64	
# parser/stmt_labels.h:3: FOR: return ParseFor( parser );
	.loc 14 3 13
	mov	rax, QWORD PTR -24[rbp]	# tmp92, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp93, parser
	mov	rsi, rdx	#, tmp93
	mov	rdi, rax	#, tmp92
	call	ParseFor	#
	jmp	.L371	#
.L374:
	endbr64	
# parser/stmt_labels.h:4: DO: return ParseDo( parser );
	.loc 14 4 12
	mov	rax, QWORD PTR -24[rbp]	# tmp94, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp95, parser
	mov	rsi, rdx	#, tmp95
	mov	rdi, rax	#, tmp94
	call	ParseDo	#
	jmp	.L371	#
.L375:
	endbr64	
# parser/stmt_labels.h:5: WHILE: return ParseWhile( parser );
	.loc 14 5 15
	mov	rax, QWORD PTR -24[rbp]	# tmp96, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp97, parser
	mov	rsi, rdx	#, tmp97
	mov	rdi, rax	#, tmp96
	call	ParseWhile	#
	jmp	.L371	#
.L376:
	endbr64	
# parser/stmt_labels.h:6: ID: return ParseId( parser );
	.loc 14 6 12
	mov	rax, QWORD PTR -24[rbp]	# tmp98, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp99, parser
	mov	rsi, rdx	#, tmp99
	mov	rdi, rax	#, tmp98
	call	ParseId	#
.L371:
# parser/parser.h:227: }
	.loc 12 227 1
	mov	rax, QWORD PTR -8[rbp]	# tmp101, D.6682
	sub	rax, QWORD PTR fs:40	# tmp101, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L377	#,
	call	__stack_chk_fail@PLT	#
.L377:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE100:
	.size	ParseStmt, .-ParseStmt
	.globl	Parse
	.type	Parse, @function
Parse:
.LFB101:
	.loc 12 230 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 88	#,
	.cfi_offset 3, -24
# parser/parser.h:230: {
	.loc 12 230 1
	mov	rax, QWORD PTR fs:40	# tmp92, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -24[rbp], rax	# D.6690, tmp92
	xor	eax, eax	# tmp92
# parser/parser.h:231: 	Parser *parser = GetParser( );
	.loc 12 231 19
	call	GetParser	#
	mov	QWORD PTR -56[rbp], rax	# parser, tmp83
# parser/parser.h:232: 	parser->token = Lex( );
	.loc 12 232 18
	mov	rbx, QWORD PTR -56[rbp]	# tmp84, parser
	lea	rax, -96[rbp]	# tmp85,
	mov	rdi, rax	#, tmp85
	call	Lex	#
	mov	rax, QWORD PTR -96[rbp]	# tmp86,
	mov	rdx, QWORD PTR -88[rbp]	#,
	mov	QWORD PTR [rbx], rax	# parser_5->token, tmp86
	mov	QWORD PTR 8[rbx], rdx	# parser_5->token,
	mov	rax, QWORD PTR -80[rbp]	# tmp87,
	mov	QWORD PTR 16[rbx], rax	# parser_5->token, tmp87
# parser/parser.h:233: 	while( parser->token.type != TK_EOS )
	.loc 12 233 7
	jmp	.L379	#
.L380:
.LBB14:
# parser/parser.h:235: 		ParseNode node = ParseStmt( parser );
	.loc 12 235 20
	lea	rax, -48[rbp]	# tmp88,
	mov	rdx, QWORD PTR -56[rbp]	# tmp89, parser
	mov	rsi, rdx	#, tmp89
	mov	rdi, rax	#, tmp88
	call	ParseStmt	#
# parser/parser.h:236: 		ParseNodeLog( &node );
	.loc 12 236 3
	lea	rax, -48[rbp]	# tmp90,
	mov	rdi, rax	#, tmp90
	call	ParseNodeLog	#
.L379:
.LBE14:
# parser/parser.h:233: 	while( parser->token.type != TK_EOS )
	.loc 12 233 22
	mov	rax, QWORD PTR -56[rbp]	# tmp91, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_5->token.type
# parser/parser.h:233: 	while( parser->token.type != TK_EOS )
	.loc 12 233 28
	test	eax, eax	# _1
	jne	.L380	#,
# parser/parser.h:238: }
	.loc 12 238 1
	nop	
	mov	rax, QWORD PTR -24[rbp]	# tmp93, D.6690
	sub	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L381	#,
	call	__stack_chk_fail@PLT	#
.L381:
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE101:
	.size	Parse, .-Parse
	.type	GetCompiler, @function
GetCompiler:
.LFB102:
	.file 15 "compiler/compiler.h"
	.loc 15 40 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# compiler/compiler.h:42: 	return &compiler;
	.loc 15 42 9
	lea	rax, compiler.41[rip]	# _1,
# compiler/compiler.h:43: }
	.loc 15 43 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE102:
	.size	GetCompiler, .-GetCompiler
	.globl	FnCommit
	.type	FnCommit, @function
FnCommit:
.LFB103:
	.loc 15 46 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# compiler/compiler.h:47: 	Compiler *compiler = GetCompiler( );
	.loc 15 47 23
	call	GetCompiler	#
	mov	QWORD PTR -16[rbp], rax	# compiler, tmp90
# compiler/compiler.h:48: 	Func *fn = VecCommit( GetFuncs( ) );
	.loc 15 48 13
	call	GetFuncs	#
# compiler/compiler.h:48: 	Func *fn = VecCommit( GetFuncs( ) );
	.loc 15 48 13 is_stmt 0 discriminator 1
	mov	rdi, rax	#, _1
	call	VecCommit	#
	mov	QWORD PTR -8[rbp], rax	# fn, tmp91
# compiler/compiler.h:49: 	fn->iconsts = GetConsts( )->len;
	.loc 15 49 16 is_stmt 1
	call	GetConsts	#
# compiler/compiler.h:49: 	fn->iconsts = GetConsts( )->len;
	.loc 15 49 28 discriminator 1
	mov	edx, DWORD PTR 8[rax]	# _3, _2->D.4073.len
# compiler/compiler.h:49: 	fn->iconsts = GetConsts( )->len;
	.loc 15 49 14 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp92, fn
	mov	DWORD PTR [rax], edx	# fn_14->iconsts, _3
# compiler/compiler.h:50: 	fn->ilocals = GetLocals( )->len;
	.loc 15 50 16
	call	GetLocals	#
# compiler/compiler.h:50: 	fn->ilocals = GetLocals( )->len;
	.loc 15 50 28 discriminator 1
	mov	edx, DWORD PTR 8[rax]	# _5, _4->D.4073.len
# compiler/compiler.h:50: 	fn->ilocals = GetLocals( )->len;
	.loc 15 50 14 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp93, fn
	mov	DWORD PTR 4[rax], edx	# fn_14->ilocals, _5
# compiler/compiler.h:51: 	fn->icode = GetCode( )->len;
	.loc 15 51 14
	call	GetCode	#
# compiler/compiler.h:51: 	fn->icode = GetCode( )->len;
	.loc 15 51 24 discriminator 1
	mov	edx, DWORD PTR 8[rax]	# _7, _6->D.4073.len
# compiler/compiler.h:51: 	fn->icode = GetCode( )->len;
	.loc 15 51 12 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp94, fn
	mov	DWORD PTR 8[rax], edx	# fn_14->icode, _7
# compiler/compiler.h:52: 	fn->nconsts = fn->nlocals = fn->ncode = 0;
	.loc 15 52 40
	mov	rax, QWORD PTR -8[rbp]	# tmp95, fn
	mov	WORD PTR 14[rax], 0	# fn_14->ncode,
# compiler/compiler.h:52: 	fn->nconsts = fn->nlocals = fn->ncode = 0;
	.loc 15 52 28
	mov	rax, QWORD PTR -8[rbp]	# tmp96, fn
	mov	BYTE PTR 13[rax], 0	# fn_14->nlocals,
# compiler/compiler.h:52: 	fn->nconsts = fn->nlocals = fn->ncode = 0;
	.loc 15 52 18
	mov	rax, QWORD PTR -8[rbp]	# tmp97, fn
	movzx	edx, BYTE PTR 13[rax]	# _8, fn_14->nlocals
# compiler/compiler.h:52: 	fn->nconsts = fn->nlocals = fn->ncode = 0;
	.loc 15 52 14
	mov	rax, QWORD PTR -8[rbp]	# tmp98, fn
	mov	BYTE PTR 12[rax], dl	# fn_14->nconsts, _8
# compiler/compiler.h:53: 	compiler->fn = fn;
	.loc 15 53 15
	mov	rax, QWORD PTR -16[rbp]	# tmp99, compiler
	mov	rdx, QWORD PTR -8[rbp]	# tmp100, fn
	mov	QWORD PTR [rax], rdx	# compiler_11->fn, tmp100
# compiler/compiler.h:54: }
	.loc 15 54 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE103:
	.size	FnCommit, .-FnCommit
	.globl	CompilerInit
	.type	CompilerInit, @function
CompilerInit:
.LFB104:
	.loc 15 57 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# compiler/compiler.h:58: 	Compiler *compiler = GetCompiler( );
	.loc 15 58 23
	call	GetCompiler	#
	mov	QWORD PTR -8[rbp], rax	# compiler, tmp82
# compiler/compiler.h:62: }
	.loc 15 62 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE104:
	.size	CompilerInit, .-CompilerInit
	.type	ConstPush, @function
ConstPush:
.LFB105:
	.loc 15 65 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	eax, edi	# tmp90, value
	mov	rcx, rsi	# tmp91, value
	mov	rdx, rcx	#, tmp91
	mov	QWORD PTR -32[rbp], rax	# value, tmp89
	mov	QWORD PTR -24[rbp], rdx	# value,
# compiler/compiler.h:66: 	Compiler *compiler = GetCompiler( );
	.loc 15 66 23
	call	GetCompiler	#
	mov	QWORD PTR -8[rbp], rax	# compiler, tmp92
# compiler/compiler.h:67: 	if( compiler->fn ){ compiler->fn->nconsts++; }
	.loc 15 67 14
	mov	rax, QWORD PTR -8[rbp]	# tmp93, compiler
	mov	rax, QWORD PTR [rax]	# _1, compiler_10->fn
# compiler/compiler.h:67: 	if( compiler->fn ){ compiler->fn->nconsts++; }
	.loc 15 67 4
	test	rax, rax	# _1
	je	.L387	#,
# compiler/compiler.h:67: 	if( compiler->fn ){ compiler->fn->nconsts++; }
	.loc 15 67 30 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp94, compiler
	mov	rax, QWORD PTR [rax]	# _2, compiler_10->fn
# compiler/compiler.h:67: 	if( compiler->fn ){ compiler->fn->nconsts++; }
	.loc 15 67 34 discriminator 1
	movzx	edx, BYTE PTR 12[rax]	# _3, _2->nconsts
# compiler/compiler.h:67: 	if( compiler->fn ){ compiler->fn->nconsts++; }
	.loc 15 67 43 discriminator 1
	add	edx, 1	# _5,
	mov	BYTE PTR 12[rax], dl	# _2->nconsts, _5
.L387:
# compiler/compiler.h:68: 	return VecPush( GetConsts( ), &value );
	.loc 15 68 9
	call	GetConsts	#
	mov	rdx, rax	# _6,
# compiler/compiler.h:68: 	return VecPush( GetConsts( ), &value );
	.loc 15 68 9 is_stmt 0 discriminator 1
	lea	rax, -32[rbp]	# tmp95,
	mov	rsi, rax	#, tmp95
	mov	rdi, rdx	#, _6
	call	VecPush	#
# compiler/compiler.h:69: }
	.loc 15 69 1 is_stmt 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE105:
	.size	ConstPush, .-ConstPush
	.type	LocalPush, @function
LocalPush:
.LFB107:
	.loc 15 77 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -24[rbp], rdi	# out_idx, out_idx
	mov	QWORD PTR -32[rbp], rsi	# fn, fn
	mov	QWORD PTR -40[rbp], rdx	# name, name
	mov	eax, ecx	# tmp89, value
	mov	rcx, r8	# tmp90, value
	mov	rdx, rcx	#, tmp90
	mov	QWORD PTR -64[rbp], rax	# value, tmp88
	mov	QWORD PTR -56[rbp], rdx	# value,
# compiler/compiler.h:78: 	fn->nlocals++;
	.loc 15 78 4
	mov	rax, QWORD PTR -32[rbp]	# tmp91, fn
	movzx	eax, BYTE PTR 13[rax]	# _1, fn_7(D)->nlocals
# compiler/compiler.h:78: 	fn->nlocals++;
	.loc 15 78 13
	lea	edx, 1[rax]	# _3,
	mov	rax, QWORD PTR -32[rbp]	# tmp92, fn
	mov	BYTE PTR 13[rax], dl	# fn_7(D)->nlocals, _3
# compiler/compiler.h:79: 	Vec *locals = GetLocals( );
	.loc 15 79 16
	call	GetLocals	#
	mov	QWORD PTR -16[rbp], rax	# locals, tmp93
# compiler/compiler.h:80: 	Var *var = VecCommit( locals );
	.loc 15 80 13
	mov	rax, QWORD PTR -16[rbp]	# tmp94, locals
	mov	rdi, rax	#, tmp94
	call	VecCommit	#
	mov	QWORD PTR -8[rbp], rax	# var, tmp95
# compiler/compiler.h:81: 	var->name = name;
	.loc 15 81 12
	mov	rax, QWORD PTR -8[rbp]	# tmp96, var
	mov	rdx, QWORD PTR -40[rbp]	# tmp97, name
	mov	QWORD PTR [rax], rdx	# var_12->D.4226.name, tmp97
# compiler/compiler.h:82: 	var->value = value;
	.loc 15 82 13
	mov	rcx, QWORD PTR -8[rbp]	# tmp98, var
	mov	rax, QWORD PTR -64[rbp]	# tmp99, value
	mov	rdx, QWORD PTR -56[rbp]	#, value
	mov	QWORD PTR 8[rcx], rax	# var_12->value, tmp99
	mov	QWORD PTR 16[rcx], rdx	# var_12->value,
# compiler/compiler.h:83: 	*out_idx = locals->len - 1;
	.loc 15 83 19
	mov	rax, QWORD PTR -16[rbp]	# tmp100, locals
	mov	eax, DWORD PTR 8[rax]	# _4, locals_10->D.4073.len
# compiler/compiler.h:83: 	*out_idx = locals->len - 1;
	.loc 15 83 25
	lea	edx, -1[rax]	# _5,
# compiler/compiler.h:83: 	*out_idx = locals->len - 1;
	.loc 15 83 11
	mov	rax, QWORD PTR -24[rbp]	# tmp101, out_idx
	mov	DWORD PTR [rax], edx	# *out_idx_16(D), _5
# compiler/compiler.h:84: 	return var;
	.loc 15 84 9
	mov	rax, QWORD PTR -8[rbp]	# _18, var
# compiler/compiler.h:85: }
	.loc 15 85 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE107:
	.size	LocalPush, .-LocalPush
	.type	LocalGet, @function
LocalGet:
.LFB108:
	.loc 15 88 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 56	#,
	mov	QWORD PTR -40[rbp], rdi	# out_idx, out_idx
	mov	QWORD PTR -48[rbp], rsi	# fn, fn
	mov	QWORD PTR -56[rbp], rdx	# name, name
# compiler/compiler.h:89: 	Vec *locals = GetLocals( );
	.loc 15 89 16
	call	GetLocals	#
	mov	QWORD PTR -16[rbp], rax	# locals, tmp88
# compiler/compiler.h:90: 	U32 start = fn->ilocals;
	.loc 15 90 6
	mov	rax, QWORD PTR -48[rbp]	# tmp89, fn
	mov	eax, DWORD PTR 4[rax]	# tmp90, fn_12(D)->ilocals
	mov	DWORD PTR -20[rbp], eax	# start, tmp90
# compiler/compiler.h:91: 	U32 end = ( start + fn->nlocals ) - 1;
	.loc 15 91 24
	mov	rax, QWORD PTR -48[rbp]	# tmp91, fn
	movzx	eax, BYTE PTR 13[rax]	# _1, fn_12(D)->nlocals
	movzx	edx, al	# _2, _1
# compiler/compiler.h:91: 	U32 end = ( start + fn->nlocals ) - 1;
	.loc 15 91 20
	mov	eax, DWORD PTR -20[rbp]	# tmp92, start
	add	eax, edx	# _3, _2
# compiler/compiler.h:91: 	U32 end = ( start + fn->nlocals ) - 1;
	.loc 15 91 6
	sub	eax, 1	# tmp93,
	mov	DWORD PTR -24[rbp], eax	# end, tmp93
# compiler/compiler.h:92: 	for( ; end >= start; end-- )
	.loc 15 92 2
	jmp	.L392	#
.L395:
.LBB15:
# compiler/compiler.h:94: 		Var *var = VecGet( locals, end );
	.loc 15 94 14
	mov	edx, DWORD PTR -24[rbp]	# tmp94, end
	mov	rax, QWORD PTR -16[rbp]	# tmp95, locals
	mov	esi, edx	#, tmp94
	mov	rdi, rax	#, tmp95
	call	VecGet	#
	mov	QWORD PTR -8[rbp], rax	# var, tmp96
# compiler/compiler.h:95: 		if( var->name == name ){ *out_idx = end; return var; }
	.loc 15 95 10
	mov	rax, QWORD PTR -8[rbp]	# tmp97, var
	mov	rax, QWORD PTR [rax]	# _4, var_17->D.4226.name
# compiler/compiler.h:95: 		if( var->name == name ){ *out_idx = end; return var; }
	.loc 15 95 5
	cmp	QWORD PTR -56[rbp], rax	# name, _4
	jne	.L393	#,
# compiler/compiler.h:95: 		if( var->name == name ){ *out_idx = end; return var; }
	.loc 15 95 37 discriminator 1
	mov	rax, QWORD PTR -40[rbp]	# tmp98, out_idx
	mov	edx, DWORD PTR -24[rbp]	# tmp99, end
	mov	DWORD PTR [rax], edx	# *out_idx_20(D), tmp99
# compiler/compiler.h:95: 		if( var->name == name ){ *out_idx = end; return var; }
	.loc 15 95 51 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# _6, var
# compiler/compiler.h:95: 		if( var->name == name ){ *out_idx = end; return var; }
	.loc 15 95 51 is_stmt 0
	jmp	.L394	#
.L393:
.LBE15:
# compiler/compiler.h:92: 	for( ; end >= start; end-- )
	.loc 15 92 26 is_stmt 1
	sub	DWORD PTR -24[rbp], 1	# end,
.L392:
# compiler/compiler.h:92: 	for( ; end >= start; end-- )
	.loc 15 92 13 discriminator 1
	mov	eax, DWORD PTR -24[rbp]	# tmp100, end
	cmp	eax, DWORD PTR -20[rbp]	# tmp100, start
	jnb	.L395	#,
# compiler/compiler.h:97: 	return NULL;
	.loc 15 97 9
	mov	eax, 0	# _6,
.L394:
# compiler/compiler.h:98: }
	.loc 15 98 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE108:
	.size	LocalGet, .-LocalGet
	.type	GlobalPush, @function
GlobalPush:
.LFB109:
	.loc 15 101 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -40[rbp], rdi	# out_idx, out_idx
	mov	QWORD PTR -48[rbp], rsi	# name, name
	mov	eax, edx	# tmp86, value
	mov	rdx, rcx	#, tmp87
	mov	QWORD PTR -64[rbp], rax	# value, tmp85
	mov	QWORD PTR -56[rbp], rdx	# value,
# compiler/compiler.h:102: 	Vec *globals = GetGlobals( );
	.loc 15 102 17
	call	GetGlobals	#
	mov	QWORD PTR -16[rbp], rax	# globals, tmp88
# compiler/compiler.h:103: 	U32 idx = globals->len;
	.loc 15 103 6
	mov	rax, QWORD PTR -16[rbp]	# tmp89, globals
	mov	eax, DWORD PTR 8[rax]	# tmp90, globals_4->D.4073.len
	mov	DWORD PTR -20[rbp], eax	# idx, tmp90
# compiler/compiler.h:104: 	Var *var = VecCommit( globals );
	.loc 15 104 13
	mov	rax, QWORD PTR -16[rbp]	# tmp91, globals
	mov	rdi, rax	#, tmp91
	call	VecCommit	#
	mov	QWORD PTR -8[rbp], rax	# var, tmp92
# compiler/compiler.h:105: 	var->name = name;
	.loc 15 105 12
	mov	rax, QWORD PTR -8[rbp]	# tmp93, var
	mov	rdx, QWORD PTR -48[rbp]	# tmp94, name
	mov	QWORD PTR [rax], rdx	# var_7->D.4226.name, tmp94
# compiler/compiler.h:106: 	var->value = value;
	.loc 15 106 13
	mov	rcx, QWORD PTR -8[rbp]	# tmp95, var
	mov	rax, QWORD PTR -64[rbp]	# tmp96, value
	mov	rdx, QWORD PTR -56[rbp]	#, value
	mov	QWORD PTR 8[rcx], rax	# var_7->value, tmp96
	mov	QWORD PTR 16[rcx], rdx	# var_7->value,
# compiler/compiler.h:107: 	EnvPut( GetEnv( ), name, idx );
	.loc 15 107 2
	call	GetEnv	#
	mov	rcx, rax	# _1,
# compiler/compiler.h:107: 	EnvPut( GetEnv( ), name, idx );
	.loc 15 107 2 is_stmt 0 discriminator 1
	mov	edx, DWORD PTR -20[rbp]	# tmp97, idx
	mov	rax, QWORD PTR -48[rbp]	# tmp98, name
	mov	rsi, rax	#, tmp98
	mov	rdi, rcx	#, _1
	call	EnvPut	#
# compiler/compiler.h:108: 	*out_idx = idx;
	.loc 15 108 11 is_stmt 1
	mov	rax, QWORD PTR -40[rbp]	# tmp99, out_idx
	mov	edx, DWORD PTR -20[rbp]	# tmp100, idx
	mov	DWORD PTR [rax], edx	# *out_idx_13(D), tmp100
# compiler/compiler.h:109: 	return var;
	.loc 15 109 9
	mov	rax, QWORD PTR -8[rbp]	# _15, var
# compiler/compiler.h:110: }
	.loc 15 110 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE109:
	.size	GlobalPush, .-GlobalPush
	.type	GlobalGet, @function
GlobalGet:
.LFB110:
	.loc 15 113 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# out_idx, out_idx
	mov	QWORD PTR -32[rbp], rsi	# name, name
# compiler/compiler.h:114: 	Vec *globals = GetGlobals( );
	.loc 15 114 17
	call	GetGlobals	#
	mov	QWORD PTR -16[rbp], rax	# globals, tmp87
# compiler/compiler.h:115: 	Evar *evar = EnvGet( GetEnv( ), name );
	.loc 15 115 15
	call	GetEnv	#
	mov	rdx, rax	# _1,
# compiler/compiler.h:115: 	Evar *evar = EnvGet( GetEnv( ), name );
	.loc 15 115 15 is_stmt 0 discriminator 1
	mov	rax, QWORD PTR -32[rbp]	# tmp88, name
	mov	rsi, rax	#, tmp88
	mov	rdi, rdx	#, _1
	call	EnvGet	#
	mov	QWORD PTR -8[rbp], rax	# evar, tmp89
# compiler/compiler.h:116: 	if( !evar ){ return NULL; }
	.loc 15 116 4 is_stmt 1
	cmp	QWORD PTR -8[rbp], 0	# evar,
	jne	.L399	#,
# compiler/compiler.h:116: 	if( !evar ){ return NULL; }
	.loc 15 116 22 discriminator 1
	mov	eax, 0	# _4,
# compiler/compiler.h:116: 	if( !evar ){ return NULL; }
	.loc 15 116 22 is_stmt 0
	jmp	.L400	#
.L399:
# compiler/compiler.h:117: 	*out_idx = evar->idx; /* its globals index */
	.loc 15 117 17 is_stmt 1
	mov	rax, QWORD PTR -8[rbp]	# tmp90, evar
	mov	edx, DWORD PTR 4[rax]	# _2, evar_12->idx
# compiler/compiler.h:117: 	*out_idx = evar->idx; /* its globals index */
	.loc 15 117 11
	mov	rax, QWORD PTR -24[rbp]	# tmp91, out_idx
	mov	DWORD PTR [rax], edx	# *out_idx_13(D), _2
# compiler/compiler.h:118: 	return VecGet( globals, evar->idx );
	.loc 15 118 9
	mov	rax, QWORD PTR -8[rbp]	# tmp92, evar
	mov	edx, DWORD PTR 4[rax]	# _3, evar_12->idx
	mov	rax, QWORD PTR -16[rbp]	# tmp93, globals
	mov	esi, edx	#, _3
	mov	rdi, rax	#, tmp93
	call	VecGet	#
.L400:
# compiler/compiler.h:119: }
	.loc 15 119 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE110:
	.size	GlobalGet, .-GlobalGet
	.type	OpPush, @function
OpPush:
.LFB111:
	.loc 15 122 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	DWORD PTR -36[rbp], edi	# OP, OP
	mov	eax, ecx	# tmp97, M
	mov	edi, r9d	# tmp101, ST
	mov	ecx, esi	# tmp94, tmp93
	mov	BYTE PTR -40[rbp], cl	# D, tmp94
	mov	BYTE PTR -44[rbp], dl	# S, tmp96
	mov	BYTE PTR -48[rbp], al	# M, tmp98
	mov	eax, r8d	# tmp100, tmp99
	mov	BYTE PTR -52[rbp], al	# DT, tmp100
	mov	eax, edi	# tmp102, tmp101
	mov	BYTE PTR -56[rbp], al	# ST, tmp102
# compiler/compiler.h:123: 	Compiler *compiler = GetCompiler( );
	.loc 15 123 23
	call	GetCompiler	#
	mov	QWORD PTR -24[rbp], rax	# compiler, tmp103
# compiler/compiler.h:124: 	Vec *code = GetCode( );
	.loc 15 124 14
	call	GetCode	#
	mov	QWORD PTR -16[rbp], rax	# code, tmp104
# compiler/compiler.h:125: 	if( compiler->fn ){ compiler->fn->ncode++; }
	.loc 15 125 14
	mov	rax, QWORD PTR -24[rbp]	# tmp105, compiler
	mov	rax, QWORD PTR [rax]	# _1, compiler_14->fn
# compiler/compiler.h:125: 	if( compiler->fn ){ compiler->fn->ncode++; }
	.loc 15 125 4
	test	rax, rax	# _1
	je	.L402	#,
# compiler/compiler.h:125: 	if( compiler->fn ){ compiler->fn->ncode++; }
	.loc 15 125 30 discriminator 1
	mov	rax, QWORD PTR -24[rbp]	# tmp106, compiler
	mov	rax, QWORD PTR [rax]	# _2, compiler_14->fn
# compiler/compiler.h:125: 	if( compiler->fn ){ compiler->fn->ncode++; }
	.loc 15 125 34 discriminator 1
	movzx	edx, WORD PTR 14[rax]	# _3, _2->ncode
# compiler/compiler.h:125: 	if( compiler->fn ){ compiler->fn->ncode++; }
	.loc 15 125 41 discriminator 1
	add	edx, 1	# _5,
	mov	WORD PTR 14[rax], dx	# _2->ncode, _5
.L402:
# compiler/compiler.h:126: 	Op *op = VecCommit( code );
	.loc 15 126 11
	mov	rax, QWORD PTR -16[rbp]	# tmp107, code
	mov	rdi, rax	#, tmp107
	call	VecCommit	#
	mov	QWORD PTR -8[rbp], rax	# op, tmp108
# compiler/compiler.h:127: 	op->OP = OP;
	.loc 15 127 9
	mov	eax, DWORD PTR -36[rbp]	# tmp109, OP
	mov	edx, eax	# _6, tmp109
	mov	rax, QWORD PTR -8[rbp]	# tmp110, op
	mov	BYTE PTR [rax], dl	# op_19->OP, _6
# compiler/compiler.h:128: 	op->D = D; /* dest */
	.loc 15 128 8
	mov	rax, QWORD PTR -8[rbp]	# tmp111, op
	movzx	edx, BYTE PTR -40[rbp]	# tmp112, D
	mov	BYTE PTR 1[rax], dl	# op_19->D, tmp112
# compiler/compiler.h:129: 	op->S = S; /* src */
	.loc 15 129 8
	mov	rax, QWORD PTR -8[rbp]	# tmp113, op
	movzx	edx, BYTE PTR -44[rbp]	# tmp114, S
	mov	BYTE PTR 2[rax], dl	# op_19->S, tmp114
# compiler/compiler.h:130: 	op->M = M; /* mode */
	.loc 15 130 8
	movzx	eax, BYTE PTR -48[rbp]	# tmp115, M
	and	eax, 3	# tmp115,
	mov	edx, eax	# _7, tmp115
	mov	rax, QWORD PTR -8[rbp]	# tmp116, op
	mov	ecx, edx	# _7, _7
	and	ecx, 3	# _7,
	movzx	edx, BYTE PTR 3[rax]	# tmp119, op_19->M
	and	edx, -4	# tmp120,
	or	edx, ecx	# tmp121, tmp118
	mov	BYTE PTR 3[rax], dl	# op_19->M, tmp121
# compiler/compiler.h:131: 	op->DT = DT; /* dest type  */
	.loc 15 131 9
	movzx	eax, BYTE PTR -52[rbp]	# tmp122, DT
	and	eax, 7	# tmp122,
	mov	edx, eax	# _8, tmp122
	mov	rax, QWORD PTR -8[rbp]	# tmp123, op
	and	edx, 7	# tmp125,
	lea	ecx, 0[0+rdx*4]	# tmp126,
	movzx	edx, BYTE PTR 3[rax]	# tmp127, op_19->DT
	and	edx, -29	# tmp128,
	or	edx, ecx	# tmp129, tmp126
	mov	BYTE PTR 3[rax], dl	# op_19->DT, tmp129
# compiler/compiler.h:132: 	op->ST = ST; /* src type */
	.loc 15 132 9
	movzx	eax, BYTE PTR -56[rbp]	# tmp130, ST
	and	eax, 7	# tmp130,
	mov	edx, eax	# _9, tmp130
	mov	rax, QWORD PTR -8[rbp]	# tmp131, op
	mov	ecx, edx	# _9, _9
	sal	ecx, 5	# _9,
	movzx	edx, BYTE PTR 3[rax]	# tmp134, op_19->ST
	and	edx, 31	# tmp135,
	or	edx, ecx	# tmp136, tmp133
	mov	BYTE PTR 3[rax], dl	# op_19->ST, tmp136
# compiler/compiler.h:133: 	return code->len - 1;
	.loc 15 133 13
	mov	rax, QWORD PTR -16[rbp]	# tmp137, code
	mov	eax, DWORD PTR 8[rax]	# _10, code_16->D.4073.len
# compiler/compiler.h:133: 	return code->len - 1;
	.loc 15 133 19
	sub	eax, 1	# _32,
# compiler/compiler.h:134: }
	.loc 15 134 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE111:
	.size	OpPush, .-OpPush
	.type	TkToOp, @function
TkToOp:
.LFB113:
	.loc 15 142 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi	# type, type
# compiler/compiler.h:144: 	return token_ops[ type ];
	.loc 15 144 18
	mov	eax, DWORD PTR -4[rbp]	# tmp84, type
	lea	rdx, 0[0+rax*4]	# tmp85,
	lea	rax, token_ops.27[rip]	# tmp86,
	mov	eax, DWORD PTR [rdx+rax]	# _3, token_ops[type_2(D)]
# compiler/compiler.h:145: }
	.loc 15 145 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE113:
	.size	TkToOp, .-TkToOp
	.type	LocalAssign, @function
LocalAssign:
.LFB114:
	.file 16 "compiler/assign/assign.h"
	.loc 16 2 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -40[rbp], rdi	# fn, fn
	mov	QWORD PTR -48[rbp], rsi	# name, name
	mov	QWORD PTR -56[rbp], rdx	# rhs, rhs
# compiler/assign/assign.h:2: {
	.loc 16 2 1
	mov	rax, QWORD PTR fs:40	# tmp96, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6693, tmp96
	xor	eax, eax	# tmp96
# compiler/assign/assign.h:3: 	U32 idx = 0;
	.loc 16 3 6
	mov	DWORD PTR -20[rbp], 0	# idx,
# compiler/assign/assign.h:4: 	Var *var = LocalGet( &idx, fn, name );
	.loc 16 4 13
	mov	rdx, QWORD PTR -48[rbp]	# tmp84, name
	mov	rcx, QWORD PTR -40[rbp]	# tmp85, fn
	lea	rax, -20[rbp]	# tmp86,
	mov	rsi, rcx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	LocalGet	#
	mov	QWORD PTR -16[rbp], rax	# var, tmp87
# compiler/assign/assign.h:5: 	if( !var ){ var = LocalPush( &idx, fn, name, rhs->value ); }
	.loc 16 5 4
	cmp	QWORD PTR -16[rbp], 0	# var,
	jne	.L407	#,
# compiler/assign/assign.h:5: 	if( !var ){ var = LocalPush( &idx, fn, name, rhs->value ); }
	.loc 16 5 20 discriminator 1
	mov	rax, QWORD PTR -56[rbp]	# tmp88, rhs
	mov	ecx, DWORD PTR 8[rax]	# tmp89, rhs_8(D)->value
	mov	rdi, QWORD PTR 16[rax]	# tmp90, rhs_8(D)->value
	mov	rdx, QWORD PTR -48[rbp]	# tmp91, name
	mov	rsi, QWORD PTR -40[rbp]	# tmp92, fn
	lea	rax, -20[rbp]	# tmp93,
	mov	r8, rdi	#, tmp90
	mov	rdi, rax	#, tmp93
	call	LocalPush	#
	mov	QWORD PTR -16[rbp], rax	# var, tmp94
.L407:
# compiler/assign/assign.h:6: 	return idx;
	.loc 16 6 9
	mov	eax, DWORD PTR -20[rbp]	# _11, idx
# compiler/assign/assign.h:7: }
	.loc 16 7 1
	mov	rdx, QWORD PTR -8[rbp]	# tmp97, D.6693
	sub	rdx, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L409	#,
	call	__stack_chk_fail@PLT	#
.L409:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE114:
	.size	LocalAssign, .-LocalAssign
	.type	GlobalAssignConst, @function
GlobalAssignConst:
.LFB115:
	.loc 16 10 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# dest, dest
	mov	QWORD PTR -32[rbp], rsi	# var, var
# compiler/assign/assign.h:11: 	U32 const_idx = ConstPush( var->value );
	.loc 16 11 18
	mov	rax, QWORD PTR -32[rbp]	# tmp88, var
	mov	edx, DWORD PTR 8[rax]	# tmp89, var_6(D)->value
	mov	rax, QWORD PTR 16[rax]	# tmp90, var_6(D)->value
	mov	edi, edx	#, tmp89
	mov	rsi, rax	#, tmp90
	call	ConstPush	#
	mov	DWORD PTR -8[rbp], eax	# const_idx, tmp91
# compiler/assign/assign.h:12: 	U32 op_idx = OpPush( OP_MOV, dest, const_idx, MODE_CONST, 0, 0 ); 
	.loc 16 12 15
	mov	eax, DWORD PTR -8[rbp]	# tmp92, const_idx
	movzx	edx, al	# _2, _1
	mov	eax, DWORD PTR -20[rbp]	# tmp93, dest
	movzx	eax, al	# _4, _3
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 1	#,
	mov	esi, eax	#, _4
	mov	edi, 26	#,
	call	OpPush	#
	mov	DWORD PTR -4[rbp], eax	# op_idx, tmp94
# compiler/assign/assign.h:13: 	return op_idx;
	.loc 16 13 9
	mov	eax, DWORD PTR -4[rbp]	# _12, op_idx
# compiler/assign/assign.h:14: }
	.loc 16 14 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE115:
	.size	GlobalAssignConst, .-GlobalAssignConst
	.section	.rodata
	.align 8
.LC9:
	.string	"Assignment to undefined reference: %s\n"
	.text
	.type	GlobalAssignRef, @function
GlobalAssignRef:
.LFB116:
	.loc 16 17 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 72	#,
	.cfi_offset 3, -24
	mov	DWORD PTR -68[rbp], edi	# dest, dest
	mov	QWORD PTR -80[rbp], rsi	# var, var
# compiler/assign/assign.h:17: {
	.loc 16 17 1
	mov	rax, QWORD PTR fs:40	# tmp115, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -24[rbp], rax	# D.6694, tmp115
	xor	eax, eax	# tmp115
# compiler/assign/assign.h:18: 	Compiler *compiler = GetCompiler( );
	.loc 16 18 23
	call	GetCompiler	#
	mov	QWORD PTR -48[rbp], rax	# compiler, tmp100
# compiler/assign/assign.h:19: 	U32 src = 0;
	.loc 16 19 6
	mov	DWORD PTR -52[rbp], 0	# src,
# compiler/assign/assign.h:20: 	Var *ref = LocalGet( &src, compiler->fn, var->value.str );
	.loc 16 20 13
	mov	rax, QWORD PTR -80[rbp]	# tmp101, var
	mov	rdx, QWORD PTR 16[rax]	# _1, var_23(D)->value.D.4160.str
	mov	rax, QWORD PTR -48[rbp]	# tmp102, compiler
	mov	rcx, QWORD PTR [rax]	# _2, compiler_21->fn
	lea	rax, -52[rbp]	# tmp103,
	mov	rsi, rcx	#, _2
	mov	rdi, rax	#, tmp103
	call	LocalGet	#
	mov	QWORD PTR -40[rbp], rax	# ref, tmp104
# compiler/assign/assign.h:21: 	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_LOCAL, 0, 0 ); }
	.loc 16 21 4
	cmp	QWORD PTR -40[rbp], 0	# ref,
	je	.L413	#,
# compiler/assign/assign.h:21: 	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_LOCAL, 0, 0 ); }
	.loc 16 21 20 discriminator 1
	mov	eax, DWORD PTR -52[rbp]	# src.20_3, src
	movzx	edx, al	# _5, _4
	mov	eax, DWORD PTR -68[rbp]	# tmp105, dest
	movzx	eax, al	# _7, _6
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	esi, eax	#, _7
	mov	edi, 26	#,
	call	OpPush	#
# compiler/assign/assign.h:21: 	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_LOCAL, 0, 0 ); }
	.loc 16 21 20 is_stmt 0
	jmp	.L416	#
.L413:
# compiler/assign/assign.h:22: 	ref = GlobalGet( &src, var->value.str );
	.loc 16 22 8 is_stmt 1
	mov	rax, QWORD PTR -80[rbp]	# tmp106, var
	mov	rdx, QWORD PTR 16[rax]	# _8, var_23(D)->value.D.4160.str
	lea	rax, -52[rbp]	# tmp107,
	mov	rsi, rdx	#, _8
	mov	rdi, rax	#, tmp107
	call	GlobalGet	#
	mov	QWORD PTR -40[rbp], rax	# ref, tmp108
# compiler/assign/assign.h:23: 	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_GLOBAL, 0, 0 ); }
	.loc 16 23 4
	cmp	QWORD PTR -40[rbp], 0	# ref,
	je	.L415	#,
# compiler/assign/assign.h:23: 	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_GLOBAL, 0, 0 ); }
	.loc 16 23 20 discriminator 1
	mov	eax, DWORD PTR -52[rbp]	# src.21_9, src
	movzx	edx, al	# _11, _10
	mov	eax, DWORD PTR -68[rbp]	# tmp109, dest
	movzx	eax, al	# _13, _12
	mov	r9d, 0	#,
	mov	r8d, 0	#,
	mov	ecx, 2	#,
	mov	esi, eax	#, _13
	mov	edi, 26	#,
	call	OpPush	#
# compiler/assign/assign.h:23: 	if( ref ){ return OpPush( OP_MOV, dest, src, MODE_GLOBAL, 0, 0 ); }
	.loc 16 23 20 is_stmt 0
	jmp	.L416	#
.L415:
# compiler/assign/assign.h:24: 	I8 *val = ArenaOff( GetStrings( ), var->value.str->offset );
	.loc 16 24 47 is_stmt 1
	mov	rax, QWORD PTR -80[rbp]	# tmp110, var
	mov	rax, QWORD PTR 16[rax]	# _14, var_23(D)->value.D.4160.str
# compiler/assign/assign.h:24: 	I8 *val = ArenaOff( GetStrings( ), var->value.str->offset );
	.loc 16 24 12
	mov	ebx, DWORD PTR [rax]	# _15, _14->offset
	call	GetStrings	#
# compiler/assign/assign.h:24: 	I8 *val = ArenaOff( GetStrings( ), var->value.str->offset );
	.loc 16 24 12 is_stmt 0 discriminator 1
	mov	esi, ebx	#, _15
	mov	rdi, rax	#, _16
	call	ArenaOff	#
	mov	QWORD PTR -32[rbp], rax	# val, tmp111
# compiler/assign/assign.h:25: 	Throw( "Assignment to undefined reference: %s\n", val );
	.loc 16 25 2 is_stmt 1
	mov	rax, QWORD PTR -32[rbp]	# tmp112, val
	mov	rsi, rax	#, tmp112
	lea	rax, .LC9[rip]	# tmp113,
	mov	rdi, rax	#, tmp113
	mov	eax, 0	#,
	call	Throw	#
# compiler/assign/assign.h:26: 	return 0;
	.loc 16 26 9
	mov	eax, 0	# _17,
.L416:
# compiler/assign/assign.h:27: }
	.loc 16 27 1
	mov	rdx, QWORD PTR -24[rbp]	# tmp116, D.6694
	sub	rdx, QWORD PTR fs:40	# tmp116, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L417	#,
	call	__stack_chk_fail@PLT	#
.L417:
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE116:
	.size	GlobalAssignRef, .-GlobalAssignRef
	.type	GlobalAssignCall, @function
GlobalAssignCall:
.LFB117:
	.loc 16 30 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi	# dest, dest
	mov	QWORD PTR -16[rbp], rsi	# var, var
# compiler/assign/assign.h:31: 	return 0;
	.loc 16 31 9
	mov	eax, 0	# _1,
# compiler/assign/assign.h:32: }
	.loc 16 32 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE117:
	.size	GlobalAssignCall, .-GlobalAssignCall
	.type	GlobalAssign, @function
GlobalAssign:
.LFB118:
	.loc 16 35 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	QWORD PTR -8[rbp], rdi	# var, var
	mov	DWORD PTR -12[rbp], esi	# dest, dest
	mov	QWORD PTR -24[rbp], rdx	# name, name
	mov	QWORD PTR -32[rbp], rcx	# rhs, rhs
# compiler/assign/assign.h:37: 	if( !var ){ var = GlobalPush( &dest, name, rhs->value ); }
	.loc 16 37 4
	cmp	QWORD PTR -8[rbp], 0	# var,
	jne	.L421	#,
# compiler/assign/assign.h:37: 	if( !var ){ var = GlobalPush( &dest, name, rhs->value ); }
	.loc 16 37 20 discriminator 1
	mov	rax, QWORD PTR -32[rbp]	# tmp89, rhs
	mov	edx, DWORD PTR 8[rax]	# tmp90, rhs_13(D)->value
	mov	rcx, QWORD PTR 16[rax]	# tmp91, rhs_13(D)->value
	mov	rsi, QWORD PTR -24[rbp]	# tmp92, name
	lea	rax, -12[rbp]	# tmp93,
	mov	rdi, rax	#, tmp93
	call	GlobalPush	#
	mov	QWORD PTR -8[rbp], rax	# var, tmp94
.L421:
# compiler/assign/assign.h:38: 	var->value = rhs->value;
	.loc 16 38 13
	mov	rcx, QWORD PTR -8[rbp]	# tmp95, var
	mov	rax, QWORD PTR -32[rbp]	# tmp96, rhs
	mov	rdx, QWORD PTR 16[rax]	#, rhs_13(D)->value
	mov	rax, QWORD PTR 8[rax]	# tmp97, rhs_13(D)->value
	mov	QWORD PTR 8[rcx], rax	# var_6->value, tmp97
	mov	QWORD PTR 16[rcx], rdx	# var_6->value,
# compiler/assign/assign.h:39: 	goto *types[ rhs->type ];
	.loc 16 39 18
	mov	rax, QWORD PTR -32[rbp]	# tmp98, rhs
	mov	eax, DWORD PTR [rax]	# _1, rhs_13(D)->type
# compiler/assign/assign.h:39: 	goto *types[ rhs->type ];
	.loc 16 39 13
	mov	eax, eax	# tmp99, _1
	lea	rdx, 0[0+rax*8]	# tmp100,
	lea	rax, types.35[rip]	# tmp101,
	mov	rax, QWORD PTR [rdx+rax]	# _2, types[_1]
# compiler/assign/assign.h:39: 	goto *types[ rhs->type ];
	.loc 16 39 2
	nop	
	jmp	rax	# _2
.L423:
	endbr64	
# compiler/assign/assign.h:40: 	CONST: return GlobalAssignConst( dest, var );
	.loc 16 40 16
	mov	eax, DWORD PTR -12[rbp]	# dest.16_3, dest
	mov	rdx, QWORD PTR -8[rbp]	# tmp102, var
	mov	rsi, rdx	#, tmp102
	mov	edi, eax	#, dest.16_3
	call	GlobalAssignConst	#
	jmp	.L424	#
.L425:
	endbr64	
# compiler/assign/assign.h:41: 	REF: return GlobalAssignRef( dest, var );
	.loc 16 41 14
	mov	eax, DWORD PTR -12[rbp]	# dest.17_4, dest
	mov	rdx, QWORD PTR -8[rbp]	# tmp103, var
	mov	rsi, rdx	#, tmp103
	mov	edi, eax	#, dest.17_4
	call	GlobalAssignRef	#
	jmp	.L424	#
.L426:
	endbr64	
# compiler/assign/assign.h:42: 	CALL: return GlobalAssignCall( dest, var );
	.loc 16 42 15
	mov	eax, DWORD PTR -12[rbp]	# dest.18_5, dest
	mov	rdx, QWORD PTR -8[rbp]	# tmp104, var
	mov	rsi, rdx	#, tmp104
	mov	edi, eax	#, dest.18_5
	call	GlobalAssignCall	#
.L424:
# compiler/assign/assign.h:43: }
	.loc 16 43 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE118:
	.size	GlobalAssign, .-GlobalAssign
	.globl	CompileAssign
	.type	CompileAssign, @function
CompileAssign:
.LFB119:
	.loc 16 46 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# name, name
	mov	QWORD PTR -48[rbp], rsi	# rhs, rhs
# compiler/assign/assign.h:46: {
	.loc 16 46 1
	mov	rax, QWORD PTR fs:40	# tmp101, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6696, tmp101
	xor	eax, eax	# tmp101
# compiler/assign/assign.h:47: 	Compiler *compiler = GetCompiler( );
	.loc 16 47 23
	call	GetCompiler	#
	mov	QWORD PTR -24[rbp], rax	# compiler, tmp87
# compiler/assign/assign.h:48: 	if( !compiler->fn ){ return GlobalAssign( NULL, 0, name, rhs ); }
	.loc 16 48 15
	mov	rax, QWORD PTR -24[rbp]	# tmp88, compiler
	mov	rax, QWORD PTR [rax]	# _1, compiler_8->fn
# compiler/assign/assign.h:48: 	if( !compiler->fn ){ return GlobalAssign( NULL, 0, name, rhs ); }
	.loc 16 48 4
	test	rax, rax	# _1
	jne	.L428	#,
# compiler/assign/assign.h:48: 	if( !compiler->fn ){ return GlobalAssign( NULL, 0, name, rhs ); }
	.loc 16 48 30 discriminator 1
	mov	rdx, QWORD PTR -48[rbp]	# tmp89, rhs
	mov	rax, QWORD PTR -40[rbp]	# tmp90, name
	mov	rcx, rdx	#, tmp89
	mov	rdx, rax	#, tmp90
	mov	esi, 0	#,
	mov	edi, 0	#,
	call	GlobalAssign	#
# compiler/assign/assign.h:48: 	if( !compiler->fn ){ return GlobalAssign( NULL, 0, name, rhs ); }
	.loc 16 48 30 is_stmt 0
	jmp	.L431	#
.L428:
# compiler/assign/assign.h:49: 	U32 idx = 0;
	.loc 16 49 6 is_stmt 1
	mov	DWORD PTR -28[rbp], 0	# idx,
# compiler/assign/assign.h:50: 	Var *var = GlobalGet( &idx, name );
	.loc 16 50 13
	mov	rdx, QWORD PTR -40[rbp]	# tmp91, name
	lea	rax, -28[rbp]	# tmp92,
	mov	rsi, rdx	#, tmp91
	mov	rdi, rax	#, tmp92
	call	GlobalGet	#
	mov	QWORD PTR -16[rbp], rax	# var, tmp93
# compiler/assign/assign.h:51: 	if( var ){ return GlobalAssign( var, idx, name, rhs ); } /* global reassign */
	.loc 16 51 4
	cmp	QWORD PTR -16[rbp], 0	# var,
	je	.L430	#,
# compiler/assign/assign.h:51: 	if( var ){ return GlobalAssign( var, idx, name, rhs ); } /* global reassign */
	.loc 16 51 20 discriminator 1
	mov	esi, DWORD PTR -28[rbp]	# idx.15_2, idx
	mov	rcx, QWORD PTR -48[rbp]	# tmp94, rhs
	mov	rdx, QWORD PTR -40[rbp]	# tmp95, name
	mov	rax, QWORD PTR -16[rbp]	# tmp96, var
	mov	rdi, rax	#, tmp96
	call	GlobalAssign	#
# compiler/assign/assign.h:51: 	if( var ){ return GlobalAssign( var, idx, name, rhs ); } /* global reassign */
	.loc 16 51 20 is_stmt 0
	jmp	.L431	#
.L430:
# compiler/assign/assign.h:52: 	return LocalAssign( compiler->fn, name, rhs ); /* local assign or reassign */
	.loc 16 52 9 is_stmt 1
	mov	rax, QWORD PTR -24[rbp]	# tmp97, compiler
	mov	rax, QWORD PTR [rax]	# _3, compiler_8->fn
	mov	rdx, QWORD PTR -48[rbp]	# tmp98, rhs
	mov	rcx, QWORD PTR -40[rbp]	# tmp99, name
	mov	rsi, rcx	#, tmp99
	mov	rdi, rax	#, _3
	call	LocalAssign	#
.L431:
# compiler/assign/assign.h:53: }
	.loc 16 53 1
	mov	rdx, QWORD PTR -8[rbp]	# tmp102, D.6696
	sub	rdx, QWORD PTR fs:40	# tmp102, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L432	#,
	call	__stack_chk_fail@PLT	#
.L432:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE119:
	.size	CompileAssign, .-CompileAssign
	.section	.rodata
.LC10:
	.string	"Illegal Unary Operation: %d\n"
	.text
	.globl	EvalUnaErr
	.type	EvalUnaErr, @function
EvalUnaErr:
.LFB120:
	.file 17 "compiler/unary/eval.h"
	.loc 17 2 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	DWORD PTR -20[rbp], edi	# op, op
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/unary/eval.h:3: 	Throw( "Illegal Unary Operation: %d\n", op );
	.loc 17 3 2
	mov	eax, DWORD PTR -20[rbp]	# tmp86, op
	mov	esi, eax	#, tmp86
	lea	rax, .LC10[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	mov	eax, 0	#,
	call	Throw	#
# compiler/unary/eval.h:4: 	return ( Value ){ 0 };
	.loc 17 4 9
	mov	eax, 0	# D.5847,
	mov	edx, 0	# D.5847,
	mov	rsi, rax	# tmp89, D.5847
	mov	rdi, rdx	#, D.5847
	mov	rcx, rax	# tmp90, D.5847
	mov	rbx, rdx	#, D.5847
	mov	eax, esi	# <retval>, tmp89
	mov	rdx, rbx	# <retval>,
# compiler/unary/eval.h:5: }
	.loc 17 5 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE120:
	.size	EvalUnaErr, .-EvalUnaErr
	.globl	EvalNot
	.type	EvalNot, @function
EvalNot:
.LFB121:
	.loc 17 8 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# rhs, rhs
# compiler/unary/eval.h:10: 	goto *types[ rhs->type ];
	.loc 17 10 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp96, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_11(D)->type
# compiler/unary/eval.h:10: 	goto *types[ rhs->type ];
	.loc 17 10 13
	mov	ecx, ecx	# tmp97, _1
	lea	rsi, 0[0+rcx*8]	# tmp98,
	lea	rcx, types.34[rip]	# tmp99,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:10: 	goto *types[ rhs->type ];
	.loc 17 10 2
	nop	
	jmp	rcx	# _2
.L437:
	endbr64	
# compiler/unary/eval.h:11: 	I64: return VALUE( I64, i64, !rhs->i64 );
	.loc 17 11 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp100, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_11(D)->D.4160.i64
	test	rcx, rcx	# _3
	sete	cl	#, _4
	movzx	ecx, cl	# _5, _4
	mov	rdi, rax	# tmp102, D.5850
	movabs	rsi, -4294967296	# tmp104,
	and	rsi, rdi	# tmp103, tmp102
	mov	rax, rsi	# D.5850, tmp103
	mov	rdx, rcx	# D.5850, _5
	jmp	.L438	#
.L439:
	endbr64	
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 17 12 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, rhs_11(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp106
	ucomisd	xmm0, xmm1	# _6, tmp106
	jp	.L440	#,
	pxor	xmm1, xmm1	# tmp107
	ucomisd	xmm0, xmm1	# _6, tmp107
	jne	.L440	#,
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 17 12 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC12[rip]	# iftmp.22_8,
	jmp	.L442	#
.L440:
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 17 12 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.22_8
.L442:
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 17 12 14 discriminator 4
	mov	rsi, rax	# tmp109, D.5850
	movabs	rcx, -4294967296	# tmp111,
	and	rcx, rsi	# tmp110, tmp109
	or	rcx, 1	# tmp112,
	mov	rax, rcx	# D.5850, tmp112
	movq	rdx, xmm0	# D.5850, iftmp.22_8
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 17 12 14
	jmp	.L438	#
.L443:
	endbr64	
# compiler/unary/eval.h:13: 	STR: return VALUE( STR, str, rhs->str );
	.loc 17 13 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _7, rhs_11(D)->D.4160.str
	mov	rdi, rax	# tmp115, D.5850
	movabs	rcx, -4294967296	# tmp117,
	and	rcx, rdi	# tmp116, tmp115
	or	rcx, 2	# tmp118,
	mov	rax, rcx	# D.5850, tmp118
	mov	rdx, rsi	# D.5850, _7
.L438:
# compiler/unary/eval.h:14: }
	.loc 17 14 1
	mov	rsi, rax	# tmp120, D.5850
	mov	rdi, rdx	#, D.5850
	mov	rcx, rax	# tmp121, D.5850
	mov	rbx, rdx	#, D.5850
	mov	eax, esi	# <retval>, tmp120
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE121:
	.size	EvalNot, .-EvalNot
	.globl	EvalBnot
	.type	EvalBnot, @function
EvalBnot:
.LFB122:
	.loc 17 17 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# rhs, rhs
# compiler/unary/eval.h:19: 	goto *types[ rhs->type ];
	.loc 17 19 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp97, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_12(D)->type
# compiler/unary/eval.h:19: 	goto *types[ rhs->type ];
	.loc 17 19 13
	mov	ecx, ecx	# tmp98, _1
	lea	rsi, 0[0+rcx*8]	# tmp99,
	lea	rcx, types.33[rip]	# tmp100,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:19: 	goto *types[ rhs->type ];
	.loc 17 19 2
	nop	
	jmp	rcx	# _2
.L448:
	endbr64	
# compiler/unary/eval.h:20: 	I64: return VALUE( I64, i64, ~rhs->i64 );
	.loc 17 20 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp101, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_12(D)->D.4160.i64
	not	rcx	# _4
	mov	rdi, rax	# tmp103, D.5859
	movabs	rsi, -4294967296	# tmp105,
	and	rsi, rdi	# tmp104, tmp103
	mov	rax, rsi	# D.5859, tmp104
	mov	rdx, rcx	# D.5859, _4
	jmp	.L449	#
.L450:
	endbr64	
# compiler/unary/eval.h:21: 	F64: return VALUE( F64, f64, ~( I64 )rhs->f64 );
	.loc 17 21 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _5, rhs_12(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _6, _5
	not	rcx	# _7
	pxor	xmm0, xmm0	# _8
	cvtsi2sd	xmm0, rcx	# _8, _7
	mov	rsi, rax	# tmp108, D.5859
	movabs	rcx, -4294967296	# tmp110,
	and	rcx, rsi	# tmp109, tmp108
	or	rcx, 1	# tmp111,
	mov	rax, rcx	# D.5859, tmp111
	movq	rdx, xmm0	# D.5859, _8
	jmp	.L449	#
.L451:
	endbr64	
# compiler/unary/eval.h:22: 	STR: return VALUE( STR, str, rhs->str );
	.loc 17 22 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _9, rhs_12(D)->D.4160.str
	mov	rdi, rax	# tmp114, D.5859
	movabs	rcx, -4294967296	# tmp116,
	and	rcx, rdi	# tmp115, tmp114
	or	rcx, 2	# tmp117,
	mov	rax, rcx	# D.5859, tmp117
	mov	rdx, rsi	# D.5859, _9
.L449:
# compiler/unary/eval.h:23: }
	.loc 17 23 1
	mov	rsi, rax	# tmp119, D.5859
	mov	rdi, rdx	#, D.5859
	mov	rcx, rax	# tmp120, D.5859
	mov	rbx, rdx	#, D.5859
	mov	eax, esi	# <retval>, tmp119
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE122:
	.size	EvalBnot, .-EvalBnot
	.globl	EvalPlus
	.type	EvalPlus, @function
EvalPlus:
.LFB123:
	.loc 17 26 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# rhs, rhs
# compiler/unary/eval.h:28: 	goto *types[ rhs->type ];
	.loc 17 28 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp93, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_8(D)->type
# compiler/unary/eval.h:28: 	goto *types[ rhs->type ];
	.loc 17 28 13
	mov	ecx, ecx	# tmp94, _1
	lea	rsi, 0[0+rcx*8]	# tmp95,
	lea	rcx, types.32[rip]	# tmp96,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:28: 	goto *types[ rhs->type ];
	.loc 17 28 2
	nop	
	jmp	rcx	# _2
.L455:
	endbr64	
# compiler/unary/eval.h:29: 	I64: return VALUE( I64, i64, +rhs->i64 );
	.loc 17 29 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp97, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_8(D)->D.4160.i64
	mov	rdi, rax	# tmp99, D.5864
	movabs	rsi, -4294967296	# tmp101,
	and	rsi, rdi	# tmp100, tmp99
	mov	rax, rsi	# D.5864, tmp100
	mov	rdx, rcx	# D.5864, _3
	jmp	.L456	#
.L457:
	endbr64	
# compiler/unary/eval.h:30: 	F64: return VALUE( F64, f64, +rhs->f64 );
	.loc 17 30 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _4, rhs_8(D)->D.4160.f64
	mov	rsi, rax	# tmp104, D.5864
	movabs	rcx, -4294967296	# tmp106,
	and	rcx, rsi	# tmp105, tmp104
	or	rcx, 1	# tmp107,
	mov	rax, rcx	# D.5864, tmp107
	movq	rdx, xmm0	# D.5864, _4
	jmp	.L456	#
.L458:
	endbr64	
# compiler/unary/eval.h:31: 	STR: return VALUE( STR, str, rhs->str );
	.loc 17 31 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp108, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _5, rhs_8(D)->D.4160.str
	mov	rdi, rax	# tmp110, D.5864
	movabs	rcx, -4294967296	# tmp112,
	and	rcx, rdi	# tmp111, tmp110
	or	rcx, 2	# tmp113,
	mov	rax, rcx	# D.5864, tmp113
	mov	rdx, rsi	# D.5864, _5
.L456:
# compiler/unary/eval.h:32: }
	.loc 17 32 1
	mov	rsi, rax	# tmp115, D.5864
	mov	rdi, rdx	#, D.5864
	mov	rcx, rax	# tmp116, D.5864
	mov	rbx, rdx	#, D.5864
	mov	eax, esi	# <retval>, tmp115
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE123:
	.size	EvalPlus, .-EvalPlus
	.globl	EvalMinus
	.type	EvalMinus, @function
EvalMinus:
.LFB124:
	.loc 17 35 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# rhs, rhs
# compiler/unary/eval.h:37: 	goto *types[ rhs->type ];
	.loc 17 37 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp95, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_10(D)->type
# compiler/unary/eval.h:37: 	goto *types[ rhs->type ];
	.loc 17 37 13
	mov	ecx, ecx	# tmp96, _1
	lea	rsi, 0[0+rcx*8]	# tmp97,
	lea	rcx, types.31[rip]	# tmp98,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:37: 	goto *types[ rhs->type ];
	.loc 17 37 2
	nop	
	jmp	rcx	# _2
.L462:
	endbr64	
# compiler/unary/eval.h:38: 	I64: return VALUE( I64, i64, -rhs->i64 );
	.loc 17 38 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp99, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_10(D)->D.4160.i64
	neg	rcx	# _4
	mov	rdi, rax	# tmp101, D.5869
	movabs	rsi, -4294967296	# tmp103,
	and	rsi, rdi	# tmp102, tmp101
	mov	rax, rsi	# D.5869, tmp102
	mov	rdx, rcx	# D.5869, _4
	jmp	.L463	#
.L464:
	endbr64	
# compiler/unary/eval.h:39: 	F64: return VALUE( F64, f64, -rhs->f64 );
	.loc 17 39 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp104, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _5, rhs_10(D)->D.4160.f64
	movq	xmm1, QWORD PTR .LC13[rip]	# tmp105,
	xorpd	xmm0, xmm1	# _6, tmp105
	mov	rsi, rax	# tmp107, D.5869
	movabs	rcx, -4294967296	# tmp109,
	and	rcx, rsi	# tmp108, tmp107
	or	rcx, 1	# tmp110,
	mov	rax, rcx	# D.5869, tmp110
	movq	rdx, xmm0	# D.5869, _6
	jmp	.L463	#
.L465:
	endbr64	
# compiler/unary/eval.h:40: 	STR: return VALUE( STR, str, rhs->str );
	.loc 17 40 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _7, rhs_10(D)->D.4160.str
	mov	rdi, rax	# tmp113, D.5869
	movabs	rcx, -4294967296	# tmp115,
	and	rcx, rdi	# tmp114, tmp113
	or	rcx, 2	# tmp116,
	mov	rax, rcx	# D.5869, tmp116
	mov	rdx, rsi	# D.5869, _7
.L463:
# compiler/unary/eval.h:41: }
	.loc 17 41 1
	mov	rsi, rax	# tmp118, D.5869
	mov	rdi, rdx	#, D.5869
	mov	rcx, rax	# tmp119, D.5869
	mov	rbx, rdx	#, D.5869
	mov	eax, esi	# <retval>, tmp118
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE124:
	.size	EvalMinus, .-EvalMinus
	.globl	EvalInc
	.type	EvalInc, @function
EvalInc:
.LFB125:
	.loc 17 44 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# rhs, rhs
# compiler/unary/eval.h:46: 	goto *types[ rhs->type ];
	.loc 17 46 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp95, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_10(D)->type
# compiler/unary/eval.h:46: 	goto *types[ rhs->type ];
	.loc 17 46 13
	mov	ecx, ecx	# tmp96, _1
	lea	rsi, 0[0+rcx*8]	# tmp97,
	lea	rcx, types.30[rip]	# tmp98,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:46: 	goto *types[ rhs->type ];
	.loc 17 46 2
	nop	
	jmp	rcx	# _2
.L469:
	endbr64	
# compiler/unary/eval.h:47: 	I64: return VALUE( I64, i64, rhs->i64 + 1 );
	.loc 17 47 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp99, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_10(D)->D.4160.i64
	add	rcx, 1	# _4,
	mov	rdi, rax	# tmp101, D.5874
	movabs	rsi, -4294967296	# tmp103,
	and	rsi, rdi	# tmp102, tmp101
	mov	rax, rsi	# D.5874, tmp102
	mov	rdx, rcx	# D.5874, _4
	jmp	.L470	#
.L471:
	endbr64	
# compiler/unary/eval.h:48: 	F64: return VALUE( F64, f64, rhs->f64 + 1 );
	.loc 17 48 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp104, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _5, rhs_10(D)->D.4160.f64
	movsd	xmm0, QWORD PTR .LC12[rip]	# tmp105,
	addsd	xmm0, xmm1	# _6, _5
	mov	rsi, rax	# tmp107, D.5874
	movabs	rcx, -4294967296	# tmp109,
	and	rcx, rsi	# tmp108, tmp107
	or	rcx, 1	# tmp110,
	mov	rax, rcx	# D.5874, tmp110
	movq	rdx, xmm0	# D.5874, _6
	jmp	.L470	#
.L472:
	endbr64	
# compiler/unary/eval.h:49: 	STR: return VALUE( STR, str, rhs->str );
	.loc 17 49 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _7, rhs_10(D)->D.4160.str
	mov	rdi, rax	# tmp113, D.5874
	movabs	rcx, -4294967296	# tmp115,
	and	rcx, rdi	# tmp114, tmp113
	or	rcx, 2	# tmp116,
	mov	rax, rcx	# D.5874, tmp116
	mov	rdx, rsi	# D.5874, _7
.L470:
# compiler/unary/eval.h:50: }
	.loc 17 50 1
	mov	rsi, rax	# tmp118, D.5874
	mov	rdi, rdx	#, D.5874
	mov	rcx, rax	# tmp119, D.5874
	mov	rbx, rdx	#, D.5874
	mov	eax, esi	# <retval>, tmp118
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE125:
	.size	EvalInc, .-EvalInc
	.globl	EvalDec
	.type	EvalDec, @function
EvalDec:
.LFB126:
	.loc 17 53 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# rhs, rhs
# compiler/unary/eval.h:55: 	goto *types[ rhs->type ];
	.loc 17 55 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp95, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_10(D)->type
# compiler/unary/eval.h:55: 	goto *types[ rhs->type ];
	.loc 17 55 13
	mov	ecx, ecx	# tmp96, _1
	lea	rsi, 0[0+rcx*8]	# tmp97,
	lea	rcx, types.29[rip]	# tmp98,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:55: 	goto *types[ rhs->type ];
	.loc 17 55 2
	nop	
	jmp	rcx	# _2
.L476:
	endbr64	
# compiler/unary/eval.h:56: 	I64: return VALUE( I64, i64, rhs->i64 - 1 );
	.loc 17 56 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp99, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_10(D)->D.4160.i64
	sub	rcx, 1	# _4,
	mov	rdi, rax	# tmp101, D.5879
	movabs	rsi, -4294967296	# tmp103,
	and	rsi, rdi	# tmp102, tmp101
	mov	rax, rsi	# D.5879, tmp102
	mov	rdx, rcx	# D.5879, _4
	jmp	.L477	#
.L478:
	endbr64	
# compiler/unary/eval.h:57: 	F64: return VALUE( F64, f64, rhs->f64 - 1 );
	.loc 17 57 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp104, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _5, rhs_10(D)->D.4160.f64
	movsd	xmm1, QWORD PTR .LC12[rip]	# tmp105,
	subsd	xmm0, xmm1	# _6, tmp105
	mov	rsi, rax	# tmp107, D.5879
	movabs	rcx, -4294967296	# tmp109,
	and	rcx, rsi	# tmp108, tmp107
	or	rcx, 1	# tmp110,
	mov	rax, rcx	# D.5879, tmp110
	movq	rdx, xmm0	# D.5879, _6
	jmp	.L477	#
.L479:
	endbr64	
# compiler/unary/eval.h:58: 	STR: return VALUE( STR, str, rhs->str );
	.loc 17 58 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _7, rhs_10(D)->D.4160.str
	mov	rdi, rax	# tmp113, D.5879
	movabs	rcx, -4294967296	# tmp115,
	and	rcx, rdi	# tmp114, tmp113
	or	rcx, 2	# tmp116,
	mov	rax, rcx	# D.5879, tmp116
	mov	rdx, rsi	# D.5879, _7
.L477:
# compiler/unary/eval.h:59: }
	.loc 17 59 1
	mov	rsi, rax	# tmp118, D.5879
	mov	rdi, rdx	#, D.5879
	mov	rcx, rax	# tmp119, D.5879
	mov	rbx, rdx	#, D.5879
	mov	eax, esi	# <retval>, tmp118
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE126:
	.size	EvalDec, .-EvalDec
	.type	UnaFold, @function
UnaFold:
.LFB127:
	.file 18 "compiler/unary/unary.h"
	.loc 18 2 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	DWORD PTR -20[rbp], edi	# op, op
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/unary/unary.h:4: 	goto *ops[ op ];
	.loc 18 4 11
	mov	eax, DWORD PTR -20[rbp]	# tmp93, op
	lea	rdx, 0[0+rax*8]	# tmp94,
	lea	rax, ops.26[rip]	# tmp95,
	mov	rax, QWORD PTR [rdx+rax]	# _1, ops[op_11(D)]
# compiler/unary/unary.h:4: 	goto *ops[ op ];
	.loc 18 4 2
	nop	
	jmp	rax	# _1
.L483:
	endbr64	
# compiler/unary/fold_labels.h:1: ERR: return EvalUnaErr( op, &rhs->value );
	.file 19 "compiler/unary/fold_labels.h"
	.loc 19 1 13
	mov	rax, QWORD PTR -32[rbp]	# tmp96, rhs
	lea	rdx, 8[rax]	# _2,
	mov	eax, DWORD PTR -20[rbp]	# tmp97, op
	mov	rsi, rdx	#, _2
	mov	edi, eax	#, tmp97
	call	EvalUnaErr	#
	mov	rcx, rdx	# tmp99,
	mov	rdx, rcx	# D.5893, tmp99
	jmp	.L484	#
.L485:
	endbr64	
# compiler/unary/fold_labels.h:2: NOT: return EvalNot( &rhs->value );
	.loc 19 2 13
	mov	rax, QWORD PTR -32[rbp]	# tmp100, rhs
	add	rax, 8	# _3,
	mov	rdi, rax	#, _3
	call	EvalNot	#
	mov	rcx, rdx	# tmp102,
	mov	rdx, rcx	# D.5893, tmp102
	jmp	.L484	#
.L486:
	endbr64	
# compiler/unary/fold_labels.h:3: BNOT: return EvalBnot( &rhs->value );
	.loc 19 3 14
	mov	rax, QWORD PTR -32[rbp]	# tmp103, rhs
	add	rax, 8	# _4,
	mov	rdi, rax	#, _4
	call	EvalBnot	#
	mov	rcx, rdx	# tmp105,
	mov	rdx, rcx	# D.5893, tmp105
	jmp	.L484	#
.L487:
	endbr64	
# compiler/unary/fold_labels.h:4: PLUS: return EvalPlus( &rhs->value );
	.loc 19 4 14
	mov	rax, QWORD PTR -32[rbp]	# tmp106, rhs
	add	rax, 8	# _5,
	mov	rdi, rax	#, _5
	call	EvalPlus	#
	mov	rcx, rdx	# tmp108,
	mov	rdx, rcx	# D.5893, tmp108
	jmp	.L484	#
.L488:
	endbr64	
# compiler/unary/fold_labels.h:5: MINUS: return EvalMinus( &rhs->value );
	.loc 19 5 15
	mov	rax, QWORD PTR -32[rbp]	# tmp109, rhs
	add	rax, 8	# _6,
	mov	rdi, rax	#, _6
	call	EvalMinus	#
	mov	rcx, rdx	# tmp111,
	mov	rdx, rcx	# D.5893, tmp111
	jmp	.L484	#
.L489:
	endbr64	
# compiler/unary/fold_labels.h:6: INC: return EvalInc( &rhs->value );
	.loc 19 6 13
	mov	rax, QWORD PTR -32[rbp]	# tmp112, rhs
	add	rax, 8	# _7,
	mov	rdi, rax	#, _7
	call	EvalInc	#
	mov	rcx, rdx	# tmp114,
	mov	rdx, rcx	# D.5893, tmp114
	jmp	.L484	#
.L490:
	endbr64	
# compiler/unary/fold_labels.h:7: DEC: return EvalDec( &rhs->value );
	.loc 19 7 13
	mov	rax, QWORD PTR -32[rbp]	# tmp115, rhs
	add	rax, 8	# _8,
	mov	rdi, rax	#, _8
	call	EvalDec	#
	mov	rcx, rdx	# tmp117,
	mov	rdx, rcx	# D.5893, tmp117
.L484:
# compiler/unary/unary.h:6: }
	.loc 18 6 1
	mov	rsi, rax	# tmp119, D.5893
	mov	rdi, rdx	#, D.5893
	mov	rcx, rax	# tmp120, D.5893
	mov	rbx, rdx	#, D.5893
	mov	eax, esi	# <retval>, tmp119
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE127:
	.size	UnaFold, .-UnaFold
	.type	UnaConst, @function
UnaConst:
.LFB128:
	.loc 18 9 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	DWORD PTR -44[rbp], esi	# op, op
	mov	QWORD PTR -56[rbp], rdx	# rhs, rhs
# compiler/unary/unary.h:10: 	ParseNode node = { .type = PT_CONST, .value.type = rhs->value.type };
	.loc 18 10 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
# compiler/unary/unary.h:10: 	ParseNode node = { .type = PT_CONST, .value.type = rhs->value.type };
	.loc 18 10 63
	mov	rax, QWORD PTR -56[rbp]	# tmp84, rhs
	mov	eax, DWORD PTR 8[rax]	# _1, rhs_4(D)->value.type
# compiler/unary/unary.h:10: 	ParseNode node = { .type = PT_CONST, .value.type = rhs->value.type };
	.loc 18 10 12
	mov	DWORD PTR -24[rbp], eax	# node.value.type, _1
# compiler/unary/unary.h:11: 	node.value = UnaFold( op, rhs );
	.loc 18 11 15
	mov	rdx, QWORD PTR -56[rbp]	# tmp85, rhs
	mov	eax, DWORD PTR -44[rbp]	# tmp86, op
	mov	rsi, rdx	#, tmp85
	mov	edi, eax	#, tmp86
	call	UnaFold	#
	mov	ecx, eax	# tmp87,
	mov	rax, rdx	# tmp88,
	mov	DWORD PTR -24[rbp], ecx	# node.value, tmp87
	mov	QWORD PTR -16[rbp], rax	# node.value, tmp88
# compiler/unary/unary.h:12: 	return node;
	.loc 18 12 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp89, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp90, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp90
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp91, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp91
# compiler/unary/unary.h:13: }
	.loc 18 13 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE128:
	.size	UnaConst, .-UnaConst
	.type	UnaRef, @function
UnaRef:
.LFB129:
	.loc 18 16 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	DWORD PTR -44[rbp], esi	# op, op
	mov	QWORD PTR -56[rbp], rdx	# rhs, rhs
# compiler/unary/unary.h:17: 	return ( ParseNode ){ 0 };
	.loc 18 17 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/unary/unary.h:18: }
	.loc 18 18 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE129:
	.size	UnaRef, .-UnaRef
	.type	UnaCall, @function
UnaCall:
.LFB130:
	.loc 18 21 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	DWORD PTR -44[rbp], esi	# op, op
	mov	QWORD PTR -56[rbp], rdx	# rhs, rhs
# compiler/unary/unary.h:22: 	return ( ParseNode ){ 0 };
	.loc 18 22 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/unary/unary.h:23: }
	.loc 18 23 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE130:
	.size	UnaCall, .-UnaCall
	.globl	CompileUna
	.type	CompileUna, @function
CompileUna:
.LFB131:
	.loc 18 26 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	DWORD PTR -28[rbp], esi	# token_type, token_type
	mov	QWORD PTR -40[rbp], rdx	# rhs, rhs
# compiler/unary/unary.h:26: {
	.loc 18 26 1
	mov	rax, QWORD PTR fs:40	# tmp99, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6701, tmp99
	xor	eax, eax	# tmp99
# compiler/unary/unary.h:28: 	OpCode op = TkToOp( token_type );
	.loc 18 28 14
	mov	eax, DWORD PTR -28[rbp]	# tmp84, token_type
	mov	edi, eax	#, tmp84
	call	TkToOp	#
	mov	DWORD PTR -12[rbp], eax	# op, tmp85
# compiler/unary/unary.h:29: 	goto *irs[ rhs->type ];
	.loc 18 29 16
	mov	rax, QWORD PTR -40[rbp]	# tmp86, rhs
	mov	eax, DWORD PTR [rax]	# _1, rhs_8(D)->type
# compiler/unary/unary.h:29: 	goto *irs[ rhs->type ];
	.loc 18 29 11
	mov	eax, eax	# tmp87, _1
	lea	rdx, 0[0+rax*8]	# tmp88,
	lea	rax, irs.28[rip]	# tmp89,
	mov	rax, QWORD PTR [rdx+rax]	# _2, irs[_1]
# compiler/unary/unary.h:29: 	goto *irs[ rhs->type ];
	.loc 18 29 2
	nop	
	jmp	rax	# _2
.L499:
	endbr64	
# compiler/unary/ir_labels.h:1: CONST: return UnaConst( op, rhs );
	.file 20 "compiler/unary/ir_labels.h"
	.loc 20 1 15
	mov	rax, QWORD PTR -24[rbp]	# tmp90, .result_ptr
	mov	rdx, QWORD PTR -40[rbp]	# tmp91, rhs
	mov	ecx, DWORD PTR -12[rbp]	# tmp92, op
	mov	esi, ecx	#, tmp92
	mov	rdi, rax	#, tmp90
	call	UnaConst	#
	jmp	.L500	#
.L501:
	endbr64	
# compiler/unary/ir_labels.h:2: REF: return UnaRef( op, rhs );
	.loc 20 2 13
	mov	rax, QWORD PTR -24[rbp]	# tmp93, .result_ptr
	mov	rdx, QWORD PTR -40[rbp]	# tmp94, rhs
	mov	ecx, DWORD PTR -12[rbp]	# tmp95, op
	mov	esi, ecx	#, tmp95
	mov	rdi, rax	#, tmp93
	call	UnaRef	#
	jmp	.L500	#
.L502:
	endbr64	
# compiler/unary/ir_labels.h:3: CALL: return UnaCall( op, rhs );
	.loc 20 3 14
	mov	rax, QWORD PTR -24[rbp]	# tmp96, .result_ptr
	mov	rdx, QWORD PTR -40[rbp]	# tmp97, rhs
	mov	ecx, DWORD PTR -12[rbp]	# tmp98, op
	mov	esi, ecx	#, tmp98
	mov	rdi, rax	#, tmp96
	call	UnaCall	#
.L500:
# compiler/unary/unary.h:31: }
	.loc 18 31 1
	mov	rax, QWORD PTR -8[rbp]	# tmp100, D.6701
	sub	rax, QWORD PTR fs:40	# tmp100, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L503	#,
	call	__stack_chk_fail@PLT	#
.L503:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE131:
	.size	CompileUna, .-CompileUna
	.section	.rodata
.LC14:
	.string	"Illegal Binary Operation: %d"
	.text
	.type	EvalBinErr, @function
EvalBinErr:
.LFB132:
	.file 21 "compiler/binary/eval.h"
	.loc 21 2 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 40	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	DWORD PTR -28[rbp], esi	# op, op
	mov	QWORD PTR -40[rbp], rdx	# rhs, rhs
# compiler/binary/eval.h:3: 	Throw( "Illegal Binary Operation: %d", op );
	.loc 21 3 2
	mov	eax, DWORD PTR -28[rbp]	# tmp86, op
	mov	esi, eax	#, tmp86
	lea	rax, .LC14[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	mov	eax, 0	#,
	call	Throw	#
# compiler/binary/eval.h:4: 	return ( Value ){ 0 };
	.loc 21 4 9
	mov	eax, 0	# D.5912,
	mov	edx, 0	# D.5912,
	mov	rsi, rax	# tmp89, D.5912
	mov	rdi, rdx	#, D.5912
	mov	rcx, rax	# tmp90, D.5912
	mov	rbx, rdx	#, D.5912
	mov	eax, esi	# <retval>, tmp89
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:5: }
	.loc 21 5 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE132:
	.size	EvalBinErr, .-EvalBinErr
	.type	EvalAdd, @function
EvalAdd:
.LFB133:
	.loc 21 8 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:10: 	goto *ops[ lhs->type ];
	.loc 21 10 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:10: 	goto *ops[ lhs->type ];
	.loc 21 10 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.22[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:10: 	goto *ops[ lhs->type ];
	.loc 21 10 2
	nop	
	jmp	rcx	# _2
.L508:
	endbr64	
# compiler/binary/eval.h:11: 	I64: return VALUE( I64, i64, lhs->i64 + rhs->i64 );
	.loc 21 11 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	add	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp109, D.5915
	movabs	rsi, -4294967296	# tmp111,
	and	rsi, rdi	# tmp110, tmp109
	mov	rax, rsi	# D.5915, tmp110
	mov	rdx, rcx	# D.5915, _5
	jmp	.L509	#
.L510:
	endbr64	
# compiler/binary/eval.h:12: 	F64: return VALUE( F64, f64, lhs->f64 + rhs->f64 );
	.loc 21 12 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp113, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	addsd	xmm0, xmm1	# _8, _6
	mov	rsi, rax	# tmp115, D.5915
	movabs	rcx, -4294967296	# tmp117,
	and	rcx, rsi	# tmp116, tmp115
	or	rcx, 1	# tmp118,
	mov	rax, rcx	# D.5915, tmp118
	movq	rdx, xmm0	# D.5915, _8
	jmp	.L509	#
.L511:
	endbr64	
# compiler/binary/eval.h:13: 	STR: return VALUE( I64, i64, lhs->str->len + rhs->str->len );
	.loc 21 13 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp119, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp120, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_19(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	add	ecx, esi	# _13, _10
	mov	esi, ecx	# _14, _13
	mov	rdi, rax	# tmp122, D.5915
	movabs	rcx, -4294967296	# tmp124,
	and	rcx, rdi	# tmp123, tmp122
	mov	rax, rcx	# D.5915, tmp123
	mov	rdx, rsi	# D.5915, _14
.L509:
# compiler/binary/eval.h:14: }
	.loc 21 14 1
	mov	rsi, rax	# tmp126, D.5915
	mov	rdi, rdx	#, D.5915
	mov	rcx, rax	# tmp127, D.5915
	mov	rbx, rdx	#, D.5915
	mov	eax, esi	# <retval>, tmp126
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE133:
	.size	EvalAdd, .-EvalAdd
	.type	EvalSub, @function
EvalSub:
.LFB134:
	.loc 21 17 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:19: 	goto *ops[ lhs->type ];
	.loc 21 19 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:19: 	goto *ops[ lhs->type ];
	.loc 21 19 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.21[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:19: 	goto *ops[ lhs->type ];
	.loc 21 19 2
	nop	
	jmp	rcx	# _2
.L515:
	endbr64	
# compiler/binary/eval.h:20: 	I64: return VALUE( I64, i64, lhs->i64 - rhs->i64 );
	.loc 21 20 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	sub	rsi, rcx	# _5, _4
	mov	rdi, rax	# tmp109, D.5920
	movabs	rcx, -4294967296	# tmp111,
	and	rcx, rdi	# tmp110, tmp109
	mov	rax, rcx	# D.5920, tmp110
	mov	rdx, rsi	# D.5920, _5
	jmp	.L516	#
.L517:
	endbr64	
# compiler/binary/eval.h:21: 	F64: return VALUE( F64, f64, lhs->f64 - rhs->f64 );
	.loc 21 21 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp113, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	subsd	xmm0, xmm1	# _8, _7
	mov	rsi, rax	# tmp115, D.5920
	movabs	rcx, -4294967296	# tmp117,
	and	rcx, rsi	# tmp116, tmp115
	or	rcx, 1	# tmp118,
	mov	rax, rcx	# D.5920, tmp118
	movq	rdx, xmm0	# D.5920, _8
	jmp	.L516	#
.L518:
	endbr64	
# compiler/binary/eval.h:22: 	STR: return VALUE( I64, i64, lhs->str->len - rhs->str->len );
	.loc 21 22 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp119, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp120, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_19(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	sub	esi, ecx	# _13, _12
	mov	esi, esi	# _14, _13
	mov	rdi, rax	# tmp122, D.5920
	movabs	rcx, -4294967296	# tmp124,
	and	rcx, rdi	# tmp123, tmp122
	mov	rax, rcx	# D.5920, tmp123
	mov	rdx, rsi	# D.5920, _14
.L516:
# compiler/binary/eval.h:23: }
	.loc 21 23 1
	mov	rsi, rax	# tmp126, D.5920
	mov	rdi, rdx	#, D.5920
	mov	rcx, rax	# tmp127, D.5920
	mov	rbx, rdx	#, D.5920
	mov	eax, esi	# <retval>, tmp126
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE134:
	.size	EvalSub, .-EvalSub
	.type	EvalMul, @function
EvalMul:
.LFB135:
	.loc 21 26 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:28: 	goto *ops[ lhs->type ];
	.loc 21 28 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:28: 	goto *ops[ lhs->type ];
	.loc 21 28 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.20[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:28: 	goto *ops[ lhs->type ];
	.loc 21 28 2
	nop	
	jmp	rcx	# _2
.L522:
	endbr64	
# compiler/binary/eval.h:29: 	I64: return VALUE( I64, i64, lhs->i64 * rhs->i64 );
	.loc 21 29 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	imul	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp109, D.5925
	movabs	rsi, -4294967296	# tmp111,
	and	rsi, rdi	# tmp110, tmp109
	mov	rax, rsi	# D.5925, tmp110
	mov	rdx, rcx	# D.5925, _5
	jmp	.L523	#
.L524:
	endbr64	
# compiler/binary/eval.h:30: 	F64: return VALUE( F64, f64, lhs->f64 * rhs->f64 );
	.loc 21 30 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp113, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	mulsd	xmm0, xmm1	# _8, _6
	mov	rsi, rax	# tmp115, D.5925
	movabs	rcx, -4294967296	# tmp117,
	and	rcx, rsi	# tmp116, tmp115
	or	rcx, 1	# tmp118,
	mov	rax, rcx	# D.5925, tmp118
	movq	rdx, xmm0	# D.5925, _8
	jmp	.L523	#
.L525:
	endbr64	
# compiler/binary/eval.h:31: 	STR: return VALUE( I64, i64, lhs->str->len * rhs->str->len );
	.loc 21 31 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp119, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp120, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_19(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	imul	ecx, esi	# _13, _10
	mov	esi, ecx	# _14, _13
	mov	rdi, rax	# tmp122, D.5925
	movabs	rcx, -4294967296	# tmp124,
	and	rcx, rdi	# tmp123, tmp122
	mov	rax, rcx	# D.5925, tmp123
	mov	rdx, rsi	# D.5925, _14
.L523:
# compiler/binary/eval.h:32: }
	.loc 21 32 1
	mov	rsi, rax	# tmp126, D.5925
	mov	rdi, rdx	#, D.5925
	mov	rcx, rax	# tmp127, D.5925
	mov	rbx, rdx	#, D.5925
	mov	eax, esi	# <retval>, tmp126
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE135:
	.size	EvalMul, .-EvalMul
	.type	EvalDiv, @function
EvalDiv:
.LFB136:
	.loc 21 35 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:37: 	goto *ops[ lhs->type ];
	.loc 21 37 16
	mov	rax, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	eax, DWORD PTR [rax]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:37: 	goto *ops[ lhs->type ];
	.loc 21 37 11
	mov	eax, eax	# tmp103, _1
	lea	rdx, 0[0+rax*8]	# tmp104,
	lea	rax, ops.19[rip]	# tmp105,
	mov	rax, QWORD PTR [rdx+rax]	# _2, ops[_1]
# compiler/binary/eval.h:37: 	goto *ops[ lhs->type ];
	.loc 21 37 2
	nop	
	jmp	rax	# _2
.L529:
	endbr64	
# compiler/binary/eval.h:38: 	I64: return VALUE( I64, i64, lhs->i64 / rhs->i64 );
	.loc 21 38 14
	mov	rax, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rax, QWORD PTR 8[rax]	# _3, lhs_17(D)->D.4160.i64
	mov	rdx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rdi, QWORD PTR 8[rdx]	# _4, rhs_19(D)->D.4160.i64
	cqo
	idiv	rdi	# _4
	mov	rdx, rax	# _5, tmp108
	mov	rsi, rcx	# tmp111, D.5930
	movabs	rax, -4294967296	# tmp113,
	and	rax, rsi	# tmp112, tmp111
	mov	rcx, rax	# D.5930, tmp112
	mov	rbx, rdx	# D.5930, _5
	jmp	.L530	#
.L531:
	endbr64	
# compiler/binary/eval.h:39: 	F64: return VALUE( F64, f64, lhs->f64 / rhs->f64 );
	.loc 21 39 14
	mov	rax, QWORD PTR -24[rbp]	# tmp114, lhs
	movsd	xmm0, QWORD PTR 8[rax]	# _6, lhs_17(D)->D.4160.f64
	mov	rax, QWORD PTR -32[rbp]	# tmp115, rhs
	movsd	xmm1, QWORD PTR 8[rax]	# _7, rhs_19(D)->D.4160.f64
	divsd	xmm0, xmm1	# _8, _7
	mov	rdx, rcx	# tmp117, D.5930
	movabs	rax, -4294967296	# tmp119,
	and	rax, rdx	# tmp118, tmp117
	or	rax, 1	# tmp120,
	mov	rcx, rax	# D.5930, tmp120
	movq	rbx, xmm0	# D.5930, _8
	jmp	.L530	#
.L532:
	endbr64	
# compiler/binary/eval.h:40: 	STR: return VALUE( I64, i64, lhs->str->len / rhs->str->len );
	.loc 21 40 14
	mov	rax, QWORD PTR -24[rbp]	# tmp121, lhs
	mov	rax, QWORD PTR 8[rax]	# _9, lhs_17(D)->D.4160.str
	mov	eax, DWORD PTR 4[rax]	# _10, _9->len
	mov	rdx, QWORD PTR -32[rbp]	# tmp122, rhs
	mov	rdx, QWORD PTR 8[rdx]	# _11, rhs_19(D)->D.4160.str
	mov	edi, DWORD PTR 4[rdx]	# _12, _11->len
	mov	edx, 0	# tmp124,
	div	edi	# _12
	mov	edx, eax	# _14, _13
	mov	rsi, rcx	# tmp126, D.5930
	movabs	rax, -4294967296	# tmp128,
	and	rax, rsi	# tmp127, tmp126
	mov	rcx, rax	# D.5930, tmp127
	mov	rbx, rdx	# D.5930, _14
.L530:
# compiler/binary/eval.h:41: }
	.loc 21 41 1
	mov	rax, rcx	# tmp130, D.5930
	mov	rdx, rbx	#, D.5930
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE136:
	.size	EvalDiv, .-EvalDiv
	.type	EvalMod, @function
EvalMod:
.LFB137:
	.loc 21 44 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:46: 	goto *ops[ lhs->type ];
	.loc 21 46 16
	mov	rax, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	eax, DWORD PTR [rax]	# _1, lhs_20(D)->type
# compiler/binary/eval.h:46: 	goto *ops[ lhs->type ];
	.loc 21 46 11
	mov	eax, eax	# tmp106, _1
	lea	rdx, 0[0+rax*8]	# tmp107,
	lea	rax, ops.18[rip]	# tmp108,
	mov	rax, QWORD PTR [rdx+rax]	# _2, ops[_1]
# compiler/binary/eval.h:46: 	goto *ops[ lhs->type ];
	.loc 21 46 2
	nop	
	jmp	rax	# _2
.L536:
	endbr64	
# compiler/binary/eval.h:47: 	I64: return VALUE( I64, i64, lhs->i64 % rhs->i64 );
	.loc 21 47 14
	mov	rax, QWORD PTR -24[rbp]	# tmp109, lhs
	mov	rax, QWORD PTR 8[rax]	# _3, lhs_20(D)->D.4160.i64
	mov	rdx, QWORD PTR -32[rbp]	# tmp110, rhs
	mov	rdi, QWORD PTR 8[rdx]	# _4, rhs_22(D)->D.4160.i64
	cqo
	idiv	rdi	# _4
	mov	rsi, rdx	# tmp111, tmp111
	mov	rdx, rsi	# _5, tmp111
	mov	rsi, rcx	# tmp114, D.5935
	movabs	rax, -4294967296	# tmp116,
	and	rax, rsi	# tmp115, tmp114
	mov	rcx, rax	# D.5935, tmp115
	mov	rbx, rdx	# D.5935, _5
	jmp	.L537	#
.L538:
	endbr64	
# compiler/binary/eval.h:48: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 % ( I64 )rhs->f64 );
	.loc 21 48 14
	mov	rax, QWORD PTR -24[rbp]	# tmp117, lhs
	movsd	xmm0, QWORD PTR 8[rax]	# _6, lhs_20(D)->D.4160.f64
	cvttsd2si	rax, xmm0	# _7, _6
	mov	rdx, QWORD PTR -32[rbp]	# tmp118, rhs
	movsd	xmm0, QWORD PTR 8[rdx]	# _8, rhs_22(D)->D.4160.f64
	cvttsd2si	rdi, xmm0	# _9, _8
	cqo
	idiv	rdi	# _9
	mov	rsi, rdx	# tmp119, tmp119
	mov	rax, rsi	# _10, tmp119
	pxor	xmm0, xmm0	# _11
	cvtsi2sd	xmm0, rax	# _11, _10
	mov	rdx, rcx	# tmp122, D.5935
	movabs	rax, -4294967296	# tmp124,
	and	rax, rdx	# tmp123, tmp122
	or	rax, 1	# tmp125,
	mov	rcx, rax	# D.5935, tmp125
	movq	rbx, xmm0	# D.5935, _11
	jmp	.L537	#
.L539:
	endbr64	
# compiler/binary/eval.h:49: 	STR: return VALUE( I64, i64, lhs->str->len % rhs->str->len );
	.loc 21 49 14
	mov	rax, QWORD PTR -24[rbp]	# tmp126, lhs
	mov	rax, QWORD PTR 8[rax]	# _12, lhs_20(D)->D.4160.str
	mov	eax, DWORD PTR 4[rax]	# _13, _12->len
	mov	rdx, QWORD PTR -32[rbp]	# tmp127, rhs
	mov	rdx, QWORD PTR 8[rdx]	# _14, rhs_22(D)->D.4160.str
	mov	edi, DWORD PTR 4[rdx]	# _15, _14->len
	mov	edx, 0	# tmp128,
	div	edi	# _15
	mov	esi, edx	# tmp128, tmp128
	mov	eax, esi	# _16, tmp128
	mov	edx, eax	# _17, _16
	mov	rsi, rcx	# tmp131, D.5935
	movabs	rax, -4294967296	# tmp133,
	and	rax, rsi	# tmp132, tmp131
	mov	rcx, rax	# D.5935, tmp132
	mov	rbx, rdx	# D.5935, _17
.L537:
# compiler/binary/eval.h:50: }
	.loc 21 50 1
	mov	rax, rcx	# tmp135, D.5935
	mov	rdx, rbx	#, D.5935
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE137:
	.size	EvalMod, .-EvalMod
	.type	EvalPow, @function
EvalPow:
.LFB138:
	.loc 21 53 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	r13	#
	push	r12	#
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	mov	QWORD PTR -40[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -48[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:55: 	goto *ops[ lhs->type ];
	.loc 21 55 16
	mov	rax, QWORD PTR -40[rbp]	# tmp107, lhs
	mov	eax, DWORD PTR [rax]	# _1, lhs_22(D)->type
# compiler/binary/eval.h:55: 	goto *ops[ lhs->type ];
	.loc 21 55 11
	mov	eax, eax	# tmp108, _1
	lea	rdx, 0[0+rax*8]	# tmp109,
	lea	rax, ops.17[rip]	# tmp110,
	mov	rax, QWORD PTR [rdx+rax]	# _2, ops[_1]
# compiler/binary/eval.h:55: 	goto *ops[ lhs->type ];
	.loc 21 55 2
	nop	
	jmp	rax	# _2
.L543:
	endbr64	
# compiler/binary/eval.h:56: 	I64: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->i64, ( F64 )rhs->i64 ) );
	.loc 21 56 14
	mov	rax, QWORD PTR -48[rbp]	# tmp111, rhs
	mov	rax, QWORD PTR 8[rax]	# _3, rhs_24(D)->D.4160.i64
	pxor	xmm0, xmm0	# _4
	cvtsi2sd	xmm0, rax	# _4, _3
	mov	rax, QWORD PTR -40[rbp]	# tmp112, lhs
	mov	rax, QWORD PTR 8[rax]	# _5, lhs_22(D)->D.4160.i64
	pxor	xmm2, xmm2	# _6
	cvtsi2sd	xmm2, rax	# _6, _5
	movq	rax, xmm2	# _6, _6
	movapd	xmm1, xmm0	#, _4
	movq	xmm0, rax	#, _6
	call	pow@PLT	#
# compiler/binary/eval.h:56: 	I64: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->i64, ( F64 )rhs->i64 ) );
	.loc 21 56 14 is_stmt 0 discriminator 1
	cvttsd2si	rax, xmm0	# _8, _7
	mov	rcx, r12	# tmp114, D.5940
	movabs	rdx, -4294967296	# tmp116,
	and	rdx, rcx	# tmp115, tmp114
	mov	r12, rdx	# D.5940, tmp115
	mov	r13, rax	# D.5940, _8
# compiler/binary/eval.h:56: 	I64: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->i64, ( F64 )rhs->i64 ) );
	.loc 21 56 14
	jmp	.L544	#
.L545:
	endbr64	
# compiler/binary/eval.h:57: 	F64: return VALUE( F64, f64, pow( lhs->f64, rhs->f64 ) );
	.loc 21 57 14 is_stmt 1
	mov	rax, QWORD PTR -48[rbp]	# tmp117, rhs
	movsd	xmm0, QWORD PTR 8[rax]	# _9, rhs_24(D)->D.4160.f64
	mov	rax, QWORD PTR -40[rbp]	# tmp118, lhs
	mov	rax, QWORD PTR 8[rax]	# _10, lhs_22(D)->D.4160.f64
	movapd	xmm1, xmm0	#, _9
	movq	xmm0, rax	#, _10
	call	pow@PLT	#
# compiler/binary/eval.h:57: 	F64: return VALUE( F64, f64, pow( lhs->f64, rhs->f64 ) );
	.loc 21 57 14 is_stmt 0 discriminator 1
	mov	rdx, r12	# tmp120, D.5940
	movabs	rax, -4294967296	# tmp122,
	and	rax, rdx	# tmp121, tmp120
	or	rax, 1	# tmp123,
	mov	r12, rax	# D.5940, tmp123
	movq	r13, xmm0	# D.5940, _11
# compiler/binary/eval.h:57: 	F64: return VALUE( F64, f64, pow( lhs->f64, rhs->f64 ) );
	.loc 21 57 14
	jmp	.L544	#
.L546:
	endbr64	
# compiler/binary/eval.h:58: 	STR: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->str->len, ( F64 )rhs->str->len ) );
	.loc 21 58 14 is_stmt 1
	mov	rax, QWORD PTR -48[rbp]	# tmp124, rhs
	mov	rax, QWORD PTR 8[rax]	# _12, rhs_24(D)->D.4160.str
	mov	eax, DWORD PTR 4[rax]	# _13, _12->len
	mov	eax, eax	# tmp125, _13
	test	rax, rax	# tmp125
	js	.L547	#,
	pxor	xmm0, xmm0	# _14
	cvtsi2sd	xmm0, rax	# _14, tmp125
	jmp	.L548	#
.L547:
	mov	rdx, rax	# tmp127, tmp125
	shr	rdx	# tmp127
	and	eax, 1	# tmp128,
	or	rdx, rax	# tmp127, tmp128
	pxor	xmm0, xmm0	# tmp126
	cvtsi2sd	xmm0, rdx	# tmp126, tmp127
	addsd	xmm0, xmm0	# _14, tmp126
.L548:
	mov	rax, QWORD PTR -40[rbp]	# tmp129, lhs
	mov	rax, QWORD PTR 8[rax]	# _15, lhs_22(D)->D.4160.str
	mov	eax, DWORD PTR 4[rax]	# _16, _15->len
	mov	eax, eax	# tmp130, _16
	test	rax, rax	# tmp130
	js	.L549	#,
	pxor	xmm3, xmm3	# _17
	cvtsi2sd	xmm3, rax	# _17, tmp130
	movq	rax, xmm3	# _17, _17
	jmp	.L550	#
.L549:
	mov	rdx, rax	# tmp132, tmp130
	shr	rdx	# tmp132
	and	eax, 1	# tmp133,
	or	rdx, rax	# tmp132, tmp133
	pxor	xmm1, xmm1	# tmp131
	cvtsi2sd	xmm1, rdx	# tmp131, tmp132
	addsd	xmm1, xmm1	# tmp131, tmp131
	movq	rax, xmm1	# _17, tmp131
.L550:
	movapd	xmm1, xmm0	#, _14
	movq	xmm0, rax	#, _17
	call	pow@PLT	#
# compiler/binary/eval.h:58: 	STR: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->str->len, ( F64 )rhs->str->len ) );
	.loc 21 58 14 is_stmt 0 discriminator 1
	cvttsd2si	rax, xmm0	# _19, _18
	mov	rcx, r12	# tmp135, D.5940
	movabs	rdx, -4294967296	# tmp137,
	and	rdx, rcx	# tmp136, tmp135
	mov	r12, rdx	# D.5940, tmp136
	mov	r13, rax	# D.5940, _19
.L544:
# compiler/binary/eval.h:59: }
	.loc 21 59 1 is_stmt 1
	mov	rax, r12	# tmp139, D.5940
	mov	rdx, r13	#, D.5940
	mov	rcx, r12	# tmp140, D.5940
	mov	rbx, r13	#, D.5940
	mov	rdx, rbx	# <retval>,
	add	rsp, 24	#,
	pop	rbx	#
	pop	r12	#
	pop	r13	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE138:
	.size	EvalPow, .-EvalPow
	.type	EvalBand, @function
EvalBand:
.LFB139:
	.loc 21 62 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:64: 	goto *ops[ lhs->type ];
	.loc 21 64 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_20(D)->type
# compiler/binary/eval.h:64: 	goto *ops[ lhs->type ];
	.loc 21 64 11
	mov	ecx, ecx	# tmp106, _1
	lea	rsi, 0[0+rcx*8]	# tmp107,
	lea	rcx, ops.16[rip]	# tmp108,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:64: 	goto *ops[ lhs->type ];
	.loc 21 64 2
	nop	
	jmp	rcx	# _2
.L554:
	endbr64	
# compiler/binary/eval.h:65: 	I64: return VALUE( I64, i64, lhs->i64 & rhs->i64 );
	.loc 21 65 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp109, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_20(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp110, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_22(D)->D.4160.i64
	and	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp112, D.5945
	movabs	rsi, -4294967296	# tmp114,
	and	rsi, rdi	# tmp113, tmp112
	mov	rax, rsi	# D.5945, tmp113
	mov	rdx, rcx	# D.5945, _5
	jmp	.L555	#
.L556:
	endbr64	
# compiler/binary/eval.h:66: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 & ( I64 )rhs->f64 );
	.loc 21 66 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp115, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_20(D)->D.4160.f64
	cvttsd2si	rsi, xmm0	# _7, _6
	mov	rcx, QWORD PTR -32[rbp]	# tmp116, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_22(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _9, _8
	and	rcx, rsi	# _10, _7
	pxor	xmm0, xmm0	# _11
	cvtsi2sd	xmm0, rcx	# _11, _10
	mov	rsi, rax	# tmp118, D.5945
	movabs	rcx, -4294967296	# tmp120,
	and	rcx, rsi	# tmp119, tmp118
	or	rcx, 1	# tmp121,
	mov	rax, rcx	# D.5945, tmp121
	movq	rdx, xmm0	# D.5945, _11
	jmp	.L555	#
.L557:
	endbr64	
# compiler/binary/eval.h:67: 	STR: return VALUE( I64, i64, lhs->str->len & rhs->str->len );
	.loc 21 67 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp122, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _12, lhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _13, _12->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp123, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, rhs_22(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _15, _14->len
	and	ecx, esi	# _16, _13
	mov	esi, ecx	# _17, _16
	mov	rdi, rax	# tmp125, D.5945
	movabs	rcx, -4294967296	# tmp127,
	and	rcx, rdi	# tmp126, tmp125
	mov	rax, rcx	# D.5945, tmp126
	mov	rdx, rsi	# D.5945, _17
.L555:
# compiler/binary/eval.h:68: }
	.loc 21 68 1
	mov	rsi, rax	# tmp129, D.5945
	mov	rdi, rdx	#, D.5945
	mov	rcx, rax	# tmp130, D.5945
	mov	rbx, rdx	#, D.5945
	mov	eax, esi	# <retval>, tmp129
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE139:
	.size	EvalBand, .-EvalBand
	.type	EvalBor, @function
EvalBor:
.LFB140:
	.loc 21 71 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:73: 	goto *ops[ lhs->type ];
	.loc 21 73 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_20(D)->type
# compiler/binary/eval.h:73: 	goto *ops[ lhs->type ];
	.loc 21 73 11
	mov	ecx, ecx	# tmp106, _1
	lea	rsi, 0[0+rcx*8]	# tmp107,
	lea	rcx, ops.15[rip]	# tmp108,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:73: 	goto *ops[ lhs->type ];
	.loc 21 73 2
	nop	
	jmp	rcx	# _2
.L561:
	endbr64	
# compiler/binary/eval.h:74: 	I64: return VALUE( I64, i64, lhs->i64 | rhs->i64 );
	.loc 21 74 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp109, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_20(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp110, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_22(D)->D.4160.i64
	or	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp112, D.5950
	movabs	rsi, -4294967296	# tmp114,
	and	rsi, rdi	# tmp113, tmp112
	mov	rax, rsi	# D.5950, tmp113
	mov	rdx, rcx	# D.5950, _5
	jmp	.L562	#
.L563:
	endbr64	
# compiler/binary/eval.h:75: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 | ( I64 )rhs->f64 );
	.loc 21 75 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp115, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_20(D)->D.4160.f64
	cvttsd2si	rsi, xmm0	# _7, _6
	mov	rcx, QWORD PTR -32[rbp]	# tmp116, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_22(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _9, _8
	or	rcx, rsi	# _10, _7
	pxor	xmm0, xmm0	# _11
	cvtsi2sd	xmm0, rcx	# _11, _10
	mov	rsi, rax	# tmp118, D.5950
	movabs	rcx, -4294967296	# tmp120,
	and	rcx, rsi	# tmp119, tmp118
	or	rcx, 1	# tmp121,
	mov	rax, rcx	# D.5950, tmp121
	movq	rdx, xmm0	# D.5950, _11
	jmp	.L562	#
.L564:
	endbr64	
# compiler/binary/eval.h:76: 	STR: return VALUE( I64, i64, lhs->str->len | rhs->str->len );
	.loc 21 76 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp122, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _12, lhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _13, _12->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp123, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, rhs_22(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _15, _14->len
	or	ecx, esi	# _16, _13
	mov	esi, ecx	# _17, _16
	mov	rdi, rax	# tmp125, D.5950
	movabs	rcx, -4294967296	# tmp127,
	and	rcx, rdi	# tmp126, tmp125
	mov	rax, rcx	# D.5950, tmp126
	mov	rdx, rsi	# D.5950, _17
.L562:
# compiler/binary/eval.h:77: }
	.loc 21 77 1
	mov	rsi, rax	# tmp129, D.5950
	mov	rdi, rdx	#, D.5950
	mov	rcx, rax	# tmp130, D.5950
	mov	rbx, rdx	#, D.5950
	mov	eax, esi	# <retval>, tmp129
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE140:
	.size	EvalBor, .-EvalBor
	.type	EvalBxor, @function
EvalBxor:
.LFB141:
	.loc 21 80 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:82: 	goto *ops[ lhs->type ];
	.loc 21 82 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_20(D)->type
# compiler/binary/eval.h:82: 	goto *ops[ lhs->type ];
	.loc 21 82 11
	mov	ecx, ecx	# tmp106, _1
	lea	rsi, 0[0+rcx*8]	# tmp107,
	lea	rcx, ops.14[rip]	# tmp108,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:82: 	goto *ops[ lhs->type ];
	.loc 21 82 2
	nop	
	jmp	rcx	# _2
.L568:
	endbr64	
# compiler/binary/eval.h:83: 	I64: return VALUE( I64, i64, lhs->i64 ^ rhs->i64 );
	.loc 21 83 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp109, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_20(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp110, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_22(D)->D.4160.i64
	xor	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp112, D.5955
	movabs	rsi, -4294967296	# tmp114,
	and	rsi, rdi	# tmp113, tmp112
	mov	rax, rsi	# D.5955, tmp113
	mov	rdx, rcx	# D.5955, _5
	jmp	.L569	#
.L570:
	endbr64	
# compiler/binary/eval.h:84: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 ^ ( I64 )rhs->f64 );
	.loc 21 84 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp115, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_20(D)->D.4160.f64
	cvttsd2si	rsi, xmm0	# _7, _6
	mov	rcx, QWORD PTR -32[rbp]	# tmp116, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_22(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _9, _8
	xor	rcx, rsi	# _10, _7
	pxor	xmm0, xmm0	# _11
	cvtsi2sd	xmm0, rcx	# _11, _10
	mov	rsi, rax	# tmp118, D.5955
	movabs	rcx, -4294967296	# tmp120,
	and	rcx, rsi	# tmp119, tmp118
	or	rcx, 1	# tmp121,
	mov	rax, rcx	# D.5955, tmp121
	movq	rdx, xmm0	# D.5955, _11
	jmp	.L569	#
.L571:
	endbr64	
# compiler/binary/eval.h:85: 	STR: return VALUE( I64, i64, lhs->str->len ^ rhs->str->len );
	.loc 21 85 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp122, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _12, lhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _13, _12->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp123, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, rhs_22(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _15, _14->len
	xor	ecx, esi	# _16, _13
	mov	esi, ecx	# _17, _16
	mov	rdi, rax	# tmp125, D.5955
	movabs	rcx, -4294967296	# tmp127,
	and	rcx, rdi	# tmp126, tmp125
	mov	rax, rcx	# D.5955, tmp126
	mov	rdx, rsi	# D.5955, _17
.L569:
# compiler/binary/eval.h:86: }
	.loc 21 86 1
	mov	rsi, rax	# tmp129, D.5955
	mov	rdi, rdx	#, D.5955
	mov	rcx, rax	# tmp130, D.5955
	mov	rbx, rdx	#, D.5955
	mov	eax, esi	# <retval>, tmp129
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE141:
	.size	EvalBxor, .-EvalBxor
	.type	EvalLsh, @function
EvalLsh:
.LFB142:
	.loc 21 89 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:91: 	goto *ops[ lhs->type ];
	.loc 21 91 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_22(D)->type
# compiler/binary/eval.h:91: 	goto *ops[ lhs->type ];
	.loc 21 91 11
	mov	ecx, ecx	# tmp108, _1
	lea	rsi, 0[0+rcx*8]	# tmp109,
	lea	rcx, ops.13[rip]	# tmp110,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:91: 	goto *ops[ lhs->type ];
	.loc 21 91 2
	nop	
	jmp	rcx	# _2
.L575:
	endbr64	
# compiler/binary/eval.h:92: 	I64: return VALUE( I64, i64, lhs->i64 << rhs->i64 );
	.loc 21 92 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_22(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp112, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_24(D)->D.4160.i64
	sal	rsi, cl	# _3, _5
	mov	rcx, rsi	# _6, _3
	mov	rdi, rax	# tmp114, D.5960
	movabs	rsi, -4294967296	# tmp116,
	and	rsi, rdi	# tmp115, tmp114
	mov	rax, rsi	# D.5960, tmp115
	mov	rdx, rcx	# D.5960, _6
	jmp	.L576	#
.L577:
	endbr64	
# compiler/binary/eval.h:93: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 << ( I64 )rhs->f64 );
	.loc 21 93 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp117, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_22(D)->D.4160.f64
	cvttsd2si	rsi, xmm0	# _8, _7
	mov	rcx, QWORD PTR -32[rbp]	# tmp118, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _9, rhs_24(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _10, _9
	sal	rsi, cl	# _8, _11
	mov	rcx, rsi	# _12, _8
	pxor	xmm0, xmm0	# _13
	cvtsi2sd	xmm0, rcx	# _13, _12
	mov	rsi, rax	# tmp120, D.5960
	movabs	rcx, -4294967296	# tmp122,
	and	rcx, rsi	# tmp121, tmp120
	or	rcx, 1	# tmp123,
	mov	rax, rcx	# D.5960, tmp123
	movq	rdx, xmm0	# D.5960, _13
	jmp	.L576	#
.L578:
	endbr64	
# compiler/binary/eval.h:94: 	STR: return VALUE( I64, i64, lhs->str->len << rhs->str->len );
	.loc 21 94 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp124, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, lhs_22(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _15, _14->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp125, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _16, rhs_24(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _17, _16->len
	sal	esi, cl	# _15, _17
	mov	ecx, esi	# _18, _15
	mov	esi, ecx	# _19, _18
	mov	rdi, rax	# tmp127, D.5960
	movabs	rcx, -4294967296	# tmp129,
	and	rcx, rdi	# tmp128, tmp127
	mov	rax, rcx	# D.5960, tmp128
	mov	rdx, rsi	# D.5960, _19
.L576:
# compiler/binary/eval.h:95: }
	.loc 21 95 1
	mov	rsi, rax	# tmp131, D.5960
	mov	rdi, rdx	#, D.5960
	mov	rcx, rax	# tmp132, D.5960
	mov	rbx, rdx	#, D.5960
	mov	eax, esi	# <retval>, tmp131
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE142:
	.size	EvalLsh, .-EvalLsh
	.type	EvalRsh, @function
EvalRsh:
.LFB143:
	.loc 21 98 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:100: 	goto *ops[ lhs->type ];
	.loc 21 100 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_22(D)->type
# compiler/binary/eval.h:100: 	goto *ops[ lhs->type ];
	.loc 21 100 11
	mov	ecx, ecx	# tmp108, _1
	lea	rsi, 0[0+rcx*8]	# tmp109,
	lea	rcx, ops.12[rip]	# tmp110,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:100: 	goto *ops[ lhs->type ];
	.loc 21 100 2
	nop	
	jmp	rcx	# _2
.L582:
	endbr64	
# compiler/binary/eval.h:101: 	I64: return VALUE( I64, i64, lhs->i64 >> rhs->i64 );
	.loc 21 101 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_22(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp112, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_24(D)->D.4160.i64
	sar	rsi, cl	# _3, _5
	mov	rcx, rsi	# _6, _3
	mov	rdi, rax	# tmp114, D.5965
	movabs	rsi, -4294967296	# tmp116,
	and	rsi, rdi	# tmp115, tmp114
	mov	rax, rsi	# D.5965, tmp115
	mov	rdx, rcx	# D.5965, _6
	jmp	.L583	#
.L584:
	endbr64	
# compiler/binary/eval.h:102: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 >> ( I64 )rhs->f64 );
	.loc 21 102 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp117, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_22(D)->D.4160.f64
	cvttsd2si	rsi, xmm0	# _8, _7
	mov	rcx, QWORD PTR -32[rbp]	# tmp118, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _9, rhs_24(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _10, _9
	sar	rsi, cl	# _8, _11
	mov	rcx, rsi	# _12, _8
	pxor	xmm0, xmm0	# _13
	cvtsi2sd	xmm0, rcx	# _13, _12
	mov	rsi, rax	# tmp120, D.5965
	movabs	rcx, -4294967296	# tmp122,
	and	rcx, rsi	# tmp121, tmp120
	or	rcx, 1	# tmp123,
	mov	rax, rcx	# D.5965, tmp123
	movq	rdx, xmm0	# D.5965, _13
	jmp	.L583	#
.L585:
	endbr64	
# compiler/binary/eval.h:103: 	STR: return VALUE( I64, i64, lhs->str->len >> rhs->str->len );
	.loc 21 103 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp124, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, lhs_22(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _15, _14->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp125, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _16, rhs_24(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _17, _16->len
	shr	esi, cl	# _15, _17
	mov	ecx, esi	# _18, _15
	mov	esi, ecx	# _19, _18
	mov	rdi, rax	# tmp127, D.5965
	movabs	rcx, -4294967296	# tmp129,
	and	rcx, rdi	# tmp128, tmp127
	mov	rax, rcx	# D.5965, tmp128
	mov	rdx, rsi	# D.5965, _19
.L583:
# compiler/binary/eval.h:104: }
	.loc 21 104 1
	mov	rsi, rax	# tmp131, D.5965
	mov	rdi, rdx	#, D.5965
	mov	rcx, rax	# tmp132, D.5965
	mov	rbx, rdx	#, D.5965
	mov	eax, esi	# <retval>, tmp131
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE143:
	.size	EvalRsh, .-EvalRsh
	.type	EvalEqEq, @function
EvalEqEq:
.LFB144:
	.loc 21 107 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:109: 	goto *ops[ lhs->type ];
	.loc 21 109 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp101, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_16(D)->type
# compiler/binary/eval.h:109: 	goto *ops[ lhs->type ];
	.loc 21 109 11
	mov	ecx, ecx	# tmp102, _1
	lea	rsi, 0[0+rcx*8]	# tmp103,
	lea	rcx, ops.11[rip]	# tmp104,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:109: 	goto *ops[ lhs->type ];
	.loc 21 109 2
	nop	
	jmp	rcx	# _2
.L589:
	endbr64	
# compiler/binary/eval.h:110: 	I64: return VALUE( I64, i64, lhs->i64 == rhs->i64 );
	.loc 21 110 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_16(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp106, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_18(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	sete	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp108, D.5970
	movabs	rsi, -4294967296	# tmp110,
	and	rsi, rdi	# tmp109, tmp108
	mov	rax, rsi	# D.5970, tmp109
	mov	rdx, rcx	# D.5970, _6
	jmp	.L590	#
.L591:
	endbr64	
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 21 111 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_16(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp112, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _8, rhs_18(D)->D.4160.f64
	ucomisd	xmm0, xmm1	# _7, _8
	jp	.L592	#,
	ucomisd	xmm0, xmm1	# _7, _8
	jne	.L592	#,
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 21 111 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC12[rip]	# iftmp.44_13,
	jmp	.L594	#
.L592:
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 21 111 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.44_13
.L594:
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 21 111 14 discriminator 4
	mov	rsi, rax	# tmp114, D.5970
	movabs	rcx, -4294967296	# tmp116,
	and	rcx, rsi	# tmp115, tmp114
	or	rcx, 1	# tmp117,
	mov	rax, rcx	# D.5970, tmp117
	movq	rdx, xmm0	# D.5970, iftmp.44_13
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 21 111 14
	jmp	.L590	#
.L595:
	endbr64	
# compiler/binary/eval.h:112: 	STR: return VALUE( I64, i64, lhs->str == rhs->str );
	.loc 21 112 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp118, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _9, lhs_16(D)->D.4160.str
	mov	rcx, QWORD PTR -32[rbp]	# tmp119, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _10, rhs_18(D)->D.4160.str
	cmp	rsi, rcx	# _9, _10
	sete	cl	#, _11
	movzx	ecx, cl	# _12, _11
	mov	rdi, rax	# tmp121, D.5970
	movabs	rsi, -4294967296	# tmp123,
	and	rsi, rdi	# tmp122, tmp121
	mov	rax, rsi	# D.5970, tmp122
	mov	rdx, rcx	# D.5970, _12
.L590:
# compiler/binary/eval.h:113: }
	.loc 21 113 1
	mov	rsi, rax	# tmp125, D.5970
	mov	rdi, rdx	#, D.5970
	mov	rcx, rax	# tmp126, D.5970
	mov	rbx, rdx	#, D.5970
	mov	eax, esi	# <retval>, tmp125
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE144:
	.size	EvalEqEq, .-EvalEqEq
	.type	EvalNeq, @function
EvalNeq:
.LFB145:
	.loc 21 116 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:118: 	goto *ops[ lhs->type ];
	.loc 21 118 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp101, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_16(D)->type
# compiler/binary/eval.h:118: 	goto *ops[ lhs->type ];
	.loc 21 118 11
	mov	ecx, ecx	# tmp102, _1
	lea	rsi, 0[0+rcx*8]	# tmp103,
	lea	rcx, ops.10[rip]	# tmp104,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:118: 	goto *ops[ lhs->type ];
	.loc 21 118 2
	nop	
	jmp	rcx	# _2
.L600:
	endbr64	
# compiler/binary/eval.h:119: 	I64: return VALUE( I64, i64, lhs->i64 != rhs->i64 );
	.loc 21 119 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_16(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp106, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_18(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setne	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp108, D.5979
	movabs	rsi, -4294967296	# tmp110,
	and	rsi, rdi	# tmp109, tmp108
	mov	rax, rsi	# D.5979, tmp109
	mov	rdx, rcx	# D.5979, _6
	jmp	.L601	#
.L602:
	endbr64	
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 21 120 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_16(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp112, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _8, rhs_18(D)->D.4160.f64
	ucomisd	xmm0, xmm1	# _7, _8
	jp	.L608	#,
	ucomisd	xmm0, xmm1	# _7, _8
	je	.L603	#,
.L608:
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 21 120 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC12[rip]	# iftmp.46_13,
	jmp	.L605	#
.L603:
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 21 120 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.46_13
.L605:
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 21 120 14 discriminator 4
	mov	rsi, rax	# tmp114, D.5979
	movabs	rcx, -4294967296	# tmp116,
	and	rcx, rsi	# tmp115, tmp114
	or	rcx, 1	# tmp117,
	mov	rax, rcx	# D.5979, tmp117
	movq	rdx, xmm0	# D.5979, iftmp.46_13
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 21 120 14
	jmp	.L601	#
.L606:
	endbr64	
# compiler/binary/eval.h:121: 	STR: return VALUE( I64, i64, lhs->str != rhs->str );
	.loc 21 121 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp118, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _9, lhs_16(D)->D.4160.str
	mov	rcx, QWORD PTR -32[rbp]	# tmp119, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _10, rhs_18(D)->D.4160.str
	cmp	rsi, rcx	# _9, _10
	setne	cl	#, _11
	movzx	ecx, cl	# _12, _11
	mov	rdi, rax	# tmp121, D.5979
	movabs	rsi, -4294967296	# tmp123,
	and	rsi, rdi	# tmp122, tmp121
	mov	rax, rsi	# D.5979, tmp122
	mov	rdx, rcx	# D.5979, _12
.L601:
# compiler/binary/eval.h:122: }
	.loc 21 122 1
	mov	rsi, rax	# tmp125, D.5979
	mov	rdi, rdx	#, D.5979
	mov	rcx, rax	# tmp126, D.5979
	mov	rbx, rdx	#, D.5979
	mov	eax, esi	# <retval>, tmp125
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE145:
	.size	EvalNeq, .-EvalNeq
	.type	EvalLt, @function
EvalLt:
.LFB146:
	.loc 21 125 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:127: 	goto *ops[ lhs->type ];
	.loc 21 127 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp103, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_18(D)->type
# compiler/binary/eval.h:127: 	goto *ops[ lhs->type ];
	.loc 21 127 11
	mov	ecx, ecx	# tmp104, _1
	lea	rsi, 0[0+rcx*8]	# tmp105,
	lea	rcx, ops.9[rip]	# tmp106,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:127: 	goto *ops[ lhs->type ];
	.loc 21 127 2
	nop	
	jmp	rcx	# _2
.L611:
	endbr64	
# compiler/binary/eval.h:128: 	I64: return VALUE( I64, i64, lhs->i64 < rhs->i64 );
	.loc 21 128 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_18(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_20(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setl	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp110, D.5988
	movabs	rsi, -4294967296	# tmp112,
	and	rsi, rdi	# tmp111, tmp110
	mov	rax, rsi	# D.5988, tmp111
	mov	rdx, rcx	# D.5988, _6
	jmp	.L612	#
.L613:
	endbr64	
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 21 129 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, lhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _7, lhs_18(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp114, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_20(D)->D.4160.f64
	comisd	xmm0, xmm1	# _8, _7
	jbe	.L620	#,
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 21 129 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC12[rip]	# iftmp.48_15,
	jmp	.L616	#
.L620:
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 21 129 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.48_15
.L616:
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 21 129 14 discriminator 4
	mov	rsi, rax	# tmp116, D.5988
	movabs	rcx, -4294967296	# tmp118,
	and	rcx, rsi	# tmp117, tmp116
	or	rcx, 1	# tmp119,
	mov	rax, rcx	# D.5988, tmp119
	movq	rdx, xmm0	# D.5988, iftmp.48_15
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 21 129 14
	jmp	.L612	#
.L617:
	endbr64	
# compiler/binary/eval.h:130: 	STR: return VALUE( I64, i64, lhs->str->len < rhs->str->len );
	.loc 21 130 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp120, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_18(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp121, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_20(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	cmp	esi, ecx	# _10, _12
	setb	cl	#, _13
	movzx	ecx, cl	# _14, _13
	mov	rdi, rax	# tmp123, D.5988
	movabs	rsi, -4294967296	# tmp125,
	and	rsi, rdi	# tmp124, tmp123
	mov	rax, rsi	# D.5988, tmp124
	mov	rdx, rcx	# D.5988, _14
.L612:
# compiler/binary/eval.h:131: }
	.loc 21 131 1
	mov	rsi, rax	# tmp127, D.5988
	mov	rdi, rdx	#, D.5988
	mov	rcx, rax	# tmp128, D.5988
	mov	rbx, rdx	#, D.5988
	mov	eax, esi	# <retval>, tmp127
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE146:
	.size	EvalLt, .-EvalLt
	.type	EvalLe, @function
EvalLe:
.LFB147:
	.loc 21 134 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:136: 	goto *ops[ lhs->type ];
	.loc 21 136 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp103, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_18(D)->type
# compiler/binary/eval.h:136: 	goto *ops[ lhs->type ];
	.loc 21 136 11
	mov	ecx, ecx	# tmp104, _1
	lea	rsi, 0[0+rcx*8]	# tmp105,
	lea	rcx, ops.8[rip]	# tmp106,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:136: 	goto *ops[ lhs->type ];
	.loc 21 136 2
	nop	
	jmp	rcx	# _2
.L623:
	endbr64	
# compiler/binary/eval.h:137: 	I64: return VALUE( I64, i64, lhs->i64 <= rhs->i64 );
	.loc 21 137 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_18(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_20(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setle	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp110, D.5997
	movabs	rsi, -4294967296	# tmp112,
	and	rsi, rdi	# tmp111, tmp110
	mov	rax, rsi	# D.5997, tmp111
	mov	rdx, rcx	# D.5997, _6
	jmp	.L624	#
.L625:
	endbr64	
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 21 138 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, lhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _7, lhs_18(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp114, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_20(D)->D.4160.f64
	comisd	xmm0, xmm1	# _8, _7
	jb	.L632	#,
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 21 138 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC12[rip]	# iftmp.50_15,
	jmp	.L628	#
.L632:
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 21 138 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.50_15
.L628:
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 21 138 14 discriminator 4
	mov	rsi, rax	# tmp116, D.5997
	movabs	rcx, -4294967296	# tmp118,
	and	rcx, rsi	# tmp117, tmp116
	or	rcx, 1	# tmp119,
	mov	rax, rcx	# D.5997, tmp119
	movq	rdx, xmm0	# D.5997, iftmp.50_15
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 21 138 14
	jmp	.L624	#
.L629:
	endbr64	
# compiler/binary/eval.h:139: 	STR: return VALUE( I64, i64, lhs->str->len <= rhs->str->len );
	.loc 21 139 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp120, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_18(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rsi, QWORD PTR -32[rbp]	# tmp121, rhs
	mov	rsi, QWORD PTR 8[rsi]	# _11, rhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rsi]	# _12, _11->len
	cmp	esi, ecx	# _12, _10
	setnb	cl	#, _13
	movzx	ecx, cl	# _14, _13
	mov	rdi, rax	# tmp123, D.5997
	movabs	rsi, -4294967296	# tmp125,
	and	rsi, rdi	# tmp124, tmp123
	mov	rax, rsi	# D.5997, tmp124
	mov	rdx, rcx	# D.5997, _14
.L624:
# compiler/binary/eval.h:140: }
	.loc 21 140 1
	mov	rsi, rax	# tmp127, D.5997
	mov	rdi, rdx	#, D.5997
	mov	rcx, rax	# tmp128, D.5997
	mov	rbx, rdx	#, D.5997
	mov	eax, esi	# <retval>, tmp127
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE147:
	.size	EvalLe, .-EvalLe
	.type	EvalGt, @function
EvalGt:
.LFB148:
	.loc 21 143 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:145: 	goto *ops[ lhs->type ];
	.loc 21 145 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp103, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_18(D)->type
# compiler/binary/eval.h:145: 	goto *ops[ lhs->type ];
	.loc 21 145 11
	mov	ecx, ecx	# tmp104, _1
	lea	rsi, 0[0+rcx*8]	# tmp105,
	lea	rcx, ops.7[rip]	# tmp106,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:145: 	goto *ops[ lhs->type ];
	.loc 21 145 2
	nop	
	jmp	rcx	# _2
.L635:
	endbr64	
# compiler/binary/eval.h:146: 	I64: return VALUE( I64, i64, lhs->i64 > rhs->i64 );
	.loc 21 146 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_18(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_20(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setg	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp110, D.6006
	movabs	rsi, -4294967296	# tmp112,
	and	rsi, rdi	# tmp111, tmp110
	mov	rax, rsi	# D.6006, tmp111
	mov	rdx, rcx	# D.6006, _6
	jmp	.L636	#
.L637:
	endbr64	
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 21 147 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_18(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp114, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _8, rhs_20(D)->D.4160.f64
	comisd	xmm0, xmm1	# _7, _8
	jbe	.L644	#,
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 21 147 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC12[rip]	# iftmp.52_15,
	jmp	.L640	#
.L644:
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 21 147 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.52_15
.L640:
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 21 147 14 discriminator 4
	mov	rsi, rax	# tmp116, D.6006
	movabs	rcx, -4294967296	# tmp118,
	and	rcx, rsi	# tmp117, tmp116
	or	rcx, 1	# tmp119,
	mov	rax, rcx	# D.6006, tmp119
	movq	rdx, xmm0	# D.6006, iftmp.52_15
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 21 147 14
	jmp	.L636	#
.L641:
	endbr64	
# compiler/binary/eval.h:148: 	STR: return VALUE( I64, i64, lhs->str->len > rhs->str->len );
	.loc 21 148 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp120, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_18(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rsi, QWORD PTR -32[rbp]	# tmp121, rhs
	mov	rsi, QWORD PTR 8[rsi]	# _11, rhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rsi]	# _12, _11->len
	cmp	esi, ecx	# _12, _10
	setb	cl	#, _13
	movzx	ecx, cl	# _14, _13
	mov	rdi, rax	# tmp123, D.6006
	movabs	rsi, -4294967296	# tmp125,
	and	rsi, rdi	# tmp124, tmp123
	mov	rax, rsi	# D.6006, tmp124
	mov	rdx, rcx	# D.6006, _14
.L636:
# compiler/binary/eval.h:149: }
	.loc 21 149 1
	mov	rsi, rax	# tmp127, D.6006
	mov	rdi, rdx	#, D.6006
	mov	rcx, rax	# tmp128, D.6006
	mov	rbx, rdx	#, D.6006
	mov	eax, esi	# <retval>, tmp127
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE148:
	.size	EvalGt, .-EvalGt
	.type	EvalGe, @function
EvalGe:
.LFB149:
	.loc 21 152 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:154: 	goto *ops[ lhs->type ];
	.loc 21 154 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp103, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_18(D)->type
# compiler/binary/eval.h:154: 	goto *ops[ lhs->type ];
	.loc 21 154 11
	mov	ecx, ecx	# tmp104, _1
	lea	rsi, 0[0+rcx*8]	# tmp105,
	lea	rcx, ops.6[rip]	# tmp106,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:154: 	goto *ops[ lhs->type ];
	.loc 21 154 2
	nop	
	jmp	rcx	# _2
.L647:
	endbr64	
# compiler/binary/eval.h:155: 	I64: return VALUE( I64, i64, lhs->i64 >= rhs->i64 );
	.loc 21 155 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_18(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_20(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setge	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp110, D.6015
	movabs	rsi, -4294967296	# tmp112,
	and	rsi, rdi	# tmp111, tmp110
	mov	rax, rsi	# D.6015, tmp111
	mov	rdx, rcx	# D.6015, _6
	jmp	.L648	#
.L649:
	endbr64	
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 21 156 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_18(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp114, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _8, rhs_20(D)->D.4160.f64
	comisd	xmm0, xmm1	# _7, _8
	jb	.L656	#,
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 21 156 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC12[rip]	# iftmp.54_15,
	jmp	.L652	#
.L656:
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 21 156 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.54_15
.L652:
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 21 156 14 discriminator 4
	mov	rsi, rax	# tmp116, D.6015
	movabs	rcx, -4294967296	# tmp118,
	and	rcx, rsi	# tmp117, tmp116
	or	rcx, 1	# tmp119,
	mov	rax, rcx	# D.6015, tmp119
	movq	rdx, xmm0	# D.6015, iftmp.54_15
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 21 156 14
	jmp	.L648	#
.L653:
	endbr64	
# compiler/binary/eval.h:157: 	STR: return VALUE( I64, i64, lhs->str->len >= rhs->str->len );
	.loc 21 157 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp120, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_18(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp121, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_20(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	cmp	esi, ecx	# _10, _12
	setnb	cl	#, _13
	movzx	ecx, cl	# _14, _13
	mov	rdi, rax	# tmp123, D.6015
	movabs	rsi, -4294967296	# tmp125,
	and	rsi, rdi	# tmp124, tmp123
	mov	rax, rsi	# D.6015, tmp124
	mov	rdx, rcx	# D.6015, _14
.L648:
# compiler/binary/eval.h:158: }
	.loc 21 158 1
	mov	rsi, rax	# tmp127, D.6015
	mov	rdi, rdx	#, D.6015
	mov	rcx, rax	# tmp128, D.6015
	mov	rbx, rdx	#, D.6015
	mov	eax, esi	# <retval>, tmp127
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE149:
	.size	EvalGe, .-EvalGe
	.type	EvalAnd, @function
EvalAnd:
.LFB150:
	.loc 21 161 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:163: 	goto *ops[ lhs->type ];
	.loc 21 163 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:163: 	goto *ops[ lhs->type ];
	.loc 21 163 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.5[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:163: 	goto *ops[ lhs->type ];
	.loc 21 163 2
	nop	
	jmp	rcx	# _2
.L659:
	endbr64	
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 21 164 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	test	rcx, rcx	# _3
	je	.L661	#,
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 21 164 14 is_stmt 0 discriminator 1
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	test	rcx, rcx	# _4
	je	.L661	#,
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 21 164 14 discriminator 3
	mov	ecx, 1	# iftmp.56_12,
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 21 164 14
	jmp	.L662	#
.L661:
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 21 164 14 discriminator 4
	mov	ecx, 0	# iftmp.56_12,
.L662:
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 21 164 14 discriminator 6
	movsx	rcx, ecx	# _5, iftmp.56_12
	mov	rdi, rax	# tmp109, D.6024
	movabs	rsi, -4294967296	# tmp111,
	and	rsi, rdi	# tmp110, tmp109
	mov	rax, rsi	# D.6024, tmp110
	mov	rdx, rcx	# D.6024, _5
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 21 164 14
	jmp	.L663	#
.L664:
	endbr64	
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 21 165 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp113
	ucomisd	xmm0, xmm1	# _6, tmp113
	jp	.L673	#,
	pxor	xmm1, xmm1	# tmp114
	ucomisd	xmm0, xmm1	# _6, tmp114
	je	.L665	#,
.L673:
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 21 165 14 is_stmt 0 discriminator 1
	mov	rcx, QWORD PTR -32[rbp]	# tmp115, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp116
	ucomisd	xmm0, xmm1	# _7, tmp116
	jp	.L674	#,
	pxor	xmm1, xmm1	# tmp117
	ucomisd	xmm0, xmm1	# _7, tmp117
	je	.L665	#,
.L674:
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 21 165 14 discriminator 3
	mov	ecx, 1	# iftmp.57_13,
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 21 165 14
	jmp	.L668	#
.L665:
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 21 165 14 discriminator 4
	mov	ecx, 0	# iftmp.57_13,
.L668:
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 21 165 14 discriminator 6
	pxor	xmm0, xmm0	# _8
	cvtsi2sd	xmm0, ecx	# _8, iftmp.57_13
	mov	rsi, rax	# tmp119, D.6024
	movabs	rcx, -4294967296	# tmp121,
	and	rcx, rsi	# tmp120, tmp119
	or	rcx, 1	# tmp122,
	mov	rax, rcx	# D.6024, tmp122
	movq	rdx, xmm0	# D.6024, _8
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 21 165 14
	jmp	.L663	#
.L669:
	endbr64	
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 21 166 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp123, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	test	rcx, rcx	# _9
	je	.L670	#,
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 21 166 14 is_stmt 0 discriminator 1
	mov	rcx, QWORD PTR -32[rbp]	# tmp124, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _10, rhs_19(D)->D.4160.str
	test	rcx, rcx	# _10
	je	.L670	#,
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 21 166 14 discriminator 3
	mov	ecx, 1	# iftmp.58_14,
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 21 166 14
	jmp	.L671	#
.L670:
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 21 166 14 discriminator 4
	mov	ecx, 0	# iftmp.58_14,
.L671:
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 21 166 14 discriminator 6
	movsx	rcx, ecx	# _11, iftmp.58_14
	mov	rdi, rax	# tmp126, D.6024
	movabs	rsi, -4294967296	# tmp128,
	and	rsi, rdi	# tmp127, tmp126
	mov	rax, rsi	# D.6024, tmp127
	mov	rdx, rcx	# D.6024, _11
.L663:
# compiler/binary/eval.h:167: }
	.loc 21 167 1 is_stmt 1
	mov	rsi, rax	# tmp130, D.6024
	mov	rdi, rdx	#, D.6024
	mov	rcx, rax	# tmp131, D.6024
	mov	rbx, rdx	#, D.6024
	mov	eax, esi	# <retval>, tmp130
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE150:
	.size	EvalAnd, .-EvalAnd
	.type	EvalOr, @function
EvalOr:
.LFB151:
	.loc 21 170 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:172: 	goto *ops[ lhs->type ];
	.loc 21 172 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:172: 	goto *ops[ lhs->type ];
	.loc 21 172 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.4[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:172: 	goto *ops[ lhs->type ];
	.loc 21 172 2
	nop	
	jmp	rcx	# _2
.L677:
	endbr64	
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 21 173 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	test	rcx, rcx	# _3
	jne	.L678	#,
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 21 173 14 is_stmt 0 discriminator 2
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	test	rcx, rcx	# _4
	je	.L680	#,
.L678:
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 21 173 14 discriminator 3
	mov	ecx, 1	# iftmp.60_12,
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 21 173 14
	jmp	.L681	#
.L680:
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 21 173 14 discriminator 4
	mov	ecx, 0	# iftmp.60_12,
.L681:
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 21 173 14 discriminator 6
	movsx	rcx, ecx	# _5, iftmp.60_12
	mov	rdi, rax	# tmp109, D.6044
	movabs	rsi, -4294967296	# tmp111,
	and	rsi, rdi	# tmp110, tmp109
	mov	rax, rsi	# D.6044, tmp110
	mov	rdx, rcx	# D.6044, _5
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 21 173 14
	jmp	.L682	#
.L683:
	endbr64	
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 21 174 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp113
	ucomisd	xmm0, xmm1	# _6, tmp113
	jp	.L684	#,
	pxor	xmm1, xmm1	# tmp114
	ucomisd	xmm0, xmm1	# _6, tmp114
	jne	.L684	#,
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 21 174 14 is_stmt 0 discriminator 2
	mov	rcx, QWORD PTR -32[rbp]	# tmp115, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp116
	ucomisd	xmm0, xmm1	# _7, tmp116
	jp	.L684	#,
	pxor	xmm1, xmm1	# tmp117
	ucomisd	xmm0, xmm1	# _7, tmp117
	je	.L686	#,
.L684:
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 21 174 14 discriminator 3
	mov	ecx, 1	# iftmp.61_13,
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 21 174 14
	jmp	.L688	#
.L686:
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 21 174 14 discriminator 4
	mov	ecx, 0	# iftmp.61_13,
.L688:
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 21 174 14 discriminator 6
	pxor	xmm0, xmm0	# _8
	cvtsi2sd	xmm0, ecx	# _8, iftmp.61_13
	mov	rsi, rax	# tmp119, D.6044
	movabs	rcx, -4294967296	# tmp121,
	and	rcx, rsi	# tmp120, tmp119
	or	rcx, 1	# tmp122,
	mov	rax, rcx	# D.6044, tmp122
	movq	rdx, xmm0	# D.6044, _8
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 21 174 14
	jmp	.L682	#
.L689:
	endbr64	
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 21 175 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp123, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	test	rcx, rcx	# _9
	jne	.L690	#,
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 21 175 14 is_stmt 0 discriminator 2
	mov	rcx, QWORD PTR -32[rbp]	# tmp124, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _10, rhs_19(D)->D.4160.str
	test	rcx, rcx	# _10
	je	.L691	#,
.L690:
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 21 175 14 discriminator 3
	mov	ecx, 1	# iftmp.62_14,
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 21 175 14
	jmp	.L692	#
.L691:
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 21 175 14 discriminator 4
	mov	ecx, 0	# iftmp.62_14,
.L692:
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 21 175 14 discriminator 6
	movsx	rcx, ecx	# _11, iftmp.62_14
	mov	rdi, rax	# tmp126, D.6044
	movabs	rsi, -4294967296	# tmp128,
	and	rsi, rdi	# tmp127, tmp126
	mov	rax, rsi	# D.6044, tmp127
	mov	rdx, rcx	# D.6044, _11
.L682:
# compiler/binary/eval.h:176: }
	.loc 21 176 1 is_stmt 1
	mov	rsi, rax	# tmp130, D.6044
	mov	rdi, rdx	#, D.6044
	mov	rcx, rax	# tmp131, D.6044
	mov	rbx, rdx	#, D.6044
	mov	eax, esi	# <retval>, tmp130
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE151:
	.size	EvalOr, .-EvalOr
	.type	EvalMov, @function
EvalMov:
.LFB152:
	.loc 21 179 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:181: 	goto *ops[ lhs->type ];
	.loc 21 181 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp93, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_8(D)->type
# compiler/binary/eval.h:181: 	goto *ops[ lhs->type ];
	.loc 21 181 11
	mov	ecx, ecx	# tmp94, _1
	lea	rsi, 0[0+rcx*8]	# tmp95,
	lea	rcx, ops.3[rip]	# tmp96,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:181: 	goto *ops[ lhs->type ];
	.loc 21 181 2
	nop	
	jmp	rcx	# _2
.L697:
	endbr64	
# compiler/binary/eval.h:182: 	I64: return VALUE( I64, i64, rhs->i64 );
	.loc 21 182 14
	mov	rcx, QWORD PTR -32[rbp]	# tmp97, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_10(D)->D.4160.i64
	mov	rdi, rax	# tmp99, D.6064
	movabs	rsi, -4294967296	# tmp101,
	and	rsi, rdi	# tmp100, tmp99
	mov	rax, rsi	# D.6064, tmp100
	mov	rdx, rcx	# D.6064, _3
	jmp	.L698	#
.L699:
	endbr64	
# compiler/binary/eval.h:183: 	F64: return VALUE( F64, f64, rhs->f64 );
	.loc 21 183 14
	mov	rcx, QWORD PTR -32[rbp]	# tmp102, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _4, rhs_10(D)->D.4160.f64
	mov	rsi, rax	# tmp104, D.6064
	movabs	rcx, -4294967296	# tmp106,
	and	rcx, rsi	# tmp105, tmp104
	or	rcx, 1	# tmp107,
	mov	rax, rcx	# D.6064, tmp107
	movq	rdx, xmm0	# D.6064, _4
	jmp	.L698	#
.L700:
	endbr64	
# compiler/binary/eval.h:184: 	STR: return VALUE( STR, str, rhs->str );
	.loc 21 184 14
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _5, rhs_10(D)->D.4160.str
	mov	rdi, rax	# tmp110, D.6064
	movabs	rcx, -4294967296	# tmp112,
	and	rcx, rdi	# tmp111, tmp110
	or	rcx, 2	# tmp113,
	mov	rax, rcx	# D.6064, tmp113
	mov	rdx, rsi	# D.6064, _5
.L698:
# compiler/binary/eval.h:185: }
	.loc 21 185 1
	mov	rsi, rax	# tmp115, D.6064
	mov	rdi, rdx	#, D.6064
	mov	rcx, rax	# tmp116, D.6064
	mov	rbx, rdx	#, D.6064
	mov	eax, esi	# <retval>, tmp115
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE152:
	.size	EvalMov, .-EvalMov
	.type	EvalAddEq, @function
EvalAddEq:
.LFB153:
	.loc 21 188 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:189: 	return EvalAdd( lhs, rhs );
	.loc 21 189 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalAdd	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6069, tmp88
# compiler/binary/eval.h:189: 	return EvalAdd( lhs, rhs );
	.loc 21 189 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6069
	mov	rdi, rdx	#, D.6069
	mov	rcx, rax	# tmp91, D.6069
	mov	rbx, rdx	#, D.6069
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:190: }
	.loc 21 190 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE153:
	.size	EvalAddEq, .-EvalAddEq
	.type	EvalSubEq, @function
EvalSubEq:
.LFB154:
	.loc 21 193 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:194: 	return EvalSub( lhs, rhs );
	.loc 21 194 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalSub	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6071, tmp88
# compiler/binary/eval.h:194: 	return EvalSub( lhs, rhs );
	.loc 21 194 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6071
	mov	rdi, rdx	#, D.6071
	mov	rcx, rax	# tmp91, D.6071
	mov	rbx, rdx	#, D.6071
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:195: }
	.loc 21 195 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE154:
	.size	EvalSubEq, .-EvalSubEq
	.type	EvalMulEq, @function
EvalMulEq:
.LFB155:
	.loc 21 198 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:199: 	return EvalMul( lhs, rhs );
	.loc 21 199 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalMul	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6073, tmp88
# compiler/binary/eval.h:199: 	return EvalMul( lhs, rhs );
	.loc 21 199 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6073
	mov	rdi, rdx	#, D.6073
	mov	rcx, rax	# tmp91, D.6073
	mov	rbx, rdx	#, D.6073
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:200: }
	.loc 21 200 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE155:
	.size	EvalMulEq, .-EvalMulEq
	.type	EvalDivEq, @function
EvalDivEq:
.LFB156:
	.loc 21 203 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:204: 	return EvalDiv( lhs, rhs );
	.loc 21 204 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalDiv	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6075, tmp88
# compiler/binary/eval.h:204: 	return EvalDiv( lhs, rhs );
	.loc 21 204 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6075
	mov	rdi, rdx	#, D.6075
	mov	rcx, rax	# tmp91, D.6075
	mov	rbx, rdx	#, D.6075
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:205: }
	.loc 21 205 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE156:
	.size	EvalDivEq, .-EvalDivEq
	.type	EvalModEq, @function
EvalModEq:
.LFB157:
	.loc 21 208 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:209: 	return EvalMod( lhs, rhs );
	.loc 21 209 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalMod	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6077, tmp88
# compiler/binary/eval.h:209: 	return EvalMod( lhs, rhs );
	.loc 21 209 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6077
	mov	rdi, rdx	#, D.6077
	mov	rcx, rax	# tmp91, D.6077
	mov	rbx, rdx	#, D.6077
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:210: }
	.loc 21 210 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE157:
	.size	EvalModEq, .-EvalModEq
	.type	EvalPowEq, @function
EvalPowEq:
.LFB158:
	.loc 21 213 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:214: 	return EvalPow( lhs, rhs );
	.loc 21 214 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalPow	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6079, tmp88
# compiler/binary/eval.h:214: 	return EvalPow( lhs, rhs );
	.loc 21 214 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6079
	mov	rdi, rdx	#, D.6079
	mov	rcx, rax	# tmp91, D.6079
	mov	rbx, rdx	#, D.6079
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:215: }
	.loc 21 215 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE158:
	.size	EvalPowEq, .-EvalPowEq
	.type	EvalBandEq, @function
EvalBandEq:
.LFB159:
	.loc 21 218 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:219: 	return EvalBand( lhs, rhs );
	.loc 21 219 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalBand	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6081, tmp88
# compiler/binary/eval.h:219: 	return EvalBand( lhs, rhs );
	.loc 21 219 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6081
	mov	rdi, rdx	#, D.6081
	mov	rcx, rax	# tmp91, D.6081
	mov	rbx, rdx	#, D.6081
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:220: }
	.loc 21 220 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE159:
	.size	EvalBandEq, .-EvalBandEq
	.type	EvalBorEq, @function
EvalBorEq:
.LFB160:
	.loc 21 223 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:224: 	return EvalBor( lhs, rhs );
	.loc 21 224 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalBor	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6083, tmp88
# compiler/binary/eval.h:224: 	return EvalBor( lhs, rhs );
	.loc 21 224 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6083
	mov	rdi, rdx	#, D.6083
	mov	rcx, rax	# tmp91, D.6083
	mov	rbx, rdx	#, D.6083
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:225: }
	.loc 21 225 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE160:
	.size	EvalBorEq, .-EvalBorEq
	.type	EvalBxorEq, @function
EvalBxorEq:
.LFB161:
	.loc 21 228 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:229: 	return EvalBxor( lhs, rhs );
	.loc 21 229 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalBxor	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6085, tmp88
# compiler/binary/eval.h:229: 	return EvalBxor( lhs, rhs );
	.loc 21 229 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6085
	mov	rdi, rdx	#, D.6085
	mov	rcx, rax	# tmp91, D.6085
	mov	rbx, rdx	#, D.6085
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:230: }
	.loc 21 230 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE161:
	.size	EvalBxorEq, .-EvalBxorEq
	.type	EvalLshEq, @function
EvalLshEq:
.LFB162:
	.loc 21 233 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:234: 	return EvalLsh( lhs, rhs );
	.loc 21 234 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalLsh	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6087, tmp88
# compiler/binary/eval.h:234: 	return EvalLsh( lhs, rhs );
	.loc 21 234 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6087
	mov	rdi, rdx	#, D.6087
	mov	rcx, rax	# tmp91, D.6087
	mov	rbx, rdx	#, D.6087
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:235: }
	.loc 21 235 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE162:
	.size	EvalLshEq, .-EvalLshEq
	.type	EvalRshEq, @function
EvalRshEq:
.LFB163:
	.loc 21 238 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 24	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -32[rbp], rsi	# rhs, rhs
# compiler/binary/eval.h:239: 	return EvalRsh( lhs, rhs );
	.loc 21 239 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalRsh	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.6089, tmp88
# compiler/binary/eval.h:239: 	return EvalRsh( lhs, rhs );
	.loc 21 239 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.6089
	mov	rdi, rdx	#, D.6089
	mov	rcx, rax	# tmp91, D.6089
	mov	rbx, rdx	#, D.6089
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:240: }
	.loc 21 240 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE163:
	.size	EvalRshEq, .-EvalRshEq
	.globl	BinPromote
	.type	BinPromote, @function
BinPromote:
.LFB164:
	.file 22 "compiler/binary/binary.h"
	.loc 22 2 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# lhs, lhs
	mov	QWORD PTR -16[rbp], rsi	# rhs, rhs
# compiler/binary/binary.h:4: 	return types[ lhs->value.type ][ rhs->value.type ];
	.loc 22 4 26
	mov	rax, QWORD PTR -8[rbp]	# tmp86, lhs
	mov	edx, DWORD PTR 8[rax]	# _1, lhs_4(D)->value.type
# compiler/binary/binary.h:4: 	return types[ lhs->value.type ][ rhs->value.type ];
	.loc 22 4 45
	mov	rax, QWORD PTR -16[rbp]	# tmp87, rhs
	mov	eax, DWORD PTR 8[rax]	# _2, rhs_5(D)->value.type
# compiler/binary/binary.h:4: 	return types[ lhs->value.type ][ rhs->value.type ];
	.loc 22 4 33
	mov	ecx, eax	# tmp88, _2
	mov	edx, edx	# tmp89, _1
	mov	rax, rdx	# tmp90, tmp89
	add	rax, rax	# tmp90
	add	rax, rdx	# tmp90, tmp89
	add	rax, rcx	# tmp91, tmp88
	lea	rdx, 0[0+rax*4]	# tmp92,
	lea	rax, types.25[rip]	# tmp93,
	mov	eax, DWORD PTR [rdx+rax]	# _6, types[_1][_2]
# compiler/binary/binary.h:5: }
	.loc 22 5 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE164:
	.size	BinPromote, .-BinPromote
	.globl	BinCast
	.type	BinCast, @function
BinCast:
.LFB165:
	.loc 22 8 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# node, node
	mov	DWORD PTR -12[rbp], esi	# common, common
# compiler/binary/binary.h:10: 	node->value.type = common;
	.loc 22 10 19
	mov	rax, QWORD PTR -8[rbp]	# tmp88, node
	mov	edx, DWORD PTR -12[rbp]	# tmp89, common
	mov	DWORD PTR 8[rax], edx	# node_9(D)->value.type, tmp89
# compiler/binary/binary.h:11: 	goto *types[ node->value.type ][ common ];
	.loc 22 11 26
	mov	rax, QWORD PTR -8[rbp]	# tmp90, node
	mov	eax, DWORD PTR 8[rax]	# _1, node_9(D)->value.type
# compiler/binary/binary.h:11: 	goto *types[ node->value.type ][ common ];
	.loc 22 11 33
	mov	edx, DWORD PTR -12[rbp]	# tmp91, common
	mov	ecx, eax	# tmp92, _1
	mov	rax, rcx	# tmp93, tmp92
	add	rax, rax	# tmp93
	add	rax, rcx	# tmp93, tmp92
	add	rax, rdx	# tmp94, tmp91
	lea	rdx, 0[0+rax*8]	# tmp95,
	lea	rax, types.24[rip]	# tmp96,
	mov	rax, QWORD PTR [rdx+rax]	# _2, types[_1][common_10(D)]
# compiler/binary/binary.h:11: 	goto *types[ node->value.type ][ common ];
	.loc 22 11 2
	nop	
	jmp	rax	# _2
.L728:
	endbr64	
# compiler/binary/cast_labels.h:1: I64_I64: return;
	.file 23 "compiler/binary/cast_labels.h"
	.loc 23 1 10
	jmp	.L726	#
.L730:
	endbr64	
# compiler/binary/cast_labels.h:2: I64_F64: node->value.f64 = ( F64 )node->value.i64; return;
	.loc 23 2 46
	mov	rax, QWORD PTR -8[rbp]	# tmp97, node
	mov	rax, QWORD PTR 16[rax]	# _3, node_9(D)->value.D.4160.i64
# compiler/binary/cast_labels.h:2: I64_F64: node->value.f64 = ( F64 )node->value.i64; return;
	.loc 23 2 28
	pxor	xmm0, xmm0	# _4
	cvtsi2sd	xmm0, rax	# _4, _3
# compiler/binary/cast_labels.h:2: I64_F64: node->value.f64 = ( F64 )node->value.i64; return;
	.loc 23 2 26
	mov	rax, QWORD PTR -8[rbp]	# tmp98, node
	movsd	QWORD PTR 16[rax], xmm0	# node_9(D)->value.D.4160.f64, _4
# compiler/binary/cast_labels.h:2: I64_F64: node->value.f64 = ( F64 )node->value.i64; return;
	.loc 23 2 52
	jmp	.L726	#
.L731:
	endbr64	
# compiler/binary/cast_labels.h:3: I64_STR: return;
	.loc 23 3 10
	jmp	.L726	#
.L732:
	endbr64	
# compiler/binary/cast_labels.h:5: F64_I64: node->value.i64 = ( I64 )node->value.f64; return;
	.loc 23 5 46
	mov	rax, QWORD PTR -8[rbp]	# tmp99, node
	movsd	xmm0, QWORD PTR 16[rax]	# _5, node_9(D)->value.D.4160.f64
# compiler/binary/cast_labels.h:5: F64_I64: node->value.i64 = ( I64 )node->value.f64; return;
	.loc 23 5 28
	cvttsd2si	rdx, xmm0	# _6, _5
# compiler/binary/cast_labels.h:5: F64_I64: node->value.i64 = ( I64 )node->value.f64; return;
	.loc 23 5 26
	mov	rax, QWORD PTR -8[rbp]	# tmp100, node
	mov	QWORD PTR 16[rax], rdx	# node_9(D)->value.D.4160.i64, _6
# compiler/binary/cast_labels.h:5: F64_I64: node->value.i64 = ( I64 )node->value.f64; return;
	.loc 23 5 52
	jmp	.L726	#
.L733:
	endbr64	
# compiler/binary/cast_labels.h:6: F64_F64: return;
	.loc 23 6 10
	jmp	.L726	#
.L734:
	endbr64	
# compiler/binary/cast_labels.h:7: F64_STR: return;
	.loc 23 7 10
	jmp	.L726	#
.L735:
	endbr64	
# compiler/binary/cast_labels.h:9: STR_I64: return;
	.loc 23 9 10
	jmp	.L726	#
.L736:
	endbr64	
# compiler/binary/cast_labels.h:10: STR_F64: return;
	.loc 23 10 10
	jmp	.L726	#
.L737:
	endbr64	
# compiler/binary/cast_labels.h:11: STR_STR: return;
	.loc 23 11 10
	nop	
.L726:
# compiler/binary/binary.h:13: }
	.loc 22 13 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE165:
	.size	BinCast, .-BinCast
	.globl	BinFold
	.type	BinFold, @function
BinFold:
.LFB166:
	.loc 22 16 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 40	#,
	.cfi_offset 3, -24
	mov	QWORD PTR -24[rbp], rdi	# lhs, lhs
	mov	DWORD PTR -28[rbp], esi	# op, op
	mov	QWORD PTR -40[rbp], rdx	# rhs, rhs
# compiler/binary/binary.h:18: 	goto *ops[ op ];
	.loc 22 18 11
	mov	eax, DWORD PTR -28[rbp]	# tmp150, op
	lea	rdx, 0[0+rax*8]	# tmp151,
	lea	rax, ops.23[rip]	# tmp152,
	mov	rax, QWORD PTR [rdx+rax]	# _1, ops[op_68(D)]
# compiler/binary/binary.h:18: 	goto *ops[ op ];
	.loc 22 18 2
	nop	
	jmp	rax	# _1
.L740:
	endbr64	
# compiler/binary/fold_labels.h:1: ERR: return EvalBinErr( &lhs->value, op, &rhs->value );
	.file 24 "compiler/binary/fold_labels.h"
	.loc 24 1 13
	mov	rax, QWORD PTR -40[rbp]	# tmp153, rhs
	lea	rdx, 8[rax]	# _2,
	mov	rax, QWORD PTR -24[rbp]	# tmp154, lhs
	lea	rcx, 8[rax]	# _3,
	mov	eax, DWORD PTR -28[rbp]	# tmp155, op
	mov	esi, eax	#, tmp155
	mov	rdi, rcx	#, _3
	call	EvalBinErr	#
	mov	rcx, rdx	# tmp157,
	mov	rdx, rcx	# D.5908, tmp157
	jmp	.L741	#
.L742:
	endbr64	
# compiler/binary/fold_labels.h:2: ADD: return EvalAdd( &lhs->value, &rhs->value );
	.loc 24 2 13
	mov	rax, QWORD PTR -40[rbp]	# tmp158, rhs
	lea	rdx, 8[rax]	# _4,
	mov	rax, QWORD PTR -24[rbp]	# tmp159, lhs
	add	rax, 8	# _5,
	mov	rsi, rdx	#, _4
	mov	rdi, rax	#, _5
	call	EvalAdd	#
	mov	rcx, rdx	# tmp161,
	mov	rdx, rcx	# D.5908, tmp161
	jmp	.L741	#
.L743:
	endbr64	
# compiler/binary/fold_labels.h:3: SUB: return EvalSub( &lhs->value, &rhs->value );
	.loc 24 3 13
	mov	rax, QWORD PTR -40[rbp]	# tmp162, rhs
	lea	rdx, 8[rax]	# _6,
	mov	rax, QWORD PTR -24[rbp]	# tmp163, lhs
	add	rax, 8	# _7,
	mov	rsi, rdx	#, _6
	mov	rdi, rax	#, _7
	call	EvalSub	#
	mov	rcx, rdx	# tmp165,
	mov	rdx, rcx	# D.5908, tmp165
	jmp	.L741	#
.L744:
	endbr64	
# compiler/binary/fold_labels.h:4: MUL: return EvalMul( &lhs->value, &rhs->value );
	.loc 24 4 13
	mov	rax, QWORD PTR -40[rbp]	# tmp166, rhs
	lea	rdx, 8[rax]	# _8,
	mov	rax, QWORD PTR -24[rbp]	# tmp167, lhs
	add	rax, 8	# _9,
	mov	rsi, rdx	#, _8
	mov	rdi, rax	#, _9
	call	EvalMul	#
	mov	rcx, rdx	# tmp169,
	mov	rdx, rcx	# D.5908, tmp169
	jmp	.L741	#
.L745:
	endbr64	
# compiler/binary/fold_labels.h:5: DIV: return EvalDiv( &lhs->value, &rhs->value );
	.loc 24 5 13
	mov	rax, QWORD PTR -40[rbp]	# tmp170, rhs
	lea	rdx, 8[rax]	# _10,
	mov	rax, QWORD PTR -24[rbp]	# tmp171, lhs
	add	rax, 8	# _11,
	mov	rsi, rdx	#, _10
	mov	rdi, rax	#, _11
	call	EvalDiv	#
	mov	rcx, rdx	# tmp173,
	mov	rdx, rcx	# D.5908, tmp173
	jmp	.L741	#
.L746:
	endbr64	
# compiler/binary/fold_labels.h:6: MOD: return EvalMod( &lhs->value, &rhs->value );
	.loc 24 6 13
	mov	rax, QWORD PTR -40[rbp]	# tmp174, rhs
	lea	rdx, 8[rax]	# _12,
	mov	rax, QWORD PTR -24[rbp]	# tmp175, lhs
	add	rax, 8	# _13,
	mov	rsi, rdx	#, _12
	mov	rdi, rax	#, _13
	call	EvalMod	#
	mov	rcx, rdx	# tmp177,
	mov	rdx, rcx	# D.5908, tmp177
	jmp	.L741	#
.L747:
	endbr64	
# compiler/binary/fold_labels.h:7: POW: return EvalPow( &lhs->value, &rhs->value );
	.loc 24 7 13
	mov	rax, QWORD PTR -40[rbp]	# tmp178, rhs
	lea	rdx, 8[rax]	# _14,
	mov	rax, QWORD PTR -24[rbp]	# tmp179, lhs
	add	rax, 8	# _15,
	mov	rsi, rdx	#, _14
	mov	rdi, rax	#, _15
	call	EvalPow	#
	mov	rcx, rdx	# tmp181,
	mov	rdx, rcx	# D.5908, tmp181
	jmp	.L741	#
.L748:
	endbr64	
# compiler/binary/fold_labels.h:8: BAND: return EvalBand( &lhs->value, &rhs->value );
	.loc 24 8 14
	mov	rax, QWORD PTR -40[rbp]	# tmp182, rhs
	lea	rdx, 8[rax]	# _16,
	mov	rax, QWORD PTR -24[rbp]	# tmp183, lhs
	add	rax, 8	# _17,
	mov	rsi, rdx	#, _16
	mov	rdi, rax	#, _17
	call	EvalBand	#
	mov	rcx, rdx	# tmp185,
	mov	rdx, rcx	# D.5908, tmp185
	jmp	.L741	#
.L749:
	endbr64	
# compiler/binary/fold_labels.h:9: BOR: return EvalBor( &lhs->value, &rhs->value );
	.loc 24 9 13
	mov	rax, QWORD PTR -40[rbp]	# tmp186, rhs
	lea	rdx, 8[rax]	# _18,
	mov	rax, QWORD PTR -24[rbp]	# tmp187, lhs
	add	rax, 8	# _19,
	mov	rsi, rdx	#, _18
	mov	rdi, rax	#, _19
	call	EvalBor	#
	mov	rcx, rdx	# tmp189,
	mov	rdx, rcx	# D.5908, tmp189
	jmp	.L741	#
.L750:
	endbr64	
# compiler/binary/fold_labels.h:10: BXOR: return EvalBxor( &lhs->value, &rhs->value );
	.loc 24 10 14
	mov	rax, QWORD PTR -40[rbp]	# tmp190, rhs
	lea	rdx, 8[rax]	# _20,
	mov	rax, QWORD PTR -24[rbp]	# tmp191, lhs
	add	rax, 8	# _21,
	mov	rsi, rdx	#, _20
	mov	rdi, rax	#, _21
	call	EvalBxor	#
	mov	rcx, rdx	# tmp193,
	mov	rdx, rcx	# D.5908, tmp193
	jmp	.L741	#
.L751:
	endbr64	
# compiler/binary/fold_labels.h:11: LSH: return EvalLsh( &lhs->value, &rhs->value );
	.loc 24 11 13
	mov	rax, QWORD PTR -40[rbp]	# tmp194, rhs
	lea	rdx, 8[rax]	# _22,
	mov	rax, QWORD PTR -24[rbp]	# tmp195, lhs
	add	rax, 8	# _23,
	mov	rsi, rdx	#, _22
	mov	rdi, rax	#, _23
	call	EvalLsh	#
	mov	rcx, rdx	# tmp197,
	mov	rdx, rcx	# D.5908, tmp197
	jmp	.L741	#
.L752:
	endbr64	
# compiler/binary/fold_labels.h:12: RSH: return EvalRsh( &lhs->value, &rhs->value );
	.loc 24 12 13
	mov	rax, QWORD PTR -40[rbp]	# tmp198, rhs
	lea	rdx, 8[rax]	# _24,
	mov	rax, QWORD PTR -24[rbp]	# tmp199, lhs
	add	rax, 8	# _25,
	mov	rsi, rdx	#, _24
	mov	rdi, rax	#, _25
	call	EvalRsh	#
	mov	rcx, rdx	# tmp201,
	mov	rdx, rcx	# D.5908, tmp201
	jmp	.L741	#
.L753:
	endbr64	
# compiler/binary/fold_labels.h:13: EQEQ: return EvalEqEq( &lhs->value, &rhs->value );
	.loc 24 13 14
	mov	rax, QWORD PTR -40[rbp]	# tmp202, rhs
	lea	rdx, 8[rax]	# _26,
	mov	rax, QWORD PTR -24[rbp]	# tmp203, lhs
	add	rax, 8	# _27,
	mov	rsi, rdx	#, _26
	mov	rdi, rax	#, _27
	call	EvalEqEq	#
	mov	rcx, rdx	# tmp205,
	mov	rdx, rcx	# D.5908, tmp205
	jmp	.L741	#
.L754:
	endbr64	
# compiler/binary/fold_labels.h:14: NEQ: return EvalNeq( &lhs->value, &rhs->value );
	.loc 24 14 13
	mov	rax, QWORD PTR -40[rbp]	# tmp206, rhs
	lea	rdx, 8[rax]	# _28,
	mov	rax, QWORD PTR -24[rbp]	# tmp207, lhs
	add	rax, 8	# _29,
	mov	rsi, rdx	#, _28
	mov	rdi, rax	#, _29
	call	EvalNeq	#
	mov	rcx, rdx	# tmp209,
	mov	rdx, rcx	# D.5908, tmp209
	jmp	.L741	#
.L755:
	endbr64	
# compiler/binary/fold_labels.h:15: LT: return EvalLt( &lhs->value, &rhs->value );
	.loc 24 15 12
	mov	rax, QWORD PTR -40[rbp]	# tmp210, rhs
	lea	rdx, 8[rax]	# _30,
	mov	rax, QWORD PTR -24[rbp]	# tmp211, lhs
	add	rax, 8	# _31,
	mov	rsi, rdx	#, _30
	mov	rdi, rax	#, _31
	call	EvalLt	#
	mov	rcx, rdx	# tmp213,
	mov	rdx, rcx	# D.5908, tmp213
	jmp	.L741	#
.L756:
	endbr64	
# compiler/binary/fold_labels.h:16: LE: return EvalLe( &lhs->value, &rhs->value );
	.loc 24 16 12
	mov	rax, QWORD PTR -40[rbp]	# tmp214, rhs
	lea	rdx, 8[rax]	# _32,
	mov	rax, QWORD PTR -24[rbp]	# tmp215, lhs
	add	rax, 8	# _33,
	mov	rsi, rdx	#, _32
	mov	rdi, rax	#, _33
	call	EvalLe	#
	mov	rcx, rdx	# tmp217,
	mov	rdx, rcx	# D.5908, tmp217
	jmp	.L741	#
.L757:
	endbr64	
# compiler/binary/fold_labels.h:17: GT: return EvalGt( &lhs->value, &rhs->value );
	.loc 24 17 12
	mov	rax, QWORD PTR -40[rbp]	# tmp218, rhs
	lea	rdx, 8[rax]	# _34,
	mov	rax, QWORD PTR -24[rbp]	# tmp219, lhs
	add	rax, 8	# _35,
	mov	rsi, rdx	#, _34
	mov	rdi, rax	#, _35
	call	EvalGt	#
	mov	rcx, rdx	# tmp221,
	mov	rdx, rcx	# D.5908, tmp221
	jmp	.L741	#
.L758:
	endbr64	
# compiler/binary/fold_labels.h:18: GE: return EvalGe( &lhs->value, &rhs->value );
	.loc 24 18 12
	mov	rax, QWORD PTR -40[rbp]	# tmp222, rhs
	lea	rdx, 8[rax]	# _36,
	mov	rax, QWORD PTR -24[rbp]	# tmp223, lhs
	add	rax, 8	# _37,
	mov	rsi, rdx	#, _36
	mov	rdi, rax	#, _37
	call	EvalGe	#
	mov	rcx, rdx	# tmp225,
	mov	rdx, rcx	# D.5908, tmp225
	jmp	.L741	#
.L759:
	endbr64	
# compiler/binary/fold_labels.h:19: AND: return EvalAnd( &lhs->value, &rhs->value );
	.loc 24 19 13
	mov	rax, QWORD PTR -40[rbp]	# tmp226, rhs
	lea	rdx, 8[rax]	# _38,
	mov	rax, QWORD PTR -24[rbp]	# tmp227, lhs
	add	rax, 8	# _39,
	mov	rsi, rdx	#, _38
	mov	rdi, rax	#, _39
	call	EvalAnd	#
	mov	rcx, rdx	# tmp229,
	mov	rdx, rcx	# D.5908, tmp229
	jmp	.L741	#
.L760:
	endbr64	
# compiler/binary/fold_labels.h:20: OR: return EvalOr( &lhs->value, &rhs->value );
	.loc 24 20 12
	mov	rax, QWORD PTR -40[rbp]	# tmp230, rhs
	lea	rdx, 8[rax]	# _40,
	mov	rax, QWORD PTR -24[rbp]	# tmp231, lhs
	add	rax, 8	# _41,
	mov	rsi, rdx	#, _40
	mov	rdi, rax	#, _41
	call	EvalOr	#
	mov	rcx, rdx	# tmp233,
	mov	rdx, rcx	# D.5908, tmp233
	jmp	.L741	#
.L761:
	endbr64	
# compiler/binary/fold_labels.h:21: MOV: return EvalMov( &lhs->value, &rhs->value );
	.loc 24 21 13
	mov	rax, QWORD PTR -40[rbp]	# tmp234, rhs
	lea	rdx, 8[rax]	# _42,
	mov	rax, QWORD PTR -24[rbp]	# tmp235, lhs
	add	rax, 8	# _43,
	mov	rsi, rdx	#, _42
	mov	rdi, rax	#, _43
	call	EvalMov	#
	mov	rcx, rdx	# tmp237,
	mov	rdx, rcx	# D.5908, tmp237
	jmp	.L741	#
.L762:
	endbr64	
# compiler/binary/fold_labels.h:22: ADDEQ: return EvalAddEq( &lhs->value, &rhs->value );
	.loc 24 22 15
	mov	rax, QWORD PTR -40[rbp]	# tmp238, rhs
	lea	rdx, 8[rax]	# _44,
	mov	rax, QWORD PTR -24[rbp]	# tmp239, lhs
	add	rax, 8	# _45,
	mov	rsi, rdx	#, _44
	mov	rdi, rax	#, _45
	call	EvalAddEq	#
	mov	rcx, rdx	# tmp241,
	mov	rdx, rcx	# D.5908, tmp241
	jmp	.L741	#
.L763:
	endbr64	
# compiler/binary/fold_labels.h:23: SUBEQ: return EvalSubEq( &lhs->value, &rhs->value );
	.loc 24 23 15
	mov	rax, QWORD PTR -40[rbp]	# tmp242, rhs
	lea	rdx, 8[rax]	# _46,
	mov	rax, QWORD PTR -24[rbp]	# tmp243, lhs
	add	rax, 8	# _47,
	mov	rsi, rdx	#, _46
	mov	rdi, rax	#, _47
	call	EvalSubEq	#
	mov	rcx, rdx	# tmp245,
	mov	rdx, rcx	# D.5908, tmp245
	jmp	.L741	#
.L764:
	endbr64	
# compiler/binary/fold_labels.h:24: MULEQ: return EvalMulEq( &lhs->value, &rhs->value );
	.loc 24 24 15
	mov	rax, QWORD PTR -40[rbp]	# tmp246, rhs
	lea	rdx, 8[rax]	# _48,
	mov	rax, QWORD PTR -24[rbp]	# tmp247, lhs
	add	rax, 8	# _49,
	mov	rsi, rdx	#, _48
	mov	rdi, rax	#, _49
	call	EvalMulEq	#
	mov	rcx, rdx	# tmp249,
	mov	rdx, rcx	# D.5908, tmp249
	jmp	.L741	#
.L765:
	endbr64	
# compiler/binary/fold_labels.h:25: DIVEQ: return EvalDivEq( &lhs->value, &rhs->value );
	.loc 24 25 15
	mov	rax, QWORD PTR -40[rbp]	# tmp250, rhs
	lea	rdx, 8[rax]	# _50,
	mov	rax, QWORD PTR -24[rbp]	# tmp251, lhs
	add	rax, 8	# _51,
	mov	rsi, rdx	#, _50
	mov	rdi, rax	#, _51
	call	EvalDivEq	#
	mov	rcx, rdx	# tmp253,
	mov	rdx, rcx	# D.5908, tmp253
	jmp	.L741	#
.L766:
	endbr64	
# compiler/binary/fold_labels.h:26: MODEQ: return EvalModEq( &lhs->value, &rhs->value );
	.loc 24 26 15
	mov	rax, QWORD PTR -40[rbp]	# tmp254, rhs
	lea	rdx, 8[rax]	# _52,
	mov	rax, QWORD PTR -24[rbp]	# tmp255, lhs
	add	rax, 8	# _53,
	mov	rsi, rdx	#, _52
	mov	rdi, rax	#, _53
	call	EvalModEq	#
	mov	rcx, rdx	# tmp257,
	mov	rdx, rcx	# D.5908, tmp257
	jmp	.L741	#
.L767:
	endbr64	
# compiler/binary/fold_labels.h:27: POWEQ: return EvalPowEq( &lhs->value, &rhs->value );
	.loc 24 27 15
	mov	rax, QWORD PTR -40[rbp]	# tmp258, rhs
	lea	rdx, 8[rax]	# _54,
	mov	rax, QWORD PTR -24[rbp]	# tmp259, lhs
	add	rax, 8	# _55,
	mov	rsi, rdx	#, _54
	mov	rdi, rax	#, _55
	call	EvalPowEq	#
	mov	rcx, rdx	# tmp261,
	mov	rdx, rcx	# D.5908, tmp261
	jmp	.L741	#
.L768:
	endbr64	
# compiler/binary/fold_labels.h:28: BANDEQ: return EvalBandEq( &lhs->value, &rhs->value );
	.loc 24 28 16
	mov	rax, QWORD PTR -40[rbp]	# tmp262, rhs
	lea	rdx, 8[rax]	# _56,
	mov	rax, QWORD PTR -24[rbp]	# tmp263, lhs
	add	rax, 8	# _57,
	mov	rsi, rdx	#, _56
	mov	rdi, rax	#, _57
	call	EvalBandEq	#
	mov	rcx, rdx	# tmp265,
	mov	rdx, rcx	# D.5908, tmp265
	jmp	.L741	#
.L769:
	endbr64	
# compiler/binary/fold_labels.h:29: BOREQ: return EvalBorEq( &lhs->value, &rhs->value );
	.loc 24 29 15
	mov	rax, QWORD PTR -40[rbp]	# tmp266, rhs
	lea	rdx, 8[rax]	# _58,
	mov	rax, QWORD PTR -24[rbp]	# tmp267, lhs
	add	rax, 8	# _59,
	mov	rsi, rdx	#, _58
	mov	rdi, rax	#, _59
	call	EvalBorEq	#
	mov	rcx, rdx	# tmp269,
	mov	rdx, rcx	# D.5908, tmp269
	jmp	.L741	#
.L770:
	endbr64	
# compiler/binary/fold_labels.h:30: BXOREQ: return EvalBxorEq( &lhs->value, &rhs->value );
	.loc 24 30 16
	mov	rax, QWORD PTR -40[rbp]	# tmp270, rhs
	lea	rdx, 8[rax]	# _60,
	mov	rax, QWORD PTR -24[rbp]	# tmp271, lhs
	add	rax, 8	# _61,
	mov	rsi, rdx	#, _60
	mov	rdi, rax	#, _61
	call	EvalBxorEq	#
	mov	rcx, rdx	# tmp273,
	mov	rdx, rcx	# D.5908, tmp273
	jmp	.L741	#
.L771:
	endbr64	
# compiler/binary/fold_labels.h:31: LSHEQ: return EvalLshEq( &lhs->value, &rhs->value );
	.loc 24 31 15
	mov	rax, QWORD PTR -40[rbp]	# tmp274, rhs
	lea	rdx, 8[rax]	# _62,
	mov	rax, QWORD PTR -24[rbp]	# tmp275, lhs
	add	rax, 8	# _63,
	mov	rsi, rdx	#, _62
	mov	rdi, rax	#, _63
	call	EvalLshEq	#
	mov	rcx, rdx	# tmp277,
	mov	rdx, rcx	# D.5908, tmp277
	jmp	.L741	#
.L772:
	endbr64	
# compiler/binary/fold_labels.h:32: RSHEQ: return EvalRshEq( &lhs->value, &rhs->value );
	.loc 24 32 15
	mov	rax, QWORD PTR -40[rbp]	# tmp278, rhs
	lea	rdx, 8[rax]	# _64,
	mov	rax, QWORD PTR -24[rbp]	# tmp279, lhs
	add	rax, 8	# _65,
	mov	rsi, rdx	#, _64
	mov	rdi, rax	#, _65
	call	EvalRshEq	#
	mov	rcx, rdx	# tmp281,
	mov	rdx, rcx	# D.5908, tmp281
.L741:
# compiler/binary/binary.h:20: }
	.loc 22 20 1
	mov	rsi, rax	# tmp283, D.5908
	mov	rdi, rdx	#, D.5908
	mov	rcx, rax	# tmp284, D.5908
	mov	rbx, rdx	#, D.5908
	mov	eax, esi	# <retval>, tmp283
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE166:
	.size	BinFold, .-BinFold
	.globl	BinConstConst
	.type	BinConstConst, @function
BinConstConst:
.LFB167:
	.loc 22 23 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 64	#,
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -52[rbp], edx	# op, op
	mov	QWORD PTR -64[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:24: 	ParseNode node = { .type = PT_CONST, .value.type = lhs->value.type };
	.loc 22 24 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
# compiler/binary/binary.h:24: 	ParseNode node = { .type = PT_CONST, .value.type = lhs->value.type };
	.loc 22 24 63
	mov	rax, QWORD PTR -48[rbp]	# tmp84, lhs
	mov	eax, DWORD PTR 8[rax]	# _1, lhs_4(D)->value.type
# compiler/binary/binary.h:24: 	ParseNode node = { .type = PT_CONST, .value.type = lhs->value.type };
	.loc 22 24 12
	mov	DWORD PTR -24[rbp], eax	# node.value.type, _1
# compiler/binary/binary.h:25: 	node.value = BinFold( lhs, op, rhs );
	.loc 22 25 15
	mov	rdx, QWORD PTR -64[rbp]	# tmp85, rhs
	mov	ecx, DWORD PTR -52[rbp]	# tmp86, op
	mov	rax, QWORD PTR -48[rbp]	# tmp87, lhs
	mov	esi, ecx	#, tmp86
	mov	rdi, rax	#, tmp87
	call	BinFold	#
	mov	ecx, eax	# tmp88,
	mov	rax, rdx	# tmp89,
	mov	DWORD PTR -24[rbp], ecx	# node.value, tmp88
	mov	QWORD PTR -16[rbp], rax	# node.value, tmp89
# compiler/binary/binary.h:26: 	return node;
	.loc 22 26 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp90, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp91, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp91
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp92, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp92
# compiler/binary/binary.h:27: }
	.loc 22 27 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE167:
	.size	BinConstConst, .-BinConstConst
	.globl	BinConstRef
	.type	BinConstRef, @function
BinConstRef:
.LFB168:
	.loc 22 30 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -52[rbp], edx	# op, op
	mov	QWORD PTR -64[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:31: 	return ( ParseNode ){ 0 };
	.loc 22 31 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:32: }
	.loc 22 32 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE168:
	.size	BinConstRef, .-BinConstRef
	.globl	BinConstCall
	.type	BinConstCall, @function
BinConstCall:
.LFB169:
	.loc 22 35 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -52[rbp], edx	# op, op
	mov	QWORD PTR -64[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:36: 	return ( ParseNode ){ 0 };
	.loc 22 36 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:37: }
	.loc 22 37 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE169:
	.size	BinConstCall, .-BinConstCall
	.globl	BinRefConst
	.type	BinRefConst, @function
BinRefConst:
.LFB170:
	.loc 22 40 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -52[rbp], edx	# op, op
	mov	QWORD PTR -64[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:41: 	return ( ParseNode ){ 0 };
	.loc 22 41 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:42: }
	.loc 22 42 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE170:
	.size	BinRefConst, .-BinRefConst
	.globl	BinRefRef
	.type	BinRefRef, @function
BinRefRef:
.LFB171:
	.loc 22 45 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -52[rbp], edx	# op, op
	mov	QWORD PTR -64[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:46: 	return ( ParseNode ){ 0 };
	.loc 22 46 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:47: }
	.loc 22 47 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE171:
	.size	BinRefRef, .-BinRefRef
	.globl	BinRefCall
	.type	BinRefCall, @function
BinRefCall:
.LFB172:
	.loc 22 50 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -52[rbp], edx	# op, op
	mov	QWORD PTR -64[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:51: 	return ( ParseNode ){ 0 };
	.loc 22 51 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:52: }
	.loc 22 52 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE172:
	.size	BinRefCall, .-BinRefCall
	.globl	BinCallConst
	.type	BinCallConst, @function
BinCallConst:
.LFB173:
	.loc 22 55 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -52[rbp], edx	# op, op
	mov	QWORD PTR -64[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:56: 	return ( ParseNode ){ 0 };
	.loc 22 56 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:57: }
	.loc 22 57 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE173:
	.size	BinCallConst, .-BinCallConst
	.globl	BinCallRef
	.type	BinCallRef, @function
BinCallRef:
.LFB174:
	.loc 22 60 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -52[rbp], edx	# op, op
	mov	QWORD PTR -64[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:61: 	return ( ParseNode ){ 0 };
	.loc 22 61 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:62: }
	.loc 22 62 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE174:
	.size	BinCallRef, .-BinCallRef
	.globl	BinCallCall
	.type	BinCallCall, @function
BinCallCall:
.LFB175:
	.loc 22 65 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -40[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -48[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -52[rbp], edx	# op, op
	mov	QWORD PTR -64[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:66: 	return ( ParseNode ){ 0 };
	.loc 22 66 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:67: }
	.loc 22 67 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE175:
	.size	BinCallCall, .-BinCallCall
	.globl	CompileBin
	.type	CompileBin, @function
CompileBin:
.LFB176:
	.loc 22 70 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -24[rbp], rdi	# .result_ptr, .result_ptr
	mov	QWORD PTR -32[rbp], rsi	# lhs, lhs
	mov	DWORD PTR -36[rbp], edx	# token_type, token_type
	mov	QWORD PTR -48[rbp], rcx	# rhs, rhs
# compiler/binary/binary.h:70: {
	.loc 22 70 1
	mov	rax, QWORD PTR fs:40	# tmp138, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6718, tmp138
	xor	eax, eax	# tmp138
# compiler/binary/binary.h:72: 	OpCode op = TkToOp( token_type );
	.loc 22 72 14
	mov	eax, DWORD PTR -36[rbp]	# tmp85, token_type
	mov	edi, eax	#, tmp85
	call	TkToOp	#
	mov	DWORD PTR -16[rbp], eax	# op, tmp86
# compiler/binary/binary.h:73: 	ValueType common = BinPromote( lhs, rhs );
	.loc 22 73 21
	mov	rdx, QWORD PTR -48[rbp]	# tmp87, rhs
	mov	rax, QWORD PTR -32[rbp]	# tmp88, lhs
	mov	rsi, rdx	#, tmp87
	mov	rdi, rax	#, tmp88
	call	BinPromote	#
	mov	DWORD PTR -12[rbp], eax	# common, tmp89
# compiler/binary/binary.h:74: 	BinCast( lhs, common );
	.loc 22 74 2
	mov	edx, DWORD PTR -12[rbp]	# tmp90, common
	mov	rax, QWORD PTR -32[rbp]	# tmp91, lhs
	mov	esi, edx	#, tmp90
	mov	rdi, rax	#, tmp91
	call	BinCast	#
# compiler/binary/binary.h:75: 	BinCast( rhs, common );
	.loc 22 75 2
	mov	edx, DWORD PTR -12[rbp]	# tmp92, common
	mov	rax, QWORD PTR -48[rbp]	# tmp93, rhs
	mov	esi, edx	#, tmp92
	mov	rdi, rax	#, tmp93
	call	BinCast	#
# compiler/binary/binary.h:76: 	goto *irs[ lhs->type ][ rhs->type ];
	.loc 22 76 16
	mov	rax, QWORD PTR -32[rbp]	# tmp94, lhs
	mov	edx, DWORD PTR [rax]	# _1, lhs_9(D)->type
# compiler/binary/binary.h:76: 	goto *irs[ lhs->type ][ rhs->type ];
	.loc 22 76 29
	mov	rax, QWORD PTR -48[rbp]	# tmp95, rhs
	mov	eax, DWORD PTR [rax]	# _2, rhs_10(D)->type
# compiler/binary/binary.h:76: 	goto *irs[ lhs->type ][ rhs->type ];
	.loc 22 76 24
	mov	ecx, eax	# tmp96, _2
	mov	edx, edx	# tmp97, _1
	mov	rax, rdx	# tmp98, tmp97
	add	rax, rax	# tmp98
	add	rax, rdx	# tmp98, tmp97
	add	rax, rcx	# tmp99, tmp96
	lea	rdx, 0[0+rax*8]	# tmp100,
	lea	rax, irs.2[rip]	# tmp101,
	mov	rax, QWORD PTR [rdx+rax]	# _3, irs[_1][_2]
# compiler/binary/binary.h:76: 	goto *irs[ lhs->type ][ rhs->type ];
	.loc 22 76 2
	nop	
	jmp	rax	# _3
.L793:
	endbr64	
# compiler/binary/ir_labels.h:1: CONST_CONST: return BinConstConst( lhs, op, rhs );
	.file 25 "compiler/binary/ir_labels.h"
	.loc 25 1 21
	mov	rax, QWORD PTR -24[rbp]	# tmp102, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp103, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp104, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp105, lhs
	mov	rdi, rax	#, tmp102
	call	BinConstConst	#
	jmp	.L794	#
.L795:
	endbr64	
# compiler/binary/ir_labels.h:2: CONST_REF: 	return BinConstRef( lhs, op, rhs );
	.loc 25 2 20
	mov	rax, QWORD PTR -24[rbp]	# tmp106, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp107, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp108, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp109, lhs
	mov	rdi, rax	#, tmp106
	call	BinConstRef	#
	jmp	.L794	#
.L796:
	endbr64	
# compiler/binary/ir_labels.h:3: CONST_CALL: return BinConstCall( lhs, op, rhs );
	.loc 25 3 20
	mov	rax, QWORD PTR -24[rbp]	# tmp110, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp111, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp112, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp113, lhs
	mov	rdi, rax	#, tmp110
	call	BinConstCall	#
	jmp	.L794	#
.L797:
	endbr64	
# compiler/binary/ir_labels.h:4: REF_CONST: return BinRefConst( lhs, op, rhs );
	.loc 25 4 19
	mov	rax, QWORD PTR -24[rbp]	# tmp114, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp115, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp116, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp117, lhs
	mov	rdi, rax	#, tmp114
	call	BinRefConst	#
	jmp	.L794	#
.L798:
	endbr64	
# compiler/binary/ir_labels.h:5: REF_REF: return BinRefRef( lhs, op, rhs );
	.loc 25 5 17
	mov	rax, QWORD PTR -24[rbp]	# tmp118, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp119, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp120, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp121, lhs
	mov	rdi, rax	#, tmp118
	call	BinRefRef	#
	jmp	.L794	#
.L799:
	endbr64	
# compiler/binary/ir_labels.h:6: REF_CALL: return BinRefCall( lhs, op, rhs );
	.loc 25 6 18
	mov	rax, QWORD PTR -24[rbp]	# tmp122, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp123, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp124, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp125, lhs
	mov	rdi, rax	#, tmp122
	call	BinRefCall	#
	jmp	.L794	#
.L800:
	endbr64	
# compiler/binary/ir_labels.h:7: CALL_CONST: return BinCallConst( lhs, op, rhs );
	.loc 25 7 20
	mov	rax, QWORD PTR -24[rbp]	# tmp126, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp127, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp128, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp129, lhs
	mov	rdi, rax	#, tmp126
	call	BinCallConst	#
	jmp	.L794	#
.L801:
	endbr64	
# compiler/binary/ir_labels.h:8: CALL_REF: return BinCallRef( lhs, op, rhs );
	.loc 25 8 18
	mov	rax, QWORD PTR -24[rbp]	# tmp130, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp131, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp132, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp133, lhs
	mov	rdi, rax	#, tmp130
	call	BinCallRef	#
	jmp	.L794	#
.L802:
	endbr64	
# compiler/binary/ir_labels.h:9: CALL_CALL: return BinCallCall( lhs, op, rhs );
	.loc 25 9 19
	mov	rax, QWORD PTR -24[rbp]	# tmp134, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp135, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp136, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp137, lhs
	mov	rdi, rax	#, tmp134
	call	BinCallCall	#
.L794:
# compiler/binary/binary.h:78: }
	.loc 22 78 1
	mov	rax, QWORD PTR -8[rbp]	# tmp139, D.6718
	sub	rax, QWORD PTR fs:40	# tmp139, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L803	#,
	call	__stack_chk_fail@PLT	#
.L803:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE176:
	.size	CompileBin, .-CompileBin
	.globl	MemAlloc
	.type	MemAlloc, @function
MemAlloc:
.LFB177:
	.file 26 "mem.h"
	.loc 26 2 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 8	#,
	.cfi_offset 3, -24
# mem.h:3: 	ArenaAlloc( GetSrc( ), KB( 32 ) ); /* Arena< I8 > */
	.loc 26 3 2
	call	GetSrc	#
# mem.h:3: 	ArenaAlloc( GetSrc( ), KB( 32 ) ); /* Arena< I8 > */
	.loc 26 3 2 is_stmt 0 discriminator 1
	mov	esi, 32768	#,
	mov	rdi, rax	#, _1
	call	ArenaAlloc	#
# mem.h:4: 	ArenaAlloc( GetStrings( ), KB( 16 ) ); /* Arena< I8 > */
	.loc 26 4 2 is_stmt 1
	call	GetStrings	#
# mem.h:4: 	ArenaAlloc( GetStrings( ), KB( 16 ) ); /* Arena< I8 > */
	.loc 26 4 2 is_stmt 0 discriminator 1
	mov	esi, 16384	#,
	mov	rdi, rax	#, _2
	call	ArenaAlloc	#
# mem.h:5: 	TableAlloc( GetInterns( ), GetStrings( ), 256 ); /* Table< String > */
	.loc 26 5 2 is_stmt 1
	call	GetStrings	#
	mov	rbx, rax	# _3,
# mem.h:5: 	TableAlloc( GetInterns( ), GetStrings( ), 256 ); /* Table< String > */
	.loc 26 5 2 is_stmt 0 discriminator 1
	call	GetInterns	#
# mem.h:5: 	TableAlloc( GetInterns( ), GetStrings( ), 256 ); /* Table< String > */
	.loc 26 5 2 discriminator 2
	mov	edx, 256	#,
	mov	rsi, rbx	#, _3
	mov	rdi, rax	#, _4
	call	TableAlloc	#
# mem.h:6: 	VecAlloc( GetConsts( ), 256, sizeof( Value ) ); /* Vec< Value > */
	.loc 26 6 2 is_stmt 1
	call	GetConsts	#
# mem.h:6: 	VecAlloc( GetConsts( ), 256, sizeof( Value ) ); /* Vec< Value > */
	.loc 26 6 2 is_stmt 0 discriminator 1
	mov	edx, 16	#,
	mov	esi, 256	#,
	mov	rdi, rax	#, _5
	call	VecAlloc	#
# mem.h:7: 	VecAlloc( GetLocals( ), 256, sizeof( Var ) ); /* Vec< Var > */
	.loc 26 7 2 is_stmt 1
	call	GetLocals	#
# mem.h:7: 	VecAlloc( GetLocals( ), 256, sizeof( Var ) ); /* Vec< Var > */
	.loc 26 7 2 is_stmt 0 discriminator 1
	mov	edx, 24	#,
	mov	esi, 256	#,
	mov	rdi, rax	#, _6
	call	VecAlloc	#
# mem.h:8: 	VecAlloc( GetGlobals( ), 256, sizeof( Var ) ); /* Vec< Var > */
	.loc 26 8 2 is_stmt 1
	call	GetGlobals	#
# mem.h:8: 	VecAlloc( GetGlobals( ), 256, sizeof( Var ) ); /* Vec< Var > */
	.loc 26 8 2 is_stmt 0 discriminator 1
	mov	edx, 24	#,
	mov	esi, 256	#,
	mov	rdi, rax	#, _7
	call	VecAlloc	#
# mem.h:9: 	EnvAlloc( GetEnv( ), 256 ); /* Env< Evar: 8 > */
	.loc 26 9 2 is_stmt 1
	call	GetEnv	#
# mem.h:9: 	EnvAlloc( GetEnv( ), 256 ); /* Env< Evar: 8 > */
	.loc 26 9 2 is_stmt 0 discriminator 1
	mov	esi, 256	#,
	mov	rdi, rax	#, _8
	call	EnvAlloc	#
# mem.h:10: 	VecAlloc( GetCode( ), 256, sizeof( Op ) ); /* Vec< Op > */
	.loc 26 10 2 is_stmt 1
	call	GetCode	#
# mem.h:10: 	VecAlloc( GetCode( ), 256, sizeof( Op ) ); /* Vec< Op > */
	.loc 26 10 2 is_stmt 0 discriminator 1
	mov	edx, 4	#,
	mov	esi, 256	#,
	mov	rdi, rax	#, _9
	call	VecAlloc	#
# mem.h:11: 	VecAlloc( GetFuncs( ), 128, sizeof( Func ) ); /* Vec< Func > */
	.loc 26 11 2 is_stmt 1
	call	GetFuncs	#
# mem.h:11: 	VecAlloc( GetFuncs( ), 128, sizeof( Func ) ); /* Vec< Func > */
	.loc 26 11 2 is_stmt 0 discriminator 1
	mov	edx, 16	#,
	mov	esi, 128	#,
	mov	rdi, rax	#, _10
	call	VecAlloc	#
# mem.h:12: }
	.loc 26 12 1 is_stmt 1
	nop	
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE177:
	.size	MemAlloc, .-MemAlloc
	.globl	MemDealloc
	.type	MemDealloc, @function
MemDealloc:
.LFB178:
	.loc 26 15 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# mem.h:16: 	free( GetFuncs( )->base );
	.loc 26 16 8
	call	GetFuncs	#
# mem.h:16: 	free( GetFuncs( )->base );
	.loc 26 16 19 discriminator 1
	mov	rax, QWORD PTR [rax]	# _2, _1->base
# mem.h:16: 	free( GetFuncs( )->base );
	.loc 26 16 2 discriminator 1
	mov	rdi, rax	#, _2
	call	free@PLT	#
# mem.h:17: 	free( GetCode( )->base );
	.loc 26 17 8
	call	GetCode	#
# mem.h:17: 	free( GetCode( )->base );
	.loc 26 17 18 discriminator 1
	mov	rax, QWORD PTR [rax]	# _4, _3->base
# mem.h:17: 	free( GetCode( )->base );
	.loc 26 17 2 discriminator 1
	mov	rdi, rax	#, _4
	call	free@PLT	#
# mem.h:18: 	free( GetEnv( )->base );
	.loc 26 18 8
	call	GetEnv	#
# mem.h:18: 	free( GetEnv( )->base );
	.loc 26 18 17 discriminator 1
	mov	rax, QWORD PTR [rax]	# _6, _5->base
# mem.h:18: 	free( GetEnv( )->base );
	.loc 26 18 2 discriminator 1
	mov	rdi, rax	#, _6
	call	free@PLT	#
# mem.h:19: 	free( GetGlobals( )->base );
	.loc 26 19 8
	call	GetGlobals	#
# mem.h:19: 	free( GetGlobals( )->base );
	.loc 26 19 21 discriminator 1
	mov	rax, QWORD PTR [rax]	# _8, _7->base
# mem.h:19: 	free( GetGlobals( )->base );
	.loc 26 19 2 discriminator 1
	mov	rdi, rax	#, _8
	call	free@PLT	#
# mem.h:20: 	free( GetLocals( )->base );
	.loc 26 20 8
	call	GetLocals	#
# mem.h:20: 	free( GetLocals( )->base );
	.loc 26 20 20 discriminator 1
	mov	rax, QWORD PTR [rax]	# _10, _9->base
# mem.h:20: 	free( GetLocals( )->base );
	.loc 26 20 2 discriminator 1
	mov	rdi, rax	#, _10
	call	free@PLT	#
# mem.h:21: 	free( GetConsts( )->base );
	.loc 26 21 8
	call	GetConsts	#
# mem.h:21: 	free( GetConsts( )->base );
	.loc 26 21 20 discriminator 1
	mov	rax, QWORD PTR [rax]	# _12, _11->base
# mem.h:21: 	free( GetConsts( )->base );
	.loc 26 21 2 discriminator 1
	mov	rdi, rax	#, _12
	call	free@PLT	#
# mem.h:22: 	free( GetInterns( )->base );
	.loc 26 22 8
	call	GetInterns	#
# mem.h:22: 	free( GetInterns( )->base );
	.loc 26 22 21 discriminator 1
	mov	rax, QWORD PTR [rax]	# _14, _13->base
# mem.h:22: 	free( GetInterns( )->base );
	.loc 26 22 2 discriminator 1
	mov	rdi, rax	#, _14
	call	free@PLT	#
# mem.h:23: 	free( GetStrings( )->base );
	.loc 26 23 8
	call	GetStrings	#
# mem.h:23: 	free( GetStrings( )->base );
	.loc 26 23 21 discriminator 1
	mov	rax, QWORD PTR [rax]	# _16, _15->base
# mem.h:23: 	free( GetStrings( )->base );
	.loc 26 23 2 discriminator 1
	mov	rdi, rax	#, _16
	call	free@PLT	#
# mem.h:24: 	free( GetSrc( )->base );
	.loc 26 24 8
	call	GetSrc	#
# mem.h:24: 	free( GetSrc( )->base );
	.loc 26 24 17 discriminator 1
	mov	rax, QWORD PTR [rax]	# _18, _17->base
# mem.h:24: 	free( GetSrc( )->base );
	.loc 26 24 2 discriminator 1
	mov	rdi, rax	#, _18
	call	free@PLT	#
# mem.h:25: }
	.loc 26 25 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE178:
	.size	MemDealloc, .-MemDealloc
	.type	OnSig, @function
OnSig:
.LFB179:
	.file 27 "main.h"
	.loc 27 2 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR -4[rbp], edi	# sig, sig
# main.h:3: 	longjmp( *GetJmp( ), EXIT_SUCCESS );
	.loc 27 3 12
	call	GetJmp	#
# main.h:3: 	longjmp( *GetJmp( ), EXIT_SUCCESS );
	.loc 27 3 2 discriminator 1
	mov	esi, 0	#,
	mov	rdi, rax	#, _1
	call	longjmp@PLT	#
	.cfi_endproc
.LFE179:
	.size	OnSig, .-OnSig
	.type	Init, @function
Init:
.LFB180:
	.loc 27 7 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	push	rbx	#
	sub	rsp, 8	#,
	.cfi_offset 3, -24
# main.h:8: 	MemAlloc( );
	.loc 27 8 2
	call	MemAlloc	#
# main.h:9: 	LexerInit( GetSrc( ), GetInterns( ) );
	.loc 27 9 2
	call	GetInterns	#
	mov	rbx, rax	# _1,
# main.h:9: 	LexerInit( GetSrc( ), GetInterns( ) );
	.loc 27 9 2 is_stmt 0 discriminator 1
	call	GetSrc	#
# main.h:9: 	LexerInit( GetSrc( ), GetInterns( ) );
	.loc 27 9 2 discriminator 2
	mov	rsi, rbx	#, _1
	mov	rdi, rax	#, _2
	call	LexerInit	#
# main.h:10: 	ParserInit( );
	.loc 27 10 2 is_stmt 1
	call	ParserInit	#
# main.h:11: 	CompilerInit( );
	.loc 27 11 2
	call	CompilerInit	#
# main.h:12: 	signal( SIGINT, OnSig );
	.loc 27 12 2
	lea	rax, OnSig[rip]	# tmp84,
	mov	rsi, rax	#, tmp84
	mov	edi, 2	#,
	call	__sysv_signal@PLT	#
# main.h:13: 	signal( SIGTSTP, OnSig );
	.loc 27 13 2
	lea	rax, OnSig[rip]	# tmp85,
	mov	rsi, rax	#, tmp85
	mov	edi, 20	#,
	call	__sysv_signal@PLT	#
# main.h:14: 	signal( SIGKILL, OnSig );
	.loc 27 14 2
	lea	rax, OnSig[rip]	# tmp86,
	mov	rsi, rax	#, tmp86
	mov	edi, 9	#,
	call	__sysv_signal@PLT	#
# main.h:15: }
	.loc 27 15 1
	nop	
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE180:
	.size	Init, .-Init
	.type	Run, @function
Run:
.LFB181:
	.loc 27 18 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# main.h:19: 	LexReinit( ( I8* )GetSrc( )->base );
	.loc 27 19 20
	call	GetSrc	#
# main.h:19: 	LexReinit( ( I8* )GetSrc( )->base );
	.loc 27 19 29 discriminator 1
	mov	rax, QWORD PTR [rax]	# _2, _1->base
# main.h:19: 	LexReinit( ( I8* )GetSrc( )->base );
	.loc 27 19 2 discriminator 1
	mov	rdi, rax	#, _2
	call	LexReinit	#
# main.h:20: 	Parse( );
	.loc 27 20 2
	call	Parse	#
# main.h:21: }
	.loc 27 21 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE181:
	.size	Run, .-Run
	.section	.rodata
.LC15:
	.string	"$ "
	.text
	.type	Repl, @function
Repl:
.LFB182:
	.loc 27 24 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# main.h:25: 	Init( );
	.loc 27 25 2
	call	Init	#
# main.h:26: 	Arena *src = GetSrc( );
	.loc 27 26 15
	call	GetSrc	#
	mov	QWORD PTR -8[rbp], rax	# src, tmp86
# main.h:27: 	I8 *line = ( I8* )src->base;
	.loc 27 27 6
	mov	rax, QWORD PTR -8[rbp]	# tmp87, src
	mov	rax, QWORD PTR [rax]	# tmp88, src_9->base
	mov	QWORD PTR -16[rbp], rax	# line, tmp88
.L810:
# main.h:30: 		printf( "$ " );
	.loc 27 30 3
	lea	rax, .LC15[rip]	# tmp89,
	mov	rdi, rax	#, tmp89
	mov	eax, 0	#,
	call	printf@PLT	#
# main.h:31: 		line = fgets( line, src->max, stdin );
	.loc 27 31 10
	mov	rdx, QWORD PTR stdin[rip]	# stdin.66_1, stdin
# main.h:31: 		line = fgets( line, src->max, stdin );
	.loc 27 31 26
	mov	rax, QWORD PTR -8[rbp]	# tmp90, src
	mov	eax, DWORD PTR 12[rax]	# _2, src_9->max
# main.h:31: 		line = fgets( line, src->max, stdin );
	.loc 27 31 10
	mov	ecx, eax	# _3, _2
	mov	rax, QWORD PTR -16[rbp]	# tmp91, line
	mov	esi, ecx	#, _3
	mov	rdi, rax	#, tmp91
	call	fgets@PLT	#
	mov	QWORD PTR -16[rbp], rax	# line, tmp92
# main.h:32: 		Run( );
	.loc 27 32 3 discriminator 1
	call	Run	#
# main.h:30: 		printf( "$ " );
	.loc 27 30 3
	nop	
	jmp	.L810	#
	.cfi_endproc
.LFE182:
	.size	Repl, .-Repl
	.type	Load, @function
Load:
.LFB183:
	.loc 27 38 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# file, file
# main.h:39: 	Init( );
	.loc 27 39 2
	call	Init	#
# main.h:40: 	IoRead( GetSrc( ), file );
	.loc 27 40 2
	call	GetSrc	#
	mov	rdx, rax	# _1,
# main.h:40: 	IoRead( GetSrc( ), file );
	.loc 27 40 2 is_stmt 0 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp85, file
	mov	rsi, rax	#, tmp85
	mov	rdi, rdx	#, _1
	call	IoRead	#
# main.h:41: 	Run( );
	.loc 27 41 2 is_stmt 1
	call	Run	#
# main.h:42: 	return EXIT_SUCCESS;
	.loc 27 42 9
	mov	eax, 0	# _8,
# main.h:43: }
	.loc 27 43 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE183:
	.size	Load, .-Load
	.type	Deinit, @function
Deinit:
.LFB184:
	.loc 27 46 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR -4[rbp], edi	# err, err
# main.h:47: 	MemDealloc( );
	.loc 27 47 2
	call	MemDealloc	#
# main.h:48: 	return err;
	.loc 27 48 9
	mov	eax, DWORD PTR -4[rbp]	# _4, err
# main.h:49: }
	.loc 27 49 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE184:
	.size	Deinit, .-Deinit
	.globl	main
	.type	main, @function
main:
.LFB185:
	.loc 27 52 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 32	#,
	mov	DWORD PTR -20[rbp], edi	# nargs, nargs
	mov	QWORD PTR -32[rbp], rsi	# args, args
# main.h:53: 	I32 res = setjmp( *GetJmp( ) );
	.loc 27 53 12
	call	GetJmp	#
# main.h:53: 	I32 res = setjmp( *GetJmp( ) );
	.loc 27 53 12 is_stmt 0 discriminator 2
	mov	rdi, rax	#, _1
	call	_setjmp@PLT	#
	endbr64	
# main.h:53: 	I32 res = setjmp( *GetJmp( ) );
	.loc 27 53 12 discriminator 3
	mov	DWORD PTR -4[rbp], eax	# res, _16
# main.h:54: 	if( res ){ return Deinit( res ); }
	.loc 27 54 4 is_stmt 1
	cmp	DWORD PTR -4[rbp], 0	# res,
	je	.L817	#,
# main.h:54: 	if( res ){ return Deinit( res ); }
	.loc 27 54 20 discriminator 1
	mov	eax, DWORD PTR -4[rbp]	# tmp89, res
	mov	edi, eax	#, tmp89
	call	Deinit	#
# main.h:54: 	if( res ){ return Deinit( res ); }
	.loc 27 54 20 is_stmt 0
	jmp	.L818	#
.L817:
# main.h:55: 	if( nargs == 1 ){ return Repl( ); }
	.loc 27 55 4 is_stmt 1
	cmp	DWORD PTR -20[rbp], 1	# nargs,
	jne	.L819	#,
# main.h:55: 	if( nargs == 1 ){ return Repl( ); }
	.loc 27 55 27 discriminator 1
	call	Repl	#
# main.h:55: 	if( nargs == 1 ){ return Repl( ); }
	.loc 27 55 27 is_stmt 0
	jmp	.L818	#
.L819:
# main.h:56: 	return Load( args[ 1 ] );
	.loc 27 56 19 is_stmt 1
	mov	rax, QWORD PTR -32[rbp]	# tmp90, args
	add	rax, 8	# _2,
# main.h:56: 	return Load( args[ 1 ] );
	.loc 27 56 9
	mov	rax, QWORD PTR [rax]	# _3, *_2
	mov	rdi, rax	#, _3
	call	Load	#
.L818:
# main.h:57: }
	.loc 27 57 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE185:
	.size	main, .-main
	.section	.data.rel.local,"aw"
	.align 16
	.type	types.51, @object
	.size	types.51, 24
types.51:
	.quad	.L55
	.quad	.L57
	.quad	.L58
	.local	strings.50
	.comm	strings.50,16,16
	.local	globals.49
	.comm	globals.49,24,16
	.align 32
	.type	ascii.48, @object
	.size	ascii.48, 1024
ascii.48:
	.quad	.L255
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L257
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L254
	.quad	.L258
	.quad	.L259
	.quad	.L260
	.quad	.L254
	.quad	.L261
	.quad	.L262
	.quad	.L254
	.quad	.L263
	.quad	.L264
	.quad	.L265
	.quad	.L266
	.quad	.L267
	.quad	.L268
	.quad	.L269
	.quad	.L270
	.quad	.L271
	.quad	.L271
	.quad	.L271
	.quad	.L271
	.quad	.L271
	.quad	.L271
	.quad	.L271
	.quad	.L271
	.quad	.L271
	.quad	.L271
	.quad	.L272
	.quad	.L273
	.quad	.L274
	.quad	.L275
	.quad	.L276
	.quad	.L254
	.quad	.L277
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L279
	.quad	.L254
	.quad	.L280
	.quad	.L281
	.quad	.L278
	.quad	.L254
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L278
	.quad	.L283
	.quad	.L284
	.quad	.L285
	.quad	.L282
	.quad	.L254
	.local	lexer.47
	.comm	lexer.47,32,32
	.local	buf.46
	.comm	buf.46,200,32
	.align 16
	.type	types.45, @object
	.size	types.45, 24
types.45:
	.quad	.L294
	.quad	.L295
	.quad	.L296
	.align 32
	.type	rules.44, @object
	.size	rules.44, 1392
rules.44:
# nud:
	.quad	.L355
# led:
	.quad	.L355
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L357
# led:
	.quad	.L356
# prec:
	.long	20
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	14
	.zero	4
# nud:
	.quad	.L357
# led:
	.quad	.L356
# prec:
	.long	20
	.zero	4
# nud:
	.quad	.L357
# led:
	.quad	.L358
# prec:
	.long	17
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	4
	.zero	4
# nud:
	.quad	.L357
# led:
	.quad	.L356
# prec:
	.long	22
	.zero	4
# nud:
	.quad	.L357
# led:
	.quad	.L358
# prec:
	.long	17
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	4
	.zero	4
# nud:
	.quad	.L357
# led:
	.quad	.L356
# prec:
	.long	22
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	18
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	5
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	19
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	6
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	18
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	5
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	18
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	5
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	13
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	2
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	10
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	11
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	2
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	9
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	12
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	2
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	14
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	15
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	15
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	16
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	3
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	15
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	15
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	16
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	3
	.zero	4
# nud:
	.quad	.L359
# led:
	.quad	.L360
# prec:
	.long	25
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	24
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	23
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L358
# prec:
	.long	7
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	1
	.zero	4
# nud:
	.quad	.L356
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L361
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L362
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L363
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L364
# led:
	.quad	.L356
# prec:
	.long	0
	.zero	4
	.align 32
	.type	stmts.43, @object
	.size	stmts.43, 464
stmts.43:
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L372
	.quad	.L373
	.quad	.L370
	.quad	.L370
	.quad	.L374
	.quad	.L375
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L370
	.quad	.L376
	.local	parser.42
	.comm	parser.42,24,16
	.local	compiler.41
	.comm	compiler.41,16,16
	.local	funcs.40
	.comm	funcs.40,24,16
	.local	consts.39
	.comm	consts.39,24,16
	.local	locals.38
	.comm	locals.38,24,16
	.local	code.37
	.comm	code.37,24,16
	.local	env.36
	.comm	env.36,16,16
	.align 16
	.type	types.35, @object
	.size	types.35, 24
types.35:
	.quad	.L423
	.quad	.L425
	.quad	.L426
	.align 16
	.type	types.34, @object
	.size	types.34, 24
types.34:
	.quad	.L437
	.quad	.L439
	.quad	.L443
	.align 16
	.type	types.33, @object
	.size	types.33, 24
types.33:
	.quad	.L448
	.quad	.L450
	.quad	.L451
	.align 16
	.type	types.32, @object
	.size	types.32, 24
types.32:
	.quad	.L455
	.quad	.L457
	.quad	.L458
	.align 16
	.type	types.31, @object
	.size	types.31, 24
types.31:
	.quad	.L462
	.quad	.L464
	.quad	.L465
	.align 16
	.type	types.30, @object
	.size	types.30, 24
types.30:
	.quad	.L469
	.quad	.L471
	.quad	.L472
	.align 16
	.type	types.29, @object
	.size	types.29, 24
types.29:
	.quad	.L476
	.quad	.L478
	.quad	.L479
	.align 16
	.type	irs.28, @object
	.size	irs.28, 24
irs.28:
	.quad	.L499
	.quad	.L501
	.quad	.L502
	.data
	.align 32
	.type	token_ops.27, @object
	.size	token_ops.27, 232
token_ops.27:
	.long	0
	.long	1
	.long	19
	.long	2
	.long	7
	.long	27
	.long	3
	.long	8
	.long	28
	.long	4
	.long	9
	.long	29
	.long	12
	.long	32
	.long	10
	.long	30
	.long	11
	.long	31
	.long	13
	.long	33
	.long	24
	.long	14
	.long	34
	.long	25
	.long	15
	.long	35
	.long	0
	.long	18
	.long	20
	.long	21
	.long	16
	.long	36
	.long	22
	.long	23
	.long	17
	.long	37
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	26
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.section	.data.rel.local
	.align 32
	.type	ops.26, @object
	.size	ops.26, 304
ops.26:
	.quad	.L483
	.quad	.L485
	.quad	.L486
	.quad	.L489
	.quad	.L490
	.quad	.L483
	.quad	.L483
	.quad	.L487
	.quad	.L488
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.quad	.L483
	.data
	.align 32
	.type	types.25, @object
	.size	types.25, 36
types.25:
	.long	0
	.long	1
	.long	2
	.long	1
	.long	1
	.long	2
	.long	2
	.long	2
	.long	2
	.section	.data.rel.local
	.align 32
	.type	types.24, @object
	.size	types.24, 72
types.24:
	.quad	.L728
	.quad	.L730
	.quad	.L731
	.quad	.L732
	.quad	.L733
	.quad	.L734
	.quad	.L735
	.quad	.L736
	.quad	.L737
	.align 32
	.type	ops.23, @object
	.size	ops.23, 304
ops.23:
	.quad	.L740
	.quad	.L740
	.quad	.L740
	.quad	.L740
	.quad	.L740
	.quad	.L740
	.quad	.L740
	.quad	.L742
	.quad	.L743
	.quad	.L744
	.quad	.L745
	.quad	.L746
	.quad	.L747
	.quad	.L748
	.quad	.L749
	.quad	.L750
	.quad	.L751
	.quad	.L752
	.quad	.L753
	.quad	.L754
	.quad	.L755
	.quad	.L756
	.quad	.L757
	.quad	.L758
	.quad	.L759
	.quad	.L760
	.quad	.L761
	.quad	.L762
	.quad	.L763
	.quad	.L764
	.quad	.L765
	.quad	.L766
	.quad	.L767
	.quad	.L768
	.quad	.L769
	.quad	.L770
	.quad	.L771
	.quad	.L772
	.align 16
	.type	ops.22, @object
	.size	ops.22, 24
ops.22:
	.quad	.L508
	.quad	.L510
	.quad	.L511
	.align 16
	.type	ops.21, @object
	.size	ops.21, 24
ops.21:
	.quad	.L515
	.quad	.L517
	.quad	.L518
	.align 16
	.type	ops.20, @object
	.size	ops.20, 24
ops.20:
	.quad	.L522
	.quad	.L524
	.quad	.L525
	.align 16
	.type	ops.19, @object
	.size	ops.19, 24
ops.19:
	.quad	.L529
	.quad	.L531
	.quad	.L532
	.align 16
	.type	ops.18, @object
	.size	ops.18, 24
ops.18:
	.quad	.L536
	.quad	.L538
	.quad	.L539
	.align 16
	.type	ops.17, @object
	.size	ops.17, 24
ops.17:
	.quad	.L543
	.quad	.L545
	.quad	.L546
	.align 16
	.type	ops.16, @object
	.size	ops.16, 24
ops.16:
	.quad	.L554
	.quad	.L556
	.quad	.L557
	.align 16
	.type	ops.15, @object
	.size	ops.15, 24
ops.15:
	.quad	.L561
	.quad	.L563
	.quad	.L564
	.align 16
	.type	ops.14, @object
	.size	ops.14, 24
ops.14:
	.quad	.L568
	.quad	.L570
	.quad	.L571
	.align 16
	.type	ops.13, @object
	.size	ops.13, 24
ops.13:
	.quad	.L575
	.quad	.L577
	.quad	.L578
	.align 16
	.type	ops.12, @object
	.size	ops.12, 24
ops.12:
	.quad	.L582
	.quad	.L584
	.quad	.L585
	.align 16
	.type	ops.11, @object
	.size	ops.11, 24
ops.11:
	.quad	.L589
	.quad	.L591
	.quad	.L595
	.align 16
	.type	ops.10, @object
	.size	ops.10, 24
ops.10:
	.quad	.L600
	.quad	.L602
	.quad	.L606
	.align 16
	.type	ops.9, @object
	.size	ops.9, 24
ops.9:
	.quad	.L611
	.quad	.L613
	.quad	.L617
	.align 16
	.type	ops.8, @object
	.size	ops.8, 24
ops.8:
	.quad	.L623
	.quad	.L625
	.quad	.L629
	.align 16
	.type	ops.7, @object
	.size	ops.7, 24
ops.7:
	.quad	.L635
	.quad	.L637
	.quad	.L641
	.align 16
	.type	ops.6, @object
	.size	ops.6, 24
ops.6:
	.quad	.L647
	.quad	.L649
	.quad	.L653
	.align 16
	.type	ops.5, @object
	.size	ops.5, 24
ops.5:
	.quad	.L659
	.quad	.L664
	.quad	.L669
	.align 16
	.type	ops.4, @object
	.size	ops.4, 24
ops.4:
	.quad	.L677
	.quad	.L683
	.quad	.L689
	.align 16
	.type	ops.3, @object
	.size	ops.3, 24
ops.3:
	.quad	.L697
	.quad	.L699
	.quad	.L700
	.align 32
	.type	irs.2, @object
	.size	irs.2, 72
irs.2:
	.quad	.L793
	.quad	.L795
	.quad	.L796
	.quad	.L797
	.quad	.L798
	.quad	.L799
	.quad	.L800
	.quad	.L801
	.quad	.L802
	.local	src.1
	.comm	src.1,16,16
	.local	interns.0
	.comm	interns.0,24,16
	.section	.rodata
	.align 8
.LC0:
	.long	858993459
	.long	1071854387
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 28 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 29 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h"
	.file 30 "<built-in>"
	.file 31 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 32 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 33 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 34 "/usr/include/stdio.h"
	.file 35 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 36 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 37 "/usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h"
	.file 38 "/usr/include/setjmp.h"
	.file 39 "/usr/include/signal.h"
	.file 40 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 41 "std/types.h"
	.file 42 "lexer/token_type.h"
	.file 43 "parser/prec.h"
	.file 44 "parser/parse_type.h"
	.file 45 "compiler/opcode.h"
	.file 46 "/usr/include/stdlib.h"
	.file 47 "/usr/include/string.h"
	.file 48 "compiler/binary/ir_table.h"
	.file 49 "compiler/binary/fold_table.h"
	.file 50 "compiler/binary/cast_table.h"
	.file 51 "compiler/binary/promote_table.h"
	.file 52 "compiler/unary/ir_table.h"
	.file 53 "compiler/unary/fold_table.h"
	.file 54 "compiler/assign/ir_table.h"
	.file 55 "compiler/token_op_table.h"
	.file 56 "parser/stmt_table.h"
	.file 57 "parser/expr_table.h"
	.file 58 "lexer/ascii_table.h"
	.file 59 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x5333
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2b
	.long	.LASF553
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xd
	.long	.LASF2
	.byte	0x1c
	.byte	0xd6
	.byte	0x17
	.long	0x3a
	.uleb128 0x17
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0xd
	.long	.LASF3
	.byte	0x1d
	.byte	0x28
	.byte	0x1b
	.long	0x4d
	.uleb128 0x2c
	.long	.LASF554
	.long	0x56
	.uleb128 0x14
	.long	0x66
	.long	0x66
	.uleb128 0x12
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2d
	.long	.LASF555
	.byte	0x18
	.byte	0x1e
	.byte	0
	.long	0x9b
	.uleb128 0x1e
	.long	.LASF4
	.long	0x9b
	.byte	0
	.uleb128 0x1e
	.long	.LASF5
	.long	0x9b
	.byte	0x4
	.uleb128 0x1e
	.long	.LASF6
	.long	0xa2
	.byte	0x8
	.uleb128 0x1e
	.long	.LASF7
	.long	0xa2
	.byte	0x10
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2e
	.byte	0x8
	.uleb128 0x1b
	.long	0xa2
	.uleb128 0x17
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x17
	.byte	0x2
	.byte	0x7
	.long	.LASF11
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xd
	.long	.LASF13
	.byte	0x1f
	.byte	0x26
	.byte	0x17
	.long	0xa9
	.uleb128 0x17
	.byte	0x2
	.byte	0x5
	.long	.LASF14
	.uleb128 0xd
	.long	.LASF15
	.byte	0x1f
	.byte	0x28
	.byte	0x1c
	.long	0xb0
	.uleb128 0x2f
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xd
	.long	.LASF16
	.byte	0x1f
	.byte	0x2a
	.byte	0x16
	.long	0x9b
	.uleb128 0x17
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0xd
	.long	.LASF18
	.byte	0x1f
	.byte	0x2d
	.byte	0x1b
	.long	0x3a
	.uleb128 0xd
	.long	.LASF19
	.byte	0x1f
	.byte	0x98
	.byte	0x19
	.long	0xf0
	.uleb128 0xd
	.long	.LASF20
	.byte	0x1f
	.byte	0x99
	.byte	0x1b
	.long	0xf0
	.uleb128 0xb
	.long	0x125
	.uleb128 0x1b
	.long	0x11b
	.uleb128 0x17
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x30
	.long	0x125
	.uleb128 0x13
	.long	.LASF62
	.byte	0xd8
	.byte	0x20
	.byte	0x31
	.byte	0x8
	.long	0x2b8
	.uleb128 0x7
	.long	.LASF22
	.byte	0x20
	.byte	0x33
	.byte	0x7
	.long	0xdd
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x20
	.byte	0x36
	.byte	0x9
	.long	0x11b
	.byte	0x8
	.uleb128 0x7
	.long	.LASF24
	.byte	0x20
	.byte	0x37
	.byte	0x9
	.long	0x11b
	.byte	0x10
	.uleb128 0x7
	.long	.LASF25
	.byte	0x20
	.byte	0x38
	.byte	0x9
	.long	0x11b
	.byte	0x18
	.uleb128 0x7
	.long	.LASF26
	.byte	0x20
	.byte	0x39
	.byte	0x9
	.long	0x11b
	.byte	0x20
	.uleb128 0x7
	.long	.LASF27
	.byte	0x20
	.byte	0x3a
	.byte	0x9
	.long	0x11b
	.byte	0x28
	.uleb128 0x7
	.long	.LASF28
	.byte	0x20
	.byte	0x3b
	.byte	0x9
	.long	0x11b
	.byte	0x30
	.uleb128 0x7
	.long	.LASF29
	.byte	0x20
	.byte	0x3c
	.byte	0x9
	.long	0x11b
	.byte	0x38
	.uleb128 0x7
	.long	.LASF30
	.byte	0x20
	.byte	0x3d
	.byte	0x9
	.long	0x11b
	.byte	0x40
	.uleb128 0x7
	.long	.LASF31
	.byte	0x20
	.byte	0x40
	.byte	0x9
	.long	0x11b
	.byte	0x48
	.uleb128 0x7
	.long	.LASF32
	.byte	0x20
	.byte	0x41
	.byte	0x9
	.long	0x11b
	.byte	0x50
	.uleb128 0x7
	.long	.LASF33
	.byte	0x20
	.byte	0x42
	.byte	0x9
	.long	0x11b
	.byte	0x58
	.uleb128 0x7
	.long	.LASF34
	.byte	0x20
	.byte	0x44
	.byte	0x16
	.long	0x2d1
	.byte	0x60
	.uleb128 0x7
	.long	.LASF35
	.byte	0x20
	.byte	0x46
	.byte	0x14
	.long	0x2d6
	.byte	0x68
	.uleb128 0x7
	.long	.LASF36
	.byte	0x20
	.byte	0x48
	.byte	0x7
	.long	0xdd
	.byte	0x70
	.uleb128 0x7
	.long	.LASF37
	.byte	0x20
	.byte	0x49
	.byte	0x7
	.long	0xdd
	.byte	0x74
	.uleb128 0x7
	.long	.LASF38
	.byte	0x20
	.byte	0x4a
	.byte	0xb
	.long	0x103
	.byte	0x78
	.uleb128 0x7
	.long	.LASF39
	.byte	0x20
	.byte	0x4d
	.byte	0x12
	.long	0xb0
	.byte	0x80
	.uleb128 0x7
	.long	.LASF40
	.byte	0x20
	.byte	0x4e
	.byte	0xf
	.long	0xb7
	.byte	0x82
	.uleb128 0x7
	.long	.LASF41
	.byte	0x20
	.byte	0x4f
	.byte	0x8
	.long	0x2db
	.byte	0x83
	.uleb128 0x7
	.long	.LASF42
	.byte	0x20
	.byte	0x51
	.byte	0xf
	.long	0x2eb
	.byte	0x88
	.uleb128 0x7
	.long	.LASF43
	.byte	0x20
	.byte	0x59
	.byte	0xd
	.long	0x10f
	.byte	0x90
	.uleb128 0x7
	.long	.LASF44
	.byte	0x20
	.byte	0x5b
	.byte	0x17
	.long	0x2f5
	.byte	0x98
	.uleb128 0x7
	.long	.LASF45
	.byte	0x20
	.byte	0x5c
	.byte	0x19
	.long	0x2ff
	.byte	0xa0
	.uleb128 0x7
	.long	.LASF46
	.byte	0x20
	.byte	0x5d
	.byte	0x14
	.long	0x2d6
	.byte	0xa8
	.uleb128 0x7
	.long	.LASF47
	.byte	0x20
	.byte	0x5e
	.byte	0x9
	.long	0xa2
	.byte	0xb0
	.uleb128 0x7
	.long	.LASF48
	.byte	0x20
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x7
	.long	.LASF49
	.byte	0x20
	.byte	0x60
	.byte	0x7
	.long	0xdd
	.byte	0xc0
	.uleb128 0x7
	.long	.LASF50
	.byte	0x20
	.byte	0x62
	.byte	0x8
	.long	0x304
	.byte	0xc4
	.byte	0
	.uleb128 0xd
	.long	.LASF51
	.byte	0x21
	.byte	0x7
	.byte	0x19
	.long	0x131
	.uleb128 0x20
	.long	.LASF75
	.byte	0x20
	.byte	0x2b
	.byte	0xe
	.uleb128 0x21
	.long	.LASF52
	.uleb128 0xb
	.long	0x2cc
	.uleb128 0xb
	.long	0x131
	.uleb128 0x14
	.long	0x125
	.long	0x2eb
	.uleb128 0x12
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0x2c4
	.uleb128 0x21
	.long	.LASF53
	.uleb128 0xb
	.long	0x2f0
	.uleb128 0x21
	.long	.LASF54
	.uleb128 0xb
	.long	0x2fa
	.uleb128 0x14
	.long	0x125
	.long	0x314
	.uleb128 0x12
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x26
	.long	.LASF55
	.byte	0x95
	.long	0x31e
	.uleb128 0xb
	.long	0x2b8
	.uleb128 0x1b
	.long	0x31e
	.uleb128 0x26
	.long	.LASF56
	.byte	0x97
	.long	0x31e
	.uleb128 0x17
	.byte	0x8
	.byte	0x5
	.long	.LASF57
	.uleb128 0xb
	.long	0x33e
	.uleb128 0x31
	.uleb128 0xd
	.long	.LASF58
	.byte	0x1d
	.byte	0x67
	.byte	0x18
	.long	0x41
	.uleb128 0xd
	.long	.LASF59
	.byte	0x23
	.byte	0x1f
	.byte	0x12
	.long	0x357
	.uleb128 0x14
	.long	0xf0
	.long	0x367
	.uleb128 0x12
	.long	0x3a
	.byte	0x7
	.byte	0
	.uleb128 0x32
	.byte	0x80
	.byte	0x24
	.byte	0x5
	.byte	0x9
	.long	0x37e
	.uleb128 0x7
	.long	.LASF60
	.byte	0x24
	.byte	0x7
	.byte	0x15
	.long	0x37e
	.byte	0
	.byte	0
	.uleb128 0x14
	.long	0x3a
	.long	0x38e
	.uleb128 0x12
	.long	0x3a
	.byte	0xf
	.byte	0
	.uleb128 0xd
	.long	.LASF61
	.byte	0x24
	.byte	0x8
	.byte	0x3
	.long	0x367
	.uleb128 0x13
	.long	.LASF63
	.byte	0xc8
	.byte	0x25
	.byte	0x1a
	.byte	0x8
	.long	0x3cf
	.uleb128 0x7
	.long	.LASF64
	.byte	0x25
	.byte	0x20
	.byte	0xf
	.long	0x34b
	.byte	0
	.uleb128 0x7
	.long	.LASF65
	.byte	0x25
	.byte	0x21
	.byte	0x9
	.long	0xdd
	.byte	0x40
	.uleb128 0x7
	.long	.LASF66
	.byte	0x25
	.byte	0x22
	.byte	0x10
	.long	0x38e
	.byte	0x48
	.byte	0
	.uleb128 0xd
	.long	.LASF67
	.byte	0x26
	.byte	0x20
	.byte	0x1e
	.long	0x3db
	.uleb128 0x14
	.long	0x39a
	.long	0x3eb
	.uleb128 0x12
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF68
	.byte	0x27
	.byte	0x48
	.byte	0x10
	.long	0x3f7
	.uleb128 0xb
	.long	0x3fc
	.uleb128 0x33
	.long	0x407
	.uleb128 0xa
	.long	0xdd
	.byte	0
	.uleb128 0xd
	.long	.LASF69
	.byte	0x28
	.byte	0x18
	.byte	0x13
	.long	0xbe
	.uleb128 0xd
	.long	.LASF70
	.byte	0x28
	.byte	0x19
	.byte	0x14
	.long	0xd1
	.uleb128 0xd
	.long	.LASF71
	.byte	0x28
	.byte	0x1a
	.byte	0x14
	.long	0xe4
	.uleb128 0xd
	.long	.LASF72
	.byte	0x28
	.byte	0x1b
	.byte	0x14
	.long	0xf7
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.long	.LASF73
	.uleb128 0x17
	.byte	0x8
	.byte	0x4
	.long	.LASF74
	.uleb128 0x15
	.string	"I8"
	.byte	0x29
	.byte	0x2
	.byte	0xe
	.long	0x125
	.uleb128 0x15
	.string	"I32"
	.byte	0x29
	.byte	0x4
	.byte	0xd
	.long	0xdd
	.uleb128 0x15
	.string	"I64"
	.byte	0x29
	.byte	0x5
	.byte	0xe
	.long	0xf0
	.uleb128 0x15
	.string	"U8"
	.byte	0x29
	.byte	0xa
	.byte	0x11
	.long	0x407
	.uleb128 0x15
	.string	"U16"
	.byte	0x29
	.byte	0xb
	.byte	0x12
	.long	0x413
	.uleb128 0x15
	.string	"U32"
	.byte	0x29
	.byte	0xc
	.byte	0x12
	.long	0x41f
	.uleb128 0x15
	.string	"U64"
	.byte	0x29
	.byte	0xd
	.byte	0x12
	.long	0x42b
	.uleb128 0x15
	.string	"F64"
	.byte	0x29
	.byte	0xf
	.byte	0x10
	.long	0x43e
	.uleb128 0x20
	.long	.LASF76
	.byte	0x29
	.byte	0x10
	.byte	0xe
	.uleb128 0x20
	.long	.LASF77
	.byte	0x29
	.byte	0x10
	.byte	0x14
	.uleb128 0x13
	.long	.LASF78
	.byte	0x10
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.long	0x4e8
	.uleb128 0x7
	.long	.LASF79
	.byte	0x1
	.byte	0x9
	.byte	0x8
	.long	0x4e8
	.byte	0
	.uleb128 0x7
	.long	.LASF80
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.long	0x47f
	.byte	0x8
	.uleb128 0x10
	.string	"max"
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	0x4a3
	.uleb128 0xd
	.long	.LASF78
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.long	0x4b3
	.uleb128 0x22
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.long	0x51a
	.uleb128 0x19
	.string	"len"
	.byte	0x2
	.byte	0x4
	.byte	0xd
	.long	0x47f
	.uleb128 0x19
	.string	"top"
	.byte	0x2
	.byte	0x4
	.byte	0x16
	.long	0x47f
	.byte	0
	.uleb128 0x1f
	.string	"Vec"
	.byte	0x18
	.byte	0x2
	.byte	0x1
	.long	0x554
	.uleb128 0x7
	.long	.LASF79
	.byte	0x2
	.byte	0x3
	.byte	0x8
	.long	0x4e8
	.byte	0
	.uleb128 0x23
	.long	0x4f9
	.byte	0x8
	.uleb128 0x10
	.string	"max"
	.byte	0x2
	.byte	0x5
	.byte	0x6
	.long	0x47f
	.byte	0xc
	.uleb128 0x7
	.long	.LASF81
	.byte	0x2
	.byte	0x6
	.byte	0x6
	.long	0x47f
	.byte	0x10
	.byte	0
	.uleb128 0x15
	.string	"Vec"
	.byte	0x2
	.byte	0x7
	.byte	0x3
	.long	0x51a
	.uleb128 0x13
	.long	.LASF82
	.byte	0xc
	.byte	0x3
	.byte	0x1
	.byte	0x10
	.long	0x595
	.uleb128 0x7
	.long	.LASF83
	.byte	0x3
	.byte	0x3
	.byte	0x6
	.long	0x47f
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0x3
	.byte	0x4
	.byte	0x6
	.long	0x47f
	.byte	0x4
	.uleb128 0x7
	.long	.LASF84
	.byte	0x3
	.byte	0x5
	.byte	0x6
	.long	0x47f
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF82
	.byte	0x3
	.byte	0x6
	.byte	0x3
	.long	0x560
	.uleb128 0x1a
	.long	.LASF89
	.long	0x9b
	.byte	0x4
	.byte	0x3
	.long	0x5c9
	.uleb128 0x3
	.long	.LASF85
	.byte	0
	.uleb128 0x3
	.long	.LASF86
	.byte	0x1
	.uleb128 0x3
	.long	.LASF87
	.byte	0x2
	.uleb128 0x3
	.long	.LASF88
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF89
	.byte	0x4
	.byte	0x9
	.byte	0x3
	.long	0x5a1
	.uleb128 0x22
	.byte	0x8
	.byte	0x4
	.byte	0xe
	.long	0x602
	.uleb128 0x19
	.string	"i64"
	.byte	0x4
	.byte	0x10
	.byte	0x7
	.long	0x45c
	.uleb128 0x19
	.string	"f64"
	.byte	0x4
	.byte	0x11
	.byte	0x7
	.long	0x497
	.uleb128 0x19
	.string	"str"
	.byte	0x4
	.byte	0x12
	.byte	0xb
	.long	0x602
	.byte	0
	.uleb128 0xb
	.long	0x595
	.uleb128 0x13
	.long	.LASF90
	.byte	0x10
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.long	0x628
	.uleb128 0x7
	.long	.LASF91
	.byte	0x4
	.byte	0xd
	.byte	0xc
	.long	0x5c9
	.byte	0
	.uleb128 0x23
	.long	0x5d5
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF90
	.byte	0x4
	.byte	0x14
	.byte	0x3
	.long	0x607
	.uleb128 0x13
	.long	.LASF92
	.byte	0x18
	.byte	0x5
	.byte	0x3
	.byte	0x10
	.long	0x676
	.uleb128 0x7
	.long	.LASF79
	.byte	0x5
	.byte	0x5
	.byte	0xa
	.long	0x602
	.byte	0
	.uleb128 0x7
	.long	.LASF93
	.byte	0x5
	.byte	0x6
	.byte	0x9
	.long	0x676
	.byte	0x8
	.uleb128 0x10
	.string	"len"
	.byte	0x5
	.byte	0x7
	.byte	0x6
	.long	0x47f
	.byte	0x10
	.uleb128 0x10
	.string	"max"
	.byte	0x5
	.byte	0x8
	.byte	0x6
	.long	0x47f
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.long	0x4ed
	.uleb128 0xd
	.long	.LASF92
	.byte	0x5
	.byte	0x9
	.byte	0x3
	.long	0x634
	.uleb128 0x22
	.byte	0x8
	.byte	0x6
	.byte	0x3
	.long	0x6a8
	.uleb128 0x19
	.string	"key"
	.byte	0x6
	.byte	0x3
	.byte	0x11
	.long	0x602
	.uleb128 0x34
	.long	.LASF94
	.byte	0x6
	.byte	0x3
	.byte	0x1e
	.long	0x602
	.byte	0
	.uleb128 0x13
	.long	.LASF95
	.byte	0x18
	.byte	0x6
	.byte	0x1
	.byte	0x10
	.long	0x6c9
	.uleb128 0x23
	.long	0x687
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0x6
	.byte	0x4
	.byte	0x8
	.long	0x628
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF95
	.byte	0x6
	.byte	0x5
	.byte	0x3
	.long	0x6a8
	.uleb128 0x15
	.string	"Var"
	.byte	0x6
	.byte	0x6
	.byte	0xf
	.long	0x6c9
	.uleb128 0x1f
	.string	"Map"
	.byte	0x10
	.byte	0x6
	.byte	0x8
	.long	0x715
	.uleb128 0x7
	.long	.LASF79
	.byte	0x6
	.byte	0xa
	.byte	0x9
	.long	0x715
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0x6
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.byte	0x8
	.uleb128 0x10
	.string	"max"
	.byte	0x6
	.byte	0xc
	.byte	0x6
	.long	0x47f
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	0x6c9
	.uleb128 0x15
	.string	"Map"
	.byte	0x6
	.byte	0xd
	.byte	0x3
	.long	0x6e1
	.uleb128 0x13
	.long	.LASF97
	.byte	0x8
	.byte	0x7
	.byte	0x1
	.byte	0x10
	.long	0x74e
	.uleb128 0x10
	.string	"off"
	.byte	0x7
	.byte	0x3
	.byte	0x6
	.long	0x47f
	.byte	0
	.uleb128 0x10
	.string	"idx"
	.byte	0x7
	.byte	0x4
	.byte	0x6
	.long	0x47f
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF97
	.byte	0x7
	.byte	0x5
	.byte	0x3
	.long	0x726
	.uleb128 0x1f
	.string	"Env"
	.byte	0x10
	.byte	0x7
	.byte	0x7
	.long	0x78e
	.uleb128 0x7
	.long	.LASF79
	.byte	0x7
	.byte	0x9
	.byte	0x8
	.long	0x78e
	.byte	0
	.uleb128 0x10
	.string	"len"
	.byte	0x7
	.byte	0xa
	.byte	0x6
	.long	0x47f
	.byte	0x8
	.uleb128 0x10
	.string	"max"
	.byte	0x7
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.long	0x74e
	.uleb128 0x15
	.string	"Env"
	.byte	0x7
	.byte	0xc
	.byte	0x3
	.long	0x75a
	.uleb128 0x1a
	.long	.LASF98
	.long	0x9b
	.byte	0x2a
	.byte	0x1
	.long	0x911
	.uleb128 0x3
	.long	.LASF99
	.byte	0
	.uleb128 0x3
	.long	.LASF100
	.byte	0x1
	.uleb128 0x3
	.long	.LASF101
	.byte	0x2
	.uleb128 0x3
	.long	.LASF102
	.byte	0x3
	.uleb128 0x3
	.long	.LASF103
	.byte	0x4
	.uleb128 0x3
	.long	.LASF104
	.byte	0x5
	.uleb128 0x3
	.long	.LASF105
	.byte	0x6
	.uleb128 0x3
	.long	.LASF106
	.byte	0x7
	.uleb128 0x3
	.long	.LASF107
	.byte	0x8
	.uleb128 0x3
	.long	.LASF108
	.byte	0x9
	.uleb128 0x3
	.long	.LASF109
	.byte	0xa
	.uleb128 0x3
	.long	.LASF110
	.byte	0xb
	.uleb128 0x3
	.long	.LASF111
	.byte	0xc
	.uleb128 0x3
	.long	.LASF112
	.byte	0xd
	.uleb128 0x3
	.long	.LASF113
	.byte	0xe
	.uleb128 0x3
	.long	.LASF114
	.byte	0xf
	.uleb128 0x3
	.long	.LASF115
	.byte	0x10
	.uleb128 0x3
	.long	.LASF116
	.byte	0x11
	.uleb128 0x3
	.long	.LASF117
	.byte	0x12
	.uleb128 0x3
	.long	.LASF118
	.byte	0x13
	.uleb128 0x3
	.long	.LASF119
	.byte	0x14
	.uleb128 0x3
	.long	.LASF120
	.byte	0x15
	.uleb128 0x3
	.long	.LASF121
	.byte	0x16
	.uleb128 0x3
	.long	.LASF122
	.byte	0x17
	.uleb128 0x3
	.long	.LASF123
	.byte	0x18
	.uleb128 0x3
	.long	.LASF124
	.byte	0x19
	.uleb128 0x3
	.long	.LASF125
	.byte	0x1a
	.uleb128 0x3
	.long	.LASF126
	.byte	0x1b
	.uleb128 0x3
	.long	.LASF127
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF128
	.byte	0x1d
	.uleb128 0x3
	.long	.LASF129
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF130
	.byte	0x1f
	.uleb128 0x3
	.long	.LASF131
	.byte	0x20
	.uleb128 0x3
	.long	.LASF132
	.byte	0x21
	.uleb128 0x3
	.long	.LASF133
	.byte	0x22
	.uleb128 0x3
	.long	.LASF134
	.byte	0x23
	.uleb128 0x3
	.long	.LASF135
	.byte	0x24
	.uleb128 0x3
	.long	.LASF136
	.byte	0x25
	.uleb128 0x3
	.long	.LASF137
	.byte	0x26
	.uleb128 0x3
	.long	.LASF138
	.byte	0x27
	.uleb128 0x3
	.long	.LASF139
	.byte	0x28
	.uleb128 0x3
	.long	.LASF140
	.byte	0x29
	.uleb128 0x3
	.long	.LASF141
	.byte	0x2a
	.uleb128 0x3
	.long	.LASF142
	.byte	0x2b
	.uleb128 0x3
	.long	.LASF143
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF144
	.byte	0x2d
	.uleb128 0x3
	.long	.LASF145
	.byte	0x2e
	.uleb128 0x3
	.long	.LASF146
	.byte	0x2f
	.uleb128 0x3
	.long	.LASF147
	.byte	0x30
	.uleb128 0x3
	.long	.LASF148
	.byte	0x31
	.uleb128 0x3
	.long	.LASF149
	.byte	0x32
	.uleb128 0x3
	.long	.LASF150
	.byte	0x33
	.uleb128 0x3
	.long	.LASF151
	.byte	0x34
	.uleb128 0x3
	.long	.LASF152
	.byte	0x35
	.uleb128 0x3
	.long	.LASF153
	.byte	0x36
	.uleb128 0x3
	.long	.LASF154
	.byte	0x37
	.uleb128 0x3
	.long	.LASF155
	.byte	0x38
	.uleb128 0x3
	.long	.LASF156
	.byte	0x39
	.uleb128 0x3
	.long	.LASF157
	.byte	0x3a
	.byte	0
	.uleb128 0xd
	.long	.LASF98
	.byte	0x2a
	.byte	0x52
	.byte	0x3
	.long	0x79f
	.uleb128 0x13
	.long	.LASF158
	.byte	0x18
	.byte	0xa
	.byte	0x1
	.byte	0x10
	.long	0x945
	.uleb128 0x7
	.long	.LASF91
	.byte	0xa
	.byte	0x3
	.byte	0xc
	.long	0x911
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0xa
	.byte	0x4
	.byte	0x8
	.long	0x628
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF158
	.byte	0xa
	.byte	0x5
	.byte	0x3
	.long	0x91d
	.uleb128 0x13
	.long	.LASF159
	.byte	0x20
	.byte	0xa
	.byte	0x7
	.byte	0x10
	.long	0x9a0
	.uleb128 0x7
	.long	.LASF160
	.byte	0xa
	.byte	0x9
	.byte	0x6
	.long	0x9a0
	.byte	0
	.uleb128 0x10
	.string	"end"
	.byte	0xa
	.byte	0xa
	.byte	0x6
	.long	0x9a0
	.byte	0x8
	.uleb128 0x7
	.long	.LASF161
	.byte	0xa
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.byte	0x10
	.uleb128 0x10
	.string	"col"
	.byte	0xa
	.byte	0xc
	.byte	0x6
	.long	0x47f
	.byte	0x14
	.uleb128 0x7
	.long	.LASF162
	.byte	0xa
	.byte	0xd
	.byte	0x9
	.long	0x9a5
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.long	0x445
	.uleb128 0xb
	.long	0x67b
	.uleb128 0xd
	.long	.LASF159
	.byte	0xa
	.byte	0xe
	.byte	0x3
	.long	0x951
	.uleb128 0x1a
	.long	.LASF163
	.long	0x9b
	.byte	0x2b
	.byte	0x1
	.long	0xa68
	.uleb128 0x3
	.long	.LASF164
	.byte	0
	.uleb128 0x3
	.long	.LASF165
	.byte	0x1
	.uleb128 0x3
	.long	.LASF166
	.byte	0x2
	.uleb128 0x3
	.long	.LASF167
	.byte	0x3
	.uleb128 0x3
	.long	.LASF168
	.byte	0x4
	.uleb128 0x3
	.long	.LASF169
	.byte	0x5
	.uleb128 0x3
	.long	.LASF170
	.byte	0x6
	.uleb128 0x3
	.long	.LASF171
	.byte	0x7
	.uleb128 0x3
	.long	.LASF172
	.byte	0x8
	.uleb128 0x3
	.long	.LASF173
	.byte	0x9
	.uleb128 0x3
	.long	.LASF174
	.byte	0xa
	.uleb128 0x3
	.long	.LASF175
	.byte	0xb
	.uleb128 0x3
	.long	.LASF176
	.byte	0xc
	.uleb128 0x3
	.long	.LASF177
	.byte	0xd
	.uleb128 0x3
	.long	.LASF178
	.byte	0xe
	.uleb128 0x3
	.long	.LASF179
	.byte	0xf
	.uleb128 0x3
	.long	.LASF180
	.byte	0x10
	.uleb128 0x3
	.long	.LASF181
	.byte	0x11
	.uleb128 0x3
	.long	.LASF182
	.byte	0x12
	.uleb128 0x3
	.long	.LASF183
	.byte	0x13
	.uleb128 0x3
	.long	.LASF184
	.byte	0x14
	.uleb128 0x3
	.long	.LASF185
	.byte	0x15
	.uleb128 0x3
	.long	.LASF186
	.byte	0x16
	.uleb128 0x3
	.long	.LASF187
	.byte	0x17
	.uleb128 0x3
	.long	.LASF188
	.byte	0x18
	.uleb128 0x3
	.long	.LASF189
	.byte	0x19
	.uleb128 0x3
	.long	.LASF190
	.byte	0x1a
	.byte	0
	.uleb128 0xd
	.long	.LASF163
	.byte	0x2b
	.byte	0x1e
	.byte	0x3
	.long	0x9b6
	.uleb128 0x1a
	.long	.LASF191
	.long	0x9b
	.byte	0x2c
	.byte	0x1
	.long	0xa9c
	.uleb128 0x3
	.long	.LASF192
	.byte	0
	.uleb128 0x3
	.long	.LASF193
	.byte	0x1
	.uleb128 0x3
	.long	.LASF194
	.byte	0x2
	.uleb128 0x3
	.long	.LASF195
	.byte	0x3
	.byte	0
	.uleb128 0xd
	.long	.LASF191
	.byte	0x2c
	.byte	0x7
	.byte	0x3
	.long	0xa74
	.uleb128 0x13
	.long	.LASF196
	.byte	0x18
	.byte	0xc
	.byte	0x1
	.byte	0x10
	.long	0xad0
	.uleb128 0x7
	.long	.LASF91
	.byte	0xc
	.byte	0x3
	.byte	0xc
	.long	0xa9c
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0xc
	.byte	0x4
	.byte	0x8
	.long	0x628
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	.LASF196
	.byte	0xc
	.byte	0x5
	.byte	0x3
	.long	0xaa8
	.uleb128 0x13
	.long	.LASF197
	.byte	0x18
	.byte	0xc
	.byte	0x7
	.byte	0x10
	.long	0xb11
	.uleb128 0x10
	.string	"nud"
	.byte	0xc
	.byte	0x9
	.byte	0x9
	.long	0xb11
	.byte	0
	.uleb128 0x10
	.string	"led"
	.byte	0xc
	.byte	0xa
	.byte	0x9
	.long	0xb11
	.byte	0x8
	.uleb128 0x7
	.long	.LASF198
	.byte	0xc
	.byte	0xb
	.byte	0x7
	.long	0xa68
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.long	0x4ab
	.uleb128 0xd
	.long	.LASF197
	.byte	0xc
	.byte	0xc
	.byte	0x3
	.long	0xadc
	.uleb128 0x13
	.long	.LASF199
	.byte	0x18
	.byte	0xc
	.byte	0xe
	.byte	0x10
	.long	0xb3d
	.uleb128 0x7
	.long	.LASF200
	.byte	0xc
	.byte	0x10
	.byte	0x8
	.long	0x945
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	.LASF199
	.byte	0xc
	.byte	0x11
	.byte	0x3
	.long	0xb22
	.uleb128 0x1a
	.long	.LASF201
	.long	0x9b
	.byte	0x2d
	.byte	0x1
	.long	0xc43
	.uleb128 0x3
	.long	.LASF202
	.byte	0
	.uleb128 0x3
	.long	.LASF203
	.byte	0x1
	.uleb128 0x3
	.long	.LASF204
	.byte	0x2
	.uleb128 0x3
	.long	.LASF205
	.byte	0x3
	.uleb128 0x3
	.long	.LASF206
	.byte	0x4
	.uleb128 0x3
	.long	.LASF207
	.byte	0x5
	.uleb128 0x3
	.long	.LASF208
	.byte	0x6
	.uleb128 0x3
	.long	.LASF209
	.byte	0x7
	.uleb128 0x3
	.long	.LASF210
	.byte	0x8
	.uleb128 0x3
	.long	.LASF211
	.byte	0x9
	.uleb128 0x3
	.long	.LASF212
	.byte	0xa
	.uleb128 0x3
	.long	.LASF213
	.byte	0xb
	.uleb128 0x3
	.long	.LASF214
	.byte	0xc
	.uleb128 0x3
	.long	.LASF215
	.byte	0xd
	.uleb128 0x3
	.long	.LASF216
	.byte	0xe
	.uleb128 0x3
	.long	.LASF217
	.byte	0xf
	.uleb128 0x3
	.long	.LASF218
	.byte	0x10
	.uleb128 0x3
	.long	.LASF219
	.byte	0x11
	.uleb128 0x3
	.long	.LASF220
	.byte	0x12
	.uleb128 0x3
	.long	.LASF221
	.byte	0x13
	.uleb128 0x3
	.long	.LASF222
	.byte	0x14
	.uleb128 0x3
	.long	.LASF223
	.byte	0x15
	.uleb128 0x3
	.long	.LASF224
	.byte	0x16
	.uleb128 0x3
	.long	.LASF225
	.byte	0x17
	.uleb128 0x3
	.long	.LASF226
	.byte	0x18
	.uleb128 0x3
	.long	.LASF227
	.byte	0x19
	.uleb128 0x3
	.long	.LASF228
	.byte	0x1a
	.uleb128 0x3
	.long	.LASF229
	.byte	0x1b
	.uleb128 0x3
	.long	.LASF230
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF231
	.byte	0x1d
	.uleb128 0x3
	.long	.LASF232
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF233
	.byte	0x1f
	.uleb128 0x3
	.long	.LASF234
	.byte	0x20
	.uleb128 0x3
	.long	.LASF235
	.byte	0x21
	.uleb128 0x3
	.long	.LASF236
	.byte	0x22
	.uleb128 0x3
	.long	.LASF237
	.byte	0x23
	.uleb128 0x3
	.long	.LASF238
	.byte	0x24
	.uleb128 0x3
	.long	.LASF239
	.byte	0x25
	.uleb128 0x3
	.long	.LASF240
	.byte	0x26
	.byte	0
	.uleb128 0xd
	.long	.LASF201
	.byte	0x2d
	.byte	0x30
	.byte	0x3
	.long	0xb49
	.uleb128 0x1a
	.long	.LASF241
	.long	0x9b
	.byte	0xf
	.byte	0x1
	.long	0xc77
	.uleb128 0x3
	.long	.LASF242
	.byte	0
	.uleb128 0x3
	.long	.LASF243
	.byte	0x1
	.uleb128 0x3
	.long	.LASF244
	.byte	0x2
	.uleb128 0x3
	.long	.LASF245
	.byte	0x3
	.byte	0
	.uleb128 0x1f
	.string	"Op"
	.byte	0x4
	.byte	0xf
	.byte	0x9
	.long	0xcc5
	.uleb128 0x10
	.string	"OP"
	.byte	0xf
	.byte	0xb
	.byte	0x5
	.long	0x468
	.byte	0
	.uleb128 0x10
	.string	"D"
	.byte	0xf
	.byte	0xc
	.byte	0x5
	.long	0x468
	.byte	0x1
	.uleb128 0x10
	.string	"S"
	.byte	0xf
	.byte	0xd
	.byte	0x5
	.long	0x468
	.byte	0x2
	.uleb128 0x24
	.string	"M"
	.byte	0xf
	.long	0x468
	.byte	0x2
	.byte	0x18
	.uleb128 0x24
	.string	"DT"
	.byte	0x10
	.long	0x468
	.byte	0x3
	.byte	0x1a
	.uleb128 0x24
	.string	"ST"
	.byte	0x11
	.long	0x468
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x15
	.string	"Op"
	.byte	0xf
	.byte	0x12
	.byte	0x3
	.long	0xc77
	.uleb128 0x13
	.long	.LASF246
	.byte	0x10
	.byte	0xf
	.byte	0x14
	.byte	0x10
	.long	0xd2c
	.uleb128 0x7
	.long	.LASF247
	.byte	0xf
	.byte	0x17
	.byte	0x6
	.long	0x47f
	.byte	0
	.uleb128 0x7
	.long	.LASF248
	.byte	0xf
	.byte	0x18
	.byte	0x6
	.long	0x47f
	.byte	0x4
	.uleb128 0x7
	.long	.LASF249
	.byte	0xf
	.byte	0x19
	.byte	0x6
	.long	0x47f
	.byte	0x8
	.uleb128 0x7
	.long	.LASF250
	.byte	0xf
	.byte	0x1b
	.byte	0x5
	.long	0x468
	.byte	0xc
	.uleb128 0x7
	.long	.LASF251
	.byte	0xf
	.byte	0x1c
	.byte	0x5
	.long	0x468
	.byte	0xd
	.uleb128 0x7
	.long	.LASF252
	.byte	0xf
	.byte	0x1d
	.byte	0x6
	.long	0x473
	.byte	0xe
	.byte	0
	.uleb128 0xd
	.long	.LASF246
	.byte	0xf
	.byte	0x1f
	.byte	0x3
	.long	0xcd0
	.uleb128 0x13
	.long	.LASF253
	.byte	0x10
	.byte	0xf
	.byte	0x21
	.byte	0x10
	.long	0xd5f
	.uleb128 0x10
	.string	"fn"
	.byte	0xf
	.byte	0x23
	.byte	0x8
	.long	0xd5f
	.byte	0
	.uleb128 0x7
	.long	.LASF254
	.byte	0xf
	.byte	0x24
	.byte	0x5
	.long	0x468
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.long	0xd2c
	.uleb128 0xd
	.long	.LASF253
	.byte	0xf
	.byte	0x25
	.byte	0x3
	.long	0xd38
	.uleb128 0x1c
	.long	.LASF255
	.byte	0x22
	.byte	0xb8
	.byte	0xc
	.long	0xdd
	.long	0xd86
	.uleb128 0xa
	.long	0x31e
	.byte	0
	.uleb128 0x18
	.long	.LASF256
	.byte	0x22
	.value	0x2e2
	.byte	0xf
	.long	0x2e
	.long	0xdac
	.uleb128 0xa
	.long	0xa4
	.uleb128 0xa
	.long	0x2e
	.uleb128 0xa
	.long	0x2e
	.uleb128 0xa
	.long	0x323
	.byte	0
	.uleb128 0x18
	.long	.LASF257
	.byte	0x22
	.value	0x311
	.byte	0x11
	.long	0xf0
	.long	0xdc3
	.uleb128 0xa
	.long	0x31e
	.byte	0
	.uleb128 0x18
	.long	.LASF258
	.byte	0x22
	.value	0x30b
	.byte	0xc
	.long	0xdd
	.long	0xde4
	.uleb128 0xa
	.long	0x31e
	.uleb128 0xa
	.long	0xf0
	.uleb128 0xa
	.long	0xdd
	.byte	0
	.uleb128 0x18
	.long	.LASF259
	.byte	0x22
	.value	0x108
	.byte	0xe
	.long	0x31e
	.long	0xe00
	.uleb128 0xa
	.long	0xe05
	.uleb128 0xa
	.long	0xe05
	.byte	0
	.uleb128 0xb
	.long	0x12c
	.uleb128 0x1b
	.long	0xe00
	.uleb128 0x27
	.long	.LASF264
	.byte	0x27
	.byte	0x5d
	.byte	0x17
	.long	.LASF266
	.long	0x3eb
	.long	0xe29
	.uleb128 0xa
	.long	0xdd
	.uleb128 0xa
	.long	0x3eb
	.byte	0
	.uleb128 0x18
	.long	.LASF260
	.byte	0x22
	.value	0x28e
	.byte	0xe
	.long	0x11b
	.long	0xe4a
	.uleb128 0xa
	.long	0x120
	.uleb128 0xa
	.long	0xdd
	.uleb128 0xa
	.long	0x323
	.byte	0
	.uleb128 0x1c
	.long	.LASF261
	.byte	0x26
	.byte	0x2d
	.byte	0xc
	.long	0xdd
	.long	0xe60
	.uleb128 0xa
	.long	0xe60
	.byte	0
	.uleb128 0xb
	.long	0x39a
	.uleb128 0x35
	.string	"pow"
	.byte	0x3b
	.byte	0x8c
	.byte	0x1
	.long	0x43e
	.long	0xe80
	.uleb128 0xa
	.long	0x43e
	.uleb128 0xa
	.long	0x43e
	.byte	0
	.uleb128 0x18
	.long	.LASF262
	.byte	0x22
	.value	0x16b
	.byte	0xc
	.long	0xdd
	.long	0xe98
	.uleb128 0xa
	.long	0xe00
	.uleb128 0x28
	.byte	0
	.uleb128 0x1c
	.long	.LASF263
	.byte	0x2e
	.byte	0x76
	.byte	0xf
	.long	0x43e
	.long	0xeb3
	.uleb128 0xa
	.long	0xe05
	.uleb128 0xa
	.long	0xeb8
	.byte	0
	.uleb128 0xb
	.long	0x11b
	.uleb128 0x1b
	.long	0xeb3
	.uleb128 0x27
	.long	.LASF265
	.byte	0x2e
	.byte	0xee
	.byte	0x16
	.long	.LASF267
	.long	0x332
	.long	0xee1
	.uleb128 0xa
	.long	0xe05
	.uleb128 0xa
	.long	0xeb8
	.uleb128 0xa
	.long	0xdd
	.byte	0
	.uleb128 0x36
	.long	.LASF268
	.byte	0x26
	.byte	0x36
	.byte	0xd
	.long	0xef8
	.uleb128 0xa
	.long	0xe60
	.uleb128 0xa
	.long	0xdd
	.byte	0
	.uleb128 0x18
	.long	.LASF269
	.byte	0x22
	.value	0x174
	.byte	0xc
	.long	0xdd
	.long	0xf19
	.uleb128 0xa
	.long	0x323
	.uleb128 0xa
	.long	0xe05
	.uleb128 0xa
	.long	0xf19
	.byte	0
	.uleb128 0xb
	.long	0x66
	.uleb128 0x37
	.long	.LASF556
	.byte	0x2e
	.value	0x2af
	.byte	0xd
	.long	0xf31
	.uleb128 0xa
	.long	0xa2
	.byte	0
	.uleb128 0x1c
	.long	.LASF270
	.byte	0x2f
	.byte	0x40
	.byte	0xc
	.long	0xdd
	.long	0xf51
	.uleb128 0xa
	.long	0x339
	.uleb128 0xa
	.long	0x339
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0x18
	.long	.LASF271
	.byte	0x2e
	.value	0x2a3
	.byte	0xe
	.long	0xa2
	.long	0xf6d
	.uleb128 0xa
	.long	0x2e
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0x1c
	.long	.LASF272
	.byte	0x2f
	.byte	0x2b
	.byte	0xe
	.long	0xa2
	.long	0xf8d
	.uleb128 0xa
	.long	0xa2
	.uleb128 0xa
	.long	0x339
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0x18
	.long	.LASF273
	.byte	0x2e
	.value	0x2ab
	.byte	0xe
	.long	0xa2
	.long	0xfa9
	.uleb128 0xa
	.long	0xa2
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0x18
	.long	.LASF274
	.byte	0x2e
	.value	0x2a0
	.byte	0xe
	.long	0xa2
	.long	0xfc0
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0xe
	.long	.LASF284
	.byte	0x1b
	.byte	0x33
	.byte	0x5
	.long	0x450
	.quad	.LFB185
	.quad	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.long	0x1010
	.uleb128 0x4
	.long	.LASF275
	.byte	0x1b
	.byte	0x33
	.byte	0xf
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.long	.LASF276
	.byte	0x1b
	.byte	0x33
	.byte	0x1b
	.long	0x1010
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"res"
	.byte	0x1b
	.byte	0x35
	.byte	0x6
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xb
	.long	0x9a0
	.uleb128 0x8
	.long	.LASF277
	.byte	0x1b
	.byte	0x2d
	.byte	0xa
	.long	0x450
	.quad	.LFB184
	.quad	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.long	0x1047
	.uleb128 0x1
	.string	"err"
	.byte	0x1b
	.byte	0x2d
	.byte	0x16
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF278
	.byte	0x1b
	.byte	0x25
	.byte	0xa
	.long	0x450
	.quad	.LFB183
	.quad	.LFE183-.LFB183
	.uleb128 0x1
	.byte	0x9c
	.long	0x1079
	.uleb128 0x4
	.long	.LASF279
	.byte	0x1b
	.byte	0x25
	.byte	0x14
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF280
	.byte	0x1b
	.byte	0x17
	.byte	0xa
	.long	0x450
	.quad	.LFB182
	.quad	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.long	0x10ba
	.uleb128 0x6
	.string	"src"
	.byte	0x1b
	.byte	0x1a
	.byte	0x9
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF161
	.byte	0x1b
	.byte	0x1b
	.byte	0x6
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x38
	.string	"Run"
	.byte	0x1b
	.byte	0x11
	.byte	0xb
	.quad	.LFB181
	.quad	.LFE181-.LFB181
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x39
	.long	.LASF281
	.byte	0x1b
	.byte	0x6
	.byte	0xb
	.quad	.LFB180
	.quad	.LFE180-.LFB180
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF477
	.byte	0x1b
	.byte	0x1
	.quad	.LFB179
	.quad	.LFE179-.LFB179
	.uleb128 0x1
	.byte	0x9c
	.long	0x111b
	.uleb128 0x1
	.string	"sig"
	.byte	0x1b
	.byte	0x1
	.byte	0x16
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.long	.LASF282
	.byte	0xe
	.quad	.LFB178
	.quad	.LFE178-.LFB178
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x29
	.long	.LASF283
	.byte	0x1
	.quad	.LFB177
	.quad	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF285
	.byte	0x16
	.byte	0x45
	.byte	0xb
	.long	0xad0
	.quad	.LFB176
	.quad	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.long	0x125e
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x45
	.byte	0x22
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF286
	.byte	0x16
	.byte	0x45
	.byte	0x31
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x45
	.byte	0x48
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"irs"
	.byte	0x30
	.byte	0x1
	.byte	0xf
	.long	0x1263
	.uleb128 0x9
	.byte	0x3
	.quad	irs.2
	.uleb128 0x9
	.long	.LASF287
	.byte	0x19
	.byte	0x1
	.byte	0x1
	.quad	.L793
	.uleb128 0x9
	.long	.LASF288
	.byte	0x19
	.byte	0x2
	.byte	0x1
	.quad	.L795
	.uleb128 0x9
	.long	.LASF289
	.byte	0x19
	.byte	0x3
	.byte	0x1
	.quad	.L796
	.uleb128 0x9
	.long	.LASF290
	.byte	0x19
	.byte	0x4
	.byte	0x1
	.quad	.L797
	.uleb128 0x9
	.long	.LASF291
	.byte	0x19
	.byte	0x5
	.byte	0x1
	.quad	.L798
	.uleb128 0x9
	.long	.LASF292
	.byte	0x19
	.byte	0x6
	.byte	0x1
	.quad	.L799
	.uleb128 0x9
	.long	.LASF293
	.byte	0x19
	.byte	0x7
	.byte	0x1
	.quad	.L800
	.uleb128 0x9
	.long	.LASF294
	.byte	0x19
	.byte	0x8
	.byte	0x1
	.quad	.L801
	.uleb128 0x9
	.long	.LASF295
	.byte	0x19
	.byte	0x9
	.byte	0x1
	.quad	.L802
	.uleb128 0x6
	.string	"op"
	.byte	0x16
	.byte	0x48
	.byte	0x9
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF296
	.byte	0x16
	.byte	0x49
	.byte	0xc
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.long	0xad0
	.uleb128 0x14
	.long	0xb11
	.long	0x1279
	.uleb128 0x12
	.long	0x3a
	.byte	0x2
	.uleb128 0x12
	.long	0x3a
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	.LASF297
	.byte	0x16
	.byte	0x40
	.byte	0xb
	.long	0xad0
	.quad	.LFB175
	.quad	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.long	0x12ca
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x40
	.byte	0x23
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0x40
	.byte	0x2f
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x40
	.byte	0x3e
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF298
	.byte	0x16
	.byte	0x3b
	.byte	0xb
	.long	0xad0
	.quad	.LFB174
	.quad	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.long	0x131b
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x3b
	.byte	0x22
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0x3b
	.byte	0x2e
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x3b
	.byte	0x3d
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF299
	.byte	0x16
	.byte	0x36
	.byte	0xb
	.long	0xad0
	.quad	.LFB173
	.quad	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.long	0x136c
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x36
	.byte	0x24
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0x36
	.byte	0x30
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x36
	.byte	0x3f
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF300
	.byte	0x16
	.byte	0x31
	.byte	0xb
	.long	0xad0
	.quad	.LFB172
	.quad	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.long	0x13bd
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x31
	.byte	0x22
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0x31
	.byte	0x2e
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x31
	.byte	0x3d
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF301
	.byte	0x16
	.byte	0x2c
	.byte	0xb
	.long	0xad0
	.quad	.LFB171
	.quad	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.long	0x140e
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x2c
	.byte	0x21
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0x2c
	.byte	0x2d
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x2c
	.byte	0x3c
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF302
	.byte	0x16
	.byte	0x27
	.byte	0xb
	.long	0xad0
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.long	0x145f
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x27
	.byte	0x23
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0x27
	.byte	0x2f
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x27
	.byte	0x3e
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF303
	.byte	0x16
	.byte	0x22
	.byte	0xb
	.long	0xad0
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.long	0x14b0
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x22
	.byte	0x24
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0x22
	.byte	0x30
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x22
	.byte	0x3f
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF304
	.byte	0x16
	.byte	0x1d
	.byte	0xb
	.long	0xad0
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.long	0x1501
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x1d
	.byte	0x23
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0x1d
	.byte	0x2f
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x1d
	.byte	0x3e
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xe
	.long	.LASF305
	.byte	0x16
	.byte	0x16
	.byte	0xb
	.long	0xad0
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.long	0x1561
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x16
	.byte	0x25
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0x16
	.byte	0x31
	.long	0xc43
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x16
	.byte	0x40
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF306
	.byte	0x16
	.byte	0x18
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF307
	.byte	0x16
	.byte	0xf
	.byte	0x7
	.long	0x628
	.quad	.LFB166
	.quad	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.long	0x17c1
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0xf
	.byte	0x1b
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"op"
	.byte	0x16
	.byte	0xf
	.byte	0x27
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0xf
	.byte	0x36
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"ops"
	.byte	0x31
	.byte	0x1
	.byte	0xf
	.long	0x17c1
	.uleb128 0x9
	.byte	0x3
	.quad	ops.23
	.uleb128 0x2
	.string	"ERR"
	.byte	0x18
	.byte	0x1
	.byte	0x1
	.quad	.L740
	.uleb128 0x2
	.string	"ADD"
	.byte	0x18
	.byte	0x2
	.byte	0x1
	.quad	.L742
	.uleb128 0x2
	.string	"SUB"
	.byte	0x18
	.byte	0x3
	.byte	0x1
	.quad	.L743
	.uleb128 0x2
	.string	"MUL"
	.byte	0x18
	.byte	0x4
	.byte	0x1
	.quad	.L744
	.uleb128 0x2
	.string	"DIV"
	.byte	0x18
	.byte	0x5
	.byte	0x1
	.quad	.L745
	.uleb128 0x2
	.string	"MOD"
	.byte	0x18
	.byte	0x6
	.byte	0x1
	.quad	.L746
	.uleb128 0x2
	.string	"POW"
	.byte	0x18
	.byte	0x7
	.byte	0x1
	.quad	.L747
	.uleb128 0x9
	.long	.LASF308
	.byte	0x18
	.byte	0x8
	.byte	0x1
	.quad	.L748
	.uleb128 0x2
	.string	"BOR"
	.byte	0x18
	.byte	0x9
	.byte	0x1
	.quad	.L749
	.uleb128 0x9
	.long	.LASF309
	.byte	0x18
	.byte	0xa
	.byte	0x1
	.quad	.L750
	.uleb128 0x2
	.string	"LSH"
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.quad	.L751
	.uleb128 0x2
	.string	"RSH"
	.byte	0x18
	.byte	0xc
	.byte	0x1
	.quad	.L752
	.uleb128 0x9
	.long	.LASF310
	.byte	0x18
	.byte	0xd
	.byte	0x1
	.quad	.L753
	.uleb128 0x2
	.string	"NEQ"
	.byte	0x18
	.byte	0xe
	.byte	0x1
	.quad	.L754
	.uleb128 0x2
	.string	"LT"
	.byte	0x18
	.byte	0xf
	.byte	0x1
	.quad	.L755
	.uleb128 0x2
	.string	"LE"
	.byte	0x18
	.byte	0x10
	.byte	0x1
	.quad	.L756
	.uleb128 0x2
	.string	"GT"
	.byte	0x18
	.byte	0x11
	.byte	0x1
	.quad	.L757
	.uleb128 0x2
	.string	"GE"
	.byte	0x18
	.byte	0x12
	.byte	0x1
	.quad	.L758
	.uleb128 0x2
	.string	"AND"
	.byte	0x18
	.byte	0x13
	.byte	0x1
	.quad	.L759
	.uleb128 0x2
	.string	"OR"
	.byte	0x18
	.byte	0x14
	.byte	0x1
	.quad	.L760
	.uleb128 0x2
	.string	"MOV"
	.byte	0x18
	.byte	0x15
	.byte	0x1
	.quad	.L761
	.uleb128 0x9
	.long	.LASF311
	.byte	0x18
	.byte	0x16
	.byte	0x1
	.quad	.L762
	.uleb128 0x9
	.long	.LASF312
	.byte	0x18
	.byte	0x17
	.byte	0x1
	.quad	.L763
	.uleb128 0x9
	.long	.LASF313
	.byte	0x18
	.byte	0x18
	.byte	0x1
	.quad	.L764
	.uleb128 0x9
	.long	.LASF314
	.byte	0x18
	.byte	0x19
	.byte	0x1
	.quad	.L765
	.uleb128 0x9
	.long	.LASF315
	.byte	0x18
	.byte	0x1a
	.byte	0x1
	.quad	.L766
	.uleb128 0x9
	.long	.LASF316
	.byte	0x18
	.byte	0x1b
	.byte	0x1
	.quad	.L767
	.uleb128 0x9
	.long	.LASF317
	.byte	0x18
	.byte	0x1c
	.byte	0x1
	.quad	.L768
	.uleb128 0x9
	.long	.LASF318
	.byte	0x18
	.byte	0x1d
	.byte	0x1
	.quad	.L769
	.uleb128 0x9
	.long	.LASF319
	.byte	0x18
	.byte	0x1e
	.byte	0x1
	.quad	.L770
	.uleb128 0x9
	.long	.LASF320
	.byte	0x18
	.byte	0x1f
	.byte	0x1
	.quad	.L771
	.uleb128 0x9
	.long	.LASF321
	.byte	0x18
	.byte	0x20
	.byte	0x1
	.quad	.L772
	.byte	0
	.uleb128 0x14
	.long	0xb11
	.long	0x17d1
	.uleb128 0x12
	.long	0x3a
	.byte	0x25
	.byte	0
	.uleb128 0x25
	.long	.LASF405
	.byte	0x16
	.byte	0x7
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.long	0x18b3
	.uleb128 0x4
	.long	.LASF306
	.byte	0x16
	.byte	0x7
	.byte	0x1a
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF296
	.byte	0x16
	.byte	0x7
	.byte	0x2a
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF322
	.byte	0x32
	.byte	0x1
	.byte	0xf
	.long	0x1263
	.uleb128 0x9
	.byte	0x3
	.quad	types.24
	.uleb128 0x9
	.long	.LASF323
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.quad	.L728
	.uleb128 0x9
	.long	.LASF324
	.byte	0x17
	.byte	0x2
	.byte	0x1
	.quad	.L730
	.uleb128 0x9
	.long	.LASF325
	.byte	0x17
	.byte	0x3
	.byte	0x1
	.quad	.L731
	.uleb128 0x9
	.long	.LASF326
	.byte	0x17
	.byte	0x5
	.byte	0x1
	.quad	.L732
	.uleb128 0x9
	.long	.LASF327
	.byte	0x17
	.byte	0x6
	.byte	0x1
	.quad	.L733
	.uleb128 0x9
	.long	.LASF328
	.byte	0x17
	.byte	0x7
	.byte	0x1
	.quad	.L734
	.uleb128 0x9
	.long	.LASF329
	.byte	0x17
	.byte	0x9
	.byte	0x1
	.quad	.L735
	.uleb128 0x9
	.long	.LASF330
	.byte	0x17
	.byte	0xa
	.byte	0x1
	.quad	.L736
	.uleb128 0x9
	.long	.LASF331
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.quad	.L737
	.byte	0
	.uleb128 0xf
	.long	.LASF332
	.byte	0x16
	.byte	0x1
	.byte	0xb
	.long	0x5c9
	.quad	.LFB164
	.quad	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.long	0x190a
	.uleb128 0x1
	.string	"lhs"
	.byte	0x16
	.byte	0x1
	.byte	0x22
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"rhs"
	.byte	0x16
	.byte	0x1
	.byte	0x32
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF322
	.byte	0x33
	.byte	0x1
	.byte	0x12
	.long	0x190a
	.uleb128 0x9
	.byte	0x3
	.quad	types.25
	.byte	0
	.uleb128 0x14
	.long	0x5c9
	.long	0x1920
	.uleb128 0x12
	.long	0x3a
	.byte	0x2
	.uleb128 0x12
	.long	0x3a
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.long	.LASF333
	.byte	0x15
	.byte	0xed
	.byte	0xc
	.long	0x628
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.long	0x1961
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xed
	.byte	0x1e
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xed
	.byte	0x2a
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	0x628
	.uleb128 0x8
	.long	.LASF334
	.byte	0x15
	.byte	0xe8
	.byte	0xc
	.long	0x628
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.long	0x19a7
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xe8
	.byte	0x1e
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xe8
	.byte	0x2a
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF335
	.byte	0x15
	.byte	0xe3
	.byte	0xc
	.long	0x628
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.long	0x19e8
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xe3
	.byte	0x1f
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xe3
	.byte	0x2b
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF336
	.byte	0x15
	.byte	0xde
	.byte	0xc
	.long	0x628
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a29
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xde
	.byte	0x1e
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xde
	.byte	0x2a
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF337
	.byte	0x15
	.byte	0xd9
	.byte	0xc
	.long	0x628
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a6a
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xd9
	.byte	0x1f
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xd9
	.byte	0x2b
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF338
	.byte	0x15
	.byte	0xd4
	.byte	0xc
	.long	0x628
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aab
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xd4
	.byte	0x1e
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xd4
	.byte	0x2a
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF339
	.byte	0x15
	.byte	0xcf
	.byte	0xc
	.long	0x628
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aec
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xcf
	.byte	0x1e
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xcf
	.byte	0x2a
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF340
	.byte	0x15
	.byte	0xca
	.byte	0xc
	.long	0x628
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b2d
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xca
	.byte	0x1e
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xca
	.byte	0x2a
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF341
	.byte	0x15
	.byte	0xc5
	.byte	0xc
	.long	0x628
	.quad	.LFB155
	.quad	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b6e
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xc5
	.byte	0x1e
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xc5
	.byte	0x2a
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF342
	.byte	0x15
	.byte	0xc0
	.byte	0xc
	.long	0x628
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.long	0x1baf
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xc0
	.byte	0x1e
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xc0
	.byte	0x2a
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF343
	.byte	0x15
	.byte	0xbb
	.byte	0xc
	.long	0x628
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.long	0x1bf0
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xbb
	.byte	0x1e
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xbb
	.byte	0x2a
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.long	.LASF344
	.byte	0x15
	.byte	0xb2
	.byte	0xc
	.long	0x628
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c77
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xb2
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xb2
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0xb4
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.3
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0xb6
	.byte	0x2
	.quad	.L697
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0xb7
	.byte	0x2
	.quad	.L699
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0xb8
	.byte	0x2
	.quad	.L700
	.byte	0
	.uleb128 0x14
	.long	0xb11
	.long	0x1c87
	.uleb128 0x12
	.long	0x3a
	.byte	0x2
	.byte	0
	.uleb128 0xc
	.long	.LASF345
	.byte	0x15
	.byte	0xa9
	.byte	0xc
	.long	0x628
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d0e
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xa9
	.byte	0x1b
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xa9
	.byte	0x27
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0xab
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.4
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0xad
	.byte	0x2
	.quad	.L677
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0xae
	.byte	0x2
	.quad	.L683
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0xaf
	.byte	0x2
	.quad	.L689
	.byte	0
	.uleb128 0xc
	.long	.LASF346
	.byte	0x15
	.byte	0xa0
	.byte	0xc
	.long	0x628
	.quad	.LFB150
	.quad	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d95
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0xa0
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0xa0
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0xa2
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.5
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0xa4
	.byte	0x2
	.quad	.L659
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0xa5
	.byte	0x2
	.quad	.L664
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0xa6
	.byte	0x2
	.quad	.L669
	.byte	0
	.uleb128 0xc
	.long	.LASF347
	.byte	0x15
	.byte	0x97
	.byte	0xc
	.long	0x628
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e1c
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x97
	.byte	0x1b
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x97
	.byte	0x27
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x99
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.6
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x9b
	.byte	0x2
	.quad	.L647
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x9c
	.byte	0x2
	.quad	.L649
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x9d
	.byte	0x2
	.quad	.L653
	.byte	0
	.uleb128 0xc
	.long	.LASF348
	.byte	0x15
	.byte	0x8e
	.byte	0xc
	.long	0x628
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0x1ea3
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x8e
	.byte	0x1b
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x8e
	.byte	0x27
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x90
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.7
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x92
	.byte	0x2
	.quad	.L635
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x93
	.byte	0x2
	.quad	.L637
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x94
	.byte	0x2
	.quad	.L641
	.byte	0
	.uleb128 0xc
	.long	.LASF349
	.byte	0x15
	.byte	0x85
	.byte	0xc
	.long	0x628
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f2a
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x85
	.byte	0x1b
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x85
	.byte	0x27
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x87
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.8
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x89
	.byte	0x2
	.quad	.L623
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x8a
	.byte	0x2
	.quad	.L625
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x8b
	.byte	0x2
	.quad	.L629
	.byte	0
	.uleb128 0xc
	.long	.LASF350
	.byte	0x15
	.byte	0x7c
	.byte	0xc
	.long	0x628
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fb1
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x7c
	.byte	0x1b
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x7c
	.byte	0x27
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x7e
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.9
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x80
	.byte	0x2
	.quad	.L611
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x81
	.byte	0x2
	.quad	.L613
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x82
	.byte	0x2
	.quad	.L617
	.byte	0
	.uleb128 0xc
	.long	.LASF351
	.byte	0x15
	.byte	0x73
	.byte	0xc
	.long	0x628
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x2038
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x73
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x73
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x75
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.10
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x77
	.byte	0x2
	.quad	.L600
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x78
	.byte	0x2
	.quad	.L602
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x79
	.byte	0x2
	.quad	.L606
	.byte	0
	.uleb128 0xc
	.long	.LASF352
	.byte	0x15
	.byte	0x6a
	.byte	0xc
	.long	0x628
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x20bf
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x6a
	.byte	0x1d
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x6a
	.byte	0x29
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x6c
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.11
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x6e
	.byte	0x2
	.quad	.L589
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x6f
	.byte	0x2
	.quad	.L591
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x70
	.byte	0x2
	.quad	.L595
	.byte	0
	.uleb128 0xc
	.long	.LASF353
	.byte	0x15
	.byte	0x61
	.byte	0xc
	.long	0x628
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x2146
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x61
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x61
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x63
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.12
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x65
	.byte	0x2
	.quad	.L582
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x66
	.byte	0x2
	.quad	.L584
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x67
	.byte	0x2
	.quad	.L585
	.byte	0
	.uleb128 0xc
	.long	.LASF354
	.byte	0x15
	.byte	0x58
	.byte	0xc
	.long	0x628
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x21cd
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x58
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x58
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x5a
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.13
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x5c
	.byte	0x2
	.quad	.L575
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x5d
	.byte	0x2
	.quad	.L577
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x5e
	.byte	0x2
	.quad	.L578
	.byte	0
	.uleb128 0xc
	.long	.LASF355
	.byte	0x15
	.byte	0x4f
	.byte	0xc
	.long	0x628
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x2254
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x4f
	.byte	0x1d
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x4f
	.byte	0x29
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x51
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.14
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x53
	.byte	0x2
	.quad	.L568
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x54
	.byte	0x2
	.quad	.L570
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x55
	.byte	0x2
	.quad	.L571
	.byte	0
	.uleb128 0xc
	.long	.LASF356
	.byte	0x15
	.byte	0x46
	.byte	0xc
	.long	0x628
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x22db
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x46
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x46
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x48
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.15
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x4a
	.byte	0x2
	.quad	.L561
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x4b
	.byte	0x2
	.quad	.L563
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x4c
	.byte	0x2
	.quad	.L564
	.byte	0
	.uleb128 0xc
	.long	.LASF357
	.byte	0x15
	.byte	0x3d
	.byte	0xc
	.long	0x628
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x2362
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x3d
	.byte	0x1d
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x3d
	.byte	0x29
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x3f
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.16
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x41
	.byte	0x2
	.quad	.L554
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x42
	.byte	0x2
	.quad	.L556
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x43
	.byte	0x2
	.quad	.L557
	.byte	0
	.uleb128 0x8
	.long	.LASF358
	.byte	0x15
	.byte	0x34
	.byte	0xc
	.long	0x628
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x23e9
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x34
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x34
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x36
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.17
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x38
	.byte	0x2
	.quad	.L543
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x39
	.byte	0x2
	.quad	.L545
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x3a
	.byte	0x2
	.quad	.L546
	.byte	0
	.uleb128 0xc
	.long	.LASF359
	.byte	0x15
	.byte	0x2b
	.byte	0xc
	.long	0x628
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x2470
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x2b
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x2b
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x2d
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.18
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x2f
	.byte	0x2
	.quad	.L536
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x30
	.byte	0x2
	.quad	.L538
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x31
	.byte	0x2
	.quad	.L539
	.byte	0
	.uleb128 0xc
	.long	.LASF360
	.byte	0x15
	.byte	0x22
	.byte	0xc
	.long	0x628
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x24f7
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x22
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x22
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x24
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.19
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x26
	.byte	0x2
	.quad	.L529
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x27
	.byte	0x2
	.quad	.L531
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x28
	.byte	0x2
	.quad	.L532
	.byte	0
	.uleb128 0xc
	.long	.LASF361
	.byte	0x15
	.byte	0x19
	.byte	0xc
	.long	0x628
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x257e
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x19
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x19
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x1b
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.20
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x1d
	.byte	0x2
	.quad	.L522
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x1e
	.byte	0x2
	.quad	.L524
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x1f
	.byte	0x2
	.quad	.L525
	.byte	0
	.uleb128 0xc
	.long	.LASF362
	.byte	0x15
	.byte	0x10
	.byte	0xc
	.long	0x628
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x2605
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x10
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x10
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x12
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.21
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0x14
	.byte	0x2
	.quad	.L515
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0x15
	.byte	0x2
	.quad	.L517
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0x16
	.byte	0x2
	.quad	.L518
	.byte	0
	.uleb128 0xc
	.long	.LASF363
	.byte	0x15
	.byte	0x7
	.byte	0xc
	.long	0x628
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x268c
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x7
	.byte	0x1c
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x7
	.byte	0x28
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x15
	.byte	0x9
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	ops.22
	.uleb128 0x2
	.string	"I64"
	.byte	0x15
	.byte	0xb
	.byte	0x2
	.quad	.L508
	.uleb128 0x2
	.string	"F64"
	.byte	0x15
	.byte	0xc
	.byte	0x2
	.quad	.L510
	.uleb128 0x2
	.string	"STR"
	.byte	0x15
	.byte	0xd
	.byte	0x2
	.quad	.L511
	.byte	0
	.uleb128 0x8
	.long	.LASF364
	.byte	0x15
	.byte	0x1
	.byte	0xc
	.long	0x628
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x26db
	.uleb128 0x1
	.string	"lhs"
	.byte	0x15
	.byte	0x1
	.byte	0x1f
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"op"
	.byte	0x15
	.byte	0x1
	.byte	0x2b
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"rhs"
	.byte	0x15
	.byte	0x1
	.byte	0x36
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xe
	.long	.LASF365
	.byte	0x12
	.byte	0x19
	.byte	0xb
	.long	0xad0
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x2770
	.uleb128 0x4
	.long	.LASF286
	.byte	0x12
	.byte	0x19
	.byte	0x21
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"rhs"
	.byte	0x12
	.byte	0x19
	.byte	0x38
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"irs"
	.byte	0x34
	.byte	0x1
	.byte	0xf
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	irs.28
	.uleb128 0x9
	.long	.LASF366
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.quad	.L499
	.uleb128 0x2
	.string	"REF"
	.byte	0x14
	.byte	0x2
	.byte	0x1
	.quad	.L501
	.uleb128 0x9
	.long	.LASF367
	.byte	0x14
	.byte	0x3
	.byte	0x1
	.quad	.L502
	.uleb128 0x6
	.string	"op"
	.byte	0x12
	.byte	0x1c
	.byte	0x9
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.long	.LASF368
	.byte	0x12
	.byte	0x14
	.byte	0x10
	.long	0xad0
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x27b1
	.uleb128 0x1
	.string	"op"
	.byte	0x12
	.byte	0x14
	.byte	0x20
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"rhs"
	.byte	0x12
	.byte	0x14
	.byte	0x2f
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xc
	.long	.LASF369
	.byte	0x12
	.byte	0xf
	.byte	0x10
	.long	0xad0
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x27f2
	.uleb128 0x1
	.string	"op"
	.byte	0x12
	.byte	0xf
	.byte	0x1f
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"rhs"
	.byte	0x12
	.byte	0xf
	.byte	0x2e
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x8
	.long	.LASF370
	.byte	0x12
	.byte	0x8
	.byte	0x10
	.long	0xad0
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x2842
	.uleb128 0x1
	.string	"op"
	.byte	0x12
	.byte	0x8
	.byte	0x21
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"rhs"
	.byte	0x12
	.byte	0x8
	.byte	0x30
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF306
	.byte	0x12
	.byte	0xa
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF371
	.byte	0x12
	.byte	0x1
	.byte	0xc
	.long	0x628
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x2908
	.uleb128 0x1
	.string	"op"
	.byte	0x12
	.byte	0x1
	.byte	0x1c
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"rhs"
	.byte	0x12
	.byte	0x1
	.byte	0x2b
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x35
	.byte	0x1
	.byte	0xf
	.long	0x17c1
	.uleb128 0x9
	.byte	0x3
	.quad	ops.26
	.uleb128 0x2
	.string	"ERR"
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.quad	.L483
	.uleb128 0x2
	.string	"NOT"
	.byte	0x13
	.byte	0x2
	.byte	0x1
	.quad	.L485
	.uleb128 0x9
	.long	.LASF372
	.byte	0x13
	.byte	0x3
	.byte	0x1
	.quad	.L486
	.uleb128 0x9
	.long	.LASF373
	.byte	0x13
	.byte	0x4
	.byte	0x1
	.quad	.L487
	.uleb128 0x9
	.long	.LASF374
	.byte	0x13
	.byte	0x5
	.byte	0x1
	.quad	.L488
	.uleb128 0x2
	.string	"INC"
	.byte	0x13
	.byte	0x6
	.byte	0x1
	.quad	.L489
	.uleb128 0x2
	.string	"DEC"
	.byte	0x13
	.byte	0x7
	.byte	0x1
	.quad	.L490
	.byte	0
	.uleb128 0xf
	.long	.LASF375
	.byte	0x11
	.byte	0x34
	.byte	0x7
	.long	0x628
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x2980
	.uleb128 0x1
	.string	"rhs"
	.byte	0x11
	.byte	0x34
	.byte	0x17
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF322
	.byte	0x11
	.byte	0x36
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	types.29
	.uleb128 0x2
	.string	"I64"
	.byte	0x11
	.byte	0x38
	.byte	0x2
	.quad	.L476
	.uleb128 0x2
	.string	"F64"
	.byte	0x11
	.byte	0x39
	.byte	0x2
	.quad	.L478
	.uleb128 0x2
	.string	"STR"
	.byte	0x11
	.byte	0x3a
	.byte	0x2
	.quad	.L479
	.byte	0
	.uleb128 0xf
	.long	.LASF376
	.byte	0x11
	.byte	0x2b
	.byte	0x7
	.long	0x628
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x29f8
	.uleb128 0x1
	.string	"rhs"
	.byte	0x11
	.byte	0x2b
	.byte	0x17
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF322
	.byte	0x11
	.byte	0x2d
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	types.30
	.uleb128 0x2
	.string	"I64"
	.byte	0x11
	.byte	0x2f
	.byte	0x2
	.quad	.L469
	.uleb128 0x2
	.string	"F64"
	.byte	0x11
	.byte	0x30
	.byte	0x2
	.quad	.L471
	.uleb128 0x2
	.string	"STR"
	.byte	0x11
	.byte	0x31
	.byte	0x2
	.quad	.L472
	.byte	0
	.uleb128 0xf
	.long	.LASF377
	.byte	0x11
	.byte	0x22
	.byte	0x7
	.long	0x628
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a70
	.uleb128 0x1
	.string	"rhs"
	.byte	0x11
	.byte	0x22
	.byte	0x19
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF322
	.byte	0x11
	.byte	0x24
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	types.31
	.uleb128 0x2
	.string	"I64"
	.byte	0x11
	.byte	0x26
	.byte	0x2
	.quad	.L462
	.uleb128 0x2
	.string	"F64"
	.byte	0x11
	.byte	0x27
	.byte	0x2
	.quad	.L464
	.uleb128 0x2
	.string	"STR"
	.byte	0x11
	.byte	0x28
	.byte	0x2
	.quad	.L465
	.byte	0
	.uleb128 0xf
	.long	.LASF378
	.byte	0x11
	.byte	0x19
	.byte	0x7
	.long	0x628
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ae8
	.uleb128 0x1
	.string	"rhs"
	.byte	0x11
	.byte	0x19
	.byte	0x18
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF322
	.byte	0x11
	.byte	0x1b
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	types.32
	.uleb128 0x2
	.string	"I64"
	.byte	0x11
	.byte	0x1d
	.byte	0x2
	.quad	.L455
	.uleb128 0x2
	.string	"F64"
	.byte	0x11
	.byte	0x1e
	.byte	0x2
	.quad	.L457
	.uleb128 0x2
	.string	"STR"
	.byte	0x11
	.byte	0x1f
	.byte	0x2
	.quad	.L458
	.byte	0
	.uleb128 0xf
	.long	.LASF379
	.byte	0x11
	.byte	0x10
	.byte	0x7
	.long	0x628
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b60
	.uleb128 0x1
	.string	"rhs"
	.byte	0x11
	.byte	0x10
	.byte	0x18
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF322
	.byte	0x11
	.byte	0x12
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	types.33
	.uleb128 0x2
	.string	"I64"
	.byte	0x11
	.byte	0x14
	.byte	0x2
	.quad	.L448
	.uleb128 0x2
	.string	"F64"
	.byte	0x11
	.byte	0x15
	.byte	0x2
	.quad	.L450
	.uleb128 0x2
	.string	"STR"
	.byte	0x11
	.byte	0x16
	.byte	0x2
	.quad	.L451
	.byte	0
	.uleb128 0xf
	.long	.LASF380
	.byte	0x11
	.byte	0x7
	.byte	0x7
	.long	0x628
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bd8
	.uleb128 0x1
	.string	"rhs"
	.byte	0x11
	.byte	0x7
	.byte	0x17
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF322
	.byte	0x11
	.byte	0x9
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	types.34
	.uleb128 0x2
	.string	"I64"
	.byte	0x11
	.byte	0xb
	.byte	0x2
	.quad	.L437
	.uleb128 0x2
	.string	"F64"
	.byte	0x11
	.byte	0xc
	.byte	0x2
	.quad	.L439
	.uleb128 0x2
	.string	"STR"
	.byte	0x11
	.byte	0xd
	.byte	0x2
	.quad	.L443
	.byte	0
	.uleb128 0xe
	.long	.LASF381
	.byte	0x11
	.byte	0x1
	.byte	0x7
	.long	0x628
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c18
	.uleb128 0x1
	.string	"op"
	.byte	0x11
	.byte	0x1
	.byte	0x1a
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"rhs"
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF382
	.byte	0x10
	.byte	0x2d
	.byte	0x5
	.long	0x47f
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c86
	.uleb128 0x4
	.long	.LASF94
	.byte	0x10
	.byte	0x2d
	.byte	0x1c
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"rhs"
	.byte	0x10
	.byte	0x2d
	.byte	0x2d
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF383
	.byte	0x10
	.byte	0x2f
	.byte	0xc
	.long	0x2c86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"idx"
	.byte	0x10
	.byte	0x31
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x6
	.string	"var"
	.byte	0x10
	.byte	0x32
	.byte	0x7
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xb
	.long	0xd64
	.uleb128 0xb
	.long	0x6d5
	.uleb128 0x8
	.long	.LASF384
	.byte	0x10
	.byte	0x22
	.byte	0xa
	.long	0x47f
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d35
	.uleb128 0x1
	.string	"var"
	.byte	0x10
	.byte	0x22
	.byte	0x1d
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF385
	.byte	0x10
	.byte	0x22
	.byte	0x26
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.long	.LASF94
	.byte	0x10
	.byte	0x22
	.byte	0x34
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x10
	.byte	0x22
	.byte	0x45
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF322
	.byte	0x36
	.byte	0x1
	.byte	0xf
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	types.35
	.uleb128 0x9
	.long	.LASF366
	.byte	0x10
	.byte	0x28
	.byte	0x2
	.quad	.L423
	.uleb128 0x2
	.string	"REF"
	.byte	0x10
	.byte	0x29
	.byte	0x2
	.quad	.L425
	.uleb128 0x9
	.long	.LASF367
	.byte	0x10
	.byte	0x2a
	.byte	0x2
	.quad	.L426
	.byte	0
	.uleb128 0xc
	.long	.LASF386
	.byte	0x10
	.byte	0x1d
	.byte	0xa
	.long	0x47f
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d76
	.uleb128 0x4
	.long	.LASF385
	.byte	0x10
	.byte	0x1d
	.byte	0x20
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1
	.string	"var"
	.byte	0x10
	.byte	0x1d
	.byte	0x2b
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x8
	.long	.LASF387
	.byte	0x10
	.byte	0x10
	.byte	0xa
	.long	0x47f
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x2df6
	.uleb128 0x4
	.long	.LASF385
	.byte	0x10
	.byte	0x10
	.byte	0x1f
	.long	0x47f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x1
	.string	"var"
	.byte	0x10
	.byte	0x10
	.byte	0x2a
	.long	0x2c8b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.long	.LASF383
	.byte	0x10
	.byte	0x12
	.byte	0xc
	.long	0x2c86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"src"
	.byte	0x10
	.byte	0x13
	.byte	0x6
	.long	0x47f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x6
	.string	"ref"
	.byte	0x10
	.byte	0x14
	.byte	0x7
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"val"
	.byte	0x10
	.byte	0x18
	.byte	0x6
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF388
	.byte	0x10
	.byte	0x9
	.byte	0xa
	.long	0x47f
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e55
	.uleb128 0x4
	.long	.LASF385
	.byte	0x10
	.byte	0x9
	.byte	0x21
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"var"
	.byte	0x10
	.byte	0x9
	.byte	0x2c
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF389
	.byte	0x10
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF390
	.byte	0x10
	.byte	0xc
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.long	.LASF391
	.byte	0x10
	.byte	0x1
	.byte	0xa
	.long	0x47f
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ec3
	.uleb128 0x1
	.string	"fn"
	.byte	0x10
	.byte	0x1
	.byte	0x1d
	.long	0xd5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF94
	.byte	0x10
	.byte	0x1
	.byte	0x29
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"rhs"
	.byte	0x10
	.byte	0x1
	.byte	0x3a
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"idx"
	.byte	0x10
	.byte	0x3
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"var"
	.byte	0x10
	.byte	0x4
	.byte	0x7
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xc
	.long	.LASF392
	.byte	0xf
	.byte	0x8d
	.byte	0xd
	.long	0xc43
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f0b
	.uleb128 0x4
	.long	.LASF91
	.byte	0xf
	.byte	0x8d
	.byte	0x1f
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF393
	.byte	0x37
	.byte	0x1
	.byte	0xf
	.long	0x2f0b
	.uleb128 0x9
	.byte	0x3
	.quad	token_ops.27
	.byte	0
	.uleb128 0x14
	.long	0xc43
	.long	0x2f1b
	.uleb128 0x12
	.long	0x3a
	.byte	0x39
	.byte	0
	.uleb128 0x8
	.long	.LASF394
	.byte	0xf
	.byte	0x79
	.byte	0xa
	.long	0x47f
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fbd
	.uleb128 0x1
	.string	"OP"
	.byte	0xf
	.byte	0x79
	.byte	0x19
	.long	0xc43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"D"
	.byte	0xf
	.byte	0x79
	.byte	0x20
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"S"
	.byte	0xf
	.byte	0x79
	.byte	0x26
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"M"
	.byte	0xf
	.byte	0x79
	.byte	0x2c
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"DT"
	.byte	0xf
	.byte	0x79
	.byte	0x32
	.long	0x468
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"ST"
	.byte	0xf
	.byte	0x79
	.byte	0x39
	.long	0x468
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF383
	.byte	0xf
	.byte	0x7b
	.byte	0xc
	.long	0x2c86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF395
	.byte	0xf
	.byte	0x7c
	.byte	0x7
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"op"
	.byte	0xf
	.byte	0x7e
	.byte	0x6
	.long	0x2fc2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x554
	.uleb128 0xb
	.long	0xcc5
	.uleb128 0x8
	.long	.LASF396
	.byte	0xf
	.byte	0x70
	.byte	0xb
	.long	0x2c8b
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x3026
	.uleb128 0x4
	.long	.LASF397
	.byte	0xf
	.byte	0x70
	.byte	0x1b
	.long	0x3026
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF94
	.byte	0xf
	.byte	0x70
	.byte	0x2c
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF398
	.byte	0xf
	.byte	0x72
	.byte	0x7
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF399
	.byte	0xf
	.byte	0x73
	.byte	0x8
	.long	0x78e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x47f
	.uleb128 0x8
	.long	.LASF400
	.byte	0xf
	.byte	0x64
	.byte	0xb
	.long	0x2c8b
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x30a9
	.uleb128 0x4
	.long	.LASF397
	.byte	0xf
	.byte	0x64
	.byte	0x1c
	.long	0x3026
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF94
	.byte	0xf
	.byte	0x64
	.byte	0x2d
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.long	.LASF96
	.byte	0xf
	.byte	0x64
	.byte	0x39
	.long	0x628
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF398
	.byte	0xf
	.byte	0x66
	.byte	0x7
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"idx"
	.byte	0xf
	.byte	0x67
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"var"
	.byte	0xf
	.byte	0x68
	.byte	0x7
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF401
	.byte	0xf
	.byte	0x57
	.byte	0xb
	.long	0x2c8b
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x3147
	.uleb128 0x4
	.long	.LASF397
	.byte	0xf
	.byte	0x57
	.byte	0x1a
	.long	0x3026
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"fn"
	.byte	0xf
	.byte	0x57
	.byte	0x29
	.long	0xd5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.long	.LASF94
	.byte	0xf
	.byte	0x57
	.byte	0x35
	.long	0x602
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF402
	.byte	0xf
	.byte	0x59
	.byte	0x7
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF160
	.byte	0xf
	.byte	0x5a
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x6
	.string	"end"
	.byte	0xf
	.byte	0x5b
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.quad	.LBB15
	.quad	.LBE15-.LBB15
	.uleb128 0x6
	.string	"var"
	.byte	0xf
	.byte	0x5e
	.byte	0x8
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x8
	.long	.LASF403
	.byte	0xf
	.byte	0x4c
	.byte	0xb
	.long	0x2c8b
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x31c4
	.uleb128 0x4
	.long	.LASF397
	.byte	0xf
	.byte	0x4c
	.byte	0x1b
	.long	0x3026
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"fn"
	.byte	0xf
	.byte	0x4c
	.byte	0x2a
	.long	0xd5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF94
	.byte	0xf
	.byte	0x4c
	.byte	0x36
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF96
	.byte	0xf
	.byte	0x4c
	.byte	0x42
	.long	0x628
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF402
	.byte	0xf
	.byte	0x4f
	.byte	0x7
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"var"
	.byte	0xf
	.byte	0x50
	.byte	0x7
	.long	0x2c8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF404
	.byte	0xf
	.byte	0x40
	.byte	0xa
	.long	0x47f
	.quad	.LFB105
	.quad	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.long	0x3205
	.uleb128 0x4
	.long	.LASF96
	.byte	0xf
	.byte	0x40
	.byte	0x1b
	.long	0x628
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF383
	.byte	0xf
	.byte	0x42
	.byte	0xc
	.long	0x2c86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF406
	.byte	0xf
	.byte	0x38
	.quad	.LFB104
	.quad	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.long	0x3232
	.uleb128 0x5
	.long	.LASF383
	.byte	0xf
	.byte	0x3a
	.byte	0xc
	.long	0x2c86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF407
	.byte	0xf
	.byte	0x2d
	.quad	.LFB103
	.quad	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.long	0x326d
	.uleb128 0x5
	.long	.LASF383
	.byte	0xf
	.byte	0x2f
	.byte	0xc
	.long	0x2c86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"fn"
	.byte	0xf
	.byte	0x30
	.byte	0x8
	.long	0xd5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF408
	.byte	0xf
	.byte	0x27
	.byte	0x10
	.long	0x2c86
	.quad	.LFB102
	.quad	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.long	0x32a6
	.uleb128 0x5
	.long	.LASF383
	.byte	0xf
	.byte	0x29
	.byte	0x12
	.long	0xd64
	.uleb128 0x9
	.byte	0x3
	.quad	compiler.41
	.byte	0
	.uleb128 0x11
	.long	.LASF409
	.byte	0xc
	.byte	0xe5
	.quad	.LFB101
	.quad	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.long	0x32f5
	.uleb128 0x5
	.long	.LASF410
	.byte	0xc
	.byte	0xe7
	.byte	0xa
	.long	0x32f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x16
	.quad	.LBB14
	.quad	.LBE14-.LBB14
	.uleb128 0x5
	.long	.LASF306
	.byte	0xc
	.byte	0xeb
	.byte	0xd
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xb
	.long	0xb3d
	.uleb128 0xe
	.long	.LASF411
	.byte	0xc
	.byte	0xde
	.byte	0xb
	.long	0xad0
	.quad	.LFB100
	.quad	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.long	0x339f
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0xde
	.byte	0x1e
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF412
	.byte	0x38
	.byte	0x1
	.byte	0xf
	.long	0x339f
	.uleb128 0x9
	.byte	0x3
	.quad	stmts.43
	.uleb128 0x9
	.long	.LASF413
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.quad	.L370
	.uleb128 0x2
	.string	"IF"
	.byte	0xe
	.byte	0x2
	.byte	0x1
	.quad	.L372
	.uleb128 0x2
	.string	"FOR"
	.byte	0xe
	.byte	0x3
	.byte	0x1
	.quad	.L373
	.uleb128 0x2
	.string	"DO"
	.byte	0xe
	.byte	0x4
	.byte	0x1
	.quad	.L374
	.uleb128 0x9
	.long	.LASF414
	.byte	0xe
	.byte	0x5
	.byte	0x1
	.quad	.L375
	.uleb128 0x2
	.string	"ID"
	.byte	0xe
	.byte	0x6
	.byte	0x1
	.quad	.L376
	.byte	0
	.uleb128 0x14
	.long	0xb11
	.long	0x33af
	.uleb128 0x12
	.long	0x3a
	.byte	0x39
	.byte	0
	.uleb128 0xe
	.long	.LASF415
	.byte	0xc
	.byte	0xd0
	.byte	0xb
	.long	0xad0
	.quad	.LFB99
	.quad	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.long	0x34e6
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0xd0
	.byte	0x1e
	.long	0x32f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.long	.LASF198
	.byte	0xc
	.byte	0xd0
	.byte	0x2b
	.long	0xa68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.long	.LASF416
	.byte	0x39
	.byte	0x1
	.byte	0x12
	.long	0x34e6
	.uleb128 0x9
	.byte	0x3
	.quad	rules.44
	.uleb128 0x2
	.string	"EOS"
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.quad	.L355
	.uleb128 0x9
	.long	.LASF417
	.byte	0xd
	.byte	0x3
	.byte	0x1
	.quad	.L357
	.uleb128 0x2
	.string	"ERR"
	.byte	0xd
	.byte	0x2
	.byte	0x1
	.quad	.L356
	.uleb128 0x9
	.long	.LASF418
	.byte	0xd
	.byte	0x4
	.byte	0x1
	.quad	.L358
	.uleb128 0x9
	.long	.LASF419
	.byte	0xd
	.byte	0x5
	.byte	0x1
	.quad	.L359
	.uleb128 0x9
	.long	.LASF367
	.byte	0xd
	.byte	0x6
	.byte	0x1
	.quad	.L360
	.uleb128 0x2
	.string	"I64"
	.byte	0xd
	.byte	0x7
	.byte	0x1
	.quad	.L361
	.uleb128 0x2
	.string	"F64"
	.byte	0xd
	.byte	0x8
	.byte	0x1
	.quad	.L362
	.uleb128 0x2
	.string	"STR"
	.byte	0xd
	.byte	0x9
	.byte	0x1
	.quad	.L363
	.uleb128 0x2
	.string	"REF"
	.byte	0xd
	.byte	0xa
	.byte	0x1
	.quad	.L364
	.uleb128 0x5
	.long	.LASF420
	.byte	0xc
	.byte	0xd3
	.byte	0xd
	.long	0x34f6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF306
	.byte	0xc
	.byte	0xd4
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"LED"
	.byte	0xc
	.byte	0xd6
	.byte	0x2
	.quad	.L352
	.uleb128 0x9
	.long	.LASF421
	.byte	0xc
	.byte	0xdb
	.byte	0x2
	.quad	.L354
	.byte	0
	.uleb128 0x14
	.long	0xb16
	.long	0x34f6
	.uleb128 0x12
	.long	0x3a
	.byte	0x39
	.byte	0
	.uleb128 0xb
	.long	0xb16
	.uleb128 0xe
	.long	.LASF422
	.byte	0xc
	.byte	0xc8
	.byte	0xb
	.long	0xad0
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x353c
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0xc8
	.byte	0x1d
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF306
	.byte	0xc
	.byte	0xca
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF423
	.byte	0xc
	.byte	0xc0
	.byte	0xb
	.long	0xad0
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x357d
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0xc0
	.byte	0x1d
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF306
	.byte	0xc
	.byte	0xc2
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF424
	.byte	0xc
	.byte	0xb8
	.byte	0xb
	.long	0xad0
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x35be
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0xb8
	.byte	0x1d
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF306
	.byte	0xc
	.byte	0xba
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF425
	.byte	0xc
	.byte	0xb0
	.byte	0xb
	.long	0xad0
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ff
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0xb0
	.byte	0x1d
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF306
	.byte	0xc
	.byte	0xb2
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF426
	.byte	0xc
	.byte	0xa6
	.byte	0xb
	.long	0xad0
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x3641
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0xa6
	.byte	0x1e
	.long	0x32f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF94
	.byte	0xc
	.byte	0xa8
	.byte	0xa
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xe
	.long	.LASF427
	.byte	0xc
	.byte	0x9e
	.byte	0xb
	.long	0xad0
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x3682
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x9e
	.byte	0x1f
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF306
	.byte	0xc
	.byte	0xa1
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF428
	.byte	0xc
	.byte	0x96
	.byte	0xb
	.long	0xad0
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x36f2
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x96
	.byte	0x20
	.long	0x32f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"lhs"
	.byte	0xc
	.byte	0x96
	.byte	0x33
	.long	0x125e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"cur"
	.byte	0xc
	.byte	0x96
	.byte	0x3d
	.long	0xa68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x6
	.string	"op"
	.byte	0xc
	.byte	0x98
	.byte	0xc
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"rhs"
	.byte	0xc
	.byte	0x9a
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF429
	.byte	0xc
	.byte	0x8e
	.byte	0xb
	.long	0xad0
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x3752
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x8e
	.byte	0x1f
	.long	0x32f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"cur"
	.byte	0xc
	.byte	0x8e
	.byte	0x2c
	.long	0xa68
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"op"
	.byte	0xc
	.byte	0x90
	.byte	0xc
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"rhs"
	.byte	0xc
	.byte	0x92
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF430
	.byte	0xc
	.byte	0x88
	.byte	0xb
	.long	0xad0
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x3784
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x88
	.byte	0x1d
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	.LASF431
	.byte	0xc
	.byte	0x83
	.byte	0xb
	.long	0xad0
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x37b6
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x83
	.byte	0x1d
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.long	.LASF432
	.byte	0xc
	.byte	0x76
	.byte	0xb
	.long	0xad0
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x3807
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x76
	.byte	0x1c
	.long	0x32f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF94
	.byte	0xc
	.byte	0x78
	.byte	0xa
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"rhs"
	.byte	0xc
	.byte	0x7c
	.byte	0xc
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF433
	.byte	0xc
	.byte	0x69
	.byte	0xb
	.long	0xad0
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x3849
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x69
	.byte	0x1e
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.long	.LASF94
	.byte	0xc
	.byte	0x69
	.byte	0x2e
	.long	0x602
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xe
	.long	.LASF434
	.byte	0xc
	.byte	0x63
	.byte	0xb
	.long	0xad0
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x387b
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x63
	.byte	0x1f
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.long	.LASF435
	.byte	0xc
	.byte	0x5d
	.byte	0xb
	.long	0xad0
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x38ad
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x5d
	.byte	0x1c
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.long	.LASF436
	.byte	0xc
	.byte	0x57
	.byte	0xb
	.long	0xad0
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x38df
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x57
	.byte	0x1d
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.long	.LASF437
	.byte	0xc
	.byte	0x42
	.byte	0xb
	.long	0xad0
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x3937
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x42
	.byte	0x1c
	.long	0x32f5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.long	.LASF438
	.byte	0xc
	.byte	0x45
	.byte	0xc
	.long	0xad0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x3a
	.long	.LLRL0
	.uleb128 0x5
	.long	.LASF439
	.byte	0xc
	.byte	0x4b
	.byte	0xd
	.long	0xad0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF440
	.byte	0xc
	.byte	0x37
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x3973
	.uleb128 0x4
	.long	.LASF410
	.byte	0xc
	.byte	0x37
	.byte	0x1a
	.long	0x32f5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF91
	.byte	0xc
	.byte	0x37
	.byte	0x2c
	.long	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x11
	.long	.LASF441
	.byte	0xc
	.byte	0x25
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a04
	.uleb128 0x4
	.long	.LASF306
	.byte	0xc
	.byte	0x25
	.byte	0x1f
	.long	0x125e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF322
	.byte	0xc
	.byte	0x27
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	types.45
	.uleb128 0x2
	.string	"I64"
	.byte	0xc
	.byte	0x2a
	.byte	0x2
	.quad	.L294
	.uleb128 0x2
	.string	"F64"
	.byte	0xc
	.byte	0x2d
	.byte	0x2
	.quad	.L295
	.uleb128 0x2
	.string	"STR"
	.byte	0xc
	.byte	0x30
	.byte	0x2
	.quad	.L296
	.uleb128 0x5
	.long	.LASF93
	.byte	0xc
	.byte	0x31
	.byte	0xa
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF442
	.byte	0xc
	.byte	0x32
	.byte	0x7
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3b
	.long	.LASF443
	.byte	0xc
	.byte	0x1f
	.byte	0x6
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.long	.LASF444
	.byte	0xc
	.byte	0x13
	.byte	0xe
	.long	0x32f5
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a57
	.uleb128 0x5
	.long	.LASF410
	.byte	0xc
	.byte	0x15
	.byte	0x10
	.long	0xb3d
	.uleb128 0x9
	.byte	0x3
	.quad	parser.42
	.byte	0
	.uleb128 0x3c
	.string	"Lex"
	.byte	0xa
	.byte	0xcc
	.byte	0x7
	.long	0x945
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c85
	.uleb128 0x5
	.long	.LASF445
	.byte	0xa
	.byte	0xce
	.byte	0x9
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF446
	.byte	0x3a
	.byte	0x1
	.byte	0xf
	.long	0x3c8a
	.uleb128 0x9
	.byte	0x3
	.quad	ascii.48
	.uleb128 0x2
	.string	"EOS"
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.quad	.L255
	.uleb128 0x2
	.string	"LEX"
	.byte	0xa
	.byte	0xd1
	.byte	0x2
	.quad	.L254
	.uleb128 0x9
	.long	.LASF447
	.byte	0xb
	.byte	0x2
	.byte	0x1
	.quad	.L257
	.uleb128 0x2
	.string	"NOT"
	.byte	0xb
	.byte	0x3
	.byte	0x1
	.quad	.L258
	.uleb128 0x2
	.string	"STR"
	.byte	0xb
	.byte	0x4
	.byte	0x1
	.quad	.L259
	.uleb128 0x9
	.long	.LASF448
	.byte	0xb
	.byte	0x5
	.byte	0x1
	.quad	.L260
	.uleb128 0x2
	.string	"MOD"
	.byte	0xb
	.byte	0x6
	.byte	0x1
	.quad	.L261
	.uleb128 0x9
	.long	.LASF308
	.byte	0xb
	.byte	0x7
	.byte	0x1
	.quad	.L262
	.uleb128 0x2
	.string	"LP"
	.byte	0xb
	.byte	0x8
	.byte	0x1
	.quad	.L263
	.uleb128 0x2
	.string	"RP"
	.byte	0xb
	.byte	0x9
	.byte	0x1
	.quad	.L264
	.uleb128 0x2
	.string	"MUL"
	.byte	0xb
	.byte	0xa
	.byte	0x1
	.quad	.L265
	.uleb128 0x2
	.string	"ADD"
	.byte	0xb
	.byte	0xb
	.byte	0x1
	.quad	.L266
	.uleb128 0x9
	.long	.LASF449
	.byte	0xb
	.byte	0xc
	.byte	0x1
	.quad	.L267
	.uleb128 0x2
	.string	"SUB"
	.byte	0xb
	.byte	0xd
	.byte	0x1
	.quad	.L268
	.uleb128 0x2
	.string	"DOT"
	.byte	0xb
	.byte	0xe
	.byte	0x1
	.quad	.L269
	.uleb128 0x2
	.string	"DIV"
	.byte	0xb
	.byte	0xf
	.byte	0x1
	.quad	.L270
	.uleb128 0x2
	.string	"NUM"
	.byte	0xb
	.byte	0x10
	.byte	0x1
	.quad	.L271
	.uleb128 0x9
	.long	.LASF450
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.quad	.L272
	.uleb128 0x9
	.long	.LASF451
	.byte	0xb
	.byte	0x12
	.byte	0x1
	.quad	.L273
	.uleb128 0x2
	.string	"LT"
	.byte	0xb
	.byte	0x13
	.byte	0x1
	.quad	.L274
	.uleb128 0x2
	.string	"EQ"
	.byte	0xb
	.byte	0x14
	.byte	0x1
	.quad	.L275
	.uleb128 0x2
	.string	"GT"
	.byte	0xb
	.byte	0x15
	.byte	0x1
	.quad	.L276
	.uleb128 0x2
	.string	"RET"
	.byte	0xb
	.byte	0x16
	.byte	0x1
	.quad	.L277
	.uleb128 0x2
	.string	"ID"
	.byte	0xb
	.byte	0x17
	.byte	0x1
	.quad	.L278
	.uleb128 0x2
	.string	"LS"
	.byte	0xb
	.byte	0x18
	.byte	0x1
	.quad	.L279
	.uleb128 0x2
	.string	"RS"
	.byte	0xb
	.byte	0x19
	.byte	0x1
	.quad	.L280
	.uleb128 0x9
	.long	.LASF309
	.byte	0xb
	.byte	0x1a
	.byte	0x1
	.quad	.L281
	.uleb128 0x2
	.string	"LC"
	.byte	0xb
	.byte	0x1c
	.byte	0x1
	.quad	.L283
	.uleb128 0x2
	.string	"BOR"
	.byte	0xb
	.byte	0x1d
	.byte	0x1
	.quad	.L284
	.uleb128 0x2
	.string	"RC"
	.byte	0xb
	.byte	0x1e
	.byte	0x1
	.quad	.L285
	.uleb128 0x9
	.long	.LASF372
	.byte	0xb
	.byte	0x1b
	.byte	0x1
	.quad	.L282
	.byte	0
	.uleb128 0xb
	.long	0x9aa
	.uleb128 0x14
	.long	0xb11
	.long	0x3c9a
	.uleb128 0x12
	.long	0x3a
	.byte	0x7f
	.byte	0
	.uleb128 0x8
	.long	.LASF452
	.byte	0xa
	.byte	0xca
	.byte	0xc
	.long	0x945
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ccc
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xca
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF453
	.byte	0xa
	.byte	0xc4
	.byte	0xc
	.long	0x945
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d0d
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xc4
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0xc6
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF454
	.byte	0xa
	.byte	0xc2
	.byte	0xc
	.long	0x945
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d3f
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xc2
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF455
	.byte	0xa
	.byte	0xc1
	.byte	0xc
	.long	0x945
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d71
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xc1
	.byte	0x1c
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF456
	.byte	0xa
	.byte	0xbb
	.byte	0xc
	.long	0x945
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x3db2
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xbb
	.byte	0x1c
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0xbd
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF457
	.byte	0xa
	.byte	0xb9
	.byte	0xc
	.long	0x945
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x3de4
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xb9
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF458
	.byte	0xa
	.byte	0xb8
	.byte	0xc
	.long	0x945
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e16
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xb8
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF459
	.byte	0xa
	.byte	0xae
	.byte	0xc
	.long	0x945
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e96
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xae
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"ID"
	.byte	0xa
	.byte	0xae
	.byte	0x28
	.long	0xb11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"NUM"
	.byte	0xa
	.byte	0xae
	.byte	0x33
	.long	0xb11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.long	.LASF446
	.byte	0xa
	.byte	0xae
	.byte	0x40
	.long	0x3e96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.string	"len"
	.byte	0xa
	.byte	0xb2
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF200
	.byte	0xa
	.byte	0xb3
	.byte	0x8
	.long	0x945
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	0xb11
	.uleb128 0x8
	.long	.LASF460
	.byte	0xa
	.byte	0xac
	.byte	0xc
	.long	0x945
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ecd
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xac
	.byte	0x1e
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF461
	.byte	0xa
	.byte	0xa4
	.byte	0xc
	.long	0x945
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f0e
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0xa4
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0xa6
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF462
	.byte	0xa
	.byte	0x9e
	.byte	0xc
	.long	0x945
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f4f
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x9e
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0xa0
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF463
	.byte	0xa
	.byte	0x96
	.byte	0xc
	.long	0x945
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f90
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x96
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x98
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF464
	.byte	0xa
	.byte	0x90
	.byte	0xc
	.long	0x945
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fd1
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x90
	.byte	0x1c
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x92
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF465
	.byte	0xa
	.byte	0x8a
	.byte	0xc
	.long	0x945
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x4012
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x8a
	.byte	0x1d
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x8c
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF466
	.byte	0xa
	.byte	0x7b
	.byte	0xc
	.long	0x945
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x4073
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x7b
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"NUM"
	.byte	0xa
	.byte	0x7b
	.byte	0x29
	.long	0xb11
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.long	.LASF446
	.byte	0xa
	.byte	0x7b
	.byte	0x36
	.long	0x3e96
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF200
	.byte	0xa
	.byte	0x7d
	.byte	0x8
	.long	0x945
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF467
	.byte	0xa
	.byte	0x75
	.byte	0xc
	.long	0x945
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x40b4
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x75
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x77
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF468
	.byte	0xa
	.byte	0x73
	.byte	0xc
	.long	0x945
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x40e6
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x73
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF469
	.byte	0xa
	.byte	0x6d
	.byte	0xc
	.long	0x945
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x4127
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x6d
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x6f
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF470
	.byte	0xa
	.byte	0x6b
	.byte	0xc
	.long	0x945
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x4159
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x6b
	.byte	0x1d
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF471
	.byte	0xa
	.byte	0x65
	.byte	0xc
	.long	0x945
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x419a
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x65
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x67
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF472
	.byte	0xa
	.byte	0x5d
	.byte	0xc
	.long	0x945
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x41db
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x5d
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x5f
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF473
	.byte	0xa
	.byte	0x5b
	.byte	0xc
	.long	0x945
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x420d
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x5b
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF474
	.byte	0xa
	.byte	0x5a
	.byte	0xc
	.long	0x945
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x423f
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x5a
	.byte	0x1a
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x8
	.long	.LASF475
	.byte	0xa
	.byte	0x54
	.byte	0xc
	.long	0x945
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x4280
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x54
	.byte	0x1c
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x56
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x8
	.long	.LASF476
	.byte	0xa
	.byte	0x4e
	.byte	0xc
	.long	0x945
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x42c1
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x4e
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x50
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x2a
	.long	.LASF478
	.byte	0x47
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x42ed
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x47
	.byte	0x1e
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF479
	.byte	0xa
	.byte	0x3b
	.byte	0xc
	.long	0x945
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x433e
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x3b
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF200
	.byte	0xa
	.byte	0x3f
	.byte	0x8
	.long	0x945
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"len"
	.byte	0xa
	.byte	0x40
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x8
	.long	.LASF480
	.byte	0xa
	.byte	0x35
	.byte	0xc
	.long	0x945
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x437f
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x35
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0xa
	.byte	0x37
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x2a
	.long	.LASF481
	.byte	0x2f
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x43ab
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x2f
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x8
	.long	.LASF482
	.byte	0xa
	.byte	0x2d
	.byte	0xc
	.long	0x945
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x43dd
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x2d
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xc
	.long	.LASF483
	.byte	0xa
	.byte	0x26
	.byte	0xc
	.long	0x945
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x443f
	.uleb128 0x4
	.long	.LASF445
	.byte	0xa
	.byte	0x26
	.byte	0x1b
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.long	.LASF91
	.byte	0xa
	.byte	0x26
	.byte	0x2c
	.long	0x911
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"off"
	.byte	0xa
	.byte	0x26
	.byte	0x35
	.long	0x468
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"len"
	.byte	0xa
	.byte	0x26
	.byte	0x3d
	.long	0x468
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x1d
	.long	.LASF484
	.byte	0xa
	.byte	0x20
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x447b
	.uleb128 0x1
	.string	"src"
	.byte	0xa
	.byte	0x20
	.byte	0x1a
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF445
	.byte	0xa
	.byte	0x22
	.byte	0x9
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF485
	.byte	0xa
	.byte	0x16
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x44c6
	.uleb128 0x1
	.string	"src"
	.byte	0xa
	.byte	0x16
	.byte	0x1d
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF162
	.byte	0xa
	.byte	0x16
	.byte	0x29
	.long	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF445
	.byte	0xa
	.byte	0x18
	.byte	0x9
	.long	0x3c85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF486
	.byte	0xa
	.byte	0x10
	.byte	0xd
	.long	0x3c85
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x44ff
	.uleb128 0x5
	.long	.LASF445
	.byte	0xa
	.byte	0x12
	.byte	0xf
	.long	0x9aa
	.uleb128 0x9
	.byte	0x3
	.quad	lexer.47
	.byte	0
	.uleb128 0x1d
	.long	.LASF487
	.byte	0x9
	.byte	0x1
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x4577
	.uleb128 0x1
	.string	"src"
	.byte	0x9
	.byte	0x1
	.byte	0x1a
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF279
	.byte	0x9
	.byte	0x1
	.byte	0x23
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF488
	.byte	0x9
	.byte	0x3
	.byte	0x8
	.long	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"len"
	.byte	0x9
	.byte	0x6
	.byte	0x7
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"buf"
	.byte	0x9
	.byte	0x9
	.byte	0x6
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF489
	.byte	0x9
	.byte	0xa
	.byte	0x6
	.long	0x48b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF490
	.byte	0x8
	.byte	0x7
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x45b6
	.uleb128 0x1
	.string	"fmt"
	.byte	0x8
	.byte	0x7
	.byte	0x16
	.long	0x9a0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x28
	.uleb128 0x5
	.long	.LASF276
	.byte	0x8
	.byte	0x9
	.byte	0xa
	.long	0x33f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0xc
	.long	.LASF491
	.byte	0x8
	.byte	0x1
	.byte	0xf
	.long	0x45ef
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x45ef
	.uleb128 0x6
	.string	"buf"
	.byte	0x8
	.byte	0x3
	.byte	0x11
	.long	0x3cf
	.uleb128 0x9
	.byte	0x3
	.quad	buf.46
	.byte	0
	.uleb128 0xb
	.long	0x3cf
	.uleb128 0x11
	.long	.LASF492
	.byte	0x7
	.byte	0x47
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x463f
	.uleb128 0x1
	.string	"env"
	.byte	0x7
	.byte	0x47
	.byte	0x13
	.long	0x463f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF94
	.byte	0x7
	.byte	0x47
	.byte	0x20
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"var"
	.byte	0x7
	.byte	0x49
	.byte	0x8
	.long	0x78e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x793
	.uleb128 0x11
	.long	.LASF493
	.byte	0x7
	.byte	0x3e
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x469e
	.uleb128 0x1
	.string	"env"
	.byte	0x7
	.byte	0x3e
	.byte	0x13
	.long	0x463f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF94
	.byte	0x7
	.byte	0x3e
	.byte	0x20
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"idx"
	.byte	0x7
	.byte	0x3e
	.byte	0x2a
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"var"
	.byte	0x7
	.byte	0x41
	.byte	0x8
	.long	0x78e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF494
	.byte	0x7
	.byte	0x32
	.byte	0x7
	.long	0x78e
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x470f
	.uleb128 0x1
	.string	"env"
	.byte	0x7
	.byte	0x32
	.byte	0x14
	.long	0x463f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF94
	.byte	0x7
	.byte	0x32
	.byte	0x21
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"idx"
	.byte	0x7
	.byte	0x34
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x6
	.string	"var"
	.byte	0x7
	.byte	0x37
	.byte	0x9
	.long	0x78e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	.LASF495
	.byte	0x7
	.byte	0x2d
	.byte	0x6
	.long	0x2c8b
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x4741
	.uleb128 0x4
	.long	.LASF399
	.byte	0x7
	.byte	0x2d
	.byte	0x17
	.long	0x78e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x11
	.long	.LASF496
	.byte	0x7
	.byte	0x1d
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x47eb
	.uleb128 0x1
	.string	"env"
	.byte	0x7
	.byte	0x1d
	.byte	0x14
	.long	0x463f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF497
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.long	0x78e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF498
	.byte	0x7
	.byte	0x20
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF93
	.byte	0x7
	.byte	0x21
	.byte	0x9
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.quad	.LBB9
	.quad	.LBE9-.LBB9
	.uleb128 0x6
	.string	"i"
	.byte	0x7
	.byte	0x23
	.byte	0xb
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.quad	.LBB10
	.quad	.LBE10-.LBB10
	.uleb128 0x6
	.string	"var"
	.byte	0x7
	.byte	0x25
	.byte	0x9
	.long	0x78e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"str"
	.byte	0x7
	.byte	0x27
	.byte	0xb
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF499
	.byte	0x7
	.byte	0x16
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x4827
	.uleb128 0x1
	.string	"env"
	.byte	0x7
	.byte	0x16
	.byte	0x15
	.long	0x463f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"max"
	.byte	0x7
	.byte	0x16
	.byte	0x1e
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.long	.LASF500
	.byte	0x7
	.byte	0x10
	.byte	0xb
	.long	0x463f
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x4860
	.uleb128 0x6
	.string	"env"
	.byte	0x7
	.byte	0x12
	.byte	0xd
	.long	0x793
	.uleb128 0x9
	.byte	0x3
	.quad	env.36
	.byte	0
	.uleb128 0x11
	.long	.LASF501
	.byte	0x6
	.byte	0x3c
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x48ab
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x3c
	.byte	0x13
	.long	0x48ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"key"
	.byte	0x6
	.byte	0x3c
	.byte	0x20
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF502
	.byte	0x6
	.byte	0x3e
	.byte	0x9
	.long	0x715
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	0x71a
	.uleb128 0x11
	.long	.LASF503
	.byte	0x6
	.byte	0x33
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x490a
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x33
	.byte	0x13
	.long	0x48ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"key"
	.byte	0x6
	.byte	0x33
	.byte	0x20
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF96
	.byte	0x6
	.byte	0x33
	.byte	0x2b
	.long	0x628
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF502
	.byte	0x6
	.byte	0x36
	.byte	0x9
	.long	0x715
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF504
	.byte	0x6
	.byte	0x27
	.byte	0x8
	.long	0x715
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x497b
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x27
	.byte	0x15
	.long	0x48ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"key"
	.byte	0x6
	.byte	0x27
	.byte	0x22
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"idx"
	.byte	0x6
	.byte	0x29
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x5
	.long	.LASF502
	.byte	0x6
	.byte	0x2c
	.byte	0xa
	.long	0x715
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF505
	.byte	0x6
	.byte	0x19
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a06
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x19
	.byte	0x14
	.long	0x48ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF506
	.byte	0x6
	.byte	0x1b
	.byte	0x9
	.long	0x715
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF498
	.byte	0x6
	.byte	0x1c
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x6
	.string	"i"
	.byte	0x6
	.byte	0x1e
	.byte	0xb
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x5
	.long	.LASF502
	.byte	0x6
	.byte	0x20
	.byte	0xa
	.long	0x715
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF507
	.byte	0x6
	.byte	0x12
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a42
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x12
	.byte	0x15
	.long	0x48ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"max"
	.byte	0x6
	.byte	0x12
	.byte	0x1e
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xe
	.long	.LASF508
	.byte	0x5
	.byte	0x3f
	.byte	0x9
	.long	0x602
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ab0
	.uleb128 0x4
	.long	.LASF509
	.byte	0x5
	.byte	0x3f
	.byte	0x1a
	.long	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"src"
	.byte	0x5
	.byte	0x3f
	.byte	0x25
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"len"
	.byte	0x5
	.byte	0x3f
	.byte	0x2e
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF84
	.byte	0x5
	.byte	0x42
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x6
	.string	"str"
	.byte	0x5
	.byte	0x43
	.byte	0xa
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF510
	.byte	0x5
	.byte	0x31
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b3b
	.uleb128 0x4
	.long	.LASF509
	.byte	0x5
	.byte	0x31
	.byte	0x18
	.long	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF511
	.byte	0x5
	.byte	0x33
	.byte	0xa
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF512
	.byte	0x5
	.byte	0x34
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.quad	.LBB4
	.quad	.LBE4-.LBB4
	.uleb128 0x6
	.string	"i"
	.byte	0x5
	.byte	0x36
	.byte	0xb
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x5
	.long	.LASF513
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF514
	.byte	0x5
	.byte	0x27
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x4b95
	.uleb128 0x4
	.long	.LASF509
	.byte	0x5
	.byte	0x27
	.byte	0x19
	.long	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF513
	.byte	0x5
	.byte	0x27
	.byte	0x28
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF515
	.byte	0x5
	.byte	0x29
	.byte	0x6
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF516
	.byte	0x5
	.byte	0x2a
	.byte	0xa
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF517
	.byte	0x5
	.byte	0x19
	.byte	0x9
	.long	0x602
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c44
	.uleb128 0x4
	.long	.LASF509
	.byte	0x5
	.byte	0x19
	.byte	0x1b
	.long	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF518
	.byte	0x5
	.byte	0x19
	.byte	0x26
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"len"
	.byte	0x5
	.byte	0x19
	.byte	0x31
	.long	0x47f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x4
	.long	.LASF84
	.byte	0x5
	.byte	0x19
	.byte	0x3a
	.long	0x47f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x6
	.string	"idx"
	.byte	0x5
	.byte	0x1b
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x16
	.quad	.LBB3
	.quad	.LBE3-.LBB3
	.uleb128 0x6
	.string	"str"
	.byte	0x5
	.byte	0x1e
	.byte	0xb
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF519
	.byte	0x5
	.byte	0x21
	.byte	0x7
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x6
	.string	"cmp"
	.byte	0x5
	.byte	0x22
	.byte	0x7
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF520
	.byte	0x5
	.byte	0x11
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x4c8f
	.uleb128 0x4
	.long	.LASF509
	.byte	0x5
	.byte	0x11
	.byte	0x19
	.long	0x9a5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF93
	.byte	0x5
	.byte	0x11
	.byte	0x27
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x1
	.string	"max"
	.byte	0x5
	.byte	0x11
	.byte	0x34
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0xc
	.long	.LASF521
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.long	0x9a5
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x4cc8
	.uleb128 0x5
	.long	.LASF162
	.byte	0x5
	.byte	0xd
	.byte	0xf
	.long	0x67b
	.uleb128 0x9
	.byte	0x3
	.quad	interns.0
	.byte	0
	.uleb128 0x25
	.long	.LASF522
	.byte	0x4
	.byte	0x16
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x4d59
	.uleb128 0x4
	.long	.LASF96
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.long	0x1961
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF91
	.byte	0x4
	.byte	0x16
	.byte	0x28
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.long	.LASF523
	.byte	0x4
	.byte	0x16
	.byte	0x34
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF322
	.byte	0x4
	.byte	0x18
	.byte	0x10
	.long	0x1c77
	.uleb128 0x9
	.byte	0x3
	.quad	types.51
	.uleb128 0x2
	.string	"I64"
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.quad	.L55
	.uleb128 0x2
	.string	"F64"
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.quad	.L57
	.uleb128 0x2
	.string	"STR"
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.quad	.L58
	.byte	0
	.uleb128 0x8
	.long	.LASF524
	.byte	0x3
	.byte	0x14
	.byte	0xa
	.long	0x47f
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x4dc7
	.uleb128 0x4
	.long	.LASF93
	.byte	0x3
	.byte	0x14
	.byte	0x1e
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"src"
	.byte	0x3
	.byte	0x14
	.byte	0x2b
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x1
	.string	"len"
	.byte	0x3
	.byte	0x14
	.byte	0x34
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF83
	.byte	0x3
	.byte	0x16
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF385
	.byte	0x3
	.byte	0x17
	.byte	0x6
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xc
	.long	.LASF525
	.byte	0x3
	.byte	0x8
	.byte	0xa
	.long	0x47f
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e45
	.uleb128 0x4
	.long	.LASF442
	.byte	0x3
	.byte	0x8
	.byte	0x1a
	.long	0x9a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"len"
	.byte	0x3
	.byte	0x8
	.byte	0x24
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF84
	.byte	0x3
	.byte	0xa
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF526
	.byte	0x3
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.quad	.LBB2
	.quad	.LBE2-.LBB2
	.uleb128 0x6
	.string	"i"
	.byte	0x3
	.byte	0xc
	.byte	0xb
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF527
	.byte	0x2
	.byte	0x59
	.byte	0x7
	.long	0x4e8
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x4e86
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x59
	.byte	0x16
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF528
	.byte	0x2
	.byte	0x59
	.byte	0x1f
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.long	.LASF529
	.byte	0x2
	.byte	0x53
	.byte	0x7
	.long	0x4e8
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x4eb8
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x53
	.byte	0x15
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF530
	.byte	0x2
	.byte	0x4d
	.byte	0x7
	.long	0x4e8
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x4ef9
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x4d
	.byte	0x14
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"idx"
	.byte	0x2
	.byte	0x4d
	.byte	0x1d
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x11
	.long	.LASF531
	.byte	0x2
	.byte	0x46
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f53
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x46
	.byte	0x13
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"idx"
	.byte	0x2
	.byte	0x46
	.byte	0x1c
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"src"
	.byte	0x2
	.byte	0x46
	.byte	0x27
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF385
	.byte	0x2
	.byte	0x49
	.byte	0x8
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF532
	.byte	0x2
	.byte	0x40
	.byte	0x7
	.long	0x4e8
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x4f85
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x40
	.byte	0x14
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF533
	.byte	0x2
	.byte	0x39
	.byte	0x5
	.long	0x47f
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x4fd5
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x39
	.byte	0x13
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"src"
	.byte	0x2
	.byte	0x39
	.byte	0x1e
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF385
	.byte	0x2
	.byte	0x3b
	.byte	0x8
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF534
	.byte	0x2
	.byte	0x2f
	.byte	0x7
	.long	0x4e8
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x5007
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x2f
	.byte	0x17
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF535
	.byte	0x2
	.byte	0x27
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x5052
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x27
	.byte	0x15
	.long	0x2fbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"max"
	.byte	0x2
	.byte	0x27
	.byte	0x1e
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x4
	.long	.LASF81
	.byte	0x2
	.byte	0x27
	.byte	0x27
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xc
	.long	.LASF536
	.byte	0x2
	.byte	0x21
	.byte	0xb
	.long	0x2fbd
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x508b
	.uleb128 0x5
	.long	.LASF537
	.byte	0x2
	.byte	0x23
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	funcs.40
	.byte	0
	.uleb128 0xc
	.long	.LASF538
	.byte	0x2
	.byte	0x1b
	.byte	0xb
	.long	0x2fbd
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x50c4
	.uleb128 0x5
	.long	.LASF395
	.byte	0x2
	.byte	0x1d
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	code.37
	.byte	0
	.uleb128 0xc
	.long	.LASF539
	.byte	0x2
	.byte	0x15
	.byte	0xb
	.long	0x2fbd
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x50fd
	.uleb128 0x5
	.long	.LASF398
	.byte	0x2
	.byte	0x17
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	globals.49
	.byte	0
	.uleb128 0xc
	.long	.LASF540
	.byte	0x2
	.byte	0xf
	.byte	0xb
	.long	0x2fbd
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x5136
	.uleb128 0x5
	.long	.LASF402
	.byte	0x2
	.byte	0x11
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	locals.38
	.byte	0
	.uleb128 0xc
	.long	.LASF541
	.byte	0x2
	.byte	0x9
	.byte	0xb
	.long	0x2fbd
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x516f
	.uleb128 0x5
	.long	.LASF542
	.byte	0x2
	.byte	0xb
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	consts.39
	.byte	0
	.uleb128 0x25
	.long	.LASF543
	.byte	0x1
	.byte	0x3b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x519c
	.uleb128 0x4
	.long	.LASF544
	.byte	0x1
	.byte	0x3b
	.byte	0x19
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF545
	.byte	0x1
	.byte	0x36
	.byte	0x7
	.long	0x4e8
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x51dd
	.uleb128 0x4
	.long	.LASF544
	.byte	0x1
	.byte	0x36
	.byte	0x18
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF83
	.byte	0x1
	.byte	0x36
	.byte	0x23
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xf
	.long	.LASF546
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.long	0x47f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x522d
	.uleb128 0x4
	.long	.LASF544
	.byte	0x1
	.byte	0x2e
	.byte	0x16
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF489
	.byte	0x1
	.byte	0x2e
	.byte	0x21
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x5
	.long	.LASF83
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xe
	.long	.LASF547
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.long	0x47f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x528c
	.uleb128 0x4
	.long	.LASF544
	.byte	0x1
	.byte	0x22
	.byte	0x17
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF548
	.byte	0x1
	.byte	0x22
	.byte	0x22
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.long	.LASF549
	.byte	0x1
	.byte	0x22
	.byte	0x2c
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF83
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x11
	.long	.LASF550
	.byte	0x1
	.byte	0x1a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x52c8
	.uleb128 0x4
	.long	.LASF544
	.byte	0x1
	.byte	0x1a
	.byte	0x19
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"max"
	.byte	0x1
	.byte	0x1a
	.byte	0x24
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.long	.LASF551
	.byte	0x1
	.byte	0x14
	.byte	0xd
	.long	0x676
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x5301
	.uleb128 0x5
	.long	.LASF93
	.byte	0x1
	.byte	0x16
	.byte	0xf
	.long	0x4ed
	.uleb128 0x9
	.byte	0x3
	.quad	strings.50
	.byte	0
	.uleb128 0x3d
	.long	.LASF552
	.byte	0x1
	.byte	0xe
	.byte	0xd
	.long	0x676
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x6
	.string	"src"
	.byte	0x1
	.byte	0x10
	.byte	0xf
	.long	0x4ed
	.uleb128 0x9
	.byte	0x3
	.quad	src.1
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0x21
	.sleb128 7
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 4
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 30
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 15
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0x6b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 34
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 14
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 26
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 6
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 11
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL0:
	.byte	0x4
	.uleb128 .LBB12-.Ltext0
	.uleb128 .LBE12-.Ltext0
	.byte	0x4
	.uleb128 .LBB13-.Ltext0
	.uleb128 .LBE13-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF118:
	.string	"TK_BANDEQ"
.LASF406:
	.string	"CompilerInit"
.LASF353:
	.string	"EvalRsh"
.LASF455:
	.string	"LexBnot"
.LASF529:
	.string	"VecPeek"
.LASF2:
	.string	"size_t"
.LASF221:
	.string	"OP_NEQ"
.LASF156:
	.string	"TK_ID"
.LASF142:
	.string	"TK_IF"
.LASF160:
	.string	"start"
.LASF444:
	.string	"GetParser"
.LASF551:
	.string	"GetStrings"
.LASF418:
	.string	"BINARY"
.LASF500:
	.string	"GetEnv"
.LASF95:
	.string	"Entry"
.LASF456:
	.string	"LexBxor"
.LASF80:
	.string	"used"
.LASF393:
	.string	"token_ops"
.LASF376:
	.string	"EvalInc"
.LASF63:
	.string	"__jmp_buf_tag"
.LASF364:
	.string	"EvalBinErr"
.LASF478:
	.string	"LexComment"
.LASF53:
	.string	"_IO_codecvt"
.LASF432:
	.string	"ParseId"
.LASF437:
	.string	"ParseIf"
.LASF214:
	.string	"OP_POW"
.LASF337:
	.string	"EvalBandEq"
.LASF149:
	.string	"TK_THEN"
.LASF291:
	.string	"REF_REF"
.LASF33:
	.string	"_IO_save_end"
.LASF520:
	.string	"TableAlloc"
.LASF148:
	.string	"TK_COLON"
.LASF470:
	.string	"LexComma"
.LASF208:
	.string	"OP_POSTDEC"
.LASF278:
	.string	"Load"
.LASF410:
	.string	"parser"
.LASF381:
	.string	"EvalUnaErr"
.LASF542:
	.string	"consts"
.LASF265:
	.string	"strtoll"
.LASF374:
	.string	"MINUS"
.LASF218:
	.string	"OP_LSH"
.LASF361:
	.string	"EvalMul"
.LASF26:
	.string	"_IO_write_base"
.LASF504:
	.string	"MapGet"
.LASF332:
	.string	"BinPromote"
.LASF154:
	.string	"TK_F64"
.LASF433:
	.string	"ParseFunc"
.LASF440:
	.string	"ParseMatch"
.LASF170:
	.string	"PREC_POWEQ"
.LASF515:
	.string	"old_cstr"
.LASF42:
	.string	"_lock"
.LASF318:
	.string	"BOREQ"
.LASF235:
	.string	"OP_BANDEQ"
.LASF446:
	.string	"ascii"
.LASF174:
	.string	"PREC_AND"
.LASF363:
	.string	"EvalAdd"
.LASF540:
	.string	"GetLocals"
.LASF121:
	.string	"TK_BOREQ"
.LASF334:
	.string	"EvalLshEq"
.LASF91:
	.string	"type"
.LASF534:
	.string	"VecCommit"
.LASF397:
	.string	"out_idx"
.LASF31:
	.string	"_IO_save_base"
.LASF78:
	.string	"Arena"
.LASF436:
	.string	"ParseFor"
.LASF438:
	.string	"cond"
.LASF340:
	.string	"EvalDivEq"
.LASF399:
	.string	"evar"
.LASF120:
	.string	"TK_BOR"
.LASF550:
	.string	"ArenaAlloc"
.LASF388:
	.string	"GlobalAssignConst"
.LASF484:
	.string	"LexReinit"
.LASF339:
	.string	"EvalModEq"
.LASF442:
	.string	"cstr"
.LASF527:
	.string	"VecPeekN"
.LASF35:
	.string	"_chain"
.LASF139:
	.string	"TK_LC"
.LASF128:
	.string	"TK_LE"
.LASF317:
	.string	"BANDEQ"
.LASF380:
	.string	"EvalNot"
.LASF346:
	.string	"EvalAnd"
.LASF39:
	.string	"_cur_column"
.LASF199:
	.string	"Parser"
.LASF135:
	.string	"TK_LP"
.LASF477:
	.string	"OnSig"
.LASF137:
	.string	"TK_LS"
.LASF127:
	.string	"TK_LT"
.LASF13:
	.string	"__uint8_t"
.LASF402:
	.string	"locals"
.LASF347:
	.string	"EvalGe"
.LASF206:
	.string	"OP_PREDEC"
.LASF212:
	.string	"OP_DIV"
.LASF213:
	.string	"OP_MOD"
.LASF348:
	.string	"EvalGt"
.LASF327:
	.string	"F64_F64"
.LASF434:
	.string	"ParseWhile"
.LASF544:
	.string	"arena"
.LASF228:
	.string	"OP_MOV"
.LASF420:
	.string	"rule"
.LASF93:
	.string	"strings"
.LASF183:
	.string	"PREC_POW"
.LASF17:
	.string	"long int"
.LASF499:
	.string	"EnvAlloc"
.LASF236:
	.string	"OP_BOREQ"
.LASF333:
	.string	"EvalRshEq"
.LASF179:
	.string	"PREC_GTLT"
.LASF237:
	.string	"OP_BXOREQ"
.LASF287:
	.string	"CONST_CONST"
.LASF52:
	.string	"_IO_marker"
.LASF415:
	.string	"ParseExpr"
.LASF284:
	.string	"main"
.LASF449:
	.string	"COMMA"
.LASF387:
	.string	"GlobalAssignRef"
.LASF441:
	.string	"ParseNodeLog"
.LASF177:
	.string	"PREC_BAND"
.LASF427:
	.string	"ParseGroup"
.LASF151:
	.string	"TK_COMMA"
.LASF296:
	.string	"common"
.LASF168:
	.string	"PREC_TERMEQ"
.LASF422:
	.string	"ParseRef"
.LASF494:
	.string	"EnvGet"
.LASF220:
	.string	"OP_EQ"
.LASF145:
	.string	"TK_SEMI"
.LASF101:
	.string	"TK_NEQ"
.LASF242:
	.string	"MODE_LOCAL"
.LASF293:
	.string	"CALL_CONST"
.LASF453:
	.string	"LexBor"
.LASF313:
	.string	"MULEQ"
.LASF424:
	.string	"ParseF64"
.LASF319:
	.string	"BXOREQ"
.LASF490:
	.string	"Throw"
.LASF416:
	.string	"rules"
.LASF110:
	.string	"TK_MULEQ"
.LASF12:
	.string	"signed char"
.LASF173:
	.string	"PREC_OR"
.LASF69:
	.string	"uint8_t"
.LASF536:
	.string	"GetFuncs"
.LASF379:
	.string	"EvalBnot"
.LASF443:
	.string	"ParserInit"
.LASF62:
	.string	"_IO_FILE"
.LASF238:
	.string	"OP_LSHEQ"
.LASF54:
	.string	"_IO_wide_data"
.LASF384:
	.string	"GlobalAssign"
.LASF279:
	.string	"file"
.LASF122:
	.string	"TK_OR"
.LASF355:
	.string	"EvalBxor"
.LASF105:
	.string	"TK_ADDADD"
.LASF10:
	.string	"unsigned char"
.LASF46:
	.string	"_freeres_list"
.LASF342:
	.string	"EvalSubEq"
.LASF255:
	.string	"fclose"
.LASF252:
	.string	"ncode"
.LASF460:
	.string	"LexReturn"
.LASF273:
	.string	"realloc"
.LASF129:
	.string	"TK_LSH"
.LASF240:
	.string	"OP_N"
.LASF241:
	.string	"Mode"
.LASF554:
	.string	"__builtin_va_list"
.LASF225:
	.string	"OP_GE"
.LASF312:
	.string	"SUBEQ"
.LASF3:
	.string	"__gnuc_va_list"
.LASF224:
	.string	"OP_GT"
.LASF489:
	.string	"bytes"
.LASF107:
	.string	"TK_SUBEQ"
.LASF266:
	.string	"__sysv_signal"
.LASF194:
	.string	"PT_CALL"
.LASF96:
	.string	"value"
.LASF315:
	.string	"MODEQ"
.LASF299:
	.string	"BinCallConst"
.LASF21:
	.string	"char"
.LASF231:
	.string	"OP_MULEQ"
.LASF362:
	.string	"EvalSub"
.LASF482:
	.string	"LexEof"
.LASF219:
	.string	"OP_RSH"
.LASF195:
	.string	"PT_N"
.LASF126:
	.string	"TK_EQEQ"
.LASF509:
	.string	"table"
.LASF304:
	.string	"BinConstRef"
.LASF75:
	.string	"_IO_lock_t"
.LASF15:
	.string	"__uint16_t"
.LASF290:
	.string	"REF_CONST"
.LASF264:
	.string	"signal"
.LASF349:
	.string	"EvalLe"
.LASF483:
	.string	"LexSet"
.LASF365:
	.string	"CompileUna"
.LASF485:
	.string	"LexerInit"
.LASF350:
	.string	"EvalLt"
.LASF297:
	.string	"BinCallCall"
.LASF189:
	.string	"PREC_CALL"
.LASF285:
	.string	"CompileBin"
.LASF113:
	.string	"TK_DIV"
.LASF23:
	.string	"_IO_read_ptr"
.LASF514:
	.string	"TableReput"
.LASF115:
	.string	"TK_MOD"
.LASF5:
	.string	"fp_offset"
.LASF257:
	.string	"ftell"
.LASF136:
	.string	"TK_RP"
.LASF138:
	.string	"TK_RS"
.LASF462:
	.string	"LexEq"
.LASF55:
	.string	"stdin"
.LASF466:
	.string	"LexNum"
.LASF175:
	.string	"PREC_BOR"
.LASF230:
	.string	"OP_SUBEQ"
.LASF488:
	.string	"stream"
.LASF306:
	.string	"node"
.LASF481:
	.string	"LexLine"
.LASF180:
	.string	"PREC_SH"
.LASF211:
	.string	"OP_MUL"
.LASF497:
	.string	"vars"
.LASF411:
	.string	"ParseStmt"
.LASF34:
	.string	"_markers"
.LASF469:
	.string	"LexSub"
.LASF202:
	.string	"OP_NOP"
.LASF537:
	.string	"funcs"
.LASF203:
	.string	"OP_NOT"
.LASF555:
	.string	"__va_list_tag"
.LASF396:
	.string	"GlobalGet"
.LASF209:
	.string	"OP_ADD"
.LASF262:
	.string	"printf"
.LASF207:
	.string	"OP_POSTINC"
.LASF245:
	.string	"MODE_IMM"
.LASF545:
	.string	"ArenaOff"
.LASF76:
	.string	"Void"
.LASF404:
	.string	"ConstPush"
.LASF159:
	.string	"Lexer"
.LASF205:
	.string	"OP_PREINC"
.LASF301:
	.string	"BinRefRef"
.LASF413:
	.string	"EXPR"
.LASF43:
	.string	"_offset"
.LASF461:
	.string	"LexGt"
.LASF426:
	.string	"ParseCall"
.LASF389:
	.string	"const_idx"
.LASF277:
	.string	"Deinit"
.LASF530:
	.string	"VecGet"
.LASF506:
	.string	"entries"
.LASF345:
	.string	"EvalOr"
.LASF98:
	.string	"TokenType"
.LASF243:
	.string	"MODE_CONST"
.LASF467:
	.string	"LexDiv"
.LASF476:
	.string	"LexMod"
.LASF248:
	.string	"ilocals"
.LASF556:
	.string	"free"
.LASF133:
	.string	"TK_RSH"
.LASF391:
	.string	"LocalAssign"
.LASF503:
	.string	"MapPut"
.LASF445:
	.string	"lexer"
.LASF18:
	.string	"__uint64_t"
.LASF343:
	.string	"EvalAddEq"
.LASF254:
	.string	"in_fn"
.LASF223:
	.string	"OP_LE"
.LASF408:
	.string	"GetCompiler"
.LASF8:
	.string	"long unsigned int"
.LASF308:
	.string	"BAND"
.LASF222:
	.string	"OP_LT"
.LASF37:
	.string	"_flags2"
.LASF25:
	.string	"_IO_read_base"
.LASF517:
	.string	"TableFind"
.LASF549:
	.string	"p2align"
.LASF161:
	.string	"line"
.LASF50:
	.string	"_unused2"
.LASF463:
	.string	"LexLt"
.LASF367:
	.string	"CALL"
.LASF329:
	.string	"STR_I64"
.LASF65:
	.string	"__mask_was_saved"
.LASF451:
	.string	"SEMI"
.LASF292:
	.string	"REF_CALL"
.LASF501:
	.string	"MapDel"
.LASF525:
	.string	"StringHash"
.LASF495:
	.string	"EvarToVar"
.LASF331:
	.string	"STR_STR"
.LASF553:
	.string	"GNU C2X 13.3.0 -masm=intel -mtune=generic -march=x86-64 -g -O0 -std=c2x -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF429:
	.string	"ParseUnary"
.LASF38:
	.string	"_old_offset"
.LASF108:
	.string	"TK_SUBSUB"
.LASF276:
	.string	"args"
.LASF338:
	.string	"EvalPowEq"
.LASF508:
	.string	"TablePut"
.LASF358:
	.string	"EvalPow"
.LASF311:
	.string	"ADDEQ"
.LASF187:
	.string	"PREC_MEMBER"
.LASF288:
	.string	"CONST_REF"
.LASF439:
	.string	"stmt"
.LASF102:
	.string	"TK_BNOT"
.LASF192:
	.string	"PT_CONST"
.LASF16:
	.string	"__uint32_t"
.LASF474:
	.string	"LexLp"
.LASF57:
	.string	"long long int"
.LASF58:
	.string	"va_list"
.LASF196:
	.string	"ParseNode"
.LASF123:
	.string	"TK_BXOR"
.LASF378:
	.string	"EvalPlus"
.LASF141:
	.string	"TK_DOT"
.LASF249:
	.string	"icode"
.LASF109:
	.string	"TK_MUL"
.LASF74:
	.string	"double"
.LASF227:
	.string	"OP_OR"
.LASF100:
	.string	"TK_NOT"
.LASF28:
	.string	"_IO_write_end"
.LASF89:
	.string	"ValueType"
.LASF535:
	.string	"VecAlloc"
.LASF250:
	.string	"nconsts"
.LASF182:
	.string	"PREC_FACT"
.LASF103:
	.string	"TK_ADD"
.LASF320:
	.string	"LSHEQ"
.LASF475:
	.string	"LexBand"
.LASF532:
	.string	"VecPop"
.LASF4:
	.string	"gp_offset"
.LASF176:
	.string	"PREC_BXOR"
.LASF454:
	.string	"LexLc"
.LASF130:
	.string	"TK_LSHEQ"
.LASF73:
	.string	"float"
.LASF357:
	.string	"EvalBand"
.LASF305:
	.string	"BinConstConst"
.LASF458:
	.string	"LexLs"
.LASF546:
	.string	"ArenaPop"
.LASF114:
	.string	"TK_DIVEQ"
.LASF29:
	.string	"_IO_buf_base"
.LASF158:
	.string	"Token"
.LASF116:
	.string	"TK_MODEQ"
.LASF9:
	.string	"unsigned int"
.LASF521:
	.string	"GetInterns"
.LASF390:
	.string	"op_idx"
.LASF280:
	.string	"Repl"
.LASF167:
	.string	"PREC_SHEQ"
.LASF507:
	.string	"MapAlloc"
.LASF258:
	.string	"fseek"
.LASF48:
	.string	"__pad5"
.LASF369:
	.string	"UnaRef"
.LASF244:
	.string	"MODE_GLOBAL"
.LASF201:
	.string	"OpCode"
.LASF526:
	.string	"prime"
.LASF85:
	.string	"VALUE_I64"
.LASF400:
	.string	"GlobalPush"
.LASF468:
	.string	"LexDot"
.LASF6:
	.string	"overflow_arg_area"
.LASF401:
	.string	"LocalGet"
.LASF513:
	.string	"old_str"
.LASF386:
	.string	"GlobalAssignCall"
.LASF283:
	.string	"MemAlloc"
.LASF448:
	.string	"COMMENT"
.LASF22:
	.string	"_flags"
.LASF321:
	.string	"RSHEQ"
.LASF472:
	.string	"LexMul"
.LASF83:
	.string	"offset"
.LASF547:
	.string	"ArenaPush"
.LASF281:
	.string	"Init"
.LASF166:
	.string	"PREC_BITEQ"
.LASF87:
	.string	"VALUE_STR"
.LASF134:
	.string	"TK_RSHEQ"
.LASF66:
	.string	"__saved_mask"
.LASF49:
	.string	"_mode"
.LASF480:
	.string	"LexNot"
.LASF253:
	.string	"Compiler"
.LASF541:
	.string	"GetConsts"
.LASF64:
	.string	"__jmpbuf"
.LASF373:
	.string	"PLUS"
.LASF82:
	.string	"String"
.LASF232:
	.string	"OP_DIVEQ"
.LASF44:
	.string	"_codecvt"
.LASF471:
	.string	"LexAdd"
.LASF59:
	.string	"__jmp_buf"
.LASF233:
	.string	"OP_MODEQ"
.LASF210:
	.string	"OP_SUB"
.LASF417:
	.string	"UNARY"
.LASF298:
	.string	"BinCallRef"
.LASF336:
	.string	"EvalBorEq"
.LASF271:
	.string	"calloc"
.LASF368:
	.string	"UnaCall"
.LASF204:
	.string	"OP_BNOT"
.LASF185:
	.string	"PREC_PLUSMINUS"
.LASF516:
	.string	"new_str"
.LASF356:
	.string	"EvalBor"
.LASF217:
	.string	"OP_BXOR"
.LASF51:
	.string	"FILE"
.LASF246:
	.string	"Func"
.LASF247:
	.string	"iconsts"
.LASF286:
	.string	"token_type"
.LASF502:
	.string	"entry"
.LASF150:
	.string	"TK_END"
.LASF360:
	.string	"EvalDiv"
.LASF392:
	.string	"TkToOp"
.LASF377:
	.string	"EvalMinus"
.LASF153:
	.string	"TK_I64"
.LASF539:
	.string	"GetGlobals"
.LASF324:
	.string	"I64_F64"
.LASF268:
	.string	"longjmp"
.LASF394:
	.string	"OpPush"
.LASF239:
	.string	"OP_RSHEQ"
.LASF186:
	.string	"PREC_PRETERM"
.LASF226:
	.string	"OP_AND"
.LASF162:
	.string	"interns"
.LASF294:
	.string	"CALL_REF"
.LASF548:
	.string	"size"
.LASF251:
	.string	"nlocals"
.LASF155:
	.string	"TK_STR"
.LASF533:
	.string	"VecPush"
.LASF528:
	.string	"peek"
.LASF512:
	.string	"old_len"
.LASF7:
	.string	"reg_save_area"
.LASF414:
	.string	"WHILE"
.LASF165:
	.string	"PREC_LIST"
.LASF70:
	.string	"uint16_t"
.LASF19:
	.string	"__off_t"
.LASF403:
	.string	"LocalPush"
.LASF147:
	.string	"TK_WHILE"
.LASF99:
	.string	"TK_EOS"
.LASF67:
	.string	"jmp_buf"
.LASF464:
	.string	"LexSemi"
.LASF88:
	.string	"VALUE_N"
.LASF538:
	.string	"GetCode"
.LASF106:
	.string	"TK_SUB"
.LASF169:
	.string	"PREC_FACTEQ"
.LASF47:
	.string	"_freeres_buf"
.LASF375:
	.string	"EvalDec"
.LASF144:
	.string	"TK_ELSE"
.LASF314:
	.string	"DIVEQ"
.LASF303:
	.string	"BinConstCall"
.LASF419:
	.string	"GROUP"
.LASF326:
	.string	"F64_I64"
.LASF184:
	.string	"PREC_NOT"
.LASF473:
	.string	"LexRp"
.LASF351:
	.string	"EvalNeq"
.LASF457:
	.string	"LexRs"
.LASF164:
	.string	"PREC_NONE"
.LASF32:
	.string	"_IO_backup_base"
.LASF41:
	.string	"_shortbuf"
.LASF81:
	.string	"szof"
.LASF447:
	.string	"LINE"
.LASF328:
	.string	"F64_STR"
.LASF385:
	.string	"dest"
.LASF519:
	.string	"str_b"
.LASF157:
	.string	"TK_N"
.LASF190:
	.string	"PREC_POSTTERM"
.LASF124:
	.string	"TK_BXOREQ"
.LASF274:
	.string	"malloc"
.LASF372:
	.string	"BNOT"
.LASF20:
	.string	"__off64_t"
.LASF498:
	.string	"old_max"
.LASF395:
	.string	"code"
.LASF259:
	.string	"fopen"
.LASF270:
	.string	"memcmp"
.LASF407:
	.string	"FnCommit"
.LASF310:
	.string	"EQEQ"
.LASF302:
	.string	"BinRefConst"
.LASF30:
	.string	"_IO_buf_end"
.LASF479:
	.string	"LexStr"
.LASF487:
	.string	"IoRead"
.LASF354:
	.string	"EvalLsh"
.LASF398:
	.string	"globals"
.LASF425:
	.string	"ParseI64"
.LASF335:
	.string	"EvalBxorEq"
.LASF94:
	.string	"name"
.LASF267:
	.string	"__isoc23_strtoll"
.LASF263:
	.string	"strtod"
.LASF518:
	.string	"str_a"
.LASF193:
	.string	"PT_REF"
.LASF163:
	.string	"Prec"
.LASF531:
	.string	"VecSet"
.LASF496:
	.string	"EnvGrow"
.LASF56:
	.string	"stderr"
.LASF14:
	.string	"short int"
.LASF72:
	.string	"uint64_t"
.LASF382:
	.string	"CompileAssign"
.LASF140:
	.string	"TK_RC"
.LASF117:
	.string	"TK_BAND"
.LASF486:
	.string	"GetLexer"
.LASF188:
	.string	"PREC_INDEX"
.LASF295:
	.string	"CALL_CALL"
.LASF412:
	.string	"stmts"
.LASF40:
	.string	"_vtable_offset"
.LASF330:
	.string	"STR_F64"
.LASF505:
	.string	"MapGrow"
.LASF261:
	.string	"_setjmp"
.LASF510:
	.string	"TableGrow"
.LASF493:
	.string	"EnvPut"
.LASF68:
	.string	"__sighandler_t"
.LASF370:
	.string	"UnaConst"
.LASF146:
	.string	"TK_DO"
.LASF60:
	.string	"__val"
.LASF119:
	.string	"TK_AND"
.LASF172:
	.string	"PREC_TERN"
.LASF405:
	.string	"BinCast"
.LASF104:
	.string	"TK_ADDEQ"
.LASF359:
	.string	"EvalMod"
.LASF309:
	.string	"BXOR"
.LASF450:
	.string	"COLON"
.LASF435:
	.string	"ParseDo"
.LASF344:
	.string	"EvalMov"
.LASF452:
	.string	"LexRc"
.LASF524:
	.string	"StringAlloc"
.LASF171:
	.string	"PREC_EQ"
.LASF272:
	.string	"memcpy"
.LASF522:
	.string	"ValueSet"
.LASF423:
	.string	"ParseStr"
.LASF24:
	.string	"_IO_read_end"
.LASF125:
	.string	"TK_EQ"
.LASF323:
	.string	"I64_I64"
.LASF431:
	.string	"ParseEos"
.LASF181:
	.string	"PREC_TERM"
.LASF92:
	.string	"Table"
.LASF90:
	.string	"Value"
.LASF492:
	.string	"EnvDel"
.LASF71:
	.string	"uint32_t"
.LASF511:
	.string	"old_base"
.LASF325:
	.string	"I64_STR"
.LASF143:
	.string	"TK_FOR"
.LASF36:
	.string	"_fileno"
.LASF77:
	.string	"Label"
.LASF289:
	.string	"CONST_CALL"
.LASF282:
	.string	"MemDealloc"
.LASF316:
	.string	"POWEQ"
.LASF45:
	.string	"_wide_data"
.LASF200:
	.string	"token"
.LASF465:
	.string	"LexColon"
.LASF216:
	.string	"OP_BOR"
.LASF421:
	.string	"DONE"
.LASF112:
	.string	"TK_POWEQ"
.LASF111:
	.string	"TK_POW"
.LASF341:
	.string	"EvalMulEq"
.LASF543:
	.string	"ArenaClear"
.LASF229:
	.string	"OP_ADDEQ"
.LASF11:
	.string	"short unsigned int"
.LASF97:
	.string	"Evar"
.LASF275:
	.string	"nargs"
.LASF79:
	.string	"base"
.LASF256:
	.string	"fread"
.LASF191:
	.string	"ParseType"
.LASF27:
	.string	"_IO_write_ptr"
.LASF352:
	.string	"EvalEqEq"
.LASF132:
	.string	"TK_GE"
.LASF383:
	.string	"compiler"
.LASF366:
	.string	"CONST"
.LASF131:
	.string	"TK_GT"
.LASF307:
	.string	"BinFold"
.LASF428:
	.string	"ParseBinary"
.LASF260:
	.string	"fgets"
.LASF552:
	.string	"GetSrc"
.LASF459:
	.string	"LexId"
.LASF300:
	.string	"BinRefCall"
.LASF84:
	.string	"hash"
.LASF371:
	.string	"UnaFold"
.LASF409:
	.string	"Parse"
.LASF198:
	.string	"prec"
.LASF178:
	.string	"PREC_EQNEQ"
.LASF61:
	.string	"__sigset_t"
.LASF523:
	.string	"data"
.LASF215:
	.string	"OP_BAND"
.LASF322:
	.string	"types"
.LASF269:
	.string	"vfprintf"
.LASF86:
	.string	"VALUE_F64"
.LASF234:
	.string	"OP_POWEQ"
.LASF197:
	.string	"ParseRule"
.LASF491:
	.string	"GetJmp"
.LASF430:
	.string	"ParseErr"
.LASF152:
	.string	"TK_RET"
	.section	.debug_line_str,"MS",@progbits,1
.LASF0:
	.string	"bs.c"
.LASF1:
	.string	"/home/morrantho/Documents/code/c/bs2"
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
