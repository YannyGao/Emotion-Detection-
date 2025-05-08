#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_BACKEND_SHADER_FLAGS_END__
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
//sampler sampler intensityTextureSmpSC 0:18
//sampler sampler opacityTexSmpSC 0:19
//sampler sampler sc_ScreenTextureSmpSC 0:24
//sampler sampler screenTextureSmpSC 0:27
//texture texture2D intensityTexture 0:1:0:18
//texture texture2D opacityTex 0:2:0:19
//texture texture2D sc_ScreenTexture 0:14:0:24
//texture texture2D screenTexture 0:17:0:27
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:28:4496 {
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
//float alphaTestThreshold 4000
//float4 screenTextureSize 4016
//float3x3 screenTextureTransform 4064
//float4 screenTextureUvMinMax 4112
//float4 screenTextureBorderColor 4128
//float blurFactor 4144
//float4 opacityTexSize 4160
//float3x3 opacityTexTransform 4208
//float4 opacityTexUvMinMax 4256
//float4 opacityTexBorderColor 4272
//float opacityblurFactor 4288
//float Port_Input1_N045 4308
//float2 Port_Item0_N084 4320
//float2 Port_Item1_N084 4328
//float2 Port_Item2_N084 4336
//float2 Port_Item3_N084 4344
//float2 Port_Item4_N084 4352
//float2 Port_Item5_N084 4360
//float2 Port_Item6_N084 4368
//float2 Port_Item7_N084 4376
//float Port_Input2_N105 4384
//float Port_Input1_N010 4404
//float2 Port_Item0_N021 4416
//float2 Port_Item1_N021 4424
//float2 Port_Item2_N021 4432
//float2 Port_Item3_N021 4440
//float2 Port_Item4_N021 4448
//float2 Port_Item5_N021 4456
//float2 Port_Item6_N021 4464
//float2 Port_Item7_N021 4472
//float Port_Input2_N026 4480
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 31
//spec_const bool SC_USE_CLAMP_TO_BORDER_opacityTex 32
//spec_const bool SC_USE_CLAMP_TO_BORDER_screenTexture 33
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 34
//spec_const bool SC_USE_UV_MIN_MAX_opacityTex 35
//spec_const bool SC_USE_UV_MIN_MAX_screenTexture 36
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 37
//spec_const bool SC_USE_UV_TRANSFORM_opacityTex 38
//spec_const bool SC_USE_UV_TRANSFORM_screenTexture 39
//spec_const bool Tweak_N16 40
//spec_const bool UseViewSpaceDepthVariant 41
//spec_const bool intensityTextureHasSwappedViews 42
//spec_const bool opacityTexHasSwappedViews 43
//spec_const bool sc_BlendMode_AddWithAlphaFactor 44
//spec_const bool sc_BlendMode_Add 45
//spec_const bool sc_BlendMode_AlphaTest 46
//spec_const bool sc_BlendMode_AlphaToCoverage 47
//spec_const bool sc_BlendMode_ColoredGlass 48
//spec_const bool sc_BlendMode_Custom 49
//spec_const bool sc_BlendMode_Max 50
//spec_const bool sc_BlendMode_Min 51
//spec_const bool sc_BlendMode_MultiplyOriginal 52
//spec_const bool sc_BlendMode_Multiply 53
//spec_const bool sc_BlendMode_Normal 54
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 55
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 56
//spec_const bool sc_BlendMode_PremultipliedAlpha 57
//spec_const bool sc_BlendMode_Screen 58
//spec_const bool sc_DepthOnly 59
//spec_const bool sc_FramebufferFetch 60
//spec_const bool sc_MotionVectorsPass 61
//spec_const bool sc_OITCompositingPass 62
//spec_const bool sc_OITDepthBoundsPass 63
//spec_const bool sc_OITDepthGatherPass 64
//spec_const bool sc_ProjectiveShadowsCaster 65
//spec_const bool sc_ProjectiveShadowsReceiver 66
//spec_const bool sc_RenderAlphaToColor 67
//spec_const bool sc_ScreenTextureHasSwappedViews 68
//spec_const bool sc_ShaderComplexityAnalyzer 69
//spec_const bool sc_TAAEnabled 70
//spec_const bool sc_UseFramebufferFetchMarker 71
//spec_const bool sc_VertexBlendingUseNormals 72
//spec_const bool sc_VertexBlending 73
//spec_const bool screenTextureHasSwappedViews 74
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 75
//spec_const int SC_SOFTWARE_WRAP_MODE_U_opacityTex 76
//spec_const int SC_SOFTWARE_WRAP_MODE_U_screenTexture 77
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 78
//spec_const int SC_SOFTWARE_WRAP_MODE_V_opacityTex 79
//spec_const int SC_SOFTWARE_WRAP_MODE_V_screenTexture 80
//spec_const int intensityTextureLayout 81
//spec_const int opacityTexLayout 82
//spec_const int sc_DepthBufferMode 83
//spec_const int sc_RenderingSpace 84
//spec_const int sc_ScreenTextureLayout 85
//spec_const int sc_ShaderCacheConstant 86
//spec_const int sc_SkinBonesCount 87
//spec_const int sc_StereoRenderingMode 88
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 89
//spec_const int screenTextureLayout 90
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
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_opacityTex) ? SC_USE_CLAMP_TO_BORDER_opacityTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_screenTexture [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_screenTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_screenTexture) ? SC_USE_CLAMP_TO_BORDER_screenTexture : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(34)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_opacityTex [[function_constant(35)]];
constant bool SC_USE_UV_MIN_MAX_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_opacityTex) ? SC_USE_UV_MIN_MAX_opacityTex : false;
constant bool SC_USE_UV_MIN_MAX_screenTexture [[function_constant(36)]];
constant bool SC_USE_UV_MIN_MAX_screenTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_screenTexture) ? SC_USE_UV_MIN_MAX_screenTexture : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(37)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_opacityTex [[function_constant(38)]];
constant bool SC_USE_UV_TRANSFORM_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_opacityTex) ? SC_USE_UV_TRANSFORM_opacityTex : false;
constant bool SC_USE_UV_TRANSFORM_screenTexture [[function_constant(39)]];
constant bool SC_USE_UV_TRANSFORM_screenTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_screenTexture) ? SC_USE_UV_TRANSFORM_screenTexture : false;
constant bool Tweak_N16 [[function_constant(40)]];
constant bool Tweak_N16_tmp = is_function_constant_defined(Tweak_N16) ? Tweak_N16 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(41)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool intensityTextureHasSwappedViews [[function_constant(42)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool opacityTexHasSwappedViews [[function_constant(43)]];
constant bool opacityTexHasSwappedViews_tmp = is_function_constant_defined(opacityTexHasSwappedViews) ? opacityTexHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(44)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(45)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(46)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(47)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(48)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(49)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(50)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(51)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(52)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(53)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(54)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(55)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(56)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(57)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(58)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(59)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(60)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(61)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(62)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(63)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(64)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(65)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(66)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(67)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(68)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_ShaderComplexityAnalyzer [[function_constant(69)]];
constant bool sc_ShaderComplexityAnalyzer_tmp = is_function_constant_defined(sc_ShaderComplexityAnalyzer) ? sc_ShaderComplexityAnalyzer : false;
constant bool sc_TAAEnabled [[function_constant(70)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_UseFramebufferFetchMarker [[function_constant(71)]];
constant bool sc_UseFramebufferFetchMarker_tmp = is_function_constant_defined(sc_UseFramebufferFetchMarker) ? sc_UseFramebufferFetchMarker : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(72)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(73)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant bool screenTextureHasSwappedViews [[function_constant(74)]];
constant bool screenTextureHasSwappedViews_tmp = is_function_constant_defined(screenTextureHasSwappedViews) ? screenTextureHasSwappedViews : false;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(75)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex [[function_constant(76)]];
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_opacityTex) ? SC_SOFTWARE_WRAP_MODE_U_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_screenTexture [[function_constant(77)]];
constant int SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_screenTexture) ? SC_SOFTWARE_WRAP_MODE_U_screenTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(78)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex [[function_constant(79)]];
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_opacityTex) ? SC_SOFTWARE_WRAP_MODE_V_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_screenTexture [[function_constant(80)]];
constant int SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_screenTexture) ? SC_SOFTWARE_WRAP_MODE_V_screenTexture : -1;
constant int intensityTextureLayout [[function_constant(81)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int opacityTexLayout [[function_constant(82)]];
constant int opacityTexLayout_tmp = is_function_constant_defined(opacityTexLayout) ? opacityTexLayout : 0;
constant int sc_DepthBufferMode [[function_constant(83)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(84)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(85)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(86)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(87)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(88)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(89)]];
constant int sc_StereoRendering_IsClipDistanceEnabled_tmp = is_function_constant_defined(sc_StereoRendering_IsClipDistanceEnabled) ? sc_StereoRendering_IsClipDistanceEnabled : 0;
constant int screenTextureLayout [[function_constant(90)]];
constant int screenTextureLayout_tmp = is_function_constant_defined(screenTextureLayout) ? screenTextureLayout : 0;

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
float4 screenTextureSize;
float4 screenTextureDims;
float4 screenTextureView;
float3x3 screenTextureTransform;
float4 screenTextureUvMinMax;
float4 screenTextureBorderColor;
float blurFactor;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float opacityblurFactor;
float2 Port_Import_N042;
float Port_Import_N044;
float Port_Input1_N045;
float2 Port_Import_N047;
float2 Port_Item0_N084;
float2 Port_Item1_N084;
float2 Port_Item2_N084;
float2 Port_Item3_N084;
float2 Port_Item4_N084;
float2 Port_Item5_N084;
float2 Port_Item6_N084;
float2 Port_Item7_N084;
float Port_Input2_N105;
float2 Port_Import_N006;
float Port_Import_N007;
float Port_Input1_N010;
float2 Port_Import_N013;
float2 Port_Item0_N021;
float2 Port_Item1_N021;
float2 Port_Item2_N021;
float2 Port_Item3_N021;
float2 Port_Item4_N021;
float2 Port_Item5_N021;
float2 Port_Item6_N021;
float2 Port_Item7_N021;
float Port_Input2_N026;
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
texture2d<float> intensityTexture [[id(1)]];
texture2d<float> opacityTex [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
texture2d<float> screenTexture [[id(17)]];
sampler intensityTextureSmpSC [[id(18)]];
sampler opacityTexSmpSC [[id(19)]];
sampler sc_ScreenTextureSmpSC [[id(24)]];
sampler screenTextureSmpSC [[id(27)]];
constant userUniformsObj* UserUniforms [[id(28)]];
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
float3 WorldPosition=out.varPos;
float3 WorldNormal=out.varNormal;
float3 WorldTangent=out.varTangent.xyz;
if ((*sc_set0.UserUniforms).PreviewEnabled==1)
{
WorldPosition=out.varPos;
WorldNormal=out.varNormal;
WorldTangent=out.varTangent.xyz;
}
sc_Vertex_t param_1=v;
float3 param_2=WorldPosition;
float3 param_3=WorldNormal;
float3 param_4=WorldTangent;
float4 param_5=v.position;
out.varPos=param_2;
out.varNormal=normalize(param_3);
float3 l9_119=normalize(param_4);
out.varTangent=float4(l9_119.x,l9_119.y,l9_119.z,out.varTangent.w);
out.varTangent.w=in.tangent.w;
if ((int(UseViewSpaceDepthVariant_tmp)!=0)&&(((int(sc_OITDepthGatherPass_tmp)!=0)||(int(sc_OITCompositingPass_tmp)!=0))||(int(sc_OITDepthBoundsPass_tmp)!=0)))
{
float4 l9_120=param_1.position;
float4 l9_121=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
int l9_122=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_122=0;
}
else
{
l9_122=gl_InstanceIndex%2;
}
int l9_123=l9_122;
l9_121=(*sc_set0.UserUniforms).sc_ProjectionMatrixInverseArray[l9_123]*l9_120;
}
else
{
if (sc_RenderingSpace_tmp==2)
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
l9_121=(*sc_set0.UserUniforms).sc_ViewMatrixArray[l9_125]*l9_120;
}
else
{
if (sc_RenderingSpace_tmp==1)
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
l9_121=(*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_127]*l9_120;
}
else
{
l9_121=l9_120;
}
}
}
float4 l9_128=l9_121;
out.varViewSpaceDepth=-l9_128.z;
}
float4 l9_129=float4(0.0);
if (sc_RenderingSpace_tmp==3)
{
l9_129=param_5;
}
else
{
if (sc_RenderingSpace_tmp==4)
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
l9_129=((*sc_set0.UserUniforms).sc_ModelViewMatrixArray[l9_131]*param_1.position)*float4(1.0/(*sc_set0.UserUniforms).sc_Camera.aspect,1.0,1.0,1.0);
}
else
{
if (sc_RenderingSpace_tmp==2)
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
l9_129=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_133]*float4(out.varPos,1.0);
}
else
{
if (sc_RenderingSpace_tmp==1)
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
l9_129=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_135]*float4(out.varPos,1.0);
}
}
}
}
out.varPackedTex=float4(param_1.texture0,param_1.texture1);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float4 l9_136=param_1.position;
float4 l9_137=l9_136;
if (sc_RenderingSpace_tmp==1)
{
l9_137=(*sc_set0.UserUniforms).sc_ModelMatrix*l9_136;
}
float4 l9_138=(*sc_set0.UserUniforms).sc_ProjectorMatrix*l9_137;
float2 l9_139=((l9_138.xy/float2(l9_138.w))*0.5)+float2(0.5);
out.varShadowTex=l9_139;
}
float4 l9_140=l9_129;
if (sc_DepthBufferMode_tmp==1)
{
int l9_141=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_141=0;
}
else
{
l9_141=gl_InstanceIndex%2;
}
int l9_142=l9_141;
if ((*sc_set0.UserUniforms).sc_ProjectionMatrixArray[l9_142][2].w!=0.0)
{
float l9_143=2.0/log2((*sc_set0.UserUniforms).sc_Camera.clipPlanes.y+1.0);
l9_140.z=((log2(fast::max((*sc_set0.UserUniforms).sc_Camera.clipPlanes.x,1.0+l9_140.w))*l9_143)-1.0)*l9_140.w;
}
}
float4 l9_144=l9_140;
l9_129=l9_144;
float4 l9_145=l9_129;
if ((int(sc_TAAEnabled_tmp)!=0))
{
float2 l9_146=l9_145.xy+((*sc_set0.UserUniforms).sc_TAAJitterOffset*l9_145.w);
l9_145=float4(l9_146.x,l9_146.y,l9_145.z,l9_145.w);
}
float4 l9_147=l9_145;
l9_129=l9_147;
float4 l9_148=l9_129;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_148.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
if (sc_StereoRenderingMode_tmp>0)
{
out.varStereoViewID=gl_InstanceIndex%2;
}
float4 l9_149=l9_148;
if (sc_StereoRenderingMode_tmp==1)
{
float l9_150=dot(l9_149,(*sc_set0.UserUniforms).sc_StereoClipPlanes[gl_InstanceIndex%2]);
float l9_151=l9_150;
if (sc_StereoRendering_IsClipDistanceEnabled_tmp==1)
{
}
else
{
out.varClipDistance=l9_151;
}
}
float4 l9_152=float4(l9_148.x,-l9_148.y,(l9_148.z*0.5)+(l9_148.w*0.5),l9_148.w);
out.gl_Position=l9_152;
v=param_1;
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
float2 gScreenCoord;
float Loop_Index_ID0;
float Loop_Ratio_ID0;
float Loop_Count_ID0;
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
float4 screenTextureSize;
float4 screenTextureDims;
float4 screenTextureView;
float3x3 screenTextureTransform;
float4 screenTextureUvMinMax;
float4 screenTextureBorderColor;
float blurFactor;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float opacityblurFactor;
float2 Port_Import_N042;
float Port_Import_N044;
float Port_Input1_N045;
float2 Port_Import_N047;
float2 Port_Item0_N084;
float2 Port_Item1_N084;
float2 Port_Item2_N084;
float2 Port_Item3_N084;
float2 Port_Item4_N084;
float2 Port_Item5_N084;
float2 Port_Item6_N084;
float2 Port_Item7_N084;
float Port_Input2_N105;
float2 Port_Import_N006;
float Port_Import_N007;
float Port_Input1_N010;
float2 Port_Import_N013;
float2 Port_Item0_N021;
float2 Port_Item1_N021;
float2 Port_Item2_N021;
float2 Port_Item3_N021;
float2 Port_Item4_N021;
float2 Port_Item5_N021;
float2 Port_Item6_N021;
float2 Port_Item7_N021;
float Port_Input2_N026;
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
texture2d<float> intensityTexture [[id(1)]];
texture2d<float> opacityTex [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
texture2d<float> screenTexture [[id(17)]];
sampler intensityTextureSmpSC [[id(18)]];
sampler opacityTexSmpSC [[id(19)]];
sampler sc_ScreenTextureSmpSC [[id(24)]];
sampler screenTextureSmpSC [[id(27)]];
constant userUniformsObj* UserUniforms [[id(28)]];
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
float4 l9_2=gl_FragCoord;
float2 l9_3=l9_2.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_4=l9_3;
float2 l9_5=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_6=1;
int l9_7=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_7=0;
}
else
{
l9_7=in.varStereoViewID;
}
int l9_8=l9_7;
int l9_9=l9_8;
float3 l9_10=float3(l9_4,0.0);
int l9_11=l9_6;
int l9_12=l9_9;
if (l9_11==1)
{
l9_10.y=((2.0*l9_10.y)+float(l9_12))-1.0;
}
float2 l9_13=l9_10.xy;
l9_5=l9_13;
}
else
{
l9_5=l9_4;
}
float2 l9_14=l9_5;
float2 l9_15=l9_14;
Globals.gScreenCoord=l9_15;
Globals.Loop_Index_ID0=0.0;
Globals.Loop_Ratio_ID0=0.0;
Globals.Loop_Count_ID0=0.0;
float4 Result_N18=float4(0.0);
float4 param=float4(0.0);
float4 param_1=float4(0.0);
ssGlobals param_3=Globals;
float4 param_2;
if ((int(Tweak_N16_tmp)!=0))
{
float2 l9_16=float2(0.0);
l9_16=param_3.gScreenCoord;
float4 l9_17=float4(0.0);
int l9_18=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_19=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_19=0;
}
else
{
l9_19=in.varStereoViewID;
}
int l9_20=l9_19;
l9_18=1-l9_20;
}
else
{
int l9_21=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_21=0;
}
else
{
l9_21=in.varStereoViewID;
}
int l9_22=l9_21;
l9_18=l9_22;
}
int l9_23=l9_18;
int l9_24=screenTextureLayout_tmp;
int l9_25=l9_23;
float2 l9_26=l9_16;
bool l9_27=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_28=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_29=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_30=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_31=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_32=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_33=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_34=0.0;
bool l9_35=l9_32&&(!l9_30);
float l9_36=1.0;
float l9_37=l9_26.x;
int l9_38=l9_29.x;
if (l9_38==1)
{
l9_37=fract(l9_37);
}
else
{
if (l9_38==2)
{
float l9_39=fract(l9_37);
float l9_40=l9_37-l9_39;
float l9_41=step(0.25,fract(l9_40*0.5));
l9_37=mix(l9_39,1.0-l9_39,fast::clamp(l9_41,0.0,1.0));
}
}
l9_26.x=l9_37;
float l9_42=l9_26.y;
int l9_43=l9_29.y;
if (l9_43==1)
{
l9_42=fract(l9_42);
}
else
{
if (l9_43==2)
{
float l9_44=fract(l9_42);
float l9_45=l9_42-l9_44;
float l9_46=step(0.25,fract(l9_45*0.5));
l9_42=mix(l9_44,1.0-l9_44,fast::clamp(l9_46,0.0,1.0));
}
}
l9_26.y=l9_42;
if (l9_30)
{
bool l9_47=l9_32;
bool l9_48;
if (l9_47)
{
l9_48=l9_29.x==3;
}
else
{
l9_48=l9_47;
}
float l9_49=l9_26.x;
float l9_50=l9_31.x;
float l9_51=l9_31.z;
bool l9_52=l9_48;
float l9_53=l9_36;
float l9_54=fast::clamp(l9_49,l9_50,l9_51);
float l9_55=step(abs(l9_49-l9_54),9.9999997e-06);
l9_53*=(l9_55+((1.0-float(l9_52))*(1.0-l9_55)));
l9_49=l9_54;
l9_26.x=l9_49;
l9_36=l9_53;
bool l9_56=l9_32;
bool l9_57;
if (l9_56)
{
l9_57=l9_29.y==3;
}
else
{
l9_57=l9_56;
}
float l9_58=l9_26.y;
float l9_59=l9_31.y;
float l9_60=l9_31.w;
bool l9_61=l9_57;
float l9_62=l9_36;
float l9_63=fast::clamp(l9_58,l9_59,l9_60);
float l9_64=step(abs(l9_58-l9_63),9.9999997e-06);
l9_62*=(l9_64+((1.0-float(l9_61))*(1.0-l9_64)));
l9_58=l9_63;
l9_26.y=l9_58;
l9_36=l9_62;
}
float2 l9_65=l9_26;
bool l9_66=l9_27;
float3x3 l9_67=l9_28;
if (l9_66)
{
l9_65=float2((l9_67*float3(l9_65,1.0)).xy);
}
float2 l9_68=l9_65;
float2 l9_69=l9_68;
float2 l9_70=l9_69;
l9_26=l9_70;
float l9_71=l9_26.x;
int l9_72=l9_29.x;
bool l9_73=l9_35;
float l9_74=l9_36;
if ((l9_72==0)||(l9_72==3))
{
float l9_75=l9_71;
float l9_76=0.0;
float l9_77=1.0;
bool l9_78=l9_73;
float l9_79=l9_74;
float l9_80=fast::clamp(l9_75,l9_76,l9_77);
float l9_81=step(abs(l9_75-l9_80),9.9999997e-06);
l9_79*=(l9_81+((1.0-float(l9_78))*(1.0-l9_81)));
l9_75=l9_80;
l9_71=l9_75;
l9_74=l9_79;
}
l9_26.x=l9_71;
l9_36=l9_74;
float l9_82=l9_26.y;
int l9_83=l9_29.y;
bool l9_84=l9_35;
float l9_85=l9_36;
if ((l9_83==0)||(l9_83==3))
{
float l9_86=l9_82;
float l9_87=0.0;
float l9_88=1.0;
bool l9_89=l9_84;
float l9_90=l9_85;
float l9_91=fast::clamp(l9_86,l9_87,l9_88);
float l9_92=step(abs(l9_86-l9_91),9.9999997e-06);
l9_90*=(l9_92+((1.0-float(l9_89))*(1.0-l9_92)));
l9_86=l9_91;
l9_82=l9_86;
l9_85=l9_90;
}
l9_26.y=l9_82;
l9_36=l9_85;
float2 l9_93=l9_26;
int l9_94=l9_24;
int l9_95=l9_25;
float l9_96=l9_34;
float2 l9_97=l9_93;
int l9_98=l9_94;
int l9_99=l9_95;
float3 l9_100=float3(0.0);
if (l9_98==0)
{
l9_100=float3(l9_97,0.0);
}
else
{
if (l9_98==1)
{
l9_100=float3(l9_97.x,(l9_97.y*0.5)+(0.5-(float(l9_99)*0.5)),0.0);
}
else
{
l9_100=float3(l9_97,float(l9_99));
}
}
float3 l9_101=l9_100;
float3 l9_102=l9_101;
float2 l9_103=l9_102.xy;
float l9_104=l9_96;
float4 l9_105=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_103,bias(l9_104));
float4 l9_106=l9_105;
float4 l9_107=l9_106;
if (l9_32)
{
l9_107=mix(l9_33,l9_107,float4(l9_36));
}
float4 l9_108=l9_107;
l9_17=l9_108;
float2 l9_109=float2(0.0);
l9_109=l9_16;
float l9_110=0.0;
float l9_111=(*sc_set0.UserUniforms).blurFactor;
l9_110=l9_111;
float l9_112=0.0;
l9_112=l9_110;
float l9_113=0.0;
l9_113=l9_112+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_114=float4(0.0);
int l9_115=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_116=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_116=0;
}
else
{
l9_116=in.varStereoViewID;
}
int l9_117=l9_116;
l9_115=1-l9_117;
}
else
{
int l9_118=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_118=0;
}
else
{
l9_118=in.varStereoViewID;
}
int l9_119=l9_118;
l9_115=l9_119;
}
int l9_120=l9_115;
int l9_121=screenTextureLayout_tmp;
int l9_122=l9_120;
float2 l9_123=l9_109;
bool l9_124=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_125=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_126=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_127=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_128=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_129=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_130=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_131=l9_113;
bool l9_132=l9_129&&(!l9_127);
float l9_133=1.0;
float l9_134=l9_123.x;
int l9_135=l9_126.x;
if (l9_135==1)
{
l9_134=fract(l9_134);
}
else
{
if (l9_135==2)
{
float l9_136=fract(l9_134);
float l9_137=l9_134-l9_136;
float l9_138=step(0.25,fract(l9_137*0.5));
l9_134=mix(l9_136,1.0-l9_136,fast::clamp(l9_138,0.0,1.0));
}
}
l9_123.x=l9_134;
float l9_139=l9_123.y;
int l9_140=l9_126.y;
if (l9_140==1)
{
l9_139=fract(l9_139);
}
else
{
if (l9_140==2)
{
float l9_141=fract(l9_139);
float l9_142=l9_139-l9_141;
float l9_143=step(0.25,fract(l9_142*0.5));
l9_139=mix(l9_141,1.0-l9_141,fast::clamp(l9_143,0.0,1.0));
}
}
l9_123.y=l9_139;
if (l9_127)
{
bool l9_144=l9_129;
bool l9_145;
if (l9_144)
{
l9_145=l9_126.x==3;
}
else
{
l9_145=l9_144;
}
float l9_146=l9_123.x;
float l9_147=l9_128.x;
float l9_148=l9_128.z;
bool l9_149=l9_145;
float l9_150=l9_133;
float l9_151=fast::clamp(l9_146,l9_147,l9_148);
float l9_152=step(abs(l9_146-l9_151),9.9999997e-06);
l9_150*=(l9_152+((1.0-float(l9_149))*(1.0-l9_152)));
l9_146=l9_151;
l9_123.x=l9_146;
l9_133=l9_150;
bool l9_153=l9_129;
bool l9_154;
if (l9_153)
{
l9_154=l9_126.y==3;
}
else
{
l9_154=l9_153;
}
float l9_155=l9_123.y;
float l9_156=l9_128.y;
float l9_157=l9_128.w;
bool l9_158=l9_154;
float l9_159=l9_133;
float l9_160=fast::clamp(l9_155,l9_156,l9_157);
float l9_161=step(abs(l9_155-l9_160),9.9999997e-06);
l9_159*=(l9_161+((1.0-float(l9_158))*(1.0-l9_161)));
l9_155=l9_160;
l9_123.y=l9_155;
l9_133=l9_159;
}
float2 l9_162=l9_123;
bool l9_163=l9_124;
float3x3 l9_164=l9_125;
if (l9_163)
{
l9_162=float2((l9_164*float3(l9_162,1.0)).xy);
}
float2 l9_165=l9_162;
float2 l9_166=l9_165;
float2 l9_167=l9_166;
l9_123=l9_167;
float l9_168=l9_123.x;
int l9_169=l9_126.x;
bool l9_170=l9_132;
float l9_171=l9_133;
if ((l9_169==0)||(l9_169==3))
{
float l9_172=l9_168;
float l9_173=0.0;
float l9_174=1.0;
bool l9_175=l9_170;
float l9_176=l9_171;
float l9_177=fast::clamp(l9_172,l9_173,l9_174);
float l9_178=step(abs(l9_172-l9_177),9.9999997e-06);
l9_176*=(l9_178+((1.0-float(l9_175))*(1.0-l9_178)));
l9_172=l9_177;
l9_168=l9_172;
l9_171=l9_176;
}
l9_123.x=l9_168;
l9_133=l9_171;
float l9_179=l9_123.y;
int l9_180=l9_126.y;
bool l9_181=l9_132;
float l9_182=l9_133;
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
l9_123.y=l9_179;
l9_133=l9_182;
float2 l9_190=l9_123;
int l9_191=l9_121;
int l9_192=l9_122;
float l9_193=l9_131;
float2 l9_194=l9_190;
int l9_195=l9_191;
int l9_196=l9_192;
float3 l9_197=float3(0.0);
if (l9_195==0)
{
l9_197=float3(l9_194,0.0);
}
else
{
if (l9_195==1)
{
l9_197=float3(l9_194.x,(l9_194.y*0.5)+(0.5-(float(l9_196)*0.5)),0.0);
}
else
{
l9_197=float3(l9_194,float(l9_196));
}
}
float3 l9_198=l9_197;
float3 l9_199=l9_198;
float2 l9_200=l9_199.xy;
float l9_201=l9_193;
float4 l9_202=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_200,bias(l9_201));
float4 l9_203=l9_202;
float4 l9_204=l9_203;
if (l9_129)
{
l9_204=mix(l9_130,l9_204,float4(l9_133));
}
float4 l9_205=l9_204;
l9_114=l9_205;
float4 l9_206=float4(0.0);
ssGlobals l9_207=param_3;
float4 l9_208=float4(0.0);
l9_207.Loop_Count_ID0=8.0;
float4 l9_209=l9_208;
ssGlobals l9_210=l9_207;
float4 l9_211=float4(0.0);
l9_210.Loop_Index_ID0=0.0;
l9_210.Loop_Ratio_ID0=0.0;
float2 l9_212=float2(0.0);
float2 l9_213=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_212=l9_213;
float2 l9_214=float2(0.0);
l9_214=l9_210.gScreenCoord;
float2 l9_215=float2(0.0);
l9_215=l9_214;
float2 l9_216=float2(0.0);
l9_216=l9_212;
float l9_217=0.0;
float l9_218=(*sc_set0.UserUniforms).blurFactor;
l9_217=l9_218;
float l9_219=0.0;
l9_219=l9_217;
float l9_220=0.0;
l9_220=exp2(l9_219);
float l9_221=0.0;
l9_221=l9_210.Loop_Index_ID0;
float2 l9_222=float2(0.0);
float l9_223=l9_221;
float2 l9_224=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_225=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_226=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_227=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_228=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_229=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_230=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_231=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_232[8];
l9_232[0]=l9_224;
l9_232[1]=l9_225;
l9_232[2]=l9_226;
l9_232[3]=l9_227;
l9_232[4]=l9_228;
l9_232[5]=l9_229;
l9_232[6]=l9_230;
l9_232[7]=l9_231;
int l9_233=int(fast::clamp(l9_223+9.9999997e-05,0.0,7.0));
float2 l9_234=l9_232[l9_233];
l9_222=l9_234;
float2 l9_235=float2(0.0);
l9_235=(l9_216*float2(l9_220))*l9_222;
float2 l9_236=float2(0.0);
l9_236=l9_215+l9_235;
float l9_237=0.0;
l9_237=l9_219+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_238=float4(0.0);
int l9_239=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_240=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_240=0;
}
else
{
l9_240=in.varStereoViewID;
}
int l9_241=l9_240;
l9_239=1-l9_241;
}
else
{
int l9_242=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_242=0;
}
else
{
l9_242=in.varStereoViewID;
}
int l9_243=l9_242;
l9_239=l9_243;
}
int l9_244=l9_239;
int l9_245=screenTextureLayout_tmp;
int l9_246=l9_244;
float2 l9_247=l9_236;
bool l9_248=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_249=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_250=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_251=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_252=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_253=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_254=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_255=l9_237;
bool l9_256=l9_253&&(!l9_251);
float l9_257=1.0;
float l9_258=l9_247.x;
int l9_259=l9_250.x;
if (l9_259==1)
{
l9_258=fract(l9_258);
}
else
{
if (l9_259==2)
{
float l9_260=fract(l9_258);
float l9_261=l9_258-l9_260;
float l9_262=step(0.25,fract(l9_261*0.5));
l9_258=mix(l9_260,1.0-l9_260,fast::clamp(l9_262,0.0,1.0));
}
}
l9_247.x=l9_258;
float l9_263=l9_247.y;
int l9_264=l9_250.y;
if (l9_264==1)
{
l9_263=fract(l9_263);
}
else
{
if (l9_264==2)
{
float l9_265=fract(l9_263);
float l9_266=l9_263-l9_265;
float l9_267=step(0.25,fract(l9_266*0.5));
l9_263=mix(l9_265,1.0-l9_265,fast::clamp(l9_267,0.0,1.0));
}
}
l9_247.y=l9_263;
if (l9_251)
{
bool l9_268=l9_253;
bool l9_269;
if (l9_268)
{
l9_269=l9_250.x==3;
}
else
{
l9_269=l9_268;
}
float l9_270=l9_247.x;
float l9_271=l9_252.x;
float l9_272=l9_252.z;
bool l9_273=l9_269;
float l9_274=l9_257;
float l9_275=fast::clamp(l9_270,l9_271,l9_272);
float l9_276=step(abs(l9_270-l9_275),9.9999997e-06);
l9_274*=(l9_276+((1.0-float(l9_273))*(1.0-l9_276)));
l9_270=l9_275;
l9_247.x=l9_270;
l9_257=l9_274;
bool l9_277=l9_253;
bool l9_278;
if (l9_277)
{
l9_278=l9_250.y==3;
}
else
{
l9_278=l9_277;
}
float l9_279=l9_247.y;
float l9_280=l9_252.y;
float l9_281=l9_252.w;
bool l9_282=l9_278;
float l9_283=l9_257;
float l9_284=fast::clamp(l9_279,l9_280,l9_281);
float l9_285=step(abs(l9_279-l9_284),9.9999997e-06);
l9_283*=(l9_285+((1.0-float(l9_282))*(1.0-l9_285)));
l9_279=l9_284;
l9_247.y=l9_279;
l9_257=l9_283;
}
float2 l9_286=l9_247;
bool l9_287=l9_248;
float3x3 l9_288=l9_249;
if (l9_287)
{
l9_286=float2((l9_288*float3(l9_286,1.0)).xy);
}
float2 l9_289=l9_286;
float2 l9_290=l9_289;
float2 l9_291=l9_290;
l9_247=l9_291;
float l9_292=l9_247.x;
int l9_293=l9_250.x;
bool l9_294=l9_256;
float l9_295=l9_257;
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
l9_247.x=l9_292;
l9_257=l9_295;
float l9_303=l9_247.y;
int l9_304=l9_250.y;
bool l9_305=l9_256;
float l9_306=l9_257;
if ((l9_304==0)||(l9_304==3))
{
float l9_307=l9_303;
float l9_308=0.0;
float l9_309=1.0;
bool l9_310=l9_305;
float l9_311=l9_306;
float l9_312=fast::clamp(l9_307,l9_308,l9_309);
float l9_313=step(abs(l9_307-l9_312),9.9999997e-06);
l9_311*=(l9_313+((1.0-float(l9_310))*(1.0-l9_313)));
l9_307=l9_312;
l9_303=l9_307;
l9_306=l9_311;
}
l9_247.y=l9_303;
l9_257=l9_306;
float2 l9_314=l9_247;
int l9_315=l9_245;
int l9_316=l9_246;
float l9_317=l9_255;
float2 l9_318=l9_314;
int l9_319=l9_315;
int l9_320=l9_316;
float3 l9_321=float3(0.0);
if (l9_319==0)
{
l9_321=float3(l9_318,0.0);
}
else
{
if (l9_319==1)
{
l9_321=float3(l9_318.x,(l9_318.y*0.5)+(0.5-(float(l9_320)*0.5)),0.0);
}
else
{
l9_321=float3(l9_318,float(l9_320));
}
}
float3 l9_322=l9_321;
float3 l9_323=l9_322;
float2 l9_324=l9_323.xy;
float l9_325=l9_317;
float4 l9_326=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_324,bias(l9_325));
float4 l9_327=l9_326;
float4 l9_328=l9_327;
if (l9_253)
{
l9_328=mix(l9_254,l9_328,float4(l9_257));
}
float4 l9_329=l9_328;
l9_238=l9_329;
l9_211=l9_238;
l9_209+=l9_211;
l9_208=l9_209;
float4 l9_330=l9_208;
ssGlobals l9_331=l9_207;
float4 l9_332=float4(0.0);
l9_331.Loop_Index_ID0=1.0;
l9_331.Loop_Ratio_ID0=0.142857;
float2 l9_333=float2(0.0);
float2 l9_334=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_333=l9_334;
float2 l9_335=float2(0.0);
l9_335=l9_331.gScreenCoord;
float2 l9_336=float2(0.0);
l9_336=l9_335;
float2 l9_337=float2(0.0);
l9_337=l9_333;
float l9_338=0.0;
float l9_339=(*sc_set0.UserUniforms).blurFactor;
l9_338=l9_339;
float l9_340=0.0;
l9_340=l9_338;
float l9_341=0.0;
l9_341=exp2(l9_340);
float l9_342=0.0;
l9_342=l9_331.Loop_Index_ID0;
float2 l9_343=float2(0.0);
float l9_344=l9_342;
float2 l9_345=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_346=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_347=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_348=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_349=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_350=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_351=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_352=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_353[8];
l9_353[0]=l9_345;
l9_353[1]=l9_346;
l9_353[2]=l9_347;
l9_353[3]=l9_348;
l9_353[4]=l9_349;
l9_353[5]=l9_350;
l9_353[6]=l9_351;
l9_353[7]=l9_352;
int l9_354=int(fast::clamp(l9_344+9.9999997e-05,0.0,7.0));
float2 l9_355=l9_353[l9_354];
l9_343=l9_355;
float2 l9_356=float2(0.0);
l9_356=(l9_337*float2(l9_341))*l9_343;
float2 l9_357=float2(0.0);
l9_357=l9_336+l9_356;
float l9_358=0.0;
l9_358=l9_340+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_359=float4(0.0);
int l9_360=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
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
l9_360=1-l9_362;
}
else
{
int l9_363=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_363=0;
}
else
{
l9_363=in.varStereoViewID;
}
int l9_364=l9_363;
l9_360=l9_364;
}
int l9_365=l9_360;
int l9_366=screenTextureLayout_tmp;
int l9_367=l9_365;
float2 l9_368=l9_357;
bool l9_369=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_370=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_371=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_372=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_373=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_374=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_375=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_376=l9_358;
bool l9_377=l9_374&&(!l9_372);
float l9_378=1.0;
float l9_379=l9_368.x;
int l9_380=l9_371.x;
if (l9_380==1)
{
l9_379=fract(l9_379);
}
else
{
if (l9_380==2)
{
float l9_381=fract(l9_379);
float l9_382=l9_379-l9_381;
float l9_383=step(0.25,fract(l9_382*0.5));
l9_379=mix(l9_381,1.0-l9_381,fast::clamp(l9_383,0.0,1.0));
}
}
l9_368.x=l9_379;
float l9_384=l9_368.y;
int l9_385=l9_371.y;
if (l9_385==1)
{
l9_384=fract(l9_384);
}
else
{
if (l9_385==2)
{
float l9_386=fract(l9_384);
float l9_387=l9_384-l9_386;
float l9_388=step(0.25,fract(l9_387*0.5));
l9_384=mix(l9_386,1.0-l9_386,fast::clamp(l9_388,0.0,1.0));
}
}
l9_368.y=l9_384;
if (l9_372)
{
bool l9_389=l9_374;
bool l9_390;
if (l9_389)
{
l9_390=l9_371.x==3;
}
else
{
l9_390=l9_389;
}
float l9_391=l9_368.x;
float l9_392=l9_373.x;
float l9_393=l9_373.z;
bool l9_394=l9_390;
float l9_395=l9_378;
float l9_396=fast::clamp(l9_391,l9_392,l9_393);
float l9_397=step(abs(l9_391-l9_396),9.9999997e-06);
l9_395*=(l9_397+((1.0-float(l9_394))*(1.0-l9_397)));
l9_391=l9_396;
l9_368.x=l9_391;
l9_378=l9_395;
bool l9_398=l9_374;
bool l9_399;
if (l9_398)
{
l9_399=l9_371.y==3;
}
else
{
l9_399=l9_398;
}
float l9_400=l9_368.y;
float l9_401=l9_373.y;
float l9_402=l9_373.w;
bool l9_403=l9_399;
float l9_404=l9_378;
float l9_405=fast::clamp(l9_400,l9_401,l9_402);
float l9_406=step(abs(l9_400-l9_405),9.9999997e-06);
l9_404*=(l9_406+((1.0-float(l9_403))*(1.0-l9_406)));
l9_400=l9_405;
l9_368.y=l9_400;
l9_378=l9_404;
}
float2 l9_407=l9_368;
bool l9_408=l9_369;
float3x3 l9_409=l9_370;
if (l9_408)
{
l9_407=float2((l9_409*float3(l9_407,1.0)).xy);
}
float2 l9_410=l9_407;
float2 l9_411=l9_410;
float2 l9_412=l9_411;
l9_368=l9_412;
float l9_413=l9_368.x;
int l9_414=l9_371.x;
bool l9_415=l9_377;
float l9_416=l9_378;
if ((l9_414==0)||(l9_414==3))
{
float l9_417=l9_413;
float l9_418=0.0;
float l9_419=1.0;
bool l9_420=l9_415;
float l9_421=l9_416;
float l9_422=fast::clamp(l9_417,l9_418,l9_419);
float l9_423=step(abs(l9_417-l9_422),9.9999997e-06);
l9_421*=(l9_423+((1.0-float(l9_420))*(1.0-l9_423)));
l9_417=l9_422;
l9_413=l9_417;
l9_416=l9_421;
}
l9_368.x=l9_413;
l9_378=l9_416;
float l9_424=l9_368.y;
int l9_425=l9_371.y;
bool l9_426=l9_377;
float l9_427=l9_378;
if ((l9_425==0)||(l9_425==3))
{
float l9_428=l9_424;
float l9_429=0.0;
float l9_430=1.0;
bool l9_431=l9_426;
float l9_432=l9_427;
float l9_433=fast::clamp(l9_428,l9_429,l9_430);
float l9_434=step(abs(l9_428-l9_433),9.9999997e-06);
l9_432*=(l9_434+((1.0-float(l9_431))*(1.0-l9_434)));
l9_428=l9_433;
l9_424=l9_428;
l9_427=l9_432;
}
l9_368.y=l9_424;
l9_378=l9_427;
float2 l9_435=l9_368;
int l9_436=l9_366;
int l9_437=l9_367;
float l9_438=l9_376;
float2 l9_439=l9_435;
int l9_440=l9_436;
int l9_441=l9_437;
float3 l9_442=float3(0.0);
if (l9_440==0)
{
l9_442=float3(l9_439,0.0);
}
else
{
if (l9_440==1)
{
l9_442=float3(l9_439.x,(l9_439.y*0.5)+(0.5-(float(l9_441)*0.5)),0.0);
}
else
{
l9_442=float3(l9_439,float(l9_441));
}
}
float3 l9_443=l9_442;
float3 l9_444=l9_443;
float2 l9_445=l9_444.xy;
float l9_446=l9_438;
float4 l9_447=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_445,bias(l9_446));
float4 l9_448=l9_447;
float4 l9_449=l9_448;
if (l9_374)
{
l9_449=mix(l9_375,l9_449,float4(l9_378));
}
float4 l9_450=l9_449;
l9_359=l9_450;
l9_332=l9_359;
l9_330+=l9_332;
l9_208=l9_330;
float4 l9_451=l9_208;
ssGlobals l9_452=l9_207;
float4 l9_453=float4(0.0);
l9_452.Loop_Index_ID0=2.0;
l9_452.Loop_Ratio_ID0=0.285714;
float2 l9_454=float2(0.0);
float2 l9_455=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_454=l9_455;
float2 l9_456=float2(0.0);
l9_456=l9_452.gScreenCoord;
float2 l9_457=float2(0.0);
l9_457=l9_456;
float2 l9_458=float2(0.0);
l9_458=l9_454;
float l9_459=0.0;
float l9_460=(*sc_set0.UserUniforms).blurFactor;
l9_459=l9_460;
float l9_461=0.0;
l9_461=l9_459;
float l9_462=0.0;
l9_462=exp2(l9_461);
float l9_463=0.0;
l9_463=l9_452.Loop_Index_ID0;
float2 l9_464=float2(0.0);
float l9_465=l9_463;
float2 l9_466=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_467=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_468=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_469=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_470=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_471=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_472=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_473=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_474[8];
l9_474[0]=l9_466;
l9_474[1]=l9_467;
l9_474[2]=l9_468;
l9_474[3]=l9_469;
l9_474[4]=l9_470;
l9_474[5]=l9_471;
l9_474[6]=l9_472;
l9_474[7]=l9_473;
int l9_475=int(fast::clamp(l9_465+9.9999997e-05,0.0,7.0));
float2 l9_476=l9_474[l9_475];
l9_464=l9_476;
float2 l9_477=float2(0.0);
l9_477=(l9_458*float2(l9_462))*l9_464;
float2 l9_478=float2(0.0);
l9_478=l9_457+l9_477;
float l9_479=0.0;
l9_479=l9_461+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_480=float4(0.0);
int l9_481=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_482=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_482=0;
}
else
{
l9_482=in.varStereoViewID;
}
int l9_483=l9_482;
l9_481=1-l9_483;
}
else
{
int l9_484=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_484=0;
}
else
{
l9_484=in.varStereoViewID;
}
int l9_485=l9_484;
l9_481=l9_485;
}
int l9_486=l9_481;
int l9_487=screenTextureLayout_tmp;
int l9_488=l9_486;
float2 l9_489=l9_478;
bool l9_490=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_491=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_492=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_493=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_494=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_495=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_496=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_497=l9_479;
bool l9_498=l9_495&&(!l9_493);
float l9_499=1.0;
float l9_500=l9_489.x;
int l9_501=l9_492.x;
if (l9_501==1)
{
l9_500=fract(l9_500);
}
else
{
if (l9_501==2)
{
float l9_502=fract(l9_500);
float l9_503=l9_500-l9_502;
float l9_504=step(0.25,fract(l9_503*0.5));
l9_500=mix(l9_502,1.0-l9_502,fast::clamp(l9_504,0.0,1.0));
}
}
l9_489.x=l9_500;
float l9_505=l9_489.y;
int l9_506=l9_492.y;
if (l9_506==1)
{
l9_505=fract(l9_505);
}
else
{
if (l9_506==2)
{
float l9_507=fract(l9_505);
float l9_508=l9_505-l9_507;
float l9_509=step(0.25,fract(l9_508*0.5));
l9_505=mix(l9_507,1.0-l9_507,fast::clamp(l9_509,0.0,1.0));
}
}
l9_489.y=l9_505;
if (l9_493)
{
bool l9_510=l9_495;
bool l9_511;
if (l9_510)
{
l9_511=l9_492.x==3;
}
else
{
l9_511=l9_510;
}
float l9_512=l9_489.x;
float l9_513=l9_494.x;
float l9_514=l9_494.z;
bool l9_515=l9_511;
float l9_516=l9_499;
float l9_517=fast::clamp(l9_512,l9_513,l9_514);
float l9_518=step(abs(l9_512-l9_517),9.9999997e-06);
l9_516*=(l9_518+((1.0-float(l9_515))*(1.0-l9_518)));
l9_512=l9_517;
l9_489.x=l9_512;
l9_499=l9_516;
bool l9_519=l9_495;
bool l9_520;
if (l9_519)
{
l9_520=l9_492.y==3;
}
else
{
l9_520=l9_519;
}
float l9_521=l9_489.y;
float l9_522=l9_494.y;
float l9_523=l9_494.w;
bool l9_524=l9_520;
float l9_525=l9_499;
float l9_526=fast::clamp(l9_521,l9_522,l9_523);
float l9_527=step(abs(l9_521-l9_526),9.9999997e-06);
l9_525*=(l9_527+((1.0-float(l9_524))*(1.0-l9_527)));
l9_521=l9_526;
l9_489.y=l9_521;
l9_499=l9_525;
}
float2 l9_528=l9_489;
bool l9_529=l9_490;
float3x3 l9_530=l9_491;
if (l9_529)
{
l9_528=float2((l9_530*float3(l9_528,1.0)).xy);
}
float2 l9_531=l9_528;
float2 l9_532=l9_531;
float2 l9_533=l9_532;
l9_489=l9_533;
float l9_534=l9_489.x;
int l9_535=l9_492.x;
bool l9_536=l9_498;
float l9_537=l9_499;
if ((l9_535==0)||(l9_535==3))
{
float l9_538=l9_534;
float l9_539=0.0;
float l9_540=1.0;
bool l9_541=l9_536;
float l9_542=l9_537;
float l9_543=fast::clamp(l9_538,l9_539,l9_540);
float l9_544=step(abs(l9_538-l9_543),9.9999997e-06);
l9_542*=(l9_544+((1.0-float(l9_541))*(1.0-l9_544)));
l9_538=l9_543;
l9_534=l9_538;
l9_537=l9_542;
}
l9_489.x=l9_534;
l9_499=l9_537;
float l9_545=l9_489.y;
int l9_546=l9_492.y;
bool l9_547=l9_498;
float l9_548=l9_499;
if ((l9_546==0)||(l9_546==3))
{
float l9_549=l9_545;
float l9_550=0.0;
float l9_551=1.0;
bool l9_552=l9_547;
float l9_553=l9_548;
float l9_554=fast::clamp(l9_549,l9_550,l9_551);
float l9_555=step(abs(l9_549-l9_554),9.9999997e-06);
l9_553*=(l9_555+((1.0-float(l9_552))*(1.0-l9_555)));
l9_549=l9_554;
l9_545=l9_549;
l9_548=l9_553;
}
l9_489.y=l9_545;
l9_499=l9_548;
float2 l9_556=l9_489;
int l9_557=l9_487;
int l9_558=l9_488;
float l9_559=l9_497;
float2 l9_560=l9_556;
int l9_561=l9_557;
int l9_562=l9_558;
float3 l9_563=float3(0.0);
if (l9_561==0)
{
l9_563=float3(l9_560,0.0);
}
else
{
if (l9_561==1)
{
l9_563=float3(l9_560.x,(l9_560.y*0.5)+(0.5-(float(l9_562)*0.5)),0.0);
}
else
{
l9_563=float3(l9_560,float(l9_562));
}
}
float3 l9_564=l9_563;
float3 l9_565=l9_564;
float2 l9_566=l9_565.xy;
float l9_567=l9_559;
float4 l9_568=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_566,bias(l9_567));
float4 l9_569=l9_568;
float4 l9_570=l9_569;
if (l9_495)
{
l9_570=mix(l9_496,l9_570,float4(l9_499));
}
float4 l9_571=l9_570;
l9_480=l9_571;
l9_453=l9_480;
l9_451+=l9_453;
l9_208=l9_451;
float4 l9_572=l9_208;
ssGlobals l9_573=l9_207;
float4 l9_574=float4(0.0);
l9_573.Loop_Index_ID0=3.0;
l9_573.Loop_Ratio_ID0=0.42857099;
float2 l9_575=float2(0.0);
float2 l9_576=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_575=l9_576;
float2 l9_577=float2(0.0);
l9_577=l9_573.gScreenCoord;
float2 l9_578=float2(0.0);
l9_578=l9_577;
float2 l9_579=float2(0.0);
l9_579=l9_575;
float l9_580=0.0;
float l9_581=(*sc_set0.UserUniforms).blurFactor;
l9_580=l9_581;
float l9_582=0.0;
l9_582=l9_580;
float l9_583=0.0;
l9_583=exp2(l9_582);
float l9_584=0.0;
l9_584=l9_573.Loop_Index_ID0;
float2 l9_585=float2(0.0);
float l9_586=l9_584;
float2 l9_587=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_588=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_589=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_590=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_591=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_592=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_593=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_594=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_595[8];
l9_595[0]=l9_587;
l9_595[1]=l9_588;
l9_595[2]=l9_589;
l9_595[3]=l9_590;
l9_595[4]=l9_591;
l9_595[5]=l9_592;
l9_595[6]=l9_593;
l9_595[7]=l9_594;
int l9_596=int(fast::clamp(l9_586+9.9999997e-05,0.0,7.0));
float2 l9_597=l9_595[l9_596];
l9_585=l9_597;
float2 l9_598=float2(0.0);
l9_598=(l9_579*float2(l9_583))*l9_585;
float2 l9_599=float2(0.0);
l9_599=l9_578+l9_598;
float l9_600=0.0;
l9_600=l9_582+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_601=float4(0.0);
int l9_602=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_603=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_603=0;
}
else
{
l9_603=in.varStereoViewID;
}
int l9_604=l9_603;
l9_602=1-l9_604;
}
else
{
int l9_605=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_605=0;
}
else
{
l9_605=in.varStereoViewID;
}
int l9_606=l9_605;
l9_602=l9_606;
}
int l9_607=l9_602;
int l9_608=screenTextureLayout_tmp;
int l9_609=l9_607;
float2 l9_610=l9_599;
bool l9_611=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_612=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_613=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_614=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_615=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_616=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_617=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_618=l9_600;
bool l9_619=l9_616&&(!l9_614);
float l9_620=1.0;
float l9_621=l9_610.x;
int l9_622=l9_613.x;
if (l9_622==1)
{
l9_621=fract(l9_621);
}
else
{
if (l9_622==2)
{
float l9_623=fract(l9_621);
float l9_624=l9_621-l9_623;
float l9_625=step(0.25,fract(l9_624*0.5));
l9_621=mix(l9_623,1.0-l9_623,fast::clamp(l9_625,0.0,1.0));
}
}
l9_610.x=l9_621;
float l9_626=l9_610.y;
int l9_627=l9_613.y;
if (l9_627==1)
{
l9_626=fract(l9_626);
}
else
{
if (l9_627==2)
{
float l9_628=fract(l9_626);
float l9_629=l9_626-l9_628;
float l9_630=step(0.25,fract(l9_629*0.5));
l9_626=mix(l9_628,1.0-l9_628,fast::clamp(l9_630,0.0,1.0));
}
}
l9_610.y=l9_626;
if (l9_614)
{
bool l9_631=l9_616;
bool l9_632;
if (l9_631)
{
l9_632=l9_613.x==3;
}
else
{
l9_632=l9_631;
}
float l9_633=l9_610.x;
float l9_634=l9_615.x;
float l9_635=l9_615.z;
bool l9_636=l9_632;
float l9_637=l9_620;
float l9_638=fast::clamp(l9_633,l9_634,l9_635);
float l9_639=step(abs(l9_633-l9_638),9.9999997e-06);
l9_637*=(l9_639+((1.0-float(l9_636))*(1.0-l9_639)));
l9_633=l9_638;
l9_610.x=l9_633;
l9_620=l9_637;
bool l9_640=l9_616;
bool l9_641;
if (l9_640)
{
l9_641=l9_613.y==3;
}
else
{
l9_641=l9_640;
}
float l9_642=l9_610.y;
float l9_643=l9_615.y;
float l9_644=l9_615.w;
bool l9_645=l9_641;
float l9_646=l9_620;
float l9_647=fast::clamp(l9_642,l9_643,l9_644);
float l9_648=step(abs(l9_642-l9_647),9.9999997e-06);
l9_646*=(l9_648+((1.0-float(l9_645))*(1.0-l9_648)));
l9_642=l9_647;
l9_610.y=l9_642;
l9_620=l9_646;
}
float2 l9_649=l9_610;
bool l9_650=l9_611;
float3x3 l9_651=l9_612;
if (l9_650)
{
l9_649=float2((l9_651*float3(l9_649,1.0)).xy);
}
float2 l9_652=l9_649;
float2 l9_653=l9_652;
float2 l9_654=l9_653;
l9_610=l9_654;
float l9_655=l9_610.x;
int l9_656=l9_613.x;
bool l9_657=l9_619;
float l9_658=l9_620;
if ((l9_656==0)||(l9_656==3))
{
float l9_659=l9_655;
float l9_660=0.0;
float l9_661=1.0;
bool l9_662=l9_657;
float l9_663=l9_658;
float l9_664=fast::clamp(l9_659,l9_660,l9_661);
float l9_665=step(abs(l9_659-l9_664),9.9999997e-06);
l9_663*=(l9_665+((1.0-float(l9_662))*(1.0-l9_665)));
l9_659=l9_664;
l9_655=l9_659;
l9_658=l9_663;
}
l9_610.x=l9_655;
l9_620=l9_658;
float l9_666=l9_610.y;
int l9_667=l9_613.y;
bool l9_668=l9_619;
float l9_669=l9_620;
if ((l9_667==0)||(l9_667==3))
{
float l9_670=l9_666;
float l9_671=0.0;
float l9_672=1.0;
bool l9_673=l9_668;
float l9_674=l9_669;
float l9_675=fast::clamp(l9_670,l9_671,l9_672);
float l9_676=step(abs(l9_670-l9_675),9.9999997e-06);
l9_674*=(l9_676+((1.0-float(l9_673))*(1.0-l9_676)));
l9_670=l9_675;
l9_666=l9_670;
l9_669=l9_674;
}
l9_610.y=l9_666;
l9_620=l9_669;
float2 l9_677=l9_610;
int l9_678=l9_608;
int l9_679=l9_609;
float l9_680=l9_618;
float2 l9_681=l9_677;
int l9_682=l9_678;
int l9_683=l9_679;
float3 l9_684=float3(0.0);
if (l9_682==0)
{
l9_684=float3(l9_681,0.0);
}
else
{
if (l9_682==1)
{
l9_684=float3(l9_681.x,(l9_681.y*0.5)+(0.5-(float(l9_683)*0.5)),0.0);
}
else
{
l9_684=float3(l9_681,float(l9_683));
}
}
float3 l9_685=l9_684;
float3 l9_686=l9_685;
float2 l9_687=l9_686.xy;
float l9_688=l9_680;
float4 l9_689=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_687,bias(l9_688));
float4 l9_690=l9_689;
float4 l9_691=l9_690;
if (l9_616)
{
l9_691=mix(l9_617,l9_691,float4(l9_620));
}
float4 l9_692=l9_691;
l9_601=l9_692;
l9_574=l9_601;
l9_572+=l9_574;
l9_208=l9_572;
float4 l9_693=l9_208;
ssGlobals l9_694=l9_207;
float4 l9_695=float4(0.0);
l9_694.Loop_Index_ID0=4.0;
l9_694.Loop_Ratio_ID0=0.57142901;
float2 l9_696=float2(0.0);
float2 l9_697=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_696=l9_697;
float2 l9_698=float2(0.0);
l9_698=l9_694.gScreenCoord;
float2 l9_699=float2(0.0);
l9_699=l9_698;
float2 l9_700=float2(0.0);
l9_700=l9_696;
float l9_701=0.0;
float l9_702=(*sc_set0.UserUniforms).blurFactor;
l9_701=l9_702;
float l9_703=0.0;
l9_703=l9_701;
float l9_704=0.0;
l9_704=exp2(l9_703);
float l9_705=0.0;
l9_705=l9_694.Loop_Index_ID0;
float2 l9_706=float2(0.0);
float l9_707=l9_705;
float2 l9_708=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_709=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_710=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_711=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_712=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_713=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_714=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_715=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_716[8];
l9_716[0]=l9_708;
l9_716[1]=l9_709;
l9_716[2]=l9_710;
l9_716[3]=l9_711;
l9_716[4]=l9_712;
l9_716[5]=l9_713;
l9_716[6]=l9_714;
l9_716[7]=l9_715;
int l9_717=int(fast::clamp(l9_707+9.9999997e-05,0.0,7.0));
float2 l9_718=l9_716[l9_717];
l9_706=l9_718;
float2 l9_719=float2(0.0);
l9_719=(l9_700*float2(l9_704))*l9_706;
float2 l9_720=float2(0.0);
l9_720=l9_699+l9_719;
float l9_721=0.0;
l9_721=l9_703+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_722=float4(0.0);
int l9_723=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_724=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_724=0;
}
else
{
l9_724=in.varStereoViewID;
}
int l9_725=l9_724;
l9_723=1-l9_725;
}
else
{
int l9_726=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_726=0;
}
else
{
l9_726=in.varStereoViewID;
}
int l9_727=l9_726;
l9_723=l9_727;
}
int l9_728=l9_723;
int l9_729=screenTextureLayout_tmp;
int l9_730=l9_728;
float2 l9_731=l9_720;
bool l9_732=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_733=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_734=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_735=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_736=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_737=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_738=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_739=l9_721;
bool l9_740=l9_737&&(!l9_735);
float l9_741=1.0;
float l9_742=l9_731.x;
int l9_743=l9_734.x;
if (l9_743==1)
{
l9_742=fract(l9_742);
}
else
{
if (l9_743==2)
{
float l9_744=fract(l9_742);
float l9_745=l9_742-l9_744;
float l9_746=step(0.25,fract(l9_745*0.5));
l9_742=mix(l9_744,1.0-l9_744,fast::clamp(l9_746,0.0,1.0));
}
}
l9_731.x=l9_742;
float l9_747=l9_731.y;
int l9_748=l9_734.y;
if (l9_748==1)
{
l9_747=fract(l9_747);
}
else
{
if (l9_748==2)
{
float l9_749=fract(l9_747);
float l9_750=l9_747-l9_749;
float l9_751=step(0.25,fract(l9_750*0.5));
l9_747=mix(l9_749,1.0-l9_749,fast::clamp(l9_751,0.0,1.0));
}
}
l9_731.y=l9_747;
if (l9_735)
{
bool l9_752=l9_737;
bool l9_753;
if (l9_752)
{
l9_753=l9_734.x==3;
}
else
{
l9_753=l9_752;
}
float l9_754=l9_731.x;
float l9_755=l9_736.x;
float l9_756=l9_736.z;
bool l9_757=l9_753;
float l9_758=l9_741;
float l9_759=fast::clamp(l9_754,l9_755,l9_756);
float l9_760=step(abs(l9_754-l9_759),9.9999997e-06);
l9_758*=(l9_760+((1.0-float(l9_757))*(1.0-l9_760)));
l9_754=l9_759;
l9_731.x=l9_754;
l9_741=l9_758;
bool l9_761=l9_737;
bool l9_762;
if (l9_761)
{
l9_762=l9_734.y==3;
}
else
{
l9_762=l9_761;
}
float l9_763=l9_731.y;
float l9_764=l9_736.y;
float l9_765=l9_736.w;
bool l9_766=l9_762;
float l9_767=l9_741;
float l9_768=fast::clamp(l9_763,l9_764,l9_765);
float l9_769=step(abs(l9_763-l9_768),9.9999997e-06);
l9_767*=(l9_769+((1.0-float(l9_766))*(1.0-l9_769)));
l9_763=l9_768;
l9_731.y=l9_763;
l9_741=l9_767;
}
float2 l9_770=l9_731;
bool l9_771=l9_732;
float3x3 l9_772=l9_733;
if (l9_771)
{
l9_770=float2((l9_772*float3(l9_770,1.0)).xy);
}
float2 l9_773=l9_770;
float2 l9_774=l9_773;
float2 l9_775=l9_774;
l9_731=l9_775;
float l9_776=l9_731.x;
int l9_777=l9_734.x;
bool l9_778=l9_740;
float l9_779=l9_741;
if ((l9_777==0)||(l9_777==3))
{
float l9_780=l9_776;
float l9_781=0.0;
float l9_782=1.0;
bool l9_783=l9_778;
float l9_784=l9_779;
float l9_785=fast::clamp(l9_780,l9_781,l9_782);
float l9_786=step(abs(l9_780-l9_785),9.9999997e-06);
l9_784*=(l9_786+((1.0-float(l9_783))*(1.0-l9_786)));
l9_780=l9_785;
l9_776=l9_780;
l9_779=l9_784;
}
l9_731.x=l9_776;
l9_741=l9_779;
float l9_787=l9_731.y;
int l9_788=l9_734.y;
bool l9_789=l9_740;
float l9_790=l9_741;
if ((l9_788==0)||(l9_788==3))
{
float l9_791=l9_787;
float l9_792=0.0;
float l9_793=1.0;
bool l9_794=l9_789;
float l9_795=l9_790;
float l9_796=fast::clamp(l9_791,l9_792,l9_793);
float l9_797=step(abs(l9_791-l9_796),9.9999997e-06);
l9_795*=(l9_797+((1.0-float(l9_794))*(1.0-l9_797)));
l9_791=l9_796;
l9_787=l9_791;
l9_790=l9_795;
}
l9_731.y=l9_787;
l9_741=l9_790;
float2 l9_798=l9_731;
int l9_799=l9_729;
int l9_800=l9_730;
float l9_801=l9_739;
float2 l9_802=l9_798;
int l9_803=l9_799;
int l9_804=l9_800;
float3 l9_805=float3(0.0);
if (l9_803==0)
{
l9_805=float3(l9_802,0.0);
}
else
{
if (l9_803==1)
{
l9_805=float3(l9_802.x,(l9_802.y*0.5)+(0.5-(float(l9_804)*0.5)),0.0);
}
else
{
l9_805=float3(l9_802,float(l9_804));
}
}
float3 l9_806=l9_805;
float3 l9_807=l9_806;
float2 l9_808=l9_807.xy;
float l9_809=l9_801;
float4 l9_810=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_808,bias(l9_809));
float4 l9_811=l9_810;
float4 l9_812=l9_811;
if (l9_737)
{
l9_812=mix(l9_738,l9_812,float4(l9_741));
}
float4 l9_813=l9_812;
l9_722=l9_813;
l9_695=l9_722;
l9_693+=l9_695;
l9_208=l9_693;
float4 l9_814=l9_208;
ssGlobals l9_815=l9_207;
float4 l9_816=float4(0.0);
l9_815.Loop_Index_ID0=5.0;
l9_815.Loop_Ratio_ID0=0.71428603;
float2 l9_817=float2(0.0);
float2 l9_818=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_817=l9_818;
float2 l9_819=float2(0.0);
l9_819=l9_815.gScreenCoord;
float2 l9_820=float2(0.0);
l9_820=l9_819;
float2 l9_821=float2(0.0);
l9_821=l9_817;
float l9_822=0.0;
float l9_823=(*sc_set0.UserUniforms).blurFactor;
l9_822=l9_823;
float l9_824=0.0;
l9_824=l9_822;
float l9_825=0.0;
l9_825=exp2(l9_824);
float l9_826=0.0;
l9_826=l9_815.Loop_Index_ID0;
float2 l9_827=float2(0.0);
float l9_828=l9_826;
float2 l9_829=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_830=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_831=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_832=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_833=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_834=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_835=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_836=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_837[8];
l9_837[0]=l9_829;
l9_837[1]=l9_830;
l9_837[2]=l9_831;
l9_837[3]=l9_832;
l9_837[4]=l9_833;
l9_837[5]=l9_834;
l9_837[6]=l9_835;
l9_837[7]=l9_836;
int l9_838=int(fast::clamp(l9_828+9.9999997e-05,0.0,7.0));
float2 l9_839=l9_837[l9_838];
l9_827=l9_839;
float2 l9_840=float2(0.0);
l9_840=(l9_821*float2(l9_825))*l9_827;
float2 l9_841=float2(0.0);
l9_841=l9_820+l9_840;
float l9_842=0.0;
l9_842=l9_824+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_843=float4(0.0);
int l9_844=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_845=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_845=0;
}
else
{
l9_845=in.varStereoViewID;
}
int l9_846=l9_845;
l9_844=1-l9_846;
}
else
{
int l9_847=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_847=0;
}
else
{
l9_847=in.varStereoViewID;
}
int l9_848=l9_847;
l9_844=l9_848;
}
int l9_849=l9_844;
int l9_850=screenTextureLayout_tmp;
int l9_851=l9_849;
float2 l9_852=l9_841;
bool l9_853=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_854=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_855=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_856=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_857=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_858=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_859=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_860=l9_842;
bool l9_861=l9_858&&(!l9_856);
float l9_862=1.0;
float l9_863=l9_852.x;
int l9_864=l9_855.x;
if (l9_864==1)
{
l9_863=fract(l9_863);
}
else
{
if (l9_864==2)
{
float l9_865=fract(l9_863);
float l9_866=l9_863-l9_865;
float l9_867=step(0.25,fract(l9_866*0.5));
l9_863=mix(l9_865,1.0-l9_865,fast::clamp(l9_867,0.0,1.0));
}
}
l9_852.x=l9_863;
float l9_868=l9_852.y;
int l9_869=l9_855.y;
if (l9_869==1)
{
l9_868=fract(l9_868);
}
else
{
if (l9_869==2)
{
float l9_870=fract(l9_868);
float l9_871=l9_868-l9_870;
float l9_872=step(0.25,fract(l9_871*0.5));
l9_868=mix(l9_870,1.0-l9_870,fast::clamp(l9_872,0.0,1.0));
}
}
l9_852.y=l9_868;
if (l9_856)
{
bool l9_873=l9_858;
bool l9_874;
if (l9_873)
{
l9_874=l9_855.x==3;
}
else
{
l9_874=l9_873;
}
float l9_875=l9_852.x;
float l9_876=l9_857.x;
float l9_877=l9_857.z;
bool l9_878=l9_874;
float l9_879=l9_862;
float l9_880=fast::clamp(l9_875,l9_876,l9_877);
float l9_881=step(abs(l9_875-l9_880),9.9999997e-06);
l9_879*=(l9_881+((1.0-float(l9_878))*(1.0-l9_881)));
l9_875=l9_880;
l9_852.x=l9_875;
l9_862=l9_879;
bool l9_882=l9_858;
bool l9_883;
if (l9_882)
{
l9_883=l9_855.y==3;
}
else
{
l9_883=l9_882;
}
float l9_884=l9_852.y;
float l9_885=l9_857.y;
float l9_886=l9_857.w;
bool l9_887=l9_883;
float l9_888=l9_862;
float l9_889=fast::clamp(l9_884,l9_885,l9_886);
float l9_890=step(abs(l9_884-l9_889),9.9999997e-06);
l9_888*=(l9_890+((1.0-float(l9_887))*(1.0-l9_890)));
l9_884=l9_889;
l9_852.y=l9_884;
l9_862=l9_888;
}
float2 l9_891=l9_852;
bool l9_892=l9_853;
float3x3 l9_893=l9_854;
if (l9_892)
{
l9_891=float2((l9_893*float3(l9_891,1.0)).xy);
}
float2 l9_894=l9_891;
float2 l9_895=l9_894;
float2 l9_896=l9_895;
l9_852=l9_896;
float l9_897=l9_852.x;
int l9_898=l9_855.x;
bool l9_899=l9_861;
float l9_900=l9_862;
if ((l9_898==0)||(l9_898==3))
{
float l9_901=l9_897;
float l9_902=0.0;
float l9_903=1.0;
bool l9_904=l9_899;
float l9_905=l9_900;
float l9_906=fast::clamp(l9_901,l9_902,l9_903);
float l9_907=step(abs(l9_901-l9_906),9.9999997e-06);
l9_905*=(l9_907+((1.0-float(l9_904))*(1.0-l9_907)));
l9_901=l9_906;
l9_897=l9_901;
l9_900=l9_905;
}
l9_852.x=l9_897;
l9_862=l9_900;
float l9_908=l9_852.y;
int l9_909=l9_855.y;
bool l9_910=l9_861;
float l9_911=l9_862;
if ((l9_909==0)||(l9_909==3))
{
float l9_912=l9_908;
float l9_913=0.0;
float l9_914=1.0;
bool l9_915=l9_910;
float l9_916=l9_911;
float l9_917=fast::clamp(l9_912,l9_913,l9_914);
float l9_918=step(abs(l9_912-l9_917),9.9999997e-06);
l9_916*=(l9_918+((1.0-float(l9_915))*(1.0-l9_918)));
l9_912=l9_917;
l9_908=l9_912;
l9_911=l9_916;
}
l9_852.y=l9_908;
l9_862=l9_911;
float2 l9_919=l9_852;
int l9_920=l9_850;
int l9_921=l9_851;
float l9_922=l9_860;
float2 l9_923=l9_919;
int l9_924=l9_920;
int l9_925=l9_921;
float3 l9_926=float3(0.0);
if (l9_924==0)
{
l9_926=float3(l9_923,0.0);
}
else
{
if (l9_924==1)
{
l9_926=float3(l9_923.x,(l9_923.y*0.5)+(0.5-(float(l9_925)*0.5)),0.0);
}
else
{
l9_926=float3(l9_923,float(l9_925));
}
}
float3 l9_927=l9_926;
float3 l9_928=l9_927;
float2 l9_929=l9_928.xy;
float l9_930=l9_922;
float4 l9_931=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_929,bias(l9_930));
float4 l9_932=l9_931;
float4 l9_933=l9_932;
if (l9_858)
{
l9_933=mix(l9_859,l9_933,float4(l9_862));
}
float4 l9_934=l9_933;
l9_843=l9_934;
l9_816=l9_843;
l9_814+=l9_816;
l9_208=l9_814;
float4 l9_935=l9_208;
ssGlobals l9_936=l9_207;
float4 l9_937=float4(0.0);
l9_936.Loop_Index_ID0=6.0;
l9_936.Loop_Ratio_ID0=0.85714298;
float2 l9_938=float2(0.0);
float2 l9_939=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_938=l9_939;
float2 l9_940=float2(0.0);
l9_940=l9_936.gScreenCoord;
float2 l9_941=float2(0.0);
l9_941=l9_940;
float2 l9_942=float2(0.0);
l9_942=l9_938;
float l9_943=0.0;
float l9_944=(*sc_set0.UserUniforms).blurFactor;
l9_943=l9_944;
float l9_945=0.0;
l9_945=l9_943;
float l9_946=0.0;
l9_946=exp2(l9_945);
float l9_947=0.0;
l9_947=l9_936.Loop_Index_ID0;
float2 l9_948=float2(0.0);
float l9_949=l9_947;
float2 l9_950=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_951=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_952=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_953=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_954=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_955=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_956=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_957=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_958[8];
l9_958[0]=l9_950;
l9_958[1]=l9_951;
l9_958[2]=l9_952;
l9_958[3]=l9_953;
l9_958[4]=l9_954;
l9_958[5]=l9_955;
l9_958[6]=l9_956;
l9_958[7]=l9_957;
int l9_959=int(fast::clamp(l9_949+9.9999997e-05,0.0,7.0));
float2 l9_960=l9_958[l9_959];
l9_948=l9_960;
float2 l9_961=float2(0.0);
l9_961=(l9_942*float2(l9_946))*l9_948;
float2 l9_962=float2(0.0);
l9_962=l9_941+l9_961;
float l9_963=0.0;
l9_963=l9_945+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_964=float4(0.0);
int l9_965=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_966=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_966=0;
}
else
{
l9_966=in.varStereoViewID;
}
int l9_967=l9_966;
l9_965=1-l9_967;
}
else
{
int l9_968=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_968=0;
}
else
{
l9_968=in.varStereoViewID;
}
int l9_969=l9_968;
l9_965=l9_969;
}
int l9_970=l9_965;
int l9_971=screenTextureLayout_tmp;
int l9_972=l9_970;
float2 l9_973=l9_962;
bool l9_974=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_975=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_976=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_977=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_978=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_979=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_980=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_981=l9_963;
bool l9_982=l9_979&&(!l9_977);
float l9_983=1.0;
float l9_984=l9_973.x;
int l9_985=l9_976.x;
if (l9_985==1)
{
l9_984=fract(l9_984);
}
else
{
if (l9_985==2)
{
float l9_986=fract(l9_984);
float l9_987=l9_984-l9_986;
float l9_988=step(0.25,fract(l9_987*0.5));
l9_984=mix(l9_986,1.0-l9_986,fast::clamp(l9_988,0.0,1.0));
}
}
l9_973.x=l9_984;
float l9_989=l9_973.y;
int l9_990=l9_976.y;
if (l9_990==1)
{
l9_989=fract(l9_989);
}
else
{
if (l9_990==2)
{
float l9_991=fract(l9_989);
float l9_992=l9_989-l9_991;
float l9_993=step(0.25,fract(l9_992*0.5));
l9_989=mix(l9_991,1.0-l9_991,fast::clamp(l9_993,0.0,1.0));
}
}
l9_973.y=l9_989;
if (l9_977)
{
bool l9_994=l9_979;
bool l9_995;
if (l9_994)
{
l9_995=l9_976.x==3;
}
else
{
l9_995=l9_994;
}
float l9_996=l9_973.x;
float l9_997=l9_978.x;
float l9_998=l9_978.z;
bool l9_999=l9_995;
float l9_1000=l9_983;
float l9_1001=fast::clamp(l9_996,l9_997,l9_998);
float l9_1002=step(abs(l9_996-l9_1001),9.9999997e-06);
l9_1000*=(l9_1002+((1.0-float(l9_999))*(1.0-l9_1002)));
l9_996=l9_1001;
l9_973.x=l9_996;
l9_983=l9_1000;
bool l9_1003=l9_979;
bool l9_1004;
if (l9_1003)
{
l9_1004=l9_976.y==3;
}
else
{
l9_1004=l9_1003;
}
float l9_1005=l9_973.y;
float l9_1006=l9_978.y;
float l9_1007=l9_978.w;
bool l9_1008=l9_1004;
float l9_1009=l9_983;
float l9_1010=fast::clamp(l9_1005,l9_1006,l9_1007);
float l9_1011=step(abs(l9_1005-l9_1010),9.9999997e-06);
l9_1009*=(l9_1011+((1.0-float(l9_1008))*(1.0-l9_1011)));
l9_1005=l9_1010;
l9_973.y=l9_1005;
l9_983=l9_1009;
}
float2 l9_1012=l9_973;
bool l9_1013=l9_974;
float3x3 l9_1014=l9_975;
if (l9_1013)
{
l9_1012=float2((l9_1014*float3(l9_1012,1.0)).xy);
}
float2 l9_1015=l9_1012;
float2 l9_1016=l9_1015;
float2 l9_1017=l9_1016;
l9_973=l9_1017;
float l9_1018=l9_973.x;
int l9_1019=l9_976.x;
bool l9_1020=l9_982;
float l9_1021=l9_983;
if ((l9_1019==0)||(l9_1019==3))
{
float l9_1022=l9_1018;
float l9_1023=0.0;
float l9_1024=1.0;
bool l9_1025=l9_1020;
float l9_1026=l9_1021;
float l9_1027=fast::clamp(l9_1022,l9_1023,l9_1024);
float l9_1028=step(abs(l9_1022-l9_1027),9.9999997e-06);
l9_1026*=(l9_1028+((1.0-float(l9_1025))*(1.0-l9_1028)));
l9_1022=l9_1027;
l9_1018=l9_1022;
l9_1021=l9_1026;
}
l9_973.x=l9_1018;
l9_983=l9_1021;
float l9_1029=l9_973.y;
int l9_1030=l9_976.y;
bool l9_1031=l9_982;
float l9_1032=l9_983;
if ((l9_1030==0)||(l9_1030==3))
{
float l9_1033=l9_1029;
float l9_1034=0.0;
float l9_1035=1.0;
bool l9_1036=l9_1031;
float l9_1037=l9_1032;
float l9_1038=fast::clamp(l9_1033,l9_1034,l9_1035);
float l9_1039=step(abs(l9_1033-l9_1038),9.9999997e-06);
l9_1037*=(l9_1039+((1.0-float(l9_1036))*(1.0-l9_1039)));
l9_1033=l9_1038;
l9_1029=l9_1033;
l9_1032=l9_1037;
}
l9_973.y=l9_1029;
l9_983=l9_1032;
float2 l9_1040=l9_973;
int l9_1041=l9_971;
int l9_1042=l9_972;
float l9_1043=l9_981;
float2 l9_1044=l9_1040;
int l9_1045=l9_1041;
int l9_1046=l9_1042;
float3 l9_1047=float3(0.0);
if (l9_1045==0)
{
l9_1047=float3(l9_1044,0.0);
}
else
{
if (l9_1045==1)
{
l9_1047=float3(l9_1044.x,(l9_1044.y*0.5)+(0.5-(float(l9_1046)*0.5)),0.0);
}
else
{
l9_1047=float3(l9_1044,float(l9_1046));
}
}
float3 l9_1048=l9_1047;
float3 l9_1049=l9_1048;
float2 l9_1050=l9_1049.xy;
float l9_1051=l9_1043;
float4 l9_1052=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_1050,bias(l9_1051));
float4 l9_1053=l9_1052;
float4 l9_1054=l9_1053;
if (l9_979)
{
l9_1054=mix(l9_980,l9_1054,float4(l9_983));
}
float4 l9_1055=l9_1054;
l9_964=l9_1055;
l9_937=l9_964;
l9_935+=l9_937;
l9_208=l9_935;
float4 l9_1056=l9_208;
ssGlobals l9_1057=l9_207;
float4 l9_1058=float4(0.0);
l9_1057.Loop_Index_ID0=7.0;
l9_1057.Loop_Ratio_ID0=1.0;
float2 l9_1059=float2(0.0);
float2 l9_1060=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_1059=l9_1060;
float2 l9_1061=float2(0.0);
l9_1061=l9_1057.gScreenCoord;
float2 l9_1062=float2(0.0);
l9_1062=l9_1061;
float2 l9_1063=float2(0.0);
l9_1063=l9_1059;
float l9_1064=0.0;
float l9_1065=(*sc_set0.UserUniforms).blurFactor;
l9_1064=l9_1065;
float l9_1066=0.0;
l9_1066=l9_1064;
float l9_1067=0.0;
l9_1067=exp2(l9_1066);
float l9_1068=0.0;
l9_1068=l9_1057.Loop_Index_ID0;
float2 l9_1069=float2(0.0);
float l9_1070=l9_1068;
float2 l9_1071=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_1072=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_1073=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_1074=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_1075=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_1076=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_1077=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_1078=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_1079[8];
l9_1079[0]=l9_1071;
l9_1079[1]=l9_1072;
l9_1079[2]=l9_1073;
l9_1079[3]=l9_1074;
l9_1079[4]=l9_1075;
l9_1079[5]=l9_1076;
l9_1079[6]=l9_1077;
l9_1079[7]=l9_1078;
int l9_1080=int(fast::clamp(l9_1070+9.9999997e-05,0.0,7.0));
float2 l9_1081=l9_1079[l9_1080];
l9_1069=l9_1081;
float2 l9_1082=float2(0.0);
l9_1082=(l9_1063*float2(l9_1067))*l9_1069;
float2 l9_1083=float2(0.0);
l9_1083=l9_1062+l9_1082;
float l9_1084=0.0;
l9_1084=l9_1066+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_1085=float4(0.0);
int l9_1086=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_1087=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1087=0;
}
else
{
l9_1087=in.varStereoViewID;
}
int l9_1088=l9_1087;
l9_1086=1-l9_1088;
}
else
{
int l9_1089=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1089=0;
}
else
{
l9_1089=in.varStereoViewID;
}
int l9_1090=l9_1089;
l9_1086=l9_1090;
}
int l9_1091=l9_1086;
int l9_1092=screenTextureLayout_tmp;
int l9_1093=l9_1091;
float2 l9_1094=l9_1083;
bool l9_1095=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_1096=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_1097=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_1098=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_1099=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_1100=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_1101=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_1102=l9_1084;
bool l9_1103=l9_1100&&(!l9_1098);
float l9_1104=1.0;
float l9_1105=l9_1094.x;
int l9_1106=l9_1097.x;
if (l9_1106==1)
{
l9_1105=fract(l9_1105);
}
else
{
if (l9_1106==2)
{
float l9_1107=fract(l9_1105);
float l9_1108=l9_1105-l9_1107;
float l9_1109=step(0.25,fract(l9_1108*0.5));
l9_1105=mix(l9_1107,1.0-l9_1107,fast::clamp(l9_1109,0.0,1.0));
}
}
l9_1094.x=l9_1105;
float l9_1110=l9_1094.y;
int l9_1111=l9_1097.y;
if (l9_1111==1)
{
l9_1110=fract(l9_1110);
}
else
{
if (l9_1111==2)
{
float l9_1112=fract(l9_1110);
float l9_1113=l9_1110-l9_1112;
float l9_1114=step(0.25,fract(l9_1113*0.5));
l9_1110=mix(l9_1112,1.0-l9_1112,fast::clamp(l9_1114,0.0,1.0));
}
}
l9_1094.y=l9_1110;
if (l9_1098)
{
bool l9_1115=l9_1100;
bool l9_1116;
if (l9_1115)
{
l9_1116=l9_1097.x==3;
}
else
{
l9_1116=l9_1115;
}
float l9_1117=l9_1094.x;
float l9_1118=l9_1099.x;
float l9_1119=l9_1099.z;
bool l9_1120=l9_1116;
float l9_1121=l9_1104;
float l9_1122=fast::clamp(l9_1117,l9_1118,l9_1119);
float l9_1123=step(abs(l9_1117-l9_1122),9.9999997e-06);
l9_1121*=(l9_1123+((1.0-float(l9_1120))*(1.0-l9_1123)));
l9_1117=l9_1122;
l9_1094.x=l9_1117;
l9_1104=l9_1121;
bool l9_1124=l9_1100;
bool l9_1125;
if (l9_1124)
{
l9_1125=l9_1097.y==3;
}
else
{
l9_1125=l9_1124;
}
float l9_1126=l9_1094.y;
float l9_1127=l9_1099.y;
float l9_1128=l9_1099.w;
bool l9_1129=l9_1125;
float l9_1130=l9_1104;
float l9_1131=fast::clamp(l9_1126,l9_1127,l9_1128);
float l9_1132=step(abs(l9_1126-l9_1131),9.9999997e-06);
l9_1130*=(l9_1132+((1.0-float(l9_1129))*(1.0-l9_1132)));
l9_1126=l9_1131;
l9_1094.y=l9_1126;
l9_1104=l9_1130;
}
float2 l9_1133=l9_1094;
bool l9_1134=l9_1095;
float3x3 l9_1135=l9_1096;
if (l9_1134)
{
l9_1133=float2((l9_1135*float3(l9_1133,1.0)).xy);
}
float2 l9_1136=l9_1133;
float2 l9_1137=l9_1136;
float2 l9_1138=l9_1137;
l9_1094=l9_1138;
float l9_1139=l9_1094.x;
int l9_1140=l9_1097.x;
bool l9_1141=l9_1103;
float l9_1142=l9_1104;
if ((l9_1140==0)||(l9_1140==3))
{
float l9_1143=l9_1139;
float l9_1144=0.0;
float l9_1145=1.0;
bool l9_1146=l9_1141;
float l9_1147=l9_1142;
float l9_1148=fast::clamp(l9_1143,l9_1144,l9_1145);
float l9_1149=step(abs(l9_1143-l9_1148),9.9999997e-06);
l9_1147*=(l9_1149+((1.0-float(l9_1146))*(1.0-l9_1149)));
l9_1143=l9_1148;
l9_1139=l9_1143;
l9_1142=l9_1147;
}
l9_1094.x=l9_1139;
l9_1104=l9_1142;
float l9_1150=l9_1094.y;
int l9_1151=l9_1097.y;
bool l9_1152=l9_1103;
float l9_1153=l9_1104;
if ((l9_1151==0)||(l9_1151==3))
{
float l9_1154=l9_1150;
float l9_1155=0.0;
float l9_1156=1.0;
bool l9_1157=l9_1152;
float l9_1158=l9_1153;
float l9_1159=fast::clamp(l9_1154,l9_1155,l9_1156);
float l9_1160=step(abs(l9_1154-l9_1159),9.9999997e-06);
l9_1158*=(l9_1160+((1.0-float(l9_1157))*(1.0-l9_1160)));
l9_1154=l9_1159;
l9_1150=l9_1154;
l9_1153=l9_1158;
}
l9_1094.y=l9_1150;
l9_1104=l9_1153;
float2 l9_1161=l9_1094;
int l9_1162=l9_1092;
int l9_1163=l9_1093;
float l9_1164=l9_1102;
float2 l9_1165=l9_1161;
int l9_1166=l9_1162;
int l9_1167=l9_1163;
float3 l9_1168=float3(0.0);
if (l9_1166==0)
{
l9_1168=float3(l9_1165,0.0);
}
else
{
if (l9_1166==1)
{
l9_1168=float3(l9_1165.x,(l9_1165.y*0.5)+(0.5-(float(l9_1167)*0.5)),0.0);
}
else
{
l9_1168=float3(l9_1165,float(l9_1167));
}
}
float3 l9_1169=l9_1168;
float3 l9_1170=l9_1169;
float2 l9_1171=l9_1170.xy;
float l9_1172=l9_1164;
float4 l9_1173=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_1171,bias(l9_1172));
float4 l9_1174=l9_1173;
float4 l9_1175=l9_1174;
if (l9_1100)
{
l9_1175=mix(l9_1101,l9_1175,float4(l9_1104));
}
float4 l9_1176=l9_1175;
l9_1085=l9_1176;
l9_1058=l9_1085;
l9_1056+=l9_1058;
l9_208=l9_1056;
l9_208/=float4(8.0);
l9_206=l9_208;
float4 l9_1177=float4(0.0);
l9_1177=mix(l9_114,l9_206,float4((*sc_set0.UserUniforms).Port_Input2_N105));
float4 l9_1178=float4(0.0);
l9_1178=l9_1177;
float2 l9_1179=float2(0.0);
l9_1179=l9_16;
float l9_1180=0.0;
float l9_1181=(*sc_set0.UserUniforms).opacityblurFactor;
l9_1180=l9_1181;
float l9_1182=0.0;
l9_1182=l9_1180;
float l9_1183=0.0;
l9_1183=l9_1182+(*sc_set0.UserUniforms).Port_Input1_N010;
float4 l9_1184=float4(0.0);
int l9_1185=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_1186=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1186=0;
}
else
{
l9_1186=in.varStereoViewID;
}
int l9_1187=l9_1186;
l9_1185=1-l9_1187;
}
else
{
int l9_1188=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1188=0;
}
else
{
l9_1188=in.varStereoViewID;
}
int l9_1189=l9_1188;
l9_1185=l9_1189;
}
int l9_1190=l9_1185;
int l9_1191=opacityTexLayout_tmp;
int l9_1192=l9_1190;
float2 l9_1193=l9_1179;
bool l9_1194=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_1195=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_1196=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_1197=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_1198=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_1199=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_1200=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_1201=l9_1183;
bool l9_1202=l9_1199&&(!l9_1197);
float l9_1203=1.0;
float l9_1204=l9_1193.x;
int l9_1205=l9_1196.x;
if (l9_1205==1)
{
l9_1204=fract(l9_1204);
}
else
{
if (l9_1205==2)
{
float l9_1206=fract(l9_1204);
float l9_1207=l9_1204-l9_1206;
float l9_1208=step(0.25,fract(l9_1207*0.5));
l9_1204=mix(l9_1206,1.0-l9_1206,fast::clamp(l9_1208,0.0,1.0));
}
}
l9_1193.x=l9_1204;
float l9_1209=l9_1193.y;
int l9_1210=l9_1196.y;
if (l9_1210==1)
{
l9_1209=fract(l9_1209);
}
else
{
if (l9_1210==2)
{
float l9_1211=fract(l9_1209);
float l9_1212=l9_1209-l9_1211;
float l9_1213=step(0.25,fract(l9_1212*0.5));
l9_1209=mix(l9_1211,1.0-l9_1211,fast::clamp(l9_1213,0.0,1.0));
}
}
l9_1193.y=l9_1209;
if (l9_1197)
{
bool l9_1214=l9_1199;
bool l9_1215;
if (l9_1214)
{
l9_1215=l9_1196.x==3;
}
else
{
l9_1215=l9_1214;
}
float l9_1216=l9_1193.x;
float l9_1217=l9_1198.x;
float l9_1218=l9_1198.z;
bool l9_1219=l9_1215;
float l9_1220=l9_1203;
float l9_1221=fast::clamp(l9_1216,l9_1217,l9_1218);
float l9_1222=step(abs(l9_1216-l9_1221),9.9999997e-06);
l9_1220*=(l9_1222+((1.0-float(l9_1219))*(1.0-l9_1222)));
l9_1216=l9_1221;
l9_1193.x=l9_1216;
l9_1203=l9_1220;
bool l9_1223=l9_1199;
bool l9_1224;
if (l9_1223)
{
l9_1224=l9_1196.y==3;
}
else
{
l9_1224=l9_1223;
}
float l9_1225=l9_1193.y;
float l9_1226=l9_1198.y;
float l9_1227=l9_1198.w;
bool l9_1228=l9_1224;
float l9_1229=l9_1203;
float l9_1230=fast::clamp(l9_1225,l9_1226,l9_1227);
float l9_1231=step(abs(l9_1225-l9_1230),9.9999997e-06);
l9_1229*=(l9_1231+((1.0-float(l9_1228))*(1.0-l9_1231)));
l9_1225=l9_1230;
l9_1193.y=l9_1225;
l9_1203=l9_1229;
}
float2 l9_1232=l9_1193;
bool l9_1233=l9_1194;
float3x3 l9_1234=l9_1195;
if (l9_1233)
{
l9_1232=float2((l9_1234*float3(l9_1232,1.0)).xy);
}
float2 l9_1235=l9_1232;
float2 l9_1236=l9_1235;
float2 l9_1237=l9_1236;
l9_1193=l9_1237;
float l9_1238=l9_1193.x;
int l9_1239=l9_1196.x;
bool l9_1240=l9_1202;
float l9_1241=l9_1203;
if ((l9_1239==0)||(l9_1239==3))
{
float l9_1242=l9_1238;
float l9_1243=0.0;
float l9_1244=1.0;
bool l9_1245=l9_1240;
float l9_1246=l9_1241;
float l9_1247=fast::clamp(l9_1242,l9_1243,l9_1244);
float l9_1248=step(abs(l9_1242-l9_1247),9.9999997e-06);
l9_1246*=(l9_1248+((1.0-float(l9_1245))*(1.0-l9_1248)));
l9_1242=l9_1247;
l9_1238=l9_1242;
l9_1241=l9_1246;
}
l9_1193.x=l9_1238;
l9_1203=l9_1241;
float l9_1249=l9_1193.y;
int l9_1250=l9_1196.y;
bool l9_1251=l9_1202;
float l9_1252=l9_1203;
if ((l9_1250==0)||(l9_1250==3))
{
float l9_1253=l9_1249;
float l9_1254=0.0;
float l9_1255=1.0;
bool l9_1256=l9_1251;
float l9_1257=l9_1252;
float l9_1258=fast::clamp(l9_1253,l9_1254,l9_1255);
float l9_1259=step(abs(l9_1253-l9_1258),9.9999997e-06);
l9_1257*=(l9_1259+((1.0-float(l9_1256))*(1.0-l9_1259)));
l9_1253=l9_1258;
l9_1249=l9_1253;
l9_1252=l9_1257;
}
l9_1193.y=l9_1249;
l9_1203=l9_1252;
float2 l9_1260=l9_1193;
int l9_1261=l9_1191;
int l9_1262=l9_1192;
float l9_1263=l9_1201;
float2 l9_1264=l9_1260;
int l9_1265=l9_1261;
int l9_1266=l9_1262;
float3 l9_1267=float3(0.0);
if (l9_1265==0)
{
l9_1267=float3(l9_1264,0.0);
}
else
{
if (l9_1265==1)
{
l9_1267=float3(l9_1264.x,(l9_1264.y*0.5)+(0.5-(float(l9_1266)*0.5)),0.0);
}
else
{
l9_1267=float3(l9_1264,float(l9_1266));
}
}
float3 l9_1268=l9_1267;
float3 l9_1269=l9_1268;
float2 l9_1270=l9_1269.xy;
float l9_1271=l9_1263;
float4 l9_1272=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_1270,bias(l9_1271));
float4 l9_1273=l9_1272;
float4 l9_1274=l9_1273;
if (l9_1199)
{
l9_1274=mix(l9_1200,l9_1274,float4(l9_1203));
}
float4 l9_1275=l9_1274;
l9_1184=l9_1275;
float4 l9_1276=float4(0.0);
ssGlobals l9_1277=param_3;
float4 l9_1278=float4(0.0);
l9_1277.Loop_Count_ID0=8.0;
float4 l9_1279=l9_1278;
ssGlobals l9_1280=l9_1277;
float4 l9_1281=float4(0.0);
l9_1280.Loop_Index_ID0=0.0;
l9_1280.Loop_Ratio_ID0=0.0;
float2 l9_1282=float2(0.0);
float2 l9_1283=(*sc_set0.UserUniforms).opacityTexSize.zw;
l9_1282=l9_1283;
float2 l9_1284=float2(0.0);
l9_1284=l9_1280.gScreenCoord;
float2 l9_1285=float2(0.0);
l9_1285=l9_1284;
float2 l9_1286=float2(0.0);
l9_1286=l9_1282;
float l9_1287=0.0;
float l9_1288=(*sc_set0.UserUniforms).opacityblurFactor;
l9_1287=l9_1288;
float l9_1289=0.0;
l9_1289=l9_1287;
float l9_1290=0.0;
l9_1290=exp2(l9_1289);
float l9_1291=0.0;
l9_1291=l9_1280.Loop_Index_ID0;
float2 l9_1292=float2(0.0);
float l9_1293=l9_1291;
float2 l9_1294=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_1295=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_1296=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_1297=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_1298=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_1299=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_1300=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_1301=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_1302[8];
l9_1302[0]=l9_1294;
l9_1302[1]=l9_1295;
l9_1302[2]=l9_1296;
l9_1302[3]=l9_1297;
l9_1302[4]=l9_1298;
l9_1302[5]=l9_1299;
l9_1302[6]=l9_1300;
l9_1302[7]=l9_1301;
int l9_1303=int(fast::clamp(l9_1293+9.9999997e-05,0.0,7.0));
float2 l9_1304=l9_1302[l9_1303];
l9_1292=l9_1304;
float2 l9_1305=float2(0.0);
l9_1305=(l9_1286*float2(l9_1290))*l9_1292;
float2 l9_1306=float2(0.0);
l9_1306=l9_1285+l9_1305;
float l9_1307=0.0;
l9_1307=l9_1289+(*sc_set0.UserUniforms).Port_Input1_N010;
float4 l9_1308=float4(0.0);
int l9_1309=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_1310=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1310=0;
}
else
{
l9_1310=in.varStereoViewID;
}
int l9_1311=l9_1310;
l9_1309=1-l9_1311;
}
else
{
int l9_1312=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1312=0;
}
else
{
l9_1312=in.varStereoViewID;
}
int l9_1313=l9_1312;
l9_1309=l9_1313;
}
int l9_1314=l9_1309;
int l9_1315=opacityTexLayout_tmp;
int l9_1316=l9_1314;
float2 l9_1317=l9_1306;
bool l9_1318=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_1319=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_1320=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_1321=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_1322=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_1323=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_1324=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_1325=l9_1307;
bool l9_1326=l9_1323&&(!l9_1321);
float l9_1327=1.0;
float l9_1328=l9_1317.x;
int l9_1329=l9_1320.x;
if (l9_1329==1)
{
l9_1328=fract(l9_1328);
}
else
{
if (l9_1329==2)
{
float l9_1330=fract(l9_1328);
float l9_1331=l9_1328-l9_1330;
float l9_1332=step(0.25,fract(l9_1331*0.5));
l9_1328=mix(l9_1330,1.0-l9_1330,fast::clamp(l9_1332,0.0,1.0));
}
}
l9_1317.x=l9_1328;
float l9_1333=l9_1317.y;
int l9_1334=l9_1320.y;
if (l9_1334==1)
{
l9_1333=fract(l9_1333);
}
else
{
if (l9_1334==2)
{
float l9_1335=fract(l9_1333);
float l9_1336=l9_1333-l9_1335;
float l9_1337=step(0.25,fract(l9_1336*0.5));
l9_1333=mix(l9_1335,1.0-l9_1335,fast::clamp(l9_1337,0.0,1.0));
}
}
l9_1317.y=l9_1333;
if (l9_1321)
{
bool l9_1338=l9_1323;
bool l9_1339;
if (l9_1338)
{
l9_1339=l9_1320.x==3;
}
else
{
l9_1339=l9_1338;
}
float l9_1340=l9_1317.x;
float l9_1341=l9_1322.x;
float l9_1342=l9_1322.z;
bool l9_1343=l9_1339;
float l9_1344=l9_1327;
float l9_1345=fast::clamp(l9_1340,l9_1341,l9_1342);
float l9_1346=step(abs(l9_1340-l9_1345),9.9999997e-06);
l9_1344*=(l9_1346+((1.0-float(l9_1343))*(1.0-l9_1346)));
l9_1340=l9_1345;
l9_1317.x=l9_1340;
l9_1327=l9_1344;
bool l9_1347=l9_1323;
bool l9_1348;
if (l9_1347)
{
l9_1348=l9_1320.y==3;
}
else
{
l9_1348=l9_1347;
}
float l9_1349=l9_1317.y;
float l9_1350=l9_1322.y;
float l9_1351=l9_1322.w;
bool l9_1352=l9_1348;
float l9_1353=l9_1327;
float l9_1354=fast::clamp(l9_1349,l9_1350,l9_1351);
float l9_1355=step(abs(l9_1349-l9_1354),9.9999997e-06);
l9_1353*=(l9_1355+((1.0-float(l9_1352))*(1.0-l9_1355)));
l9_1349=l9_1354;
l9_1317.y=l9_1349;
l9_1327=l9_1353;
}
float2 l9_1356=l9_1317;
bool l9_1357=l9_1318;
float3x3 l9_1358=l9_1319;
if (l9_1357)
{
l9_1356=float2((l9_1358*float3(l9_1356,1.0)).xy);
}
float2 l9_1359=l9_1356;
float2 l9_1360=l9_1359;
float2 l9_1361=l9_1360;
l9_1317=l9_1361;
float l9_1362=l9_1317.x;
int l9_1363=l9_1320.x;
bool l9_1364=l9_1326;
float l9_1365=l9_1327;
if ((l9_1363==0)||(l9_1363==3))
{
float l9_1366=l9_1362;
float l9_1367=0.0;
float l9_1368=1.0;
bool l9_1369=l9_1364;
float l9_1370=l9_1365;
float l9_1371=fast::clamp(l9_1366,l9_1367,l9_1368);
float l9_1372=step(abs(l9_1366-l9_1371),9.9999997e-06);
l9_1370*=(l9_1372+((1.0-float(l9_1369))*(1.0-l9_1372)));
l9_1366=l9_1371;
l9_1362=l9_1366;
l9_1365=l9_1370;
}
l9_1317.x=l9_1362;
l9_1327=l9_1365;
float l9_1373=l9_1317.y;
int l9_1374=l9_1320.y;
bool l9_1375=l9_1326;
float l9_1376=l9_1327;
if ((l9_1374==0)||(l9_1374==3))
{
float l9_1377=l9_1373;
float l9_1378=0.0;
float l9_1379=1.0;
bool l9_1380=l9_1375;
float l9_1381=l9_1376;
float l9_1382=fast::clamp(l9_1377,l9_1378,l9_1379);
float l9_1383=step(abs(l9_1377-l9_1382),9.9999997e-06);
l9_1381*=(l9_1383+((1.0-float(l9_1380))*(1.0-l9_1383)));
l9_1377=l9_1382;
l9_1373=l9_1377;
l9_1376=l9_1381;
}
l9_1317.y=l9_1373;
l9_1327=l9_1376;
float2 l9_1384=l9_1317;
int l9_1385=l9_1315;
int l9_1386=l9_1316;
float l9_1387=l9_1325;
float2 l9_1388=l9_1384;
int l9_1389=l9_1385;
int l9_1390=l9_1386;
float3 l9_1391=float3(0.0);
if (l9_1389==0)
{
l9_1391=float3(l9_1388,0.0);
}
else
{
if (l9_1389==1)
{
l9_1391=float3(l9_1388.x,(l9_1388.y*0.5)+(0.5-(float(l9_1390)*0.5)),0.0);
}
else
{
l9_1391=float3(l9_1388,float(l9_1390));
}
}
float3 l9_1392=l9_1391;
float3 l9_1393=l9_1392;
float2 l9_1394=l9_1393.xy;
float l9_1395=l9_1387;
float4 l9_1396=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_1394,bias(l9_1395));
float4 l9_1397=l9_1396;
float4 l9_1398=l9_1397;
if (l9_1323)
{
l9_1398=mix(l9_1324,l9_1398,float4(l9_1327));
}
float4 l9_1399=l9_1398;
l9_1308=l9_1399;
l9_1281=l9_1308;
l9_1279+=l9_1281;
l9_1278=l9_1279;
float4 l9_1400=l9_1278;
ssGlobals l9_1401=l9_1277;
float4 l9_1402=float4(0.0);
l9_1401.Loop_Index_ID0=1.0;
l9_1401.Loop_Ratio_ID0=0.142857;
float2 l9_1403=float2(0.0);
float2 l9_1404=(*sc_set0.UserUniforms).opacityTexSize.zw;
l9_1403=l9_1404;
float2 l9_1405=float2(0.0);
l9_1405=l9_1401.gScreenCoord;
float2 l9_1406=float2(0.0);
l9_1406=l9_1405;
float2 l9_1407=float2(0.0);
l9_1407=l9_1403;
float l9_1408=0.0;
float l9_1409=(*sc_set0.UserUniforms).opacityblurFactor;
l9_1408=l9_1409;
float l9_1410=0.0;
l9_1410=l9_1408;
float l9_1411=0.0;
l9_1411=exp2(l9_1410);
float l9_1412=0.0;
l9_1412=l9_1401.Loop_Index_ID0;
float2 l9_1413=float2(0.0);
float l9_1414=l9_1412;
float2 l9_1415=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_1416=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_1417=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_1418=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_1419=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_1420=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_1421=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_1422=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_1423[8];
l9_1423[0]=l9_1415;
l9_1423[1]=l9_1416;
l9_1423[2]=l9_1417;
l9_1423[3]=l9_1418;
l9_1423[4]=l9_1419;
l9_1423[5]=l9_1420;
l9_1423[6]=l9_1421;
l9_1423[7]=l9_1422;
int l9_1424=int(fast::clamp(l9_1414+9.9999997e-05,0.0,7.0));
float2 l9_1425=l9_1423[l9_1424];
l9_1413=l9_1425;
float2 l9_1426=float2(0.0);
l9_1426=(l9_1407*float2(l9_1411))*l9_1413;
float2 l9_1427=float2(0.0);
l9_1427=l9_1406+l9_1426;
float l9_1428=0.0;
l9_1428=l9_1410+(*sc_set0.UserUniforms).Port_Input1_N010;
float4 l9_1429=float4(0.0);
int l9_1430=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_1431=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1431=0;
}
else
{
l9_1431=in.varStereoViewID;
}
int l9_1432=l9_1431;
l9_1430=1-l9_1432;
}
else
{
int l9_1433=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1433=0;
}
else
{
l9_1433=in.varStereoViewID;
}
int l9_1434=l9_1433;
l9_1430=l9_1434;
}
int l9_1435=l9_1430;
int l9_1436=opacityTexLayout_tmp;
int l9_1437=l9_1435;
float2 l9_1438=l9_1427;
bool l9_1439=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_1440=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_1441=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_1442=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_1443=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_1444=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_1445=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_1446=l9_1428;
bool l9_1447=l9_1444&&(!l9_1442);
float l9_1448=1.0;
float l9_1449=l9_1438.x;
int l9_1450=l9_1441.x;
if (l9_1450==1)
{
l9_1449=fract(l9_1449);
}
else
{
if (l9_1450==2)
{
float l9_1451=fract(l9_1449);
float l9_1452=l9_1449-l9_1451;
float l9_1453=step(0.25,fract(l9_1452*0.5));
l9_1449=mix(l9_1451,1.0-l9_1451,fast::clamp(l9_1453,0.0,1.0));
}
}
l9_1438.x=l9_1449;
float l9_1454=l9_1438.y;
int l9_1455=l9_1441.y;
if (l9_1455==1)
{
l9_1454=fract(l9_1454);
}
else
{
if (l9_1455==2)
{
float l9_1456=fract(l9_1454);
float l9_1457=l9_1454-l9_1456;
float l9_1458=step(0.25,fract(l9_1457*0.5));
l9_1454=mix(l9_1456,1.0-l9_1456,fast::clamp(l9_1458,0.0,1.0));
}
}
l9_1438.y=l9_1454;
if (l9_1442)
{
bool l9_1459=l9_1444;
bool l9_1460;
if (l9_1459)
{
l9_1460=l9_1441.x==3;
}
else
{
l9_1460=l9_1459;
}
float l9_1461=l9_1438.x;
float l9_1462=l9_1443.x;
float l9_1463=l9_1443.z;
bool l9_1464=l9_1460;
float l9_1465=l9_1448;
float l9_1466=fast::clamp(l9_1461,l9_1462,l9_1463);
float l9_1467=step(abs(l9_1461-l9_1466),9.9999997e-06);
l9_1465*=(l9_1467+((1.0-float(l9_1464))*(1.0-l9_1467)));
l9_1461=l9_1466;
l9_1438.x=l9_1461;
l9_1448=l9_1465;
bool l9_1468=l9_1444;
bool l9_1469;
if (l9_1468)
{
l9_1469=l9_1441.y==3;
}
else
{
l9_1469=l9_1468;
}
float l9_1470=l9_1438.y;
float l9_1471=l9_1443.y;
float l9_1472=l9_1443.w;
bool l9_1473=l9_1469;
float l9_1474=l9_1448;
float l9_1475=fast::clamp(l9_1470,l9_1471,l9_1472);
float l9_1476=step(abs(l9_1470-l9_1475),9.9999997e-06);
l9_1474*=(l9_1476+((1.0-float(l9_1473))*(1.0-l9_1476)));
l9_1470=l9_1475;
l9_1438.y=l9_1470;
l9_1448=l9_1474;
}
float2 l9_1477=l9_1438;
bool l9_1478=l9_1439;
float3x3 l9_1479=l9_1440;
if (l9_1478)
{
l9_1477=float2((l9_1479*float3(l9_1477,1.0)).xy);
}
float2 l9_1480=l9_1477;
float2 l9_1481=l9_1480;
float2 l9_1482=l9_1481;
l9_1438=l9_1482;
float l9_1483=l9_1438.x;
int l9_1484=l9_1441.x;
bool l9_1485=l9_1447;
float l9_1486=l9_1448;
if ((l9_1484==0)||(l9_1484==3))
{
float l9_1487=l9_1483;
float l9_1488=0.0;
float l9_1489=1.0;
bool l9_1490=l9_1485;
float l9_1491=l9_1486;
float l9_1492=fast::clamp(l9_1487,l9_1488,l9_1489);
float l9_1493=step(abs(l9_1487-l9_1492),9.9999997e-06);
l9_1491*=(l9_1493+((1.0-float(l9_1490))*(1.0-l9_1493)));
l9_1487=l9_1492;
l9_1483=l9_1487;
l9_1486=l9_1491;
}
l9_1438.x=l9_1483;
l9_1448=l9_1486;
float l9_1494=l9_1438.y;
int l9_1495=l9_1441.y;
bool l9_1496=l9_1447;
float l9_1497=l9_1448;
if ((l9_1495==0)||(l9_1495==3))
{
float l9_1498=l9_1494;
float l9_1499=0.0;
float l9_1500=1.0;
bool l9_1501=l9_1496;
float l9_1502=l9_1497;
float l9_1503=fast::clamp(l9_1498,l9_1499,l9_1500);
float l9_1504=step(abs(l9_1498-l9_1503),9.9999997e-06);
l9_1502*=(l9_1504+((1.0-float(l9_1501))*(1.0-l9_1504)));
l9_1498=l9_1503;
l9_1494=l9_1498;
l9_1497=l9_1502;
}
l9_1438.y=l9_1494;
l9_1448=l9_1497;
float2 l9_1505=l9_1438;
int l9_1506=l9_1436;
int l9_1507=l9_1437;
float l9_1508=l9_1446;
float2 l9_1509=l9_1505;
int l9_1510=l9_1506;
int l9_1511=l9_1507;
float3 l9_1512=float3(0.0);
if (l9_1510==0)
{
l9_1512=float3(l9_1509,0.0);
}
else
{
if (l9_1510==1)
{
l9_1512=float3(l9_1509.x,(l9_1509.y*0.5)+(0.5-(float(l9_1511)*0.5)),0.0);
}
else
{
l9_1512=float3(l9_1509,float(l9_1511));
}
}
float3 l9_1513=l9_1512;
float3 l9_1514=l9_1513;
float2 l9_1515=l9_1514.xy;
float l9_1516=l9_1508;
float4 l9_1517=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_1515,bias(l9_1516));
float4 l9_1518=l9_1517;
float4 l9_1519=l9_1518;
if (l9_1444)
{
l9_1519=mix(l9_1445,l9_1519,float4(l9_1448));
}
float4 l9_1520=l9_1519;
l9_1429=l9_1520;
l9_1402=l9_1429;
l9_1400+=l9_1402;
l9_1278=l9_1400;
float4 l9_1521=l9_1278;
ssGlobals l9_1522=l9_1277;
float4 l9_1523=float4(0.0);
l9_1522.Loop_Index_ID0=2.0;
l9_1522.Loop_Ratio_ID0=0.285714;
float2 l9_1524=float2(0.0);
float2 l9_1525=(*sc_set0.UserUniforms).opacityTexSize.zw;
l9_1524=l9_1525;
float2 l9_1526=float2(0.0);
l9_1526=l9_1522.gScreenCoord;
float2 l9_1527=float2(0.0);
l9_1527=l9_1526;
float2 l9_1528=float2(0.0);
l9_1528=l9_1524;
float l9_1529=0.0;
float l9_1530=(*sc_set0.UserUniforms).opacityblurFactor;
l9_1529=l9_1530;
float l9_1531=0.0;
l9_1531=l9_1529;
float l9_1532=0.0;
l9_1532=exp2(l9_1531);
float l9_1533=0.0;
l9_1533=l9_1522.Loop_Index_ID0;
float2 l9_1534=float2(0.0);
float l9_1535=l9_1533;
float2 l9_1536=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_1537=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_1538=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_1539=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_1540=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_1541=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_1542=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_1543=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_1544[8];
l9_1544[0]=l9_1536;
l9_1544[1]=l9_1537;
l9_1544[2]=l9_1538;
l9_1544[3]=l9_1539;
l9_1544[4]=l9_1540;
l9_1544[5]=l9_1541;
l9_1544[6]=l9_1542;
l9_1544[7]=l9_1543;
int l9_1545=int(fast::clamp(l9_1535+9.9999997e-05,0.0,7.0));
float2 l9_1546=l9_1544[l9_1545];
l9_1534=l9_1546;
float2 l9_1547=float2(0.0);
l9_1547=(l9_1528*float2(l9_1532))*l9_1534;
float2 l9_1548=float2(0.0);
l9_1548=l9_1527+l9_1547;
float l9_1549=0.0;
l9_1549=l9_1531+(*sc_set0.UserUniforms).Port_Input1_N010;
float4 l9_1550=float4(0.0);
int l9_1551=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_1552=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1552=0;
}
else
{
l9_1552=in.varStereoViewID;
}
int l9_1553=l9_1552;
l9_1551=1-l9_1553;
}
else
{
int l9_1554=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1554=0;
}
else
{
l9_1554=in.varStereoViewID;
}
int l9_1555=l9_1554;
l9_1551=l9_1555;
}
int l9_1556=l9_1551;
int l9_1557=opacityTexLayout_tmp;
int l9_1558=l9_1556;
float2 l9_1559=l9_1548;
bool l9_1560=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_1561=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_1562=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_1563=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_1564=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_1565=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_1566=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_1567=l9_1549;
bool l9_1568=l9_1565&&(!l9_1563);
float l9_1569=1.0;
float l9_1570=l9_1559.x;
int l9_1571=l9_1562.x;
if (l9_1571==1)
{
l9_1570=fract(l9_1570);
}
else
{
if (l9_1571==2)
{
float l9_1572=fract(l9_1570);
float l9_1573=l9_1570-l9_1572;
float l9_1574=step(0.25,fract(l9_1573*0.5));
l9_1570=mix(l9_1572,1.0-l9_1572,fast::clamp(l9_1574,0.0,1.0));
}
}
l9_1559.x=l9_1570;
float l9_1575=l9_1559.y;
int l9_1576=l9_1562.y;
if (l9_1576==1)
{
l9_1575=fract(l9_1575);
}
else
{
if (l9_1576==2)
{
float l9_1577=fract(l9_1575);
float l9_1578=l9_1575-l9_1577;
float l9_1579=step(0.25,fract(l9_1578*0.5));
l9_1575=mix(l9_1577,1.0-l9_1577,fast::clamp(l9_1579,0.0,1.0));
}
}
l9_1559.y=l9_1575;
if (l9_1563)
{
bool l9_1580=l9_1565;
bool l9_1581;
if (l9_1580)
{
l9_1581=l9_1562.x==3;
}
else
{
l9_1581=l9_1580;
}
float l9_1582=l9_1559.x;
float l9_1583=l9_1564.x;
float l9_1584=l9_1564.z;
bool l9_1585=l9_1581;
float l9_1586=l9_1569;
float l9_1587=fast::clamp(l9_1582,l9_1583,l9_1584);
float l9_1588=step(abs(l9_1582-l9_1587),9.9999997e-06);
l9_1586*=(l9_1588+((1.0-float(l9_1585))*(1.0-l9_1588)));
l9_1582=l9_1587;
l9_1559.x=l9_1582;
l9_1569=l9_1586;
bool l9_1589=l9_1565;
bool l9_1590;
if (l9_1589)
{
l9_1590=l9_1562.y==3;
}
else
{
l9_1590=l9_1589;
}
float l9_1591=l9_1559.y;
float l9_1592=l9_1564.y;
float l9_1593=l9_1564.w;
bool l9_1594=l9_1590;
float l9_1595=l9_1569;
float l9_1596=fast::clamp(l9_1591,l9_1592,l9_1593);
float l9_1597=step(abs(l9_1591-l9_1596),9.9999997e-06);
l9_1595*=(l9_1597+((1.0-float(l9_1594))*(1.0-l9_1597)));
l9_1591=l9_1596;
l9_1559.y=l9_1591;
l9_1569=l9_1595;
}
float2 l9_1598=l9_1559;
bool l9_1599=l9_1560;
float3x3 l9_1600=l9_1561;
if (l9_1599)
{
l9_1598=float2((l9_1600*float3(l9_1598,1.0)).xy);
}
float2 l9_1601=l9_1598;
float2 l9_1602=l9_1601;
float2 l9_1603=l9_1602;
l9_1559=l9_1603;
float l9_1604=l9_1559.x;
int l9_1605=l9_1562.x;
bool l9_1606=l9_1568;
float l9_1607=l9_1569;
if ((l9_1605==0)||(l9_1605==3))
{
float l9_1608=l9_1604;
float l9_1609=0.0;
float l9_1610=1.0;
bool l9_1611=l9_1606;
float l9_1612=l9_1607;
float l9_1613=fast::clamp(l9_1608,l9_1609,l9_1610);
float l9_1614=step(abs(l9_1608-l9_1613),9.9999997e-06);
l9_1612*=(l9_1614+((1.0-float(l9_1611))*(1.0-l9_1614)));
l9_1608=l9_1613;
l9_1604=l9_1608;
l9_1607=l9_1612;
}
l9_1559.x=l9_1604;
l9_1569=l9_1607;
float l9_1615=l9_1559.y;
int l9_1616=l9_1562.y;
bool l9_1617=l9_1568;
float l9_1618=l9_1569;
if ((l9_1616==0)||(l9_1616==3))
{
float l9_1619=l9_1615;
float l9_1620=0.0;
float l9_1621=1.0;
bool l9_1622=l9_1617;
float l9_1623=l9_1618;
float l9_1624=fast::clamp(l9_1619,l9_1620,l9_1621);
float l9_1625=step(abs(l9_1619-l9_1624),9.9999997e-06);
l9_1623*=(l9_1625+((1.0-float(l9_1622))*(1.0-l9_1625)));
l9_1619=l9_1624;
l9_1615=l9_1619;
l9_1618=l9_1623;
}
l9_1559.y=l9_1615;
l9_1569=l9_1618;
float2 l9_1626=l9_1559;
int l9_1627=l9_1557;
int l9_1628=l9_1558;
float l9_1629=l9_1567;
float2 l9_1630=l9_1626;
int l9_1631=l9_1627;
int l9_1632=l9_1628;
float3 l9_1633=float3(0.0);
if (l9_1631==0)
{
l9_1633=float3(l9_1630,0.0);
}
else
{
if (l9_1631==1)
{
l9_1633=float3(l9_1630.x,(l9_1630.y*0.5)+(0.5-(float(l9_1632)*0.5)),0.0);
}
else
{
l9_1633=float3(l9_1630,float(l9_1632));
}
}
float3 l9_1634=l9_1633;
float3 l9_1635=l9_1634;
float2 l9_1636=l9_1635.xy;
float l9_1637=l9_1629;
float4 l9_1638=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_1636,bias(l9_1637));
float4 l9_1639=l9_1638;
float4 l9_1640=l9_1639;
if (l9_1565)
{
l9_1640=mix(l9_1566,l9_1640,float4(l9_1569));
}
float4 l9_1641=l9_1640;
l9_1550=l9_1641;
l9_1523=l9_1550;
l9_1521+=l9_1523;
l9_1278=l9_1521;
float4 l9_1642=l9_1278;
ssGlobals l9_1643=l9_1277;
float4 l9_1644=float4(0.0);
l9_1643.Loop_Index_ID0=3.0;
l9_1643.Loop_Ratio_ID0=0.42857099;
float2 l9_1645=float2(0.0);
float2 l9_1646=(*sc_set0.UserUniforms).opacityTexSize.zw;
l9_1645=l9_1646;
float2 l9_1647=float2(0.0);
l9_1647=l9_1643.gScreenCoord;
float2 l9_1648=float2(0.0);
l9_1648=l9_1647;
float2 l9_1649=float2(0.0);
l9_1649=l9_1645;
float l9_1650=0.0;
float l9_1651=(*sc_set0.UserUniforms).opacityblurFactor;
l9_1650=l9_1651;
float l9_1652=0.0;
l9_1652=l9_1650;
float l9_1653=0.0;
l9_1653=exp2(l9_1652);
float l9_1654=0.0;
l9_1654=l9_1643.Loop_Index_ID0;
float2 l9_1655=float2(0.0);
float l9_1656=l9_1654;
float2 l9_1657=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_1658=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_1659=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_1660=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_1661=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_1662=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_1663=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_1664=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_1665[8];
l9_1665[0]=l9_1657;
l9_1665[1]=l9_1658;
l9_1665[2]=l9_1659;
l9_1665[3]=l9_1660;
l9_1665[4]=l9_1661;
l9_1665[5]=l9_1662;
l9_1665[6]=l9_1663;
l9_1665[7]=l9_1664;
int l9_1666=int(fast::clamp(l9_1656+9.9999997e-05,0.0,7.0));
float2 l9_1667=l9_1665[l9_1666];
l9_1655=l9_1667;
float2 l9_1668=float2(0.0);
l9_1668=(l9_1649*float2(l9_1653))*l9_1655;
float2 l9_1669=float2(0.0);
l9_1669=l9_1648+l9_1668;
float l9_1670=0.0;
l9_1670=l9_1652+(*sc_set0.UserUniforms).Port_Input1_N010;
float4 l9_1671=float4(0.0);
int l9_1672=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_1673=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1673=0;
}
else
{
l9_1673=in.varStereoViewID;
}
int l9_1674=l9_1673;
l9_1672=1-l9_1674;
}
else
{
int l9_1675=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1675=0;
}
else
{
l9_1675=in.varStereoViewID;
}
int l9_1676=l9_1675;
l9_1672=l9_1676;
}
int l9_1677=l9_1672;
int l9_1678=opacityTexLayout_tmp;
int l9_1679=l9_1677;
float2 l9_1680=l9_1669;
bool l9_1681=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_1682=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_1683=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_1684=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_1685=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_1686=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_1687=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_1688=l9_1670;
bool l9_1689=l9_1686&&(!l9_1684);
float l9_1690=1.0;
float l9_1691=l9_1680.x;
int l9_1692=l9_1683.x;
if (l9_1692==1)
{
l9_1691=fract(l9_1691);
}
else
{
if (l9_1692==2)
{
float l9_1693=fract(l9_1691);
float l9_1694=l9_1691-l9_1693;
float l9_1695=step(0.25,fract(l9_1694*0.5));
l9_1691=mix(l9_1693,1.0-l9_1693,fast::clamp(l9_1695,0.0,1.0));
}
}
l9_1680.x=l9_1691;
float l9_1696=l9_1680.y;
int l9_1697=l9_1683.y;
if (l9_1697==1)
{
l9_1696=fract(l9_1696);
}
else
{
if (l9_1697==2)
{
float l9_1698=fract(l9_1696);
float l9_1699=l9_1696-l9_1698;
float l9_1700=step(0.25,fract(l9_1699*0.5));
l9_1696=mix(l9_1698,1.0-l9_1698,fast::clamp(l9_1700,0.0,1.0));
}
}
l9_1680.y=l9_1696;
if (l9_1684)
{
bool l9_1701=l9_1686;
bool l9_1702;
if (l9_1701)
{
l9_1702=l9_1683.x==3;
}
else
{
l9_1702=l9_1701;
}
float l9_1703=l9_1680.x;
float l9_1704=l9_1685.x;
float l9_1705=l9_1685.z;
bool l9_1706=l9_1702;
float l9_1707=l9_1690;
float l9_1708=fast::clamp(l9_1703,l9_1704,l9_1705);
float l9_1709=step(abs(l9_1703-l9_1708),9.9999997e-06);
l9_1707*=(l9_1709+((1.0-float(l9_1706))*(1.0-l9_1709)));
l9_1703=l9_1708;
l9_1680.x=l9_1703;
l9_1690=l9_1707;
bool l9_1710=l9_1686;
bool l9_1711;
if (l9_1710)
{
l9_1711=l9_1683.y==3;
}
else
{
l9_1711=l9_1710;
}
float l9_1712=l9_1680.y;
float l9_1713=l9_1685.y;
float l9_1714=l9_1685.w;
bool l9_1715=l9_1711;
float l9_1716=l9_1690;
float l9_1717=fast::clamp(l9_1712,l9_1713,l9_1714);
float l9_1718=step(abs(l9_1712-l9_1717),9.9999997e-06);
l9_1716*=(l9_1718+((1.0-float(l9_1715))*(1.0-l9_1718)));
l9_1712=l9_1717;
l9_1680.y=l9_1712;
l9_1690=l9_1716;
}
float2 l9_1719=l9_1680;
bool l9_1720=l9_1681;
float3x3 l9_1721=l9_1682;
if (l9_1720)
{
l9_1719=float2((l9_1721*float3(l9_1719,1.0)).xy);
}
float2 l9_1722=l9_1719;
float2 l9_1723=l9_1722;
float2 l9_1724=l9_1723;
l9_1680=l9_1724;
float l9_1725=l9_1680.x;
int l9_1726=l9_1683.x;
bool l9_1727=l9_1689;
float l9_1728=l9_1690;
if ((l9_1726==0)||(l9_1726==3))
{
float l9_1729=l9_1725;
float l9_1730=0.0;
float l9_1731=1.0;
bool l9_1732=l9_1727;
float l9_1733=l9_1728;
float l9_1734=fast::clamp(l9_1729,l9_1730,l9_1731);
float l9_1735=step(abs(l9_1729-l9_1734),9.9999997e-06);
l9_1733*=(l9_1735+((1.0-float(l9_1732))*(1.0-l9_1735)));
l9_1729=l9_1734;
l9_1725=l9_1729;
l9_1728=l9_1733;
}
l9_1680.x=l9_1725;
l9_1690=l9_1728;
float l9_1736=l9_1680.y;
int l9_1737=l9_1683.y;
bool l9_1738=l9_1689;
float l9_1739=l9_1690;
if ((l9_1737==0)||(l9_1737==3))
{
float l9_1740=l9_1736;
float l9_1741=0.0;
float l9_1742=1.0;
bool l9_1743=l9_1738;
float l9_1744=l9_1739;
float l9_1745=fast::clamp(l9_1740,l9_1741,l9_1742);
float l9_1746=step(abs(l9_1740-l9_1745),9.9999997e-06);
l9_1744*=(l9_1746+((1.0-float(l9_1743))*(1.0-l9_1746)));
l9_1740=l9_1745;
l9_1736=l9_1740;
l9_1739=l9_1744;
}
l9_1680.y=l9_1736;
l9_1690=l9_1739;
float2 l9_1747=l9_1680;
int l9_1748=l9_1678;
int l9_1749=l9_1679;
float l9_1750=l9_1688;
float2 l9_1751=l9_1747;
int l9_1752=l9_1748;
int l9_1753=l9_1749;
float3 l9_1754=float3(0.0);
if (l9_1752==0)
{
l9_1754=float3(l9_1751,0.0);
}
else
{
if (l9_1752==1)
{
l9_1754=float3(l9_1751.x,(l9_1751.y*0.5)+(0.5-(float(l9_1753)*0.5)),0.0);
}
else
{
l9_1754=float3(l9_1751,float(l9_1753));
}
}
float3 l9_1755=l9_1754;
float3 l9_1756=l9_1755;
float2 l9_1757=l9_1756.xy;
float l9_1758=l9_1750;
float4 l9_1759=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_1757,bias(l9_1758));
float4 l9_1760=l9_1759;
float4 l9_1761=l9_1760;
if (l9_1686)
{
l9_1761=mix(l9_1687,l9_1761,float4(l9_1690));
}
float4 l9_1762=l9_1761;
l9_1671=l9_1762;
l9_1644=l9_1671;
l9_1642+=l9_1644;
l9_1278=l9_1642;
float4 l9_1763=l9_1278;
ssGlobals l9_1764=l9_1277;
float4 l9_1765=float4(0.0);
l9_1764.Loop_Index_ID0=4.0;
l9_1764.Loop_Ratio_ID0=0.57142901;
float2 l9_1766=float2(0.0);
float2 l9_1767=(*sc_set0.UserUniforms).opacityTexSize.zw;
l9_1766=l9_1767;
float2 l9_1768=float2(0.0);
l9_1768=l9_1764.gScreenCoord;
float2 l9_1769=float2(0.0);
l9_1769=l9_1768;
float2 l9_1770=float2(0.0);
l9_1770=l9_1766;
float l9_1771=0.0;
float l9_1772=(*sc_set0.UserUniforms).opacityblurFactor;
l9_1771=l9_1772;
float l9_1773=0.0;
l9_1773=l9_1771;
float l9_1774=0.0;
l9_1774=exp2(l9_1773);
float l9_1775=0.0;
l9_1775=l9_1764.Loop_Index_ID0;
float2 l9_1776=float2(0.0);
float l9_1777=l9_1775;
float2 l9_1778=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_1779=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_1780=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_1781=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_1782=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_1783=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_1784=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_1785=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_1786[8];
l9_1786[0]=l9_1778;
l9_1786[1]=l9_1779;
l9_1786[2]=l9_1780;
l9_1786[3]=l9_1781;
l9_1786[4]=l9_1782;
l9_1786[5]=l9_1783;
l9_1786[6]=l9_1784;
l9_1786[7]=l9_1785;
int l9_1787=int(fast::clamp(l9_1777+9.9999997e-05,0.0,7.0));
float2 l9_1788=l9_1786[l9_1787];
l9_1776=l9_1788;
float2 l9_1789=float2(0.0);
l9_1789=(l9_1770*float2(l9_1774))*l9_1776;
float2 l9_1790=float2(0.0);
l9_1790=l9_1769+l9_1789;
float l9_1791=0.0;
l9_1791=l9_1773+(*sc_set0.UserUniforms).Port_Input1_N010;
float4 l9_1792=float4(0.0);
int l9_1793=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_1794=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1794=0;
}
else
{
l9_1794=in.varStereoViewID;
}
int l9_1795=l9_1794;
l9_1793=1-l9_1795;
}
else
{
int l9_1796=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1796=0;
}
else
{
l9_1796=in.varStereoViewID;
}
int l9_1797=l9_1796;
l9_1793=l9_1797;
}
int l9_1798=l9_1793;
int l9_1799=opacityTexLayout_tmp;
int l9_1800=l9_1798;
float2 l9_1801=l9_1790;
bool l9_1802=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_1803=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_1804=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_1805=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_1806=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_1807=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_1808=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_1809=l9_1791;
bool l9_1810=l9_1807&&(!l9_1805);
float l9_1811=1.0;
float l9_1812=l9_1801.x;
int l9_1813=l9_1804.x;
if (l9_1813==1)
{
l9_1812=fract(l9_1812);
}
else
{
if (l9_1813==2)
{
float l9_1814=fract(l9_1812);
float l9_1815=l9_1812-l9_1814;
float l9_1816=step(0.25,fract(l9_1815*0.5));
l9_1812=mix(l9_1814,1.0-l9_1814,fast::clamp(l9_1816,0.0,1.0));
}
}
l9_1801.x=l9_1812;
float l9_1817=l9_1801.y;
int l9_1818=l9_1804.y;
if (l9_1818==1)
{
l9_1817=fract(l9_1817);
}
else
{
if (l9_1818==2)
{
float l9_1819=fract(l9_1817);
float l9_1820=l9_1817-l9_1819;
float l9_1821=step(0.25,fract(l9_1820*0.5));
l9_1817=mix(l9_1819,1.0-l9_1819,fast::clamp(l9_1821,0.0,1.0));
}
}
l9_1801.y=l9_1817;
if (l9_1805)
{
bool l9_1822=l9_1807;
bool l9_1823;
if (l9_1822)
{
l9_1823=l9_1804.x==3;
}
else
{
l9_1823=l9_1822;
}
float l9_1824=l9_1801.x;
float l9_1825=l9_1806.x;
float l9_1826=l9_1806.z;
bool l9_1827=l9_1823;
float l9_1828=l9_1811;
float l9_1829=fast::clamp(l9_1824,l9_1825,l9_1826);
float l9_1830=step(abs(l9_1824-l9_1829),9.9999997e-06);
l9_1828*=(l9_1830+((1.0-float(l9_1827))*(1.0-l9_1830)));
l9_1824=l9_1829;
l9_1801.x=l9_1824;
l9_1811=l9_1828;
bool l9_1831=l9_1807;
bool l9_1832;
if (l9_1831)
{
l9_1832=l9_1804.y==3;
}
else
{
l9_1832=l9_1831;
}
float l9_1833=l9_1801.y;
float l9_1834=l9_1806.y;
float l9_1835=l9_1806.w;
bool l9_1836=l9_1832;
float l9_1837=l9_1811;
float l9_1838=fast::clamp(l9_1833,l9_1834,l9_1835);
float l9_1839=step(abs(l9_1833-l9_1838),9.9999997e-06);
l9_1837*=(l9_1839+((1.0-float(l9_1836))*(1.0-l9_1839)));
l9_1833=l9_1838;
l9_1801.y=l9_1833;
l9_1811=l9_1837;
}
float2 l9_1840=l9_1801;
bool l9_1841=l9_1802;
float3x3 l9_1842=l9_1803;
if (l9_1841)
{
l9_1840=float2((l9_1842*float3(l9_1840,1.0)).xy);
}
float2 l9_1843=l9_1840;
float2 l9_1844=l9_1843;
float2 l9_1845=l9_1844;
l9_1801=l9_1845;
float l9_1846=l9_1801.x;
int l9_1847=l9_1804.x;
bool l9_1848=l9_1810;
float l9_1849=l9_1811;
if ((l9_1847==0)||(l9_1847==3))
{
float l9_1850=l9_1846;
float l9_1851=0.0;
float l9_1852=1.0;
bool l9_1853=l9_1848;
float l9_1854=l9_1849;
float l9_1855=fast::clamp(l9_1850,l9_1851,l9_1852);
float l9_1856=step(abs(l9_1850-l9_1855),9.9999997e-06);
l9_1854*=(l9_1856+((1.0-float(l9_1853))*(1.0-l9_1856)));
l9_1850=l9_1855;
l9_1846=l9_1850;
l9_1849=l9_1854;
}
l9_1801.x=l9_1846;
l9_1811=l9_1849;
float l9_1857=l9_1801.y;
int l9_1858=l9_1804.y;
bool l9_1859=l9_1810;
float l9_1860=l9_1811;
if ((l9_1858==0)||(l9_1858==3))
{
float l9_1861=l9_1857;
float l9_1862=0.0;
float l9_1863=1.0;
bool l9_1864=l9_1859;
float l9_1865=l9_1860;
float l9_1866=fast::clamp(l9_1861,l9_1862,l9_1863);
float l9_1867=step(abs(l9_1861-l9_1866),9.9999997e-06);
l9_1865*=(l9_1867+((1.0-float(l9_1864))*(1.0-l9_1867)));
l9_1861=l9_1866;
l9_1857=l9_1861;
l9_1860=l9_1865;
}
l9_1801.y=l9_1857;
l9_1811=l9_1860;
float2 l9_1868=l9_1801;
int l9_1869=l9_1799;
int l9_1870=l9_1800;
float l9_1871=l9_1809;
float2 l9_1872=l9_1868;
int l9_1873=l9_1869;
int l9_1874=l9_1870;
float3 l9_1875=float3(0.0);
if (l9_1873==0)
{
l9_1875=float3(l9_1872,0.0);
}
else
{
if (l9_1873==1)
{
l9_1875=float3(l9_1872.x,(l9_1872.y*0.5)+(0.5-(float(l9_1874)*0.5)),0.0);
}
else
{
l9_1875=float3(l9_1872,float(l9_1874));
}
}
float3 l9_1876=l9_1875;
float3 l9_1877=l9_1876;
float2 l9_1878=l9_1877.xy;
float l9_1879=l9_1871;
float4 l9_1880=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_1878,bias(l9_1879));
float4 l9_1881=l9_1880;
float4 l9_1882=l9_1881;
if (l9_1807)
{
l9_1882=mix(l9_1808,l9_1882,float4(l9_1811));
}
float4 l9_1883=l9_1882;
l9_1792=l9_1883;
l9_1765=l9_1792;
l9_1763+=l9_1765;
l9_1278=l9_1763;
float4 l9_1884=l9_1278;
ssGlobals l9_1885=l9_1277;
float4 l9_1886=float4(0.0);
l9_1885.Loop_Index_ID0=5.0;
l9_1885.Loop_Ratio_ID0=0.71428603;
float2 l9_1887=float2(0.0);
float2 l9_1888=(*sc_set0.UserUniforms).opacityTexSize.zw;
l9_1887=l9_1888;
float2 l9_1889=float2(0.0);
l9_1889=l9_1885.gScreenCoord;
float2 l9_1890=float2(0.0);
l9_1890=l9_1889;
float2 l9_1891=float2(0.0);
l9_1891=l9_1887;
float l9_1892=0.0;
float l9_1893=(*sc_set0.UserUniforms).opacityblurFactor;
l9_1892=l9_1893;
float l9_1894=0.0;
l9_1894=l9_1892;
float l9_1895=0.0;
l9_1895=exp2(l9_1894);
float l9_1896=0.0;
l9_1896=l9_1885.Loop_Index_ID0;
float2 l9_1897=float2(0.0);
float l9_1898=l9_1896;
float2 l9_1899=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_1900=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_1901=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_1902=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_1903=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_1904=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_1905=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_1906=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_1907[8];
l9_1907[0]=l9_1899;
l9_1907[1]=l9_1900;
l9_1907[2]=l9_1901;
l9_1907[3]=l9_1902;
l9_1907[4]=l9_1903;
l9_1907[5]=l9_1904;
l9_1907[6]=l9_1905;
l9_1907[7]=l9_1906;
int l9_1908=int(fast::clamp(l9_1898+9.9999997e-05,0.0,7.0));
float2 l9_1909=l9_1907[l9_1908];
l9_1897=l9_1909;
float2 l9_1910=float2(0.0);
l9_1910=(l9_1891*float2(l9_1895))*l9_1897;
float2 l9_1911=float2(0.0);
l9_1911=l9_1890+l9_1910;
float l9_1912=0.0;
l9_1912=l9_1894+(*sc_set0.UserUniforms).Port_Input1_N010;
float4 l9_1913=float4(0.0);
int l9_1914=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_1915=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1915=0;
}
else
{
l9_1915=in.varStereoViewID;
}
int l9_1916=l9_1915;
l9_1914=1-l9_1916;
}
else
{
int l9_1917=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1917=0;
}
else
{
l9_1917=in.varStereoViewID;
}
int l9_1918=l9_1917;
l9_1914=l9_1918;
}
int l9_1919=l9_1914;
int l9_1920=opacityTexLayout_tmp;
int l9_1921=l9_1919;
float2 l9_1922=l9_1911;
bool l9_1923=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_1924=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_1925=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_1926=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_1927=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_1928=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_1929=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_1930=l9_1912;
bool l9_1931=l9_1928&&(!l9_1926);
float l9_1932=1.0;
float l9_1933=l9_1922.x;
int l9_1934=l9_1925.x;
if (l9_1934==1)
{
l9_1933=fract(l9_1933);
}
else
{
if (l9_1934==2)
{
float l9_1935=fract(l9_1933);
float l9_1936=l9_1933-l9_1935;
float l9_1937=step(0.25,fract(l9_1936*0.5));
l9_1933=mix(l9_1935,1.0-l9_1935,fast::clamp(l9_1937,0.0,1.0));
}
}
l9_1922.x=l9_1933;
float l9_1938=l9_1922.y;
int l9_1939=l9_1925.y;
if (l9_1939==1)
{
l9_1938=fract(l9_1938);
}
else
{
if (l9_1939==2)
{
float l9_1940=fract(l9_1938);
float l9_1941=l9_1938-l9_1940;
float l9_1942=step(0.25,fract(l9_1941*0.5));
l9_1938=mix(l9_1940,1.0-l9_1940,fast::clamp(l9_1942,0.0,1.0));
}
}
l9_1922.y=l9_1938;
if (l9_1926)
{
bool l9_1943=l9_1928;
bool l9_1944;
if (l9_1943)
{
l9_1944=l9_1925.x==3;
}
else
{
l9_1944=l9_1943;
}
float l9_1945=l9_1922.x;
float l9_1946=l9_1927.x;
float l9_1947=l9_1927.z;
bool l9_1948=l9_1944;
float l9_1949=l9_1932;
float l9_1950=fast::clamp(l9_1945,l9_1946,l9_1947);
float l9_1951=step(abs(l9_1945-l9_1950),9.9999997e-06);
l9_1949*=(l9_1951+((1.0-float(l9_1948))*(1.0-l9_1951)));
l9_1945=l9_1950;
l9_1922.x=l9_1945;
l9_1932=l9_1949;
bool l9_1952=l9_1928;
bool l9_1953;
if (l9_1952)
{
l9_1953=l9_1925.y==3;
}
else
{
l9_1953=l9_1952;
}
float l9_1954=l9_1922.y;
float l9_1955=l9_1927.y;
float l9_1956=l9_1927.w;
bool l9_1957=l9_1953;
float l9_1958=l9_1932;
float l9_1959=fast::clamp(l9_1954,l9_1955,l9_1956);
float l9_1960=step(abs(l9_1954-l9_1959),9.9999997e-06);
l9_1958*=(l9_1960+((1.0-float(l9_1957))*(1.0-l9_1960)));
l9_1954=l9_1959;
l9_1922.y=l9_1954;
l9_1932=l9_1958;
}
float2 l9_1961=l9_1922;
bool l9_1962=l9_1923;
float3x3 l9_1963=l9_1924;
if (l9_1962)
{
l9_1961=float2((l9_1963*float3(l9_1961,1.0)).xy);
}
float2 l9_1964=l9_1961;
float2 l9_1965=l9_1964;
float2 l9_1966=l9_1965;
l9_1922=l9_1966;
float l9_1967=l9_1922.x;
int l9_1968=l9_1925.x;
bool l9_1969=l9_1931;
float l9_1970=l9_1932;
if ((l9_1968==0)||(l9_1968==3))
{
float l9_1971=l9_1967;
float l9_1972=0.0;
float l9_1973=1.0;
bool l9_1974=l9_1969;
float l9_1975=l9_1970;
float l9_1976=fast::clamp(l9_1971,l9_1972,l9_1973);
float l9_1977=step(abs(l9_1971-l9_1976),9.9999997e-06);
l9_1975*=(l9_1977+((1.0-float(l9_1974))*(1.0-l9_1977)));
l9_1971=l9_1976;
l9_1967=l9_1971;
l9_1970=l9_1975;
}
l9_1922.x=l9_1967;
l9_1932=l9_1970;
float l9_1978=l9_1922.y;
int l9_1979=l9_1925.y;
bool l9_1980=l9_1931;
float l9_1981=l9_1932;
if ((l9_1979==0)||(l9_1979==3))
{
float l9_1982=l9_1978;
float l9_1983=0.0;
float l9_1984=1.0;
bool l9_1985=l9_1980;
float l9_1986=l9_1981;
float l9_1987=fast::clamp(l9_1982,l9_1983,l9_1984);
float l9_1988=step(abs(l9_1982-l9_1987),9.9999997e-06);
l9_1986*=(l9_1988+((1.0-float(l9_1985))*(1.0-l9_1988)));
l9_1982=l9_1987;
l9_1978=l9_1982;
l9_1981=l9_1986;
}
l9_1922.y=l9_1978;
l9_1932=l9_1981;
float2 l9_1989=l9_1922;
int l9_1990=l9_1920;
int l9_1991=l9_1921;
float l9_1992=l9_1930;
float2 l9_1993=l9_1989;
int l9_1994=l9_1990;
int l9_1995=l9_1991;
float3 l9_1996=float3(0.0);
if (l9_1994==0)
{
l9_1996=float3(l9_1993,0.0);
}
else
{
if (l9_1994==1)
{
l9_1996=float3(l9_1993.x,(l9_1993.y*0.5)+(0.5-(float(l9_1995)*0.5)),0.0);
}
else
{
l9_1996=float3(l9_1993,float(l9_1995));
}
}
float3 l9_1997=l9_1996;
float3 l9_1998=l9_1997;
float2 l9_1999=l9_1998.xy;
float l9_2000=l9_1992;
float4 l9_2001=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_1999,bias(l9_2000));
float4 l9_2002=l9_2001;
float4 l9_2003=l9_2002;
if (l9_1928)
{
l9_2003=mix(l9_1929,l9_2003,float4(l9_1932));
}
float4 l9_2004=l9_2003;
l9_1913=l9_2004;
l9_1886=l9_1913;
l9_1884+=l9_1886;
l9_1278=l9_1884;
float4 l9_2005=l9_1278;
ssGlobals l9_2006=l9_1277;
float4 l9_2007=float4(0.0);
l9_2006.Loop_Index_ID0=6.0;
l9_2006.Loop_Ratio_ID0=0.85714298;
float2 l9_2008=float2(0.0);
float2 l9_2009=(*sc_set0.UserUniforms).opacityTexSize.zw;
l9_2008=l9_2009;
float2 l9_2010=float2(0.0);
l9_2010=l9_2006.gScreenCoord;
float2 l9_2011=float2(0.0);
l9_2011=l9_2010;
float2 l9_2012=float2(0.0);
l9_2012=l9_2008;
float l9_2013=0.0;
float l9_2014=(*sc_set0.UserUniforms).opacityblurFactor;
l9_2013=l9_2014;
float l9_2015=0.0;
l9_2015=l9_2013;
float l9_2016=0.0;
l9_2016=exp2(l9_2015);
float l9_2017=0.0;
l9_2017=l9_2006.Loop_Index_ID0;
float2 l9_2018=float2(0.0);
float l9_2019=l9_2017;
float2 l9_2020=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_2021=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_2022=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_2023=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_2024=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_2025=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_2026=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_2027=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_2028[8];
l9_2028[0]=l9_2020;
l9_2028[1]=l9_2021;
l9_2028[2]=l9_2022;
l9_2028[3]=l9_2023;
l9_2028[4]=l9_2024;
l9_2028[5]=l9_2025;
l9_2028[6]=l9_2026;
l9_2028[7]=l9_2027;
int l9_2029=int(fast::clamp(l9_2019+9.9999997e-05,0.0,7.0));
float2 l9_2030=l9_2028[l9_2029];
l9_2018=l9_2030;
float2 l9_2031=float2(0.0);
l9_2031=(l9_2012*float2(l9_2016))*l9_2018;
float2 l9_2032=float2(0.0);
l9_2032=l9_2011+l9_2031;
float l9_2033=0.0;
l9_2033=l9_2015+(*sc_set0.UserUniforms).Port_Input1_N010;
float4 l9_2034=float4(0.0);
int l9_2035=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_2036=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2036=0;
}
else
{
l9_2036=in.varStereoViewID;
}
int l9_2037=l9_2036;
l9_2035=1-l9_2037;
}
else
{
int l9_2038=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2038=0;
}
else
{
l9_2038=in.varStereoViewID;
}
int l9_2039=l9_2038;
l9_2035=l9_2039;
}
int l9_2040=l9_2035;
int l9_2041=opacityTexLayout_tmp;
int l9_2042=l9_2040;
float2 l9_2043=l9_2032;
bool l9_2044=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_2045=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_2046=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_2047=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_2048=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_2049=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_2050=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_2051=l9_2033;
bool l9_2052=l9_2049&&(!l9_2047);
float l9_2053=1.0;
float l9_2054=l9_2043.x;
int l9_2055=l9_2046.x;
if (l9_2055==1)
{
l9_2054=fract(l9_2054);
}
else
{
if (l9_2055==2)
{
float l9_2056=fract(l9_2054);
float l9_2057=l9_2054-l9_2056;
float l9_2058=step(0.25,fract(l9_2057*0.5));
l9_2054=mix(l9_2056,1.0-l9_2056,fast::clamp(l9_2058,0.0,1.0));
}
}
l9_2043.x=l9_2054;
float l9_2059=l9_2043.y;
int l9_2060=l9_2046.y;
if (l9_2060==1)
{
l9_2059=fract(l9_2059);
}
else
{
if (l9_2060==2)
{
float l9_2061=fract(l9_2059);
float l9_2062=l9_2059-l9_2061;
float l9_2063=step(0.25,fract(l9_2062*0.5));
l9_2059=mix(l9_2061,1.0-l9_2061,fast::clamp(l9_2063,0.0,1.0));
}
}
l9_2043.y=l9_2059;
if (l9_2047)
{
bool l9_2064=l9_2049;
bool l9_2065;
if (l9_2064)
{
l9_2065=l9_2046.x==3;
}
else
{
l9_2065=l9_2064;
}
float l9_2066=l9_2043.x;
float l9_2067=l9_2048.x;
float l9_2068=l9_2048.z;
bool l9_2069=l9_2065;
float l9_2070=l9_2053;
float l9_2071=fast::clamp(l9_2066,l9_2067,l9_2068);
float l9_2072=step(abs(l9_2066-l9_2071),9.9999997e-06);
l9_2070*=(l9_2072+((1.0-float(l9_2069))*(1.0-l9_2072)));
l9_2066=l9_2071;
l9_2043.x=l9_2066;
l9_2053=l9_2070;
bool l9_2073=l9_2049;
bool l9_2074;
if (l9_2073)
{
l9_2074=l9_2046.y==3;
}
else
{
l9_2074=l9_2073;
}
float l9_2075=l9_2043.y;
float l9_2076=l9_2048.y;
float l9_2077=l9_2048.w;
bool l9_2078=l9_2074;
float l9_2079=l9_2053;
float l9_2080=fast::clamp(l9_2075,l9_2076,l9_2077);
float l9_2081=step(abs(l9_2075-l9_2080),9.9999997e-06);
l9_2079*=(l9_2081+((1.0-float(l9_2078))*(1.0-l9_2081)));
l9_2075=l9_2080;
l9_2043.y=l9_2075;
l9_2053=l9_2079;
}
float2 l9_2082=l9_2043;
bool l9_2083=l9_2044;
float3x3 l9_2084=l9_2045;
if (l9_2083)
{
l9_2082=float2((l9_2084*float3(l9_2082,1.0)).xy);
}
float2 l9_2085=l9_2082;
float2 l9_2086=l9_2085;
float2 l9_2087=l9_2086;
l9_2043=l9_2087;
float l9_2088=l9_2043.x;
int l9_2089=l9_2046.x;
bool l9_2090=l9_2052;
float l9_2091=l9_2053;
if ((l9_2089==0)||(l9_2089==3))
{
float l9_2092=l9_2088;
float l9_2093=0.0;
float l9_2094=1.0;
bool l9_2095=l9_2090;
float l9_2096=l9_2091;
float l9_2097=fast::clamp(l9_2092,l9_2093,l9_2094);
float l9_2098=step(abs(l9_2092-l9_2097),9.9999997e-06);
l9_2096*=(l9_2098+((1.0-float(l9_2095))*(1.0-l9_2098)));
l9_2092=l9_2097;
l9_2088=l9_2092;
l9_2091=l9_2096;
}
l9_2043.x=l9_2088;
l9_2053=l9_2091;
float l9_2099=l9_2043.y;
int l9_2100=l9_2046.y;
bool l9_2101=l9_2052;
float l9_2102=l9_2053;
if ((l9_2100==0)||(l9_2100==3))
{
float l9_2103=l9_2099;
float l9_2104=0.0;
float l9_2105=1.0;
bool l9_2106=l9_2101;
float l9_2107=l9_2102;
float l9_2108=fast::clamp(l9_2103,l9_2104,l9_2105);
float l9_2109=step(abs(l9_2103-l9_2108),9.9999997e-06);
l9_2107*=(l9_2109+((1.0-float(l9_2106))*(1.0-l9_2109)));
l9_2103=l9_2108;
l9_2099=l9_2103;
l9_2102=l9_2107;
}
l9_2043.y=l9_2099;
l9_2053=l9_2102;
float2 l9_2110=l9_2043;
int l9_2111=l9_2041;
int l9_2112=l9_2042;
float l9_2113=l9_2051;
float2 l9_2114=l9_2110;
int l9_2115=l9_2111;
int l9_2116=l9_2112;
float3 l9_2117=float3(0.0);
if (l9_2115==0)
{
l9_2117=float3(l9_2114,0.0);
}
else
{
if (l9_2115==1)
{
l9_2117=float3(l9_2114.x,(l9_2114.y*0.5)+(0.5-(float(l9_2116)*0.5)),0.0);
}
else
{
l9_2117=float3(l9_2114,float(l9_2116));
}
}
float3 l9_2118=l9_2117;
float3 l9_2119=l9_2118;
float2 l9_2120=l9_2119.xy;
float l9_2121=l9_2113;
float4 l9_2122=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_2120,bias(l9_2121));
float4 l9_2123=l9_2122;
float4 l9_2124=l9_2123;
if (l9_2049)
{
l9_2124=mix(l9_2050,l9_2124,float4(l9_2053));
}
float4 l9_2125=l9_2124;
l9_2034=l9_2125;
l9_2007=l9_2034;
l9_2005+=l9_2007;
l9_1278=l9_2005;
float4 l9_2126=l9_1278;
ssGlobals l9_2127=l9_1277;
float4 l9_2128=float4(0.0);
l9_2127.Loop_Index_ID0=7.0;
l9_2127.Loop_Ratio_ID0=1.0;
float2 l9_2129=float2(0.0);
float2 l9_2130=(*sc_set0.UserUniforms).opacityTexSize.zw;
l9_2129=l9_2130;
float2 l9_2131=float2(0.0);
l9_2131=l9_2127.gScreenCoord;
float2 l9_2132=float2(0.0);
l9_2132=l9_2131;
float2 l9_2133=float2(0.0);
l9_2133=l9_2129;
float l9_2134=0.0;
float l9_2135=(*sc_set0.UserUniforms).opacityblurFactor;
l9_2134=l9_2135;
float l9_2136=0.0;
l9_2136=l9_2134;
float l9_2137=0.0;
l9_2137=exp2(l9_2136);
float l9_2138=0.0;
l9_2138=l9_2127.Loop_Index_ID0;
float2 l9_2139=float2(0.0);
float l9_2140=l9_2138;
float2 l9_2141=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_2142=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_2143=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_2144=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_2145=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_2146=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_2147=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_2148=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_2149[8];
l9_2149[0]=l9_2141;
l9_2149[1]=l9_2142;
l9_2149[2]=l9_2143;
l9_2149[3]=l9_2144;
l9_2149[4]=l9_2145;
l9_2149[5]=l9_2146;
l9_2149[6]=l9_2147;
l9_2149[7]=l9_2148;
int l9_2150=int(fast::clamp(l9_2140+9.9999997e-05,0.0,7.0));
float2 l9_2151=l9_2149[l9_2150];
l9_2139=l9_2151;
float2 l9_2152=float2(0.0);
l9_2152=(l9_2133*float2(l9_2137))*l9_2139;
float2 l9_2153=float2(0.0);
l9_2153=l9_2132+l9_2152;
float l9_2154=0.0;
l9_2154=l9_2136+(*sc_set0.UserUniforms).Port_Input1_N010;
float4 l9_2155=float4(0.0);
int l9_2156=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_2157=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2157=0;
}
else
{
l9_2157=in.varStereoViewID;
}
int l9_2158=l9_2157;
l9_2156=1-l9_2158;
}
else
{
int l9_2159=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2159=0;
}
else
{
l9_2159=in.varStereoViewID;
}
int l9_2160=l9_2159;
l9_2156=l9_2160;
}
int l9_2161=l9_2156;
int l9_2162=opacityTexLayout_tmp;
int l9_2163=l9_2161;
float2 l9_2164=l9_2153;
bool l9_2165=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_2166=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_2167=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_2168=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_2169=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_2170=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_2171=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_2172=l9_2154;
bool l9_2173=l9_2170&&(!l9_2168);
float l9_2174=1.0;
float l9_2175=l9_2164.x;
int l9_2176=l9_2167.x;
if (l9_2176==1)
{
l9_2175=fract(l9_2175);
}
else
{
if (l9_2176==2)
{
float l9_2177=fract(l9_2175);
float l9_2178=l9_2175-l9_2177;
float l9_2179=step(0.25,fract(l9_2178*0.5));
l9_2175=mix(l9_2177,1.0-l9_2177,fast::clamp(l9_2179,0.0,1.0));
}
}
l9_2164.x=l9_2175;
float l9_2180=l9_2164.y;
int l9_2181=l9_2167.y;
if (l9_2181==1)
{
l9_2180=fract(l9_2180);
}
else
{
if (l9_2181==2)
{
float l9_2182=fract(l9_2180);
float l9_2183=l9_2180-l9_2182;
float l9_2184=step(0.25,fract(l9_2183*0.5));
l9_2180=mix(l9_2182,1.0-l9_2182,fast::clamp(l9_2184,0.0,1.0));
}
}
l9_2164.y=l9_2180;
if (l9_2168)
{
bool l9_2185=l9_2170;
bool l9_2186;
if (l9_2185)
{
l9_2186=l9_2167.x==3;
}
else
{
l9_2186=l9_2185;
}
float l9_2187=l9_2164.x;
float l9_2188=l9_2169.x;
float l9_2189=l9_2169.z;
bool l9_2190=l9_2186;
float l9_2191=l9_2174;
float l9_2192=fast::clamp(l9_2187,l9_2188,l9_2189);
float l9_2193=step(abs(l9_2187-l9_2192),9.9999997e-06);
l9_2191*=(l9_2193+((1.0-float(l9_2190))*(1.0-l9_2193)));
l9_2187=l9_2192;
l9_2164.x=l9_2187;
l9_2174=l9_2191;
bool l9_2194=l9_2170;
bool l9_2195;
if (l9_2194)
{
l9_2195=l9_2167.y==3;
}
else
{
l9_2195=l9_2194;
}
float l9_2196=l9_2164.y;
float l9_2197=l9_2169.y;
float l9_2198=l9_2169.w;
bool l9_2199=l9_2195;
float l9_2200=l9_2174;
float l9_2201=fast::clamp(l9_2196,l9_2197,l9_2198);
float l9_2202=step(abs(l9_2196-l9_2201),9.9999997e-06);
l9_2200*=(l9_2202+((1.0-float(l9_2199))*(1.0-l9_2202)));
l9_2196=l9_2201;
l9_2164.y=l9_2196;
l9_2174=l9_2200;
}
float2 l9_2203=l9_2164;
bool l9_2204=l9_2165;
float3x3 l9_2205=l9_2166;
if (l9_2204)
{
l9_2203=float2((l9_2205*float3(l9_2203,1.0)).xy);
}
float2 l9_2206=l9_2203;
float2 l9_2207=l9_2206;
float2 l9_2208=l9_2207;
l9_2164=l9_2208;
float l9_2209=l9_2164.x;
int l9_2210=l9_2167.x;
bool l9_2211=l9_2173;
float l9_2212=l9_2174;
if ((l9_2210==0)||(l9_2210==3))
{
float l9_2213=l9_2209;
float l9_2214=0.0;
float l9_2215=1.0;
bool l9_2216=l9_2211;
float l9_2217=l9_2212;
float l9_2218=fast::clamp(l9_2213,l9_2214,l9_2215);
float l9_2219=step(abs(l9_2213-l9_2218),9.9999997e-06);
l9_2217*=(l9_2219+((1.0-float(l9_2216))*(1.0-l9_2219)));
l9_2213=l9_2218;
l9_2209=l9_2213;
l9_2212=l9_2217;
}
l9_2164.x=l9_2209;
l9_2174=l9_2212;
float l9_2220=l9_2164.y;
int l9_2221=l9_2167.y;
bool l9_2222=l9_2173;
float l9_2223=l9_2174;
if ((l9_2221==0)||(l9_2221==3))
{
float l9_2224=l9_2220;
float l9_2225=0.0;
float l9_2226=1.0;
bool l9_2227=l9_2222;
float l9_2228=l9_2223;
float l9_2229=fast::clamp(l9_2224,l9_2225,l9_2226);
float l9_2230=step(abs(l9_2224-l9_2229),9.9999997e-06);
l9_2228*=(l9_2230+((1.0-float(l9_2227))*(1.0-l9_2230)));
l9_2224=l9_2229;
l9_2220=l9_2224;
l9_2223=l9_2228;
}
l9_2164.y=l9_2220;
l9_2174=l9_2223;
float2 l9_2231=l9_2164;
int l9_2232=l9_2162;
int l9_2233=l9_2163;
float l9_2234=l9_2172;
float2 l9_2235=l9_2231;
int l9_2236=l9_2232;
int l9_2237=l9_2233;
float3 l9_2238=float3(0.0);
if (l9_2236==0)
{
l9_2238=float3(l9_2235,0.0);
}
else
{
if (l9_2236==1)
{
l9_2238=float3(l9_2235.x,(l9_2235.y*0.5)+(0.5-(float(l9_2237)*0.5)),0.0);
}
else
{
l9_2238=float3(l9_2235,float(l9_2237));
}
}
float3 l9_2239=l9_2238;
float3 l9_2240=l9_2239;
float2 l9_2241=l9_2240.xy;
float l9_2242=l9_2234;
float4 l9_2243=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_2241,bias(l9_2242));
float4 l9_2244=l9_2243;
float4 l9_2245=l9_2244;
if (l9_2170)
{
l9_2245=mix(l9_2171,l9_2245,float4(l9_2174));
}
float4 l9_2246=l9_2245;
l9_2155=l9_2246;
l9_2128=l9_2155;
l9_2126+=l9_2128;
l9_1278=l9_2126;
l9_1278/=float4(8.0);
l9_1276=l9_1278;
float4 l9_2247=float4(0.0);
l9_2247=mix(l9_1184,l9_1276,float4((*sc_set0.UserUniforms).Port_Input2_N026));
float4 l9_2248=float4(0.0);
l9_2248=l9_2247;
float4 l9_2249=float4(0.0);
l9_2249=mix(l9_17,l9_1178,float4(l9_2248.x));
param=l9_2249;
param_2=param;
}
else
{
float2 l9_2250=float2(0.0);
l9_2250=param_3.gScreenCoord;
float2 l9_2251=float2(0.0);
l9_2251=l9_2250;
float l9_2252=0.0;
float l9_2253=(*sc_set0.UserUniforms).blurFactor;
l9_2252=l9_2253;
float l9_2254=0.0;
l9_2254=l9_2252;
float l9_2255=0.0;
l9_2255=l9_2254+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_2256=float4(0.0);
int l9_2257=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_2258=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2258=0;
}
else
{
l9_2258=in.varStereoViewID;
}
int l9_2259=l9_2258;
l9_2257=1-l9_2259;
}
else
{
int l9_2260=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2260=0;
}
else
{
l9_2260=in.varStereoViewID;
}
int l9_2261=l9_2260;
l9_2257=l9_2261;
}
int l9_2262=l9_2257;
int l9_2263=screenTextureLayout_tmp;
int l9_2264=l9_2262;
float2 l9_2265=l9_2251;
bool l9_2266=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_2267=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_2268=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_2269=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_2270=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_2271=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_2272=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_2273=l9_2255;
bool l9_2274=l9_2271&&(!l9_2269);
float l9_2275=1.0;
float l9_2276=l9_2265.x;
int l9_2277=l9_2268.x;
if (l9_2277==1)
{
l9_2276=fract(l9_2276);
}
else
{
if (l9_2277==2)
{
float l9_2278=fract(l9_2276);
float l9_2279=l9_2276-l9_2278;
float l9_2280=step(0.25,fract(l9_2279*0.5));
l9_2276=mix(l9_2278,1.0-l9_2278,fast::clamp(l9_2280,0.0,1.0));
}
}
l9_2265.x=l9_2276;
float l9_2281=l9_2265.y;
int l9_2282=l9_2268.y;
if (l9_2282==1)
{
l9_2281=fract(l9_2281);
}
else
{
if (l9_2282==2)
{
float l9_2283=fract(l9_2281);
float l9_2284=l9_2281-l9_2283;
float l9_2285=step(0.25,fract(l9_2284*0.5));
l9_2281=mix(l9_2283,1.0-l9_2283,fast::clamp(l9_2285,0.0,1.0));
}
}
l9_2265.y=l9_2281;
if (l9_2269)
{
bool l9_2286=l9_2271;
bool l9_2287;
if (l9_2286)
{
l9_2287=l9_2268.x==3;
}
else
{
l9_2287=l9_2286;
}
float l9_2288=l9_2265.x;
float l9_2289=l9_2270.x;
float l9_2290=l9_2270.z;
bool l9_2291=l9_2287;
float l9_2292=l9_2275;
float l9_2293=fast::clamp(l9_2288,l9_2289,l9_2290);
float l9_2294=step(abs(l9_2288-l9_2293),9.9999997e-06);
l9_2292*=(l9_2294+((1.0-float(l9_2291))*(1.0-l9_2294)));
l9_2288=l9_2293;
l9_2265.x=l9_2288;
l9_2275=l9_2292;
bool l9_2295=l9_2271;
bool l9_2296;
if (l9_2295)
{
l9_2296=l9_2268.y==3;
}
else
{
l9_2296=l9_2295;
}
float l9_2297=l9_2265.y;
float l9_2298=l9_2270.y;
float l9_2299=l9_2270.w;
bool l9_2300=l9_2296;
float l9_2301=l9_2275;
float l9_2302=fast::clamp(l9_2297,l9_2298,l9_2299);
float l9_2303=step(abs(l9_2297-l9_2302),9.9999997e-06);
l9_2301*=(l9_2303+((1.0-float(l9_2300))*(1.0-l9_2303)));
l9_2297=l9_2302;
l9_2265.y=l9_2297;
l9_2275=l9_2301;
}
float2 l9_2304=l9_2265;
bool l9_2305=l9_2266;
float3x3 l9_2306=l9_2267;
if (l9_2305)
{
l9_2304=float2((l9_2306*float3(l9_2304,1.0)).xy);
}
float2 l9_2307=l9_2304;
float2 l9_2308=l9_2307;
float2 l9_2309=l9_2308;
l9_2265=l9_2309;
float l9_2310=l9_2265.x;
int l9_2311=l9_2268.x;
bool l9_2312=l9_2274;
float l9_2313=l9_2275;
if ((l9_2311==0)||(l9_2311==3))
{
float l9_2314=l9_2310;
float l9_2315=0.0;
float l9_2316=1.0;
bool l9_2317=l9_2312;
float l9_2318=l9_2313;
float l9_2319=fast::clamp(l9_2314,l9_2315,l9_2316);
float l9_2320=step(abs(l9_2314-l9_2319),9.9999997e-06);
l9_2318*=(l9_2320+((1.0-float(l9_2317))*(1.0-l9_2320)));
l9_2314=l9_2319;
l9_2310=l9_2314;
l9_2313=l9_2318;
}
l9_2265.x=l9_2310;
l9_2275=l9_2313;
float l9_2321=l9_2265.y;
int l9_2322=l9_2268.y;
bool l9_2323=l9_2274;
float l9_2324=l9_2275;
if ((l9_2322==0)||(l9_2322==3))
{
float l9_2325=l9_2321;
float l9_2326=0.0;
float l9_2327=1.0;
bool l9_2328=l9_2323;
float l9_2329=l9_2324;
float l9_2330=fast::clamp(l9_2325,l9_2326,l9_2327);
float l9_2331=step(abs(l9_2325-l9_2330),9.9999997e-06);
l9_2329*=(l9_2331+((1.0-float(l9_2328))*(1.0-l9_2331)));
l9_2325=l9_2330;
l9_2321=l9_2325;
l9_2324=l9_2329;
}
l9_2265.y=l9_2321;
l9_2275=l9_2324;
float2 l9_2332=l9_2265;
int l9_2333=l9_2263;
int l9_2334=l9_2264;
float l9_2335=l9_2273;
float2 l9_2336=l9_2332;
int l9_2337=l9_2333;
int l9_2338=l9_2334;
float3 l9_2339=float3(0.0);
if (l9_2337==0)
{
l9_2339=float3(l9_2336,0.0);
}
else
{
if (l9_2337==1)
{
l9_2339=float3(l9_2336.x,(l9_2336.y*0.5)+(0.5-(float(l9_2338)*0.5)),0.0);
}
else
{
l9_2339=float3(l9_2336,float(l9_2338));
}
}
float3 l9_2340=l9_2339;
float3 l9_2341=l9_2340;
float2 l9_2342=l9_2341.xy;
float l9_2343=l9_2335;
float4 l9_2344=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_2342,bias(l9_2343));
float4 l9_2345=l9_2344;
float4 l9_2346=l9_2345;
if (l9_2271)
{
l9_2346=mix(l9_2272,l9_2346,float4(l9_2275));
}
float4 l9_2347=l9_2346;
l9_2256=l9_2347;
float4 l9_2348=float4(0.0);
ssGlobals l9_2349=param_3;
float4 l9_2350=float4(0.0);
l9_2349.Loop_Count_ID0=8.0;
float4 l9_2351=l9_2350;
ssGlobals l9_2352=l9_2349;
float4 l9_2353=float4(0.0);
l9_2352.Loop_Index_ID0=0.0;
l9_2352.Loop_Ratio_ID0=0.0;
float2 l9_2354=float2(0.0);
float2 l9_2355=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_2354=l9_2355;
float2 l9_2356=float2(0.0);
l9_2356=l9_2352.gScreenCoord;
float2 l9_2357=float2(0.0);
l9_2357=l9_2356;
float2 l9_2358=float2(0.0);
l9_2358=l9_2354;
float l9_2359=0.0;
float l9_2360=(*sc_set0.UserUniforms).blurFactor;
l9_2359=l9_2360;
float l9_2361=0.0;
l9_2361=l9_2359;
float l9_2362=0.0;
l9_2362=exp2(l9_2361);
float l9_2363=0.0;
l9_2363=l9_2352.Loop_Index_ID0;
float2 l9_2364=float2(0.0);
float l9_2365=l9_2363;
float2 l9_2366=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_2367=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_2368=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_2369=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_2370=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_2371=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_2372=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_2373=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_2374[8];
l9_2374[0]=l9_2366;
l9_2374[1]=l9_2367;
l9_2374[2]=l9_2368;
l9_2374[3]=l9_2369;
l9_2374[4]=l9_2370;
l9_2374[5]=l9_2371;
l9_2374[6]=l9_2372;
l9_2374[7]=l9_2373;
int l9_2375=int(fast::clamp(l9_2365+9.9999997e-05,0.0,7.0));
float2 l9_2376=l9_2374[l9_2375];
l9_2364=l9_2376;
float2 l9_2377=float2(0.0);
l9_2377=(l9_2358*float2(l9_2362))*l9_2364;
float2 l9_2378=float2(0.0);
l9_2378=l9_2357+l9_2377;
float l9_2379=0.0;
l9_2379=l9_2361+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_2380=float4(0.0);
int l9_2381=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_2382=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2382=0;
}
else
{
l9_2382=in.varStereoViewID;
}
int l9_2383=l9_2382;
l9_2381=1-l9_2383;
}
else
{
int l9_2384=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2384=0;
}
else
{
l9_2384=in.varStereoViewID;
}
int l9_2385=l9_2384;
l9_2381=l9_2385;
}
int l9_2386=l9_2381;
int l9_2387=screenTextureLayout_tmp;
int l9_2388=l9_2386;
float2 l9_2389=l9_2378;
bool l9_2390=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_2391=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_2392=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_2393=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_2394=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_2395=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_2396=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_2397=l9_2379;
bool l9_2398=l9_2395&&(!l9_2393);
float l9_2399=1.0;
float l9_2400=l9_2389.x;
int l9_2401=l9_2392.x;
if (l9_2401==1)
{
l9_2400=fract(l9_2400);
}
else
{
if (l9_2401==2)
{
float l9_2402=fract(l9_2400);
float l9_2403=l9_2400-l9_2402;
float l9_2404=step(0.25,fract(l9_2403*0.5));
l9_2400=mix(l9_2402,1.0-l9_2402,fast::clamp(l9_2404,0.0,1.0));
}
}
l9_2389.x=l9_2400;
float l9_2405=l9_2389.y;
int l9_2406=l9_2392.y;
if (l9_2406==1)
{
l9_2405=fract(l9_2405);
}
else
{
if (l9_2406==2)
{
float l9_2407=fract(l9_2405);
float l9_2408=l9_2405-l9_2407;
float l9_2409=step(0.25,fract(l9_2408*0.5));
l9_2405=mix(l9_2407,1.0-l9_2407,fast::clamp(l9_2409,0.0,1.0));
}
}
l9_2389.y=l9_2405;
if (l9_2393)
{
bool l9_2410=l9_2395;
bool l9_2411;
if (l9_2410)
{
l9_2411=l9_2392.x==3;
}
else
{
l9_2411=l9_2410;
}
float l9_2412=l9_2389.x;
float l9_2413=l9_2394.x;
float l9_2414=l9_2394.z;
bool l9_2415=l9_2411;
float l9_2416=l9_2399;
float l9_2417=fast::clamp(l9_2412,l9_2413,l9_2414);
float l9_2418=step(abs(l9_2412-l9_2417),9.9999997e-06);
l9_2416*=(l9_2418+((1.0-float(l9_2415))*(1.0-l9_2418)));
l9_2412=l9_2417;
l9_2389.x=l9_2412;
l9_2399=l9_2416;
bool l9_2419=l9_2395;
bool l9_2420;
if (l9_2419)
{
l9_2420=l9_2392.y==3;
}
else
{
l9_2420=l9_2419;
}
float l9_2421=l9_2389.y;
float l9_2422=l9_2394.y;
float l9_2423=l9_2394.w;
bool l9_2424=l9_2420;
float l9_2425=l9_2399;
float l9_2426=fast::clamp(l9_2421,l9_2422,l9_2423);
float l9_2427=step(abs(l9_2421-l9_2426),9.9999997e-06);
l9_2425*=(l9_2427+((1.0-float(l9_2424))*(1.0-l9_2427)));
l9_2421=l9_2426;
l9_2389.y=l9_2421;
l9_2399=l9_2425;
}
float2 l9_2428=l9_2389;
bool l9_2429=l9_2390;
float3x3 l9_2430=l9_2391;
if (l9_2429)
{
l9_2428=float2((l9_2430*float3(l9_2428,1.0)).xy);
}
float2 l9_2431=l9_2428;
float2 l9_2432=l9_2431;
float2 l9_2433=l9_2432;
l9_2389=l9_2433;
float l9_2434=l9_2389.x;
int l9_2435=l9_2392.x;
bool l9_2436=l9_2398;
float l9_2437=l9_2399;
if ((l9_2435==0)||(l9_2435==3))
{
float l9_2438=l9_2434;
float l9_2439=0.0;
float l9_2440=1.0;
bool l9_2441=l9_2436;
float l9_2442=l9_2437;
float l9_2443=fast::clamp(l9_2438,l9_2439,l9_2440);
float l9_2444=step(abs(l9_2438-l9_2443),9.9999997e-06);
l9_2442*=(l9_2444+((1.0-float(l9_2441))*(1.0-l9_2444)));
l9_2438=l9_2443;
l9_2434=l9_2438;
l9_2437=l9_2442;
}
l9_2389.x=l9_2434;
l9_2399=l9_2437;
float l9_2445=l9_2389.y;
int l9_2446=l9_2392.y;
bool l9_2447=l9_2398;
float l9_2448=l9_2399;
if ((l9_2446==0)||(l9_2446==3))
{
float l9_2449=l9_2445;
float l9_2450=0.0;
float l9_2451=1.0;
bool l9_2452=l9_2447;
float l9_2453=l9_2448;
float l9_2454=fast::clamp(l9_2449,l9_2450,l9_2451);
float l9_2455=step(abs(l9_2449-l9_2454),9.9999997e-06);
l9_2453*=(l9_2455+((1.0-float(l9_2452))*(1.0-l9_2455)));
l9_2449=l9_2454;
l9_2445=l9_2449;
l9_2448=l9_2453;
}
l9_2389.y=l9_2445;
l9_2399=l9_2448;
float2 l9_2456=l9_2389;
int l9_2457=l9_2387;
int l9_2458=l9_2388;
float l9_2459=l9_2397;
float2 l9_2460=l9_2456;
int l9_2461=l9_2457;
int l9_2462=l9_2458;
float3 l9_2463=float3(0.0);
if (l9_2461==0)
{
l9_2463=float3(l9_2460,0.0);
}
else
{
if (l9_2461==1)
{
l9_2463=float3(l9_2460.x,(l9_2460.y*0.5)+(0.5-(float(l9_2462)*0.5)),0.0);
}
else
{
l9_2463=float3(l9_2460,float(l9_2462));
}
}
float3 l9_2464=l9_2463;
float3 l9_2465=l9_2464;
float2 l9_2466=l9_2465.xy;
float l9_2467=l9_2459;
float4 l9_2468=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_2466,bias(l9_2467));
float4 l9_2469=l9_2468;
float4 l9_2470=l9_2469;
if (l9_2395)
{
l9_2470=mix(l9_2396,l9_2470,float4(l9_2399));
}
float4 l9_2471=l9_2470;
l9_2380=l9_2471;
l9_2353=l9_2380;
l9_2351+=l9_2353;
l9_2350=l9_2351;
float4 l9_2472=l9_2350;
ssGlobals l9_2473=l9_2349;
float4 l9_2474=float4(0.0);
l9_2473.Loop_Index_ID0=1.0;
l9_2473.Loop_Ratio_ID0=0.142857;
float2 l9_2475=float2(0.0);
float2 l9_2476=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_2475=l9_2476;
float2 l9_2477=float2(0.0);
l9_2477=l9_2473.gScreenCoord;
float2 l9_2478=float2(0.0);
l9_2478=l9_2477;
float2 l9_2479=float2(0.0);
l9_2479=l9_2475;
float l9_2480=0.0;
float l9_2481=(*sc_set0.UserUniforms).blurFactor;
l9_2480=l9_2481;
float l9_2482=0.0;
l9_2482=l9_2480;
float l9_2483=0.0;
l9_2483=exp2(l9_2482);
float l9_2484=0.0;
l9_2484=l9_2473.Loop_Index_ID0;
float2 l9_2485=float2(0.0);
float l9_2486=l9_2484;
float2 l9_2487=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_2488=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_2489=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_2490=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_2491=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_2492=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_2493=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_2494=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_2495[8];
l9_2495[0]=l9_2487;
l9_2495[1]=l9_2488;
l9_2495[2]=l9_2489;
l9_2495[3]=l9_2490;
l9_2495[4]=l9_2491;
l9_2495[5]=l9_2492;
l9_2495[6]=l9_2493;
l9_2495[7]=l9_2494;
int l9_2496=int(fast::clamp(l9_2486+9.9999997e-05,0.0,7.0));
float2 l9_2497=l9_2495[l9_2496];
l9_2485=l9_2497;
float2 l9_2498=float2(0.0);
l9_2498=(l9_2479*float2(l9_2483))*l9_2485;
float2 l9_2499=float2(0.0);
l9_2499=l9_2478+l9_2498;
float l9_2500=0.0;
l9_2500=l9_2482+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_2501=float4(0.0);
int l9_2502=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_2503=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2503=0;
}
else
{
l9_2503=in.varStereoViewID;
}
int l9_2504=l9_2503;
l9_2502=1-l9_2504;
}
else
{
int l9_2505=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2505=0;
}
else
{
l9_2505=in.varStereoViewID;
}
int l9_2506=l9_2505;
l9_2502=l9_2506;
}
int l9_2507=l9_2502;
int l9_2508=screenTextureLayout_tmp;
int l9_2509=l9_2507;
float2 l9_2510=l9_2499;
bool l9_2511=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_2512=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_2513=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_2514=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_2515=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_2516=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_2517=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_2518=l9_2500;
bool l9_2519=l9_2516&&(!l9_2514);
float l9_2520=1.0;
float l9_2521=l9_2510.x;
int l9_2522=l9_2513.x;
if (l9_2522==1)
{
l9_2521=fract(l9_2521);
}
else
{
if (l9_2522==2)
{
float l9_2523=fract(l9_2521);
float l9_2524=l9_2521-l9_2523;
float l9_2525=step(0.25,fract(l9_2524*0.5));
l9_2521=mix(l9_2523,1.0-l9_2523,fast::clamp(l9_2525,0.0,1.0));
}
}
l9_2510.x=l9_2521;
float l9_2526=l9_2510.y;
int l9_2527=l9_2513.y;
if (l9_2527==1)
{
l9_2526=fract(l9_2526);
}
else
{
if (l9_2527==2)
{
float l9_2528=fract(l9_2526);
float l9_2529=l9_2526-l9_2528;
float l9_2530=step(0.25,fract(l9_2529*0.5));
l9_2526=mix(l9_2528,1.0-l9_2528,fast::clamp(l9_2530,0.0,1.0));
}
}
l9_2510.y=l9_2526;
if (l9_2514)
{
bool l9_2531=l9_2516;
bool l9_2532;
if (l9_2531)
{
l9_2532=l9_2513.x==3;
}
else
{
l9_2532=l9_2531;
}
float l9_2533=l9_2510.x;
float l9_2534=l9_2515.x;
float l9_2535=l9_2515.z;
bool l9_2536=l9_2532;
float l9_2537=l9_2520;
float l9_2538=fast::clamp(l9_2533,l9_2534,l9_2535);
float l9_2539=step(abs(l9_2533-l9_2538),9.9999997e-06);
l9_2537*=(l9_2539+((1.0-float(l9_2536))*(1.0-l9_2539)));
l9_2533=l9_2538;
l9_2510.x=l9_2533;
l9_2520=l9_2537;
bool l9_2540=l9_2516;
bool l9_2541;
if (l9_2540)
{
l9_2541=l9_2513.y==3;
}
else
{
l9_2541=l9_2540;
}
float l9_2542=l9_2510.y;
float l9_2543=l9_2515.y;
float l9_2544=l9_2515.w;
bool l9_2545=l9_2541;
float l9_2546=l9_2520;
float l9_2547=fast::clamp(l9_2542,l9_2543,l9_2544);
float l9_2548=step(abs(l9_2542-l9_2547),9.9999997e-06);
l9_2546*=(l9_2548+((1.0-float(l9_2545))*(1.0-l9_2548)));
l9_2542=l9_2547;
l9_2510.y=l9_2542;
l9_2520=l9_2546;
}
float2 l9_2549=l9_2510;
bool l9_2550=l9_2511;
float3x3 l9_2551=l9_2512;
if (l9_2550)
{
l9_2549=float2((l9_2551*float3(l9_2549,1.0)).xy);
}
float2 l9_2552=l9_2549;
float2 l9_2553=l9_2552;
float2 l9_2554=l9_2553;
l9_2510=l9_2554;
float l9_2555=l9_2510.x;
int l9_2556=l9_2513.x;
bool l9_2557=l9_2519;
float l9_2558=l9_2520;
if ((l9_2556==0)||(l9_2556==3))
{
float l9_2559=l9_2555;
float l9_2560=0.0;
float l9_2561=1.0;
bool l9_2562=l9_2557;
float l9_2563=l9_2558;
float l9_2564=fast::clamp(l9_2559,l9_2560,l9_2561);
float l9_2565=step(abs(l9_2559-l9_2564),9.9999997e-06);
l9_2563*=(l9_2565+((1.0-float(l9_2562))*(1.0-l9_2565)));
l9_2559=l9_2564;
l9_2555=l9_2559;
l9_2558=l9_2563;
}
l9_2510.x=l9_2555;
l9_2520=l9_2558;
float l9_2566=l9_2510.y;
int l9_2567=l9_2513.y;
bool l9_2568=l9_2519;
float l9_2569=l9_2520;
if ((l9_2567==0)||(l9_2567==3))
{
float l9_2570=l9_2566;
float l9_2571=0.0;
float l9_2572=1.0;
bool l9_2573=l9_2568;
float l9_2574=l9_2569;
float l9_2575=fast::clamp(l9_2570,l9_2571,l9_2572);
float l9_2576=step(abs(l9_2570-l9_2575),9.9999997e-06);
l9_2574*=(l9_2576+((1.0-float(l9_2573))*(1.0-l9_2576)));
l9_2570=l9_2575;
l9_2566=l9_2570;
l9_2569=l9_2574;
}
l9_2510.y=l9_2566;
l9_2520=l9_2569;
float2 l9_2577=l9_2510;
int l9_2578=l9_2508;
int l9_2579=l9_2509;
float l9_2580=l9_2518;
float2 l9_2581=l9_2577;
int l9_2582=l9_2578;
int l9_2583=l9_2579;
float3 l9_2584=float3(0.0);
if (l9_2582==0)
{
l9_2584=float3(l9_2581,0.0);
}
else
{
if (l9_2582==1)
{
l9_2584=float3(l9_2581.x,(l9_2581.y*0.5)+(0.5-(float(l9_2583)*0.5)),0.0);
}
else
{
l9_2584=float3(l9_2581,float(l9_2583));
}
}
float3 l9_2585=l9_2584;
float3 l9_2586=l9_2585;
float2 l9_2587=l9_2586.xy;
float l9_2588=l9_2580;
float4 l9_2589=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_2587,bias(l9_2588));
float4 l9_2590=l9_2589;
float4 l9_2591=l9_2590;
if (l9_2516)
{
l9_2591=mix(l9_2517,l9_2591,float4(l9_2520));
}
float4 l9_2592=l9_2591;
l9_2501=l9_2592;
l9_2474=l9_2501;
l9_2472+=l9_2474;
l9_2350=l9_2472;
float4 l9_2593=l9_2350;
ssGlobals l9_2594=l9_2349;
float4 l9_2595=float4(0.0);
l9_2594.Loop_Index_ID0=2.0;
l9_2594.Loop_Ratio_ID0=0.285714;
float2 l9_2596=float2(0.0);
float2 l9_2597=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_2596=l9_2597;
float2 l9_2598=float2(0.0);
l9_2598=l9_2594.gScreenCoord;
float2 l9_2599=float2(0.0);
l9_2599=l9_2598;
float2 l9_2600=float2(0.0);
l9_2600=l9_2596;
float l9_2601=0.0;
float l9_2602=(*sc_set0.UserUniforms).blurFactor;
l9_2601=l9_2602;
float l9_2603=0.0;
l9_2603=l9_2601;
float l9_2604=0.0;
l9_2604=exp2(l9_2603);
float l9_2605=0.0;
l9_2605=l9_2594.Loop_Index_ID0;
float2 l9_2606=float2(0.0);
float l9_2607=l9_2605;
float2 l9_2608=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_2609=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_2610=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_2611=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_2612=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_2613=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_2614=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_2615=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_2616[8];
l9_2616[0]=l9_2608;
l9_2616[1]=l9_2609;
l9_2616[2]=l9_2610;
l9_2616[3]=l9_2611;
l9_2616[4]=l9_2612;
l9_2616[5]=l9_2613;
l9_2616[6]=l9_2614;
l9_2616[7]=l9_2615;
int l9_2617=int(fast::clamp(l9_2607+9.9999997e-05,0.0,7.0));
float2 l9_2618=l9_2616[l9_2617];
l9_2606=l9_2618;
float2 l9_2619=float2(0.0);
l9_2619=(l9_2600*float2(l9_2604))*l9_2606;
float2 l9_2620=float2(0.0);
l9_2620=l9_2599+l9_2619;
float l9_2621=0.0;
l9_2621=l9_2603+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_2622=float4(0.0);
int l9_2623=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_2624=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2624=0;
}
else
{
l9_2624=in.varStereoViewID;
}
int l9_2625=l9_2624;
l9_2623=1-l9_2625;
}
else
{
int l9_2626=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2626=0;
}
else
{
l9_2626=in.varStereoViewID;
}
int l9_2627=l9_2626;
l9_2623=l9_2627;
}
int l9_2628=l9_2623;
int l9_2629=screenTextureLayout_tmp;
int l9_2630=l9_2628;
float2 l9_2631=l9_2620;
bool l9_2632=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_2633=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_2634=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_2635=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_2636=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_2637=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_2638=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_2639=l9_2621;
bool l9_2640=l9_2637&&(!l9_2635);
float l9_2641=1.0;
float l9_2642=l9_2631.x;
int l9_2643=l9_2634.x;
if (l9_2643==1)
{
l9_2642=fract(l9_2642);
}
else
{
if (l9_2643==2)
{
float l9_2644=fract(l9_2642);
float l9_2645=l9_2642-l9_2644;
float l9_2646=step(0.25,fract(l9_2645*0.5));
l9_2642=mix(l9_2644,1.0-l9_2644,fast::clamp(l9_2646,0.0,1.0));
}
}
l9_2631.x=l9_2642;
float l9_2647=l9_2631.y;
int l9_2648=l9_2634.y;
if (l9_2648==1)
{
l9_2647=fract(l9_2647);
}
else
{
if (l9_2648==2)
{
float l9_2649=fract(l9_2647);
float l9_2650=l9_2647-l9_2649;
float l9_2651=step(0.25,fract(l9_2650*0.5));
l9_2647=mix(l9_2649,1.0-l9_2649,fast::clamp(l9_2651,0.0,1.0));
}
}
l9_2631.y=l9_2647;
if (l9_2635)
{
bool l9_2652=l9_2637;
bool l9_2653;
if (l9_2652)
{
l9_2653=l9_2634.x==3;
}
else
{
l9_2653=l9_2652;
}
float l9_2654=l9_2631.x;
float l9_2655=l9_2636.x;
float l9_2656=l9_2636.z;
bool l9_2657=l9_2653;
float l9_2658=l9_2641;
float l9_2659=fast::clamp(l9_2654,l9_2655,l9_2656);
float l9_2660=step(abs(l9_2654-l9_2659),9.9999997e-06);
l9_2658*=(l9_2660+((1.0-float(l9_2657))*(1.0-l9_2660)));
l9_2654=l9_2659;
l9_2631.x=l9_2654;
l9_2641=l9_2658;
bool l9_2661=l9_2637;
bool l9_2662;
if (l9_2661)
{
l9_2662=l9_2634.y==3;
}
else
{
l9_2662=l9_2661;
}
float l9_2663=l9_2631.y;
float l9_2664=l9_2636.y;
float l9_2665=l9_2636.w;
bool l9_2666=l9_2662;
float l9_2667=l9_2641;
float l9_2668=fast::clamp(l9_2663,l9_2664,l9_2665);
float l9_2669=step(abs(l9_2663-l9_2668),9.9999997e-06);
l9_2667*=(l9_2669+((1.0-float(l9_2666))*(1.0-l9_2669)));
l9_2663=l9_2668;
l9_2631.y=l9_2663;
l9_2641=l9_2667;
}
float2 l9_2670=l9_2631;
bool l9_2671=l9_2632;
float3x3 l9_2672=l9_2633;
if (l9_2671)
{
l9_2670=float2((l9_2672*float3(l9_2670,1.0)).xy);
}
float2 l9_2673=l9_2670;
float2 l9_2674=l9_2673;
float2 l9_2675=l9_2674;
l9_2631=l9_2675;
float l9_2676=l9_2631.x;
int l9_2677=l9_2634.x;
bool l9_2678=l9_2640;
float l9_2679=l9_2641;
if ((l9_2677==0)||(l9_2677==3))
{
float l9_2680=l9_2676;
float l9_2681=0.0;
float l9_2682=1.0;
bool l9_2683=l9_2678;
float l9_2684=l9_2679;
float l9_2685=fast::clamp(l9_2680,l9_2681,l9_2682);
float l9_2686=step(abs(l9_2680-l9_2685),9.9999997e-06);
l9_2684*=(l9_2686+((1.0-float(l9_2683))*(1.0-l9_2686)));
l9_2680=l9_2685;
l9_2676=l9_2680;
l9_2679=l9_2684;
}
l9_2631.x=l9_2676;
l9_2641=l9_2679;
float l9_2687=l9_2631.y;
int l9_2688=l9_2634.y;
bool l9_2689=l9_2640;
float l9_2690=l9_2641;
if ((l9_2688==0)||(l9_2688==3))
{
float l9_2691=l9_2687;
float l9_2692=0.0;
float l9_2693=1.0;
bool l9_2694=l9_2689;
float l9_2695=l9_2690;
float l9_2696=fast::clamp(l9_2691,l9_2692,l9_2693);
float l9_2697=step(abs(l9_2691-l9_2696),9.9999997e-06);
l9_2695*=(l9_2697+((1.0-float(l9_2694))*(1.0-l9_2697)));
l9_2691=l9_2696;
l9_2687=l9_2691;
l9_2690=l9_2695;
}
l9_2631.y=l9_2687;
l9_2641=l9_2690;
float2 l9_2698=l9_2631;
int l9_2699=l9_2629;
int l9_2700=l9_2630;
float l9_2701=l9_2639;
float2 l9_2702=l9_2698;
int l9_2703=l9_2699;
int l9_2704=l9_2700;
float3 l9_2705=float3(0.0);
if (l9_2703==0)
{
l9_2705=float3(l9_2702,0.0);
}
else
{
if (l9_2703==1)
{
l9_2705=float3(l9_2702.x,(l9_2702.y*0.5)+(0.5-(float(l9_2704)*0.5)),0.0);
}
else
{
l9_2705=float3(l9_2702,float(l9_2704));
}
}
float3 l9_2706=l9_2705;
float3 l9_2707=l9_2706;
float2 l9_2708=l9_2707.xy;
float l9_2709=l9_2701;
float4 l9_2710=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_2708,bias(l9_2709));
float4 l9_2711=l9_2710;
float4 l9_2712=l9_2711;
if (l9_2637)
{
l9_2712=mix(l9_2638,l9_2712,float4(l9_2641));
}
float4 l9_2713=l9_2712;
l9_2622=l9_2713;
l9_2595=l9_2622;
l9_2593+=l9_2595;
l9_2350=l9_2593;
float4 l9_2714=l9_2350;
ssGlobals l9_2715=l9_2349;
float4 l9_2716=float4(0.0);
l9_2715.Loop_Index_ID0=3.0;
l9_2715.Loop_Ratio_ID0=0.42857099;
float2 l9_2717=float2(0.0);
float2 l9_2718=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_2717=l9_2718;
float2 l9_2719=float2(0.0);
l9_2719=l9_2715.gScreenCoord;
float2 l9_2720=float2(0.0);
l9_2720=l9_2719;
float2 l9_2721=float2(0.0);
l9_2721=l9_2717;
float l9_2722=0.0;
float l9_2723=(*sc_set0.UserUniforms).blurFactor;
l9_2722=l9_2723;
float l9_2724=0.0;
l9_2724=l9_2722;
float l9_2725=0.0;
l9_2725=exp2(l9_2724);
float l9_2726=0.0;
l9_2726=l9_2715.Loop_Index_ID0;
float2 l9_2727=float2(0.0);
float l9_2728=l9_2726;
float2 l9_2729=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_2730=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_2731=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_2732=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_2733=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_2734=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_2735=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_2736=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_2737[8];
l9_2737[0]=l9_2729;
l9_2737[1]=l9_2730;
l9_2737[2]=l9_2731;
l9_2737[3]=l9_2732;
l9_2737[4]=l9_2733;
l9_2737[5]=l9_2734;
l9_2737[6]=l9_2735;
l9_2737[7]=l9_2736;
int l9_2738=int(fast::clamp(l9_2728+9.9999997e-05,0.0,7.0));
float2 l9_2739=l9_2737[l9_2738];
l9_2727=l9_2739;
float2 l9_2740=float2(0.0);
l9_2740=(l9_2721*float2(l9_2725))*l9_2727;
float2 l9_2741=float2(0.0);
l9_2741=l9_2720+l9_2740;
float l9_2742=0.0;
l9_2742=l9_2724+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_2743=float4(0.0);
int l9_2744=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_2745=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2745=0;
}
else
{
l9_2745=in.varStereoViewID;
}
int l9_2746=l9_2745;
l9_2744=1-l9_2746;
}
else
{
int l9_2747=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2747=0;
}
else
{
l9_2747=in.varStereoViewID;
}
int l9_2748=l9_2747;
l9_2744=l9_2748;
}
int l9_2749=l9_2744;
int l9_2750=screenTextureLayout_tmp;
int l9_2751=l9_2749;
float2 l9_2752=l9_2741;
bool l9_2753=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_2754=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_2755=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_2756=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_2757=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_2758=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_2759=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_2760=l9_2742;
bool l9_2761=l9_2758&&(!l9_2756);
float l9_2762=1.0;
float l9_2763=l9_2752.x;
int l9_2764=l9_2755.x;
if (l9_2764==1)
{
l9_2763=fract(l9_2763);
}
else
{
if (l9_2764==2)
{
float l9_2765=fract(l9_2763);
float l9_2766=l9_2763-l9_2765;
float l9_2767=step(0.25,fract(l9_2766*0.5));
l9_2763=mix(l9_2765,1.0-l9_2765,fast::clamp(l9_2767,0.0,1.0));
}
}
l9_2752.x=l9_2763;
float l9_2768=l9_2752.y;
int l9_2769=l9_2755.y;
if (l9_2769==1)
{
l9_2768=fract(l9_2768);
}
else
{
if (l9_2769==2)
{
float l9_2770=fract(l9_2768);
float l9_2771=l9_2768-l9_2770;
float l9_2772=step(0.25,fract(l9_2771*0.5));
l9_2768=mix(l9_2770,1.0-l9_2770,fast::clamp(l9_2772,0.0,1.0));
}
}
l9_2752.y=l9_2768;
if (l9_2756)
{
bool l9_2773=l9_2758;
bool l9_2774;
if (l9_2773)
{
l9_2774=l9_2755.x==3;
}
else
{
l9_2774=l9_2773;
}
float l9_2775=l9_2752.x;
float l9_2776=l9_2757.x;
float l9_2777=l9_2757.z;
bool l9_2778=l9_2774;
float l9_2779=l9_2762;
float l9_2780=fast::clamp(l9_2775,l9_2776,l9_2777);
float l9_2781=step(abs(l9_2775-l9_2780),9.9999997e-06);
l9_2779*=(l9_2781+((1.0-float(l9_2778))*(1.0-l9_2781)));
l9_2775=l9_2780;
l9_2752.x=l9_2775;
l9_2762=l9_2779;
bool l9_2782=l9_2758;
bool l9_2783;
if (l9_2782)
{
l9_2783=l9_2755.y==3;
}
else
{
l9_2783=l9_2782;
}
float l9_2784=l9_2752.y;
float l9_2785=l9_2757.y;
float l9_2786=l9_2757.w;
bool l9_2787=l9_2783;
float l9_2788=l9_2762;
float l9_2789=fast::clamp(l9_2784,l9_2785,l9_2786);
float l9_2790=step(abs(l9_2784-l9_2789),9.9999997e-06);
l9_2788*=(l9_2790+((1.0-float(l9_2787))*(1.0-l9_2790)));
l9_2784=l9_2789;
l9_2752.y=l9_2784;
l9_2762=l9_2788;
}
float2 l9_2791=l9_2752;
bool l9_2792=l9_2753;
float3x3 l9_2793=l9_2754;
if (l9_2792)
{
l9_2791=float2((l9_2793*float3(l9_2791,1.0)).xy);
}
float2 l9_2794=l9_2791;
float2 l9_2795=l9_2794;
float2 l9_2796=l9_2795;
l9_2752=l9_2796;
float l9_2797=l9_2752.x;
int l9_2798=l9_2755.x;
bool l9_2799=l9_2761;
float l9_2800=l9_2762;
if ((l9_2798==0)||(l9_2798==3))
{
float l9_2801=l9_2797;
float l9_2802=0.0;
float l9_2803=1.0;
bool l9_2804=l9_2799;
float l9_2805=l9_2800;
float l9_2806=fast::clamp(l9_2801,l9_2802,l9_2803);
float l9_2807=step(abs(l9_2801-l9_2806),9.9999997e-06);
l9_2805*=(l9_2807+((1.0-float(l9_2804))*(1.0-l9_2807)));
l9_2801=l9_2806;
l9_2797=l9_2801;
l9_2800=l9_2805;
}
l9_2752.x=l9_2797;
l9_2762=l9_2800;
float l9_2808=l9_2752.y;
int l9_2809=l9_2755.y;
bool l9_2810=l9_2761;
float l9_2811=l9_2762;
if ((l9_2809==0)||(l9_2809==3))
{
float l9_2812=l9_2808;
float l9_2813=0.0;
float l9_2814=1.0;
bool l9_2815=l9_2810;
float l9_2816=l9_2811;
float l9_2817=fast::clamp(l9_2812,l9_2813,l9_2814);
float l9_2818=step(abs(l9_2812-l9_2817),9.9999997e-06);
l9_2816*=(l9_2818+((1.0-float(l9_2815))*(1.0-l9_2818)));
l9_2812=l9_2817;
l9_2808=l9_2812;
l9_2811=l9_2816;
}
l9_2752.y=l9_2808;
l9_2762=l9_2811;
float2 l9_2819=l9_2752;
int l9_2820=l9_2750;
int l9_2821=l9_2751;
float l9_2822=l9_2760;
float2 l9_2823=l9_2819;
int l9_2824=l9_2820;
int l9_2825=l9_2821;
float3 l9_2826=float3(0.0);
if (l9_2824==0)
{
l9_2826=float3(l9_2823,0.0);
}
else
{
if (l9_2824==1)
{
l9_2826=float3(l9_2823.x,(l9_2823.y*0.5)+(0.5-(float(l9_2825)*0.5)),0.0);
}
else
{
l9_2826=float3(l9_2823,float(l9_2825));
}
}
float3 l9_2827=l9_2826;
float3 l9_2828=l9_2827;
float2 l9_2829=l9_2828.xy;
float l9_2830=l9_2822;
float4 l9_2831=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_2829,bias(l9_2830));
float4 l9_2832=l9_2831;
float4 l9_2833=l9_2832;
if (l9_2758)
{
l9_2833=mix(l9_2759,l9_2833,float4(l9_2762));
}
float4 l9_2834=l9_2833;
l9_2743=l9_2834;
l9_2716=l9_2743;
l9_2714+=l9_2716;
l9_2350=l9_2714;
float4 l9_2835=l9_2350;
ssGlobals l9_2836=l9_2349;
float4 l9_2837=float4(0.0);
l9_2836.Loop_Index_ID0=4.0;
l9_2836.Loop_Ratio_ID0=0.57142901;
float2 l9_2838=float2(0.0);
float2 l9_2839=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_2838=l9_2839;
float2 l9_2840=float2(0.0);
l9_2840=l9_2836.gScreenCoord;
float2 l9_2841=float2(0.0);
l9_2841=l9_2840;
float2 l9_2842=float2(0.0);
l9_2842=l9_2838;
float l9_2843=0.0;
float l9_2844=(*sc_set0.UserUniforms).blurFactor;
l9_2843=l9_2844;
float l9_2845=0.0;
l9_2845=l9_2843;
float l9_2846=0.0;
l9_2846=exp2(l9_2845);
float l9_2847=0.0;
l9_2847=l9_2836.Loop_Index_ID0;
float2 l9_2848=float2(0.0);
float l9_2849=l9_2847;
float2 l9_2850=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_2851=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_2852=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_2853=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_2854=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_2855=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_2856=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_2857=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_2858[8];
l9_2858[0]=l9_2850;
l9_2858[1]=l9_2851;
l9_2858[2]=l9_2852;
l9_2858[3]=l9_2853;
l9_2858[4]=l9_2854;
l9_2858[5]=l9_2855;
l9_2858[6]=l9_2856;
l9_2858[7]=l9_2857;
int l9_2859=int(fast::clamp(l9_2849+9.9999997e-05,0.0,7.0));
float2 l9_2860=l9_2858[l9_2859];
l9_2848=l9_2860;
float2 l9_2861=float2(0.0);
l9_2861=(l9_2842*float2(l9_2846))*l9_2848;
float2 l9_2862=float2(0.0);
l9_2862=l9_2841+l9_2861;
float l9_2863=0.0;
l9_2863=l9_2845+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_2864=float4(0.0);
int l9_2865=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_2866=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2866=0;
}
else
{
l9_2866=in.varStereoViewID;
}
int l9_2867=l9_2866;
l9_2865=1-l9_2867;
}
else
{
int l9_2868=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2868=0;
}
else
{
l9_2868=in.varStereoViewID;
}
int l9_2869=l9_2868;
l9_2865=l9_2869;
}
int l9_2870=l9_2865;
int l9_2871=screenTextureLayout_tmp;
int l9_2872=l9_2870;
float2 l9_2873=l9_2862;
bool l9_2874=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_2875=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_2876=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_2877=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_2878=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_2879=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_2880=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_2881=l9_2863;
bool l9_2882=l9_2879&&(!l9_2877);
float l9_2883=1.0;
float l9_2884=l9_2873.x;
int l9_2885=l9_2876.x;
if (l9_2885==1)
{
l9_2884=fract(l9_2884);
}
else
{
if (l9_2885==2)
{
float l9_2886=fract(l9_2884);
float l9_2887=l9_2884-l9_2886;
float l9_2888=step(0.25,fract(l9_2887*0.5));
l9_2884=mix(l9_2886,1.0-l9_2886,fast::clamp(l9_2888,0.0,1.0));
}
}
l9_2873.x=l9_2884;
float l9_2889=l9_2873.y;
int l9_2890=l9_2876.y;
if (l9_2890==1)
{
l9_2889=fract(l9_2889);
}
else
{
if (l9_2890==2)
{
float l9_2891=fract(l9_2889);
float l9_2892=l9_2889-l9_2891;
float l9_2893=step(0.25,fract(l9_2892*0.5));
l9_2889=mix(l9_2891,1.0-l9_2891,fast::clamp(l9_2893,0.0,1.0));
}
}
l9_2873.y=l9_2889;
if (l9_2877)
{
bool l9_2894=l9_2879;
bool l9_2895;
if (l9_2894)
{
l9_2895=l9_2876.x==3;
}
else
{
l9_2895=l9_2894;
}
float l9_2896=l9_2873.x;
float l9_2897=l9_2878.x;
float l9_2898=l9_2878.z;
bool l9_2899=l9_2895;
float l9_2900=l9_2883;
float l9_2901=fast::clamp(l9_2896,l9_2897,l9_2898);
float l9_2902=step(abs(l9_2896-l9_2901),9.9999997e-06);
l9_2900*=(l9_2902+((1.0-float(l9_2899))*(1.0-l9_2902)));
l9_2896=l9_2901;
l9_2873.x=l9_2896;
l9_2883=l9_2900;
bool l9_2903=l9_2879;
bool l9_2904;
if (l9_2903)
{
l9_2904=l9_2876.y==3;
}
else
{
l9_2904=l9_2903;
}
float l9_2905=l9_2873.y;
float l9_2906=l9_2878.y;
float l9_2907=l9_2878.w;
bool l9_2908=l9_2904;
float l9_2909=l9_2883;
float l9_2910=fast::clamp(l9_2905,l9_2906,l9_2907);
float l9_2911=step(abs(l9_2905-l9_2910),9.9999997e-06);
l9_2909*=(l9_2911+((1.0-float(l9_2908))*(1.0-l9_2911)));
l9_2905=l9_2910;
l9_2873.y=l9_2905;
l9_2883=l9_2909;
}
float2 l9_2912=l9_2873;
bool l9_2913=l9_2874;
float3x3 l9_2914=l9_2875;
if (l9_2913)
{
l9_2912=float2((l9_2914*float3(l9_2912,1.0)).xy);
}
float2 l9_2915=l9_2912;
float2 l9_2916=l9_2915;
float2 l9_2917=l9_2916;
l9_2873=l9_2917;
float l9_2918=l9_2873.x;
int l9_2919=l9_2876.x;
bool l9_2920=l9_2882;
float l9_2921=l9_2883;
if ((l9_2919==0)||(l9_2919==3))
{
float l9_2922=l9_2918;
float l9_2923=0.0;
float l9_2924=1.0;
bool l9_2925=l9_2920;
float l9_2926=l9_2921;
float l9_2927=fast::clamp(l9_2922,l9_2923,l9_2924);
float l9_2928=step(abs(l9_2922-l9_2927),9.9999997e-06);
l9_2926*=(l9_2928+((1.0-float(l9_2925))*(1.0-l9_2928)));
l9_2922=l9_2927;
l9_2918=l9_2922;
l9_2921=l9_2926;
}
l9_2873.x=l9_2918;
l9_2883=l9_2921;
float l9_2929=l9_2873.y;
int l9_2930=l9_2876.y;
bool l9_2931=l9_2882;
float l9_2932=l9_2883;
if ((l9_2930==0)||(l9_2930==3))
{
float l9_2933=l9_2929;
float l9_2934=0.0;
float l9_2935=1.0;
bool l9_2936=l9_2931;
float l9_2937=l9_2932;
float l9_2938=fast::clamp(l9_2933,l9_2934,l9_2935);
float l9_2939=step(abs(l9_2933-l9_2938),9.9999997e-06);
l9_2937*=(l9_2939+((1.0-float(l9_2936))*(1.0-l9_2939)));
l9_2933=l9_2938;
l9_2929=l9_2933;
l9_2932=l9_2937;
}
l9_2873.y=l9_2929;
l9_2883=l9_2932;
float2 l9_2940=l9_2873;
int l9_2941=l9_2871;
int l9_2942=l9_2872;
float l9_2943=l9_2881;
float2 l9_2944=l9_2940;
int l9_2945=l9_2941;
int l9_2946=l9_2942;
float3 l9_2947=float3(0.0);
if (l9_2945==0)
{
l9_2947=float3(l9_2944,0.0);
}
else
{
if (l9_2945==1)
{
l9_2947=float3(l9_2944.x,(l9_2944.y*0.5)+(0.5-(float(l9_2946)*0.5)),0.0);
}
else
{
l9_2947=float3(l9_2944,float(l9_2946));
}
}
float3 l9_2948=l9_2947;
float3 l9_2949=l9_2948;
float2 l9_2950=l9_2949.xy;
float l9_2951=l9_2943;
float4 l9_2952=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_2950,bias(l9_2951));
float4 l9_2953=l9_2952;
float4 l9_2954=l9_2953;
if (l9_2879)
{
l9_2954=mix(l9_2880,l9_2954,float4(l9_2883));
}
float4 l9_2955=l9_2954;
l9_2864=l9_2955;
l9_2837=l9_2864;
l9_2835+=l9_2837;
l9_2350=l9_2835;
float4 l9_2956=l9_2350;
ssGlobals l9_2957=l9_2349;
float4 l9_2958=float4(0.0);
l9_2957.Loop_Index_ID0=5.0;
l9_2957.Loop_Ratio_ID0=0.71428603;
float2 l9_2959=float2(0.0);
float2 l9_2960=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_2959=l9_2960;
float2 l9_2961=float2(0.0);
l9_2961=l9_2957.gScreenCoord;
float2 l9_2962=float2(0.0);
l9_2962=l9_2961;
float2 l9_2963=float2(0.0);
l9_2963=l9_2959;
float l9_2964=0.0;
float l9_2965=(*sc_set0.UserUniforms).blurFactor;
l9_2964=l9_2965;
float l9_2966=0.0;
l9_2966=l9_2964;
float l9_2967=0.0;
l9_2967=exp2(l9_2966);
float l9_2968=0.0;
l9_2968=l9_2957.Loop_Index_ID0;
float2 l9_2969=float2(0.0);
float l9_2970=l9_2968;
float2 l9_2971=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_2972=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_2973=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_2974=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_2975=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_2976=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_2977=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_2978=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_2979[8];
l9_2979[0]=l9_2971;
l9_2979[1]=l9_2972;
l9_2979[2]=l9_2973;
l9_2979[3]=l9_2974;
l9_2979[4]=l9_2975;
l9_2979[5]=l9_2976;
l9_2979[6]=l9_2977;
l9_2979[7]=l9_2978;
int l9_2980=int(fast::clamp(l9_2970+9.9999997e-05,0.0,7.0));
float2 l9_2981=l9_2979[l9_2980];
l9_2969=l9_2981;
float2 l9_2982=float2(0.0);
l9_2982=(l9_2963*float2(l9_2967))*l9_2969;
float2 l9_2983=float2(0.0);
l9_2983=l9_2962+l9_2982;
float l9_2984=0.0;
l9_2984=l9_2966+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_2985=float4(0.0);
int l9_2986=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_2987=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2987=0;
}
else
{
l9_2987=in.varStereoViewID;
}
int l9_2988=l9_2987;
l9_2986=1-l9_2988;
}
else
{
int l9_2989=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2989=0;
}
else
{
l9_2989=in.varStereoViewID;
}
int l9_2990=l9_2989;
l9_2986=l9_2990;
}
int l9_2991=l9_2986;
int l9_2992=screenTextureLayout_tmp;
int l9_2993=l9_2991;
float2 l9_2994=l9_2983;
bool l9_2995=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_2996=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_2997=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_2998=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_2999=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_3000=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_3001=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_3002=l9_2984;
bool l9_3003=l9_3000&&(!l9_2998);
float l9_3004=1.0;
float l9_3005=l9_2994.x;
int l9_3006=l9_2997.x;
if (l9_3006==1)
{
l9_3005=fract(l9_3005);
}
else
{
if (l9_3006==2)
{
float l9_3007=fract(l9_3005);
float l9_3008=l9_3005-l9_3007;
float l9_3009=step(0.25,fract(l9_3008*0.5));
l9_3005=mix(l9_3007,1.0-l9_3007,fast::clamp(l9_3009,0.0,1.0));
}
}
l9_2994.x=l9_3005;
float l9_3010=l9_2994.y;
int l9_3011=l9_2997.y;
if (l9_3011==1)
{
l9_3010=fract(l9_3010);
}
else
{
if (l9_3011==2)
{
float l9_3012=fract(l9_3010);
float l9_3013=l9_3010-l9_3012;
float l9_3014=step(0.25,fract(l9_3013*0.5));
l9_3010=mix(l9_3012,1.0-l9_3012,fast::clamp(l9_3014,0.0,1.0));
}
}
l9_2994.y=l9_3010;
if (l9_2998)
{
bool l9_3015=l9_3000;
bool l9_3016;
if (l9_3015)
{
l9_3016=l9_2997.x==3;
}
else
{
l9_3016=l9_3015;
}
float l9_3017=l9_2994.x;
float l9_3018=l9_2999.x;
float l9_3019=l9_2999.z;
bool l9_3020=l9_3016;
float l9_3021=l9_3004;
float l9_3022=fast::clamp(l9_3017,l9_3018,l9_3019);
float l9_3023=step(abs(l9_3017-l9_3022),9.9999997e-06);
l9_3021*=(l9_3023+((1.0-float(l9_3020))*(1.0-l9_3023)));
l9_3017=l9_3022;
l9_2994.x=l9_3017;
l9_3004=l9_3021;
bool l9_3024=l9_3000;
bool l9_3025;
if (l9_3024)
{
l9_3025=l9_2997.y==3;
}
else
{
l9_3025=l9_3024;
}
float l9_3026=l9_2994.y;
float l9_3027=l9_2999.y;
float l9_3028=l9_2999.w;
bool l9_3029=l9_3025;
float l9_3030=l9_3004;
float l9_3031=fast::clamp(l9_3026,l9_3027,l9_3028);
float l9_3032=step(abs(l9_3026-l9_3031),9.9999997e-06);
l9_3030*=(l9_3032+((1.0-float(l9_3029))*(1.0-l9_3032)));
l9_3026=l9_3031;
l9_2994.y=l9_3026;
l9_3004=l9_3030;
}
float2 l9_3033=l9_2994;
bool l9_3034=l9_2995;
float3x3 l9_3035=l9_2996;
if (l9_3034)
{
l9_3033=float2((l9_3035*float3(l9_3033,1.0)).xy);
}
float2 l9_3036=l9_3033;
float2 l9_3037=l9_3036;
float2 l9_3038=l9_3037;
l9_2994=l9_3038;
float l9_3039=l9_2994.x;
int l9_3040=l9_2997.x;
bool l9_3041=l9_3003;
float l9_3042=l9_3004;
if ((l9_3040==0)||(l9_3040==3))
{
float l9_3043=l9_3039;
float l9_3044=0.0;
float l9_3045=1.0;
bool l9_3046=l9_3041;
float l9_3047=l9_3042;
float l9_3048=fast::clamp(l9_3043,l9_3044,l9_3045);
float l9_3049=step(abs(l9_3043-l9_3048),9.9999997e-06);
l9_3047*=(l9_3049+((1.0-float(l9_3046))*(1.0-l9_3049)));
l9_3043=l9_3048;
l9_3039=l9_3043;
l9_3042=l9_3047;
}
l9_2994.x=l9_3039;
l9_3004=l9_3042;
float l9_3050=l9_2994.y;
int l9_3051=l9_2997.y;
bool l9_3052=l9_3003;
float l9_3053=l9_3004;
if ((l9_3051==0)||(l9_3051==3))
{
float l9_3054=l9_3050;
float l9_3055=0.0;
float l9_3056=1.0;
bool l9_3057=l9_3052;
float l9_3058=l9_3053;
float l9_3059=fast::clamp(l9_3054,l9_3055,l9_3056);
float l9_3060=step(abs(l9_3054-l9_3059),9.9999997e-06);
l9_3058*=(l9_3060+((1.0-float(l9_3057))*(1.0-l9_3060)));
l9_3054=l9_3059;
l9_3050=l9_3054;
l9_3053=l9_3058;
}
l9_2994.y=l9_3050;
l9_3004=l9_3053;
float2 l9_3061=l9_2994;
int l9_3062=l9_2992;
int l9_3063=l9_2993;
float l9_3064=l9_3002;
float2 l9_3065=l9_3061;
int l9_3066=l9_3062;
int l9_3067=l9_3063;
float3 l9_3068=float3(0.0);
if (l9_3066==0)
{
l9_3068=float3(l9_3065,0.0);
}
else
{
if (l9_3066==1)
{
l9_3068=float3(l9_3065.x,(l9_3065.y*0.5)+(0.5-(float(l9_3067)*0.5)),0.0);
}
else
{
l9_3068=float3(l9_3065,float(l9_3067));
}
}
float3 l9_3069=l9_3068;
float3 l9_3070=l9_3069;
float2 l9_3071=l9_3070.xy;
float l9_3072=l9_3064;
float4 l9_3073=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_3071,bias(l9_3072));
float4 l9_3074=l9_3073;
float4 l9_3075=l9_3074;
if (l9_3000)
{
l9_3075=mix(l9_3001,l9_3075,float4(l9_3004));
}
float4 l9_3076=l9_3075;
l9_2985=l9_3076;
l9_2958=l9_2985;
l9_2956+=l9_2958;
l9_2350=l9_2956;
float4 l9_3077=l9_2350;
ssGlobals l9_3078=l9_2349;
float4 l9_3079=float4(0.0);
l9_3078.Loop_Index_ID0=6.0;
l9_3078.Loop_Ratio_ID0=0.85714298;
float2 l9_3080=float2(0.0);
float2 l9_3081=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_3080=l9_3081;
float2 l9_3082=float2(0.0);
l9_3082=l9_3078.gScreenCoord;
float2 l9_3083=float2(0.0);
l9_3083=l9_3082;
float2 l9_3084=float2(0.0);
l9_3084=l9_3080;
float l9_3085=0.0;
float l9_3086=(*sc_set0.UserUniforms).blurFactor;
l9_3085=l9_3086;
float l9_3087=0.0;
l9_3087=l9_3085;
float l9_3088=0.0;
l9_3088=exp2(l9_3087);
float l9_3089=0.0;
l9_3089=l9_3078.Loop_Index_ID0;
float2 l9_3090=float2(0.0);
float l9_3091=l9_3089;
float2 l9_3092=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_3093=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_3094=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_3095=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_3096=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_3097=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_3098=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_3099=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_3100[8];
l9_3100[0]=l9_3092;
l9_3100[1]=l9_3093;
l9_3100[2]=l9_3094;
l9_3100[3]=l9_3095;
l9_3100[4]=l9_3096;
l9_3100[5]=l9_3097;
l9_3100[6]=l9_3098;
l9_3100[7]=l9_3099;
int l9_3101=int(fast::clamp(l9_3091+9.9999997e-05,0.0,7.0));
float2 l9_3102=l9_3100[l9_3101];
l9_3090=l9_3102;
float2 l9_3103=float2(0.0);
l9_3103=(l9_3084*float2(l9_3088))*l9_3090;
float2 l9_3104=float2(0.0);
l9_3104=l9_3083+l9_3103;
float l9_3105=0.0;
l9_3105=l9_3087+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_3106=float4(0.0);
int l9_3107=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_3108=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3108=0;
}
else
{
l9_3108=in.varStereoViewID;
}
int l9_3109=l9_3108;
l9_3107=1-l9_3109;
}
else
{
int l9_3110=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3110=0;
}
else
{
l9_3110=in.varStereoViewID;
}
int l9_3111=l9_3110;
l9_3107=l9_3111;
}
int l9_3112=l9_3107;
int l9_3113=screenTextureLayout_tmp;
int l9_3114=l9_3112;
float2 l9_3115=l9_3104;
bool l9_3116=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_3117=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_3118=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_3119=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_3120=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_3121=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_3122=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_3123=l9_3105;
bool l9_3124=l9_3121&&(!l9_3119);
float l9_3125=1.0;
float l9_3126=l9_3115.x;
int l9_3127=l9_3118.x;
if (l9_3127==1)
{
l9_3126=fract(l9_3126);
}
else
{
if (l9_3127==2)
{
float l9_3128=fract(l9_3126);
float l9_3129=l9_3126-l9_3128;
float l9_3130=step(0.25,fract(l9_3129*0.5));
l9_3126=mix(l9_3128,1.0-l9_3128,fast::clamp(l9_3130,0.0,1.0));
}
}
l9_3115.x=l9_3126;
float l9_3131=l9_3115.y;
int l9_3132=l9_3118.y;
if (l9_3132==1)
{
l9_3131=fract(l9_3131);
}
else
{
if (l9_3132==2)
{
float l9_3133=fract(l9_3131);
float l9_3134=l9_3131-l9_3133;
float l9_3135=step(0.25,fract(l9_3134*0.5));
l9_3131=mix(l9_3133,1.0-l9_3133,fast::clamp(l9_3135,0.0,1.0));
}
}
l9_3115.y=l9_3131;
if (l9_3119)
{
bool l9_3136=l9_3121;
bool l9_3137;
if (l9_3136)
{
l9_3137=l9_3118.x==3;
}
else
{
l9_3137=l9_3136;
}
float l9_3138=l9_3115.x;
float l9_3139=l9_3120.x;
float l9_3140=l9_3120.z;
bool l9_3141=l9_3137;
float l9_3142=l9_3125;
float l9_3143=fast::clamp(l9_3138,l9_3139,l9_3140);
float l9_3144=step(abs(l9_3138-l9_3143),9.9999997e-06);
l9_3142*=(l9_3144+((1.0-float(l9_3141))*(1.0-l9_3144)));
l9_3138=l9_3143;
l9_3115.x=l9_3138;
l9_3125=l9_3142;
bool l9_3145=l9_3121;
bool l9_3146;
if (l9_3145)
{
l9_3146=l9_3118.y==3;
}
else
{
l9_3146=l9_3145;
}
float l9_3147=l9_3115.y;
float l9_3148=l9_3120.y;
float l9_3149=l9_3120.w;
bool l9_3150=l9_3146;
float l9_3151=l9_3125;
float l9_3152=fast::clamp(l9_3147,l9_3148,l9_3149);
float l9_3153=step(abs(l9_3147-l9_3152),9.9999997e-06);
l9_3151*=(l9_3153+((1.0-float(l9_3150))*(1.0-l9_3153)));
l9_3147=l9_3152;
l9_3115.y=l9_3147;
l9_3125=l9_3151;
}
float2 l9_3154=l9_3115;
bool l9_3155=l9_3116;
float3x3 l9_3156=l9_3117;
if (l9_3155)
{
l9_3154=float2((l9_3156*float3(l9_3154,1.0)).xy);
}
float2 l9_3157=l9_3154;
float2 l9_3158=l9_3157;
float2 l9_3159=l9_3158;
l9_3115=l9_3159;
float l9_3160=l9_3115.x;
int l9_3161=l9_3118.x;
bool l9_3162=l9_3124;
float l9_3163=l9_3125;
if ((l9_3161==0)||(l9_3161==3))
{
float l9_3164=l9_3160;
float l9_3165=0.0;
float l9_3166=1.0;
bool l9_3167=l9_3162;
float l9_3168=l9_3163;
float l9_3169=fast::clamp(l9_3164,l9_3165,l9_3166);
float l9_3170=step(abs(l9_3164-l9_3169),9.9999997e-06);
l9_3168*=(l9_3170+((1.0-float(l9_3167))*(1.0-l9_3170)));
l9_3164=l9_3169;
l9_3160=l9_3164;
l9_3163=l9_3168;
}
l9_3115.x=l9_3160;
l9_3125=l9_3163;
float l9_3171=l9_3115.y;
int l9_3172=l9_3118.y;
bool l9_3173=l9_3124;
float l9_3174=l9_3125;
if ((l9_3172==0)||(l9_3172==3))
{
float l9_3175=l9_3171;
float l9_3176=0.0;
float l9_3177=1.0;
bool l9_3178=l9_3173;
float l9_3179=l9_3174;
float l9_3180=fast::clamp(l9_3175,l9_3176,l9_3177);
float l9_3181=step(abs(l9_3175-l9_3180),9.9999997e-06);
l9_3179*=(l9_3181+((1.0-float(l9_3178))*(1.0-l9_3181)));
l9_3175=l9_3180;
l9_3171=l9_3175;
l9_3174=l9_3179;
}
l9_3115.y=l9_3171;
l9_3125=l9_3174;
float2 l9_3182=l9_3115;
int l9_3183=l9_3113;
int l9_3184=l9_3114;
float l9_3185=l9_3123;
float2 l9_3186=l9_3182;
int l9_3187=l9_3183;
int l9_3188=l9_3184;
float3 l9_3189=float3(0.0);
if (l9_3187==0)
{
l9_3189=float3(l9_3186,0.0);
}
else
{
if (l9_3187==1)
{
l9_3189=float3(l9_3186.x,(l9_3186.y*0.5)+(0.5-(float(l9_3188)*0.5)),0.0);
}
else
{
l9_3189=float3(l9_3186,float(l9_3188));
}
}
float3 l9_3190=l9_3189;
float3 l9_3191=l9_3190;
float2 l9_3192=l9_3191.xy;
float l9_3193=l9_3185;
float4 l9_3194=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_3192,bias(l9_3193));
float4 l9_3195=l9_3194;
float4 l9_3196=l9_3195;
if (l9_3121)
{
l9_3196=mix(l9_3122,l9_3196,float4(l9_3125));
}
float4 l9_3197=l9_3196;
l9_3106=l9_3197;
l9_3079=l9_3106;
l9_3077+=l9_3079;
l9_2350=l9_3077;
float4 l9_3198=l9_2350;
ssGlobals l9_3199=l9_2349;
float4 l9_3200=float4(0.0);
l9_3199.Loop_Index_ID0=7.0;
l9_3199.Loop_Ratio_ID0=1.0;
float2 l9_3201=float2(0.0);
float2 l9_3202=(*sc_set0.UserUniforms).screenTextureSize.zw;
l9_3201=l9_3202;
float2 l9_3203=float2(0.0);
l9_3203=l9_3199.gScreenCoord;
float2 l9_3204=float2(0.0);
l9_3204=l9_3203;
float2 l9_3205=float2(0.0);
l9_3205=l9_3201;
float l9_3206=0.0;
float l9_3207=(*sc_set0.UserUniforms).blurFactor;
l9_3206=l9_3207;
float l9_3208=0.0;
l9_3208=l9_3206;
float l9_3209=0.0;
l9_3209=exp2(l9_3208);
float l9_3210=0.0;
l9_3210=l9_3199.Loop_Index_ID0;
float2 l9_3211=float2(0.0);
float l9_3212=l9_3210;
float2 l9_3213=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_3214=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_3215=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_3216=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_3217=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_3218=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_3219=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_3220=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_3221[8];
l9_3221[0]=l9_3213;
l9_3221[1]=l9_3214;
l9_3221[2]=l9_3215;
l9_3221[3]=l9_3216;
l9_3221[4]=l9_3217;
l9_3221[5]=l9_3218;
l9_3221[6]=l9_3219;
l9_3221[7]=l9_3220;
int l9_3222=int(fast::clamp(l9_3212+9.9999997e-05,0.0,7.0));
float2 l9_3223=l9_3221[l9_3222];
l9_3211=l9_3223;
float2 l9_3224=float2(0.0);
l9_3224=(l9_3205*float2(l9_3209))*l9_3211;
float2 l9_3225=float2(0.0);
l9_3225=l9_3204+l9_3224;
float l9_3226=0.0;
l9_3226=l9_3208+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_3227=float4(0.0);
int l9_3228=0;
if ((int(screenTextureHasSwappedViews_tmp)!=0))
{
int l9_3229=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3229=0;
}
else
{
l9_3229=in.varStereoViewID;
}
int l9_3230=l9_3229;
l9_3228=1-l9_3230;
}
else
{
int l9_3231=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3231=0;
}
else
{
l9_3231=in.varStereoViewID;
}
int l9_3232=l9_3231;
l9_3228=l9_3232;
}
int l9_3233=l9_3228;
int l9_3234=screenTextureLayout_tmp;
int l9_3235=l9_3233;
float2 l9_3236=l9_3225;
bool l9_3237=(int(SC_USE_UV_TRANSFORM_screenTexture_tmp)!=0);
float3x3 l9_3238=(*sc_set0.UserUniforms).screenTextureTransform;
int2 l9_3239=int2(SC_SOFTWARE_WRAP_MODE_U_screenTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_screenTexture_tmp);
bool l9_3240=(int(SC_USE_UV_MIN_MAX_screenTexture_tmp)!=0);
float4 l9_3241=(*sc_set0.UserUniforms).screenTextureUvMinMax;
bool l9_3242=(int(SC_USE_CLAMP_TO_BORDER_screenTexture_tmp)!=0);
float4 l9_3243=(*sc_set0.UserUniforms).screenTextureBorderColor;
float l9_3244=l9_3226;
bool l9_3245=l9_3242&&(!l9_3240);
float l9_3246=1.0;
float l9_3247=l9_3236.x;
int l9_3248=l9_3239.x;
if (l9_3248==1)
{
l9_3247=fract(l9_3247);
}
else
{
if (l9_3248==2)
{
float l9_3249=fract(l9_3247);
float l9_3250=l9_3247-l9_3249;
float l9_3251=step(0.25,fract(l9_3250*0.5));
l9_3247=mix(l9_3249,1.0-l9_3249,fast::clamp(l9_3251,0.0,1.0));
}
}
l9_3236.x=l9_3247;
float l9_3252=l9_3236.y;
int l9_3253=l9_3239.y;
if (l9_3253==1)
{
l9_3252=fract(l9_3252);
}
else
{
if (l9_3253==2)
{
float l9_3254=fract(l9_3252);
float l9_3255=l9_3252-l9_3254;
float l9_3256=step(0.25,fract(l9_3255*0.5));
l9_3252=mix(l9_3254,1.0-l9_3254,fast::clamp(l9_3256,0.0,1.0));
}
}
l9_3236.y=l9_3252;
if (l9_3240)
{
bool l9_3257=l9_3242;
bool l9_3258;
if (l9_3257)
{
l9_3258=l9_3239.x==3;
}
else
{
l9_3258=l9_3257;
}
float l9_3259=l9_3236.x;
float l9_3260=l9_3241.x;
float l9_3261=l9_3241.z;
bool l9_3262=l9_3258;
float l9_3263=l9_3246;
float l9_3264=fast::clamp(l9_3259,l9_3260,l9_3261);
float l9_3265=step(abs(l9_3259-l9_3264),9.9999997e-06);
l9_3263*=(l9_3265+((1.0-float(l9_3262))*(1.0-l9_3265)));
l9_3259=l9_3264;
l9_3236.x=l9_3259;
l9_3246=l9_3263;
bool l9_3266=l9_3242;
bool l9_3267;
if (l9_3266)
{
l9_3267=l9_3239.y==3;
}
else
{
l9_3267=l9_3266;
}
float l9_3268=l9_3236.y;
float l9_3269=l9_3241.y;
float l9_3270=l9_3241.w;
bool l9_3271=l9_3267;
float l9_3272=l9_3246;
float l9_3273=fast::clamp(l9_3268,l9_3269,l9_3270);
float l9_3274=step(abs(l9_3268-l9_3273),9.9999997e-06);
l9_3272*=(l9_3274+((1.0-float(l9_3271))*(1.0-l9_3274)));
l9_3268=l9_3273;
l9_3236.y=l9_3268;
l9_3246=l9_3272;
}
float2 l9_3275=l9_3236;
bool l9_3276=l9_3237;
float3x3 l9_3277=l9_3238;
if (l9_3276)
{
l9_3275=float2((l9_3277*float3(l9_3275,1.0)).xy);
}
float2 l9_3278=l9_3275;
float2 l9_3279=l9_3278;
float2 l9_3280=l9_3279;
l9_3236=l9_3280;
float l9_3281=l9_3236.x;
int l9_3282=l9_3239.x;
bool l9_3283=l9_3245;
float l9_3284=l9_3246;
if ((l9_3282==0)||(l9_3282==3))
{
float l9_3285=l9_3281;
float l9_3286=0.0;
float l9_3287=1.0;
bool l9_3288=l9_3283;
float l9_3289=l9_3284;
float l9_3290=fast::clamp(l9_3285,l9_3286,l9_3287);
float l9_3291=step(abs(l9_3285-l9_3290),9.9999997e-06);
l9_3289*=(l9_3291+((1.0-float(l9_3288))*(1.0-l9_3291)));
l9_3285=l9_3290;
l9_3281=l9_3285;
l9_3284=l9_3289;
}
l9_3236.x=l9_3281;
l9_3246=l9_3284;
float l9_3292=l9_3236.y;
int l9_3293=l9_3239.y;
bool l9_3294=l9_3245;
float l9_3295=l9_3246;
if ((l9_3293==0)||(l9_3293==3))
{
float l9_3296=l9_3292;
float l9_3297=0.0;
float l9_3298=1.0;
bool l9_3299=l9_3294;
float l9_3300=l9_3295;
float l9_3301=fast::clamp(l9_3296,l9_3297,l9_3298);
float l9_3302=step(abs(l9_3296-l9_3301),9.9999997e-06);
l9_3300*=(l9_3302+((1.0-float(l9_3299))*(1.0-l9_3302)));
l9_3296=l9_3301;
l9_3292=l9_3296;
l9_3295=l9_3300;
}
l9_3236.y=l9_3292;
l9_3246=l9_3295;
float2 l9_3303=l9_3236;
int l9_3304=l9_3234;
int l9_3305=l9_3235;
float l9_3306=l9_3244;
float2 l9_3307=l9_3303;
int l9_3308=l9_3304;
int l9_3309=l9_3305;
float3 l9_3310=float3(0.0);
if (l9_3308==0)
{
l9_3310=float3(l9_3307,0.0);
}
else
{
if (l9_3308==1)
{
l9_3310=float3(l9_3307.x,(l9_3307.y*0.5)+(0.5-(float(l9_3309)*0.5)),0.0);
}
else
{
l9_3310=float3(l9_3307,float(l9_3309));
}
}
float3 l9_3311=l9_3310;
float3 l9_3312=l9_3311;
float2 l9_3313=l9_3312.xy;
float l9_3314=l9_3306;
float4 l9_3315=sc_set0.screenTexture.sample(sc_set0.screenTextureSmpSC,l9_3313,bias(l9_3314));
float4 l9_3316=l9_3315;
float4 l9_3317=l9_3316;
if (l9_3242)
{
l9_3317=mix(l9_3243,l9_3317,float4(l9_3246));
}
float4 l9_3318=l9_3317;
l9_3227=l9_3318;
l9_3200=l9_3227;
l9_3198+=l9_3200;
l9_2350=l9_3198;
l9_2350/=float4(8.0);
l9_2348=l9_2350;
float4 l9_3319=float4(0.0);
l9_3319=mix(l9_2256,l9_2348,float4((*sc_set0.UserUniforms).Port_Input2_N105));
float4 l9_3320=float4(0.0);
l9_3320=l9_3319;
param_1=l9_3320;
param_2=param_1;
}
Result_N18=param_2;
FinalColor=Result_N18;
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
float4 l9_3321=gl_FragCoord;
float2 l9_3322=floor(mod(l9_3321.xy,float2(4.0)));
float l9_3323=(mod(dot(l9_3322,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_4<l9_3323)
{
discard_fragment();
}
}
float4 param_5=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_3324=param_5;
float4 l9_3325=l9_3324;
float l9_3326=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_3326=l9_3325.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_3326=fast::clamp(l9_3325.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_3326=fast::clamp(dot(l9_3325.xyz,float3(l9_3325.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_3326=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_3326=(1.0-dot(l9_3325.xyz,float3(0.33333001)))*l9_3325.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_3326=(1.0-fast::clamp(dot(l9_3325.xyz,float3(1.0)),0.0,1.0))*l9_3325.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_3326=fast::clamp(dot(l9_3325.xyz,float3(1.0)),0.0,1.0)*l9_3325.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_3326=fast::clamp(dot(l9_3325.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_3326=fast::clamp(dot(l9_3325.xyz,float3(1.0)),0.0,1.0)*l9_3325.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_3326=dot(l9_3325.xyz,float3(0.33333001))*l9_3325.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_3326=1.0-fast::clamp(dot(l9_3325.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_3326=fast::clamp(dot(l9_3325.xyz,float3(1.0)),0.0,1.0);
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
float l9_3327=l9_3326;
float l9_3328=l9_3327;
float l9_3329=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_3328;
float3 l9_3330=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_3324.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_3331=float4(l9_3330.x,l9_3330.y,l9_3330.z,l9_3329);
param_5=l9_3331;
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
float4 l9_3332=param_5;
float4 l9_3333=float4(0.0);
float4 l9_3334=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_3335=out.FragColor0;
float4 l9_3336=l9_3335;
if ((int(sc_UseFramebufferFetchMarker_tmp)!=0))
{
l9_3336.x+=(*sc_set0.UserUniforms)._sc_framebufferFetchMarker;
}
float4 l9_3337=l9_3336;
l9_3334=l9_3337;
}
else
{
float4 l9_3338=gl_FragCoord;
float2 l9_3339=l9_3338.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_3340=l9_3339;
float2 l9_3341=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_3342=1;
int l9_3343=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3343=0;
}
else
{
l9_3343=in.varStereoViewID;
}
int l9_3344=l9_3343;
int l9_3345=l9_3344;
float3 l9_3346=float3(l9_3340,0.0);
int l9_3347=l9_3342;
int l9_3348=l9_3345;
if (l9_3347==1)
{
l9_3346.y=((2.0*l9_3346.y)+float(l9_3348))-1.0;
}
float2 l9_3349=l9_3346.xy;
l9_3341=l9_3349;
}
else
{
l9_3341=l9_3340;
}
float2 l9_3350=l9_3341;
float2 l9_3351=l9_3350;
float2 l9_3352=l9_3351;
int l9_3353=0;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_3354=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3354=0;
}
else
{
l9_3354=in.varStereoViewID;
}
int l9_3355=l9_3354;
l9_3353=1-l9_3355;
}
else
{
int l9_3356=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_3356=0;
}
else
{
l9_3356=in.varStereoViewID;
}
int l9_3357=l9_3356;
l9_3353=l9_3357;
}
int l9_3358=l9_3353;
float2 l9_3359=l9_3352;
int l9_3360=l9_3358;
float2 l9_3361=l9_3359;
int l9_3362=l9_3360;
float l9_3363=0.0;
float4 l9_3364=float4(0.0);
float2 l9_3365=l9_3361;
int l9_3366=sc_ScreenTextureLayout_tmp;
int l9_3367=l9_3362;
float l9_3368=l9_3363;
float2 l9_3369=l9_3365;
int l9_3370=l9_3366;
int l9_3371=l9_3367;
float3 l9_3372=float3(0.0);
if (l9_3370==0)
{
l9_3372=float3(l9_3369,0.0);
}
else
{
if (l9_3370==1)
{
l9_3372=float3(l9_3369.x,(l9_3369.y*0.5)+(0.5-(float(l9_3371)*0.5)),0.0);
}
else
{
l9_3372=float3(l9_3369,float(l9_3371));
}
}
float3 l9_3373=l9_3372;
float3 l9_3374=l9_3373;
float2 l9_3375=l9_3374.xy;
float l9_3376=l9_3368;
float4 l9_3377=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_3375,bias(l9_3376));
float4 l9_3378=l9_3377;
l9_3364=l9_3378;
float4 l9_3379=l9_3364;
float4 l9_3380=l9_3379;
float4 l9_3381=l9_3380;
l9_3334=l9_3381;
}
float4 l9_3382=l9_3334;
float4 l9_3383=l9_3382;
float3 l9_3384=l9_3383.xyz;
float3 l9_3385=l9_3384;
float3 l9_3386=l9_3332.xyz;
float3 l9_3387=definedBlend(l9_3385,l9_3386,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_3333=float4(l9_3387.x,l9_3387.y,l9_3387.z,l9_3333.w);
float3 l9_3388=mix(l9_3384,l9_3333.xyz,float3(l9_3332.w));
l9_3333=float4(l9_3388.x,l9_3388.y,l9_3388.z,l9_3333.w);
l9_3333.w=1.0;
float4 l9_3389=l9_3333;
param_5=l9_3389;
}
else
{
float4 l9_3390=param_5;
float4 l9_3391=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_3391=float4(mix(float3(1.0),l9_3390.xyz,float3(l9_3390.w)),l9_3390.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_3392=l9_3390.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_3392=fast::clamp(l9_3392,0.0,1.0);
}
l9_3391=float4(l9_3390.xyz*l9_3392,l9_3392);
}
else
{
l9_3391=l9_3390;
}
}
float4 l9_3393=l9_3391;
param_5=l9_3393;
}
}
}
float4 l9_3394=param_5;
FinalColor=l9_3394;
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
float4 l9_3395=float4(0.0);
if ((int(sc_ShaderComplexityAnalyzer_tmp)!=0))
{
l9_3395=float4((*sc_set0.UserUniforms).shaderComplexityValue/255.0,0.0,0.0,1.0);
}
else
{
l9_3395=float4(0.0);
}
float4 l9_3396=l9_3395;
float4 Cost=l9_3396;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_6=in.varPos;
float4 param_7=FinalColor;
FinalColor=outputMotionVectorsIfNeeded(param_6,param_7,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_8=FinalColor;
float4 l9_3397=param_8;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_3397.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_3397;
return out;
}
} // FRAGMENT SHADER
