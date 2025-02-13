	.file	"bs.c"
	.intel_syntax noprefix
# GNU C2X (Ubuntu 13.3.0-6ubuntu2~24.04) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -masm=intel -mtune=generic -march=x86-64 -g -O0 -std=c2x -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
.Ltext0:
	.file 0 "/home/morrantho/Documents/code/c/yep" "bs.c"
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
	lea	rax, src.3[rip]	# _1,
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
	lea	rax, strings.45[rip]	# _1,
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
# std/arena.h:30: 	arena->used = 0;
	.loc 1 30 14
	mov	rax, QWORD PTR -8[rbp]	# tmp89, arena
	mov	DWORD PTR 8[rax], 0	# arena_8(D)->used,
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
	lea	rax, globals.1[rip]	# _1,
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
	lea	rax, types.50[rip]	# tmp87,
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
	lea	rax, interns.2[rip]	# _1,
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
	.type	GetEnv, @function
GetEnv:
.LFB29:
	.file 6 "std/map.h"
	.loc 6 20 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/map.h:22: 	return &env;
	.loc 6 22 9
	lea	rax, env.0[rip]	# _1,
# std/map.h:23: }
	.loc 6 23 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE29:
	.size	GetEnv, .-GetEnv
	.globl	MapAlloc
	.type	MapAlloc, @function
MapAlloc:
.LFB30:
	.loc 6 26 1
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
# std/map.h:27: 	map->base = calloc( max, sizeof( Entry ) );
	.loc 6 27 14
	mov	eax, DWORD PTR -12[rbp]	# _1, max
	mov	esi, 16	#,
	mov	rdi, rax	#, _1
	call	calloc@PLT	#
	mov	rdx, rax	# _2, tmp84
# std/map.h:27: 	map->base = calloc( max, sizeof( Entry ) );
	.loc 6 27 12 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp85, map
	mov	QWORD PTR [rax], rdx	# map_6(D)->base, _2
# std/map.h:28: 	map->len = 0;
	.loc 6 28 11
	mov	rax, QWORD PTR -8[rbp]	# tmp86, map
	mov	DWORD PTR 8[rax], 0	# map_6(D)->len,
# std/map.h:29: 	map->max = max;
	.loc 6 29 11
	mov	rax, QWORD PTR -8[rbp]	# tmp87, map
	mov	edx, DWORD PTR -12[rbp]	# tmp88, max
	mov	DWORD PTR 12[rax], edx	# map_6(D)->max, tmp88
# std/map.h:30: }
	.loc 6 30 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE30:
	.size	MapAlloc, .-MapAlloc
	.globl	MapGrow
	.type	MapGrow, @function
MapGrow:
.LFB31:
	.loc 6 33 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 48	#,
	mov	QWORD PTR -40[rbp], rdi	# map, map
# std/map.h:34: 	Entry *entries = map->base;
	.loc 6 34 9
	mov	rax, QWORD PTR -40[rbp]	# tmp89, map
	mov	rax, QWORD PTR [rax]	# tmp90, map_12(D)->base
	mov	QWORD PTR -16[rbp], rax	# entries, tmp90
# std/map.h:35: 	U32 old_max = map->max;
	.loc 6 35 6
	mov	rax, QWORD PTR -40[rbp]	# tmp91, map
	mov	eax, DWORD PTR 12[rax]	# tmp92, map_12(D)->max
	mov	DWORD PTR -20[rbp], eax	# old_max, tmp92
# std/map.h:36: 	MapAlloc( map, map->max << 1 );
	.loc 6 36 20
	mov	rax, QWORD PTR -40[rbp]	# tmp93, map
	mov	eax, DWORD PTR 12[rax]	# _1, map_12(D)->max
# std/map.h:36: 	MapAlloc( map, map->max << 1 );
	.loc 6 36 2
	lea	edx, [rax+rax]	# _2,
	mov	rax, QWORD PTR -40[rbp]	# tmp94, map
	mov	esi, edx	#, _2
	mov	rdi, rax	#, tmp94
	call	MapAlloc	#
.LBB6:
# std/map.h:37: 	for( U32 i = 0; i < old_max; i++ )
	.loc 6 37 11
	mov	DWORD PTR -24[rbp], 0	# i,
# std/map.h:37: 	for( U32 i = 0; i < old_max; i++ )
	.loc 6 37 2
	jmp	.L90	#
.L93:
.LBB7:
# std/map.h:39: 		Entry *entry = &entries[ i ];
	.loc 6 39 26
	mov	eax, DWORD PTR -24[rbp]	# _3, i
	sal	rax, 4	# _3,
	mov	rdx, rax	# _4, _3
# std/map.h:39: 		Entry *entry = &entries[ i ];
	.loc 6 39 10
	mov	rax, QWORD PTR -16[rbp]	# tmp98, entries
	add	rax, rdx	# tmp97, _4
	mov	QWORD PTR -8[rbp], rax	# entry, tmp97
# std/map.h:40: 		if( !entry->key ){ continue; }
	.loc 6 40 13
	mov	rax, QWORD PTR -8[rbp]	# tmp99, entry
	mov	rax, QWORD PTR [rax]	# _5, entry_18->D.4226.key
# std/map.h:40: 		if( !entry->key ){ continue; }
	.loc 6 40 5
	test	rax, rax	# _5
	je	.L94	#,
# std/map.h:41: 		MapPut( map, entry->key, entry->value );
	.loc 6 41 3
	mov	rax, QWORD PTR -8[rbp]	# tmp100, entry
	mov	rdx, QWORD PTR 8[rax]	# _6, entry_18->value
	mov	rax, QWORD PTR -8[rbp]	# tmp101, entry
	mov	rcx, QWORD PTR [rax]	# _7, entry_18->D.4226.key
	mov	rax, QWORD PTR -40[rbp]	# tmp102, map
	mov	rsi, rcx	#, _7
	mov	rdi, rax	#, tmp102
	call	MapPut	#
	jmp	.L92	#
.L94:
# std/map.h:40: 		if( !entry->key ){ continue; }
	.loc 6 40 22
	nop	
.L92:
.LBE7:
# std/map.h:37: 	for( U32 i = 0; i < old_max; i++ )
	.loc 6 37 32 discriminator 2
	add	DWORD PTR -24[rbp], 1	# i,
.L90:
# std/map.h:37: 	for( U32 i = 0; i < old_max; i++ )
	.loc 6 37 20 discriminator 1
	mov	eax, DWORD PTR -24[rbp]	# tmp103, i
	cmp	eax, DWORD PTR -20[rbp]	# tmp103, old_max
	jb	.L93	#,
.LBE6:
# std/map.h:43: 	free( entries );
	.loc 6 43 2
	mov	rax, QWORD PTR -16[rbp]	# tmp104, entries
	mov	rdi, rax	#, tmp104
	call	free@PLT	#
# std/map.h:44: }
	.loc 6 44 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE31:
	.size	MapGrow, .-MapGrow
	.globl	MapGet
	.type	MapGet, @function
MapGet:
.LFB32:
	.loc 6 47 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi	# map, map
	mov	QWORD PTR -32[rbp], rsi	# key, key
# std/map.h:48: 	U32 idx = key->hash & ( map->max - 1 );
	.loc 6 48 15
	mov	rax, QWORD PTR -32[rbp]	# tmp95, key
	mov	edx, DWORD PTR 8[rax]	# _1, key_15(D)->hash
# std/map.h:48: 	U32 idx = key->hash & ( map->max - 1 );
	.loc 6 48 29
	mov	rax, QWORD PTR -24[rbp]	# tmp96, map
	mov	eax, DWORD PTR 12[rax]	# _2, map_16(D)->max
# std/map.h:48: 	U32 idx = key->hash & ( map->max - 1 );
	.loc 6 48 35
	sub	eax, 1	# _3,
# std/map.h:48: 	U32 idx = key->hash & ( map->max - 1 );
	.loc 6 48 6
	and	eax, edx	# tmp97, _1
	mov	DWORD PTR -12[rbp], eax	# idx, tmp97
.L99:
.LBB8:
# std/map.h:51: 		Entry *entry = &map->base[ idx ];
	.loc 6 51 22
	mov	rax, QWORD PTR -24[rbp]	# tmp98, map
	mov	rax, QWORD PTR [rax]	# _4, map_16(D)->base
# std/map.h:51: 		Entry *entry = &map->base[ idx ];
	.loc 6 51 28
	mov	edx, DWORD PTR -12[rbp]	# _5, idx
	sal	rdx, 4	# _6,
# std/map.h:51: 		Entry *entry = &map->base[ idx ];
	.loc 6 51 10
	add	rax, rdx	# tmp99, _6
	mov	QWORD PTR -8[rbp], rax	# entry, tmp99
# std/map.h:52: 		if( !entry->key ){ return entry; }
	.loc 6 52 13
	mov	rax, QWORD PTR -8[rbp]	# tmp100, entry
	mov	rax, QWORD PTR [rax]	# _7, entry_18->D.4226.key
# std/map.h:52: 		if( !entry->key ){ return entry; }
	.loc 6 52 5
	test	rax, rax	# _7
	jne	.L96	#,
# std/map.h:52: 		if( !entry->key ){ return entry; }
	.loc 6 52 29 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# _13, entry
# std/map.h:52: 		if( !entry->key ){ return entry; }
	.loc 6 52 29 is_stmt 0
	jmp	.L97	#
.L96:
# std/map.h:53: 		if( entry->key == key ){ return entry; }
	.loc 6 53 12 is_stmt 1
	mov	rax, QWORD PTR -8[rbp]	# tmp101, entry
	mov	rax, QWORD PTR [rax]	# _8, entry_18->D.4226.key
# std/map.h:53: 		if( entry->key == key ){ return entry; }
	.loc 6 53 5
	cmp	QWORD PTR -32[rbp], rax	# key, _8
	jne	.L98	#,
# std/map.h:53: 		if( entry->key == key ){ return entry; }
	.loc 6 53 35 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# _13, entry
# std/map.h:53: 		if( entry->key == key ){ return entry; }
	.loc 6 53 35 is_stmt 0
	jmp	.L97	#
.L98:
.LBE8:
# std/map.h:49: 	for( ;; idx = ( idx + 1 ) & ( map->max - 1 ) )
	.loc 6 49 22 is_stmt 1
	mov	eax, DWORD PTR -12[rbp]	# tmp102, idx
	lea	edx, 1[rax]	# _9,
# std/map.h:49: 	for( ;; idx = ( idx + 1 ) & ( map->max - 1 ) )
	.loc 6 49 35
	mov	rax, QWORD PTR -24[rbp]	# tmp103, map
	mov	eax, DWORD PTR 12[rax]	# _10, map_16(D)->max
# std/map.h:49: 	for( ;; idx = ( idx + 1 ) & ( map->max - 1 ) )
	.loc 6 49 41
	sub	eax, 1	# _11,
# std/map.h:49: 	for( ;; idx = ( idx + 1 ) & ( map->max - 1 ) )
	.loc 6 49 14
	and	eax, edx	# tmp104, _9
	mov	DWORD PTR -12[rbp], eax	# idx, tmp104
# std/map.h:50: 	{
	.loc 6 50 2
	jmp	.L99	#
.L97:
# std/map.h:56: }
	.loc 6 56 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE32:
	.size	MapGet, .-MapGet
	.globl	MapPut
	.type	MapPut, @function
MapPut:
.LFB33:
	.loc 6 59 1
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
	mov	QWORD PTR -40[rbp], rdx	# value, value
# std/map.h:60: 	if( map->len > map->max ){ MapGrow( map ); }
	.loc 6 60 9
	mov	rax, QWORD PTR -24[rbp]	# tmp89, map
	mov	eax, DWORD PTR 8[rax]	# _1, map_10(D)->len
# std/map.h:60: 	if( map->len > map->max ){ MapGrow( map ); }
	.loc 6 60 20
	mov	rdx, QWORD PTR -24[rbp]	# tmp90, map
	mov	edx, DWORD PTR 12[rdx]	# _2, map_10(D)->max
# std/map.h:60: 	if( map->len > map->max ){ MapGrow( map ); }
	.loc 6 60 4
	cmp	edx, eax	# _2, _1
	jnb	.L101	#,
# std/map.h:60: 	if( map->len > map->max ){ MapGrow( map ); }
	.loc 6 60 29 discriminator 1
	mov	rax, QWORD PTR -24[rbp]	# tmp91, map
	mov	rdi, rax	#, tmp91
	call	MapGrow	#
.L101:
# std/map.h:61: 	Entry *entry = MapGet( map, key );
	.loc 6 61 17
	mov	rdx, QWORD PTR -32[rbp]	# tmp92, key
	mov	rax, QWORD PTR -24[rbp]	# tmp93, map
	mov	rsi, rdx	#, tmp92
	mov	rdi, rax	#, tmp93
	call	MapGet	#
	mov	QWORD PTR -8[rbp], rax	# entry, tmp94
# std/map.h:62: 	map->len += entry->key == NULL;
	.loc 6 62 5
	mov	rax, QWORD PTR -24[rbp]	# tmp95, map
	mov	edx, DWORD PTR 8[rax]	# _3, map_10(D)->len
# std/map.h:62: 	map->len += entry->key == NULL;
	.loc 6 62 19
	mov	rax, QWORD PTR -8[rbp]	# tmp96, entry
	mov	rax, QWORD PTR [rax]	# _4, entry_14->D.4226.key
# std/map.h:62: 	map->len += entry->key == NULL;
	.loc 6 62 25
	test	rax, rax	# _4
	sete	al	#, _5
	movzx	eax, al	# _6, _5
# std/map.h:62: 	map->len += entry->key == NULL;
	.loc 6 62 11
	add	edx, eax	# _7, _6
	mov	rax, QWORD PTR -24[rbp]	# tmp97, map
	mov	DWORD PTR 8[rax], edx	# map_10(D)->len, _7
# std/map.h:63: 	entry->key = key;
	.loc 6 63 13
	mov	rax, QWORD PTR -8[rbp]	# tmp98, entry
	mov	rdx, QWORD PTR -32[rbp]	# tmp99, key
	mov	QWORD PTR [rax], rdx	# entry_14->D.4226.key, tmp99
# std/map.h:64: 	entry->value = value;
	.loc 6 64 15
	mov	rax, QWORD PTR -8[rbp]	# tmp100, entry
	mov	rdx, QWORD PTR -40[rbp]	# tmp101, value
	mov	QWORD PTR 8[rax], rdx	# entry_14->value, tmp101
# std/map.h:65: }
	.loc 6 65 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE33:
	.size	MapPut, .-MapPut
	.globl	MapDel
	.type	MapDel, @function
MapDel:
.LFB34:
	.loc 6 68 1
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
# std/map.h:69: 	Entry *entry = MapGet( map, key );
	.loc 6 69 17
	mov	rdx, QWORD PTR -32[rbp]	# tmp82, key
	mov	rax, QWORD PTR -24[rbp]	# tmp83, map
	mov	rsi, rdx	#, tmp82
	mov	rdi, rax	#, tmp83
	call	MapGet	#
	mov	QWORD PTR -8[rbp], rax	# entry, tmp84
# std/map.h:70: 	entry->key = NULL;
	.loc 6 70 13
	mov	rax, QWORD PTR -8[rbp]	# tmp85, entry
	mov	QWORD PTR [rax], 0	# entry_5->D.4226.key,
# std/map.h:71: }
	.loc 6 71 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE34:
	.size	MapDel, .-MapDel
	.type	GetJmp, @function
GetJmp:
.LFB35:
	.file 7 "std/err.h"
	.loc 7 2 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# std/err.h:4: 	return &buf;
	.loc 7 4 9
	lea	rax, buf.47[rip]	# _1,
# std/err.h:5: }
	.loc 7 5 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE35:
	.size	GetJmp, .-GetJmp
	.type	Throw, @function
Throw:
.LFB36:
	.loc 7 8 1
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
	je	.L106	#,
	movaps	XMMWORD PTR -128[rbp], xmm0	#,
	movaps	XMMWORD PTR -112[rbp], xmm1	#,
	movaps	XMMWORD PTR -96[rbp], xmm2	#,
	movaps	XMMWORD PTR -80[rbp], xmm3	#,
	movaps	XMMWORD PTR -64[rbp], xmm4	#,
	movaps	XMMWORD PTR -48[rbp], xmm5	#,
	movaps	XMMWORD PTR -32[rbp], xmm6	#,
	movaps	XMMWORD PTR -16[rbp], xmm7	#,
.L106:
# std/err.h:8: {
	.loc 7 8 1
	mov	rax, QWORD PTR fs:40	# tmp87, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -184[rbp], rax	# D.6321, tmp87
	xor	eax, eax	# tmp87
# std/err.h:10: 	va_start( args, fmt );
	.loc 7 10 2
	mov	DWORD PTR -208[rbp], 8	# MEM[(struct [1] *)&args].gp_offset,
	mov	DWORD PTR -204[rbp], 48	# MEM[(struct [1] *)&args].fp_offset,
	lea	rax, 16[rbp]	# tmp89,
	mov	QWORD PTR -200[rbp], rax	# MEM[(struct [1] *)&args].overflow_arg_area, tmp89
	lea	rax, -176[rbp]	# tmp90,
	mov	QWORD PTR -192[rbp], rax	# MEM[(struct [1] *)&args].reg_save_area, tmp90
# std/err.h:11: 	vfprintf( stderr, fmt, args );
	.loc 7 11 2
	mov	rax, QWORD PTR stderr[rip]	# stderr.2_1, stderr
	lea	rdx, -208[rbp]	# tmp85,
	mov	rcx, QWORD PTR -216[rbp]	# tmp86, fmt
	mov	rsi, rcx	#, tmp86
	mov	rdi, rax	#, stderr.2_1
	call	vfprintf@PLT	#
# std/err.h:13: 	longjmp( *GetJmp( ), 1 );
	.loc 7 13 12
	call	GetJmp	#
# std/err.h:13: 	longjmp( *GetJmp( ), 1 );
	.loc 7 13 2 discriminator 1
	mov	esi, 1	#,
	mov	rdi, rax	#, _2
	call	longjmp@PLT	#
	.cfi_endproc
.LFE36:
	.size	Throw, .-Throw
	.section	.rodata
.LC1:
	.string	"rb"
.LC2:
	.string	"File not found: %s\n"
	.text
	.type	IoRead, @function
IoRead:
.LFB37:
	.file 8 "std/io.h"
	.loc 8 2 1
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
	.loc 8 3 17
	mov	rax, QWORD PTR -48[rbp]	# tmp86, file
	lea	rdx, .LC1[rip]	# tmp87,
	mov	rsi, rdx	#, tmp87
	mov	rdi, rax	#, tmp86
	call	fopen@PLT	#
	mov	QWORD PTR -32[rbp], rax	# stream, tmp88
# std/io.h:4: 	if( !stream ){ Throw( "File not found: %s\n", file ); }
	.loc 8 4 4
	cmp	QWORD PTR -32[rbp], 0	# stream,
	jne	.L109	#,
# std/io.h:4: 	if( !stream ){ Throw( "File not found: %s\n", file ); }
	.loc 8 4 17 discriminator 1
	mov	rax, QWORD PTR -48[rbp]	# tmp89, file
	mov	rsi, rax	#, tmp89
	lea	rax, .LC2[rip]	# tmp90,
	mov	rdi, rax	#, tmp90
	mov	eax, 0	#,
	call	Throw	#
.L109:
# std/io.h:5: 	fseek( stream, 0, SEEK_END );
	.loc 8 5 2
	mov	rax, QWORD PTR -32[rbp]	# tmp91, stream
	mov	edx, 2	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp91
	call	fseek@PLT	#
# std/io.h:6: 	long len = ftell( stream );
	.loc 8 6 13
	mov	rax, QWORD PTR -32[rbp]	# tmp92, stream
	mov	rdi, rax	#, tmp92
	call	ftell@PLT	#
	mov	QWORD PTR -24[rbp], rax	# len, tmp93
# std/io.h:7: 	fseek( stream, 0, SEEK_SET );
	.loc 8 7 2
	mov	rax, QWORD PTR -32[rbp]	# tmp94, stream
	mov	edx, 0	#,
	mov	esi, 0	#,
	mov	rdi, rax	#, tmp94
	call	fseek@PLT	#
# std/io.h:9: 	I8 *buf = ArenaOff( src, ArenaPush( src, len, 1 ) );
	.loc 8 9 12
	mov	rax, QWORD PTR -24[rbp]	# tmp95, len
	mov	ecx, eax	# _1, tmp95
	mov	rax, QWORD PTR -40[rbp]	# tmp96, src
	mov	edx, 1	#,
	mov	esi, ecx	#, _1
	mov	rdi, rax	#, tmp96
	call	ArenaPush	#
	mov	edx, eax	# _2,
# std/io.h:9: 	I8 *buf = ArenaOff( src, ArenaPush( src, len, 1 ) );
	.loc 8 9 12 is_stmt 0 discriminator 1
	mov	rax, QWORD PTR -40[rbp]	# tmp97, src
	mov	esi, edx	#, _2
	mov	rdi, rax	#, tmp97
	call	ArenaOff	#
	mov	QWORD PTR -16[rbp], rax	# buf, tmp98
# std/io.h:10: 	U64 bytes = fread( buf, sizeof( I8 ), len, stream );
	.loc 8 10 14 is_stmt 1
	mov	rdx, QWORD PTR -24[rbp]	# len.60_3, len
	mov	rcx, QWORD PTR -32[rbp]	# tmp99, stream
	mov	rax, QWORD PTR -16[rbp]	# tmp100, buf
	mov	esi, 1	#,
	mov	rdi, rax	#, tmp100
	call	fread@PLT	#
	mov	QWORD PTR -8[rbp], rax	# bytes, tmp101
# std/io.h:11: 	buf[ bytes ] = '\0';
	.loc 8 11 5
	mov	rdx, QWORD PTR -16[rbp]	# tmp102, buf
	mov	rax, QWORD PTR -8[rbp]	# tmp103, bytes
	add	rax, rdx	# _4, tmp102
# std/io.h:11: 	buf[ bytes ] = '\0';
	.loc 8 11 15
	mov	BYTE PTR [rax], 0	# *_4,
# std/io.h:12: 	fclose( stream );
	.loc 8 12 2
	mov	rax, QWORD PTR -32[rbp]	# tmp104, stream
	mov	rdi, rax	#, tmp104
	call	fclose@PLT	#
# std/io.h:13: }
	.loc 8 13 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE37:
	.size	IoRead, .-IoRead
	.type	GetLexer, @function
GetLexer:
.LFB38:
	.file 9 "lexer/lexer.h"
	.loc 9 17 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# lexer/lexer.h:19: 	return &lexer;
	.loc 9 19 9
	lea	rax, lexer.48[rip]	# _1,
# lexer/lexer.h:20: }
	.loc 9 20 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE38:
	.size	GetLexer, .-GetLexer
	.type	LexerInit, @function
LexerInit:
.LFB39:
	.loc 9 23 1
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
	.loc 9 24 17
	call	GetLexer	#
	mov	QWORD PTR -8[rbp], rax	# lexer, tmp84
# lexer/lexer.h:25: 	lexer->start = ( I8* )src->base;
	.loc 9 25 27
	mov	rax, QWORD PTR -24[rbp]	# tmp85, src
	mov	rdx, QWORD PTR [rax]	# _1, src_6(D)->base
# lexer/lexer.h:25: 	lexer->start = ( I8* )src->base;
	.loc 9 25 15
	mov	rax, QWORD PTR -8[rbp]	# tmp86, lexer
	mov	QWORD PTR [rax], rdx	# lexer_5->start, _1
# lexer/lexer.h:26: 	lexer->end = ( I8* )src->base;
	.loc 9 26 25
	mov	rax, QWORD PTR -24[rbp]	# tmp87, src
	mov	rdx, QWORD PTR [rax]	# _2, src_6(D)->base
# lexer/lexer.h:26: 	lexer->end = ( I8* )src->base;
	.loc 9 26 13
	mov	rax, QWORD PTR -8[rbp]	# tmp88, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_5->end, _2
# lexer/lexer.h:27: 	lexer->col = 1;
	.loc 9 27 13
	mov	rax, QWORD PTR -8[rbp]	# tmp89, lexer
	mov	DWORD PTR 20[rax], 1	# lexer_5->col,
# lexer/lexer.h:28: 	lexer->line = 1;
	.loc 9 28 14
	mov	rax, QWORD PTR -8[rbp]	# tmp90, lexer
	mov	DWORD PTR 16[rax], 1	# lexer_5->line,
# lexer/lexer.h:29: 	lexer->interns = interns;
	.loc 9 29 17
	mov	rax, QWORD PTR -8[rbp]	# tmp91, lexer
	mov	rdx, QWORD PTR -32[rbp]	# tmp92, interns
	mov	QWORD PTR 24[rax], rdx	# lexer_5->interns, tmp92
# lexer/lexer.h:30: }
	.loc 9 30 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE39:
	.size	LexerInit, .-LexerInit
	.type	LexReinit, @function
LexReinit:
.LFB40:
	.loc 9 33 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 24	#,
	mov	QWORD PTR -24[rbp], rdi	# src, src
# lexer/lexer.h:34: 	Lexer *lexer = GetLexer( );
	.loc 9 34 17
	call	GetLexer	#
	mov	QWORD PTR -8[rbp], rax	# lexer, tmp83
# lexer/lexer.h:35: 	lexer->end = lexer->start = src;
	.loc 9 35 28
	mov	rax, QWORD PTR -8[rbp]	# tmp84, lexer
	mov	rdx, QWORD PTR -24[rbp]	# tmp85, src
	mov	QWORD PTR [rax], rdx	# lexer_4->start, tmp85
# lexer/lexer.h:35: 	lexer->end = lexer->start = src;
	.loc 9 35 20
	mov	rax, QWORD PTR -8[rbp]	# tmp86, lexer
	mov	rdx, QWORD PTR [rax]	# _1, lexer_4->start
# lexer/lexer.h:35: 	lexer->end = lexer->start = src;
	.loc 9 35 13
	mov	rax, QWORD PTR -8[rbp]	# tmp87, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_4->end, _1
# lexer/lexer.h:36: }
	.loc 9 36 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE40:
	.size	LexReinit, .-LexReinit
	.type	LexSet, @function
LexSet:
.LFB41:
	.loc 9 39 1
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
	.loc 9 40 7
	mov	rax, QWORD PTR -48[rbp]	# tmp94, lexer
	mov	rdx, QWORD PTR 8[rax]	# _1, lexer_10(D)->end
# lexer/lexer.h:40: 	lexer->end += len;
	.loc 9 40 13
	movzx	eax, BYTE PTR -60[rbp]	# _2, len
	add	rdx, rax	# _3, _2
	mov	rax, QWORD PTR -48[rbp]	# tmp95, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_10(D)->end, _3
# lexer/lexer.h:41: 	lexer->col += len;
	.loc 9 41 7
	mov	rax, QWORD PTR -48[rbp]	# tmp96, lexer
	mov	edx, DWORD PTR 20[rax]	# _4, lexer_10(D)->col
# lexer/lexer.h:41: 	lexer->col += len;
	.loc 9 41 13
	movzx	eax, BYTE PTR -60[rbp]	# _5, len
	add	edx, eax	# _6, _5
	mov	rax, QWORD PTR -48[rbp]	# tmp97, lexer
	mov	DWORD PTR 20[rax], edx	# lexer_10(D)->col, _6
# lexer/lexer.h:42: 	return ( Token ){ .type = type + off };
	.loc 9 42 33
	movzx	edx, BYTE PTR -56[rbp]	# _7, off
	mov	eax, DWORD PTR -52[rbp]	# tmp98, type
	add	edx, eax	# _8, tmp98
# lexer/lexer.h:42: 	return ( Token ){ .type = type + off };
	.loc 9 42 9
	mov	rax, QWORD PTR -40[rbp]	# tmp99, .result_ptr
	pxor	xmm0, xmm0	# tmp100
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp100
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp100
	mov	rax, QWORD PTR -40[rbp]	# tmp101, .result_ptr
	mov	DWORD PTR [rax], edx	# <retval>.type, _8
# lexer/lexer.h:43: }
	.loc 9 43 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE41:
	.size	LexSet, .-LexSet
	.type	LexEof, @function
LexEof:
.LFB42:
	.loc 9 45 34
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
	.loc 9 45 34
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6328, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:45: STIL Token LexEof( Lexer *lexer ){ return LexSet( lexer, TK_EOS, 0, 0 ); }
	.loc 9 45 43
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 0	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:45: STIL Token LexEof( Lexer *lexer ){ return LexSet( lexer, TK_EOS, 0, 0 ); }
	.loc 9 45 74
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6328
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L118	#,
	call	__stack_chk_fail@PLT	#
.L118:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE42:
	.size	LexEof, .-LexEof
	.type	LexLine, @function
LexLine:
.LFB43:
	.loc 9 48 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# lexer, lexer
# lexer/lexer.h:49: 	lexer->line++;
	.loc 9 49 7
	mov	rax, QWORD PTR -8[rbp]	# tmp84, lexer
	mov	eax, DWORD PTR 16[rax]	# _1, lexer_4(D)->line
# lexer/lexer.h:49: 	lexer->line++;
	.loc 9 49 13
	lea	edx, 1[rax]	# _2,
	mov	rax, QWORD PTR -8[rbp]	# tmp85, lexer
	mov	DWORD PTR 16[rax], edx	# lexer_4(D)->line, _2
# lexer/lexer.h:50: 	lexer->col = 0; 
	.loc 9 50 13
	mov	rax, QWORD PTR -8[rbp]	# tmp86, lexer
	mov	DWORD PTR 20[rax], 0	# lexer_4(D)->col,
# lexer/lexer.h:51: }
	.loc 9 51 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE43:
	.size	LexLine, .-LexLine
	.type	LexNot, @function
LexNot:
.LFB44:
	.loc 9 54 1
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
	.loc 9 54 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6331, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:55: 	U8 off = ( *lexer->end == '=' );
	.loc 9 55 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:55: 	U8 off = ( *lexer->end == '=' );
	.loc 9 55 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:55: 	U8 off = ( *lexer->end == '=' );
	.loc 9 55 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:55: 	U8 off = ( *lexer->end == '=' );
	.loc 9 55 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:56: 	return LexSet( lexer, TK_NOT, off, off );
	.loc 9 56 9
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
	.loc 9 57 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6331
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L122	#,
	call	__stack_chk_fail@PLT	#
.L122:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE44:
	.size	LexNot, .-LexNot
	.section	.rodata
.LC3:
	.string	"Unterminated String\n"
	.text
	.type	LexStr, @function
LexStr:
.LFB45:
	.loc 9 60 1
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
	.loc 9 61 7
	jmp	.L124	#
.L126:
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 9 61 51 discriminator 3
	mov	rax, QWORD PTR -64[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_25(D)->end
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 9 61 56 discriminator 3
	lea	rdx, 1[rax]	# _2,
	mov	rax, QWORD PTR -64[rbp]	# tmp104, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_25(D)->end, _2
.L124:
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 9 61 15 discriminator 1
	mov	rax, QWORD PTR -64[rbp]	# tmp105, lexer
	mov	rax, QWORD PTR 8[rax]	# _3, lexer_25(D)->end
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 9 61 9 discriminator 1
	movzx	eax, BYTE PTR [rax]	# _4, *_3
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 9 61 21 discriminator 1
	test	al, al	# _4
	je	.L125	#,
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 9 61 30 discriminator 2
	mov	rax, QWORD PTR -64[rbp]	# tmp106, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_25(D)->end
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 9 61 24 discriminator 2
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:61: 	while( *lexer->end && *lexer->end != '"' ){ lexer->end++; }
	.loc 9 61 21 discriminator 2
	cmp	al, 34	# _6,
	jne	.L126	#,
.L125:
# lexer/lexer.h:62: 	if( *lexer->end != '"' ){ Throw( "Unterminated String\n" ); }
	.loc 9 62 12
	mov	rax, QWORD PTR -64[rbp]	# tmp107, lexer
	mov	rax, QWORD PTR 8[rax]	# _7, lexer_25(D)->end
# lexer/lexer.h:62: 	if( *lexer->end != '"' ){ Throw( "Unterminated String\n" ); }
	.loc 9 62 6
	movzx	eax, BYTE PTR [rax]	# _8, *_7
# lexer/lexer.h:62: 	if( *lexer->end != '"' ){ Throw( "Unterminated String\n" ); }
	.loc 9 62 4
	cmp	al, 34	# _8,
	je	.L127	#,
# lexer/lexer.h:62: 	if( *lexer->end != '"' ){ Throw( "Unterminated String\n" ); }
	.loc 9 62 28 discriminator 1
	lea	rax, .LC3[rip]	# tmp108,
	mov	rdi, rax	#, tmp108
	mov	eax, 0	#,
	call	Throw	#
.L127:
# lexer/lexer.h:63: 	Token token = { .type = TK_STR };
	.loc 9 63 8
	pxor	xmm0, xmm0	# tmp109
	movaps	XMMWORD PTR -32[rbp], xmm0	# token, tmp109
	movq	QWORD PTR -16[rbp], xmm0	# token, tmp109
	mov	DWORD PTR -32[rbp], 56	# token.type,
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 9 64 19
	mov	rax, QWORD PTR -64[rbp]	# tmp110, lexer
	mov	rdx, QWORD PTR 8[rax]	# _9, lexer_25(D)->end
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 9 64 32
	mov	rax, QWORD PTR -64[rbp]	# tmp111, lexer
	mov	rax, QWORD PTR [rax]	# _10, lexer_25(D)->start
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 9 64 25
	sub	rdx, rax	# _11, _10
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 9 64 42
	mov	eax, edx	# _12, _11
# lexer/lexer.h:64: 	U32 len = ( lexer->end - lexer->start ) - 1;
	.loc 9 64 6
	sub	eax, 1	# tmp112,
	mov	DWORD PTR -36[rbp], eax	# len, tmp112
# lexer/lexer.h:65: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 9 65 51
	mov	rax, QWORD PTR -64[rbp]	# tmp113, lexer
	mov	rax, QWORD PTR [rax]	# _13, lexer_25(D)->start
# lexer/lexer.h:65: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 9 65 20
	lea	rcx, 1[rax]	# _14,
	mov	rax, QWORD PTR -64[rbp]	# tmp114, lexer
	mov	rax, QWORD PTR 24[rax]	# _15, lexer_25(D)->interns
	mov	edx, DWORD PTR -36[rbp]	# tmp115, len
	mov	rsi, rcx	#, _14
	mov	rdi, rax	#, _15
	call	TablePut	#
# lexer/lexer.h:65: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 9 65 18 discriminator 1
	mov	QWORD PTR -16[rbp], rax	# token.value.D.4160.str, _16
# lexer/lexer.h:66: 	lexer->end++;
	.loc 9 66 7
	mov	rax, QWORD PTR -64[rbp]	# tmp116, lexer
	mov	rax, QWORD PTR 8[rax]	# _17, lexer_25(D)->end
# lexer/lexer.h:66: 	lexer->end++;
	.loc 9 66 12
	lea	rdx, 1[rax]	# _18,
	mov	rax, QWORD PTR -64[rbp]	# tmp117, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_25(D)->end, _18
# lexer/lexer.h:67: 	lexer->col += len + 2;
	.loc 9 67 7
	mov	rax, QWORD PTR -64[rbp]	# tmp118, lexer
	mov	edx, DWORD PTR 20[rax]	# _19, lexer_25(D)->col
# lexer/lexer.h:67: 	lexer->col += len + 2;
	.loc 9 67 13
	mov	eax, DWORD PTR -36[rbp]	# tmp119, len
	add	eax, edx	# _20, _19
	lea	edx, 2[rax]	# _21,
	mov	rax, QWORD PTR -64[rbp]	# tmp120, lexer
	mov	DWORD PTR 20[rax], edx	# lexer_25(D)->col, _21
# lexer/lexer.h:68: 	return token;
	.loc 9 68 9
	mov	rcx, QWORD PTR -56[rbp]	# tmp121, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp122, token
	mov	rdx, QWORD PTR -24[rbp]	#, token
	mov	QWORD PTR [rcx], rax	# <retval>, tmp122
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp123, token
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp123
# lexer/lexer.h:69: }
	.loc 9 69 1
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE45:
	.size	LexStr, .-LexStr
	.type	LexComment, @function
LexComment:
.LFB46:
	.loc 9 72 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	QWORD PTR -8[rbp], rdi	# lexer, lexer
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 9 73 7
	jmp	.L130	#
.L132:
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 9 73 52 discriminator 3
	mov	rax, QWORD PTR -8[rbp]	# tmp90, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_11(D)->end
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 9 73 57 discriminator 3
	lea	rdx, 1[rax]	# _2,
	mov	rax, QWORD PTR -8[rbp]	# tmp91, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_11(D)->end, _2
.L130:
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 9 73 15 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _3, lexer_11(D)->end
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 9 73 9 discriminator 1
	movzx	eax, BYTE PTR [rax]	# _4, *_3
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 9 73 21 discriminator 1
	test	al, al	# _4
	je	.L131	#,
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 9 73 30 discriminator 2
	mov	rax, QWORD PTR -8[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_11(D)->end
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 9 73 24 discriminator 2
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:73: 	while( *lexer->end && *lexer->end != '\n' ){ lexer->end++; }
	.loc 9 73 21 discriminator 2
	cmp	al, 10	# _6,
	jne	.L132	#,
.L131:
# lexer/lexer.h:74: 	lexer->line++;
	.loc 9 74 7
	mov	rax, QWORD PTR -8[rbp]	# tmp94, lexer
	mov	eax, DWORD PTR 16[rax]	# _7, lexer_11(D)->line
# lexer/lexer.h:74: 	lexer->line++;
	.loc 9 74 13
	lea	edx, 1[rax]	# _8,
	mov	rax, QWORD PTR -8[rbp]	# tmp95, lexer
	mov	DWORD PTR 16[rax], edx	# lexer_11(D)->line, _8
# lexer/lexer.h:75: 	lexer->col = 0;
	.loc 9 75 13
	mov	rax, QWORD PTR -8[rbp]	# tmp96, lexer
	mov	DWORD PTR 20[rax], 0	# lexer_11(D)->col,
# lexer/lexer.h:76: }
	.loc 9 76 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE46:
	.size	LexComment, .-LexComment
	.type	LexMod, @function
LexMod:
.LFB47:
	.loc 9 79 1
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
	.loc 9 79 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6336, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:80: 	U8 off = ( *lexer->end == '=' );
	.loc 9 80 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:80: 	U8 off = ( *lexer->end == '=' );
	.loc 9 80 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:80: 	U8 off = ( *lexer->end == '=' );
	.loc 9 80 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:80: 	U8 off = ( *lexer->end == '=' );
	.loc 9 80 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:81: 	return LexSet( lexer, TK_MOD, off, off );
	.loc 9 81 9
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
	.loc 9 82 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6336
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L135	#,
	call	__stack_chk_fail@PLT	#
.L135:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE47:
	.size	LexMod, .-LexMod
	.type	LexBand, @function
LexBand:
.LFB48:
	.loc 9 85 1
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
	.loc 9 85 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6339, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 9 86 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 9 86 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 9 86 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 9 86 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 9 86 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 9 86 34
	cmp	al, 38	# _6,
	jne	.L137	#,
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 9 86 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.3_10,
	jmp	.L138	#
.L137:
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 9 86 34 discriminator 2
	mov	eax, 0	# iftmp.3_10,
.L138:
# lexer/lexer.h:86: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '&' ) * 2;
	.loc 9 86 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:87: 	return LexSet( lexer, TK_BAND, off, off != 0 );
	.loc 9 87 9
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
	.loc 9 88 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6339
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L140	#,
	call	__stack_chk_fail@PLT	#
.L140:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE48:
	.size	LexBand, .-LexBand
	.type	LexLp, @function
LexLp:
.LFB49:
	.loc 9 90 33
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
	.loc 9 90 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6342, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:90: STIL Token LexLp( Lexer *lexer ){ return LexSet( lexer, TK_LP, 0, 0 ); }
	.loc 9 90 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 36	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:90: STIL Token LexLp( Lexer *lexer ){ return LexSet( lexer, TK_LP, 0, 0 ); }
	.loc 9 90 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6342
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L143	#,
	call	__stack_chk_fail@PLT	#
.L143:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE49:
	.size	LexLp, .-LexLp
	.type	LexRp, @function
LexRp:
.LFB50:
	.loc 9 91 33
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
	.loc 9 91 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6345, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:91: STIL Token LexRp( Lexer *lexer ){ return LexSet( lexer, TK_RP, 0, 0 ); }
	.loc 9 91 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 37	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:91: STIL Token LexRp( Lexer *lexer ){ return LexSet( lexer, TK_RP, 0, 0 ); }
	.loc 9 91 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6345
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L146	#,
	call	__stack_chk_fail@PLT	#
.L146:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE50:
	.size	LexRp, .-LexRp
	.type	LexMul, @function
LexMul:
.LFB51:
	.loc 9 94 1
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
	.loc 9 94 1
	mov	rax, QWORD PTR fs:40	# tmp108, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6348, tmp108
	xor	eax, eax	# tmp108
# lexer/lexer.h:95: 	U8 off = ( *lexer->end == '=' )
	.loc 9 95 19
	mov	rax, QWORD PTR -32[rbp]	# tmp102, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_22(D)->end
# lexer/lexer.h:95: 	U8 off = ( *lexer->end == '=' )
	.loc 9 95 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:95: 	U8 off = ( *lexer->end == '=' )
	.loc 9 95 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 9 96 13
	mov	rax, QWORD PTR -32[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_22(D)->end
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 9 96 7
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 9 96 3
	cmp	al, 42	# _6,
	jne	.L148	#,
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 9 96 3 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.4_20,
	jmp	.L149	#
.L148:
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 9 96 3 discriminator 2
	mov	eax, 0	# iftmp.4_20,
.L149:
# lexer/lexer.h:96: 		+ ( *lexer->end == '*' ) * 2
	.loc 9 96 3 discriminator 4
	add	edx, eax	# _7, iftmp.4_20
# lexer/lexer.h:97: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 97 15 is_stmt 1
	mov	rax, QWORD PTR -32[rbp]	# tmp104, lexer
	mov	rax, QWORD PTR 8[rax]	# _8, lexer_22(D)->end
# lexer/lexer.h:97: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 97 21
	add	rax, 1	# _9,
# lexer/lexer.h:97: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 97 7
	movzx	eax, BYTE PTR [rax]	# _10, *_9
# lexer/lexer.h:97: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 97 27
	cmp	al, 61	# _10,
	sete	al	#, _11
# lexer/lexer.h:95: 	U8 off = ( *lexer->end == '=' )
	.loc 9 95 5
	add	eax, edx	# tmp105, _7
	mov	BYTE PTR -9[rbp], al	# off, tmp105
# lexer/lexer.h:98: 	return LexSet( lexer, TK_MUL, off, ( off != 0 ) + off > 2 );
	.loc 9 98 43
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _13
	movzx	edx, al	# _14, _13
# lexer/lexer.h:98: 	return LexSet( lexer, TK_MUL, off, ( off != 0 ) + off > 2 );
	.loc 9 98 50
	movzx	eax, BYTE PTR -9[rbp]	# _15, off
	add	eax, edx	# _16, _14
# lexer/lexer.h:98: 	return LexSet( lexer, TK_MUL, off, ( off != 0 ) + off > 2 );
	.loc 9 98 9
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
	.loc 9 99 1
	mov	rax, QWORD PTR -8[rbp]	# tmp109, D.6348
	sub	rax, QWORD PTR fs:40	# tmp109, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L151	#,
	call	__stack_chk_fail@PLT	#
.L151:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE51:
	.size	LexMul, .-LexMul
	.type	LexAdd, @function
LexAdd:
.LFB52:
	.loc 9 102 1
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
	.loc 9 102 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6351, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 9 103 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 9 103 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 9 103 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 9 103 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 9 103 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 9 103 34
	cmp	al, 43	# _6,
	jne	.L153	#,
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 9 103 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.5_10,
	jmp	.L154	#
.L153:
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 9 103 34 discriminator 2
	mov	eax, 0	# iftmp.5_10,
.L154:
# lexer/lexer.h:103: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '+' ) * 2;
	.loc 9 103 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:104: 	return LexSet( lexer, TK_ADD, off, off != 0 );
	.loc 9 104 9
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
	.loc 9 105 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6351
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L156	#,
	call	__stack_chk_fail@PLT	#
.L156:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE52:
	.size	LexAdd, .-LexAdd
	.type	LexComma, @function
LexComma:
.LFB53:
	.loc 9 107 36
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
	.loc 9 107 36
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6354, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:107: STIL Token LexComma( Lexer *lexer ){ return LexSet( lexer, TK_COMMA, 0, 0 ); }
	.loc 9 107 45
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 52	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:107: STIL Token LexComma( Lexer *lexer ){ return LexSet( lexer, TK_COMMA, 0, 0 ); }
	.loc 9 107 78
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6354
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L159	#,
	call	__stack_chk_fail@PLT	#
.L159:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE53:
	.size	LexComma, .-LexComma
	.type	LexSub, @function
LexSub:
.LFB54:
	.loc 9 110 1
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
	.loc 9 110 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6357, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 9 111 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 9 111 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 9 111 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 9 111 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 9 111 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 9 111 34
	cmp	al, 45	# _6,
	jne	.L161	#,
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 9 111 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.6_10,
	jmp	.L162	#
.L161:
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 9 111 34 discriminator 2
	mov	eax, 0	# iftmp.6_10,
.L162:
# lexer/lexer.h:111: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '-' ) * 2;
	.loc 9 111 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:112: 	return LexSet( lexer, TK_SUB, off, off != 0 );
	.loc 9 112 9
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
	.loc 9 113 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6357
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L164	#,
	call	__stack_chk_fail@PLT	#
.L164:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE54:
	.size	LexSub, .-LexSub
	.type	LexDot, @function
LexDot:
.LFB55:
	.loc 9 115 34
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
	.loc 9 115 34
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6360, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:115: STIL Token LexDot( Lexer *lexer ){ return LexSet( lexer, TK_DOT, 0, 0 ); }
	.loc 9 115 43
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 42	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:115: STIL Token LexDot( Lexer *lexer ){ return LexSet( lexer, TK_DOT, 0, 0 ); }
	.loc 9 115 74
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6360
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L167	#,
	call	__stack_chk_fail@PLT	#
.L167:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE55:
	.size	LexDot, .-LexDot
	.type	LexDiv, @function
LexDiv:
.LFB56:
	.loc 9 118 1
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
	.loc 9 118 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6363, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:119: 	U8 off = ( *lexer->end == '=' );
	.loc 9 119 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:119: 	U8 off = ( *lexer->end == '=' );
	.loc 9 119 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:119: 	U8 off = ( *lexer->end == '=' );
	.loc 9 119 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:119: 	U8 off = ( *lexer->end == '=' );
	.loc 9 119 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:120: 	return LexSet( lexer, TK_DIV, off, off );
	.loc 9 120 9
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
	.loc 9 121 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6363
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L170	#,
	call	__stack_chk_fail@PLT	#
.L170:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE56:
	.size	LexDiv, .-LexDiv
	.section	.rodata
.LC4:
	.string	"Malformed Float\n"
	.text
	.type	LexNum, @function
LexNum:
.LFB57:
	.loc 9 124 1
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
	.loc 9 125 8
	pxor	xmm0, xmm0	# tmp114
	movaps	XMMWORD PTR -32[rbp], xmm0	# token, tmp114
	movq	QWORD PTR -16[rbp], xmm0	# token, tmp114
	mov	DWORD PTR -32[rbp], 54	# token.type,
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 126 7
	jmp	.L172	#
.L173:
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 126 52 discriminator 2
	mov	rax, QWORD PTR -48[rbp]	# tmp115, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_40(D)->end
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 126 57 discriminator 2
	lea	rdx, 1[rax]	# _2,
	mov	rax, QWORD PTR -48[rbp]	# tmp116, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_40(D)->end, _2
.L172:
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 126 29 discriminator 1
	mov	rax, QWORD PTR -48[rbp]	# tmp117, lexer
	mov	rax, QWORD PTR 8[rax]	# _3, lexer_40(D)->end
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 126 16 discriminator 1
	movzx	eax, BYTE PTR [rax]	# _4, MEM[(U8 *)_3]
	movzx	eax, al	# _5, _4
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 126 14 discriminator 1
	lea	rdx, 0[0+rax*8]	# _6,
	mov	rax, QWORD PTR -64[rbp]	# tmp118, ascii
	add	rax, rdx	# _7, _6
	mov	rax, QWORD PTR [rax]	# _8, *_7
# lexer/lexer.h:126: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 126 37 discriminator 1
	cmp	QWORD PTR -56[rbp], rax	# NUM, _8
	je	.L173	#,
# lexer/lexer.h:127: 	if( *lexer->end != '.' )
	.loc 9 127 12
	mov	rax, QWORD PTR -48[rbp]	# tmp119, lexer
	mov	rax, QWORD PTR 8[rax]	# _9, lexer_40(D)->end
# lexer/lexer.h:127: 	if( *lexer->end != '.' )
	.loc 9 127 6
	movzx	eax, BYTE PTR [rax]	# _10, *_9
# lexer/lexer.h:127: 	if( *lexer->end != '.' )
	.loc 9 127 4
	cmp	al, 46	# _10,
	je	.L174	#,
# lexer/lexer.h:129: 		token.value.i64 = strtoll( lexer->start, &lexer->end, 10 );
	.loc 9 129 44
	mov	rax, QWORD PTR -48[rbp]	# tmp120, lexer
	lea	rcx, 8[rax]	# _11,
# lexer/lexer.h:129: 		token.value.i64 = strtoll( lexer->start, &lexer->end, 10 );
	.loc 9 129 35
	mov	rax, QWORD PTR -48[rbp]	# tmp121, lexer
	mov	rax, QWORD PTR [rax]	# _12, lexer_40(D)->start
# lexer/lexer.h:129: 		token.value.i64 = strtoll( lexer->start, &lexer->end, 10 );
	.loc 9 129 21
	mov	edx, 10	#,
	mov	rsi, rcx	#, _11
	mov	rdi, rax	#, _12
	call	__isoc23_strtoll@PLT	#
# lexer/lexer.h:129: 		token.value.i64 = strtoll( lexer->start, &lexer->end, 10 );
	.loc 9 129 19 discriminator 1
	mov	QWORD PTR -16[rbp], rax	# token.value.D.4160.i64, _13
# lexer/lexer.h:130: 		return token;
	.loc 9 130 10
	mov	rcx, QWORD PTR -40[rbp]	# tmp122, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp123, token
	mov	rdx, QWORD PTR -24[rbp]	#, token
	mov	QWORD PTR [rcx], rax	# <retval>, tmp123
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp124, token
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp124
	jmp	.L179	#
.L174:
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 9 132 28
	mov	rax, QWORD PTR -48[rbp]	# tmp125, lexer
	mov	rax, QWORD PTR 8[rax]	# _14, lexer_40(D)->end
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 9 132 14
	lea	rdx, 1[rax]	# _15,
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 9 132 4
	mov	rax, QWORD PTR -48[rbp]	# tmp126, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_40(D)->end, _15
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 9 132 28
	mov	rax, QWORD PTR -48[rbp]	# tmp127, lexer
	mov	rax, QWORD PTR 8[rax]	# _16, lexer_40(D)->end
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 9 132 13
	movzx	eax, BYTE PTR [rax]	# _17, MEM[(U8 *)_16]
	movzx	eax, al	# _18, _17
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 9 132 11
	lea	rdx, 0[0+rax*8]	# _19,
	mov	rax, QWORD PTR -64[rbp]	# tmp128, ascii
	add	rax, rdx	# _20, _19
	mov	rax, QWORD PTR [rax]	# _21, *_20
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 9 132 4
	cmp	QWORD PTR -56[rbp], rax	# NUM, _21
	je	.L177	#,
# lexer/lexer.h:132: 	if( ascii[ *( U8* )++lexer->end ] != NUM ){ Throw( "Malformed Float\n" ); }
	.loc 9 132 46 discriminator 1
	lea	rax, .LC4[rip]	# tmp129,
	mov	rdi, rax	#, tmp129
	mov	eax, 0	#,
	call	Throw	#
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 133 7
	jmp	.L177	#
.L178:
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 133 52 discriminator 2
	mov	rax, QWORD PTR -48[rbp]	# tmp130, lexer
	mov	rax, QWORD PTR 8[rax]	# _22, lexer_40(D)->end
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 133 57 discriminator 2
	lea	rdx, 1[rax]	# _23,
	mov	rax, QWORD PTR -48[rbp]	# tmp131, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_40(D)->end, _23
.L177:
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 133 29 discriminator 1
	mov	rax, QWORD PTR -48[rbp]	# tmp132, lexer
	mov	rax, QWORD PTR 8[rax]	# _24, lexer_40(D)->end
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 133 16 discriminator 1
	movzx	eax, BYTE PTR [rax]	# _25, MEM[(U8 *)_24]
	movzx	eax, al	# _26, _25
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 133 14 discriminator 1
	lea	rdx, 0[0+rax*8]	# _27,
	mov	rax, QWORD PTR -64[rbp]	# tmp133, ascii
	add	rax, rdx	# _28, _27
	mov	rax, QWORD PTR [rax]	# _29, *_28
# lexer/lexer.h:133: 	while( ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 133 37 discriminator 1
	cmp	QWORD PTR -56[rbp], rax	# NUM, _29
	je	.L178	#,
# lexer/lexer.h:134: 	token.value.f64 = strtod( lexer->start, &lexer->end );
	.loc 9 134 42
	mov	rax, QWORD PTR -48[rbp]	# tmp134, lexer
	lea	rdx, 8[rax]	# _30,
# lexer/lexer.h:134: 	token.value.f64 = strtod( lexer->start, &lexer->end );
	.loc 9 134 33
	mov	rax, QWORD PTR -48[rbp]	# tmp135, lexer
	mov	rax, QWORD PTR [rax]	# _31, lexer_40(D)->start
# lexer/lexer.h:134: 	token.value.f64 = strtod( lexer->start, &lexer->end );
	.loc 9 134 20
	mov	rsi, rdx	#, _30
	mov	rdi, rax	#, _31
	call	strtod@PLT	#
	movq	rax, xmm0	# _32,
# lexer/lexer.h:134: 	token.value.f64 = strtod( lexer->start, &lexer->end );
	.loc 9 134 18 discriminator 1
	mov	QWORD PTR -16[rbp], rax	# token.value.D.4160.f64, _32
# lexer/lexer.h:135: 	return token;
	.loc 9 135 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp136, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp137, token
	mov	rdx, QWORD PTR -24[rbp]	#, token
	mov	QWORD PTR [rcx], rax	# <retval>, tmp137
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp138, token
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp138
.L179:
# lexer/lexer.h:136: }
	.loc 9 136 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE57:
	.size	LexNum, .-LexNum
	.type	LexColon, @function
LexColon:
.LFB58:
	.loc 9 139 1
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
	.loc 9 139 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6368, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 9 140 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 9 140 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 9 140 25
	cmp	al, 46	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 9 140 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 9 140 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 9 140 34
	cmp	al, 58	# _6,
	jne	.L181	#,
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 9 140 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.7_10,
	jmp	.L182	#
.L181:
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 9 140 34 discriminator 2
	mov	eax, 0	# iftmp.7_10,
.L182:
# lexer/lexer.h:140: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ':' ) * 2;
	.loc 9 140 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:141: 	return LexSet( lexer, TK_COLON, off, off != 0 );
	.loc 9 141 9
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
	.loc 9 142 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6368
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L184	#,
	call	__stack_chk_fail@PLT	#
.L184:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE58:
	.size	LexColon, .-LexColon
	.type	LexSemi, @function
LexSemi:
.LFB59:
	.loc 9 145 1
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
	.loc 9 145 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6371, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 9 146 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 9 146 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 9 146 25
	cmp	al, 46	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 9 146 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 9 146 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 9 146 34
	cmp	al, 59	# _6,
	jne	.L186	#,
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 9 146 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.8_10,
	jmp	.L187	#
.L186:
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 9 146 34 discriminator 2
	mov	eax, 0	# iftmp.8_10,
.L187:
# lexer/lexer.h:146: 	U8 off = ( *lexer->end == '.' ) + ( *lexer->end == ';' ) * 2;
	.loc 9 146 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:147: 	return LexSet( lexer, TK_SEMI, off, off != 0 );
	.loc 9 147 9
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
	.loc 9 148 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6371
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L189	#,
	call	__stack_chk_fail@PLT	#
.L189:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE59:
	.size	LexSemi, .-LexSemi
	.type	LexLt, @function
LexLt:
.LFB60:
	.loc 9 151 1
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
	.loc 9 151 1
	mov	rax, QWORD PTR fs:40	# tmp108, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6374, tmp108
	xor	eax, eax	# tmp108
# lexer/lexer.h:152: 	U8 off = ( *lexer->end == '=' )
	.loc 9 152 19
	mov	rax, QWORD PTR -32[rbp]	# tmp102, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_22(D)->end
# lexer/lexer.h:152: 	U8 off = ( *lexer->end == '=' )
	.loc 9 152 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:152: 	U8 off = ( *lexer->end == '=' )
	.loc 9 152 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 9 153 13
	mov	rax, QWORD PTR -32[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_22(D)->end
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 9 153 7
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 9 153 3
	cmp	al, 60	# _6,
	jne	.L191	#,
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 9 153 3 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.9_20,
	jmp	.L192	#
.L191:
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 9 153 3 discriminator 2
	mov	eax, 0	# iftmp.9_20,
.L192:
# lexer/lexer.h:153: 		+ ( *lexer->end == '<' ) * 2
	.loc 9 153 3 discriminator 4
	add	edx, eax	# _7, iftmp.9_20
# lexer/lexer.h:154: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 154 15 is_stmt 1
	mov	rax, QWORD PTR -32[rbp]	# tmp104, lexer
	mov	rax, QWORD PTR 8[rax]	# _8, lexer_22(D)->end
# lexer/lexer.h:154: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 154 21
	add	rax, 1	# _9,
# lexer/lexer.h:154: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 154 7
	movzx	eax, BYTE PTR [rax]	# _10, *_9
# lexer/lexer.h:154: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 154 27
	cmp	al, 61	# _10,
	sete	al	#, _11
# lexer/lexer.h:152: 	U8 off = ( *lexer->end == '=' )
	.loc 9 152 5
	add	eax, edx	# tmp105, _7
	mov	BYTE PTR -9[rbp], al	# off, tmp105
# lexer/lexer.h:155: 	return LexSet( lexer, TK_LT, off, ( off != 0 ) + off > 2 );
	.loc 9 155 42
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _13
	movzx	edx, al	# _14, _13
# lexer/lexer.h:155: 	return LexSet( lexer, TK_LT, off, ( off != 0 ) + off > 2 );
	.loc 9 155 49
	movzx	eax, BYTE PTR -9[rbp]	# _15, off
	add	eax, edx	# _16, _14
# lexer/lexer.h:155: 	return LexSet( lexer, TK_LT, off, ( off != 0 ) + off > 2 );
	.loc 9 155 9
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
	.loc 9 156 1
	mov	rax, QWORD PTR -8[rbp]	# tmp109, D.6374
	sub	rax, QWORD PTR fs:40	# tmp109, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L194	#,
	call	__stack_chk_fail@PLT	#
.L194:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE60:
	.size	LexLt, .-LexLt
	.type	LexEq, @function
LexEq:
.LFB61:
	.loc 9 159 1
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
	.loc 9 159 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6377, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:160: 	U8 off = ( *lexer->end == '=' );
	.loc 9 160 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:160: 	U8 off = ( *lexer->end == '=' );
	.loc 9 160 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:160: 	U8 off = ( *lexer->end == '=' );
	.loc 9 160 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:160: 	U8 off = ( *lexer->end == '=' );
	.loc 9 160 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:161: 	return LexSet( lexer, TK_EQ, off, off );
	.loc 9 161 9
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
	.loc 9 162 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6377
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L197	#,
	call	__stack_chk_fail@PLT	#
.L197:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE61:
	.size	LexEq, .-LexEq
	.type	LexGt, @function
LexGt:
.LFB62:
	.loc 9 165 1
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
	.loc 9 165 1
	mov	rax, QWORD PTR fs:40	# tmp108, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6380, tmp108
	xor	eax, eax	# tmp108
# lexer/lexer.h:166: 	U8 off = ( *lexer->end == '=' )
	.loc 9 166 19
	mov	rax, QWORD PTR -32[rbp]	# tmp102, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_22(D)->end
# lexer/lexer.h:166: 	U8 off = ( *lexer->end == '=' )
	.loc 9 166 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:166: 	U8 off = ( *lexer->end == '=' )
	.loc 9 166 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 9 167 13
	mov	rax, QWORD PTR -32[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_22(D)->end
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 9 167 7
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 9 167 3
	cmp	al, 62	# _6,
	jne	.L199	#,
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 9 167 3 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.10_20,
	jmp	.L200	#
.L199:
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 9 167 3 discriminator 2
	mov	eax, 0	# iftmp.10_20,
.L200:
# lexer/lexer.h:167: 		+ ( *lexer->end == '>' ) * 2
	.loc 9 167 3 discriminator 4
	add	edx, eax	# _7, iftmp.10_20
# lexer/lexer.h:168: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 168 15 is_stmt 1
	mov	rax, QWORD PTR -32[rbp]	# tmp104, lexer
	mov	rax, QWORD PTR 8[rax]	# _8, lexer_22(D)->end
# lexer/lexer.h:168: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 168 21
	add	rax, 1	# _9,
# lexer/lexer.h:168: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 168 7
	movzx	eax, BYTE PTR [rax]	# _10, *_9
# lexer/lexer.h:168: 		+ ( *( lexer->end + 1 ) == '=' );
	.loc 9 168 27
	cmp	al, 61	# _10,
	sete	al	#, _11
# lexer/lexer.h:166: 	U8 off = ( *lexer->end == '=' )
	.loc 9 166 5
	add	eax, edx	# tmp105, _7
	mov	BYTE PTR -9[rbp], al	# off, tmp105
# lexer/lexer.h:169: 	return LexSet( lexer, TK_GT, off, ( off != 0 ) + off > 2 );
	.loc 9 169 42
	cmp	BYTE PTR -9[rbp], 0	# off,
	setne	al	#, _13
	movzx	edx, al	# _14, _13
# lexer/lexer.h:169: 	return LexSet( lexer, TK_GT, off, ( off != 0 ) + off > 2 );
	.loc 9 169 49
	movzx	eax, BYTE PTR -9[rbp]	# _15, off
	add	eax, edx	# _16, _14
# lexer/lexer.h:169: 	return LexSet( lexer, TK_GT, off, ( off != 0 ) + off > 2 );
	.loc 9 169 9
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
	.loc 9 170 1
	mov	rax, QWORD PTR -8[rbp]	# tmp109, D.6380
	sub	rax, QWORD PTR fs:40	# tmp109, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L202	#,
	call	__stack_chk_fail@PLT	#
.L202:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE62:
	.size	LexGt, .-LexGt
	.type	LexReturn, @function
LexReturn:
.LFB63:
	.loc 9 172 37
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
	.loc 9 172 37
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6383, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:172: STIL Token LexReturn( Lexer *lexer ){ return LexSet( lexer, TK_RET, 0, 0 ); }
	.loc 9 172 46
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 53	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:172: STIL Token LexReturn( Lexer *lexer ){ return LexSet( lexer, TK_RET, 0, 0 ); }
	.loc 9 172 77
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6383
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L205	#,
	call	__stack_chk_fail@PLT	#
.L205:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE63:
	.size	LexReturn, .-LexReturn
	.type	LexId, @function
LexId:
.LFB64:
	.loc 9 175 1
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
	.loc 9 176 7
	jmp	.L207	#
.L208:
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 177 49 discriminator 4
	mov	rax, QWORD PTR -64[rbp]	# tmp103, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_24(D)->end
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 177 54 discriminator 4
	lea	rdx, 1[rax]	# _2,
	mov	rax, QWORD PTR -64[rbp]	# tmp104, lexer
	mov	QWORD PTR 8[rax], rdx	# lexer_24(D)->end, _2
.L207:
# lexer/lexer.h:176: 	while( ascii[ *( U8* )lexer->end ] == ID
	.loc 9 176 29
	mov	rax, QWORD PTR -64[rbp]	# tmp105, lexer
	mov	rax, QWORD PTR 8[rax]	# _3, lexer_24(D)->end
# lexer/lexer.h:176: 	while( ascii[ *( U8* )lexer->end ] == ID
	.loc 9 176 16
	movzx	eax, BYTE PTR [rax]	# _4, MEM[(U8 *)_3]
	movzx	eax, al	# _5, _4
# lexer/lexer.h:176: 	while( ascii[ *( U8* )lexer->end ] == ID
	.loc 9 176 14
	lea	rdx, 0[0+rax*8]	# _6,
	mov	rax, QWORD PTR -88[rbp]	# tmp106, ascii
	add	rax, rdx	# _7, _6
	mov	rax, QWORD PTR [rax]	# _8, *_7
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 177 3 discriminator 1
	cmp	QWORD PTR -72[rbp], rax	# ID, _8
	je	.L208	#,
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 177 26 discriminator 3
	mov	rax, QWORD PTR -64[rbp]	# tmp107, lexer
	mov	rax, QWORD PTR 8[rax]	# _9, lexer_24(D)->end
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 177 13 discriminator 3
	movzx	eax, BYTE PTR [rax]	# _10, MEM[(U8 *)_9]
	movzx	eax, al	# _11, _10
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 177 11 discriminator 3
	lea	rdx, 0[0+rax*8]	# _12,
	mov	rax, QWORD PTR -88[rbp]	# tmp108, ascii
	add	rax, rdx	# _13, _12
	mov	rax, QWORD PTR [rax]	# _14, *_13
# lexer/lexer.h:177: 		|| ascii[ *( U8* )lexer->end ] == NUM ){ lexer->end++; }
	.loc 9 177 3 discriminator 3
	cmp	QWORD PTR -80[rbp], rax	# NUM, _14
	je	.L208	#,
# lexer/lexer.h:178: 	U32 len = lexer->end - lexer->start;
	.loc 9 178 17
	mov	rax, QWORD PTR -64[rbp]	# tmp109, lexer
	mov	rdx, QWORD PTR 8[rax]	# _15, lexer_24(D)->end
# lexer/lexer.h:178: 	U32 len = lexer->end - lexer->start;
	.loc 9 178 30
	mov	rax, QWORD PTR -64[rbp]	# tmp110, lexer
	mov	rax, QWORD PTR [rax]	# _16, lexer_24(D)->start
# lexer/lexer.h:178: 	U32 len = lexer->end - lexer->start;
	.loc 9 178 23
	sub	rdx, rax	# _17, _16
# lexer/lexer.h:178: 	U32 len = lexer->end - lexer->start;
	.loc 9 178 6
	mov	DWORD PTR -36[rbp], edx	# len, _17
# lexer/lexer.h:179: 	Token token = { .type = TK_ID };
	.loc 9 179 8
	pxor	xmm0, xmm0	# tmp111
	movaps	XMMWORD PTR -32[rbp], xmm0	# token, tmp111
	movq	QWORD PTR -16[rbp], xmm0	# token, tmp111
	mov	DWORD PTR -32[rbp], 57	# token.type,
# lexer/lexer.h:180: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 9 180 51
	mov	rax, QWORD PTR -64[rbp]	# tmp112, lexer
	mov	rax, QWORD PTR [rax]	# _18, lexer_24(D)->start
# lexer/lexer.h:180: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 9 180 20
	lea	rcx, 1[rax]	# _19,
	mov	rax, QWORD PTR -64[rbp]	# tmp113, lexer
	mov	rax, QWORD PTR 24[rax]	# _20, lexer_24(D)->interns
	mov	edx, DWORD PTR -36[rbp]	# tmp114, len
	mov	rsi, rcx	#, _19
	mov	rdi, rax	#, _20
	call	TablePut	#
# lexer/lexer.h:180: 	token.value.str = TablePut( lexer->interns, lexer->start + 1, len );
	.loc 9 180 18 discriminator 1
	mov	QWORD PTR -16[rbp], rax	# token.value.D.4160.str, _21
# lexer/lexer.h:181: 	return token;
	.loc 9 181 9
	mov	rcx, QWORD PTR -56[rbp]	# tmp115, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp116, token
	mov	rdx, QWORD PTR -24[rbp]	#, token
	mov	QWORD PTR [rcx], rax	# <retval>, tmp116
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp117, token
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp117
# lexer/lexer.h:182: }
	.loc 9 182 1
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE64:
	.size	LexId, .-LexId
	.type	LexLs, @function
LexLs:
.LFB65:
	.loc 9 184 33
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
	.loc 9 184 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6387, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:184: STIL Token LexLs( Lexer *lexer ){ return LexSet( lexer, TK_LS, 0, 0 ); }
	.loc 9 184 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 38	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:184: STIL Token LexLs( Lexer *lexer ){ return LexSet( lexer, TK_LS, 0, 0 ); }
	.loc 9 184 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6387
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L212	#,
	call	__stack_chk_fail@PLT	#
.L212:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE65:
	.size	LexLs, .-LexLs
	.type	LexRs, @function
LexRs:
.LFB66:
	.loc 9 185 33
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
	.loc 9 185 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6390, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:185: STIL Token LexRs( Lexer *lexer ){ return LexSet( lexer, TK_RS, 0, 0 ); }
	.loc 9 185 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 39	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:185: STIL Token LexRs( Lexer *lexer ){ return LexSet( lexer, TK_RS, 0, 0 ); }
	.loc 9 185 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6390
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L215	#,
	call	__stack_chk_fail@PLT	#
.L215:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE66:
	.size	LexRs, .-LexRs
	.type	LexBxor, @function
LexBxor:
.LFB67:
	.loc 9 188 1
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
	.loc 9 188 1
	mov	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6393, tmp90
	xor	eax, eax	# tmp90
# lexer/lexer.h:189: 	U8 off = ( *lexer->end == '=' );
	.loc 9 189 19
	mov	rax, QWORD PTR -32[rbp]	# tmp87, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_7(D)->end
# lexer/lexer.h:189: 	U8 off = ( *lexer->end == '=' );
	.loc 9 189 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:189: 	U8 off = ( *lexer->end == '=' );
	.loc 9 189 25
	cmp	al, 61	# _2,
	sete	al	#, _3
# lexer/lexer.h:189: 	U8 off = ( *lexer->end == '=' );
	.loc 9 189 5
	mov	BYTE PTR -9[rbp], al	# off, _3
# lexer/lexer.h:190: 	return LexSet( lexer, TK_BXOR, off, off );
	.loc 9 190 9
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
	.loc 9 191 1
	mov	rax, QWORD PTR -8[rbp]	# tmp91, D.6393
	sub	rax, QWORD PTR fs:40	# tmp91, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L218	#,
	call	__stack_chk_fail@PLT	#
.L218:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE67:
	.size	LexBxor, .-LexBxor
	.type	LexBnot, @function
LexBnot:
.LFB68:
	.loc 9 193 35
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
	.loc 9 193 35
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6396, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:193: STIL Token LexBnot( Lexer *lexer ){ return LexSet( lexer, TK_BNOT, 0, 0 ); }
	.loc 9 193 44
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 3	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:193: STIL Token LexBnot( Lexer *lexer ){ return LexSet( lexer, TK_BNOT, 0, 0 ); }
	.loc 9 193 76
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6396
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L221	#,
	call	__stack_chk_fail@PLT	#
.L221:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE68:
	.size	LexBnot, .-LexBnot
	.type	LexLc, @function
LexLc:
.LFB69:
	.loc 9 194 33
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
	.loc 9 194 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6399, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:194: STIL Token LexLc( Lexer *lexer ){ return LexSet( lexer, TK_LC, 0, 0 ); }
	.loc 9 194 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 40	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:194: STIL Token LexLc( Lexer *lexer ){ return LexSet( lexer, TK_LC, 0, 0 ); }
	.loc 9 194 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6399
	sub	rax, QWORD PTR fs:40	# tmp85, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L224	#,
	call	__stack_chk_fail@PLT	#
.L224:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE69:
	.size	LexLc, .-LexLc
	.type	LexBor, @function
LexBor:
.LFB70:
	.loc 9 197 1
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
	.loc 9 197 1
	mov	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6402, tmp97
	xor	eax, eax	# tmp97
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 9 198 19
	mov	rax, QWORD PTR -32[rbp]	# tmp92, lexer
	mov	rax, QWORD PTR 8[rax]	# _1, lexer_12(D)->end
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 9 198 13
	movzx	eax, BYTE PTR [rax]	# _2, *_1
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 9 198 25
	cmp	al, 61	# _2,
	sete	al	#, _3
	mov	edx, eax	# _4, _3
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 9 198 44
	mov	rax, QWORD PTR -32[rbp]	# tmp93, lexer
	mov	rax, QWORD PTR 8[rax]	# _5, lexer_12(D)->end
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 9 198 38
	movzx	eax, BYTE PTR [rax]	# _6, *_5
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 9 198 34
	cmp	al, 124	# _6,
	jne	.L226	#,
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 9 198 34 is_stmt 0 discriminator 1
	mov	eax, 2	# iftmp.11_10,
	jmp	.L227	#
.L226:
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 9 198 34 discriminator 2
	mov	eax, 0	# iftmp.11_10,
.L227:
# lexer/lexer.h:198: 	U8 off = ( *lexer->end == '=' ) + ( *lexer->end == '|' ) * 2;
	.loc 9 198 5 is_stmt 1 discriminator 4
	add	eax, edx	# tmp94, _4
	mov	BYTE PTR -9[rbp], al	# off, tmp94
# lexer/lexer.h:199: 	return LexSet( lexer, TK_BOR, off, off != 0 );
	.loc 9 199 9
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
	.loc 9 200 1
	mov	rax, QWORD PTR -8[rbp]	# tmp98, D.6402
	sub	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L229	#,
	call	__stack_chk_fail@PLT	#
.L229:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE70:
	.size	LexBor, .-LexBor
	.type	LexRc, @function
LexRc:
.LFB71:
	.loc 9 202 33
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
	.loc 9 202 33
	mov	rax, QWORD PTR fs:40	# tmp84, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6405, tmp84
	xor	eax, eax	# tmp84
# lexer/lexer.h:202: STIL Token LexRc( Lexer *lexer ){ return LexSet( lexer, TK_RC, 0, 0 ); }
	.loc 9 202 42
	mov	rax, QWORD PTR -24[rbp]	# tmp82, .result_ptr
	mov	rsi, QWORD PTR -32[rbp]	# tmp83, lexer
	mov	r8d, 0	#,
	mov	ecx, 0	#,
	mov	edx, 41	#,
	mov	rdi, rax	#, tmp82
	call	LexSet	#
# lexer/lexer.h:202: STIL Token LexRc( Lexer *lexer ){ return LexSet( lexer, TK_RC, 0, 0 ); }
	.loc 9 202 72
	mov	rax, QWORD PTR -8[rbp]	# tmp85, D.6405
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
	.size	LexRc, .-LexRc
	.globl	Lex
	.type	Lex, @function
Lex:
.LFB72:
	.loc 9 205 1
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
	.loc 9 205 1
	mov	rax, QWORD PTR fs:40	# tmp158, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6408, tmp158
	xor	eax, eax	# tmp158
# lexer/lexer.h:206: 	Lexer *lexer = GetLexer( );
	.loc 9 206 17
	call	GetLexer	#
	mov	QWORD PTR -16[rbp], rax	# lexer, tmp88
# lexer/lexer.h:208: 	lexer->start = lexer->end;
	.loc 9 208 22
	mov	rax, QWORD PTR -16[rbp]	# tmp89, lexer
	mov	rdx, QWORD PTR 8[rax]	# _1, lexer_12->end
# lexer/lexer.h:208: 	lexer->start = lexer->end;
	.loc 9 208 15
	mov	rax, QWORD PTR -16[rbp]	# tmp90, lexer
	mov	QWORD PTR [rax], rdx	# lexer_12->start, _1
.L234:
	endbr64	
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 9 209 33
	mov	rax, QWORD PTR -16[rbp]	# tmp91, lexer
	mov	rax, QWORD PTR 8[rax]	# _2, lexer_12->end
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 9 209 21
	lea	rcx, 1[rax]	# _4,
	mov	rdx, QWORD PTR -16[rbp]	# tmp92, lexer
	mov	QWORD PTR 8[rdx], rcx	# lexer_12->end, _4
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 9 209 20
	movzx	eax, BYTE PTR [rax]	# _5, MEM[(U8 *)_3]
	movzx	eax, al	# _6, _5
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 9 209 18
	cdqe
	lea	rdx, 0[0+rax*8]	# tmp94,
	lea	rax, ascii.49[rip]	# tmp95,
	mov	rax, QWORD PTR [rdx+rax]	# _7, ascii[_6]
# lexer/lexer.h:209: 	LEX: goto *ascii[ *( U8* )lexer->end++ ];
	.loc 9 209 7
	nop	
	jmp	rax	# _7
.L235:
	endbr64	
# lexer/ascii_labels.h:1: EOS: return LexEof( lexer );
	.file 10 "lexer/ascii_labels.h"
	.loc 10 1 13
	mov	rax, QWORD PTR -24[rbp]	# tmp96, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp97, lexer
	mov	rsi, rdx	#, tmp97
	mov	rdi, rax	#, tmp96
	call	LexEof	#
	jmp	.L236	#
.L237:
	endbr64	
# lexer/ascii_labels.h:2: LINE: LexLine( lexer ); goto LEX;
	.loc 10 2 7
	mov	rax, QWORD PTR -16[rbp]	# tmp98, lexer
	mov	rdi, rax	#, tmp98
	call	LexLine	#
# lexer/ascii_labels.h:2: LINE: LexLine( lexer ); goto LEX;
	.loc 10 2 25
	jmp	.L234	#
.L238:
	endbr64	
# lexer/ascii_labels.h:3: NOT: return LexNot( lexer );
	.loc 10 3 13
	mov	rax, QWORD PTR -24[rbp]	# tmp99, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp100, lexer
	mov	rsi, rdx	#, tmp100
	mov	rdi, rax	#, tmp99
	call	LexNot	#
	jmp	.L236	#
.L239:
	endbr64	
# lexer/ascii_labels.h:4: STR: return LexStr( lexer );
	.loc 10 4 13
	mov	rax, QWORD PTR -24[rbp]	# tmp101, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp102, lexer
	mov	rsi, rdx	#, tmp102
	mov	rdi, rax	#, tmp101
	call	LexStr	#
	jmp	.L236	#
.L240:
	endbr64	
# lexer/ascii_labels.h:5: COMMENT: LexComment( lexer ); goto LEX;
	.loc 10 5 10
	mov	rax, QWORD PTR -16[rbp]	# tmp103, lexer
	mov	rdi, rax	#, tmp103
	call	LexComment	#
# lexer/ascii_labels.h:5: COMMENT: LexComment( lexer ); goto LEX;
	.loc 10 5 31
	jmp	.L234	#
.L241:
	endbr64	
# lexer/ascii_labels.h:6: MOD: return LexMod( lexer );
	.loc 10 6 13
	mov	rax, QWORD PTR -24[rbp]	# tmp104, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp105, lexer
	mov	rsi, rdx	#, tmp105
	mov	rdi, rax	#, tmp104
	call	LexMod	#
	jmp	.L236	#
.L242:
	endbr64	
# lexer/ascii_labels.h:7: BAND: return LexBand( lexer );
	.loc 10 7 14
	mov	rax, QWORD PTR -24[rbp]	# tmp106, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp107, lexer
	mov	rsi, rdx	#, tmp107
	mov	rdi, rax	#, tmp106
	call	LexBand	#
	jmp	.L236	#
.L243:
	endbr64	
# lexer/ascii_labels.h:8: LP: return LexLp( lexer );
	.loc 10 8 12
	mov	rax, QWORD PTR -24[rbp]	# tmp108, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp109, lexer
	mov	rsi, rdx	#, tmp109
	mov	rdi, rax	#, tmp108
	call	LexLp	#
	jmp	.L236	#
.L244:
	endbr64	
# lexer/ascii_labels.h:9: RP: return LexRp( lexer );
	.loc 10 9 12
	mov	rax, QWORD PTR -24[rbp]	# tmp110, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp111, lexer
	mov	rsi, rdx	#, tmp111
	mov	rdi, rax	#, tmp110
	call	LexRp	#
	jmp	.L236	#
.L245:
	endbr64	
# lexer/ascii_labels.h:10: MUL: return LexMul( lexer );
	.loc 10 10 13
	mov	rax, QWORD PTR -24[rbp]	# tmp112, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp113, lexer
	mov	rsi, rdx	#, tmp113
	mov	rdi, rax	#, tmp112
	call	LexMul	#
	jmp	.L236	#
.L246:
	endbr64	
# lexer/ascii_labels.h:11: ADD: return LexAdd( lexer );
	.loc 10 11 13
	mov	rax, QWORD PTR -24[rbp]	# tmp114, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp115, lexer
	mov	rsi, rdx	#, tmp115
	mov	rdi, rax	#, tmp114
	call	LexAdd	#
	jmp	.L236	#
.L247:
	endbr64	
# lexer/ascii_labels.h:12: COMMA: return LexComma( lexer );
	.loc 10 12 15
	mov	rax, QWORD PTR -24[rbp]	# tmp116, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp117, lexer
	mov	rsi, rdx	#, tmp117
	mov	rdi, rax	#, tmp116
	call	LexComma	#
	jmp	.L236	#
.L248:
	endbr64	
# lexer/ascii_labels.h:13: SUB: return LexSub( lexer );
	.loc 10 13 13
	mov	rax, QWORD PTR -24[rbp]	# tmp118, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp119, lexer
	mov	rsi, rdx	#, tmp119
	mov	rdi, rax	#, tmp118
	call	LexSub	#
	jmp	.L236	#
.L249:
	endbr64	
# lexer/ascii_labels.h:14: DOT: return LexDot( lexer );
	.loc 10 14 13
	mov	rax, QWORD PTR -24[rbp]	# tmp120, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp121, lexer
	mov	rsi, rdx	#, tmp121
	mov	rdi, rax	#, tmp120
	call	LexDot	#
	jmp	.L236	#
.L250:
	endbr64	
# lexer/ascii_labels.h:15: DIV: return LexDiv( lexer );
	.loc 10 15 13
	mov	rax, QWORD PTR -24[rbp]	# tmp122, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp123, lexer
	mov	rsi, rdx	#, tmp123
	mov	rdi, rax	#, tmp122
	call	LexDiv	#
	jmp	.L236	#
.L251:
	endbr64	
# lexer/ascii_labels.h:16: NUM: return LexNum( lexer, &&NUM, ascii );
	.loc 10 16 13
	mov	rax, QWORD PTR -24[rbp]	# tmp124, .result_ptr
	mov	rsi, QWORD PTR -16[rbp]	# tmp125, lexer
	lea	rdx, ascii.49[rip]	# tmp126,
	mov	rcx, rdx	#, tmp126
	lea	rdx, .L251[rip]	# tmp127,
	mov	rdi, rax	#, tmp124
	call	LexNum	#
	jmp	.L236	#
.L252:
	endbr64	
# lexer/ascii_labels.h:17: COLON: return LexColon( lexer );
	.loc 10 17 15
	mov	rax, QWORD PTR -24[rbp]	# tmp128, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp129, lexer
	mov	rsi, rdx	#, tmp129
	mov	rdi, rax	#, tmp128
	call	LexColon	#
	jmp	.L236	#
.L253:
	endbr64	
# lexer/ascii_labels.h:18: SEMI: return LexSemi( lexer );
	.loc 10 18 14
	mov	rax, QWORD PTR -24[rbp]	# tmp130, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp131, lexer
	mov	rsi, rdx	#, tmp131
	mov	rdi, rax	#, tmp130
	call	LexSemi	#
	jmp	.L236	#
.L254:
	endbr64	
# lexer/ascii_labels.h:19: LT: return LexLt( lexer );
	.loc 10 19 12
	mov	rax, QWORD PTR -24[rbp]	# tmp132, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp133, lexer
	mov	rsi, rdx	#, tmp133
	mov	rdi, rax	#, tmp132
	call	LexLt	#
	jmp	.L236	#
.L255:
	endbr64	
# lexer/ascii_labels.h:20: EQ: return LexEq( lexer );
	.loc 10 20 12
	mov	rax, QWORD PTR -24[rbp]	# tmp134, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp135, lexer
	mov	rsi, rdx	#, tmp135
	mov	rdi, rax	#, tmp134
	call	LexEq	#
	jmp	.L236	#
.L256:
	endbr64	
# lexer/ascii_labels.h:21: GT: return LexGt( lexer );
	.loc 10 21 12
	mov	rax, QWORD PTR -24[rbp]	# tmp136, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp137, lexer
	mov	rsi, rdx	#, tmp137
	mov	rdi, rax	#, tmp136
	call	LexGt	#
	jmp	.L236	#
.L257:
	endbr64	
# lexer/ascii_labels.h:22: RET: return LexReturn( lexer );
	.loc 10 22 13
	mov	rax, QWORD PTR -24[rbp]	# tmp138, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp139, lexer
	mov	rsi, rdx	#, tmp139
	mov	rdi, rax	#, tmp138
	call	LexReturn	#
	jmp	.L236	#
.L258:
	endbr64	
# lexer/ascii_labels.h:23: ID: return LexId( lexer, &&ID, &&NUM, ascii );
	.loc 10 23 12
	mov	rax, QWORD PTR -24[rbp]	# tmp140, .result_ptr
	mov	rsi, QWORD PTR -16[rbp]	# tmp141, lexer
	lea	r8, ascii.49[rip]	#,
	lea	rdx, .L251[rip]	# tmp142,
	mov	rcx, rdx	#, tmp142
	lea	rdx, .L258[rip]	# tmp143,
	mov	rdi, rax	#, tmp140
	call	LexId	#
	jmp	.L236	#
.L259:
	endbr64	
# lexer/ascii_labels.h:24: LS: return LexLs( lexer );
	.loc 10 24 12
	mov	rax, QWORD PTR -24[rbp]	# tmp144, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp145, lexer
	mov	rsi, rdx	#, tmp145
	mov	rdi, rax	#, tmp144
	call	LexLs	#
	jmp	.L236	#
.L260:
	endbr64	
# lexer/ascii_labels.h:25: RS: return LexRs( lexer );
	.loc 10 25 12
	mov	rax, QWORD PTR -24[rbp]	# tmp146, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp147, lexer
	mov	rsi, rdx	#, tmp147
	mov	rdi, rax	#, tmp146
	call	LexRs	#
	jmp	.L236	#
.L261:
	endbr64	
# lexer/ascii_labels.h:26: BXOR: return LexBxor( lexer );
	.loc 10 26 14
	mov	rax, QWORD PTR -24[rbp]	# tmp148, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp149, lexer
	mov	rsi, rdx	#, tmp149
	mov	rdi, rax	#, tmp148
	call	LexBxor	#
	jmp	.L236	#
.L262:
	endbr64	
# lexer/ascii_labels.h:27: BNOT: return LexBnot( lexer );
	.loc 10 27 14
	mov	rax, QWORD PTR -24[rbp]	# tmp150, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp151, lexer
	mov	rsi, rdx	#, tmp151
	mov	rdi, rax	#, tmp150
	call	LexBnot	#
	jmp	.L236	#
.L263:
	endbr64	
# lexer/ascii_labels.h:28: LC: return LexLc( lexer );
	.loc 10 28 12
	mov	rax, QWORD PTR -24[rbp]	# tmp152, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp153, lexer
	mov	rsi, rdx	#, tmp153
	mov	rdi, rax	#, tmp152
	call	LexLc	#
	jmp	.L236	#
.L264:
	endbr64	
# lexer/ascii_labels.h:29: BOR: return LexBor( lexer );
	.loc 10 29 13
	mov	rax, QWORD PTR -24[rbp]	# tmp154, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp155, lexer
	mov	rsi, rdx	#, tmp155
	mov	rdi, rax	#, tmp154
	call	LexBor	#
	jmp	.L236	#
.L265:
	endbr64	
# lexer/ascii_labels.h:30: RC: return LexRc( lexer );
	.loc 10 30 12
	mov	rax, QWORD PTR -24[rbp]	# tmp156, .result_ptr
	mov	rdx, QWORD PTR -16[rbp]	# tmp157, lexer
	mov	rsi, rdx	#, tmp157
	mov	rdi, rax	#, tmp156
	call	LexRc	#
.L236:
# lexer/lexer.h:211: }
	.loc 9 211 1
	mov	rax, QWORD PTR -8[rbp]	# tmp159, D.6408
	sub	rax, QWORD PTR fs:40	# tmp159, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L266	#,
	call	__stack_chk_fail@PLT	#
.L266:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE72:
	.size	Lex, .-Lex
	.type	GetParser, @function
GetParser:
.LFB73:
	.file 11 "parser/parser.h"
	.loc 11 20 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# parser/parser.h:22: 	return &parser;
	.loc 11 22 9
	lea	rax, parser.42[rip]	# _1,
# parser/parser.h:23: }
	.loc 11 23 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE73:
	.size	GetParser, .-GetParser
	.globl	ParserInit
	.type	ParserInit, @function
ParserInit:
.LFB74:
	.loc 11 32 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# parser/parser.h:35: }
	.loc 11 35 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE74:
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
.LFB75:
	.loc 11 38 1
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
	.loc 11 40 10
	mov	rax, QWORD PTR -24[rbp]	# tmp89, node
	mov	eax, DWORD PTR [rax]	# _1, node_10(D)->type
# parser/parser.h:40: 	if( node->type != PT_CONST ){ return; }
	.loc 11 40 4
	test	eax, eax	# _1
	jne	.L277	#,
# parser/parser.h:41: 	goto *types[ node->value.type ];
	.loc 11 41 26
	mov	rax, QWORD PTR -24[rbp]	# tmp90, node
	mov	eax, DWORD PTR 8[rax]	# _2, node_10(D)->value.type
# parser/parser.h:41: 	goto *types[ node->value.type ];
	.loc 11 41 13
	mov	eax, eax	# tmp91, _2
	lea	rdx, 0[0+rax*8]	# tmp92,
	lea	rax, types.46[rip]	# tmp93,
	mov	rax, QWORD PTR [rdx+rax]	# _3, types[_2]
# parser/parser.h:41: 	goto *types[ node->value.type ];
	.loc 11 41 2
	nop	
	jmp	rax	# _3
.L274:
	endbr64	
# parser/parser.h:43: 		printf( "%ld\n", node->value.i64 );
	.loc 11 43 3
	mov	rax, QWORD PTR -24[rbp]	# tmp94, node
	mov	rax, QWORD PTR 16[rax]	# _4, node_10(D)->value.D.4160.i64
	mov	rsi, rax	#, _4
	lea	rax, .LC5[rip]	# tmp95,
	mov	rdi, rax	#, tmp95
	mov	eax, 0	#,
	call	printf@PLT	#
# parser/parser.h:44: 		return;
	.loc 11 44 3
	jmp	.L270	#
.L275:
	endbr64	
# parser/parser.h:46: 		printf( "%f\n", node->value.f64 );
	.loc 11 46 3
	mov	rax, QWORD PTR -24[rbp]	# tmp96, node
	mov	rax, QWORD PTR 16[rax]	# _5, node_10(D)->value.D.4160.f64
	movq	xmm0, rax	#, _5
	lea	rax, .LC6[rip]	# tmp97,
	mov	rdi, rax	#, tmp97
	mov	eax, 1	#,
	call	printf@PLT	#
# parser/parser.h:47: 		return;
	.loc 11 47 3
	jmp	.L270	#
.L276:
	endbr64	
# parser/parser.h:49: 		Arena *strings = GetStrings( );
	.loc 11 49 20
	call	GetStrings	#
	mov	QWORD PTR -16[rbp], rax	# strings, tmp98
# parser/parser.h:50: 		I8 *cstr = ArenaOff( strings, node->value.str->offset );
	.loc 11 50 44
	mov	rax, QWORD PTR -24[rbp]	# tmp99, node
	mov	rax, QWORD PTR 16[rax]	# _6, node_10(D)->value.D.4160.str
# parser/parser.h:50: 		I8 *cstr = ArenaOff( strings, node->value.str->offset );
	.loc 11 50 14
	mov	edx, DWORD PTR [rax]	# _7, _6->offset
	mov	rax, QWORD PTR -16[rbp]	# tmp100, strings
	mov	esi, edx	#, _7
	mov	rdi, rax	#, tmp100
	call	ArenaOff	#
	mov	QWORD PTR -8[rbp], rax	# cstr, tmp101
# parser/parser.h:51: 		printf( "%s\n", cstr );
	.loc 11 51 3
	mov	rax, QWORD PTR -8[rbp]	# tmp102, cstr
	mov	rdi, rax	#, tmp102
	call	puts@PLT	#
# parser/parser.h:52: 		return;
	.loc 11 52 3
	jmp	.L270	#
.L277:
# parser/parser.h:40: 	if( node->type != PT_CONST ){ return; }
	.loc 11 40 32
	nop	
.L270:
# parser/parser.h:53: }
	.loc 11 53 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE75:
	.size	ParseNodeLog, .-ParseNodeLog
	.section	.rodata
.LC7:
	.string	"Expected: %d Got: %d\n"
	.text
	.globl	ParseMatch
	.type	ParseMatch, @function
ParseMatch:
.LFB76:
	.loc 11 56 1
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
	.loc 11 56 1
	mov	rax, QWORD PTR fs:40	# tmp92, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -24[rbp], rax	# D.6440, tmp92
	xor	eax, eax	# tmp92
# parser/parser.h:57: 	if( type != parser->token.type )
	.loc 11 57 27
	mov	rax, QWORD PTR -40[rbp]	# tmp84, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_5(D)->token.type
# parser/parser.h:57: 	if( type != parser->token.type )
	.loc 11 57 4
	cmp	DWORD PTR -44[rbp], eax	# type, _1
	je	.L279	#,
# parser/parser.h:59: 		Throw( "Expected: %d Got: %d\n", type, parser->token.type );
	.loc 11 59 55
	mov	rax, QWORD PTR -40[rbp]	# tmp85, parser
	mov	edx, DWORD PTR [rax]	# _2, parser_5(D)->token.type
# parser/parser.h:59: 		Throw( "Expected: %d Got: %d\n", type, parser->token.type );
	.loc 11 59 3
	mov	eax, DWORD PTR -44[rbp]	# tmp86, type
	mov	esi, eax	#, tmp86
	lea	rax, .LC7[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	mov	eax, 0	#,
	call	Throw	#
.L279:
# parser/parser.h:61: 	parser->token = Lex( );
	.loc 11 61 18
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
	.loc 11 62 1
	nop	
	mov	rax, QWORD PTR -24[rbp]	# tmp93, D.6440
	sub	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L280	#,
	call	__stack_chk_fail@PLT	#
.L280:
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE76:
	.size	ParseMatch, .-ParseMatch
	.globl	ParseIf
	.type	ParseIf, @function
ParseIf:
.LFB77:
	.loc 11 67 1
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
	.loc 11 67 1
	mov	rax, QWORD PTR fs:40	# tmp98, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6444, tmp98
	xor	eax, eax	# tmp98
# parser/parser.h:68: 	ParseMatch( parser, TK_IF );
	.loc 11 68 2
	mov	rax, QWORD PTR -80[rbp]	# tmp85, parser
	mov	esi, 43	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:69: 	ParseNode cond = ParseExpr( parser, PREC_NONE );
	.loc 11 69 19
	lea	rax, -64[rbp]	# tmp86,
	mov	rcx, QWORD PTR -80[rbp]	# tmp87, parser
	mov	edx, 0	#,
	mov	rsi, rcx	#, tmp87
	mov	rdi, rax	#, tmp86
	call	ParseExpr	#
# parser/parser.h:71: 	ParseMatch( parser, TK_THEN );
	.loc 11 71 2
	mov	rax, QWORD PTR -80[rbp]	# tmp88, parser
	mov	esi, 50	#,
	mov	rdi, rax	#, tmp88
	call	ParseMatch	#
# parser/parser.h:73: 	for( ; parser->token.type; )
	.loc 11 73 2
	jmp	.L282	#
.L286:
.LBB9:
# parser/parser.h:75: 		ParseNode stmt = ParseStmt( parser );
	.loc 11 75 20
	lea	rax, -32[rbp]	# tmp89,
	mov	rdx, QWORD PTR -80[rbp]	# tmp90, parser
	mov	rsi, rdx	#, tmp90
	mov	rdi, rax	#, tmp89
	call	ParseStmt	#
# parser/parser.h:76: 		if( parser->token.type == TK_END ){ break; }
	.loc 11 76 20
	mov	rax, QWORD PTR -80[rbp]	# tmp91, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_8(D)->token.type
# parser/parser.h:76: 		if( parser->token.type == TK_END ){ break; }
	.loc 11 76 5
	cmp	eax, 51	# _1,
	je	.L289	#,
# parser/parser.h:77: 		if( parser->token.type == TK_ELSE )
	.loc 11 77 20
	mov	rax, QWORD PTR -80[rbp]	# tmp92, parser
	mov	eax, DWORD PTR [rax]	# _2, parser_8(D)->token.type
# parser/parser.h:77: 		if( parser->token.type == TK_ELSE )
	.loc 11 77 5
	cmp	eax, 45	# _2,
	jne	.L282	#,
# parser/parser.h:79: 			ParseMatch( parser, TK_ELSE );
	.loc 11 79 4
	mov	rax, QWORD PTR -80[rbp]	# tmp93, parser
	mov	esi, 45	#,
	mov	rdi, rax	#, tmp93
	call	ParseMatch	#
.L282:
.LBE9:
# parser/parser.h:73: 	for( ; parser->token.type; )
	.loc 11 73 22
	mov	rax, QWORD PTR -80[rbp]	# tmp94, parser
	mov	eax, DWORD PTR [rax]	# _3, parser_8(D)->token.type
# parser/parser.h:73: 	for( ; parser->token.type; )
	.loc 11 73 9
	test	eax, eax	# _3
	jne	.L286	#,
	jmp	.L284	#
.L289:
.LBB10:
# parser/parser.h:76: 		if( parser->token.type == TK_END ){ break; }
	.loc 11 76 39
	nop	
.L284:
.LBE10:
# parser/parser.h:83: 	ParseMatch( parser, TK_END );
	.loc 11 83 2
	mov	rax, QWORD PTR -80[rbp]	# tmp95, parser
	mov	esi, 51	#,
	mov	rdi, rax	#, tmp95
	call	ParseMatch	#
# parser/parser.h:84: 	return ( ParseNode ){ 0 };
	.loc 11 84 9
	mov	rax, QWORD PTR -72[rbp]	# tmp96, .result_ptr
	pxor	xmm0, xmm0	# tmp97
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp97
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp97
# parser/parser.h:85: }
	.loc 11 85 1
	mov	rax, QWORD PTR -8[rbp]	# tmp99, D.6444
	sub	rax, QWORD PTR fs:40	# tmp99, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L288	#,
	call	__stack_chk_fail@PLT	#
.L288:
	mov	rax, QWORD PTR -72[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE77:
	.size	ParseIf, .-ParseIf
	.globl	ParseFor
	.type	ParseFor, @function
ParseFor:
.LFB78:
	.loc 11 88 1
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
	.loc 11 89 2
	mov	rax, QWORD PTR -48[rbp]	# tmp82, parser
	mov	esi, 44	#,
	mov	rdi, rax	#, tmp82
	call	ParseMatch	#
# parser/parser.h:90: 	return ( ParseNode ){ 0 };	
	.loc 11 90 9
	mov	rax, QWORD PTR -40[rbp]	# tmp83, .result_ptr
	pxor	xmm0, xmm0	# tmp84
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp84
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp84
# parser/parser.h:91: }
	.loc 11 91 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE78:
	.size	ParseFor, .-ParseFor
	.globl	ParseDo
	.type	ParseDo, @function
ParseDo:
.LFB79:
	.loc 11 94 1
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
	.loc 11 95 2
	mov	rax, QWORD PTR -48[rbp]	# tmp82, parser
	mov	esi, 47	#,
	mov	rdi, rax	#, tmp82
	call	ParseMatch	#
# parser/parser.h:96: 	return ( ParseNode ){ 0 };	
	.loc 11 96 9
	mov	rax, QWORD PTR -40[rbp]	# tmp83, .result_ptr
	pxor	xmm0, xmm0	# tmp84
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp84
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp84
# parser/parser.h:97: }
	.loc 11 97 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE79:
	.size	ParseDo, .-ParseDo
	.globl	ParseWhile
	.type	ParseWhile, @function
ParseWhile:
.LFB80:
	.loc 11 100 1
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
	.loc 11 101 2
	mov	rax, QWORD PTR -48[rbp]	# tmp82, parser
	mov	esi, 48	#,
	mov	rdi, rax	#, tmp82
	call	ParseMatch	#
# parser/parser.h:102: 	return ( ParseNode ){ 0 };	
	.loc 11 102 9
	mov	rax, QWORD PTR -40[rbp]	# tmp83, .result_ptr
	pxor	xmm0, xmm0	# tmp84
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp84
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp84
# parser/parser.h:103: }
	.loc 11 103 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE80:
	.size	ParseWhile, .-ParseWhile
	.globl	ParseFunc
	.type	ParseFunc, @function
ParseFunc:
.LFB81:
	.loc 11 106 1
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
	.loc 11 106 1
	mov	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6451, tmp93
	xor	eax, eax	# tmp93
# parser/parser.h:107: 	ParseMatch( parser, TK_LP );
	.loc 11 107 2
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	mov	esi, 36	#,
	mov	rdi, rax	#, tmp84
	call	ParseMatch	#
# parser/parser.h:109: 	ParseMatch( parser, TK_RP );
	.loc 11 109 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 37	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 11 110 7
	jmp	.L297	#
.L299:
# parser/parser.h:112: 		ParseStmt( parser );
	.loc 11 112 3
	lea	rax, -96[rbp]	# tmp86,
	mov	rdx, QWORD PTR -48[rbp]	# tmp87, parser
	mov	rsi, rdx	#, tmp87
	mov	rdi, rax	#, tmp86
	call	ParseStmt	#
.L297:
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 11 110 22
	mov	rax, QWORD PTR -48[rbp]	# tmp88, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_5(D)->token.type
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 11 110 28
	test	eax, eax	# _1
	je	.L298	#,
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 11 110 44 discriminator 1
	mov	rax, QWORD PTR -48[rbp]	# tmp89, parser
	mov	eax, DWORD PTR [rax]	# _2, parser_5(D)->token.type
# parser/parser.h:110: 	while( parser->token.type && parser->token.type != TK_END )
	.loc 11 110 28 discriminator 1
	cmp	eax, 51	# _2,
	jne	.L299	#,
.L298:
# parser/parser.h:114: 	ParseMatch( parser, TK_END );
	.loc 11 114 2
	mov	rax, QWORD PTR -48[rbp]	# tmp90, parser
	mov	esi, 51	#,
	mov	rdi, rax	#, tmp90
	call	ParseMatch	#
# parser/parser.h:115: 	return ( ParseNode ){ 0 };
	.loc 11 115 9
	mov	rax, QWORD PTR -40[rbp]	# tmp91, .result_ptr
	pxor	xmm0, xmm0	# tmp92
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp92
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp92
# parser/parser.h:116: }
	.loc 11 116 1
	mov	rax, QWORD PTR -8[rbp]	# tmp94, D.6451
	sub	rax, QWORD PTR fs:40	# tmp94, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L301	#,
	call	__stack_chk_fail@PLT	#
.L301:
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE81:
	.size	ParseFunc, .-ParseFunc
	.globl	ParseId
	.type	ParseId, @function
ParseId:
.LFB82:
	.loc 11 119 1
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
	.loc 11 119 1
	mov	rax, QWORD PTR fs:40	# tmp96, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6454, tmp96
	xor	eax, eax	# tmp96
# parser/parser.h:120: 	String* name = parser->token.value.str;
	.loc 11 120 10
	mov	rax, QWORD PTR -64[rbp]	# tmp83, parser
	mov	rax, QWORD PTR 16[rax]	# tmp84, parser_4(D)->token.value.D.4160.str
	mov	QWORD PTR -40[rbp], rax	# name, tmp84
# parser/parser.h:121: 	ParseMatch( parser, TK_ID );
	.loc 11 121 2
	mov	rax, QWORD PTR -64[rbp]	# tmp85, parser
	mov	esi, 57	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:122: 	ParseMatch( parser, TK_COLON );
	.loc 11 122 2
	mov	rax, QWORD PTR -64[rbp]	# tmp86, parser
	mov	esi, 49	#,
	mov	rdi, rax	#, tmp86
	call	ParseMatch	#
# parser/parser.h:123: 	if( parser->token.type == TK_LP ){ return ParseFunc( parser, name ); }
	.loc 11 123 19
	mov	rax, QWORD PTR -64[rbp]	# tmp87, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_4(D)->token.type
# parser/parser.h:123: 	if( parser->token.type == TK_LP ){ return ParseFunc( parser, name ); }
	.loc 11 123 4
	cmp	eax, 36	# _1,
	jne	.L303	#,
# parser/parser.h:123: 	if( parser->token.type == TK_LP ){ return ParseFunc( parser, name ); }
	.loc 11 123 44 discriminator 1
	mov	rax, QWORD PTR -56[rbp]	# tmp88, .result_ptr
	mov	rdx, QWORD PTR -40[rbp]	# tmp89, name
	mov	rcx, QWORD PTR -64[rbp]	# tmp90, parser
	mov	rsi, rcx	#, tmp90
	mov	rdi, rax	#, tmp88
	call	ParseFunc	#
# parser/parser.h:123: 	if( parser->token.type == TK_LP ){ return ParseFunc( parser, name ); }
	.loc 11 123 44 is_stmt 0
	jmp	.L305	#
.L303:
# parser/parser.h:124: 	ParseNode rhs = ParseExpr( parser, PREC_NONE );
	.loc 11 124 18 is_stmt 1
	lea	rax, -32[rbp]	# tmp91,
	mov	rcx, QWORD PTR -64[rbp]	# tmp92, parser
	mov	edx, 0	#,
	mov	rsi, rcx	#, tmp92
	mov	rdi, rax	#, tmp91
	call	ParseExpr	#
# parser/parser.h:126: 	return rhs;
	.loc 11 126 9
	mov	rcx, QWORD PTR -56[rbp]	# tmp93, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp94, rhs
	mov	rdx, QWORD PTR -24[rbp]	#, rhs
	mov	QWORD PTR [rcx], rax	# <retval>, tmp94
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp95, rhs
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp95
.L305:
# parser/parser.h:127: }
	.loc 11 127 1
	mov	rax, QWORD PTR -8[rbp]	# tmp97, D.6454
	sub	rax, QWORD PTR fs:40	# tmp97, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L306	#,
	call	__stack_chk_fail@PLT	#
.L306:
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE82:
	.size	ParseId, .-ParseId
	.globl	ParseEos
	.type	ParseEos, @function
ParseEos:
.LFB83:
	.loc 11 132 1
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
	.loc 11 133 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# parser/parser.h:134: }
	.loc 11 134 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE83:
	.size	ParseEos, .-ParseEos
	.section	.rodata
.LC8:
	.string	"Illegal operation: %d\n"
	.text
	.globl	ParseErr
	.type	ParseErr, @function
ParseErr:
.LFB84:
	.loc 11 137 1
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
	.loc 11 138 49
	mov	rax, QWORD PTR -48[rbp]	# tmp83, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_3(D)->token.type
# parser/parser.h:138: 	Throw( "Illegal operation: %d\n", parser->token.type );
	.loc 11 138 2
	mov	esi, eax	#, _1
	lea	rax, .LC8[rip]	# tmp84,
	mov	rdi, rax	#, tmp84
	mov	eax, 0	#,
	call	Throw	#
# parser/parser.h:139: 	return ( ParseNode ){ 0 };
	.loc 11 139 9
	mov	rax, QWORD PTR -40[rbp]	# tmp85, .result_ptr
	pxor	xmm0, xmm0	# tmp86
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp86
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp86
# parser/parser.h:140: }
	.loc 11 140 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE84:
	.size	ParseErr, .-ParseErr
	.globl	ParseUnary
	.type	ParseUnary, @function
ParseUnary:
.LFB85:
	.loc 11 143 1
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
	.loc 11 143 1
	mov	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6461, tmp93
	xor	eax, eax	# tmp93
# parser/parser.h:144: 	TokenType op = parser->token.type;
	.loc 11 144 12
	mov	rax, QWORD PTR -64[rbp]	# tmp83, parser
	mov	eax, DWORD PTR [rax]	# tmp84, parser_3(D)->token.type
	mov	DWORD PTR -36[rbp], eax	# op, tmp84
# parser/parser.h:145: 	ParseMatch( parser, parser->token.type ); /* op */
	.loc 11 145 2
	mov	rax, QWORD PTR -64[rbp]	# tmp85, parser
	mov	edx, DWORD PTR [rax]	# _1, parser_3(D)->token.type
	mov	rax, QWORD PTR -64[rbp]	# tmp86, parser
	mov	esi, edx	#, _1
	mov	rdi, rax	#, tmp86
	call	ParseMatch	#
# parser/parser.h:146: 	ParseNode rhs = ParseExpr( parser, cur );
	.loc 11 146 18
	lea	rax, -32[rbp]	# tmp87,
	mov	edx, DWORD PTR -68[rbp]	# tmp88, cur
	mov	rcx, QWORD PTR -64[rbp]	# tmp89, parser
	mov	rsi, rcx	#, tmp89
	mov	rdi, rax	#, tmp87
	call	ParseExpr	#
# parser/parser.h:147: 	return CompileUna( op, &rhs );
	.loc 11 147 9
	mov	rax, QWORD PTR -56[rbp]	# tmp90, .result_ptr
	lea	rdx, -32[rbp]	# tmp91,
	mov	ecx, DWORD PTR -36[rbp]	# tmp92, op
	mov	esi, ecx	#, tmp92
	mov	rdi, rax	#, tmp90
	call	CompileUna	#
# parser/parser.h:148: }
	.loc 11 148 1
	mov	rax, QWORD PTR -8[rbp]	# tmp94, D.6461
	sub	rax, QWORD PTR fs:40	# tmp94, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L313	#,
	call	__stack_chk_fail@PLT	#
.L313:
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE85:
	.size	ParseUnary, .-ParseUnary
	.globl	ParseBinary
	.type	ParseBinary, @function
ParseBinary:
.LFB86:
	.loc 11 151 1
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
	.loc 11 151 1
	mov	rax, QWORD PTR fs:40	# tmp94, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6465, tmp94
	xor	eax, eax	# tmp94
# parser/parser.h:152: 	TokenType op = parser->token.type;
	.loc 11 152 12
	mov	rax, QWORD PTR -64[rbp]	# tmp83, parser
	mov	eax, DWORD PTR [rax]	# tmp84, parser_3(D)->token.type
	mov	DWORD PTR -36[rbp], eax	# op, tmp84
# parser/parser.h:153: 	ParseMatch( parser, parser->token.type ); /* op */
	.loc 11 153 2
	mov	rax, QWORD PTR -64[rbp]	# tmp85, parser
	mov	edx, DWORD PTR [rax]	# _1, parser_3(D)->token.type
	mov	rax, QWORD PTR -64[rbp]	# tmp86, parser
	mov	esi, edx	#, _1
	mov	rdi, rax	#, tmp86
	call	ParseMatch	#
# parser/parser.h:154: 	ParseNode rhs = ParseExpr( parser, cur );
	.loc 11 154 18
	lea	rax, -32[rbp]	# tmp87,
	mov	edx, DWORD PTR -76[rbp]	# tmp88, cur
	mov	rcx, QWORD PTR -64[rbp]	# tmp89, parser
	mov	rsi, rcx	#, tmp89
	mov	rdi, rax	#, tmp87
	call	ParseExpr	#
# parser/parser.h:155: 	return CompileBin( lhs, op, &rhs );
	.loc 11 155 9
	mov	rax, QWORD PTR -56[rbp]	# tmp90, .result_ptr
	lea	rcx, -32[rbp]	# tmp91,
	mov	edx, DWORD PTR -36[rbp]	# tmp92, op
	mov	rsi, QWORD PTR -72[rbp]	# tmp93, lhs
	mov	rdi, rax	#, tmp90
	call	CompileBin	#
# parser/parser.h:156: }
	.loc 11 156 1
	mov	rax, QWORD PTR -8[rbp]	# tmp95, D.6465
	sub	rax, QWORD PTR fs:40	# tmp95, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L316	#,
	call	__stack_chk_fail@PLT	#
.L316:
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE86:
	.size	ParseBinary, .-ParseBinary
	.globl	ParseGroup
	.type	ParseGroup, @function
ParseGroup:
.LFB87:
	.loc 11 159 1
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
	.loc 11 159 1
	mov	rax, QWORD PTR fs:40	# tmp89, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6469, tmp89
	xor	eax, eax	# tmp89
# parser/parser.h:160: 	ParseMatch( parser, TK_LP );
	.loc 11 160 2
	mov	rax, QWORD PTR -48[rbp]	# tmp82, parser
	mov	esi, 36	#,
	mov	rdi, rax	#, tmp82
	call	ParseMatch	#
# parser/parser.h:161: 	ParseNode node = ParseExpr( parser, PREC_NONE );
	.loc 11 161 19
	lea	rax, -32[rbp]	# tmp83,
	mov	rcx, QWORD PTR -48[rbp]	# tmp84, parser
	mov	edx, 0	#,
	mov	rsi, rcx	#, tmp84
	mov	rdi, rax	#, tmp83
	call	ParseExpr	#
# parser/parser.h:162: 	ParseMatch( parser, TK_RP );
	.loc 11 162 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 37	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:163: 	return node;
	.loc 11 163 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:164: }
	.loc 11 164 1
	mov	rax, QWORD PTR -8[rbp]	# tmp90, D.6469
	sub	rax, QWORD PTR fs:40	# tmp90, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L319	#,
	call	__stack_chk_fail@PLT	#
.L319:
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE87:
	.size	ParseGroup, .-ParseGroup
	.globl	ParseCall
	.type	ParseCall, @function
ParseCall:
.LFB88:
	.loc 11 167 1
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
	.loc 11 168 10
	mov	rax, QWORD PTR -64[rbp]	# tmp82, parser
	mov	rax, QWORD PTR 16[rax]	# tmp83, parser_2(D)->token.value.D.4160.str
	mov	QWORD PTR -40[rbp], rax	# name, tmp83
# parser/parser.h:169: 	ParseMatch( parser, TK_ID );
	.loc 11 169 2
	mov	rax, QWORD PTR -64[rbp]	# tmp84, parser
	mov	esi, 57	#,
	mov	rdi, rax	#, tmp84
	call	ParseMatch	#
# parser/parser.h:170: 	ParseMatch( parser, TK_LP );
	.loc 11 170 2
	mov	rax, QWORD PTR -64[rbp]	# tmp85, parser
	mov	esi, 36	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:172: 	ParseMatch( parser, TK_RP );
	.loc 11 172 2
	mov	rax, QWORD PTR -64[rbp]	# tmp86, parser
	mov	esi, 37	#,
	mov	rdi, rax	#, tmp86
	call	ParseMatch	#
# parser/parser.h:173: 	return ( ParseNode ){ 0 };
	.loc 11 173 9
	mov	rax, QWORD PTR -56[rbp]	# tmp87, .result_ptr
	pxor	xmm0, xmm0	# tmp88
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp88
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp88
# parser/parser.h:174: }
	.loc 11 174 1
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE88:
	.size	ParseCall, .-ParseCall
	.globl	ParseI64
	.type	ParseI64, @function
ParseI64:
.LFB89:
	.loc 11 177 1
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
	.loc 11 178 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
# parser/parser.h:179: 	node.value.i64 = parser->token.value.i64;
	.loc 11 179 38
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	mov	rax, QWORD PTR 16[rax]	# _1, parser_4(D)->token.value.D.4160.i64
# parser/parser.h:179: 	node.value.i64 = parser->token.value.i64;
	.loc 11 179 17
	mov	QWORD PTR -16[rbp], rax	# node.value.D.4160.i64, _1
# parser/parser.h:180: 	ParseMatch( parser, TK_I64 );
	.loc 11 180 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 54	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:181: 	return node;
	.loc 11 181 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:182: }
	.loc 11 182 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE89:
	.size	ParseI64, .-ParseI64
	.globl	ParseF64
	.type	ParseF64, @function
ParseF64:
.LFB90:
	.loc 11 185 1
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
	.loc 11 186 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
	mov	DWORD PTR -24[rbp], 1	# node.value.type,
# parser/parser.h:187: 	node.value.f64 = parser->token.value.f64;
	.loc 11 187 38
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	movsd	xmm0, QWORD PTR 16[rax]	# _1, parser_5(D)->token.value.D.4160.f64
# parser/parser.h:187: 	node.value.f64 = parser->token.value.f64;
	.loc 11 187 17
	movsd	QWORD PTR -16[rbp], xmm0	# node.value.D.4160.f64, _1
# parser/parser.h:188: 	ParseMatch( parser, TK_F64 );
	.loc 11 188 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 55	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:189: 	return node;
	.loc 11 189 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:190: }
	.loc 11 190 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE90:
	.size	ParseF64, .-ParseF64
	.globl	ParseStr
	.type	ParseStr, @function
ParseStr:
.LFB91:
	.loc 11 193 1
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
	.loc 11 194 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
	mov	DWORD PTR -24[rbp], 2	# node.value.type,
# parser/parser.h:195: 	node.value.str = parser->token.value.str;
	.loc 11 195 38
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	mov	rax, QWORD PTR 16[rax]	# _1, parser_5(D)->token.value.D.4160.str
# parser/parser.h:195: 	node.value.str = parser->token.value.str;
	.loc 11 195 17
	mov	QWORD PTR -16[rbp], rax	# node.value.D.4160.str, _1
# parser/parser.h:196: 	ParseMatch( parser, TK_STR );
	.loc 11 196 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 56	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:197: 	return node;
	.loc 11 197 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:198: }
	.loc 11 198 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE91:
	.size	ParseStr, .-ParseStr
	.globl	ParseRef
	.type	ParseRef, @function
ParseRef:
.LFB92:
	.loc 11 201 1
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
	.loc 11 202 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
	mov	DWORD PTR -32[rbp], 1	# node.type,
	mov	DWORD PTR -24[rbp], 2	# node.value.type,
# parser/parser.h:203: 	node.value.str = parser->token.value.str;
	.loc 11 203 38
	mov	rax, QWORD PTR -48[rbp]	# tmp84, parser
	mov	rax, QWORD PTR 16[rax]	# _1, parser_6(D)->token.value.D.4160.str
# parser/parser.h:203: 	node.value.str = parser->token.value.str;
	.loc 11 203 17
	mov	QWORD PTR -16[rbp], rax	# node.value.D.4160.str, _1
# parser/parser.h:204: 	ParseMatch( parser, TK_ID );
	.loc 11 204 2
	mov	rax, QWORD PTR -48[rbp]	# tmp85, parser
	mov	esi, 57	#,
	mov	rdi, rax	#, tmp85
	call	ParseMatch	#
# parser/parser.h:205: 	return node;
	.loc 11 205 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp86, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp87, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp87
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp88, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp88
# parser/parser.h:206: }
	.loc 11 206 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE92:
	.size	ParseRef, .-ParseRef
	.globl	ParseExpr
	.type	ParseExpr, @function
ParseExpr:
.LFB93:
	.loc 11 209 1
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
	.loc 11 209 1
	mov	rax, QWORD PTR fs:40	# tmp150, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6477, tmp150
	xor	eax, eax	# tmp150
# parser/parser.h:211: 	ParseRule *rule = &rules[ parser->token.type ];
	.loc 11 211 41
	mov	rax, QWORD PTR -64[rbp]	# tmp88, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_13(D)->token.type
# parser/parser.h:211: 	ParseRule *rule = &rules[ parser->token.type ];
	.loc 11 211 13
	mov	edx, eax	# tmp89, _1
	mov	rax, rdx	# tmp90, tmp89
	add	rax, rax	# tmp90
	add	rax, rdx	# tmp90, tmp89
	sal	rax, 3	# tmp91,
	lea	rdx, rules.44[rip]	# tmp92,
	add	rax, rdx	# tmp93, tmp92
	mov	QWORD PTR -40[rbp], rax	# rule, tmp93
# parser/parser.h:212: 	ParseNode node = { 0 };
	.loc 11 212 12
	pxor	xmm0, xmm0	# tmp94
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp94
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp94
# parser/parser.h:213: 	goto *rule->nud;
	.loc 11 213 12
	mov	rax, QWORD PTR -40[rbp]	# tmp95, rule
	mov	rax, QWORD PTR [rax]	# _2, rule_14->nud
# parser/parser.h:213: 	goto *rule->nud;
	.loc 11 213 2
	jmp	.L331	#
.L332:
# parser/parser.h:215: 		rule = &rules[ parser->token.type ];
	.loc 11 215 31
	mov	rax, QWORD PTR -64[rbp]	# tmp96, parser
	mov	eax, DWORD PTR [rax]	# _3, parser_13(D)->token.type
# parser/parser.h:215: 		rule = &rules[ parser->token.type ];
	.loc 11 215 8
	mov	edx, eax	# tmp97, _3
	mov	rax, rdx	# tmp98, tmp97
	add	rax, rax	# tmp98
	add	rax, rdx	# tmp98, tmp97
	sal	rax, 3	# tmp99,
	lea	rdx, rules.44[rip]	# tmp100,
	add	rax, rdx	# tmp101, tmp100
	mov	QWORD PTR -40[rbp], rax	# rule, tmp101
# parser/parser.h:216: 		if( rule->prec > prec ){ goto *rule->led; }
	.loc 11 216 11
	mov	rax, QWORD PTR -40[rbp]	# tmp102, rule
	mov	eax, DWORD PTR 16[rax]	# _4, rule_27->prec
# parser/parser.h:216: 		if( rule->prec > prec ){ goto *rule->led; }
	.loc 11 216 5
	cmp	DWORD PTR -68[rbp], eax	# prec, _4
	jnb	.L347	#,
# parser/parser.h:216: 		if( rule->prec > prec ){ goto *rule->led; }
	.loc 11 216 38 discriminator 1
	mov	rax, QWORD PTR -40[rbp]	# tmp103, rule
	mov	rax, QWORD PTR 8[rax]	# _2, rule_27->led
# parser/parser.h:216: 		if( rule->prec > prec ){ goto *rule->led; }
	.loc 11 216 28
	jmp	.L331	#
.L335:
	endbr64	
# parser/expr_labels.h:1: EOS: node = ParseEos( parser ); goto LED;
	.file 12 "parser/expr_labels.h"
	.loc 12 1 13
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
	.loc 12 1 33
	jmp	.L332	#
.L331:
	jmp	rax	# _2
.L336:
	endbr64	
# parser/expr_labels.h:2: ERR: node = ParseErr( parser ); goto LED;
	.loc 12 2 13
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
	.loc 12 2 33
	jmp	.L332	#
.L337:
	endbr64	
# parser/expr_labels.h:3: UNARY: node = ParseUnary( parser, rule->prec ); goto LED;
	.loc 12 3 15
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
	.loc 12 3 49
	jmp	.L332	#
.L338:
	endbr64	
# parser/expr_labels.h:4: BINARY: node = ParseBinary( parser, &node, rule->prec ); goto LED;
	.loc 12 4 16
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
	.loc 12 4 58
	jmp	.L332	#
.L339:
	endbr64	
# parser/expr_labels.h:5: GROUP: node = ParseGroup( parser ); goto LED;
	.loc 12 5 15
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
	.loc 12 5 37
	jmp	.L332	#
.L340:
	endbr64	
# parser/expr_labels.h:6: CALL: node = ParseCall( parser ); goto LED;
	.loc 12 6 14
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
	.loc 12 6 35
	jmp	.L332	#
.L341:
	endbr64	
# parser/expr_labels.h:7: I64: node = ParseI64( parser ); goto LED;
	.loc 12 7 13
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
	.loc 12 7 33
	jmp	.L332	#
.L342:
	endbr64	
# parser/expr_labels.h:8: F64: node = ParseF64( parser ); goto LED; 
	.loc 12 8 13
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
	.loc 12 8 33
	jmp	.L332	#
.L343:
	endbr64	
# parser/expr_labels.h:9: STR: node = ParseStr( parser ); goto LED;
	.loc 12 9 13
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
	.loc 12 9 33
	jmp	.L332	#
.L344:
	endbr64	
# parser/expr_labels.h:10: REF: node = ParseRef( parser ); goto LED;
	.loc 12 10 13
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
	.loc 12 10 33
	jmp	.L332	#
.L347:
# parser/parser.h:217: 		goto DONE;
	.loc 11 217 3
	nop	
.L334:
# parser/parser.h:219: 	DONE: return node;
	.loc 11 219 15
	mov	rcx, QWORD PTR -56[rbp]	# tmp147, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp148, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp148
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp149, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp149
# parser/parser.h:220: }
	.loc 11 220 1
	mov	rax, QWORD PTR -8[rbp]	# tmp151, D.6477
	sub	rax, QWORD PTR fs:40	# tmp151, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L346	#,
	call	__stack_chk_fail@PLT	#
.L346:
	mov	rax, QWORD PTR -56[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE93:
	.size	ParseExpr, .-ParseExpr
	.globl	ParseStmt
	.type	ParseStmt, @function
ParseStmt:
.LFB94:
	.loc 11 223 1
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
	.loc 11 223 1
	mov	rax, QWORD PTR fs:40	# tmp100, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6489, tmp100
	xor	eax, eax	# tmp100
# parser/parser.h:225: 	goto *stmts[ parser->token.type ];
	.loc 11 225 28
	mov	rax, QWORD PTR -32[rbp]	# tmp84, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_5(D)->token.type
# parser/parser.h:225: 	goto *stmts[ parser->token.type ];
	.loc 11 225 13
	mov	eax, eax	# tmp85, _1
	lea	rdx, 0[0+rax*8]	# tmp86,
	lea	rax, stmts.43[rip]	# tmp87,
	mov	rax, QWORD PTR [rdx+rax]	# _2, stmts[_1]
# parser/parser.h:225: 	goto *stmts[ parser->token.type ];
	.loc 11 225 2
	nop	
	jmp	rax	# _2
.L350:
	endbr64	
# parser/stmt_labels.h:1: EXPR: return ParseExpr( parser, PREC_NONE );
	.file 13 "parser/stmt_labels.h"
	.loc 13 1 14
	mov	rax, QWORD PTR -24[rbp]	# tmp88, .result_ptr
	mov	rcx, QWORD PTR -32[rbp]	# tmp89, parser
	mov	edx, 0	#,
	mov	rsi, rcx	#, tmp89
	mov	rdi, rax	#, tmp88
	call	ParseExpr	#
	jmp	.L351	#
.L352:
	endbr64	
# parser/stmt_labels.h:2: IF: return ParseIf( parser );
	.loc 13 2 12
	mov	rax, QWORD PTR -24[rbp]	# tmp90, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp91, parser
	mov	rsi, rdx	#, tmp91
	mov	rdi, rax	#, tmp90
	call	ParseIf	#
	jmp	.L351	#
.L353:
	endbr64	
# parser/stmt_labels.h:3: FOR: return ParseFor( parser );
	.loc 13 3 13
	mov	rax, QWORD PTR -24[rbp]	# tmp92, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp93, parser
	mov	rsi, rdx	#, tmp93
	mov	rdi, rax	#, tmp92
	call	ParseFor	#
	jmp	.L351	#
.L354:
	endbr64	
# parser/stmt_labels.h:4: DO: return ParseDo( parser );
	.loc 13 4 12
	mov	rax, QWORD PTR -24[rbp]	# tmp94, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp95, parser
	mov	rsi, rdx	#, tmp95
	mov	rdi, rax	#, tmp94
	call	ParseDo	#
	jmp	.L351	#
.L355:
	endbr64	
# parser/stmt_labels.h:5: WHILE: return ParseWhile( parser );
	.loc 13 5 15
	mov	rax, QWORD PTR -24[rbp]	# tmp96, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp97, parser
	mov	rsi, rdx	#, tmp97
	mov	rdi, rax	#, tmp96
	call	ParseWhile	#
	jmp	.L351	#
.L356:
	endbr64	
# parser/stmt_labels.h:6: ID: return ParseId( parser );
	.loc 13 6 12
	mov	rax, QWORD PTR -24[rbp]	# tmp98, .result_ptr
	mov	rdx, QWORD PTR -32[rbp]	# tmp99, parser
	mov	rsi, rdx	#, tmp99
	mov	rdi, rax	#, tmp98
	call	ParseId	#
.L351:
# parser/parser.h:227: }
	.loc 11 227 1
	mov	rax, QWORD PTR -8[rbp]	# tmp101, D.6489
	sub	rax, QWORD PTR fs:40	# tmp101, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L357	#,
	call	__stack_chk_fail@PLT	#
.L357:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE94:
	.size	ParseStmt, .-ParseStmt
	.globl	Parse
	.type	Parse, @function
Parse:
.LFB95:
	.loc 11 230 1
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
	.loc 11 230 1
	mov	rax, QWORD PTR fs:40	# tmp92, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -24[rbp], rax	# D.6497, tmp92
	xor	eax, eax	# tmp92
# parser/parser.h:231: 	Parser *parser = GetParser( );
	.loc 11 231 19
	call	GetParser	#
	mov	QWORD PTR -56[rbp], rax	# parser, tmp83
# parser/parser.h:232: 	parser->token = Lex( );
	.loc 11 232 18
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
	.loc 11 233 7
	jmp	.L359	#
.L360:
.LBB11:
# parser/parser.h:235: 		ParseNode node = ParseStmt( parser );
	.loc 11 235 20
	lea	rax, -48[rbp]	# tmp88,
	mov	rdx, QWORD PTR -56[rbp]	# tmp89, parser
	mov	rsi, rdx	#, tmp89
	mov	rdi, rax	#, tmp88
	call	ParseStmt	#
# parser/parser.h:236: 		ParseNodeLog( &node );
	.loc 11 236 3
	lea	rax, -48[rbp]	# tmp90,
	mov	rdi, rax	#, tmp90
	call	ParseNodeLog	#
.L359:
.LBE11:
# parser/parser.h:233: 	while( parser->token.type != TK_EOS )
	.loc 11 233 22
	mov	rax, QWORD PTR -56[rbp]	# tmp91, parser
	mov	eax, DWORD PTR [rax]	# _1, parser_5->token.type
# parser/parser.h:233: 	while( parser->token.type != TK_EOS )
	.loc 11 233 28
	test	eax, eax	# _1
	jne	.L360	#,
# parser/parser.h:238: }
	.loc 11 238 1
	nop	
	mov	rax, QWORD PTR -24[rbp]	# tmp93, D.6497
	sub	rax, QWORD PTR fs:40	# tmp93, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L361	#,
	call	__stack_chk_fail@PLT	#
.L361:
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE95:
	.size	Parse, .-Parse
	.type	GetCompiler, @function
GetCompiler:
.LFB96:
	.file 14 "compiler/compiler.h"
	.loc 14 40 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# compiler/compiler.h:42: 	return &compiler;
	.loc 14 42 9
	lea	rax, compiler.41[rip]	# _1,
# compiler/compiler.h:43: }
	.loc 14 43 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE96:
	.size	GetCompiler, .-GetCompiler
	.globl	FnCommit
	.type	FnCommit, @function
FnCommit:
.LFB97:
	.loc 14 46 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# compiler/compiler.h:47: 	Compiler *compiler = GetCompiler( );
	.loc 14 47 23
	call	GetCompiler	#
	mov	QWORD PTR -16[rbp], rax	# compiler, tmp90
# compiler/compiler.h:48: 	Func *fn = VecCommit( GetFuncs( ) );
	.loc 14 48 13
	call	GetFuncs	#
# compiler/compiler.h:48: 	Func *fn = VecCommit( GetFuncs( ) );
	.loc 14 48 13 is_stmt 0 discriminator 1
	mov	rdi, rax	#, _1
	call	VecCommit	#
	mov	QWORD PTR -8[rbp], rax	# fn, tmp91
# compiler/compiler.h:49: 	fn->iconsts = GetConsts( )->len;
	.loc 14 49 16 is_stmt 1
	call	GetConsts	#
# compiler/compiler.h:49: 	fn->iconsts = GetConsts( )->len;
	.loc 14 49 28 discriminator 1
	mov	edx, DWORD PTR 8[rax]	# _3, _2->D.4073.len
# compiler/compiler.h:49: 	fn->iconsts = GetConsts( )->len;
	.loc 14 49 14 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp92, fn
	mov	DWORD PTR [rax], edx	# fn_14->iconsts, _3
# compiler/compiler.h:50: 	fn->ilocals = GetLocals( )->len;
	.loc 14 50 16
	call	GetLocals	#
# compiler/compiler.h:50: 	fn->ilocals = GetLocals( )->len;
	.loc 14 50 28 discriminator 1
	mov	edx, DWORD PTR 8[rax]	# _5, _4->D.4073.len
# compiler/compiler.h:50: 	fn->ilocals = GetLocals( )->len;
	.loc 14 50 14 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp93, fn
	mov	DWORD PTR 4[rax], edx	# fn_14->ilocals, _5
# compiler/compiler.h:51: 	fn->icode = GetCode( )->len;
	.loc 14 51 14
	call	GetCode	#
# compiler/compiler.h:51: 	fn->icode = GetCode( )->len;
	.loc 14 51 24 discriminator 1
	mov	edx, DWORD PTR 8[rax]	# _7, _6->D.4073.len
# compiler/compiler.h:51: 	fn->icode = GetCode( )->len;
	.loc 14 51 12 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp94, fn
	mov	DWORD PTR 8[rax], edx	# fn_14->icode, _7
# compiler/compiler.h:52: 	fn->nconsts = fn->nlocals = fn->ncode = 0;
	.loc 14 52 40
	mov	rax, QWORD PTR -8[rbp]	# tmp95, fn
	mov	WORD PTR 14[rax], 0	# fn_14->ncode,
# compiler/compiler.h:52: 	fn->nconsts = fn->nlocals = fn->ncode = 0;
	.loc 14 52 28
	mov	rax, QWORD PTR -8[rbp]	# tmp96, fn
	mov	BYTE PTR 13[rax], 0	# fn_14->nlocals,
# compiler/compiler.h:52: 	fn->nconsts = fn->nlocals = fn->ncode = 0;
	.loc 14 52 18
	mov	rax, QWORD PTR -8[rbp]	# tmp97, fn
	movzx	edx, BYTE PTR 13[rax]	# _8, fn_14->nlocals
# compiler/compiler.h:52: 	fn->nconsts = fn->nlocals = fn->ncode = 0;
	.loc 14 52 14
	mov	rax, QWORD PTR -8[rbp]	# tmp98, fn
	mov	BYTE PTR 12[rax], dl	# fn_14->nconsts, _8
# compiler/compiler.h:53: 	compiler->fn = fn;
	.loc 14 53 15
	mov	rax, QWORD PTR -16[rbp]	# tmp99, compiler
	mov	rdx, QWORD PTR -8[rbp]	# tmp100, fn
	mov	QWORD PTR [rax], rdx	# compiler_11->fn, tmp100
# compiler/compiler.h:54: }
	.loc 14 54 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE97:
	.size	FnCommit, .-FnCommit
	.globl	CompilerInit
	.type	CompilerInit, @function
CompilerInit:
.LFB98:
	.loc 14 57 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# compiler/compiler.h:58: 	Compiler *compiler = GetCompiler( );
	.loc 14 58 23
	call	GetCompiler	#
	mov	QWORD PTR -8[rbp], rax	# compiler, tmp82
# compiler/compiler.h:59: 	compiler->in_fn = 0;
	.loc 14 59 18
	mov	rax, QWORD PTR -8[rbp]	# tmp83, compiler
	mov	BYTE PTR 8[rax], 0	# compiler_3->in_fn,
# compiler/compiler.h:60: 	FnCommit( );
	.loc 14 60 2
	call	FnCommit	#
# compiler/compiler.h:61: }
	.loc 14 61 1
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE98:
	.size	CompilerInit, .-CompilerInit
	.type	TkToOp, @function
TkToOp:
.LFB107:
	.loc 14 142 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi	# type, type
# compiler/compiler.h:144: 	return token_ops[ type ];
	.loc 14 144 18
	mov	eax, DWORD PTR -4[rbp]	# tmp84, type
	lea	rdx, 0[0+rax*4]	# tmp85,
	lea	rax, token_ops.29[rip]	# tmp86,
	mov	eax, DWORD PTR [rdx+rax]	# _3, token_ops[type_2(D)]
# compiler/compiler.h:145: }
	.loc 14 145 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE107:
	.size	TkToOp, .-TkToOp
	.section	.rodata
.LC9:
	.string	"Illegal Unary Operation: %d\n"
	.text
	.globl	EvalUnaErr
	.type	EvalUnaErr, @function
EvalUnaErr:
.LFB108:
	.file 15 "compiler/unary/eval.h"
	.loc 15 2 1
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
	.loc 15 3 2
	mov	eax, DWORD PTR -20[rbp]	# tmp86, op
	mov	esi, eax	#, tmp86
	lea	rax, .LC9[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	mov	eax, 0	#,
	call	Throw	#
# compiler/unary/eval.h:4: 	return ( Value ){ 0 };
	.loc 15 4 9
	mov	eax, 0	# D.5686,
	mov	edx, 0	# D.5686,
	mov	rsi, rax	# tmp89, D.5686
	mov	rdi, rdx	#, D.5686
	mov	rcx, rax	# tmp90, D.5686
	mov	rbx, rdx	#, D.5686
	mov	eax, esi	# <retval>, tmp89
	mov	rdx, rbx	# <retval>,
# compiler/unary/eval.h:5: }
	.loc 15 5 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE108:
	.size	EvalUnaErr, .-EvalUnaErr
	.globl	EvalNot
	.type	EvalNot, @function
EvalNot:
.LFB109:
	.loc 15 8 1
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
	.loc 15 10 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp96, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_11(D)->type
# compiler/unary/eval.h:10: 	goto *types[ rhs->type ];
	.loc 15 10 13
	mov	ecx, ecx	# tmp97, _1
	lea	rsi, 0[0+rcx*8]	# tmp98,
	lea	rcx, types.36[rip]	# tmp99,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:10: 	goto *types[ rhs->type ];
	.loc 15 10 2
	nop	
	jmp	rcx	# _2
.L372:
	endbr64	
# compiler/unary/eval.h:11: 	I64: return VALUE( I64, i64, !rhs->i64 );
	.loc 15 11 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp100, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_11(D)->D.4160.i64
	test	rcx, rcx	# _3
	sete	cl	#, _4
	movzx	ecx, cl	# _5, _4
	mov	rdi, rax	# tmp102, D.5689
	movabs	rsi, -4294967296	# tmp104,
	and	rsi, rdi	# tmp103, tmp102
	mov	rax, rsi	# D.5689, tmp103
	mov	rdx, rcx	# D.5689, _5
	jmp	.L373	#
.L374:
	endbr64	
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 15 12 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, rhs_11(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp106
	ucomisd	xmm0, xmm1	# _6, tmp106
	jp	.L375	#,
	pxor	xmm1, xmm1	# tmp107
	ucomisd	xmm0, xmm1	# _6, tmp107
	jne	.L375	#,
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 15 12 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC11[rip]	# iftmp.15_8,
	jmp	.L377	#
.L375:
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 15 12 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.15_8
.L377:
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 15 12 14 discriminator 4
	mov	rsi, rax	# tmp109, D.5689
	movabs	rcx, -4294967296	# tmp111,
	and	rcx, rsi	# tmp110, tmp109
	or	rcx, 1	# tmp112,
	mov	rax, rcx	# D.5689, tmp112
	movq	rdx, xmm0	# D.5689, iftmp.15_8
# compiler/unary/eval.h:12: 	F64: return VALUE( F64, f64, !rhs->f64 );
	.loc 15 12 14
	jmp	.L373	#
.L378:
	endbr64	
# compiler/unary/eval.h:13: 	STR: return VALUE( STR, str, rhs->str );
	.loc 15 13 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _7, rhs_11(D)->D.4160.str
	mov	rdi, rax	# tmp115, D.5689
	movabs	rcx, -4294967296	# tmp117,
	and	rcx, rdi	# tmp116, tmp115
	or	rcx, 2	# tmp118,
	mov	rax, rcx	# D.5689, tmp118
	mov	rdx, rsi	# D.5689, _7
.L373:
# compiler/unary/eval.h:14: }
	.loc 15 14 1
	mov	rsi, rax	# tmp120, D.5689
	mov	rdi, rdx	#, D.5689
	mov	rcx, rax	# tmp121, D.5689
	mov	rbx, rdx	#, D.5689
	mov	eax, esi	# <retval>, tmp120
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE109:
	.size	EvalNot, .-EvalNot
	.globl	EvalBnot
	.type	EvalBnot, @function
EvalBnot:
.LFB110:
	.loc 15 17 1
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
	.loc 15 19 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp97, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_12(D)->type
# compiler/unary/eval.h:19: 	goto *types[ rhs->type ];
	.loc 15 19 13
	mov	ecx, ecx	# tmp98, _1
	lea	rsi, 0[0+rcx*8]	# tmp99,
	lea	rcx, types.35[rip]	# tmp100,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:19: 	goto *types[ rhs->type ];
	.loc 15 19 2
	nop	
	jmp	rcx	# _2
.L383:
	endbr64	
# compiler/unary/eval.h:20: 	I64: return VALUE( I64, i64, ~rhs->i64 );
	.loc 15 20 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp101, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_12(D)->D.4160.i64
	not	rcx	# _4
	mov	rdi, rax	# tmp103, D.5698
	movabs	rsi, -4294967296	# tmp105,
	and	rsi, rdi	# tmp104, tmp103
	mov	rax, rsi	# D.5698, tmp104
	mov	rdx, rcx	# D.5698, _4
	jmp	.L384	#
.L385:
	endbr64	
# compiler/unary/eval.h:21: 	F64: return VALUE( F64, f64, ~( I64 )rhs->f64 );
	.loc 15 21 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _5, rhs_12(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _6, _5
	not	rcx	# _7
	pxor	xmm0, xmm0	# _8
	cvtsi2sd	xmm0, rcx	# _8, _7
	mov	rsi, rax	# tmp108, D.5698
	movabs	rcx, -4294967296	# tmp110,
	and	rcx, rsi	# tmp109, tmp108
	or	rcx, 1	# tmp111,
	mov	rax, rcx	# D.5698, tmp111
	movq	rdx, xmm0	# D.5698, _8
	jmp	.L384	#
.L386:
	endbr64	
# compiler/unary/eval.h:22: 	STR: return VALUE( STR, str, rhs->str );
	.loc 15 22 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _9, rhs_12(D)->D.4160.str
	mov	rdi, rax	# tmp114, D.5698
	movabs	rcx, -4294967296	# tmp116,
	and	rcx, rdi	# tmp115, tmp114
	or	rcx, 2	# tmp117,
	mov	rax, rcx	# D.5698, tmp117
	mov	rdx, rsi	# D.5698, _9
.L384:
# compiler/unary/eval.h:23: }
	.loc 15 23 1
	mov	rsi, rax	# tmp119, D.5698
	mov	rdi, rdx	#, D.5698
	mov	rcx, rax	# tmp120, D.5698
	mov	rbx, rdx	#, D.5698
	mov	eax, esi	# <retval>, tmp119
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE110:
	.size	EvalBnot, .-EvalBnot
	.globl	EvalPlus
	.type	EvalPlus, @function
EvalPlus:
.LFB111:
	.loc 15 26 1
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
	.loc 15 28 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp93, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_8(D)->type
# compiler/unary/eval.h:28: 	goto *types[ rhs->type ];
	.loc 15 28 13
	mov	ecx, ecx	# tmp94, _1
	lea	rsi, 0[0+rcx*8]	# tmp95,
	lea	rcx, types.34[rip]	# tmp96,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:28: 	goto *types[ rhs->type ];
	.loc 15 28 2
	nop	
	jmp	rcx	# _2
.L390:
	endbr64	
# compiler/unary/eval.h:29: 	I64: return VALUE( I64, i64, +rhs->i64 );
	.loc 15 29 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp97, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_8(D)->D.4160.i64
	mov	rdi, rax	# tmp99, D.5703
	movabs	rsi, -4294967296	# tmp101,
	and	rsi, rdi	# tmp100, tmp99
	mov	rax, rsi	# D.5703, tmp100
	mov	rdx, rcx	# D.5703, _3
	jmp	.L391	#
.L392:
	endbr64	
# compiler/unary/eval.h:30: 	F64: return VALUE( F64, f64, +rhs->f64 );
	.loc 15 30 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _4, rhs_8(D)->D.4160.f64
	mov	rsi, rax	# tmp104, D.5703
	movabs	rcx, -4294967296	# tmp106,
	and	rcx, rsi	# tmp105, tmp104
	or	rcx, 1	# tmp107,
	mov	rax, rcx	# D.5703, tmp107
	movq	rdx, xmm0	# D.5703, _4
	jmp	.L391	#
.L393:
	endbr64	
# compiler/unary/eval.h:31: 	STR: return VALUE( STR, str, rhs->str );
	.loc 15 31 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp108, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _5, rhs_8(D)->D.4160.str
	mov	rdi, rax	# tmp110, D.5703
	movabs	rcx, -4294967296	# tmp112,
	and	rcx, rdi	# tmp111, tmp110
	or	rcx, 2	# tmp113,
	mov	rax, rcx	# D.5703, tmp113
	mov	rdx, rsi	# D.5703, _5
.L391:
# compiler/unary/eval.h:32: }
	.loc 15 32 1
	mov	rsi, rax	# tmp115, D.5703
	mov	rdi, rdx	#, D.5703
	mov	rcx, rax	# tmp116, D.5703
	mov	rbx, rdx	#, D.5703
	mov	eax, esi	# <retval>, tmp115
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE111:
	.size	EvalPlus, .-EvalPlus
	.globl	EvalMinus
	.type	EvalMinus, @function
EvalMinus:
.LFB112:
	.loc 15 35 1
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
	.loc 15 37 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp95, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_10(D)->type
# compiler/unary/eval.h:37: 	goto *types[ rhs->type ];
	.loc 15 37 13
	mov	ecx, ecx	# tmp96, _1
	lea	rsi, 0[0+rcx*8]	# tmp97,
	lea	rcx, types.33[rip]	# tmp98,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:37: 	goto *types[ rhs->type ];
	.loc 15 37 2
	nop	
	jmp	rcx	# _2
.L397:
	endbr64	
# compiler/unary/eval.h:38: 	I64: return VALUE( I64, i64, -rhs->i64 );
	.loc 15 38 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp99, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_10(D)->D.4160.i64
	neg	rcx	# _4
	mov	rdi, rax	# tmp101, D.5708
	movabs	rsi, -4294967296	# tmp103,
	and	rsi, rdi	# tmp102, tmp101
	mov	rax, rsi	# D.5708, tmp102
	mov	rdx, rcx	# D.5708, _4
	jmp	.L398	#
.L399:
	endbr64	
# compiler/unary/eval.h:39: 	F64: return VALUE( F64, f64, -rhs->f64 );
	.loc 15 39 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp104, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _5, rhs_10(D)->D.4160.f64
	movq	xmm1, QWORD PTR .LC12[rip]	# tmp105,
	xorpd	xmm0, xmm1	# _6, tmp105
	mov	rsi, rax	# tmp107, D.5708
	movabs	rcx, -4294967296	# tmp109,
	and	rcx, rsi	# tmp108, tmp107
	or	rcx, 1	# tmp110,
	mov	rax, rcx	# D.5708, tmp110
	movq	rdx, xmm0	# D.5708, _6
	jmp	.L398	#
.L400:
	endbr64	
# compiler/unary/eval.h:40: 	STR: return VALUE( STR, str, rhs->str );
	.loc 15 40 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _7, rhs_10(D)->D.4160.str
	mov	rdi, rax	# tmp113, D.5708
	movabs	rcx, -4294967296	# tmp115,
	and	rcx, rdi	# tmp114, tmp113
	or	rcx, 2	# tmp116,
	mov	rax, rcx	# D.5708, tmp116
	mov	rdx, rsi	# D.5708, _7
.L398:
# compiler/unary/eval.h:41: }
	.loc 15 41 1
	mov	rsi, rax	# tmp118, D.5708
	mov	rdi, rdx	#, D.5708
	mov	rcx, rax	# tmp119, D.5708
	mov	rbx, rdx	#, D.5708
	mov	eax, esi	# <retval>, tmp118
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE112:
	.size	EvalMinus, .-EvalMinus
	.globl	EvalInc
	.type	EvalInc, @function
EvalInc:
.LFB113:
	.loc 15 44 1
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
	.loc 15 46 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp95, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_10(D)->type
# compiler/unary/eval.h:46: 	goto *types[ rhs->type ];
	.loc 15 46 13
	mov	ecx, ecx	# tmp96, _1
	lea	rsi, 0[0+rcx*8]	# tmp97,
	lea	rcx, types.32[rip]	# tmp98,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:46: 	goto *types[ rhs->type ];
	.loc 15 46 2
	nop	
	jmp	rcx	# _2
.L404:
	endbr64	
# compiler/unary/eval.h:47: 	I64: return VALUE( I64, i64, rhs->i64 + 1 );
	.loc 15 47 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp99, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_10(D)->D.4160.i64
	add	rcx, 1	# _4,
	mov	rdi, rax	# tmp101, D.5713
	movabs	rsi, -4294967296	# tmp103,
	and	rsi, rdi	# tmp102, tmp101
	mov	rax, rsi	# D.5713, tmp102
	mov	rdx, rcx	# D.5713, _4
	jmp	.L405	#
.L406:
	endbr64	
# compiler/unary/eval.h:48: 	F64: return VALUE( F64, f64, rhs->f64 + 1 );
	.loc 15 48 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp104, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _5, rhs_10(D)->D.4160.f64
	movsd	xmm0, QWORD PTR .LC11[rip]	# tmp105,
	addsd	xmm0, xmm1	# _6, _5
	mov	rsi, rax	# tmp107, D.5713
	movabs	rcx, -4294967296	# tmp109,
	and	rcx, rsi	# tmp108, tmp107
	or	rcx, 1	# tmp110,
	mov	rax, rcx	# D.5713, tmp110
	movq	rdx, xmm0	# D.5713, _6
	jmp	.L405	#
.L407:
	endbr64	
# compiler/unary/eval.h:49: 	STR: return VALUE( STR, str, rhs->str );
	.loc 15 49 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _7, rhs_10(D)->D.4160.str
	mov	rdi, rax	# tmp113, D.5713
	movabs	rcx, -4294967296	# tmp115,
	and	rcx, rdi	# tmp114, tmp113
	or	rcx, 2	# tmp116,
	mov	rax, rcx	# D.5713, tmp116
	mov	rdx, rsi	# D.5713, _7
.L405:
# compiler/unary/eval.h:50: }
	.loc 15 50 1
	mov	rsi, rax	# tmp118, D.5713
	mov	rdi, rdx	#, D.5713
	mov	rcx, rax	# tmp119, D.5713
	mov	rbx, rdx	#, D.5713
	mov	eax, esi	# <retval>, tmp118
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE113:
	.size	EvalInc, .-EvalInc
	.globl	EvalDec
	.type	EvalDec, @function
EvalDec:
.LFB114:
	.loc 15 53 1
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
	.loc 15 55 18
	mov	rcx, QWORD PTR -24[rbp]	# tmp95, rhs
	mov	ecx, DWORD PTR [rcx]	# _1, rhs_10(D)->type
# compiler/unary/eval.h:55: 	goto *types[ rhs->type ];
	.loc 15 55 13
	mov	ecx, ecx	# tmp96, _1
	lea	rsi, 0[0+rcx*8]	# tmp97,
	lea	rcx, types.31[rip]	# tmp98,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, types[_1]
# compiler/unary/eval.h:55: 	goto *types[ rhs->type ];
	.loc 15 55 2
	nop	
	jmp	rcx	# _2
.L411:
	endbr64	
# compiler/unary/eval.h:56: 	I64: return VALUE( I64, i64, rhs->i64 - 1 );
	.loc 15 56 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp99, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_10(D)->D.4160.i64
	sub	rcx, 1	# _4,
	mov	rdi, rax	# tmp101, D.5718
	movabs	rsi, -4294967296	# tmp103,
	and	rsi, rdi	# tmp102, tmp101
	mov	rax, rsi	# D.5718, tmp102
	mov	rdx, rcx	# D.5718, _4
	jmp	.L412	#
.L413:
	endbr64	
# compiler/unary/eval.h:57: 	F64: return VALUE( F64, f64, rhs->f64 - 1 );
	.loc 15 57 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp104, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _5, rhs_10(D)->D.4160.f64
	movsd	xmm1, QWORD PTR .LC11[rip]	# tmp105,
	subsd	xmm0, xmm1	# _6, tmp105
	mov	rsi, rax	# tmp107, D.5718
	movabs	rcx, -4294967296	# tmp109,
	and	rcx, rsi	# tmp108, tmp107
	or	rcx, 1	# tmp110,
	mov	rax, rcx	# D.5718, tmp110
	movq	rdx, xmm0	# D.5718, _6
	jmp	.L412	#
.L414:
	endbr64	
# compiler/unary/eval.h:58: 	STR: return VALUE( STR, str, rhs->str );
	.loc 15 58 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _7, rhs_10(D)->D.4160.str
	mov	rdi, rax	# tmp113, D.5718
	movabs	rcx, -4294967296	# tmp115,
	and	rcx, rdi	# tmp114, tmp113
	or	rcx, 2	# tmp116,
	mov	rax, rcx	# D.5718, tmp116
	mov	rdx, rsi	# D.5718, _7
.L412:
# compiler/unary/eval.h:59: }
	.loc 15 59 1
	mov	rsi, rax	# tmp118, D.5718
	mov	rdi, rdx	#, D.5718
	mov	rcx, rax	# tmp119, D.5718
	mov	rbx, rdx	#, D.5718
	mov	eax, esi	# <retval>, tmp118
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE114:
	.size	EvalDec, .-EvalDec
	.type	UnaFold, @function
UnaFold:
.LFB115:
	.file 16 "compiler/unary/unary.h"
	.loc 16 2 1
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
	.loc 16 4 11
	mov	eax, DWORD PTR -20[rbp]	# tmp93, op
	lea	rdx, 0[0+rax*8]	# tmp94,
	lea	rax, ops.28[rip]	# tmp95,
	mov	rax, QWORD PTR [rdx+rax]	# _1, ops[op_11(D)]
# compiler/unary/unary.h:4: 	goto *ops[ op ];
	.loc 16 4 2
	nop	
	jmp	rax	# _1
.L418:
	endbr64	
# compiler/unary/fold_labels.h:1: ERR: return EvalUnaErr( op, &rhs->value );
	.file 17 "compiler/unary/fold_labels.h"
	.loc 17 1 13
	mov	rax, QWORD PTR -32[rbp]	# tmp96, rhs
	lea	rdx, 8[rax]	# _2,
	mov	eax, DWORD PTR -20[rbp]	# tmp97, op
	mov	rsi, rdx	#, _2
	mov	edi, eax	#, tmp97
	call	EvalUnaErr	#
	mov	rcx, rdx	# tmp99,
	mov	rdx, rcx	# D.5732, tmp99
	jmp	.L419	#
.L420:
	endbr64	
# compiler/unary/fold_labels.h:2: NOT: return EvalNot( &rhs->value );
	.loc 17 2 13
	mov	rax, QWORD PTR -32[rbp]	# tmp100, rhs
	add	rax, 8	# _3,
	mov	rdi, rax	#, _3
	call	EvalNot	#
	mov	rcx, rdx	# tmp102,
	mov	rdx, rcx	# D.5732, tmp102
	jmp	.L419	#
.L421:
	endbr64	
# compiler/unary/fold_labels.h:3: BNOT: return EvalBnot( &rhs->value );
	.loc 17 3 14
	mov	rax, QWORD PTR -32[rbp]	# tmp103, rhs
	add	rax, 8	# _4,
	mov	rdi, rax	#, _4
	call	EvalBnot	#
	mov	rcx, rdx	# tmp105,
	mov	rdx, rcx	# D.5732, tmp105
	jmp	.L419	#
.L422:
	endbr64	
# compiler/unary/fold_labels.h:4: PLUS: return EvalPlus( &rhs->value );
	.loc 17 4 14
	mov	rax, QWORD PTR -32[rbp]	# tmp106, rhs
	add	rax, 8	# _5,
	mov	rdi, rax	#, _5
	call	EvalPlus	#
	mov	rcx, rdx	# tmp108,
	mov	rdx, rcx	# D.5732, tmp108
	jmp	.L419	#
.L423:
	endbr64	
# compiler/unary/fold_labels.h:5: MINUS: return EvalMinus( &rhs->value );
	.loc 17 5 15
	mov	rax, QWORD PTR -32[rbp]	# tmp109, rhs
	add	rax, 8	# _6,
	mov	rdi, rax	#, _6
	call	EvalMinus	#
	mov	rcx, rdx	# tmp111,
	mov	rdx, rcx	# D.5732, tmp111
	jmp	.L419	#
.L424:
	endbr64	
# compiler/unary/fold_labels.h:6: INC: return EvalInc( &rhs->value );
	.loc 17 6 13
	mov	rax, QWORD PTR -32[rbp]	# tmp112, rhs
	add	rax, 8	# _7,
	mov	rdi, rax	#, _7
	call	EvalInc	#
	mov	rcx, rdx	# tmp114,
	mov	rdx, rcx	# D.5732, tmp114
	jmp	.L419	#
.L425:
	endbr64	
# compiler/unary/fold_labels.h:7: DEC: return EvalDec( &rhs->value );
	.loc 17 7 13
	mov	rax, QWORD PTR -32[rbp]	# tmp115, rhs
	add	rax, 8	# _8,
	mov	rdi, rax	#, _8
	call	EvalDec	#
	mov	rcx, rdx	# tmp117,
	mov	rdx, rcx	# D.5732, tmp117
.L419:
# compiler/unary/unary.h:6: }
	.loc 16 6 1
	mov	rsi, rax	# tmp119, D.5732
	mov	rdi, rdx	#, D.5732
	mov	rcx, rax	# tmp120, D.5732
	mov	rbx, rdx	#, D.5732
	mov	eax, esi	# <retval>, tmp119
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE115:
	.size	UnaFold, .-UnaFold
	.type	UnaConst, @function
UnaConst:
.LFB116:
	.loc 16 9 1
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
	.loc 16 10 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
# compiler/unary/unary.h:10: 	ParseNode node = { .type = PT_CONST, .value.type = rhs->value.type };
	.loc 16 10 63
	mov	rax, QWORD PTR -56[rbp]	# tmp84, rhs
	mov	eax, DWORD PTR 8[rax]	# _1, rhs_4(D)->value.type
# compiler/unary/unary.h:10: 	ParseNode node = { .type = PT_CONST, .value.type = rhs->value.type };
	.loc 16 10 12
	mov	DWORD PTR -24[rbp], eax	# node.value.type, _1
# compiler/unary/unary.h:11: 	node.value = UnaFold( op, rhs );
	.loc 16 11 15
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
	.loc 16 12 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp89, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp90, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp90
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp91, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp91
# compiler/unary/unary.h:13: }
	.loc 16 13 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE116:
	.size	UnaConst, .-UnaConst
	.type	UnaRef, @function
UnaRef:
.LFB117:
	.loc 16 16 1
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
	.loc 16 17 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/unary/unary.h:18: }
	.loc 16 18 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE117:
	.size	UnaRef, .-UnaRef
	.type	UnaCall, @function
UnaCall:
.LFB118:
	.loc 16 21 1
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
	.loc 16 22 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/unary/unary.h:23: }
	.loc 16 23 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE118:
	.size	UnaCall, .-UnaCall
	.globl	CompileUna
	.type	CompileUna, @function
CompileUna:
.LFB119:
	.loc 16 26 1
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
	.loc 16 26 1
	mov	rax, QWORD PTR fs:40	# tmp99, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6504, tmp99
	xor	eax, eax	# tmp99
# compiler/unary/unary.h:28: 	OpCode op = TkToOp( token_type );
	.loc 16 28 14
	mov	eax, DWORD PTR -28[rbp]	# tmp84, token_type
	mov	edi, eax	#, tmp84
	call	TkToOp	#
	mov	DWORD PTR -12[rbp], eax	# op, tmp85
# compiler/unary/unary.h:29: 	goto *irs[ rhs->type ];
	.loc 16 29 16
	mov	rax, QWORD PTR -40[rbp]	# tmp86, rhs
	mov	eax, DWORD PTR [rax]	# _1, rhs_8(D)->type
# compiler/unary/unary.h:29: 	goto *irs[ rhs->type ];
	.loc 16 29 11
	mov	eax, eax	# tmp87, _1
	lea	rdx, 0[0+rax*8]	# tmp88,
	lea	rax, irs.30[rip]	# tmp89,
	mov	rax, QWORD PTR [rdx+rax]	# _2, irs[_1]
# compiler/unary/unary.h:29: 	goto *irs[ rhs->type ];
	.loc 16 29 2
	nop	
	jmp	rax	# _2
.L434:
	endbr64	
# compiler/unary/ir_labels.h:1: CONST: return UnaConst( op, rhs );
	.file 18 "compiler/unary/ir_labels.h"
	.loc 18 1 15
	mov	rax, QWORD PTR -24[rbp]	# tmp90, .result_ptr
	mov	rdx, QWORD PTR -40[rbp]	# tmp91, rhs
	mov	ecx, DWORD PTR -12[rbp]	# tmp92, op
	mov	esi, ecx	#, tmp92
	mov	rdi, rax	#, tmp90
	call	UnaConst	#
	jmp	.L435	#
.L436:
	endbr64	
# compiler/unary/ir_labels.h:2: REF: return UnaRef( op, rhs );
	.loc 18 2 13
	mov	rax, QWORD PTR -24[rbp]	# tmp93, .result_ptr
	mov	rdx, QWORD PTR -40[rbp]	# tmp94, rhs
	mov	ecx, DWORD PTR -12[rbp]	# tmp95, op
	mov	esi, ecx	#, tmp95
	mov	rdi, rax	#, tmp93
	call	UnaRef	#
	jmp	.L435	#
.L437:
	endbr64	
# compiler/unary/ir_labels.h:3: CALL: return UnaCall( op, rhs );
	.loc 18 3 14
	mov	rax, QWORD PTR -24[rbp]	# tmp96, .result_ptr
	mov	rdx, QWORD PTR -40[rbp]	# tmp97, rhs
	mov	ecx, DWORD PTR -12[rbp]	# tmp98, op
	mov	esi, ecx	#, tmp98
	mov	rdi, rax	#, tmp96
	call	UnaCall	#
.L435:
# compiler/unary/unary.h:31: }
	.loc 16 31 1
	mov	rax, QWORD PTR -8[rbp]	# tmp100, D.6504
	sub	rax, QWORD PTR fs:40	# tmp100, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L438	#,
	call	__stack_chk_fail@PLT	#
.L438:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE119:
	.size	CompileUna, .-CompileUna
	.section	.rodata
.LC13:
	.string	"Illegal Binary Operation: %d"
	.text
	.type	EvalBinErr, @function
EvalBinErr:
.LFB120:
	.file 19 "compiler/binary/eval.h"
	.loc 19 2 1
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
	.loc 19 3 2
	mov	eax, DWORD PTR -28[rbp]	# tmp86, op
	mov	esi, eax	#, tmp86
	lea	rax, .LC13[rip]	# tmp87,
	mov	rdi, rax	#, tmp87
	mov	eax, 0	#,
	call	Throw	#
# compiler/binary/eval.h:4: 	return ( Value ){ 0 };
	.loc 19 4 9
	mov	eax, 0	# D.5751,
	mov	edx, 0	# D.5751,
	mov	rsi, rax	# tmp89, D.5751
	mov	rdi, rdx	#, D.5751
	mov	rcx, rax	# tmp90, D.5751
	mov	rbx, rdx	#, D.5751
	mov	eax, esi	# <retval>, tmp89
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:5: }
	.loc 19 5 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE120:
	.size	EvalBinErr, .-EvalBinErr
	.type	EvalAdd, @function
EvalAdd:
.LFB121:
	.loc 19 8 1
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
	.loc 19 10 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:10: 	goto *ops[ lhs->type ];
	.loc 19 10 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.24[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:10: 	goto *ops[ lhs->type ];
	.loc 19 10 2
	nop	
	jmp	rcx	# _2
.L443:
	endbr64	
# compiler/binary/eval.h:11: 	I64: return VALUE( I64, i64, lhs->i64 + rhs->i64 );
	.loc 19 11 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	add	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp109, D.5754
	movabs	rsi, -4294967296	# tmp111,
	and	rsi, rdi	# tmp110, tmp109
	mov	rax, rsi	# D.5754, tmp110
	mov	rdx, rcx	# D.5754, _5
	jmp	.L444	#
.L445:
	endbr64	
# compiler/binary/eval.h:12: 	F64: return VALUE( F64, f64, lhs->f64 + rhs->f64 );
	.loc 19 12 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp113, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	addsd	xmm0, xmm1	# _8, _6
	mov	rsi, rax	# tmp115, D.5754
	movabs	rcx, -4294967296	# tmp117,
	and	rcx, rsi	# tmp116, tmp115
	or	rcx, 1	# tmp118,
	mov	rax, rcx	# D.5754, tmp118
	movq	rdx, xmm0	# D.5754, _8
	jmp	.L444	#
.L446:
	endbr64	
# compiler/binary/eval.h:13: 	STR: return VALUE( I64, i64, lhs->str->len + rhs->str->len );
	.loc 19 13 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp119, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp120, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_19(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	add	ecx, esi	# _13, _10
	mov	esi, ecx	# _14, _13
	mov	rdi, rax	# tmp122, D.5754
	movabs	rcx, -4294967296	# tmp124,
	and	rcx, rdi	# tmp123, tmp122
	mov	rax, rcx	# D.5754, tmp123
	mov	rdx, rsi	# D.5754, _14
.L444:
# compiler/binary/eval.h:14: }
	.loc 19 14 1
	mov	rsi, rax	# tmp126, D.5754
	mov	rdi, rdx	#, D.5754
	mov	rcx, rax	# tmp127, D.5754
	mov	rbx, rdx	#, D.5754
	mov	eax, esi	# <retval>, tmp126
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE121:
	.size	EvalAdd, .-EvalAdd
	.type	EvalSub, @function
EvalSub:
.LFB122:
	.loc 19 17 1
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
	.loc 19 19 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:19: 	goto *ops[ lhs->type ];
	.loc 19 19 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.23[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:19: 	goto *ops[ lhs->type ];
	.loc 19 19 2
	nop	
	jmp	rcx	# _2
.L450:
	endbr64	
# compiler/binary/eval.h:20: 	I64: return VALUE( I64, i64, lhs->i64 - rhs->i64 );
	.loc 19 20 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	sub	rsi, rcx	# _5, _4
	mov	rdi, rax	# tmp109, D.5759
	movabs	rcx, -4294967296	# tmp111,
	and	rcx, rdi	# tmp110, tmp109
	mov	rax, rcx	# D.5759, tmp110
	mov	rdx, rsi	# D.5759, _5
	jmp	.L451	#
.L452:
	endbr64	
# compiler/binary/eval.h:21: 	F64: return VALUE( F64, f64, lhs->f64 - rhs->f64 );
	.loc 19 21 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp113, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	subsd	xmm0, xmm1	# _8, _7
	mov	rsi, rax	# tmp115, D.5759
	movabs	rcx, -4294967296	# tmp117,
	and	rcx, rsi	# tmp116, tmp115
	or	rcx, 1	# tmp118,
	mov	rax, rcx	# D.5759, tmp118
	movq	rdx, xmm0	# D.5759, _8
	jmp	.L451	#
.L453:
	endbr64	
# compiler/binary/eval.h:22: 	STR: return VALUE( I64, i64, lhs->str->len - rhs->str->len );
	.loc 19 22 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp119, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp120, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_19(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	sub	esi, ecx	# _13, _12
	mov	esi, esi	# _14, _13
	mov	rdi, rax	# tmp122, D.5759
	movabs	rcx, -4294967296	# tmp124,
	and	rcx, rdi	# tmp123, tmp122
	mov	rax, rcx	# D.5759, tmp123
	mov	rdx, rsi	# D.5759, _14
.L451:
# compiler/binary/eval.h:23: }
	.loc 19 23 1
	mov	rsi, rax	# tmp126, D.5759
	mov	rdi, rdx	#, D.5759
	mov	rcx, rax	# tmp127, D.5759
	mov	rbx, rdx	#, D.5759
	mov	eax, esi	# <retval>, tmp126
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE122:
	.size	EvalSub, .-EvalSub
	.type	EvalMul, @function
EvalMul:
.LFB123:
	.loc 19 26 1
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
	.loc 19 28 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:28: 	goto *ops[ lhs->type ];
	.loc 19 28 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.22[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:28: 	goto *ops[ lhs->type ];
	.loc 19 28 2
	nop	
	jmp	rcx	# _2
.L457:
	endbr64	
# compiler/binary/eval.h:29: 	I64: return VALUE( I64, i64, lhs->i64 * rhs->i64 );
	.loc 19 29 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	imul	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp109, D.5764
	movabs	rsi, -4294967296	# tmp111,
	and	rsi, rdi	# tmp110, tmp109
	mov	rax, rsi	# D.5764, tmp110
	mov	rdx, rcx	# D.5764, _5
	jmp	.L458	#
.L459:
	endbr64	
# compiler/binary/eval.h:30: 	F64: return VALUE( F64, f64, lhs->f64 * rhs->f64 );
	.loc 19 30 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp113, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	mulsd	xmm0, xmm1	# _8, _6
	mov	rsi, rax	# tmp115, D.5764
	movabs	rcx, -4294967296	# tmp117,
	and	rcx, rsi	# tmp116, tmp115
	or	rcx, 1	# tmp118,
	mov	rax, rcx	# D.5764, tmp118
	movq	rdx, xmm0	# D.5764, _8
	jmp	.L458	#
.L460:
	endbr64	
# compiler/binary/eval.h:31: 	STR: return VALUE( I64, i64, lhs->str->len * rhs->str->len );
	.loc 19 31 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp119, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp120, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_19(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	imul	ecx, esi	# _13, _10
	mov	esi, ecx	# _14, _13
	mov	rdi, rax	# tmp122, D.5764
	movabs	rcx, -4294967296	# tmp124,
	and	rcx, rdi	# tmp123, tmp122
	mov	rax, rcx	# D.5764, tmp123
	mov	rdx, rsi	# D.5764, _14
.L458:
# compiler/binary/eval.h:32: }
	.loc 19 32 1
	mov	rsi, rax	# tmp126, D.5764
	mov	rdi, rdx	#, D.5764
	mov	rcx, rax	# tmp127, D.5764
	mov	rbx, rdx	#, D.5764
	mov	eax, esi	# <retval>, tmp126
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE123:
	.size	EvalMul, .-EvalMul
	.type	EvalDiv, @function
EvalDiv:
.LFB124:
	.loc 19 35 1
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
	.loc 19 37 16
	mov	rax, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	eax, DWORD PTR [rax]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:37: 	goto *ops[ lhs->type ];
	.loc 19 37 11
	mov	eax, eax	# tmp103, _1
	lea	rdx, 0[0+rax*8]	# tmp104,
	lea	rax, ops.21[rip]	# tmp105,
	mov	rax, QWORD PTR [rdx+rax]	# _2, ops[_1]
# compiler/binary/eval.h:37: 	goto *ops[ lhs->type ];
	.loc 19 37 2
	nop	
	jmp	rax	# _2
.L464:
	endbr64	
# compiler/binary/eval.h:38: 	I64: return VALUE( I64, i64, lhs->i64 / rhs->i64 );
	.loc 19 38 14
	mov	rax, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rax, QWORD PTR 8[rax]	# _3, lhs_17(D)->D.4160.i64
	mov	rdx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rdi, QWORD PTR 8[rdx]	# _4, rhs_19(D)->D.4160.i64
	cqo
	idiv	rdi	# _4
	mov	rdx, rax	# _5, tmp108
	mov	rsi, rcx	# tmp111, D.5769
	movabs	rax, -4294967296	# tmp113,
	and	rax, rsi	# tmp112, tmp111
	mov	rcx, rax	# D.5769, tmp112
	mov	rbx, rdx	# D.5769, _5
	jmp	.L465	#
.L466:
	endbr64	
# compiler/binary/eval.h:39: 	F64: return VALUE( F64, f64, lhs->f64 / rhs->f64 );
	.loc 19 39 14
	mov	rax, QWORD PTR -24[rbp]	# tmp114, lhs
	movsd	xmm0, QWORD PTR 8[rax]	# _6, lhs_17(D)->D.4160.f64
	mov	rax, QWORD PTR -32[rbp]	# tmp115, rhs
	movsd	xmm1, QWORD PTR 8[rax]	# _7, rhs_19(D)->D.4160.f64
	divsd	xmm0, xmm1	# _8, _7
	mov	rdx, rcx	# tmp117, D.5769
	movabs	rax, -4294967296	# tmp119,
	and	rax, rdx	# tmp118, tmp117
	or	rax, 1	# tmp120,
	mov	rcx, rax	# D.5769, tmp120
	movq	rbx, xmm0	# D.5769, _8
	jmp	.L465	#
.L467:
	endbr64	
# compiler/binary/eval.h:40: 	STR: return VALUE( I64, i64, lhs->str->len / rhs->str->len );
	.loc 19 40 14
	mov	rax, QWORD PTR -24[rbp]	# tmp121, lhs
	mov	rax, QWORD PTR 8[rax]	# _9, lhs_17(D)->D.4160.str
	mov	eax, DWORD PTR 4[rax]	# _10, _9->len
	mov	rdx, QWORD PTR -32[rbp]	# tmp122, rhs
	mov	rdx, QWORD PTR 8[rdx]	# _11, rhs_19(D)->D.4160.str
	mov	edi, DWORD PTR 4[rdx]	# _12, _11->len
	mov	edx, 0	# tmp124,
	div	edi	# _12
	mov	edx, eax	# _14, _13
	mov	rsi, rcx	# tmp126, D.5769
	movabs	rax, -4294967296	# tmp128,
	and	rax, rsi	# tmp127, tmp126
	mov	rcx, rax	# D.5769, tmp127
	mov	rbx, rdx	# D.5769, _14
.L465:
# compiler/binary/eval.h:41: }
	.loc 19 41 1
	mov	rax, rcx	# tmp130, D.5769
	mov	rdx, rbx	#, D.5769
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE124:
	.size	EvalDiv, .-EvalDiv
	.type	EvalMod, @function
EvalMod:
.LFB125:
	.loc 19 44 1
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
	.loc 19 46 16
	mov	rax, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	eax, DWORD PTR [rax]	# _1, lhs_20(D)->type
# compiler/binary/eval.h:46: 	goto *ops[ lhs->type ];
	.loc 19 46 11
	mov	eax, eax	# tmp106, _1
	lea	rdx, 0[0+rax*8]	# tmp107,
	lea	rax, ops.20[rip]	# tmp108,
	mov	rax, QWORD PTR [rdx+rax]	# _2, ops[_1]
# compiler/binary/eval.h:46: 	goto *ops[ lhs->type ];
	.loc 19 46 2
	nop	
	jmp	rax	# _2
.L471:
	endbr64	
# compiler/binary/eval.h:47: 	I64: return VALUE( I64, i64, lhs->i64 % rhs->i64 );
	.loc 19 47 14
	mov	rax, QWORD PTR -24[rbp]	# tmp109, lhs
	mov	rax, QWORD PTR 8[rax]	# _3, lhs_20(D)->D.4160.i64
	mov	rdx, QWORD PTR -32[rbp]	# tmp110, rhs
	mov	rdi, QWORD PTR 8[rdx]	# _4, rhs_22(D)->D.4160.i64
	cqo
	idiv	rdi	# _4
	mov	rsi, rdx	# tmp111, tmp111
	mov	rdx, rsi	# _5, tmp111
	mov	rsi, rcx	# tmp114, D.5774
	movabs	rax, -4294967296	# tmp116,
	and	rax, rsi	# tmp115, tmp114
	mov	rcx, rax	# D.5774, tmp115
	mov	rbx, rdx	# D.5774, _5
	jmp	.L472	#
.L473:
	endbr64	
# compiler/binary/eval.h:48: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 % ( I64 )rhs->f64 );
	.loc 19 48 14
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
	mov	rdx, rcx	# tmp122, D.5774
	movabs	rax, -4294967296	# tmp124,
	and	rax, rdx	# tmp123, tmp122
	or	rax, 1	# tmp125,
	mov	rcx, rax	# D.5774, tmp125
	movq	rbx, xmm0	# D.5774, _11
	jmp	.L472	#
.L474:
	endbr64	
# compiler/binary/eval.h:49: 	STR: return VALUE( I64, i64, lhs->str->len % rhs->str->len );
	.loc 19 49 14
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
	mov	rsi, rcx	# tmp131, D.5774
	movabs	rax, -4294967296	# tmp133,
	and	rax, rsi	# tmp132, tmp131
	mov	rcx, rax	# D.5774, tmp132
	mov	rbx, rdx	# D.5774, _17
.L472:
# compiler/binary/eval.h:50: }
	.loc 19 50 1
	mov	rax, rcx	# tmp135, D.5774
	mov	rdx, rbx	#, D.5774
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE125:
	.size	EvalMod, .-EvalMod
	.type	EvalPow, @function
EvalPow:
.LFB126:
	.loc 19 53 1
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
	.loc 19 55 16
	mov	rax, QWORD PTR -40[rbp]	# tmp107, lhs
	mov	eax, DWORD PTR [rax]	# _1, lhs_22(D)->type
# compiler/binary/eval.h:55: 	goto *ops[ lhs->type ];
	.loc 19 55 11
	mov	eax, eax	# tmp108, _1
	lea	rdx, 0[0+rax*8]	# tmp109,
	lea	rax, ops.19[rip]	# tmp110,
	mov	rax, QWORD PTR [rdx+rax]	# _2, ops[_1]
# compiler/binary/eval.h:55: 	goto *ops[ lhs->type ];
	.loc 19 55 2
	nop	
	jmp	rax	# _2
.L478:
	endbr64	
# compiler/binary/eval.h:56: 	I64: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->i64, ( F64 )rhs->i64 ) );
	.loc 19 56 14
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
	.loc 19 56 14 is_stmt 0 discriminator 1
	cvttsd2si	rax, xmm0	# _8, _7
	mov	rcx, r12	# tmp114, D.5779
	movabs	rdx, -4294967296	# tmp116,
	and	rdx, rcx	# tmp115, tmp114
	mov	r12, rdx	# D.5779, tmp115
	mov	r13, rax	# D.5779, _8
# compiler/binary/eval.h:56: 	I64: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->i64, ( F64 )rhs->i64 ) );
	.loc 19 56 14
	jmp	.L479	#
.L480:
	endbr64	
# compiler/binary/eval.h:57: 	F64: return VALUE( F64, f64, pow( lhs->f64, rhs->f64 ) );
	.loc 19 57 14 is_stmt 1
	mov	rax, QWORD PTR -48[rbp]	# tmp117, rhs
	movsd	xmm0, QWORD PTR 8[rax]	# _9, rhs_24(D)->D.4160.f64
	mov	rax, QWORD PTR -40[rbp]	# tmp118, lhs
	mov	rax, QWORD PTR 8[rax]	# _10, lhs_22(D)->D.4160.f64
	movapd	xmm1, xmm0	#, _9
	movq	xmm0, rax	#, _10
	call	pow@PLT	#
# compiler/binary/eval.h:57: 	F64: return VALUE( F64, f64, pow( lhs->f64, rhs->f64 ) );
	.loc 19 57 14 is_stmt 0 discriminator 1
	mov	rdx, r12	# tmp120, D.5779
	movabs	rax, -4294967296	# tmp122,
	and	rax, rdx	# tmp121, tmp120
	or	rax, 1	# tmp123,
	mov	r12, rax	# D.5779, tmp123
	movq	r13, xmm0	# D.5779, _11
# compiler/binary/eval.h:57: 	F64: return VALUE( F64, f64, pow( lhs->f64, rhs->f64 ) );
	.loc 19 57 14
	jmp	.L479	#
.L481:
	endbr64	
# compiler/binary/eval.h:58: 	STR: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->str->len, ( F64 )rhs->str->len ) );
	.loc 19 58 14 is_stmt 1
	mov	rax, QWORD PTR -48[rbp]	# tmp124, rhs
	mov	rax, QWORD PTR 8[rax]	# _12, rhs_24(D)->D.4160.str
	mov	eax, DWORD PTR 4[rax]	# _13, _12->len
	mov	eax, eax	# tmp125, _13
	test	rax, rax	# tmp125
	js	.L482	#,
	pxor	xmm0, xmm0	# _14
	cvtsi2sd	xmm0, rax	# _14, tmp125
	jmp	.L483	#
.L482:
	mov	rdx, rax	# tmp127, tmp125
	shr	rdx	# tmp127
	and	eax, 1	# tmp128,
	or	rdx, rax	# tmp127, tmp128
	pxor	xmm0, xmm0	# tmp126
	cvtsi2sd	xmm0, rdx	# tmp126, tmp127
	addsd	xmm0, xmm0	# _14, tmp126
.L483:
	mov	rax, QWORD PTR -40[rbp]	# tmp129, lhs
	mov	rax, QWORD PTR 8[rax]	# _15, lhs_22(D)->D.4160.str
	mov	eax, DWORD PTR 4[rax]	# _16, _15->len
	mov	eax, eax	# tmp130, _16
	test	rax, rax	# tmp130
	js	.L484	#,
	pxor	xmm3, xmm3	# _17
	cvtsi2sd	xmm3, rax	# _17, tmp130
	movq	rax, xmm3	# _17, _17
	jmp	.L485	#
.L484:
	mov	rdx, rax	# tmp132, tmp130
	shr	rdx	# tmp132
	and	eax, 1	# tmp133,
	or	rdx, rax	# tmp132, tmp133
	pxor	xmm1, xmm1	# tmp131
	cvtsi2sd	xmm1, rdx	# tmp131, tmp132
	addsd	xmm1, xmm1	# tmp131, tmp131
	movq	rax, xmm1	# _17, tmp131
.L485:
	movapd	xmm1, xmm0	#, _14
	movq	xmm0, rax	#, _17
	call	pow@PLT	#
# compiler/binary/eval.h:58: 	STR: return VALUE( I64, i64, ( I64 )pow( ( F64 )lhs->str->len, ( F64 )rhs->str->len ) );
	.loc 19 58 14 is_stmt 0 discriminator 1
	cvttsd2si	rax, xmm0	# _19, _18
	mov	rcx, r12	# tmp135, D.5779
	movabs	rdx, -4294967296	# tmp137,
	and	rdx, rcx	# tmp136, tmp135
	mov	r12, rdx	# D.5779, tmp136
	mov	r13, rax	# D.5779, _19
.L479:
# compiler/binary/eval.h:59: }
	.loc 19 59 1 is_stmt 1
	mov	rax, r12	# tmp139, D.5779
	mov	rdx, r13	#, D.5779
	mov	rcx, r12	# tmp140, D.5779
	mov	rbx, r13	#, D.5779
	mov	rdx, rbx	# <retval>,
	add	rsp, 24	#,
	pop	rbx	#
	pop	r12	#
	pop	r13	#
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE126:
	.size	EvalPow, .-EvalPow
	.type	EvalBand, @function
EvalBand:
.LFB127:
	.loc 19 62 1
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
	.loc 19 64 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_20(D)->type
# compiler/binary/eval.h:64: 	goto *ops[ lhs->type ];
	.loc 19 64 11
	mov	ecx, ecx	# tmp106, _1
	lea	rsi, 0[0+rcx*8]	# tmp107,
	lea	rcx, ops.18[rip]	# tmp108,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:64: 	goto *ops[ lhs->type ];
	.loc 19 64 2
	nop	
	jmp	rcx	# _2
.L489:
	endbr64	
# compiler/binary/eval.h:65: 	I64: return VALUE( I64, i64, lhs->i64 & rhs->i64 );
	.loc 19 65 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp109, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_20(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp110, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_22(D)->D.4160.i64
	and	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp112, D.5784
	movabs	rsi, -4294967296	# tmp114,
	and	rsi, rdi	# tmp113, tmp112
	mov	rax, rsi	# D.5784, tmp113
	mov	rdx, rcx	# D.5784, _5
	jmp	.L490	#
.L491:
	endbr64	
# compiler/binary/eval.h:66: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 & ( I64 )rhs->f64 );
	.loc 19 66 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp115, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_20(D)->D.4160.f64
	cvttsd2si	rsi, xmm0	# _7, _6
	mov	rcx, QWORD PTR -32[rbp]	# tmp116, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_22(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _9, _8
	and	rcx, rsi	# _10, _7
	pxor	xmm0, xmm0	# _11
	cvtsi2sd	xmm0, rcx	# _11, _10
	mov	rsi, rax	# tmp118, D.5784
	movabs	rcx, -4294967296	# tmp120,
	and	rcx, rsi	# tmp119, tmp118
	or	rcx, 1	# tmp121,
	mov	rax, rcx	# D.5784, tmp121
	movq	rdx, xmm0	# D.5784, _11
	jmp	.L490	#
.L492:
	endbr64	
# compiler/binary/eval.h:67: 	STR: return VALUE( I64, i64, lhs->str->len & rhs->str->len );
	.loc 19 67 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp122, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _12, lhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _13, _12->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp123, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, rhs_22(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _15, _14->len
	and	ecx, esi	# _16, _13
	mov	esi, ecx	# _17, _16
	mov	rdi, rax	# tmp125, D.5784
	movabs	rcx, -4294967296	# tmp127,
	and	rcx, rdi	# tmp126, tmp125
	mov	rax, rcx	# D.5784, tmp126
	mov	rdx, rsi	# D.5784, _17
.L490:
# compiler/binary/eval.h:68: }
	.loc 19 68 1
	mov	rsi, rax	# tmp129, D.5784
	mov	rdi, rdx	#, D.5784
	mov	rcx, rax	# tmp130, D.5784
	mov	rbx, rdx	#, D.5784
	mov	eax, esi	# <retval>, tmp129
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE127:
	.size	EvalBand, .-EvalBand
	.type	EvalBor, @function
EvalBor:
.LFB128:
	.loc 19 71 1
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
	.loc 19 73 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_20(D)->type
# compiler/binary/eval.h:73: 	goto *ops[ lhs->type ];
	.loc 19 73 11
	mov	ecx, ecx	# tmp106, _1
	lea	rsi, 0[0+rcx*8]	# tmp107,
	lea	rcx, ops.17[rip]	# tmp108,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:73: 	goto *ops[ lhs->type ];
	.loc 19 73 2
	nop	
	jmp	rcx	# _2
.L496:
	endbr64	
# compiler/binary/eval.h:74: 	I64: return VALUE( I64, i64, lhs->i64 | rhs->i64 );
	.loc 19 74 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp109, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_20(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp110, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_22(D)->D.4160.i64
	or	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp112, D.5789
	movabs	rsi, -4294967296	# tmp114,
	and	rsi, rdi	# tmp113, tmp112
	mov	rax, rsi	# D.5789, tmp113
	mov	rdx, rcx	# D.5789, _5
	jmp	.L497	#
.L498:
	endbr64	
# compiler/binary/eval.h:75: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 | ( I64 )rhs->f64 );
	.loc 19 75 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp115, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_20(D)->D.4160.f64
	cvttsd2si	rsi, xmm0	# _7, _6
	mov	rcx, QWORD PTR -32[rbp]	# tmp116, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_22(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _9, _8
	or	rcx, rsi	# _10, _7
	pxor	xmm0, xmm0	# _11
	cvtsi2sd	xmm0, rcx	# _11, _10
	mov	rsi, rax	# tmp118, D.5789
	movabs	rcx, -4294967296	# tmp120,
	and	rcx, rsi	# tmp119, tmp118
	or	rcx, 1	# tmp121,
	mov	rax, rcx	# D.5789, tmp121
	movq	rdx, xmm0	# D.5789, _11
	jmp	.L497	#
.L499:
	endbr64	
# compiler/binary/eval.h:76: 	STR: return VALUE( I64, i64, lhs->str->len | rhs->str->len );
	.loc 19 76 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp122, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _12, lhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _13, _12->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp123, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, rhs_22(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _15, _14->len
	or	ecx, esi	# _16, _13
	mov	esi, ecx	# _17, _16
	mov	rdi, rax	# tmp125, D.5789
	movabs	rcx, -4294967296	# tmp127,
	and	rcx, rdi	# tmp126, tmp125
	mov	rax, rcx	# D.5789, tmp126
	mov	rdx, rsi	# D.5789, _17
.L497:
# compiler/binary/eval.h:77: }
	.loc 19 77 1
	mov	rsi, rax	# tmp129, D.5789
	mov	rdi, rdx	#, D.5789
	mov	rcx, rax	# tmp130, D.5789
	mov	rbx, rdx	#, D.5789
	mov	eax, esi	# <retval>, tmp129
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE128:
	.size	EvalBor, .-EvalBor
	.type	EvalBxor, @function
EvalBxor:
.LFB129:
	.loc 19 80 1
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
	.loc 19 82 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_20(D)->type
# compiler/binary/eval.h:82: 	goto *ops[ lhs->type ];
	.loc 19 82 11
	mov	ecx, ecx	# tmp106, _1
	lea	rsi, 0[0+rcx*8]	# tmp107,
	lea	rcx, ops.16[rip]	# tmp108,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:82: 	goto *ops[ lhs->type ];
	.loc 19 82 2
	nop	
	jmp	rcx	# _2
.L503:
	endbr64	
# compiler/binary/eval.h:83: 	I64: return VALUE( I64, i64, lhs->i64 ^ rhs->i64 );
	.loc 19 83 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp109, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_20(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp110, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_22(D)->D.4160.i64
	xor	rcx, rsi	# _5, _3
	mov	rdi, rax	# tmp112, D.5794
	movabs	rsi, -4294967296	# tmp114,
	and	rsi, rdi	# tmp113, tmp112
	mov	rax, rsi	# D.5794, tmp113
	mov	rdx, rcx	# D.5794, _5
	jmp	.L504	#
.L505:
	endbr64	
# compiler/binary/eval.h:84: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 ^ ( I64 )rhs->f64 );
	.loc 19 84 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp115, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_20(D)->D.4160.f64
	cvttsd2si	rsi, xmm0	# _7, _6
	mov	rcx, QWORD PTR -32[rbp]	# tmp116, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_22(D)->D.4160.f64
	cvttsd2si	rcx, xmm0	# _9, _8
	xor	rcx, rsi	# _10, _7
	pxor	xmm0, xmm0	# _11
	cvtsi2sd	xmm0, rcx	# _11, _10
	mov	rsi, rax	# tmp118, D.5794
	movabs	rcx, -4294967296	# tmp120,
	and	rcx, rsi	# tmp119, tmp118
	or	rcx, 1	# tmp121,
	mov	rax, rcx	# D.5794, tmp121
	movq	rdx, xmm0	# D.5794, _11
	jmp	.L504	#
.L506:
	endbr64	
# compiler/binary/eval.h:85: 	STR: return VALUE( I64, i64, lhs->str->len ^ rhs->str->len );
	.loc 19 85 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp122, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _12, lhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _13, _12->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp123, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, rhs_22(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _15, _14->len
	xor	ecx, esi	# _16, _13
	mov	esi, ecx	# _17, _16
	mov	rdi, rax	# tmp125, D.5794
	movabs	rcx, -4294967296	# tmp127,
	and	rcx, rdi	# tmp126, tmp125
	mov	rax, rcx	# D.5794, tmp126
	mov	rdx, rsi	# D.5794, _17
.L504:
# compiler/binary/eval.h:86: }
	.loc 19 86 1
	mov	rsi, rax	# tmp129, D.5794
	mov	rdi, rdx	#, D.5794
	mov	rcx, rax	# tmp130, D.5794
	mov	rbx, rdx	#, D.5794
	mov	eax, esi	# <retval>, tmp129
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE129:
	.size	EvalBxor, .-EvalBxor
	.type	EvalLsh, @function
EvalLsh:
.LFB130:
	.loc 19 89 1
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
	.loc 19 91 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_22(D)->type
# compiler/binary/eval.h:91: 	goto *ops[ lhs->type ];
	.loc 19 91 11
	mov	ecx, ecx	# tmp108, _1
	lea	rsi, 0[0+rcx*8]	# tmp109,
	lea	rcx, ops.15[rip]	# tmp110,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:91: 	goto *ops[ lhs->type ];
	.loc 19 91 2
	nop	
	jmp	rcx	# _2
.L510:
	endbr64	
# compiler/binary/eval.h:92: 	I64: return VALUE( I64, i64, lhs->i64 << rhs->i64 );
	.loc 19 92 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_22(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp112, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_24(D)->D.4160.i64
	sal	rsi, cl	# _3, _5
	mov	rcx, rsi	# _6, _3
	mov	rdi, rax	# tmp114, D.5799
	movabs	rsi, -4294967296	# tmp116,
	and	rsi, rdi	# tmp115, tmp114
	mov	rax, rsi	# D.5799, tmp115
	mov	rdx, rcx	# D.5799, _6
	jmp	.L511	#
.L512:
	endbr64	
# compiler/binary/eval.h:93: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 << ( I64 )rhs->f64 );
	.loc 19 93 14
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
	mov	rsi, rax	# tmp120, D.5799
	movabs	rcx, -4294967296	# tmp122,
	and	rcx, rsi	# tmp121, tmp120
	or	rcx, 1	# tmp123,
	mov	rax, rcx	# D.5799, tmp123
	movq	rdx, xmm0	# D.5799, _13
	jmp	.L511	#
.L513:
	endbr64	
# compiler/binary/eval.h:94: 	STR: return VALUE( I64, i64, lhs->str->len << rhs->str->len );
	.loc 19 94 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp124, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, lhs_22(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _15, _14->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp125, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _16, rhs_24(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _17, _16->len
	sal	esi, cl	# _15, _17
	mov	ecx, esi	# _18, _15
	mov	esi, ecx	# _19, _18
	mov	rdi, rax	# tmp127, D.5799
	movabs	rcx, -4294967296	# tmp129,
	and	rcx, rdi	# tmp128, tmp127
	mov	rax, rcx	# D.5799, tmp128
	mov	rdx, rsi	# D.5799, _19
.L511:
# compiler/binary/eval.h:95: }
	.loc 19 95 1
	mov	rsi, rax	# tmp131, D.5799
	mov	rdi, rdx	#, D.5799
	mov	rcx, rax	# tmp132, D.5799
	mov	rbx, rdx	#, D.5799
	mov	eax, esi	# <retval>, tmp131
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE130:
	.size	EvalLsh, .-EvalLsh
	.type	EvalRsh, @function
EvalRsh:
.LFB131:
	.loc 19 98 1
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
	.loc 19 100 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_22(D)->type
# compiler/binary/eval.h:100: 	goto *ops[ lhs->type ];
	.loc 19 100 11
	mov	ecx, ecx	# tmp108, _1
	lea	rsi, 0[0+rcx*8]	# tmp109,
	lea	rcx, ops.14[rip]	# tmp110,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:100: 	goto *ops[ lhs->type ];
	.loc 19 100 2
	nop	
	jmp	rcx	# _2
.L517:
	endbr64	
# compiler/binary/eval.h:101: 	I64: return VALUE( I64, i64, lhs->i64 >> rhs->i64 );
	.loc 19 101 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_22(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp112, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_24(D)->D.4160.i64
	sar	rsi, cl	# _3, _5
	mov	rcx, rsi	# _6, _3
	mov	rdi, rax	# tmp114, D.5804
	movabs	rsi, -4294967296	# tmp116,
	and	rsi, rdi	# tmp115, tmp114
	mov	rax, rsi	# D.5804, tmp115
	mov	rdx, rcx	# D.5804, _6
	jmp	.L518	#
.L519:
	endbr64	
# compiler/binary/eval.h:102: 	F64: return VALUE( F64, f64, ( I64 )lhs->f64 >> ( I64 )rhs->f64 );
	.loc 19 102 14
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
	mov	rsi, rax	# tmp120, D.5804
	movabs	rcx, -4294967296	# tmp122,
	and	rcx, rsi	# tmp121, tmp120
	or	rcx, 1	# tmp123,
	mov	rax, rcx	# D.5804, tmp123
	movq	rdx, xmm0	# D.5804, _13
	jmp	.L518	#
.L520:
	endbr64	
# compiler/binary/eval.h:103: 	STR: return VALUE( I64, i64, lhs->str->len >> rhs->str->len );
	.loc 19 103 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp124, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _14, lhs_22(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _15, _14->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp125, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _16, rhs_24(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _17, _16->len
	shr	esi, cl	# _15, _17
	mov	ecx, esi	# _18, _15
	mov	esi, ecx	# _19, _18
	mov	rdi, rax	# tmp127, D.5804
	movabs	rcx, -4294967296	# tmp129,
	and	rcx, rdi	# tmp128, tmp127
	mov	rax, rcx	# D.5804, tmp128
	mov	rdx, rsi	# D.5804, _19
.L518:
# compiler/binary/eval.h:104: }
	.loc 19 104 1
	mov	rsi, rax	# tmp131, D.5804
	mov	rdi, rdx	#, D.5804
	mov	rcx, rax	# tmp132, D.5804
	mov	rbx, rdx	#, D.5804
	mov	eax, esi	# <retval>, tmp131
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE131:
	.size	EvalRsh, .-EvalRsh
	.type	EvalEqEq, @function
EvalEqEq:
.LFB132:
	.loc 19 107 1
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
	.loc 19 109 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp101, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_16(D)->type
# compiler/binary/eval.h:109: 	goto *ops[ lhs->type ];
	.loc 19 109 11
	mov	ecx, ecx	# tmp102, _1
	lea	rsi, 0[0+rcx*8]	# tmp103,
	lea	rcx, ops.13[rip]	# tmp104,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:109: 	goto *ops[ lhs->type ];
	.loc 19 109 2
	nop	
	jmp	rcx	# _2
.L524:
	endbr64	
# compiler/binary/eval.h:110: 	I64: return VALUE( I64, i64, lhs->i64 == rhs->i64 );
	.loc 19 110 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_16(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp106, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_18(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	sete	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp108, D.5809
	movabs	rsi, -4294967296	# tmp110,
	and	rsi, rdi	# tmp109, tmp108
	mov	rax, rsi	# D.5809, tmp109
	mov	rdx, rcx	# D.5809, _6
	jmp	.L525	#
.L526:
	endbr64	
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 19 111 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_16(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp112, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _8, rhs_18(D)->D.4160.f64
	ucomisd	xmm0, xmm1	# _7, _8
	jp	.L527	#,
	ucomisd	xmm0, xmm1	# _7, _8
	jne	.L527	#,
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 19 111 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC11[rip]	# iftmp.37_13,
	jmp	.L529	#
.L527:
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 19 111 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.37_13
.L529:
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 19 111 14 discriminator 4
	mov	rsi, rax	# tmp114, D.5809
	movabs	rcx, -4294967296	# tmp116,
	and	rcx, rsi	# tmp115, tmp114
	or	rcx, 1	# tmp117,
	mov	rax, rcx	# D.5809, tmp117
	movq	rdx, xmm0	# D.5809, iftmp.37_13
# compiler/binary/eval.h:111: 	F64: return VALUE( F64, f64, lhs->f64 == rhs->f64 );
	.loc 19 111 14
	jmp	.L525	#
.L530:
	endbr64	
# compiler/binary/eval.h:112: 	STR: return VALUE( I64, i64, lhs->str == rhs->str );
	.loc 19 112 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp118, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _9, lhs_16(D)->D.4160.str
	mov	rcx, QWORD PTR -32[rbp]	# tmp119, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _10, rhs_18(D)->D.4160.str
	cmp	rsi, rcx	# _9, _10
	sete	cl	#, _11
	movzx	ecx, cl	# _12, _11
	mov	rdi, rax	# tmp121, D.5809
	movabs	rsi, -4294967296	# tmp123,
	and	rsi, rdi	# tmp122, tmp121
	mov	rax, rsi	# D.5809, tmp122
	mov	rdx, rcx	# D.5809, _12
.L525:
# compiler/binary/eval.h:113: }
	.loc 19 113 1
	mov	rsi, rax	# tmp125, D.5809
	mov	rdi, rdx	#, D.5809
	mov	rcx, rax	# tmp126, D.5809
	mov	rbx, rdx	#, D.5809
	mov	eax, esi	# <retval>, tmp125
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE132:
	.size	EvalEqEq, .-EvalEqEq
	.type	EvalNeq, @function
EvalNeq:
.LFB133:
	.loc 19 116 1
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
	.loc 19 118 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp101, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_16(D)->type
# compiler/binary/eval.h:118: 	goto *ops[ lhs->type ];
	.loc 19 118 11
	mov	ecx, ecx	# tmp102, _1
	lea	rsi, 0[0+rcx*8]	# tmp103,
	lea	rcx, ops.12[rip]	# tmp104,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:118: 	goto *ops[ lhs->type ];
	.loc 19 118 2
	nop	
	jmp	rcx	# _2
.L535:
	endbr64	
# compiler/binary/eval.h:119: 	I64: return VALUE( I64, i64, lhs->i64 != rhs->i64 );
	.loc 19 119 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp105, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_16(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp106, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_18(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setne	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp108, D.5818
	movabs	rsi, -4294967296	# tmp110,
	and	rsi, rdi	# tmp109, tmp108
	mov	rax, rsi	# D.5818, tmp109
	mov	rdx, rcx	# D.5818, _6
	jmp	.L536	#
.L537:
	endbr64	
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 19 120 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp111, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_16(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp112, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _8, rhs_18(D)->D.4160.f64
	ucomisd	xmm0, xmm1	# _7, _8
	jp	.L543	#,
	ucomisd	xmm0, xmm1	# _7, _8
	je	.L538	#,
.L543:
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 19 120 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC11[rip]	# iftmp.39_13,
	jmp	.L540	#
.L538:
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 19 120 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.39_13
.L540:
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 19 120 14 discriminator 4
	mov	rsi, rax	# tmp114, D.5818
	movabs	rcx, -4294967296	# tmp116,
	and	rcx, rsi	# tmp115, tmp114
	or	rcx, 1	# tmp117,
	mov	rax, rcx	# D.5818, tmp117
	movq	rdx, xmm0	# D.5818, iftmp.39_13
# compiler/binary/eval.h:120: 	F64: return VALUE( F64, f64, lhs->f64 != rhs->f64 );
	.loc 19 120 14
	jmp	.L536	#
.L541:
	endbr64	
# compiler/binary/eval.h:121: 	STR: return VALUE( I64, i64, lhs->str != rhs->str );
	.loc 19 121 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp118, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _9, lhs_16(D)->D.4160.str
	mov	rcx, QWORD PTR -32[rbp]	# tmp119, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _10, rhs_18(D)->D.4160.str
	cmp	rsi, rcx	# _9, _10
	setne	cl	#, _11
	movzx	ecx, cl	# _12, _11
	mov	rdi, rax	# tmp121, D.5818
	movabs	rsi, -4294967296	# tmp123,
	and	rsi, rdi	# tmp122, tmp121
	mov	rax, rsi	# D.5818, tmp122
	mov	rdx, rcx	# D.5818, _12
.L536:
# compiler/binary/eval.h:122: }
	.loc 19 122 1
	mov	rsi, rax	# tmp125, D.5818
	mov	rdi, rdx	#, D.5818
	mov	rcx, rax	# tmp126, D.5818
	mov	rbx, rdx	#, D.5818
	mov	eax, esi	# <retval>, tmp125
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE133:
	.size	EvalNeq, .-EvalNeq
	.type	EvalLt, @function
EvalLt:
.LFB134:
	.loc 19 125 1
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
	.loc 19 127 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp103, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_18(D)->type
# compiler/binary/eval.h:127: 	goto *ops[ lhs->type ];
	.loc 19 127 11
	mov	ecx, ecx	# tmp104, _1
	lea	rsi, 0[0+rcx*8]	# tmp105,
	lea	rcx, ops.11[rip]	# tmp106,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:127: 	goto *ops[ lhs->type ];
	.loc 19 127 2
	nop	
	jmp	rcx	# _2
.L546:
	endbr64	
# compiler/binary/eval.h:128: 	I64: return VALUE( I64, i64, lhs->i64 < rhs->i64 );
	.loc 19 128 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_18(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_20(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setl	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp110, D.5827
	movabs	rsi, -4294967296	# tmp112,
	and	rsi, rdi	# tmp111, tmp110
	mov	rax, rsi	# D.5827, tmp111
	mov	rdx, rcx	# D.5827, _6
	jmp	.L547	#
.L548:
	endbr64	
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 19 129 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, lhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _7, lhs_18(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp114, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_20(D)->D.4160.f64
	comisd	xmm0, xmm1	# _8, _7
	jbe	.L555	#,
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 19 129 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC11[rip]	# iftmp.41_15,
	jmp	.L551	#
.L555:
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 19 129 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.41_15
.L551:
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 19 129 14 discriminator 4
	mov	rsi, rax	# tmp116, D.5827
	movabs	rcx, -4294967296	# tmp118,
	and	rcx, rsi	# tmp117, tmp116
	or	rcx, 1	# tmp119,
	mov	rax, rcx	# D.5827, tmp119
	movq	rdx, xmm0	# D.5827, iftmp.41_15
# compiler/binary/eval.h:129: 	F64: return VALUE( F64, f64, lhs->f64 < rhs->f64 );
	.loc 19 129 14
	jmp	.L547	#
.L552:
	endbr64	
# compiler/binary/eval.h:130: 	STR: return VALUE( I64, i64, lhs->str->len < rhs->str->len );
	.loc 19 130 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp120, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_18(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp121, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_20(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	cmp	esi, ecx	# _10, _12
	setb	cl	#, _13
	movzx	ecx, cl	# _14, _13
	mov	rdi, rax	# tmp123, D.5827
	movabs	rsi, -4294967296	# tmp125,
	and	rsi, rdi	# tmp124, tmp123
	mov	rax, rsi	# D.5827, tmp124
	mov	rdx, rcx	# D.5827, _14
.L547:
# compiler/binary/eval.h:131: }
	.loc 19 131 1
	mov	rsi, rax	# tmp127, D.5827
	mov	rdi, rdx	#, D.5827
	mov	rcx, rax	# tmp128, D.5827
	mov	rbx, rdx	#, D.5827
	mov	eax, esi	# <retval>, tmp127
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE134:
	.size	EvalLt, .-EvalLt
	.type	EvalLe, @function
EvalLe:
.LFB135:
	.loc 19 134 1
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
	.loc 19 136 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp103, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_18(D)->type
# compiler/binary/eval.h:136: 	goto *ops[ lhs->type ];
	.loc 19 136 11
	mov	ecx, ecx	# tmp104, _1
	lea	rsi, 0[0+rcx*8]	# tmp105,
	lea	rcx, ops.10[rip]	# tmp106,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:136: 	goto *ops[ lhs->type ];
	.loc 19 136 2
	nop	
	jmp	rcx	# _2
.L558:
	endbr64	
# compiler/binary/eval.h:137: 	I64: return VALUE( I64, i64, lhs->i64 <= rhs->i64 );
	.loc 19 137 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_18(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_20(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setle	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp110, D.5836
	movabs	rsi, -4294967296	# tmp112,
	and	rsi, rdi	# tmp111, tmp110
	mov	rax, rsi	# D.5836, tmp111
	mov	rdx, rcx	# D.5836, _6
	jmp	.L559	#
.L560:
	endbr64	
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 19 138 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, lhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _7, lhs_18(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp114, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _8, rhs_20(D)->D.4160.f64
	comisd	xmm0, xmm1	# _8, _7
	jb	.L567	#,
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 19 138 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC11[rip]	# iftmp.43_15,
	jmp	.L563	#
.L567:
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 19 138 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.43_15
.L563:
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 19 138 14 discriminator 4
	mov	rsi, rax	# tmp116, D.5836
	movabs	rcx, -4294967296	# tmp118,
	and	rcx, rsi	# tmp117, tmp116
	or	rcx, 1	# tmp119,
	mov	rax, rcx	# D.5836, tmp119
	movq	rdx, xmm0	# D.5836, iftmp.43_15
# compiler/binary/eval.h:138: 	F64: return VALUE( F64, f64, lhs->f64 <= rhs->f64 );
	.loc 19 138 14
	jmp	.L559	#
.L564:
	endbr64	
# compiler/binary/eval.h:139: 	STR: return VALUE( I64, i64, lhs->str->len <= rhs->str->len );
	.loc 19 139 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp120, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_18(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rsi, QWORD PTR -32[rbp]	# tmp121, rhs
	mov	rsi, QWORD PTR 8[rsi]	# _11, rhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rsi]	# _12, _11->len
	cmp	esi, ecx	# _12, _10
	setnb	cl	#, _13
	movzx	ecx, cl	# _14, _13
	mov	rdi, rax	# tmp123, D.5836
	movabs	rsi, -4294967296	# tmp125,
	and	rsi, rdi	# tmp124, tmp123
	mov	rax, rsi	# D.5836, tmp124
	mov	rdx, rcx	# D.5836, _14
.L559:
# compiler/binary/eval.h:140: }
	.loc 19 140 1
	mov	rsi, rax	# tmp127, D.5836
	mov	rdi, rdx	#, D.5836
	mov	rcx, rax	# tmp128, D.5836
	mov	rbx, rdx	#, D.5836
	mov	eax, esi	# <retval>, tmp127
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE135:
	.size	EvalLe, .-EvalLe
	.type	EvalGt, @function
EvalGt:
.LFB136:
	.loc 19 143 1
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
	.loc 19 145 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp103, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_18(D)->type
# compiler/binary/eval.h:145: 	goto *ops[ lhs->type ];
	.loc 19 145 11
	mov	ecx, ecx	# tmp104, _1
	lea	rsi, 0[0+rcx*8]	# tmp105,
	lea	rcx, ops.9[rip]	# tmp106,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:145: 	goto *ops[ lhs->type ];
	.loc 19 145 2
	nop	
	jmp	rcx	# _2
.L570:
	endbr64	
# compiler/binary/eval.h:146: 	I64: return VALUE( I64, i64, lhs->i64 > rhs->i64 );
	.loc 19 146 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_18(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_20(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setg	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp110, D.5845
	movabs	rsi, -4294967296	# tmp112,
	and	rsi, rdi	# tmp111, tmp110
	mov	rax, rsi	# D.5845, tmp111
	mov	rdx, rcx	# D.5845, _6
	jmp	.L571	#
.L572:
	endbr64	
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 19 147 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_18(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp114, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _8, rhs_20(D)->D.4160.f64
	comisd	xmm0, xmm1	# _7, _8
	jbe	.L579	#,
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 19 147 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC11[rip]	# iftmp.45_15,
	jmp	.L575	#
.L579:
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 19 147 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.45_15
.L575:
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 19 147 14 discriminator 4
	mov	rsi, rax	# tmp116, D.5845
	movabs	rcx, -4294967296	# tmp118,
	and	rcx, rsi	# tmp117, tmp116
	or	rcx, 1	# tmp119,
	mov	rax, rcx	# D.5845, tmp119
	movq	rdx, xmm0	# D.5845, iftmp.45_15
# compiler/binary/eval.h:147: 	F64: return VALUE( F64, f64, lhs->f64 > rhs->f64 );
	.loc 19 147 14
	jmp	.L571	#
.L576:
	endbr64	
# compiler/binary/eval.h:148: 	STR: return VALUE( I64, i64, lhs->str->len > rhs->str->len );
	.loc 19 148 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp120, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_18(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rsi, QWORD PTR -32[rbp]	# tmp121, rhs
	mov	rsi, QWORD PTR 8[rsi]	# _11, rhs_20(D)->D.4160.str
	mov	esi, DWORD PTR 4[rsi]	# _12, _11->len
	cmp	esi, ecx	# _12, _10
	setb	cl	#, _13
	movzx	ecx, cl	# _14, _13
	mov	rdi, rax	# tmp123, D.5845
	movabs	rsi, -4294967296	# tmp125,
	and	rsi, rdi	# tmp124, tmp123
	mov	rax, rsi	# D.5845, tmp124
	mov	rdx, rcx	# D.5845, _14
.L571:
# compiler/binary/eval.h:149: }
	.loc 19 149 1
	mov	rsi, rax	# tmp127, D.5845
	mov	rdi, rdx	#, D.5845
	mov	rcx, rax	# tmp128, D.5845
	mov	rbx, rdx	#, D.5845
	mov	eax, esi	# <retval>, tmp127
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE136:
	.size	EvalGt, .-EvalGt
	.type	EvalGe, @function
EvalGe:
.LFB137:
	.loc 19 152 1
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
	.loc 19 154 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp103, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_18(D)->type
# compiler/binary/eval.h:154: 	goto *ops[ lhs->type ];
	.loc 19 154 11
	mov	ecx, ecx	# tmp104, _1
	lea	rsi, 0[0+rcx*8]	# tmp105,
	lea	rcx, ops.8[rip]	# tmp106,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:154: 	goto *ops[ lhs->type ];
	.loc 19 154 2
	nop	
	jmp	rcx	# _2
.L582:
	endbr64	
# compiler/binary/eval.h:155: 	I64: return VALUE( I64, i64, lhs->i64 >= rhs->i64 );
	.loc 19 155 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp107, lhs
	mov	rsi, QWORD PTR 8[rcx]	# _3, lhs_18(D)->D.4160.i64
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_20(D)->D.4160.i64
	cmp	rsi, rcx	# _3, _4
	setge	cl	#, _5
	movzx	ecx, cl	# _6, _5
	mov	rdi, rax	# tmp110, D.5854
	movabs	rsi, -4294967296	# tmp112,
	and	rsi, rdi	# tmp111, tmp110
	mov	rax, rsi	# D.5854, tmp111
	mov	rdx, rcx	# D.5854, _6
	jmp	.L583	#
.L584:
	endbr64	
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 19 156 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp113, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, lhs_18(D)->D.4160.f64
	mov	rcx, QWORD PTR -32[rbp]	# tmp114, rhs
	movsd	xmm1, QWORD PTR 8[rcx]	# _8, rhs_20(D)->D.4160.f64
	comisd	xmm0, xmm1	# _7, _8
	jb	.L591	#,
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 19 156 14 is_stmt 0 discriminator 1
	movsd	xmm0, QWORD PTR .LC11[rip]	# iftmp.47_15,
	jmp	.L587	#
.L591:
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 19 156 14 discriminator 2
	pxor	xmm0, xmm0	# iftmp.47_15
.L587:
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 19 156 14 discriminator 4
	mov	rsi, rax	# tmp116, D.5854
	movabs	rcx, -4294967296	# tmp118,
	and	rcx, rsi	# tmp117, tmp116
	or	rcx, 1	# tmp119,
	mov	rax, rcx	# D.5854, tmp119
	movq	rdx, xmm0	# D.5854, iftmp.47_15
# compiler/binary/eval.h:156: 	F64: return VALUE( F64, f64, lhs->f64 >= rhs->f64 );
	.loc 19 156 14
	jmp	.L583	#
.L588:
	endbr64	
# compiler/binary/eval.h:157: 	STR: return VALUE( I64, i64, lhs->str->len >= rhs->str->len );
	.loc 19 157 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp120, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_18(D)->D.4160.str
	mov	esi, DWORD PTR 4[rcx]	# _10, _9->len
	mov	rcx, QWORD PTR -32[rbp]	# tmp121, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _11, rhs_20(D)->D.4160.str
	mov	ecx, DWORD PTR 4[rcx]	# _12, _11->len
	cmp	esi, ecx	# _10, _12
	setnb	cl	#, _13
	movzx	ecx, cl	# _14, _13
	mov	rdi, rax	# tmp123, D.5854
	movabs	rsi, -4294967296	# tmp125,
	and	rsi, rdi	# tmp124, tmp123
	mov	rax, rsi	# D.5854, tmp124
	mov	rdx, rcx	# D.5854, _14
.L583:
# compiler/binary/eval.h:158: }
	.loc 19 158 1
	mov	rsi, rax	# tmp127, D.5854
	mov	rdi, rdx	#, D.5854
	mov	rcx, rax	# tmp128, D.5854
	mov	rbx, rdx	#, D.5854
	mov	eax, esi	# <retval>, tmp127
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE137:
	.size	EvalGe, .-EvalGe
	.type	EvalAnd, @function
EvalAnd:
.LFB138:
	.loc 19 161 1
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
	.loc 19 163 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:163: 	goto *ops[ lhs->type ];
	.loc 19 163 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.7[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:163: 	goto *ops[ lhs->type ];
	.loc 19 163 2
	nop	
	jmp	rcx	# _2
.L594:
	endbr64	
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 19 164 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	test	rcx, rcx	# _3
	je	.L596	#,
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 19 164 14 is_stmt 0 discriminator 1
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	test	rcx, rcx	# _4
	je	.L596	#,
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 19 164 14 discriminator 3
	mov	ecx, 1	# iftmp.49_12,
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 19 164 14
	jmp	.L597	#
.L596:
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 19 164 14 discriminator 4
	mov	ecx, 0	# iftmp.49_12,
.L597:
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 19 164 14 discriminator 6
	movsx	rcx, ecx	# _5, iftmp.49_12
	mov	rdi, rax	# tmp109, D.5863
	movabs	rsi, -4294967296	# tmp111,
	and	rsi, rdi	# tmp110, tmp109
	mov	rax, rsi	# D.5863, tmp110
	mov	rdx, rcx	# D.5863, _5
# compiler/binary/eval.h:164: 	I64: return VALUE( I64, i64, lhs->i64 && rhs->i64 );
	.loc 19 164 14
	jmp	.L598	#
.L599:
	endbr64	
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 19 165 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp113
	ucomisd	xmm0, xmm1	# _6, tmp113
	jp	.L608	#,
	pxor	xmm1, xmm1	# tmp114
	ucomisd	xmm0, xmm1	# _6, tmp114
	je	.L600	#,
.L608:
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 19 165 14 is_stmt 0 discriminator 1
	mov	rcx, QWORD PTR -32[rbp]	# tmp115, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp116
	ucomisd	xmm0, xmm1	# _7, tmp116
	jp	.L609	#,
	pxor	xmm1, xmm1	# tmp117
	ucomisd	xmm0, xmm1	# _7, tmp117
	je	.L600	#,
.L609:
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 19 165 14 discriminator 3
	mov	ecx, 1	# iftmp.50_13,
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 19 165 14
	jmp	.L603	#
.L600:
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 19 165 14 discriminator 4
	mov	ecx, 0	# iftmp.50_13,
.L603:
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 19 165 14 discriminator 6
	pxor	xmm0, xmm0	# _8
	cvtsi2sd	xmm0, ecx	# _8, iftmp.50_13
	mov	rsi, rax	# tmp119, D.5863
	movabs	rcx, -4294967296	# tmp121,
	and	rcx, rsi	# tmp120, tmp119
	or	rcx, 1	# tmp122,
	mov	rax, rcx	# D.5863, tmp122
	movq	rdx, xmm0	# D.5863, _8
# compiler/binary/eval.h:165: 	F64: return VALUE( F64, f64, lhs->f64 && rhs->f64 );
	.loc 19 165 14
	jmp	.L598	#
.L604:
	endbr64	
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 19 166 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp123, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	test	rcx, rcx	# _9
	je	.L605	#,
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 19 166 14 is_stmt 0 discriminator 1
	mov	rcx, QWORD PTR -32[rbp]	# tmp124, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _10, rhs_19(D)->D.4160.str
	test	rcx, rcx	# _10
	je	.L605	#,
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 19 166 14 discriminator 3
	mov	ecx, 1	# iftmp.51_14,
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 19 166 14
	jmp	.L606	#
.L605:
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 19 166 14 discriminator 4
	mov	ecx, 0	# iftmp.51_14,
.L606:
# compiler/binary/eval.h:166: 	STR: return VALUE( I64, i64, lhs->str && rhs->str );
	.loc 19 166 14 discriminator 6
	movsx	rcx, ecx	# _11, iftmp.51_14
	mov	rdi, rax	# tmp126, D.5863
	movabs	rsi, -4294967296	# tmp128,
	and	rsi, rdi	# tmp127, tmp126
	mov	rax, rsi	# D.5863, tmp127
	mov	rdx, rcx	# D.5863, _11
.L598:
# compiler/binary/eval.h:167: }
	.loc 19 167 1 is_stmt 1
	mov	rsi, rax	# tmp130, D.5863
	mov	rdi, rdx	#, D.5863
	mov	rcx, rax	# tmp131, D.5863
	mov	rbx, rdx	#, D.5863
	mov	eax, esi	# <retval>, tmp130
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE138:
	.size	EvalAnd, .-EvalAnd
	.type	EvalOr, @function
EvalOr:
.LFB139:
	.loc 19 170 1
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
	.loc 19 172 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp102, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_17(D)->type
# compiler/binary/eval.h:172: 	goto *ops[ lhs->type ];
	.loc 19 172 11
	mov	ecx, ecx	# tmp103, _1
	lea	rsi, 0[0+rcx*8]	# tmp104,
	lea	rcx, ops.6[rip]	# tmp105,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:172: 	goto *ops[ lhs->type ];
	.loc 19 172 2
	nop	
	jmp	rcx	# _2
.L612:
	endbr64	
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 19 173 14
	mov	rcx, QWORD PTR -24[rbp]	# tmp106, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, lhs_17(D)->D.4160.i64
	test	rcx, rcx	# _3
	jne	.L613	#,
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 19 173 14 is_stmt 0 discriminator 2
	mov	rcx, QWORD PTR -32[rbp]	# tmp107, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _4, rhs_19(D)->D.4160.i64
	test	rcx, rcx	# _4
	je	.L615	#,
.L613:
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 19 173 14 discriminator 3
	mov	ecx, 1	# iftmp.53_12,
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 19 173 14
	jmp	.L616	#
.L615:
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 19 173 14 discriminator 4
	mov	ecx, 0	# iftmp.53_12,
.L616:
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 19 173 14 discriminator 6
	movsx	rcx, ecx	# _5, iftmp.53_12
	mov	rdi, rax	# tmp109, D.5883
	movabs	rsi, -4294967296	# tmp111,
	and	rsi, rdi	# tmp110, tmp109
	mov	rax, rsi	# D.5883, tmp110
	mov	rdx, rcx	# D.5883, _5
# compiler/binary/eval.h:173: 	I64: return VALUE( I64, i64, lhs->i64 || rhs->i64 );
	.loc 19 173 14
	jmp	.L617	#
.L618:
	endbr64	
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 19 174 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp112, lhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _6, lhs_17(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp113
	ucomisd	xmm0, xmm1	# _6, tmp113
	jp	.L619	#,
	pxor	xmm1, xmm1	# tmp114
	ucomisd	xmm0, xmm1	# _6, tmp114
	jne	.L619	#,
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 19 174 14 is_stmt 0 discriminator 2
	mov	rcx, QWORD PTR -32[rbp]	# tmp115, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _7, rhs_19(D)->D.4160.f64
	pxor	xmm1, xmm1	# tmp116
	ucomisd	xmm0, xmm1	# _7, tmp116
	jp	.L619	#,
	pxor	xmm1, xmm1	# tmp117
	ucomisd	xmm0, xmm1	# _7, tmp117
	je	.L621	#,
.L619:
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 19 174 14 discriminator 3
	mov	ecx, 1	# iftmp.54_13,
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 19 174 14
	jmp	.L623	#
.L621:
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 19 174 14 discriminator 4
	mov	ecx, 0	# iftmp.54_13,
.L623:
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 19 174 14 discriminator 6
	pxor	xmm0, xmm0	# _8
	cvtsi2sd	xmm0, ecx	# _8, iftmp.54_13
	mov	rsi, rax	# tmp119, D.5883
	movabs	rcx, -4294967296	# tmp121,
	and	rcx, rsi	# tmp120, tmp119
	or	rcx, 1	# tmp122,
	mov	rax, rcx	# D.5883, tmp122
	movq	rdx, xmm0	# D.5883, _8
# compiler/binary/eval.h:174: 	F64: return VALUE( F64, f64, lhs->f64 || rhs->f64 );
	.loc 19 174 14
	jmp	.L617	#
.L624:
	endbr64	
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 19 175 14 is_stmt 1
	mov	rcx, QWORD PTR -24[rbp]	# tmp123, lhs
	mov	rcx, QWORD PTR 8[rcx]	# _9, lhs_17(D)->D.4160.str
	test	rcx, rcx	# _9
	jne	.L625	#,
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 19 175 14 is_stmt 0 discriminator 2
	mov	rcx, QWORD PTR -32[rbp]	# tmp124, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _10, rhs_19(D)->D.4160.str
	test	rcx, rcx	# _10
	je	.L626	#,
.L625:
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 19 175 14 discriminator 3
	mov	ecx, 1	# iftmp.55_14,
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 19 175 14
	jmp	.L627	#
.L626:
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 19 175 14 discriminator 4
	mov	ecx, 0	# iftmp.55_14,
.L627:
# compiler/binary/eval.h:175: 	STR: return VALUE( I64, i64, lhs->str || rhs->str );
	.loc 19 175 14 discriminator 6
	movsx	rcx, ecx	# _11, iftmp.55_14
	mov	rdi, rax	# tmp126, D.5883
	movabs	rsi, -4294967296	# tmp128,
	and	rsi, rdi	# tmp127, tmp126
	mov	rax, rsi	# D.5883, tmp127
	mov	rdx, rcx	# D.5883, _11
.L617:
# compiler/binary/eval.h:176: }
	.loc 19 176 1 is_stmt 1
	mov	rsi, rax	# tmp130, D.5883
	mov	rdi, rdx	#, D.5883
	mov	rcx, rax	# tmp131, D.5883
	mov	rbx, rdx	#, D.5883
	mov	eax, esi	# <retval>, tmp130
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE139:
	.size	EvalOr, .-EvalOr
	.type	EvalMov, @function
EvalMov:
.LFB140:
	.loc 19 179 1
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
	.loc 19 181 16
	mov	rcx, QWORD PTR -24[rbp]	# tmp93, lhs
	mov	ecx, DWORD PTR [rcx]	# _1, lhs_8(D)->type
# compiler/binary/eval.h:181: 	goto *ops[ lhs->type ];
	.loc 19 181 11
	mov	ecx, ecx	# tmp94, _1
	lea	rsi, 0[0+rcx*8]	# tmp95,
	lea	rcx, ops.5[rip]	# tmp96,
	mov	rcx, QWORD PTR [rsi+rcx]	# _2, ops[_1]
# compiler/binary/eval.h:181: 	goto *ops[ lhs->type ];
	.loc 19 181 2
	nop	
	jmp	rcx	# _2
.L632:
	endbr64	
# compiler/binary/eval.h:182: 	I64: return VALUE( I64, i64, rhs->i64 );
	.loc 19 182 14
	mov	rcx, QWORD PTR -32[rbp]	# tmp97, rhs
	mov	rcx, QWORD PTR 8[rcx]	# _3, rhs_10(D)->D.4160.i64
	mov	rdi, rax	# tmp99, D.5903
	movabs	rsi, -4294967296	# tmp101,
	and	rsi, rdi	# tmp100, tmp99
	mov	rax, rsi	# D.5903, tmp100
	mov	rdx, rcx	# D.5903, _3
	jmp	.L633	#
.L634:
	endbr64	
# compiler/binary/eval.h:183: 	F64: return VALUE( F64, f64, rhs->f64 );
	.loc 19 183 14
	mov	rcx, QWORD PTR -32[rbp]	# tmp102, rhs
	movsd	xmm0, QWORD PTR 8[rcx]	# _4, rhs_10(D)->D.4160.f64
	mov	rsi, rax	# tmp104, D.5903
	movabs	rcx, -4294967296	# tmp106,
	and	rcx, rsi	# tmp105, tmp104
	or	rcx, 1	# tmp107,
	mov	rax, rcx	# D.5903, tmp107
	movq	rdx, xmm0	# D.5903, _4
	jmp	.L633	#
.L635:
	endbr64	
# compiler/binary/eval.h:184: 	STR: return VALUE( STR, str, rhs->str );
	.loc 19 184 14
	mov	rcx, QWORD PTR -32[rbp]	# tmp108, rhs
	mov	rsi, QWORD PTR 8[rcx]	# _5, rhs_10(D)->D.4160.str
	mov	rdi, rax	# tmp110, D.5903
	movabs	rcx, -4294967296	# tmp112,
	and	rcx, rdi	# tmp111, tmp110
	or	rcx, 2	# tmp113,
	mov	rax, rcx	# D.5903, tmp113
	mov	rdx, rsi	# D.5903, _5
.L633:
# compiler/binary/eval.h:185: }
	.loc 19 185 1
	mov	rsi, rax	# tmp115, D.5903
	mov	rdi, rdx	#, D.5903
	mov	rcx, rax	# tmp116, D.5903
	mov	rbx, rdx	#, D.5903
	mov	eax, esi	# <retval>, tmp115
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE140:
	.size	EvalMov, .-EvalMov
	.type	EvalAddEq, @function
EvalAddEq:
.LFB141:
	.loc 19 188 1
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
	.loc 19 189 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalAdd	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5908, tmp88
# compiler/binary/eval.h:189: 	return EvalAdd( lhs, rhs );
	.loc 19 189 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5908
	mov	rdi, rdx	#, D.5908
	mov	rcx, rax	# tmp91, D.5908
	mov	rbx, rdx	#, D.5908
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:190: }
	.loc 19 190 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE141:
	.size	EvalAddEq, .-EvalAddEq
	.type	EvalSubEq, @function
EvalSubEq:
.LFB142:
	.loc 19 193 1
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
	.loc 19 194 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalSub	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5910, tmp88
# compiler/binary/eval.h:194: 	return EvalSub( lhs, rhs );
	.loc 19 194 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5910
	mov	rdi, rdx	#, D.5910
	mov	rcx, rax	# tmp91, D.5910
	mov	rbx, rdx	#, D.5910
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:195: }
	.loc 19 195 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE142:
	.size	EvalSubEq, .-EvalSubEq
	.type	EvalMulEq, @function
EvalMulEq:
.LFB143:
	.loc 19 198 1
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
	.loc 19 199 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalMul	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5912, tmp88
# compiler/binary/eval.h:199: 	return EvalMul( lhs, rhs );
	.loc 19 199 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5912
	mov	rdi, rdx	#, D.5912
	mov	rcx, rax	# tmp91, D.5912
	mov	rbx, rdx	#, D.5912
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:200: }
	.loc 19 200 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE143:
	.size	EvalMulEq, .-EvalMulEq
	.type	EvalDivEq, @function
EvalDivEq:
.LFB144:
	.loc 19 203 1
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
	.loc 19 204 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalDiv	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5914, tmp88
# compiler/binary/eval.h:204: 	return EvalDiv( lhs, rhs );
	.loc 19 204 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5914
	mov	rdi, rdx	#, D.5914
	mov	rcx, rax	# tmp91, D.5914
	mov	rbx, rdx	#, D.5914
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:205: }
	.loc 19 205 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE144:
	.size	EvalDivEq, .-EvalDivEq
	.type	EvalModEq, @function
EvalModEq:
.LFB145:
	.loc 19 208 1
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
	.loc 19 209 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalMod	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5916, tmp88
# compiler/binary/eval.h:209: 	return EvalMod( lhs, rhs );
	.loc 19 209 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5916
	mov	rdi, rdx	#, D.5916
	mov	rcx, rax	# tmp91, D.5916
	mov	rbx, rdx	#, D.5916
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:210: }
	.loc 19 210 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE145:
	.size	EvalModEq, .-EvalModEq
	.type	EvalPowEq, @function
EvalPowEq:
.LFB146:
	.loc 19 213 1
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
	.loc 19 214 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalPow	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5918, tmp88
# compiler/binary/eval.h:214: 	return EvalPow( lhs, rhs );
	.loc 19 214 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5918
	mov	rdi, rdx	#, D.5918
	mov	rcx, rax	# tmp91, D.5918
	mov	rbx, rdx	#, D.5918
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:215: }
	.loc 19 215 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE146:
	.size	EvalPowEq, .-EvalPowEq
	.type	EvalBandEq, @function
EvalBandEq:
.LFB147:
	.loc 19 218 1
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
	.loc 19 219 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalBand	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5920, tmp88
# compiler/binary/eval.h:219: 	return EvalBand( lhs, rhs );
	.loc 19 219 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5920
	mov	rdi, rdx	#, D.5920
	mov	rcx, rax	# tmp91, D.5920
	mov	rbx, rdx	#, D.5920
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:220: }
	.loc 19 220 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE147:
	.size	EvalBandEq, .-EvalBandEq
	.type	EvalBorEq, @function
EvalBorEq:
.LFB148:
	.loc 19 223 1
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
	.loc 19 224 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalBor	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5922, tmp88
# compiler/binary/eval.h:224: 	return EvalBor( lhs, rhs );
	.loc 19 224 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5922
	mov	rdi, rdx	#, D.5922
	mov	rcx, rax	# tmp91, D.5922
	mov	rbx, rdx	#, D.5922
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:225: }
	.loc 19 225 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE148:
	.size	EvalBorEq, .-EvalBorEq
	.type	EvalBxorEq, @function
EvalBxorEq:
.LFB149:
	.loc 19 228 1
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
	.loc 19 229 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalBxor	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5924, tmp88
# compiler/binary/eval.h:229: 	return EvalBxor( lhs, rhs );
	.loc 19 229 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5924
	mov	rdi, rdx	#, D.5924
	mov	rcx, rax	# tmp91, D.5924
	mov	rbx, rdx	#, D.5924
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:230: }
	.loc 19 230 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE149:
	.size	EvalBxorEq, .-EvalBxorEq
	.type	EvalLshEq, @function
EvalLshEq:
.LFB150:
	.loc 19 233 1
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
	.loc 19 234 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalLsh	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5926, tmp88
# compiler/binary/eval.h:234: 	return EvalLsh( lhs, rhs );
	.loc 19 234 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5926
	mov	rdi, rdx	#, D.5926
	mov	rcx, rax	# tmp91, D.5926
	mov	rbx, rdx	#, D.5926
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:235: }
	.loc 19 235 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE150:
	.size	EvalLshEq, .-EvalLshEq
	.type	EvalRshEq, @function
EvalRshEq:
.LFB151:
	.loc 19 238 1
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
	.loc 19 239 9
	mov	rdx, QWORD PTR -32[rbp]	# tmp85, rhs
	mov	rax, QWORD PTR -24[rbp]	# tmp86, lhs
	mov	rsi, rdx	#, tmp85
	mov	rdi, rax	#, tmp86
	call	EvalRsh	#
	mov	rcx, rdx	# tmp88,
	mov	rdx, rcx	# D.5928, tmp88
# compiler/binary/eval.h:239: 	return EvalRsh( lhs, rhs );
	.loc 19 239 9 is_stmt 0 discriminator 1
	mov	rsi, rax	# tmp90, D.5928
	mov	rdi, rdx	#, D.5928
	mov	rcx, rax	# tmp91, D.5928
	mov	rbx, rdx	#, D.5928
	mov	eax, esi	# <retval>, tmp90
	mov	rdx, rbx	# <retval>,
# compiler/binary/eval.h:240: }
	.loc 19 240 1 is_stmt 1
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE151:
	.size	EvalRshEq, .-EvalRshEq
	.globl	BinPromote
	.type	BinPromote, @function
BinPromote:
.LFB152:
	.file 20 "compiler/binary/binary.h"
	.loc 20 2 1
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
	.loc 20 4 26
	mov	rax, QWORD PTR -8[rbp]	# tmp86, lhs
	mov	edx, DWORD PTR 8[rax]	# _1, lhs_4(D)->value.type
# compiler/binary/binary.h:4: 	return types[ lhs->value.type ][ rhs->value.type ];
	.loc 20 4 45
	mov	rax, QWORD PTR -16[rbp]	# tmp87, rhs
	mov	eax, DWORD PTR 8[rax]	# _2, rhs_5(D)->value.type
# compiler/binary/binary.h:4: 	return types[ lhs->value.type ][ rhs->value.type ];
	.loc 20 4 33
	mov	ecx, eax	# tmp88, _2
	mov	edx, edx	# tmp89, _1
	mov	rax, rdx	# tmp90, tmp89
	add	rax, rax	# tmp90
	add	rax, rdx	# tmp90, tmp89
	add	rax, rcx	# tmp91, tmp88
	lea	rdx, 0[0+rax*4]	# tmp92,
	lea	rax, types.27[rip]	# tmp93,
	mov	eax, DWORD PTR [rdx+rax]	# _6, types[_1][_2]
# compiler/binary/binary.h:5: }
	.loc 20 5 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE152:
	.size	BinPromote, .-BinPromote
	.globl	BinCast
	.type	BinCast, @function
BinCast:
.LFB153:
	.loc 20 8 1
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
	.loc 20 10 19
	mov	rax, QWORD PTR -8[rbp]	# tmp88, node
	mov	edx, DWORD PTR -12[rbp]	# tmp89, common
	mov	DWORD PTR 8[rax], edx	# node_9(D)->value.type, tmp89
# compiler/binary/binary.h:11: 	goto *types[ node->value.type ][ common ];
	.loc 20 11 26
	mov	rax, QWORD PTR -8[rbp]	# tmp90, node
	mov	eax, DWORD PTR 8[rax]	# _1, node_9(D)->value.type
# compiler/binary/binary.h:11: 	goto *types[ node->value.type ][ common ];
	.loc 20 11 33
	mov	edx, DWORD PTR -12[rbp]	# tmp91, common
	mov	ecx, eax	# tmp92, _1
	mov	rax, rcx	# tmp93, tmp92
	add	rax, rax	# tmp93
	add	rax, rcx	# tmp93, tmp92
	add	rax, rdx	# tmp94, tmp91
	lea	rdx, 0[0+rax*8]	# tmp95,
	lea	rax, types.26[rip]	# tmp96,
	mov	rax, QWORD PTR [rdx+rax]	# _2, types[_1][common_10(D)]
# compiler/binary/binary.h:11: 	goto *types[ node->value.type ][ common ];
	.loc 20 11 2
	nop	
	jmp	rax	# _2
.L663:
	endbr64	
# compiler/binary/cast_labels.h:1: I64_I64: return;
	.file 21 "compiler/binary/cast_labels.h"
	.loc 21 1 10
	jmp	.L661	#
.L665:
	endbr64	
# compiler/binary/cast_labels.h:2: I64_F64: node->value.f64 = ( F64 )node->value.i64; return;
	.loc 21 2 46
	mov	rax, QWORD PTR -8[rbp]	# tmp97, node
	mov	rax, QWORD PTR 16[rax]	# _3, node_9(D)->value.D.4160.i64
# compiler/binary/cast_labels.h:2: I64_F64: node->value.f64 = ( F64 )node->value.i64; return;
	.loc 21 2 28
	pxor	xmm0, xmm0	# _4
	cvtsi2sd	xmm0, rax	# _4, _3
# compiler/binary/cast_labels.h:2: I64_F64: node->value.f64 = ( F64 )node->value.i64; return;
	.loc 21 2 26
	mov	rax, QWORD PTR -8[rbp]	# tmp98, node
	movsd	QWORD PTR 16[rax], xmm0	# node_9(D)->value.D.4160.f64, _4
# compiler/binary/cast_labels.h:2: I64_F64: node->value.f64 = ( F64 )node->value.i64; return;
	.loc 21 2 52
	jmp	.L661	#
.L666:
	endbr64	
# compiler/binary/cast_labels.h:3: I64_STR: return;
	.loc 21 3 10
	jmp	.L661	#
.L667:
	endbr64	
# compiler/binary/cast_labels.h:5: F64_I64: node->value.i64 = ( I64 )node->value.f64; return;
	.loc 21 5 46
	mov	rax, QWORD PTR -8[rbp]	# tmp99, node
	movsd	xmm0, QWORD PTR 16[rax]	# _5, node_9(D)->value.D.4160.f64
# compiler/binary/cast_labels.h:5: F64_I64: node->value.i64 = ( I64 )node->value.f64; return;
	.loc 21 5 28
	cvttsd2si	rdx, xmm0	# _6, _5
# compiler/binary/cast_labels.h:5: F64_I64: node->value.i64 = ( I64 )node->value.f64; return;
	.loc 21 5 26
	mov	rax, QWORD PTR -8[rbp]	# tmp100, node
	mov	QWORD PTR 16[rax], rdx	# node_9(D)->value.D.4160.i64, _6
# compiler/binary/cast_labels.h:5: F64_I64: node->value.i64 = ( I64 )node->value.f64; return;
	.loc 21 5 52
	jmp	.L661	#
.L668:
	endbr64	
# compiler/binary/cast_labels.h:6: F64_F64: return;
	.loc 21 6 10
	jmp	.L661	#
.L669:
	endbr64	
# compiler/binary/cast_labels.h:7: F64_STR: return;
	.loc 21 7 10
	jmp	.L661	#
.L670:
	endbr64	
# compiler/binary/cast_labels.h:9: STR_I64: return;
	.loc 21 9 10
	jmp	.L661	#
.L671:
	endbr64	
# compiler/binary/cast_labels.h:10: STR_F64: return;
	.loc 21 10 10
	jmp	.L661	#
.L672:
	endbr64	
# compiler/binary/cast_labels.h:11: STR_STR: return;
	.loc 21 11 10
	nop	
.L661:
# compiler/binary/binary.h:13: }
	.loc 20 13 1
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE153:
	.size	BinCast, .-BinCast
	.globl	BinFold
	.type	BinFold, @function
BinFold:
.LFB154:
	.loc 20 16 1
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
	.loc 20 18 11
	mov	eax, DWORD PTR -28[rbp]	# tmp150, op
	lea	rdx, 0[0+rax*8]	# tmp151,
	lea	rax, ops.25[rip]	# tmp152,
	mov	rax, QWORD PTR [rdx+rax]	# _1, ops[op_68(D)]
# compiler/binary/binary.h:18: 	goto *ops[ op ];
	.loc 20 18 2
	nop	
	jmp	rax	# _1
.L675:
	endbr64	
# compiler/binary/fold_labels.h:1: ERR: return EvalBinErr( &lhs->value, op, &rhs->value );
	.file 22 "compiler/binary/fold_labels.h"
	.loc 22 1 13
	mov	rax, QWORD PTR -40[rbp]	# tmp153, rhs
	lea	rdx, 8[rax]	# _2,
	mov	rax, QWORD PTR -24[rbp]	# tmp154, lhs
	lea	rcx, 8[rax]	# _3,
	mov	eax, DWORD PTR -28[rbp]	# tmp155, op
	mov	esi, eax	#, tmp155
	mov	rdi, rcx	#, _3
	call	EvalBinErr	#
	mov	rcx, rdx	# tmp157,
	mov	rdx, rcx	# D.5747, tmp157
	jmp	.L676	#
.L677:
	endbr64	
# compiler/binary/fold_labels.h:2: ADD: return EvalAdd( &lhs->value, &rhs->value );
	.loc 22 2 13
	mov	rax, QWORD PTR -40[rbp]	# tmp158, rhs
	lea	rdx, 8[rax]	# _4,
	mov	rax, QWORD PTR -24[rbp]	# tmp159, lhs
	add	rax, 8	# _5,
	mov	rsi, rdx	#, _4
	mov	rdi, rax	#, _5
	call	EvalAdd	#
	mov	rcx, rdx	# tmp161,
	mov	rdx, rcx	# D.5747, tmp161
	jmp	.L676	#
.L678:
	endbr64	
# compiler/binary/fold_labels.h:3: SUB: return EvalSub( &lhs->value, &rhs->value );
	.loc 22 3 13
	mov	rax, QWORD PTR -40[rbp]	# tmp162, rhs
	lea	rdx, 8[rax]	# _6,
	mov	rax, QWORD PTR -24[rbp]	# tmp163, lhs
	add	rax, 8	# _7,
	mov	rsi, rdx	#, _6
	mov	rdi, rax	#, _7
	call	EvalSub	#
	mov	rcx, rdx	# tmp165,
	mov	rdx, rcx	# D.5747, tmp165
	jmp	.L676	#
.L679:
	endbr64	
# compiler/binary/fold_labels.h:4: MUL: return EvalMul( &lhs->value, &rhs->value );
	.loc 22 4 13
	mov	rax, QWORD PTR -40[rbp]	# tmp166, rhs
	lea	rdx, 8[rax]	# _8,
	mov	rax, QWORD PTR -24[rbp]	# tmp167, lhs
	add	rax, 8	# _9,
	mov	rsi, rdx	#, _8
	mov	rdi, rax	#, _9
	call	EvalMul	#
	mov	rcx, rdx	# tmp169,
	mov	rdx, rcx	# D.5747, tmp169
	jmp	.L676	#
.L680:
	endbr64	
# compiler/binary/fold_labels.h:5: DIV: return EvalDiv( &lhs->value, &rhs->value );
	.loc 22 5 13
	mov	rax, QWORD PTR -40[rbp]	# tmp170, rhs
	lea	rdx, 8[rax]	# _10,
	mov	rax, QWORD PTR -24[rbp]	# tmp171, lhs
	add	rax, 8	# _11,
	mov	rsi, rdx	#, _10
	mov	rdi, rax	#, _11
	call	EvalDiv	#
	mov	rcx, rdx	# tmp173,
	mov	rdx, rcx	# D.5747, tmp173
	jmp	.L676	#
.L681:
	endbr64	
# compiler/binary/fold_labels.h:6: MOD: return EvalMod( &lhs->value, &rhs->value );
	.loc 22 6 13
	mov	rax, QWORD PTR -40[rbp]	# tmp174, rhs
	lea	rdx, 8[rax]	# _12,
	mov	rax, QWORD PTR -24[rbp]	# tmp175, lhs
	add	rax, 8	# _13,
	mov	rsi, rdx	#, _12
	mov	rdi, rax	#, _13
	call	EvalMod	#
	mov	rcx, rdx	# tmp177,
	mov	rdx, rcx	# D.5747, tmp177
	jmp	.L676	#
.L682:
	endbr64	
# compiler/binary/fold_labels.h:7: POW: return EvalPow( &lhs->value, &rhs->value );
	.loc 22 7 13
	mov	rax, QWORD PTR -40[rbp]	# tmp178, rhs
	lea	rdx, 8[rax]	# _14,
	mov	rax, QWORD PTR -24[rbp]	# tmp179, lhs
	add	rax, 8	# _15,
	mov	rsi, rdx	#, _14
	mov	rdi, rax	#, _15
	call	EvalPow	#
	mov	rcx, rdx	# tmp181,
	mov	rdx, rcx	# D.5747, tmp181
	jmp	.L676	#
.L683:
	endbr64	
# compiler/binary/fold_labels.h:8: BAND: return EvalBand( &lhs->value, &rhs->value );
	.loc 22 8 14
	mov	rax, QWORD PTR -40[rbp]	# tmp182, rhs
	lea	rdx, 8[rax]	# _16,
	mov	rax, QWORD PTR -24[rbp]	# tmp183, lhs
	add	rax, 8	# _17,
	mov	rsi, rdx	#, _16
	mov	rdi, rax	#, _17
	call	EvalBand	#
	mov	rcx, rdx	# tmp185,
	mov	rdx, rcx	# D.5747, tmp185
	jmp	.L676	#
.L684:
	endbr64	
# compiler/binary/fold_labels.h:9: BOR: return EvalBor( &lhs->value, &rhs->value );
	.loc 22 9 13
	mov	rax, QWORD PTR -40[rbp]	# tmp186, rhs
	lea	rdx, 8[rax]	# _18,
	mov	rax, QWORD PTR -24[rbp]	# tmp187, lhs
	add	rax, 8	# _19,
	mov	rsi, rdx	#, _18
	mov	rdi, rax	#, _19
	call	EvalBor	#
	mov	rcx, rdx	# tmp189,
	mov	rdx, rcx	# D.5747, tmp189
	jmp	.L676	#
.L685:
	endbr64	
# compiler/binary/fold_labels.h:10: BXOR: return EvalBxor( &lhs->value, &rhs->value );
	.loc 22 10 14
	mov	rax, QWORD PTR -40[rbp]	# tmp190, rhs
	lea	rdx, 8[rax]	# _20,
	mov	rax, QWORD PTR -24[rbp]	# tmp191, lhs
	add	rax, 8	# _21,
	mov	rsi, rdx	#, _20
	mov	rdi, rax	#, _21
	call	EvalBxor	#
	mov	rcx, rdx	# tmp193,
	mov	rdx, rcx	# D.5747, tmp193
	jmp	.L676	#
.L686:
	endbr64	
# compiler/binary/fold_labels.h:11: LSH: return EvalLsh( &lhs->value, &rhs->value );
	.loc 22 11 13
	mov	rax, QWORD PTR -40[rbp]	# tmp194, rhs
	lea	rdx, 8[rax]	# _22,
	mov	rax, QWORD PTR -24[rbp]	# tmp195, lhs
	add	rax, 8	# _23,
	mov	rsi, rdx	#, _22
	mov	rdi, rax	#, _23
	call	EvalLsh	#
	mov	rcx, rdx	# tmp197,
	mov	rdx, rcx	# D.5747, tmp197
	jmp	.L676	#
.L687:
	endbr64	
# compiler/binary/fold_labels.h:12: RSH: return EvalRsh( &lhs->value, &rhs->value );
	.loc 22 12 13
	mov	rax, QWORD PTR -40[rbp]	# tmp198, rhs
	lea	rdx, 8[rax]	# _24,
	mov	rax, QWORD PTR -24[rbp]	# tmp199, lhs
	add	rax, 8	# _25,
	mov	rsi, rdx	#, _24
	mov	rdi, rax	#, _25
	call	EvalRsh	#
	mov	rcx, rdx	# tmp201,
	mov	rdx, rcx	# D.5747, tmp201
	jmp	.L676	#
.L688:
	endbr64	
# compiler/binary/fold_labels.h:13: EQEQ: return EvalEqEq( &lhs->value, &rhs->value );
	.loc 22 13 14
	mov	rax, QWORD PTR -40[rbp]	# tmp202, rhs
	lea	rdx, 8[rax]	# _26,
	mov	rax, QWORD PTR -24[rbp]	# tmp203, lhs
	add	rax, 8	# _27,
	mov	rsi, rdx	#, _26
	mov	rdi, rax	#, _27
	call	EvalEqEq	#
	mov	rcx, rdx	# tmp205,
	mov	rdx, rcx	# D.5747, tmp205
	jmp	.L676	#
.L689:
	endbr64	
# compiler/binary/fold_labels.h:14: NEQ: return EvalNeq( &lhs->value, &rhs->value );
	.loc 22 14 13
	mov	rax, QWORD PTR -40[rbp]	# tmp206, rhs
	lea	rdx, 8[rax]	# _28,
	mov	rax, QWORD PTR -24[rbp]	# tmp207, lhs
	add	rax, 8	# _29,
	mov	rsi, rdx	#, _28
	mov	rdi, rax	#, _29
	call	EvalNeq	#
	mov	rcx, rdx	# tmp209,
	mov	rdx, rcx	# D.5747, tmp209
	jmp	.L676	#
.L690:
	endbr64	
# compiler/binary/fold_labels.h:15: LT: return EvalLt( &lhs->value, &rhs->value );
	.loc 22 15 12
	mov	rax, QWORD PTR -40[rbp]	# tmp210, rhs
	lea	rdx, 8[rax]	# _30,
	mov	rax, QWORD PTR -24[rbp]	# tmp211, lhs
	add	rax, 8	# _31,
	mov	rsi, rdx	#, _30
	mov	rdi, rax	#, _31
	call	EvalLt	#
	mov	rcx, rdx	# tmp213,
	mov	rdx, rcx	# D.5747, tmp213
	jmp	.L676	#
.L691:
	endbr64	
# compiler/binary/fold_labels.h:16: LE: return EvalLe( &lhs->value, &rhs->value );
	.loc 22 16 12
	mov	rax, QWORD PTR -40[rbp]	# tmp214, rhs
	lea	rdx, 8[rax]	# _32,
	mov	rax, QWORD PTR -24[rbp]	# tmp215, lhs
	add	rax, 8	# _33,
	mov	rsi, rdx	#, _32
	mov	rdi, rax	#, _33
	call	EvalLe	#
	mov	rcx, rdx	# tmp217,
	mov	rdx, rcx	# D.5747, tmp217
	jmp	.L676	#
.L692:
	endbr64	
# compiler/binary/fold_labels.h:17: GT: return EvalGt( &lhs->value, &rhs->value );
	.loc 22 17 12
	mov	rax, QWORD PTR -40[rbp]	# tmp218, rhs
	lea	rdx, 8[rax]	# _34,
	mov	rax, QWORD PTR -24[rbp]	# tmp219, lhs
	add	rax, 8	# _35,
	mov	rsi, rdx	#, _34
	mov	rdi, rax	#, _35
	call	EvalGt	#
	mov	rcx, rdx	# tmp221,
	mov	rdx, rcx	# D.5747, tmp221
	jmp	.L676	#
.L693:
	endbr64	
# compiler/binary/fold_labels.h:18: GE: return EvalGe( &lhs->value, &rhs->value );
	.loc 22 18 12
	mov	rax, QWORD PTR -40[rbp]	# tmp222, rhs
	lea	rdx, 8[rax]	# _36,
	mov	rax, QWORD PTR -24[rbp]	# tmp223, lhs
	add	rax, 8	# _37,
	mov	rsi, rdx	#, _36
	mov	rdi, rax	#, _37
	call	EvalGe	#
	mov	rcx, rdx	# tmp225,
	mov	rdx, rcx	# D.5747, tmp225
	jmp	.L676	#
.L694:
	endbr64	
# compiler/binary/fold_labels.h:19: AND: return EvalAnd( &lhs->value, &rhs->value );
	.loc 22 19 13
	mov	rax, QWORD PTR -40[rbp]	# tmp226, rhs
	lea	rdx, 8[rax]	# _38,
	mov	rax, QWORD PTR -24[rbp]	# tmp227, lhs
	add	rax, 8	# _39,
	mov	rsi, rdx	#, _38
	mov	rdi, rax	#, _39
	call	EvalAnd	#
	mov	rcx, rdx	# tmp229,
	mov	rdx, rcx	# D.5747, tmp229
	jmp	.L676	#
.L695:
	endbr64	
# compiler/binary/fold_labels.h:20: OR: return EvalOr( &lhs->value, &rhs->value );
	.loc 22 20 12
	mov	rax, QWORD PTR -40[rbp]	# tmp230, rhs
	lea	rdx, 8[rax]	# _40,
	mov	rax, QWORD PTR -24[rbp]	# tmp231, lhs
	add	rax, 8	# _41,
	mov	rsi, rdx	#, _40
	mov	rdi, rax	#, _41
	call	EvalOr	#
	mov	rcx, rdx	# tmp233,
	mov	rdx, rcx	# D.5747, tmp233
	jmp	.L676	#
.L696:
	endbr64	
# compiler/binary/fold_labels.h:21: MOV: return EvalMov( &lhs->value, &rhs->value );
	.loc 22 21 13
	mov	rax, QWORD PTR -40[rbp]	# tmp234, rhs
	lea	rdx, 8[rax]	# _42,
	mov	rax, QWORD PTR -24[rbp]	# tmp235, lhs
	add	rax, 8	# _43,
	mov	rsi, rdx	#, _42
	mov	rdi, rax	#, _43
	call	EvalMov	#
	mov	rcx, rdx	# tmp237,
	mov	rdx, rcx	# D.5747, tmp237
	jmp	.L676	#
.L697:
	endbr64	
# compiler/binary/fold_labels.h:22: ADDEQ: return EvalAddEq( &lhs->value, &rhs->value );
	.loc 22 22 15
	mov	rax, QWORD PTR -40[rbp]	# tmp238, rhs
	lea	rdx, 8[rax]	# _44,
	mov	rax, QWORD PTR -24[rbp]	# tmp239, lhs
	add	rax, 8	# _45,
	mov	rsi, rdx	#, _44
	mov	rdi, rax	#, _45
	call	EvalAddEq	#
	mov	rcx, rdx	# tmp241,
	mov	rdx, rcx	# D.5747, tmp241
	jmp	.L676	#
.L698:
	endbr64	
# compiler/binary/fold_labels.h:23: SUBEQ: return EvalSubEq( &lhs->value, &rhs->value );
	.loc 22 23 15
	mov	rax, QWORD PTR -40[rbp]	# tmp242, rhs
	lea	rdx, 8[rax]	# _46,
	mov	rax, QWORD PTR -24[rbp]	# tmp243, lhs
	add	rax, 8	# _47,
	mov	rsi, rdx	#, _46
	mov	rdi, rax	#, _47
	call	EvalSubEq	#
	mov	rcx, rdx	# tmp245,
	mov	rdx, rcx	# D.5747, tmp245
	jmp	.L676	#
.L699:
	endbr64	
# compiler/binary/fold_labels.h:24: MULEQ: return EvalMulEq( &lhs->value, &rhs->value );
	.loc 22 24 15
	mov	rax, QWORD PTR -40[rbp]	# tmp246, rhs
	lea	rdx, 8[rax]	# _48,
	mov	rax, QWORD PTR -24[rbp]	# tmp247, lhs
	add	rax, 8	# _49,
	mov	rsi, rdx	#, _48
	mov	rdi, rax	#, _49
	call	EvalMulEq	#
	mov	rcx, rdx	# tmp249,
	mov	rdx, rcx	# D.5747, tmp249
	jmp	.L676	#
.L700:
	endbr64	
# compiler/binary/fold_labels.h:25: DIVEQ: return EvalDivEq( &lhs->value, &rhs->value );
	.loc 22 25 15
	mov	rax, QWORD PTR -40[rbp]	# tmp250, rhs
	lea	rdx, 8[rax]	# _50,
	mov	rax, QWORD PTR -24[rbp]	# tmp251, lhs
	add	rax, 8	# _51,
	mov	rsi, rdx	#, _50
	mov	rdi, rax	#, _51
	call	EvalDivEq	#
	mov	rcx, rdx	# tmp253,
	mov	rdx, rcx	# D.5747, tmp253
	jmp	.L676	#
.L701:
	endbr64	
# compiler/binary/fold_labels.h:26: MODEQ: return EvalModEq( &lhs->value, &rhs->value );
	.loc 22 26 15
	mov	rax, QWORD PTR -40[rbp]	# tmp254, rhs
	lea	rdx, 8[rax]	# _52,
	mov	rax, QWORD PTR -24[rbp]	# tmp255, lhs
	add	rax, 8	# _53,
	mov	rsi, rdx	#, _52
	mov	rdi, rax	#, _53
	call	EvalModEq	#
	mov	rcx, rdx	# tmp257,
	mov	rdx, rcx	# D.5747, tmp257
	jmp	.L676	#
.L702:
	endbr64	
# compiler/binary/fold_labels.h:27: POWEQ: return EvalPowEq( &lhs->value, &rhs->value );
	.loc 22 27 15
	mov	rax, QWORD PTR -40[rbp]	# tmp258, rhs
	lea	rdx, 8[rax]	# _54,
	mov	rax, QWORD PTR -24[rbp]	# tmp259, lhs
	add	rax, 8	# _55,
	mov	rsi, rdx	#, _54
	mov	rdi, rax	#, _55
	call	EvalPowEq	#
	mov	rcx, rdx	# tmp261,
	mov	rdx, rcx	# D.5747, tmp261
	jmp	.L676	#
.L703:
	endbr64	
# compiler/binary/fold_labels.h:28: BANDEQ: return EvalBandEq( &lhs->value, &rhs->value );
	.loc 22 28 16
	mov	rax, QWORD PTR -40[rbp]	# tmp262, rhs
	lea	rdx, 8[rax]	# _56,
	mov	rax, QWORD PTR -24[rbp]	# tmp263, lhs
	add	rax, 8	# _57,
	mov	rsi, rdx	#, _56
	mov	rdi, rax	#, _57
	call	EvalBandEq	#
	mov	rcx, rdx	# tmp265,
	mov	rdx, rcx	# D.5747, tmp265
	jmp	.L676	#
.L704:
	endbr64	
# compiler/binary/fold_labels.h:29: BOREQ: return EvalBorEq( &lhs->value, &rhs->value );
	.loc 22 29 15
	mov	rax, QWORD PTR -40[rbp]	# tmp266, rhs
	lea	rdx, 8[rax]	# _58,
	mov	rax, QWORD PTR -24[rbp]	# tmp267, lhs
	add	rax, 8	# _59,
	mov	rsi, rdx	#, _58
	mov	rdi, rax	#, _59
	call	EvalBorEq	#
	mov	rcx, rdx	# tmp269,
	mov	rdx, rcx	# D.5747, tmp269
	jmp	.L676	#
.L705:
	endbr64	
# compiler/binary/fold_labels.h:30: BXOREQ: return EvalBxorEq( &lhs->value, &rhs->value );
	.loc 22 30 16
	mov	rax, QWORD PTR -40[rbp]	# tmp270, rhs
	lea	rdx, 8[rax]	# _60,
	mov	rax, QWORD PTR -24[rbp]	# tmp271, lhs
	add	rax, 8	# _61,
	mov	rsi, rdx	#, _60
	mov	rdi, rax	#, _61
	call	EvalBxorEq	#
	mov	rcx, rdx	# tmp273,
	mov	rdx, rcx	# D.5747, tmp273
	jmp	.L676	#
.L706:
	endbr64	
# compiler/binary/fold_labels.h:31: LSHEQ: return EvalLshEq( &lhs->value, &rhs->value );
	.loc 22 31 15
	mov	rax, QWORD PTR -40[rbp]	# tmp274, rhs
	lea	rdx, 8[rax]	# _62,
	mov	rax, QWORD PTR -24[rbp]	# tmp275, lhs
	add	rax, 8	# _63,
	mov	rsi, rdx	#, _62
	mov	rdi, rax	#, _63
	call	EvalLshEq	#
	mov	rcx, rdx	# tmp277,
	mov	rdx, rcx	# D.5747, tmp277
	jmp	.L676	#
.L707:
	endbr64	
# compiler/binary/fold_labels.h:32: RSHEQ: return EvalRshEq( &lhs->value, &rhs->value );
	.loc 22 32 15
	mov	rax, QWORD PTR -40[rbp]	# tmp278, rhs
	lea	rdx, 8[rax]	# _64,
	mov	rax, QWORD PTR -24[rbp]	# tmp279, lhs
	add	rax, 8	# _65,
	mov	rsi, rdx	#, _64
	mov	rdi, rax	#, _65
	call	EvalRshEq	#
	mov	rcx, rdx	# tmp281,
	mov	rdx, rcx	# D.5747, tmp281
.L676:
# compiler/binary/binary.h:20: }
	.loc 20 20 1
	mov	rsi, rax	# tmp283, D.5747
	mov	rdi, rdx	#, D.5747
	mov	rcx, rax	# tmp284, D.5747
	mov	rbx, rdx	#, D.5747
	mov	eax, esi	# <retval>, tmp283
	mov	rdx, rbx	# <retval>,
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE154:
	.size	BinFold, .-BinFold
	.globl	BinConstConst
	.type	BinConstConst, @function
BinConstConst:
.LFB155:
	.loc 20 23 1
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
	.loc 20 24 12
	pxor	xmm0, xmm0	# tmp83
	movaps	XMMWORD PTR -32[rbp], xmm0	# node, tmp83
	movq	QWORD PTR -16[rbp], xmm0	# node, tmp83
# compiler/binary/binary.h:24: 	ParseNode node = { .type = PT_CONST, .value.type = lhs->value.type };
	.loc 20 24 63
	mov	rax, QWORD PTR -48[rbp]	# tmp84, lhs
	mov	eax, DWORD PTR 8[rax]	# _1, lhs_4(D)->value.type
# compiler/binary/binary.h:24: 	ParseNode node = { .type = PT_CONST, .value.type = lhs->value.type };
	.loc 20 24 12
	mov	DWORD PTR -24[rbp], eax	# node.value.type, _1
# compiler/binary/binary.h:25: 	node.value = BinFold( lhs, op, rhs );
	.loc 20 25 15
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
	.loc 20 26 9
	mov	rcx, QWORD PTR -40[rbp]	# tmp90, .result_ptr
	mov	rax, QWORD PTR -32[rbp]	# tmp91, node
	mov	rdx, QWORD PTR -24[rbp]	#, node
	mov	QWORD PTR [rcx], rax	# <retval>, tmp91
	mov	QWORD PTR 8[rcx], rdx	# <retval>,
	mov	rax, QWORD PTR -16[rbp]	# tmp92, node
	mov	QWORD PTR 16[rcx], rax	# <retval>, tmp92
# compiler/binary/binary.h:27: }
	.loc 20 27 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE155:
	.size	BinConstConst, .-BinConstConst
	.globl	BinConstRef
	.type	BinConstRef, @function
BinConstRef:
.LFB156:
	.loc 20 30 1
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
	.loc 20 31 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:32: }
	.loc 20 32 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE156:
	.size	BinConstRef, .-BinConstRef
	.globl	BinConstCall
	.type	BinConstCall, @function
BinConstCall:
.LFB157:
	.loc 20 35 1
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
	.loc 20 36 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:37: }
	.loc 20 37 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE157:
	.size	BinConstCall, .-BinConstCall
	.globl	BinRefConst
	.type	BinRefConst, @function
BinRefConst:
.LFB158:
	.loc 20 40 1
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
	.loc 20 41 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:42: }
	.loc 20 42 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE158:
	.size	BinRefConst, .-BinRefConst
	.globl	BinRefRef
	.type	BinRefRef, @function
BinRefRef:
.LFB159:
	.loc 20 45 1
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
	.loc 20 46 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:47: }
	.loc 20 47 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE159:
	.size	BinRefRef, .-BinRefRef
	.globl	BinRefCall
	.type	BinRefCall, @function
BinRefCall:
.LFB160:
	.loc 20 50 1
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
	.loc 20 51 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:52: }
	.loc 20 52 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE160:
	.size	BinRefCall, .-BinRefCall
	.globl	BinCallConst
	.type	BinCallConst, @function
BinCallConst:
.LFB161:
	.loc 20 55 1
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
	.loc 20 56 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:57: }
	.loc 20 57 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE161:
	.size	BinCallConst, .-BinCallConst
	.globl	BinCallRef
	.type	BinCallRef, @function
BinCallRef:
.LFB162:
	.loc 20 60 1
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
	.loc 20 61 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:62: }
	.loc 20 62 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE162:
	.size	BinCallRef, .-BinCallRef
	.globl	BinCallCall
	.type	BinCallCall, @function
BinCallCall:
.LFB163:
	.loc 20 65 1
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
	.loc 20 66 9
	mov	rax, QWORD PTR -40[rbp]	# tmp82, .result_ptr
	pxor	xmm0, xmm0	# tmp83
	movups	XMMWORD PTR [rax], xmm0	# <retval>, tmp83
	movq	QWORD PTR 16[rax], xmm0	# <retval>, tmp83
# compiler/binary/binary.h:67: }
	.loc 20 67 1
	mov	rax, QWORD PTR -40[rbp]	#, .result_ptr
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE163:
	.size	BinCallCall, .-BinCallCall
	.globl	CompileBin
	.type	CompileBin, @function
CompileBin:
.LFB164:
	.loc 20 70 1
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
	.loc 20 70 1
	mov	rax, QWORD PTR fs:40	# tmp138, MEM[(<address-space-1> long unsigned int *)40B]
	mov	QWORD PTR -8[rbp], rax	# D.6521, tmp138
	xor	eax, eax	# tmp138
# compiler/binary/binary.h:72: 	OpCode op = TkToOp( token_type );
	.loc 20 72 14
	mov	eax, DWORD PTR -36[rbp]	# tmp85, token_type
	mov	edi, eax	#, tmp85
	call	TkToOp	#
	mov	DWORD PTR -16[rbp], eax	# op, tmp86
# compiler/binary/binary.h:73: 	ValueType common = BinPromote( lhs, rhs );
	.loc 20 73 21
	mov	rdx, QWORD PTR -48[rbp]	# tmp87, rhs
	mov	rax, QWORD PTR -32[rbp]	# tmp88, lhs
	mov	rsi, rdx	#, tmp87
	mov	rdi, rax	#, tmp88
	call	BinPromote	#
	mov	DWORD PTR -12[rbp], eax	# common, tmp89
# compiler/binary/binary.h:74: 	BinCast( lhs, common );
	.loc 20 74 2
	mov	edx, DWORD PTR -12[rbp]	# tmp90, common
	mov	rax, QWORD PTR -32[rbp]	# tmp91, lhs
	mov	esi, edx	#, tmp90
	mov	rdi, rax	#, tmp91
	call	BinCast	#
# compiler/binary/binary.h:75: 	BinCast( rhs, common );
	.loc 20 75 2
	mov	edx, DWORD PTR -12[rbp]	# tmp92, common
	mov	rax, QWORD PTR -48[rbp]	# tmp93, rhs
	mov	esi, edx	#, tmp92
	mov	rdi, rax	#, tmp93
	call	BinCast	#
# compiler/binary/binary.h:76: 	goto *irs[ lhs->type ][ rhs->type ];
	.loc 20 76 16
	mov	rax, QWORD PTR -32[rbp]	# tmp94, lhs
	mov	edx, DWORD PTR [rax]	# _1, lhs_9(D)->type
# compiler/binary/binary.h:76: 	goto *irs[ lhs->type ][ rhs->type ];
	.loc 20 76 29
	mov	rax, QWORD PTR -48[rbp]	# tmp95, rhs
	mov	eax, DWORD PTR [rax]	# _2, rhs_10(D)->type
# compiler/binary/binary.h:76: 	goto *irs[ lhs->type ][ rhs->type ];
	.loc 20 76 24
	mov	ecx, eax	# tmp96, _2
	mov	edx, edx	# tmp97, _1
	mov	rax, rdx	# tmp98, tmp97
	add	rax, rax	# tmp98
	add	rax, rdx	# tmp98, tmp97
	add	rax, rcx	# tmp99, tmp96
	lea	rdx, 0[0+rax*8]	# tmp100,
	lea	rax, irs.4[rip]	# tmp101,
	mov	rax, QWORD PTR [rdx+rax]	# _3, irs[_1][_2]
# compiler/binary/binary.h:76: 	goto *irs[ lhs->type ][ rhs->type ];
	.loc 20 76 2
	nop	
	jmp	rax	# _3
.L728:
	endbr64	
# compiler/binary/ir_labels.h:1: CONST_CONST: return BinConstConst( lhs, op, rhs );
	.file 23 "compiler/binary/ir_labels.h"
	.loc 23 1 21
	mov	rax, QWORD PTR -24[rbp]	# tmp102, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp103, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp104, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp105, lhs
	mov	rdi, rax	#, tmp102
	call	BinConstConst	#
	jmp	.L729	#
.L730:
	endbr64	
# compiler/binary/ir_labels.h:2: CONST_REF: 	return BinConstRef( lhs, op, rhs );
	.loc 23 2 20
	mov	rax, QWORD PTR -24[rbp]	# tmp106, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp107, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp108, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp109, lhs
	mov	rdi, rax	#, tmp106
	call	BinConstRef	#
	jmp	.L729	#
.L731:
	endbr64	
# compiler/binary/ir_labels.h:3: CONST_CALL: return BinConstCall( lhs, op, rhs );
	.loc 23 3 20
	mov	rax, QWORD PTR -24[rbp]	# tmp110, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp111, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp112, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp113, lhs
	mov	rdi, rax	#, tmp110
	call	BinConstCall	#
	jmp	.L729	#
.L732:
	endbr64	
# compiler/binary/ir_labels.h:4: REF_CONST: return BinRefConst( lhs, op, rhs );
	.loc 23 4 19
	mov	rax, QWORD PTR -24[rbp]	# tmp114, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp115, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp116, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp117, lhs
	mov	rdi, rax	#, tmp114
	call	BinRefConst	#
	jmp	.L729	#
.L733:
	endbr64	
# compiler/binary/ir_labels.h:5: REF_REF: return BinRefRef( lhs, op, rhs );
	.loc 23 5 17
	mov	rax, QWORD PTR -24[rbp]	# tmp118, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp119, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp120, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp121, lhs
	mov	rdi, rax	#, tmp118
	call	BinRefRef	#
	jmp	.L729	#
.L734:
	endbr64	
# compiler/binary/ir_labels.h:6: REF_CALL: return BinRefCall( lhs, op, rhs );
	.loc 23 6 18
	mov	rax, QWORD PTR -24[rbp]	# tmp122, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp123, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp124, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp125, lhs
	mov	rdi, rax	#, tmp122
	call	BinRefCall	#
	jmp	.L729	#
.L735:
	endbr64	
# compiler/binary/ir_labels.h:7: CALL_CONST: return BinCallConst( lhs, op, rhs );
	.loc 23 7 20
	mov	rax, QWORD PTR -24[rbp]	# tmp126, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp127, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp128, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp129, lhs
	mov	rdi, rax	#, tmp126
	call	BinCallConst	#
	jmp	.L729	#
.L736:
	endbr64	
# compiler/binary/ir_labels.h:8: CALL_REF: return BinCallRef( lhs, op, rhs );
	.loc 23 8 18
	mov	rax, QWORD PTR -24[rbp]	# tmp130, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp131, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp132, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp133, lhs
	mov	rdi, rax	#, tmp130
	call	BinCallRef	#
	jmp	.L729	#
.L737:
	endbr64	
# compiler/binary/ir_labels.h:9: CALL_CALL: return BinCallCall( lhs, op, rhs );
	.loc 23 9 19
	mov	rax, QWORD PTR -24[rbp]	# tmp134, .result_ptr
	mov	rcx, QWORD PTR -48[rbp]	# tmp135, rhs
	mov	edx, DWORD PTR -16[rbp]	# tmp136, op
	mov	rsi, QWORD PTR -32[rbp]	# tmp137, lhs
	mov	rdi, rax	#, tmp134
	call	BinCallCall	#
.L729:
# compiler/binary/binary.h:78: }
	.loc 20 78 1
	mov	rax, QWORD PTR -8[rbp]	# tmp139, D.6521
	sub	rax, QWORD PTR fs:40	# tmp139, MEM[(<address-space-1> long unsigned int *)40B]
	je	.L738	#,
	call	__stack_chk_fail@PLT	#
.L738:
	mov	rax, QWORD PTR -24[rbp]	#, .result_ptr
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE164:
	.size	CompileBin, .-CompileBin
	.globl	MemAlloc
	.type	MemAlloc, @function
MemAlloc:
.LFB165:
	.file 24 "mem.h"
	.loc 24 2 1
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
	.loc 24 3 2
	call	GetSrc	#
# mem.h:3: 	ArenaAlloc( GetSrc( ), KB( 32 ) ); /* Arena< I8 > */
	.loc 24 3 2 is_stmt 0 discriminator 1
	mov	esi, 32768	#,
	mov	rdi, rax	#, _1
	call	ArenaAlloc	#
# mem.h:4: 	ArenaAlloc( GetStrings( ), KB( 16 ) ); /* Arena< I8 > */
	.loc 24 4 2 is_stmt 1
	call	GetStrings	#
# mem.h:4: 	ArenaAlloc( GetStrings( ), KB( 16 ) ); /* Arena< I8 > */
	.loc 24 4 2 is_stmt 0 discriminator 1
	mov	esi, 16384	#,
	mov	rdi, rax	#, _2
	call	ArenaAlloc	#
# mem.h:5: 	TableAlloc( GetInterns( ), GetStrings( ), 256 ); /* Table< String > */
	.loc 24 5 2 is_stmt 1
	call	GetStrings	#
	mov	rbx, rax	# _3,
# mem.h:5: 	TableAlloc( GetInterns( ), GetStrings( ), 256 ); /* Table< String > */
	.loc 24 5 2 is_stmt 0 discriminator 1
	call	GetInterns	#
# mem.h:5: 	TableAlloc( GetInterns( ), GetStrings( ), 256 ); /* Table< String > */
	.loc 24 5 2 discriminator 2
	mov	edx, 256	#,
	mov	rsi, rbx	#, _3
	mov	rdi, rax	#, _4
	call	TableAlloc	#
# mem.h:6: 	VecAlloc( GetConsts( ), 256, sizeof( Value ) ); /* Vec< Value > */
	.loc 24 6 2 is_stmt 1
	call	GetConsts	#
# mem.h:6: 	VecAlloc( GetConsts( ), 256, sizeof( Value ) ); /* Vec< Value > */
	.loc 24 6 2 is_stmt 0 discriminator 1
	mov	edx, 16	#,
	mov	esi, 256	#,
	mov	rdi, rax	#, _5
	call	VecAlloc	#
# mem.h:7: 	VecAlloc( GetLocals( ), 256, sizeof( Var ) ); /* Vec< Var > */
	.loc 24 7 2 is_stmt 1
	call	GetLocals	#
# mem.h:7: 	VecAlloc( GetLocals( ), 256, sizeof( Var ) ); /* Vec< Var > */
	.loc 24 7 2 is_stmt 0 discriminator 1
	mov	edx, 16	#,
	mov	esi, 256	#,
	mov	rdi, rax	#, _6
	call	VecAlloc	#
# mem.h:8: 	VecAlloc( GetGlobals( ), 256, sizeof( Var ) ); /* Vec< Var > */
	.loc 24 8 2 is_stmt 1
	call	GetGlobals	#
# mem.h:8: 	VecAlloc( GetGlobals( ), 256, sizeof( Var ) ); /* Vec< Var > */
	.loc 24 8 2 is_stmt 0 discriminator 1
	mov	edx, 16	#,
	mov	esi, 256	#,
	mov	rdi, rax	#, _7
	call	VecAlloc	#
# mem.h:9: 	MapAlloc( GetEnv( ), 256 ); /* Map< String, U8 > */
	.loc 24 9 2 is_stmt 1
	call	GetEnv	#
# mem.h:9: 	MapAlloc( GetEnv( ), 256 ); /* Map< String, U8 > */
	.loc 24 9 2 is_stmt 0 discriminator 1
	mov	esi, 256	#,
	mov	rdi, rax	#, _8
	call	MapAlloc	#
# mem.h:10: 	VecAlloc( GetCode( ), 256, sizeof( Op ) ); /* Vec< Op > */
	.loc 24 10 2 is_stmt 1
	call	GetCode	#
# mem.h:10: 	VecAlloc( GetCode( ), 256, sizeof( Op ) ); /* Vec< Op > */
	.loc 24 10 2 is_stmt 0 discriminator 1
	mov	edx, 4	#,
	mov	esi, 256	#,
	mov	rdi, rax	#, _9
	call	VecAlloc	#
# mem.h:11: 	VecAlloc( GetFuncs( ), 128, sizeof( Func ) ); /* Vec< Func > */
	.loc 24 11 2 is_stmt 1
	call	GetFuncs	#
# mem.h:11: 	VecAlloc( GetFuncs( ), 128, sizeof( Func ) ); /* Vec< Func > */
	.loc 24 11 2 is_stmt 0 discriminator 1
	mov	edx, 16	#,
	mov	esi, 128	#,
	mov	rdi, rax	#, _10
	call	VecAlloc	#
# mem.h:12: }
	.loc 24 12 1 is_stmt 1
	nop	
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE165:
	.size	MemAlloc, .-MemAlloc
	.globl	MemDealloc
	.type	MemDealloc, @function
MemDealloc:
.LFB166:
	.loc 24 15 1
	.cfi_startproc
	endbr64	
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# mem.h:16: 	free( GetFuncs( )->base );
	.loc 24 16 8
	call	GetFuncs	#
# mem.h:16: 	free( GetFuncs( )->base );
	.loc 24 16 19 discriminator 1
	mov	rax, QWORD PTR [rax]	# _2, _1->base
# mem.h:16: 	free( GetFuncs( )->base );
	.loc 24 16 2 discriminator 1
	mov	rdi, rax	#, _2
	call	free@PLT	#
# mem.h:17: 	free( GetCode( )->base );
	.loc 24 17 8
	call	GetCode	#
# mem.h:17: 	free( GetCode( )->base );
	.loc 24 17 18 discriminator 1
	mov	rax, QWORD PTR [rax]	# _4, _3->base
# mem.h:17: 	free( GetCode( )->base );
	.loc 24 17 2 discriminator 1
	mov	rdi, rax	#, _4
	call	free@PLT	#
# mem.h:18: 	free( GetEnv( )->base );
	.loc 24 18 8
	call	GetEnv	#
# mem.h:18: 	free( GetEnv( )->base );
	.loc 24 18 17 discriminator 1
	mov	rax, QWORD PTR [rax]	# _6, _5->base
# mem.h:18: 	free( GetEnv( )->base );
	.loc 24 18 2 discriminator 1
	mov	rdi, rax	#, _6
	call	free@PLT	#
# mem.h:19: 	free( GetGlobals( )->base );
	.loc 24 19 8
	call	GetGlobals	#
# mem.h:19: 	free( GetGlobals( )->base );
	.loc 24 19 21 discriminator 1
	mov	rax, QWORD PTR [rax]	# _8, _7->base
# mem.h:19: 	free( GetGlobals( )->base );
	.loc 24 19 2 discriminator 1
	mov	rdi, rax	#, _8
	call	free@PLT	#
# mem.h:20: 	free( GetLocals( )->base );
	.loc 24 20 8
	call	GetLocals	#
# mem.h:20: 	free( GetLocals( )->base );
	.loc 24 20 20 discriminator 1
	mov	rax, QWORD PTR [rax]	# _10, _9->base
# mem.h:20: 	free( GetLocals( )->base );
	.loc 24 20 2 discriminator 1
	mov	rdi, rax	#, _10
	call	free@PLT	#
# mem.h:21: 	free( GetConsts( )->base );
	.loc 24 21 8
	call	GetConsts	#
# mem.h:21: 	free( GetConsts( )->base );
	.loc 24 21 20 discriminator 1
	mov	rax, QWORD PTR [rax]	# _12, _11->base
# mem.h:21: 	free( GetConsts( )->base );
	.loc 24 21 2 discriminator 1
	mov	rdi, rax	#, _12
	call	free@PLT	#
# mem.h:22: 	free( GetInterns( )->base );
	.loc 24 22 8
	call	GetInterns	#
# mem.h:22: 	free( GetInterns( )->base );
	.loc 24 22 21 discriminator 1
	mov	rax, QWORD PTR [rax]	# _14, _13->base
# mem.h:22: 	free( GetInterns( )->base );
	.loc 24 22 2 discriminator 1
	mov	rdi, rax	#, _14
	call	free@PLT	#
# mem.h:23: 	free( GetStrings( )->base );
	.loc 24 23 8
	call	GetStrings	#
# mem.h:23: 	free( GetStrings( )->base );
	.loc 24 23 21 discriminator 1
	mov	rax, QWORD PTR [rax]	# _16, _15->base
# mem.h:23: 	free( GetStrings( )->base );
	.loc 24 23 2 discriminator 1
	mov	rdi, rax	#, _16
	call	free@PLT	#
# mem.h:24: 	free( GetSrc( )->base );
	.loc 24 24 8
	call	GetSrc	#
# mem.h:24: 	free( GetSrc( )->base );
	.loc 24 24 17 discriminator 1
	mov	rax, QWORD PTR [rax]	# _18, _17->base
# mem.h:24: 	free( GetSrc( )->base );
	.loc 24 24 2 discriminator 1
	mov	rdi, rax	#, _18
	call	free@PLT	#
# mem.h:25: }
	.loc 24 25 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE166:
	.size	MemDealloc, .-MemDealloc
	.type	OnSig, @function
OnSig:
.LFB167:
	.file 25 "main.h"
	.loc 25 2 1
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
	.loc 25 3 12
	call	GetJmp	#
# main.h:3: 	longjmp( *GetJmp( ), EXIT_SUCCESS );
	.loc 25 3 2 discriminator 1
	mov	esi, 0	#,
	mov	rdi, rax	#, _1
	call	longjmp@PLT	#
	.cfi_endproc
.LFE167:
	.size	OnSig, .-OnSig
	.type	Init, @function
Init:
.LFB168:
	.loc 25 7 1
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
	.loc 25 8 2
	call	MemAlloc	#
# main.h:9: 	LexerInit( GetSrc( ), GetInterns( ) );
	.loc 25 9 2
	call	GetInterns	#
	mov	rbx, rax	# _1,
# main.h:9: 	LexerInit( GetSrc( ), GetInterns( ) );
	.loc 25 9 2 is_stmt 0 discriminator 1
	call	GetSrc	#
# main.h:9: 	LexerInit( GetSrc( ), GetInterns( ) );
	.loc 25 9 2 discriminator 2
	mov	rsi, rbx	#, _1
	mov	rdi, rax	#, _2
	call	LexerInit	#
# main.h:10: 	ParserInit( );
	.loc 25 10 2 is_stmt 1
	call	ParserInit	#
# main.h:11: 	CompilerInit( );
	.loc 25 11 2
	call	CompilerInit	#
# main.h:12: 	signal( SIGINT, OnSig );
	.loc 25 12 2
	lea	rax, OnSig[rip]	# tmp84,
	mov	rsi, rax	#, tmp84
	mov	edi, 2	#,
	call	__sysv_signal@PLT	#
# main.h:13: 	signal( SIGTSTP, OnSig );
	.loc 25 13 2
	lea	rax, OnSig[rip]	# tmp85,
	mov	rsi, rax	#, tmp85
	mov	edi, 20	#,
	call	__sysv_signal@PLT	#
# main.h:14: 	signal( SIGKILL, OnSig );
	.loc 25 14 2
	lea	rax, OnSig[rip]	# tmp86,
	mov	rsi, rax	#, tmp86
	mov	edi, 9	#,
	call	__sysv_signal@PLT	#
# main.h:15: }
	.loc 25 15 1
	nop	
	mov	rbx, QWORD PTR -8[rbp]	#,
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE168:
	.size	Init, .-Init
	.type	Run, @function
Run:
.LFB169:
	.loc 25 18 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
# main.h:19: 	LexReinit( ( I8* )GetSrc( )->base );
	.loc 25 19 20
	call	GetSrc	#
# main.h:19: 	LexReinit( ( I8* )GetSrc( )->base );
	.loc 25 19 29 discriminator 1
	mov	rax, QWORD PTR [rax]	# _2, _1->base
# main.h:19: 	LexReinit( ( I8* )GetSrc( )->base );
	.loc 25 19 2 discriminator 1
	mov	rdi, rax	#, _2
	call	LexReinit	#
# main.h:20: 	Parse( );
	.loc 25 20 2
	call	Parse	#
# main.h:21: }
	.loc 25 21 1
	nop	
	pop	rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE169:
	.size	Run, .-Run
	.section	.rodata
.LC14:
	.string	"$ "
	.text
	.type	Repl, @function
Repl:
.LFB170:
	.loc 25 24 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
# main.h:25: 	Init( );
	.loc 25 25 2
	call	Init	#
# main.h:26: 	Arena *src = GetSrc( );
	.loc 25 26 15
	call	GetSrc	#
	mov	QWORD PTR -8[rbp], rax	# src, tmp86
# main.h:27: 	I8 *line = ( I8* )src->base;
	.loc 25 27 6
	mov	rax, QWORD PTR -8[rbp]	# tmp87, src
	mov	rax, QWORD PTR [rax]	# tmp88, src_9->base
	mov	QWORD PTR -16[rbp], rax	# line, tmp88
.L745:
# main.h:30: 		printf( "$ " );
	.loc 25 30 3
	lea	rax, .LC14[rip]	# tmp89,
	mov	rdi, rax	#, tmp89
	mov	eax, 0	#,
	call	printf@PLT	#
# main.h:31: 		line = fgets( line, src->max, stdin );
	.loc 25 31 10
	mov	rdx, QWORD PTR stdin[rip]	# stdin.59_1, stdin
# main.h:31: 		line = fgets( line, src->max, stdin );
	.loc 25 31 26
	mov	rax, QWORD PTR -8[rbp]	# tmp90, src
	mov	eax, DWORD PTR 12[rax]	# _2, src_9->max
# main.h:31: 		line = fgets( line, src->max, stdin );
	.loc 25 31 10
	mov	ecx, eax	# _3, _2
	mov	rax, QWORD PTR -16[rbp]	# tmp91, line
	mov	esi, ecx	#, _3
	mov	rdi, rax	#, tmp91
	call	fgets@PLT	#
	mov	QWORD PTR -16[rbp], rax	# line, tmp92
# main.h:32: 		Run( );
	.loc 25 32 3 discriminator 1
	call	Run	#
# main.h:30: 		printf( "$ " );
	.loc 25 30 3
	nop	
	jmp	.L745	#
	.cfi_endproc
.LFE170:
	.size	Repl, .-Repl
	.type	Load, @function
Load:
.LFB171:
	.loc 25 38 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	QWORD PTR -8[rbp], rdi	# file, file
# main.h:39: 	Init( );
	.loc 25 39 2
	call	Init	#
# main.h:40: 	IoRead( GetSrc( ), file );
	.loc 25 40 2
	call	GetSrc	#
	mov	rdx, rax	# _1,
# main.h:40: 	IoRead( GetSrc( ), file );
	.loc 25 40 2 is_stmt 0 discriminator 1
	mov	rax, QWORD PTR -8[rbp]	# tmp85, file
	mov	rsi, rax	#, tmp85
	mov	rdi, rdx	#, _1
	call	IoRead	#
# main.h:41: 	Run( );
	.loc 25 41 2 is_stmt 1
	call	Run	#
# main.h:42: 	return EXIT_SUCCESS;
	.loc 25 42 9
	mov	eax, 0	# _8,
# main.h:43: }
	.loc 25 43 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE171:
	.size	Load, .-Load
	.type	Deinit, @function
Deinit:
.LFB172:
	.loc 25 46 1
	.cfi_startproc
	push	rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp	#,
	.cfi_def_cfa_register 6
	sub	rsp, 16	#,
	mov	DWORD PTR -4[rbp], edi	# err, err
# main.h:47: 	MemDealloc( );
	.loc 25 47 2
	call	MemDealloc	#
# main.h:48: 	return err;
	.loc 25 48 9
	mov	eax, DWORD PTR -4[rbp]	# _4, err
# main.h:49: }
	.loc 25 49 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE172:
	.size	Deinit, .-Deinit
	.globl	main
	.type	main, @function
main:
.LFB173:
	.loc 25 52 1
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
	.loc 25 53 12
	call	GetJmp	#
# main.h:53: 	I32 res = setjmp( *GetJmp( ) );
	.loc 25 53 12 is_stmt 0 discriminator 2
	mov	rdi, rax	#, _1
	call	_setjmp@PLT	#
	endbr64	
# main.h:53: 	I32 res = setjmp( *GetJmp( ) );
	.loc 25 53 12 discriminator 3
	mov	DWORD PTR -4[rbp], eax	# res, _16
# main.h:54: 	if( res ){ return Deinit( res ); }
	.loc 25 54 4 is_stmt 1
	cmp	DWORD PTR -4[rbp], 0	# res,
	je	.L752	#,
# main.h:54: 	if( res ){ return Deinit( res ); }
	.loc 25 54 20 discriminator 1
	mov	eax, DWORD PTR -4[rbp]	# tmp89, res
	mov	edi, eax	#, tmp89
	call	Deinit	#
# main.h:54: 	if( res ){ return Deinit( res ); }
	.loc 25 54 20 is_stmt 0
	jmp	.L753	#
.L752:
# main.h:55: 	if( nargs == 1 ){ return Repl( ); }
	.loc 25 55 4 is_stmt 1
	cmp	DWORD PTR -20[rbp], 1	# nargs,
	jne	.L754	#,
# main.h:55: 	if( nargs == 1 ){ return Repl( ); }
	.loc 25 55 27 discriminator 1
	call	Repl	#
# main.h:55: 	if( nargs == 1 ){ return Repl( ); }
	.loc 25 55 27 is_stmt 0
	jmp	.L753	#
.L754:
# main.h:56: 	return Load( args[ 1 ] );
	.loc 25 56 19 is_stmt 1
	mov	rax, QWORD PTR -32[rbp]	# tmp90, args
	add	rax, 8	# _2,
# main.h:56: 	return Load( args[ 1 ] );
	.loc 25 56 9
	mov	rax, QWORD PTR [rax]	# _3, *_2
	mov	rdi, rax	#, _3
	call	Load	#
.L753:
# main.h:57: }
	.loc 25 57 1
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE173:
	.size	main, .-main
	.section	.data.rel.local,"aw"
	.align 16
	.type	types.50, @object
	.size	types.50, 24
types.50:
	.quad	.L55
	.quad	.L57
	.quad	.L58
	.align 32
	.type	ascii.49, @object
	.size	ascii.49, 1024
ascii.49:
	.quad	.L235
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L237
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L234
	.quad	.L238
	.quad	.L239
	.quad	.L240
	.quad	.L234
	.quad	.L241
	.quad	.L242
	.quad	.L234
	.quad	.L243
	.quad	.L244
	.quad	.L245
	.quad	.L246
	.quad	.L247
	.quad	.L248
	.quad	.L249
	.quad	.L250
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L251
	.quad	.L252
	.quad	.L253
	.quad	.L254
	.quad	.L255
	.quad	.L256
	.quad	.L234
	.quad	.L257
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L259
	.quad	.L234
	.quad	.L260
	.quad	.L261
	.quad	.L258
	.quad	.L234
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L258
	.quad	.L263
	.quad	.L264
	.quad	.L265
	.quad	.L262
	.quad	.L234
	.local	lexer.48
	.comm	lexer.48,32,32
	.local	buf.47
	.comm	buf.47,200,32
	.align 16
	.type	types.46, @object
	.size	types.46, 24
types.46:
	.quad	.L274
	.quad	.L275
	.quad	.L276
	.local	strings.45
	.comm	strings.45,16,16
	.align 32
	.type	rules.44, @object
	.size	rules.44, 1392
rules.44:
# nud:
	.quad	.L335
# led:
	.quad	.L335
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L337
# led:
	.quad	.L336
# prec:
	.long	20
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	14
	.zero	4
# nud:
	.quad	.L337
# led:
	.quad	.L336
# prec:
	.long	20
	.zero	4
# nud:
	.quad	.L337
# led:
	.quad	.L338
# prec:
	.long	17
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	4
	.zero	4
# nud:
	.quad	.L337
# led:
	.quad	.L336
# prec:
	.long	22
	.zero	4
# nud:
	.quad	.L337
# led:
	.quad	.L338
# prec:
	.long	17
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	4
	.zero	4
# nud:
	.quad	.L337
# led:
	.quad	.L336
# prec:
	.long	22
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	18
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	5
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	19
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	6
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	18
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	5
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	18
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	5
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	13
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	2
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	10
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	11
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	2
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	9
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	12
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	2
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	14
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	15
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	15
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	16
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	3
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	15
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	15
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	16
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	3
	.zero	4
# nud:
	.quad	.L339
# led:
	.quad	.L340
# prec:
	.long	25
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	24
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	23
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L338
# prec:
	.long	7
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	1
	.zero	4
# nud:
	.quad	.L336
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L341
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L342
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L343
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
# nud:
	.quad	.L344
# led:
	.quad	.L336
# prec:
	.long	0
	.zero	4
	.align 32
	.type	stmts.43, @object
	.size	stmts.43, 464
stmts.43:
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L352
	.quad	.L353
	.quad	.L350
	.quad	.L350
	.quad	.L354
	.quad	.L355
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L350
	.quad	.L356
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
	.align 16
	.type	types.36, @object
	.size	types.36, 24
types.36:
	.quad	.L372
	.quad	.L374
	.quad	.L378
	.align 16
	.type	types.35, @object
	.size	types.35, 24
types.35:
	.quad	.L383
	.quad	.L385
	.quad	.L386
	.align 16
	.type	types.34, @object
	.size	types.34, 24
types.34:
	.quad	.L390
	.quad	.L392
	.quad	.L393
	.align 16
	.type	types.33, @object
	.size	types.33, 24
types.33:
	.quad	.L397
	.quad	.L399
	.quad	.L400
	.align 16
	.type	types.32, @object
	.size	types.32, 24
types.32:
	.quad	.L404
	.quad	.L406
	.quad	.L407
	.align 16
	.type	types.31, @object
	.size	types.31, 24
types.31:
	.quad	.L411
	.quad	.L413
	.quad	.L414
	.align 16
	.type	irs.30, @object
	.size	irs.30, 24
irs.30:
	.quad	.L434
	.quad	.L436
	.quad	.L437
	.data
	.align 32
	.type	token_ops.29, @object
	.size	token_ops.29, 232
token_ops.29:
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
	.type	ops.28, @object
	.size	ops.28, 304
ops.28:
	.quad	.L418
	.quad	.L420
	.quad	.L421
	.quad	.L424
	.quad	.L425
	.quad	.L418
	.quad	.L418
	.quad	.L422
	.quad	.L423
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.quad	.L418
	.data
	.align 32
	.type	types.27, @object
	.size	types.27, 36
types.27:
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
	.type	types.26, @object
	.size	types.26, 72
types.26:
	.quad	.L663
	.quad	.L665
	.quad	.L666
	.quad	.L667
	.quad	.L668
	.quad	.L669
	.quad	.L670
	.quad	.L671
	.quad	.L672
	.align 32
	.type	ops.25, @object
	.size	ops.25, 304
ops.25:
	.quad	.L675
	.quad	.L675
	.quad	.L675
	.quad	.L675
	.quad	.L675
	.quad	.L675
	.quad	.L675
	.quad	.L677
	.quad	.L678
	.quad	.L679
	.quad	.L680
	.quad	.L681
	.quad	.L682
	.quad	.L683
	.quad	.L684
	.quad	.L685
	.quad	.L686
	.quad	.L687
	.quad	.L688
	.quad	.L689
	.quad	.L690
	.quad	.L691
	.quad	.L692
	.quad	.L693
	.quad	.L694
	.quad	.L695
	.quad	.L696
	.quad	.L697
	.quad	.L698
	.quad	.L699
	.quad	.L700
	.quad	.L701
	.quad	.L702
	.quad	.L703
	.quad	.L704
	.quad	.L705
	.quad	.L706
	.quad	.L707
	.align 16
	.type	ops.24, @object
	.size	ops.24, 24
ops.24:
	.quad	.L443
	.quad	.L445
	.quad	.L446
	.align 16
	.type	ops.23, @object
	.size	ops.23, 24
ops.23:
	.quad	.L450
	.quad	.L452
	.quad	.L453
	.align 16
	.type	ops.22, @object
	.size	ops.22, 24
ops.22:
	.quad	.L457
	.quad	.L459
	.quad	.L460
	.align 16
	.type	ops.21, @object
	.size	ops.21, 24
ops.21:
	.quad	.L464
	.quad	.L466
	.quad	.L467
	.align 16
	.type	ops.20, @object
	.size	ops.20, 24
ops.20:
	.quad	.L471
	.quad	.L473
	.quad	.L474
	.align 16
	.type	ops.19, @object
	.size	ops.19, 24
ops.19:
	.quad	.L478
	.quad	.L480
	.quad	.L481
	.align 16
	.type	ops.18, @object
	.size	ops.18, 24
ops.18:
	.quad	.L489
	.quad	.L491
	.quad	.L492
	.align 16
	.type	ops.17, @object
	.size	ops.17, 24
ops.17:
	.quad	.L496
	.quad	.L498
	.quad	.L499
	.align 16
	.type	ops.16, @object
	.size	ops.16, 24
ops.16:
	.quad	.L503
	.quad	.L505
	.quad	.L506
	.align 16
	.type	ops.15, @object
	.size	ops.15, 24
ops.15:
	.quad	.L510
	.quad	.L512
	.quad	.L513
	.align 16
	.type	ops.14, @object
	.size	ops.14, 24
ops.14:
	.quad	.L517
	.quad	.L519
	.quad	.L520
	.align 16
	.type	ops.13, @object
	.size	ops.13, 24
ops.13:
	.quad	.L524
	.quad	.L526
	.quad	.L530
	.align 16
	.type	ops.12, @object
	.size	ops.12, 24
ops.12:
	.quad	.L535
	.quad	.L537
	.quad	.L541
	.align 16
	.type	ops.11, @object
	.size	ops.11, 24
ops.11:
	.quad	.L546
	.quad	.L548
	.quad	.L552
	.align 16
	.type	ops.10, @object
	.size	ops.10, 24
ops.10:
	.quad	.L558
	.quad	.L560
	.quad	.L564
	.align 16
	.type	ops.9, @object
	.size	ops.9, 24
ops.9:
	.quad	.L570
	.quad	.L572
	.quad	.L576
	.align 16
	.type	ops.8, @object
	.size	ops.8, 24
ops.8:
	.quad	.L582
	.quad	.L584
	.quad	.L588
	.align 16
	.type	ops.7, @object
	.size	ops.7, 24
ops.7:
	.quad	.L594
	.quad	.L599
	.quad	.L604
	.align 16
	.type	ops.6, @object
	.size	ops.6, 24
ops.6:
	.quad	.L612
	.quad	.L618
	.quad	.L624
	.align 16
	.type	ops.5, @object
	.size	ops.5, 24
ops.5:
	.quad	.L632
	.quad	.L634
	.quad	.L635
	.align 32
	.type	irs.4, @object
	.size	irs.4, 72
irs.4:
	.quad	.L728
	.quad	.L730
	.quad	.L731
	.quad	.L732
	.quad	.L733
	.quad	.L734
	.quad	.L735
	.quad	.L736
	.quad	.L737
	.local	src.3
	.comm	src.3,16,16
	.local	interns.2
	.comm	interns.2,24,16
	.local	globals.1
	.comm	globals.1,24,16
	.local	env.0
	.comm	env.0,16,16
	.section	.rodata
	.align 8
.LC0:
	.long	858993459
	.long	1071854387
	.align 8
.LC11:
	.long	0
	.long	1072693248
	.align 16
.LC12:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.text
.Letext0:
	.file 26 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h"
	.file 27 "/usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h"
	.file 28 "<built-in>"
	.file 29 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 30 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h"
	.file 31 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h"
	.file 32 "/usr/include/stdio.h"
	.file 33 "/usr/include/x86_64-linux-gnu/bits/setjmp.h"
	.file 34 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h"
	.file 35 "/usr/include/x86_64-linux-gnu/bits/types/struct___jmp_buf_tag.h"
	.file 36 "/usr/include/setjmp.h"
	.file 37 "/usr/include/signal.h"
	.file 38 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h"
	.file 39 "std/types.h"
	.file 40 "lexer/token_type.h"
	.file 41 "parser/prec.h"
	.file 42 "parser/parse_type.h"
	.file 43 "compiler/opcode.h"
	.file 44 "/usr/include/stdlib.h"
	.file 45 "/usr/include/string.h"
	.file 46 "compiler/binary/ir_table.h"
	.file 47 "compiler/binary/fold_table.h"
	.file 48 "compiler/binary/cast_table.h"
	.file 49 "compiler/binary/promote_table.h"
	.file 50 "compiler/unary/ir_table.h"
	.file 51 "compiler/unary/fold_table.h"
	.file 52 "compiler/token_op_table.h"
	.file 53 "parser/stmt_table.h"
	.file 54 "parser/expr_table.h"
	.file 55 "lexer/ascii_table.h"
	.file 56 "/usr/include/x86_64-linux-gnu/bits/mathcalls.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x4a6f
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x2a
	.long	.LASF524
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xc
	.long	.LASF2
	.byte	0x1a
	.byte	0xd6
	.byte	0x17
	.long	0x3a
	.uleb128 0x15
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0xc
	.long	.LASF3
	.byte	0x1b
	.byte	0x28
	.byte	0x1b
	.long	0x4d
	.uleb128 0x2b
	.long	.LASF525
	.long	0x56
	.uleb128 0x12
	.long	0x66
	.long	0x66
	.uleb128 0x10
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LASF526
	.byte	0x18
	.byte	0x1c
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
	.uleb128 0x15
	.byte	0x4
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2d
	.byte	0x8
	.uleb128 0x1a
	.long	0xa2
	.uleb128 0x15
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x15
	.byte	0x2
	.byte	0x7
	.long	.LASF11
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.long	.LASF12
	.uleb128 0xc
	.long	.LASF13
	.byte	0x1d
	.byte	0x26
	.byte	0x17
	.long	0xa9
	.uleb128 0x15
	.byte	0x2
	.byte	0x5
	.long	.LASF14
	.uleb128 0xc
	.long	.LASF15
	.byte	0x1d
	.byte	0x28
	.byte	0x1c
	.long	0xb0
	.uleb128 0x2e
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.long	.LASF16
	.byte	0x1d
	.byte	0x2a
	.byte	0x16
	.long	0x9b
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.long	.LASF17
	.uleb128 0xc
	.long	.LASF18
	.byte	0x1d
	.byte	0x2d
	.byte	0x1b
	.long	0x3a
	.uleb128 0xc
	.long	.LASF19
	.byte	0x1d
	.byte	0x98
	.byte	0x19
	.long	0xf0
	.uleb128 0xc
	.long	.LASF20
	.byte	0x1d
	.byte	0x99
	.byte	0x1b
	.long	0xf0
	.uleb128 0xd
	.long	0x125
	.uleb128 0x1a
	.long	0x11b
	.uleb128 0x15
	.byte	0x1
	.byte	0x6
	.long	.LASF21
	.uleb128 0x2f
	.long	0x125
	.uleb128 0x13
	.long	.LASF62
	.byte	0xd8
	.byte	0x1e
	.byte	0x31
	.byte	0x8
	.long	0x2b8
	.uleb128 0x7
	.long	.LASF22
	.byte	0x1e
	.byte	0x33
	.byte	0x7
	.long	0xdd
	.byte	0
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1e
	.byte	0x36
	.byte	0x9
	.long	0x11b
	.byte	0x8
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1e
	.byte	0x37
	.byte	0x9
	.long	0x11b
	.byte	0x10
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1e
	.byte	0x38
	.byte	0x9
	.long	0x11b
	.byte	0x18
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1e
	.byte	0x39
	.byte	0x9
	.long	0x11b
	.byte	0x20
	.uleb128 0x7
	.long	.LASF27
	.byte	0x1e
	.byte	0x3a
	.byte	0x9
	.long	0x11b
	.byte	0x28
	.uleb128 0x7
	.long	.LASF28
	.byte	0x1e
	.byte	0x3b
	.byte	0x9
	.long	0x11b
	.byte	0x30
	.uleb128 0x7
	.long	.LASF29
	.byte	0x1e
	.byte	0x3c
	.byte	0x9
	.long	0x11b
	.byte	0x38
	.uleb128 0x7
	.long	.LASF30
	.byte	0x1e
	.byte	0x3d
	.byte	0x9
	.long	0x11b
	.byte	0x40
	.uleb128 0x7
	.long	.LASF31
	.byte	0x1e
	.byte	0x40
	.byte	0x9
	.long	0x11b
	.byte	0x48
	.uleb128 0x7
	.long	.LASF32
	.byte	0x1e
	.byte	0x41
	.byte	0x9
	.long	0x11b
	.byte	0x50
	.uleb128 0x7
	.long	.LASF33
	.byte	0x1e
	.byte	0x42
	.byte	0x9
	.long	0x11b
	.byte	0x58
	.uleb128 0x7
	.long	.LASF34
	.byte	0x1e
	.byte	0x44
	.byte	0x16
	.long	0x2d1
	.byte	0x60
	.uleb128 0x7
	.long	.LASF35
	.byte	0x1e
	.byte	0x46
	.byte	0x14
	.long	0x2d6
	.byte	0x68
	.uleb128 0x7
	.long	.LASF36
	.byte	0x1e
	.byte	0x48
	.byte	0x7
	.long	0xdd
	.byte	0x70
	.uleb128 0x7
	.long	.LASF37
	.byte	0x1e
	.byte	0x49
	.byte	0x7
	.long	0xdd
	.byte	0x74
	.uleb128 0x7
	.long	.LASF38
	.byte	0x1e
	.byte	0x4a
	.byte	0xb
	.long	0x103
	.byte	0x78
	.uleb128 0x7
	.long	.LASF39
	.byte	0x1e
	.byte	0x4d
	.byte	0x12
	.long	0xb0
	.byte	0x80
	.uleb128 0x7
	.long	.LASF40
	.byte	0x1e
	.byte	0x4e
	.byte	0xf
	.long	0xb7
	.byte	0x82
	.uleb128 0x7
	.long	.LASF41
	.byte	0x1e
	.byte	0x4f
	.byte	0x8
	.long	0x2db
	.byte	0x83
	.uleb128 0x7
	.long	.LASF42
	.byte	0x1e
	.byte	0x51
	.byte	0xf
	.long	0x2eb
	.byte	0x88
	.uleb128 0x7
	.long	.LASF43
	.byte	0x1e
	.byte	0x59
	.byte	0xd
	.long	0x10f
	.byte	0x90
	.uleb128 0x7
	.long	.LASF44
	.byte	0x1e
	.byte	0x5b
	.byte	0x17
	.long	0x2f5
	.byte	0x98
	.uleb128 0x7
	.long	.LASF45
	.byte	0x1e
	.byte	0x5c
	.byte	0x19
	.long	0x2ff
	.byte	0xa0
	.uleb128 0x7
	.long	.LASF46
	.byte	0x1e
	.byte	0x5d
	.byte	0x14
	.long	0x2d6
	.byte	0xa8
	.uleb128 0x7
	.long	.LASF47
	.byte	0x1e
	.byte	0x5e
	.byte	0x9
	.long	0xa2
	.byte	0xb0
	.uleb128 0x7
	.long	.LASF48
	.byte	0x1e
	.byte	0x5f
	.byte	0xa
	.long	0x2e
	.byte	0xb8
	.uleb128 0x7
	.long	.LASF49
	.byte	0x1e
	.byte	0x60
	.byte	0x7
	.long	0xdd
	.byte	0xc0
	.uleb128 0x7
	.long	.LASF50
	.byte	0x1e
	.byte	0x62
	.byte	0x8
	.long	0x304
	.byte	0xc4
	.byte	0
	.uleb128 0xc
	.long	.LASF51
	.byte	0x1f
	.byte	0x7
	.byte	0x19
	.long	0x131
	.uleb128 0x1f
	.long	.LASF75
	.byte	0x1e
	.byte	0x2b
	.byte	0xe
	.uleb128 0x20
	.long	.LASF52
	.uleb128 0xd
	.long	0x2cc
	.uleb128 0xd
	.long	0x131
	.uleb128 0x12
	.long	0x125
	.long	0x2eb
	.uleb128 0x10
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0x2c4
	.uleb128 0x20
	.long	.LASF53
	.uleb128 0xd
	.long	0x2f0
	.uleb128 0x20
	.long	.LASF54
	.uleb128 0xd
	.long	0x2fa
	.uleb128 0x12
	.long	0x125
	.long	0x314
	.uleb128 0x10
	.long	0x3a
	.byte	0x13
	.byte	0
	.uleb128 0x24
	.long	.LASF55
	.byte	0x95
	.long	0x31e
	.uleb128 0xd
	.long	0x2b8
	.uleb128 0x1a
	.long	0x31e
	.uleb128 0x24
	.long	.LASF56
	.byte	0x97
	.long	0x31e
	.uleb128 0x15
	.byte	0x8
	.byte	0x5
	.long	.LASF57
	.uleb128 0xd
	.long	0x33e
	.uleb128 0x30
	.uleb128 0xc
	.long	.LASF58
	.byte	0x1b
	.byte	0x67
	.byte	0x18
	.long	0x41
	.uleb128 0xc
	.long	.LASF59
	.byte	0x21
	.byte	0x1f
	.byte	0x12
	.long	0x357
	.uleb128 0x12
	.long	0xf0
	.long	0x367
	.uleb128 0x10
	.long	0x3a
	.byte	0x7
	.byte	0
	.uleb128 0x31
	.byte	0x80
	.byte	0x22
	.byte	0x5
	.byte	0x9
	.long	0x37e
	.uleb128 0x7
	.long	.LASF60
	.byte	0x22
	.byte	0x7
	.byte	0x15
	.long	0x37e
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x3a
	.long	0x38e
	.uleb128 0x10
	.long	0x3a
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.long	.LASF61
	.byte	0x22
	.byte	0x8
	.byte	0x3
	.long	0x367
	.uleb128 0x13
	.long	.LASF63
	.byte	0xc8
	.byte	0x23
	.byte	0x1a
	.byte	0x8
	.long	0x3cf
	.uleb128 0x7
	.long	.LASF64
	.byte	0x23
	.byte	0x20
	.byte	0xf
	.long	0x34b
	.byte	0
	.uleb128 0x7
	.long	.LASF65
	.byte	0x23
	.byte	0x21
	.byte	0x9
	.long	0xdd
	.byte	0x40
	.uleb128 0x7
	.long	.LASF66
	.byte	0x23
	.byte	0x22
	.byte	0x10
	.long	0x38e
	.byte	0x48
	.byte	0
	.uleb128 0xc
	.long	.LASF67
	.byte	0x24
	.byte	0x20
	.byte	0x1e
	.long	0x3db
	.uleb128 0x12
	.long	0x39a
	.long	0x3eb
	.uleb128 0x10
	.long	0x3a
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF68
	.byte	0x25
	.byte	0x48
	.byte	0x10
	.long	0x3f7
	.uleb128 0xd
	.long	0x3fc
	.uleb128 0x32
	.long	0x407
	.uleb128 0xa
	.long	0xdd
	.byte	0
	.uleb128 0xc
	.long	.LASF69
	.byte	0x26
	.byte	0x18
	.byte	0x13
	.long	0xbe
	.uleb128 0xc
	.long	.LASF70
	.byte	0x26
	.byte	0x19
	.byte	0x14
	.long	0xd1
	.uleb128 0xc
	.long	.LASF71
	.byte	0x26
	.byte	0x1a
	.byte	0x14
	.long	0xe4
	.uleb128 0xc
	.long	.LASF72
	.byte	0x26
	.byte	0x1b
	.byte	0x14
	.long	0xf7
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.long	.LASF73
	.uleb128 0x15
	.byte	0x8
	.byte	0x4
	.long	.LASF74
	.uleb128 0x16
	.string	"I8"
	.byte	0x27
	.byte	0x2
	.byte	0xe
	.long	0x125
	.uleb128 0x16
	.string	"I32"
	.byte	0x27
	.byte	0x4
	.byte	0xd
	.long	0xdd
	.uleb128 0x16
	.string	"I64"
	.byte	0x27
	.byte	0x5
	.byte	0xe
	.long	0xf0
	.uleb128 0x16
	.string	"U8"
	.byte	0x27
	.byte	0xa
	.byte	0x11
	.long	0x407
	.uleb128 0x16
	.string	"U16"
	.byte	0x27
	.byte	0xb
	.byte	0x12
	.long	0x413
	.uleb128 0x16
	.string	"U32"
	.byte	0x27
	.byte	0xc
	.byte	0x12
	.long	0x41f
	.uleb128 0x16
	.string	"U64"
	.byte	0x27
	.byte	0xd
	.byte	0x12
	.long	0x42b
	.uleb128 0x16
	.string	"F64"
	.byte	0x27
	.byte	0xf
	.byte	0x10
	.long	0x43e
	.uleb128 0x1f
	.long	.LASF76
	.byte	0x27
	.byte	0x10
	.byte	0xe
	.uleb128 0x1f
	.long	.LASF77
	.byte	0x27
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
	.uleb128 0x14
	.string	"max"
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	0x4a3
	.uleb128 0xc
	.long	.LASF78
	.byte	0x1
	.byte	0xc
	.byte	0x3
	.long	0x4b3
	.uleb128 0x21
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
	.uleb128 0x25
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
	.uleb128 0x22
	.long	0x4f9
	.byte	0x8
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x14
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
	.uleb128 0xc
	.long	.LASF82
	.byte	0x3
	.byte	0x6
	.byte	0x3
	.long	0x560
	.uleb128 0x1b
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
	.uleb128 0xc
	.long	.LASF89
	.byte	0x4
	.byte	0x9
	.byte	0x3
	.long	0x5a1
	.uleb128 0x21
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
	.uleb128 0xd
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
	.uleb128 0x22
	.long	0x5d5
	.byte	0x8
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x14
	.string	"len"
	.byte	0x5
	.byte	0x7
	.byte	0x6
	.long	0x47f
	.byte	0x10
	.uleb128 0x14
	.string	"max"
	.byte	0x5
	.byte	0x8
	.byte	0x6
	.long	0x47f
	.byte	0x14
	.byte	0
	.uleb128 0xd
	.long	0x4ed
	.uleb128 0xc
	.long	.LASF92
	.byte	0x5
	.byte	0x9
	.byte	0x3
	.long	0x634
	.uleb128 0x21
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
	.uleb128 0x33
	.long	.LASF94
	.byte	0x6
	.byte	0x3
	.byte	0x1e
	.long	0x602
	.byte	0
	.uleb128 0x13
	.long	.LASF95
	.byte	0x10
	.byte	0x6
	.byte	0x1
	.byte	0x10
	.long	0x6c9
	.uleb128 0x22
	.long	0x687
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0x6
	.byte	0x4
	.byte	0x9
	.long	0x6c9
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0x628
	.uleb128 0xc
	.long	.LASF95
	.byte	0x6
	.byte	0x5
	.byte	0x3
	.long	0x6a8
	.uleb128 0x25
	.string	"Map"
	.byte	0x10
	.byte	0x6
	.byte	0x8
	.long	0x70e
	.uleb128 0x7
	.long	.LASF79
	.byte	0x6
	.byte	0xa
	.byte	0x9
	.long	0x70e
	.byte	0
	.uleb128 0x14
	.string	"len"
	.byte	0x6
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.byte	0x8
	.uleb128 0x14
	.string	"max"
	.byte	0x6
	.byte	0xc
	.byte	0x6
	.long	0x47f
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.long	0x6ce
	.uleb128 0x16
	.string	"Map"
	.byte	0x6
	.byte	0xd
	.byte	0x3
	.long	0x6da
	.uleb128 0x1b
	.long	.LASF97
	.long	0x9b
	.byte	0x28
	.byte	0x1
	.long	0x891
	.uleb128 0x3
	.long	.LASF98
	.byte	0
	.uleb128 0x3
	.long	.LASF99
	.byte	0x1
	.uleb128 0x3
	.long	.LASF100
	.byte	0x2
	.uleb128 0x3
	.long	.LASF101
	.byte	0x3
	.uleb128 0x3
	.long	.LASF102
	.byte	0x4
	.uleb128 0x3
	.long	.LASF103
	.byte	0x5
	.uleb128 0x3
	.long	.LASF104
	.byte	0x6
	.uleb128 0x3
	.long	.LASF105
	.byte	0x7
	.uleb128 0x3
	.long	.LASF106
	.byte	0x8
	.uleb128 0x3
	.long	.LASF107
	.byte	0x9
	.uleb128 0x3
	.long	.LASF108
	.byte	0xa
	.uleb128 0x3
	.long	.LASF109
	.byte	0xb
	.uleb128 0x3
	.long	.LASF110
	.byte	0xc
	.uleb128 0x3
	.long	.LASF111
	.byte	0xd
	.uleb128 0x3
	.long	.LASF112
	.byte	0xe
	.uleb128 0x3
	.long	.LASF113
	.byte	0xf
	.uleb128 0x3
	.long	.LASF114
	.byte	0x10
	.uleb128 0x3
	.long	.LASF115
	.byte	0x11
	.uleb128 0x3
	.long	.LASF116
	.byte	0x12
	.uleb128 0x3
	.long	.LASF117
	.byte	0x13
	.uleb128 0x3
	.long	.LASF118
	.byte	0x14
	.uleb128 0x3
	.long	.LASF119
	.byte	0x15
	.uleb128 0x3
	.long	.LASF120
	.byte	0x16
	.uleb128 0x3
	.long	.LASF121
	.byte	0x17
	.uleb128 0x3
	.long	.LASF122
	.byte	0x18
	.uleb128 0x3
	.long	.LASF123
	.byte	0x19
	.uleb128 0x3
	.long	.LASF124
	.byte	0x1a
	.uleb128 0x3
	.long	.LASF125
	.byte	0x1b
	.uleb128 0x3
	.long	.LASF126
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF127
	.byte	0x1d
	.uleb128 0x3
	.long	.LASF128
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF129
	.byte	0x1f
	.uleb128 0x3
	.long	.LASF130
	.byte	0x20
	.uleb128 0x3
	.long	.LASF131
	.byte	0x21
	.uleb128 0x3
	.long	.LASF132
	.byte	0x22
	.uleb128 0x3
	.long	.LASF133
	.byte	0x23
	.uleb128 0x3
	.long	.LASF134
	.byte	0x24
	.uleb128 0x3
	.long	.LASF135
	.byte	0x25
	.uleb128 0x3
	.long	.LASF136
	.byte	0x26
	.uleb128 0x3
	.long	.LASF137
	.byte	0x27
	.uleb128 0x3
	.long	.LASF138
	.byte	0x28
	.uleb128 0x3
	.long	.LASF139
	.byte	0x29
	.uleb128 0x3
	.long	.LASF140
	.byte	0x2a
	.uleb128 0x3
	.long	.LASF141
	.byte	0x2b
	.uleb128 0x3
	.long	.LASF142
	.byte	0x2c
	.uleb128 0x3
	.long	.LASF143
	.byte	0x2d
	.uleb128 0x3
	.long	.LASF144
	.byte	0x2e
	.uleb128 0x3
	.long	.LASF145
	.byte	0x2f
	.uleb128 0x3
	.long	.LASF146
	.byte	0x30
	.uleb128 0x3
	.long	.LASF147
	.byte	0x31
	.uleb128 0x3
	.long	.LASF148
	.byte	0x32
	.uleb128 0x3
	.long	.LASF149
	.byte	0x33
	.uleb128 0x3
	.long	.LASF150
	.byte	0x34
	.uleb128 0x3
	.long	.LASF151
	.byte	0x35
	.uleb128 0x3
	.long	.LASF152
	.byte	0x36
	.uleb128 0x3
	.long	.LASF153
	.byte	0x37
	.uleb128 0x3
	.long	.LASF154
	.byte	0x38
	.uleb128 0x3
	.long	.LASF155
	.byte	0x39
	.uleb128 0x3
	.long	.LASF156
	.byte	0x3a
	.byte	0
	.uleb128 0xc
	.long	.LASF97
	.byte	0x28
	.byte	0x52
	.byte	0x3
	.long	0x71f
	.uleb128 0x13
	.long	.LASF157
	.byte	0x18
	.byte	0x9
	.byte	0x1
	.byte	0x10
	.long	0x8c5
	.uleb128 0x7
	.long	.LASF91
	.byte	0x9
	.byte	0x3
	.byte	0xc
	.long	0x891
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0x9
	.byte	0x4
	.byte	0x8
	.long	0x628
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF157
	.byte	0x9
	.byte	0x5
	.byte	0x3
	.long	0x89d
	.uleb128 0x13
	.long	.LASF158
	.byte	0x20
	.byte	0x9
	.byte	0x7
	.byte	0x10
	.long	0x920
	.uleb128 0x7
	.long	.LASF159
	.byte	0x9
	.byte	0x9
	.byte	0x6
	.long	0x920
	.byte	0
	.uleb128 0x14
	.string	"end"
	.byte	0x9
	.byte	0xa
	.byte	0x6
	.long	0x920
	.byte	0x8
	.uleb128 0x7
	.long	.LASF160
	.byte	0x9
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.byte	0x10
	.uleb128 0x14
	.string	"col"
	.byte	0x9
	.byte	0xc
	.byte	0x6
	.long	0x47f
	.byte	0x14
	.uleb128 0x7
	.long	.LASF161
	.byte	0x9
	.byte	0xd
	.byte	0x9
	.long	0x925
	.byte	0x18
	.byte	0
	.uleb128 0xd
	.long	0x445
	.uleb128 0xd
	.long	0x67b
	.uleb128 0xc
	.long	.LASF158
	.byte	0x9
	.byte	0xe
	.byte	0x3
	.long	0x8d1
	.uleb128 0x1b
	.long	.LASF162
	.long	0x9b
	.byte	0x29
	.byte	0x1
	.long	0x9e8
	.uleb128 0x3
	.long	.LASF163
	.byte	0
	.uleb128 0x3
	.long	.LASF164
	.byte	0x1
	.uleb128 0x3
	.long	.LASF165
	.byte	0x2
	.uleb128 0x3
	.long	.LASF166
	.byte	0x3
	.uleb128 0x3
	.long	.LASF167
	.byte	0x4
	.uleb128 0x3
	.long	.LASF168
	.byte	0x5
	.uleb128 0x3
	.long	.LASF169
	.byte	0x6
	.uleb128 0x3
	.long	.LASF170
	.byte	0x7
	.uleb128 0x3
	.long	.LASF171
	.byte	0x8
	.uleb128 0x3
	.long	.LASF172
	.byte	0x9
	.uleb128 0x3
	.long	.LASF173
	.byte	0xa
	.uleb128 0x3
	.long	.LASF174
	.byte	0xb
	.uleb128 0x3
	.long	.LASF175
	.byte	0xc
	.uleb128 0x3
	.long	.LASF176
	.byte	0xd
	.uleb128 0x3
	.long	.LASF177
	.byte	0xe
	.uleb128 0x3
	.long	.LASF178
	.byte	0xf
	.uleb128 0x3
	.long	.LASF179
	.byte	0x10
	.uleb128 0x3
	.long	.LASF180
	.byte	0x11
	.uleb128 0x3
	.long	.LASF181
	.byte	0x12
	.uleb128 0x3
	.long	.LASF182
	.byte	0x13
	.uleb128 0x3
	.long	.LASF183
	.byte	0x14
	.uleb128 0x3
	.long	.LASF184
	.byte	0x15
	.uleb128 0x3
	.long	.LASF185
	.byte	0x16
	.uleb128 0x3
	.long	.LASF186
	.byte	0x17
	.uleb128 0x3
	.long	.LASF187
	.byte	0x18
	.uleb128 0x3
	.long	.LASF188
	.byte	0x19
	.uleb128 0x3
	.long	.LASF189
	.byte	0x1a
	.byte	0
	.uleb128 0xc
	.long	.LASF162
	.byte	0x29
	.byte	0x1e
	.byte	0x3
	.long	0x936
	.uleb128 0x1b
	.long	.LASF190
	.long	0x9b
	.byte	0x2a
	.byte	0x1
	.long	0xa1c
	.uleb128 0x3
	.long	.LASF191
	.byte	0
	.uleb128 0x3
	.long	.LASF192
	.byte	0x1
	.uleb128 0x3
	.long	.LASF193
	.byte	0x2
	.uleb128 0x3
	.long	.LASF194
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.long	.LASF190
	.byte	0x2a
	.byte	0x7
	.byte	0x3
	.long	0x9f4
	.uleb128 0x13
	.long	.LASF195
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x10
	.long	0xa50
	.uleb128 0x7
	.long	.LASF91
	.byte	0xb
	.byte	0x3
	.byte	0xc
	.long	0xa1c
	.byte	0
	.uleb128 0x7
	.long	.LASF96
	.byte	0xb
	.byte	0x4
	.byte	0x8
	.long	0x628
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.long	.LASF195
	.byte	0xb
	.byte	0x5
	.byte	0x3
	.long	0xa28
	.uleb128 0x13
	.long	.LASF196
	.byte	0x18
	.byte	0xb
	.byte	0x7
	.byte	0x10
	.long	0xa91
	.uleb128 0x14
	.string	"nud"
	.byte	0xb
	.byte	0x9
	.byte	0x9
	.long	0xa91
	.byte	0
	.uleb128 0x14
	.string	"led"
	.byte	0xb
	.byte	0xa
	.byte	0x9
	.long	0xa91
	.byte	0x8
	.uleb128 0x7
	.long	.LASF197
	.byte	0xb
	.byte	0xb
	.byte	0x7
	.long	0x9e8
	.byte	0x10
	.byte	0
	.uleb128 0xd
	.long	0x4ab
	.uleb128 0xc
	.long	.LASF196
	.byte	0xb
	.byte	0xc
	.byte	0x3
	.long	0xa5c
	.uleb128 0x13
	.long	.LASF198
	.byte	0x18
	.byte	0xb
	.byte	0xe
	.byte	0x10
	.long	0xabd
	.uleb128 0x7
	.long	.LASF199
	.byte	0xb
	.byte	0x10
	.byte	0x8
	.long	0x8c5
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	.LASF198
	.byte	0xb
	.byte	0x11
	.byte	0x3
	.long	0xaa2
	.uleb128 0x1b
	.long	.LASF200
	.long	0x9b
	.byte	0x2b
	.byte	0x1
	.long	0xbc3
	.uleb128 0x3
	.long	.LASF201
	.byte	0
	.uleb128 0x3
	.long	.LASF202
	.byte	0x1
	.uleb128 0x3
	.long	.LASF203
	.byte	0x2
	.uleb128 0x3
	.long	.LASF204
	.byte	0x3
	.uleb128 0x3
	.long	.LASF205
	.byte	0x4
	.uleb128 0x3
	.long	.LASF206
	.byte	0x5
	.uleb128 0x3
	.long	.LASF207
	.byte	0x6
	.uleb128 0x3
	.long	.LASF208
	.byte	0x7
	.uleb128 0x3
	.long	.LASF209
	.byte	0x8
	.uleb128 0x3
	.long	.LASF210
	.byte	0x9
	.uleb128 0x3
	.long	.LASF211
	.byte	0xa
	.uleb128 0x3
	.long	.LASF212
	.byte	0xb
	.uleb128 0x3
	.long	.LASF213
	.byte	0xc
	.uleb128 0x3
	.long	.LASF214
	.byte	0xd
	.uleb128 0x3
	.long	.LASF215
	.byte	0xe
	.uleb128 0x3
	.long	.LASF216
	.byte	0xf
	.uleb128 0x3
	.long	.LASF217
	.byte	0x10
	.uleb128 0x3
	.long	.LASF218
	.byte	0x11
	.uleb128 0x3
	.long	.LASF219
	.byte	0x12
	.uleb128 0x3
	.long	.LASF220
	.byte	0x13
	.uleb128 0x3
	.long	.LASF221
	.byte	0x14
	.uleb128 0x3
	.long	.LASF222
	.byte	0x15
	.uleb128 0x3
	.long	.LASF223
	.byte	0x16
	.uleb128 0x3
	.long	.LASF224
	.byte	0x17
	.uleb128 0x3
	.long	.LASF225
	.byte	0x18
	.uleb128 0x3
	.long	.LASF226
	.byte	0x19
	.uleb128 0x3
	.long	.LASF227
	.byte	0x1a
	.uleb128 0x3
	.long	.LASF228
	.byte	0x1b
	.uleb128 0x3
	.long	.LASF229
	.byte	0x1c
	.uleb128 0x3
	.long	.LASF230
	.byte	0x1d
	.uleb128 0x3
	.long	.LASF231
	.byte	0x1e
	.uleb128 0x3
	.long	.LASF232
	.byte	0x1f
	.uleb128 0x3
	.long	.LASF233
	.byte	0x20
	.uleb128 0x3
	.long	.LASF234
	.byte	0x21
	.uleb128 0x3
	.long	.LASF235
	.byte	0x22
	.uleb128 0x3
	.long	.LASF236
	.byte	0x23
	.uleb128 0x3
	.long	.LASF237
	.byte	0x24
	.uleb128 0x3
	.long	.LASF238
	.byte	0x25
	.uleb128 0x3
	.long	.LASF239
	.byte	0x26
	.byte	0
	.uleb128 0xc
	.long	.LASF200
	.byte	0x2b
	.byte	0x30
	.byte	0x3
	.long	0xac9
	.uleb128 0x13
	.long	.LASF240
	.byte	0x10
	.byte	0xe
	.byte	0x14
	.byte	0x10
	.long	0xc2b
	.uleb128 0x7
	.long	.LASF241
	.byte	0xe
	.byte	0x17
	.byte	0x6
	.long	0x47f
	.byte	0
	.uleb128 0x7
	.long	.LASF242
	.byte	0xe
	.byte	0x18
	.byte	0x6
	.long	0x47f
	.byte	0x4
	.uleb128 0x7
	.long	.LASF243
	.byte	0xe
	.byte	0x19
	.byte	0x6
	.long	0x47f
	.byte	0x8
	.uleb128 0x7
	.long	.LASF244
	.byte	0xe
	.byte	0x1b
	.byte	0x5
	.long	0x468
	.byte	0xc
	.uleb128 0x7
	.long	.LASF245
	.byte	0xe
	.byte	0x1c
	.byte	0x5
	.long	0x468
	.byte	0xd
	.uleb128 0x7
	.long	.LASF246
	.byte	0xe
	.byte	0x1d
	.byte	0x6
	.long	0x473
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.long	.LASF240
	.byte	0xe
	.byte	0x1f
	.byte	0x3
	.long	0xbcf
	.uleb128 0x13
	.long	.LASF247
	.byte	0x10
	.byte	0xe
	.byte	0x21
	.byte	0x10
	.long	0xc5e
	.uleb128 0x14
	.string	"fn"
	.byte	0xe
	.byte	0x23
	.byte	0x8
	.long	0xc5e
	.byte	0
	.uleb128 0x7
	.long	.LASF248
	.byte	0xe
	.byte	0x24
	.byte	0x5
	.long	0x468
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.long	0xc2b
	.uleb128 0xc
	.long	.LASF247
	.byte	0xe
	.byte	0x25
	.byte	0x3
	.long	0xc37
	.uleb128 0x1c
	.long	.LASF249
	.byte	0x20
	.byte	0xb8
	.byte	0xc
	.long	0xdd
	.long	0xc85
	.uleb128 0xa
	.long	0x31e
	.byte	0
	.uleb128 0x17
	.long	.LASF250
	.byte	0x20
	.value	0x2e2
	.byte	0xf
	.long	0x2e
	.long	0xcab
	.uleb128 0xa
	.long	0xa4
	.uleb128 0xa
	.long	0x2e
	.uleb128 0xa
	.long	0x2e
	.uleb128 0xa
	.long	0x323
	.byte	0
	.uleb128 0x17
	.long	.LASF251
	.byte	0x20
	.value	0x311
	.byte	0x11
	.long	0xf0
	.long	0xcc2
	.uleb128 0xa
	.long	0x31e
	.byte	0
	.uleb128 0x17
	.long	.LASF252
	.byte	0x20
	.value	0x30b
	.byte	0xc
	.long	0xdd
	.long	0xce3
	.uleb128 0xa
	.long	0x31e
	.uleb128 0xa
	.long	0xf0
	.uleb128 0xa
	.long	0xdd
	.byte	0
	.uleb128 0x17
	.long	.LASF253
	.byte	0x20
	.value	0x108
	.byte	0xe
	.long	0x31e
	.long	0xcff
	.uleb128 0xa
	.long	0xd04
	.uleb128 0xa
	.long	0xd04
	.byte	0
	.uleb128 0xd
	.long	0x12c
	.uleb128 0x1a
	.long	0xcff
	.uleb128 0x26
	.long	.LASF258
	.byte	0x25
	.byte	0x5d
	.byte	0x17
	.long	.LASF260
	.long	0x3eb
	.long	0xd28
	.uleb128 0xa
	.long	0xdd
	.uleb128 0xa
	.long	0x3eb
	.byte	0
	.uleb128 0x17
	.long	.LASF254
	.byte	0x20
	.value	0x28e
	.byte	0xe
	.long	0x11b
	.long	0xd49
	.uleb128 0xa
	.long	0x120
	.uleb128 0xa
	.long	0xdd
	.uleb128 0xa
	.long	0x323
	.byte	0
	.uleb128 0x1c
	.long	.LASF255
	.byte	0x24
	.byte	0x2d
	.byte	0xc
	.long	0xdd
	.long	0xd5f
	.uleb128 0xa
	.long	0xd5f
	.byte	0
	.uleb128 0xd
	.long	0x39a
	.uleb128 0x34
	.string	"pow"
	.byte	0x38
	.byte	0x8c
	.byte	0x1
	.long	0x43e
	.long	0xd7f
	.uleb128 0xa
	.long	0x43e
	.uleb128 0xa
	.long	0x43e
	.byte	0
	.uleb128 0x17
	.long	.LASF256
	.byte	0x20
	.value	0x16b
	.byte	0xc
	.long	0xdd
	.long	0xd97
	.uleb128 0xa
	.long	0xcff
	.uleb128 0x27
	.byte	0
	.uleb128 0x1c
	.long	.LASF257
	.byte	0x2c
	.byte	0x76
	.byte	0xf
	.long	0x43e
	.long	0xdb2
	.uleb128 0xa
	.long	0xd04
	.uleb128 0xa
	.long	0xdb7
	.byte	0
	.uleb128 0xd
	.long	0x11b
	.uleb128 0x1a
	.long	0xdb2
	.uleb128 0x26
	.long	.LASF259
	.byte	0x2c
	.byte	0xee
	.byte	0x16
	.long	.LASF261
	.long	0x332
	.long	0xde0
	.uleb128 0xa
	.long	0xd04
	.uleb128 0xa
	.long	0xdb7
	.uleb128 0xa
	.long	0xdd
	.byte	0
	.uleb128 0x35
	.long	.LASF262
	.byte	0x24
	.byte	0x36
	.byte	0xd
	.long	0xdf7
	.uleb128 0xa
	.long	0xd5f
	.uleb128 0xa
	.long	0xdd
	.byte	0
	.uleb128 0x17
	.long	.LASF263
	.byte	0x20
	.value	0x174
	.byte	0xc
	.long	0xdd
	.long	0xe18
	.uleb128 0xa
	.long	0x323
	.uleb128 0xa
	.long	0xd04
	.uleb128 0xa
	.long	0xe18
	.byte	0
	.uleb128 0xd
	.long	0x66
	.uleb128 0x36
	.long	.LASF527
	.byte	0x2c
	.value	0x2af
	.byte	0xd
	.long	0xe30
	.uleb128 0xa
	.long	0xa2
	.byte	0
	.uleb128 0x1c
	.long	.LASF264
	.byte	0x2d
	.byte	0x40
	.byte	0xc
	.long	0xdd
	.long	0xe50
	.uleb128 0xa
	.long	0x339
	.uleb128 0xa
	.long	0x339
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0x17
	.long	.LASF265
	.byte	0x2c
	.value	0x2a3
	.byte	0xe
	.long	0xa2
	.long	0xe6c
	.uleb128 0xa
	.long	0x2e
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0x1c
	.long	.LASF266
	.byte	0x2d
	.byte	0x2b
	.byte	0xe
	.long	0xa2
	.long	0xe8c
	.uleb128 0xa
	.long	0xa2
	.uleb128 0xa
	.long	0x339
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0x17
	.long	.LASF267
	.byte	0x2c
	.value	0x2ab
	.byte	0xe
	.long	0xa2
	.long	0xea8
	.uleb128 0xa
	.long	0xa2
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0x17
	.long	.LASF268
	.byte	0x2c
	.value	0x2a0
	.byte	0xe
	.long	0xa2
	.long	0xebf
	.uleb128 0xa
	.long	0x2e
	.byte	0
	.uleb128 0xe
	.long	.LASF278
	.byte	0x19
	.byte	0x33
	.byte	0x5
	.long	0x450
	.quad	.LFB173
	.quad	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.long	0xf0f
	.uleb128 0x4
	.long	.LASF269
	.byte	0x19
	.byte	0x33
	.byte	0xf
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x4
	.long	.LASF270
	.byte	0x19
	.byte	0x33
	.byte	0x1b
	.long	0xf0f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"res"
	.byte	0x19
	.byte	0x35
	.byte	0x6
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0xd
	.long	0x920
	.uleb128 0x9
	.long	.LASF271
	.byte	0x19
	.byte	0x2d
	.byte	0xa
	.long	0x450
	.quad	.LFB172
	.quad	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.long	0xf46
	.uleb128 0x1
	.string	"err"
	.byte	0x19
	.byte	0x2d
	.byte	0x16
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x9
	.long	.LASF272
	.byte	0x19
	.byte	0x25
	.byte	0xa
	.long	0x450
	.quad	.LFB171
	.quad	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.long	0xf78
	.uleb128 0x4
	.long	.LASF273
	.byte	0x19
	.byte	0x25
	.byte	0x14
	.long	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF274
	.byte	0x19
	.byte	0x17
	.byte	0xa
	.long	0x450
	.quad	.LFB170
	.quad	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.long	0xfb9
	.uleb128 0x6
	.string	"src"
	.byte	0x19
	.byte	0x1a
	.byte	0x9
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x5
	.long	.LASF160
	.byte	0x19
	.byte	0x1b
	.byte	0x6
	.long	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x37
	.string	"Run"
	.byte	0x19
	.byte	0x11
	.byte	0xb
	.quad	.LFB169
	.quad	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x38
	.long	.LASF275
	.byte	0x19
	.byte	0x6
	.byte	0xb
	.quad	.LFB168
	.quad	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.long	.LASF451
	.byte	0x19
	.byte	0x1
	.quad	.LFB167
	.quad	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.long	0x101a
	.uleb128 0x1
	.string	"sig"
	.byte	0x19
	.byte	0x1
	.byte	0x16
	.long	0x450
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x28
	.long	.LASF276
	.byte	0xe
	.quad	.LFB166
	.quad	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x28
	.long	.LASF277
	.byte	0x1
	.quad	.LFB165
	.quad	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.long	.LASF279
	.byte	0x14
	.byte	0x45
	.byte	0xb
	.long	0xa50
	.quad	.LFB164
	.quad	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.long	0x115d
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x45
	.byte	0x22
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF280
	.byte	0x14
	.byte	0x45
	.byte	0x31
	.long	0x891
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x45
	.byte	0x48
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"irs"
	.byte	0x2e
	.byte	0x1
	.byte	0xf
	.long	0x1162
	.uleb128 0x9
	.byte	0x3
	.quad	irs.4
	.uleb128 0x8
	.long	.LASF281
	.byte	0x17
	.byte	0x1
	.byte	0x1
	.quad	.L728
	.uleb128 0x8
	.long	.LASF282
	.byte	0x17
	.byte	0x2
	.byte	0x1
	.quad	.L730
	.uleb128 0x8
	.long	.LASF283
	.byte	0x17
	.byte	0x3
	.byte	0x1
	.quad	.L731
	.uleb128 0x8
	.long	.LASF284
	.byte	0x17
	.byte	0x4
	.byte	0x1
	.quad	.L732
	.uleb128 0x8
	.long	.LASF285
	.byte	0x17
	.byte	0x5
	.byte	0x1
	.quad	.L733
	.uleb128 0x8
	.long	.LASF286
	.byte	0x17
	.byte	0x6
	.byte	0x1
	.quad	.L734
	.uleb128 0x8
	.long	.LASF287
	.byte	0x17
	.byte	0x7
	.byte	0x1
	.quad	.L735
	.uleb128 0x8
	.long	.LASF288
	.byte	0x17
	.byte	0x8
	.byte	0x1
	.quad	.L736
	.uleb128 0x8
	.long	.LASF289
	.byte	0x17
	.byte	0x9
	.byte	0x1
	.quad	.L737
	.uleb128 0x6
	.string	"op"
	.byte	0x14
	.byte	0x48
	.byte	0x9
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF290
	.byte	0x14
	.byte	0x49
	.byte	0xc
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	0xa50
	.uleb128 0x12
	.long	0xa91
	.long	0x1178
	.uleb128 0x10
	.long	0x3a
	.byte	0x2
	.uleb128 0x10
	.long	0x3a
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.long	.LASF291
	.byte	0x14
	.byte	0x40
	.byte	0xb
	.long	0xa50
	.quad	.LFB163
	.quad	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.long	0x11c9
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x40
	.byte	0x23
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0x40
	.byte	0x2f
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x40
	.byte	0x3e
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF292
	.byte	0x14
	.byte	0x3b
	.byte	0xb
	.long	0xa50
	.quad	.LFB162
	.quad	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.long	0x121a
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x3b
	.byte	0x22
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0x3b
	.byte	0x2e
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x3b
	.byte	0x3d
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF293
	.byte	0x14
	.byte	0x36
	.byte	0xb
	.long	0xa50
	.quad	.LFB161
	.quad	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.long	0x126b
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x36
	.byte	0x24
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0x36
	.byte	0x30
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x36
	.byte	0x3f
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF294
	.byte	0x14
	.byte	0x31
	.byte	0xb
	.long	0xa50
	.quad	.LFB160
	.quad	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.long	0x12bc
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x31
	.byte	0x22
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0x31
	.byte	0x2e
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x31
	.byte	0x3d
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF295
	.byte	0x14
	.byte	0x2c
	.byte	0xb
	.long	0xa50
	.quad	.LFB159
	.quad	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.long	0x130d
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x2c
	.byte	0x21
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0x2c
	.byte	0x2d
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x2c
	.byte	0x3c
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF296
	.byte	0x14
	.byte	0x27
	.byte	0xb
	.long	0xa50
	.quad	.LFB158
	.quad	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.long	0x135e
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x27
	.byte	0x23
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0x27
	.byte	0x2f
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x27
	.byte	0x3e
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF297
	.byte	0x14
	.byte	0x22
	.byte	0xb
	.long	0xa50
	.quad	.LFB157
	.quad	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.long	0x13af
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x22
	.byte	0x24
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0x22
	.byte	0x30
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x22
	.byte	0x3f
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xf
	.long	.LASF298
	.byte	0x14
	.byte	0x1d
	.byte	0xb
	.long	0xa50
	.quad	.LFB156
	.quad	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.long	0x1400
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x1d
	.byte	0x23
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0x1d
	.byte	0x2f
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x1d
	.byte	0x3e
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0xe
	.long	.LASF299
	.byte	0x14
	.byte	0x16
	.byte	0xb
	.long	0xa50
	.quad	.LFB155
	.quad	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.long	0x1460
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x16
	.byte	0x25
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0x16
	.byte	0x31
	.long	0xbc3
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x16
	.byte	0x40
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF300
	.byte	0x14
	.byte	0x18
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF301
	.byte	0x14
	.byte	0xf
	.byte	0x7
	.long	0x628
	.quad	.LFB154
	.quad	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.long	0x16c0
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0xf
	.byte	0x1b
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"op"
	.byte	0x14
	.byte	0xf
	.byte	0x27
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0xf
	.byte	0x36
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"ops"
	.byte	0x2f
	.byte	0x1
	.byte	0xf
	.long	0x16c0
	.uleb128 0x9
	.byte	0x3
	.quad	ops.25
	.uleb128 0x2
	.string	"ERR"
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.quad	.L675
	.uleb128 0x2
	.string	"ADD"
	.byte	0x16
	.byte	0x2
	.byte	0x1
	.quad	.L677
	.uleb128 0x2
	.string	"SUB"
	.byte	0x16
	.byte	0x3
	.byte	0x1
	.quad	.L678
	.uleb128 0x2
	.string	"MUL"
	.byte	0x16
	.byte	0x4
	.byte	0x1
	.quad	.L679
	.uleb128 0x2
	.string	"DIV"
	.byte	0x16
	.byte	0x5
	.byte	0x1
	.quad	.L680
	.uleb128 0x2
	.string	"MOD"
	.byte	0x16
	.byte	0x6
	.byte	0x1
	.quad	.L681
	.uleb128 0x2
	.string	"POW"
	.byte	0x16
	.byte	0x7
	.byte	0x1
	.quad	.L682
	.uleb128 0x8
	.long	.LASF302
	.byte	0x16
	.byte	0x8
	.byte	0x1
	.quad	.L683
	.uleb128 0x2
	.string	"BOR"
	.byte	0x16
	.byte	0x9
	.byte	0x1
	.quad	.L684
	.uleb128 0x8
	.long	.LASF303
	.byte	0x16
	.byte	0xa
	.byte	0x1
	.quad	.L685
	.uleb128 0x2
	.string	"LSH"
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.quad	.L686
	.uleb128 0x2
	.string	"RSH"
	.byte	0x16
	.byte	0xc
	.byte	0x1
	.quad	.L687
	.uleb128 0x8
	.long	.LASF304
	.byte	0x16
	.byte	0xd
	.byte	0x1
	.quad	.L688
	.uleb128 0x2
	.string	"NEQ"
	.byte	0x16
	.byte	0xe
	.byte	0x1
	.quad	.L689
	.uleb128 0x2
	.string	"LT"
	.byte	0x16
	.byte	0xf
	.byte	0x1
	.quad	.L690
	.uleb128 0x2
	.string	"LE"
	.byte	0x16
	.byte	0x10
	.byte	0x1
	.quad	.L691
	.uleb128 0x2
	.string	"GT"
	.byte	0x16
	.byte	0x11
	.byte	0x1
	.quad	.L692
	.uleb128 0x2
	.string	"GE"
	.byte	0x16
	.byte	0x12
	.byte	0x1
	.quad	.L693
	.uleb128 0x2
	.string	"AND"
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.quad	.L694
	.uleb128 0x2
	.string	"OR"
	.byte	0x16
	.byte	0x14
	.byte	0x1
	.quad	.L695
	.uleb128 0x2
	.string	"MOV"
	.byte	0x16
	.byte	0x15
	.byte	0x1
	.quad	.L696
	.uleb128 0x8
	.long	.LASF305
	.byte	0x16
	.byte	0x16
	.byte	0x1
	.quad	.L697
	.uleb128 0x8
	.long	.LASF306
	.byte	0x16
	.byte	0x17
	.byte	0x1
	.quad	.L698
	.uleb128 0x8
	.long	.LASF307
	.byte	0x16
	.byte	0x18
	.byte	0x1
	.quad	.L699
	.uleb128 0x8
	.long	.LASF308
	.byte	0x16
	.byte	0x19
	.byte	0x1
	.quad	.L700
	.uleb128 0x8
	.long	.LASF309
	.byte	0x16
	.byte	0x1a
	.byte	0x1
	.quad	.L701
	.uleb128 0x8
	.long	.LASF310
	.byte	0x16
	.byte	0x1b
	.byte	0x1
	.quad	.L702
	.uleb128 0x8
	.long	.LASF311
	.byte	0x16
	.byte	0x1c
	.byte	0x1
	.quad	.L703
	.uleb128 0x8
	.long	.LASF312
	.byte	0x16
	.byte	0x1d
	.byte	0x1
	.quad	.L704
	.uleb128 0x8
	.long	.LASF313
	.byte	0x16
	.byte	0x1e
	.byte	0x1
	.quad	.L705
	.uleb128 0x8
	.long	.LASF314
	.byte	0x16
	.byte	0x1f
	.byte	0x1
	.quad	.L706
	.uleb128 0x8
	.long	.LASF315
	.byte	0x16
	.byte	0x20
	.byte	0x1
	.quad	.L707
	.byte	0
	.uleb128 0x12
	.long	0xa91
	.long	0x16d0
	.uleb128 0x10
	.long	0x3a
	.byte	0x25
	.byte	0
	.uleb128 0x23
	.long	.LASF378
	.byte	0x14
	.byte	0x7
	.quad	.LFB153
	.quad	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.long	0x17b2
	.uleb128 0x4
	.long	.LASF300
	.byte	0x14
	.byte	0x7
	.byte	0x1a
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF290
	.byte	0x14
	.byte	0x7
	.byte	0x2a
	.long	0x5c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x5
	.long	.LASF316
	.byte	0x30
	.byte	0x1
	.byte	0xf
	.long	0x1162
	.uleb128 0x9
	.byte	0x3
	.quad	types.26
	.uleb128 0x8
	.long	.LASF317
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.quad	.L663
	.uleb128 0x8
	.long	.LASF318
	.byte	0x15
	.byte	0x2
	.byte	0x1
	.quad	.L665
	.uleb128 0x8
	.long	.LASF319
	.byte	0x15
	.byte	0x3
	.byte	0x1
	.quad	.L666
	.uleb128 0x8
	.long	.LASF320
	.byte	0x15
	.byte	0x5
	.byte	0x1
	.quad	.L667
	.uleb128 0x8
	.long	.LASF321
	.byte	0x15
	.byte	0x6
	.byte	0x1
	.quad	.L668
	.uleb128 0x8
	.long	.LASF322
	.byte	0x15
	.byte	0x7
	.byte	0x1
	.quad	.L669
	.uleb128 0x8
	.long	.LASF323
	.byte	0x15
	.byte	0x9
	.byte	0x1
	.quad	.L670
	.uleb128 0x8
	.long	.LASF324
	.byte	0x15
	.byte	0xa
	.byte	0x1
	.quad	.L671
	.uleb128 0x8
	.long	.LASF325
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.quad	.L672
	.byte	0
	.uleb128 0xf
	.long	.LASF326
	.byte	0x14
	.byte	0x1
	.byte	0xb
	.long	0x5c9
	.quad	.LFB152
	.quad	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.long	0x1809
	.uleb128 0x1
	.string	"lhs"
	.byte	0x14
	.byte	0x1
	.byte	0x22
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"rhs"
	.byte	0x14
	.byte	0x1
	.byte	0x32
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF316
	.byte	0x31
	.byte	0x1
	.byte	0x12
	.long	0x1809
	.uleb128 0x9
	.byte	0x3
	.quad	types.27
	.byte	0
	.uleb128 0x12
	.long	0x5c9
	.long	0x181f
	.uleb128 0x10
	.long	0x3a
	.byte	0x2
	.uleb128 0x10
	.long	0x3a
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.long	.LASF327
	.byte	0x13
	.byte	0xed
	.byte	0xc
	.long	0x628
	.quad	.LFB151
	.quad	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.long	0x1860
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xed
	.byte	0x1e
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xed
	.byte	0x2a
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF328
	.byte	0x13
	.byte	0xe8
	.byte	0xc
	.long	0x628
	.quad	.LFB150
	.quad	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.long	0x18a1
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xe8
	.byte	0x1e
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xe8
	.byte	0x2a
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF329
	.byte	0x13
	.byte	0xe3
	.byte	0xc
	.long	0x628
	.quad	.LFB149
	.quad	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.long	0x18e2
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xe3
	.byte	0x1f
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xe3
	.byte	0x2b
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF330
	.byte	0x13
	.byte	0xde
	.byte	0xc
	.long	0x628
	.quad	.LFB148
	.quad	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.long	0x1923
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xde
	.byte	0x1e
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xde
	.byte	0x2a
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF331
	.byte	0x13
	.byte	0xd9
	.byte	0xc
	.long	0x628
	.quad	.LFB147
	.quad	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.long	0x1964
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xd9
	.byte	0x1f
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xd9
	.byte	0x2b
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF332
	.byte	0x13
	.byte	0xd4
	.byte	0xc
	.long	0x628
	.quad	.LFB146
	.quad	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.long	0x19a5
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xd4
	.byte	0x1e
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xd4
	.byte	0x2a
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF333
	.byte	0x13
	.byte	0xcf
	.byte	0xc
	.long	0x628
	.quad	.LFB145
	.quad	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.long	0x19e6
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xcf
	.byte	0x1e
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xcf
	.byte	0x2a
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF334
	.byte	0x13
	.byte	0xca
	.byte	0xc
	.long	0x628
	.quad	.LFB144
	.quad	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a27
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xca
	.byte	0x1e
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xca
	.byte	0x2a
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF335
	.byte	0x13
	.byte	0xc5
	.byte	0xc
	.long	0x628
	.quad	.LFB143
	.quad	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.long	0x1a68
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xc5
	.byte	0x1e
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xc5
	.byte	0x2a
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF336
	.byte	0x13
	.byte	0xc0
	.byte	0xc
	.long	0x628
	.quad	.LFB142
	.quad	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aa9
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xc0
	.byte	0x1e
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xc0
	.byte	0x2a
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF337
	.byte	0x13
	.byte	0xbb
	.byte	0xc
	.long	0x628
	.quad	.LFB141
	.quad	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.long	0x1aea
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xbb
	.byte	0x1e
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xbb
	.byte	0x2a
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	.LASF338
	.byte	0x13
	.byte	0xb2
	.byte	0xc
	.long	0x628
	.quad	.LFB140
	.quad	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.long	0x1b71
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xb2
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xb2
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0xb4
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.5
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0xb6
	.byte	0x2
	.quad	.L632
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0xb7
	.byte	0x2
	.quad	.L634
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0xb8
	.byte	0x2
	.quad	.L635
	.byte	0
	.uleb128 0x12
	.long	0xa91
	.long	0x1b81
	.uleb128 0x10
	.long	0x3a
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.long	.LASF339
	.byte	0x13
	.byte	0xa9
	.byte	0xc
	.long	0x628
	.quad	.LFB139
	.quad	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c08
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xa9
	.byte	0x1b
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xa9
	.byte	0x27
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0xab
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.6
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0xad
	.byte	0x2
	.quad	.L612
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0xae
	.byte	0x2
	.quad	.L618
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0xaf
	.byte	0x2
	.quad	.L624
	.byte	0
	.uleb128 0xb
	.long	.LASF340
	.byte	0x13
	.byte	0xa0
	.byte	0xc
	.long	0x628
	.quad	.LFB138
	.quad	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.long	0x1c8f
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0xa0
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0xa0
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0xa2
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.7
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0xa4
	.byte	0x2
	.quad	.L594
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0xa5
	.byte	0x2
	.quad	.L599
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0xa6
	.byte	0x2
	.quad	.L604
	.byte	0
	.uleb128 0xb
	.long	.LASF341
	.byte	0x13
	.byte	0x97
	.byte	0xc
	.long	0x628
	.quad	.LFB137
	.quad	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d16
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x97
	.byte	0x1b
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x97
	.byte	0x27
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x99
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.8
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x9b
	.byte	0x2
	.quad	.L582
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x9c
	.byte	0x2
	.quad	.L584
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x9d
	.byte	0x2
	.quad	.L588
	.byte	0
	.uleb128 0xb
	.long	.LASF342
	.byte	0x13
	.byte	0x8e
	.byte	0xc
	.long	0x628
	.quad	.LFB136
	.quad	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.long	0x1d9d
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x8e
	.byte	0x1b
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x8e
	.byte	0x27
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x90
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.9
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x92
	.byte	0x2
	.quad	.L570
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x93
	.byte	0x2
	.quad	.L572
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x94
	.byte	0x2
	.quad	.L576
	.byte	0
	.uleb128 0xb
	.long	.LASF343
	.byte	0x13
	.byte	0x85
	.byte	0xc
	.long	0x628
	.quad	.LFB135
	.quad	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.long	0x1e24
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x85
	.byte	0x1b
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x85
	.byte	0x27
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x87
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.10
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x89
	.byte	0x2
	.quad	.L558
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x8a
	.byte	0x2
	.quad	.L560
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x8b
	.byte	0x2
	.quad	.L564
	.byte	0
	.uleb128 0xb
	.long	.LASF344
	.byte	0x13
	.byte	0x7c
	.byte	0xc
	.long	0x628
	.quad	.LFB134
	.quad	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.long	0x1eab
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x7c
	.byte	0x1b
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x7c
	.byte	0x27
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x7e
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.11
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x80
	.byte	0x2
	.quad	.L546
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x81
	.byte	0x2
	.quad	.L548
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x82
	.byte	0x2
	.quad	.L552
	.byte	0
	.uleb128 0xb
	.long	.LASF345
	.byte	0x13
	.byte	0x73
	.byte	0xc
	.long	0x628
	.quad	.LFB133
	.quad	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.long	0x1f32
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x73
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x73
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x75
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.12
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x77
	.byte	0x2
	.quad	.L535
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x78
	.byte	0x2
	.quad	.L537
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x79
	.byte	0x2
	.quad	.L541
	.byte	0
	.uleb128 0xb
	.long	.LASF346
	.byte	0x13
	.byte	0x6a
	.byte	0xc
	.long	0x628
	.quad	.LFB132
	.quad	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fb9
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x6a
	.byte	0x1d
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x6a
	.byte	0x29
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x6c
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.13
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x6e
	.byte	0x2
	.quad	.L524
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x6f
	.byte	0x2
	.quad	.L526
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x70
	.byte	0x2
	.quad	.L530
	.byte	0
	.uleb128 0xb
	.long	.LASF347
	.byte	0x13
	.byte	0x61
	.byte	0xc
	.long	0x628
	.quad	.LFB131
	.quad	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.long	0x2040
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x61
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x61
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x63
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.14
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x65
	.byte	0x2
	.quad	.L517
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x66
	.byte	0x2
	.quad	.L519
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x67
	.byte	0x2
	.quad	.L520
	.byte	0
	.uleb128 0xb
	.long	.LASF348
	.byte	0x13
	.byte	0x58
	.byte	0xc
	.long	0x628
	.quad	.LFB130
	.quad	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.long	0x20c7
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x58
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x58
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x5a
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.15
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x5c
	.byte	0x2
	.quad	.L510
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x5d
	.byte	0x2
	.quad	.L512
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x5e
	.byte	0x2
	.quad	.L513
	.byte	0
	.uleb128 0xb
	.long	.LASF349
	.byte	0x13
	.byte	0x4f
	.byte	0xc
	.long	0x628
	.quad	.LFB129
	.quad	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.long	0x214e
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x4f
	.byte	0x1d
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x4f
	.byte	0x29
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x51
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.16
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x53
	.byte	0x2
	.quad	.L503
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x54
	.byte	0x2
	.quad	.L505
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x55
	.byte	0x2
	.quad	.L506
	.byte	0
	.uleb128 0xb
	.long	.LASF350
	.byte	0x13
	.byte	0x46
	.byte	0xc
	.long	0x628
	.quad	.LFB128
	.quad	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.long	0x21d5
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x46
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x46
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x48
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.17
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x4a
	.byte	0x2
	.quad	.L496
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x4b
	.byte	0x2
	.quad	.L498
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x4c
	.byte	0x2
	.quad	.L499
	.byte	0
	.uleb128 0xb
	.long	.LASF351
	.byte	0x13
	.byte	0x3d
	.byte	0xc
	.long	0x628
	.quad	.LFB127
	.quad	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.long	0x225c
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x3d
	.byte	0x1d
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x3d
	.byte	0x29
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x3f
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.18
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x41
	.byte	0x2
	.quad	.L489
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x42
	.byte	0x2
	.quad	.L491
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x43
	.byte	0x2
	.quad	.L492
	.byte	0
	.uleb128 0x9
	.long	.LASF352
	.byte	0x13
	.byte	0x34
	.byte	0xc
	.long	0x628
	.quad	.LFB126
	.quad	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.long	0x22e3
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x34
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x34
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x36
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.19
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x38
	.byte	0x2
	.quad	.L478
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x39
	.byte	0x2
	.quad	.L480
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x3a
	.byte	0x2
	.quad	.L481
	.byte	0
	.uleb128 0xb
	.long	.LASF353
	.byte	0x13
	.byte	0x2b
	.byte	0xc
	.long	0x628
	.quad	.LFB125
	.quad	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.long	0x236a
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x2b
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x2b
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x2d
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.20
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x2f
	.byte	0x2
	.quad	.L471
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x30
	.byte	0x2
	.quad	.L473
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x31
	.byte	0x2
	.quad	.L474
	.byte	0
	.uleb128 0xb
	.long	.LASF354
	.byte	0x13
	.byte	0x22
	.byte	0xc
	.long	0x628
	.quad	.LFB124
	.quad	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.long	0x23f1
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x22
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x22
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x24
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.21
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x26
	.byte	0x2
	.quad	.L464
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x27
	.byte	0x2
	.quad	.L466
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x28
	.byte	0x2
	.quad	.L467
	.byte	0
	.uleb128 0xb
	.long	.LASF355
	.byte	0x13
	.byte	0x19
	.byte	0xc
	.long	0x628
	.quad	.LFB123
	.quad	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.long	0x2478
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x19
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x19
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x1b
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.22
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x1d
	.byte	0x2
	.quad	.L457
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x1e
	.byte	0x2
	.quad	.L459
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x1f
	.byte	0x2
	.quad	.L460
	.byte	0
	.uleb128 0xb
	.long	.LASF356
	.byte	0x13
	.byte	0x10
	.byte	0xc
	.long	0x628
	.quad	.LFB122
	.quad	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.long	0x24ff
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x10
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x10
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x12
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.23
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0x14
	.byte	0x2
	.quad	.L450
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0x15
	.byte	0x2
	.quad	.L452
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0x16
	.byte	0x2
	.quad	.L453
	.byte	0
	.uleb128 0xb
	.long	.LASF357
	.byte	0x13
	.byte	0x7
	.byte	0xc
	.long	0x628
	.quad	.LFB121
	.quad	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.long	0x2586
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x7
	.byte	0x1c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x7
	.byte	0x28
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x13
	.byte	0x9
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	ops.24
	.uleb128 0x2
	.string	"I64"
	.byte	0x13
	.byte	0xb
	.byte	0x2
	.quad	.L443
	.uleb128 0x2
	.string	"F64"
	.byte	0x13
	.byte	0xc
	.byte	0x2
	.quad	.L445
	.uleb128 0x2
	.string	"STR"
	.byte	0x13
	.byte	0xd
	.byte	0x2
	.quad	.L446
	.byte	0
	.uleb128 0x9
	.long	.LASF358
	.byte	0x13
	.byte	0x1
	.byte	0xc
	.long	0x628
	.quad	.LFB120
	.quad	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.long	0x25d5
	.uleb128 0x1
	.string	"lhs"
	.byte	0x13
	.byte	0x1
	.byte	0x1f
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"op"
	.byte	0x13
	.byte	0x1
	.byte	0x2b
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"rhs"
	.byte	0x13
	.byte	0x1
	.byte	0x36
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xe
	.long	.LASF359
	.byte	0x10
	.byte	0x19
	.byte	0xb
	.long	0xa50
	.quad	.LFB119
	.quad	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.long	0x266a
	.uleb128 0x4
	.long	.LASF280
	.byte	0x10
	.byte	0x19
	.byte	0x21
	.long	0x891
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x1
	.string	"rhs"
	.byte	0x10
	.byte	0x19
	.byte	0x38
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"irs"
	.byte	0x32
	.byte	0x1
	.byte	0xf
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	irs.30
	.uleb128 0x8
	.long	.LASF360
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.quad	.L434
	.uleb128 0x2
	.string	"REF"
	.byte	0x12
	.byte	0x2
	.byte	0x1
	.quad	.L436
	.uleb128 0x8
	.long	.LASF361
	.byte	0x12
	.byte	0x3
	.byte	0x1
	.quad	.L437
	.uleb128 0x6
	.string	"op"
	.byte	0x10
	.byte	0x1c
	.byte	0x9
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.long	.LASF362
	.byte	0x10
	.byte	0x14
	.byte	0x10
	.long	0xa50
	.quad	.LFB118
	.quad	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.long	0x26ab
	.uleb128 0x1
	.string	"op"
	.byte	0x10
	.byte	0x14
	.byte	0x20
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"rhs"
	.byte	0x10
	.byte	0x14
	.byte	0x2f
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xb
	.long	.LASF363
	.byte	0x10
	.byte	0xf
	.byte	0x10
	.long	0xa50
	.quad	.LFB117
	.quad	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.long	0x26ec
	.uleb128 0x1
	.string	"op"
	.byte	0x10
	.byte	0xf
	.byte	0x1f
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"rhs"
	.byte	0x10
	.byte	0xf
	.byte	0x2e
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0x9
	.long	.LASF364
	.byte	0x10
	.byte	0x8
	.byte	0x10
	.long	0xa50
	.quad	.LFB116
	.quad	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.long	0x273c
	.uleb128 0x1
	.string	"op"
	.byte	0x10
	.byte	0x8
	.byte	0x21
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x1
	.string	"rhs"
	.byte	0x10
	.byte	0x8
	.byte	0x30
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x5
	.long	.LASF300
	.byte	0x10
	.byte	0xa
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF365
	.byte	0x10
	.byte	0x1
	.byte	0xc
	.long	0x628
	.quad	.LFB115
	.quad	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.long	0x2802
	.uleb128 0x1
	.string	"op"
	.byte	0x10
	.byte	0x1
	.byte	0x1c
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"rhs"
	.byte	0x10
	.byte	0x1
	.byte	0x2b
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"ops"
	.byte	0x33
	.byte	0x1
	.byte	0xf
	.long	0x16c0
	.uleb128 0x9
	.byte	0x3
	.quad	ops.28
	.uleb128 0x2
	.string	"ERR"
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.quad	.L418
	.uleb128 0x2
	.string	"NOT"
	.byte	0x11
	.byte	0x2
	.byte	0x1
	.quad	.L420
	.uleb128 0x8
	.long	.LASF366
	.byte	0x11
	.byte	0x3
	.byte	0x1
	.quad	.L421
	.uleb128 0x8
	.long	.LASF367
	.byte	0x11
	.byte	0x4
	.byte	0x1
	.quad	.L422
	.uleb128 0x8
	.long	.LASF368
	.byte	0x11
	.byte	0x5
	.byte	0x1
	.quad	.L423
	.uleb128 0x2
	.string	"INC"
	.byte	0x11
	.byte	0x6
	.byte	0x1
	.quad	.L424
	.uleb128 0x2
	.string	"DEC"
	.byte	0x11
	.byte	0x7
	.byte	0x1
	.quad	.L425
	.byte	0
	.uleb128 0xf
	.long	.LASF369
	.byte	0xf
	.byte	0x34
	.byte	0x7
	.long	0x628
	.quad	.LFB114
	.quad	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.long	0x287a
	.uleb128 0x1
	.string	"rhs"
	.byte	0xf
	.byte	0x34
	.byte	0x17
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF316
	.byte	0xf
	.byte	0x36
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	types.31
	.uleb128 0x2
	.string	"I64"
	.byte	0xf
	.byte	0x38
	.byte	0x2
	.quad	.L411
	.uleb128 0x2
	.string	"F64"
	.byte	0xf
	.byte	0x39
	.byte	0x2
	.quad	.L413
	.uleb128 0x2
	.string	"STR"
	.byte	0xf
	.byte	0x3a
	.byte	0x2
	.quad	.L414
	.byte	0
	.uleb128 0xf
	.long	.LASF370
	.byte	0xf
	.byte	0x2b
	.byte	0x7
	.long	0x628
	.quad	.LFB113
	.quad	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.long	0x28f2
	.uleb128 0x1
	.string	"rhs"
	.byte	0xf
	.byte	0x2b
	.byte	0x17
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF316
	.byte	0xf
	.byte	0x2d
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	types.32
	.uleb128 0x2
	.string	"I64"
	.byte	0xf
	.byte	0x2f
	.byte	0x2
	.quad	.L404
	.uleb128 0x2
	.string	"F64"
	.byte	0xf
	.byte	0x30
	.byte	0x2
	.quad	.L406
	.uleb128 0x2
	.string	"STR"
	.byte	0xf
	.byte	0x31
	.byte	0x2
	.quad	.L407
	.byte	0
	.uleb128 0xf
	.long	.LASF371
	.byte	0xf
	.byte	0x22
	.byte	0x7
	.long	0x628
	.quad	.LFB112
	.quad	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.long	0x296a
	.uleb128 0x1
	.string	"rhs"
	.byte	0xf
	.byte	0x22
	.byte	0x19
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF316
	.byte	0xf
	.byte	0x24
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	types.33
	.uleb128 0x2
	.string	"I64"
	.byte	0xf
	.byte	0x26
	.byte	0x2
	.quad	.L397
	.uleb128 0x2
	.string	"F64"
	.byte	0xf
	.byte	0x27
	.byte	0x2
	.quad	.L399
	.uleb128 0x2
	.string	"STR"
	.byte	0xf
	.byte	0x28
	.byte	0x2
	.quad	.L400
	.byte	0
	.uleb128 0xf
	.long	.LASF372
	.byte	0xf
	.byte	0x19
	.byte	0x7
	.long	0x628
	.quad	.LFB111
	.quad	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.long	0x29e2
	.uleb128 0x1
	.string	"rhs"
	.byte	0xf
	.byte	0x19
	.byte	0x18
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF316
	.byte	0xf
	.byte	0x1b
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	types.34
	.uleb128 0x2
	.string	"I64"
	.byte	0xf
	.byte	0x1d
	.byte	0x2
	.quad	.L390
	.uleb128 0x2
	.string	"F64"
	.byte	0xf
	.byte	0x1e
	.byte	0x2
	.quad	.L392
	.uleb128 0x2
	.string	"STR"
	.byte	0xf
	.byte	0x1f
	.byte	0x2
	.quad	.L393
	.byte	0
	.uleb128 0xf
	.long	.LASF373
	.byte	0xf
	.byte	0x10
	.byte	0x7
	.long	0x628
	.quad	.LFB110
	.quad	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.long	0x2a5a
	.uleb128 0x1
	.string	"rhs"
	.byte	0xf
	.byte	0x10
	.byte	0x18
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF316
	.byte	0xf
	.byte	0x12
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	types.35
	.uleb128 0x2
	.string	"I64"
	.byte	0xf
	.byte	0x14
	.byte	0x2
	.quad	.L383
	.uleb128 0x2
	.string	"F64"
	.byte	0xf
	.byte	0x15
	.byte	0x2
	.quad	.L385
	.uleb128 0x2
	.string	"STR"
	.byte	0xf
	.byte	0x16
	.byte	0x2
	.quad	.L386
	.byte	0
	.uleb128 0xf
	.long	.LASF374
	.byte	0xf
	.byte	0x7
	.byte	0x7
	.long	0x628
	.quad	.LFB109
	.quad	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ad2
	.uleb128 0x1
	.string	"rhs"
	.byte	0xf
	.byte	0x7
	.byte	0x17
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF316
	.byte	0xf
	.byte	0x9
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	types.36
	.uleb128 0x2
	.string	"I64"
	.byte	0xf
	.byte	0xb
	.byte	0x2
	.quad	.L372
	.uleb128 0x2
	.string	"F64"
	.byte	0xf
	.byte	0xc
	.byte	0x2
	.quad	.L374
	.uleb128 0x2
	.string	"STR"
	.byte	0xf
	.byte	0xd
	.byte	0x2
	.quad	.L378
	.byte	0
	.uleb128 0xe
	.long	.LASF375
	.byte	0xf
	.byte	0x1
	.byte	0x7
	.long	0x628
	.quad	.LFB108
	.quad	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b12
	.uleb128 0x1
	.string	"op"
	.byte	0xf
	.byte	0x1
	.byte	0x1a
	.long	0xbc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x1
	.string	"rhs"
	.byte	0xf
	.byte	0x1
	.byte	0x25
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	.LASF376
	.byte	0xe
	.byte	0x8d
	.byte	0xd
	.long	0xbc3
	.quad	.LFB107
	.quad	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b5a
	.uleb128 0x4
	.long	.LASF91
	.byte	0xe
	.byte	0x8d
	.byte	0x1f
	.long	0x891
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.long	.LASF377
	.byte	0x34
	.byte	0x1
	.byte	0xf
	.long	0x2b5a
	.uleb128 0x9
	.byte	0x3
	.quad	token_ops.29
	.byte	0
	.uleb128 0x12
	.long	0xbc3
	.long	0x2b6a
	.uleb128 0x10
	.long	0x3a
	.byte	0x39
	.byte	0
	.uleb128 0x11
	.long	.LASF379
	.byte	0xe
	.byte	0x38
	.quad	.LFB98
	.quad	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.long	0x2b97
	.uleb128 0x5
	.long	.LASF380
	.byte	0xe
	.byte	0x3a
	.byte	0xc
	.long	0x2b97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	0xc63
	.uleb128 0x11
	.long	.LASF381
	.byte	0xe
	.byte	0x2d
	.quad	.LFB97
	.quad	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.long	0x2bd7
	.uleb128 0x5
	.long	.LASF380
	.byte	0xe
	.byte	0x2f
	.byte	0xc
	.long	0x2b97
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x6
	.string	"fn"
	.byte	0xe
	.byte	0x30
	.byte	0x8
	.long	0xc5e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF382
	.byte	0xe
	.byte	0x27
	.byte	0x10
	.long	0x2b97
	.quad	.LFB96
	.quad	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c10
	.uleb128 0x5
	.long	.LASF380
	.byte	0xe
	.byte	0x29
	.byte	0x12
	.long	0xc63
	.uleb128 0x9
	.byte	0x3
	.quad	compiler.41
	.byte	0
	.uleb128 0x11
	.long	.LASF383
	.byte	0xb
	.byte	0xe5
	.quad	.LFB95
	.quad	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.long	0x2c5f
	.uleb128 0x5
	.long	.LASF384
	.byte	0xb
	.byte	0xe7
	.byte	0xa
	.long	0x2c5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x18
	.quad	.LBB11
	.quad	.LBE11-.LBB11
	.uleb128 0x5
	.long	.LASF300
	.byte	0xb
	.byte	0xeb
	.byte	0xd
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0xd
	.long	0xabd
	.uleb128 0xe
	.long	.LASF385
	.byte	0xb
	.byte	0xde
	.byte	0xb
	.long	0xa50
	.quad	.LFB94
	.quad	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.long	0x2d09
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0xde
	.byte	0x1e
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF386
	.byte	0x35
	.byte	0x1
	.byte	0xf
	.long	0x2d09
	.uleb128 0x9
	.byte	0x3
	.quad	stmts.43
	.uleb128 0x8
	.long	.LASF387
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.quad	.L350
	.uleb128 0x2
	.string	"IF"
	.byte	0xd
	.byte	0x2
	.byte	0x1
	.quad	.L352
	.uleb128 0x2
	.string	"FOR"
	.byte	0xd
	.byte	0x3
	.byte	0x1
	.quad	.L353
	.uleb128 0x2
	.string	"DO"
	.byte	0xd
	.byte	0x4
	.byte	0x1
	.quad	.L354
	.uleb128 0x8
	.long	.LASF388
	.byte	0xd
	.byte	0x5
	.byte	0x1
	.quad	.L355
	.uleb128 0x2
	.string	"ID"
	.byte	0xd
	.byte	0x6
	.byte	0x1
	.quad	.L356
	.byte	0
	.uleb128 0x12
	.long	0xa91
	.long	0x2d19
	.uleb128 0x10
	.long	0x3a
	.byte	0x39
	.byte	0
	.uleb128 0xe
	.long	.LASF389
	.byte	0xb
	.byte	0xd0
	.byte	0xb
	.long	0xa50
	.quad	.LFB93
	.quad	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.long	0x2e50
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0xd0
	.byte	0x1e
	.long	0x2c5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x4
	.long	.LASF197
	.byte	0xb
	.byte	0xd0
	.byte	0x2b
	.long	0x9e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x5
	.long	.LASF390
	.byte	0x36
	.byte	0x1
	.byte	0x12
	.long	0x2e50
	.uleb128 0x9
	.byte	0x3
	.quad	rules.44
	.uleb128 0x2
	.string	"EOS"
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.quad	.L335
	.uleb128 0x8
	.long	.LASF391
	.byte	0xc
	.byte	0x3
	.byte	0x1
	.quad	.L337
	.uleb128 0x2
	.string	"ERR"
	.byte	0xc
	.byte	0x2
	.byte	0x1
	.quad	.L336
	.uleb128 0x8
	.long	.LASF392
	.byte	0xc
	.byte	0x4
	.byte	0x1
	.quad	.L338
	.uleb128 0x8
	.long	.LASF393
	.byte	0xc
	.byte	0x5
	.byte	0x1
	.quad	.L339
	.uleb128 0x8
	.long	.LASF361
	.byte	0xc
	.byte	0x6
	.byte	0x1
	.quad	.L340
	.uleb128 0x2
	.string	"I64"
	.byte	0xc
	.byte	0x7
	.byte	0x1
	.quad	.L341
	.uleb128 0x2
	.string	"F64"
	.byte	0xc
	.byte	0x8
	.byte	0x1
	.quad	.L342
	.uleb128 0x2
	.string	"STR"
	.byte	0xc
	.byte	0x9
	.byte	0x1
	.quad	.L343
	.uleb128 0x2
	.string	"REF"
	.byte	0xc
	.byte	0xa
	.byte	0x1
	.quad	.L344
	.uleb128 0x5
	.long	.LASF394
	.byte	0xb
	.byte	0xd3
	.byte	0xd
	.long	0x2e60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF300
	.byte	0xb
	.byte	0xd4
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2
	.string	"LED"
	.byte	0xb
	.byte	0xd6
	.byte	0x2
	.quad	.L332
	.uleb128 0x8
	.long	.LASF395
	.byte	0xb
	.byte	0xdb
	.byte	0x2
	.quad	.L334
	.byte	0
	.uleb128 0x12
	.long	0xa96
	.long	0x2e60
	.uleb128 0x10
	.long	0x3a
	.byte	0x39
	.byte	0
	.uleb128 0xd
	.long	0xa96
	.uleb128 0xe
	.long	.LASF396
	.byte	0xb
	.byte	0xc8
	.byte	0xb
	.long	0xa50
	.quad	.LFB92
	.quad	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ea6
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0xc8
	.byte	0x1d
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF300
	.byte	0xb
	.byte	0xca
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF397
	.byte	0xb
	.byte	0xc0
	.byte	0xb
	.long	0xa50
	.quad	.LFB91
	.quad	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.long	0x2ee7
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0xc0
	.byte	0x1d
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF300
	.byte	0xb
	.byte	0xc2
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF398
	.byte	0xb
	.byte	0xb8
	.byte	0xb
	.long	0xa50
	.quad	.LFB90
	.quad	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f28
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0xb8
	.byte	0x1d
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF300
	.byte	0xb
	.byte	0xba
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF399
	.byte	0xb
	.byte	0xb0
	.byte	0xb
	.long	0xa50
	.quad	.LFB89
	.quad	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.long	0x2f69
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0xb0
	.byte	0x1d
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF300
	.byte	0xb
	.byte	0xb2
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF400
	.byte	0xb
	.byte	0xa6
	.byte	0xb
	.long	0xa50
	.quad	.LFB88
	.quad	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fab
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0xa6
	.byte	0x1e
	.long	0x2c5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF94
	.byte	0xb
	.byte	0xa8
	.byte	0xa
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xe
	.long	.LASF401
	.byte	0xb
	.byte	0x9e
	.byte	0xb
	.long	0xa50
	.quad	.LFB87
	.quad	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.long	0x2fec
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x9e
	.byte	0x1f
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF300
	.byte	0xb
	.byte	0xa1
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF402
	.byte	0xb
	.byte	0x96
	.byte	0xb
	.long	0xa50
	.quad	.LFB86
	.quad	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.long	0x305c
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x96
	.byte	0x20
	.long	0x2c5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"lhs"
	.byte	0xb
	.byte	0x96
	.byte	0x33
	.long	0x115d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"cur"
	.byte	0xb
	.byte	0x96
	.byte	0x3d
	.long	0x9e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x6
	.string	"op"
	.byte	0xb
	.byte	0x98
	.byte	0xc
	.long	0x891
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"rhs"
	.byte	0xb
	.byte	0x9a
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF403
	.byte	0xb
	.byte	0x8e
	.byte	0xb
	.long	0xa50
	.quad	.LFB85
	.quad	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.long	0x30bc
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x8e
	.byte	0x1f
	.long	0x2c5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"cur"
	.byte	0xb
	.byte	0x8e
	.byte	0x2c
	.long	0x9e8
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x6
	.string	"op"
	.byte	0xb
	.byte	0x90
	.byte	0xc
	.long	0x891
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x6
	.string	"rhs"
	.byte	0xb
	.byte	0x92
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF404
	.byte	0xb
	.byte	0x88
	.byte	0xb
	.long	0xa50
	.quad	.LFB84
	.quad	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.long	0x30ee
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x88
	.byte	0x1d
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xf
	.long	.LASF405
	.byte	0xb
	.byte	0x83
	.byte	0xb
	.long	0xa50
	.quad	.LFB83
	.quad	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.long	0x3120
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x83
	.byte	0x1d
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.long	.LASF406
	.byte	0xb
	.byte	0x76
	.byte	0xb
	.long	0xa50
	.quad	.LFB82
	.quad	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.long	0x3171
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x76
	.byte	0x1c
	.long	0x2c5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF94
	.byte	0xb
	.byte	0x78
	.byte	0xa
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x6
	.string	"rhs"
	.byte	0xb
	.byte	0x7c
	.byte	0xc
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xe
	.long	.LASF407
	.byte	0xb
	.byte	0x69
	.byte	0xb
	.long	0xa50
	.quad	.LFB81
	.quad	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.long	0x31b3
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x69
	.byte	0x1e
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.long	.LASF94
	.byte	0xb
	.byte	0x69
	.byte	0x2e
	.long	0x602
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.uleb128 0xe
	.long	.LASF408
	.byte	0xb
	.byte	0x63
	.byte	0xb
	.long	0xa50
	.quad	.LFB80
	.quad	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.long	0x31e5
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x63
	.byte	0x1f
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.long	.LASF409
	.byte	0xb
	.byte	0x5d
	.byte	0xb
	.long	0xa50
	.quad	.LFB79
	.quad	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.long	0x3217
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x5d
	.byte	0x1c
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.long	.LASF410
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.long	0xa50
	.quad	.LFB78
	.quad	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.long	0x3249
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x57
	.byte	0x1d
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0xe
	.long	.LASF411
	.byte	0xb
	.byte	0x42
	.byte	0xb
	.long	0xa50
	.quad	.LFB77
	.quad	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.long	0x32a1
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x42
	.byte	0x1c
	.long	0x2c5f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x5
	.long	.LASF412
	.byte	0xb
	.byte	0x45
	.byte	0xc
	.long	0xa50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x39
	.long	.LLRL0
	.uleb128 0x5
	.long	.LASF413
	.byte	0xb
	.byte	0x4b
	.byte	0xd
	.long	0xa50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF414
	.byte	0xb
	.byte	0x37
	.quad	.LFB76
	.quad	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.long	0x32dd
	.uleb128 0x4
	.long	.LASF384
	.byte	0xb
	.byte	0x37
	.byte	0x1a
	.long	0x2c5f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF91
	.byte	0xb
	.byte	0x37
	.byte	0x2c
	.long	0x891
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x11
	.long	.LASF415
	.byte	0xb
	.byte	0x25
	.quad	.LFB75
	.quad	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.long	0x336e
	.uleb128 0x4
	.long	.LASF300
	.byte	0xb
	.byte	0x25
	.byte	0x1f
	.long	0x115d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF316
	.byte	0xb
	.byte	0x27
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	types.46
	.uleb128 0x2
	.string	"I64"
	.byte	0xb
	.byte	0x2a
	.byte	0x2
	.quad	.L274
	.uleb128 0x2
	.string	"F64"
	.byte	0xb
	.byte	0x2d
	.byte	0x2
	.quad	.L275
	.uleb128 0x2
	.string	"STR"
	.byte	0xb
	.byte	0x30
	.byte	0x2
	.quad	.L276
	.uleb128 0x5
	.long	.LASF93
	.byte	0xb
	.byte	0x31
	.byte	0xa
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF416
	.byte	0xb
	.byte	0x32
	.byte	0x7
	.long	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.long	.LASF417
	.byte	0xb
	.byte	0x1f
	.byte	0x6
	.quad	.LFB74
	.quad	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.long	.LASF418
	.byte	0xb
	.byte	0x13
	.byte	0xe
	.long	0x2c5f
	.quad	.LFB73
	.quad	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.long	0x33c1
	.uleb128 0x5
	.long	.LASF384
	.byte	0xb
	.byte	0x15
	.byte	0x10
	.long	0xabd
	.uleb128 0x9
	.byte	0x3
	.quad	parser.42
	.byte	0
	.uleb128 0x3b
	.string	"Lex"
	.byte	0x9
	.byte	0xcc
	.byte	0x7
	.long	0x8c5
	.quad	.LFB72
	.quad	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.long	0x35ef
	.uleb128 0x5
	.long	.LASF419
	.byte	0x9
	.byte	0xce
	.byte	0x9
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF420
	.byte	0x37
	.byte	0x1
	.byte	0xf
	.long	0x35f4
	.uleb128 0x9
	.byte	0x3
	.quad	ascii.49
	.uleb128 0x2
	.string	"EOS"
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.quad	.L235
	.uleb128 0x2
	.string	"LEX"
	.byte	0x9
	.byte	0xd1
	.byte	0x2
	.quad	.L234
	.uleb128 0x8
	.long	.LASF421
	.byte	0xa
	.byte	0x2
	.byte	0x1
	.quad	.L237
	.uleb128 0x2
	.string	"NOT"
	.byte	0xa
	.byte	0x3
	.byte	0x1
	.quad	.L238
	.uleb128 0x2
	.string	"STR"
	.byte	0xa
	.byte	0x4
	.byte	0x1
	.quad	.L239
	.uleb128 0x8
	.long	.LASF422
	.byte	0xa
	.byte	0x5
	.byte	0x1
	.quad	.L240
	.uleb128 0x2
	.string	"MOD"
	.byte	0xa
	.byte	0x6
	.byte	0x1
	.quad	.L241
	.uleb128 0x8
	.long	.LASF302
	.byte	0xa
	.byte	0x7
	.byte	0x1
	.quad	.L242
	.uleb128 0x2
	.string	"LP"
	.byte	0xa
	.byte	0x8
	.byte	0x1
	.quad	.L243
	.uleb128 0x2
	.string	"RP"
	.byte	0xa
	.byte	0x9
	.byte	0x1
	.quad	.L244
	.uleb128 0x2
	.string	"MUL"
	.byte	0xa
	.byte	0xa
	.byte	0x1
	.quad	.L245
	.uleb128 0x2
	.string	"ADD"
	.byte	0xa
	.byte	0xb
	.byte	0x1
	.quad	.L246
	.uleb128 0x8
	.long	.LASF423
	.byte	0xa
	.byte	0xc
	.byte	0x1
	.quad	.L247
	.uleb128 0x2
	.string	"SUB"
	.byte	0xa
	.byte	0xd
	.byte	0x1
	.quad	.L248
	.uleb128 0x2
	.string	"DOT"
	.byte	0xa
	.byte	0xe
	.byte	0x1
	.quad	.L249
	.uleb128 0x2
	.string	"DIV"
	.byte	0xa
	.byte	0xf
	.byte	0x1
	.quad	.L250
	.uleb128 0x2
	.string	"NUM"
	.byte	0xa
	.byte	0x10
	.byte	0x1
	.quad	.L251
	.uleb128 0x8
	.long	.LASF424
	.byte	0xa
	.byte	0x11
	.byte	0x1
	.quad	.L252
	.uleb128 0x8
	.long	.LASF425
	.byte	0xa
	.byte	0x12
	.byte	0x1
	.quad	.L253
	.uleb128 0x2
	.string	"LT"
	.byte	0xa
	.byte	0x13
	.byte	0x1
	.quad	.L254
	.uleb128 0x2
	.string	"EQ"
	.byte	0xa
	.byte	0x14
	.byte	0x1
	.quad	.L255
	.uleb128 0x2
	.string	"GT"
	.byte	0xa
	.byte	0x15
	.byte	0x1
	.quad	.L256
	.uleb128 0x2
	.string	"RET"
	.byte	0xa
	.byte	0x16
	.byte	0x1
	.quad	.L257
	.uleb128 0x2
	.string	"ID"
	.byte	0xa
	.byte	0x17
	.byte	0x1
	.quad	.L258
	.uleb128 0x2
	.string	"LS"
	.byte	0xa
	.byte	0x18
	.byte	0x1
	.quad	.L259
	.uleb128 0x2
	.string	"RS"
	.byte	0xa
	.byte	0x19
	.byte	0x1
	.quad	.L260
	.uleb128 0x8
	.long	.LASF303
	.byte	0xa
	.byte	0x1a
	.byte	0x1
	.quad	.L261
	.uleb128 0x2
	.string	"LC"
	.byte	0xa
	.byte	0x1c
	.byte	0x1
	.quad	.L263
	.uleb128 0x2
	.string	"BOR"
	.byte	0xa
	.byte	0x1d
	.byte	0x1
	.quad	.L264
	.uleb128 0x2
	.string	"RC"
	.byte	0xa
	.byte	0x1e
	.byte	0x1
	.quad	.L265
	.uleb128 0x8
	.long	.LASF366
	.byte	0xa
	.byte	0x1b
	.byte	0x1
	.quad	.L262
	.byte	0
	.uleb128 0xd
	.long	0x92a
	.uleb128 0x12
	.long	0xa91
	.long	0x3604
	.uleb128 0x10
	.long	0x3a
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.long	.LASF426
	.byte	0x9
	.byte	0xca
	.byte	0xc
	.long	0x8c5
	.quad	.LFB71
	.quad	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.long	0x3636
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xca
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF427
	.byte	0x9
	.byte	0xc4
	.byte	0xc
	.long	0x8c5
	.quad	.LFB70
	.quad	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.long	0x3677
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xc4
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0xc6
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF428
	.byte	0x9
	.byte	0xc2
	.byte	0xc
	.long	0x8c5
	.quad	.LFB69
	.quad	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.long	0x36a9
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xc2
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF429
	.byte	0x9
	.byte	0xc1
	.byte	0xc
	.long	0x8c5
	.quad	.LFB68
	.quad	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.long	0x36db
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xc1
	.byte	0x1c
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF430
	.byte	0x9
	.byte	0xbb
	.byte	0xc
	.long	0x8c5
	.quad	.LFB67
	.quad	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.long	0x371c
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xbb
	.byte	0x1c
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0xbd
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF431
	.byte	0x9
	.byte	0xb9
	.byte	0xc
	.long	0x8c5
	.quad	.LFB66
	.quad	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.long	0x374e
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xb9
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF432
	.byte	0x9
	.byte	0xb8
	.byte	0xc
	.long	0x8c5
	.quad	.LFB65
	.quad	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.long	0x3780
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xb8
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF433
	.byte	0x9
	.byte	0xae
	.byte	0xc
	.long	0x8c5
	.quad	.LFB64
	.quad	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.long	0x3800
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xae
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x1
	.string	"ID"
	.byte	0x9
	.byte	0xae
	.byte	0x28
	.long	0xa91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x1
	.string	"NUM"
	.byte	0x9
	.byte	0xae
	.byte	0x33
	.long	0xa91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x4
	.long	.LASF420
	.byte	0x9
	.byte	0xae
	.byte	0x40
	.long	0x3800
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x6
	.string	"len"
	.byte	0x9
	.byte	0xb2
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x5
	.long	.LASF199
	.byte	0x9
	.byte	0xb3
	.byte	0x8
	.long	0x8c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xd
	.long	0xa91
	.uleb128 0x9
	.long	.LASF434
	.byte	0x9
	.byte	0xac
	.byte	0xc
	.long	0x8c5
	.quad	.LFB63
	.quad	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.long	0x3837
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xac
	.byte	0x1e
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF435
	.byte	0x9
	.byte	0xa4
	.byte	0xc
	.long	0x8c5
	.quad	.LFB62
	.quad	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.long	0x3878
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0xa4
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0xa6
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF436
	.byte	0x9
	.byte	0x9e
	.byte	0xc
	.long	0x8c5
	.quad	.LFB61
	.quad	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.long	0x38b9
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x9e
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0xa0
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF437
	.byte	0x9
	.byte	0x96
	.byte	0xc
	.long	0x8c5
	.quad	.LFB60
	.quad	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.long	0x38fa
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x96
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x98
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF438
	.byte	0x9
	.byte	0x90
	.byte	0xc
	.long	0x8c5
	.quad	.LFB59
	.quad	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.long	0x393b
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x90
	.byte	0x1c
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x92
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF439
	.byte	0x9
	.byte	0x8a
	.byte	0xc
	.long	0x8c5
	.quad	.LFB58
	.quad	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.long	0x397c
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x8a
	.byte	0x1d
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x8c
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF440
	.byte	0x9
	.byte	0x7b
	.byte	0xc
	.long	0x8c5
	.quad	.LFB57
	.quad	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.long	0x39dd
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x7b
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x1
	.string	"NUM"
	.byte	0x9
	.byte	0x7b
	.byte	0x29
	.long	0xa91
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x4
	.long	.LASF420
	.byte	0x9
	.byte	0x7b
	.byte	0x36
	.long	0x3800
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF199
	.byte	0x9
	.byte	0x7d
	.byte	0x8
	.long	0x8c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF441
	.byte	0x9
	.byte	0x75
	.byte	0xc
	.long	0x8c5
	.quad	.LFB56
	.quad	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a1e
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x75
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x77
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF442
	.byte	0x9
	.byte	0x73
	.byte	0xc
	.long	0x8c5
	.quad	.LFB55
	.quad	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a50
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x73
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF443
	.byte	0x9
	.byte	0x6d
	.byte	0xc
	.long	0x8c5
	.quad	.LFB54
	.quad	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.long	0x3a91
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x6d
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x6f
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF444
	.byte	0x9
	.byte	0x6b
	.byte	0xc
	.long	0x8c5
	.quad	.LFB53
	.quad	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ac3
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x6b
	.byte	0x1d
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF445
	.byte	0x9
	.byte	0x65
	.byte	0xc
	.long	0x8c5
	.quad	.LFB52
	.quad	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b04
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x65
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x67
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF446
	.byte	0x9
	.byte	0x5d
	.byte	0xc
	.long	0x8c5
	.quad	.LFB51
	.quad	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b45
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x5d
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x5f
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF447
	.byte	0x9
	.byte	0x5b
	.byte	0xc
	.long	0x8c5
	.quad	.LFB50
	.quad	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.long	0x3b77
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x5b
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF448
	.byte	0x9
	.byte	0x5a
	.byte	0xc
	.long	0x8c5
	.quad	.LFB49
	.quad	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ba9
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x5a
	.byte	0x1a
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0x9
	.long	.LASF449
	.byte	0x9
	.byte	0x54
	.byte	0xc
	.long	0x8c5
	.quad	.LFB48
	.quad	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.long	0x3bea
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x54
	.byte	0x1c
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x56
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x9
	.long	.LASF450
	.byte	0x9
	.byte	0x4e
	.byte	0xc
	.long	0x8c5
	.quad	.LFB47
	.quad	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c2b
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x4e
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x50
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x29
	.long	.LASF452
	.byte	0x47
	.quad	.LFB46
	.quad	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.long	0x3c57
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x47
	.byte	0x1e
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF453
	.byte	0x9
	.byte	0x3b
	.byte	0xc
	.long	0x8c5
	.quad	.LFB45
	.quad	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ca8
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x3b
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x5
	.long	.LASF199
	.byte	0x9
	.byte	0x3f
	.byte	0x8
	.long	0x8c5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"len"
	.byte	0x9
	.byte	0x40
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.uleb128 0x9
	.long	.LASF454
	.byte	0x9
	.byte	0x35
	.byte	0xc
	.long	0x8c5
	.quad	.LFB44
	.quad	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ce9
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x35
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"off"
	.byte	0x9
	.byte	0x37
	.byte	0x5
	.long	0x468
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.byte	0
	.uleb128 0x29
	.long	.LASF455
	.byte	0x2f
	.quad	.LFB43
	.quad	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d15
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x2f
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x9
	.long	.LASF456
	.byte	0x9
	.byte	0x2d
	.byte	0xc
	.long	0x8c5
	.quad	.LFB42
	.quad	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.long	0x3d47
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x2d
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.uleb128 0xb
	.long	.LASF457
	.byte	0x9
	.byte	0x26
	.byte	0xc
	.long	0x8c5
	.quad	.LFB41
	.quad	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.long	0x3da9
	.uleb128 0x4
	.long	.LASF419
	.byte	0x9
	.byte	0x26
	.byte	0x1b
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x4
	.long	.LASF91
	.byte	0x9
	.byte	0x26
	.byte	0x2c
	.long	0x891
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x1
	.string	"off"
	.byte	0x9
	.byte	0x26
	.byte	0x35
	.long	0x468
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x1
	.string	"len"
	.byte	0x9
	.byte	0x26
	.byte	0x3d
	.long	0x468
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.byte	0
	.uleb128 0x1d
	.long	.LASF458
	.byte	0x9
	.byte	0x20
	.quad	.LFB40
	.quad	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.long	0x3de5
	.uleb128 0x1
	.string	"src"
	.byte	0x9
	.byte	0x20
	.byte	0x1a
	.long	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF419
	.byte	0x9
	.byte	0x22
	.byte	0x9
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF459
	.byte	0x9
	.byte	0x16
	.quad	.LFB39
	.quad	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e30
	.uleb128 0x1
	.string	"src"
	.byte	0x9
	.byte	0x16
	.byte	0x1d
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF161
	.byte	0x9
	.byte	0x16
	.byte	0x29
	.long	0x925
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF419
	.byte	0x9
	.byte	0x18
	.byte	0x9
	.long	0x35ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF460
	.byte	0x9
	.byte	0x10
	.byte	0xd
	.long	0x35ef
	.quad	.LFB38
	.quad	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.long	0x3e69
	.uleb128 0x5
	.long	.LASF419
	.byte	0x9
	.byte	0x12
	.byte	0xf
	.long	0x92a
	.uleb128 0x9
	.byte	0x3
	.quad	lexer.48
	.byte	0
	.uleb128 0x1d
	.long	.LASF461
	.byte	0x8
	.byte	0x1
	.quad	.LFB37
	.quad	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.long	0x3ee1
	.uleb128 0x1
	.string	"src"
	.byte	0x8
	.byte	0x1
	.byte	0x1a
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF273
	.byte	0x8
	.byte	0x1
	.byte	0x23
	.long	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x5
	.long	.LASF462
	.byte	0x8
	.byte	0x3
	.byte	0x8
	.long	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"len"
	.byte	0x8
	.byte	0x6
	.byte	0x7
	.long	0xf0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x6
	.string	"buf"
	.byte	0x8
	.byte	0x9
	.byte	0x6
	.long	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF463
	.byte	0x8
	.byte	0xa
	.byte	0x6
	.long	0x48b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1d
	.long	.LASF464
	.byte	0x7
	.byte	0x7
	.quad	.LFB36
	.quad	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f20
	.uleb128 0x1
	.string	"fmt"
	.byte	0x7
	.byte	0x7
	.byte	0x16
	.long	0x920
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x27
	.uleb128 0x5
	.long	.LASF270
	.byte	0x7
	.byte	0x9
	.byte	0xa
	.long	0x33f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0xb
	.long	.LASF465
	.byte	0x7
	.byte	0x1
	.byte	0xf
	.long	0x3f59
	.quad	.LFB35
	.quad	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.long	0x3f59
	.uleb128 0x6
	.string	"buf"
	.byte	0x7
	.byte	0x3
	.byte	0x11
	.long	0x3cf
	.uleb128 0x9
	.byte	0x3
	.quad	buf.47
	.byte	0
	.uleb128 0xd
	.long	0x3cf
	.uleb128 0x11
	.long	.LASF466
	.byte	0x6
	.byte	0x43
	.quad	.LFB34
	.quad	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.long	0x3fa9
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x43
	.byte	0x13
	.long	0x3fa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"key"
	.byte	0x6
	.byte	0x43
	.byte	0x20
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF467
	.byte	0x6
	.byte	0x45
	.byte	0x9
	.long	0x70e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xd
	.long	0x713
	.uleb128 0x11
	.long	.LASF468
	.byte	0x6
	.byte	0x3a
	.quad	.LFB33
	.quad	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.long	0x4008
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x3a
	.byte	0x13
	.long	0x3fa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"key"
	.byte	0x6
	.byte	0x3a
	.byte	0x20
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x4
	.long	.LASF96
	.byte	0x6
	.byte	0x3a
	.byte	0x2c
	.long	0x6c9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF467
	.byte	0x6
	.byte	0x3d
	.byte	0x9
	.long	0x70e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF469
	.byte	0x6
	.byte	0x2e
	.byte	0x8
	.long	0x70e
	.quad	.LFB32
	.quad	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.long	0x4079
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x2e
	.byte	0x15
	.long	0x3fa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"key"
	.byte	0x6
	.byte	0x2e
	.byte	0x22
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x6
	.string	"idx"
	.byte	0x6
	.byte	0x30
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x18
	.quad	.LBB8
	.quad	.LBE8-.LBB8
	.uleb128 0x5
	.long	.LASF467
	.byte	0x6
	.byte	0x33
	.byte	0xa
	.long	0x70e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF470
	.byte	0x6
	.byte	0x20
	.quad	.LFB31
	.quad	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.long	0x4104
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x20
	.byte	0x14
	.long	0x3fa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF471
	.byte	0x6
	.byte	0x22
	.byte	0x9
	.long	0x70e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF472
	.byte	0x6
	.byte	0x23
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.quad	.LBB6
	.quad	.LBE6-.LBB6
	.uleb128 0x6
	.string	"i"
	.byte	0x6
	.byte	0x25
	.byte	0xb
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x18
	.quad	.LBB7
	.quad	.LBE7-.LBB7
	.uleb128 0x5
	.long	.LASF467
	.byte	0x6
	.byte	0x27
	.byte	0xa
	.long	0x70e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.long	.LASF473
	.byte	0x6
	.byte	0x19
	.quad	.LFB30
	.quad	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.long	0x4140
	.uleb128 0x1
	.string	"map"
	.byte	0x6
	.byte	0x19
	.byte	0x15
	.long	0x3fa9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1
	.string	"max"
	.byte	0x6
	.byte	0x19
	.byte	0x1e
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xb
	.long	.LASF474
	.byte	0x6
	.byte	0x13
	.byte	0xb
	.long	0x3fa9
	.quad	.LFB29
	.quad	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.long	0x4179
	.uleb128 0x6
	.string	"env"
	.byte	0x6
	.byte	0x15
	.byte	0xd
	.long	0x713
	.uleb128 0x9
	.byte	0x3
	.quad	env.0
	.byte	0
	.uleb128 0xe
	.long	.LASF475
	.byte	0x5
	.byte	0x3f
	.byte	0x9
	.long	0x602
	.quad	.LFB28
	.quad	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.long	0x41e7
	.uleb128 0x4
	.long	.LASF476
	.byte	0x5
	.byte	0x3f
	.byte	0x1a
	.long	0x925
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x1
	.string	"src"
	.byte	0x5
	.byte	0x3f
	.byte	0x25
	.long	0x920
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
	.long	.LASF477
	.byte	0x5
	.byte	0x31
	.quad	.LFB27
	.quad	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.long	0x4272
	.uleb128 0x4
	.long	.LASF476
	.byte	0x5
	.byte	0x31
	.byte	0x18
	.long	0x925
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x5
	.long	.LASF478
	.byte	0x5
	.byte	0x33
	.byte	0xa
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF479
	.byte	0x5
	.byte	0x34
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
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
	.uleb128 0x18
	.quad	.LBB5
	.quad	.LBE5-.LBB5
	.uleb128 0x5
	.long	.LASF480
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
	.long	.LASF481
	.byte	0x5
	.byte	0x27
	.quad	.LFB26
	.quad	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.long	0x42cc
	.uleb128 0x4
	.long	.LASF476
	.byte	0x5
	.byte	0x27
	.byte	0x19
	.long	0x925
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF480
	.byte	0x5
	.byte	0x27
	.byte	0x28
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x5
	.long	.LASF482
	.byte	0x5
	.byte	0x29
	.byte	0x6
	.long	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x5
	.long	.LASF483
	.byte	0x5
	.byte	0x2a
	.byte	0xa
	.long	0x602
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF484
	.byte	0x5
	.byte	0x19
	.byte	0x9
	.long	0x602
	.quad	.LFB25
	.quad	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.long	0x437b
	.uleb128 0x4
	.long	.LASF476
	.byte	0x5
	.byte	0x19
	.byte	0x1b
	.long	0x925
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x4
	.long	.LASF485
	.byte	0x5
	.byte	0x19
	.byte	0x26
	.long	0x920
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
	.uleb128 0x18
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
	.long	.LASF486
	.byte	0x5
	.byte	0x21
	.byte	0x7
	.long	0x920
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
	.long	.LASF487
	.byte	0x5
	.byte	0x11
	.quad	.LFB24
	.quad	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.long	0x43c6
	.uleb128 0x4
	.long	.LASF476
	.byte	0x5
	.byte	0x11
	.byte	0x19
	.long	0x925
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
	.uleb128 0xb
	.long	.LASF488
	.byte	0x5
	.byte	0xb
	.byte	0xd
	.long	0x925
	.quad	.LFB23
	.quad	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.long	0x43ff
	.uleb128 0x5
	.long	.LASF161
	.byte	0x5
	.byte	0xd
	.byte	0xf
	.long	0x67b
	.uleb128 0x9
	.byte	0x3
	.quad	interns.2
	.byte	0
	.uleb128 0x23
	.long	.LASF489
	.byte	0x4
	.byte	0x16
	.quad	.LFB22
	.quad	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.long	0x4490
	.uleb128 0x4
	.long	.LASF96
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.long	0x6c9
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
	.long	.LASF490
	.byte	0x4
	.byte	0x16
	.byte	0x34
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x5
	.long	.LASF316
	.byte	0x4
	.byte	0x18
	.byte	0x10
	.long	0x1b71
	.uleb128 0x9
	.byte	0x3
	.quad	types.50
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
	.uleb128 0x9
	.long	.LASF491
	.byte	0x3
	.byte	0x14
	.byte	0xa
	.long	0x47f
	.quad	.LFB21
	.quad	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.long	0x44fe
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
	.long	0x920
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
	.long	.LASF492
	.byte	0x3
	.byte	0x17
	.byte	0x6
	.long	0x920
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xb
	.long	.LASF493
	.byte	0x3
	.byte	0x8
	.byte	0xa
	.long	0x47f
	.quad	.LFB20
	.quad	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.long	0x457c
	.uleb128 0x4
	.long	.LASF416
	.byte	0x3
	.byte	0x8
	.byte	0x1a
	.long	0x920
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
	.long	.LASF494
	.byte	0x3
	.byte	0xb
	.byte	0x6
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
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
	.long	.LASF495
	.byte	0x2
	.byte	0x59
	.byte	0x7
	.long	0x4e8
	.quad	.LFB19
	.quad	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.long	0x45bd
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x59
	.byte	0x16
	.long	0x45bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x4
	.long	.LASF496
	.byte	0x2
	.byte	0x59
	.byte	0x1f
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xd
	.long	0x554
	.uleb128 0xf
	.long	.LASF497
	.byte	0x2
	.byte	0x53
	.byte	0x7
	.long	0x4e8
	.quad	.LFB18
	.quad	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.long	0x45f4
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x53
	.byte	0x15
	.long	0x45bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF498
	.byte	0x2
	.byte	0x4d
	.byte	0x7
	.long	0x4e8
	.quad	.LFB17
	.quad	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.long	0x4635
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x4d
	.byte	0x14
	.long	0x45bd
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
	.long	.LASF499
	.byte	0x2
	.byte	0x46
	.quad	.LFB16
	.quad	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.long	0x468f
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x46
	.byte	0x13
	.long	0x45bd
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
	.long	.LASF492
	.byte	0x2
	.byte	0x49
	.byte	0x8
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF500
	.byte	0x2
	.byte	0x40
	.byte	0x7
	.long	0x4e8
	.quad	.LFB15
	.quad	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.long	0x46c1
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x40
	.byte	0x14
	.long	0x45bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF501
	.byte	0x2
	.byte	0x39
	.byte	0x5
	.long	0x47f
	.quad	.LFB14
	.quad	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.long	0x4711
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x39
	.byte	0x13
	.long	0x45bd
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
	.long	.LASF492
	.byte	0x2
	.byte	0x3b
	.byte	0x8
	.long	0x4e8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xe
	.long	.LASF502
	.byte	0x2
	.byte	0x2f
	.byte	0x7
	.long	0x4e8
	.quad	.LFB13
	.quad	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.long	0x4743
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x2f
	.byte	0x17
	.long	0x45bd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x11
	.long	.LASF503
	.byte	0x2
	.byte	0x27
	.quad	.LFB12
	.quad	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.long	0x478e
	.uleb128 0x1
	.string	"vec"
	.byte	0x2
	.byte	0x27
	.byte	0x15
	.long	0x45bd
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
	.uleb128 0xb
	.long	.LASF504
	.byte	0x2
	.byte	0x21
	.byte	0xb
	.long	0x45bd
	.quad	.LFB11
	.quad	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.long	0x47c7
	.uleb128 0x5
	.long	.LASF505
	.byte	0x2
	.byte	0x23
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	funcs.40
	.byte	0
	.uleb128 0xb
	.long	.LASF506
	.byte	0x2
	.byte	0x1b
	.byte	0xb
	.long	0x45bd
	.quad	.LFB10
	.quad	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.long	0x4800
	.uleb128 0x5
	.long	.LASF507
	.byte	0x2
	.byte	0x1d
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	code.37
	.byte	0
	.uleb128 0xb
	.long	.LASF508
	.byte	0x2
	.byte	0x15
	.byte	0xb
	.long	0x45bd
	.quad	.LFB9
	.quad	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.long	0x4839
	.uleb128 0x5
	.long	.LASF509
	.byte	0x2
	.byte	0x17
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	globals.1
	.byte	0
	.uleb128 0xb
	.long	.LASF510
	.byte	0x2
	.byte	0xf
	.byte	0xb
	.long	0x45bd
	.quad	.LFB8
	.quad	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.long	0x4872
	.uleb128 0x5
	.long	.LASF511
	.byte	0x2
	.byte	0x11
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	locals.38
	.byte	0
	.uleb128 0xb
	.long	.LASF512
	.byte	0x2
	.byte	0x9
	.byte	0xb
	.long	0x45bd
	.quad	.LFB7
	.quad	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.long	0x48ab
	.uleb128 0x5
	.long	.LASF513
	.byte	0x2
	.byte	0xb
	.byte	0xd
	.long	0x554
	.uleb128 0x9
	.byte	0x3
	.quad	consts.39
	.byte	0
	.uleb128 0x23
	.long	.LASF514
	.byte	0x1
	.byte	0x3b
	.quad	.LFB6
	.quad	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.long	0x48d8
	.uleb128 0x4
	.long	.LASF515
	.byte	0x1
	.byte	0x3b
	.byte	0x19
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.long	.LASF516
	.byte	0x1
	.byte	0x36
	.byte	0x7
	.long	0x4e8
	.quad	.LFB5
	.quad	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.long	0x4919
	.uleb128 0x4
	.long	.LASF515
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
	.long	.LASF517
	.byte	0x1
	.byte	0x2e
	.byte	0x5
	.long	0x47f
	.quad	.LFB4
	.quad	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.long	0x4969
	.uleb128 0x4
	.long	.LASF515
	.byte	0x1
	.byte	0x2e
	.byte	0x16
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF463
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
	.long	.LASF518
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.long	0x47f
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x49c8
	.uleb128 0x4
	.long	.LASF515
	.byte	0x1
	.byte	0x22
	.byte	0x17
	.long	0x676
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x4
	.long	.LASF519
	.byte	0x1
	.byte	0x22
	.byte	0x22
	.long	0x47f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x4
	.long	.LASF520
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
	.long	.LASF521
	.byte	0x1
	.byte	0x1a
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a04
	.uleb128 0x4
	.long	.LASF515
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
	.uleb128 0xb
	.long	.LASF522
	.byte	0x1
	.byte	0x14
	.byte	0xd
	.long	0x676
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x4a3d
	.uleb128 0x5
	.long	.LASF93
	.byte	0x1
	.byte	0x16
	.byte	0xf
	.long	0x4ed
	.uleb128 0x9
	.byte	0x3
	.quad	strings.45
	.byte	0
	.uleb128 0x3c
	.long	.LASF523
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
	.quad	src.3
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
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
	.uleb128 0x37
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.sleb128 28
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
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 32
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 24
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
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 9
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 .LBB9-.Ltext0
	.uleb128 .LBE9-.Ltext0
	.byte	0x4
	.uleb128 .LBB10-.Ltext0
	.uleb128 .LBE10-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF177:
	.string	"PREC_EQNEQ"
.LASF522:
	.string	"GetStrings"
.LASF496:
	.string	"peek"
.LASF375:
	.string	"EvalUnaErr"
.LASF474:
	.string	"GetEnv"
.LASF178:
	.string	"PREC_GTLT"
.LASF507:
	.string	"code"
.LASF302:
	.string	"BAND"
.LASF161:
	.string	"interns"
.LASF120:
	.string	"TK_BOREQ"
.LASF212:
	.string	"OP_MOD"
.LASF41:
	.string	"_shortbuf"
.LASF416:
	.string	"cstr"
.LASF287:
	.string	"CALL_CONST"
.LASF118:
	.string	"TK_AND"
.LASF308:
	.string	"DIVEQ"
.LASF75:
	.string	"_IO_lock_t"
.LASF450:
	.string	"LexMod"
.LASF4:
	.string	"gp_offset"
.LASF77:
	.string	"Label"
.LASF290:
	.string	"common"
.LASF227:
	.string	"OP_MOV"
.LASF56:
	.string	"stderr"
.LASF30:
	.string	"_IO_buf_end"
.LASF207:
	.string	"OP_POSTDEC"
.LASF396:
	.string	"ParseRef"
.LASF405:
	.string	"ParseEos"
.LASF82:
	.string	"String"
.LASF478:
	.string	"old_base"
.LASF258:
	.string	"signal"
.LASF294:
	.string	"BinRefCall"
.LASF143:
	.string	"TK_ELSE"
.LASF352:
	.string	"EvalPow"
.LASF494:
	.string	"prime"
.LASF233:
	.string	"OP_POWEQ"
.LASF361:
	.string	"CALL"
.LASF300:
	.string	"node"
.LASF215:
	.string	"OP_BOR"
.LASF256:
	.string	"printf"
.LASF211:
	.string	"OP_DIV"
.LASF28:
	.string	"_IO_write_end"
.LASF9:
	.string	"unsigned int"
.LASF139:
	.string	"TK_RC"
.LASF46:
	.string	"_freeres_list"
.LASF284:
	.string	"REF_CONST"
.LASF142:
	.string	"TK_FOR"
.LASF156:
	.string	"TK_N"
.LASF135:
	.string	"TK_RP"
.LASF22:
	.string	"_flags"
.LASF137:
	.string	"TK_RS"
.LASF382:
	.string	"GetCompiler"
.LASF389:
	.string	"ParseExpr"
.LASF471:
	.string	"entries"
.LASF132:
	.string	"TK_RSH"
.LASF497:
	.string	"VecPeek"
.LASF347:
	.string	"EvalRsh"
.LASF255:
	.string	"_setjmp"
.LASF216:
	.string	"OP_BXOR"
.LASF435:
	.string	"LexGt"
.LASF304:
	.string	"EQEQ"
.LASF305:
	.string	"ADDEQ"
.LASF433:
	.string	"LexId"
.LASF301:
	.string	"BinFold"
.LASF34:
	.string	"_markers"
.LASF111:
	.string	"TK_POWEQ"
.LASF197:
	.string	"prec"
.LASF196:
	.string	"ParseRule"
.LASF312:
	.string	"BOREQ"
.LASF93:
	.string	"strings"
.LASF190:
	.string	"ParseType"
.LASF499:
	.string	"VecSet"
.LASF125:
	.string	"TK_EQEQ"
.LASF250:
	.string	"fread"
.LASF203:
	.string	"OP_BNOT"
.LASF505:
	.string	"funcs"
.LASF279:
	.string	"CompileBin"
.LASF229:
	.string	"OP_SUBEQ"
.LASF76:
	.string	"Void"
.LASF398:
	.string	"ParseF64"
.LASF265:
	.string	"calloc"
.LASF438:
	.string	"LexSemi"
.LASF188:
	.string	"PREC_CALL"
.LASF243:
	.string	"icode"
.LASF453:
	.string	"LexStr"
.LASF457:
	.string	"LexSet"
.LASF449:
	.string	"LexBand"
.LASF408:
	.string	"ParseWhile"
.LASF430:
	.string	"LexBxor"
.LASF145:
	.string	"TK_DO"
.LASF283:
	.string	"CONST_CALL"
.LASF378:
	.string	"BinCast"
.LASF364:
	.string	"UnaConst"
.LASF480:
	.string	"old_str"
.LASF241:
	.string	"iconsts"
.LASF388:
	.string	"WHILE"
.LASF163:
	.string	"PREC_NONE"
.LASF239:
	.string	"OP_N"
.LASF473:
	.string	"MapAlloc"
.LASF390:
	.string	"rules"
.LASF151:
	.string	"TK_RET"
.LASF225:
	.string	"OP_AND"
.LASF150:
	.string	"TK_COMMA"
.LASF334:
	.string	"EvalDivEq"
.LASF71:
	.string	"uint32_t"
.LASF61:
	.string	"__sigset_t"
.LASF106:
	.string	"TK_SUBEQ"
.LASF218:
	.string	"OP_RSH"
.LASF343:
	.string	"EvalLe"
.LASF230:
	.string	"OP_MULEQ"
.LASF33:
	.string	"_IO_save_end"
.LASF443:
	.string	"LexSub"
.LASF164:
	.string	"PREC_LIST"
.LASF148:
	.string	"TK_THEN"
.LASF73:
	.string	"float"
.LASF504:
	.string	"GetFuncs"
.LASF53:
	.string	"_IO_codecvt"
.LASF456:
	.string	"LexEof"
.LASF268:
	.string	"malloc"
.LASF79:
	.string	"base"
.LASF417:
	.string	"ParserInit"
.LASF213:
	.string	"OP_POW"
.LASF372:
	.string	"EvalPlus"
.LASF392:
	.string	"BINARY"
.LASF159:
	.string	"start"
.LASF485:
	.string	"str_a"
.LASF486:
	.string	"str_b"
.LASF344:
	.string	"EvalLt"
.LASF124:
	.string	"TK_EQ"
.LASF440:
	.string	"LexNum"
.LASF6:
	.string	"overflow_arg_area"
.LASF365:
	.string	"UnaFold"
.LASF262:
	.string	"longjmp"
.LASF391:
	.string	"UNARY"
.LASF273:
	.string	"file"
.LASF108:
	.string	"TK_MUL"
.LASF117:
	.string	"TK_BANDEQ"
.LASF355:
	.string	"EvalMul"
.LASF269:
	.string	"nargs"
.LASF86:
	.string	"VALUE_F64"
.LASF99:
	.string	"TK_NOT"
.LASF109:
	.string	"TK_MULEQ"
.LASF374:
	.string	"EvalNot"
.LASF479:
	.string	"old_len"
.LASF15:
	.string	"__uint16_t"
.LASF59:
	.string	"__jmp_buf"
.LASF68:
	.string	"__sighandler_t"
.LASF32:
	.string	"_IO_backup_base"
.LASF245:
	.string	"nlocals"
.LASF293:
	.string	"BinCallConst"
.LASF336:
	.string	"EvalSubEq"
.LASF43:
	.string	"_offset"
.LASF387:
	.string	"EXPR"
.LASF489:
	.string	"ValueSet"
.LASF321:
	.string	"F64_F64"
.LASF501:
	.string	"VecPush"
.LASF96:
	.string	"value"
.LASF140:
	.string	"TK_DOT"
.LASF36:
	.string	"_fileno"
.LASF464:
	.string	"Throw"
.LASF248:
	.string	"in_fn"
.LASF80:
	.string	"used"
.LASF359:
	.string	"CompileUna"
.LASF181:
	.string	"PREC_FACT"
.LASF373:
	.string	"EvalBnot"
.LASF3:
	.string	"__gnuc_va_list"
.LASF222:
	.string	"OP_LE"
.LASF414:
	.string	"ParseMatch"
.LASF153:
	.string	"TK_F64"
.LASF335:
	.string	"EvalMulEq"
.LASF275:
	.string	"Init"
.LASF395:
	.string	"DONE"
.LASF2:
	.string	"size_t"
.LASF189:
	.string	"PREC_POSTTERM"
.LASF506:
	.string	"GetCode"
.LASF412:
	.string	"cond"
.LASF83:
	.string	"offset"
.LASF291:
	.string	"BinCallCall"
.LASF429:
	.string	"LexBnot"
.LASF351:
	.string	"EvalBand"
.LASF282:
	.string	"CONST_REF"
.LASF25:
	.string	"_IO_read_base"
.LASF309:
	.string	"MODEQ"
.LASF399:
	.string	"ParseI64"
.LASF186:
	.string	"PREC_MEMBER"
.LASF55:
	.string	"stdin"
.LASF194:
	.string	"PT_N"
.LASF413:
	.string	"stmt"
.LASF514:
	.string	"ArenaClear"
.LASF366:
	.string	"BNOT"
.LASF131:
	.string	"TK_GE"
.LASF527:
	.string	"free"
.LASF18:
	.string	"__uint64_t"
.LASF491:
	.string	"StringAlloc"
.LASF517:
	.string	"ArenaPop"
.LASF123:
	.string	"TK_BXOREQ"
.LASF436:
	.string	"LexEq"
.LASF319:
	.string	"I64_STR"
.LASF102:
	.string	"TK_ADD"
.LASF193:
	.string	"PT_CALL"
.LASF357:
	.string	"EvalAdd"
.LASF130:
	.string	"TK_GT"
.LASF498:
	.string	"VecGet"
.LASF158:
	.string	"Lexer"
.LASF64:
	.string	"__jmpbuf"
.LASF198:
	.string	"Parser"
.LASF316:
	.string	"types"
.LASF307:
	.string	"MULEQ"
.LASF385:
	.string	"ParseStmt"
.LASF231:
	.string	"OP_DIVEQ"
.LASF274:
	.string	"Repl"
.LASF377:
	.string	"token_ops"
.LASF370:
	.string	"EvalInc"
.LASF524:
	.string	"GNU C2X 13.3.0 -masm=intel -mtune=generic -march=x86-64 -g -O0 -std=c2x -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection"
.LASF472:
	.string	"old_max"
.LASF21:
	.string	"char"
.LASF228:
	.string	"OP_ADDEQ"
.LASF87:
	.string	"VALUE_STR"
.LASF49:
	.string	"_mode"
.LASF246:
	.string	"ncode"
.LASF406:
	.string	"ParseId"
.LASF210:
	.string	"OP_MUL"
.LASF411:
	.string	"ParseIf"
.LASF303:
	.string	"BXOR"
.LASF488:
	.string	"GetInterns"
.LASF173:
	.string	"PREC_AND"
.LASF315:
	.string	"RSHEQ"
.LASF201:
	.string	"OP_NOP"
.LASF52:
	.string	"_IO_marker"
.LASF202:
	.string	"OP_NOT"
.LASF448:
	.string	"LexLp"
.LASF23:
	.string	"_IO_read_ptr"
.LASF432:
	.string	"LexLs"
.LASF437:
	.string	"LexLt"
.LASF323:
	.string	"STR_I64"
.LASF404:
	.string	"ParseErr"
.LASF322:
	.string	"F64_STR"
.LASF113:
	.string	"TK_DIVEQ"
.LASF78:
	.string	"Arena"
.LASF442:
	.string	"LexDot"
.LASF85:
	.string	"VALUE_I64"
.LASF297:
	.string	"BinConstCall"
.LASF69:
	.string	"uint8_t"
.LASF292:
	.string	"BinCallRef"
.LASF311:
	.string	"BANDEQ"
.LASF384:
	.string	"parser"
.LASF468:
	.string	"MapPut"
.LASF182:
	.string	"PREC_POW"
.LASF313:
	.string	"BXOREQ"
.LASF325:
	.string	"STR_STR"
.LASF103:
	.string	"TK_ADDEQ"
.LASF454:
	.string	"LexNot"
.LASF170:
	.string	"PREC_EQ"
.LASF381:
	.string	"FnCommit"
.LASF348:
	.string	"EvalLsh"
.LASF467:
	.string	"entry"
.LASF320:
	.string	"F64_I64"
.LASF261:
	.string	"__isoc23_strtoll"
.LASF58:
	.string	"va_list"
.LASF26:
	.string	"_IO_write_base"
.LASF155:
	.string	"TK_ID"
.LASF141:
	.string	"TK_IF"
.LASF458:
	.string	"LexReinit"
.LASF310:
	.string	"POWEQ"
.LASF57:
	.string	"long long int"
.LASF493:
	.string	"StringHash"
.LASF418:
	.string	"GetParser"
.LASF119:
	.string	"TK_BOR"
.LASF519:
	.string	"size"
.LASF350:
	.string	"EvalBor"
.LASF31:
	.string	"_IO_save_base"
.LASF330:
	.string	"EvalBorEq"
.LASF393:
	.string	"GROUP"
.LASF179:
	.string	"PREC_SH"
.LASF512:
	.string	"GetConsts"
.LASF314:
	.string	"LSHEQ"
.LASF226:
	.string	"OP_OR"
.LASF367:
	.string	"PLUS"
.LASF521:
	.string	"ArenaAlloc"
.LASF104:
	.string	"TK_ADDADD"
.LASF146:
	.string	"TK_WHILE"
.LASF208:
	.string	"OP_ADD"
.LASF349:
	.string	"EvalBxor"
.LASF337:
	.string	"EvalAddEq"
.LASF371:
	.string	"EvalMinus"
.LASF252:
	.string	"fseek"
.LASF425:
	.string	"SEMI"
.LASF484:
	.string	"TableFind"
.LASF204:
	.string	"OP_PREINC"
.LASF513:
	.string	"consts"
.LASF400:
	.string	"ParseCall"
.LASF288:
	.string	"CALL_REF"
.LASF280:
	.string	"token_type"
.LASF421:
	.string	"LINE"
.LASF502:
	.string	"VecCommit"
.LASF90:
	.string	"Value"
.LASF242:
	.string	"ilocals"
.LASF47:
	.string	"_freeres_buf"
.LASF509:
	.string	"globals"
.LASF475:
	.string	"TablePut"
.LASF154:
	.string	"TK_STR"
.LASF232:
	.string	"OP_MODEQ"
.LASF342:
	.string	"EvalGt"
.LASF251:
	.string	"ftell"
.LASF191:
	.string	"PT_CONST"
.LASF48:
	.string	"__pad5"
.LASF81:
	.string	"szof"
.LASF483:
	.string	"new_str"
.LASF169:
	.string	"PREC_POWEQ"
.LASF495:
	.string	"VecPeekN"
.LASF281:
	.string	"CONST_CONST"
.LASF424:
	.string	"COLON"
.LASF192:
	.string	"PT_REF"
.LASF500:
	.string	"VecPop"
.LASF326:
	.string	"BinPromote"
.LASF263:
	.string	"vfprintf"
.LASF253:
	.string	"fopen"
.LASF40:
	.string	"_vtable_offset"
.LASF200:
	.string	"OpCode"
.LASF152:
	.string	"TK_I64"
.LASF149:
	.string	"TK_END"
.LASF254:
	.string	"fgets"
.LASF490:
	.string	"data"
.LASF403:
	.string	"ParseUnary"
.LASF270:
	.string	"args"
.LASF206:
	.string	"OP_POSTINC"
.LASF105:
	.string	"TK_SUB"
.LASF356:
	.string	"EvalSub"
.LASF369:
	.string	"EvalDec"
.LASF339:
	.string	"EvalOr"
.LASF115:
	.string	"TK_MODEQ"
.LASF70:
	.string	"uint16_t"
.LASF199:
	.string	"token"
.LASF353:
	.string	"EvalMod"
.LASF407:
	.string	"ParseFunc"
.LASF446:
	.string	"LexMul"
.LASF116:
	.string	"TK_BAND"
.LASF89:
	.string	"ValueType"
.LASF515:
	.string	"arena"
.LASF289:
	.string	"CALL_CALL"
.LASF386:
	.string	"stmts"
.LASF360:
	.string	"CONST"
.LASF380:
	.string	"compiler"
.LASF419:
	.string	"lexer"
.LASF341:
	.string	"EvalGe"
.LASF183:
	.string	"PREC_NOT"
.LASF24:
	.string	"_IO_read_end"
.LASF162:
	.string	"Prec"
.LASF441:
	.string	"LexDiv"
.LASF107:
	.string	"TK_SUBSUB"
.LASF14:
	.string	"short int"
.LASF285:
	.string	"REF_REF"
.LASF240:
	.string	"Func"
.LASF452:
	.string	"LexComment"
.LASF184:
	.string	"PREC_PLUSMINUS"
.LASF138:
	.string	"TK_LC"
.LASF17:
	.string	"long int"
.LASF127:
	.string	"TK_LE"
.LASF463:
	.string	"bytes"
.LASF110:
	.string	"TK_POW"
.LASF84:
	.string	"hash"
.LASF98:
	.string	"TK_EOS"
.LASF234:
	.string	"OP_BANDEQ"
.LASF134:
	.string	"TK_LP"
.LASF455:
	.string	"LexLine"
.LASF92:
	.string	"Table"
.LASF136:
	.string	"TK_LS"
.LASF126:
	.string	"TK_LT"
.LASF333:
	.string	"EvalModEq"
.LASF402:
	.string	"ParseBinary"
.LASF176:
	.string	"PREC_BAND"
.LASF271:
	.string	"Deinit"
.LASF470:
	.string	"MapGrow"
.LASF166:
	.string	"PREC_SHEQ"
.LASF54:
	.string	"_IO_wide_data"
.LASF235:
	.string	"OP_BOREQ"
.LASF264:
	.string	"memcmp"
.LASF185:
	.string	"PREC_PRETERM"
.LASF128:
	.string	"TK_LSH"
.LASF72:
	.string	"uint64_t"
.LASF523:
	.string	"GetSrc"
.LASF249:
	.string	"fclose"
.LASF238:
	.string	"OP_RSHEQ"
.LASF492:
	.string	"dest"
.LASF526:
	.string	"__va_list_tag"
.LASF508:
	.string	"GetGlobals"
.LASF221:
	.string	"OP_LT"
.LASF346:
	.string	"EvalEqEq"
.LASF444:
	.string	"LexComma"
.LASF260:
	.string	"__sysv_signal"
.LASF503:
	.string	"VecAlloc"
.LASF460:
	.string	"GetLexer"
.LASF5:
	.string	"fp_offset"
.LASF13:
	.string	"__uint8_t"
.LASF422:
	.string	"COMMENT"
.LASF420:
	.string	"ascii"
.LASF358:
	.string	"EvalBinErr"
.LASF94:
	.string	"name"
.LASF65:
	.string	"__mask_was_saved"
.LASF100:
	.string	"TK_NEQ"
.LASF434:
	.string	"LexReturn"
.LASF247:
	.string	"Compiler"
.LASF66:
	.string	"__saved_mask"
.LASF354:
	.string	"EvalDiv"
.LASF220:
	.string	"OP_NEQ"
.LASF45:
	.string	"_wide_data"
.LASF477:
	.string	"TableGrow"
.LASF133:
	.string	"TK_RSHEQ"
.LASF42:
	.string	"_lock"
.LASF466:
	.string	"MapDel"
.LASF415:
	.string	"ParseNodeLog"
.LASF172:
	.string	"PREC_OR"
.LASF8:
	.string	"long unsigned int"
.LASF296:
	.string	"BinRefConst"
.LASF209:
	.string	"OP_SUB"
.LASF38:
	.string	"_old_offset"
.LASF363:
	.string	"UnaRef"
.LASF62:
	.string	"_IO_FILE"
.LASF451:
	.string	"OnSig"
.LASF7:
	.string	"reg_save_area"
.LASF324:
	.string	"STR_F64"
.LASF298:
	.string	"BinConstRef"
.LASF426:
	.string	"LexRc"
.LASF165:
	.string	"PREC_BITEQ"
.LASF237:
	.string	"OP_LSHEQ"
.LASF97:
	.string	"TokenType"
.LASF461:
	.string	"IoRead"
.LASF394:
	.string	"rule"
.LASF447:
	.string	"LexRp"
.LASF91:
	.string	"type"
.LASF431:
	.string	"LexRs"
.LASF10:
	.string	"unsigned char"
.LASF327:
	.string	"EvalRshEq"
.LASF368:
	.string	"MINUS"
.LASF510:
	.string	"GetLocals"
.LASF16:
	.string	"__uint32_t"
.LASF469:
	.string	"MapGet"
.LASF122:
	.string	"TK_BXOR"
.LASF160:
	.string	"line"
.LASF427:
	.string	"LexBor"
.LASF423:
	.string	"COMMA"
.LASF27:
	.string	"_IO_write_ptr"
.LASF482:
	.string	"old_cstr"
.LASF410:
	.string	"ParseFor"
.LASF114:
	.string	"TK_MOD"
.LASF306:
	.string	"SUBEQ"
.LASF167:
	.string	"PREC_TERMEQ"
.LASF168:
	.string	"PREC_FACTEQ"
.LASF257:
	.string	"strtod"
.LASF244:
	.string	"nconsts"
.LASF439:
	.string	"LexColon"
.LASF219:
	.string	"OP_EQ"
.LASF332:
	.string	"EvalPowEq"
.LASF338:
	.string	"EvalMov"
.LASF129:
	.string	"TK_LSHEQ"
.LASF317:
	.string	"I64_I64"
.LASF101:
	.string	"TK_BNOT"
.LASF376:
	.string	"TkToOp"
.LASF465:
	.string	"GetJmp"
.LASF299:
	.string	"BinConstConst"
.LASF44:
	.string	"_codecvt"
.LASF331:
	.string	"EvalBandEq"
.LASF481:
	.string	"TableReput"
.LASF217:
	.string	"OP_LSH"
.LASF401:
	.string	"ParseGroup"
.LASF267:
	.string	"realloc"
.LASF409:
	.string	"ParseDo"
.LASF157:
	.string	"Token"
.LASF121:
	.string	"TK_OR"
.LASF383:
	.string	"Parse"
.LASF174:
	.string	"PREC_BOR"
.LASF19:
	.string	"__off_t"
.LASF214:
	.string	"OP_BAND"
.LASF112:
	.string	"TK_DIV"
.LASF379:
	.string	"CompilerInit"
.LASF272:
	.string	"Load"
.LASF345:
	.string	"EvalNeq"
.LASF175:
	.string	"PREC_BXOR"
.LASF12:
	.string	"signed char"
.LASF286:
	.string	"REF_CALL"
.LASF259:
	.string	"strtoll"
.LASF195:
	.string	"ParseNode"
.LASF11:
	.string	"short unsigned int"
.LASF187:
	.string	"PREC_INDEX"
.LASF276:
	.string	"MemDealloc"
.LASF266:
	.string	"memcpy"
.LASF278:
	.string	"main"
.LASF525:
	.string	"__builtin_va_list"
.LASF60:
	.string	"__val"
.LASF487:
	.string	"TableAlloc"
.LASF295:
	.string	"BinRefRef"
.LASF520:
	.string	"p2align"
.LASF397:
	.string	"ParseStr"
.LASF147:
	.string	"TK_COLON"
.LASF74:
	.string	"double"
.LASF328:
	.string	"EvalLshEq"
.LASF180:
	.string	"PREC_TERM"
.LASF171:
	.string	"PREC_TERN"
.LASF35:
	.string	"_chain"
.LASF445:
	.string	"LexAdd"
.LASF51:
	.string	"FILE"
.LASF518:
	.string	"ArenaPush"
.LASF476:
	.string	"table"
.LASF37:
	.string	"_flags2"
.LASF511:
	.string	"locals"
.LASF362:
	.string	"UnaCall"
.LASF144:
	.string	"TK_SEMI"
.LASF516:
	.string	"ArenaOff"
.LASF205:
	.string	"OP_PREDEC"
.LASF67:
	.string	"jmp_buf"
.LASF277:
	.string	"MemAlloc"
.LASF39:
	.string	"_cur_column"
.LASF236:
	.string	"OP_BXOREQ"
.LASF95:
	.string	"Entry"
.LASF318:
	.string	"I64_F64"
.LASF224:
	.string	"OP_GE"
.LASF428:
	.string	"LexLc"
.LASF340:
	.string	"EvalAnd"
.LASF459:
	.string	"LexerInit"
.LASF20:
	.string	"__off64_t"
.LASF50:
	.string	"_unused2"
.LASF29:
	.string	"_IO_buf_base"
.LASF63:
	.string	"__jmp_buf_tag"
.LASF88:
	.string	"VALUE_N"
.LASF462:
	.string	"stream"
.LASF329:
	.string	"EvalBxorEq"
.LASF223:
	.string	"OP_GT"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/morrantho/Documents/code/c/yep"
.LASF0:
	.string	"bs.c"
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
