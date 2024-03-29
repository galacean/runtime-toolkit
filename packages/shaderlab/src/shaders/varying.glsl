#ifdef RENDERER_ENABLE_VERTEXCOLOR
  vec4 v_color;
#endif

#if SCENE_FOG_MODE != 0
    vec3 v_positionVS;
#endif

#ifndef MATERIAL_OMIT_NORMAL
    #ifdef RENDERER_HAS_NORMAL
        vec3 v_normal;
        #if defined(RENDERER_HAS_TANGENT) && ( defined(MATERIAL_HAS_NORMALTEXTURE) || defined(MATERIAL_HAS_CLEAR_COAT_NORMAL_TEXTURE) || defined(MATERIAL_ENABLE_ANISOTROPY) )
            mat3 v_TBN;
        #endif
    #endif
#endif
#ifdef SCENE_IS_CALCULATE_SHADOWS
    #if SCENE_SHADOW_CASCADED_COUNT==1
        vec3 v_shadowCoord;
    #endif
#endif
vec2 v_uv;

#ifdef RENDERER_HAS_UV1
    vec2 v_uv1;
#endif
#ifdef MATERIAL_NEED_WORLD_POS
    vec3 v_pos;
#endif