//#include <required.glsl> // [HACK 4/6/2023] See SCC shader_merger.cpp
//SG_REFLECTION_BEGIN(200)
//attribute vec4 boneData 5
//attribute vec3 blendShape0Pos 6
//attribute vec3 blendShape0Normal 12
//attribute vec3 blendShape1Pos 7
//attribute vec3 blendShape1Normal 13
//attribute vec3 blendShape2Pos 8
//attribute vec3 blendShape2Normal 14
//attribute vec3 blendShape3Pos 9
//attribute vec3 blendShape4Pos 10
//attribute vec3 blendShape5Pos 11
//attribute vec4 position 0
//attribute vec3 normal 1
//attribute vec4 tangent 2
//attribute vec2 texture0 3
//attribute vec2 texture1 4
//attribute vec4 color 18
//attribute vec3 positionNext 15
//attribute vec3 positionPrevious 16
//attribute vec4 strandProperties 17
//sampler sampler baseTexSmpSC 0:23
//sampler sampler detailNormalTexSmpSC 0:24
//sampler sampler emissiveTexSmpSC 0:25
//sampler sampler intensityTextureSmpSC 0:26
//sampler sampler normalTexSmpSC 0:27
//sampler sampler opacityTexSmpSC 0:28
//sampler sampler reflectionModulationTexSmpSC 0:29
//sampler sampler reflectionTexSmpSC 0:30
//sampler sampler rimColorTexSmpSC 0:31
//sampler sampler sc_OITCommonSampler 0:34
//sampler sampler sc_ScreenTextureSmpSC 0:36
//texture texture2D baseTex 0:0:0:23
//texture texture2D detailNormalTex 0:1:0:24
//texture texture2D emissiveTex 0:2:0:25
//texture texture2D intensityTexture 0:3:0:26
//texture texture2D normalTex 0:4:0:27
//texture texture2D opacityTex 0:5:0:28
//texture texture2D reflectionModulationTex 0:6:0:29
//texture texture2D reflectionTex 0:7:0:30
//texture texture2D rimColorTex 0:8:0:31
//texture texture2D sc_OITAlpha0 0:11:0:34
//texture texture2D sc_OITAlpha1 0:12:0:34
//texture texture2D sc_OITDepthHigh0 0:13:0:34
//texture texture2D sc_OITDepthHigh1 0:14:0:34
//texture texture2D sc_OITDepthLow0 0:15:0:34
//texture texture2D sc_OITDepthLow1 0:16:0:34
//texture texture2D sc_OITFilteredDepthBoundsTexture 0:17:0:34
//texture texture2D sc_OITFrontDepthTexture 0:18:0:34
//texture texture2D sc_ScreenTexture 0:20:0:36
//spec_const bool BLEND_MODE_AVERAGE 0
//spec_const bool BLEND_MODE_BRIGHT 1
//spec_const bool BLEND_MODE_COLOR 2
//spec_const bool BLEND_MODE_COLOR_BURN 3
//spec_const bool BLEND_MODE_COLOR_DODGE 4
//spec_const bool BLEND_MODE_DARKEN 5
//spec_const bool BLEND_MODE_DIFFERENCE 6
//spec_const bool BLEND_MODE_DIVIDE 7
//spec_const bool BLEND_MODE_DIVISION 8
//spec_const bool BLEND_MODE_EXCLUSION 9
//spec_const bool BLEND_MODE_FORGRAY 10
//spec_const bool BLEND_MODE_HARD_GLOW 11
//spec_const bool BLEND_MODE_HARD_LIGHT 12
//spec_const bool BLEND_MODE_HARD_MIX 13
//spec_const bool BLEND_MODE_HARD_PHOENIX 14
//spec_const bool BLEND_MODE_HARD_REFLECT 15
//spec_const bool BLEND_MODE_HUE 16
//spec_const bool BLEND_MODE_INTENSE 17
//spec_const bool BLEND_MODE_LIGHTEN 18
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19
//spec_const bool BLEND_MODE_LUMINOSITY 20
//spec_const bool BLEND_MODE_NEGATION 21
//spec_const bool BLEND_MODE_NOTBRIGHT 22
//spec_const bool BLEND_MODE_OVERLAY 23
//spec_const bool BLEND_MODE_PIN_LIGHT 24
//spec_const bool BLEND_MODE_REALISTIC 25
//spec_const bool BLEND_MODE_SATURATION 26
//spec_const bool BLEND_MODE_SOFT_LIGHT 27
//spec_const bool BLEND_MODE_SUBTRACT 28
//spec_const bool BLEND_MODE_VIVID_LIGHT 29
//spec_const bool ENABLE_BASE_TEX 30
//spec_const bool ENABLE_DETAIL_NORMAL 31
//spec_const bool ENABLE_EMISSIVE 32
//spec_const bool ENABLE_NORMALMAP 33
//spec_const bool ENABLE_OPACITY_TEX 34
//spec_const bool ENABLE_RECOLOR 35
//spec_const bool ENABLE_REFLECTION_MODULATION_TEX 36
//spec_const bool ENABLE_RIM_COLOR_TEX 37
//spec_const bool ENABLE_RIM_HIGHLIGHT 38
//spec_const bool ENABLE_RIM_INVERT 39
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 40
//spec_const bool ENABLE_UV2 41
//spec_const bool ENABLE_UV2_ANIMATION 42
//spec_const bool ENABLE_UV3 43
//spec_const bool ENABLE_UV3_ANIMATION 44
//spec_const bool SC_DISABLE_FRUSTUM_CULLING 45
//spec_const bool SC_GL_FRAGMENT_PRECISION_HIGH 46
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 47
//spec_const bool SC_USE_CLAMP_TO_BORDER_detailNormalTex 48
//spec_const bool SC_USE_CLAMP_TO_BORDER_emissiveTex 49
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 50
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 51
//spec_const bool SC_USE_CLAMP_TO_BORDER_opacityTex 52
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 53
//spec_const bool SC_USE_CLAMP_TO_BORDER_reflectionTex 54
//spec_const bool SC_USE_CLAMP_TO_BORDER_rimColorTex 55
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 56
//spec_const bool SC_USE_UV_MIN_MAX_detailNormalTex 57
//spec_const bool SC_USE_UV_MIN_MAX_emissiveTex 58
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 59
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 60
//spec_const bool SC_USE_UV_MIN_MAX_opacityTex 61
//spec_const bool SC_USE_UV_MIN_MAX_reflectionModulationTex 62
//spec_const bool SC_USE_UV_MIN_MAX_reflectionTex 63
//spec_const bool SC_USE_UV_MIN_MAX_rimColorTex 64
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 65
//spec_const bool SC_USE_UV_TRANSFORM_detailNormalTex 66
//spec_const bool SC_USE_UV_TRANSFORM_emissiveTex 67
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 68
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 69
//spec_const bool SC_USE_UV_TRANSFORM_opacityTex 70
//spec_const bool SC_USE_UV_TRANSFORM_reflectionModulationTex 71
//spec_const bool SC_USE_UV_TRANSFORM_reflectionTex 72
//spec_const bool SC_USE_UV_TRANSFORM_rimColorTex 73
//spec_const bool Tweak_N179 74
//spec_const bool UseViewSpaceDepthVariant 75
//spec_const bool baseTexHasSwappedViews 76
//spec_const bool detailNormalTexHasSwappedViews 77
//spec_const bool emissiveTexHasSwappedViews 78
//spec_const bool intensityTextureHasSwappedViews 79
//spec_const bool normalTexHasSwappedViews 80
//spec_const bool opacityTexHasSwappedViews 81
//spec_const bool reflectionModulationTexHasSwappedViews 82
//spec_const bool reflectionTexHasSwappedViews 83
//spec_const bool rimColorTexHasSwappedViews 84
//spec_const bool sc_BlendMode_Add 85
//spec_const bool sc_BlendMode_AddWithAlphaFactor 86
//spec_const bool sc_BlendMode_AlphaTest 87
//spec_const bool sc_BlendMode_AlphaToCoverage 88
//spec_const bool sc_BlendMode_ColoredGlass 89
//spec_const bool sc_BlendMode_Custom 90
//spec_const bool sc_BlendMode_Max 91
//spec_const bool sc_BlendMode_Min 92
//spec_const bool sc_BlendMode_Multiply 93
//spec_const bool sc_BlendMode_MultiplyOriginal 94
//spec_const bool sc_BlendMode_Normal 95
//spec_const bool sc_BlendMode_PremultipliedAlpha 96
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 97
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 98
//spec_const bool sc_BlendMode_Screen 99
//spec_const bool sc_BlendMode_Software 100
//spec_const bool sc_DepthOnly 101
//spec_const bool sc_FramebufferFetch 102
//spec_const bool sc_GetFramebufferColorInvalidUsageMarker 103
//spec_const bool sc_IsEditor 104
//spec_const bool sc_MotionVectorsPass 105
//spec_const bool sc_OITCompositingPass 106
//spec_const bool sc_OITDepthBoundsPass 107
//spec_const bool sc_OITDepthGatherPass 108
//spec_const bool sc_OITDepthPrepass 109
//spec_const bool sc_OITFrontLayerPass 110
//spec_const bool sc_OITMaxLayers4Plus1 111
//spec_const bool sc_OITMaxLayers8 112
//spec_const bool sc_OITMaxLayersVisualizeLayerCount 113
//spec_const bool sc_ProjectiveShadowsCaster 114
//spec_const bool sc_ProjectiveShadowsReceiver 115
//spec_const bool sc_RenderAlphaToColor 116
//spec_const bool sc_ScreenTextureHasSwappedViews 117
//spec_const bool sc_ShaderComplexityAnalyzer 118
//spec_const bool sc_TAAEnabled 119
//spec_const bool sc_UseFramebufferFetchMarker 120
//spec_const bool sc_VertexBlending 121
//spec_const bool sc_VertexBlendingUseNormals 122
//spec_const int NODE_13_DROPLIST_ITEM 123
//spec_const int NODE_181_DROPLIST_ITEM 124
//spec_const int NODE_184_DROPLIST_ITEM 125
//spec_const int NODE_228_DROPLIST_ITEM 126
//spec_const int NODE_27_DROPLIST_ITEM 127
//spec_const int NODE_315_DROPLIST_ITEM 128
//spec_const int NODE_38_DROPLIST_ITEM 129
//spec_const int NODE_49_DROPLIST_ITEM 130
//spec_const int NODE_69_DROPLIST_ITEM 131
//spec_const int NODE_76_DROPLIST_ITEM 132
//spec_const int SC_DEVICE_CLASS 133
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 134
//spec_const int SC_SOFTWARE_WRAP_MODE_U_detailNormalTex 135
//spec_const int SC_SOFTWARE_WRAP_MODE_U_emissiveTex 136
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 137
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 138
//spec_const int SC_SOFTWARE_WRAP_MODE_U_opacityTex 139
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex 140
//spec_const int SC_SOFTWARE_WRAP_MODE_U_reflectionTex 141
//spec_const int SC_SOFTWARE_WRAP_MODE_U_rimColorTex 142
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 143
//spec_const int SC_SOFTWARE_WRAP_MODE_V_detailNormalTex 144
//spec_const int SC_SOFTWARE_WRAP_MODE_V_emissiveTex 145
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 146
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 147
//spec_const int SC_SOFTWARE_WRAP_MODE_V_opacityTex 148
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex 149
//spec_const int SC_SOFTWARE_WRAP_MODE_V_reflectionTex 150
//spec_const int SC_SOFTWARE_WRAP_MODE_V_rimColorTex 151
//spec_const int baseTexLayout 152
//spec_const int detailNormalTexLayout 153
//spec_const int emissiveTexLayout 154
//spec_const int intensityTextureLayout 155
//spec_const int normalTexLayout 156
//spec_const int opacityTexLayout 157
//spec_const int reflectionModulationTexLayout 158
//spec_const int reflectionTexLayout 159
//spec_const int rimColorTexLayout 160
//spec_const int sc_DepthBufferMode 161
//spec_const int sc_RenderingSpace 162
//spec_const int sc_ScreenTextureLayout 163
//spec_const int sc_ShaderCacheConstant 164
//spec_const int sc_SkinBonesCount 165
//spec_const int sc_StereoRenderingMode 166
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 167
//spec_const int sc_StereoViewID 168
//SG_REFLECTION_END
#if defined VERTEX_SHADER
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_FLAG_IS_NORMAL_MAP normalTex
NGS_FLAG_IS_NORMAL_MAP detailNormalTex
NGS_BACKEND_SHADER_FLAGS_END__
#endif
#define sc_StereoRendering_Disabled 0
#define sc_StereoRendering_InstancedClipped 1
#define sc_StereoRendering_Multiview 2
#ifdef GL_ES
    #define SC_GLES_VERSION_20 2000
    #define SC_GLES_VERSION_30 3000
    #define SC_GLES_VERSION_31 3100
    #define SC_GLES_VERSION_32 3200
#endif
#ifdef VERTEX_SHADER
    #define scOutPos(clipPosition) gl_Position=clipPosition
    #define MAIN main
#endif
#ifdef SC_ENABLE_INSTANCED_RENDERING
    #ifndef sc_EnableInstancing
        #define sc_EnableInstancing 1
    #endif
#endif
#define mod(x,y) (x-y*floor((x+1e-6)/y))
#if defined(GL_ES)&&(__VERSION__<300)&&!defined(GL_OES_standard_derivatives)
#define dFdx(A) (A)
#define dFdy(A) (A)
#define fwidth(A) (A)
#endif
#if __VERSION__<300
#define isinf(x) (x!=0.0&&x*2.0==x ? true : false)
#define isnan(x) (x>0.0||x<0.0||x==0.0 ? false : true)
#define inverse(M) M
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef sc_EnableStereoClipDistance
        #if defined(GL_APPLE_clip_distance)
            #extension GL_APPLE_clip_distance : require
        #elif defined(GL_EXT_clip_cull_distance)
            #extension GL_EXT_clip_cull_distance : require
        #else
            #error Clip distance is requested but not supported by this device.
        #endif
    #endif
#else
    #ifdef sc_EnableStereoClipDistance
        #error Clip distance is requested but not supported by this device.
    #endif
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef VERTEX_SHADER
        #define attribute in
        #define varying out
    #endif
    #ifdef FRAGMENT_SHADER
        #define varying in
    #endif
    #define gl_FragColor sc_FragData0
    #define texture2D texture
    #define texture2DLod textureLod
    #define texture2DLodEXT textureLod
    #define textureCubeLodEXT textureLod
    #define sc_CanUseTextureLod 1
#else
    #ifdef FRAGMENT_SHADER
        #if defined(GL_EXT_shader_texture_lod)
            #extension GL_EXT_shader_texture_lod : require
            #define sc_CanUseTextureLod 1
            #define texture2DLod texture2DLodEXT
        #endif
    #endif
#endif
#if defined(sc_EnableMultiviewStereoRendering)
    #define sc_StereoRenderingMode sc_StereoRendering_Multiview
    #define sc_NumStereoViews 2
    #extension GL_OVR_multiview2 : require
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #define sc_LocalInstanceID sc_GlobalInstanceID
        #define sc_StereoViewID int(gl_ViewID_OVR)
    #endif
#elif defined(sc_EnableInstancedClippedStereoRendering)
    #ifndef sc_EnableInstancing
        #error Instanced-clipped stereo rendering requires enabled instancing.
    #endif
    #ifndef sc_EnableStereoClipDistance
        #define sc_StereoRendering_IsClipDistanceEnabled 0
    #else
        #define sc_StereoRendering_IsClipDistanceEnabled 1
    #endif
    #define sc_StereoRenderingMode sc_StereoRendering_InstancedClipped
    #define sc_NumStereoClipPlanes 1
    #define sc_NumStereoViews 2
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #ifdef sc_EnableFeatureLevelES3
            #define sc_LocalInstanceID (sc_GlobalInstanceID/2)
            #define sc_StereoViewID (sc_GlobalInstanceID%2)
        #else
            #define sc_LocalInstanceID int(sc_GlobalInstanceID/2.0)
            #define sc_StereoViewID int(mod(sc_GlobalInstanceID,2.0))
        #endif
    #endif
#else
    #define sc_StereoRenderingMode sc_StereoRendering_Disabled
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableInstancing
        #ifdef GL_ES
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)
                #define gl_InstanceID (0)
            #endif
        #else
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)&&!defined(GL_ARB_draw_instanced)&&!defined(GL_EXT_gpu_shader4)
                #define gl_InstanceID (0)
            #endif
        #endif
        #ifdef GL_ARB_draw_instanced
            #extension GL_ARB_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDARB
        #endif
        #ifdef GL_EXT_draw_instanced
            #extension GL_EXT_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDEXT
        #endif
        #ifndef sc_InstanceID
            #define sc_InstanceID gl_InstanceID
        #endif
        #ifndef sc_GlobalInstanceID
            #ifdef sc_EnableInstancingFallback
                #define sc_GlobalInstanceID (sc_FallbackInstanceID)
                #define sc_LocalInstanceID (sc_FallbackInstanceID)
            #else
                #define sc_GlobalInstanceID gl_InstanceID
                #define sc_LocalInstanceID gl_InstanceID
            #endif
        #endif
    #endif
#endif
#ifdef VERTEX_SHADER
    #if (__VERSION__<300)&&!defined(GL_EXT_gpu_shader4)
        #define gl_VertexID (0)
    #endif
#endif
#ifndef GL_ES
        #extension GL_EXT_gpu_shader4 : enable
    #extension GL_ARB_shader_texture_lod : enable
    #ifndef texture2DLodEXT
        #define texture2DLodEXT texture2DLod
    #endif
    #ifndef sc_CanUseTextureLod
    #define sc_CanUseTextureLod 1
    #endif
    #define precision
    #define lowp
    #define mediump
    #define highp
    #define sc_FragmentPrecision
#endif
#ifdef sc_EnableFeatureLevelES3
    #define sc_CanUseSampler2DArray 1
#endif
#if defined(sc_EnableFeatureLevelES2)&&defined(GL_ES)
    #ifdef FRAGMENT_SHADER
        #ifdef GL_OES_standard_derivatives
            #extension GL_OES_standard_derivatives : require
            #define sc_CanUseStandardDerivatives 1
        #endif
    #endif
    #ifdef GL_EXT_texture_array
        #extension GL_EXT_texture_array : require
        #define sc_CanUseSampler2DArray 1
    #else
        #define sc_CanUseSampler2DArray 0
    #endif
#endif
#ifdef GL_ES
    #ifdef sc_FramebufferFetch
        #if defined(GL_EXT_shader_framebuffer_fetch)
            #extension GL_EXT_shader_framebuffer_fetch : require
        #elif defined(GL_ARM_shader_framebuffer_fetch)
            #extension GL_ARM_shader_framebuffer_fetch : require
        #else
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #endif
    #ifdef GL_FRAGMENT_PRECISION_HIGH
        #define sc_FragmentPrecision highp
    #else
        #define sc_FragmentPrecision mediump
    #endif
    #ifdef FRAGMENT_SHADER
        precision highp int;
        precision highp float;
    #endif
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableMultiviewStereoRendering
        layout(num_views=sc_NumStereoViews) in;
    #endif
#endif
#if __VERSION__>100
    #define SC_INT_FALLBACK_FLOAT int
    #define SC_INTERPOLATION_FLAT flat
    #define SC_INTERPOLATION_CENTROID centroid
#else
    #define SC_INT_FALLBACK_FLOAT float
    #define SC_INTERPOLATION_FLAT
    #define SC_INTERPOLATION_CENTROID
#endif
#ifndef sc_NumStereoViews
    #define sc_NumStereoViews 1
#endif
#ifndef sc_CanUseSampler2DArray
    #define sc_CanUseSampler2DArray 0
#endif
    #if __VERSION__==100||defined(SCC_VALIDATION)
        #define sampler2DArray vec2
        #define sampler3D vec3
        #define samplerCube vec4
        vec4 texture3D(vec3 s,vec3 uv)                       { return vec4(0.0); }
        vec4 texture3D(vec3 s,vec3 uv,float bias)           { return vec4(0.0); }
        vec4 texture3DLod(vec3 s,vec3 uv,float bias)        { return vec4(0.0); }
        vec4 texture3DLodEXT(vec3 s,vec3 uv,float lod)      { return vec4(0.0); }
        vec4 texture2DArray(vec2 s,vec3 uv)                  { return vec4(0.0); }
        vec4 texture2DArray(vec2 s,vec3 uv,float bias)      { return vec4(0.0); }
        vec4 texture2DArrayLod(vec2 s,vec3 uv,float lod)    { return vec4(0.0); }
        vec4 texture2DArrayLodEXT(vec2 s,vec3 uv,float lod) { return vec4(0.0); }
        vec4 textureCube(vec4 s,vec3 uv)                     { return vec4(0.0); }
        vec4 textureCube(vec4 s,vec3 uv,float lod)          { return vec4(0.0); }
        vec4 textureCubeLod(vec4 s,vec3 uv,float lod)       { return vec4(0.0); }
        vec4 textureCubeLodEXT(vec4 s,vec3 uv,float lod)    { return vec4(0.0); }
        #if defined(VERTEX_SHADER)||!sc_CanUseTextureLod
            #define texture2DLod(s,uv,lod)      vec4(0.0)
            #define texture2DLodEXT(s,uv,lod)   vec4(0.0)
        #endif
    #elif __VERSION__>=300
        #define texture3D texture
        #define textureCube texture
        #define texture2DArray texture
        #define texture2DLod textureLod
        #define texture3DLod textureLod
        #define texture2DLodEXT textureLod
        #define texture3DLodEXT textureLod
        #define textureCubeLod textureLod
        #define textureCubeLodEXT textureLod
        #define texture2DArrayLod textureLod
        #define texture2DArrayLodEXT textureLod
    #endif
    #ifndef sc_TextureRenderingLayout_Regular
        #define sc_TextureRenderingLayout_Regular 0
        #define sc_TextureRenderingLayout_StereoInstancedClipped 1
        #define sc_TextureRenderingLayout_StereoMultiview 2
    #endif
    #define depthToGlobal   depthScreenToViewSpace
    #define depthToLocal    depthViewToScreenSpace
    #ifndef quantizeUV
        #define quantizeUV sc_QuantizeUV
        #define sc_platformUVFlip sc_PlatformFlipV
        #define sc_PlatformFlipUV sc_PlatformFlipV
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
struct sc_Vertex_t
{
vec4 position;
vec3 normal;
vec3 tangent;
vec2 texture0;
vec2 texture1;
};
#ifndef sc_StereoRenderingMode
#define sc_StereoRenderingMode 0
#endif
#ifndef sc_StereoViewID
#define sc_StereoViewID 0
#endif
#ifndef sc_RenderingSpace
#define sc_RenderingSpace -1
#endif
#ifndef sc_TAAEnabled
#define sc_TAAEnabled 0
#elif sc_TAAEnabled==1
#undef sc_TAAEnabled
#define sc_TAAEnabled 1
#endif
#ifndef sc_StereoRendering_IsClipDistanceEnabled
#define sc_StereoRendering_IsClipDistanceEnabled 0
#endif
#ifndef sc_NumStereoViews
#define sc_NumStereoViews 1
#endif
#ifndef sc_ShaderCacheConstant
#define sc_ShaderCacheConstant 0
#endif
#ifndef sc_SkinBonesCount
#define sc_SkinBonesCount 0
#endif
#ifndef sc_VertexBlending
#define sc_VertexBlending 0
#elif sc_VertexBlending==1
#undef sc_VertexBlending
#define sc_VertexBlending 1
#endif
#ifndef sc_VertexBlendingUseNormals
#define sc_VertexBlendingUseNormals 0
#elif sc_VertexBlendingUseNormals==1
#undef sc_VertexBlendingUseNormals
#define sc_VertexBlendingUseNormals 1
#endif
struct sc_Camera_t
{
vec3 position;
float aspect;
vec2 clipPlanes;
};
#ifndef sc_IsEditor
#define sc_IsEditor 0
#elif sc_IsEditor==1
#undef sc_IsEditor
#define sc_IsEditor 1
#endif
#ifndef SC_DISABLE_FRUSTUM_CULLING
#define SC_DISABLE_FRUSTUM_CULLING 0
#elif SC_DISABLE_FRUSTUM_CULLING==1
#undef SC_DISABLE_FRUSTUM_CULLING
#define SC_DISABLE_FRUSTUM_CULLING 1
#endif
#ifndef sc_DepthBufferMode
#define sc_DepthBufferMode 0
#endif
#ifndef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 0
#elif sc_ProjectiveShadowsReceiver==1
#undef sc_ProjectiveShadowsReceiver
#define sc_ProjectiveShadowsReceiver 1
#endif
#ifndef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 0
#elif sc_OITDepthGatherPass==1
#undef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 1
#endif
#ifndef sc_OITCompositingPass
#define sc_OITCompositingPass 0
#elif sc_OITCompositingPass==1
#undef sc_OITCompositingPass
#define sc_OITCompositingPass 1
#endif
#ifndef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 0
#elif sc_OITDepthBoundsPass==1
#undef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 1
#endif
#ifndef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#elif UseViewSpaceDepthVariant==1
#undef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#endif
#ifndef sc_PointLightsCount
#define sc_PointLightsCount 0
#endif
#ifndef sc_DirectionalLightsCount
#define sc_DirectionalLightsCount 0
#endif
#ifndef sc_AmbientLightsCount
#define sc_AmbientLightsCount 0
#endif
struct sc_PointLight_t
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
vec3 direction;
vec3 position;
vec4 color;
};
struct sc_DirectionalLight_t
{
vec3 direction;
vec4 color;
};
struct sc_AmbientLight_t
{
vec3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
vec3 color;
float sharpness;
vec3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
vec3 ambientLight;
};
uniform vec4 sc_EnvmapDiffuseDims;
uniform vec4 sc_EnvmapSpecularDims;
uniform vec4 sc_ScreenTextureDims;
uniform mat4 sc_ModelMatrix;
uniform mat4 sc_ProjectorMatrix;
uniform vec2 sc_TAAJitterOffset;
uniform vec4 sc_StereoClipPlanes[sc_NumStereoViews];
uniform vec4 sc_UniformConstants;
uniform vec4 sc_BoneMatrices[((sc_SkinBonesCount*3)+1)];
uniform mat3 sc_SkinBonesNormalMatrices[(sc_SkinBonesCount+1)];
uniform vec4 weights0;
uniform vec4 weights1;
uniform mat4 sc_ViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_ModelViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_ModelViewMatrixArray[sc_NumStereoViews];
uniform sc_Camera_t sc_Camera;
uniform mat4 sc_ProjectionMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ViewMatrixArray[sc_NumStereoViews];
uniform float sc_DisableFrustumCullingMarker;
uniform mat4 sc_ProjectionMatrixArray[sc_NumStereoViews];
uniform mat3 sc_NormalMatrix;
uniform vec4 intensityTextureDims;
uniform int PreviewEnabled;
uniform vec4 baseTexDims;
uniform vec4 emissiveTexDims;
uniform vec4 reflectionTexDims;
uniform vec4 normalTexDims;
uniform vec4 detailNormalTexDims;
uniform vec4 reflectionModulationTexDims;
uniform vec4 rimColorTexDims;
uniform vec4 opacityTexDims;
uniform int overrideTimeEnabled;
uniform float overrideTimeElapsed;
uniform vec4 sc_Time;
uniform float overrideTimeDelta;
uniform sc_PointLight_t sc_PointLights[(sc_PointLightsCount+1)];
uniform sc_DirectionalLight_t sc_DirectionalLights[(sc_DirectionalLightsCount+1)];
uniform sc_AmbientLight_t sc_AmbientLights[(sc_AmbientLightsCount+1)];
uniform sc_LightEstimationData_t sc_LightEstimationData;
uniform vec4 sc_EnvmapDiffuseSize;
uniform vec4 sc_EnvmapDiffuseView;
uniform vec4 sc_EnvmapSpecularSize;
uniform vec4 sc_EnvmapSpecularView;
uniform vec3 sc_EnvmapRotation;
uniform float sc_EnvmapExposure;
uniform vec3 sc_Sh[9];
uniform float sc_ShIntensity;
uniform vec4 sc_GeometryInfo;
uniform mat4 sc_ModelViewProjectionMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ViewProjectionMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ModelViewMatrixInverseArray[sc_NumStereoViews];
uniform mat3 sc_ViewNormalMatrixArray[sc_NumStereoViews];
uniform mat3 sc_ViewNormalMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ViewMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_PrevFrameViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_ModelMatrixInverse;
uniform mat3 sc_NormalMatrixInverse;
uniform mat4 sc_PrevFrameModelMatrix;
uniform mat4 sc_PrevFrameModelMatrixInverse;
uniform vec3 sc_LocalAabbMin;
uniform vec3 sc_LocalAabbMax;
uniform vec3 sc_WorldAabbMin;
uniform vec3 sc_WorldAabbMax;
uniform vec4 sc_WindowToViewportTransform;
uniform vec4 sc_CurrentRenderTargetDims;
uniform float sc_ShadowDensity;
uniform vec4 sc_ShadowColor;
uniform float _sc_GetFramebufferColorInvalidUsageMarker;
uniform float shaderComplexityValue;
uniform vec4 weights2;
uniform int sc_FallbackInstanceID;
uniform float _sc_framebufferFetchMarker;
uniform float strandWidth;
uniform float strandTaper;
uniform vec4 sc_StrandDataMapTextureSize;
uniform float clumpInstanceCount;
uniform float clumpRadius;
uniform float clumpTipScale;
uniform float hairstyleInstanceCount;
uniform float hairstyleNoise;
uniform vec4 sc_ScreenTextureSize;
uniform vec4 sc_ScreenTextureView;
uniform float correctedIntensity;
uniform vec4 intensityTextureSize;
uniform vec4 intensityTextureView;
uniform mat3 intensityTextureTransform;
uniform vec4 intensityTextureUvMinMax;
uniform vec4 intensityTextureBorderColor;
uniform float reflBlurWidth;
uniform float reflBlurMinRough;
uniform float reflBlurMaxRough;
uniform int PreviewNodeID;
uniform float alphaTestThreshold;
uniform vec3 recolorRed;
uniform vec4 baseColor;
uniform vec4 baseTexSize;
uniform vec4 baseTexView;
uniform mat3 baseTexTransform;
uniform vec4 baseTexUvMinMax;
uniform vec4 baseTexBorderColor;
uniform vec2 uv2Scale;
uniform vec2 uv2Offset;
uniform vec2 uv3Scale;
uniform vec2 uv3Offset;
uniform vec3 recolorGreen;
uniform vec3 recolorBlue;
uniform vec4 emissiveTexSize;
uniform vec4 emissiveTexView;
uniform mat3 emissiveTexTransform;
uniform vec4 emissiveTexUvMinMax;
uniform vec4 emissiveTexBorderColor;
uniform vec3 emissiveColor;
uniform float emissiveIntensity;
uniform float reflectionIntensity;
uniform vec4 reflectionTexSize;
uniform vec4 reflectionTexView;
uniform mat3 reflectionTexTransform;
uniform vec4 reflectionTexUvMinMax;
uniform vec4 reflectionTexBorderColor;
uniform vec4 normalTexSize;
uniform vec4 normalTexView;
uniform mat3 normalTexTransform;
uniform vec4 normalTexUvMinMax;
uniform vec4 normalTexBorderColor;
uniform vec4 detailNormalTexSize;
uniform vec4 detailNormalTexView;
uniform mat3 detailNormalTexTransform;
uniform vec4 detailNormalTexUvMinMax;
uniform vec4 detailNormalTexBorderColor;
uniform vec4 reflectionModulationTexSize;
uniform vec4 reflectionModulationTexView;
uniform mat3 reflectionModulationTexTransform;
uniform vec4 reflectionModulationTexUvMinMax;
uniform vec4 reflectionModulationTexBorderColor;
uniform vec3 rimColor;
uniform float rimIntensity;
uniform vec4 rimColorTexSize;
uniform vec4 rimColorTexView;
uniform mat3 rimColorTexTransform;
uniform vec4 rimColorTexUvMinMax;
uniform vec4 rimColorTexBorderColor;
uniform float rimExponent;
uniform vec4 opacityTexSize;
uniform vec4 opacityTexView;
uniform mat3 opacityTexTransform;
uniform vec4 opacityTexUvMinMax;
uniform vec4 opacityTexBorderColor;
uniform vec4 Port_Import_N042;
uniform float Port_Input1_N044;
uniform float Port_Import_N088;
uniform vec3 Port_Import_N089;
uniform vec4 Port_Import_N384;
uniform float Port_Import_N307;
uniform float Port_Import_N201;
uniform float Port_Import_N012;
uniform float Port_Import_N010;
uniform float Port_Import_N007;
uniform vec2 Port_Import_N008;
uniform vec2 Port_Import_N009;
uniform float Port_Speed_N022;
uniform vec2 Port_Import_N254;
uniform float Port_Import_N065;
uniform float Port_Import_N055;
uniform float Port_Import_N056;
uniform vec2 Port_Import_N000;
uniform vec2 Port_Import_N060;
uniform vec2 Port_Import_N061;
uniform float Port_Speed_N063;
uniform vec2 Port_Import_N255;
uniform vec4 Port_Default_N369;
uniform vec4 Port_Import_N092;
uniform vec3 Port_Import_N090;
uniform vec3 Port_Import_N091;
uniform vec3 Port_Import_N144;
uniform float Port_Value2_N073;
uniform float Port_Import_N273;
uniform float Port_Input1_N274;
uniform float Port_Import_N131;
uniform float Port_Import_N116;
uniform vec2 Port_Import_N120;
uniform vec2 Port_Import_N127;
uniform vec3 Port_Default_N132;
uniform vec3 Port_Import_N295;
uniform float Port_Import_N296;
uniform vec3 Port_Default_N097;
uniform float Port_Import_N133;
uniform float Port_Import_N231;
uniform float Port_Import_N336;
uniform float Port_Import_N160;
uniform vec2 Port_Import_N167;
uniform vec2 Port_Import_N207;
uniform float Port_Strength1_N200;
uniform float Port_Import_N095;
uniform float Port_Import_N108;
uniform vec3 Port_Default_N113;
uniform float Port_Strength2_N200;
uniform vec3 Port_Import_N327;
uniform vec3 Port_Input1_N257;
uniform vec3 Port_Import_N259;
uniform float Port_Input1_N264;
uniform float Port_Input1_N268;
uniform float Port_Input1_N270;
uniform float Port_Import_N123;
uniform float Port_Import_N025;
uniform vec2 Port_Import_N030;
uniform vec2 Port_Import_N031;
uniform vec3 Port_Default_N041;
uniform vec3 Port_Default_N134;
uniform vec3 Port_Import_N298;
uniform float Port_Import_N172;
uniform vec3 Port_Import_N318;
uniform float Port_Import_N319;
uniform float Port_Import_N171;
uniform float Port_Import_N135;
uniform vec2 Port_Import_N150;
uniform vec2 Port_Import_N152;
uniform vec3 Port_Default_N170;
uniform float Port_Import_N339;
uniform vec3 Port_Import_N328;
uniform float Port_Import_N340;
uniform vec3 Port_Default_N173;
uniform vec3 Port_Import_N306;
uniform vec4 Port_Import_N166;
uniform float Port_Import_N206;
uniform float Port_Import_N043;
uniform vec2 Port_Import_N151;
uniform vec2 Port_Import_N155;
uniform float Port_Default_N204;
uniform float Port_Import_N047;
uniform float Port_Input1_N036;
uniform float Port_Input2_N072;
varying float varClipDistance;
varying float varStereoViewID;
attribute vec4 boneData;
attribute vec3 blendShape0Pos;
attribute vec3 blendShape0Normal;
attribute vec3 blendShape1Pos;
attribute vec3 blendShape1Normal;
attribute vec3 blendShape2Pos;
attribute vec3 blendShape2Normal;
attribute vec3 blendShape3Pos;
attribute vec3 blendShape4Pos;
attribute vec3 blendShape5Pos;
attribute vec4 position;
attribute vec3 normal;
attribute vec4 tangent;
attribute vec2 texture0;
attribute vec2 texture1;
varying vec3 varPos;
varying vec3 varNormal;
varying vec4 varTangent;
varying vec4 varPackedTex;
varying vec4 varScreenPos;
varying vec2 varScreenTexturePos;
varying vec2 varShadowTex;
varying float varViewSpaceDepth;
varying vec4 varColor;
attribute vec4 color;
varying vec4 PreviewVertexColor;
varying float PreviewVertexSaved;
attribute vec3 positionNext;
attribute vec3 positionPrevious;
attribute vec4 strandProperties;
void blendTargetShapeWithNormal(inout sc_Vertex_t v,vec3 position_1,vec3 normal_1,float weight)
{
vec3 l9_0=v.position.xyz+(position_1*weight);
v=sc_Vertex_t(vec4(l9_0.x,l9_0.y,l9_0.z,v.position.w),v.normal,v.tangent,v.texture0,v.texture1);
v.normal+=(normal_1*weight);
}
void sc_GetBoneMatrix(int index,out vec4 m0,out vec4 m1,out vec4 m2)
{
int l9_0=3*index;
m0=sc_BoneMatrices[l9_0];
m1=sc_BoneMatrices[l9_0+1];
m2=sc_BoneMatrices[l9_0+2];
}
vec3 skinVertexPosition(int i,vec4 v)
{
vec3 l9_0;
#if (sc_SkinBonesCount>0)
{
vec4 param_1;
vec4 param_2;
vec4 param_3;
sc_GetBoneMatrix(i,param_1,param_2,param_3);
l9_0=vec3(dot(v,param_1),dot(v,param_2),dot(v,param_3));
}
#else
{
l9_0=v.xyz;
}
#endif
return l9_0;
}
int sc_GetStereoViewIndex()
{
int l9_0;
#if (sc_StereoRenderingMode==0)
{
l9_0=0;
}
#else
{
l9_0=sc_StereoViewID;
}
#endif
return l9_0;
}
void sc_SetClipDistancePlatform(float dstClipDistance)
{
    #if sc_StereoRenderingMode==sc_StereoRendering_InstancedClipped&&sc_StereoRendering_IsClipDistanceEnabled
        gl_ClipDistance[0]=dstClipDistance;
    #endif
}
void main()
{
PreviewVertexColor=vec4(0.5);
PreviewVertexSaved=0.0;
vec4 l9_0;
#if (sc_IsEditor&&SC_DISABLE_FRUSTUM_CULLING)
{
vec4 l9_1=position;
l9_1.x=position.x+sc_DisableFrustumCullingMarker;
l9_0=l9_1;
}
#else
{
l9_0=position;
}
#endif
vec2 l9_2;
vec2 l9_3;
vec3 l9_4;
vec3 l9_5;
vec4 l9_6;
#if (sc_VertexBlending)
{
vec2 l9_7;
vec2 l9_8;
vec3 l9_9;
vec3 l9_10;
vec4 l9_11;
#if (sc_VertexBlendingUseNormals)
{
sc_Vertex_t l9_12=sc_Vertex_t(l9_0,normal,tangent.xyz,texture0,texture1);
blendTargetShapeWithNormal(l9_12,blendShape0Pos,blendShape0Normal,weights0.x);
blendTargetShapeWithNormal(l9_12,blendShape1Pos,blendShape1Normal,weights0.y);
blendTargetShapeWithNormal(l9_12,blendShape2Pos,blendShape2Normal,weights0.z);
l9_11=l9_12.position;
l9_10=l9_12.normal;
l9_9=l9_12.tangent;
l9_8=l9_12.texture0;
l9_7=l9_12.texture1;
}
#else
{
vec3 l9_14=(((((l9_0.xyz+(blendShape0Pos*weights0.x)).xyz+(blendShape1Pos*weights0.y)).xyz+(blendShape2Pos*weights0.z)).xyz+(blendShape3Pos*weights0.w)).xyz+(blendShape4Pos*weights1.x)).xyz+(blendShape5Pos*weights1.y);
l9_11=vec4(l9_14.x,l9_14.y,l9_14.z,l9_0.w);
l9_10=normal;
l9_9=tangent.xyz;
l9_8=texture0;
l9_7=texture1;
}
#endif
l9_6=l9_11;
l9_5=l9_10;
l9_4=l9_9;
l9_3=l9_8;
l9_2=l9_7;
}
#else
{
l9_6=l9_0;
l9_5=normal;
l9_4=tangent.xyz;
l9_3=texture0;
l9_2=texture1;
}
#endif
vec3 l9_15;
vec3 l9_16;
vec4 l9_17;
#if (sc_SkinBonesCount>0)
{
vec4 l9_18;
#if (sc_SkinBonesCount>0)
{
vec4 l9_19=vec4(1.0,fract(boneData.yzw));
vec4 l9_20=l9_19;
l9_20.x=1.0-dot(l9_19.yzw,vec3(1.0));
l9_18=l9_20;
}
#else
{
l9_18=vec4(0.0);
}
#endif
int l9_21=int(boneData.x);
int l9_22=int(boneData.y);
int l9_23=int(boneData.z);
int l9_24=int(boneData.w);
vec3 l9_25=(((skinVertexPosition(l9_21,l9_6)*l9_18.x)+(skinVertexPosition(l9_22,l9_6)*l9_18.y))+(skinVertexPosition(l9_23,l9_6)*l9_18.z))+(skinVertexPosition(l9_24,l9_6)*l9_18.w);
l9_17=vec4(l9_25.x,l9_25.y,l9_25.z,l9_6.w);
l9_16=((((sc_SkinBonesNormalMatrices[l9_21]*l9_5)*l9_18.x)+((sc_SkinBonesNormalMatrices[l9_22]*l9_5)*l9_18.y))+((sc_SkinBonesNormalMatrices[l9_23]*l9_5)*l9_18.z))+((sc_SkinBonesNormalMatrices[l9_24]*l9_5)*l9_18.w);
l9_15=((((sc_SkinBonesNormalMatrices[l9_21]*l9_4)*l9_18.x)+((sc_SkinBonesNormalMatrices[l9_22]*l9_4)*l9_18.y))+((sc_SkinBonesNormalMatrices[l9_23]*l9_4)*l9_18.z))+((sc_SkinBonesNormalMatrices[l9_24]*l9_4)*l9_18.w);
}
#else
{
l9_17=l9_6;
l9_16=l9_5;
l9_15=l9_4;
}
#endif
#if (sc_RenderingSpace==3)
{
varPos=vec3(0.0);
varNormal=l9_16;
varTangent=vec4(l9_15.x,l9_15.y,l9_15.z,varTangent.w);
}
#else
{
#if (sc_RenderingSpace==4)
{
varPos=vec3(0.0);
varNormal=l9_16;
varTangent=vec4(l9_15.x,l9_15.y,l9_15.z,varTangent.w);
}
#else
{
#if (sc_RenderingSpace==2)
{
varPos=l9_17.xyz;
varNormal=l9_16;
varTangent=vec4(l9_15.x,l9_15.y,l9_15.z,varTangent.w);
}
#else
{
#if (sc_RenderingSpace==1)
{
varPos=(sc_ModelMatrix*l9_17).xyz;
varNormal=sc_NormalMatrix*l9_16;
vec3 l9_26=sc_NormalMatrix*l9_15;
varTangent=vec4(l9_26.x,l9_26.y,l9_26.z,varTangent.w);
}
#endif
}
#endif
}
#endif
}
#endif
bool l9_27=PreviewEnabled==1;
vec2 l9_28;
if (l9_27)
{
vec2 l9_29=l9_3;
l9_29.x=1.0-l9_3.x;
l9_28=l9_29;
}
else
{
l9_28=l9_3;
}
varColor=color;
vec3 l9_30=varPos;
vec3 l9_31=varNormal;
vec3 l9_32;
vec3 l9_33;
vec3 l9_34;
if (l9_27)
{
l9_34=varTangent.xyz;
l9_33=varNormal;
l9_32=varPos;
}
else
{
l9_34=varTangent.xyz;
l9_33=l9_31;
l9_32=l9_30;
}
varPos=l9_32;
varNormal=normalize(l9_33);
vec3 l9_35=normalize(l9_34);
varTangent=vec4(l9_35.x,l9_35.y,l9_35.z,varTangent.w);
varTangent.w=tangent.w;
#if (UseViewSpaceDepthVariant&&((sc_OITDepthGatherPass||sc_OITCompositingPass)||sc_OITDepthBoundsPass))
{
vec4 l9_36;
#if (sc_RenderingSpace==3)
{
l9_36=sc_ProjectionMatrixInverseArray[sc_GetStereoViewIndex()]*l9_17;
}
#else
{
vec4 l9_37;
#if (sc_RenderingSpace==2)
{
l9_37=sc_ViewMatrixArray[sc_GetStereoViewIndex()]*l9_17;
}
#else
{
vec4 l9_38;
#if (sc_RenderingSpace==1)
{
l9_38=sc_ModelViewMatrixArray[sc_GetStereoViewIndex()]*l9_17;
}
#else
{
l9_38=l9_17;
}
#endif
l9_37=l9_38;
}
#endif
l9_36=l9_37;
}
#endif
varViewSpaceDepth=-l9_36.z;
}
#endif
vec4 l9_39;
#if (sc_RenderingSpace==3)
{
l9_39=l9_17;
}
#else
{
vec4 l9_40;
#if (sc_RenderingSpace==4)
{
l9_40=(sc_ModelViewMatrixArray[sc_GetStereoViewIndex()]*l9_17)*vec4(1.0/sc_Camera.aspect,1.0,1.0,1.0);
}
#else
{
vec4 l9_41;
#if (sc_RenderingSpace==2)
{
l9_41=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*vec4(varPos,1.0);
}
#else
{
vec4 l9_42;
#if (sc_RenderingSpace==1)
{
l9_42=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*vec4(varPos,1.0);
}
#else
{
l9_42=vec4(0.0);
}
#endif
l9_41=l9_42;
}
#endif
l9_40=l9_41;
}
#endif
l9_39=l9_40;
}
#endif
varPackedTex=vec4(l9_28,l9_2);
#if (sc_ProjectiveShadowsReceiver)
{
vec4 l9_43;
#if (sc_RenderingSpace==1)
{
l9_43=sc_ModelMatrix*l9_17;
}
#else
{
l9_43=l9_17;
}
#endif
vec4 l9_44=sc_ProjectorMatrix*l9_43;
varShadowTex=((l9_44.xy/vec2(l9_44.w))*0.5)+vec2(0.5);
}
#endif
vec4 l9_45;
#if (sc_DepthBufferMode==1)
{
vec4 l9_46;
if (sc_ProjectionMatrixArray[sc_GetStereoViewIndex()][2].w!=0.0)
{
vec4 l9_47=l9_39;
l9_47.z=((log2(max(sc_Camera.clipPlanes.x,1.0+l9_39.w))*(2.0/log2(sc_Camera.clipPlanes.y+1.0)))-1.0)*l9_39.w;
l9_46=l9_47;
}
else
{
l9_46=l9_39;
}
l9_45=l9_46;
}
#else
{
l9_45=l9_39;
}
#endif
vec4 l9_48;
#if (sc_TAAEnabled)
{
vec2 l9_49=l9_45.xy+(sc_TAAJitterOffset*l9_45.w);
l9_48=vec4(l9_49.x,l9_49.y,l9_45.z,l9_45.w);
}
#else
{
l9_48=l9_45;
}
#endif
vec4 l9_50;
#if (sc_ShaderCacheConstant!=0)
{
vec4 l9_51=l9_48;
l9_51.x=l9_48.x+(sc_UniformConstants.x*float(sc_ShaderCacheConstant));
l9_50=l9_51;
}
#else
{
l9_50=l9_48;
}
#endif
#if (sc_StereoRenderingMode>0)
{
varStereoViewID=float(sc_StereoViewID);
}
#endif
#if (sc_StereoRenderingMode==1)
{
float l9_52=dot(l9_50,sc_StereoClipPlanes[sc_StereoViewID]);
#if (sc_StereoRendering_IsClipDistanceEnabled==1)
{
sc_SetClipDistancePlatform(l9_52);
}
#else
{
varClipDistance=l9_52;
}
#endif
}
#endif
gl_Position=l9_50;
}
#elif defined FRAGMENT_SHADER // #if defined VERTEX_SHADER
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_FLAG_IS_NORMAL_MAP normalTex
NGS_FLAG_IS_NORMAL_MAP detailNormalTex
NGS_BACKEND_SHADER_FLAGS_END__
#endif
#define sc_StereoRendering_Disabled 0
#define sc_StereoRendering_InstancedClipped 1
#define sc_StereoRendering_Multiview 2
#ifdef GL_ES
    #define SC_GLES_VERSION_20 2000
    #define SC_GLES_VERSION_30 3000
    #define SC_GLES_VERSION_31 3100
    #define SC_GLES_VERSION_32 3200
#endif
#ifdef VERTEX_SHADER
    #define scOutPos(clipPosition) gl_Position=clipPosition
    #define MAIN main
#endif
#ifdef SC_ENABLE_INSTANCED_RENDERING
    #ifndef sc_EnableInstancing
        #define sc_EnableInstancing 1
    #endif
#endif
#define mod(x,y) (x-y*floor((x+1e-6)/y))
#if defined(GL_ES)&&(__VERSION__<300)&&!defined(GL_OES_standard_derivatives)
#define dFdx(A) (A)
#define dFdy(A) (A)
#define fwidth(A) (A)
#endif
#if __VERSION__<300
#define isinf(x) (x!=0.0&&x*2.0==x ? true : false)
#define isnan(x) (x>0.0||x<0.0||x==0.0 ? false : true)
#define inverse(M) M
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef sc_EnableStereoClipDistance
        #if defined(GL_APPLE_clip_distance)
            #extension GL_APPLE_clip_distance : require
        #elif defined(GL_EXT_clip_cull_distance)
            #extension GL_EXT_clip_cull_distance : require
        #else
            #error Clip distance is requested but not supported by this device.
        #endif
    #endif
#else
    #ifdef sc_EnableStereoClipDistance
        #error Clip distance is requested but not supported by this device.
    #endif
#endif
#ifdef sc_EnableFeatureLevelES3
    #ifdef VERTEX_SHADER
        #define attribute in
        #define varying out
    #endif
    #ifdef FRAGMENT_SHADER
        #define varying in
    #endif
    #define gl_FragColor sc_FragData0
    #define texture2D texture
    #define texture2DLod textureLod
    #define texture2DLodEXT textureLod
    #define textureCubeLodEXT textureLod
    #define sc_CanUseTextureLod 1
#else
    #ifdef FRAGMENT_SHADER
        #if defined(GL_EXT_shader_texture_lod)
            #extension GL_EXT_shader_texture_lod : require
            #define sc_CanUseTextureLod 1
            #define texture2DLod texture2DLodEXT
        #endif
    #endif
#endif
#if defined(sc_EnableMultiviewStereoRendering)
    #define sc_StereoRenderingMode sc_StereoRendering_Multiview
    #define sc_NumStereoViews 2
    #extension GL_OVR_multiview2 : require
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #define sc_LocalInstanceID sc_GlobalInstanceID
        #define sc_StereoViewID int(gl_ViewID_OVR)
    #endif
#elif defined(sc_EnableInstancedClippedStereoRendering)
    #ifndef sc_EnableInstancing
        #error Instanced-clipped stereo rendering requires enabled instancing.
    #endif
    #ifndef sc_EnableStereoClipDistance
        #define sc_StereoRendering_IsClipDistanceEnabled 0
    #else
        #define sc_StereoRendering_IsClipDistanceEnabled 1
    #endif
    #define sc_StereoRenderingMode sc_StereoRendering_InstancedClipped
    #define sc_NumStereoClipPlanes 1
    #define sc_NumStereoViews 2
    #ifdef VERTEX_SHADER
        #ifdef sc_EnableInstancingFallback
            #define sc_GlobalInstanceID (sc_FallbackInstanceID*2+gl_InstanceID)
        #else
            #define sc_GlobalInstanceID gl_InstanceID
        #endif
        #ifdef sc_EnableFeatureLevelES3
            #define sc_LocalInstanceID (sc_GlobalInstanceID/2)
            #define sc_StereoViewID (sc_GlobalInstanceID%2)
        #else
            #define sc_LocalInstanceID int(sc_GlobalInstanceID/2.0)
            #define sc_StereoViewID int(mod(sc_GlobalInstanceID,2.0))
        #endif
    #endif
#else
    #define sc_StereoRenderingMode sc_StereoRendering_Disabled
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableInstancing
        #ifdef GL_ES
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)
                #define gl_InstanceID (0)
            #endif
        #else
            #if defined(sc_EnableFeatureLevelES2)&&!defined(GL_EXT_draw_instanced)&&!defined(GL_ARB_draw_instanced)&&!defined(GL_EXT_gpu_shader4)
                #define gl_InstanceID (0)
            #endif
        #endif
        #ifdef GL_ARB_draw_instanced
            #extension GL_ARB_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDARB
        #endif
        #ifdef GL_EXT_draw_instanced
            #extension GL_EXT_draw_instanced : require
            #define gl_InstanceID gl_InstanceIDEXT
        #endif
        #ifndef sc_InstanceID
            #define sc_InstanceID gl_InstanceID
        #endif
        #ifndef sc_GlobalInstanceID
            #ifdef sc_EnableInstancingFallback
                #define sc_GlobalInstanceID (sc_FallbackInstanceID)
                #define sc_LocalInstanceID (sc_FallbackInstanceID)
            #else
                #define sc_GlobalInstanceID gl_InstanceID
                #define sc_LocalInstanceID gl_InstanceID
            #endif
        #endif
    #endif
#endif
#ifdef VERTEX_SHADER
    #if (__VERSION__<300)&&!defined(GL_EXT_gpu_shader4)
        #define gl_VertexID (0)
    #endif
#endif
#ifndef GL_ES
        #extension GL_EXT_gpu_shader4 : enable
    #extension GL_ARB_shader_texture_lod : enable
    #ifndef texture2DLodEXT
        #define texture2DLodEXT texture2DLod
    #endif
    #ifndef sc_CanUseTextureLod
    #define sc_CanUseTextureLod 1
    #endif
    #define precision
    #define lowp
    #define mediump
    #define highp
    #define sc_FragmentPrecision
#endif
#ifdef sc_EnableFeatureLevelES3
    #define sc_CanUseSampler2DArray 1
#endif
#if defined(sc_EnableFeatureLevelES2)&&defined(GL_ES)
    #ifdef FRAGMENT_SHADER
        #ifdef GL_OES_standard_derivatives
            #extension GL_OES_standard_derivatives : require
            #define sc_CanUseStandardDerivatives 1
        #endif
    #endif
    #ifdef GL_EXT_texture_array
        #extension GL_EXT_texture_array : require
        #define sc_CanUseSampler2DArray 1
    #else
        #define sc_CanUseSampler2DArray 0
    #endif
#endif
#ifdef GL_ES
    #ifdef sc_FramebufferFetch
        #if defined(GL_EXT_shader_framebuffer_fetch)
            #extension GL_EXT_shader_framebuffer_fetch : require
        #elif defined(GL_ARM_shader_framebuffer_fetch)
            #extension GL_ARM_shader_framebuffer_fetch : require
        #else
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #endif
    #ifdef GL_FRAGMENT_PRECISION_HIGH
        #define sc_FragmentPrecision highp
    #else
        #define sc_FragmentPrecision mediump
    #endif
    #ifdef FRAGMENT_SHADER
        precision highp int;
        precision highp float;
    #endif
#endif
#ifdef VERTEX_SHADER
    #ifdef sc_EnableMultiviewStereoRendering
        layout(num_views=sc_NumStereoViews) in;
    #endif
#endif
#if __VERSION__>100
    #define SC_INT_FALLBACK_FLOAT int
    #define SC_INTERPOLATION_FLAT flat
    #define SC_INTERPOLATION_CENTROID centroid
#else
    #define SC_INT_FALLBACK_FLOAT float
    #define SC_INTERPOLATION_FLAT
    #define SC_INTERPOLATION_CENTROID
#endif
#ifndef sc_NumStereoViews
    #define sc_NumStereoViews 1
#endif
#ifndef sc_CanUseSampler2DArray
    #define sc_CanUseSampler2DArray 0
#endif
    #if __VERSION__==100||defined(SCC_VALIDATION)
        #define sampler2DArray vec2
        #define sampler3D vec3
        #define samplerCube vec4
        vec4 texture3D(vec3 s,vec3 uv)                       { return vec4(0.0); }
        vec4 texture3D(vec3 s,vec3 uv,float bias)           { return vec4(0.0); }
        vec4 texture3DLod(vec3 s,vec3 uv,float bias)        { return vec4(0.0); }
        vec4 texture3DLodEXT(vec3 s,vec3 uv,float lod)      { return vec4(0.0); }
        vec4 texture2DArray(vec2 s,vec3 uv)                  { return vec4(0.0); }
        vec4 texture2DArray(vec2 s,vec3 uv,float bias)      { return vec4(0.0); }
        vec4 texture2DArrayLod(vec2 s,vec3 uv,float lod)    { return vec4(0.0); }
        vec4 texture2DArrayLodEXT(vec2 s,vec3 uv,float lod) { return vec4(0.0); }
        vec4 textureCube(vec4 s,vec3 uv)                     { return vec4(0.0); }
        vec4 textureCube(vec4 s,vec3 uv,float lod)          { return vec4(0.0); }
        vec4 textureCubeLod(vec4 s,vec3 uv,float lod)       { return vec4(0.0); }
        vec4 textureCubeLodEXT(vec4 s,vec3 uv,float lod)    { return vec4(0.0); }
        #if defined(VERTEX_SHADER)||!sc_CanUseTextureLod
            #define texture2DLod(s,uv,lod)      vec4(0.0)
            #define texture2DLodEXT(s,uv,lod)   vec4(0.0)
        #endif
    #elif __VERSION__>=300
        #define texture3D texture
        #define textureCube texture
        #define texture2DArray texture
        #define texture2DLod textureLod
        #define texture3DLod textureLod
        #define texture2DLodEXT textureLod
        #define texture3DLodEXT textureLod
        #define textureCubeLod textureLod
        #define textureCubeLodEXT textureLod
        #define texture2DArrayLod textureLod
        #define texture2DArrayLodEXT textureLod
    #endif
    #ifndef sc_TextureRenderingLayout_Regular
        #define sc_TextureRenderingLayout_Regular 0
        #define sc_TextureRenderingLayout_StereoInstancedClipped 1
        #define sc_TextureRenderingLayout_StereoMultiview 2
    #endif
    #define depthToGlobal   depthScreenToViewSpace
    #define depthToLocal    depthViewToScreenSpace
    #ifndef quantizeUV
        #define quantizeUV sc_QuantizeUV
        #define sc_platformUVFlip sc_PlatformFlipV
        #define sc_PlatformFlipUV sc_PlatformFlipV
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
#if sc_ExporterVersion<224
#define MAIN main
#endif
    #ifndef sc_FramebufferFetch
    #define sc_FramebufferFetch 0
    #elif sc_FramebufferFetch==1
    #undef sc_FramebufferFetch
    #define sc_FramebufferFetch 1
    #endif
    #if !defined(GL_ES)&&__VERSION__<420
        #ifdef FRAGMENT_SHADER
            #define sc_FragData0 gl_FragData[0]
            #define sc_FragData1 gl_FragData[1]
            #define sc_FragData2 gl_FragData[2]
            #define sc_FragData3 gl_FragData[3]
        #endif
        mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
        #define gl_LastFragData (getFragData())
        #if sc_FramebufferFetch
            #error Framebuffer fetch is requested but not supported by this device.
        #endif
    #elif defined(sc_EnableFeatureLevelES3)
        #if sc_FragDataCount>=1
            #define sc_DeclareFragData0(StorageQualifier) layout(location=0) StorageQualifier sc_FragmentPrecision vec4 sc_FragData0
        #endif
        #if sc_FragDataCount>=2
            #define sc_DeclareFragData1(StorageQualifier) layout(location=1) StorageQualifier sc_FragmentPrecision vec4 sc_FragData1
        #endif
        #if sc_FragDataCount>=3
            #define sc_DeclareFragData2(StorageQualifier) layout(location=2) StorageQualifier sc_FragmentPrecision vec4 sc_FragData2
        #endif
        #if sc_FragDataCount>=4
            #define sc_DeclareFragData3(StorageQualifier) layout(location=3) StorageQualifier sc_FragmentPrecision vec4 sc_FragData3
        #endif
        #ifndef sc_DeclareFragData0
            #define sc_DeclareFragData0(_) const vec4 sc_FragData0=vec4(0.0)
        #endif
        #ifndef sc_DeclareFragData1
            #define sc_DeclareFragData1(_) const vec4 sc_FragData1=vec4(0.0)
        #endif
        #ifndef sc_DeclareFragData2
            #define sc_DeclareFragData2(_) const vec4 sc_FragData2=vec4(0.0)
        #endif
        #ifndef sc_DeclareFragData3
            #define sc_DeclareFragData3(_) const vec4 sc_FragData3=vec4(0.0)
        #endif
        #if sc_FramebufferFetch
            #ifdef GL_EXT_shader_framebuffer_fetch
                sc_DeclareFragData0(inout);
                sc_DeclareFragData1(inout);
                sc_DeclareFragData2(inout);
                sc_DeclareFragData3(inout);
                mediump mat4 getFragData() { return mat4(sc_FragData0,sc_FragData1,sc_FragData2,sc_FragData3); }
                #define gl_LastFragData (getFragData())
            #elif defined(GL_ARM_shader_framebuffer_fetch)
                sc_DeclareFragData0(out);
                sc_DeclareFragData1(out);
                sc_DeclareFragData2(out);
                sc_DeclareFragData3(out);
                mediump mat4 getFragData() { return mat4(gl_LastFragColorARM,vec4(0.0),vec4(0.0),vec4(0.0)); }
                #define gl_LastFragData (getFragData())
            #endif
        #else
            #ifdef sc_EnableFeatureLevelES3
                sc_DeclareFragData0(out);
                sc_DeclareFragData1(out);
                sc_DeclareFragData2(out);
                sc_DeclareFragData3(out);
                mediump mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
                #define gl_LastFragData (getFragData())
            #endif
        #endif
    #elif defined(sc_EnableFeatureLevelES2)
        #define sc_FragData0 gl_FragColor
        mediump mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
    #else
        #define sc_FragData0 gl_FragColor
        mediump mat4 getFragData() { return mat4(vec4(0.0),vec4(0.0),vec4(0.0),vec4(0.0)); }
    #endif
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
vec4 VertexColor;
vec2 Surface_UVCoord0;
vec2 Surface_UVCoord1;
vec2 gScreenCoord;
vec3 ViewDirWS;
vec3 SurfacePosition_WorldSpace;
vec3 VertexTangent_WorldSpace;
vec3 VertexNormal_WorldSpace;
vec3 VertexBinormal_WorldSpace;
};
#ifndef sc_StereoRenderingMode
#define sc_StereoRenderingMode 0
#endif
#ifndef sc_ScreenTextureHasSwappedViews
#define sc_ScreenTextureHasSwappedViews 0
#elif sc_ScreenTextureHasSwappedViews==1
#undef sc_ScreenTextureHasSwappedViews
#define sc_ScreenTextureHasSwappedViews 1
#endif
#ifndef sc_ScreenTextureLayout
#define sc_ScreenTextureLayout 0
#endif
#ifndef sc_NumStereoViews
#define sc_NumStereoViews 1
#endif
#ifndef sc_BlendMode_Normal
#define sc_BlendMode_Normal 0
#elif sc_BlendMode_Normal==1
#undef sc_BlendMode_Normal
#define sc_BlendMode_Normal 1
#endif
#ifndef sc_BlendMode_AlphaToCoverage
#define sc_BlendMode_AlphaToCoverage 0
#elif sc_BlendMode_AlphaToCoverage==1
#undef sc_BlendMode_AlphaToCoverage
#define sc_BlendMode_AlphaToCoverage 1
#endif
#ifndef sc_BlendMode_PremultipliedAlphaHardware
#define sc_BlendMode_PremultipliedAlphaHardware 0
#elif sc_BlendMode_PremultipliedAlphaHardware==1
#undef sc_BlendMode_PremultipliedAlphaHardware
#define sc_BlendMode_PremultipliedAlphaHardware 1
#endif
#ifndef sc_BlendMode_PremultipliedAlphaAuto
#define sc_BlendMode_PremultipliedAlphaAuto 0
#elif sc_BlendMode_PremultipliedAlphaAuto==1
#undef sc_BlendMode_PremultipliedAlphaAuto
#define sc_BlendMode_PremultipliedAlphaAuto 1
#endif
#ifndef sc_BlendMode_PremultipliedAlpha
#define sc_BlendMode_PremultipliedAlpha 0
#elif sc_BlendMode_PremultipliedAlpha==1
#undef sc_BlendMode_PremultipliedAlpha
#define sc_BlendMode_PremultipliedAlpha 1
#endif
#ifndef sc_BlendMode_AddWithAlphaFactor
#define sc_BlendMode_AddWithAlphaFactor 0
#elif sc_BlendMode_AddWithAlphaFactor==1
#undef sc_BlendMode_AddWithAlphaFactor
#define sc_BlendMode_AddWithAlphaFactor 1
#endif
#ifndef sc_BlendMode_AlphaTest
#define sc_BlendMode_AlphaTest 0
#elif sc_BlendMode_AlphaTest==1
#undef sc_BlendMode_AlphaTest
#define sc_BlendMode_AlphaTest 1
#endif
#ifndef sc_BlendMode_Multiply
#define sc_BlendMode_Multiply 0
#elif sc_BlendMode_Multiply==1
#undef sc_BlendMode_Multiply
#define sc_BlendMode_Multiply 1
#endif
#ifndef sc_BlendMode_MultiplyOriginal
#define sc_BlendMode_MultiplyOriginal 0
#elif sc_BlendMode_MultiplyOriginal==1
#undef sc_BlendMode_MultiplyOriginal
#define sc_BlendMode_MultiplyOriginal 1
#endif
#ifndef sc_BlendMode_ColoredGlass
#define sc_BlendMode_ColoredGlass 0
#elif sc_BlendMode_ColoredGlass==1
#undef sc_BlendMode_ColoredGlass
#define sc_BlendMode_ColoredGlass 1
#endif
#ifndef sc_BlendMode_Add
#define sc_BlendMode_Add 0
#elif sc_BlendMode_Add==1
#undef sc_BlendMode_Add
#define sc_BlendMode_Add 1
#endif
#ifndef sc_BlendMode_Screen
#define sc_BlendMode_Screen 0
#elif sc_BlendMode_Screen==1
#undef sc_BlendMode_Screen
#define sc_BlendMode_Screen 1
#endif
#ifndef sc_BlendMode_Min
#define sc_BlendMode_Min 0
#elif sc_BlendMode_Min==1
#undef sc_BlendMode_Min
#define sc_BlendMode_Min 1
#endif
#ifndef sc_BlendMode_Max
#define sc_BlendMode_Max 0
#elif sc_BlendMode_Max==1
#undef sc_BlendMode_Max
#define sc_BlendMode_Max 1
#endif
#ifndef sc_MotionVectorsPass
#define sc_MotionVectorsPass 0
#elif sc_MotionVectorsPass==1
#undef sc_MotionVectorsPass
#define sc_MotionVectorsPass 1
#endif
#ifndef sc_StereoRendering_IsClipDistanceEnabled
#define sc_StereoRendering_IsClipDistanceEnabled 0
#endif
#ifndef sc_ShaderComplexityAnalyzer
#define sc_ShaderComplexityAnalyzer 0
#elif sc_ShaderComplexityAnalyzer==1
#undef sc_ShaderComplexityAnalyzer
#define sc_ShaderComplexityAnalyzer 1
#endif
#ifndef sc_UseFramebufferFetchMarker
#define sc_UseFramebufferFetchMarker 0
#elif sc_UseFramebufferFetchMarker==1
#undef sc_UseFramebufferFetchMarker
#define sc_UseFramebufferFetchMarker 1
#endif
#ifndef sc_FramebufferFetch
#define sc_FramebufferFetch 0
#elif sc_FramebufferFetch==1
#undef sc_FramebufferFetch
#define sc_FramebufferFetch 1
#endif
#ifndef sc_IsEditor
#define sc_IsEditor 0
#elif sc_IsEditor==1
#undef sc_IsEditor
#define sc_IsEditor 1
#endif
#ifndef sc_GetFramebufferColorInvalidUsageMarker
#define sc_GetFramebufferColorInvalidUsageMarker 0
#elif sc_GetFramebufferColorInvalidUsageMarker==1
#undef sc_GetFramebufferColorInvalidUsageMarker
#define sc_GetFramebufferColorInvalidUsageMarker 1
#endif
#ifndef sc_BlendMode_Software
#define sc_BlendMode_Software 0
#elif sc_BlendMode_Software==1
#undef sc_BlendMode_Software
#define sc_BlendMode_Software 1
#endif
#ifndef intensityTextureHasSwappedViews
#define intensityTextureHasSwappedViews 0
#elif intensityTextureHasSwappedViews==1
#undef intensityTextureHasSwappedViews
#define intensityTextureHasSwappedViews 1
#endif
#ifndef intensityTextureLayout
#define intensityTextureLayout 0
#endif
#ifndef BLEND_MODE_REALISTIC
#define BLEND_MODE_REALISTIC 0
#elif BLEND_MODE_REALISTIC==1
#undef BLEND_MODE_REALISTIC
#define BLEND_MODE_REALISTIC 1
#endif
#ifndef BLEND_MODE_FORGRAY
#define BLEND_MODE_FORGRAY 0
#elif BLEND_MODE_FORGRAY==1
#undef BLEND_MODE_FORGRAY
#define BLEND_MODE_FORGRAY 1
#endif
#ifndef BLEND_MODE_NOTBRIGHT
#define BLEND_MODE_NOTBRIGHT 0
#elif BLEND_MODE_NOTBRIGHT==1
#undef BLEND_MODE_NOTBRIGHT
#define BLEND_MODE_NOTBRIGHT 1
#endif
#ifndef BLEND_MODE_DIVISION
#define BLEND_MODE_DIVISION 0
#elif BLEND_MODE_DIVISION==1
#undef BLEND_MODE_DIVISION
#define BLEND_MODE_DIVISION 1
#endif
#ifndef BLEND_MODE_BRIGHT
#define BLEND_MODE_BRIGHT 0
#elif BLEND_MODE_BRIGHT==1
#undef BLEND_MODE_BRIGHT
#define BLEND_MODE_BRIGHT 1
#endif
#ifndef BLEND_MODE_INTENSE
#define BLEND_MODE_INTENSE 0
#elif BLEND_MODE_INTENSE==1
#undef BLEND_MODE_INTENSE
#define BLEND_MODE_INTENSE 1
#endif
#ifndef SC_USE_UV_TRANSFORM_intensityTexture
#define SC_USE_UV_TRANSFORM_intensityTexture 0
#elif SC_USE_UV_TRANSFORM_intensityTexture==1
#undef SC_USE_UV_TRANSFORM_intensityTexture
#define SC_USE_UV_TRANSFORM_intensityTexture 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_intensityTexture
#define SC_SOFTWARE_WRAP_MODE_U_intensityTexture -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_intensityTexture
#define SC_SOFTWARE_WRAP_MODE_V_intensityTexture -1
#endif
#ifndef SC_USE_UV_MIN_MAX_intensityTexture
#define SC_USE_UV_MIN_MAX_intensityTexture 0
#elif SC_USE_UV_MIN_MAX_intensityTexture==1
#undef SC_USE_UV_MIN_MAX_intensityTexture
#define SC_USE_UV_MIN_MAX_intensityTexture 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_intensityTexture
#define SC_USE_CLAMP_TO_BORDER_intensityTexture 0
#elif SC_USE_CLAMP_TO_BORDER_intensityTexture==1
#undef SC_USE_CLAMP_TO_BORDER_intensityTexture
#define SC_USE_CLAMP_TO_BORDER_intensityTexture 1
#endif
#ifndef BLEND_MODE_LIGHTEN
#define BLEND_MODE_LIGHTEN 0
#elif BLEND_MODE_LIGHTEN==1
#undef BLEND_MODE_LIGHTEN
#define BLEND_MODE_LIGHTEN 1
#endif
#ifndef BLEND_MODE_DARKEN
#define BLEND_MODE_DARKEN 0
#elif BLEND_MODE_DARKEN==1
#undef BLEND_MODE_DARKEN
#define BLEND_MODE_DARKEN 1
#endif
#ifndef BLEND_MODE_DIVIDE
#define BLEND_MODE_DIVIDE 0
#elif BLEND_MODE_DIVIDE==1
#undef BLEND_MODE_DIVIDE
#define BLEND_MODE_DIVIDE 1
#endif
#ifndef BLEND_MODE_AVERAGE
#define BLEND_MODE_AVERAGE 0
#elif BLEND_MODE_AVERAGE==1
#undef BLEND_MODE_AVERAGE
#define BLEND_MODE_AVERAGE 1
#endif
#ifndef BLEND_MODE_SUBTRACT
#define BLEND_MODE_SUBTRACT 0
#elif BLEND_MODE_SUBTRACT==1
#undef BLEND_MODE_SUBTRACT
#define BLEND_MODE_SUBTRACT 1
#endif
#ifndef BLEND_MODE_DIFFERENCE
#define BLEND_MODE_DIFFERENCE 0
#elif BLEND_MODE_DIFFERENCE==1
#undef BLEND_MODE_DIFFERENCE
#define BLEND_MODE_DIFFERENCE 1
#endif
#ifndef BLEND_MODE_NEGATION
#define BLEND_MODE_NEGATION 0
#elif BLEND_MODE_NEGATION==1
#undef BLEND_MODE_NEGATION
#define BLEND_MODE_NEGATION 1
#endif
#ifndef BLEND_MODE_EXCLUSION
#define BLEND_MODE_EXCLUSION 0
#elif BLEND_MODE_EXCLUSION==1
#undef BLEND_MODE_EXCLUSION
#define BLEND_MODE_EXCLUSION 1
#endif
#ifndef BLEND_MODE_OVERLAY
#define BLEND_MODE_OVERLAY 0
#elif BLEND_MODE_OVERLAY==1
#undef BLEND_MODE_OVERLAY
#define BLEND_MODE_OVERLAY 1
#endif
#ifndef BLEND_MODE_SOFT_LIGHT
#define BLEND_MODE_SOFT_LIGHT 0
#elif BLEND_MODE_SOFT_LIGHT==1
#undef BLEND_MODE_SOFT_LIGHT
#define BLEND_MODE_SOFT_LIGHT 1
#endif
#ifndef BLEND_MODE_HARD_LIGHT
#define BLEND_MODE_HARD_LIGHT 0
#elif BLEND_MODE_HARD_LIGHT==1
#undef BLEND_MODE_HARD_LIGHT
#define BLEND_MODE_HARD_LIGHT 1
#endif
#ifndef BLEND_MODE_COLOR_DODGE
#define BLEND_MODE_COLOR_DODGE 0
#elif BLEND_MODE_COLOR_DODGE==1
#undef BLEND_MODE_COLOR_DODGE
#define BLEND_MODE_COLOR_DODGE 1
#endif
#ifndef BLEND_MODE_COLOR_BURN
#define BLEND_MODE_COLOR_BURN 0
#elif BLEND_MODE_COLOR_BURN==1
#undef BLEND_MODE_COLOR_BURN
#define BLEND_MODE_COLOR_BURN 1
#endif
#ifndef BLEND_MODE_LINEAR_LIGHT
#define BLEND_MODE_LINEAR_LIGHT 0
#elif BLEND_MODE_LINEAR_LIGHT==1
#undef BLEND_MODE_LINEAR_LIGHT
#define BLEND_MODE_LINEAR_LIGHT 1
#endif
#ifndef BLEND_MODE_VIVID_LIGHT
#define BLEND_MODE_VIVID_LIGHT 0
#elif BLEND_MODE_VIVID_LIGHT==1
#undef BLEND_MODE_VIVID_LIGHT
#define BLEND_MODE_VIVID_LIGHT 1
#endif
#ifndef BLEND_MODE_PIN_LIGHT
#define BLEND_MODE_PIN_LIGHT 0
#elif BLEND_MODE_PIN_LIGHT==1
#undef BLEND_MODE_PIN_LIGHT
#define BLEND_MODE_PIN_LIGHT 1
#endif
#ifndef BLEND_MODE_HARD_MIX
#define BLEND_MODE_HARD_MIX 0
#elif BLEND_MODE_HARD_MIX==1
#undef BLEND_MODE_HARD_MIX
#define BLEND_MODE_HARD_MIX 1
#endif
#ifndef BLEND_MODE_HARD_REFLECT
#define BLEND_MODE_HARD_REFLECT 0
#elif BLEND_MODE_HARD_REFLECT==1
#undef BLEND_MODE_HARD_REFLECT
#define BLEND_MODE_HARD_REFLECT 1
#endif
#ifndef BLEND_MODE_HARD_GLOW
#define BLEND_MODE_HARD_GLOW 0
#elif BLEND_MODE_HARD_GLOW==1
#undef BLEND_MODE_HARD_GLOW
#define BLEND_MODE_HARD_GLOW 1
#endif
#ifndef BLEND_MODE_HARD_PHOENIX
#define BLEND_MODE_HARD_PHOENIX 0
#elif BLEND_MODE_HARD_PHOENIX==1
#undef BLEND_MODE_HARD_PHOENIX
#define BLEND_MODE_HARD_PHOENIX 1
#endif
#ifndef BLEND_MODE_HUE
#define BLEND_MODE_HUE 0
#elif BLEND_MODE_HUE==1
#undef BLEND_MODE_HUE
#define BLEND_MODE_HUE 1
#endif
#ifndef BLEND_MODE_SATURATION
#define BLEND_MODE_SATURATION 0
#elif BLEND_MODE_SATURATION==1
#undef BLEND_MODE_SATURATION
#define BLEND_MODE_SATURATION 1
#endif
#ifndef BLEND_MODE_COLOR
#define BLEND_MODE_COLOR 0
#elif BLEND_MODE_COLOR==1
#undef BLEND_MODE_COLOR
#define BLEND_MODE_COLOR 1
#endif
#ifndef BLEND_MODE_LUMINOSITY
#define BLEND_MODE_LUMINOSITY 0
#elif BLEND_MODE_LUMINOSITY==1
#undef BLEND_MODE_LUMINOSITY
#define BLEND_MODE_LUMINOSITY 1
#endif
#ifndef sc_SkinBonesCount
#define sc_SkinBonesCount 0
#endif
#ifndef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#elif UseViewSpaceDepthVariant==1
#undef UseViewSpaceDepthVariant
#define UseViewSpaceDepthVariant 1
#endif
#ifndef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 0
#elif sc_OITDepthGatherPass==1
#undef sc_OITDepthGatherPass
#define sc_OITDepthGatherPass 1
#endif
#ifndef sc_OITCompositingPass
#define sc_OITCompositingPass 0
#elif sc_OITCompositingPass==1
#undef sc_OITCompositingPass
#define sc_OITCompositingPass 1
#endif
#ifndef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 0
#elif sc_OITDepthBoundsPass==1
#undef sc_OITDepthBoundsPass
#define sc_OITDepthBoundsPass 1
#endif
#ifndef sc_OITMaxLayers4Plus1
#define sc_OITMaxLayers4Plus1 0
#elif sc_OITMaxLayers4Plus1==1
#undef sc_OITMaxLayers4Plus1
#define sc_OITMaxLayers4Plus1 1
#endif
#ifndef sc_OITMaxLayersVisualizeLayerCount
#define sc_OITMaxLayersVisualizeLayerCount 0
#elif sc_OITMaxLayersVisualizeLayerCount==1
#undef sc_OITMaxLayersVisualizeLayerCount
#define sc_OITMaxLayersVisualizeLayerCount 1
#endif
#ifndef sc_OITMaxLayers8
#define sc_OITMaxLayers8 0
#elif sc_OITMaxLayers8==1
#undef sc_OITMaxLayers8
#define sc_OITMaxLayers8 1
#endif
#ifndef sc_OITFrontLayerPass
#define sc_OITFrontLayerPass 0
#elif sc_OITFrontLayerPass==1
#undef sc_OITFrontLayerPass
#define sc_OITFrontLayerPass 1
#endif
#ifndef sc_OITDepthPrepass
#define sc_OITDepthPrepass 0
#elif sc_OITDepthPrepass==1
#undef sc_OITDepthPrepass
#define sc_OITDepthPrepass 1
#endif
#ifndef SC_DEVICE_CLASS
#define SC_DEVICE_CLASS -1
#endif
#ifndef SC_GL_FRAGMENT_PRECISION_HIGH
#define SC_GL_FRAGMENT_PRECISION_HIGH 0
#elif SC_GL_FRAGMENT_PRECISION_HIGH==1
#undef SC_GL_FRAGMENT_PRECISION_HIGH
#define SC_GL_FRAGMENT_PRECISION_HIGH 1
#endif
#ifndef ENABLE_STIPPLE_PATTERN_TEST
#define ENABLE_STIPPLE_PATTERN_TEST 0
#elif ENABLE_STIPPLE_PATTERN_TEST==1
#undef ENABLE_STIPPLE_PATTERN_TEST
#define ENABLE_STIPPLE_PATTERN_TEST 1
#endif
#ifndef sc_ProjectiveShadowsCaster
#define sc_ProjectiveShadowsCaster 0
#elif sc_ProjectiveShadowsCaster==1
#undef sc_ProjectiveShadowsCaster
#define sc_ProjectiveShadowsCaster 1
#endif
#ifndef sc_RenderAlphaToColor
#define sc_RenderAlphaToColor 0
#elif sc_RenderAlphaToColor==1
#undef sc_RenderAlphaToColor
#define sc_RenderAlphaToColor 1
#endif
#ifndef sc_BlendMode_Custom
#define sc_BlendMode_Custom 0
#elif sc_BlendMode_Custom==1
#undef sc_BlendMode_Custom
#define sc_BlendMode_Custom 1
#endif
#ifndef baseTexHasSwappedViews
#define baseTexHasSwappedViews 0
#elif baseTexHasSwappedViews==1
#undef baseTexHasSwappedViews
#define baseTexHasSwappedViews 1
#endif
#ifndef baseTexLayout
#define baseTexLayout 0
#endif
#ifndef emissiveTexHasSwappedViews
#define emissiveTexHasSwappedViews 0
#elif emissiveTexHasSwappedViews==1
#undef emissiveTexHasSwappedViews
#define emissiveTexHasSwappedViews 1
#endif
#ifndef emissiveTexLayout
#define emissiveTexLayout 0
#endif
#ifndef reflectionTexHasSwappedViews
#define reflectionTexHasSwappedViews 0
#elif reflectionTexHasSwappedViews==1
#undef reflectionTexHasSwappedViews
#define reflectionTexHasSwappedViews 1
#endif
#ifndef reflectionTexLayout
#define reflectionTexLayout 0
#endif
#ifndef normalTexHasSwappedViews
#define normalTexHasSwappedViews 0
#elif normalTexHasSwappedViews==1
#undef normalTexHasSwappedViews
#define normalTexHasSwappedViews 1
#endif
#ifndef normalTexLayout
#define normalTexLayout 0
#endif
#ifndef detailNormalTexHasSwappedViews
#define detailNormalTexHasSwappedViews 0
#elif detailNormalTexHasSwappedViews==1
#undef detailNormalTexHasSwappedViews
#define detailNormalTexHasSwappedViews 1
#endif
#ifndef detailNormalTexLayout
#define detailNormalTexLayout 0
#endif
#ifndef reflectionModulationTexHasSwappedViews
#define reflectionModulationTexHasSwappedViews 0
#elif reflectionModulationTexHasSwappedViews==1
#undef reflectionModulationTexHasSwappedViews
#define reflectionModulationTexHasSwappedViews 1
#endif
#ifndef reflectionModulationTexLayout
#define reflectionModulationTexLayout 0
#endif
#ifndef rimColorTexHasSwappedViews
#define rimColorTexHasSwappedViews 0
#elif rimColorTexHasSwappedViews==1
#undef rimColorTexHasSwappedViews
#define rimColorTexHasSwappedViews 1
#endif
#ifndef rimColorTexLayout
#define rimColorTexLayout 0
#endif
#ifndef opacityTexHasSwappedViews
#define opacityTexHasSwappedViews 0
#elif opacityTexHasSwappedViews==1
#undef opacityTexHasSwappedViews
#define opacityTexHasSwappedViews 1
#endif
#ifndef opacityTexLayout
#define opacityTexLayout 0
#endif
#ifndef ENABLE_RECOLOR
#define ENABLE_RECOLOR 0
#elif ENABLE_RECOLOR==1
#undef ENABLE_RECOLOR
#define ENABLE_RECOLOR 1
#endif
#ifndef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 0
#elif ENABLE_BASE_TEX==1
#undef ENABLE_BASE_TEX
#define ENABLE_BASE_TEX 1
#endif
#ifndef ENABLE_UV2
#define ENABLE_UV2 0
#elif ENABLE_UV2==1
#undef ENABLE_UV2
#define ENABLE_UV2 1
#endif
#ifndef ENABLE_UV2_ANIMATION
#define ENABLE_UV2_ANIMATION 0
#elif ENABLE_UV2_ANIMATION==1
#undef ENABLE_UV2_ANIMATION
#define ENABLE_UV2_ANIMATION 1
#endif
#ifndef NODE_13_DROPLIST_ITEM
#define NODE_13_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_UV3
#define ENABLE_UV3 0
#elif ENABLE_UV3==1
#undef ENABLE_UV3
#define ENABLE_UV3 1
#endif
#ifndef ENABLE_UV3_ANIMATION
#define ENABLE_UV3_ANIMATION 0
#elif ENABLE_UV3_ANIMATION==1
#undef ENABLE_UV3_ANIMATION
#define ENABLE_UV3_ANIMATION 1
#endif
#ifndef NODE_49_DROPLIST_ITEM
#define NODE_49_DROPLIST_ITEM 0
#endif
#ifndef NODE_27_DROPLIST_ITEM
#define NODE_27_DROPLIST_ITEM 0
#endif
#ifndef SC_USE_UV_TRANSFORM_baseTex
#define SC_USE_UV_TRANSFORM_baseTex 0
#elif SC_USE_UV_TRANSFORM_baseTex==1
#undef SC_USE_UV_TRANSFORM_baseTex
#define SC_USE_UV_TRANSFORM_baseTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_baseTex
#define SC_SOFTWARE_WRAP_MODE_U_baseTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_baseTex
#define SC_SOFTWARE_WRAP_MODE_V_baseTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_baseTex
#define SC_USE_UV_MIN_MAX_baseTex 0
#elif SC_USE_UV_MIN_MAX_baseTex==1
#undef SC_USE_UV_MIN_MAX_baseTex
#define SC_USE_UV_MIN_MAX_baseTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_baseTex
#define SC_USE_CLAMP_TO_BORDER_baseTex 0
#elif SC_USE_CLAMP_TO_BORDER_baseTex==1
#undef SC_USE_CLAMP_TO_BORDER_baseTex
#define SC_USE_CLAMP_TO_BORDER_baseTex 1
#endif
#ifndef NODE_38_DROPLIST_ITEM
#define NODE_38_DROPLIST_ITEM 0
#endif
#ifndef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 0
#elif ENABLE_EMISSIVE==1
#undef ENABLE_EMISSIVE
#define ENABLE_EMISSIVE 1
#endif
#ifndef NODE_76_DROPLIST_ITEM
#define NODE_76_DROPLIST_ITEM 0
#endif
#ifndef SC_USE_UV_TRANSFORM_emissiveTex
#define SC_USE_UV_TRANSFORM_emissiveTex 0
#elif SC_USE_UV_TRANSFORM_emissiveTex==1
#undef SC_USE_UV_TRANSFORM_emissiveTex
#define SC_USE_UV_TRANSFORM_emissiveTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_emissiveTex
#define SC_SOFTWARE_WRAP_MODE_U_emissiveTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_emissiveTex
#define SC_SOFTWARE_WRAP_MODE_V_emissiveTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_emissiveTex
#define SC_USE_UV_MIN_MAX_emissiveTex 0
#elif SC_USE_UV_MIN_MAX_emissiveTex==1
#undef SC_USE_UV_MIN_MAX_emissiveTex
#define SC_USE_UV_MIN_MAX_emissiveTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_emissiveTex
#define SC_USE_CLAMP_TO_BORDER_emissiveTex 0
#elif SC_USE_CLAMP_TO_BORDER_emissiveTex==1
#undef SC_USE_CLAMP_TO_BORDER_emissiveTex
#define SC_USE_CLAMP_TO_BORDER_emissiveTex 1
#endif
#ifndef Tweak_N179
#define Tweak_N179 0
#elif Tweak_N179==1
#undef Tweak_N179
#define Tweak_N179 1
#endif
#ifndef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 0
#elif ENABLE_NORMALMAP==1
#undef ENABLE_NORMALMAP
#define ENABLE_NORMALMAP 1
#endif
#ifndef NODE_181_DROPLIST_ITEM
#define NODE_181_DROPLIST_ITEM 0
#endif
#ifndef SC_USE_UV_TRANSFORM_normalTex
#define SC_USE_UV_TRANSFORM_normalTex 0
#elif SC_USE_UV_TRANSFORM_normalTex==1
#undef SC_USE_UV_TRANSFORM_normalTex
#define SC_USE_UV_TRANSFORM_normalTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_normalTex
#define SC_SOFTWARE_WRAP_MODE_U_normalTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_normalTex
#define SC_SOFTWARE_WRAP_MODE_V_normalTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_normalTex
#define SC_USE_UV_MIN_MAX_normalTex 0
#elif SC_USE_UV_MIN_MAX_normalTex==1
#undef SC_USE_UV_MIN_MAX_normalTex
#define SC_USE_UV_MIN_MAX_normalTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_normalTex
#define SC_USE_CLAMP_TO_BORDER_normalTex 0
#elif SC_USE_CLAMP_TO_BORDER_normalTex==1
#undef SC_USE_CLAMP_TO_BORDER_normalTex
#define SC_USE_CLAMP_TO_BORDER_normalTex 1
#endif
#ifndef ENABLE_DETAIL_NORMAL
#define ENABLE_DETAIL_NORMAL 0
#elif ENABLE_DETAIL_NORMAL==1
#undef ENABLE_DETAIL_NORMAL
#define ENABLE_DETAIL_NORMAL 1
#endif
#ifndef NODE_184_DROPLIST_ITEM
#define NODE_184_DROPLIST_ITEM 0
#endif
#ifndef SC_USE_UV_TRANSFORM_detailNormalTex
#define SC_USE_UV_TRANSFORM_detailNormalTex 0
#elif SC_USE_UV_TRANSFORM_detailNormalTex==1
#undef SC_USE_UV_TRANSFORM_detailNormalTex
#define SC_USE_UV_TRANSFORM_detailNormalTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_detailNormalTex
#define SC_SOFTWARE_WRAP_MODE_U_detailNormalTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_detailNormalTex
#define SC_SOFTWARE_WRAP_MODE_V_detailNormalTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_detailNormalTex
#define SC_USE_UV_MIN_MAX_detailNormalTex 0
#elif SC_USE_UV_MIN_MAX_detailNormalTex==1
#undef SC_USE_UV_MIN_MAX_detailNormalTex
#define SC_USE_UV_MIN_MAX_detailNormalTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_detailNormalTex
#define SC_USE_CLAMP_TO_BORDER_detailNormalTex 0
#elif SC_USE_CLAMP_TO_BORDER_detailNormalTex==1
#undef SC_USE_CLAMP_TO_BORDER_detailNormalTex
#define SC_USE_CLAMP_TO_BORDER_detailNormalTex 1
#endif
#ifndef ENABLE_REFLECTION_MODULATION_TEX
#define ENABLE_REFLECTION_MODULATION_TEX 0
#elif ENABLE_REFLECTION_MODULATION_TEX==1
#undef ENABLE_REFLECTION_MODULATION_TEX
#define ENABLE_REFLECTION_MODULATION_TEX 1
#endif
#ifndef NODE_228_DROPLIST_ITEM
#define NODE_228_DROPLIST_ITEM 0
#endif
#ifndef SC_USE_UV_TRANSFORM_reflectionModulationTex
#define SC_USE_UV_TRANSFORM_reflectionModulationTex 0
#elif SC_USE_UV_TRANSFORM_reflectionModulationTex==1
#undef SC_USE_UV_TRANSFORM_reflectionModulationTex
#define SC_USE_UV_TRANSFORM_reflectionModulationTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex
#define SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex
#define SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_reflectionModulationTex
#define SC_USE_UV_MIN_MAX_reflectionModulationTex 0
#elif SC_USE_UV_MIN_MAX_reflectionModulationTex==1
#undef SC_USE_UV_MIN_MAX_reflectionModulationTex
#define SC_USE_UV_MIN_MAX_reflectionModulationTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_reflectionModulationTex
#define SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 0
#elif SC_USE_CLAMP_TO_BORDER_reflectionModulationTex==1
#undef SC_USE_CLAMP_TO_BORDER_reflectionModulationTex
#define SC_USE_CLAMP_TO_BORDER_reflectionModulationTex 1
#endif
#ifndef SC_USE_UV_TRANSFORM_reflectionTex
#define SC_USE_UV_TRANSFORM_reflectionTex 0
#elif SC_USE_UV_TRANSFORM_reflectionTex==1
#undef SC_USE_UV_TRANSFORM_reflectionTex
#define SC_USE_UV_TRANSFORM_reflectionTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_reflectionTex
#define SC_SOFTWARE_WRAP_MODE_U_reflectionTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_reflectionTex
#define SC_SOFTWARE_WRAP_MODE_V_reflectionTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_reflectionTex
#define SC_USE_UV_MIN_MAX_reflectionTex 0
#elif SC_USE_UV_MIN_MAX_reflectionTex==1
#undef SC_USE_UV_MIN_MAX_reflectionTex
#define SC_USE_UV_MIN_MAX_reflectionTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_reflectionTex
#define SC_USE_CLAMP_TO_BORDER_reflectionTex 0
#elif SC_USE_CLAMP_TO_BORDER_reflectionTex==1
#undef SC_USE_CLAMP_TO_BORDER_reflectionTex
#define SC_USE_CLAMP_TO_BORDER_reflectionTex 1
#endif
#ifndef ENABLE_RIM_HIGHLIGHT
#define ENABLE_RIM_HIGHLIGHT 0
#elif ENABLE_RIM_HIGHLIGHT==1
#undef ENABLE_RIM_HIGHLIGHT
#define ENABLE_RIM_HIGHLIGHT 1
#endif
#ifndef ENABLE_RIM_COLOR_TEX
#define ENABLE_RIM_COLOR_TEX 0
#elif ENABLE_RIM_COLOR_TEX==1
#undef ENABLE_RIM_COLOR_TEX
#define ENABLE_RIM_COLOR_TEX 1
#endif
#ifndef NODE_315_DROPLIST_ITEM
#define NODE_315_DROPLIST_ITEM 0
#endif
#ifndef SC_USE_UV_TRANSFORM_rimColorTex
#define SC_USE_UV_TRANSFORM_rimColorTex 0
#elif SC_USE_UV_TRANSFORM_rimColorTex==1
#undef SC_USE_UV_TRANSFORM_rimColorTex
#define SC_USE_UV_TRANSFORM_rimColorTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_rimColorTex
#define SC_SOFTWARE_WRAP_MODE_U_rimColorTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_rimColorTex
#define SC_SOFTWARE_WRAP_MODE_V_rimColorTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_rimColorTex
#define SC_USE_UV_MIN_MAX_rimColorTex 0
#elif SC_USE_UV_MIN_MAX_rimColorTex==1
#undef SC_USE_UV_MIN_MAX_rimColorTex
#define SC_USE_UV_MIN_MAX_rimColorTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_rimColorTex
#define SC_USE_CLAMP_TO_BORDER_rimColorTex 0
#elif SC_USE_CLAMP_TO_BORDER_rimColorTex==1
#undef SC_USE_CLAMP_TO_BORDER_rimColorTex
#define SC_USE_CLAMP_TO_BORDER_rimColorTex 1
#endif
#ifndef ENABLE_RIM_INVERT
#define ENABLE_RIM_INVERT 0
#elif ENABLE_RIM_INVERT==1
#undef ENABLE_RIM_INVERT
#define ENABLE_RIM_INVERT 1
#endif
#ifndef ENABLE_OPACITY_TEX
#define ENABLE_OPACITY_TEX 0
#elif ENABLE_OPACITY_TEX==1
#undef ENABLE_OPACITY_TEX
#define ENABLE_OPACITY_TEX 1
#endif
#ifndef NODE_69_DROPLIST_ITEM
#define NODE_69_DROPLIST_ITEM 0
#endif
#ifndef SC_USE_UV_TRANSFORM_opacityTex
#define SC_USE_UV_TRANSFORM_opacityTex 0
#elif SC_USE_UV_TRANSFORM_opacityTex==1
#undef SC_USE_UV_TRANSFORM_opacityTex
#define SC_USE_UV_TRANSFORM_opacityTex 1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_U_opacityTex
#define SC_SOFTWARE_WRAP_MODE_U_opacityTex -1
#endif
#ifndef SC_SOFTWARE_WRAP_MODE_V_opacityTex
#define SC_SOFTWARE_WRAP_MODE_V_opacityTex -1
#endif
#ifndef SC_USE_UV_MIN_MAX_opacityTex
#define SC_USE_UV_MIN_MAX_opacityTex 0
#elif SC_USE_UV_MIN_MAX_opacityTex==1
#undef SC_USE_UV_MIN_MAX_opacityTex
#define SC_USE_UV_MIN_MAX_opacityTex 1
#endif
#ifndef SC_USE_CLAMP_TO_BORDER_opacityTex
#define SC_USE_CLAMP_TO_BORDER_opacityTex 0
#elif SC_USE_CLAMP_TO_BORDER_opacityTex==1
#undef SC_USE_CLAMP_TO_BORDER_opacityTex
#define SC_USE_CLAMP_TO_BORDER_opacityTex 1
#endif
#ifndef sc_DepthOnly
#define sc_DepthOnly 0
#elif sc_DepthOnly==1
#undef sc_DepthOnly
#define sc_DepthOnly 1
#endif
struct sc_Camera_t
{
vec3 position;
float aspect;
vec2 clipPlanes;
};
#ifndef sc_PointLightsCount
#define sc_PointLightsCount 0
#endif
#ifndef sc_DirectionalLightsCount
#define sc_DirectionalLightsCount 0
#endif
#ifndef sc_AmbientLightsCount
#define sc_AmbientLightsCount 0
#endif
struct sc_PointLight_t
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
vec3 direction;
vec3 position;
vec4 color;
};
struct sc_DirectionalLight_t
{
vec3 direction;
vec4 color;
};
struct sc_AmbientLight_t
{
vec3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
vec3 color;
float sharpness;
vec3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
vec3 ambientLight;
};
uniform vec4 sc_EnvmapDiffuseDims;
uniform vec4 sc_EnvmapSpecularDims;
uniform vec4 sc_ScreenTextureDims;
uniform vec4 sc_CurrentRenderTargetDims;
uniform mat4 sc_ProjectionMatrixArray[sc_NumStereoViews];
uniform float sc_ShadowDensity;
uniform vec4 sc_ShadowColor;
uniform mat4 sc_ViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_PrevFrameViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_PrevFrameModelMatrix;
uniform mat4 sc_ModelMatrixInverse;
uniform float shaderComplexityValue;
uniform float _sc_framebufferFetchMarker;
uniform float _sc_GetFramebufferColorInvalidUsageMarker;
uniform vec4 intensityTextureDims;
uniform float correctedIntensity;
uniform mat3 intensityTextureTransform;
uniform vec4 intensityTextureUvMinMax;
uniform vec4 intensityTextureBorderColor;
uniform float alphaTestThreshold;
uniform vec4 baseTexDims;
uniform vec4 emissiveTexDims;
uniform vec4 reflectionTexDims;
uniform vec4 normalTexDims;
uniform vec4 detailNormalTexDims;
uniform vec4 reflectionModulationTexDims;
uniform vec4 rimColorTexDims;
uniform vec4 opacityTexDims;
uniform vec3 recolorRed;
uniform vec4 baseColor;
uniform vec2 uv2Scale;
uniform vec2 uv2Offset;
uniform float Port_Speed_N022;
uniform vec2 uv3Scale;
uniform vec2 uv3Offset;
uniform float Port_Speed_N063;
uniform mat3 baseTexTransform;
uniform vec4 baseTexUvMinMax;
uniform vec4 baseTexBorderColor;
uniform vec3 recolorGreen;
uniform vec3 recolorBlue;
uniform vec4 Port_Default_N369;
uniform mat3 emissiveTexTransform;
uniform vec4 emissiveTexUvMinMax;
uniform vec4 emissiveTexBorderColor;
uniform vec3 Port_Default_N132;
uniform vec3 emissiveColor;
uniform float emissiveIntensity;
uniform float reflectionIntensity;
uniform mat3 normalTexTransform;
uniform vec4 normalTexUvMinMax;
uniform vec4 normalTexBorderColor;
uniform mat3 detailNormalTexTransform;
uniform vec4 detailNormalTexUvMinMax;
uniform vec4 detailNormalTexBorderColor;
uniform vec3 Port_Default_N113;
uniform float Port_Strength1_N200;
uniform float Port_Strength2_N200;
uniform mat3 reflectionModulationTexTransform;
uniform vec4 reflectionModulationTexUvMinMax;
uniform vec4 reflectionModulationTexBorderColor;
uniform vec3 Port_Input1_N257;
uniform float Port_Input1_N264;
uniform float Port_Input1_N268;
uniform float Port_Input1_N270;
uniform mat3 reflectionTexTransform;
uniform vec4 reflectionTexUvMinMax;
uniform vec4 reflectionTexBorderColor;
uniform vec3 Port_Default_N041;
uniform vec3 rimColor;
uniform float rimIntensity;
uniform mat3 rimColorTexTransform;
uniform vec4 rimColorTexUvMinMax;
uniform vec4 rimColorTexBorderColor;
uniform float rimExponent;
uniform vec3 Port_Default_N170;
uniform mat3 opacityTexTransform;
uniform vec4 opacityTexUvMinMax;
uniform vec4 opacityTexBorderColor;
uniform int overrideTimeEnabled;
uniform float overrideTimeElapsed;
uniform vec4 sc_Time;
uniform float overrideTimeDelta;
uniform sc_Camera_t sc_Camera;
uniform vec3 Port_Default_N097;
uniform vec3 Port_Default_N134;
uniform vec3 Port_Default_N173;
uniform float Port_Default_N204;
uniform float Port_Input2_N072;
uniform int PreviewEnabled;
uniform sc_PointLight_t sc_PointLights[(sc_PointLightsCount+1)];
uniform sc_DirectionalLight_t sc_DirectionalLights[(sc_DirectionalLightsCount+1)];
uniform sc_AmbientLight_t sc_AmbientLights[(sc_AmbientLightsCount+1)];
uniform sc_LightEstimationData_t sc_LightEstimationData;
uniform vec4 sc_EnvmapDiffuseSize;
uniform vec4 sc_EnvmapDiffuseView;
uniform vec4 sc_EnvmapSpecularSize;
uniform vec4 sc_EnvmapSpecularView;
uniform vec3 sc_EnvmapRotation;
uniform float sc_EnvmapExposure;
uniform vec3 sc_Sh[9];
uniform float sc_ShIntensity;
uniform vec4 sc_UniformConstants;
uniform vec4 sc_GeometryInfo;
uniform mat4 sc_ModelViewProjectionMatrixArray[sc_NumStereoViews];
uniform mat4 sc_ModelViewProjectionMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ViewProjectionMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ModelViewMatrixArray[sc_NumStereoViews];
uniform mat4 sc_ModelViewMatrixInverseArray[sc_NumStereoViews];
uniform mat3 sc_ViewNormalMatrixArray[sc_NumStereoViews];
uniform mat3 sc_ViewNormalMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ProjectionMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ViewMatrixArray[sc_NumStereoViews];
uniform mat4 sc_ViewMatrixInverseArray[sc_NumStereoViews];
uniform mat4 sc_ModelMatrix;
uniform mat3 sc_NormalMatrix;
uniform mat3 sc_NormalMatrixInverse;
uniform mat4 sc_PrevFrameModelMatrixInverse;
uniform vec3 sc_LocalAabbMin;
uniform vec3 sc_LocalAabbMax;
uniform vec3 sc_WorldAabbMin;
uniform vec3 sc_WorldAabbMax;
uniform vec4 sc_WindowToViewportTransform;
uniform mat4 sc_ProjectorMatrix;
uniform float sc_DisableFrustumCullingMarker;
uniform vec4 sc_BoneMatrices[((sc_SkinBonesCount*3)+1)];
uniform mat3 sc_SkinBonesNormalMatrices[(sc_SkinBonesCount+1)];
uniform vec4 weights0;
uniform vec4 weights1;
uniform vec4 weights2;
uniform vec4 sc_StereoClipPlanes[sc_NumStereoViews];
uniform int sc_FallbackInstanceID;
uniform vec2 sc_TAAJitterOffset;
uniform float strandWidth;
uniform float strandTaper;
uniform vec4 sc_StrandDataMapTextureSize;
uniform float clumpInstanceCount;
uniform float clumpRadius;
uniform float clumpTipScale;
uniform float hairstyleInstanceCount;
uniform float hairstyleNoise;
uniform vec4 sc_ScreenTextureSize;
uniform vec4 sc_ScreenTextureView;
uniform vec4 intensityTextureSize;
uniform vec4 intensityTextureView;
uniform float reflBlurWidth;
uniform float reflBlurMinRough;
uniform float reflBlurMaxRough;
uniform int PreviewNodeID;
uniform vec4 baseTexSize;
uniform vec4 baseTexView;
uniform vec4 emissiveTexSize;
uniform vec4 emissiveTexView;
uniform vec4 reflectionTexSize;
uniform vec4 reflectionTexView;
uniform vec4 normalTexSize;
uniform vec4 normalTexView;
uniform vec4 detailNormalTexSize;
uniform vec4 detailNormalTexView;
uniform vec4 reflectionModulationTexSize;
uniform vec4 reflectionModulationTexView;
uniform vec4 rimColorTexSize;
uniform vec4 rimColorTexView;
uniform vec4 opacityTexSize;
uniform vec4 opacityTexView;
uniform vec4 Port_Import_N042;
uniform float Port_Input1_N044;
uniform float Port_Import_N088;
uniform vec3 Port_Import_N089;
uniform vec4 Port_Import_N384;
uniform float Port_Import_N307;
uniform float Port_Import_N201;
uniform float Port_Import_N012;
uniform float Port_Import_N010;
uniform float Port_Import_N007;
uniform vec2 Port_Import_N008;
uniform vec2 Port_Import_N009;
uniform vec2 Port_Import_N254;
uniform float Port_Import_N065;
uniform float Port_Import_N055;
uniform float Port_Import_N056;
uniform vec2 Port_Import_N000;
uniform vec2 Port_Import_N060;
uniform vec2 Port_Import_N061;
uniform vec2 Port_Import_N255;
uniform vec4 Port_Import_N092;
uniform vec3 Port_Import_N090;
uniform vec3 Port_Import_N091;
uniform vec3 Port_Import_N144;
uniform float Port_Import_N273;
uniform float Port_Input1_N274;
uniform float Port_Import_N131;
uniform float Port_Import_N116;
uniform vec2 Port_Import_N120;
uniform vec2 Port_Import_N127;
uniform vec3 Port_Import_N295;
uniform float Port_Import_N296;
uniform float Port_Import_N133;
uniform float Port_Import_N231;
uniform float Port_Import_N336;
uniform float Port_Import_N160;
uniform vec2 Port_Import_N167;
uniform vec2 Port_Import_N207;
uniform float Port_Import_N095;
uniform float Port_Import_N108;
uniform vec3 Port_Import_N327;
uniform vec3 Port_Import_N259;
uniform float Port_Import_N123;
uniform float Port_Import_N025;
uniform vec2 Port_Import_N030;
uniform vec2 Port_Import_N031;
uniform vec3 Port_Import_N298;
uniform float Port_Import_N172;
uniform vec3 Port_Import_N318;
uniform float Port_Import_N319;
uniform float Port_Import_N171;
uniform float Port_Import_N135;
uniform vec2 Port_Import_N150;
uniform vec2 Port_Import_N152;
uniform float Port_Import_N339;
uniform vec3 Port_Import_N328;
uniform float Port_Import_N340;
uniform vec3 Port_Import_N306;
uniform vec4 Port_Import_N166;
uniform float Port_Import_N206;
uniform float Port_Import_N043;
uniform vec2 Port_Import_N151;
uniform vec2 Port_Import_N155;
uniform float Port_Import_N047;
uniform float Port_Input1_N036;
uniform sampler2D baseTex;
uniform sampler2D emissiveTex;
uniform sampler2D normalTex;
uniform sampler2D detailNormalTex;
uniform sampler2D reflectionTex;
uniform sampler2D reflectionModulationTex;
uniform sampler2D rimColorTex;
uniform sampler2D opacityTex;
uniform sampler2D sc_ScreenTexture;
uniform sampler2D intensityTexture;
uniform sampler2D sc_OITFrontDepthTexture;
uniform sampler2D sc_OITDepthHigh0;
uniform sampler2D sc_OITDepthLow0;
uniform sampler2D sc_OITAlpha0;
uniform sampler2D sc_OITDepthHigh1;
uniform sampler2D sc_OITDepthLow1;
uniform sampler2D sc_OITAlpha1;
uniform sampler2D sc_OITFilteredDepthBoundsTexture;
varying float varStereoViewID;
varying vec2 varShadowTex;
varying float varClipDistance;
varying float varViewSpaceDepth;
varying vec4 PreviewVertexColor;
varying float PreviewVertexSaved;
varying vec4 varColor;
varying vec4 varPackedTex;
varying vec3 varPos;
varying vec4 varTangent;
varying vec3 varNormal;
varying vec4 varScreenPos;
varying vec2 varScreenTexturePos;
int sc_GetStereoViewIndex()
{
int l9_0;
#if (sc_StereoRenderingMode==0)
{
l9_0=0;
}
#else
{
l9_0=int(varStereoViewID);
}
#endif
return l9_0;
}
vec2 sc_SamplingCoordsGlobalToView(vec3 uvi,int renderingLayout,int viewIndex)
{
if (renderingLayout==1)
{
uvi.y=((2.0*uvi.y)+float(viewIndex))-1.0;
}
return uvi.xy;
}
vec2 sc_ScreenCoordsGlobalToView(vec2 uv)
{
vec2 l9_0;
#if (sc_StereoRenderingMode==1)
{
l9_0=sc_SamplingCoordsGlobalToView(vec3(uv,0.0),1,sc_GetStereoViewIndex());
}
#else
{
l9_0=uv;
}
#endif
return l9_0;
}
void Node17_Switch(float Switch,vec2 Value0,vec2 Value1,vec2 Value2,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (NODE_13_DROPLIST_ITEM==0)
{
Value0=Globals.Surface_UVCoord0;
Result=Value0;
}
#else
{
#if (NODE_13_DROPLIST_ITEM==1)
{
Value1=Globals.Surface_UVCoord1;
Result=Value1;
}
#else
{
#if (NODE_13_DROPLIST_ITEM==2)
{
Value2=Globals.gScreenCoord;
Result=Value2;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
#endif
}
#endif
}
void Node122_If_else(float Bool1,vec2 Value1,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (ENABLE_UV2_ANIMATION)
{
vec2 param_5;
Node17_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_5,Globals);
Value1=((param_5*uv2Scale)+uv2Offset)+(uv2Offset*(Globals.gTimeElapsed*Port_Speed_N022));
Result=Value1;
}
#else
{
vec2 param_12;
Node17_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_12,Globals);
Default=(param_12*uv2Scale)+uv2Offset;
Result=Default;
}
#endif
}
void Node79_If_else(float Bool1,vec2 Value1,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (ENABLE_UV2)
{
vec2 param_3;
Node122_If_else(0.0,vec2(0.0),vec2(0.0),param_3,Globals);
Value1=param_3;
Result=Value1;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
void Node59_Switch(float Switch,vec2 Value0,vec2 Value1,vec2 Value2,vec2 Value3,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (NODE_49_DROPLIST_ITEM==0)
{
Value0=Globals.Surface_UVCoord0;
Result=Value0;
}
#else
{
#if (NODE_49_DROPLIST_ITEM==1)
{
Value1=Globals.Surface_UVCoord1;
Result=Value1;
}
#else
{
#if (NODE_49_DROPLIST_ITEM==2)
{
Value2=Globals.gScreenCoord;
Result=Value2;
}
#else
{
#if (NODE_49_DROPLIST_ITEM==3)
{
vec2 param_3;
Node79_If_else(0.0,vec2(0.0),vec2(0.0),param_3,Globals);
Value3=param_3;
Result=Value3;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
#endif
}
#endif
}
#endif
}
void Node64_If_else(float Bool1,vec2 Value1,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (ENABLE_UV3_ANIMATION)
{
vec2 param_6;
Node59_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_6,Globals);
Value1=((param_6*uv3Scale)+uv3Offset)+(uv3Offset*(Globals.gTimeElapsed*Port_Speed_N063));
Result=Value1;
}
#else
{
vec2 param_14;
Node59_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_14,Globals);
Default=(param_14*uv3Scale)+uv3Offset;
Result=Default;
}
#endif
}
void Node35_If_else(float Bool1,vec2 Value1,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (ENABLE_UV3)
{
vec2 param_3;
Node64_If_else(0.0,vec2(0.0),vec2(0.0),param_3,Globals);
Value1=param_3;
Result=Value1;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
void Node388_Switch(float Switch,vec2 Value0,vec2 Value1,vec2 Value2,vec2 Value3,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (NODE_27_DROPLIST_ITEM==0)
{
Value0=Globals.Surface_UVCoord0;
Result=Value0;
}
#else
{
#if (NODE_27_DROPLIST_ITEM==1)
{
Value1=Globals.Surface_UVCoord1;
Result=Value1;
}
#else
{
#if (NODE_27_DROPLIST_ITEM==2)
{
vec2 param_3;
Node79_If_else(0.0,vec2(0.0),vec2(0.0),param_3,Globals);
Value2=param_3;
Result=Value2;
}
#else
{
#if (NODE_27_DROPLIST_ITEM==3)
{
vec2 param_8;
Node35_If_else(0.0,vec2(0.0),vec2(0.0),param_8,Globals);
Value3=param_8;
Result=Value3;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
#endif
}
#endif
}
#endif
}
int baseTexGetStereoViewIndex()
{
int l9_0;
#if (baseTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
void sc_SoftwareWrapEarly(inout float uv,int softwareWrapMode)
{
if (softwareWrapMode==1)
{
uv=fract(uv);
}
else
{
if (softwareWrapMode==2)
{
float l9_0=fract(uv);
uv=mix(l9_0,1.0-l9_0,clamp(step(0.25,fract((uv-l9_0)*0.5)),0.0,1.0));
}
}
}
void sc_ClampUV(inout float value,float minValue,float maxValue,bool useClampToBorder,inout float clampToBorderFactor)
{
float l9_0=clamp(value,minValue,maxValue);
float l9_1=step(abs(value-l9_0),9.9999997e-06);
clampToBorderFactor*=(l9_1+((1.0-float(useClampToBorder))*(1.0-l9_1)));
value=l9_0;
}
vec2 sc_TransformUV(vec2 uv,bool useUvTransform,mat3 uvTransform)
{
if (useUvTransform)
{
uv=vec2((uvTransform*vec3(uv,1.0)).xy);
}
return uv;
}
void sc_SoftwareWrapLate(inout float uv,int softwareWrapMode,bool useClampToBorder,inout float clampToBorderFactor)
{
if ((softwareWrapMode==0)||(softwareWrapMode==3))
{
sc_ClampUV(uv,0.0,1.0,useClampToBorder,clampToBorderFactor);
}
}
vec3 sc_SamplingCoordsViewToGlobal(vec2 uv,int renderingLayout,int viewIndex)
{
vec3 l9_0;
if (renderingLayout==0)
{
l9_0=vec3(uv,0.0);
}
else
{
vec3 l9_1;
if (renderingLayout==1)
{
l9_1=vec3(uv.x,(uv.y*0.5)+(0.5-(float(viewIndex)*0.5)),0.0);
}
else
{
l9_1=vec3(uv,float(viewIndex));
}
l9_0=l9_1;
}
return l9_0;
}
void Node369_If_else(float Bool1,vec4 Value1,vec4 Default,out vec4 Result,ssGlobals Globals)
{
#if (ENABLE_BASE_TEX)
{
vec2 param_6;
Node388_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_6,Globals);
float l9_0=param_6.x;
sc_SoftwareWrapEarly(l9_0,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x);
float l9_1=l9_0;
float l9_2=param_6.y;
sc_SoftwareWrapEarly(l9_2,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y);
float l9_3=l9_2;
vec2 l9_4;
float l9_5;
#if (SC_USE_UV_MIN_MAX_baseTex)
{
bool l9_6;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_6=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x==3;
}
#else
{
l9_6=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_7=l9_1;
float l9_8=1.0;
sc_ClampUV(l9_7,baseTexUvMinMax.x,baseTexUvMinMax.z,l9_6,l9_8);
float l9_9=l9_7;
float l9_10=l9_8;
bool l9_11;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_11=ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y==3;
}
#else
{
l9_11=(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0);
}
#endif
float l9_12=l9_3;
float l9_13=l9_10;
sc_ClampUV(l9_12,baseTexUvMinMax.y,baseTexUvMinMax.w,l9_11,l9_13);
l9_5=l9_13;
l9_4=vec2(l9_9,l9_12);
}
#else
{
l9_5=1.0;
l9_4=vec2(l9_1,l9_3);
}
#endif
vec2 l9_14=sc_TransformUV(l9_4,(int(SC_USE_UV_TRANSFORM_baseTex)!=0),baseTexTransform);
float l9_15=l9_14.x;
float l9_16=l9_5;
sc_SoftwareWrapLate(l9_15,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).x,(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0)),l9_16);
float l9_17=l9_14.y;
float l9_18=l9_16;
sc_SoftwareWrapLate(l9_17,ivec2(SC_SOFTWARE_WRAP_MODE_U_baseTex,SC_SOFTWARE_WRAP_MODE_V_baseTex).y,(int(SC_USE_CLAMP_TO_BORDER_baseTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_baseTex)!=0)),l9_18);
float l9_19=l9_18;
vec3 l9_20=sc_SamplingCoordsViewToGlobal(vec2(l9_15,l9_17),baseTexLayout,baseTexGetStereoViewIndex());
vec4 l9_21=texture2D(baseTex,l9_20.xy,0.0);
vec4 l9_22;
#if (SC_USE_CLAMP_TO_BORDER_baseTex)
{
l9_22=mix(baseTexBorderColor,l9_21,vec4(l9_19));
}
#else
{
l9_22=l9_21;
}
#endif
Value1=l9_22;
Result=Value1;
}
#else
{
Result=Default;
}
#endif
}
void Node80_If_else(float Bool1,vec3 Value1,vec3 Default,out vec3 Result,ssGlobals Globals)
{
#if (ENABLE_RECOLOR)
{
vec4 param_3;
Node369_If_else(0.0,vec4(0.0),Port_Default_N369,param_3,Globals);
vec4 l9_0=baseColor*param_3;
Value1=((recolorRed*vec3(l9_0.x))+(recolorGreen*vec3(l9_0.y)))+(recolorBlue*vec3(l9_0.z));
Result=Value1;
}
#else
{
vec4 param_8;
Node369_If_else(0.0,vec4(0.0),Port_Default_N369,param_8,Globals);
Default=(baseColor*param_8).xyz;
Result=Default;
}
#endif
}
void Node128_Switch(float Switch,vec2 Value0,vec2 Value1,vec2 Value2,vec2 Value3,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (NODE_76_DROPLIST_ITEM==0)
{
Value0=Globals.Surface_UVCoord0;
Result=Value0;
}
#else
{
#if (NODE_76_DROPLIST_ITEM==1)
{
Value1=Globals.Surface_UVCoord1;
Result=Value1;
}
#else
{
#if (NODE_76_DROPLIST_ITEM==2)
{
vec2 param_3;
Node79_If_else(0.0,vec2(0.0),vec2(0.0),param_3,Globals);
Value2=param_3;
Result=Value2;
}
#else
{
#if (NODE_76_DROPLIST_ITEM==3)
{
vec2 param_8;
Node35_If_else(0.0,vec2(0.0),vec2(0.0),param_8,Globals);
Value3=param_8;
Result=Value3;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
#endif
}
#endif
}
#endif
}
int emissiveTexGetStereoViewIndex()
{
int l9_0;
#if (emissiveTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
void Node132_If_else(float Bool1,vec3 Value1,vec3 Default,out vec3 Result,ssGlobals Globals)
{
#if (ENABLE_EMISSIVE)
{
vec2 param_6;
Node128_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_6,Globals);
float l9_0=param_6.x;
sc_SoftwareWrapEarly(l9_0,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x);
float l9_1=l9_0;
float l9_2=param_6.y;
sc_SoftwareWrapEarly(l9_2,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y);
float l9_3=l9_2;
vec2 l9_4;
float l9_5;
#if (SC_USE_UV_MIN_MAX_emissiveTex)
{
bool l9_6;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_6=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x==3;
}
#else
{
l9_6=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_7=l9_1;
float l9_8=1.0;
sc_ClampUV(l9_7,emissiveTexUvMinMax.x,emissiveTexUvMinMax.z,l9_6,l9_8);
float l9_9=l9_7;
float l9_10=l9_8;
bool l9_11;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_11=ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y==3;
}
#else
{
l9_11=(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0);
}
#endif
float l9_12=l9_3;
float l9_13=l9_10;
sc_ClampUV(l9_12,emissiveTexUvMinMax.y,emissiveTexUvMinMax.w,l9_11,l9_13);
l9_5=l9_13;
l9_4=vec2(l9_9,l9_12);
}
#else
{
l9_5=1.0;
l9_4=vec2(l9_1,l9_3);
}
#endif
vec2 l9_14=sc_TransformUV(l9_4,(int(SC_USE_UV_TRANSFORM_emissiveTex)!=0),emissiveTexTransform);
float l9_15=l9_14.x;
float l9_16=l9_5;
sc_SoftwareWrapLate(l9_15,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).x,(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTex)!=0)),l9_16);
float l9_17=l9_14.y;
float l9_18=l9_16;
sc_SoftwareWrapLate(l9_17,ivec2(SC_SOFTWARE_WRAP_MODE_U_emissiveTex,SC_SOFTWARE_WRAP_MODE_V_emissiveTex).y,(int(SC_USE_CLAMP_TO_BORDER_emissiveTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_emissiveTex)!=0)),l9_18);
float l9_19=l9_18;
vec3 l9_20=sc_SamplingCoordsViewToGlobal(vec2(l9_15,l9_17),emissiveTexLayout,emissiveTexGetStereoViewIndex());
vec4 l9_21=texture2D(emissiveTex,l9_20.xy,0.0);
vec4 l9_22;
#if (SC_USE_CLAMP_TO_BORDER_emissiveTex)
{
l9_22=mix(emissiveTexBorderColor,l9_21,vec4(l9_19));
}
#else
{
l9_22=l9_21;
}
#endif
Value1=l9_22.xyz;
Result=Value1;
}
#else
{
Result=Default;
}
#endif
}
vec3 ssSRGB_to_Linear(vec3 value)
{
vec3 l9_0;
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
l9_0=vec3(pow(value.x,2.2),pow(value.y,2.2),pow(value.z,2.2));
}
#else
{
l9_0=value*value;
}
#endif
return l9_0;
}
void Node346_Normalize(vec3 Input0,out vec3 Output,ssGlobals Globals)
{
vec3 l9_0=Input0;
vec3 l9_1=Input0;
float l9_2=dot(l9_0,l9_1);
float l9_3;
if (l9_2>0.0)
{
l9_3=1.0/sqrt(l9_2);
}
else
{
l9_3=0.0;
}
Output=Input0*l9_3;
}
void Node208_Switch(float Switch,vec2 Value0,vec2 Value1,vec2 Value2,vec2 Value3,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (NODE_181_DROPLIST_ITEM==0)
{
Value0=Globals.Surface_UVCoord0;
Result=Value0;
}
#else
{
#if (NODE_181_DROPLIST_ITEM==1)
{
Value1=Globals.Surface_UVCoord1;
Result=Value1;
}
#else
{
#if (NODE_181_DROPLIST_ITEM==2)
{
vec2 param_3;
Node79_If_else(0.0,vec2(0.0),vec2(0.0),param_3,Globals);
Value2=param_3;
Result=Value2;
}
#else
{
#if (NODE_181_DROPLIST_ITEM==3)
{
vec2 param_8;
Node35_If_else(0.0,vec2(0.0),vec2(0.0),param_8,Globals);
Value3=param_8;
Result=Value3;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
#endif
}
#endif
}
#endif
}
int normalTexGetStereoViewIndex()
{
int l9_0;
#if (normalTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
void Node126_Texture_2D_Sample(vec2 UVCoord,out vec4 Color,ssGlobals Globals)
{
float l9_0=UVCoord.x;
sc_SoftwareWrapEarly(l9_0,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x);
float l9_1=l9_0;
float l9_2=UVCoord.y;
sc_SoftwareWrapEarly(l9_2,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y);
float l9_3=l9_2;
vec2 l9_4;
float l9_5;
#if (SC_USE_UV_MIN_MAX_normalTex)
{
bool l9_6;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_6=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x==3;
}
#else
{
l9_6=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_7=l9_1;
float l9_8=1.0;
sc_ClampUV(l9_7,normalTexUvMinMax.x,normalTexUvMinMax.z,l9_6,l9_8);
float l9_9=l9_7;
float l9_10=l9_8;
bool l9_11;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_11=ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y==3;
}
#else
{
l9_11=(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0);
}
#endif
float l9_12=l9_3;
float l9_13=l9_10;
sc_ClampUV(l9_12,normalTexUvMinMax.y,normalTexUvMinMax.w,l9_11,l9_13);
l9_5=l9_13;
l9_4=vec2(l9_9,l9_12);
}
#else
{
l9_5=1.0;
l9_4=vec2(l9_1,l9_3);
}
#endif
vec2 l9_14=sc_TransformUV(l9_4,(int(SC_USE_UV_TRANSFORM_normalTex)!=0),normalTexTransform);
float l9_15=l9_14.x;
float l9_16=l9_5;
sc_SoftwareWrapLate(l9_15,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).x,(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0)),l9_16);
float l9_17=l9_14.y;
float l9_18=l9_16;
sc_SoftwareWrapLate(l9_17,ivec2(SC_SOFTWARE_WRAP_MODE_U_normalTex,SC_SOFTWARE_WRAP_MODE_V_normalTex).y,(int(SC_USE_CLAMP_TO_BORDER_normalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_normalTex)!=0)),l9_18);
float l9_19=l9_18;
vec3 l9_20=sc_SamplingCoordsViewToGlobal(vec2(l9_15,l9_17),normalTexLayout,normalTexGetStereoViewIndex());
vec4 l9_21=texture2D(normalTex,l9_20.xy,0.0);
vec4 l9_22;
#if (SC_USE_CLAMP_TO_BORDER_normalTex)
{
l9_22=mix(normalTexBorderColor,l9_21,vec4(l9_19));
}
#else
{
l9_22=l9_21;
}
#endif
Color=l9_22;
vec3 l9_23=(Color.xyz*1.9921875)-vec3(1.0);
Color=vec4(l9_23.x,l9_23.y,l9_23.z,Color.w);
}
void Node111_Switch(float Switch,vec2 Value0,vec2 Value1,vec2 Value2,vec2 Value3,vec2 Default,out vec2 Result,ssGlobals Globals)
{
#if (NODE_184_DROPLIST_ITEM==0)
{
Value0=Globals.Surface_UVCoord0;
Result=Value0;
}
#else
{
#if (NODE_184_DROPLIST_ITEM==1)
{
Value1=Globals.Surface_UVCoord1;
Result=Value1;
}
#else
{
#if (NODE_184_DROPLIST_ITEM==2)
{
vec2 param_3;
Node79_If_else(0.0,vec2(0.0),vec2(0.0),param_3,Globals);
Value2=param_3;
Result=Value2;
}
#else
{
#if (NODE_184_DROPLIST_ITEM==3)
{
vec2 param_8;
Node35_If_else(0.0,vec2(0.0),vec2(0.0),param_8,Globals);
Value3=param_8;
Result=Value3;
}
#else
{
Default=Globals.Surface_UVCoord0;
Result=Default;
}
#endif
}
#endif
}
#endif
}
#endif
}
int detailNormalTexGetStereoViewIndex()
{
int l9_0;
#if (detailNormalTexHasSwappedViews)
{
l9_0=1-sc_GetStereoViewIndex();
}
#else
{
l9_0=sc_GetStereoViewIndex();
}
#endif
return l9_0;
}
void Node138_Texture_2D_Sample(vec2 UVCoord,out vec4 Color,ssGlobals Globals)
{
float l9_0=UVCoord.x;
sc_SoftwareWrapEarly(l9_0,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x);
float l9_1=l9_0;
float l9_2=UVCoord.y;
sc_SoftwareWrapEarly(l9_2,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y);
float l9_3=l9_2;
vec2 l9_4;
float l9_5;
#if (SC_USE_UV_MIN_MAX_detailNormalTex)
{
bool l9_6;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_6=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x==3;
}
#else
{
l9_6=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_7=l9_1;
float l9_8=1.0;
sc_ClampUV(l9_7,detailNormalTexUvMinMax.x,detailNormalTexUvMinMax.z,l9_6,l9_8);
float l9_9=l9_7;
float l9_10=l9_8;
bool l9_11;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_11=ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y==3;
}
#else
{
l9_11=(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0);
}
#endif
float l9_12=l9_3;
float l9_13=l9_10;
sc_ClampUV(l9_12,detailNormalTexUvMinMax.y,detailNormalTexUvMinMax.w,l9_11,l9_13);
l9_5=l9_13;
l9_4=vec2(l9_9,l9_12);
}
#else
{
l9_5=1.0;
l9_4=vec2(l9_1,l9_3);
}
#endif
vec2 l9_14=sc_TransformUV(l9_4,(int(SC_USE_UV_TRANSFORM_detailNormalTex)!=0),detailNormalTexTransform);
float l9_15=l9_14.x;
float l9_16=l9_5;
sc_SoftwareWrapLate(l9_15,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).x,(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_detailNormalTex)!=0)),l9_16);
float l9_17=l9_14.y;
float l9_18=l9_16;
sc_SoftwareWrapLate(l9_17,ivec2(SC_SOFTWARE_WRAP_MODE_U_detailNormalTex,SC_SOFTWARE_WRAP_MODE_V_detailNormalTex).y,(int(SC_USE_CLAMP_TO_BORDER_detailNormalTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_detailNormalTex)!=0)),l9_18);
float l9_19=l9_18;
vec3 l9_20=sc_SamplingCoordsViewToGlobal(vec2(l9_15,l9_17),detailNormalTexLayout,detailNormalTexGetStereoViewIndex());
vec4 l9_21=texture2D(detailNormalTex,l9_20.xy,0.0);
vec4 l9_22;
#if (SC_USE_CLAMP_TO_BORDER_detailNormalTex)
{
l9_22=mix(detailNormalTexBorderColor,l9_21,vec4(l9_19));
}
#else
{
l9_22=l9_21;
}
#endif
Color=l9_22;
vec3 l9_23=(Color.xyz*1.9921875)-vec3(1.0);
Color=vec4(l9_23.x,l9_23.y,l9_23.z,Color.w);
}
void Node113_If_else(float Bool1,vec3 Value1,vec3 Default,out vec3 Result,ssGlobals Globals)
{
#if (ENABLE_DETAIL_NORMAL)
{
vec2 param_6;
Node111_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_6,Globals);
vec4 param_9;
Node138_Texture_2D_Sample(param_6,param_9,Globals);
Value1=param_9.xyz;
Result=Value1;
}
#else
{
Result=Default;
}
#endif
}
vec3 ngs_CombineNormals(vec3 Normal1,float Strength1,vec3 Normal2,float Strength2)
{
vec3 l9_0=mix(vec3(0.0,0.0,1.0),Normal1,vec3(Strength1))+vec3(0.0,0.0,1.0);
vec3 l9_1=mix(vec3(0.0,0.0,1.0),Normal2,vec3(Strength2))*vec3(-1.0,-1.0,1.0);
return normalize((l9_0*dot(l9_0,l9_1))-(l9_1*l9_0.z));
}
void Node345_Normalize(vec3 Input0,out vec3 Output,ssGlobals Globals)
{
vec3 l9_0=Input0;
vec3 l9_1=Input0;
float l9_2=dot(l9_0,l9_1);
float l9_3;
if (l9_2>0.0)
{
l9_3=1.0/sqrt(l9_2);
}
else
{
l9_3=0.0;
}
Output=Input0*l9_3;
}
void Node337_If_else(float Bool1,vec3 Value1,vec3 Default,out vec3 Result,ssGlobals Globals)
{
#if (ENABLE_NORMALMAP)
{
vec2 param_6;
Node208_Switch(0.0,vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),vec2(0.0),param_6,Globals);
vec4 param_9;
Node126_Texture_2D_Sample(param_6,param_9,Globals);
vec3 param_14;
Node113_If_else(0.0,vec3(0.0),Port_Default_N113,param_14,Globals);
vec3 param_17;
Node345_Normalize(mat3(Globals.VertexTangent_WorldSpace,Globals.VertexBinormal_WorldSpace,Globals.VertexNormal_WorldSpace)*ngs_CombineNormals(param_9.xyz,Port_Strength1_N200,param_14,Port_Strength2_N200),param_17,Globals);
Value1=param_17;
Result=Value1;
}
#else
{
vec3 param_20;
Node346_Normalize(Globals.VertexNormal_WorldSpace,param_20,Globals);
Default=param_20;
Result=Default;
}
#endif
}
vec4 sc_readFragData0_Platform()
{
    return getFragData()[0];
}
float transformSingleColor(float original,float intMap,float target)
{
#if ((BLEND_MODE_REALISTIC||BLEND_MODE_FORGRAY)||BLEND_MODE_NOTBRIGHT)
{
return original/pow(1.0-target,intMap);
}
#else
{
#if (BLEND_MODE_DIVISION)
{
return original/(1.0-target);
}
#else
{
#if (BLEND_MODE_BRIGHT)
{
return original/pow(1.0-target,2.0-(2.0*original));
}
#endif
}
#endif
}
#endif
return 0.0;
}
vec3 RGBtoHCV(vec3 rgb)
{
vec4 l9_0;
if (rgb.y<rgb.z)
{
l9_0=vec4(rgb.zy,-1.0,0.66666669);
}
else
{
l9_0=vec4(rgb.yz,0.0,-0.33333334);
}
vec4 l9_1;
if (rgb.x<l9_0.x)
{
l9_1=vec4(l9_0.xyw,rgb.x);
}
else
{
l9_1=vec4(rgb.x,l9_0.yzx);
}
float l9_2=l9_1.x-min(l9_1.w,l9_1.y);
return vec3(abs(((l9_1.w-l9_1.y)/((6.0*l9_2)+1e-07))+l9_1.z),l9_2,l9_1.x);
}
vec3 RGBToHSL(vec3 rgb)
{
vec3 l9_0=RGBtoHCV(rgb);
float l9_1=l9_0.y;
float l9_2=l9_0.z-(l9_1*0.5);
return vec3(l9_0.x,l9_1/((1.0-abs((2.0*l9_2)-1.0))+1e-07),l9_2);
}
vec3 HUEtoRGB(float hue)
{
return clamp(vec3(abs((6.0*hue)-3.0)-1.0,2.0-abs((6.0*hue)-2.0),2.0-abs((6.0*hue)-4.0)),vec3(0.0),vec3(1.0));
}
vec3 HSLToRGB(vec3 hsl)
{
return ((HUEtoRGB(hsl.x)-vec3(0.5))*((1.0-abs((2.0*hsl.z)-1.0))*hsl.y))+vec3(hsl.z);
}
vec3 transformColor(float yValue,vec3 original,vec3 target,float weight,float intMap)
{
#if (BLEND_MODE_INTENSE)
{
return mix(original,HSLToRGB(vec3(target.x,target.y,RGBToHSL(original).z)),vec3(weight));
}
#else
{
return mix(original,clamp(vec3(transformSingleColor(yValue,intMap,target.x),transformSingleColor(yValue,intMap,target.y),transformSingleColor(yValue,intMap,target.z)),vec3(0.0),vec3(1.0)),vec3(weight));
}
#endif
}
vec3 definedBlend(vec3 a,vec3 b)
{
#if (BLEND_MODE_LIGHTEN)
{
return max(a,b);
}
#else
{
#if (BLEND_MODE_DARKEN)
{
return min(a,b);
}
#else
{
#if (BLEND_MODE_DIVIDE)
{
return b/a;
}
#else
{
#if (BLEND_MODE_AVERAGE)
{
return (a+b)*0.5;
}
#else
{
#if (BLEND_MODE_SUBTRACT)
{
return max((a+b)-vec3(1.0),vec3(0.0));
}
#else
{
#if (BLEND_MODE_DIFFERENCE)
{
return abs(a-b);
}
#else
{
#if (BLEND_MODE_NEGATION)
{
return vec3(1.0)-abs((vec3(1.0)-a)-b);
}
#else
{
#if (BLEND_MODE_EXCLUSION)
{
return (a+b)-((a*2.0)*b);
}
#else
{
#if (BLEND_MODE_OVERLAY)
{
float l9_0;
if (a.x<0.5)
{
l9_0=(2.0*a.x)*b.x;
}
else
{
l9_0=1.0-((2.0*(1.0-a.x))*(1.0-b.x));
}
float l9_1;
if (a.y<0.5)
{
l9_1=(2.0*a.y)*b.y;
}
else
{
l9_1=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_2;
if (a.z<0.5)
{
l9_2=(2.0*a.z)*b.z;
}
else
{
l9_2=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return vec3(l9_0,l9_1,l9_2);
}
#else
{
#if (BLEND_MODE_SOFT_LIGHT)
{
return (((vec3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
#else
{
#if (BLEND_MODE_HARD_LIGHT)
{
float l9_3;
if (b.x<0.5)
{
l9_3=(2.0*b.x)*a.x;
}
else
{
l9_3=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_4;
if (b.y<0.5)
{
l9_4=(2.0*b.y)*a.y;
}
else
{
l9_4=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_5;
if (b.z<0.5)
{
l9_5=(2.0*b.z)*a.z;
}
else
{
l9_5=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return vec3(l9_3,l9_4,l9_5);
}
#else
{
#if (BLEND_MODE_COLOR_DODGE)
{
float l9_6;
if (b.x==1.0)
{
l9_6=b.x;
}
else
{
l9_6=min(a.x/(1.0-b.x),1.0);
}
float l9_7;
if (b.y==1.0)
{
l9_7=b.y;
}
else
{
l9_7=min(a.y/(1.0-b.y),1.0);
}
float l9_8;
if (b.z==1.0)
{
l9_8=b.z;
}
else
{
l9_8=min(a.z/(1.0-b.z),1.0);
}
return vec3(l9_6,l9_7,l9_8);
}
#else
{
#if (BLEND_MODE_COLOR_BURN)
{
float l9_9;
if (b.x==0.0)
{
l9_9=b.x;
}
else
{
l9_9=max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_10;
if (b.y==0.0)
{
l9_10=b.y;
}
else
{
l9_10=max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_11;
if (b.z==0.0)
{
l9_11=b.z;
}
else
{
l9_11=max(1.0-((1.0-a.z)/b.z),0.0);
}
return vec3(l9_9,l9_10,l9_11);
}
#else
{
#if (BLEND_MODE_LINEAR_LIGHT)
{
float l9_12;
if (b.x<0.5)
{
l9_12=max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_12=min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_13;
if (b.y<0.5)
{
l9_13=max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_13=min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_14;
if (b.z<0.5)
{
l9_14=max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_14=min(a.z+(2.0*(b.z-0.5)),1.0);
}
return vec3(l9_12,l9_13,l9_14);
}
#else
{
#if (BLEND_MODE_VIVID_LIGHT)
{
float l9_15;
if (b.x<0.5)
{
float l9_16;
if ((2.0*b.x)==0.0)
{
l9_16=2.0*b.x;
}
else
{
l9_16=max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_15=l9_16;
}
else
{
float l9_17;
if ((2.0*(b.x-0.5))==1.0)
{
l9_17=2.0*(b.x-0.5);
}
else
{
l9_17=min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_15=l9_17;
}
float l9_18;
if (b.y<0.5)
{
float l9_19;
if ((2.0*b.y)==0.0)
{
l9_19=2.0*b.y;
}
else
{
l9_19=max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_18=l9_19;
}
else
{
float l9_20;
if ((2.0*(b.y-0.5))==1.0)
{
l9_20=2.0*(b.y-0.5);
}
else
{
l9_20=min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_18=l9_20;
}
float l9_21;
if (b.z<0.5)
{
float l9_22;
if ((2.0*b.z)==0.0)
{
l9_22=2.0*b.z;
}
else
{
l9_22=max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_21=l9_22;
}
else
{
float l9_23;
if ((2.0*(b.z-0.5))==1.0)
{
l9_23=2.0*(b.z-0.5);
}
else
{
l9_23=min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_21=l9_23;
}
return vec3(l9_15,l9_18,l9_21);
}
#else
{
#if (BLEND_MODE_PIN_LIGHT)
{
float l9_24;
if (b.x<0.5)
{
l9_24=min(a.x,2.0*b.x);
}
else
{
l9_24=max(a.x,2.0*(b.x-0.5));
}
float l9_25;
if (b.y<0.5)
{
l9_25=min(a.y,2.0*b.y);
}
else
{
l9_25=max(a.y,2.0*(b.y-0.5));
}
float l9_26;
if (b.z<0.5)
{
l9_26=min(a.z,2.0*b.z);
}
else
{
l9_26=max(a.z,2.0*(b.z-0.5));
}
return vec3(l9_24,l9_25,l9_26);
}
#else
{
#if (BLEND_MODE_HARD_MIX)
{
float l9_27;
if (b.x<0.5)
{
float l9_28;
if ((2.0*b.x)==0.0)
{
l9_28=2.0*b.x;
}
else
{
l9_28=max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_27=l9_28;
}
else
{
float l9_29;
if ((2.0*(b.x-0.5))==1.0)
{
l9_29=2.0*(b.x-0.5);
}
else
{
l9_29=min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_27=l9_29;
}
bool l9_30=l9_27<0.5;
float l9_31;
if (b.y<0.5)
{
float l9_32;
if ((2.0*b.y)==0.0)
{
l9_32=2.0*b.y;
}
else
{
l9_32=max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_31=l9_32;
}
else
{
float l9_33;
if ((2.0*(b.y-0.5))==1.0)
{
l9_33=2.0*(b.y-0.5);
}
else
{
l9_33=min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_31=l9_33;
}
bool l9_34=l9_31<0.5;
float l9_35;
if (b.z<0.5)
{
float l9_36;
if ((2.0*b.z)==0.0)
{
l9_36=2.0*b.z;
}
else
{
l9_36=max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_35=l9_36;
}
else
{
float l9_37;
if ((2.0*(b.z-0.5))==1.0)
{
l9_37=2.0*(b.z-0.5);
}
else
{
l9_37=min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_35=l9_37;
}
return vec3(l9_30 ? 0.0 : 1.0,l9_34 ? 0.0 : 1.0,(l9_35<0.5) ? 0.0 : 1.0);
}
#else
{
#if (BLEND_MODE_HARD_REFLECT)
{
float l9_38;
if (b.x==1.0)
{
l9_38=b.x;
}
else
{
l9_38=min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_39;
if (b.y==1.0)
{
l9_39=b.y;
}
else
{
l9_39=min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_40;
if (b.z==1.0)
{
l9_40=b.z;
}
else
{
l9_40=min((a.z*a.z)/(1.0-b.z),1.0);
}
return vec3(l9_38,l9_39,l9_40);
}
#else
{
#if (BLEND_MODE_HARD_GLOW)
{
float l9_41;
if (a.x==1.0)
{
l9_41=a.x;
}
else
{
l9_41=min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_42;
if (a.y==1.0)
{
l9_42=a.y;
}
else
{
l9_42=min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_43;
if (a.z==1.0)
{
l9_43=a.z;
}
else
{
l9_43=min((b.z*b.z)/(1.0-a.z),1.0);
}
return vec3(l9_41,l9_42,l9_43);
}
#else
{
#if (BLEND_MODE_HARD_PHOENIX)
{
return (min(a,b)-max(a,b))+vec3(1.0);
}
#else
{
#if (BLEND_MODE_HUE)
{
return HSLToRGB(vec3(RGBToHSL(b).x,RGBToHSL(a).yz));
}
#else
{
#if (BLEND_MODE_SATURATION)
{
vec3 l9_44=RGBToHSL(a);
return HSLToRGB(vec3(l9_44.x,RGBToHSL(b).y,l9_44.z));
}
#else
{
#if (BLEND_MODE_COLOR)
{
return HSLToRGB(vec3(RGBToHSL(b).xy,RGBToHSL(a).z));
}
#else
{
#if (BLEND_MODE_LUMINOSITY)
{
return HSLToRGB(vec3(RGBToHSL(a).xy,RGBToHSL(b).z));
}
#else
{
vec3 l9_45=a;
vec3 l9_46=b;
float l9_47=((0.29899999*l9_45.x)+(0.58700001*l9_45.y))+(0.114*l9_45.z);
int l9_48;
#if (intensityTextureHasSwappedViews)
{
l9_48=1-sc_GetStereoViewIndex();
}
#else
{
l9_48=sc_GetStereoViewIndex();
}
#endif
float l9_49=pow(l9_47,1.0/correctedIntensity);
sc_SoftwareWrapEarly(l9_49,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x);
float l9_50=l9_49;
float l9_51=0.5;
sc_SoftwareWrapEarly(l9_51,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y);
float l9_52=l9_51;
vec2 l9_53;
float l9_54;
#if (SC_USE_UV_MIN_MAX_intensityTexture)
{
bool l9_55;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_55=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x==3;
}
#else
{
l9_55=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_56=l9_50;
float l9_57=1.0;
sc_ClampUV(l9_56,intensityTextureUvMinMax.x,intensityTextureUvMinMax.z,l9_55,l9_57);
float l9_58=l9_56;
float l9_59=l9_57;
bool l9_60;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_60=ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y==3;
}
#else
{
l9_60=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0);
}
#endif
float l9_61=l9_52;
float l9_62=l9_59;
sc_ClampUV(l9_61,intensityTextureUvMinMax.y,intensityTextureUvMinMax.w,l9_60,l9_62);
l9_54=l9_62;
l9_53=vec2(l9_58,l9_61);
}
#else
{
l9_54=1.0;
l9_53=vec2(l9_50,l9_52);
}
#endif
vec2 l9_63=sc_TransformUV(l9_53,(int(SC_USE_UV_TRANSFORM_intensityTexture)!=0),intensityTextureTransform);
float l9_64=l9_63.x;
float l9_65=l9_54;
sc_SoftwareWrapLate(l9_64,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).x,(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_intensityTexture)!=0)),l9_65);
float l9_66=l9_63.y;
float l9_67=l9_65;
sc_SoftwareWrapLate(l9_66,ivec2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture,SC_SOFTWARE_WRAP_MODE_V_intensityTexture).y,(int(SC_USE_CLAMP_TO_BORDER_intensityTexture)!=0)&&(!(int(SC_USE_UV_MIN_MAX_intensityTexture)!=0)),l9_67);
float l9_68=l9_67;
vec3 l9_69=sc_SamplingCoordsViewToGlobal(vec2(l9_64,l9_66),intensityTextureLayout,l9_48);
vec4 l9_70=texture2D(intensityTexture,l9_69.xy,0.0);
vec4 l9_71;
#if (SC_USE_CLAMP_TO_BORDER_intensityTexture)
{
l9_71=mix(intensityTextureBorderColor,l9_70,vec4(l9_68));
}
#else
{
l9_71=l9_70;
}
#endif
float l9_72=((((l9_71.x*256.0)+l9_71.y)+(l9_71.z/256.0))/257.00391)*16.0;
float l9_73;
#if (BLEND_MODE_FORGRAY)
{
l9_73=max(l9_72,1.0);
}
#else
{
l9_73=l9_72;
}
#endif
float l9_74;
#if (BLEND_MODE_NOTBRIGHT)
{
l9_74=min(l9_73,1.0);
}
#else
{
l9_74=l9_73;
}
#endif
return transformColor(l9_47,l9_45,l9_46,1.0,l9_74);
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
vec4 outputMotionVectorsIfNeeded(vec3 surfacePosWorldSpace,vec4 finalColor)
{
#if (sc_MotionVectorsPass)
{
vec4 l9_0=vec4(surfacePosWorldSpace,1.0);
vec4 l9_1=sc_ViewProjectionMatrixArray[sc_GetStereoViewIndex()]*l9_0;
vec4 l9_2=((sc_PrevFrameViewProjectionMatrixArray[sc_GetStereoViewIndex()]*sc_PrevFrameModelMatrix)*sc_ModelMatrixInverse)*l9_0;
vec2 l9_3=((l9_1.xy/vec2(l9_1.w)).xy-(l9_2.xy/vec2(l9_2.w)).xy)*0.5;
float l9_4=floor(((l9_3.x*5.0)+0.5)*65535.0);
float l9_5=floor(l9_4*0.00390625);
float l9_6=floor(((l9_3.y*5.0)+0.5)*65535.0);
float l9_7=floor(l9_6*0.00390625);
return vec4(l9_5/255.0,(l9_4-(l9_5*256.0))/255.0,l9_7/255.0,(l9_6-(l9_7*256.0))/255.0);
}
#else
{
return finalColor;
}
#endif
}
void sc_writeFragData0(vec4 col)
{
    col.x+=sc_UniformConstants.x*float(sc_ShaderCacheConstant);
    sc_FragData0=col;
}
float getFrontLayerZTestEpsilon()
{
#if (sc_SkinBonesCount>0)
{
return 5e-07;
}
#else
{
return 5.0000001e-08;
}
#endif
}
void unpackValues(float channel,int passIndex,inout int values[8])
{
#if (sc_OITCompositingPass)
{
channel=floor((channel*255.0)+0.5);
int l9_0=((passIndex+1)*4)-1;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_0>=(passIndex*4))
{
values[l9_0]=(values[l9_0]*4)+int(floor(mod(channel,4.0)));
channel=floor(channel/4.0);
l9_0--;
continue;
}
else
{
break;
}
}
}
#endif
}
float getDepthOrderingEpsilon()
{
#if (sc_SkinBonesCount>0)
{
return 0.001;
}
#else
{
return 0.0;
}
#endif
}
int encodeDepth(float depth,vec2 depthBounds)
{
float l9_0=(1.0-depthBounds.x)*1000.0;
return int(clamp((depth-l9_0)/((depthBounds.y*1000.0)-l9_0),0.0,1.0)*65535.0);
}
float viewSpaceDepth()
{
#if (UseViewSpaceDepthVariant&&((sc_OITDepthGatherPass||sc_OITCompositingPass)||sc_OITDepthBoundsPass))
{
return varViewSpaceDepth;
}
#else
{
return sc_ProjectionMatrixArray[sc_GetStereoViewIndex()][3].z/(sc_ProjectionMatrixArray[sc_GetStereoViewIndex()][2].z+((gl_FragCoord.z*2.0)-1.0));
}
#endif
}
float packValue(inout int value)
{
#if (sc_OITDepthGatherPass)
{
int l9_0=value;
value/=4;
return floor(floor(mod(float(l9_0),4.0))*64.0)/255.0;
}
#else
{
return 0.0;
}
#endif
}
void sc_writeFragData1(vec4 col)
{
#if sc_FragDataCount>=2
    sc_FragData1=col;
#endif
}
void sc_writeFragData2(vec4 col)
{
#if sc_FragDataCount>=3
    sc_FragData2=col;
#endif
}
void main()
{
#if (sc_DepthOnly)
{
return;
}
#endif
#if ((sc_StereoRenderingMode==1)&&(sc_StereoRendering_IsClipDistanceEnabled==0))
{
if (varClipDistance<0.0)
{
discard;
}
}
#endif
bool l9_0=overrideTimeEnabled==1;
float l9_1;
if (l9_0)
{
l9_1=overrideTimeElapsed;
}
else
{
l9_1=sc_Time.x;
}
float l9_2;
if (l9_0)
{
l9_2=overrideTimeDelta;
}
else
{
l9_2=sc_Time.y;
}
vec2 l9_3=gl_FragCoord.xy*sc_CurrentRenderTargetDims.zw;
vec2 l9_4=sc_ScreenCoordsGlobalToView(l9_3);
vec3 l9_5=normalize(sc_Camera.position-varPos);
vec3 l9_6=normalize(varTangent.xyz);
vec3 l9_7=normalize(varNormal);
ssGlobals l9_8=ssGlobals(l9_1,l9_2,0.0,varColor,varPackedTex.xy,varPackedTex.zw,l9_4,l9_5,varPos,l9_6,l9_7,cross(l9_7,l9_6)*varTangent.w);
vec4 l9_9;
#if (NODE_38_DROPLIST_ITEM==1)
{
vec3 l9_10;
Node80_If_else(0.0,vec3(0.0),vec3(0.0),l9_10,l9_8);
l9_9=varColor*vec4(l9_10.x,l9_10.y,l9_10.z,vec4(0.0).w);
}
#else
{
vec3 l9_11;
Node80_If_else(0.0,vec3(0.0),vec3(0.0),l9_11,l9_8);
l9_9=vec4(l9_11.x,l9_11.y,l9_11.z,vec4(0.0).w);
}
#endif
vec3 l9_12;
#if ((NODE_38_DROPLIST_ITEM==2)||ENABLE_EMISSIVE)
{
vec3 l9_13;
#if (NODE_38_DROPLIST_ITEM==2)
{
vec3 l9_14;
Node132_If_else(0.0,vec3(0.0),Port_Default_N132,l9_14,l9_8);
l9_13=varColor.xyz+l9_14;
}
#else
{
vec3 l9_15;
Node132_If_else(0.0,vec3(0.0),Port_Default_N132,l9_15,l9_8);
l9_13=l9_15;
}
#endif
l9_12=ssSRGB_to_Linear((l9_13*emissiveColor)*vec3(emissiveIntensity));
}
#else
{
l9_12=Port_Default_N097;
}
#endif
vec3 l9_16;
#if (Tweak_N179)
{
vec3 l9_17;
Node337_If_else(0.0,vec3(0.0),vec3(0.0),l9_17,l9_8);
vec3 l9_18=l9_17;
vec3 l9_19=reflect(l9_5,l9_18)*Port_Input1_N257;
float l9_20=l9_19.x;
float l9_21=l9_19.y;
float l9_22=l9_19.z+Port_Input1_N264;
float l9_23=((l9_20*l9_20)+(l9_21*l9_21))+(l9_22*l9_22);
float l9_24;
if (l9_23<=0.0)
{
l9_24=0.0;
}
else
{
l9_24=sqrt(l9_23);
}
float l9_25=l9_24*Port_Input1_N268;
vec2 l9_26=vec2(1.0)-((vec2(l9_20,l9_21)/vec2(l9_25))+vec2(Port_Input1_N270));
int l9_27;
#if (reflectionTexHasSwappedViews)
{
l9_27=1-sc_GetStereoViewIndex();
}
#else
{
l9_27=sc_GetStereoViewIndex();
}
#endif
float l9_28=l9_26.x;
sc_SoftwareWrapEarly(l9_28,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x);
float l9_29=l9_28;
float l9_30=l9_26.y;
sc_SoftwareWrapEarly(l9_30,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y);
float l9_31=l9_30;
vec2 l9_32;
float l9_33;
#if (SC_USE_UV_MIN_MAX_reflectionTex)
{
bool l9_34;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_34=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x==3;
}
#else
{
l9_34=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_35=l9_29;
float l9_36=1.0;
sc_ClampUV(l9_35,reflectionTexUvMinMax.x,reflectionTexUvMinMax.z,l9_34,l9_36);
float l9_37=l9_35;
float l9_38=l9_36;
bool l9_39;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_39=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y==3;
}
#else
{
l9_39=(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0);
}
#endif
float l9_40=l9_31;
float l9_41=l9_38;
sc_ClampUV(l9_40,reflectionTexUvMinMax.y,reflectionTexUvMinMax.w,l9_39,l9_41);
l9_33=l9_41;
l9_32=vec2(l9_37,l9_40);
}
#else
{
l9_33=1.0;
l9_32=vec2(l9_29,l9_31);
}
#endif
vec2 l9_42=sc_TransformUV(l9_32,(int(SC_USE_UV_TRANSFORM_reflectionTex)!=0),reflectionTexTransform);
float l9_43=l9_42.x;
float l9_44=l9_33;
sc_SoftwareWrapLate(l9_43,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).x,(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionTex)!=0)),l9_44);
float l9_45=l9_42.y;
float l9_46=l9_44;
sc_SoftwareWrapLate(l9_45,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionTex,SC_SOFTWARE_WRAP_MODE_V_reflectionTex).y,(int(SC_USE_CLAMP_TO_BORDER_reflectionTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionTex)!=0)),l9_46);
float l9_47=l9_46;
vec3 l9_48=sc_SamplingCoordsViewToGlobal(vec2(l9_43,l9_45),reflectionTexLayout,l9_27);
vec4 l9_49=texture2D(reflectionTex,l9_48.xy,0.0);
vec4 l9_50;
#if (SC_USE_CLAMP_TO_BORDER_reflectionTex)
{
l9_50=mix(reflectionTexBorderColor,l9_49,vec4(l9_47));
}
#else
{
l9_50=l9_49;
}
#endif
vec3 l9_51;
#if (ENABLE_REFLECTION_MODULATION_TEX)
{
vec2 l9_52;
#if (NODE_228_DROPLIST_ITEM==0)
{
l9_52=varPackedTex.xy;
}
#else
{
vec2 l9_53;
#if (NODE_228_DROPLIST_ITEM==1)
{
l9_53=varPackedTex.zw;
}
#else
{
vec2 l9_54;
#if (NODE_228_DROPLIST_ITEM==2)
{
vec2 l9_55;
Node79_If_else(0.0,vec2(0.0),vec2(0.0),l9_55,l9_8);
l9_54=l9_55;
}
#else
{
vec2 l9_56;
#if (NODE_228_DROPLIST_ITEM==3)
{
vec2 l9_57;
Node35_If_else(0.0,vec2(0.0),vec2(0.0),l9_57,l9_8);
l9_56=l9_57;
}
#else
{
l9_56=varPackedTex.xy;
}
#endif
l9_54=l9_56;
}
#endif
l9_53=l9_54;
}
#endif
l9_52=l9_53;
}
#endif
int l9_58;
#if (reflectionModulationTexHasSwappedViews)
{
l9_58=1-sc_GetStereoViewIndex();
}
#else
{
l9_58=sc_GetStereoViewIndex();
}
#endif
float l9_59=l9_52.x;
sc_SoftwareWrapEarly(l9_59,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x);
float l9_60=l9_59;
float l9_61=l9_52.y;
sc_SoftwareWrapEarly(l9_61,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y);
float l9_62=l9_61;
vec2 l9_63;
float l9_64;
#if (SC_USE_UV_MIN_MAX_reflectionModulationTex)
{
bool l9_65;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_65=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x==3;
}
#else
{
l9_65=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_66=l9_60;
float l9_67=1.0;
sc_ClampUV(l9_66,reflectionModulationTexUvMinMax.x,reflectionModulationTexUvMinMax.z,l9_65,l9_67);
float l9_68=l9_66;
float l9_69=l9_67;
bool l9_70;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_70=ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y==3;
}
#else
{
l9_70=(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0);
}
#endif
float l9_71=l9_62;
float l9_72=l9_69;
sc_ClampUV(l9_71,reflectionModulationTexUvMinMax.y,reflectionModulationTexUvMinMax.w,l9_70,l9_72);
l9_64=l9_72;
l9_63=vec2(l9_68,l9_71);
}
#else
{
l9_64=1.0;
l9_63=vec2(l9_60,l9_62);
}
#endif
vec2 l9_73=sc_TransformUV(l9_63,(int(SC_USE_UV_TRANSFORM_reflectionModulationTex)!=0),reflectionModulationTexTransform);
float l9_74=l9_73.x;
float l9_75=l9_64;
sc_SoftwareWrapLate(l9_74,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).x,(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionModulationTex)!=0)),l9_75);
float l9_76=l9_73.y;
float l9_77=l9_75;
sc_SoftwareWrapLate(l9_76,ivec2(SC_SOFTWARE_WRAP_MODE_U_reflectionModulationTex,SC_SOFTWARE_WRAP_MODE_V_reflectionModulationTex).y,(int(SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_reflectionModulationTex)!=0)),l9_77);
float l9_78=l9_77;
vec3 l9_79=sc_SamplingCoordsViewToGlobal(vec2(l9_74,l9_76),reflectionModulationTexLayout,l9_58);
vec4 l9_80=texture2D(reflectionModulationTex,l9_79.xy,0.0);
vec4 l9_81;
#if (SC_USE_CLAMP_TO_BORDER_reflectionModulationTex)
{
l9_81=mix(reflectionModulationTexBorderColor,l9_80,vec4(l9_78));
}
#else
{
l9_81=l9_80;
}
#endif
l9_51=l9_81.xyz;
}
#else
{
l9_51=Port_Default_N041;
}
#endif
l9_16=vec3(reflectionIntensity)*ssSRGB_to_Linear(l9_50.xyz*l9_51);
}
#else
{
l9_16=Port_Default_N134;
}
#endif
vec3 l9_82;
#if (ENABLE_RIM_HIGHLIGHT)
{
vec3 l9_83;
#if (ENABLE_RIM_COLOR_TEX)
{
vec2 l9_84;
#if (NODE_315_DROPLIST_ITEM==0)
{
l9_84=varPackedTex.xy;
}
#else
{
vec2 l9_85;
#if (NODE_315_DROPLIST_ITEM==1)
{
l9_85=varPackedTex.zw;
}
#else
{
vec2 l9_86;
#if (NODE_315_DROPLIST_ITEM==2)
{
vec2 l9_87;
Node79_If_else(0.0,vec2(0.0),vec2(0.0),l9_87,l9_8);
l9_86=l9_87;
}
#else
{
vec2 l9_88;
#if (NODE_315_DROPLIST_ITEM==3)
{
vec2 l9_89;
Node35_If_else(0.0,vec2(0.0),vec2(0.0),l9_89,l9_8);
l9_88=l9_89;
}
#else
{
l9_88=varPackedTex.xy;
}
#endif
l9_86=l9_88;
}
#endif
l9_85=l9_86;
}
#endif
l9_84=l9_85;
}
#endif
int l9_90;
#if (rimColorTexHasSwappedViews)
{
l9_90=1-sc_GetStereoViewIndex();
}
#else
{
l9_90=sc_GetStereoViewIndex();
}
#endif
float l9_91=l9_84.x;
sc_SoftwareWrapEarly(l9_91,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x);
float l9_92=l9_91;
float l9_93=l9_84.y;
sc_SoftwareWrapEarly(l9_93,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y);
float l9_94=l9_93;
vec2 l9_95;
float l9_96;
#if (SC_USE_UV_MIN_MAX_rimColorTex)
{
bool l9_97;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_97=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x==3;
}
#else
{
l9_97=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_98=l9_92;
float l9_99=1.0;
sc_ClampUV(l9_98,rimColorTexUvMinMax.x,rimColorTexUvMinMax.z,l9_97,l9_99);
float l9_100=l9_98;
float l9_101=l9_99;
bool l9_102;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_102=ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y==3;
}
#else
{
l9_102=(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0);
}
#endif
float l9_103=l9_94;
float l9_104=l9_101;
sc_ClampUV(l9_103,rimColorTexUvMinMax.y,rimColorTexUvMinMax.w,l9_102,l9_104);
l9_96=l9_104;
l9_95=vec2(l9_100,l9_103);
}
#else
{
l9_96=1.0;
l9_95=vec2(l9_92,l9_94);
}
#endif
vec2 l9_105=sc_TransformUV(l9_95,(int(SC_USE_UV_TRANSFORM_rimColorTex)!=0),rimColorTexTransform);
float l9_106=l9_105.x;
float l9_107=l9_96;
sc_SoftwareWrapLate(l9_106,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).x,(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_rimColorTex)!=0)),l9_107);
float l9_108=l9_105.y;
float l9_109=l9_107;
sc_SoftwareWrapLate(l9_108,ivec2(SC_SOFTWARE_WRAP_MODE_U_rimColorTex,SC_SOFTWARE_WRAP_MODE_V_rimColorTex).y,(int(SC_USE_CLAMP_TO_BORDER_rimColorTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_rimColorTex)!=0)),l9_109);
float l9_110=l9_109;
vec3 l9_111=sc_SamplingCoordsViewToGlobal(vec2(l9_106,l9_108),rimColorTexLayout,l9_90);
vec4 l9_112=texture2D(rimColorTex,l9_111.xy,0.0);
vec4 l9_113;
#if (SC_USE_CLAMP_TO_BORDER_rimColorTex)
{
l9_113=mix(rimColorTexBorderColor,l9_112,vec4(l9_110));
}
#else
{
l9_113=l9_112;
}
#endif
l9_83=l9_113.xyz;
}
#else
{
l9_83=Port_Default_N170;
}
#endif
vec3 l9_114=ssSRGB_to_Linear((rimColor*vec3(rimIntensity))*l9_83);
float l9_115;
#if (ENABLE_RIM_INVERT)
{
vec3 l9_116;
Node337_If_else(0.0,vec3(0.0),vec3(0.0),l9_116,l9_8);
l9_115=abs(dot(l9_116,-l9_5));
}
#else
{
vec3 l9_117;
Node337_If_else(0.0,vec3(0.0),vec3(0.0),l9_117,l9_8);
l9_115=1.0-abs(dot(l9_117,-l9_5));
}
#endif
float l9_118;
if (l9_115<=0.0)
{
l9_118=0.0;
}
else
{
l9_118=pow(l9_115,rimExponent);
}
l9_82=l9_114*vec3(l9_118);
}
#else
{
l9_82=Port_Default_N173;
}
#endif
vec3 l9_119=l9_12+l9_16;
vec3 l9_120=l9_119+l9_82;
vec3 l9_121;
#if ((SC_DEVICE_CLASS>=2)&&SC_GL_FRAGMENT_PRECISION_HIGH)
{
l9_121=vec3(pow(l9_120.x,0.45454544),pow(l9_120.y,0.45454544),pow(l9_120.z,0.45454544));
}
#else
{
l9_121=sqrt(l9_120);
}
#endif
vec3 l9_122=l9_9.xyz+l9_121;
vec4 param_3;
Node369_If_else(0.0,vec4(0.0),Port_Default_N369,param_3,l9_8);
vec4 l9_123=param_3;
float l9_124;
#if (ENABLE_OPACITY_TEX)
{
vec2 l9_125;
#if (NODE_69_DROPLIST_ITEM==0)
{
l9_125=varPackedTex.xy;
}
#else
{
vec2 l9_126;
#if (NODE_69_DROPLIST_ITEM==1)
{
l9_126=varPackedTex.zw;
}
#else
{
vec2 l9_127;
#if (NODE_69_DROPLIST_ITEM==2)
{
vec2 l9_128;
Node79_If_else(0.0,vec2(0.0),vec2(0.0),l9_128,l9_8);
l9_127=l9_128;
}
#else
{
vec2 l9_129;
#if (NODE_69_DROPLIST_ITEM==3)
{
vec2 l9_130;
Node35_If_else(0.0,vec2(0.0),vec2(0.0),l9_130,l9_8);
l9_129=l9_130;
}
#else
{
l9_129=varPackedTex.xy;
}
#endif
l9_127=l9_129;
}
#endif
l9_126=l9_127;
}
#endif
l9_125=l9_126;
}
#endif
int l9_131;
#if (opacityTexHasSwappedViews)
{
l9_131=1-sc_GetStereoViewIndex();
}
#else
{
l9_131=sc_GetStereoViewIndex();
}
#endif
float l9_132=l9_125.x;
sc_SoftwareWrapEarly(l9_132,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x);
float l9_133=l9_132;
float l9_134=l9_125.y;
sc_SoftwareWrapEarly(l9_134,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y);
float l9_135=l9_134;
vec2 l9_136;
float l9_137;
#if (SC_USE_UV_MIN_MAX_opacityTex)
{
bool l9_138;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_138=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x==3;
}
#else
{
l9_138=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_139=l9_133;
float l9_140=1.0;
sc_ClampUV(l9_139,opacityTexUvMinMax.x,opacityTexUvMinMax.z,l9_138,l9_140);
float l9_141=l9_139;
float l9_142=l9_140;
bool l9_143;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_143=ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y==3;
}
#else
{
l9_143=(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0);
}
#endif
float l9_144=l9_135;
float l9_145=l9_142;
sc_ClampUV(l9_144,opacityTexUvMinMax.y,opacityTexUvMinMax.w,l9_143,l9_145);
l9_137=l9_145;
l9_136=vec2(l9_141,l9_144);
}
#else
{
l9_137=1.0;
l9_136=vec2(l9_133,l9_135);
}
#endif
vec2 l9_146=sc_TransformUV(l9_136,(int(SC_USE_UV_TRANSFORM_opacityTex)!=0),opacityTexTransform);
float l9_147=l9_146.x;
float l9_148=l9_137;
sc_SoftwareWrapLate(l9_147,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).x,(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_opacityTex)!=0)),l9_148);
float l9_149=l9_146.y;
float l9_150=l9_148;
sc_SoftwareWrapLate(l9_149,ivec2(SC_SOFTWARE_WRAP_MODE_U_opacityTex,SC_SOFTWARE_WRAP_MODE_V_opacityTex).y,(int(SC_USE_CLAMP_TO_BORDER_opacityTex)!=0)&&(!(int(SC_USE_UV_MIN_MAX_opacityTex)!=0)),l9_150);
float l9_151=l9_150;
vec3 l9_152=sc_SamplingCoordsViewToGlobal(vec2(l9_147,l9_149),opacityTexLayout,l9_131);
vec4 l9_153=texture2D(opacityTex,l9_152.xy,0.0);
vec4 l9_154;
#if (SC_USE_CLAMP_TO_BORDER_opacityTex)
{
l9_154=mix(opacityTexBorderColor,l9_153,vec4(l9_151));
}
#else
{
l9_154=l9_153;
}
#endif
l9_124=l9_154.x;
}
#else
{
l9_124=Port_Default_N204;
}
#endif
float l9_155;
#if (NODE_38_DROPLIST_ITEM==1)
{
l9_155=varColor.w;
}
#else
{
l9_155=Port_Input2_N072;
}
#endif
float l9_156=(baseColor*l9_123).w*l9_124;
float l9_157=l9_156*l9_155;
vec4 l9_158=vec4(l9_122.x,l9_122.y,l9_122.z,vec4(0.0).w);
l9_158.w=l9_157;
#if (sc_BlendMode_AlphaTest)
{
if (l9_157<alphaTestThreshold)
{
discard;
}
}
#endif
#if (ENABLE_STIPPLE_PATTERN_TEST)
{
if (l9_157<((mod(dot(floor(mod(gl_FragCoord.xy,vec2(4.0))),vec2(4.0,1.0))*9.0,16.0)+1.0)/17.0))
{
discard;
}
}
#endif
vec4 l9_159;
#if (sc_ProjectiveShadowsCaster)
{
float l9_160;
#if (((sc_BlendMode_Normal||sc_BlendMode_AlphaToCoverage)||sc_BlendMode_PremultipliedAlphaHardware)||sc_BlendMode_PremultipliedAlphaAuto)
{
l9_160=l9_157;
}
#else
{
float l9_161;
#if (sc_BlendMode_PremultipliedAlpha)
{
l9_161=clamp(l9_157*2.0,0.0,1.0);
}
#else
{
float l9_162;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_162=clamp(dot(l9_158.xyz,vec3(l9_157)),0.0,1.0);
}
#else
{
float l9_163;
#if (sc_BlendMode_AlphaTest)
{
l9_163=1.0;
}
#else
{
float l9_164;
#if (sc_BlendMode_Multiply)
{
l9_164=(1.0-dot(l9_158.xyz,vec3(0.33333001)))*l9_157;
}
#else
{
float l9_165;
#if (sc_BlendMode_MultiplyOriginal)
{
l9_165=(1.0-clamp(dot(l9_158.xyz,vec3(1.0)),0.0,1.0))*l9_157;
}
#else
{
float l9_166;
#if (sc_BlendMode_ColoredGlass)
{
l9_166=clamp(dot(l9_158.xyz,vec3(1.0)),0.0,1.0)*l9_157;
}
#else
{
float l9_167;
#if (sc_BlendMode_Add)
{
l9_167=clamp(dot(l9_158.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_168;
#if (sc_BlendMode_AddWithAlphaFactor)
{
l9_168=clamp(dot(l9_158.xyz,vec3(1.0)),0.0,1.0)*l9_157;
}
#else
{
float l9_169;
#if (sc_BlendMode_Screen)
{
l9_169=dot(l9_158.xyz,vec3(0.33333001))*l9_157;
}
#else
{
float l9_170;
#if (sc_BlendMode_Min)
{
l9_170=1.0-clamp(dot(l9_158.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
float l9_171;
#if (sc_BlendMode_Max)
{
l9_171=clamp(dot(l9_158.xyz,vec3(1.0)),0.0,1.0);
}
#else
{
l9_171=1.0;
}
#endif
l9_170=l9_171;
}
#endif
l9_169=l9_170;
}
#endif
l9_168=l9_169;
}
#endif
l9_167=l9_168;
}
#endif
l9_166=l9_167;
}
#endif
l9_165=l9_166;
}
#endif
l9_164=l9_165;
}
#endif
l9_163=l9_164;
}
#endif
l9_162=l9_163;
}
#endif
l9_161=l9_162;
}
#endif
l9_160=l9_161;
}
#endif
l9_159=vec4(mix(sc_ShadowColor.xyz,sc_ShadowColor.xyz*l9_158.xyz,vec3(sc_ShadowColor.w)),sc_ShadowDensity*l9_160);
}
#else
{
vec4 l9_172;
#if (sc_RenderAlphaToColor)
{
l9_172=vec4(l9_157);
}
#else
{
vec4 l9_173;
#if (sc_BlendMode_Custom)
{
vec4 l9_174;
#if (sc_FramebufferFetch)
{
vec4 l9_175=sc_readFragData0_Platform();
vec4 l9_176;
#if (sc_UseFramebufferFetchMarker)
{
vec4 l9_177=l9_175;
l9_177.x=l9_175.x+_sc_framebufferFetchMarker;
l9_176=l9_177;
}
#else
{
l9_176=l9_175;
}
#endif
l9_174=l9_176;
}
#else
{
vec2 l9_178=sc_ScreenCoordsGlobalToView(l9_3);
int l9_179;
#if (sc_ScreenTextureHasSwappedViews)
{
l9_179=1-sc_GetStereoViewIndex();
}
#else
{
l9_179=sc_GetStereoViewIndex();
}
#endif
l9_174=texture2D(sc_ScreenTexture,sc_SamplingCoordsViewToGlobal(l9_178,sc_ScreenTextureLayout,l9_179).xy,0.0);
}
#endif
vec4 l9_180;
#if (((sc_IsEditor&&sc_GetFramebufferColorInvalidUsageMarker)&&(!sc_BlendMode_Software))&&(!sc_BlendMode_ColoredGlass))
{
vec4 l9_181=l9_174;
l9_181.x=l9_174.x+_sc_GetFramebufferColorInvalidUsageMarker;
l9_180=l9_181;
}
#else
{
l9_180=l9_174;
}
#endif
vec3 l9_182=mix(l9_180.xyz,definedBlend(l9_180.xyz,l9_158.xyz).xyz,vec3(l9_157));
vec4 l9_183=vec4(l9_182.x,l9_182.y,l9_182.z,vec4(0.0).w);
l9_183.w=1.0;
l9_173=l9_183;
}
#else
{
vec4 l9_184;
#if (sc_BlendMode_MultiplyOriginal)
{
l9_184=vec4(mix(vec3(1.0),l9_158.xyz,vec3(l9_157)),l9_157);
}
#else
{
vec4 l9_185;
#if (sc_BlendMode_Screen||sc_BlendMode_PremultipliedAlphaAuto)
{
float l9_186;
#if (sc_BlendMode_PremultipliedAlphaAuto)
{
l9_186=clamp(l9_157,0.0,1.0);
}
#else
{
l9_186=l9_157;
}
#endif
l9_185=vec4(l9_158.xyz*l9_186,l9_186);
}
#else
{
l9_185=l9_158;
}
#endif
l9_184=l9_185;
}
#endif
l9_173=l9_184;
}
#endif
l9_172=l9_173;
}
#endif
l9_159=l9_172;
}
#endif
vec4 l9_187;
if (PreviewEnabled==1)
{
vec4 l9_188;
if (((PreviewVertexSaved*1.0)!=0.0) ? true : false)
{
l9_188=PreviewVertexColor;
}
else
{
l9_188=vec4(0.0);
}
l9_187=l9_188;
}
else
{
l9_187=l9_159;
}
vec4 l9_189;
#if (sc_ShaderComplexityAnalyzer)
{
l9_189=vec4(shaderComplexityValue/255.0,0.0,0.0,1.0);
}
#else
{
l9_189=vec4(0.0);
}
#endif
vec4 l9_190;
if (l9_189.w>0.0)
{
l9_190=l9_189;
}
else
{
l9_190=l9_187;
}
vec4 l9_191=outputMotionVectorsIfNeeded(varPos,max(l9_190,vec4(0.0)));
vec4 l9_192=clamp(l9_191,vec4(0.0),vec4(1.0));
#if (sc_OITDepthBoundsPass)
{
#if (sc_OITDepthBoundsPass)
{
float l9_193=clamp(viewSpaceDepth()/1000.0,0.0,1.0);
sc_writeFragData0(vec4(max(0.0,1.0-(l9_193-0.0039215689)),min(1.0,l9_193+0.0039215689),0.0,0.0));
}
#endif
}
#else
{
#if (sc_OITDepthPrepass)
{
sc_writeFragData0(vec4(1.0));
}
#else
{
#if (sc_OITDepthGatherPass)
{
#if (sc_OITDepthGatherPass)
{
vec2 l9_194=sc_ScreenCoordsGlobalToView(l9_3);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture2D(sc_OITFrontDepthTexture,l9_194).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_195=encodeDepth(viewSpaceDepth(),texture2D(sc_OITFilteredDepthBoundsTexture,l9_194).xy);
float l9_196=packValue(l9_195);
int l9_203=int(l9_192.w*255.0);
float l9_204=packValue(l9_203);
sc_writeFragData0(vec4(packValue(l9_195),packValue(l9_195),packValue(l9_195),packValue(l9_195)));
sc_writeFragData1(vec4(l9_196,packValue(l9_195),packValue(l9_195),packValue(l9_195)));
sc_writeFragData2(vec4(l9_204,packValue(l9_203),packValue(l9_203),packValue(l9_203)));
#if (sc_OITMaxLayersVisualizeLayerCount)
{
sc_writeFragData2(vec4(0.0039215689,0.0,0.0,0.0));
}
#endif
}
#endif
}
#else
{
#if (sc_OITCompositingPass)
{
#if (sc_OITCompositingPass)
{
vec2 l9_207=sc_ScreenCoordsGlobalToView(l9_3);
#if (sc_OITMaxLayers4Plus1)
{
if ((gl_FragCoord.z-texture2D(sc_OITFrontDepthTexture,l9_207).x)<=getFrontLayerZTestEpsilon())
{
discard;
}
}
#endif
int l9_208[8];
int l9_209[8];
int l9_210=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_210<8)
{
l9_208[l9_210]=0;
l9_209[l9_210]=0;
l9_210++;
continue;
}
else
{
break;
}
}
int l9_211;
#if (sc_OITMaxLayers8)
{
l9_211=2;
}
#else
{
l9_211=1;
}
#endif
int l9_212=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_212<l9_211)
{
vec4 l9_213;
vec4 l9_214;
vec4 l9_215;
if (l9_212==0)
{
l9_215=texture2D(sc_OITAlpha0,l9_207);
l9_214=texture2D(sc_OITDepthLow0,l9_207);
l9_213=texture2D(sc_OITDepthHigh0,l9_207);
}
else
{
l9_215=vec4(0.0);
l9_214=vec4(0.0);
l9_213=vec4(0.0);
}
vec4 l9_216;
vec4 l9_217;
vec4 l9_218;
if (l9_212==1)
{
l9_218=texture2D(sc_OITAlpha1,l9_207);
l9_217=texture2D(sc_OITDepthLow1,l9_207);
l9_216=texture2D(sc_OITDepthHigh1,l9_207);
}
else
{
l9_218=l9_215;
l9_217=l9_214;
l9_216=l9_213;
}
if (any(notEqual(l9_216,vec4(0.0)))||any(notEqual(l9_217,vec4(0.0))))
{
int l9_219[8]=l9_208;
unpackValues(l9_216.w,l9_212,l9_219);
unpackValues(l9_216.z,l9_212,l9_219);
unpackValues(l9_216.y,l9_212,l9_219);
unpackValues(l9_216.x,l9_212,l9_219);
unpackValues(l9_217.w,l9_212,l9_219);
unpackValues(l9_217.z,l9_212,l9_219);
unpackValues(l9_217.y,l9_212,l9_219);
unpackValues(l9_217.x,l9_212,l9_219);
int l9_228[8]=l9_209;
unpackValues(l9_218.w,l9_212,l9_228);
unpackValues(l9_218.z,l9_212,l9_228);
unpackValues(l9_218.y,l9_212,l9_228);
unpackValues(l9_218.x,l9_212,l9_228);
}
l9_212++;
continue;
}
else
{
break;
}
}
vec4 l9_233=texture2D(sc_OITFilteredDepthBoundsTexture,l9_207);
vec2 l9_234=l9_233.xy;
int l9_235;
#if (sc_SkinBonesCount>0)
{
l9_235=encodeDepth(((1.0-l9_233.x)*1000.0)+getDepthOrderingEpsilon(),l9_234);
}
#else
{
l9_235=0;
}
#endif
int l9_236=encodeDepth(viewSpaceDepth(),l9_234);
vec4 l9_237;
l9_237=l9_192*l9_192.w;
vec4 l9_238;
int l9_239=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_239<8)
{
int l9_240=l9_208[l9_239];
int l9_241=l9_236-l9_235;
bool l9_242=l9_240<l9_241;
bool l9_243;
if (l9_242)
{
l9_243=l9_208[l9_239]>0;
}
else
{
l9_243=l9_242;
}
if (l9_243)
{
vec3 l9_244=l9_237.xyz*(1.0-(float(l9_209[l9_239])/255.0));
l9_238=vec4(l9_244.x,l9_244.y,l9_244.z,l9_237.w);
}
else
{
l9_238=l9_237;
}
l9_237=l9_238;
l9_239++;
continue;
}
else
{
break;
}
}
sc_writeFragData0(l9_237);
#if (sc_OITMaxLayersVisualizeLayerCount)
{
discard;
}
#endif
}
#endif
}
#else
{
#if (sc_OITFrontLayerPass)
{
#if (sc_OITFrontLayerPass)
{
if (abs(gl_FragCoord.z-texture2D(sc_OITFrontDepthTexture,sc_ScreenCoordsGlobalToView(l9_3)).x)>getFrontLayerZTestEpsilon())
{
discard;
}
sc_writeFragData0(l9_192);
}
#endif
}
#else
{
sc_writeFragData0(l9_191);
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif
}
#endif // #elif defined FRAGMENT_SHADER // #if defined VERTEX_SHADER
