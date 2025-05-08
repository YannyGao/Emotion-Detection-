#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_BACKEND_SHADER_FLAGS_END__
#endif
//efine SC_DISABLE_FRUSTUM_CULLING
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
//sampler sampler baseTexSmpSC 0:17
//sampler sampler intensityTextureSmpSC 0:18
//sampler sampler sc_ScreenTextureSmpSC 0:23
//texture texture2D baseTex 0:1:0:17
//texture texture2D intensityTexture 0:2:0:18
//texture texture2D sc_ScreenTexture 0:14:0:23
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:26:4432 {
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
//float correctedIntensity 3824
//float3x3 intensityTextureTransform 3888
//float4 intensityTextureUvMinMax 3936
//float4 intensityTextureBorderColor 3952
//int overrideTimeEnabled 3980
//float overrideTimeElapsed 3984
//float overrideTimeDelta 3988
//int PreviewEnabled 3992
//int PreviewNodeID 3996
//float alphaTestThreshold 4000
//float4 shadowColor 4016
//float shadowBlur 4032
//float shadowDirection 4036
//float shadowOffset 4040
//float4 baseTexSize 4048
//float3x3 baseTexTransform 4096
//float4 baseTexUvMinMax 4144
//float4 baseTexBorderColor 4160
//float2 boxBounds 4176
//float cornerRadius 4184
//float4 baseColor 4192
//float4 strokeColor 4208
//float strokeThickness 4224
//float Port_Value_N057 4228
//float3 Port_Input2_N052 4240
//float Port_Input1_N034 4256
//float2 Port_Scale_N013 4272
//float2 Port_Center_N013 4280
//float2 Port_Default_N040 4288
//float2 Port_Value_N002 4304
//float2 Port_Input1_N089 4320
//float2 Port_Input2_N089 4328
//float Port_Input0_N036 4336
//float2 Port_Input1_N080 4352
//float Port_Value_N061 4364
//float Port_Input1_N023 4368
//float2 Port_Input1_N028 4400
//float Port_Input0_N038 4412
//float Port_Input1_N038 4416
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 31
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 32
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 33
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 34
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 35
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 36
//spec_const bool Tweak_N65 37
//spec_const bool Tweak_N67 38
//spec_const bool Tweak_N71 39
//spec_const bool UseViewSpaceDepthVariant 40
//spec_const bool baseTexHasSwappedViews 41
//spec_const bool intensityTextureHasSwappedViews 42
//spec_const bool sc_BlendMode_AddWithAlphaFactor 43
//spec_const bool sc_BlendMode_Add 44
//spec_const bool sc_BlendMode_AlphaTest 45
//spec_const bool sc_BlendMode_AlphaToCoverage 46
//spec_const bool sc_BlendMode_ColoredGlass 47
//spec_const bool sc_BlendMode_Custom 48
//spec_const bool sc_BlendMode_Max 49
//spec_const bool sc_BlendMode_Min 50
//spec_const bool sc_BlendMode_MultiplyOriginal 51
//spec_const bool sc_BlendMode_Multiply 52
//spec_const bool sc_BlendMode_Normal 53
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 54
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 55
//spec_const bool sc_BlendMode_PremultipliedAlpha 56
//spec_const bool sc_BlendMode_Screen 57
//spec_const bool sc_DepthOnly 58
//spec_const bool sc_FramebufferFetch 59
//spec_const bool sc_MotionVectorsPass 60
//spec_const bool sc_OITCompositingPass 61
//spec_const bool sc_OITDepthBoundsPass 62
//spec_const bool sc_OITDepthGatherPass 63
//spec_const bool sc_ProjectiveShadowsCaster 64
//spec_const bool sc_ProjectiveShadowsReceiver 65
//spec_const bool sc_RenderAlphaToColor 66
//spec_const bool sc_ScreenTextureHasSwappedViews 67
//spec_const bool sc_ShaderComplexityAnalyzer 68
//spec_const bool sc_TAAEnabled 69
//spec_const bool sc_UseFramebufferFetchMarker 70
//spec_const bool sc_VertexBlendingUseNormals 71
//spec_const bool sc_VertexBlending 72
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 73
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 74
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 75
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 76
//spec_const int baseTexLayout 77
//spec_const int intensityTextureLayout 78
//spec_const int sc_DepthBufferMode 79
//spec_const int sc_RenderingSpace 80
//spec_const int sc_ScreenTextureLayout 81
//spec_const int sc_ShaderCacheConstant 82
//spec_const int sc_SkinBonesCount 83
//spec_const int sc_StereoRenderingMode 84
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 85
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
constant bool SC_USE_CLAMP_TO_BORDER_baseTex [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_baseTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_baseTex) ? SC_USE_CLAMP_TO_BORDER_baseTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_baseTex [[function_constant(33)]];
constant bool SC_USE_UV_MIN_MAX_baseTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_baseTex) ? SC_USE_UV_MIN_MAX_baseTex : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(34)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_baseTex [[function_constant(35)]];
constant bool SC_USE_UV_TRANSFORM_baseTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_baseTex) ? SC_USE_UV_TRANSFORM_baseTex : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(36)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool Tweak_N65 [[function_constant(37)]];
constant bool Tweak_N65_tmp = is_function_constant_defined(Tweak_N65) ? Tweak_N65 : false;
constant bool Tweak_N67 [[function_constant(38)]];
constant bool Tweak_N67_tmp = is_function_constant_defined(Tweak_N67) ? Tweak_N67 : false;
constant bool Tweak_N71 [[function_constant(39)]];
constant bool Tweak_N71_tmp = is_function_constant_defined(Tweak_N71) ? Tweak_N71 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(40)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool baseTexHasSwappedViews [[function_constant(41)]];
constant bool baseTexHasSwappedViews_tmp = is_function_constant_defined(baseTexHasSwappedViews) ? baseTexHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(42)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(43)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(44)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(45)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(46)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(47)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(48)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(49)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(50)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(51)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(52)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(53)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(54)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(55)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(56)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(57)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(58)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(59)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(60)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(61)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(62)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(63)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(64)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(65)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(66)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(67)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_ShaderComplexityAnalyzer [[function_constant(68)]];
constant bool sc_ShaderComplexityAnalyzer_tmp = is_function_constant_defined(sc_ShaderComplexityAnalyzer) ? sc_ShaderComplexityAnalyzer : false;
constant bool sc_TAAEnabled [[function_constant(69)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_UseFramebufferFetchMarker [[function_constant(70)]];
constant bool sc_UseFramebufferFetchMarker_tmp = is_function_constant_defined(sc_UseFramebufferFetchMarker) ? sc_UseFramebufferFetchMarker : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(71)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(72)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex [[function_constant(73)]];
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_baseTex) ? SC_SOFTWARE_WRAP_MODE_U_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(74)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex [[function_constant(75)]];
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_baseTex) ? SC_SOFTWARE_WRAP_MODE_V_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(76)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int baseTexLayout [[function_constant(77)]];
constant int baseTexLayout_tmp = is_function_constant_defined(baseTexLayout) ? baseTexLayout : 0;
constant int intensityTextureLayout [[function_constant(78)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int sc_DepthBufferMode [[function_constant(79)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(80)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(81)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(82)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(83)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(84)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(85)]];
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
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float3 SurfacePosition_ObjectSpace;
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
float4 shadowColor;
float shadowBlur;
float shadowDirection;
float shadowOffset;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float2 boxBounds;
float cornerRadius;
float4 baseColor;
float4 strokeColor;
float strokeThickness;
float Port_Value_N057;
float3 Port_Input2_N052;
float Port_Input1_N034;
float Port_Import_N170;
float Port_Import_N058;
float2 Port_Scale_N013;
float2 Port_Center_N013;
float2 Port_Default_N040;
float2 Port_Import_N043;
float2 Port_Value_N002;
float2 Port_Import_N045;
float2 Port_Input1_N089;
float2 Port_Input2_N089;
float Port_Input0_N036;
float2 Port_Import_N077;
float2 Port_Input1_N080;
float Port_Import_N082;
float Port_Value_N061;
float Port_Input1_N023;
float2 Port_Import_N032;
float2 Port_Import_N018;
float2 Port_Import_N021;
float2 Port_Input1_N028;
float Port_Import_N022;
float Port_Input0_N038;
float Port_Input1_N038;
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
struct sc_Set0
{
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> baseTex [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler baseTexSmpSC [[id(17)]];
sampler intensityTextureSmpSC [[id(18)]];
sampler sc_ScreenTextureSmpSC [[id(23)]];
constant userUniformsObj* UserUniforms [[id(26)]];
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
out.PreviewVertexColor=float4(0.5);
ssPreviewInfo PreviewInfo;
PreviewInfo.Color=float4(0.5);
PreviewInfo.Saved=false;
out.PreviewVertexSaved=0.0;
sc_Vertex_t l9_0;
l9_0.position=in.position;
l9_0.normal=in.normal;
l9_0.tangent=in.tangent.xyz;
l9_0.texture0=in.texture0;
l9_0.texture1=in.texture1;
sc_Vertex_t l9_1=l9_0;
sc_Vertex_t param=l9_1;
sc_Vertex_t l9_2=param;
if ((int(sc_VertexBlending_tmp)!=0))
{
if ((int(sc_VertexBlendingUseNormals_tmp)!=0))
{
sc_Vertex_t l9_3=l9_2;
float3 l9_4=in.blendShape0Pos;
float3 l9_5=in.blendShape0Normal;
float l9_6=(*sc_set0.UserUniforms).weights0.x;
sc_Vertex_t l9_7=l9_3;
float3 l9_8=l9_4;
float l9_9=l9_6;
float3 l9_10=l9_7.position.xyz+(l9_8*l9_9);
l9_7.position=float4(l9_10.x,l9_10.y,l9_10.z,l9_7.position.w);
l9_3=l9_7;
l9_3.normal+=(l9_5*l9_6);
l9_2=l9_3;
sc_Vertex_t l9_11=l9_2;
float3 l9_12=in.blendShape1Pos;
float3 l9_13=in.blendShape1Normal;
float l9_14=(*sc_set0.UserUniforms).weights0.y;
sc_Vertex_t l9_15=l9_11;
float3 l9_16=l9_12;
float l9_17=l9_14;
float3 l9_18=l9_15.position.xyz+(l9_16*l9_17);
l9_15.position=float4(l9_18.x,l9_18.y,l9_18.z,l9_15.position.w);
l9_11=l9_15;
l9_11.normal+=(l9_13*l9_14);
l9_2=l9_11;
sc_Vertex_t l9_19=l9_2;
float3 l9_20=in.blendShape2Pos;
float3 l9_21=in.blendShape2Normal;
float l9_22=(*sc_set0.UserUniforms).weights0.z;
sc_Vertex_t l9_23=l9_19;
float3 l9_24=l9_20;
float l9_25=l9_22;
float3 l9_26=l9_23.position.xyz+(l9_24*l9_25);
l9_23.position=float4(l9_26.x,l9_26.y,l9_26.z,l9_23.position.w);
l9_19=l9_23;
l9_19.normal+=(l9_21*l9_22);
l9_2=l9_19;
}
else
{
sc_Vertex_t l9_27=l9_2;
float3 l9_28=in.blendShape0Pos;
float l9_29=(*sc_set0.UserUniforms).weights0.x;
float3 l9_30=l9_27.position.xyz+(l9_28*l9_29);
l9_27.position=float4(l9_30.x,l9_30.y,l9_30.z,l9_27.position.w);
l9_2=l9_27;
sc_Vertex_t l9_31=l9_2;
float3 l9_32=in.blendShape1Pos;
float l9_33=(*sc_set0.UserUniforms).weights0.y;
float3 l9_34=l9_31.position.xyz+(l9_32*l9_33);
l9_31.position=float4(l9_34.x,l9_34.y,l9_34.z,l9_31.position.w);
l9_2=l9_31;
sc_Vertex_t l9_35=l9_2;
float3 l9_36=in.blendShape2Pos;
float l9_37=(*sc_set0.UserUniforms).weights0.z;
float3 l9_38=l9_35.position.xyz+(l9_36*l9_37);
l9_35.position=float4(l9_38.x,l9_38.y,l9_38.z,l9_35.position.w);
l9_2=l9_35;
sc_Vertex_t l9_39=l9_2;
float3 l9_40=in.blendShape3Pos;
float l9_41=(*sc_set0.UserUniforms).weights0.w;
float3 l9_42=l9_39.position.xyz+(l9_40*l9_41);
l9_39.position=float4(l9_42.x,l9_42.y,l9_42.z,l9_39.position.w);
l9_2=l9_39;
sc_Vertex_t l9_43=l9_2;
float3 l9_44=in.blendShape4Pos;
float l9_45=(*sc_set0.UserUniforms).weights1.x;
float3 l9_46=l9_43.position.xyz+(l9_44*l9_45);
l9_43.position=float4(l9_46.x,l9_46.y,l9_46.z,l9_43.position.w);
l9_2=l9_43;
sc_Vertex_t l9_47=l9_2;
float3 l9_48=in.blendShape5Pos;
float l9_49=(*sc_set0.UserUniforms).weights1.y;
float3 l9_50=l9_47.position.xyz+(l9_48*l9_49);
l9_47.position=float4(l9_50.x,l9_50.y,l9_50.z,l9_47.position.w);
l9_2=l9_47;
}
}
param=l9_2;
sc_Vertex_t l9_51=param;
if (sc_SkinBonesCount_tmp>0)
{
float4 l9_52=float4(0.0);
if (sc_SkinBonesCount_tmp>0)
{
l9_52=float4(1.0,fract(in.boneData.yzw));
l9_52.x-=dot(l9_52.yzw,float3(1.0));
}
float4 l9_53=l9_52;
float4 l9_54=l9_53;
int l9_55=int(in.boneData.x);
int l9_56=int(in.boneData.y);
int l9_57=int(in.boneData.z);
int l9_58=int(in.boneData.w);
int l9_59=l9_55;
float4 l9_60=l9_51.position;
float3 l9_61=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_62=l9_59;
float4 l9_63=(*sc_set0.sc_BonesUBO).sc_Bones[l9_62].boneMatrix[0];
float4 l9_64=(*sc_set0.sc_BonesUBO).sc_Bones[l9_62].boneMatrix[1];
float4 l9_65=(*sc_set0.sc_BonesUBO).sc_Bones[l9_62].boneMatrix[2];
float4 l9_66[3];
l9_66[0]=l9_63;
l9_66[1]=l9_64;
l9_66[2]=l9_65;
l9_61=float3(dot(l9_60,l9_66[0]),dot(l9_60,l9_66[1]),dot(l9_60,l9_66[2]));
}
else
{
l9_61=l9_60.xyz;
}
float3 l9_67=l9_61;
float3 l9_68=l9_67;
float l9_69=l9_54.x;
int l9_70=l9_56;
float4 l9_71=l9_51.position;
float3 l9_72=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_73=l9_70;
float4 l9_74=(*sc_set0.sc_BonesUBO).sc_Bones[l9_73].boneMatrix[0];
float4 l9_75=(*sc_set0.sc_BonesUBO).sc_Bones[l9_73].boneMatrix[1];
float4 l9_76=(*sc_set0.sc_BonesUBO).sc_Bones[l9_73].boneMatrix[2];
float4 l9_77[3];
l9_77[0]=l9_74;
l9_77[1]=l9_75;
l9_77[2]=l9_76;
l9_72=float3(dot(l9_71,l9_77[0]),dot(l9_71,l9_77[1]),dot(l9_71,l9_77[2]));
}
else
{
l9_72=l9_71.xyz;
}
float3 l9_78=l9_72;
float3 l9_79=l9_78;
float l9_80=l9_54.y;
int l9_81=l9_57;
float4 l9_82=l9_51.position;
float3 l9_83=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_84=l9_81;
float4 l9_85=(*sc_set0.sc_BonesUBO).sc_Bones[l9_84].boneMatrix[0];
float4 l9_86=(*sc_set0.sc_BonesUBO).sc_Bones[l9_84].boneMatrix[1];
float4 l9_87=(*sc_set0.sc_BonesUBO).sc_Bones[l9_84].boneMatrix[2];
float4 l9_88[3];
l9_88[0]=l9_85;
l9_88[1]=l9_86;
l9_88[2]=l9_87;
l9_83=float3(dot(l9_82,l9_88[0]),dot(l9_82,l9_88[1]),dot(l9_82,l9_88[2]));
}
else
{
l9_83=l9_82.xyz;
}
float3 l9_89=l9_83;
float3 l9_90=l9_89;
float l9_91=l9_54.z;
int l9_92=l9_58;
float4 l9_93=l9_51.position;
float3 l9_94=float3(0.0);
if (sc_SkinBonesCount_tmp>0)
{
int l9_95=l9_92;
float4 l9_96=(*sc_set0.sc_BonesUBO).sc_Bones[l9_95].boneMatrix[0];
float4 l9_97=(*sc_set0.sc_BonesUBO).sc_Bones[l9_95].boneMatrix[1];
float4 l9_98=(*sc_set0.sc_BonesUBO).sc_Bones[l9_95].boneMatrix[2];
float4 l9_99[3];
l9_99[0]=l9_96;
l9_99[1]=l9_97;
l9_99[2]=l9_98;
l9_94=float3(dot(l9_93,l9_99[0]),dot(l9_93,l9_99[1]),dot(l9_93,l9_99[2]));
}
else
{
l9_94=l9_93.xyz;
}
float3 l9_100=l9_94;
float3 l9_101=(((l9_68*l9_69)+(l9_79*l9_80))+(l9_90*l9_91))+(l9_100*l9_54.w);
l9_51.position=float4(l9_101.x,l9_101.y,l9_101.z,l9_51.position.w);
int l9_102=l9_55;
float3x3 l9_103=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_102].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_102].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_102].normalMatrix[2].xyz));
float3x3 l9_104=l9_103;
float3x3 l9_105=l9_104;
int l9_106=l9_56;
float3x3 l9_107=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_106].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_106].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_106].normalMatrix[2].xyz));
float3x3 l9_108=l9_107;
float3x3 l9_109=l9_108;
int l9_110=l9_57;
float3x3 l9_111=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_110].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_110].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_110].normalMatrix[2].xyz));
float3x3 l9_112=l9_111;
float3x3 l9_113=l9_112;
int l9_114=l9_58;
float3x3 l9_115=float3x3(float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_114].normalMatrix[0].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_114].normalMatrix[1].xyz),float3((*sc_set0.sc_BonesUBO).sc_Bones[l9_114].normalMatrix[2].xyz));
float3x3 l9_116=l9_115;
float3x3 l9_117=l9_116;
l9_51.normal=((((l9_105*l9_51.normal)*l9_54.x)+((l9_109*l9_51.normal)*l9_54.y))+((l9_113*l9_51.normal)*l9_54.z))+((l9_117*l9_51.normal)*l9_54.w);
l9_51.tangent=((((l9_105*l9_51.tangent)*l9_54.x)+((l9_109*l9_51.tangent)*l9_54.y))+((l9_113*l9_51.tangent)*l9_54.z))+((l9_117*l9_51.tangent)*l9_54.w);
}
param=l9_51;
if (sc_RenderingSpace_tmp==3)
{
out.varPos=float3(0.0);
out.varNormal=param.normal;
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==4)
{
out.varPos=float3(0.0);
out.varNormal=param.normal;
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
out.varPos=param.position.xyz;
out.varNormal=param.normal;
out.varTangent=float4(param.tangent.x,param.tangent.y,param.tangent.z,out.varTangent.w);
}
else
{
if (sc_RenderingSpace_tmp==1)
{
out.varPos=((*sc_set0.UserUniforms).sc_ModelMatrix*param.position).xyz;
out.varNormal=(*sc_set0.UserUniforms).sc_NormalMatrix*param.normal;
float3 l9_118=(*sc_set0.UserUniforms).sc_NormalMatrix*param.tangent;
out.varTangent=float4(l9_118.x,l9_118.y,l9_118.z,out.varTangent.w);
}
}
}
}
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
param.texture0.x=1.0-param.texture0.x;
}
out.varColor=in.color;
sc_Vertex_t v=param;
float l9_119;
if ((*sc_set0.UserUniforms).overrideTimeEnabled==1)
{
l9_119=(*sc_set0.UserUniforms).overrideTimeElapsed;
}
else
{
l9_119=(*sc_set0.UserUniforms).sc_Time.x;
}
ssGlobals Globals;
Globals.gTimeElapsed=l9_119;
float l9_120;
if ((*sc_set0.UserUniforms).overrideTimeEnabled==1)
{
l9_120=(*sc_set0.UserUniforms).overrideTimeDelta;
}
else
{
l9_120=(*sc_set0.UserUniforms).sc_Time.y;
}
Globals.gTimeDelta=l9_120;
Globals.SurfacePosition_ObjectSpace=((*sc_set0.UserUniforms).sc_ModelMatrixInverse*float4(out.varPos,1.0)).xyz;
float3 WorldPosition=out.varPos;
float3 WorldNormal=out.varNormal;
float3 WorldTangent=out.varTangent.xyz;
float3 Position_N51=float3(0.0);
Position_N51=Globals.SurfacePosition_ObjectSpace;
float Output_N57=0.0;
float param_1=(*sc_set0.UserUniforms).Port_Value_N057;
float param_2=param_1+0.001;
param_2-=0.001;
Output_N57=param_2;
float Output_N56=0.0;
Output_N56=Output_N57+1.0;
float3 Output_N52=float3(0.0);
Output_N52=(Position_N51*float3(Output_N56))+(*sc_set0.UserUniforms).Port_Input2_N052;
float3 VectorOut_N53=float3(0.0);
VectorOut_N53=((*sc_set0.UserUniforms).sc_ModelMatrix*float4(Output_N52,1.0)).xyz;
WorldPosition=VectorOut_N53;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPos;
WorldNormal=out.varNormal;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_3=v;
float3 param_4=WorldPosition;
float3 param_5=WorldNormal;
float3 param_6=WorldTangent;
float4 param_7=v.position;
out.varPos=param_4;
out.varNormal=normalize(param_5);
float3 l9_121=normalize(param_6);
out.varTangent=float4(l9_121.x,l9_121.y,l9_121.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_122=param_3.position;
float4 l9_123=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_124=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_124=0;
}
else
{
l9_124=gl_InstanceIndex%2;
}
int l9_125=l9_124;
l9_123=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_125]*l9_122;
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_126=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_126=0;
}
else
{
l9_126=gl_InstanceIndex%2;
}
int l9_127=l9_126;
l9_123=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_127]*l9_122;
}
else
{
if (sc_RenderingSpace_tmp==1)
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
l9_123=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_129]*l9_122;
}
else
{
l9_123=l9_122;
}
}
}
float4 l9_130=l9_123;
out.varViewSpaceDepth=-l9_130.z;
}
float4 l9_131=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_131=param_7;
}
else
{
if (sc_RenderingSpace_tmp==4)
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
l9_131=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_133]*param_3.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
{
int l9_134=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_134=0;
}
else
{
l9_134=gl_InstanceIndex%2;
}
int l9_135=l9_134;
l9_131=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_135]*float4(out.varPos,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
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
l9_131=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_137]*float4(out.varPos,1.0);
}
}
}
}
out.varPackedTex=float4(param_3.texture0,param_3.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_138=param_3.position;
float4 l9_139=l9_138;
if (sc_RenderingSpace_tmp==1)
{
l9_139=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_138;
}
float4 l9_140=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_139;
float2 l9_141=((l9_140.xy/float2(l9_140.w))*0.5)+float2(0.5);
out.varShadowTex=l9_141;
}
float4 l9_142=l9_131;
if (sc_DepthBufferMode_tmp==1)
{
int l9_143=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_143=0;
}
else
{
l9_143=gl_InstanceIndex%2;
}
int l9_144=l9_143;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_144][2].w!=0.0)
{
float l9_145=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_142.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_142.w))*l9_145)-1.0)*l9_142.w;
}
}
float4 l9_146=l9_142;
l9_131=l9_146;
float4 l9_147=l9_131;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_148=l9_147.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_147.w);
l9_147=float4(l9_148.x,l9_148.y,l9_147.z,l9_147.w);
}
float4 l9_149=l9_147;
l9_131=l9_149;
float4 l9_150=l9_131;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_150.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_151=l9_150;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_152=dot(l9_151,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_153=l9_152;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_153;
}
}
float4 l9_154=float4(l9_150.x,-l9_150.y,(l9_150.z*0.5)+(l9_150.w*0.5),l9_150.w);
out.gl_Position=l9_154;
v=param_3;
if (PreviewInfo.Saved)
{
out.PreviewVertexColor=float4(PreviewInfo.Color.xyz,1.0);
out.PreviewVertexSaved=1.0;
}
return out;
}
} // VERTEX SHADER


namespace SNAP_FS {
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
float4 shadowColor;
float shadowBlur;
float shadowDirection;
float shadowOffset;
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float2 boxBounds;
float cornerRadius;
float4 baseColor;
float4 strokeColor;
float strokeThickness;
float Port_Value_N057;
float3 Port_Input2_N052;
float Port_Input1_N034;
float Port_Import_N170;
float Port_Import_N058;
float2 Port_Scale_N013;
float2 Port_Center_N013;
float2 Port_Default_N040;
float2 Port_Import_N043;
float2 Port_Value_N002;
float2 Port_Import_N045;
float2 Port_Input1_N089;
float2 Port_Input2_N089;
float Port_Input0_N036;
float2 Port_Import_N077;
float2 Port_Input1_N080;
float Port_Import_N082;
float Port_Value_N061;
float Port_Input1_N023;
float2 Port_Import_N032;
float2 Port_Import_N018;
float2 Port_Import_N021;
float2 Port_Input1_N028;
float Port_Import_N022;
float Port_Input0_N038;
float Port_Input1_N038;
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
constant sc_Bones_obj* sc_BonesUBO [[id(0)]];
texture2d<float> baseTex [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler baseTexSmpSC [[id(17)]];
sampler intensityTextureSmpSC [[id(18)]];
sampler sc_ScreenTextureSmpSC [[id(23)]];
constant userUniformsObj* UserUniforms [[id(26)]];
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
// Implementation of the GLSL radians() function
template<typename T>
T radians(T d)
{
return d*T(0.01745329251);
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
Globals.Surface_UVCoord0=in.varPackedTex.xy;
float4 Result_N66=float4(0.0);
float4 param=float4(0.0);
float4 param_1=float4(0.0);
ssGlobals param_3=Globals;
float4 param_2;
if ((int(Tweak_N67_tmp)!=0))
{
float4 l9_2=float4(0.0);
float4 l9_3=float4(1.0);
float4 l9_4=float4(0.0);
ssGlobals l9_5=param_3;
float4 l9_6;
if ((int(Tweak_N71_tmp)!=0))
{
float4 l9_7=float4(0.0);
float4 l9_8=(*sc_set0.UserUniforms).shadowColor;
l9_7=l9_8;
float l9_9=0.0;
float l9_10=(*sc_set0.UserUniforms).shadowBlur;
l9_9=l9_10;
float l9_11=0.0;
float l9_12=(*sc_set0.UserUniforms).shadowDirection;
l9_11=l9_12;
float l9_13=0.0;
l9_13=radians(l9_11);
float l9_14=0.0;
l9_14=l9_13;
float l9_15=0.0;
l9_15=cos(l9_14);
float l9_16=0.0;
float l9_17=(*sc_set0.UserUniforms).shadowOffset;
l9_16=l9_17;
float l9_18=0.0;
l9_18=l9_16;
float l9_19=0.0;
l9_19=l9_15*l9_18;
float l9_20=0.0;
l9_20=l9_19;
float l9_21=0.0;
l9_21=sin(l9_14);
float l9_22=0.0;
l9_22=l9_18*l9_21;
float l9_23=0.0;
l9_23=l9_22;
float2 l9_24=float2(0.0);
l9_24.x=l9_20;
l9_24.y=l9_23;
float2 l9_25=float2(0.0);
l9_25=l9_5.Surface_UVCoord0;
float2 l9_26=float2(0.0);
l9_26=((l9_25-(*sc_set0.UserUniforms).Port_Center_N013)*(*sc_set0.UserUniforms).Port_Scale_N013)+(*sc_set0.UserUniforms).Port_Center_N013;
float2 l9_27=float2(0.0);
float2 l9_28=float2(0.0);
float2 l9_29=(*sc_set0.UserUniforms).Port_Default_N040;
float2 l9_30;
if ((int(Tweak_N65_tmp)!=0))
{
float2 l9_31=float2(0.0);
float2 l9_32=(*sc_set0.UserUniforms).baseTexSize.xy;
l9_31=l9_32;
float2 l9_33=float2(0.0);
float l9_34=0.0;
float l9_35=0.0;
float2 l9_36=l9_31;
float2 l9_37=float2(l9_36);
float l9_38=l9_36.x;
float l9_39=l9_36.y;
l9_33=l9_37;
l9_34=l9_38;
l9_35=l9_39;
float l9_40=0.0;
l9_40=fast::min(l9_34,l9_35);
float2 l9_41=float2(0.0);
l9_41=l9_33/float2(l9_40);
l9_28=l9_41;
l9_30=l9_28;
}
else
{
l9_30=l9_29;
}
l9_27=l9_30;
float2 l9_42=float2(0.0);
l9_42=l9_26*l9_27;
float2 l9_43=float2(0.0);
l9_43=l9_24+l9_42;
float2 l9_44=float2(0.0);
l9_44=l9_43;
float2 l9_45=float2(0.0);
float2 l9_46=(*sc_set0.UserUniforms).Port_Value_N002;
float2 l9_47=l9_46+float2(0.001);
l9_47-=float2(0.001);
l9_45=l9_47;
float2 l9_48=float2(0.0);
l9_48=l9_45*l9_27;
float2 l9_49=float2(0.0);
l9_49=l9_48;
float2 l9_50=float2(0.0);
l9_50=l9_44-l9_49;
float2 l9_51=float2(0.0);
l9_51=abs(l9_50);
float2 l9_52=float2(0.0);
float2 l9_53=(*sc_set0.UserUniforms).boxBounds;
l9_52=l9_53;
float2 l9_54=float2(0.0);
l9_54=fast::clamp(l9_52,(*sc_set0.UserUniforms).Port_Input1_N089,(*sc_set0.UserUniforms).Port_Input2_N089);
float2 l9_55=float2(0.0);
l9_55=float2((*sc_set0.UserUniforms).Port_Input0_N036)/l9_27;
float l9_56=0.0;
float l9_57=(*sc_set0.UserUniforms).cornerRadius;
l9_56=l9_57;
float2 l9_58=float2(0.0);
l9_58=l9_55*float2(l9_56);
float2 l9_59=float2(0.0);
l9_59=l9_54-l9_58;
float2 l9_60=float2(0.0);
l9_60=l9_59*l9_27;
float2 l9_61=float2(0.0);
l9_61=l9_60;
float2 l9_62=float2(0.0);
l9_62=l9_51-l9_61;
float2 l9_63=float2(0.0);
float2 l9_64=l9_62;
float2 l9_65=l9_64;
bool l9_66=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_67;
if (l9_66)
{
l9_67=!PreviewInfo.Saved;
}
else
{
l9_67=l9_66;
}
bool l9_68;
if (l9_67)
{
l9_68=79==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_68=l9_67;
}
if (l9_68)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_65,0.0,1.0);
PreviewInfo.Color.w=1.0;
}
l9_63=l9_65;
float2 l9_69=float2(0.0);
l9_69=fast::max(l9_63,(*sc_set0.UserUniforms).Port_Input1_N080);
float l9_70=0.0;
l9_70=length(l9_69);
float l9_71=0.0;
l9_71=l9_56;
float l9_72=0.0;
l9_72=l9_70-l9_71;
float l9_73=0.0;
l9_73=l9_72;
float l9_74=0.0;
float l9_75=l9_73;
float l9_76=l9_75;
bool l9_77=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_78;
if (l9_77)
{
l9_78=!PreviewInfo.Saved;
}
else
{
l9_78=l9_77;
}
bool l9_79;
if (l9_78)
{
l9_79=50==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_79=l9_78;
}
if (l9_79)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_76,l9_76,l9_76,1.0);
PreviewInfo.Color.w=1.0;
}
l9_74=l9_76;
float l9_80=0.0;
l9_80=smoothstep(l9_9,(*sc_set0.UserUniforms).Port_Input1_N034,l9_74);
float l9_81=0.0;
float l9_82=l9_80;
float l9_83=l9_82;
bool l9_84=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_85;
if (l9_84)
{
l9_85=!PreviewInfo.Saved;
}
else
{
l9_85=l9_84;
}
bool l9_86;
if (l9_85)
{
l9_86=44==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_86=l9_85;
}
if (l9_86)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_83,l9_83,l9_83,1.0);
PreviewInfo.Color.w=1.0;
}
l9_81=l9_83;
float l9_87=0.0;
l9_87=l9_7.w;
float l9_88=0.0;
l9_88=l9_81*l9_87;
float4 l9_89=float4(0.0);
l9_89=float4(l9_7.xyz.x,l9_7.xyz.y,l9_7.xyz.z,l9_89.w);
l9_89.w=l9_88;
float l9_90=0.0;
float l9_91=(*sc_set0.UserUniforms).Port_Value_N061;
float l9_92=l9_91+0.001;
l9_92-=0.001;
l9_90=l9_92;
float2 l9_93=float2(0.0);
l9_93=l9_42;
float2 l9_94=float2(0.0);
l9_94=l9_48;
float2 l9_95=float2(0.0);
l9_95=l9_93-l9_94;
float2 l9_96=float2(0.0);
l9_96=abs(l9_95);
float2 l9_97=float2(0.0);
l9_97=l9_60;
float2 l9_98=float2(0.0);
l9_98=l9_96-l9_97;
float2 l9_99=float2(0.0);
float2 l9_100=l9_98;
float2 l9_101=l9_100;
bool l9_102=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_103;
if (l9_102)
{
l9_103=!PreviewInfo.Saved;
}
else
{
l9_103=l9_102;
}
bool l9_104;
if (l9_103)
{
l9_104=8==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_104=l9_103;
}
if (l9_104)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_101,0.0,1.0);
PreviewInfo.Color.w=1.0;
}
l9_99=l9_101;
float2 l9_105=float2(0.0);
l9_105=fast::max(l9_99,(*sc_set0.UserUniforms).Port_Input1_N028);
float l9_106=0.0;
l9_106=length(l9_105);
float l9_107=0.0;
l9_107=l9_56;
float l9_108=0.0;
l9_108=l9_106-l9_107;
float l9_109=0.0;
l9_109=l9_108;
float l9_110=0.0;
float l9_111=l9_109;
float l9_112=l9_111;
bool l9_113=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_114;
if (l9_113)
{
l9_114=!PreviewInfo.Saved;
}
else
{
l9_114=l9_113;
}
bool l9_115;
if (l9_114)
{
l9_115=10==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_115=l9_114;
}
if (l9_115)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_112,l9_112,l9_112,1.0);
PreviewInfo.Color.w=1.0;
}
l9_110=l9_112;
float l9_116=0.0;
l9_116=smoothstep(l9_90,(*sc_set0.UserUniforms).Port_Input1_N023,l9_110);
float4 l9_117=float4(0.0);
float4 l9_118=float4(0.0);
float4 l9_119=float4(0.0);
ssGlobals l9_120=l9_5;
float4 l9_121;
if ((int(Tweak_N65_tmp)!=0))
{
float2 l9_122=float2(0.0);
l9_122=l9_120.Surface_UVCoord0;
float2 l9_123=float2(0.0);
l9_123=((l9_122-(*sc_set0.UserUniforms).Port_Center_N013)*(*sc_set0.UserUniforms).Port_Scale_N013)+(*sc_set0.UserUniforms).Port_Center_N013;
float4 l9_124=float4(0.0);
float2 l9_125=l9_123;
int l9_126=0;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_127=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_127=0;
}
else
{
l9_127=in.varStereoViewID;
}
int l9_128=l9_127;
l9_126=1-l9_128;
}
else
{
int l9_129=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_129=0;
}
else
{
l9_129=in.varStereoViewID;
}
int l9_130=l9_129;
l9_126=l9_130;
}
int l9_131=l9_126;
int l9_132=baseTexLayout_tmp;
int l9_133=l9_131;
float2 l9_134=l9_125;
bool l9_135=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_136=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_137=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_138=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_139=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_140=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_141=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_142=0.0;
bool l9_143=l9_140&&(!l9_138);
float l9_144=1.0;
float l9_145=l9_134.x;
int l9_146=l9_137.x;
if (l9_146==1)
{
l9_145=fract(l9_145);
}
else
{
if (l9_146==2)
{
float l9_147=fract(l9_145);
float l9_148=l9_145-l9_147;
float l9_149=step(0.25,fract(l9_148*0.5));
l9_145=mix(l9_147,1.0-l9_147,fast::clamp(l9_149,0.0,1.0));
}
}
l9_134.x=l9_145;
float l9_150=l9_134.y;
int l9_151=l9_137.y;
if (l9_151==1)
{
l9_150=fract(l9_150);
}
else
{
if (l9_151==2)
{
float l9_152=fract(l9_150);
float l9_153=l9_150-l9_152;
float l9_154=step(0.25,fract(l9_153*0.5));
l9_150=mix(l9_152,1.0-l9_152,fast::clamp(l9_154,0.0,1.0));
}
}
l9_134.y=l9_150;
if (l9_138)
{
bool l9_155=l9_140;
bool l9_156;
if (l9_155)
{
l9_156=l9_137.x==3;
}
else
{
l9_156=l9_155;
}
float l9_157=l9_134.x;
float l9_158=l9_139.x;
float l9_159=l9_139.z;
bool l9_160=l9_156;
float l9_161=l9_144;
float l9_162=fast::clamp(l9_157,l9_158,l9_159);
float l9_163=step(abs(l9_157-l9_162),9.9999997e-06);
l9_161*=(l9_163+((1.0-float(l9_160))*(1.0-l9_163)));
l9_157=l9_162;
l9_134.x=l9_157;
l9_144=l9_161;
bool l9_164=l9_140;
bool l9_165;
if (l9_164)
{
l9_165=l9_137.y==3;
}
else
{
l9_165=l9_164;
}
float l9_166=l9_134.y;
float l9_167=l9_139.y;
float l9_168=l9_139.w;
bool l9_169=l9_165;
float l9_170=l9_144;
float l9_171=fast::clamp(l9_166,l9_167,l9_168);
float l9_172=step(abs(l9_166-l9_171),9.9999997e-06);
l9_170*=(l9_172+((1.0-float(l9_169))*(1.0-l9_172)));
l9_166=l9_171;
l9_134.y=l9_166;
l9_144=l9_170;
}
float2 l9_173=l9_134;
bool l9_174=l9_135;
float3x3 l9_175=l9_136;
if (l9_174)
{
l9_173=float2((l9_175*float3(l9_173,1.0)).xy);
}
float2 l9_176=l9_173;
float2 l9_177=l9_176;
float2 l9_178=l9_177;
l9_134=l9_178;
float l9_179=l9_134.x;
int l9_180=l9_137.x;
bool l9_181=l9_143;
float l9_182=l9_144;
if ((l9_180==0)||(l9_180==3))
{
float l9_183=l9_179;
float l9_184=0.0;
float l9_185=1.0;
bool l9_186=l9_181;
float l9_187=l9_182;
float l9_188=fast::clamp(l9_183,l9_184,l9_185);
float l9_189=step(abs(l9_183-l9_188),9.9999997e-06);
l9_187*=(l9_189+((1.0-float(l9_186))*(1.0-l9_189)));
l9_183=l9_188;
l9_179=l9_183;
l9_182=l9_187;
}
l9_134.x=l9_179;
l9_144=l9_182;
float l9_190=l9_134.y;
int l9_191=l9_137.y;
bool l9_192=l9_143;
float l9_193=l9_144;
if ((l9_191==0)||(l9_191==3))
{
float l9_194=l9_190;
float l9_195=0.0;
float l9_196=1.0;
bool l9_197=l9_192;
float l9_198=l9_193;
float l9_199=fast::clamp(l9_194,l9_195,l9_196);
float l9_200=step(abs(l9_194-l9_199),9.9999997e-06);
l9_198*=(l9_200+((1.0-float(l9_197))*(1.0-l9_200)));
l9_194=l9_199;
l9_190=l9_194;
l9_193=l9_198;
}
l9_134.y=l9_190;
l9_144=l9_193;
float2 l9_201=l9_134;
int l9_202=l9_132;
int l9_203=l9_133;
float l9_204=l9_142;
float2 l9_205=l9_201;
int l9_206=l9_202;
int l9_207=l9_203;
float3 l9_208=float3(0.0);
if (l9_206==0)
{
l9_208=float3(l9_205,0.0);
}
else
{
if (l9_206==1)
{
l9_208=float3(l9_205.x,(l9_205.y*0.5)+(0.5-(float(l9_207)*0.5)),0.0);
}
else
{
l9_208=float3(l9_205,float(l9_207));
}
}
float3 l9_209=l9_208;
float3 l9_210=l9_209;
float2 l9_211=l9_210.xy;
float l9_212=l9_204;
float4 l9_213=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_211,bias(l9_212));
float4 l9_214=l9_213;
float4 l9_215=l9_214;
if (l9_140)
{
l9_215=mix(l9_141,l9_215,float4(l9_144));
}
float4 l9_216=l9_215;
float4 l9_217=l9_216;
l9_124=l9_217;
float4 l9_218=float4(0.0);
float4 l9_219=(*sc_set0.UserUniforms).baseColor;
l9_218=l9_219;
float4 l9_220=float4(0.0);
l9_220=l9_124*l9_218;
l9_118=l9_220;
l9_121=l9_118;
}
else
{
float4 l9_221=float4(0.0);
float4 l9_222=(*sc_set0.UserUniforms).baseColor;
l9_221=l9_222;
l9_119=l9_221;
l9_121=l9_119;
}
l9_117=l9_121;
float4 l9_223=float4(0.0);
l9_223=float4(l9_116)*l9_117;
float4 l9_224=float4(0.0);
float4 l9_225=l9_223;
float4 l9_226=l9_225;
bool l9_227=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_228;
if (l9_227)
{
l9_228=!PreviewInfo.Saved;
}
else
{
l9_228=l9_227;
}
bool l9_229;
if (l9_228)
{
l9_229=42==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_229=l9_228;
}
if (l9_229)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_226;
PreviewInfo.Color.w=1.0;
}
l9_224=l9_226;
float4 l9_230=float4(0.0);
l9_230=mix(l9_89,l9_224,float4(l9_116));
l9_3=l9_230;
l9_6=l9_3;
}
else
{
float l9_231=0.0;
float l9_232=(*sc_set0.UserUniforms).Port_Value_N061;
float l9_233=l9_232+0.001;
l9_233-=0.001;
l9_231=l9_233;
float2 l9_234=float2(0.0);
l9_234=l9_5.Surface_UVCoord0;
float2 l9_235=float2(0.0);
l9_235=((l9_234-(*sc_set0.UserUniforms).Port_Center_N013)*(*sc_set0.UserUniforms).Port_Scale_N013)+(*sc_set0.UserUniforms).Port_Center_N013;
float2 l9_236=float2(0.0);
float2 l9_237=float2(0.0);
float2 l9_238=(*sc_set0.UserUniforms).Port_Default_N040;
float2 l9_239;
if ((int(Tweak_N65_tmp)!=0))
{
float2 l9_240=float2(0.0);
float2 l9_241=(*sc_set0.UserUniforms).baseTexSize.xy;
l9_240=l9_241;
float2 l9_242=float2(0.0);
float l9_243=0.0;
float l9_244=0.0;
float2 l9_245=l9_240;
float2 l9_246=float2(l9_245);
float l9_247=l9_245.x;
float l9_248=l9_245.y;
l9_242=l9_246;
l9_243=l9_247;
l9_244=l9_248;
float l9_249=0.0;
l9_249=fast::min(l9_243,l9_244);
float2 l9_250=float2(0.0);
l9_250=l9_242/float2(l9_249);
l9_237=l9_250;
l9_239=l9_237;
}
else
{
l9_239=l9_238;
}
l9_236=l9_239;
float2 l9_251=float2(0.0);
l9_251=l9_235*l9_236;
float2 l9_252=float2(0.0);
l9_252=l9_251;
float2 l9_253=float2(0.0);
float2 l9_254=(*sc_set0.UserUniforms).Port_Value_N002;
float2 l9_255=l9_254+float2(0.001);
l9_255-=float2(0.001);
l9_253=l9_255;
float2 l9_256=float2(0.0);
l9_256=l9_253*l9_236;
float2 l9_257=float2(0.0);
l9_257=l9_256;
float2 l9_258=float2(0.0);
l9_258=l9_252-l9_257;
float2 l9_259=float2(0.0);
l9_259=abs(l9_258);
float2 l9_260=float2(0.0);
float2 l9_261=(*sc_set0.UserUniforms).boxBounds;
l9_260=l9_261;
float2 l9_262=float2(0.0);
l9_262=fast::clamp(l9_260,(*sc_set0.UserUniforms).Port_Input1_N089,(*sc_set0.UserUniforms).Port_Input2_N089);
float2 l9_263=float2(0.0);
l9_263=float2((*sc_set0.UserUniforms).Port_Input0_N036)/l9_236;
float l9_264=0.0;
float l9_265=(*sc_set0.UserUniforms).cornerRadius;
l9_264=l9_265;
float2 l9_266=float2(0.0);
l9_266=l9_263*float2(l9_264);
float2 l9_267=float2(0.0);
l9_267=l9_262-l9_266;
float2 l9_268=float2(0.0);
l9_268=l9_267*l9_236;
float2 l9_269=float2(0.0);
l9_269=l9_268;
float2 l9_270=float2(0.0);
l9_270=l9_259-l9_269;
float2 l9_271=float2(0.0);
float2 l9_272=l9_270;
float2 l9_273=l9_272;
bool l9_274=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_275;
if (l9_274)
{
l9_275=!PreviewInfo.Saved;
}
else
{
l9_275=l9_274;
}
bool l9_276;
if (l9_275)
{
l9_276=8==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_276=l9_275;
}
if (l9_276)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_273,0.0,1.0);
PreviewInfo.Color.w=1.0;
}
l9_271=l9_273;
float2 l9_277=float2(0.0);
l9_277=fast::max(l9_271,(*sc_set0.UserUniforms).Port_Input1_N028);
float l9_278=0.0;
l9_278=length(l9_277);
float l9_279=0.0;
l9_279=l9_264;
float l9_280=0.0;
l9_280=l9_278-l9_279;
float l9_281=0.0;
l9_281=l9_280;
float l9_282=0.0;
float l9_283=l9_281;
float l9_284=l9_283;
bool l9_285=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_286;
if (l9_285)
{
l9_286=!PreviewInfo.Saved;
}
else
{
l9_286=l9_285;
}
bool l9_287;
if (l9_286)
{
l9_287=10==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_287=l9_286;
}
if (l9_287)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_284,l9_284,l9_284,1.0);
PreviewInfo.Color.w=1.0;
}
l9_282=l9_284;
float l9_288=0.0;
l9_288=smoothstep(l9_231,(*sc_set0.UserUniforms).Port_Input1_N023,l9_282);
float4 l9_289=float4(0.0);
float4 l9_290=float4(0.0);
float4 l9_291=float4(0.0);
ssGlobals l9_292=l9_5;
float4 l9_293;
if ((int(Tweak_N65_tmp)!=0))
{
float2 l9_294=float2(0.0);
l9_294=l9_292.Surface_UVCoord0;
float2 l9_295=float2(0.0);
l9_295=((l9_294-(*sc_set0.UserUniforms).Port_Center_N013)*(*sc_set0.UserUniforms).Port_Scale_N013)+(*sc_set0.UserUniforms).Port_Center_N013;
float4 l9_296=float4(0.0);
float2 l9_297=l9_295;
int l9_298=0;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_299=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_299=0;
}
else
{
l9_299=in.varStereoViewID;
}
int l9_300=l9_299;
l9_298=1-l9_300;
}
else
{
int l9_301=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_301=0;
}
else
{
l9_301=in.varStereoViewID;
}
int l9_302=l9_301;
l9_298=l9_302;
}
int l9_303=l9_298;
int l9_304=baseTexLayout_tmp;
int l9_305=l9_303;
float2 l9_306=l9_297;
bool l9_307=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_308=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_309=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_310=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_311=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_312=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_313=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_314=0.0;
bool l9_315=l9_312&&(!l9_310);
float l9_316=1.0;
float l9_317=l9_306.x;
int l9_318=l9_309.x;
if (l9_318==1)
{
l9_317=fract(l9_317);
}
else
{
if (l9_318==2)
{
float l9_319=fract(l9_317);
float l9_320=l9_317-l9_319;
float l9_321=step(0.25,fract(l9_320*0.5));
l9_317=mix(l9_319,1.0-l9_319,fast::clamp(l9_321,0.0,1.0));
}
}
l9_306.x=l9_317;
float l9_322=l9_306.y;
int l9_323=l9_309.y;
if (l9_323==1)
{
l9_322=fract(l9_322);
}
else
{
if (l9_323==2)
{
float l9_324=fract(l9_322);
float l9_325=l9_322-l9_324;
float l9_326=step(0.25,fract(l9_325*0.5));
l9_322=mix(l9_324,1.0-l9_324,fast::clamp(l9_326,0.0,1.0));
}
}
l9_306.y=l9_322;
if (l9_310)
{
bool l9_327=l9_312;
bool l9_328;
if (l9_327)
{
l9_328=l9_309.x==3;
}
else
{
l9_328=l9_327;
}
float l9_329=l9_306.x;
float l9_330=l9_311.x;
float l9_331=l9_311.z;
bool l9_332=l9_328;
float l9_333=l9_316;
float l9_334=fast::clamp(l9_329,l9_330,l9_331);
float l9_335=step(abs(l9_329-l9_334),9.9999997e-06);
l9_333*=(l9_335+((1.0-float(l9_332))*(1.0-l9_335)));
l9_329=l9_334;
l9_306.x=l9_329;
l9_316=l9_333;
bool l9_336=l9_312;
bool l9_337;
if (l9_336)
{
l9_337=l9_309.y==3;
}
else
{
l9_337=l9_336;
}
float l9_338=l9_306.y;
float l9_339=l9_311.y;
float l9_340=l9_311.w;
bool l9_341=l9_337;
float l9_342=l9_316;
float l9_343=fast::clamp(l9_338,l9_339,l9_340);
float l9_344=step(abs(l9_338-l9_343),9.9999997e-06);
l9_342*=(l9_344+((1.0-float(l9_341))*(1.0-l9_344)));
l9_338=l9_343;
l9_306.y=l9_338;
l9_316=l9_342;
}
float2 l9_345=l9_306;
bool l9_346=l9_307;
float3x3 l9_347=l9_308;
if (l9_346)
{
l9_345=float2((l9_347*float3(l9_345,1.0)).xy);
}
float2 l9_348=l9_345;
float2 l9_349=l9_348;
float2 l9_350=l9_349;
l9_306=l9_350;
float l9_351=l9_306.x;
int l9_352=l9_309.x;
bool l9_353=l9_315;
float l9_354=l9_316;
if ((l9_352==0)||(l9_352==3))
{
float l9_355=l9_351;
float l9_356=0.0;
float l9_357=1.0;
bool l9_358=l9_353;
float l9_359=l9_354;
float l9_360=fast::clamp(l9_355,l9_356,l9_357);
float l9_361=step(abs(l9_355-l9_360),9.9999997e-06);
l9_359*=(l9_361+((1.0-float(l9_358))*(1.0-l9_361)));
l9_355=l9_360;
l9_351=l9_355;
l9_354=l9_359;
}
l9_306.x=l9_351;
l9_316=l9_354;
float l9_362=l9_306.y;
int l9_363=l9_309.y;
bool l9_364=l9_315;
float l9_365=l9_316;
if ((l9_363==0)||(l9_363==3))
{
float l9_366=l9_362;
float l9_367=0.0;
float l9_368=1.0;
bool l9_369=l9_364;
float l9_370=l9_365;
float l9_371=fast::clamp(l9_366,l9_367,l9_368);
float l9_372=step(abs(l9_366-l9_371),9.9999997e-06);
l9_370*=(l9_372+((1.0-float(l9_369))*(1.0-l9_372)));
l9_366=l9_371;
l9_362=l9_366;
l9_365=l9_370;
}
l9_306.y=l9_362;
l9_316=l9_365;
float2 l9_373=l9_306;
int l9_374=l9_304;
int l9_375=l9_305;
float l9_376=l9_314;
float2 l9_377=l9_373;
int l9_378=l9_374;
int l9_379=l9_375;
float3 l9_380=float3(0.0);
if (l9_378==0)
{
l9_380=float3(l9_377,0.0);
}
else
{
if (l9_378==1)
{
l9_380=float3(l9_377.x,(l9_377.y*0.5)+(0.5-(float(l9_379)*0.5)),0.0);
}
else
{
l9_380=float3(l9_377,float(l9_379));
}
}
float3 l9_381=l9_380;
float3 l9_382=l9_381;
float2 l9_383=l9_382.xy;
float l9_384=l9_376;
float4 l9_385=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_383,bias(l9_384));
float4 l9_386=l9_385;
float4 l9_387=l9_386;
if (l9_312)
{
l9_387=mix(l9_313,l9_387,float4(l9_316));
}
float4 l9_388=l9_387;
float4 l9_389=l9_388;
l9_296=l9_389;
float4 l9_390=float4(0.0);
float4 l9_391=(*sc_set0.UserUniforms).baseColor;
l9_390=l9_391;
float4 l9_392=float4(0.0);
l9_392=l9_296*l9_390;
l9_290=l9_392;
l9_293=l9_290;
}
else
{
float4 l9_393=float4(0.0);
float4 l9_394=(*sc_set0.UserUniforms).baseColor;
l9_393=l9_394;
l9_291=l9_393;
l9_293=l9_291;
}
l9_289=l9_293;
float4 l9_395=float4(0.0);
l9_395=float4(l9_288)*l9_289;
float4 l9_396=float4(0.0);
float4 l9_397=l9_395;
float4 l9_398=l9_397;
bool l9_399=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_400;
if (l9_399)
{
l9_400=!PreviewInfo.Saved;
}
else
{
l9_400=l9_399;
}
bool l9_401;
if (l9_400)
{
l9_401=42==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_401=l9_400;
}
if (l9_401)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_398;
PreviewInfo.Color.w=1.0;
}
l9_396=l9_398;
l9_4=l9_396;
l9_6=l9_4;
}
l9_2=l9_6;
float4 l9_402=float4(0.0);
float4 l9_403=(*sc_set0.UserUniforms).strokeColor;
l9_402=l9_403;
float2 l9_404=float2(0.0);
l9_404=param_3.Surface_UVCoord0;
float2 l9_405=float2(0.0);
l9_405=((l9_404-(*sc_set0.UserUniforms).Port_Center_N013)*(*sc_set0.UserUniforms).Port_Scale_N013)+(*sc_set0.UserUniforms).Port_Center_N013;
float2 l9_406=float2(0.0);
float2 l9_407=float2(0.0);
float2 l9_408=(*sc_set0.UserUniforms).Port_Default_N040;
float2 l9_409;
if ((int(Tweak_N65_tmp)!=0))
{
float2 l9_410=float2(0.0);
float2 l9_411=(*sc_set0.UserUniforms).baseTexSize.xy;
l9_410=l9_411;
float2 l9_412=float2(0.0);
float l9_413=0.0;
float l9_414=0.0;
float2 l9_415=l9_410;
float2 l9_416=float2(l9_415);
float l9_417=l9_415.x;
float l9_418=l9_415.y;
l9_412=l9_416;
l9_413=l9_417;
l9_414=l9_418;
float l9_419=0.0;
l9_419=fast::min(l9_413,l9_414);
float2 l9_420=float2(0.0);
l9_420=l9_412/float2(l9_419);
l9_407=l9_420;
l9_409=l9_407;
}
else
{
l9_409=l9_408;
}
l9_406=l9_409;
float2 l9_421=float2(0.0);
l9_421=l9_405*l9_406;
float2 l9_422=float2(0.0);
l9_422=l9_421;
float2 l9_423=float2(0.0);
float2 l9_424=(*sc_set0.UserUniforms).Port_Value_N002;
float2 l9_425=l9_424+float2(0.001);
l9_425-=float2(0.001);
l9_423=l9_425;
float2 l9_426=float2(0.0);
l9_426=l9_423*l9_406;
float2 l9_427=float2(0.0);
l9_427=l9_426;
float2 l9_428=float2(0.0);
l9_428=l9_422-l9_427;
float2 l9_429=float2(0.0);
l9_429=abs(l9_428);
float2 l9_430=float2(0.0);
float2 l9_431=(*sc_set0.UserUniforms).boxBounds;
l9_430=l9_431;
float2 l9_432=float2(0.0);
l9_432=fast::clamp(l9_430,(*sc_set0.UserUniforms).Port_Input1_N089,(*sc_set0.UserUniforms).Port_Input2_N089);
float2 l9_433=float2(0.0);
l9_433=float2((*sc_set0.UserUniforms).Port_Input0_N036)/l9_406;
float l9_434=0.0;
float l9_435=(*sc_set0.UserUniforms).cornerRadius;
l9_434=l9_435;
float2 l9_436=float2(0.0);
l9_436=l9_433*float2(l9_434);
float2 l9_437=float2(0.0);
l9_437=l9_432-l9_436;
float2 l9_438=float2(0.0);
l9_438=l9_437*l9_406;
float2 l9_439=float2(0.0);
l9_439=l9_438;
float2 l9_440=float2(0.0);
l9_440=l9_429-l9_439;
float2 l9_441=float2(0.0);
float2 l9_442=l9_440;
float2 l9_443=l9_442;
bool l9_444=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_445;
if (l9_444)
{
l9_445=!PreviewInfo.Saved;
}
else
{
l9_445=l9_444;
}
bool l9_446;
if (l9_445)
{
l9_446=8==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_446=l9_445;
}
if (l9_446)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_443,0.0,1.0);
PreviewInfo.Color.w=1.0;
}
l9_441=l9_443;
float2 l9_447=float2(0.0);
l9_447=fast::max(l9_441,(*sc_set0.UserUniforms).Port_Input1_N028);
float l9_448=0.0;
l9_448=length(l9_447);
float l9_449=0.0;
l9_449=l9_434;
float l9_450=0.0;
l9_450=l9_448-l9_449;
float l9_451=0.0;
l9_451=l9_450;
float l9_452=0.0;
float l9_453=l9_451;
float l9_454=l9_453;
bool l9_455=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_456;
if (l9_455)
{
l9_456=!PreviewInfo.Saved;
}
else
{
l9_456=l9_455;
}
bool l9_457;
if (l9_456)
{
l9_457=10==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_457=l9_456;
}
if (l9_457)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_454,l9_454,l9_454,1.0);
PreviewInfo.Color.w=1.0;
}
l9_452=l9_454;
float l9_458=0.0;
l9_458=smoothstep((*sc_set0.UserUniforms).Port_Input0_N038,(*sc_set0.UserUniforms).Port_Input1_N038,l9_452);
float l9_459=0.0;
float l9_460=(*sc_set0.UserUniforms).Port_Value_N061;
float l9_461=l9_460+0.001;
l9_461-=0.001;
l9_459=l9_461;
float l9_462=0.0;
float l9_463=(*sc_set0.UserUniforms).strokeThickness;
l9_462=l9_463;
float l9_464=0.0;
l9_464=l9_459+l9_462;
float l9_465=0.0;
l9_465=smoothstep(l9_464,l9_462,l9_452);
float l9_466=0.0;
l9_466=l9_458*l9_465;
float l9_467=0.0;
float l9_468=l9_466;
float l9_469=l9_468;
bool l9_470=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_471;
if (l9_470)
{
l9_471=!PreviewInfo.Saved;
}
else
{
l9_471=l9_470;
}
bool l9_472;
if (l9_471)
{
l9_472=27==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_472=l9_471;
}
if (l9_472)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_469,l9_469,l9_469,1.0);
PreviewInfo.Color.w=1.0;
}
l9_467=l9_469;
float4 l9_473=float4(0.0);
l9_473=mix(l9_2,l9_402,float4(l9_467));
param=l9_473;
param_2=param;
}
else
{
float4 l9_474=float4(0.0);
float4 l9_475=float4(1.0);
float4 l9_476=float4(0.0);
ssGlobals l9_477=param_3;
float4 l9_478;
if ((int(Tweak_N71_tmp)!=0))
{
float4 l9_479=float4(0.0);
float4 l9_480=(*sc_set0.UserUniforms).shadowColor;
l9_479=l9_480;
float l9_481=0.0;
float l9_482=(*sc_set0.UserUniforms).shadowBlur;
l9_481=l9_482;
float l9_483=0.0;
float l9_484=(*sc_set0.UserUniforms).shadowDirection;
l9_483=l9_484;
float l9_485=0.0;
l9_485=radians(l9_483);
float l9_486=0.0;
l9_486=l9_485;
float l9_487=0.0;
l9_487=cos(l9_486);
float l9_488=0.0;
float l9_489=(*sc_set0.UserUniforms).shadowOffset;
l9_488=l9_489;
float l9_490=0.0;
l9_490=l9_488;
float l9_491=0.0;
l9_491=l9_487*l9_490;
float l9_492=0.0;
l9_492=l9_491;
float l9_493=0.0;
l9_493=sin(l9_486);
float l9_494=0.0;
l9_494=l9_490*l9_493;
float l9_495=0.0;
l9_495=l9_494;
float2 l9_496=float2(0.0);
l9_496.x=l9_492;
l9_496.y=l9_495;
float2 l9_497=float2(0.0);
l9_497=l9_477.Surface_UVCoord0;
float2 l9_498=float2(0.0);
l9_498=((l9_497-(*sc_set0.UserUniforms).Port_Center_N013)*(*sc_set0.UserUniforms).Port_Scale_N013)+(*sc_set0.UserUniforms).Port_Center_N013;
float2 l9_499=float2(0.0);
float2 l9_500=float2(0.0);
float2 l9_501=(*sc_set0.UserUniforms).Port_Default_N040;
float2 l9_502;
if ((int(Tweak_N65_tmp)!=0))
{
float2 l9_503=float2(0.0);
float2 l9_504=(*sc_set0.UserUniforms).baseTexSize.xy;
l9_503=l9_504;
float2 l9_505=float2(0.0);
float l9_506=0.0;
float l9_507=0.0;
float2 l9_508=l9_503;
float2 l9_509=float2(l9_508);
float l9_510=l9_508.x;
float l9_511=l9_508.y;
l9_505=l9_509;
l9_506=l9_510;
l9_507=l9_511;
float l9_512=0.0;
l9_512=fast::min(l9_506,l9_507);
float2 l9_513=float2(0.0);
l9_513=l9_505/float2(l9_512);
l9_500=l9_513;
l9_502=l9_500;
}
else
{
l9_502=l9_501;
}
l9_499=l9_502;
float2 l9_514=float2(0.0);
l9_514=l9_498*l9_499;
float2 l9_515=float2(0.0);
l9_515=l9_496+l9_514;
float2 l9_516=float2(0.0);
l9_516=l9_515;
float2 l9_517=float2(0.0);
float2 l9_518=(*sc_set0.UserUniforms).Port_Value_N002;
float2 l9_519=l9_518+float2(0.001);
l9_519-=float2(0.001);
l9_517=l9_519;
float2 l9_520=float2(0.0);
l9_520=l9_517*l9_499;
float2 l9_521=float2(0.0);
l9_521=l9_520;
float2 l9_522=float2(0.0);
l9_522=l9_516-l9_521;
float2 l9_523=float2(0.0);
l9_523=abs(l9_522);
float2 l9_524=float2(0.0);
float2 l9_525=(*sc_set0.UserUniforms).boxBounds;
l9_524=l9_525;
float2 l9_526=float2(0.0);
l9_526=fast::clamp(l9_524,(*sc_set0.UserUniforms).Port_Input1_N089,(*sc_set0.UserUniforms).Port_Input2_N089);
float2 l9_527=float2(0.0);
l9_527=float2((*sc_set0.UserUniforms).Port_Input0_N036)/l9_499;
float l9_528=0.0;
float l9_529=(*sc_set0.UserUniforms).cornerRadius;
l9_528=l9_529;
float2 l9_530=float2(0.0);
l9_530=l9_527*float2(l9_528);
float2 l9_531=float2(0.0);
l9_531=l9_526-l9_530;
float2 l9_532=float2(0.0);
l9_532=l9_531*l9_499;
float2 l9_533=float2(0.0);
l9_533=l9_532;
float2 l9_534=float2(0.0);
l9_534=l9_523-l9_533;
float2 l9_535=float2(0.0);
float2 l9_536=l9_534;
float2 l9_537=l9_536;
bool l9_538=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_539;
if (l9_538)
{
l9_539=!PreviewInfo.Saved;
}
else
{
l9_539=l9_538;
}
bool l9_540;
if (l9_539)
{
l9_540=79==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_540=l9_539;
}
if (l9_540)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_537,0.0,1.0);
PreviewInfo.Color.w=1.0;
}
l9_535=l9_537;
float2 l9_541=float2(0.0);
l9_541=fast::max(l9_535,(*sc_set0.UserUniforms).Port_Input1_N080);
float l9_542=0.0;
l9_542=length(l9_541);
float l9_543=0.0;
l9_543=l9_528;
float l9_544=0.0;
l9_544=l9_542-l9_543;
float l9_545=0.0;
l9_545=l9_544;
float l9_546=0.0;
float l9_547=l9_545;
float l9_548=l9_547;
bool l9_549=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_550;
if (l9_549)
{
l9_550=!PreviewInfo.Saved;
}
else
{
l9_550=l9_549;
}
bool l9_551;
if (l9_550)
{
l9_551=50==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_551=l9_550;
}
if (l9_551)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_548,l9_548,l9_548,1.0);
PreviewInfo.Color.w=1.0;
}
l9_546=l9_548;
float l9_552=0.0;
l9_552=smoothstep(l9_481,(*sc_set0.UserUniforms).Port_Input1_N034,l9_546);
float l9_553=0.0;
float l9_554=l9_552;
float l9_555=l9_554;
bool l9_556=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_557;
if (l9_556)
{
l9_557=!PreviewInfo.Saved;
}
else
{
l9_557=l9_556;
}
bool l9_558;
if (l9_557)
{
l9_558=44==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_558=l9_557;
}
if (l9_558)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_555,l9_555,l9_555,1.0);
PreviewInfo.Color.w=1.0;
}
l9_553=l9_555;
float l9_559=0.0;
l9_559=l9_479.w;
float l9_560=0.0;
l9_560=l9_553*l9_559;
float4 l9_561=float4(0.0);
l9_561=float4(l9_479.xyz.x,l9_479.xyz.y,l9_479.xyz.z,l9_561.w);
l9_561.w=l9_560;
float l9_562=0.0;
float l9_563=(*sc_set0.UserUniforms).Port_Value_N061;
float l9_564=l9_563+0.001;
l9_564-=0.001;
l9_562=l9_564;
float2 l9_565=float2(0.0);
l9_565=l9_514;
float2 l9_566=float2(0.0);
l9_566=l9_520;
float2 l9_567=float2(0.0);
l9_567=l9_565-l9_566;
float2 l9_568=float2(0.0);
l9_568=abs(l9_567);
float2 l9_569=float2(0.0);
l9_569=l9_532;
float2 l9_570=float2(0.0);
l9_570=l9_568-l9_569;
float2 l9_571=float2(0.0);
float2 l9_572=l9_570;
float2 l9_573=l9_572;
bool l9_574=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_575;
if (l9_574)
{
l9_575=!PreviewInfo.Saved;
}
else
{
l9_575=l9_574;
}
bool l9_576;
if (l9_575)
{
l9_576=8==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_576=l9_575;
}
if (l9_576)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_573,0.0,1.0);
PreviewInfo.Color.w=1.0;
}
l9_571=l9_573;
float2 l9_577=float2(0.0);
l9_577=fast::max(l9_571,(*sc_set0.UserUniforms).Port_Input1_N028);
float l9_578=0.0;
l9_578=length(l9_577);
float l9_579=0.0;
l9_579=l9_528;
float l9_580=0.0;
l9_580=l9_578-l9_579;
float l9_581=0.0;
l9_581=l9_580;
float l9_582=0.0;
float l9_583=l9_581;
float l9_584=l9_583;
bool l9_585=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_586;
if (l9_585)
{
l9_586=!PreviewInfo.Saved;
}
else
{
l9_586=l9_585;
}
bool l9_587;
if (l9_586)
{
l9_587=10==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_587=l9_586;
}
if (l9_587)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_584,l9_584,l9_584,1.0);
PreviewInfo.Color.w=1.0;
}
l9_582=l9_584;
float l9_588=0.0;
l9_588=smoothstep(l9_562,(*sc_set0.UserUniforms).Port_Input1_N023,l9_582);
float4 l9_589=float4(0.0);
float4 l9_590=float4(0.0);
float4 l9_591=float4(0.0);
ssGlobals l9_592=l9_477;
float4 l9_593;
if ((int(Tweak_N65_tmp)!=0))
{
float2 l9_594=float2(0.0);
l9_594=l9_592.Surface_UVCoord0;
float2 l9_595=float2(0.0);
l9_595=((l9_594-(*sc_set0.UserUniforms).Port_Center_N013)*(*sc_set0.UserUniforms).Port_Scale_N013)+(*sc_set0.UserUniforms).Port_Center_N013;
float4 l9_596=float4(0.0);
float2 l9_597=l9_595;
int l9_598=0;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_599=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_599=0;
}
else
{
l9_599=in.varStereoViewID;
}
int l9_600=l9_599;
l9_598=1-l9_600;
}
else
{
int l9_601=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_601=0;
}
else
{
l9_601=in.varStereoViewID;
}
int l9_602=l9_601;
l9_598=l9_602;
}
int l9_603=l9_598;
int l9_604=baseTexLayout_tmp;
int l9_605=l9_603;
float2 l9_606=l9_597;
bool l9_607=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_608=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_609=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_610=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_611=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_612=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_613=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_614=0.0;
bool l9_615=l9_612&&(!l9_610);
float l9_616=1.0;
float l9_617=l9_606.x;
int l9_618=l9_609.x;
if (l9_618==1)
{
l9_617=fract(l9_617);
}
else
{
if (l9_618==2)
{
float l9_619=fract(l9_617);
float l9_620=l9_617-l9_619;
float l9_621=step(0.25,fract(l9_620*0.5));
l9_617=mix(l9_619,1.0-l9_619,fast::clamp(l9_621,0.0,1.0));
}
}
l9_606.x=l9_617;
float l9_622=l9_606.y;
int l9_623=l9_609.y;
if (l9_623==1)
{
l9_622=fract(l9_622);
}
else
{
if (l9_623==2)
{
float l9_624=fract(l9_622);
float l9_625=l9_622-l9_624;
float l9_626=step(0.25,fract(l9_625*0.5));
l9_622=mix(l9_624,1.0-l9_624,fast::clamp(l9_626,0.0,1.0));
}
}
l9_606.y=l9_622;
if (l9_610)
{
bool l9_627=l9_612;
bool l9_628;
if (l9_627)
{
l9_628=l9_609.x==3;
}
else
{
l9_628=l9_627;
}
float l9_629=l9_606.x;
float l9_630=l9_611.x;
float l9_631=l9_611.z;
bool l9_632=l9_628;
float l9_633=l9_616;
float l9_634=fast::clamp(l9_629,l9_630,l9_631);
float l9_635=step(abs(l9_629-l9_634),9.9999997e-06);
l9_633*=(l9_635+((1.0-float(l9_632))*(1.0-l9_635)));
l9_629=l9_634;
l9_606.x=l9_629;
l9_616=l9_633;
bool l9_636=l9_612;
bool l9_637;
if (l9_636)
{
l9_637=l9_609.y==3;
}
else
{
l9_637=l9_636;
}
float l9_638=l9_606.y;
float l9_639=l9_611.y;
float l9_640=l9_611.w;
bool l9_641=l9_637;
float l9_642=l9_616;
float l9_643=fast::clamp(l9_638,l9_639,l9_640);
float l9_644=step(abs(l9_638-l9_643),9.9999997e-06);
l9_642*=(l9_644+((1.0-float(l9_641))*(1.0-l9_644)));
l9_638=l9_643;
l9_606.y=l9_638;
l9_616=l9_642;
}
float2 l9_645=l9_606;
bool l9_646=l9_607;
float3x3 l9_647=l9_608;
if (l9_646)
{
l9_645=float2((l9_647*float3(l9_645,1.0)).xy);
}
float2 l9_648=l9_645;
float2 l9_649=l9_648;
float2 l9_650=l9_649;
l9_606=l9_650;
float l9_651=l9_606.x;
int l9_652=l9_609.x;
bool l9_653=l9_615;
float l9_654=l9_616;
if ((l9_652==0)||(l9_652==3))
{
float l9_655=l9_651;
float l9_656=0.0;
float l9_657=1.0;
bool l9_658=l9_653;
float l9_659=l9_654;
float l9_660=fast::clamp(l9_655,l9_656,l9_657);
float l9_661=step(abs(l9_655-l9_660),9.9999997e-06);
l9_659*=(l9_661+((1.0-float(l9_658))*(1.0-l9_661)));
l9_655=l9_660;
l9_651=l9_655;
l9_654=l9_659;
}
l9_606.x=l9_651;
l9_616=l9_654;
float l9_662=l9_606.y;
int l9_663=l9_609.y;
bool l9_664=l9_615;
float l9_665=l9_616;
if ((l9_663==0)||(l9_663==3))
{
float l9_666=l9_662;
float l9_667=0.0;
float l9_668=1.0;
bool l9_669=l9_664;
float l9_670=l9_665;
float l9_671=fast::clamp(l9_666,l9_667,l9_668);
float l9_672=step(abs(l9_666-l9_671),9.9999997e-06);
l9_670*=(l9_672+((1.0-float(l9_669))*(1.0-l9_672)));
l9_666=l9_671;
l9_662=l9_666;
l9_665=l9_670;
}
l9_606.y=l9_662;
l9_616=l9_665;
float2 l9_673=l9_606;
int l9_674=l9_604;
int l9_675=l9_605;
float l9_676=l9_614;
float2 l9_677=l9_673;
int l9_678=l9_674;
int l9_679=l9_675;
float3 l9_680=float3(0.0);
if (l9_678==0)
{
l9_680=float3(l9_677,0.0);
}
else
{
if (l9_678==1)
{
l9_680=float3(l9_677.x,(l9_677.y*0.5)+(0.5-(float(l9_679)*0.5)),0.0);
}
else
{
l9_680=float3(l9_677,float(l9_679));
}
}
float3 l9_681=l9_680;
float3 l9_682=l9_681;
float2 l9_683=l9_682.xy;
float l9_684=l9_676;
float4 l9_685=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_683,bias(l9_684));
float4 l9_686=l9_685;
float4 l9_687=l9_686;
if (l9_612)
{
l9_687=mix(l9_613,l9_687,float4(l9_616));
}
float4 l9_688=l9_687;
float4 l9_689=l9_688;
l9_596=l9_689;
float4 l9_690=float4(0.0);
float4 l9_691=(*sc_set0.UserUniforms).baseColor;
l9_690=l9_691;
float4 l9_692=float4(0.0);
l9_692=l9_596*l9_690;
l9_590=l9_692;
l9_593=l9_590;
}
else
{
float4 l9_693=float4(0.0);
float4 l9_694=(*sc_set0.UserUniforms).baseColor;
l9_693=l9_694;
l9_591=l9_693;
l9_593=l9_591;
}
l9_589=l9_593;
float4 l9_695=float4(0.0);
l9_695=float4(l9_588)*l9_589;
float4 l9_696=float4(0.0);
float4 l9_697=l9_695;
float4 l9_698=l9_697;
bool l9_699=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_700;
if (l9_699)
{
l9_700=!PreviewInfo.Saved;
}
else
{
l9_700=l9_699;
}
bool l9_701;
if (l9_700)
{
l9_701=42==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_701=l9_700;
}
if (l9_701)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_698;
PreviewInfo.Color.w=1.0;
}
l9_696=l9_698;
float4 l9_702=float4(0.0);
l9_702=mix(l9_561,l9_696,float4(l9_588));
l9_475=l9_702;
l9_478=l9_475;
}
else
{
float l9_703=0.0;
float l9_704=(*sc_set0.UserUniforms).Port_Value_N061;
float l9_705=l9_704+0.001;
l9_705-=0.001;
l9_703=l9_705;
float2 l9_706=float2(0.0);
l9_706=l9_477.Surface_UVCoord0;
float2 l9_707=float2(0.0);
l9_707=((l9_706-(*sc_set0.UserUniforms).Port_Center_N013)*(*sc_set0.UserUniforms).Port_Scale_N013)+(*sc_set0.UserUniforms).Port_Center_N013;
float2 l9_708=float2(0.0);
float2 l9_709=float2(0.0);
float2 l9_710=(*sc_set0.UserUniforms).Port_Default_N040;
float2 l9_711;
if ((int(Tweak_N65_tmp)!=0))
{
float2 l9_712=float2(0.0);
float2 l9_713=(*sc_set0.UserUniforms).baseTexSize.xy;
l9_712=l9_713;
float2 l9_714=float2(0.0);
float l9_715=0.0;
float l9_716=0.0;
float2 l9_717=l9_712;
float2 l9_718=float2(l9_717);
float l9_719=l9_717.x;
float l9_720=l9_717.y;
l9_714=l9_718;
l9_715=l9_719;
l9_716=l9_720;
float l9_721=0.0;
l9_721=fast::min(l9_715,l9_716);
float2 l9_722=float2(0.0);
l9_722=l9_714/float2(l9_721);
l9_709=l9_722;
l9_711=l9_709;
}
else
{
l9_711=l9_710;
}
l9_708=l9_711;
float2 l9_723=float2(0.0);
l9_723=l9_707*l9_708;
float2 l9_724=float2(0.0);
l9_724=l9_723;
float2 l9_725=float2(0.0);
float2 l9_726=(*sc_set0.UserUniforms).Port_Value_N002;
float2 l9_727=l9_726+float2(0.001);
l9_727-=float2(0.001);
l9_725=l9_727;
float2 l9_728=float2(0.0);
l9_728=l9_725*l9_708;
float2 l9_729=float2(0.0);
l9_729=l9_728;
float2 l9_730=float2(0.0);
l9_730=l9_724-l9_729;
float2 l9_731=float2(0.0);
l9_731=abs(l9_730);
float2 l9_732=float2(0.0);
float2 l9_733=(*sc_set0.UserUniforms).boxBounds;
l9_732=l9_733;
float2 l9_734=float2(0.0);
l9_734=fast::clamp(l9_732,(*sc_set0.UserUniforms).Port_Input1_N089,(*sc_set0.UserUniforms).Port_Input2_N089);
float2 l9_735=float2(0.0);
l9_735=float2((*sc_set0.UserUniforms).Port_Input0_N036)/l9_708;
float l9_736=0.0;
float l9_737=(*sc_set0.UserUniforms).cornerRadius;
l9_736=l9_737;
float2 l9_738=float2(0.0);
l9_738=l9_735*float2(l9_736);
float2 l9_739=float2(0.0);
l9_739=l9_734-l9_738;
float2 l9_740=float2(0.0);
l9_740=l9_739*l9_708;
float2 l9_741=float2(0.0);
l9_741=l9_740;
float2 l9_742=float2(0.0);
l9_742=l9_731-l9_741;
float2 l9_743=float2(0.0);
float2 l9_744=l9_742;
float2 l9_745=l9_744;
bool l9_746=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_747;
if (l9_746)
{
l9_747=!PreviewInfo.Saved;
}
else
{
l9_747=l9_746;
}
bool l9_748;
if (l9_747)
{
l9_748=8==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_748=l9_747;
}
if (l9_748)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_745,0.0,1.0);
PreviewInfo.Color.w=1.0;
}
l9_743=l9_745;
float2 l9_749=float2(0.0);
l9_749=fast::max(l9_743,(*sc_set0.UserUniforms).Port_Input1_N028);
float l9_750=0.0;
l9_750=length(l9_749);
float l9_751=0.0;
l9_751=l9_736;
float l9_752=0.0;
l9_752=l9_750-l9_751;
float l9_753=0.0;
l9_753=l9_752;
float l9_754=0.0;
float l9_755=l9_753;
float l9_756=l9_755;
bool l9_757=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_758;
if (l9_757)
{
l9_758=!PreviewInfo.Saved;
}
else
{
l9_758=l9_757;
}
bool l9_759;
if (l9_758)
{
l9_759=10==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_759=l9_758;
}
if (l9_759)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=float4(l9_756,l9_756,l9_756,1.0);
PreviewInfo.Color.w=1.0;
}
l9_754=l9_756;
float l9_760=0.0;
l9_760=smoothstep(l9_703,(*sc_set0.UserUniforms).Port_Input1_N023,l9_754);
float4 l9_761=float4(0.0);
float4 l9_762=float4(0.0);
float4 l9_763=float4(0.0);
ssGlobals l9_764=l9_477;
float4 l9_765;
if ((int(Tweak_N65_tmp)!=0))
{
float2 l9_766=float2(0.0);
l9_766=l9_764.Surface_UVCoord0;
float2 l9_767=float2(0.0);
l9_767=((l9_766-(*sc_set0.UserUniforms).Port_Center_N013)*(*sc_set0.UserUniforms).Port_Scale_N013)+(*sc_set0.UserUniforms).Port_Center_N013;
float4 l9_768=float4(0.0);
float2 l9_769=l9_767;
int l9_770=0;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_771=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_771=0;
}
else
{
l9_771=in.varStereoViewID;
}
int l9_772=l9_771;
l9_770=1-l9_772;
}
else
{
int l9_773=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_773=0;
}
else
{
l9_773=in.varStereoViewID;
}
int l9_774=l9_773;
l9_770=l9_774;
}
int l9_775=l9_770;
int l9_776=baseTexLayout_tmp;
int l9_777=l9_775;
float2 l9_778=l9_769;
bool l9_779=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_780=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_781=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_782=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_783=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_784=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_785=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_786=0.0;
bool l9_787=l9_784&&(!l9_782);
float l9_788=1.0;
float l9_789=l9_778.x;
int l9_790=l9_781.x;
if (l9_790==1)
{
l9_789=fract(l9_789);
}
else
{
if (l9_790==2)
{
float l9_791=fract(l9_789);
float l9_792=l9_789-l9_791;
float l9_793=step(0.25,fract(l9_792*0.5));
l9_789=mix(l9_791,1.0-l9_791,fast::clamp(l9_793,0.0,1.0));
}
}
l9_778.x=l9_789;
float l9_794=l9_778.y;
int l9_795=l9_781.y;
if (l9_795==1)
{
l9_794=fract(l9_794);
}
else
{
if (l9_795==2)
{
float l9_796=fract(l9_794);
float l9_797=l9_794-l9_796;
float l9_798=step(0.25,fract(l9_797*0.5));
l9_794=mix(l9_796,1.0-l9_796,fast::clamp(l9_798,0.0,1.0));
}
}
l9_778.y=l9_794;
if (l9_782)
{
bool l9_799=l9_784;
bool l9_800;
if (l9_799)
{
l9_800=l9_781.x==3;
}
else
{
l9_800=l9_799;
}
float l9_801=l9_778.x;
float l9_802=l9_783.x;
float l9_803=l9_783.z;
bool l9_804=l9_800;
float l9_805=l9_788;
float l9_806=fast::clamp(l9_801,l9_802,l9_803);
float l9_807=step(abs(l9_801-l9_806),9.9999997e-06);
l9_805*=(l9_807+((1.0-float(l9_804))*(1.0-l9_807)));
l9_801=l9_806;
l9_778.x=l9_801;
l9_788=l9_805;
bool l9_808=l9_784;
bool l9_809;
if (l9_808)
{
l9_809=l9_781.y==3;
}
else
{
l9_809=l9_808;
}
float l9_810=l9_778.y;
float l9_811=l9_783.y;
float l9_812=l9_783.w;
bool l9_813=l9_809;
float l9_814=l9_788;
float l9_815=fast::clamp(l9_810,l9_811,l9_812);
float l9_816=step(abs(l9_810-l9_815),9.9999997e-06);
l9_814*=(l9_816+((1.0-float(l9_813))*(1.0-l9_816)));
l9_810=l9_815;
l9_778.y=l9_810;
l9_788=l9_814;
}
float2 l9_817=l9_778;
bool l9_818=l9_779;
float3x3 l9_819=l9_780;
if (l9_818)
{
l9_817=float2((l9_819*float3(l9_817,1.0)).xy);
}
float2 l9_820=l9_817;
float2 l9_821=l9_820;
float2 l9_822=l9_821;
l9_778=l9_822;
float l9_823=l9_778.x;
int l9_824=l9_781.x;
bool l9_825=l9_787;
float l9_826=l9_788;
if ((l9_824==0)||(l9_824==3))
{
float l9_827=l9_823;
float l9_828=0.0;
float l9_829=1.0;
bool l9_830=l9_825;
float l9_831=l9_826;
float l9_832=fast::clamp(l9_827,l9_828,l9_829);
float l9_833=step(abs(l9_827-l9_832),9.9999997e-06);
l9_831*=(l9_833+((1.0-float(l9_830))*(1.0-l9_833)));
l9_827=l9_832;
l9_823=l9_827;
l9_826=l9_831;
}
l9_778.x=l9_823;
l9_788=l9_826;
float l9_834=l9_778.y;
int l9_835=l9_781.y;
bool l9_836=l9_787;
float l9_837=l9_788;
if ((l9_835==0)||(l9_835==3))
{
float l9_838=l9_834;
float l9_839=0.0;
float l9_840=1.0;
bool l9_841=l9_836;
float l9_842=l9_837;
float l9_843=fast::clamp(l9_838,l9_839,l9_840);
float l9_844=step(abs(l9_838-l9_843),9.9999997e-06);
l9_842*=(l9_844+((1.0-float(l9_841))*(1.0-l9_844)));
l9_838=l9_843;
l9_834=l9_838;
l9_837=l9_842;
}
l9_778.y=l9_834;
l9_788=l9_837;
float2 l9_845=l9_778;
int l9_846=l9_776;
int l9_847=l9_777;
float l9_848=l9_786;
float2 l9_849=l9_845;
int l9_850=l9_846;
int l9_851=l9_847;
float3 l9_852=float3(0.0);
if (l9_850==0)
{
l9_852=float3(l9_849,0.0);
}
else
{
if (l9_850==1)
{
l9_852=float3(l9_849.x,(l9_849.y*0.5)+(0.5-(float(l9_851)*0.5)),0.0);
}
else
{
l9_852=float3(l9_849,float(l9_851));
}
}
float3 l9_853=l9_852;
float3 l9_854=l9_853;
float2 l9_855=l9_854.xy;
float l9_856=l9_848;
float4 l9_857=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_855,bias(l9_856));
float4 l9_858=l9_857;
float4 l9_859=l9_858;
if (l9_784)
{
l9_859=mix(l9_785,l9_859,float4(l9_788));
}
float4 l9_860=l9_859;
float4 l9_861=l9_860;
l9_768=l9_861;
float4 l9_862=float4(0.0);
float4 l9_863=(*sc_set0.UserUniforms).baseColor;
l9_862=l9_863;
float4 l9_864=float4(0.0);
l9_864=l9_768*l9_862;
l9_762=l9_864;
l9_765=l9_762;
}
else
{
float4 l9_865=float4(0.0);
float4 l9_866=(*sc_set0.UserUniforms).baseColor;
l9_865=l9_866;
l9_763=l9_865;
l9_765=l9_763;
}
l9_761=l9_765;
float4 l9_867=float4(0.0);
l9_867=float4(l9_760)*l9_761;
float4 l9_868=float4(0.0);
float4 l9_869=l9_867;
float4 l9_870=l9_869;
bool l9_871=(*sc_set0.UserUniforms).PreviewEnabled==1;
bool l9_872;
if (l9_871)
{
l9_872=!PreviewInfo.Saved;
}
else
{
l9_872=l9_871;
}
bool l9_873;
if (l9_872)
{
l9_873=42==(*sc_set0.UserUniforms).PreviewNodeID;
}
else
{
l9_873=l9_872;
}
if (l9_873)
{
PreviewInfo.Saved=true;
PreviewInfo.Color=l9_870;
PreviewInfo.Color.w=1.0;
}
l9_868=l9_870;
l9_476=l9_868;
l9_478=l9_476;
}
l9_474=l9_478;
param_1=l9_474;
param_2=param_1;
}
Result_N66=param_2;
FinalColor=Result_N66;
float param_4=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_4<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_874=gl_FragCoord;
float2 l9_875=floor(mod(l9_874.xy,float2(4.0)));
float l9_876=(mod(dot(l9_875,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_4<l9_876)
{
discard_fragment();
}
}
float4 param_5=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_877=param_5;
float4 l9_878=l9_877;
float l9_879=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_879=l9_878.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_879=fast::clamp(l9_878.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_879=fast::clamp(dot(l9_878.xyz,float3(l9_878.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_879=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_879=(1.0-dot(l9_878.xyz,float3(0.33333001)))*l9_878.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_879=(1.0-fast::clamp(dot(l9_878.xyz,float3(1.0)),0.0,1.0))*l9_878.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_879=fast::clamp(dot(l9_878.xyz,float3(1.0)),0.0,1.0)*l9_878.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_879=fast::clamp(dot(l9_878.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_879=fast::clamp(dot(l9_878.xyz,float3(1.0)),0.0,1.0)*l9_878.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_879=dot(l9_878.xyz,float3(0.33333001))*l9_878.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_879=1.0-fast::clamp(dot(l9_878.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_879=fast::clamp(dot(l9_878.xyz,float3(1.0)),0.0,1.0);
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
float l9_880=l9_879;
float l9_881=l9_880;
float l9_882=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_881;
float3 l9_883=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_877.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_884=float4(l9_883.x,l9_883.y,l9_883.z,l9_882);
param_5=l9_884;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_5=float4(param_5.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_885=param_5;
float4 l9_886=float4(0.0);
float4 l9_887=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_888=out.FragColor0;
float4 l9_889=l9_888;
if ((int(sc_UseFramebufferFetchMarker_tmp)!=0))
{
l9_889.x+=(*sc_set0.UserUniforms)._sc_framebufferFetchMarker;
}
float4 l9_890=l9_889;
l9_887=l9_890;
}
else
{
float4 l9_891=gl_FragCoord;
float2 l9_892=l9_891.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_893=l9_892;
float2 l9_894=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_895=1;
int l9_896=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_896=0;
}
else
{
l9_896=in.varStereoViewID;
}
int l9_897=l9_896;
int l9_898=l9_897;
float3 l9_899=float3(l9_893,0.0);
int l9_900=l9_895;
int l9_901=l9_898;
if (l9_900==1)
{
l9_899.y=((2.0*l9_899.y)+float(l9_901))-1.0;
}
float2 l9_902=l9_899.xy;
l9_894=l9_902;
}
else
{
l9_894=l9_893;
}
float2 l9_903=l9_894;
float2 l9_904=l9_903;
float2 l9_905=l9_904;
int l9_906=0;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_907=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_907=0;
}
else
{
l9_907=in.varStereoViewID;
}
int l9_908=l9_907;
l9_906=1-l9_908;
}
else
{
int l9_909=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_909=0;
}
else
{
l9_909=in.varStereoViewID;
}
int l9_910=l9_909;
l9_906=l9_910;
}
int l9_911=l9_906;
float2 l9_912=l9_905;
int l9_913=l9_911;
float2 l9_914=l9_912;
int l9_915=l9_913;
float l9_916=0.0;
float4 l9_917=float4(0.0);
float2 l9_918=l9_914;
int l9_919=sc_ScreenTextureLayout_tmp;
int l9_920=l9_915;
float l9_921=l9_916;
float2 l9_922=l9_918;
int l9_923=l9_919;
int l9_924=l9_920;
float3 l9_925=float3(0.0);
if (l9_923==0)
{
l9_925=float3(l9_922,0.0);
}
else
{
if (l9_923==1)
{
l9_925=float3(l9_922.x,(l9_922.y*0.5)+(0.5-(float(l9_924)*0.5)),0.0);
}
else
{
l9_925=float3(l9_922,float(l9_924));
}
}
float3 l9_926=l9_925;
float3 l9_927=l9_926;
float2 l9_928=l9_927.xy;
float l9_929=l9_921;
float4 l9_930=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_928,bias(l9_929));
float4 l9_931=l9_930;
l9_917=l9_931;
float4 l9_932=l9_917;
float4 l9_933=l9_932;
float4 l9_934=l9_933;
l9_887=l9_934;
}
float4 l9_935=l9_887;
float4 l9_936=l9_935;
float3 l9_937=l9_936.xyz;
float3 l9_938=l9_937;
float3 l9_939=l9_885.xyz;
float3 l9_940=definedBlend(l9_938,l9_939,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_886=float4(l9_940.x,l9_940.y,l9_940.z,l9_886.w);
float3 l9_941=mix(l9_937,l9_886.xyz,float3(l9_885.w));
l9_886=float4(l9_941.x,l9_941.y,l9_941.z,l9_886.w);
l9_886.w=1.0;
float4 l9_942=l9_886;
param_5=l9_942;
}
else
{
float4 l9_943=param_5;
float4 l9_944=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_944=float4(mix(float3(1.0),l9_943.xyz,float3(l9_943.w)),l9_943.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_945=l9_943.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_945=fast::clamp(l9_945,0.0,1.0);
}
l9_944=float4(l9_943.xyz*l9_945,l9_945);
}
else
{
l9_944=l9_943;
}
}
float4 l9_946=l9_944;
param_5=l9_946;
}
}
}
float4 l9_947=param_5;
FinalColor=l9_947;
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
float4 l9_948=float4(0.0);
if ((int(sc_ShaderComplexityAnalyzer_tmp)!=0))
{
l9_948=float4((*sc_set0.UserUniforms).shaderComplexityValue/255.0,0.0,0.0,1.0);
}
else
{
l9_948=float4(0.0);
}
float4 l9_949=l9_948;
float4 Cost=l9_949;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_6=in.varPos;
float4 param_7=FinalColor;
FinalColor=outputMotionVectorsIfNeeded(param_6,param_7,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_8=FinalColor;
float4 l9_950=param_8;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_950.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_950;
return out;
}
} // FRAGMENT SHADER
