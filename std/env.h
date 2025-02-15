typedef struct Evar
{ /* Same as Var, but smaller for caching. sizeof = 8 */
	U32 off; /* strings arena offset. we compare this for lookups, not ptrs */
	U32 idx; /* globals index */
} Evar;

typedef struct Env
{
	Evar *base;
	U32 len;
	U32 max;
} Env;

Void EnvPut( Env *env, String *name, U32 idx );

STIL Env *GetEnv( )
{
	static Env env = { 0 };
	return &env;
}

Void EnvAlloc( Env *env, U32 max )
{
	env->base = calloc( max, sizeof( Evar ) );
	env->len = 0;
	env->max = max;
}

Void EnvGrow( Env *env )
{
	Evar *vars = env->base;
	U32 old_max = env->max;
	Arena *strings = GetStrings( );
	EnvAlloc( env, env->max << 1 );
	for( U32 i = 0; i < old_max; i++ )
	{
		Evar *var = &vars[ i ];
		if( !var->off ){ continue; } /* skip empties */
		String *str = ArenaOff( strings, var->off );
		EnvPut( env, str, var->idx );
	}
	free( vars );
}

Var *EvarToVar( Evar *evar )
{
	return VecGet( GetGlobals( ), evar->idx );
}

Evar *EnvGet( Env *env, String *name )
{
	U32 idx = name->hash & ( env->max - 1 );
	for( ;; idx = ( idx + 1 ) & ( env->max - 1 ) )
	{
		Evar *var = &env->base[ idx ];
		if( !var->off ){ return var; }
		if( var->off == name->offset ){ return var; }
	}
	I8 *cstr = ArenaOff( GetStrings( ), name->offset );
	Throw( "Failed to find Evar: %s in Env.\n", cstr );
	return NULL;
}

Void EnvPut( Env *env, String *name, U32 idx )
{
	if( env->len > env->max ){ EnvGrow( env ); }
	Evar *var = EnvGet( env, name );
	env->len += var->off == 0;
	var->off = name->offset;
	var->idx = idx;
}

Void EnvDel( Env *env, String *name )
{
	Evar *var = EnvGet( env, name );
	var->off = 0;
}