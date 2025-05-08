#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_BACKEND_SHADER_FLAGS_END__
#endif
#ifdef followPointer
#undef followPointer
#endif
#ifdef useFill
#undef useFill
#endif
#ifdef usePointer
#undef usePointer
#endif
namespace SNAP_VS {
int sc_GetStereoViewIndex()
{
    return 0;
}
}
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
    #ifndef sc_SampleTexture
        #define sc_SampleTexture sc_SampleTextureBiasOrLevel
    #endif
    #ifndef sc_texture2DLod
        #define sc_texture2DLod sc_InternalTextureLevel
        #define sc_textureLod sc_InternalTextureLevel
        #define sc_textureBias sc_InternalTextureBiasOrLevel
        #define sc_texture sc_InternalTexture
    #endif
#ifdef uv2
#undef uv2
#endif
#ifdef uv3
#undef uv3
#endif
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
//output vec4 FragColor0 0
//output vec4 FragColor1 1
//output vec4 FragColor2 2
//output vec4 FragColor3 3
//sampler sampler backgroundSmpSC 0:25
//sampler sampler celebrationSmpSC 0:26
//sampler sampler intensityTextureSmpSC 0:27
//sampler sampler pointerSmpSC 0:28
//sampler sampler progressionSmpSC 0:29
//sampler sampler sc_ScreenTextureSmpSC 0:34
//sampler sampler z_hitIdAndBarycentricSmp 0:37
//sampler sampler z_rayDirectionsSmpSC 0:38
//texture texture2D background 0:4:0:25
//texture texture2D celebration 0:5:0:26
//texture texture2D intensityTexture 0:6:0:27
//texture texture2D pointer 0:7:0:28
//texture texture2D progression 0:8:0:29
//texture texture2D sc_ScreenTexture 0:20:0:34
//texture utexture2D z_hitIdAndBarycentric 0:23:0:37
//texture texture2D z_rayDirections 0:24:0:38
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:39:5440 {
//float4 sc_Time 1376
//float4 sc_UniformConstants 1392
//float4x4 sc_ViewProjectionMatrixArray 1680:[2]:64
//float4x4 sc_ModelViewMatrixArray 1936:[2]:64
//float4x4 sc_ProjectionMatrixArray 2384:[2]:64
//float4x4 sc_ProjectionMatrixInverseArray 2512:[2]:64
//float4x4 sc_ViewMatrixArray 2640:[2]:64
//float4x4 sc_PrevFrameViewProjectionMatrixArray 2896:[2]:64
//float4x4 sc_ModelMatrix 3024
//float4x4 sc_ModelMatrixInverse 3088
//float3x3 sc_NormalMatrix 3152
//float4x4 sc_PrevFrameModelMatrix 3248
//float4 sc_CurrentRenderTargetDims 3456
//sc_Camera_t sc_Camera 3472
//float3 sc_Camera.position 0
//float sc_Camera.aspect 16
//float2 sc_Camera.clipPlanes 24
//float sc_ShadowDensity 3504
//float4 sc_ShadowColor 3520
//float4x4 sc_ProjectorMatrix 3536
//float shaderComplexityValue 3604
//float4 weights0 3616
//float4 weights1 3632
//float4 sc_StereoClipPlanes 3664:[2]:16
//float _sc_framebufferFetchMarker 3700
//float2 sc_TAAJitterOffset 3704
//bool isProxyMode 3824
//int instance_id 3828
//int lray_triangles_last 3832
//bool noEarlyZ 3836
//bool has_animated_pn 3840
//int emitter_stride 3844
//int proxy_offset_position 3848
//int proxy_offset_normal 3852
//int proxy_offset_tangent 3856
//int proxy_offset_color 3860
//int proxy_offset_texture0 3864
//int proxy_offset_texture1 3868
//int proxy_offset_texture2 3872
//int proxy_offset_texture3 3876
//int proxy_format_position 3880
//int proxy_format_normal 3884
//int proxy_format_tangent 3888
//int proxy_format_color 3892
//int proxy_format_texture0 3896
//int proxy_format_texture1 3900
//int proxy_format_texture2 3904
//int proxy_format_texture3 3908
//float correctedIntensity 3968
//float3x3 intensityTextureTransform 4032
//float4 intensityTextureUvMinMax 4080
//float4 intensityTextureBorderColor 4096
//int overrideTimeEnabled 4124
//float overrideTimeElapsed 4128
//float overrideTimeDelta 4132
//int PreviewEnabled 4136
//float alphaTestThreshold 4144
//float3x3 celebrationTransform 4208
//float4 celebrationUvMinMax 4256
//float4 celebrationBorderColor 4272
//float2 celebrationFrames 4288
//float pointerAlignment 4296
//float4 progressionSize 4304
//float3x3 progressionTransform 4352
//float4 progressionUvMinMax 4400
//float4 progressionBorderColor 4416
//bool followPointer 4432
//float2 celebrationAlignment 4440
//float progressUpdate 4448
//float maxProgression 4452
//float minProgression 4456
//float celebrationScale 4460
//float celebrationTime 4464
//float celebrate 4468
//float4 backgroundSize 4480
//float3x3 backgroundTransform 4528
//float4 backgroundUvMinMax 4576
//float4 backgroundBorderColor 4592
//bool useFill 4608
//float3x3 pointerTransform 4672
//float4 pointerUvMinMax 4720
//float4 pointerBorderColor 4736
//float pointerScale 4752
//bool usePointer 4756
//float Port_Input0_N015 4760
//float Port_MaxFrames_N178 4764
//float2 Port_Input0_N025 4768
//float Port_Value1_N225 4776
//float Port_Value2_N227 4780
//float Port_Value1_N116 4784
//float Port_Value2_N117 4800
//float Port_Input1_N112 4804
//float Port_Input1_N156 4808
//float2 Port_Input0_N018 4816
//float Port_RangeMinA_N249 4824
//float Port_RangeMaxA_N249 4828
//float2 Port_Input0_N113 4832
//float2 Port_Input1_N113 4840
//float2 Port_Center_N006 4848
//float2 Port_Input1_N009 4856
//float2 Port_Input2_N009 4864
//float4 Port_Import_N035 4880
//float Port_Value1_N098 4896
//float Port_Value2_N099 4920
//float Port_Input1_N084 4924
//float2 Port_Center_N102 4928
//float2 Port_Input1_N103 4936
//float2 Port_Input2_N103 4944
//float Port_Input0_N105 4952
//float Port_Import_N104 4956
//float2 Port_Input1_N107 4960
//float2 Port_Input1_N121 4968
//float4 Port_Input0_N208 4992
//float4 Port_Import_N072 5008
//float2 Port_Center_N120 5024
//float2 Port_Input1_N075 5040
//float2 Port_Input2_N075 5048
//float Port_Input0_N089 5056
//float Port_Import_N088 5060
//float2 Port_Input1_N091 5064
//float2 Port_Input1_N092 5072
//float4 Port_Import_N190 5104
//float2 Port_Center_N188 5120
//float2 Port_Input1_N193 5136
//float2 Port_Input2_N193 5144
//float Port_Input0_N195 5152
//float Port_Import_N194 5156
//float2 Port_Input1_N199 5160
//float2 Port_Input1_N200 5168
//float Port_Import_N158 5216
//float Port_Input1_N160 5220
//float Port_Input2_N160 5224
//float Port_Input1_N161 5228
//float Port_Import_N164 5232
//float Port_RangeMinA_N166 5236
//float Port_RangeMaxA_N166 5240
//float Port_RangeMinB_N166 5244
//float Port_Input2_N168 5248
//float4 Port_Import_N211 5280
//float2 Port_Center_N027 5296
//float2 Port_Input1_N214 5312
//float2 Port_Input2_N214 5320
//float Port_Input0_N216 5328
//float Port_Import_N215 5332
//float2 Port_Input1_N218 5336
//float2 Port_Input1_N219 5344
//float Port_Import_N056 5376
//float Port_Input1_N057 5380
//float Port_Input2_N057 5384
//float Port_Input1_N058 5388
//float Port_Import_N061 5392
//float Port_RangeMinA_N065 5396
//float Port_RangeMaxA_N065 5400
//float Port_RangeMinB_N065 5404
//float Port_Input2_N067 5408
//float Port_Input0_N013 5412
//float Port_Input0_N177 5416
//float Port_Input1_N032 5420
//float Port_Input2_N032 5424
//float depthRef 5428
//}
//ssbo int layoutIndices 0:0:4 {
//uint _Triangles 0:[]:4
//}
//ssbo float layoutVerticesPN 0:2:4 {
//float _VerticesPN 0:[]:4
//}
//ssbo float layoutVertices 0:1:4 {
//float _Vertices 0:[]:4
//}
//spec_const bool BLEND_MODE_AVERAGE 0
//spec_const bool BLEND_MODE_BRIGHT 1
//spec_const bool BLEND_MODE_COLOR_BURN 2
//spec_const bool BLEND_MODE_COLOR_DODGE 3
//spec_const bool BLEND_MODE_COLOR 4
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
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30
//spec_const bool SC_USE_CLAMP_TO_BORDER_background 31
//spec_const bool SC_USE_CLAMP_TO_BORDER_celebration 32
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 33
//spec_const bool SC_USE_CLAMP_TO_BORDER_pointer 34
//spec_const bool SC_USE_CLAMP_TO_BORDER_progression 35
//spec_const bool SC_USE_UV_MIN_MAX_background 36
//spec_const bool SC_USE_UV_MIN_MAX_celebration 37
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 38
//spec_const bool SC_USE_UV_MIN_MAX_pointer 39
//spec_const bool SC_USE_UV_MIN_MAX_progression 40
//spec_const bool SC_USE_UV_TRANSFORM_background 41
//spec_const bool SC_USE_UV_TRANSFORM_celebration 42
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 43
//spec_const bool SC_USE_UV_TRANSFORM_pointer 44
//spec_const bool SC_USE_UV_TRANSFORM_progression 45
//spec_const bool UseViewSpaceDepthVariant 46
//spec_const bool backgroundHasSwappedViews 47
//spec_const bool celebrationHasSwappedViews 48
//spec_const bool intensityTextureHasSwappedViews 49
//spec_const bool pointerHasSwappedViews 50
//spec_const bool progressionHasSwappedViews 51
//spec_const bool sc_BlendMode_AddWithAlphaFactor 52
//spec_const bool sc_BlendMode_Add 53
//spec_const bool sc_BlendMode_AlphaTest 54
//spec_const bool sc_BlendMode_AlphaToCoverage 55
//spec_const bool sc_BlendMode_ColoredGlass 56
//spec_const bool sc_BlendMode_Custom 57
//spec_const bool sc_BlendMode_Max 58
//spec_const bool sc_BlendMode_Min 59
//spec_const bool sc_BlendMode_MultiplyOriginal 60
//spec_const bool sc_BlendMode_Multiply 61
//spec_const bool sc_BlendMode_Normal 62
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 63
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 64
//spec_const bool sc_BlendMode_PremultipliedAlpha 65
//spec_const bool sc_BlendMode_Screen 66
//spec_const bool sc_DepthOnly 67
//spec_const bool sc_FramebufferFetch 68
//spec_const bool sc_MotionVectorsPass 69
//spec_const bool sc_OITCompositingPass 70
//spec_const bool sc_OITDepthBoundsPass 71
//spec_const bool sc_OITDepthGatherPass 72
//spec_const bool sc_ProjectiveShadowsCaster 73
//spec_const bool sc_ProjectiveShadowsReceiver 74
//spec_const bool sc_ProxyAlphaOne 75
//spec_const bool sc_RenderAlphaToColor 76
//spec_const bool sc_ScreenTextureHasSwappedViews 77
//spec_const bool sc_ShaderComplexityAnalyzer 78
//spec_const bool sc_TAAEnabled 79
//spec_const bool sc_UseFramebufferFetchMarker 80
//spec_const bool sc_VertexBlendingUseNormals 81
//spec_const bool sc_VertexBlending 82
//spec_const int SC_SOFTWARE_WRAP_MODE_U_background 83
//spec_const int SC_SOFTWARE_WRAP_MODE_U_celebration 84
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 85
//spec_const int SC_SOFTWARE_WRAP_MODE_U_pointer 86
//spec_const int SC_SOFTWARE_WRAP_MODE_U_progression 87
//spec_const int SC_SOFTWARE_WRAP_MODE_V_background 88
//spec_const int SC_SOFTWARE_WRAP_MODE_V_celebration 89
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 90
//spec_const int SC_SOFTWARE_WRAP_MODE_V_pointer 91
//spec_const int SC_SOFTWARE_WRAP_MODE_V_progression 92
//spec_const int backgroundLayout 93
//spec_const int celebrationLayout 94
//spec_const int intensityTextureLayout 95
//spec_const int pointerLayout 96
//spec_const int progressionLayout 97
//spec_const int sc_DepthBufferMode 98
//spec_const int sc_RenderingSpace 99
//spec_const int sc_ScreenTextureLayout 100
//spec_const int sc_ShaderCacheConstant 101
//spec_const int sc_SkinBonesCount 102
//spec_const int sc_StereoRenderingMode 103
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 104
//SG_REFLECTION_END
constant bool BLEND_MODE_AVERAGE [[function_constant(0)]];
constant bool BLEND_MODE_AVERAGE_tmp = is_function_constant_defined(BLEND_MODE_AVERAGE) ? BLEND_MODE_AVERAGE : false;
constant bool BLEND_MODE_BRIGHT [[function_constant(1)]];
constant bool BLEND_MODE_BRIGHT_tmp = is_function_constant_defined(BLEND_MODE_BRIGHT) ? BLEND_MODE_BRIGHT : false;
constant bool BLEND_MODE_COLOR_BURN [[function_constant(2)]];
constant bool BLEND_MODE_COLOR_BURN_tmp = is_function_constant_defined(BLEND_MODE_COLOR_BURN) ? BLEND_MODE_COLOR_BURN : false;
constant bool BLEND_MODE_COLOR_DODGE [[function_constant(3)]];
constant bool BLEND_MODE_COLOR_DODGE_tmp = is_function_constant_defined(BLEND_MODE_COLOR_DODGE) ? BLEND_MODE_COLOR_DODGE : false;
constant bool BLEND_MODE_COLOR [[function_constant(4)]];
constant bool BLEND_MODE_COLOR_tmp = is_function_constant_defined(BLEND_MODE_COLOR) ? BLEND_MODE_COLOR : false;
constant bool BLEND_MODE_DARKEN [[function_constant(5)]];
constant bool BLEND_MODE_DARKEN_tmp = is_function_constant_defined(BLEND_MODE_DARKEN) ? BLEND_MODE_DARKEN : false;
constant bool BLEND_MODE_DIFFERENCE [[function_constant(6)]];
constant bool BLEND_MODE_DIFFERENCE_tmp = is_function_constant_defined(BLEND_MODE_DIFFERENCE) ? BLEND_MODE_DIFFERENCE : false;
constant bool BLEND_MODE_DIVIDE [[function_constant(7)]];
constant bool BLEND_MODE_DIVIDE_tmp = is_function_constant_defined(BLEND_MODE_DIVIDE) ? BLEND_MODE_DIVIDE : false;
constant bool BLEND_MODE_DIVISION [[function_constant(8)]];
constant bool BLEND_MODE_DIVISION_tmp = is_function_constant_defined(BLEND_MODE_DIVISION) ? BLEND_MODE_DIVISION : false;
constant bool BLEND_MODE_EXCLUSION [[function_constant(9)]];
constant bool BLEND_MODE_EXCLUSION_tmp = is_function_constant_defined(BLEND_MODE_EXCLUSION) ? BLEND_MODE_EXCLUSION : false;
constant bool BLEND_MODE_FORGRAY [[function_constant(10)]];
constant bool BLEND_MODE_FORGRAY_tmp = is_function_constant_defined(BLEND_MODE_FORGRAY) ? BLEND_MODE_FORGRAY : false;
constant bool BLEND_MODE_HARD_GLOW [[function_constant(11)]];
constant bool BLEND_MODE_HARD_GLOW_tmp = is_function_constant_defined(BLEND_MODE_HARD_GLOW) ? BLEND_MODE_HARD_GLOW : false;
constant bool BLEND_MODE_HARD_LIGHT [[function_constant(12)]];
constant bool BLEND_MODE_HARD_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_HARD_LIGHT) ? BLEND_MODE_HARD_LIGHT : false;
constant bool BLEND_MODE_HARD_MIX [[function_constant(13)]];
constant bool BLEND_MODE_HARD_MIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_MIX) ? BLEND_MODE_HARD_MIX : false;
constant bool BLEND_MODE_HARD_PHOENIX [[function_constant(14)]];
constant bool BLEND_MODE_HARD_PHOENIX_tmp = is_function_constant_defined(BLEND_MODE_HARD_PHOENIX) ? BLEND_MODE_HARD_PHOENIX : false;
constant bool BLEND_MODE_HARD_REFLECT [[function_constant(15)]];
constant bool BLEND_MODE_HARD_REFLECT_tmp = is_function_constant_defined(BLEND_MODE_HARD_REFLECT) ? BLEND_MODE_HARD_REFLECT : false;
constant bool BLEND_MODE_HUE [[function_constant(16)]];
constant bool BLEND_MODE_HUE_tmp = is_function_constant_defined(BLEND_MODE_HUE) ? BLEND_MODE_HUE : false;
constant bool BLEND_MODE_INTENSE [[function_constant(17)]];
constant bool BLEND_MODE_INTENSE_tmp = is_function_constant_defined(BLEND_MODE_INTENSE) ? BLEND_MODE_INTENSE : false;
constant bool BLEND_MODE_LIGHTEN [[function_constant(18)]];
constant bool BLEND_MODE_LIGHTEN_tmp = is_function_constant_defined(BLEND_MODE_LIGHTEN) ? BLEND_MODE_LIGHTEN : false;
constant bool BLEND_MODE_LINEAR_LIGHT [[function_constant(19)]];
constant bool BLEND_MODE_LINEAR_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_LINEAR_LIGHT) ? BLEND_MODE_LINEAR_LIGHT : false;
constant bool BLEND_MODE_LUMINOSITY [[function_constant(20)]];
constant bool BLEND_MODE_LUMINOSITY_tmp = is_function_constant_defined(BLEND_MODE_LUMINOSITY) ? BLEND_MODE_LUMINOSITY : false;
constant bool BLEND_MODE_NEGATION [[function_constant(21)]];
constant bool BLEND_MODE_NEGATION_tmp = is_function_constant_defined(BLEND_MODE_NEGATION) ? BLEND_MODE_NEGATION : false;
constant bool BLEND_MODE_NOTBRIGHT [[function_constant(22)]];
constant bool BLEND_MODE_NOTBRIGHT_tmp = is_function_constant_defined(BLEND_MODE_NOTBRIGHT) ? BLEND_MODE_NOTBRIGHT : false;
constant bool BLEND_MODE_OVERLAY [[function_constant(23)]];
constant bool BLEND_MODE_OVERLAY_tmp = is_function_constant_defined(BLEND_MODE_OVERLAY) ? BLEND_MODE_OVERLAY : false;
constant bool BLEND_MODE_PIN_LIGHT [[function_constant(24)]];
constant bool BLEND_MODE_PIN_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_PIN_LIGHT) ? BLEND_MODE_PIN_LIGHT : false;
constant bool BLEND_MODE_REALISTIC [[function_constant(25)]];
constant bool BLEND_MODE_REALISTIC_tmp = is_function_constant_defined(BLEND_MODE_REALISTIC) ? BLEND_MODE_REALISTIC : false;
constant bool BLEND_MODE_SATURATION [[function_constant(26)]];
constant bool BLEND_MODE_SATURATION_tmp = is_function_constant_defined(BLEND_MODE_SATURATION) ? BLEND_MODE_SATURATION : false;
constant bool BLEND_MODE_SOFT_LIGHT [[function_constant(27)]];
constant bool BLEND_MODE_SOFT_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_SOFT_LIGHT) ? BLEND_MODE_SOFT_LIGHT : false;
constant bool BLEND_MODE_SUBTRACT [[function_constant(28)]];
constant bool BLEND_MODE_SUBTRACT_tmp = is_function_constant_defined(BLEND_MODE_SUBTRACT) ? BLEND_MODE_SUBTRACT : false;
constant bool BLEND_MODE_VIVID_LIGHT [[function_constant(29)]];
constant bool BLEND_MODE_VIVID_LIGHT_tmp = is_function_constant_defined(BLEND_MODE_VIVID_LIGHT) ? BLEND_MODE_VIVID_LIGHT : false;
constant bool ENABLE_STIPPLE_PATTERN_TEST [[function_constant(30)]];
constant bool ENABLE_STIPPLE_PATTERN_TEST_tmp = is_function_constant_defined(ENABLE_STIPPLE_PATTERN_TEST) ? ENABLE_STIPPLE_PATTERN_TEST : false;
constant bool SC_USE_CLAMP_TO_BORDER_background [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_background_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_background) ? SC_USE_CLAMP_TO_BORDER_background : false;
constant bool SC_USE_CLAMP_TO_BORDER_celebration [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_celebration_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_celebration) ? SC_USE_CLAMP_TO_BORDER_celebration : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_pointer [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_pointer_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_pointer) ? SC_USE_CLAMP_TO_BORDER_pointer : false;
constant bool SC_USE_CLAMP_TO_BORDER_progression [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_progression_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_progression) ? SC_USE_CLAMP_TO_BORDER_progression : false;
constant bool SC_USE_UV_MIN_MAX_background [[function_constant(36)]];
constant bool SC_USE_UV_MIN_MAX_background_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_background) ? SC_USE_UV_MIN_MAX_background : false;
constant bool SC_USE_UV_MIN_MAX_celebration [[function_constant(37)]];
constant bool SC_USE_UV_MIN_MAX_celebration_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_celebration) ? SC_USE_UV_MIN_MAX_celebration : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(38)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_pointer [[function_constant(39)]];
constant bool SC_USE_UV_MIN_MAX_pointer_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_pointer) ? SC_USE_UV_MIN_MAX_pointer : false;
constant bool SC_USE_UV_MIN_MAX_progression [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_progression_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_progression) ? SC_USE_UV_MIN_MAX_progression : false;
constant bool SC_USE_UV_TRANSFORM_background [[function_constant(41)]];
constant bool SC_USE_UV_TRANSFORM_background_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_background) ? SC_USE_UV_TRANSFORM_background : false;
constant bool SC_USE_UV_TRANSFORM_celebration [[function_constant(42)]];
constant bool SC_USE_UV_TRANSFORM_celebration_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_celebration) ? SC_USE_UV_TRANSFORM_celebration : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(43)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_pointer [[function_constant(44)]];
constant bool SC_USE_UV_TRANSFORM_pointer_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_pointer) ? SC_USE_UV_TRANSFORM_pointer : false;
constant bool SC_USE_UV_TRANSFORM_progression [[function_constant(45)]];
constant bool SC_USE_UV_TRANSFORM_progression_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_progression) ? SC_USE_UV_TRANSFORM_progression : false;
constant bool UseViewSpaceDepthVariant [[function_constant(46)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool backgroundHasSwappedViews [[function_constant(47)]];
constant bool backgroundHasSwappedViews_tmp = is_function_constant_defined(backgroundHasSwappedViews) ? backgroundHasSwappedViews : false;
constant bool celebrationHasSwappedViews [[function_constant(48)]];
constant bool celebrationHasSwappedViews_tmp = is_function_constant_defined(celebrationHasSwappedViews) ? celebrationHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(49)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool pointerHasSwappedViews [[function_constant(50)]];
constant bool pointerHasSwappedViews_tmp = is_function_constant_defined(pointerHasSwappedViews) ? pointerHasSwappedViews : false;
constant bool progressionHasSwappedViews [[function_constant(51)]];
constant bool progressionHasSwappedViews_tmp = is_function_constant_defined(progressionHasSwappedViews) ? progressionHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(52)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(53)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(54)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(55)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(56)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(57)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(58)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(59)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(60)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(61)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(62)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(63)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(64)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(65)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(66)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(67)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(68)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(69)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(70)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(71)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(72)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(73)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(74)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_ProxyAlphaOne [[function_constant(75)]];
constant bool sc_ProxyAlphaOne_tmp = is_function_constant_defined(sc_ProxyAlphaOne) ? sc_ProxyAlphaOne : false;
constant bool sc_RenderAlphaToColor [[function_constant(76)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(77)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_ShaderComplexityAnalyzer [[function_constant(78)]];
constant bool sc_ShaderComplexityAnalyzer_tmp = is_function_constant_defined(sc_ShaderComplexityAnalyzer) ? sc_ShaderComplexityAnalyzer : false;
constant bool sc_TAAEnabled [[function_constant(79)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_UseFramebufferFetchMarker [[function_constant(80)]];
constant bool sc_UseFramebufferFetchMarker_tmp = is_function_constant_defined(sc_UseFramebufferFetchMarker) ? sc_UseFramebufferFetchMarker : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(81)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(82)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant int SC_SOFTWARE_WRAP_MODE_U_background [[function_constant(83)]];
constant int SC_SOFTWARE_WRAP_MODE_U_background_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_background) ? SC_SOFTWARE_WRAP_MODE_U_background : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_celebration [[function_constant(84)]];
constant int SC_SOFTWARE_WRAP_MODE_U_celebration_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_celebration) ? SC_SOFTWARE_WRAP_MODE_U_celebration : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(85)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_pointer [[function_constant(86)]];
constant int SC_SOFTWARE_WRAP_MODE_U_pointer_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_pointer) ? SC_SOFTWARE_WRAP_MODE_U_pointer : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_progression [[function_constant(87)]];
constant int SC_SOFTWARE_WRAP_MODE_U_progression_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_progression) ? SC_SOFTWARE_WRAP_MODE_U_progression : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_background [[function_constant(88)]];
constant int SC_SOFTWARE_WRAP_MODE_V_background_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_background) ? SC_SOFTWARE_WRAP_MODE_V_background : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_celebration [[function_constant(89)]];
constant int SC_SOFTWARE_WRAP_MODE_V_celebration_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_celebration) ? SC_SOFTWARE_WRAP_MODE_V_celebration : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(90)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_pointer [[function_constant(91)]];
constant int SC_SOFTWARE_WRAP_MODE_V_pointer_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_pointer) ? SC_SOFTWARE_WRAP_MODE_V_pointer : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_progression [[function_constant(92)]];
constant int SC_SOFTWARE_WRAP_MODE_V_progression_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_progression) ? SC_SOFTWARE_WRAP_MODE_V_progression : -1;
constant int backgroundLayout [[function_constant(93)]];
constant int backgroundLayout_tmp = is_function_constant_defined(backgroundLayout) ? backgroundLayout : 0;
constant int celebrationLayout [[function_constant(94)]];
constant int celebrationLayout_tmp = is_function_constant_defined(celebrationLayout) ? celebrationLayout : 0;
constant int intensityTextureLayout [[function_constant(95)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int pointerLayout [[function_constant(96)]];
constant int pointerLayout_tmp = is_function_constant_defined(pointerLayout) ? pointerLayout : 0;
constant int progressionLayout [[function_constant(97)]];
constant int progressionLayout_tmp = is_function_constant_defined(progressionLayout) ? progressionLayout : 0;
constant int sc_DepthBufferMode [[function_constant(98)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(99)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(100)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(101)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(102)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(103)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(104)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;

namespace SNAP_VS {
struct sc_Vertex_t
{
float4 position;
float3 normal;
float3 tangent;
float2 texture0;
float2 texture1;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float _sc_GetFramebufferColorInvalidUsageMarker;
float shaderComplexityValue;
float sc_DisableFrustumCullingMarker;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float _sc_framebufferFetchMarker;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int isProxyMode;
int instance_id;
int lray_triangles_last;
int noEarlyZ;
int has_animated_pn;
int emitter_stride;
int proxy_offset_position;
int proxy_offset_normal;
int proxy_offset_tangent;
int proxy_offset_color;
int proxy_offset_texture0;
int proxy_offset_texture1;
int proxy_offset_texture2;
int proxy_offset_texture3;
int proxy_format_position;
int proxy_format_normal;
int proxy_format_tangent;
int proxy_format_color;
int proxy_format_texture0;
int proxy_format_texture1;
int proxy_format_texture2;
int proxy_format_texture3;
float4 z_rayDirectionsSize;
float4 z_rayDirectionsDims;
float4 z_rayDirectionsView;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed;
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 celebrationSize;
float4 celebrationDims;
float4 celebrationView;
float3x3 celebrationTransform;
float4 celebrationUvMinMax;
float4 celebrationBorderColor;
float2 celebrationFrames;
float pointerAlignment;
float4 progressionSize;
float4 progressionDims;
float4 progressionView;
float3x3 progressionTransform;
float4 progressionUvMinMax;
float4 progressionBorderColor;
int followPointer;
float2 celebrationAlignment;
float progressUpdate;
float maxProgression;
float minProgression;
float celebrationScale;
float celebrationTime;
float celebrate;
float4 backgroundSize;
float4 backgroundDims;
float4 backgroundView;
float3x3 backgroundTransform;
float4 backgroundUvMinMax;
float4 backgroundBorderColor;
int useFill;
float4 pointerSize;
float4 pointerDims;
float4 pointerView;
float3x3 pointerTransform;
float4 pointerUvMinMax;
float4 pointerBorderColor;
float pointerScale;
int usePointer;
float Port_Input0_N015;
float Port_MaxFrames_N178;
float2 Port_Input0_N025;
float Port_Value1_N225;
float Port_Value2_N227;
float Port_Value1_N116;
float2 Port_Import_N109;
float Port_Value2_N117;
float Port_Input1_N112;
float Port_Input1_N156;
float2 Port_Input0_N018;
float Port_RangeMinA_N249;
float Port_RangeMaxA_N249;
float2 Port_Input0_N113;
float2 Port_Input1_N113;
float2 Port_Center_N006;
float2 Port_Input1_N009;
float2 Port_Input2_N009;
float Port_Speed_N178;
float Port_SecondOffset_N178;
float4 Port_Import_N035;
float Port_Value1_N098;
float2 Port_Import_N069;
float2 Port_Import_N079;
float Port_Value2_N099;
float Port_Input1_N084;
float2 Port_Center_N102;
float2 Port_Input1_N103;
float2 Port_Input2_N103;
float Port_Input0_N105;
float Port_Import_N104;
float2 Port_Input1_N107;
float2 Port_Input1_N121;
float4 Port_Import_N082;
float4 Port_Input0_N208;
float4 Port_Import_N072;
float2 Port_Center_N120;
float2 Port_Import_N074;
float2 Port_Input1_N075;
float2 Port_Input2_N075;
float Port_Input0_N089;
float Port_Import_N088;
float2 Port_Input1_N091;
float2 Port_Input1_N092;
float4 Port_Import_N205;
float4 Port_Import_N190;
float2 Port_Center_N188;
float2 Port_Import_N192;
float2 Port_Input1_N193;
float2 Port_Input2_N193;
float Port_Input0_N195;
float Port_Import_N194;
float2 Port_Input1_N199;
float2 Port_Input1_N200;
float4 Port_Import_N206;
float4 Port_Import_N157;
float Port_Import_N158;
float Port_Input1_N160;
float Port_Input2_N160;
float Port_Input1_N161;
float Port_Import_N164;
float Port_RangeMinA_N166;
float Port_RangeMaxA_N166;
float Port_RangeMinB_N166;
float Port_Input2_N168;
float4 Port_Import_N054;
float4 Port_Import_N211;
float2 Port_Center_N027;
float2 Port_Import_N213;
float2 Port_Input1_N214;
float2 Port_Input2_N214;
float Port_Input0_N216;
float Port_Import_N215;
float2 Port_Input1_N218;
float2 Port_Input1_N219;
float4 Port_Import_N055;
float Port_Import_N056;
float Port_Input1_N057;
float Port_Input2_N057;
float Port_Input1_N058;
float Port_Import_N061;
float Port_RangeMinA_N065;
float Port_RangeMaxA_N065;
float Port_RangeMinB_N065;
float Port_Input2_N067;
float Port_Input0_N013;
float Port_Input0_N177;
float Port_Input1_N032;
float Port_Input2_N032;
float depthRef;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct layoutIndices_obj
{
uint _Triangles[1];
};
struct layoutVertices_obj
{
float _Vertices[1];
};
struct layoutVerticesPN_obj
{
float _VerticesPN[1];
};
struct sc_Set0
{
const device layoutIndices_obj* layoutIndices [[id(0)]];
const device layoutVertices_obj* layoutVertices [[id(1)]];
const device layoutVerticesPN_obj* layoutVerticesPN [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> background [[id(4)]];
texture2d<float> celebration [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> pointer [[id(7)]];
texture2d<float> progression [[id(8)]];
texture2d<float> sc_ScreenTexture [[id(20)]];
texture2d<uint> z_hitIdAndBarycentric [[id(23)]];
texture2d<float> z_rayDirections [[id(24)]];
sampler backgroundSmpSC [[id(25)]];
sampler celebrationSmpSC [[id(26)]];
sampler intensityTextureSmpSC [[id(27)]];
sampler pointerSmpSC [[id(28)]];
sampler progressionSmpSC [[id(29)]];
sampler sc_ScreenTextureSmpSC [[id(34)]];
sampler z_hitIdAndBarycentricSmp [[id(37)]];
sampler z_rayDirectionsSmpSC [[id(38)]];
constant userUniformsObj* UserUniforms [[id(39)]];
};
struct main_vert_out
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
float4 gl_Position [[position]];
};
struct main_vert_in
{
float4 position [[attribute(0)]];
float3 normal [[attribute(1)]];
float4 tangent [[attribute(2)]];
float2 texture0 [[attribute(3)]];
float2 texture1 [[attribute(4)]];
float4 boneData [[attribute(5)]];
float3 blendShape0Pos [[attribute(6)]];
float3 blendShape1Pos [[attribute(7)]];
float3 blendShape2Pos [[attribute(8)]];
float3 blendShape3Pos [[attribute(9)]];
float3 blendShape4Pos [[attribute(10)]];
float3 blendShape5Pos [[attribute(11)]];
float3 blendShape0Normal [[attribute(12)]];
float3 blendShape1Normal [[attribute(13)]];
float3 blendShape2Normal [[attribute(14)]];
float3 positionNext [[attribute(15)]];
float3 positionPrevious [[attribute(16)]];
float4 strandProperties [[attribute(17)]];
float4 color [[attribute(18)]];
};
vertex main_vert_out main_vert(main_vert_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],uint gl_InstanceIndex [[instance_id]])
{
main_vert_out out={};
bool l9_0=(*sc_set0.UserUniforms).isProxyMode!=0;
if (l9_0)
{
float4 param=float4(in.position.xy,(*sc_set0.UserUniforms).depthRef+(1e-10*in.position.z),1.0+(1e-10*in.position.w));
if (sc_ShaderCacheConstant_tmp!=0)
{
param.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_1=param;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_2=dot(l9_1,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_3=l9_2;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_3;
}
}
float4 l9_4=float4(param.x,-param.y,(param.z*0.5)+(param.w*0.5),param.w);
out.gl_Position=l9_4;
return out;
}
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_6;
l9_6.position=in.position;
l9_6.normal=in.normal;
l9_6.tangent=in.tangent.xyz;
l9_6.texture0=in.texture0;
l9_6.texture1=in.texture1;
sc_Vertex_t l9_7=l9_6;
sc_Vertex_t param_1=l9_7;
sc_Vertex_t l9_8=param_1;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_9=l9_8;
float3 l9_10=in.blendShape0Pos;
float3 l9_11=in.blendShape0Normal;
float l9_12=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_13=l9_9;
float3 l9_14=l9_10;
float l9_15=l9_12;
float3 l9_16=l9_13.position.xyz+(l9_14*l9_15);
l9_13.position=float4(l9_16.x,l9_16.y,l9_16.z,l9_13.position.w);
l9_9=l9_13;
l9_9.normal+=(l9_11*l9_12);
l9_8=l9_9;
sc_Vertex_t l9_17=l9_8;
float3 l9_18=in.blendShape1Pos;
float3 l9_19=in.blendShape1Normal;
float l9_20=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_21=l9_17;
float3 l9_22=l9_18;
float l9_23=l9_20;
float3 l9_24=l9_21.position.xyz+(l9_22*l9_23);
l9_21.position=float4(l9_24.x,l9_24.y,l9_24.z,l9_21.position.w);
l9_17=l9_21;
l9_17.normal+=(l9_19*l9_20);
l9_8=l9_17;
sc_Vertex_t l9_25=l9_8;
float3 l9_26=in.blendShape2Pos;
float3 l9_27=in.blendShape2Normal;
float l9_28=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_29=l9_25;
float3 l9_30=l9_26;
float l9_31=l9_28;
float3 l9_32=l9_29.position.xyz+(l9_30*l9_31);
l9_29.position=float4(l9_32.x,l9_32.y,l9_32.z,l9_29.position.w);
l9_25=l9_29;
l9_25.normal+=(l9_27*l9_28);
l9_8=l9_25;
}
else
{
sc_Vertex_t l9_33=l9_8;
float3 l9_34=in.blendShape0Pos;
float l9_35=(*sc_set0.UserUniforms).weights0.x;
float3 l9_36=l9_33.position.xyz+(l9_34*l9_35);
l9_33.position=float4(l9_36.x,l9_36.y,l9_36.z,l9_33.position.w);
l9_8=l9_33;
sc_Vertex_t l9_37=l9_8;
float3 l9_38=in.blendShape1Pos;
float l9_39=(*sc_set0.UserUniforms).weights0.y;
float3 l9_40=l9_37.position.xyz+(l9_38*l9_39);
l9_37.position=float4(l9_40.x,l9_40.y,l9_40.z,l9_37.position.w);
l9_8=l9_37;
sc_Vertex_t l9_41=l9_8;
float3 l9_42=in.blendShape2Pos;
float l9_43=(*sc_set0.UserUniforms).weights0.z;
float3 l9_44=l9_41.position.xyz+(l9_42*l9_43);
l9_41.position=float4(l9_44.x,l9_44.y,l9_44.z,l9_41.position.w);
l9_8=l9_41;
sc_Vertex_t l9_45=l9_8;
float3 l9_46=in.blendShape3Pos;
float l9_47=(*sc_set0.UserUniforms).weights0.w;
float3 l9_48=l9_45.position.xyz+(l9_46*l9_47);
l9_45.position=float4(l9_48.x,l9_48.y,l9_48.z,l9_45.position.w);
l9_8=l9_45;
sc_Vertex_t l9_49=l9_8;
float3 l9_50=in.blendShape4Pos;
float l9_51=(*sc_set0.UserUniforms).weights1.x;
float3 l9_52=l9_49.position.xyz+(l9_50*l9_51);
l9_49.position=float4(l9_52.x,l9_52.y,l9_52.z,l9_49.position.w);
l9_8=l9_49;
sc_Vertex_t l9_53=l9_8;
float3 l9_54=in.blendShape5Pos;
float l9_55=(*sc_set0.UserUniforms).weights1.y;
float3 l9_56=l9_53.position.xyz+(l9_54*l9_55);
l9_53.position=float4(l9_56.x,l9_56.y,l9_56.z,l9_53.position.w);
l9_8=l9_53;
}
}
param_1=l9_8;
sc_Vertex_t l9_57=param_1;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_58=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_58=float4(1.0,fract(in.boneData.yzw));
l9_58.x-=dot(l9_58.yzw,float3(1.0));
}
float4 l9_59=l9_58;
float4 l9_60=l9_59;
int l9_61=int(in.boneData.x);
int l9_62=int(in.boneData.y);
int l9_63=int(in.boneData.z);
int l9_64=int(in.boneData.w);
int l9_65=l9_61;
float4 l9_66=l9_57.position;
float3 l9_67=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_68=l9_65;
float4 l9_69=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[0];
float4 l9_70=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[1];
float4 l9_71=(*sc_set0.sc_BonesUBO).sc_Bones[l9_68].boneMatrix[2];
float4 l9_72[3];
l9_72[0]=l9_69;
l9_72[1]=l9_70;
l9_72[2]=l9_71;
l9_67=float3(dot(l9_66,l9_72[0]),dot(l9_66,l9_72[1]),dot(l9_66,l9_72[2]));
}
else
{
l9_67=l9_66.xyz;
}
float3 l9_73=l9_67;
float3 l9_74=l9_73;
float l9_75=l9_60.x;
int l9_76=l9_62;
float4 l9_77=l9_57.position;
float3 l9_78=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_79=l9_76;
float4 l9_80=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[0];
float4 l9_81=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[1];
float4 l9_82=(*sc_set0.sc_BonesUBO).sc_Bones[l9_79].boneMatrix[2];
float4 l9_83[3];
l9_83[0]=l9_80;
l9_83[1]=l9_81;
l9_83[2]=l9_82;
l9_78=float3(dot(l9_77,l9_83[0]),dot(l9_77,l9_83[1]),dot(l9_77,l9_83[2]));
}
else
{
l9_78=l9_77.xyz;
}
float3 l9_84=l9_78;
float3 l9_85=l9_84;
float l9_86=l9_60.y;
int l9_87=l9_63;
float4 l9_88=l9_57.position;
float3 l9_89=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_90=l9_87;
float4 l9_91=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[0];
float4 l9_92=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[1];
float4 l9_93=(*sc_set0.sc_BonesUBO).sc_Bones[l9_90].boneMatrix[2];
float4 l9_94[3];
l9_94[0]=l9_91;
l9_94[1]=l9_92;
l9_94[2]=l9_93;
l9_89=float3(dot(l9_88,l9_94[0]),dot(l9_88,l9_94[1]),dot(l9_88,l9_94[2]));
}
else
{
l9_89=l9_88.xyz;
}
float3 l9_95=l9_89;
float3 l9_96=l9_95;
float l9_97=l9_60.z;
int l9_98=l9_64;
float4 l9_99=l9_57.position;
float3 l9_100=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_101=l9_98;
float4 l9_102=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[0];
float4 l9_103=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[1];
float4 l9_104=(*sc_set0.sc_BonesUBO).sc_Bones[l9_101].boneMatrix[2];
float4 l9_105[3];
l9_105[0]=l9_102;
l9_105[1]=l9_103;
l9_105[2]=l9_104;
l9_100=float3(dot(l9_99,l9_105[0]),dot(l9_99,l9_105[1]),dot(l9_99,l9_105[2]));
}
else
{
l9_100=l9_99.xyz;
}
float3 l9_106=l9_100;
float3 l9_107=(((l9_74*l9_75)+(l9_85*l9_86))+(l9_96*l9_97))+(l9_106*l9_60.w);
l9_57.position=float4(l9_107.x,l9_107.y,l9_107.z,l9_57.position.w);
int l9_108=l9_61;
float3x3 l9_109=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_108].normalMatrix[2].xyz));
float3x3 l9_110=l9_109;
float3x3 l9_111=l9_110;
int l9_112=l9_62;
float3x3 l9_113=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_112].normalMatrix[2].xyz));
float3x3 l9_114=l9_113;
float3x3 l9_115=l9_114;
int l9_116=l9_63;
float3x3 l9_117=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_116].normalMatrix[2].xyz));
float3x3 l9_118=l9_117;
float3x3 l9_119=l9_118;
int l9_120=l9_64;
float3x3 l9_121=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_120].normalMatrix[2].xyz));
float3x3 l9_122=l9_121;
float3x3 l9_123=l9_122;
l9_57.normal=((((l9_111*l9_57.normal)*l9_60.x)+((l9_115*l9_57.normal)*l9_60.y))+((l9_119*l9_57.normal)*l9_60.z))+((l9_123*l9_57.normal)*l9_60.w);
l9_57.tangent=((((l9_111*l9_57.tangent)*l9_60.x)+((l9_115*l9_57.tangent)*l9_60.y))+((l9_119*l9_57.tangent)*l9_60.z))+((l9_123*l9_57.tangent)*l9_60.w);
}
param_1=l9_57;
if (sc_RenderingSpace_tmp==3)
{
out.varPos=float3(0.0);
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPos=float3(0.0);
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPos=param_1.position.xyz;
out.varNormal=param_1.normal;
out.varTangent=float4(param_1.tangent.x,param_1.tangent.y,param_1.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
out.varPos=((*sc_set0.UserUniforms).sc_ModelMatrix*param_1.position).xyz;
out.varNormal=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.normal;
float3 l9_124=(*sc_set0.UserUniforms).sc_NormalMatrix*param_1.tangent;
out.varTangent=float4(l9_124.x,l9_124.y,l9_124.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param_1.texture0.x=1.0-param_1.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param_1;
float3 WorldPosition=out.varPos;
float3 WorldNormal=out.varNormal;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPos;
WorldNormal=out.varNormal;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_2=v;
float3 param_3=WorldPosition;
float3 param_4=WorldNormal;
float3 param_5=WorldTangent;
float4 param_6=v.position;
out.varPos=param_3;
out.varNormal=normalize(param_4);
float3 l9_125=normalize(param_5);
out.varTangent=float4(l9_125.x,l9_125.y,l9_125.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_126=param_2.position;
float4 l9_127=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_128=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_128=0;
}
else
{
l9_128=gl_InstanceIndex%2;
}
int l9_129=l9_128;
l9_127=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_129]*l9_126;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_130=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_130=0;
}
else
{
l9_130=gl_InstanceIndex%2;
}
int l9_131=l9_130;
l9_127=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_131]*l9_126;
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_132=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_132=0;
}
else
{
l9_132=gl_InstanceIndex%2;
}
int l9_133=l9_132;
l9_127=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_133]*l9_126;
}
else
{
l9_127=l9_126;
}
}
}
float4 l9_134=l9_127;
out.varViewSpaceDepth=-l9_134.z;
}
float4 l9_135=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_135=param_6;
}
else
{
if (sc_RenderingSpace_tmp==4)
{
int l9_136=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_136=0;
}
else
{
l9_136=gl_InstanceIndex%2;
}
int l9_137=l9_136;
l9_135=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_137]*param_2.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_138=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_138=0;
}
else
{
l9_138=gl_InstanceIndex%2;
}
int l9_139=l9_138;
l9_135=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_139]*float4(out.varPos,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
int l9_140=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_140=0;
}
else
{
l9_140=gl_InstanceIndex%2;
}
int l9_141=l9_140;
l9_135=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_141]*float4(out.varPos,1.0);
}
}
}
}
out.varPackedTex=float4(param_2.texture0,param_2.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_142=param_2.position;
float4 l9_143=l9_142;
if (sc_RenderingSpace_tmp==1)
{
l9_143=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_142;
}
float4 l9_144=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_143;
float2 l9_145=((l9_144.xy/float2(l9_144.w))*0.5)+float2(0.5);
out.varShadowTex=l9_145;
}
float4 l9_146=l9_135;
if (sc_DepthBufferMode_tmp==1)
{
int l9_147=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_147=0;
}
else
{
l9_147=gl_InstanceIndex%2;
}
int l9_148=l9_147;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_148][2].w!=0.0)
{
float l9_149=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_146.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_146.w))*l9_149)-1.0)*l9_146.w;
}
}
float4 l9_150=l9_146;
l9_135=l9_150;
float4 l9_151=l9_135;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_152=l9_151.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_151.w);
l9_151=float4(l9_152.x,l9_152.y,l9_151.z,l9_151.w);
}
float4 l9_153=l9_151;
l9_135=l9_153;
float4 l9_154=l9_135;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_154.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_155=l9_154;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_156=dot(l9_155,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_157=l9_156;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_157;
}
}
float4 l9_158=float4(l9_154.x,-l9_154.y,(l9_154.z*0.5)+(l9_154.w*0.5),l9_154.w);
out.gl_Position=l9_158;
v=param_2;
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
struct RayHitPayload
{
float3 viewDirWS;
float3 positionWS;
float3 normalWS;
float4 tangentWS;
float4 color;
float2 uv0;
float2 uv1;
float2 uv2;
float2 uv3;
uint2 id;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float2 Surface_UVCoord0;
};
struct sc_PointLight_t
{
int falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
};
struct sc_DirectionalLight_t
{
float3 direction;
float4 color;
};
struct sc_AmbientLight_t
{
float3 color;
float intensity;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct sc_LightEstimationData_t
{
sc_SphericalGaussianLight_t sg[12];
float3 ambientLight;
};
struct sc_Camera_t
{
float3 position;
float aspect;
float2 clipPlanes;
};
struct userUniformsObj
{
sc_PointLight_t sc_PointLights[3];
sc_DirectionalLight_t sc_DirectionalLights[5];
sc_AmbientLight_t sc_AmbientLights[3];
sc_LightEstimationData_t sc_LightEstimationData;
float4 sc_EnvmapDiffuseSize;
float4 sc_EnvmapDiffuseDims;
float4 sc_EnvmapDiffuseView;
float4 sc_EnvmapSpecularSize;
float4 sc_EnvmapSpecularDims;
float4 sc_EnvmapSpecularView;
float3 sc_EnvmapRotation;
float sc_EnvmapExposure;
float3 sc_Sh[9];
float sc_ShIntensity;
float4 sc_Time;
float4 sc_UniformConstants;
float4 sc_GeometryInfo;
float4x4 sc_ModelViewProjectionMatrixArray[2];
float4x4 sc_ModelViewProjectionMatrixInverseArray[2];
float4x4 sc_ViewProjectionMatrixArray[2];
float4x4 sc_ViewProjectionMatrixInverseArray[2];
float4x4 sc_ModelViewMatrixArray[2];
float4x4 sc_ModelViewMatrixInverseArray[2];
float3x3 sc_ViewNormalMatrixArray[2];
float3x3 sc_ViewNormalMatrixInverseArray[2];
float4x4 sc_ProjectionMatrixArray[2];
float4x4 sc_ProjectionMatrixInverseArray[2];
float4x4 sc_ViewMatrixArray[2];
float4x4 sc_ViewMatrixInverseArray[2];
float4x4 sc_PrevFrameViewProjectionMatrixArray[2];
float4x4 sc_ModelMatrix;
float4x4 sc_ModelMatrixInverse;
float3x3 sc_NormalMatrix;
float3x3 sc_NormalMatrixInverse;
float4x4 sc_PrevFrameModelMatrix;
float4x4 sc_PrevFrameModelMatrixInverse;
float3 sc_LocalAabbMin;
float3 sc_LocalAabbMax;
float3 sc_WorldAabbMin;
float3 sc_WorldAabbMax;
float4 sc_WindowToViewportTransform;
float4 sc_CurrentRenderTargetDims;
sc_Camera_t sc_Camera;
float sc_ShadowDensity;
float4 sc_ShadowColor;
float4x4 sc_ProjectorMatrix;
float _sc_GetFramebufferColorInvalidUsageMarker;
float shaderComplexityValue;
float sc_DisableFrustumCullingMarker;
float4 weights0;
float4 weights1;
float4 weights2;
float4 sc_StereoClipPlanes[2];
int sc_FallbackInstanceID;
float _sc_framebufferFetchMarker;
float2 sc_TAAJitterOffset;
float strandWidth;
float strandTaper;
float4 sc_StrandDataMapTextureSize;
float clumpInstanceCount;
float clumpRadius;
float clumpTipScale;
float hairstyleInstanceCount;
float hairstyleNoise;
float4 sc_ScreenTextureSize;
float4 sc_ScreenTextureDims;
float4 sc_ScreenTextureView;
int isProxyMode;
int instance_id;
int lray_triangles_last;
int noEarlyZ;
int has_animated_pn;
int emitter_stride;
int proxy_offset_position;
int proxy_offset_normal;
int proxy_offset_tangent;
int proxy_offset_color;
int proxy_offset_texture0;
int proxy_offset_texture1;
int proxy_offset_texture2;
int proxy_offset_texture3;
int proxy_format_position;
int proxy_format_normal;
int proxy_format_tangent;
int proxy_format_color;
int proxy_format_texture0;
int proxy_format_texture1;
int proxy_format_texture2;
int proxy_format_texture3;
float4 z_rayDirectionsSize;
float4 z_rayDirectionsDims;
float4 z_rayDirectionsView;
float correctedIntensity;
float4 intensityTextureSize;
float4 intensityTextureDims;
float4 intensityTextureView;
float3x3 intensityTextureTransform;
float4 intensityTextureUvMinMax;
float4 intensityTextureBorderColor;
float reflBlurWidth;
float reflBlurMinRough;
float reflBlurMaxRough;
int overrideTimeEnabled;
float overrideTimeElapsed;
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 celebrationSize;
float4 celebrationDims;
float4 celebrationView;
float3x3 celebrationTransform;
float4 celebrationUvMinMax;
float4 celebrationBorderColor;
float2 celebrationFrames;
float pointerAlignment;
float4 progressionSize;
float4 progressionDims;
float4 progressionView;
float3x3 progressionTransform;
float4 progressionUvMinMax;
float4 progressionBorderColor;
int followPointer;
float2 celebrationAlignment;
float progressUpdate;
float maxProgression;
float minProgression;
float celebrationScale;
float celebrationTime;
float celebrate;
float4 backgroundSize;
float4 backgroundDims;
float4 backgroundView;
float3x3 backgroundTransform;
float4 backgroundUvMinMax;
float4 backgroundBorderColor;
int useFill;
float4 pointerSize;
float4 pointerDims;
float4 pointerView;
float3x3 pointerTransform;
float4 pointerUvMinMax;
float4 pointerBorderColor;
float pointerScale;
int usePointer;
float Port_Input0_N015;
float Port_MaxFrames_N178;
float2 Port_Input0_N025;
float Port_Value1_N225;
float Port_Value2_N227;
float Port_Value1_N116;
float2 Port_Import_N109;
float Port_Value2_N117;
float Port_Input1_N112;
float Port_Input1_N156;
float2 Port_Input0_N018;
float Port_RangeMinA_N249;
float Port_RangeMaxA_N249;
float2 Port_Input0_N113;
float2 Port_Input1_N113;
float2 Port_Center_N006;
float2 Port_Input1_N009;
float2 Port_Input2_N009;
float Port_Speed_N178;
float Port_SecondOffset_N178;
float4 Port_Import_N035;
float Port_Value1_N098;
float2 Port_Import_N069;
float2 Port_Import_N079;
float Port_Value2_N099;
float Port_Input1_N084;
float2 Port_Center_N102;
float2 Port_Input1_N103;
float2 Port_Input2_N103;
float Port_Input0_N105;
float Port_Import_N104;
float2 Port_Input1_N107;
float2 Port_Input1_N121;
float4 Port_Import_N082;
float4 Port_Input0_N208;
float4 Port_Import_N072;
float2 Port_Center_N120;
float2 Port_Import_N074;
float2 Port_Input1_N075;
float2 Port_Input2_N075;
float Port_Input0_N089;
float Port_Import_N088;
float2 Port_Input1_N091;
float2 Port_Input1_N092;
float4 Port_Import_N205;
float4 Port_Import_N190;
float2 Port_Center_N188;
float2 Port_Import_N192;
float2 Port_Input1_N193;
float2 Port_Input2_N193;
float Port_Input0_N195;
float Port_Import_N194;
float2 Port_Input1_N199;
float2 Port_Input1_N200;
float4 Port_Import_N206;
float4 Port_Import_N157;
float Port_Import_N158;
float Port_Input1_N160;
float Port_Input2_N160;
float Port_Input1_N161;
float Port_Import_N164;
float Port_RangeMinA_N166;
float Port_RangeMaxA_N166;
float Port_RangeMinB_N166;
float Port_Input2_N168;
float4 Port_Import_N054;
float4 Port_Import_N211;
float2 Port_Center_N027;
float2 Port_Import_N213;
float2 Port_Input1_N214;
float2 Port_Input2_N214;
float Port_Input0_N216;
float Port_Import_N215;
float2 Port_Input1_N218;
float2 Port_Input1_N219;
float4 Port_Import_N055;
float Port_Import_N056;
float Port_Input1_N057;
float Port_Input2_N057;
float Port_Input1_N058;
float Port_Import_N061;
float Port_RangeMinA_N065;
float Port_RangeMaxA_N065;
float Port_RangeMinB_N065;
float Port_Input2_N067;
float Port_Input0_N013;
float Port_Input0_N177;
float Port_Input1_N032;
float Port_Input2_N032;
float depthRef;
};
struct layoutVertices_obj
{
float _Vertices[1];
};
struct layoutVerticesPN_obj
{
float _VerticesPN[1];
};
struct layoutIndices_obj
{
uint _Triangles[1];
};
struct ssPreviewInfo
{
float4 Color;
bool Saved;
};
struct sc_Bone_t
{
float4 boneMatrix[3];
float4 normalMatrix[3];
};
struct sc_Bones_obj
{
sc_Bone_t sc_Bones[1];
};
struct sc_Set0
{
const device layoutIndices_obj* layoutIndices [[id(0)]];
const device layoutVertices_obj* layoutVertices [[id(1)]];
const device layoutVerticesPN_obj* layoutVerticesPN [[id(2)]];
constant sc_Bones_obj* sc_BonesUBO [[id(3)]];
texture2d<float> background [[id(4)]];
texture2d<float> celebration [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> pointer [[id(7)]];
texture2d<float> progression [[id(8)]];
texture2d<float> sc_ScreenTexture [[id(20)]];
texture2d<uint> z_hitIdAndBarycentric [[id(23)]];
texture2d<float> z_rayDirections [[id(24)]];
sampler backgroundSmpSC [[id(25)]];
sampler celebrationSmpSC [[id(26)]];
sampler intensityTextureSmpSC [[id(27)]];
sampler pointerSmpSC [[id(28)]];
sampler progressionSmpSC [[id(29)]];
sampler sc_ScreenTextureSmpSC [[id(34)]];
sampler z_hitIdAndBarycentricSmp [[id(37)]];
sampler z_rayDirectionsSmpSC [[id(38)]];
constant userUniformsObj* UserUniforms [[id(39)]];
};
struct main_frag_out
{
float4 FragColor0 [[color(0)]];
float4 FragColor1 [[color(1)]];
float4 FragColor2 [[color(2)]];
float4 FragColor3 [[color(3)]];
};
struct main_frag_in
{
float3 varPos [[user(locn0)]];
float3 varNormal [[user(locn1)]];
float4 varTangent [[user(locn2)]];
float4 varPackedTex [[user(locn3)]];
float4 varScreenPos [[user(locn4)]];
float2 varScreenTexturePos [[user(locn5)]];
float varViewSpaceDepth [[user(locn6)]];
float2 varShadowTex [[user(locn7)]];
int varStereoViewID [[user(locn8)]];
float varClipDistance [[user(locn9)]];
float4 varColor [[user(locn10)]];
float4 PreviewVertexColor [[user(locn11)]];
float PreviewVertexSaved [[user(locn12)]];
};
// Implementation of the GLSL mod() function,which is slightly different than Metal fmod()
template<typename Tx,typename Ty>
Tx mod(Tx x,Ty y)
{
return x-y*floor(x/y);
}
RayHitPayload GetHitData(thread const int2& screenPos,constant userUniformsObj& UserUniforms,thread texture2d<float> z_rayDirections,thread sampler z_rayDirectionsSmpSC,thread texture2d<uint> z_hitIdAndBarycentric,thread sampler z_hitIdAndBarycentricSmp,const device layoutVertices_obj& layoutVertices,const device layoutVerticesPN_obj& layoutVerticesPN,const device layoutIndices_obj& layoutIndices)
{
int2 param=screenPos;
uint4 l9_0=z_hitIdAndBarycentric.read(uint2(param),0);
uint4 id_and_barycentric=l9_0;
RayHitPayload rhp;
rhp.id=id_and_barycentric.xy;
if (rhp.id.x!=uint(UserUniforms.instance_id))
{
return rhp;
}
float2 brc_vw=float2(as_type<half2>(id_and_barycentric.z|(id_and_barycentric.w<<uint(16))));
float3 brc=float3((1.0-brc_vw.x)-brc_vw.y,brc_vw);
float2 param_1=z_rayDirections.read(uint2(screenPos),0).xy;
float3 l9_1=float3(param_1.x,param_1.y,(1.0-abs(param_1.x))-abs(param_1.y));
float l9_2=fast::clamp(-l9_1.z,0.0,1.0);
float l9_3;
if (l9_1.x>=0.0)
{
l9_3=-l9_2;
}
else
{
l9_3=l9_2;
}
float l9_4=l9_3;
float l9_5;
if (l9_1.y>=0.0)
{
l9_5=-l9_2;
}
else
{
l9_5=l9_2;
}
float2 l9_6=l9_1.xy+float2(l9_4,l9_5);
l9_1=float3(l9_6.x,l9_6.y,l9_1.z);
float3 l9_7=normalize(l9_1);
float3 rayDir=l9_7;
rhp.viewDirWS=-rayDir;
uint param_2=rhp.id.y;
uint l9_8=min(param_2,uint(UserUniforms.lray_triangles_last));
uint l9_9=l9_8*6u;
uint l9_10=l9_9&4294967292u;
uint4 l9_11=(uint4(uint2(layoutIndices._Triangles[l9_10/4u]),uint2(layoutIndices._Triangles[(l9_10/4u)+1u]))&uint4(65535u,4294967295u,65535u,4294967295u))>>uint4(0u,16u,0u,16u);
int3 l9_12;
if (l9_9==l9_10)
{
l9_12=int3(l9_11.xyz);
}
else
{
l9_12=int3(l9_11.yzw);
}
int3 l9_13=l9_12;
int3 i=l9_13;
if (UserUniforms.has_animated_pn!=0)
{
float3 param_3=brc;
int3 param_4=i;
int param_5=0;
int3 l9_14=(param_4*int3(6))+int3(param_5);
int l9_15=l9_14.x;
float3 l9_16=float3(layoutVerticesPN._VerticesPN[l9_15],layoutVerticesPN._VerticesPN[l9_15+1],layoutVerticesPN._VerticesPN[l9_15+2]);
int l9_17=l9_14.y;
float3 l9_18=float3(layoutVerticesPN._VerticesPN[l9_17],layoutVerticesPN._VerticesPN[l9_17+1],layoutVerticesPN._VerticesPN[l9_17+2]);
int l9_19=l9_14.z;
float3 l9_20=float3(layoutVerticesPN._VerticesPN[l9_19],layoutVerticesPN._VerticesPN[l9_19+1],layoutVerticesPN._VerticesPN[l9_19+2]);
float3 l9_21=((l9_16*param_3.x)+(l9_18*param_3.y))+(l9_20*param_3.z);
rhp.positionWS=l9_21;
}
else
{
float3 param_6=brc;
int3 param_7=i;
int3 l9_22=int3((param_7.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position,(param_7.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position,(param_7.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position);
float3 l9_23=float3(0.0);
if (UserUniforms.proxy_format_position==5)
{
int l9_24=l9_22.x;
float3 l9_25=float3(layoutVertices._Vertices[l9_24],layoutVertices._Vertices[l9_24+1],layoutVertices._Vertices[l9_24+2]);
int l9_26=l9_22.y;
float3 l9_27=float3(layoutVertices._Vertices[l9_26],layoutVertices._Vertices[l9_26+1],layoutVertices._Vertices[l9_26+2]);
int l9_28=l9_22.z;
float3 l9_29=float3(layoutVertices._Vertices[l9_28],layoutVertices._Vertices[l9_28+1],layoutVertices._Vertices[l9_28+2]);
l9_23=((l9_25*param_6.x)+(l9_27*param_6.y))+(l9_29*param_6.z);
}
else
{
if (UserUniforms.proxy_format_position==6)
{
int l9_30=l9_22.x;
float3 l9_31=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_30]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_30+1]))).x);
int l9_32=l9_22.y;
float3 l9_33=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_32]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_32+1]))).x);
int l9_34=l9_22.z;
float3 l9_35=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_34]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_34+1]))).x);
l9_23=((l9_31*param_6.x)+(l9_33*param_6.y))+(l9_35*param_6.z);
}
else
{
l9_23=float3(1.0,0.0,0.0);
}
}
float3 l9_36=l9_23;
float3 positionOS=l9_36;
rhp.positionWS=(UserUniforms.sc_ModelMatrix*float4(positionOS,1.0)).xyz;
}
if (UserUniforms.proxy_offset_normal>0)
{
if (UserUniforms.has_animated_pn!=0)
{
float3 param_8=brc;
int3 param_9=i;
int param_10=3;
int3 l9_37=(param_9*int3(6))+int3(param_10);
int l9_38=l9_37.x;
float3 l9_39=float3(layoutVerticesPN._VerticesPN[l9_38],layoutVerticesPN._VerticesPN[l9_38+1],layoutVerticesPN._VerticesPN[l9_38+2]);
int l9_40=l9_37.y;
float3 l9_41=float3(layoutVerticesPN._VerticesPN[l9_40],layoutVerticesPN._VerticesPN[l9_40+1],layoutVerticesPN._VerticesPN[l9_40+2]);
int l9_42=l9_37.z;
float3 l9_43=float3(layoutVerticesPN._VerticesPN[l9_42],layoutVerticesPN._VerticesPN[l9_42+1],layoutVerticesPN._VerticesPN[l9_42+2]);
float3 l9_44=((l9_39*param_8.x)+(l9_41*param_8.y))+(l9_43*param_8.z);
rhp.normalWS=l9_44;
}
else
{
float3 param_11=brc;
int3 param_12=i;
int3 l9_45=int3((param_12.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_normal,(param_12.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_normal,(param_12.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_normal);
float3 l9_46=float3(0.0);
if (UserUniforms.proxy_format_normal==5)
{
int l9_47=l9_45.x;
float3 l9_48=float3(layoutVertices._Vertices[l9_47],layoutVertices._Vertices[l9_47+1],layoutVertices._Vertices[l9_47+2]);
int l9_49=l9_45.y;
float3 l9_50=float3(layoutVertices._Vertices[l9_49],layoutVertices._Vertices[l9_49+1],layoutVertices._Vertices[l9_49+2]);
int l9_51=l9_45.z;
float3 l9_52=float3(layoutVertices._Vertices[l9_51],layoutVertices._Vertices[l9_51+1],layoutVertices._Vertices[l9_51+2]);
l9_46=((l9_48*param_11.x)+(l9_50*param_11.y))+(l9_52*param_11.z);
}
else
{
if (UserUniforms.proxy_format_normal==6)
{
int l9_53=l9_45.x;
float3 l9_54=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_53]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_53+1]))).x);
int l9_55=l9_45.y;
float3 l9_56=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_55]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_55+1]))).x);
int l9_57=l9_45.z;
float3 l9_58=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_57]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_57+1]))).x);
l9_46=((l9_54*param_11.x)+(l9_56*param_11.y))+(l9_58*param_11.z);
}
else
{
l9_46=float3(1.0,0.0,0.0);
}
}
float3 l9_59=l9_46;
float3 normalOS=l9_59;
rhp.normalWS=normalize(UserUniforms.sc_NormalMatrix*normalOS);
}
}
else
{
rhp.normalWS=float3(1.0,0.0,0.0);
}
bool l9_60=!(UserUniforms.has_animated_pn!=0);
bool l9_61;
if (l9_60)
{
l9_61=UserUniforms.proxy_offset_tangent>0;
}
else
{
l9_61=l9_60;
}
if (l9_61)
{
float3 param_13=brc;
int3 param_14=i;
int3 l9_62=int3((param_14.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_tangent,(param_14.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_tangent,(param_14.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_tangent);
float4 l9_63=float4(0.0);
if (UserUniforms.proxy_format_tangent==5)
{
int l9_64=l9_62.x;
float4 l9_65=float4(layoutVertices._Vertices[l9_64],layoutVertices._Vertices[l9_64+1],layoutVertices._Vertices[l9_64+2],layoutVertices._Vertices[l9_64+3]);
int l9_66=l9_62.y;
float4 l9_67=float4(layoutVertices._Vertices[l9_66],layoutVertices._Vertices[l9_66+1],layoutVertices._Vertices[l9_66+2],layoutVertices._Vertices[l9_66+3]);
int l9_68=l9_62.z;
float4 l9_69=float4(layoutVertices._Vertices[l9_68],layoutVertices._Vertices[l9_68+1],layoutVertices._Vertices[l9_68+2],layoutVertices._Vertices[l9_68+3]);
l9_63=((l9_65*param_13.x)+(l9_67*param_13.y))+(l9_69*param_13.z);
}
else
{
if (UserUniforms.proxy_format_tangent==6)
{
int l9_70=l9_62.x;
float4 l9_71=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_70]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_70+1]))));
int l9_72=l9_62.y;
float4 l9_73=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_72]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_72+1]))));
int l9_74=l9_62.z;
float4 l9_75=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_74]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_74+1]))));
l9_63=((l9_71*param_13.x)+(l9_73*param_13.y))+(l9_75*param_13.z);
}
else
{
if (UserUniforms.proxy_format_tangent==2)
{
int l9_76=l9_62.x;
uint l9_77=as_type<uint>(layoutVertices._Vertices[l9_76]);
uint l9_78=l9_77&255u;
uint l9_79=(l9_77>>uint(8))&255u;
uint l9_80=(l9_77>>uint(16))&255u;
uint l9_81=(l9_77>>uint(24))&255u;
float4 l9_82=float4(float(l9_78),float(l9_79),float(l9_80),float(l9_81))/float4(255.0);
int l9_83=l9_62.y;
uint l9_84=as_type<uint>(layoutVertices._Vertices[l9_83]);
uint l9_85=l9_84&255u;
uint l9_86=(l9_84>>uint(8))&255u;
uint l9_87=(l9_84>>uint(16))&255u;
uint l9_88=(l9_84>>uint(24))&255u;
float4 l9_89=float4(float(l9_85),float(l9_86),float(l9_87),float(l9_88))/float4(255.0);
int l9_90=l9_62.z;
uint l9_91=as_type<uint>(layoutVertices._Vertices[l9_90]);
uint l9_92=l9_91&255u;
uint l9_93=(l9_91>>uint(8))&255u;
uint l9_94=(l9_91>>uint(16))&255u;
uint l9_95=(l9_91>>uint(24))&255u;
float4 l9_96=float4(float(l9_92),float(l9_93),float(l9_94),float(l9_95))/float4(255.0);
l9_63=((l9_82*param_13.x)+(l9_89*param_13.y))+(l9_96*param_13.z);
}
else
{
l9_63=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_97=l9_63;
float4 tangentOS=l9_97;
float3 tangentWS=normalize(UserUniforms.sc_NormalMatrix*tangentOS.xyz);
rhp.tangentWS=float4(tangentWS,tangentOS.w);
}
else
{
rhp.tangentWS=float4(1.0,0.0,0.0,1.0);
}
if (UserUniforms.proxy_format_color>0)
{
float3 param_15=brc;
int3 param_16=i;
int3 l9_98=int3((param_16.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_color,(param_16.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_color,(param_16.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_color);
float4 l9_99=float4(0.0);
if (UserUniforms.proxy_format_color==5)
{
int l9_100=l9_98.x;
float4 l9_101=float4(layoutVertices._Vertices[l9_100],layoutVertices._Vertices[l9_100+1],layoutVertices._Vertices[l9_100+2],layoutVertices._Vertices[l9_100+3]);
int l9_102=l9_98.y;
float4 l9_103=float4(layoutVertices._Vertices[l9_102],layoutVertices._Vertices[l9_102+1],layoutVertices._Vertices[l9_102+2],layoutVertices._Vertices[l9_102+3]);
int l9_104=l9_98.z;
float4 l9_105=float4(layoutVertices._Vertices[l9_104],layoutVertices._Vertices[l9_104+1],layoutVertices._Vertices[l9_104+2],layoutVertices._Vertices[l9_104+3]);
l9_99=((l9_101*param_15.x)+(l9_103*param_15.y))+(l9_105*param_15.z);
}
else
{
if (UserUniforms.proxy_format_color==6)
{
int l9_106=l9_98.x;
float4 l9_107=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_106]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_106+1]))));
int l9_108=l9_98.y;
float4 l9_109=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_108]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_108+1]))));
int l9_110=l9_98.z;
float4 l9_111=float4(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_110]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_110+1]))));
l9_99=((l9_107*param_15.x)+(l9_109*param_15.y))+(l9_111*param_15.z);
}
else
{
if (UserUniforms.proxy_format_color==2)
{
int l9_112=l9_98.x;
uint l9_113=as_type<uint>(layoutVertices._Vertices[l9_112]);
uint l9_114=l9_113&255u;
uint l9_115=(l9_113>>uint(8))&255u;
uint l9_116=(l9_113>>uint(16))&255u;
uint l9_117=(l9_113>>uint(24))&255u;
float4 l9_118=float4(float(l9_114),float(l9_115),float(l9_116),float(l9_117))/float4(255.0);
int l9_119=l9_98.y;
uint l9_120=as_type<uint>(layoutVertices._Vertices[l9_119]);
uint l9_121=l9_120&255u;
uint l9_122=(l9_120>>uint(8))&255u;
uint l9_123=(l9_120>>uint(16))&255u;
uint l9_124=(l9_120>>uint(24))&255u;
float4 l9_125=float4(float(l9_121),float(l9_122),float(l9_123),float(l9_124))/float4(255.0);
int l9_126=l9_98.z;
uint l9_127=as_type<uint>(layoutVertices._Vertices[l9_126]);
uint l9_128=l9_127&255u;
uint l9_129=(l9_127>>uint(8))&255u;
uint l9_130=(l9_127>>uint(16))&255u;
uint l9_131=(l9_127>>uint(24))&255u;
float4 l9_132=float4(float(l9_128),float(l9_129),float(l9_130),float(l9_131))/float4(255.0);
l9_99=((l9_118*param_15.x)+(l9_125*param_15.y))+(l9_132*param_15.z);
}
else
{
l9_99=float4(1.0,0.0,0.0,0.0);
}
}
}
float4 l9_133=l9_99;
rhp.color=l9_133;
}
float2 dummy_red_black=float2(dot(brc,float3(int3(1)-(i%int3(2)))),0.0);
if (UserUniforms.proxy_format_texture0>0)
{
float3 param_17=brc;
int3 param_18=i;
int3 l9_134=int3((param_18.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture0,(param_18.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture0,(param_18.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture0);
float2 l9_135=float2(0.0);
if (UserUniforms.proxy_format_texture0==5)
{
int l9_136=l9_134.x;
float2 l9_137=float2(layoutVertices._Vertices[l9_136],layoutVertices._Vertices[l9_136+1]);
int l9_138=l9_134.y;
float2 l9_139=float2(layoutVertices._Vertices[l9_138],layoutVertices._Vertices[l9_138+1]);
int l9_140=l9_134.z;
float2 l9_141=float2(layoutVertices._Vertices[l9_140],layoutVertices._Vertices[l9_140+1]);
l9_135=((l9_137*param_17.x)+(l9_139*param_17.y))+(l9_141*param_17.z);
}
else
{
if (UserUniforms.proxy_format_texture0==6)
{
int l9_142=l9_134.x;
float2 l9_143=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_142])));
int l9_144=l9_134.y;
float2 l9_145=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_144])));
int l9_146=l9_134.z;
float2 l9_147=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_146])));
l9_135=((l9_143*param_17.x)+(l9_145*param_17.y))+(l9_147*param_17.z);
}
else
{
l9_135=float2(1.0,0.0);
}
}
float2 l9_148=l9_135;
rhp.uv0=l9_148;
}
else
{
rhp.uv0=dummy_red_black;
}
if (UserUniforms.proxy_format_texture1>0)
{
float3 param_19=brc;
int3 param_20=i;
int3 l9_149=int3((param_20.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture1,(param_20.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture1,(param_20.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture1);
float2 l9_150=float2(0.0);
if (UserUniforms.proxy_format_texture1==5)
{
int l9_151=l9_149.x;
float2 l9_152=float2(layoutVertices._Vertices[l9_151],layoutVertices._Vertices[l9_151+1]);
int l9_153=l9_149.y;
float2 l9_154=float2(layoutVertices._Vertices[l9_153],layoutVertices._Vertices[l9_153+1]);
int l9_155=l9_149.z;
float2 l9_156=float2(layoutVertices._Vertices[l9_155],layoutVertices._Vertices[l9_155+1]);
l9_150=((l9_152*param_19.x)+(l9_154*param_19.y))+(l9_156*param_19.z);
}
else
{
if (UserUniforms.proxy_format_texture1==6)
{
int l9_157=l9_149.x;
float2 l9_158=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_157])));
int l9_159=l9_149.y;
float2 l9_160=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_159])));
int l9_161=l9_149.z;
float2 l9_162=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_161])));
l9_150=((l9_158*param_19.x)+(l9_160*param_19.y))+(l9_162*param_19.z);
}
else
{
l9_150=float2(1.0,0.0);
}
}
float2 l9_163=l9_150;
rhp.uv1=l9_163;
}
else
{
rhp.uv1=dummy_red_black;
}
if (UserUniforms.proxy_format_texture2>0)
{
float3 param_21=brc;
int3 param_22=i;
int3 l9_164=int3((param_22.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture2,(param_22.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture2,(param_22.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture2);
float2 l9_165=float2(0.0);
if (UserUniforms.proxy_format_texture2==5)
{
int l9_166=l9_164.x;
float2 l9_167=float2(layoutVertices._Vertices[l9_166],layoutVertices._Vertices[l9_166+1]);
int l9_168=l9_164.y;
float2 l9_169=float2(layoutVertices._Vertices[l9_168],layoutVertices._Vertices[l9_168+1]);
int l9_170=l9_164.z;
float2 l9_171=float2(layoutVertices._Vertices[l9_170],layoutVertices._Vertices[l9_170+1]);
l9_165=((l9_167*param_21.x)+(l9_169*param_21.y))+(l9_171*param_21.z);
}
else
{
if (UserUniforms.proxy_format_texture2==6)
{
int l9_172=l9_164.x;
float2 l9_173=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_172])));
int l9_174=l9_164.y;
float2 l9_175=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_174])));
int l9_176=l9_164.z;
float2 l9_177=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_176])));
l9_165=((l9_173*param_21.x)+(l9_175*param_21.y))+(l9_177*param_21.z);
}
else
{
l9_165=float2(1.0,0.0);
}
}
float2 l9_178=l9_165;
rhp.uv2=l9_178;
}
else
{
rhp.uv2=dummy_red_black;
}
if (UserUniforms.proxy_format_texture3>0)
{
float3 param_23=brc;
int3 param_24=i;
int3 l9_179=int3((param_24.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture3,(param_24.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture3,(param_24.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_texture3);
float2 l9_180=float2(0.0);
if (UserUniforms.proxy_format_texture3==5)
{
int l9_181=l9_179.x;
float2 l9_182=float2(layoutVertices._Vertices[l9_181],layoutVertices._Vertices[l9_181+1]);
int l9_183=l9_179.y;
float2 l9_184=float2(layoutVertices._Vertices[l9_183],layoutVertices._Vertices[l9_183+1]);
int l9_185=l9_179.z;
float2 l9_186=float2(layoutVertices._Vertices[l9_185],layoutVertices._Vertices[l9_185+1]);
l9_180=((l9_182*param_23.x)+(l9_184*param_23.y))+(l9_186*param_23.z);
}
else
{
if (UserUniforms.proxy_format_texture3==6)
{
int l9_187=l9_179.x;
float2 l9_188=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_187])));
int l9_189=l9_179.y;
float2 l9_190=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_189])));
int l9_191=l9_179.z;
float2 l9_192=float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[l9_191])));
l9_180=((l9_188*param_23.x)+(l9_190*param_23.y))+(l9_192*param_23.z);
}
else
{
l9_180=float2(1.0,0.0);
}
}
float2 l9_193=l9_180;
rhp.uv3=l9_193;
}
else
{
rhp.uv3=dummy_red_black;
}
return rhp;
}
float transformSingleColor(thread const float& original,thread const float& intMap,thread const float& target)
{
if (((int(BLEND_MODE_REALISTIC_tmp)!=0)||(int(BLEND_MODE_FORGRAY_tmp)!=0))||(int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
return original/pow(1.0-target,intMap);
}
else
{
if ((int(BLEND_MODE_DIVISION_tmp)!=0))
{
return original/(1.0-target);
}
else
{
if ((int(BLEND_MODE_BRIGHT_tmp)!=0))
{
return original/pow(1.0-target,2.0-(2.0*original));
}
}
}
return 0.0;
}
float3 transformColor(thread const float& yValue,thread const float3& original,thread const float3& target,thread const float& weight,thread const float& intMap)
{
if ((int(BLEND_MODE_INTENSE_tmp)!=0))
{
float3 param=original;
float3 l9_0=param;
float4 l9_1;
if (l9_0.y<l9_0.z)
{
l9_1=float4(l9_0.zy,-1.0,0.66666669);
}
else
{
l9_1=float4(l9_0.yz,0.0,-0.33333334);
}
float4 l9_2=l9_1;
float4 l9_3;
if (l9_0.x<l9_2.x)
{
l9_3=float4(l9_2.xyw,l9_0.x);
}
else
{
l9_3=float4(l9_0.x,l9_2.yzx);
}
float4 l9_4=l9_3;
float l9_5=l9_4.x-fast::min(l9_4.w,l9_4.y);
float l9_6=abs(((l9_4.w-l9_4.y)/((6.0*l9_5)+1e-07))+l9_4.z);
float l9_7=l9_4.x;
float3 l9_8=float3(l9_6,l9_5,l9_7);
float3 l9_9=l9_8;
float l9_10=l9_9.z-(l9_9.y*0.5);
float l9_11=l9_9.y/((1.0-abs((2.0*l9_10)-1.0))+1e-07);
float3 l9_12=float3(l9_9.x,l9_11,l9_10);
float3 hslOrig=l9_12;
float3 res=float3(0.0);
res.x=target.x;
res.y=target.y;
res.z=hslOrig.z;
float3 param_1=res;
float l9_13=param_1.x;
float l9_14=abs((6.0*l9_13)-3.0)-1.0;
float l9_15=2.0-abs((6.0*l9_13)-2.0);
float l9_16=2.0-abs((6.0*l9_13)-4.0);
float3 l9_17=fast::clamp(float3(l9_14,l9_15,l9_16),float3(0.0),float3(1.0));
float3 l9_18=l9_17;
float l9_19=(1.0-abs((2.0*param_1.z)-1.0))*param_1.y;
l9_18=((l9_18-float3(0.5))*l9_19)+float3(param_1.z);
float3 l9_20=l9_18;
res=l9_20;
float3 resColor=mix(original,res,float3(weight));
return resColor;
}
else
{
float3 tmpColor=float3(0.0);
float param_2=yValue;
float param_3=intMap;
float param_4=target.x;
tmpColor.x=transformSingleColor(param_2,param_3,param_4);
float param_5=yValue;
float param_6=intMap;
float param_7=target.y;
tmpColor.y=transformSingleColor(param_5,param_6,param_7);
float param_8=yValue;
float param_9=intMap;
float param_10=target.z;
tmpColor.z=transformSingleColor(param_8,param_9,param_10);
tmpColor=fast::clamp(tmpColor,float3(0.0),float3(1.0));
float3 resColor_1=mix(original,tmpColor,float3(weight));
return resColor_1;
}
}
float3 definedBlend(thread const float3& a,thread const float3& b,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> intensityTexture,thread sampler intensityTextureSmpSC)
{
if ((int(BLEND_MODE_LIGHTEN_tmp)!=0))
{
return fast::max(a,b);
}
else
{
if ((int(BLEND_MODE_DARKEN_tmp)!=0))
{
return fast::min(a,b);
}
else
{
if ((int(BLEND_MODE_DIVIDE_tmp)!=0))
{
return b/a;
}
else
{
if ((int(BLEND_MODE_AVERAGE_tmp)!=0))
{
return (a+b)*0.5;
}
else
{
if ((int(BLEND_MODE_SUBTRACT_tmp)!=0))
{
return fast::max((a+b)-float3(1.0),float3(0.0));
}
else
{
if ((int(BLEND_MODE_DIFFERENCE_tmp)!=0))
{
return abs(a-b);
}
else
{
if ((int(BLEND_MODE_NEGATION_tmp)!=0))
{
return float3(1.0)-abs((float3(1.0)-a)-b);
}
else
{
if ((int(BLEND_MODE_EXCLUSION_tmp)!=0))
{
return (a+b)-((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_OVERLAY_tmp)!=0))
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
float l9_1=l9_0;
float l9_2;
if (a.y<0.5)
{
l9_2=(2.0*a.y)*b.y;
}
else
{
l9_2=1.0-((2.0*(1.0-a.y))*(1.0-b.y));
}
float l9_3=l9_2;
float l9_4;
if (a.z<0.5)
{
l9_4=(2.0*a.z)*b.z;
}
else
{
l9_4=1.0-((2.0*(1.0-a.z))*(1.0-b.z));
}
return float3(l9_1,l9_3,l9_4);
}
else
{
if ((int(BLEND_MODE_SOFT_LIGHT_tmp)!=0))
{
return (((float3(1.0)-(b*2.0))*a)*a)+((a*2.0)*b);
}
else
{
if ((int(BLEND_MODE_HARD_LIGHT_tmp)!=0))
{
float l9_5;
if (b.x<0.5)
{
l9_5=(2.0*b.x)*a.x;
}
else
{
l9_5=1.0-((2.0*(1.0-b.x))*(1.0-a.x));
}
float l9_6=l9_5;
float l9_7;
if (b.y<0.5)
{
l9_7=(2.0*b.y)*a.y;
}
else
{
l9_7=1.0-((2.0*(1.0-b.y))*(1.0-a.y));
}
float l9_8=l9_7;
float l9_9;
if (b.z<0.5)
{
l9_9=(2.0*b.z)*a.z;
}
else
{
l9_9=1.0-((2.0*(1.0-b.z))*(1.0-a.z));
}
return float3(l9_6,l9_8,l9_9);
}
else
{
if ((int(BLEND_MODE_COLOR_DODGE_tmp)!=0))
{
float l9_10;
if (b.x==1.0)
{
l9_10=b.x;
}
else
{
l9_10=fast::min(a.x/(1.0-b.x),1.0);
}
float l9_11=l9_10;
float l9_12;
if (b.y==1.0)
{
l9_12=b.y;
}
else
{
l9_12=fast::min(a.y/(1.0-b.y),1.0);
}
float l9_13=l9_12;
float l9_14;
if (b.z==1.0)
{
l9_14=b.z;
}
else
{
l9_14=fast::min(a.z/(1.0-b.z),1.0);
}
return float3(l9_11,l9_13,l9_14);
}
else
{
if ((int(BLEND_MODE_COLOR_BURN_tmp)!=0))
{
float l9_15;
if (b.x==0.0)
{
l9_15=b.x;
}
else
{
l9_15=fast::max(1.0-((1.0-a.x)/b.x),0.0);
}
float l9_16=l9_15;
float l9_17;
if (b.y==0.0)
{
l9_17=b.y;
}
else
{
l9_17=fast::max(1.0-((1.0-a.y)/b.y),0.0);
}
float l9_18=l9_17;
float l9_19;
if (b.z==0.0)
{
l9_19=b.z;
}
else
{
l9_19=fast::max(1.0-((1.0-a.z)/b.z),0.0);
}
return float3(l9_16,l9_18,l9_19);
}
else
{
if ((int(BLEND_MODE_LINEAR_LIGHT_tmp)!=0))
{
float l9_20;
if (b.x<0.5)
{
l9_20=fast::max((a.x+(2.0*b.x))-1.0,0.0);
}
else
{
l9_20=fast::min(a.x+(2.0*(b.x-0.5)),1.0);
}
float l9_21=l9_20;
float l9_22;
if (b.y<0.5)
{
l9_22=fast::max((a.y+(2.0*b.y))-1.0,0.0);
}
else
{
l9_22=fast::min(a.y+(2.0*(b.y-0.5)),1.0);
}
float l9_23=l9_22;
float l9_24;
if (b.z<0.5)
{
l9_24=fast::max((a.z+(2.0*b.z))-1.0,0.0);
}
else
{
l9_24=fast::min(a.z+(2.0*(b.z-0.5)),1.0);
}
return float3(l9_21,l9_23,l9_24);
}
else
{
if ((int(BLEND_MODE_VIVID_LIGHT_tmp)!=0))
{
float l9_25;
if (b.x<0.5)
{
float l9_26;
if ((2.0*b.x)==0.0)
{
l9_26=2.0*b.x;
}
else
{
l9_26=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_25=l9_26;
}
else
{
float l9_27;
if ((2.0*(b.x-0.5))==1.0)
{
l9_27=2.0*(b.x-0.5);
}
else
{
l9_27=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_25=l9_27;
}
float l9_28=l9_25;
float l9_29;
if (b.y<0.5)
{
float l9_30;
if ((2.0*b.y)==0.0)
{
l9_30=2.0*b.y;
}
else
{
l9_30=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_29=l9_30;
}
else
{
float l9_31;
if ((2.0*(b.y-0.5))==1.0)
{
l9_31=2.0*(b.y-0.5);
}
else
{
l9_31=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_29=l9_31;
}
float l9_32=l9_29;
float l9_33;
if (b.z<0.5)
{
float l9_34;
if ((2.0*b.z)==0.0)
{
l9_34=2.0*b.z;
}
else
{
l9_34=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_33=l9_34;
}
else
{
float l9_35;
if ((2.0*(b.z-0.5))==1.0)
{
l9_35=2.0*(b.z-0.5);
}
else
{
l9_35=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_33=l9_35;
}
return float3(l9_28,l9_32,l9_33);
}
else
{
if ((int(BLEND_MODE_PIN_LIGHT_tmp)!=0))
{
float l9_36;
if (b.x<0.5)
{
l9_36=fast::min(a.x,2.0*b.x);
}
else
{
l9_36=fast::max(a.x,2.0*(b.x-0.5));
}
float l9_37=l9_36;
float l9_38;
if (b.y<0.5)
{
l9_38=fast::min(a.y,2.0*b.y);
}
else
{
l9_38=fast::max(a.y,2.0*(b.y-0.5));
}
float l9_39=l9_38;
float l9_40;
if (b.z<0.5)
{
l9_40=fast::min(a.z,2.0*b.z);
}
else
{
l9_40=fast::max(a.z,2.0*(b.z-0.5));
}
return float3(l9_37,l9_39,l9_40);
}
else
{
if ((int(BLEND_MODE_HARD_MIX_tmp)!=0))
{
float l9_41;
if (b.x<0.5)
{
float l9_42;
if ((2.0*b.x)==0.0)
{
l9_42=2.0*b.x;
}
else
{
l9_42=fast::max(1.0-((1.0-a.x)/(2.0*b.x)),0.0);
}
l9_41=l9_42;
}
else
{
float l9_43;
if ((2.0*(b.x-0.5))==1.0)
{
l9_43=2.0*(b.x-0.5);
}
else
{
l9_43=fast::min(a.x/(1.0-(2.0*(b.x-0.5))),1.0);
}
l9_41=l9_43;
}
float l9_44=l9_41;
float l9_45;
if (b.y<0.5)
{
float l9_46;
if ((2.0*b.y)==0.0)
{
l9_46=2.0*b.y;
}
else
{
l9_46=fast::max(1.0-((1.0-a.y)/(2.0*b.y)),0.0);
}
l9_45=l9_46;
}
else
{
float l9_47;
if ((2.0*(b.y-0.5))==1.0)
{
l9_47=2.0*(b.y-0.5);
}
else
{
l9_47=fast::min(a.y/(1.0-(2.0*(b.y-0.5))),1.0);
}
l9_45=l9_47;
}
float l9_48=l9_45;
float l9_49;
if (b.z<0.5)
{
float l9_50;
if ((2.0*b.z)==0.0)
{
l9_50=2.0*b.z;
}
else
{
l9_50=fast::max(1.0-((1.0-a.z)/(2.0*b.z)),0.0);
}
l9_49=l9_50;
}
else
{
float l9_51;
if ((2.0*(b.z-0.5))==1.0)
{
l9_51=2.0*(b.z-0.5);
}
else
{
l9_51=fast::min(a.z/(1.0-(2.0*(b.z-0.5))),1.0);
}
l9_49=l9_51;
}
return float3((l9_44<0.5) ? 0.0 : 1.0,(l9_48<0.5) ? 0.0 : 1.0,(l9_49<0.5) ? 0.0 : 1.0);
}
else
{
if ((int(BLEND_MODE_HARD_REFLECT_tmp)!=0))
{
float l9_52;
if (b.x==1.0)
{
l9_52=b.x;
}
else
{
l9_52=fast::min((a.x*a.x)/(1.0-b.x),1.0);
}
float l9_53=l9_52;
float l9_54;
if (b.y==1.0)
{
l9_54=b.y;
}
else
{
l9_54=fast::min((a.y*a.y)/(1.0-b.y),1.0);
}
float l9_55=l9_54;
float l9_56;
if (b.z==1.0)
{
l9_56=b.z;
}
else
{
l9_56=fast::min((a.z*a.z)/(1.0-b.z),1.0);
}
return float3(l9_53,l9_55,l9_56);
}
else
{
if ((int(BLEND_MODE_HARD_GLOW_tmp)!=0))
{
float l9_57;
if (a.x==1.0)
{
l9_57=a.x;
}
else
{
l9_57=fast::min((b.x*b.x)/(1.0-a.x),1.0);
}
float l9_58=l9_57;
float l9_59;
if (a.y==1.0)
{
l9_59=a.y;
}
else
{
l9_59=fast::min((b.y*b.y)/(1.0-a.y),1.0);
}
float l9_60=l9_59;
float l9_61;
if (a.z==1.0)
{
l9_61=a.z;
}
else
{
l9_61=fast::min((b.z*b.z)/(1.0-a.z),1.0);
}
return float3(l9_58,l9_60,l9_61);
}
else
{
if ((int(BLEND_MODE_HARD_PHOENIX_tmp)!=0))
{
return (fast::min(a,b)-fast::max(a,b))+float3(1.0);
}
else
{
if ((int(BLEND_MODE_HUE_tmp)!=0))
{
float3 param=a;
float3 param_1=b;
float3 l9_62=param;
float3 l9_63=l9_62;
float4 l9_64;
if (l9_63.y<l9_63.z)
{
l9_64=float4(l9_63.zy,-1.0,0.66666669);
}
else
{
l9_64=float4(l9_63.yz,0.0,-0.33333334);
}
float4 l9_65=l9_64;
float4 l9_66;
if (l9_63.x<l9_65.x)
{
l9_66=float4(l9_65.xyw,l9_63.x);
}
else
{
l9_66=float4(l9_63.x,l9_65.yzx);
}
float4 l9_67=l9_66;
float l9_68=l9_67.x-fast::min(l9_67.w,l9_67.y);
float l9_69=abs(((l9_67.w-l9_67.y)/((6.0*l9_68)+1e-07))+l9_67.z);
float l9_70=l9_67.x;
float3 l9_71=float3(l9_69,l9_68,l9_70);
float3 l9_72=l9_71;
float l9_73=l9_72.z-(l9_72.y*0.5);
float l9_74=l9_72.y/((1.0-abs((2.0*l9_73)-1.0))+1e-07);
float3 l9_75=float3(l9_72.x,l9_74,l9_73);
float3 l9_76=l9_75;
float3 l9_77=param_1;
float3 l9_78=l9_77;
float4 l9_79;
if (l9_78.y<l9_78.z)
{
l9_79=float4(l9_78.zy,-1.0,0.66666669);
}
else
{
l9_79=float4(l9_78.yz,0.0,-0.33333334);
}
float4 l9_80=l9_79;
float4 l9_81;
if (l9_78.x<l9_80.x)
{
l9_81=float4(l9_80.xyw,l9_78.x);
}
else
{
l9_81=float4(l9_78.x,l9_80.yzx);
}
float4 l9_82=l9_81;
float l9_83=l9_82.x-fast::min(l9_82.w,l9_82.y);
float l9_84=abs(((l9_82.w-l9_82.y)/((6.0*l9_83)+1e-07))+l9_82.z);
float l9_85=l9_82.x;
float3 l9_86=float3(l9_84,l9_83,l9_85);
float3 l9_87=l9_86;
float l9_88=l9_87.z-(l9_87.y*0.5);
float l9_89=l9_87.y/((1.0-abs((2.0*l9_88)-1.0))+1e-07);
float3 l9_90=float3(l9_87.x,l9_89,l9_88);
float3 l9_91=float3(l9_90.x,l9_76.y,l9_76.z);
float l9_92=l9_91.x;
float l9_93=abs((6.0*l9_92)-3.0)-1.0;
float l9_94=2.0-abs((6.0*l9_92)-2.0);
float l9_95=2.0-abs((6.0*l9_92)-4.0);
float3 l9_96=fast::clamp(float3(l9_93,l9_94,l9_95),float3(0.0),float3(1.0));
float3 l9_97=l9_96;
float l9_98=(1.0-abs((2.0*l9_91.z)-1.0))*l9_91.y;
l9_97=((l9_97-float3(0.5))*l9_98)+float3(l9_91.z);
float3 l9_99=l9_97;
float3 l9_100=l9_99;
return l9_100;
}
else
{
if ((int(BLEND_MODE_SATURATION_tmp)!=0))
{
float3 param_2=a;
float3 param_3=b;
float3 l9_101=param_2;
float3 l9_102=l9_101;
float4 l9_103;
if (l9_102.y<l9_102.z)
{
l9_103=float4(l9_102.zy,-1.0,0.66666669);
}
else
{
l9_103=float4(l9_102.yz,0.0,-0.33333334);
}
float4 l9_104=l9_103;
float4 l9_105;
if (l9_102.x<l9_104.x)
{
l9_105=float4(l9_104.xyw,l9_102.x);
}
else
{
l9_105=float4(l9_102.x,l9_104.yzx);
}
float4 l9_106=l9_105;
float l9_107=l9_106.x-fast::min(l9_106.w,l9_106.y);
float l9_108=abs(((l9_106.w-l9_106.y)/((6.0*l9_107)+1e-07))+l9_106.z);
float l9_109=l9_106.x;
float3 l9_110=float3(l9_108,l9_107,l9_109);
float3 l9_111=l9_110;
float l9_112=l9_111.z-(l9_111.y*0.5);
float l9_113=l9_111.y/((1.0-abs((2.0*l9_112)-1.0))+1e-07);
float3 l9_114=float3(l9_111.x,l9_113,l9_112);
float3 l9_115=l9_114;
float l9_116=l9_115.x;
float3 l9_117=param_3;
float3 l9_118=l9_117;
float4 l9_119;
if (l9_118.y<l9_118.z)
{
l9_119=float4(l9_118.zy,-1.0,0.66666669);
}
else
{
l9_119=float4(l9_118.yz,0.0,-0.33333334);
}
float4 l9_120=l9_119;
float4 l9_121;
if (l9_118.x<l9_120.x)
{
l9_121=float4(l9_120.xyw,l9_118.x);
}
else
{
l9_121=float4(l9_118.x,l9_120.yzx);
}
float4 l9_122=l9_121;
float l9_123=l9_122.x-fast::min(l9_122.w,l9_122.y);
float l9_124=abs(((l9_122.w-l9_122.y)/((6.0*l9_123)+1e-07))+l9_122.z);
float l9_125=l9_122.x;
float3 l9_126=float3(l9_124,l9_123,l9_125);
float3 l9_127=l9_126;
float l9_128=l9_127.z-(l9_127.y*0.5);
float l9_129=l9_127.y/((1.0-abs((2.0*l9_128)-1.0))+1e-07);
float3 l9_130=float3(l9_127.x,l9_129,l9_128);
float3 l9_131=float3(l9_116,l9_130.y,l9_115.z);
float l9_132=l9_131.x;
float l9_133=abs((6.0*l9_132)-3.0)-1.0;
float l9_134=2.0-abs((6.0*l9_132)-2.0);
float l9_135=2.0-abs((6.0*l9_132)-4.0);
float3 l9_136=fast::clamp(float3(l9_133,l9_134,l9_135),float3(0.0),float3(1.0));
float3 l9_137=l9_136;
float l9_138=(1.0-abs((2.0*l9_131.z)-1.0))*l9_131.y;
l9_137=((l9_137-float3(0.5))*l9_138)+float3(l9_131.z);
float3 l9_139=l9_137;
float3 l9_140=l9_139;
return l9_140;
}
else
{
if ((int(BLEND_MODE_COLOR_tmp)!=0))
{
float3 param_4=a;
float3 param_5=b;
float3 l9_141=param_5;
float3 l9_142=l9_141;
float4 l9_143;
if (l9_142.y<l9_142.z)
{
l9_143=float4(l9_142.zy,-1.0,0.66666669);
}
else
{
l9_143=float4(l9_142.yz,0.0,-0.33333334);
}
float4 l9_144=l9_143;
float4 l9_145;
if (l9_142.x<l9_144.x)
{
l9_145=float4(l9_144.xyw,l9_142.x);
}
else
{
l9_145=float4(l9_142.x,l9_144.yzx);
}
float4 l9_146=l9_145;
float l9_147=l9_146.x-fast::min(l9_146.w,l9_146.y);
float l9_148=abs(((l9_146.w-l9_146.y)/((6.0*l9_147)+1e-07))+l9_146.z);
float l9_149=l9_146.x;
float3 l9_150=float3(l9_148,l9_147,l9_149);
float3 l9_151=l9_150;
float l9_152=l9_151.z-(l9_151.y*0.5);
float l9_153=l9_151.y/((1.0-abs((2.0*l9_152)-1.0))+1e-07);
float3 l9_154=float3(l9_151.x,l9_153,l9_152);
float3 l9_155=l9_154;
float l9_156=l9_155.x;
float l9_157=l9_155.y;
float3 l9_158=param_4;
float3 l9_159=l9_158;
float4 l9_160;
if (l9_159.y<l9_159.z)
{
l9_160=float4(l9_159.zy,-1.0,0.66666669);
}
else
{
l9_160=float4(l9_159.yz,0.0,-0.33333334);
}
float4 l9_161=l9_160;
float4 l9_162;
if (l9_159.x<l9_161.x)
{
l9_162=float4(l9_161.xyw,l9_159.x);
}
else
{
l9_162=float4(l9_159.x,l9_161.yzx);
}
float4 l9_163=l9_162;
float l9_164=l9_163.x-fast::min(l9_163.w,l9_163.y);
float l9_165=abs(((l9_163.w-l9_163.y)/((6.0*l9_164)+1e-07))+l9_163.z);
float l9_166=l9_163.x;
float3 l9_167=float3(l9_165,l9_164,l9_166);
float3 l9_168=l9_167;
float l9_169=l9_168.z-(l9_168.y*0.5);
float l9_170=l9_168.y/((1.0-abs((2.0*l9_169)-1.0))+1e-07);
float3 l9_171=float3(l9_168.x,l9_170,l9_169);
float3 l9_172=float3(l9_156,l9_157,l9_171.z);
float l9_173=l9_172.x;
float l9_174=abs((6.0*l9_173)-3.0)-1.0;
float l9_175=2.0-abs((6.0*l9_173)-2.0);
float l9_176=2.0-abs((6.0*l9_173)-4.0);
float3 l9_177=fast::clamp(float3(l9_174,l9_175,l9_176),float3(0.0),float3(1.0));
float3 l9_178=l9_177;
float l9_179=(1.0-abs((2.0*l9_172.z)-1.0))*l9_172.y;
l9_178=((l9_178-float3(0.5))*l9_179)+float3(l9_172.z);
float3 l9_180=l9_178;
float3 l9_181=l9_180;
return l9_181;
}
else
{
if ((int(BLEND_MODE_LUMINOSITY_tmp)!=0))
{
float3 param_6=a;
float3 param_7=b;
float3 l9_182=param_6;
float3 l9_183=l9_182;
float4 l9_184;
if (l9_183.y<l9_183.z)
{
l9_184=float4(l9_183.zy,-1.0,0.66666669);
}
else
{
l9_184=float4(l9_183.yz,0.0,-0.33333334);
}
float4 l9_185=l9_184;
float4 l9_186;
if (l9_183.x<l9_185.x)
{
l9_186=float4(l9_185.xyw,l9_183.x);
}
else
{
l9_186=float4(l9_183.x,l9_185.yzx);
}
float4 l9_187=l9_186;
float l9_188=l9_187.x-fast::min(l9_187.w,l9_187.y);
float l9_189=abs(((l9_187.w-l9_187.y)/((6.0*l9_188)+1e-07))+l9_187.z);
float l9_190=l9_187.x;
float3 l9_191=float3(l9_189,l9_188,l9_190);
float3 l9_192=l9_191;
float l9_193=l9_192.z-(l9_192.y*0.5);
float l9_194=l9_192.y/((1.0-abs((2.0*l9_193)-1.0))+1e-07);
float3 l9_195=float3(l9_192.x,l9_194,l9_193);
float3 l9_196=l9_195;
float l9_197=l9_196.x;
float l9_198=l9_196.y;
float3 l9_199=param_7;
float3 l9_200=l9_199;
float4 l9_201;
if (l9_200.y<l9_200.z)
{
l9_201=float4(l9_200.zy,-1.0,0.66666669);
}
else
{
l9_201=float4(l9_200.yz,0.0,-0.33333334);
}
float4 l9_202=l9_201;
float4 l9_203;
if (l9_200.x<l9_202.x)
{
l9_203=float4(l9_202.xyw,l9_200.x);
}
else
{
l9_203=float4(l9_200.x,l9_202.yzx);
}
float4 l9_204=l9_203;
float l9_205=l9_204.x-fast::min(l9_204.w,l9_204.y);
float l9_206=abs(((l9_204.w-l9_204.y)/((6.0*l9_205)+1e-07))+l9_204.z);
float l9_207=l9_204.x;
float3 l9_208=float3(l9_206,l9_205,l9_207);
float3 l9_209=l9_208;
float l9_210=l9_209.z-(l9_209.y*0.5);
float l9_211=l9_209.y/((1.0-abs((2.0*l9_210)-1.0))+1e-07);
float3 l9_212=float3(l9_209.x,l9_211,l9_210);
float3 l9_213=float3(l9_197,l9_198,l9_212.z);
float l9_214=l9_213.x;
float l9_215=abs((6.0*l9_214)-3.0)-1.0;
float l9_216=2.0-abs((6.0*l9_214)-2.0);
float l9_217=2.0-abs((6.0*l9_214)-4.0);
float3 l9_218=fast::clamp(float3(l9_215,l9_216,l9_217),float3(0.0),float3(1.0));
float3 l9_219=l9_218;
float l9_220=(1.0-abs((2.0*l9_213.z)-1.0))*l9_213.y;
l9_219=((l9_219-float3(0.5))*l9_220)+float3(l9_213.z);
float3 l9_221=l9_219;
float3 l9_222=l9_221;
return l9_222;
}
else
{
float3 param_8=a;
float3 param_9=b;
float3 l9_223=param_8;
float l9_224=((0.29899999*l9_223.x)+(0.58700001*l9_223.y))+(0.114*l9_223.z);
float l9_225=l9_224;
float l9_226=1.0;
float l9_227=pow(l9_225,1.0/UserUniforms.correctedIntensity);
int l9_228=0;
if ((int(intensityTextureHasSwappedViews_tmp)!=0))
{
int l9_229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_229=0;
}
else
{
l9_229=varStereoViewID;
}
int l9_230=l9_229;
l9_228=1-l9_230;
}
else
{
int l9_231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_231=0;
}
else
{
l9_231=varStereoViewID;
}
int l9_232=l9_231;
l9_228=l9_232;
}
int l9_233=l9_228;
int l9_234=intensityTextureLayout_tmp;
int l9_235=l9_233;
float2 l9_236=float2(l9_227,0.5);
bool l9_237=(int(SC_USE_UV_TRANSFORM_intensityTexture_tmp)!=0);
float3x3 l9_238=UserUniforms.intensityTextureTransform;
int2 l9_239=int2(SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp);
bool l9_240=(int(SC_USE_UV_MIN_MAX_intensityTexture_tmp)!=0);
float4 l9_241=UserUniforms.intensityTextureUvMinMax;
bool l9_242=(int(SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp)!=0);
float4 l9_243=UserUniforms.intensityTextureBorderColor;
float l9_244=0.0;
bool l9_245=l9_242&&(!l9_240);
float l9_246=1.0;
float l9_247=l9_236.x;
int l9_248=l9_239.x;
if (l9_248==1)
{
l9_247=fract(l9_247);
}
else
{
if (l9_248==2)
{
float l9_249=fract(l9_247);
float l9_250=l9_247-l9_249;
float l9_251=step(0.25,fract(l9_250*0.5));
l9_247=mix(l9_249,1.0-l9_249,fast::clamp(l9_251,0.0,1.0));
}
}
l9_236.x=l9_247;
float l9_252=l9_236.y;
int l9_253=l9_239.y;
if (l9_253==1)
{
l9_252=fract(l9_252);
}
else
{
if (l9_253==2)
{
float l9_254=fract(l9_252);
float l9_255=l9_252-l9_254;
float l9_256=step(0.25,fract(l9_255*0.5));
l9_252=mix(l9_254,1.0-l9_254,fast::clamp(l9_256,0.0,1.0));
}
}
l9_236.y=l9_252;
if (l9_240)
{
bool l9_257=l9_242;
bool l9_258;
if (l9_257)
{
l9_258=l9_239.x==3;
}
else
{
l9_258=l9_257;
}
float l9_259=l9_236.x;
float l9_260=l9_241.x;
float l9_261=l9_241.z;
bool l9_262=l9_258;
float l9_263=l9_246;
float l9_264=fast::clamp(l9_259,l9_260,l9_261);
float l9_265=step(abs(l9_259-l9_264),9.9999997e-06);
l9_263*=(l9_265+((1.0-float(l9_262))*(1.0-l9_265)));
l9_259=l9_264;
l9_236.x=l9_259;
l9_246=l9_263;
bool l9_266=l9_242;
bool l9_267;
if (l9_266)
{
l9_267=l9_239.y==3;
}
else
{
l9_267=l9_266;
}
float l9_268=l9_236.y;
float l9_269=l9_241.y;
float l9_270=l9_241.w;
bool l9_271=l9_267;
float l9_272=l9_246;
float l9_273=fast::clamp(l9_268,l9_269,l9_270);
float l9_274=step(abs(l9_268-l9_273),9.9999997e-06);
l9_272*=(l9_274+((1.0-float(l9_271))*(1.0-l9_274)));
l9_268=l9_273;
l9_236.y=l9_268;
l9_246=l9_272;
}
float2 l9_275=l9_236;
bool l9_276=l9_237;
float3x3 l9_277=l9_238;
if (l9_276)
{
l9_275=float2((l9_277*float3(l9_275,1.0)).xy);
}
float2 l9_278=l9_275;
float2 l9_279=l9_278;
float2 l9_280=l9_279;
l9_236=l9_280;
float l9_281=l9_236.x;
int l9_282=l9_239.x;
bool l9_283=l9_245;
float l9_284=l9_246;
if ((l9_282==0)||(l9_282==3))
{
float l9_285=l9_281;
float l9_286=0.0;
float l9_287=1.0;
bool l9_288=l9_283;
float l9_289=l9_284;
float l9_290=fast::clamp(l9_285,l9_286,l9_287);
float l9_291=step(abs(l9_285-l9_290),9.9999997e-06);
l9_289*=(l9_291+((1.0-float(l9_288))*(1.0-l9_291)));
l9_285=l9_290;
l9_281=l9_285;
l9_284=l9_289;
}
l9_236.x=l9_281;
l9_246=l9_284;
float l9_292=l9_236.y;
int l9_293=l9_239.y;
bool l9_294=l9_245;
float l9_295=l9_246;
if ((l9_293==0)||(l9_293==3))
{
float l9_296=l9_292;
float l9_297=0.0;
float l9_298=1.0;
bool l9_299=l9_294;
float l9_300=l9_295;
float l9_301=fast::clamp(l9_296,l9_297,l9_298);
float l9_302=step(abs(l9_296-l9_301),9.9999997e-06);
l9_300*=(l9_302+((1.0-float(l9_299))*(1.0-l9_302)));
l9_296=l9_301;
l9_292=l9_296;
l9_295=l9_300;
}
l9_236.y=l9_292;
l9_246=l9_295;
float2 l9_303=l9_236;
int l9_304=l9_234;
int l9_305=l9_235;
float l9_306=l9_244;
float2 l9_307=l9_303;
int l9_308=l9_304;
int l9_309=l9_305;
float3 l9_310=float3(0.0);
if (l9_308==0)
{
l9_310=float3(l9_307,0.0);
}
else
{
if (l9_308==1)
{
l9_310=float3(l9_307.x,(l9_307.y*0.5)+(0.5-(float(l9_309)*0.5)),0.0);
}
else
{
l9_310=float3(l9_307,float(l9_309));
}
}
float3 l9_311=l9_310;
float3 l9_312=l9_311;
float2 l9_313=l9_312.xy;
float l9_314=l9_306;
float4 l9_315=intensityTexture.sample(intensityTextureSmpSC,l9_313,bias(l9_314));
float4 l9_316=l9_315;
float4 l9_317=l9_316;
if (l9_242)
{
l9_317=mix(l9_243,l9_317,float4(l9_246));
}
float4 l9_318=l9_317;
float3 l9_319=l9_318.xyz;
float3 l9_320=l9_319;
float l9_321=16.0;
float l9_322=((((l9_320.x*256.0)+l9_320.y)+(l9_320.z/256.0))/257.00391)*l9_321;
float l9_323=l9_322;
if ((int(BLEND_MODE_FORGRAY_tmp)!=0))
{
l9_323=fast::max(l9_323,1.0);
}
if ((int(BLEND_MODE_NOTBRIGHT_tmp)!=0))
{
l9_323=fast::min(l9_323,1.0);
}
float l9_324=l9_225;
float3 l9_325=param_8;
float3 l9_326=param_9;
float l9_327=l9_226;
float l9_328=l9_323;
float3 l9_329=transformColor(l9_324,l9_325,l9_326,l9_327,l9_328);
return l9_329;
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
}
float4 outputMotionVectorsIfNeeded(thread const float3& surfacePosWorldSpace,thread const float4& finalColor,thread int& varStereoViewID,constant userUniformsObj& UserUniforms)
{
if ((int(sc_MotionVectorsPass_tmp)!=0))
{
float3 param=surfacePosWorldSpace;
int l9_0=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_0=0;
}
else
{
l9_0=varStereoViewID;
}
int l9_1=l9_0;
float4 l9_2=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(param,1.0);
float2 l9_3=l9_2.xy/float2(l9_2.w);
l9_2=float4(l9_3.x,l9_3.y,l9_2.z,l9_2.w);
int l9_4=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_4=0;
}
else
{
l9_4=varStereoViewID;
}
int l9_5=l9_4;
float4 l9_6=((UserUniforms.sc_PrevFrameViewProjectionMatrixArray[l9_5]*UserUniforms.sc_PrevFrameModelMatrix)*UserUniforms.sc_ModelMatrixInverse)*float4(param,1.0);
float2 l9_7=l9_6.xy/float2(l9_6.w);
l9_6=float4(l9_7.x,l9_7.y,l9_6.z,l9_6.w);
float2 l9_8=(l9_2.xy-l9_6.xy)*0.5;
float2 l9_9=l9_8;
float l9_10=(l9_9.x*5.0)+0.5;
float l9_11=floor(l9_10*65535.0);
float l9_12=floor(l9_11*0.00390625);
float2 l9_13=float2(l9_12/255.0,(l9_11-(l9_12*256.0))/255.0);
float l9_14=(l9_9.y*5.0)+0.5;
float l9_15=floor(l9_14*65535.0);
float l9_16=floor(l9_15*0.00390625);
float2 l9_17=float2(l9_16/255.0,(l9_15-(l9_16*256.0))/255.0);
float4 l9_18=float4(l9_13,l9_17);
float4 l9_19=l9_18;
return l9_19;
}
else
{
return finalColor;
}
}
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]])
{
main_frag_out out={};
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
if ((sc_StereoRenderingMode_tmp==1)&&(sc_StereoRendering_IsClipDistanceEnabled_tmp==0))
{
if (in.varClipDistance<0.0)
{
discard_fragment();
}
}
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=in.PreviewVertexColor;
PreviewInfo.Saved=((in.PreviewVertexSaved*1.0)!=0.0) ? true : false;
float4 FinalColor=float4(1.0);
float l9_0;
if ((*sc_set0.UserUniforms).overrideTimeEnabled==1)
{
l9_0=(*sc_set0.UserUniforms).overrideTimeElapsed;
}
else
{
l9_0=(*sc_set0.UserUniforms).sc_Time.x;
}
ssGlobals Globals;
Globals.gTimeElapsed=l9_0;
float l9_1;
if ((*sc_set0.UserUniforms).overrideTimeEnabled==1)
{
l9_1=(*sc_set0.UserUniforms).overrideTimeDelta;
}
else
{
l9_1=(*sc_set0.UserUniforms).sc_Time.y;
}
Globals.gTimeDelta=l9_1;
bool l9_2=(*sc_set0.UserUniforms).isProxyMode!=0;
if (l9_2)
{
float4 l9_3=gl_FragCoord;
int2 l9_4=int2(l9_3.xy);
RayHitPayload l9_5=GetHitData(l9_4,(*sc_set0.UserUniforms),sc_set0.z_rayDirections,sc_set0.z_rayDirectionsSmpSC,sc_set0.z_hitIdAndBarycentric,sc_set0.z_hitIdAndBarycentricSmp,(*sc_set0.layoutVertices),(*sc_set0.layoutVerticesPN),(*sc_set0.layoutIndices));
RayHitPayload rhp=l9_5;
bool l9_6=(*sc_set0.UserUniforms).noEarlyZ!=0;
if (l9_6)
{
if (rhp.id.x!=uint((*sc_set0.UserUniforms).instance_id))
{
return out;
}
}
Globals.Surface_UVCoord0=rhp.uv0;
}
else
{
Globals.Surface_UVCoord0=in.varPackedTex.xy;
}
float2 Output_N17=float2(0.0);
float2 param=(*sc_set0.UserUniforms).celebrationFrames;
Output_N17=param;
float2 UVCoord_N19=float2(0.0);
UVCoord_N19=Globals.Surface_UVCoord0;
float Output_N228=0.0;
float param_1=(*sc_set0.UserUniforms).pointerAlignment;
Output_N228=param_1;
float Output_N36=0.0;
Output_N36=-Output_N228;
float2 Value_N225=float2(0.0);
Value_N225.x=(*sc_set0.UserUniforms).Port_Value1_N225;
Value_N225.y=Output_N36;
float2 Value_N227=float2(0.0);
Value_N227.x=Output_N36;
Value_N227.y=(*sc_set0.UserUniforms).Port_Value2_N227;
float2 TextureSize_N1=float2(0.0);
float2 param_2=(*sc_set0.UserUniforms).progressionSize.xy;
TextureSize_N1=param_2;
float2 Value_N109=float2(0.0);
Value_N109=TextureSize_N1;
float Value1_N110=0.0;
float Value2_N110=0.0;
float2 param_3=Value_N109;
float param_4=param_3.x;
float param_5=param_3.y;
Value1_N110=param_4;
Value2_N110=param_5;
float Output_N115=0.0;
Output_N115=Value1_N110/(Value2_N110+1.234e-06);
float2 Value_N116=float2(0.0);
Value_N116.x=(*sc_set0.UserUniforms).Port_Value1_N116;
Value_N116.y=Output_N115;
float Output_N111=0.0;
Output_N111=Value2_N110/(Value1_N110+1.234e-06);
float2 Value_N117=float2(0.0);
Value_N117.x=Output_N111;
Value_N117.y=(*sc_set0.UserUniforms).Port_Value2_N117;
float Output_N112=0.0;
Output_N112=float(Output_N111>=(*sc_set0.UserUniforms).Port_Input1_N112);
float2 Output_N118=float2(0.0);
Output_N118=mix(Value_N116,Value_N117,float2(Output_N112));
float2 Export_N119=float2(0.0);
Export_N119=Output_N118;
float Output_N224=0.0;
Output_N224=Export_N119.x;
float Output_N156=0.0;
Output_N156=float(Output_N224==(*sc_set0.UserUniforms).Port_Input1_N156);
float2 Output_N226=float2(0.0);
Output_N226=mix(Value_N225,Value_N227,float2(Output_N156));
float Output_N20=0.0;
float param_6=float((*sc_set0.UserUniforms).followPointer!=0);
Output_N20=param_6;
float2 Output_N25=float2(0.0);
Output_N25=mix((*sc_set0.UserUniforms).Port_Input0_N025,Output_N226,float2(Output_N20));
float2 Output_N10=float2(0.0);
float2 param_7=(*sc_set0.UserUniforms).celebrationAlignment;
Output_N10=param_7;
float2 Output_N7=float2(0.0);
Output_N7=Output_N25+Output_N10;
float2 CoordsOut_N8=float2(0.0);
CoordsOut_N8=UVCoord_N19+Output_N7;
float Output_N250=0.0;
float param_8=(*sc_set0.UserUniforms).progressUpdate;
Output_N250=param_8;
float Output_N253=0.0;
float param_9=(*sc_set0.UserUniforms).maxProgression;
Output_N253=param_9;
float Output_N255=0.0;
Output_N255=1.0-Output_N253;
float Output_N252=0.0;
float param_10=(*sc_set0.UserUniforms).minProgression;
Output_N252=param_10;
float Output_N254=0.0;
Output_N254=1.0-Output_N252;
float ValueOut_N249=0.0;
float param_11=Output_N250;
float param_13=(*sc_set0.UserUniforms).Port_RangeMinA_N249;
float param_14=(*sc_set0.UserUniforms).Port_RangeMaxA_N249;
float param_15=Output_N255;
float param_16=Output_N254;
float param_12=(((param_11-param_13)/(param_14-param_13))*(param_16-param_15))+param_15;
float l9_7;
if (param_16>param_15)
{
l9_7=fast::clamp(param_12,param_15,param_16);
}
else
{
l9_7=fast::clamp(param_12,param_16,param_15);
}
param_12=l9_7;
ValueOut_N249=param_12;
float2 Output_N113=float2(0.0);
Output_N113=mix((*sc_set0.UserUniforms).Port_Input0_N113,(*sc_set0.UserUniforms).Port_Input1_N113,float2(Output_N112));
float2 Export_N114=float2(0.0);
Export_N114=Output_N113;
float2 Output_N251=float2(0.0);
Output_N251=float2(ValueOut_N249)*Export_N114;
float2 Output_N18=float2(0.0);
Output_N18=mix((*sc_set0.UserUniforms).Port_Input0_N018,Output_N251,float2(Output_N20));
float2 CoordsOut_N21=float2(0.0);
CoordsOut_N21=CoordsOut_N8+Output_N18;
float Output_N11=0.0;
float param_17=(*sc_set0.UserUniforms).celebrationScale;
Output_N11=param_17;
float Output_N12=0.0;
Output_N12=1.0/Output_N11;
float2 CoordsOut_N6=float2(0.0);
CoordsOut_N6=((CoordsOut_N21-(*sc_set0.UserUniforms).Port_Center_N006)*float2(Output_N12))+(*sc_set0.UserUniforms).Port_Center_N006;
float2 Output_N9=float2(0.0);
Output_N9=fast::clamp(CoordsOut_N6+float2(0.001),(*sc_set0.UserUniforms).Port_Input1_N009+float2(0.001),(*sc_set0.UserUniforms).Port_Input2_N009+float2(0.001))-float2(0.001);
float Output_N16=0.0;
float param_18=(*sc_set0.UserUniforms).celebrationTime;
Output_N16=param_18;
float4 Color_N178=float4(0.0);
float2 param_19=Output_N17;
float param_20=(*sc_set0.UserUniforms).Port_MaxFrames_N178;
float2 param_21=Output_N9;
float param_22=Output_N16;
float2 l9_8=float2(0.0);
float l9_9=floor(param_19.x);
float l9_10=floor(param_19.y);
float l9_11=1.0/l9_9;
float l9_12=1.0/l9_10;
float l9_13=fast::min(l9_9*l9_10,floor(param_20));
float l9_14=floor(mod(floor(param_22),l9_13));
float l9_15=floor(l9_14/l9_9);
float l9_16=mod(l9_14,l9_9);
l9_8=float2((l9_11*param_21.x)+(l9_16*l9_11),((1.0-l9_12)-(l9_15*l9_12))+(l9_12*param_21.y));
int l9_17=0;
if ((int(celebrationHasSwappedViews_tmp)!=0))
{
int l9_18=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_18=0;
}
else
{
l9_18=in.varStereoViewID;
}
int l9_19=l9_18;
l9_17=1-l9_19;
}
else
{
int l9_20=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_20=0;
}
else
{
l9_20=in.varStereoViewID;
}
int l9_21=l9_20;
l9_17=l9_21;
}
int l9_22=l9_17;
int l9_23=celebrationLayout_tmp;
int l9_24=l9_22;
float2 l9_25=l9_8;
bool l9_26=(int(SC_USE_UV_TRANSFORM_celebration_tmp)!=0);
float3x3 l9_27=(*sc_set0.UserUniforms).celebrationTransform;
int2 l9_28=int2(SC_SOFTWARE_WRAP_MODE_U_celebration_tmp,SC_SOFTWARE_WRAP_MODE_V_celebration_tmp);
bool l9_29=(int(SC_USE_UV_MIN_MAX_celebration_tmp)!=0);
float4 l9_30=(*sc_set0.UserUniforms).celebrationUvMinMax;
bool l9_31=(int(SC_USE_CLAMP_TO_BORDER_celebration_tmp)!=0);
float4 l9_32=(*sc_set0.UserUniforms).celebrationBorderColor;
float l9_33=0.0;
bool l9_34=l9_31&&(!l9_29);
float l9_35=1.0;
float l9_36=l9_25.x;
int l9_37=l9_28.x;
if (l9_37==1)
{
l9_36=fract(l9_36);
}
else
{
if (l9_37==2)
{
float l9_38=fract(l9_36);
float l9_39=l9_36-l9_38;
float l9_40=step(0.25,fract(l9_39*0.5));
l9_36=mix(l9_38,1.0-l9_38,fast::clamp(l9_40,0.0,1.0));
}
}
l9_25.x=l9_36;
float l9_41=l9_25.y;
int l9_42=l9_28.y;
if (l9_42==1)
{
l9_41=fract(l9_41);
}
else
{
if (l9_42==2)
{
float l9_43=fract(l9_41);
float l9_44=l9_41-l9_43;
float l9_45=step(0.25,fract(l9_44*0.5));
l9_41=mix(l9_43,1.0-l9_43,fast::clamp(l9_45,0.0,1.0));
}
}
l9_25.y=l9_41;
if (l9_29)
{
bool l9_46=l9_31;
bool l9_47;
if (l9_46)
{
l9_47=l9_28.x==3;
}
else
{
l9_47=l9_46;
}
float l9_48=l9_25.x;
float l9_49=l9_30.x;
float l9_50=l9_30.z;
bool l9_51=l9_47;
float l9_52=l9_35;
float l9_53=fast::clamp(l9_48,l9_49,l9_50);
float l9_54=step(abs(l9_48-l9_53),9.9999997e-06);
l9_52*=(l9_54+((1.0-float(l9_51))*(1.0-l9_54)));
l9_48=l9_53;
l9_25.x=l9_48;
l9_35=l9_52;
bool l9_55=l9_31;
bool l9_56;
if (l9_55)
{
l9_56=l9_28.y==3;
}
else
{
l9_56=l9_55;
}
float l9_57=l9_25.y;
float l9_58=l9_30.y;
float l9_59=l9_30.w;
bool l9_60=l9_56;
float l9_61=l9_35;
float l9_62=fast::clamp(l9_57,l9_58,l9_59);
float l9_63=step(abs(l9_57-l9_62),9.9999997e-06);
l9_61*=(l9_63+((1.0-float(l9_60))*(1.0-l9_63)));
l9_57=l9_62;
l9_25.y=l9_57;
l9_35=l9_61;
}
float2 l9_64=l9_25;
bool l9_65=l9_26;
float3x3 l9_66=l9_27;
if (l9_65)
{
l9_64=float2((l9_66*float3(l9_64,1.0)).xy);
}
float2 l9_67=l9_64;
float2 l9_68=l9_67;
float2 l9_69=l9_68;
l9_25=l9_69;
float l9_70=l9_25.x;
int l9_71=l9_28.x;
bool l9_72=l9_34;
float l9_73=l9_35;
if ((l9_71==0)||(l9_71==3))
{
float l9_74=l9_70;
float l9_75=0.0;
float l9_76=1.0;
bool l9_77=l9_72;
float l9_78=l9_73;
float l9_79=fast::clamp(l9_74,l9_75,l9_76);
float l9_80=step(abs(l9_74-l9_79),9.9999997e-06);
l9_78*=(l9_80+((1.0-float(l9_77))*(1.0-l9_80)));
l9_74=l9_79;
l9_70=l9_74;
l9_73=l9_78;
}
l9_25.x=l9_70;
l9_35=l9_73;
float l9_81=l9_25.y;
int l9_82=l9_28.y;
bool l9_83=l9_34;
float l9_84=l9_35;
if ((l9_82==0)||(l9_82==3))
{
float l9_85=l9_81;
float l9_86=0.0;
float l9_87=1.0;
bool l9_88=l9_83;
float l9_89=l9_84;
float l9_90=fast::clamp(l9_85,l9_86,l9_87);
float l9_91=step(abs(l9_85-l9_90),9.9999997e-06);
l9_89*=(l9_91+((1.0-float(l9_88))*(1.0-l9_91)));
l9_85=l9_90;
l9_81=l9_85;
l9_84=l9_89;
}
l9_25.y=l9_81;
l9_35=l9_84;
float2 l9_92=l9_25;
int l9_93=l9_23;
int l9_94=l9_24;
float l9_95=l9_33;
float2 l9_96=l9_92;
int l9_97=l9_93;
int l9_98=l9_94;
float3 l9_99=float3(0.0);
if (l9_97==0)
{
l9_99=float3(l9_96,0.0);
}
else
{
if (l9_97==1)
{
l9_99=float3(l9_96.x,(l9_96.y*0.5)+(0.5-(float(l9_98)*0.5)),0.0);
}
else
{
l9_99=float3(l9_96,float(l9_98));
}
}
float3 l9_100=l9_99;
float3 l9_101=l9_100;
float2 l9_102=l9_101.xy;
float l9_103=l9_95;
float4 l9_104=sc_set0.celebration.sample(sc_set0.celebrationSmpSC,l9_102,bias(l9_103));
float4 l9_105=l9_104;
float4 l9_106=l9_105;
if (l9_31)
{
l9_106=mix(l9_32,l9_106,float4(l9_35));
}
float4 l9_107=l9_106;
float4 param_23=l9_107;
Color_N178=param_23;
float Output_N14=0.0;
float param_24=(*sc_set0.UserUniforms).celebrate;
Output_N14=param_24;
float4 Output_N15=float4(0.0);
Output_N15=mix(float4((*sc_set0.UserUniforms).Port_Input0_N015),Color_N178,float4(Output_N14));
float4 Value_N35=float4(0.0);
Value_N35=(*sc_set0.UserUniforms).Port_Import_N035;
float2 TextureSize_N155=float2(0.0);
float2 param_25=(*sc_set0.UserUniforms).backgroundSize.xy;
TextureSize_N155=param_25;
float2 UVCoord_N64=float2(0.0);
UVCoord_N64=Globals.Surface_UVCoord0;
float2 Value_N69=float2(0.0);
Value_N69=TextureSize_N155;
float2 Value_N79=float2(0.0);
Value_N79=Value_N69;
float Value1_N81=0.0;
float Value2_N81=0.0;
float2 param_26=Value_N79;
float param_27=param_26.x;
float param_28=param_26.y;
Value1_N81=param_27;
Value2_N81=param_28;
float Output_N97=0.0;
Output_N97=Value1_N81/(Value2_N81+1.234e-06);
float2 Value_N98=float2(0.0);
Value_N98.x=(*sc_set0.UserUniforms).Port_Value1_N098;
Value_N98.y=Output_N97;
float Output_N83=0.0;
Output_N83=Value2_N81/(Value1_N81+1.234e-06);
float2 Value_N99=float2(0.0);
Value_N99.x=Output_N83;
Value_N99.y=(*sc_set0.UserUniforms).Port_Value2_N099;
float Output_N84=0.0;
Output_N84=float(Output_N83>=(*sc_set0.UserUniforms).Port_Input1_N084);
float2 Output_N100=float2(0.0);
Output_N100=mix(Value_N98,Value_N99,float2(Output_N84));
float2 Export_N101=float2(0.0);
Export_N101=Output_N100;
float2 CoordsOut_N102=float2(0.0);
CoordsOut_N102=((UVCoord_N64-(*sc_set0.UserUniforms).Port_Center_N102)*Export_N101)+(*sc_set0.UserUniforms).Port_Center_N102;
float2 Output_N103=float2(0.0);
Output_N103=fast::clamp(CoordsOut_N102+float2(0.001),(*sc_set0.UserUniforms).Port_Input1_N103+float2(0.001),(*sc_set0.UserUniforms).Port_Input2_N103+float2(0.001))-float2(0.001);
float Value_N104=0.0;
Value_N104=fast::clamp((*sc_set0.UserUniforms).Port_Import_N104,0.0,10.0);
float Output_N105=0.0;
Output_N105=(*sc_set0.UserUniforms).Port_Input0_N105-Value_N104;
float4 Color_N106=float4(0.0);
int l9_108=0;
if ((int(backgroundHasSwappedViews_tmp)!=0))
{
int l9_109=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_109=0;
}
else
{
l9_109=in.varStereoViewID;
}
int l9_110=l9_109;
l9_108=1-l9_110;
}
else
{
int l9_111=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_111=0;
}
else
{
l9_111=in.varStereoViewID;
}
int l9_112=l9_111;
l9_108=l9_112;
}
int l9_113=l9_108;
int param_29=backgroundLayout_tmp;
int param_30=l9_113;
float2 param_31=Output_N103;
bool param_32=(int(SC_USE_UV_TRANSFORM_background_tmp)!=0);
float3x3 param_33=(*sc_set0.UserUniforms).backgroundTransform;
int2 param_34=int2(SC_SOFTWARE_WRAP_MODE_U_background_tmp,SC_SOFTWARE_WRAP_MODE_V_background_tmp);
bool param_35=(int(SC_USE_UV_MIN_MAX_background_tmp)!=0);
float4 param_36=(*sc_set0.UserUniforms).backgroundUvMinMax;
bool param_37=(int(SC_USE_CLAMP_TO_BORDER_background_tmp)!=0);
float4 param_38=(*sc_set0.UserUniforms).backgroundBorderColor;
float param_39=Output_N105;
bool l9_114=param_37&&(!param_35);
float l9_115=1.0;
float l9_116=param_31.x;
int l9_117=param_34.x;
if (l9_117==1)
{
l9_116=fract(l9_116);
}
else
{
if (l9_117==2)
{
float l9_118=fract(l9_116);
float l9_119=l9_116-l9_118;
float l9_120=step(0.25,fract(l9_119*0.5));
l9_116=mix(l9_118,1.0-l9_118,fast::clamp(l9_120,0.0,1.0));
}
}
param_31.x=l9_116;
float l9_121=param_31.y;
int l9_122=param_34.y;
if (l9_122==1)
{
l9_121=fract(l9_121);
}
else
{
if (l9_122==2)
{
float l9_123=fract(l9_121);
float l9_124=l9_121-l9_123;
float l9_125=step(0.25,fract(l9_124*0.5));
l9_121=mix(l9_123,1.0-l9_123,fast::clamp(l9_125,0.0,1.0));
}
}
param_31.y=l9_121;
if (param_35)
{
bool l9_126=param_37;
bool l9_127;
if (l9_126)
{
l9_127=param_34.x==3;
}
else
{
l9_127=l9_126;
}
float l9_128=param_31.x;
float l9_129=param_36.x;
float l9_130=param_36.z;
bool l9_131=l9_127;
float l9_132=l9_115;
float l9_133=fast::clamp(l9_128,l9_129,l9_130);
float l9_134=step(abs(l9_128-l9_133),9.9999997e-06);
l9_132*=(l9_134+((1.0-float(l9_131))*(1.0-l9_134)));
l9_128=l9_133;
param_31.x=l9_128;
l9_115=l9_132;
bool l9_135=param_37;
bool l9_136;
if (l9_135)
{
l9_136=param_34.y==3;
}
else
{
l9_136=l9_135;
}
float l9_137=param_31.y;
float l9_138=param_36.y;
float l9_139=param_36.w;
bool l9_140=l9_136;
float l9_141=l9_115;
float l9_142=fast::clamp(l9_137,l9_138,l9_139);
float l9_143=step(abs(l9_137-l9_142),9.9999997e-06);
l9_141*=(l9_143+((1.0-float(l9_140))*(1.0-l9_143)));
l9_137=l9_142;
param_31.y=l9_137;
l9_115=l9_141;
}
float2 l9_144=param_31;
bool l9_145=param_32;
float3x3 l9_146=param_33;
if (l9_145)
{
l9_144=float2((l9_146*float3(l9_144,1.0)).xy);
}
float2 l9_147=l9_144;
float2 l9_148=l9_147;
float2 l9_149=l9_148;
param_31=l9_149;
float l9_150=param_31.x;
int l9_151=param_34.x;
bool l9_152=l9_114;
float l9_153=l9_115;
if ((l9_151==0)||(l9_151==3))
{
float l9_154=l9_150;
float l9_155=0.0;
float l9_156=1.0;
bool l9_157=l9_152;
float l9_158=l9_153;
float l9_159=fast::clamp(l9_154,l9_155,l9_156);
float l9_160=step(abs(l9_154-l9_159),9.9999997e-06);
l9_158*=(l9_160+((1.0-float(l9_157))*(1.0-l9_160)));
l9_154=l9_159;
l9_150=l9_154;
l9_153=l9_158;
}
param_31.x=l9_150;
l9_115=l9_153;
float l9_161=param_31.y;
int l9_162=param_34.y;
bool l9_163=l9_114;
float l9_164=l9_115;
if ((l9_162==0)||(l9_162==3))
{
float l9_165=l9_161;
float l9_166=0.0;
float l9_167=1.0;
bool l9_168=l9_163;
float l9_169=l9_164;
float l9_170=fast::clamp(l9_165,l9_166,l9_167);
float l9_171=step(abs(l9_165-l9_170),9.9999997e-06);
l9_169*=(l9_171+((1.0-float(l9_168))*(1.0-l9_171)));
l9_165=l9_170;
l9_161=l9_165;
l9_164=l9_169;
}
param_31.y=l9_161;
l9_115=l9_164;
float2 l9_172=param_31;
int l9_173=param_29;
int l9_174=param_30;
float l9_175=param_39;
float2 l9_176=l9_172;
int l9_177=l9_173;
int l9_178=l9_174;
float3 l9_179=float3(0.0);
if (l9_177==0)
{
l9_179=float3(l9_176,0.0);
}
else
{
if (l9_177==1)
{
l9_179=float3(l9_176.x,(l9_176.y*0.5)+(0.5-(float(l9_178)*0.5)),0.0);
}
else
{
l9_179=float3(l9_176,float(l9_178));
}
}
float3 l9_180=l9_179;
float3 l9_181=l9_180;
float2 l9_182=l9_181.xy;
float l9_183=l9_175;
float4 l9_184=sc_set0.background.sample(sc_set0.backgroundSmpSC,l9_182,level(l9_183));
float4 l9_185=l9_184;
float4 l9_186=l9_185;
if (param_37)
{
l9_186=mix(param_38,l9_186,float4(l9_115));
}
float4 l9_187=l9_186;
Color_N106=l9_187;
float2 Output_N107=float2(0.0);
Output_N107=float2(float(CoordsOut_N102.x>=(*sc_set0.UserUniforms).Port_Input1_N107.x),float(CoordsOut_N102.y>=(*sc_set0.UserUniforms).Port_Input1_N107.y));
float2 Output_N121=float2(0.0);
Output_N121=float2(float(CoordsOut_N102.x<=(*sc_set0.UserUniforms).Port_Input1_N121.x),float(CoordsOut_N102.y<=(*sc_set0.UserUniforms).Port_Input1_N121.y));
float Result_N122=0.0;
float l9_188=Output_N107.x;
bool l9_189=(l9_188*1.0)!=0.0;
bool l9_190;
if (l9_189)
{
l9_190=(Output_N121.x*1.0)!=0.0;
}
else
{
l9_190=l9_189;
}
Result_N122=float(l9_190);
float4 Output_N123=float4(0.0);
Output_N123=mix(Value_N35,Color_N106,float4(Result_N122));
float4 Export_N124=float4(0.0);
Export_N124=Output_N123;
float4 Value_N82=float4(0.0);
Value_N82=Export_N124;
float4 Value_N72=float4(0.0);
Value_N72=(*sc_set0.UserUniforms).Port_Import_N072;
float2 CoordsOut_N126=float2(0.0);
CoordsOut_N126=UVCoord_N19+Output_N251;
float2 CoordsOut_N120=float2(0.0);
CoordsOut_N120=((CoordsOut_N126-(*sc_set0.UserUniforms).Port_Center_N120)*Export_N119)+(*sc_set0.UserUniforms).Port_Center_N120;
float2 Value_N74=float2(0.0);
Value_N74=CoordsOut_N120;
float2 Output_N75=float2(0.0);
Output_N75=fast::clamp(Value_N74+float2(0.001),(*sc_set0.UserUniforms).Port_Input1_N075+float2(0.001),(*sc_set0.UserUniforms).Port_Input2_N075+float2(0.001))-float2(0.001);
float Value_N88=0.0;
Value_N88=fast::clamp((*sc_set0.UserUniforms).Port_Import_N088,0.0,10.0);
float Output_N89=0.0;
Output_N89=(*sc_set0.UserUniforms).Port_Input0_N089-Value_N88;
float4 Color_N90=float4(0.0);
int l9_191=0;
if ((int(progressionHasSwappedViews_tmp)!=0))
{
int l9_192=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_192=0;
}
else
{
l9_192=in.varStereoViewID;
}
int l9_193=l9_192;
l9_191=1-l9_193;
}
else
{
int l9_194=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_194=0;
}
else
{
l9_194=in.varStereoViewID;
}
int l9_195=l9_194;
l9_191=l9_195;
}
int l9_196=l9_191;
int param_40=progressionLayout_tmp;
int param_41=l9_196;
float2 param_42=Output_N75;
bool param_43=(int(SC_USE_UV_TRANSFORM_progression_tmp)!=0);
float3x3 param_44=(*sc_set0.UserUniforms).progressionTransform;
int2 param_45=int2(SC_SOFTWARE_WRAP_MODE_U_progression_tmp,SC_SOFTWARE_WRAP_MODE_V_progression_tmp);
bool param_46=(int(SC_USE_UV_MIN_MAX_progression_tmp)!=0);
float4 param_47=(*sc_set0.UserUniforms).progressionUvMinMax;
bool param_48=(int(SC_USE_CLAMP_TO_BORDER_progression_tmp)!=0);
float4 param_49=(*sc_set0.UserUniforms).progressionBorderColor;
float param_50=Output_N89;
bool l9_197=param_48&&(!param_46);
float l9_198=1.0;
float l9_199=param_42.x;
int l9_200=param_45.x;
if (l9_200==1)
{
l9_199=fract(l9_199);
}
else
{
if (l9_200==2)
{
float l9_201=fract(l9_199);
float l9_202=l9_199-l9_201;
float l9_203=step(0.25,fract(l9_202*0.5));
l9_199=mix(l9_201,1.0-l9_201,fast::clamp(l9_203,0.0,1.0));
}
}
param_42.x=l9_199;
float l9_204=param_42.y;
int l9_205=param_45.y;
if (l9_205==1)
{
l9_204=fract(l9_204);
}
else
{
if (l9_205==2)
{
float l9_206=fract(l9_204);
float l9_207=l9_204-l9_206;
float l9_208=step(0.25,fract(l9_207*0.5));
l9_204=mix(l9_206,1.0-l9_206,fast::clamp(l9_208,0.0,1.0));
}
}
param_42.y=l9_204;
if (param_46)
{
bool l9_209=param_48;
bool l9_210;
if (l9_209)
{
l9_210=param_45.x==3;
}
else
{
l9_210=l9_209;
}
float l9_211=param_42.x;
float l9_212=param_47.x;
float l9_213=param_47.z;
bool l9_214=l9_210;
float l9_215=l9_198;
float l9_216=fast::clamp(l9_211,l9_212,l9_213);
float l9_217=step(abs(l9_211-l9_216),9.9999997e-06);
l9_215*=(l9_217+((1.0-float(l9_214))*(1.0-l9_217)));
l9_211=l9_216;
param_42.x=l9_211;
l9_198=l9_215;
bool l9_218=param_48;
bool l9_219;
if (l9_218)
{
l9_219=param_45.y==3;
}
else
{
l9_219=l9_218;
}
float l9_220=param_42.y;
float l9_221=param_47.y;
float l9_222=param_47.w;
bool l9_223=l9_219;
float l9_224=l9_198;
float l9_225=fast::clamp(l9_220,l9_221,l9_222);
float l9_226=step(abs(l9_220-l9_225),9.9999997e-06);
l9_224*=(l9_226+((1.0-float(l9_223))*(1.0-l9_226)));
l9_220=l9_225;
param_42.y=l9_220;
l9_198=l9_224;
}
float2 l9_227=param_42;
bool l9_228=param_43;
float3x3 l9_229=param_44;
if (l9_228)
{
l9_227=float2((l9_229*float3(l9_227,1.0)).xy);
}
float2 l9_230=l9_227;
float2 l9_231=l9_230;
float2 l9_232=l9_231;
param_42=l9_232;
float l9_233=param_42.x;
int l9_234=param_45.x;
bool l9_235=l9_197;
float l9_236=l9_198;
if ((l9_234==0)||(l9_234==3))
{
float l9_237=l9_233;
float l9_238=0.0;
float l9_239=1.0;
bool l9_240=l9_235;
float l9_241=l9_236;
float l9_242=fast::clamp(l9_237,l9_238,l9_239);
float l9_243=step(abs(l9_237-l9_242),9.9999997e-06);
l9_241*=(l9_243+((1.0-float(l9_240))*(1.0-l9_243)));
l9_237=l9_242;
l9_233=l9_237;
l9_236=l9_241;
}
param_42.x=l9_233;
l9_198=l9_236;
float l9_244=param_42.y;
int l9_245=param_45.y;
bool l9_246=l9_197;
float l9_247=l9_198;
if ((l9_245==0)||(l9_245==3))
{
float l9_248=l9_244;
float l9_249=0.0;
float l9_250=1.0;
bool l9_251=l9_246;
float l9_252=l9_247;
float l9_253=fast::clamp(l9_248,l9_249,l9_250);
float l9_254=step(abs(l9_248-l9_253),9.9999997e-06);
l9_252*=(l9_254+((1.0-float(l9_251))*(1.0-l9_254)));
l9_248=l9_253;
l9_244=l9_248;
l9_247=l9_252;
}
param_42.y=l9_244;
l9_198=l9_247;
float2 l9_255=param_42;
int l9_256=param_40;
int l9_257=param_41;
float l9_258=param_50;
float2 l9_259=l9_255;
int l9_260=l9_256;
int l9_261=l9_257;
float3 l9_262=float3(0.0);
if (l9_260==0)
{
l9_262=float3(l9_259,0.0);
}
else
{
if (l9_260==1)
{
l9_262=float3(l9_259.x,(l9_259.y*0.5)+(0.5-(float(l9_261)*0.5)),0.0);
}
else
{
l9_262=float3(l9_259,float(l9_261));
}
}
float3 l9_263=l9_262;
float3 l9_264=l9_263;
float2 l9_265=l9_264.xy;
float l9_266=l9_258;
float4 l9_267=sc_set0.progression.sample(sc_set0.progressionSmpSC,l9_265,level(l9_266));
float4 l9_268=l9_267;
float4 l9_269=l9_268;
if (param_48)
{
l9_269=mix(param_49,l9_269,float4(l9_198));
}
float4 l9_270=l9_269;
Color_N90=l9_270;
float2 Output_N91=float2(0.0);
Output_N91=float2(float(Value_N74.x>=(*sc_set0.UserUniforms).Port_Input1_N091.x),float(Value_N74.y>=(*sc_set0.UserUniforms).Port_Input1_N091.y));
float2 Output_N92=float2(0.0);
Output_N92=float2(float(Value_N74.x<=(*sc_set0.UserUniforms).Port_Input1_N092.x),float(Value_N74.y<=(*sc_set0.UserUniforms).Port_Input1_N092.y));
float Result_N93=0.0;
float l9_271=Output_N91.x;
bool l9_272=(l9_271*1.0)!=0.0;
bool l9_273;
if (l9_272)
{
l9_273=(Output_N92.x*1.0)!=0.0;
}
else
{
l9_273=l9_272;
}
Result_N93=float(l9_273);
float4 Output_N94=float4(0.0);
Output_N94=mix(Value_N72,Color_N90,float4(Result_N93));
float4 Export_N95=float4(0.0);
Export_N95=Output_N94;
float4 Value_N205=float4(0.0);
Value_N205=Export_N95;
float4 Value_N190=float4(0.0);
Value_N190=(*sc_set0.UserUniforms).Port_Import_N190;
float2 CoordsOut_N188=float2(0.0);
CoordsOut_N188=((UVCoord_N19-(*sc_set0.UserUniforms).Port_Center_N188)*Export_N119)+(*sc_set0.UserUniforms).Port_Center_N188;
float2 Value_N192=float2(0.0);
Value_N192=CoordsOut_N188;
float2 Output_N193=float2(0.0);
Output_N193=fast::clamp(Value_N192+float2(0.001),(*sc_set0.UserUniforms).Port_Input1_N193+float2(0.001),(*sc_set0.UserUniforms).Port_Input2_N193+float2(0.001))-float2(0.001);
float Value_N194=0.0;
Value_N194=fast::clamp((*sc_set0.UserUniforms).Port_Import_N194,0.0,10.0);
float Output_N195=0.0;
Output_N195=(*sc_set0.UserUniforms).Port_Input0_N195-Value_N194;
float4 Color_N196=float4(0.0);
int l9_274=0;
if ((int(progressionHasSwappedViews_tmp)!=0))
{
int l9_275=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_275=0;
}
else
{
l9_275=in.varStereoViewID;
}
int l9_276=l9_275;
l9_274=1-l9_276;
}
else
{
int l9_277=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_277=0;
}
else
{
l9_277=in.varStereoViewID;
}
int l9_278=l9_277;
l9_274=l9_278;
}
int l9_279=l9_274;
int param_51=progressionLayout_tmp;
int param_52=l9_279;
float2 param_53=Output_N193;
bool param_54=(int(SC_USE_UV_TRANSFORM_progression_tmp)!=0);
float3x3 param_55=(*sc_set0.UserUniforms).progressionTransform;
int2 param_56=int2(SC_SOFTWARE_WRAP_MODE_U_progression_tmp,SC_SOFTWARE_WRAP_MODE_V_progression_tmp);
bool param_57=(int(SC_USE_UV_MIN_MAX_progression_tmp)!=0);
float4 param_58=(*sc_set0.UserUniforms).progressionUvMinMax;
bool param_59=(int(SC_USE_CLAMP_TO_BORDER_progression_tmp)!=0);
float4 param_60=(*sc_set0.UserUniforms).progressionBorderColor;
float param_61=Output_N195;
bool l9_280=param_59&&(!param_57);
float l9_281=1.0;
float l9_282=param_53.x;
int l9_283=param_56.x;
if (l9_283==1)
{
l9_282=fract(l9_282);
}
else
{
if (l9_283==2)
{
float l9_284=fract(l9_282);
float l9_285=l9_282-l9_284;
float l9_286=step(0.25,fract(l9_285*0.5));
l9_282=mix(l9_284,1.0-l9_284,fast::clamp(l9_286,0.0,1.0));
}
}
param_53.x=l9_282;
float l9_287=param_53.y;
int l9_288=param_56.y;
if (l9_288==1)
{
l9_287=fract(l9_287);
}
else
{
if (l9_288==2)
{
float l9_289=fract(l9_287);
float l9_290=l9_287-l9_289;
float l9_291=step(0.25,fract(l9_290*0.5));
l9_287=mix(l9_289,1.0-l9_289,fast::clamp(l9_291,0.0,1.0));
}
}
param_53.y=l9_287;
if (param_57)
{
bool l9_292=param_59;
bool l9_293;
if (l9_292)
{
l9_293=param_56.x==3;
}
else
{
l9_293=l9_292;
}
float l9_294=param_53.x;
float l9_295=param_58.x;
float l9_296=param_58.z;
bool l9_297=l9_293;
float l9_298=l9_281;
float l9_299=fast::clamp(l9_294,l9_295,l9_296);
float l9_300=step(abs(l9_294-l9_299),9.9999997e-06);
l9_298*=(l9_300+((1.0-float(l9_297))*(1.0-l9_300)));
l9_294=l9_299;
param_53.x=l9_294;
l9_281=l9_298;
bool l9_301=param_59;
bool l9_302;
if (l9_301)
{
l9_302=param_56.y==3;
}
else
{
l9_302=l9_301;
}
float l9_303=param_53.y;
float l9_304=param_58.y;
float l9_305=param_58.w;
bool l9_306=l9_302;
float l9_307=l9_281;
float l9_308=fast::clamp(l9_303,l9_304,l9_305);
float l9_309=step(abs(l9_303-l9_308),9.9999997e-06);
l9_307*=(l9_309+((1.0-float(l9_306))*(1.0-l9_309)));
l9_303=l9_308;
param_53.y=l9_303;
l9_281=l9_307;
}
float2 l9_310=param_53;
bool l9_311=param_54;
float3x3 l9_312=param_55;
if (l9_311)
{
l9_310=float2((l9_312*float3(l9_310,1.0)).xy);
}
float2 l9_313=l9_310;
float2 l9_314=l9_313;
float2 l9_315=l9_314;
param_53=l9_315;
float l9_316=param_53.x;
int l9_317=param_56.x;
bool l9_318=l9_280;
float l9_319=l9_281;
if ((l9_317==0)||(l9_317==3))
{
float l9_320=l9_316;
float l9_321=0.0;
float l9_322=1.0;
bool l9_323=l9_318;
float l9_324=l9_319;
float l9_325=fast::clamp(l9_320,l9_321,l9_322);
float l9_326=step(abs(l9_320-l9_325),9.9999997e-06);
l9_324*=(l9_326+((1.0-float(l9_323))*(1.0-l9_326)));
l9_320=l9_325;
l9_316=l9_320;
l9_319=l9_324;
}
param_53.x=l9_316;
l9_281=l9_319;
float l9_327=param_53.y;
int l9_328=param_56.y;
bool l9_329=l9_280;
float l9_330=l9_281;
if ((l9_328==0)||(l9_328==3))
{
float l9_331=l9_327;
float l9_332=0.0;
float l9_333=1.0;
bool l9_334=l9_329;
float l9_335=l9_330;
float l9_336=fast::clamp(l9_331,l9_332,l9_333);
float l9_337=step(abs(l9_331-l9_336),9.9999997e-06);
l9_335*=(l9_337+((1.0-float(l9_334))*(1.0-l9_337)));
l9_331=l9_336;
l9_327=l9_331;
l9_330=l9_335;
}
param_53.y=l9_327;
l9_281=l9_330;
float2 l9_338=param_53;
int l9_339=param_51;
int l9_340=param_52;
float l9_341=param_61;
float2 l9_342=l9_338;
int l9_343=l9_339;
int l9_344=l9_340;
float3 l9_345=float3(0.0);
if (l9_343==0)
{
l9_345=float3(l9_342,0.0);
}
else
{
if (l9_343==1)
{
l9_345=float3(l9_342.x,(l9_342.y*0.5)+(0.5-(float(l9_344)*0.5)),0.0);
}
else
{
l9_345=float3(l9_342,float(l9_344));
}
}
float3 l9_346=l9_345;
float3 l9_347=l9_346;
float2 l9_348=l9_347.xy;
float l9_349=l9_341;
float4 l9_350=sc_set0.progression.sample(sc_set0.progressionSmpSC,l9_348,level(l9_349));
float4 l9_351=l9_350;
float4 l9_352=l9_351;
if (param_59)
{
l9_352=mix(param_60,l9_352,float4(l9_281));
}
float4 l9_353=l9_352;
Color_N196=l9_353;
float2 Output_N199=float2(0.0);
Output_N199=float2(float(Value_N192.x>=(*sc_set0.UserUniforms).Port_Input1_N199.x),float(Value_N192.y>=(*sc_set0.UserUniforms).Port_Input1_N199.y));
float2 Output_N200=float2(0.0);
Output_N200=float2(float(Value_N192.x<=(*sc_set0.UserUniforms).Port_Input1_N200.x),float(Value_N192.y<=(*sc_set0.UserUniforms).Port_Input1_N200.y));
float Result_N201=0.0;
float l9_354=Output_N199.x;
bool l9_355=(l9_354*1.0)!=0.0;
bool l9_356;
if (l9_355)
{
l9_356=(Output_N200.x*1.0)!=0.0;
}
else
{
l9_356=l9_355;
}
Result_N201=float(l9_356);
float4 Output_N202=float4(0.0);
Output_N202=mix(Value_N190,Color_N196,float4(Result_N201));
float4 Export_N203=float4(0.0);
Export_N203=Output_N202;
float4 Value_N206=float4(0.0);
Value_N206=Export_N203;
float Output_N207=0.0;
Output_N207=Value_N206.w;
float4 Output_N208=float4(0.0);
Output_N208=mix((*sc_set0.UserUniforms).Port_Input0_N208,Value_N205,float4(Output_N207));
float4 Export_N209=float4(0.0);
Export_N209=Output_N208;
float4 Value_N157=float4(0.0);
Value_N157=Export_N209;
float Value_N158=0.0;
Value_N158=fast::clamp((*sc_set0.UserUniforms).Port_Import_N158,0.0,1.0);
float Output_N160=0.0;
Output_N160=fast::clamp(Value_N158,(*sc_set0.UserUniforms).Port_Input1_N160,(*sc_set0.UserUniforms).Port_Input2_N160);
float Output_N161=0.0;
Output_N161=float(Value_N158==(*sc_set0.UserUniforms).Port_Input1_N161);
float Output_N162=0.0;
Output_N162=1.0-Output_N161;
float Output_N163=0.0;
Output_N163=Output_N160*Output_N162;
float Value_N164=0.0;
Value_N164=fast::clamp((*sc_set0.UserUniforms).Port_Import_N164,0.0,1.0);
float Output_N165=0.0;
Output_N165=1.0-Output_N160;
float ValueOut_N166=0.0;
float param_62=Value_N164;
float param_64=(*sc_set0.UserUniforms).Port_RangeMinA_N166;
float param_65=(*sc_set0.UserUniforms).Port_RangeMaxA_N166;
float param_66=(*sc_set0.UserUniforms).Port_RangeMinB_N166;
float param_67=Output_N165;
float param_63=(((param_62-param_64)/(param_65-param_64))*(param_67-param_66))+param_66;
float l9_357;
if (param_67>param_66)
{
l9_357=fast::clamp(param_63,param_66,param_67);
}
else
{
l9_357=fast::clamp(param_63,param_67,param_66);
}
param_63=l9_357;
ValueOut_N166=param_63;
float Output_N167=0.0;
Output_N167=ValueOut_N166+Value_N158;
float Output_N168=0.0;
Output_N168=fast::clamp(Output_N167+0.001,Output_N161+0.001,(*sc_set0.UserUniforms).Port_Input2_N168+0.001)-0.001;
float Output_N172=0.0;
Output_N172=Value_N157.w;
float Output_N235=0.0;
Output_N235=smoothstep(Output_N163,Output_N168,Output_N172);
float4 Output_N236=float4(0.0);
Output_N236=mix(Value_N82,Value_N157,float4(Output_N235));
float4 Export_N237=float4(0.0);
Export_N237=Output_N236;
float Output_N171=0.0;
float param_68=float((*sc_set0.UserUniforms).useFill!=0);
Output_N171=param_68;
float4 Output_N170=float4(0.0);
Output_N170=mix(Export_N124,Export_N237,float4(Output_N171));
float4 Value_N54=float4(0.0);
Value_N54=Output_N170;
float4 Value_N211=float4(0.0);
Value_N211=(*sc_set0.UserUniforms).Port_Import_N211;
float2 CoordsOut_N31=float2(0.0);
CoordsOut_N31=UVCoord_N19+Output_N226;
float2 CoordsOut_N28=float2(0.0);
CoordsOut_N28=CoordsOut_N31+Output_N251;
float Output_N229=0.0;
float param_69=(*sc_set0.UserUniforms).pointerScale;
Output_N229=param_69;
float Output_N174=0.0;
Output_N174=1.0/Output_N229;
float2 CoordsOut_N27=float2(0.0);
CoordsOut_N27=((CoordsOut_N28-(*sc_set0.UserUniforms).Port_Center_N027)*float2(Output_N174))+(*sc_set0.UserUniforms).Port_Center_N027;
float2 Value_N213=float2(0.0);
Value_N213=CoordsOut_N27;
float2 Output_N214=float2(0.0);
Output_N214=fast::clamp(Value_N213+float2(0.001),(*sc_set0.UserUniforms).Port_Input1_N214+float2(0.001),(*sc_set0.UserUniforms).Port_Input2_N214+float2(0.001))-float2(0.001);
float Value_N215=0.0;
Value_N215=fast::clamp((*sc_set0.UserUniforms).Port_Import_N215,0.0,10.0);
float Output_N216=0.0;
Output_N216=(*sc_set0.UserUniforms).Port_Input0_N216-Value_N215;
float4 Color_N217=float4(0.0);
int l9_358=0;
if ((int(pointerHasSwappedViews_tmp)!=0))
{
int l9_359=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_359=0;
}
else
{
l9_359=in.varStereoViewID;
}
int l9_360=l9_359;
l9_358=1-l9_360;
}
else
{
int l9_361=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_361=0;
}
else
{
l9_361=in.varStereoViewID;
}
int l9_362=l9_361;
l9_358=l9_362;
}
int l9_363=l9_358;
int param_70=pointerLayout_tmp;
int param_71=l9_363;
float2 param_72=Output_N214;
bool param_73=(int(SC_USE_UV_TRANSFORM_pointer_tmp)!=0);
float3x3 param_74=(*sc_set0.UserUniforms).pointerTransform;
int2 param_75=int2(SC_SOFTWARE_WRAP_MODE_U_pointer_tmp,SC_SOFTWARE_WRAP_MODE_V_pointer_tmp);
bool param_76=(int(SC_USE_UV_MIN_MAX_pointer_tmp)!=0);
float4 param_77=(*sc_set0.UserUniforms).pointerUvMinMax;
bool param_78=(int(SC_USE_CLAMP_TO_BORDER_pointer_tmp)!=0);
float4 param_79=(*sc_set0.UserUniforms).pointerBorderColor;
float param_80=Output_N216;
bool l9_364=param_78&&(!param_76);
float l9_365=1.0;
float l9_366=param_72.x;
int l9_367=param_75.x;
if (l9_367==1)
{
l9_366=fract(l9_366);
}
else
{
if (l9_367==2)
{
float l9_368=fract(l9_366);
float l9_369=l9_366-l9_368;
float l9_370=step(0.25,fract(l9_369*0.5));
l9_366=mix(l9_368,1.0-l9_368,fast::clamp(l9_370,0.0,1.0));
}
}
param_72.x=l9_366;
float l9_371=param_72.y;
int l9_372=param_75.y;
if (l9_372==1)
{
l9_371=fract(l9_371);
}
else
{
if (l9_372==2)
{
float l9_373=fract(l9_371);
float l9_374=l9_371-l9_373;
float l9_375=step(0.25,fract(l9_374*0.5));
l9_371=mix(l9_373,1.0-l9_373,fast::clamp(l9_375,0.0,1.0));
}
}
param_72.y=l9_371;
if (param_76)
{
bool l9_376=param_78;
bool l9_377;
if (l9_376)
{
l9_377=param_75.x==3;
}
else
{
l9_377=l9_376;
}
float l9_378=param_72.x;
float l9_379=param_77.x;
float l9_380=param_77.z;
bool l9_381=l9_377;
float l9_382=l9_365;
float l9_383=fast::clamp(l9_378,l9_379,l9_380);
float l9_384=step(abs(l9_378-l9_383),9.9999997e-06);
l9_382*=(l9_384+((1.0-float(l9_381))*(1.0-l9_384)));
l9_378=l9_383;
param_72.x=l9_378;
l9_365=l9_382;
bool l9_385=param_78;
bool l9_386;
if (l9_385)
{
l9_386=param_75.y==3;
}
else
{
l9_386=l9_385;
}
float l9_387=param_72.y;
float l9_388=param_77.y;
float l9_389=param_77.w;
bool l9_390=l9_386;
float l9_391=l9_365;
float l9_392=fast::clamp(l9_387,l9_388,l9_389);
float l9_393=step(abs(l9_387-l9_392),9.9999997e-06);
l9_391*=(l9_393+((1.0-float(l9_390))*(1.0-l9_393)));
l9_387=l9_392;
param_72.y=l9_387;
l9_365=l9_391;
}
float2 l9_394=param_72;
bool l9_395=param_73;
float3x3 l9_396=param_74;
if (l9_395)
{
l9_394=float2((l9_396*float3(l9_394,1.0)).xy);
}
float2 l9_397=l9_394;
float2 l9_398=l9_397;
float2 l9_399=l9_398;
param_72=l9_399;
float l9_400=param_72.x;
int l9_401=param_75.x;
bool l9_402=l9_364;
float l9_403=l9_365;
if ((l9_401==0)||(l9_401==3))
{
float l9_404=l9_400;
float l9_405=0.0;
float l9_406=1.0;
bool l9_407=l9_402;
float l9_408=l9_403;
float l9_409=fast::clamp(l9_404,l9_405,l9_406);
float l9_410=step(abs(l9_404-l9_409),9.9999997e-06);
l9_408*=(l9_410+((1.0-float(l9_407))*(1.0-l9_410)));
l9_404=l9_409;
l9_400=l9_404;
l9_403=l9_408;
}
param_72.x=l9_400;
l9_365=l9_403;
float l9_411=param_72.y;
int l9_412=param_75.y;
bool l9_413=l9_364;
float l9_414=l9_365;
if ((l9_412==0)||(l9_412==3))
{
float l9_415=l9_411;
float l9_416=0.0;
float l9_417=1.0;
bool l9_418=l9_413;
float l9_419=l9_414;
float l9_420=fast::clamp(l9_415,l9_416,l9_417);
float l9_421=step(abs(l9_415-l9_420),9.9999997e-06);
l9_419*=(l9_421+((1.0-float(l9_418))*(1.0-l9_421)));
l9_415=l9_420;
l9_411=l9_415;
l9_414=l9_419;
}
param_72.y=l9_411;
l9_365=l9_414;
float2 l9_422=param_72;
int l9_423=param_70;
int l9_424=param_71;
float l9_425=param_80;
float2 l9_426=l9_422;
int l9_427=l9_423;
int l9_428=l9_424;
float3 l9_429=float3(0.0);
if (l9_427==0)
{
l9_429=float3(l9_426,0.0);
}
else
{
if (l9_427==1)
{
l9_429=float3(l9_426.x,(l9_426.y*0.5)+(0.5-(float(l9_428)*0.5)),0.0);
}
else
{
l9_429=float3(l9_426,float(l9_428));
}
}
float3 l9_430=l9_429;
float3 l9_431=l9_430;
float2 l9_432=l9_431.xy;
float l9_433=l9_425;
float4 l9_434=sc_set0.pointer.sample(sc_set0.pointerSmpSC,l9_432,level(l9_433));
float4 l9_435=l9_434;
float4 l9_436=l9_435;
if (param_78)
{
l9_436=mix(param_79,l9_436,float4(l9_365));
}
float4 l9_437=l9_436;
Color_N217=l9_437;
float2 Output_N218=float2(0.0);
Output_N218=float2(float(Value_N213.x>=(*sc_set0.UserUniforms).Port_Input1_N218.x),float(Value_N213.y>=(*sc_set0.UserUniforms).Port_Input1_N218.y));
float2 Output_N219=float2(0.0);
Output_N219=float2(float(Value_N213.x<=(*sc_set0.UserUniforms).Port_Input1_N219.x),float(Value_N213.y<=(*sc_set0.UserUniforms).Port_Input1_N219.y));
float Result_N220=0.0;
float l9_438=Output_N218.x;
bool l9_439=(l9_438*1.0)!=0.0;
bool l9_440;
if (l9_439)
{
l9_440=(Output_N219.x*1.0)!=0.0;
}
else
{
l9_440=l9_439;
}
Result_N220=float(l9_440);
float4 Output_N221=float4(0.0);
Output_N221=mix(Value_N211,Color_N217,float4(Result_N220));
float4 Export_N222=float4(0.0);
Export_N222=Output_N221;
float4 Value_N55=float4(0.0);
Value_N55=Export_N222;
float Value_N56=0.0;
Value_N56=fast::clamp((*sc_set0.UserUniforms).Port_Import_N056,0.0,1.0);
float Output_N57=0.0;
Output_N57=fast::clamp(Value_N56,(*sc_set0.UserUniforms).Port_Input1_N057,(*sc_set0.UserUniforms).Port_Input2_N057);
float Output_N58=0.0;
Output_N58=float(Value_N56==(*sc_set0.UserUniforms).Port_Input1_N058);
float Output_N59=0.0;
Output_N59=1.0-Output_N58;
float Output_N60=0.0;
Output_N60=Output_N57*Output_N59;
float Value_N61=0.0;
Value_N61=fast::clamp((*sc_set0.UserUniforms).Port_Import_N061,0.0,1.0);
float Output_N62=0.0;
Output_N62=1.0-Output_N57;
float ValueOut_N65=0.0;
float param_81=Value_N61;
float param_83=(*sc_set0.UserUniforms).Port_RangeMinA_N065;
float param_84=(*sc_set0.UserUniforms).Port_RangeMaxA_N065;
float param_85=(*sc_set0.UserUniforms).Port_RangeMinB_N065;
float param_86=Output_N62;
float param_82=(((param_81-param_83)/(param_84-param_83))*(param_86-param_85))+param_85;
float l9_441;
if (param_86>param_85)
{
l9_441=fast::clamp(param_82,param_85,param_86);
}
else
{
l9_441=fast::clamp(param_82,param_86,param_85);
}
param_82=l9_441;
ValueOut_N65=param_82;
float Output_N66=0.0;
Output_N66=ValueOut_N65+Value_N56;
float Output_N67=0.0;
Output_N67=fast::clamp(Output_N66+0.001,Output_N58+0.001,(*sc_set0.UserUniforms).Port_Input2_N067+0.001)-0.001;
float Output_N68=0.0;
Output_N68=Value_N55.w;
float Output_N127=0.0;
Output_N127=smoothstep(Output_N60,Output_N67,Output_N68);
float4 Output_N128=float4(0.0);
Output_N128=mix(Value_N54,Value_N55,float4(Output_N127));
float4 Value_N129=float4(0.0);
Value_N129=float4(Output_N128.xyz.x,Output_N128.xyz.y,Output_N128.xyz.z,Value_N129.w);
Value_N129.w=Output_N127;
float4 Export_N130=float4(0.0);
Export_N130=Value_N129;
float Output_N176=0.0;
float param_87=float((*sc_set0.UserUniforms).usePointer!=0);
Output_N176=param_87;
float4 Output_N175=float4(0.0);
Output_N175=mix(Output_N170,Export_N130,float4(Output_N176));
float Output_N3=0.0;
Output_N3=Color_N178.w;
float Output_N13=0.0;
Output_N13=mix((*sc_set0.UserUniforms).Port_Input0_N013,Output_N3,Output_N14);
float4 Output_N0=float4(0.0);
Output_N0=mix(Output_N175,Color_N178,float4(Output_N13));
float Output_N87=0.0;
Output_N87=Export_N222.w;
float Output_N177=0.0;
Output_N177=mix((*sc_set0.UserUniforms).Port_Input0_N177,Output_N87,Output_N176);
float Output_N77=0.0;
Output_N77=Output_N170.w;
float Output_N78=0.0;
Output_N78=(Output_N177+Output_N77)+Output_N13;
float Output_N32=0.0;
Output_N32=fast::clamp(Output_N78+0.001,(*sc_set0.UserUniforms).Port_Input1_N032+0.001,(*sc_set0.UserUniforms).Port_Input2_N032+0.001)-0.001;
float4 Output_N34=float4(0.0);
Output_N34=mix(Output_N15,Output_N0,float4(Output_N32));
float4 Value_N2=float4(0.0);
Value_N2=float4(Output_N34.xyz.x,Output_N34.xyz.y,Output_N34.xyz.z,Value_N2.w);
Value_N2.w=Output_N32;
FinalColor=Value_N2;
float param_88=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_88<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_442=gl_FragCoord;
float2 l9_443=floor(mod(l9_442.xy,float2(4.0)));
float l9_444=(mod(dot(l9_443,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_88<l9_444)
{
discard_fragment();
}
}
bool l9_445=(*sc_set0.UserUniforms).isProxyMode!=0;
if (l9_445)
{
float4 param_89=FinalColor;
if ((int(sc_ProxyAlphaOne_tmp)!=0))
{
param_89.w=1.0;
}
float4 l9_446=fast::max(param_89,float4(0.0));
float4 param_90=l9_446;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_90.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=param_90;
return out;
}
float4 param_91=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_447=param_91;
float4 l9_448=l9_447;
float l9_449=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_449=l9_448.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_449=fast::clamp(l9_448.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_449=fast::clamp(dot(l9_448.xyz,float3(l9_448.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_449=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_449=(1.0-dot(l9_448.xyz,float3(0.33333001)))*l9_448.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_449=(1.0-fast::clamp(dot(l9_448.xyz,float3(1.0)),0.0,1.0))*l9_448.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_449=fast::clamp(dot(l9_448.xyz,float3(1.0)),0.0,1.0)*l9_448.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_449=fast::clamp(dot(l9_448.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_449=fast::clamp(dot(l9_448.xyz,float3(1.0)),0.0,1.0)*l9_448.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_449=dot(l9_448.xyz,float3(0.33333001))*l9_448.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_449=1.0-fast::clamp(dot(l9_448.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_449=fast::clamp(dot(l9_448.xyz,float3(1.0)),0.0,1.0);
}
}
}
}
}
}
}
}
}
}
}
}
float l9_450=l9_449;
float l9_451=l9_450;
float l9_452=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_451;
float3 l9_453=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_447.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_454=float4(l9_453.x,l9_453.y,l9_453.z,l9_452);
param_91=l9_454;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_91=float4(param_91.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_455=param_91;
float4 l9_456=float4(0.0);
float4 l9_457=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_458=out.FragColor0;
float4 l9_459=l9_458;
if ((int(sc_UseFramebufferFetchMarker_tmp)!=0))
{
l9_459.x+=(*sc_set0.UserUniforms)._sc_framebufferFetchMarker;
}
float4 l9_460=l9_459;
l9_457=l9_460;
}
else
{
float4 l9_461=gl_FragCoord;
float2 l9_462=l9_461.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_463=l9_462;
float2 l9_464=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_465=1;
int l9_466=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_466=0;
}
else
{
l9_466=in.varStereoViewID;
}
int l9_467=l9_466;
int l9_468=l9_467;
float3 l9_469=float3(l9_463,0.0);
int l9_470=l9_465;
int l9_471=l9_468;
if (l9_470==1)
{
l9_469.y=((2.0*l9_469.y)+float(l9_471))-1.0;
}
float2 l9_472=l9_469.xy;
l9_464=l9_472;
}
else
{
l9_464=l9_463;
}
float2 l9_473=l9_464;
float2 l9_474=l9_473;
float2 l9_475=l9_474;
int l9_476=0;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_477=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_477=0;
}
else
{
l9_477=in.varStereoViewID;
}
int l9_478=l9_477;
l9_476=1-l9_478;
}
else
{
int l9_479=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_479=0;
}
else
{
l9_479=in.varStereoViewID;
}
int l9_480=l9_479;
l9_476=l9_480;
}
int l9_481=l9_476;
float2 l9_482=l9_475;
int l9_483=l9_481;
float2 l9_484=l9_482;
int l9_485=l9_483;
float l9_486=0.0;
float4 l9_487=float4(0.0);
float2 l9_488=l9_484;
int l9_489=sc_ScreenTextureLayout_tmp;
int l9_490=l9_485;
float l9_491=l9_486;
float2 l9_492=l9_488;
int l9_493=l9_489;
int l9_494=l9_490;
float3 l9_495=float3(0.0);
if (l9_493==0)
{
l9_495=float3(l9_492,0.0);
}
else
{
if (l9_493==1)
{
l9_495=float3(l9_492.x,(l9_492.y*0.5)+(0.5-(float(l9_494)*0.5)),0.0);
}
else
{
l9_495=float3(l9_492,float(l9_494));
}
}
float3 l9_496=l9_495;
float3 l9_497=l9_496;
float2 l9_498=l9_497.xy;
float l9_499=l9_491;
float4 l9_500=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_498,bias(l9_499));
float4 l9_501=l9_500;
l9_487=l9_501;
float4 l9_502=l9_487;
float4 l9_503=l9_502;
float4 l9_504=l9_503;
l9_457=l9_504;
}
float4 l9_505=l9_457;
float4 l9_506=l9_505;
float3 l9_507=l9_506.xyz;
float3 l9_508=l9_507;
float3 l9_509=l9_455.xyz;
float3 l9_510=definedBlend(l9_508,l9_509,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_456=float4(l9_510.x,l9_510.y,l9_510.z,l9_456.w);
float3 l9_511=mix(l9_507,l9_456.xyz,float3(l9_455.w));
l9_456=float4(l9_511.x,l9_511.y,l9_511.z,l9_456.w);
l9_456.w=1.0;
float4 l9_512=l9_456;
param_91=l9_512;
}
else
{
float4 l9_513=param_91;
float4 l9_514=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_514=float4(mix(float3(1.0),l9_513.xyz,float3(l9_513.w)),l9_513.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_515=l9_513.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_515=fast::clamp(l9_515,0.0,1.0);
}
l9_514=float4(l9_513.xyz*l9_515,l9_515);
}
else
{
l9_514=l9_513;
}
}
float4 l9_516=l9_514;
param_91=l9_516;
}
}
}
float4 l9_517=param_91;
FinalColor=l9_517;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
if (PreviewInfo.Saved)
{
FinalColor=float4(PreviewInfo.Color);
}
else
{
FinalColor=float4(0.0);
}
}
float4 l9_518=float4(0.0);
if ((int(sc_ShaderComplexityAnalyzer_tmp)!=0))
{
l9_518=float4((*sc_set0.UserUniforms).shaderComplexityValue/255.0,0.0,0.0,1.0);
}
else
{
l9_518=float4(0.0);
}
float4 l9_519=l9_518;
float4 Cost=l9_519;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_92=in.varPos;
float4 param_93=FinalColor;
FinalColor=outputMotionVectorsIfNeeded(param_92,param_93,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_94=FinalColor;
float4 l9_520=param_94;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_520.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_520;
return out;
}
} // FRAGMENT SHADER
