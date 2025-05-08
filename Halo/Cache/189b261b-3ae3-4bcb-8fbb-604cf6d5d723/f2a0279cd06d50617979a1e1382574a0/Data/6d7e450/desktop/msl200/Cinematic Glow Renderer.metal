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
//sampler sampler glowTextureSmpSC 0:17
//sampler sampler intensityTextureSmpSC 0:18
//sampler sampler sc_ScreenTextureSmpSC 0:23
//texture texture2D glowTexture 0:1:0:17
//texture texture2D intensityTexture 0:2:0:18
//texture texture2D sc_ScreenTexture 0:14:0:23
//ubo float sc_BonesUBO 0:0:96 {
//sc_Bone_t sc_Bones 0:[]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:26:4704 {
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
//int PreviewEnabled 4116
//float alphaTestThreshold 4124
//float4 glowTextureSize 4128
//float3x3 glowTextureTransform 4176
//float4 glowTextureUvMinMax 4224
//float4 glowTextureBorderColor 4240
//float blurSize 4256
//float2 ratio 4264
//float haze 4272
//float luminance 4276
//float Port_Input1_N060 4288
//float Port_Input1_N045 4296
//float Port_Input1_N003 4312
//float Port_Input1_N086 4316
//float2 Port_Item0_N084 4320
//float2 Port_Item1_N084 4328
//float2 Port_Item2_N084 4336
//float2 Port_Item3_N084 4344
//float2 Port_Item4_N084 4352
//float2 Port_Item5_N084 4360
//float2 Port_Item6_N084 4368
//float2 Port_Item7_N084 4376
//float Port_Input2_N105 4384
//float Port_Input1_N062 4392
//float2 Port_Scale_N059 4400
//float4 Port_RandomSeed_N059 4416
//float Port_LODValue_N063 4432
//float3 Port_Value1_N061 4448
//float3 Port_Default_N061 4464
//float Port_Input1_N029 4488
//float Port_Input1_N014 4496
//float Port_Input1_N006 4512
//float Port_Input1_N020 4516
//float2 Port_Item0_N021 4520
//float2 Port_Item1_N021 4528
//float2 Port_Item2_N021 4536
//float2 Port_Item3_N021 4544
//float2 Port_Item4_N021 4552
//float2 Port_Item5_N021 4560
//float2 Port_Item6_N021 4568
//float2 Port_Item7_N021 4576
//float Port_Input2_N026 4584
//float Port_Input1_N036 4604
//float Port_Input1_N041 4616
//float2 Port_Item0_N043 4624
//float2 Port_Item1_N043 4632
//float2 Port_Item2_N043 4640
//float2 Port_Item3_N043 4648
//float2 Port_Item4_N043 4656
//float2 Port_Item5_N043 4664
//float2 Port_Item6_N043 4672
//float2 Port_Item7_N043 4680
//float Port_Input2_N052 4688
//}
//spec_const bool BLEND_MODE_AVERAGE 0 0
//spec_const bool BLEND_MODE_BRIGHT 1 0
//spec_const bool BLEND_MODE_COLOR_BURN 2 0
//spec_const bool BLEND_MODE_COLOR_DODGE 3 0
//spec_const bool BLEND_MODE_COLOR 4 0
//spec_const bool BLEND_MODE_DARKEN 5 0
//spec_const bool BLEND_MODE_DIFFERENCE 6 0
//spec_const bool BLEND_MODE_DIVIDE 7 0
//spec_const bool BLEND_MODE_DIVISION 8 0
//spec_const bool BLEND_MODE_EXCLUSION 9 0
//spec_const bool BLEND_MODE_FORGRAY 10 0
//spec_const bool BLEND_MODE_HARD_GLOW 11 0
//spec_const bool BLEND_MODE_HARD_LIGHT 12 0
//spec_const bool BLEND_MODE_HARD_MIX 13 0
//spec_const bool BLEND_MODE_HARD_PHOENIX 14 0
//spec_const bool BLEND_MODE_HARD_REFLECT 15 0
//spec_const bool BLEND_MODE_HUE 16 0
//spec_const bool BLEND_MODE_INTENSE 17 0
//spec_const bool BLEND_MODE_LIGHTEN 18 0
//spec_const bool BLEND_MODE_LINEAR_LIGHT 19 0
//spec_const bool BLEND_MODE_LUMINOSITY 20 0
//spec_const bool BLEND_MODE_NEGATION 21 0
//spec_const bool BLEND_MODE_NOTBRIGHT 22 0
//spec_const bool BLEND_MODE_OVERLAY 23 0
//spec_const bool BLEND_MODE_PIN_LIGHT 24 0
//spec_const bool BLEND_MODE_REALISTIC 25 0
//spec_const bool BLEND_MODE_SATURATION 26 0
//spec_const bool BLEND_MODE_SOFT_LIGHT 27 0
//spec_const bool BLEND_MODE_SUBTRACT 28 0
//spec_const bool BLEND_MODE_VIVID_LIGHT 29 0
//spec_const bool ENABLE_STIPPLE_PATTERN_TEST 30 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_glowTexture 31 0
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 32 0
//spec_const bool SC_USE_UV_MIN_MAX_glowTexture 33 0
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 34 0
//spec_const bool SC_USE_UV_TRANSFORM_glowTexture 35 0
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 36 0
//spec_const bool UseViewSpaceDepthVariant 37 1
//spec_const bool glowTextureHasSwappedViews 38 0
//spec_const bool intensityTextureHasSwappedViews 39 0
//spec_const bool sc_BlendMode_AddWithAlphaFactor 40 0
//spec_const bool sc_BlendMode_Add 41 0
//spec_const bool sc_BlendMode_AlphaTest 42 0
//spec_const bool sc_BlendMode_AlphaToCoverage 43 0
//spec_const bool sc_BlendMode_ColoredGlass 44 0
//spec_const bool sc_BlendMode_Custom 45 0
//spec_const bool sc_BlendMode_Max 46 0
//spec_const bool sc_BlendMode_Min 47 0
//spec_const bool sc_BlendMode_MultiplyOriginal 48 0
//spec_const bool sc_BlendMode_Multiply 49 0
//spec_const bool sc_BlendMode_Normal 50 0
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 51 0
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 52 0
//spec_const bool sc_BlendMode_PremultipliedAlpha 53 0
//spec_const bool sc_BlendMode_Screen 54 0
//spec_const bool sc_DepthOnly 55 0
//spec_const bool sc_FramebufferFetch 56 0
//spec_const bool sc_MotionVectorsPass 57 0
//spec_const bool sc_OITCompositingPass 58 0
//spec_const bool sc_OITDepthBoundsPass 59 0
//spec_const bool sc_OITDepthGatherPass 60 0
//spec_const bool sc_ProjectiveShadowsCaster 61 0
//spec_const bool sc_ProjectiveShadowsReceiver 62 0
//spec_const bool sc_RenderAlphaToColor 63 0
//spec_const bool sc_ScreenTextureHasSwappedViews 64 0
//spec_const bool sc_ShaderComplexityAnalyzer 65 0
//spec_const bool sc_TAAEnabled 66 0
//spec_const bool sc_UseFramebufferFetchMarker 67 0
//spec_const bool sc_VertexBlendingUseNormals 68 0
//spec_const bool sc_VertexBlending 69 0
//spec_const int SC_SOFTWARE_WRAP_MODE_U_glowTexture 70 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 71 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_glowTexture 72 -1
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 73 -1
//spec_const int glowTextureLayout 74 0
//spec_const int intensityTextureLayout 75 0
//spec_const int sc_DepthBufferMode 76 0
//spec_const int sc_RenderingSpace 77 -1
//spec_const int sc_ScreenTextureLayout 78 0
//spec_const int sc_ShaderCacheConstant 79 0
//spec_const int sc_SkinBonesCount 80 0
//spec_const int sc_StereoRenderingMode 81 0
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 82 0
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
constant bool SC_USE_CLAMP_TO_BORDER_glowTexture [[function_constant(31)]];
constant bool SC_USE_CLAMP_TO_BORDER_glowTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_glowTexture) ? SC_USE_CLAMP_TO_BORDER_glowTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_glowTexture [[function_constant(33)]];
constant bool SC_USE_UV_MIN_MAX_glowTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_glowTexture) ? SC_USE_UV_MIN_MAX_glowTexture : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(34)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_glowTexture [[function_constant(35)]];
constant bool SC_USE_UV_TRANSFORM_glowTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_glowTexture) ? SC_USE_UV_TRANSFORM_glowTexture : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(36)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool UseViewSpaceDepthVariant [[function_constant(37)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool glowTextureHasSwappedViews [[function_constant(38)]];
constant bool glowTextureHasSwappedViews_tmp = is_function_constant_defined(glowTextureHasSwappedViews) ? glowTextureHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(39)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(40)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(41)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(42)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(43)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(44)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(45)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(46)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(47)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(48)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(49)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(50)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(51)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(52)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(53)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(54)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(55)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_FramebufferFetch [[function_constant(56)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_MotionVectorsPass [[function_constant(57)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(58)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(59)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(60)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(61)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(62)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_RenderAlphaToColor [[function_constant(63)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(64)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_ShaderComplexityAnalyzer [[function_constant(65)]];
constant bool sc_ShaderComplexityAnalyzer_tmp = is_function_constant_defined(sc_ShaderComplexityAnalyzer) ? sc_ShaderComplexityAnalyzer : false;
constant bool sc_TAAEnabled [[function_constant(66)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_UseFramebufferFetchMarker [[function_constant(67)]];
constant bool sc_UseFramebufferFetchMarker_tmp = is_function_constant_defined(sc_UseFramebufferFetchMarker) ? sc_UseFramebufferFetchMarker : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(68)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(69)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant int SC_SOFTWARE_WRAP_MODE_U_glowTexture [[function_constant(70)]];
constant int SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_glowTexture) ? SC_SOFTWARE_WRAP_MODE_U_glowTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(71)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_glowTexture [[function_constant(72)]];
constant int SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_glowTexture) ? SC_SOFTWARE_WRAP_MODE_V_glowTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(73)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int glowTextureLayout [[function_constant(74)]];
constant int glowTextureLayout_tmp = is_function_constant_defined(glowTextureLayout) ? glowTextureLayout : 0;
constant int intensityTextureLayout [[function_constant(75)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int sc_DepthBufferMode [[function_constant(76)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_RenderingSpace [[function_constant(77)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(78)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(79)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(80)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(81)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(82)]];
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
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 glowTextureSize;
float4 glowTextureDims;
float4 glowTextureView;
float3x3 glowTextureTransform;
float4 glowTextureUvMinMax;
float4 glowTextureBorderColor;
float blurSize;
float2 ratio;
float haze;
float luminance;
float2 Port_Import_N042;
float Port_Input1_N060;
float Port_Import_N044;
float Port_Input1_N045;
float2 Port_Import_N047;
float Port_Input1_N003;
float Port_Input1_N086;
float2 Port_Item0_N084;
float2 Port_Item1_N084;
float2 Port_Item2_N084;
float2 Port_Item3_N084;
float2 Port_Item4_N084;
float2 Port_Item5_N084;
float2 Port_Item6_N084;
float2 Port_Item7_N084;
float Port_Input2_N105;
float Port_Import_N064;
float Port_Input1_N062;
float2 Port_Scale_N059;
float4 Port_RandomSeed_N059;
float Port_LODValue_N063;
float3 Port_Value1_N061;
float3 Port_Default_N061;
float2 Port_Import_N012;
float Port_Input1_N029;
float Port_Import_N013;
float Port_Input1_N014;
float2 Port_Import_N017;
float Port_Input1_N006;
float Port_Input1_N020;
float2 Port_Item0_N021;
float2 Port_Item1_N021;
float2 Port_Item2_N021;
float2 Port_Item3_N021;
float2 Port_Item4_N021;
float2 Port_Item5_N021;
float2 Port_Item6_N021;
float2 Port_Item7_N021;
float Port_Input2_N026;
float2 Port_Import_N033;
float Port_Import_N035;
float Port_Input1_N036;
float2 Port_Import_N038;
float Port_Input1_N041;
float2 Port_Item0_N043;
float2 Port_Item1_N043;
float2 Port_Item2_N043;
float2 Port_Item3_N043;
float2 Port_Item4_N043;
float2 Port_Item5_N043;
float2 Port_Item6_N043;
float2 Port_Item7_N043;
float Port_Input2_N052;
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
texture2d<float> glowTexture [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler glowTextureSmpSC [[id(17)]];
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
float overrideTimeElapsed[32];
float overrideTimeDelta;
int PreviewEnabled;
int PreviewNodeID;
float alphaTestThreshold;
float4 glowTextureSize;
float4 glowTextureDims;
float4 glowTextureView;
float3x3 glowTextureTransform;
float4 glowTextureUvMinMax;
float4 glowTextureBorderColor;
float blurSize;
float2 ratio;
float haze;
float luminance;
float2 Port_Import_N042;
float Port_Input1_N060;
float Port_Import_N044;
float Port_Input1_N045;
float2 Port_Import_N047;
float Port_Input1_N003;
float Port_Input1_N086;
float2 Port_Item0_N084;
float2 Port_Item1_N084;
float2 Port_Item2_N084;
float2 Port_Item3_N084;
float2 Port_Item4_N084;
float2 Port_Item5_N084;
float2 Port_Item6_N084;
float2 Port_Item7_N084;
float Port_Input2_N105;
float Port_Import_N064;
float Port_Input1_N062;
float2 Port_Scale_N059;
float4 Port_RandomSeed_N059;
float Port_LODValue_N063;
float3 Port_Value1_N061;
float3 Port_Default_N061;
float2 Port_Import_N012;
float Port_Input1_N029;
float Port_Import_N013;
float Port_Input1_N014;
float2 Port_Import_N017;
float Port_Input1_N006;
float Port_Input1_N020;
float2 Port_Item0_N021;
float2 Port_Item1_N021;
float2 Port_Item2_N021;
float2 Port_Item3_N021;
float2 Port_Item4_N021;
float2 Port_Item5_N021;
float2 Port_Item6_N021;
float2 Port_Item7_N021;
float Port_Input2_N026;
float2 Port_Import_N033;
float Port_Import_N035;
float Port_Input1_N036;
float2 Port_Import_N038;
float Port_Input1_N041;
float2 Port_Item0_N043;
float2 Port_Item1_N043;
float2 Port_Item2_N043;
float2 Port_Item3_N043;
float2 Port_Item4_N043;
float2 Port_Item5_N043;
float2 Port_Item6_N043;
float2 Port_Item7_N043;
float Port_Input2_N052;
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
texture2d<float> glowTexture [[id(1)]];
texture2d<float> intensityTexture [[id(2)]];
texture2d<float> sc_ScreenTexture [[id(14)]];
sampler glowTextureSmpSC [[id(17)]];
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
ssGlobals Globals;
Globals.gTimeElapsed=(*sc_set0.UserUniforms).sc_Time.x;
Globals.gTimeDelta=(*sc_set0.UserUniforms).sc_Time.y;
float4 l9_0=gl_FragCoord;
float2 l9_1=l9_0.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2=l9_1;
float2 l9_3=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_4=1;
int l9_5=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_5=0;
}
else
{
l9_5=in.varStereoViewID;
}
int l9_6=l9_5;
int l9_7=l9_6;
float3 l9_8=float3(l9_2,0.0);
int l9_9=l9_4;
int l9_10=l9_7;
if (l9_9==1)
{
l9_8.y=((2.0*l9_8.y)+float(l9_10))-1.0;
}
float2 l9_11=l9_8.xy;
l9_3=l9_11;
}
else
{
l9_3=l9_2;
}
float2 l9_12=l9_3;
float2 l9_13=l9_12;
Globals.gScreenCoord=l9_13;
Globals.Loop_Index_ID0=0.0;
Globals.Loop_Ratio_ID0=0.0;
Globals.Loop_Count_ID0=0.0;
float2 ScreenCoord_N34=float2(0.0);
ScreenCoord_N34=Globals.gScreenCoord;
float2 Value_N42=float2(0.0);
Value_N42=ScreenCoord_N34;
float Output_N9=0.0;
float param=(*sc_set0.UserUniforms).blurSize;
Output_N9=param;
float Output_N60=0.0;
Output_N60=Output_N9/(*sc_set0.UserUniforms).Port_Input1_N060;
float Value_N44=0.0;
Value_N44=Output_N60;
float Output_N45=0.0;
Output_N45=Value_N44+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 Color_N46=float4(0.0);
int l9_14=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_15=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_15=0;
}
else
{
l9_15=in.varStereoViewID;
}
int l9_16=l9_15;
l9_14=1-l9_16;
}
else
{
int l9_17=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_17=0;
}
else
{
l9_17=in.varStereoViewID;
}
int l9_18=l9_17;
l9_14=l9_18;
}
int l9_19=l9_14;
int param_1=glowTextureLayout_tmp;
int param_2=l9_19;
float2 param_3=Value_N42;
bool param_4=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 param_5=(*sc_set0.UserUniforms).glowTextureTransform;
int2 param_6=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool param_7=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 param_8=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool param_9=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 param_10=(*sc_set0.UserUniforms).glowTextureBorderColor;
float param_11=Output_N45;
bool l9_20=param_9&&(!param_7);
float l9_21=1.0;
float l9_22=param_3.x;
int l9_23=param_6.x;
if (l9_23==1)
{
l9_22=fract(l9_22);
}
else
{
if (l9_23==2)
{
float l9_24=fract(l9_22);
float l9_25=l9_22-l9_24;
float l9_26=step(0.25,fract(l9_25*0.5));
l9_22=mix(l9_24,1.0-l9_24,fast::clamp(l9_26,0.0,1.0));
}
}
param_3.x=l9_22;
float l9_27=param_3.y;
int l9_28=param_6.y;
if (l9_28==1)
{
l9_27=fract(l9_27);
}
else
{
if (l9_28==2)
{
float l9_29=fract(l9_27);
float l9_30=l9_27-l9_29;
float l9_31=step(0.25,fract(l9_30*0.5));
l9_27=mix(l9_29,1.0-l9_29,fast::clamp(l9_31,0.0,1.0));
}
}
param_3.y=l9_27;
if (param_7)
{
bool l9_32=param_9;
bool l9_33;
if (l9_32)
{
l9_33=param_6.x==3;
}
else
{
l9_33=l9_32;
}
float l9_34=param_3.x;
float l9_35=param_8.x;
float l9_36=param_8.z;
bool l9_37=l9_33;
float l9_38=l9_21;
float l9_39=fast::clamp(l9_34,l9_35,l9_36);
float l9_40=step(abs(l9_34-l9_39),9.9999997e-06);
l9_38*=(l9_40+((1.0-float(l9_37))*(1.0-l9_40)));
l9_34=l9_39;
param_3.x=l9_34;
l9_21=l9_38;
bool l9_41=param_9;
bool l9_42;
if (l9_41)
{
l9_42=param_6.y==3;
}
else
{
l9_42=l9_41;
}
float l9_43=param_3.y;
float l9_44=param_8.y;
float l9_45=param_8.w;
bool l9_46=l9_42;
float l9_47=l9_21;
float l9_48=fast::clamp(l9_43,l9_44,l9_45);
float l9_49=step(abs(l9_43-l9_48),9.9999997e-06);
l9_47*=(l9_49+((1.0-float(l9_46))*(1.0-l9_49)));
l9_43=l9_48;
param_3.y=l9_43;
l9_21=l9_47;
}
float2 l9_50=param_3;
bool l9_51=param_4;
float3x3 l9_52=param_5;
if (l9_51)
{
l9_50=float2((l9_52*float3(l9_50,1.0)).xy);
}
float2 l9_53=l9_50;
float2 l9_54=l9_53;
float2 l9_55=l9_54;
param_3=l9_55;
float l9_56=param_3.x;
int l9_57=param_6.x;
bool l9_58=l9_20;
float l9_59=l9_21;
if ((l9_57==0)||(l9_57==3))
{
float l9_60=l9_56;
float l9_61=0.0;
float l9_62=1.0;
bool l9_63=l9_58;
float l9_64=l9_59;
float l9_65=fast::clamp(l9_60,l9_61,l9_62);
float l9_66=step(abs(l9_60-l9_65),9.9999997e-06);
l9_64*=(l9_66+((1.0-float(l9_63))*(1.0-l9_66)));
l9_60=l9_65;
l9_56=l9_60;
l9_59=l9_64;
}
param_3.x=l9_56;
l9_21=l9_59;
float l9_67=param_3.y;
int l9_68=param_6.y;
bool l9_69=l9_20;
float l9_70=l9_21;
if ((l9_68==0)||(l9_68==3))
{
float l9_71=l9_67;
float l9_72=0.0;
float l9_73=1.0;
bool l9_74=l9_69;
float l9_75=l9_70;
float l9_76=fast::clamp(l9_71,l9_72,l9_73);
float l9_77=step(abs(l9_71-l9_76),9.9999997e-06);
l9_75*=(l9_77+((1.0-float(l9_74))*(1.0-l9_77)));
l9_71=l9_76;
l9_67=l9_71;
l9_70=l9_75;
}
param_3.y=l9_67;
l9_21=l9_70;
float2 l9_78=param_3;
int l9_79=param_1;
int l9_80=param_2;
float l9_81=param_11;
float2 l9_82=l9_78;
int l9_83=l9_79;
int l9_84=l9_80;
float3 l9_85=float3(0.0);
if (l9_83==0)
{
l9_85=float3(l9_82,0.0);
}
else
{
if (l9_83==1)
{
l9_85=float3(l9_82.x,(l9_82.y*0.5)+(0.5-(float(l9_84)*0.5)),0.0);
}
else
{
l9_85=float3(l9_82,float(l9_84));
}
}
float3 l9_86=l9_85;
float3 l9_87=l9_86;
float2 l9_88=l9_87.xy;
float l9_89=l9_81;
float4 l9_90=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_88,level(l9_89));
float4 l9_91=l9_90;
float4 l9_92=l9_91;
if (param_9)
{
l9_92=mix(param_10,l9_92,float4(l9_21));
}
float4 l9_93=l9_92;
Color_N46=l9_93;
float3 Output_N68=float3(0.0);
Output_N68=float3(Color_N46.x,Color_N46.y,Color_N46.z);
float3 Output_N104=float3(0.0);
ssGlobals param_13=Globals;
float3 param_12=float3(0.0);
param_13.Loop_Count_ID0=3.0;
float3 l9_94=param_12;
ssGlobals l9_95=param_13;
float3 l9_96=float3(0.0);
l9_95.Loop_Index_ID0=0.0;
l9_95.Loop_Ratio_ID0=0.0;
float2 l9_97=float2(0.0);
float2 l9_98=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_97=l9_98;
float2 l9_99=float2(0.0);
l9_99=l9_95.gScreenCoord;
float2 l9_100=float2(0.0);
l9_100=l9_99;
float2 l9_101=float2(0.0);
float2 l9_102=(*sc_set0.UserUniforms).ratio;
l9_101=l9_102;
float2 l9_103=float2(0.0);
l9_103=l9_97*l9_101;
float2 l9_104=float2(0.0);
l9_104=l9_103;
float l9_105=0.0;
float l9_106=(*sc_set0.UserUniforms).blurSize;
l9_105=l9_106;
float l9_107=0.0;
l9_107=l9_105/(*sc_set0.UserUniforms).Port_Input1_N060;
float l9_108=0.0;
l9_108=l9_107;
float l9_109=0.0;
l9_109=exp2(l9_108);
float l9_110=0.0;
l9_110=l9_95.Loop_Index_ID0;
float l9_111=0.0;
l9_111=l9_110*(*sc_set0.UserUniforms).Port_Input1_N003;
float l9_112=0.0;
l9_112=mod(l9_111,(*sc_set0.UserUniforms).Port_Input1_N086);
float2 l9_113=float2(0.0);
float l9_114=l9_112;
float2 l9_115=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_116=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_117=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_118=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_119=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_120=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_121=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_122=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_123[8];
l9_123[0]=l9_115;
l9_123[1]=l9_116;
l9_123[2]=l9_117;
l9_123[3]=l9_118;
l9_123[4]=l9_119;
l9_123[5]=l9_120;
l9_123[6]=l9_121;
l9_123[7]=l9_122;
int l9_124=int(fast::clamp(l9_114+9.9999997e-05,0.0,7.0));
float2 l9_125=l9_123[l9_124];
l9_113=l9_125;
float2 l9_126=float2(0.0);
l9_126=(l9_104*float2(l9_109))*l9_113;
float2 l9_127=float2(0.0);
l9_127=l9_100+l9_126;
float l9_128=0.0;
l9_128=l9_108+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_129=float4(0.0);
int l9_130=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_131=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_131=0;
}
else
{
l9_131=in.varStereoViewID;
}
int l9_132=l9_131;
l9_130=1-l9_132;
}
else
{
int l9_133=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_133=0;
}
else
{
l9_133=in.varStereoViewID;
}
int l9_134=l9_133;
l9_130=l9_134;
}
int l9_135=l9_130;
int l9_136=glowTextureLayout_tmp;
int l9_137=l9_135;
float2 l9_138=l9_127;
bool l9_139=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_140=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_141=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_142=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_143=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_144=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_145=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_146=l9_128;
bool l9_147=l9_144&&(!l9_142);
float l9_148=1.0;
float l9_149=l9_138.x;
int l9_150=l9_141.x;
if (l9_150==1)
{
l9_149=fract(l9_149);
}
else
{
if (l9_150==2)
{
float l9_151=fract(l9_149);
float l9_152=l9_149-l9_151;
float l9_153=step(0.25,fract(l9_152*0.5));
l9_149=mix(l9_151,1.0-l9_151,fast::clamp(l9_153,0.0,1.0));
}
}
l9_138.x=l9_149;
float l9_154=l9_138.y;
int l9_155=l9_141.y;
if (l9_155==1)
{
l9_154=fract(l9_154);
}
else
{
if (l9_155==2)
{
float l9_156=fract(l9_154);
float l9_157=l9_154-l9_156;
float l9_158=step(0.25,fract(l9_157*0.5));
l9_154=mix(l9_156,1.0-l9_156,fast::clamp(l9_158,0.0,1.0));
}
}
l9_138.y=l9_154;
if (l9_142)
{
bool l9_159=l9_144;
bool l9_160;
if (l9_159)
{
l9_160=l9_141.x==3;
}
else
{
l9_160=l9_159;
}
float l9_161=l9_138.x;
float l9_162=l9_143.x;
float l9_163=l9_143.z;
bool l9_164=l9_160;
float l9_165=l9_148;
float l9_166=fast::clamp(l9_161,l9_162,l9_163);
float l9_167=step(abs(l9_161-l9_166),9.9999997e-06);
l9_165*=(l9_167+((1.0-float(l9_164))*(1.0-l9_167)));
l9_161=l9_166;
l9_138.x=l9_161;
l9_148=l9_165;
bool l9_168=l9_144;
bool l9_169;
if (l9_168)
{
l9_169=l9_141.y==3;
}
else
{
l9_169=l9_168;
}
float l9_170=l9_138.y;
float l9_171=l9_143.y;
float l9_172=l9_143.w;
bool l9_173=l9_169;
float l9_174=l9_148;
float l9_175=fast::clamp(l9_170,l9_171,l9_172);
float l9_176=step(abs(l9_170-l9_175),9.9999997e-06);
l9_174*=(l9_176+((1.0-float(l9_173))*(1.0-l9_176)));
l9_170=l9_175;
l9_138.y=l9_170;
l9_148=l9_174;
}
float2 l9_177=l9_138;
bool l9_178=l9_139;
float3x3 l9_179=l9_140;
if (l9_178)
{
l9_177=float2((l9_179*float3(l9_177,1.0)).xy);
}
float2 l9_180=l9_177;
float2 l9_181=l9_180;
float2 l9_182=l9_181;
l9_138=l9_182;
float l9_183=l9_138.x;
int l9_184=l9_141.x;
bool l9_185=l9_147;
float l9_186=l9_148;
if ((l9_184==0)||(l9_184==3))
{
float l9_187=l9_183;
float l9_188=0.0;
float l9_189=1.0;
bool l9_190=l9_185;
float l9_191=l9_186;
float l9_192=fast::clamp(l9_187,l9_188,l9_189);
float l9_193=step(abs(l9_187-l9_192),9.9999997e-06);
l9_191*=(l9_193+((1.0-float(l9_190))*(1.0-l9_193)));
l9_187=l9_192;
l9_183=l9_187;
l9_186=l9_191;
}
l9_138.x=l9_183;
l9_148=l9_186;
float l9_194=l9_138.y;
int l9_195=l9_141.y;
bool l9_196=l9_147;
float l9_197=l9_148;
if ((l9_195==0)||(l9_195==3))
{
float l9_198=l9_194;
float l9_199=0.0;
float l9_200=1.0;
bool l9_201=l9_196;
float l9_202=l9_197;
float l9_203=fast::clamp(l9_198,l9_199,l9_200);
float l9_204=step(abs(l9_198-l9_203),9.9999997e-06);
l9_202*=(l9_204+((1.0-float(l9_201))*(1.0-l9_204)));
l9_198=l9_203;
l9_194=l9_198;
l9_197=l9_202;
}
l9_138.y=l9_194;
l9_148=l9_197;
float2 l9_205=l9_138;
int l9_206=l9_136;
int l9_207=l9_137;
float l9_208=l9_146;
float2 l9_209=l9_205;
int l9_210=l9_206;
int l9_211=l9_207;
float3 l9_212=float3(0.0);
if (l9_210==0)
{
l9_212=float3(l9_209,0.0);
}
else
{
if (l9_210==1)
{
l9_212=float3(l9_209.x,(l9_209.y*0.5)+(0.5-(float(l9_211)*0.5)),0.0);
}
else
{
l9_212=float3(l9_209,float(l9_211));
}
}
float3 l9_213=l9_212;
float3 l9_214=l9_213;
float2 l9_215=l9_214.xy;
float l9_216=l9_208;
float4 l9_217=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_215,level(l9_216));
float4 l9_218=l9_217;
float4 l9_219=l9_218;
if (l9_144)
{
l9_219=mix(l9_145,l9_219,float4(l9_148));
}
float4 l9_220=l9_219;
l9_129=l9_220;
float3 l9_221=float3(0.0);
l9_221=float3(l9_129.x,l9_129.y,l9_129.z);
l9_96=l9_221;
l9_94+=l9_96;
param_12=l9_94;
float3 l9_222=param_12;
ssGlobals l9_223=param_13;
float3 l9_224=float3(0.0);
l9_223.Loop_Index_ID0=1.0;
l9_223.Loop_Ratio_ID0=0.5;
float2 l9_225=float2(0.0);
float2 l9_226=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_225=l9_226;
float2 l9_227=float2(0.0);
l9_227=l9_223.gScreenCoord;
float2 l9_228=float2(0.0);
l9_228=l9_227;
float2 l9_229=float2(0.0);
float2 l9_230=(*sc_set0.UserUniforms).ratio;
l9_229=l9_230;
float2 l9_231=float2(0.0);
l9_231=l9_225*l9_229;
float2 l9_232=float2(0.0);
l9_232=l9_231;
float l9_233=0.0;
float l9_234=(*sc_set0.UserUniforms).blurSize;
l9_233=l9_234;
float l9_235=0.0;
l9_235=l9_233/(*sc_set0.UserUniforms).Port_Input1_N060;
float l9_236=0.0;
l9_236=l9_235;
float l9_237=0.0;
l9_237=exp2(l9_236);
float l9_238=0.0;
l9_238=l9_223.Loop_Index_ID0;
float l9_239=0.0;
l9_239=l9_238*(*sc_set0.UserUniforms).Port_Input1_N003;
float l9_240=0.0;
l9_240=mod(l9_239,(*sc_set0.UserUniforms).Port_Input1_N086);
float2 l9_241=float2(0.0);
float l9_242=l9_240;
float2 l9_243=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_244=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_245=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_246=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_247=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_248=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_249=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_250=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_251[8];
l9_251[0]=l9_243;
l9_251[1]=l9_244;
l9_251[2]=l9_245;
l9_251[3]=l9_246;
l9_251[4]=l9_247;
l9_251[5]=l9_248;
l9_251[6]=l9_249;
l9_251[7]=l9_250;
int l9_252=int(fast::clamp(l9_242+9.9999997e-05,0.0,7.0));
float2 l9_253=l9_251[l9_252];
l9_241=l9_253;
float2 l9_254=float2(0.0);
l9_254=(l9_232*float2(l9_237))*l9_241;
float2 l9_255=float2(0.0);
l9_255=l9_228+l9_254;
float l9_256=0.0;
l9_256=l9_236+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_257=float4(0.0);
int l9_258=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_259=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_259=0;
}
else
{
l9_259=in.varStereoViewID;
}
int l9_260=l9_259;
l9_258=1-l9_260;
}
else
{
int l9_261=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_261=0;
}
else
{
l9_261=in.varStereoViewID;
}
int l9_262=l9_261;
l9_258=l9_262;
}
int l9_263=l9_258;
int l9_264=glowTextureLayout_tmp;
int l9_265=l9_263;
float2 l9_266=l9_255;
bool l9_267=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_268=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_269=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_270=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_271=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_272=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_273=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_274=l9_256;
bool l9_275=l9_272&&(!l9_270);
float l9_276=1.0;
float l9_277=l9_266.x;
int l9_278=l9_269.x;
if (l9_278==1)
{
l9_277=fract(l9_277);
}
else
{
if (l9_278==2)
{
float l9_279=fract(l9_277);
float l9_280=l9_277-l9_279;
float l9_281=step(0.25,fract(l9_280*0.5));
l9_277=mix(l9_279,1.0-l9_279,fast::clamp(l9_281,0.0,1.0));
}
}
l9_266.x=l9_277;
float l9_282=l9_266.y;
int l9_283=l9_269.y;
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
l9_266.y=l9_282;
if (l9_270)
{
bool l9_287=l9_272;
bool l9_288;
if (l9_287)
{
l9_288=l9_269.x==3;
}
else
{
l9_288=l9_287;
}
float l9_289=l9_266.x;
float l9_290=l9_271.x;
float l9_291=l9_271.z;
bool l9_292=l9_288;
float l9_293=l9_276;
float l9_294=fast::clamp(l9_289,l9_290,l9_291);
float l9_295=step(abs(l9_289-l9_294),9.9999997e-06);
l9_293*=(l9_295+((1.0-float(l9_292))*(1.0-l9_295)));
l9_289=l9_294;
l9_266.x=l9_289;
l9_276=l9_293;
bool l9_296=l9_272;
bool l9_297;
if (l9_296)
{
l9_297=l9_269.y==3;
}
else
{
l9_297=l9_296;
}
float l9_298=l9_266.y;
float l9_299=l9_271.y;
float l9_300=l9_271.w;
bool l9_301=l9_297;
float l9_302=l9_276;
float l9_303=fast::clamp(l9_298,l9_299,l9_300);
float l9_304=step(abs(l9_298-l9_303),9.9999997e-06);
l9_302*=(l9_304+((1.0-float(l9_301))*(1.0-l9_304)));
l9_298=l9_303;
l9_266.y=l9_298;
l9_276=l9_302;
}
float2 l9_305=l9_266;
bool l9_306=l9_267;
float3x3 l9_307=l9_268;
if (l9_306)
{
l9_305=float2((l9_307*float3(l9_305,1.0)).xy);
}
float2 l9_308=l9_305;
float2 l9_309=l9_308;
float2 l9_310=l9_309;
l9_266=l9_310;
float l9_311=l9_266.x;
int l9_312=l9_269.x;
bool l9_313=l9_275;
float l9_314=l9_276;
if ((l9_312==0)||(l9_312==3))
{
float l9_315=l9_311;
float l9_316=0.0;
float l9_317=1.0;
bool l9_318=l9_313;
float l9_319=l9_314;
float l9_320=fast::clamp(l9_315,l9_316,l9_317);
float l9_321=step(abs(l9_315-l9_320),9.9999997e-06);
l9_319*=(l9_321+((1.0-float(l9_318))*(1.0-l9_321)));
l9_315=l9_320;
l9_311=l9_315;
l9_314=l9_319;
}
l9_266.x=l9_311;
l9_276=l9_314;
float l9_322=l9_266.y;
int l9_323=l9_269.y;
bool l9_324=l9_275;
float l9_325=l9_276;
if ((l9_323==0)||(l9_323==3))
{
float l9_326=l9_322;
float l9_327=0.0;
float l9_328=1.0;
bool l9_329=l9_324;
float l9_330=l9_325;
float l9_331=fast::clamp(l9_326,l9_327,l9_328);
float l9_332=step(abs(l9_326-l9_331),9.9999997e-06);
l9_330*=(l9_332+((1.0-float(l9_329))*(1.0-l9_332)));
l9_326=l9_331;
l9_322=l9_326;
l9_325=l9_330;
}
l9_266.y=l9_322;
l9_276=l9_325;
float2 l9_333=l9_266;
int l9_334=l9_264;
int l9_335=l9_265;
float l9_336=l9_274;
float2 l9_337=l9_333;
int l9_338=l9_334;
int l9_339=l9_335;
float3 l9_340=float3(0.0);
if (l9_338==0)
{
l9_340=float3(l9_337,0.0);
}
else
{
if (l9_338==1)
{
l9_340=float3(l9_337.x,(l9_337.y*0.5)+(0.5-(float(l9_339)*0.5)),0.0);
}
else
{
l9_340=float3(l9_337,float(l9_339));
}
}
float3 l9_341=l9_340;
float3 l9_342=l9_341;
float2 l9_343=l9_342.xy;
float l9_344=l9_336;
float4 l9_345=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_343,level(l9_344));
float4 l9_346=l9_345;
float4 l9_347=l9_346;
if (l9_272)
{
l9_347=mix(l9_273,l9_347,float4(l9_276));
}
float4 l9_348=l9_347;
l9_257=l9_348;
float3 l9_349=float3(0.0);
l9_349=float3(l9_257.x,l9_257.y,l9_257.z);
l9_224=l9_349;
l9_222+=l9_224;
param_12=l9_222;
float3 l9_350=param_12;
ssGlobals l9_351=param_13;
float3 l9_352=float3(0.0);
l9_351.Loop_Index_ID0=2.0;
l9_351.Loop_Ratio_ID0=1.0;
float2 l9_353=float2(0.0);
float2 l9_354=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_353=l9_354;
float2 l9_355=float2(0.0);
l9_355=l9_351.gScreenCoord;
float2 l9_356=float2(0.0);
l9_356=l9_355;
float2 l9_357=float2(0.0);
float2 l9_358=(*sc_set0.UserUniforms).ratio;
l9_357=l9_358;
float2 l9_359=float2(0.0);
l9_359=l9_353*l9_357;
float2 l9_360=float2(0.0);
l9_360=l9_359;
float l9_361=0.0;
float l9_362=(*sc_set0.UserUniforms).blurSize;
l9_361=l9_362;
float l9_363=0.0;
l9_363=l9_361/(*sc_set0.UserUniforms).Port_Input1_N060;
float l9_364=0.0;
l9_364=l9_363;
float l9_365=0.0;
l9_365=exp2(l9_364);
float l9_366=0.0;
l9_366=l9_351.Loop_Index_ID0;
float l9_367=0.0;
l9_367=l9_366*(*sc_set0.UserUniforms).Port_Input1_N003;
float l9_368=0.0;
l9_368=mod(l9_367,(*sc_set0.UserUniforms).Port_Input1_N086);
float2 l9_369=float2(0.0);
float l9_370=l9_368;
float2 l9_371=(*sc_set0.UserUniforms).Port_Item0_N084;
float2 l9_372=(*sc_set0.UserUniforms).Port_Item1_N084;
float2 l9_373=(*sc_set0.UserUniforms).Port_Item2_N084;
float2 l9_374=(*sc_set0.UserUniforms).Port_Item3_N084;
float2 l9_375=(*sc_set0.UserUniforms).Port_Item4_N084;
float2 l9_376=(*sc_set0.UserUniforms).Port_Item5_N084;
float2 l9_377=(*sc_set0.UserUniforms).Port_Item6_N084;
float2 l9_378=(*sc_set0.UserUniforms).Port_Item7_N084;
float2 l9_379[8];
l9_379[0]=l9_371;
l9_379[1]=l9_372;
l9_379[2]=l9_373;
l9_379[3]=l9_374;
l9_379[4]=l9_375;
l9_379[5]=l9_376;
l9_379[6]=l9_377;
l9_379[7]=l9_378;
int l9_380=int(fast::clamp(l9_370+9.9999997e-05,0.0,7.0));
float2 l9_381=l9_379[l9_380];
l9_369=l9_381;
float2 l9_382=float2(0.0);
l9_382=(l9_360*float2(l9_365))*l9_369;
float2 l9_383=float2(0.0);
l9_383=l9_356+l9_382;
float l9_384=0.0;
l9_384=l9_364+(*sc_set0.UserUniforms).Port_Input1_N045;
float4 l9_385=float4(0.0);
int l9_386=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_387=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_387=0;
}
else
{
l9_387=in.varStereoViewID;
}
int l9_388=l9_387;
l9_386=1-l9_388;
}
else
{
int l9_389=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_389=0;
}
else
{
l9_389=in.varStereoViewID;
}
int l9_390=l9_389;
l9_386=l9_390;
}
int l9_391=l9_386;
int l9_392=glowTextureLayout_tmp;
int l9_393=l9_391;
float2 l9_394=l9_383;
bool l9_395=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_396=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_397=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_398=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_399=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_400=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_401=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_402=l9_384;
bool l9_403=l9_400&&(!l9_398);
float l9_404=1.0;
float l9_405=l9_394.x;
int l9_406=l9_397.x;
if (l9_406==1)
{
l9_405=fract(l9_405);
}
else
{
if (l9_406==2)
{
float l9_407=fract(l9_405);
float l9_408=l9_405-l9_407;
float l9_409=step(0.25,fract(l9_408*0.5));
l9_405=mix(l9_407,1.0-l9_407,fast::clamp(l9_409,0.0,1.0));
}
}
l9_394.x=l9_405;
float l9_410=l9_394.y;
int l9_411=l9_397.y;
if (l9_411==1)
{
l9_410=fract(l9_410);
}
else
{
if (l9_411==2)
{
float l9_412=fract(l9_410);
float l9_413=l9_410-l9_412;
float l9_414=step(0.25,fract(l9_413*0.5));
l9_410=mix(l9_412,1.0-l9_412,fast::clamp(l9_414,0.0,1.0));
}
}
l9_394.y=l9_410;
if (l9_398)
{
bool l9_415=l9_400;
bool l9_416;
if (l9_415)
{
l9_416=l9_397.x==3;
}
else
{
l9_416=l9_415;
}
float l9_417=l9_394.x;
float l9_418=l9_399.x;
float l9_419=l9_399.z;
bool l9_420=l9_416;
float l9_421=l9_404;
float l9_422=fast::clamp(l9_417,l9_418,l9_419);
float l9_423=step(abs(l9_417-l9_422),9.9999997e-06);
l9_421*=(l9_423+((1.0-float(l9_420))*(1.0-l9_423)));
l9_417=l9_422;
l9_394.x=l9_417;
l9_404=l9_421;
bool l9_424=l9_400;
bool l9_425;
if (l9_424)
{
l9_425=l9_397.y==3;
}
else
{
l9_425=l9_424;
}
float l9_426=l9_394.y;
float l9_427=l9_399.y;
float l9_428=l9_399.w;
bool l9_429=l9_425;
float l9_430=l9_404;
float l9_431=fast::clamp(l9_426,l9_427,l9_428);
float l9_432=step(abs(l9_426-l9_431),9.9999997e-06);
l9_430*=(l9_432+((1.0-float(l9_429))*(1.0-l9_432)));
l9_426=l9_431;
l9_394.y=l9_426;
l9_404=l9_430;
}
float2 l9_433=l9_394;
bool l9_434=l9_395;
float3x3 l9_435=l9_396;
if (l9_434)
{
l9_433=float2((l9_435*float3(l9_433,1.0)).xy);
}
float2 l9_436=l9_433;
float2 l9_437=l9_436;
float2 l9_438=l9_437;
l9_394=l9_438;
float l9_439=l9_394.x;
int l9_440=l9_397.x;
bool l9_441=l9_403;
float l9_442=l9_404;
if ((l9_440==0)||(l9_440==3))
{
float l9_443=l9_439;
float l9_444=0.0;
float l9_445=1.0;
bool l9_446=l9_441;
float l9_447=l9_442;
float l9_448=fast::clamp(l9_443,l9_444,l9_445);
float l9_449=step(abs(l9_443-l9_448),9.9999997e-06);
l9_447*=(l9_449+((1.0-float(l9_446))*(1.0-l9_449)));
l9_443=l9_448;
l9_439=l9_443;
l9_442=l9_447;
}
l9_394.x=l9_439;
l9_404=l9_442;
float l9_450=l9_394.y;
int l9_451=l9_397.y;
bool l9_452=l9_403;
float l9_453=l9_404;
if ((l9_451==0)||(l9_451==3))
{
float l9_454=l9_450;
float l9_455=0.0;
float l9_456=1.0;
bool l9_457=l9_452;
float l9_458=l9_453;
float l9_459=fast::clamp(l9_454,l9_455,l9_456);
float l9_460=step(abs(l9_454-l9_459),9.9999997e-06);
l9_458*=(l9_460+((1.0-float(l9_457))*(1.0-l9_460)));
l9_454=l9_459;
l9_450=l9_454;
l9_453=l9_458;
}
l9_394.y=l9_450;
l9_404=l9_453;
float2 l9_461=l9_394;
int l9_462=l9_392;
int l9_463=l9_393;
float l9_464=l9_402;
float2 l9_465=l9_461;
int l9_466=l9_462;
int l9_467=l9_463;
float3 l9_468=float3(0.0);
if (l9_466==0)
{
l9_468=float3(l9_465,0.0);
}
else
{
if (l9_466==1)
{
l9_468=float3(l9_465.x,(l9_465.y*0.5)+(0.5-(float(l9_467)*0.5)),0.0);
}
else
{
l9_468=float3(l9_465,float(l9_467));
}
}
float3 l9_469=l9_468;
float3 l9_470=l9_469;
float2 l9_471=l9_470.xy;
float l9_472=l9_464;
float4 l9_473=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_471,level(l9_472));
float4 l9_474=l9_473;
float4 l9_475=l9_474;
if (l9_400)
{
l9_475=mix(l9_401,l9_475,float4(l9_404));
}
float4 l9_476=l9_475;
l9_385=l9_476;
float3 l9_477=float3(0.0);
l9_477=float3(l9_385.x,l9_385.y,l9_385.z);
l9_352=l9_477;
l9_350+=l9_352;
param_12=l9_350;
param_12/=float3(3.0);
Output_N104=param_12;
float3 Output_N105=float3(0.0);
Output_N105=mix(Output_N68,Output_N104,float3((*sc_set0.UserUniforms).Port_Input2_N105));
float3 Result_N61=float3(0.0);
float param_14=0.0;
float3 param_15=float3(0.0);
float3 param_16=(*sc_set0.UserUniforms).Port_Value1_N061;
float3 param_17=(*sc_set0.UserUniforms).Port_Default_N061;
ssGlobals param_19=Globals;
float l9_478=0.0;
float l9_479=(*sc_set0.UserUniforms).haze;
l9_478=l9_479;
float l9_480=0.0;
l9_480=l9_478;
float l9_481=0.0;
l9_481=float(l9_480==(*sc_set0.UserUniforms).Port_Input1_N062);
param_14=l9_481;
param_14=floor(param_14);
float3 param_18;
if (param_14==0.0)
{
float2 l9_482=float2(0.0);
l9_482=param_19.gScreenCoord;
float2 l9_483=float2(0.0);
l9_483=l9_482;
float2 l9_484=float2(0.0);
float2 l9_485=l9_483;
float4 l9_486=l9_483.xyxy+(*sc_set0.UserUniforms).Port_RandomSeed_N059;
float4 l9_487=float4(81.239487,17.348024,37.349838,59.39484);
float4 l9_488=l9_486;
int l9_489=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_489<3)
{
l9_488.x=fract(dot(l9_488,l9_487));
l9_488.y=fract(dot(l9_488,l9_487));
l9_488.z=fract(dot(l9_488,l9_487));
l9_488.w=fract(dot(l9_488,l9_487));
l9_489++;
continue;
}
else
{
break;
}
}
float4 l9_490=l9_488;
l9_484=l9_485+(((*sc_set0.UserUniforms).Port_Scale_N059*0.0099999998)*((l9_490.zw*2.0)-float2(1.0)));
float4 l9_491=float4(0.0);
int l9_492=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_493=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_493=0;
}
else
{
l9_493=in.varStereoViewID;
}
int l9_494=l9_493;
l9_492=1-l9_494;
}
else
{
int l9_495=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_495=0;
}
else
{
l9_495=in.varStereoViewID;
}
int l9_496=l9_495;
l9_492=l9_496;
}
int l9_497=l9_492;
int l9_498=glowTextureLayout_tmp;
int l9_499=l9_497;
float2 l9_500=l9_484;
bool l9_501=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_502=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_503=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_504=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_505=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_506=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_507=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_508=(*sc_set0.UserUniforms).Port_LODValue_N063;
bool l9_509=l9_506&&(!l9_504);
float l9_510=1.0;
float l9_511=l9_500.x;
int l9_512=l9_503.x;
if (l9_512==1)
{
l9_511=fract(l9_511);
}
else
{
if (l9_512==2)
{
float l9_513=fract(l9_511);
float l9_514=l9_511-l9_513;
float l9_515=step(0.25,fract(l9_514*0.5));
l9_511=mix(l9_513,1.0-l9_513,fast::clamp(l9_515,0.0,1.0));
}
}
l9_500.x=l9_511;
float l9_516=l9_500.y;
int l9_517=l9_503.y;
if (l9_517==1)
{
l9_516=fract(l9_516);
}
else
{
if (l9_517==2)
{
float l9_518=fract(l9_516);
float l9_519=l9_516-l9_518;
float l9_520=step(0.25,fract(l9_519*0.5));
l9_516=mix(l9_518,1.0-l9_518,fast::clamp(l9_520,0.0,1.0));
}
}
l9_500.y=l9_516;
if (l9_504)
{
bool l9_521=l9_506;
bool l9_522;
if (l9_521)
{
l9_522=l9_503.x==3;
}
else
{
l9_522=l9_521;
}
float l9_523=l9_500.x;
float l9_524=l9_505.x;
float l9_525=l9_505.z;
bool l9_526=l9_522;
float l9_527=l9_510;
float l9_528=fast::clamp(l9_523,l9_524,l9_525);
float l9_529=step(abs(l9_523-l9_528),9.9999997e-06);
l9_527*=(l9_529+((1.0-float(l9_526))*(1.0-l9_529)));
l9_523=l9_528;
l9_500.x=l9_523;
l9_510=l9_527;
bool l9_530=l9_506;
bool l9_531;
if (l9_530)
{
l9_531=l9_503.y==3;
}
else
{
l9_531=l9_530;
}
float l9_532=l9_500.y;
float l9_533=l9_505.y;
float l9_534=l9_505.w;
bool l9_535=l9_531;
float l9_536=l9_510;
float l9_537=fast::clamp(l9_532,l9_533,l9_534);
float l9_538=step(abs(l9_532-l9_537),9.9999997e-06);
l9_536*=(l9_538+((1.0-float(l9_535))*(1.0-l9_538)));
l9_532=l9_537;
l9_500.y=l9_532;
l9_510=l9_536;
}
float2 l9_539=l9_500;
bool l9_540=l9_501;
float3x3 l9_541=l9_502;
if (l9_540)
{
l9_539=float2((l9_541*float3(l9_539,1.0)).xy);
}
float2 l9_542=l9_539;
float2 l9_543=l9_542;
float2 l9_544=l9_543;
l9_500=l9_544;
float l9_545=l9_500.x;
int l9_546=l9_503.x;
bool l9_547=l9_509;
float l9_548=l9_510;
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
l9_500.x=l9_545;
l9_510=l9_548;
float l9_556=l9_500.y;
int l9_557=l9_503.y;
bool l9_558=l9_509;
float l9_559=l9_510;
if ((l9_557==0)||(l9_557==3))
{
float l9_560=l9_556;
float l9_561=0.0;
float l9_562=1.0;
bool l9_563=l9_558;
float l9_564=l9_559;
float l9_565=fast::clamp(l9_560,l9_561,l9_562);
float l9_566=step(abs(l9_560-l9_565),9.9999997e-06);
l9_564*=(l9_566+((1.0-float(l9_563))*(1.0-l9_566)));
l9_560=l9_565;
l9_556=l9_560;
l9_559=l9_564;
}
l9_500.y=l9_556;
l9_510=l9_559;
float2 l9_567=l9_500;
int l9_568=l9_498;
int l9_569=l9_499;
float l9_570=l9_508;
float2 l9_571=l9_567;
int l9_572=l9_568;
int l9_573=l9_569;
float3 l9_574=float3(0.0);
if (l9_572==0)
{
l9_574=float3(l9_571,0.0);
}
else
{
if (l9_572==1)
{
l9_574=float3(l9_571.x,(l9_571.y*0.5)+(0.5-(float(l9_573)*0.5)),0.0);
}
else
{
l9_574=float3(l9_571,float(l9_573));
}
}
float3 l9_575=l9_574;
float3 l9_576=l9_575;
float2 l9_577=l9_576.xy;
float l9_578=l9_570;
float4 l9_579=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_577,level(l9_578));
float4 l9_580=l9_579;
float4 l9_581=l9_580;
if (l9_506)
{
l9_581=mix(l9_507,l9_581,float4(l9_510));
}
float4 l9_582=l9_581;
l9_491=l9_582;
float3 l9_583=float3(0.0);
l9_583=float3(l9_491.x,l9_491.y,l9_491.z);
float l9_584=0.0;
float l9_585=(*sc_set0.UserUniforms).haze;
l9_584=l9_585;
float l9_586=0.0;
l9_586=l9_584;
float3 l9_587=float3(0.0);
l9_587=l9_583*float3(l9_586);
param_15=l9_587;
param_18=param_15;
}
else
{
if (param_14==1.0)
{
param_18=param_16;
}
else
{
param_18=param_17;
}
}
Result_N61=param_18;
float3 Output_N28=float3(0.0);
Output_N28=Output_N105+Result_N61;
float3 Export_N106=float3(0.0);
Export_N106=Output_N28;
float2 Value_N12=float2(0.0);
Value_N12=ScreenCoord_N34;
float Output_N29=0.0;
Output_N29=Output_N9/(*sc_set0.UserUniforms).Port_Input1_N029;
float Value_N13=0.0;
Value_N13=Output_N29;
float Output_N14=0.0;
Output_N14=Value_N13+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 Color_N16=float4(0.0);
int l9_588=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_589=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_589=0;
}
else
{
l9_589=in.varStereoViewID;
}
int l9_590=l9_589;
l9_588=1-l9_590;
}
else
{
int l9_591=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_591=0;
}
else
{
l9_591=in.varStereoViewID;
}
int l9_592=l9_591;
l9_588=l9_592;
}
int l9_593=l9_588;
int param_20=glowTextureLayout_tmp;
int param_21=l9_593;
float2 param_22=Value_N12;
bool param_23=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 param_24=(*sc_set0.UserUniforms).glowTextureTransform;
int2 param_25=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool param_26=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 param_27=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool param_28=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 param_29=(*sc_set0.UserUniforms).glowTextureBorderColor;
float param_30=Output_N14;
bool l9_594=param_28&&(!param_26);
float l9_595=1.0;
float l9_596=param_22.x;
int l9_597=param_25.x;
if (l9_597==1)
{
l9_596=fract(l9_596);
}
else
{
if (l9_597==2)
{
float l9_598=fract(l9_596);
float l9_599=l9_596-l9_598;
float l9_600=step(0.25,fract(l9_599*0.5));
l9_596=mix(l9_598,1.0-l9_598,fast::clamp(l9_600,0.0,1.0));
}
}
param_22.x=l9_596;
float l9_601=param_22.y;
int l9_602=param_25.y;
if (l9_602==1)
{
l9_601=fract(l9_601);
}
else
{
if (l9_602==2)
{
float l9_603=fract(l9_601);
float l9_604=l9_601-l9_603;
float l9_605=step(0.25,fract(l9_604*0.5));
l9_601=mix(l9_603,1.0-l9_603,fast::clamp(l9_605,0.0,1.0));
}
}
param_22.y=l9_601;
if (param_26)
{
bool l9_606=param_28;
bool l9_607;
if (l9_606)
{
l9_607=param_25.x==3;
}
else
{
l9_607=l9_606;
}
float l9_608=param_22.x;
float l9_609=param_27.x;
float l9_610=param_27.z;
bool l9_611=l9_607;
float l9_612=l9_595;
float l9_613=fast::clamp(l9_608,l9_609,l9_610);
float l9_614=step(abs(l9_608-l9_613),9.9999997e-06);
l9_612*=(l9_614+((1.0-float(l9_611))*(1.0-l9_614)));
l9_608=l9_613;
param_22.x=l9_608;
l9_595=l9_612;
bool l9_615=param_28;
bool l9_616;
if (l9_615)
{
l9_616=param_25.y==3;
}
else
{
l9_616=l9_615;
}
float l9_617=param_22.y;
float l9_618=param_27.y;
float l9_619=param_27.w;
bool l9_620=l9_616;
float l9_621=l9_595;
float l9_622=fast::clamp(l9_617,l9_618,l9_619);
float l9_623=step(abs(l9_617-l9_622),9.9999997e-06);
l9_621*=(l9_623+((1.0-float(l9_620))*(1.0-l9_623)));
l9_617=l9_622;
param_22.y=l9_617;
l9_595=l9_621;
}
float2 l9_624=param_22;
bool l9_625=param_23;
float3x3 l9_626=param_24;
if (l9_625)
{
l9_624=float2((l9_626*float3(l9_624,1.0)).xy);
}
float2 l9_627=l9_624;
float2 l9_628=l9_627;
float2 l9_629=l9_628;
param_22=l9_629;
float l9_630=param_22.x;
int l9_631=param_25.x;
bool l9_632=l9_594;
float l9_633=l9_595;
if ((l9_631==0)||(l9_631==3))
{
float l9_634=l9_630;
float l9_635=0.0;
float l9_636=1.0;
bool l9_637=l9_632;
float l9_638=l9_633;
float l9_639=fast::clamp(l9_634,l9_635,l9_636);
float l9_640=step(abs(l9_634-l9_639),9.9999997e-06);
l9_638*=(l9_640+((1.0-float(l9_637))*(1.0-l9_640)));
l9_634=l9_639;
l9_630=l9_634;
l9_633=l9_638;
}
param_22.x=l9_630;
l9_595=l9_633;
float l9_641=param_22.y;
int l9_642=param_25.y;
bool l9_643=l9_594;
float l9_644=l9_595;
if ((l9_642==0)||(l9_642==3))
{
float l9_645=l9_641;
float l9_646=0.0;
float l9_647=1.0;
bool l9_648=l9_643;
float l9_649=l9_644;
float l9_650=fast::clamp(l9_645,l9_646,l9_647);
float l9_651=step(abs(l9_645-l9_650),9.9999997e-06);
l9_649*=(l9_651+((1.0-float(l9_648))*(1.0-l9_651)));
l9_645=l9_650;
l9_641=l9_645;
l9_644=l9_649;
}
param_22.y=l9_641;
l9_595=l9_644;
float2 l9_652=param_22;
int l9_653=param_20;
int l9_654=param_21;
float l9_655=param_30;
float2 l9_656=l9_652;
int l9_657=l9_653;
int l9_658=l9_654;
float3 l9_659=float3(0.0);
if (l9_657==0)
{
l9_659=float3(l9_656,0.0);
}
else
{
if (l9_657==1)
{
l9_659=float3(l9_656.x,(l9_656.y*0.5)+(0.5-(float(l9_658)*0.5)),0.0);
}
else
{
l9_659=float3(l9_656,float(l9_658));
}
}
float3 l9_660=l9_659;
float3 l9_661=l9_660;
float2 l9_662=l9_661.xy;
float l9_663=l9_655;
float4 l9_664=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_662,level(l9_663));
float4 l9_665=l9_664;
float4 l9_666=l9_665;
if (param_28)
{
l9_666=mix(param_29,l9_666,float4(l9_595));
}
float4 l9_667=l9_666;
Color_N16=l9_667;
float3 Output_N70=float3(0.0);
Output_N70=float3(Color_N16.x,Color_N16.y,Color_N16.z);
float3 Output_N25=float3(0.0);
ssGlobals param_32=Globals;
float3 param_31=float3(0.0);
param_32.Loop_Count_ID0=4.0;
float3 l9_668=param_31;
ssGlobals l9_669=param_32;
float3 l9_670=float3(0.0);
l9_669.Loop_Index_ID0=0.0;
l9_669.Loop_Ratio_ID0=0.0;
float2 l9_671=float2(0.0);
float2 l9_672=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_671=l9_672;
float2 l9_673=float2(0.0);
l9_673=l9_669.gScreenCoord;
float2 l9_674=float2(0.0);
l9_674=l9_673;
float2 l9_675=float2(0.0);
float2 l9_676=(*sc_set0.UserUniforms).ratio;
l9_675=l9_676;
float2 l9_677=float2(0.0);
l9_677=l9_671*l9_675;
float2 l9_678=float2(0.0);
l9_678=l9_677;
float l9_679=0.0;
float l9_680=(*sc_set0.UserUniforms).blurSize;
l9_679=l9_680;
float l9_681=0.0;
l9_681=l9_679/(*sc_set0.UserUniforms).Port_Input1_N029;
float l9_682=0.0;
l9_682=l9_681;
float l9_683=0.0;
l9_683=exp2(l9_682);
float l9_684=0.0;
l9_684=l9_669.Loop_Index_ID0;
float l9_685=0.0;
l9_685=l9_684*(*sc_set0.UserUniforms).Port_Input1_N006;
float l9_686=0.0;
l9_686=mod(l9_685,(*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_687=float2(0.0);
float l9_688=l9_686;
float2 l9_689=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_690=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_691=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_692=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_693=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_694=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_695=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_696=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_697[8];
l9_697[0]=l9_689;
l9_697[1]=l9_690;
l9_697[2]=l9_691;
l9_697[3]=l9_692;
l9_697[4]=l9_693;
l9_697[5]=l9_694;
l9_697[6]=l9_695;
l9_697[7]=l9_696;
int l9_698=int(fast::clamp(l9_688+9.9999997e-05,0.0,7.0));
float2 l9_699=l9_697[l9_698];
l9_687=l9_699;
float2 l9_700=float2(0.0);
l9_700=(l9_678*float2(l9_683))*l9_687;
float2 l9_701=float2(0.0);
l9_701=l9_674+l9_700;
float l9_702=0.0;
l9_702=l9_682+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 l9_703=float4(0.0);
int l9_704=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_705=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_705=0;
}
else
{
l9_705=in.varStereoViewID;
}
int l9_706=l9_705;
l9_704=1-l9_706;
}
else
{
int l9_707=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_707=0;
}
else
{
l9_707=in.varStereoViewID;
}
int l9_708=l9_707;
l9_704=l9_708;
}
int l9_709=l9_704;
int l9_710=glowTextureLayout_tmp;
int l9_711=l9_709;
float2 l9_712=l9_701;
bool l9_713=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_714=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_715=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_716=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_717=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_718=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_719=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_720=l9_702;
bool l9_721=l9_718&&(!l9_716);
float l9_722=1.0;
float l9_723=l9_712.x;
int l9_724=l9_715.x;
if (l9_724==1)
{
l9_723=fract(l9_723);
}
else
{
if (l9_724==2)
{
float l9_725=fract(l9_723);
float l9_726=l9_723-l9_725;
float l9_727=step(0.25,fract(l9_726*0.5));
l9_723=mix(l9_725,1.0-l9_725,fast::clamp(l9_727,0.0,1.0));
}
}
l9_712.x=l9_723;
float l9_728=l9_712.y;
int l9_729=l9_715.y;
if (l9_729==1)
{
l9_728=fract(l9_728);
}
else
{
if (l9_729==2)
{
float l9_730=fract(l9_728);
float l9_731=l9_728-l9_730;
float l9_732=step(0.25,fract(l9_731*0.5));
l9_728=mix(l9_730,1.0-l9_730,fast::clamp(l9_732,0.0,1.0));
}
}
l9_712.y=l9_728;
if (l9_716)
{
bool l9_733=l9_718;
bool l9_734;
if (l9_733)
{
l9_734=l9_715.x==3;
}
else
{
l9_734=l9_733;
}
float l9_735=l9_712.x;
float l9_736=l9_717.x;
float l9_737=l9_717.z;
bool l9_738=l9_734;
float l9_739=l9_722;
float l9_740=fast::clamp(l9_735,l9_736,l9_737);
float l9_741=step(abs(l9_735-l9_740),9.9999997e-06);
l9_739*=(l9_741+((1.0-float(l9_738))*(1.0-l9_741)));
l9_735=l9_740;
l9_712.x=l9_735;
l9_722=l9_739;
bool l9_742=l9_718;
bool l9_743;
if (l9_742)
{
l9_743=l9_715.y==3;
}
else
{
l9_743=l9_742;
}
float l9_744=l9_712.y;
float l9_745=l9_717.y;
float l9_746=l9_717.w;
bool l9_747=l9_743;
float l9_748=l9_722;
float l9_749=fast::clamp(l9_744,l9_745,l9_746);
float l9_750=step(abs(l9_744-l9_749),9.9999997e-06);
l9_748*=(l9_750+((1.0-float(l9_747))*(1.0-l9_750)));
l9_744=l9_749;
l9_712.y=l9_744;
l9_722=l9_748;
}
float2 l9_751=l9_712;
bool l9_752=l9_713;
float3x3 l9_753=l9_714;
if (l9_752)
{
l9_751=float2((l9_753*float3(l9_751,1.0)).xy);
}
float2 l9_754=l9_751;
float2 l9_755=l9_754;
float2 l9_756=l9_755;
l9_712=l9_756;
float l9_757=l9_712.x;
int l9_758=l9_715.x;
bool l9_759=l9_721;
float l9_760=l9_722;
if ((l9_758==0)||(l9_758==3))
{
float l9_761=l9_757;
float l9_762=0.0;
float l9_763=1.0;
bool l9_764=l9_759;
float l9_765=l9_760;
float l9_766=fast::clamp(l9_761,l9_762,l9_763);
float l9_767=step(abs(l9_761-l9_766),9.9999997e-06);
l9_765*=(l9_767+((1.0-float(l9_764))*(1.0-l9_767)));
l9_761=l9_766;
l9_757=l9_761;
l9_760=l9_765;
}
l9_712.x=l9_757;
l9_722=l9_760;
float l9_768=l9_712.y;
int l9_769=l9_715.y;
bool l9_770=l9_721;
float l9_771=l9_722;
if ((l9_769==0)||(l9_769==3))
{
float l9_772=l9_768;
float l9_773=0.0;
float l9_774=1.0;
bool l9_775=l9_770;
float l9_776=l9_771;
float l9_777=fast::clamp(l9_772,l9_773,l9_774);
float l9_778=step(abs(l9_772-l9_777),9.9999997e-06);
l9_776*=(l9_778+((1.0-float(l9_775))*(1.0-l9_778)));
l9_772=l9_777;
l9_768=l9_772;
l9_771=l9_776;
}
l9_712.y=l9_768;
l9_722=l9_771;
float2 l9_779=l9_712;
int l9_780=l9_710;
int l9_781=l9_711;
float l9_782=l9_720;
float2 l9_783=l9_779;
int l9_784=l9_780;
int l9_785=l9_781;
float3 l9_786=float3(0.0);
if (l9_784==0)
{
l9_786=float3(l9_783,0.0);
}
else
{
if (l9_784==1)
{
l9_786=float3(l9_783.x,(l9_783.y*0.5)+(0.5-(float(l9_785)*0.5)),0.0);
}
else
{
l9_786=float3(l9_783,float(l9_785));
}
}
float3 l9_787=l9_786;
float3 l9_788=l9_787;
float2 l9_789=l9_788.xy;
float l9_790=l9_782;
float4 l9_791=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_789,level(l9_790));
float4 l9_792=l9_791;
float4 l9_793=l9_792;
if (l9_718)
{
l9_793=mix(l9_719,l9_793,float4(l9_722));
}
float4 l9_794=l9_793;
l9_703=l9_794;
float3 l9_795=float3(0.0);
l9_795=float3(l9_703.x,l9_703.y,l9_703.z);
l9_670=l9_795;
l9_668+=l9_670;
param_31=l9_668;
float3 l9_796=param_31;
ssGlobals l9_797=param_32;
float3 l9_798=float3(0.0);
l9_797.Loop_Index_ID0=1.0;
l9_797.Loop_Ratio_ID0=0.33333299;
float2 l9_799=float2(0.0);
float2 l9_800=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_799=l9_800;
float2 l9_801=float2(0.0);
l9_801=l9_797.gScreenCoord;
float2 l9_802=float2(0.0);
l9_802=l9_801;
float2 l9_803=float2(0.0);
float2 l9_804=(*sc_set0.UserUniforms).ratio;
l9_803=l9_804;
float2 l9_805=float2(0.0);
l9_805=l9_799*l9_803;
float2 l9_806=float2(0.0);
l9_806=l9_805;
float l9_807=0.0;
float l9_808=(*sc_set0.UserUniforms).blurSize;
l9_807=l9_808;
float l9_809=0.0;
l9_809=l9_807/(*sc_set0.UserUniforms).Port_Input1_N029;
float l9_810=0.0;
l9_810=l9_809;
float l9_811=0.0;
l9_811=exp2(l9_810);
float l9_812=0.0;
l9_812=l9_797.Loop_Index_ID0;
float l9_813=0.0;
l9_813=l9_812*(*sc_set0.UserUniforms).Port_Input1_N006;
float l9_814=0.0;
l9_814=mod(l9_813,(*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_815=float2(0.0);
float l9_816=l9_814;
float2 l9_817=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_818=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_819=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_820=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_821=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_822=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_823=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_824=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_825[8];
l9_825[0]=l9_817;
l9_825[1]=l9_818;
l9_825[2]=l9_819;
l9_825[3]=l9_820;
l9_825[4]=l9_821;
l9_825[5]=l9_822;
l9_825[6]=l9_823;
l9_825[7]=l9_824;
int l9_826=int(fast::clamp(l9_816+9.9999997e-05,0.0,7.0));
float2 l9_827=l9_825[l9_826];
l9_815=l9_827;
float2 l9_828=float2(0.0);
l9_828=(l9_806*float2(l9_811))*l9_815;
float2 l9_829=float2(0.0);
l9_829=l9_802+l9_828;
float l9_830=0.0;
l9_830=l9_810+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 l9_831=float4(0.0);
int l9_832=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_833=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_833=0;
}
else
{
l9_833=in.varStereoViewID;
}
int l9_834=l9_833;
l9_832=1-l9_834;
}
else
{
int l9_835=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_835=0;
}
else
{
l9_835=in.varStereoViewID;
}
int l9_836=l9_835;
l9_832=l9_836;
}
int l9_837=l9_832;
int l9_838=glowTextureLayout_tmp;
int l9_839=l9_837;
float2 l9_840=l9_829;
bool l9_841=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_842=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_843=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_844=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_845=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_846=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_847=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_848=l9_830;
bool l9_849=l9_846&&(!l9_844);
float l9_850=1.0;
float l9_851=l9_840.x;
int l9_852=l9_843.x;
if (l9_852==1)
{
l9_851=fract(l9_851);
}
else
{
if (l9_852==2)
{
float l9_853=fract(l9_851);
float l9_854=l9_851-l9_853;
float l9_855=step(0.25,fract(l9_854*0.5));
l9_851=mix(l9_853,1.0-l9_853,fast::clamp(l9_855,0.0,1.0));
}
}
l9_840.x=l9_851;
float l9_856=l9_840.y;
int l9_857=l9_843.y;
if (l9_857==1)
{
l9_856=fract(l9_856);
}
else
{
if (l9_857==2)
{
float l9_858=fract(l9_856);
float l9_859=l9_856-l9_858;
float l9_860=step(0.25,fract(l9_859*0.5));
l9_856=mix(l9_858,1.0-l9_858,fast::clamp(l9_860,0.0,1.0));
}
}
l9_840.y=l9_856;
if (l9_844)
{
bool l9_861=l9_846;
bool l9_862;
if (l9_861)
{
l9_862=l9_843.x==3;
}
else
{
l9_862=l9_861;
}
float l9_863=l9_840.x;
float l9_864=l9_845.x;
float l9_865=l9_845.z;
bool l9_866=l9_862;
float l9_867=l9_850;
float l9_868=fast::clamp(l9_863,l9_864,l9_865);
float l9_869=step(abs(l9_863-l9_868),9.9999997e-06);
l9_867*=(l9_869+((1.0-float(l9_866))*(1.0-l9_869)));
l9_863=l9_868;
l9_840.x=l9_863;
l9_850=l9_867;
bool l9_870=l9_846;
bool l9_871;
if (l9_870)
{
l9_871=l9_843.y==3;
}
else
{
l9_871=l9_870;
}
float l9_872=l9_840.y;
float l9_873=l9_845.y;
float l9_874=l9_845.w;
bool l9_875=l9_871;
float l9_876=l9_850;
float l9_877=fast::clamp(l9_872,l9_873,l9_874);
float l9_878=step(abs(l9_872-l9_877),9.9999997e-06);
l9_876*=(l9_878+((1.0-float(l9_875))*(1.0-l9_878)));
l9_872=l9_877;
l9_840.y=l9_872;
l9_850=l9_876;
}
float2 l9_879=l9_840;
bool l9_880=l9_841;
float3x3 l9_881=l9_842;
if (l9_880)
{
l9_879=float2((l9_881*float3(l9_879,1.0)).xy);
}
float2 l9_882=l9_879;
float2 l9_883=l9_882;
float2 l9_884=l9_883;
l9_840=l9_884;
float l9_885=l9_840.x;
int l9_886=l9_843.x;
bool l9_887=l9_849;
float l9_888=l9_850;
if ((l9_886==0)||(l9_886==3))
{
float l9_889=l9_885;
float l9_890=0.0;
float l9_891=1.0;
bool l9_892=l9_887;
float l9_893=l9_888;
float l9_894=fast::clamp(l9_889,l9_890,l9_891);
float l9_895=step(abs(l9_889-l9_894),9.9999997e-06);
l9_893*=(l9_895+((1.0-float(l9_892))*(1.0-l9_895)));
l9_889=l9_894;
l9_885=l9_889;
l9_888=l9_893;
}
l9_840.x=l9_885;
l9_850=l9_888;
float l9_896=l9_840.y;
int l9_897=l9_843.y;
bool l9_898=l9_849;
float l9_899=l9_850;
if ((l9_897==0)||(l9_897==3))
{
float l9_900=l9_896;
float l9_901=0.0;
float l9_902=1.0;
bool l9_903=l9_898;
float l9_904=l9_899;
float l9_905=fast::clamp(l9_900,l9_901,l9_902);
float l9_906=step(abs(l9_900-l9_905),9.9999997e-06);
l9_904*=(l9_906+((1.0-float(l9_903))*(1.0-l9_906)));
l9_900=l9_905;
l9_896=l9_900;
l9_899=l9_904;
}
l9_840.y=l9_896;
l9_850=l9_899;
float2 l9_907=l9_840;
int l9_908=l9_838;
int l9_909=l9_839;
float l9_910=l9_848;
float2 l9_911=l9_907;
int l9_912=l9_908;
int l9_913=l9_909;
float3 l9_914=float3(0.0);
if (l9_912==0)
{
l9_914=float3(l9_911,0.0);
}
else
{
if (l9_912==1)
{
l9_914=float3(l9_911.x,(l9_911.y*0.5)+(0.5-(float(l9_913)*0.5)),0.0);
}
else
{
l9_914=float3(l9_911,float(l9_913));
}
}
float3 l9_915=l9_914;
float3 l9_916=l9_915;
float2 l9_917=l9_916.xy;
float l9_918=l9_910;
float4 l9_919=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_917,level(l9_918));
float4 l9_920=l9_919;
float4 l9_921=l9_920;
if (l9_846)
{
l9_921=mix(l9_847,l9_921,float4(l9_850));
}
float4 l9_922=l9_921;
l9_831=l9_922;
float3 l9_923=float3(0.0);
l9_923=float3(l9_831.x,l9_831.y,l9_831.z);
l9_798=l9_923;
l9_796+=l9_798;
param_31=l9_796;
float3 l9_924=param_31;
ssGlobals l9_925=param_32;
float3 l9_926=float3(0.0);
l9_925.Loop_Index_ID0=2.0;
l9_925.Loop_Ratio_ID0=0.66666698;
float2 l9_927=float2(0.0);
float2 l9_928=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_927=l9_928;
float2 l9_929=float2(0.0);
l9_929=l9_925.gScreenCoord;
float2 l9_930=float2(0.0);
l9_930=l9_929;
float2 l9_931=float2(0.0);
float2 l9_932=(*sc_set0.UserUniforms).ratio;
l9_931=l9_932;
float2 l9_933=float2(0.0);
l9_933=l9_927*l9_931;
float2 l9_934=float2(0.0);
l9_934=l9_933;
float l9_935=0.0;
float l9_936=(*sc_set0.UserUniforms).blurSize;
l9_935=l9_936;
float l9_937=0.0;
l9_937=l9_935/(*sc_set0.UserUniforms).Port_Input1_N029;
float l9_938=0.0;
l9_938=l9_937;
float l9_939=0.0;
l9_939=exp2(l9_938);
float l9_940=0.0;
l9_940=l9_925.Loop_Index_ID0;
float l9_941=0.0;
l9_941=l9_940*(*sc_set0.UserUniforms).Port_Input1_N006;
float l9_942=0.0;
l9_942=mod(l9_941,(*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_943=float2(0.0);
float l9_944=l9_942;
float2 l9_945=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_946=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_947=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_948=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_949=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_950=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_951=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_952=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_953[8];
l9_953[0]=l9_945;
l9_953[1]=l9_946;
l9_953[2]=l9_947;
l9_953[3]=l9_948;
l9_953[4]=l9_949;
l9_953[5]=l9_950;
l9_953[6]=l9_951;
l9_953[7]=l9_952;
int l9_954=int(fast::clamp(l9_944+9.9999997e-05,0.0,7.0));
float2 l9_955=l9_953[l9_954];
l9_943=l9_955;
float2 l9_956=float2(0.0);
l9_956=(l9_934*float2(l9_939))*l9_943;
float2 l9_957=float2(0.0);
l9_957=l9_930+l9_956;
float l9_958=0.0;
l9_958=l9_938+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 l9_959=float4(0.0);
int l9_960=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_961=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_961=0;
}
else
{
l9_961=in.varStereoViewID;
}
int l9_962=l9_961;
l9_960=1-l9_962;
}
else
{
int l9_963=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_963=0;
}
else
{
l9_963=in.varStereoViewID;
}
int l9_964=l9_963;
l9_960=l9_964;
}
int l9_965=l9_960;
int l9_966=glowTextureLayout_tmp;
int l9_967=l9_965;
float2 l9_968=l9_957;
bool l9_969=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_970=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_971=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_972=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_973=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_974=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_975=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_976=l9_958;
bool l9_977=l9_974&&(!l9_972);
float l9_978=1.0;
float l9_979=l9_968.x;
int l9_980=l9_971.x;
if (l9_980==1)
{
l9_979=fract(l9_979);
}
else
{
if (l9_980==2)
{
float l9_981=fract(l9_979);
float l9_982=l9_979-l9_981;
float l9_983=step(0.25,fract(l9_982*0.5));
l9_979=mix(l9_981,1.0-l9_981,fast::clamp(l9_983,0.0,1.0));
}
}
l9_968.x=l9_979;
float l9_984=l9_968.y;
int l9_985=l9_971.y;
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
l9_968.y=l9_984;
if (l9_972)
{
bool l9_989=l9_974;
bool l9_990;
if (l9_989)
{
l9_990=l9_971.x==3;
}
else
{
l9_990=l9_989;
}
float l9_991=l9_968.x;
float l9_992=l9_973.x;
float l9_993=l9_973.z;
bool l9_994=l9_990;
float l9_995=l9_978;
float l9_996=fast::clamp(l9_991,l9_992,l9_993);
float l9_997=step(abs(l9_991-l9_996),9.9999997e-06);
l9_995*=(l9_997+((1.0-float(l9_994))*(1.0-l9_997)));
l9_991=l9_996;
l9_968.x=l9_991;
l9_978=l9_995;
bool l9_998=l9_974;
bool l9_999;
if (l9_998)
{
l9_999=l9_971.y==3;
}
else
{
l9_999=l9_998;
}
float l9_1000=l9_968.y;
float l9_1001=l9_973.y;
float l9_1002=l9_973.w;
bool l9_1003=l9_999;
float l9_1004=l9_978;
float l9_1005=fast::clamp(l9_1000,l9_1001,l9_1002);
float l9_1006=step(abs(l9_1000-l9_1005),9.9999997e-06);
l9_1004*=(l9_1006+((1.0-float(l9_1003))*(1.0-l9_1006)));
l9_1000=l9_1005;
l9_968.y=l9_1000;
l9_978=l9_1004;
}
float2 l9_1007=l9_968;
bool l9_1008=l9_969;
float3x3 l9_1009=l9_970;
if (l9_1008)
{
l9_1007=float2((l9_1009*float3(l9_1007,1.0)).xy);
}
float2 l9_1010=l9_1007;
float2 l9_1011=l9_1010;
float2 l9_1012=l9_1011;
l9_968=l9_1012;
float l9_1013=l9_968.x;
int l9_1014=l9_971.x;
bool l9_1015=l9_977;
float l9_1016=l9_978;
if ((l9_1014==0)||(l9_1014==3))
{
float l9_1017=l9_1013;
float l9_1018=0.0;
float l9_1019=1.0;
bool l9_1020=l9_1015;
float l9_1021=l9_1016;
float l9_1022=fast::clamp(l9_1017,l9_1018,l9_1019);
float l9_1023=step(abs(l9_1017-l9_1022),9.9999997e-06);
l9_1021*=(l9_1023+((1.0-float(l9_1020))*(1.0-l9_1023)));
l9_1017=l9_1022;
l9_1013=l9_1017;
l9_1016=l9_1021;
}
l9_968.x=l9_1013;
l9_978=l9_1016;
float l9_1024=l9_968.y;
int l9_1025=l9_971.y;
bool l9_1026=l9_977;
float l9_1027=l9_978;
if ((l9_1025==0)||(l9_1025==3))
{
float l9_1028=l9_1024;
float l9_1029=0.0;
float l9_1030=1.0;
bool l9_1031=l9_1026;
float l9_1032=l9_1027;
float l9_1033=fast::clamp(l9_1028,l9_1029,l9_1030);
float l9_1034=step(abs(l9_1028-l9_1033),9.9999997e-06);
l9_1032*=(l9_1034+((1.0-float(l9_1031))*(1.0-l9_1034)));
l9_1028=l9_1033;
l9_1024=l9_1028;
l9_1027=l9_1032;
}
l9_968.y=l9_1024;
l9_978=l9_1027;
float2 l9_1035=l9_968;
int l9_1036=l9_966;
int l9_1037=l9_967;
float l9_1038=l9_976;
float2 l9_1039=l9_1035;
int l9_1040=l9_1036;
int l9_1041=l9_1037;
float3 l9_1042=float3(0.0);
if (l9_1040==0)
{
l9_1042=float3(l9_1039,0.0);
}
else
{
if (l9_1040==1)
{
l9_1042=float3(l9_1039.x,(l9_1039.y*0.5)+(0.5-(float(l9_1041)*0.5)),0.0);
}
else
{
l9_1042=float3(l9_1039,float(l9_1041));
}
}
float3 l9_1043=l9_1042;
float3 l9_1044=l9_1043;
float2 l9_1045=l9_1044.xy;
float l9_1046=l9_1038;
float4 l9_1047=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1045,level(l9_1046));
float4 l9_1048=l9_1047;
float4 l9_1049=l9_1048;
if (l9_974)
{
l9_1049=mix(l9_975,l9_1049,float4(l9_978));
}
float4 l9_1050=l9_1049;
l9_959=l9_1050;
float3 l9_1051=float3(0.0);
l9_1051=float3(l9_959.x,l9_959.y,l9_959.z);
l9_926=l9_1051;
l9_924+=l9_926;
param_31=l9_924;
float3 l9_1052=param_31;
ssGlobals l9_1053=param_32;
float3 l9_1054=float3(0.0);
l9_1053.Loop_Index_ID0=3.0;
l9_1053.Loop_Ratio_ID0=1.0;
float2 l9_1055=float2(0.0);
float2 l9_1056=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1055=l9_1056;
float2 l9_1057=float2(0.0);
l9_1057=l9_1053.gScreenCoord;
float2 l9_1058=float2(0.0);
l9_1058=l9_1057;
float2 l9_1059=float2(0.0);
float2 l9_1060=(*sc_set0.UserUniforms).ratio;
l9_1059=l9_1060;
float2 l9_1061=float2(0.0);
l9_1061=l9_1055*l9_1059;
float2 l9_1062=float2(0.0);
l9_1062=l9_1061;
float l9_1063=0.0;
float l9_1064=(*sc_set0.UserUniforms).blurSize;
l9_1063=l9_1064;
float l9_1065=0.0;
l9_1065=l9_1063/(*sc_set0.UserUniforms).Port_Input1_N029;
float l9_1066=0.0;
l9_1066=l9_1065;
float l9_1067=0.0;
l9_1067=exp2(l9_1066);
float l9_1068=0.0;
l9_1068=l9_1053.Loop_Index_ID0;
float l9_1069=0.0;
l9_1069=l9_1068*(*sc_set0.UserUniforms).Port_Input1_N006;
float l9_1070=0.0;
l9_1070=mod(l9_1069,(*sc_set0.UserUniforms).Port_Input1_N020);
float2 l9_1071=float2(0.0);
float l9_1072=l9_1070;
float2 l9_1073=(*sc_set0.UserUniforms).Port_Item0_N021;
float2 l9_1074=(*sc_set0.UserUniforms).Port_Item1_N021;
float2 l9_1075=(*sc_set0.UserUniforms).Port_Item2_N021;
float2 l9_1076=(*sc_set0.UserUniforms).Port_Item3_N021;
float2 l9_1077=(*sc_set0.UserUniforms).Port_Item4_N021;
float2 l9_1078=(*sc_set0.UserUniforms).Port_Item5_N021;
float2 l9_1079=(*sc_set0.UserUniforms).Port_Item6_N021;
float2 l9_1080=(*sc_set0.UserUniforms).Port_Item7_N021;
float2 l9_1081[8];
l9_1081[0]=l9_1073;
l9_1081[1]=l9_1074;
l9_1081[2]=l9_1075;
l9_1081[3]=l9_1076;
l9_1081[4]=l9_1077;
l9_1081[5]=l9_1078;
l9_1081[6]=l9_1079;
l9_1081[7]=l9_1080;
int l9_1082=int(fast::clamp(l9_1072+9.9999997e-05,0.0,7.0));
float2 l9_1083=l9_1081[l9_1082];
l9_1071=l9_1083;
float2 l9_1084=float2(0.0);
l9_1084=(l9_1062*float2(l9_1067))*l9_1071;
float2 l9_1085=float2(0.0);
l9_1085=l9_1058+l9_1084;
float l9_1086=0.0;
l9_1086=l9_1066+(*sc_set0.UserUniforms).Port_Input1_N014;
float4 l9_1087=float4(0.0);
int l9_1088=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
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
l9_1088=1-l9_1090;
}
else
{
int l9_1091=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1091=0;
}
else
{
l9_1091=in.varStereoViewID;
}
int l9_1092=l9_1091;
l9_1088=l9_1092;
}
int l9_1093=l9_1088;
int l9_1094=glowTextureLayout_tmp;
int l9_1095=l9_1093;
float2 l9_1096=l9_1085;
bool l9_1097=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1098=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1099=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1100=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1101=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1102=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1103=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1104=l9_1086;
bool l9_1105=l9_1102&&(!l9_1100);
float l9_1106=1.0;
float l9_1107=l9_1096.x;
int l9_1108=l9_1099.x;
if (l9_1108==1)
{
l9_1107=fract(l9_1107);
}
else
{
if (l9_1108==2)
{
float l9_1109=fract(l9_1107);
float l9_1110=l9_1107-l9_1109;
float l9_1111=step(0.25,fract(l9_1110*0.5));
l9_1107=mix(l9_1109,1.0-l9_1109,fast::clamp(l9_1111,0.0,1.0));
}
}
l9_1096.x=l9_1107;
float l9_1112=l9_1096.y;
int l9_1113=l9_1099.y;
if (l9_1113==1)
{
l9_1112=fract(l9_1112);
}
else
{
if (l9_1113==2)
{
float l9_1114=fract(l9_1112);
float l9_1115=l9_1112-l9_1114;
float l9_1116=step(0.25,fract(l9_1115*0.5));
l9_1112=mix(l9_1114,1.0-l9_1114,fast::clamp(l9_1116,0.0,1.0));
}
}
l9_1096.y=l9_1112;
if (l9_1100)
{
bool l9_1117=l9_1102;
bool l9_1118;
if (l9_1117)
{
l9_1118=l9_1099.x==3;
}
else
{
l9_1118=l9_1117;
}
float l9_1119=l9_1096.x;
float l9_1120=l9_1101.x;
float l9_1121=l9_1101.z;
bool l9_1122=l9_1118;
float l9_1123=l9_1106;
float l9_1124=fast::clamp(l9_1119,l9_1120,l9_1121);
float l9_1125=step(abs(l9_1119-l9_1124),9.9999997e-06);
l9_1123*=(l9_1125+((1.0-float(l9_1122))*(1.0-l9_1125)));
l9_1119=l9_1124;
l9_1096.x=l9_1119;
l9_1106=l9_1123;
bool l9_1126=l9_1102;
bool l9_1127;
if (l9_1126)
{
l9_1127=l9_1099.y==3;
}
else
{
l9_1127=l9_1126;
}
float l9_1128=l9_1096.y;
float l9_1129=l9_1101.y;
float l9_1130=l9_1101.w;
bool l9_1131=l9_1127;
float l9_1132=l9_1106;
float l9_1133=fast::clamp(l9_1128,l9_1129,l9_1130);
float l9_1134=step(abs(l9_1128-l9_1133),9.9999997e-06);
l9_1132*=(l9_1134+((1.0-float(l9_1131))*(1.0-l9_1134)));
l9_1128=l9_1133;
l9_1096.y=l9_1128;
l9_1106=l9_1132;
}
float2 l9_1135=l9_1096;
bool l9_1136=l9_1097;
float3x3 l9_1137=l9_1098;
if (l9_1136)
{
l9_1135=float2((l9_1137*float3(l9_1135,1.0)).xy);
}
float2 l9_1138=l9_1135;
float2 l9_1139=l9_1138;
float2 l9_1140=l9_1139;
l9_1096=l9_1140;
float l9_1141=l9_1096.x;
int l9_1142=l9_1099.x;
bool l9_1143=l9_1105;
float l9_1144=l9_1106;
if ((l9_1142==0)||(l9_1142==3))
{
float l9_1145=l9_1141;
float l9_1146=0.0;
float l9_1147=1.0;
bool l9_1148=l9_1143;
float l9_1149=l9_1144;
float l9_1150=fast::clamp(l9_1145,l9_1146,l9_1147);
float l9_1151=step(abs(l9_1145-l9_1150),9.9999997e-06);
l9_1149*=(l9_1151+((1.0-float(l9_1148))*(1.0-l9_1151)));
l9_1145=l9_1150;
l9_1141=l9_1145;
l9_1144=l9_1149;
}
l9_1096.x=l9_1141;
l9_1106=l9_1144;
float l9_1152=l9_1096.y;
int l9_1153=l9_1099.y;
bool l9_1154=l9_1105;
float l9_1155=l9_1106;
if ((l9_1153==0)||(l9_1153==3))
{
float l9_1156=l9_1152;
float l9_1157=0.0;
float l9_1158=1.0;
bool l9_1159=l9_1154;
float l9_1160=l9_1155;
float l9_1161=fast::clamp(l9_1156,l9_1157,l9_1158);
float l9_1162=step(abs(l9_1156-l9_1161),9.9999997e-06);
l9_1160*=(l9_1162+((1.0-float(l9_1159))*(1.0-l9_1162)));
l9_1156=l9_1161;
l9_1152=l9_1156;
l9_1155=l9_1160;
}
l9_1096.y=l9_1152;
l9_1106=l9_1155;
float2 l9_1163=l9_1096;
int l9_1164=l9_1094;
int l9_1165=l9_1095;
float l9_1166=l9_1104;
float2 l9_1167=l9_1163;
int l9_1168=l9_1164;
int l9_1169=l9_1165;
float3 l9_1170=float3(0.0);
if (l9_1168==0)
{
l9_1170=float3(l9_1167,0.0);
}
else
{
if (l9_1168==1)
{
l9_1170=float3(l9_1167.x,(l9_1167.y*0.5)+(0.5-(float(l9_1169)*0.5)),0.0);
}
else
{
l9_1170=float3(l9_1167,float(l9_1169));
}
}
float3 l9_1171=l9_1170;
float3 l9_1172=l9_1171;
float2 l9_1173=l9_1172.xy;
float l9_1174=l9_1166;
float4 l9_1175=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1173,level(l9_1174));
float4 l9_1176=l9_1175;
float4 l9_1177=l9_1176;
if (l9_1102)
{
l9_1177=mix(l9_1103,l9_1177,float4(l9_1106));
}
float4 l9_1178=l9_1177;
l9_1087=l9_1178;
float3 l9_1179=float3(0.0);
l9_1179=float3(l9_1087.x,l9_1087.y,l9_1087.z);
l9_1054=l9_1179;
l9_1052+=l9_1054;
param_31=l9_1052;
param_31/=float3(4.0);
Output_N25=param_31;
float3 Output_N26=float3(0.0);
Output_N26=mix(Output_N70,Output_N25,float3((*sc_set0.UserUniforms).Port_Input2_N026));
float3 Export_N27=float3(0.0);
Export_N27=Output_N26;
float2 Value_N33=float2(0.0);
Value_N33=ScreenCoord_N34;
float Value_N35=0.0;
Value_N35=Output_N9;
float Output_N36=0.0;
Output_N36=Value_N35+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 Color_N37=float4(0.0);
int l9_1180=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1181=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1181=0;
}
else
{
l9_1181=in.varStereoViewID;
}
int l9_1182=l9_1181;
l9_1180=1-l9_1182;
}
else
{
int l9_1183=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1183=0;
}
else
{
l9_1183=in.varStereoViewID;
}
int l9_1184=l9_1183;
l9_1180=l9_1184;
}
int l9_1185=l9_1180;
int param_33=glowTextureLayout_tmp;
int param_34=l9_1185;
float2 param_35=Value_N33;
bool param_36=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 param_37=(*sc_set0.UserUniforms).glowTextureTransform;
int2 param_38=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool param_39=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 param_40=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool param_41=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 param_42=(*sc_set0.UserUniforms).glowTextureBorderColor;
float param_43=Output_N36;
bool l9_1186=param_41&&(!param_39);
float l9_1187=1.0;
float l9_1188=param_35.x;
int l9_1189=param_38.x;
if (l9_1189==1)
{
l9_1188=fract(l9_1188);
}
else
{
if (l9_1189==2)
{
float l9_1190=fract(l9_1188);
float l9_1191=l9_1188-l9_1190;
float l9_1192=step(0.25,fract(l9_1191*0.5));
l9_1188=mix(l9_1190,1.0-l9_1190,fast::clamp(l9_1192,0.0,1.0));
}
}
param_35.x=l9_1188;
float l9_1193=param_35.y;
int l9_1194=param_38.y;
if (l9_1194==1)
{
l9_1193=fract(l9_1193);
}
else
{
if (l9_1194==2)
{
float l9_1195=fract(l9_1193);
float l9_1196=l9_1193-l9_1195;
float l9_1197=step(0.25,fract(l9_1196*0.5));
l9_1193=mix(l9_1195,1.0-l9_1195,fast::clamp(l9_1197,0.0,1.0));
}
}
param_35.y=l9_1193;
if (param_39)
{
bool l9_1198=param_41;
bool l9_1199;
if (l9_1198)
{
l9_1199=param_38.x==3;
}
else
{
l9_1199=l9_1198;
}
float l9_1200=param_35.x;
float l9_1201=param_40.x;
float l9_1202=param_40.z;
bool l9_1203=l9_1199;
float l9_1204=l9_1187;
float l9_1205=fast::clamp(l9_1200,l9_1201,l9_1202);
float l9_1206=step(abs(l9_1200-l9_1205),9.9999997e-06);
l9_1204*=(l9_1206+((1.0-float(l9_1203))*(1.0-l9_1206)));
l9_1200=l9_1205;
param_35.x=l9_1200;
l9_1187=l9_1204;
bool l9_1207=param_41;
bool l9_1208;
if (l9_1207)
{
l9_1208=param_38.y==3;
}
else
{
l9_1208=l9_1207;
}
float l9_1209=param_35.y;
float l9_1210=param_40.y;
float l9_1211=param_40.w;
bool l9_1212=l9_1208;
float l9_1213=l9_1187;
float l9_1214=fast::clamp(l9_1209,l9_1210,l9_1211);
float l9_1215=step(abs(l9_1209-l9_1214),9.9999997e-06);
l9_1213*=(l9_1215+((1.0-float(l9_1212))*(1.0-l9_1215)));
l9_1209=l9_1214;
param_35.y=l9_1209;
l9_1187=l9_1213;
}
float2 l9_1216=param_35;
bool l9_1217=param_36;
float3x3 l9_1218=param_37;
if (l9_1217)
{
l9_1216=float2((l9_1218*float3(l9_1216,1.0)).xy);
}
float2 l9_1219=l9_1216;
float2 l9_1220=l9_1219;
float2 l9_1221=l9_1220;
param_35=l9_1221;
float l9_1222=param_35.x;
int l9_1223=param_38.x;
bool l9_1224=l9_1186;
float l9_1225=l9_1187;
if ((l9_1223==0)||(l9_1223==3))
{
float l9_1226=l9_1222;
float l9_1227=0.0;
float l9_1228=1.0;
bool l9_1229=l9_1224;
float l9_1230=l9_1225;
float l9_1231=fast::clamp(l9_1226,l9_1227,l9_1228);
float l9_1232=step(abs(l9_1226-l9_1231),9.9999997e-06);
l9_1230*=(l9_1232+((1.0-float(l9_1229))*(1.0-l9_1232)));
l9_1226=l9_1231;
l9_1222=l9_1226;
l9_1225=l9_1230;
}
param_35.x=l9_1222;
l9_1187=l9_1225;
float l9_1233=param_35.y;
int l9_1234=param_38.y;
bool l9_1235=l9_1186;
float l9_1236=l9_1187;
if ((l9_1234==0)||(l9_1234==3))
{
float l9_1237=l9_1233;
float l9_1238=0.0;
float l9_1239=1.0;
bool l9_1240=l9_1235;
float l9_1241=l9_1236;
float l9_1242=fast::clamp(l9_1237,l9_1238,l9_1239);
float l9_1243=step(abs(l9_1237-l9_1242),9.9999997e-06);
l9_1241*=(l9_1243+((1.0-float(l9_1240))*(1.0-l9_1243)));
l9_1237=l9_1242;
l9_1233=l9_1237;
l9_1236=l9_1241;
}
param_35.y=l9_1233;
l9_1187=l9_1236;
float2 l9_1244=param_35;
int l9_1245=param_33;
int l9_1246=param_34;
float l9_1247=param_43;
float2 l9_1248=l9_1244;
int l9_1249=l9_1245;
int l9_1250=l9_1246;
float3 l9_1251=float3(0.0);
if (l9_1249==0)
{
l9_1251=float3(l9_1248,0.0);
}
else
{
if (l9_1249==1)
{
l9_1251=float3(l9_1248.x,(l9_1248.y*0.5)+(0.5-(float(l9_1250)*0.5)),0.0);
}
else
{
l9_1251=float3(l9_1248,float(l9_1250));
}
}
float3 l9_1252=l9_1251;
float3 l9_1253=l9_1252;
float2 l9_1254=l9_1253.xy;
float l9_1255=l9_1247;
float4 l9_1256=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1254,level(l9_1255));
float4 l9_1257=l9_1256;
float4 l9_1258=l9_1257;
if (param_41)
{
l9_1258=mix(param_42,l9_1258,float4(l9_1187));
}
float4 l9_1259=l9_1258;
Color_N37=l9_1259;
float3 Output_N74=float3(0.0);
Output_N74=float3(Color_N37.x,Color_N37.y,Color_N37.z);
float3 Output_N51=float3(0.0);
ssGlobals param_45=Globals;
float3 param_44=float3(0.0);
param_45.Loop_Count_ID0=8.0;
float3 l9_1260=param_44;
ssGlobals l9_1261=param_45;
float3 l9_1262=float3(0.0);
l9_1261.Loop_Index_ID0=0.0;
l9_1261.Loop_Ratio_ID0=0.0;
float2 l9_1263=float2(0.0);
float2 l9_1264=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1263=l9_1264;
float2 l9_1265=float2(0.0);
l9_1265=l9_1261.gScreenCoord;
float2 l9_1266=float2(0.0);
l9_1266=l9_1265;
float2 l9_1267=float2(0.0);
float2 l9_1268=(*sc_set0.UserUniforms).ratio;
l9_1267=l9_1268;
float2 l9_1269=float2(0.0);
l9_1269=l9_1263*l9_1267;
float2 l9_1270=float2(0.0);
l9_1270=l9_1269;
float l9_1271=0.0;
float l9_1272=(*sc_set0.UserUniforms).blurSize;
l9_1271=l9_1272;
float l9_1273=0.0;
l9_1273=l9_1271;
float l9_1274=0.0;
l9_1274=exp2(l9_1273);
float l9_1275=0.0;
l9_1275=l9_1261.Loop_Index_ID0;
float l9_1276=0.0;
l9_1276=mod(l9_1275,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1277=float2(0.0);
float l9_1278=l9_1276;
float2 l9_1279=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1280=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1281=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1282=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1283=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1284=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1285=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1286=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1287[8];
l9_1287[0]=l9_1279;
l9_1287[1]=l9_1280;
l9_1287[2]=l9_1281;
l9_1287[3]=l9_1282;
l9_1287[4]=l9_1283;
l9_1287[5]=l9_1284;
l9_1287[6]=l9_1285;
l9_1287[7]=l9_1286;
int l9_1288=int(fast::clamp(l9_1278+9.9999997e-05,0.0,7.0));
float2 l9_1289=l9_1287[l9_1288];
l9_1277=l9_1289;
float2 l9_1290=float2(0.0);
l9_1290=(l9_1270*float2(l9_1274))*l9_1277;
float2 l9_1291=float2(0.0);
l9_1291=l9_1266+l9_1290;
float l9_1292=0.0;
l9_1292=l9_1273+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1293=float4(0.0);
int l9_1294=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1295=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1295=0;
}
else
{
l9_1295=in.varStereoViewID;
}
int l9_1296=l9_1295;
l9_1294=1-l9_1296;
}
else
{
int l9_1297=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1297=0;
}
else
{
l9_1297=in.varStereoViewID;
}
int l9_1298=l9_1297;
l9_1294=l9_1298;
}
int l9_1299=l9_1294;
int l9_1300=glowTextureLayout_tmp;
int l9_1301=l9_1299;
float2 l9_1302=l9_1291;
bool l9_1303=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1304=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1305=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1306=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1307=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1308=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1309=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1310=l9_1292;
bool l9_1311=l9_1308&&(!l9_1306);
float l9_1312=1.0;
float l9_1313=l9_1302.x;
int l9_1314=l9_1305.x;
if (l9_1314==1)
{
l9_1313=fract(l9_1313);
}
else
{
if (l9_1314==2)
{
float l9_1315=fract(l9_1313);
float l9_1316=l9_1313-l9_1315;
float l9_1317=step(0.25,fract(l9_1316*0.5));
l9_1313=mix(l9_1315,1.0-l9_1315,fast::clamp(l9_1317,0.0,1.0));
}
}
l9_1302.x=l9_1313;
float l9_1318=l9_1302.y;
int l9_1319=l9_1305.y;
if (l9_1319==1)
{
l9_1318=fract(l9_1318);
}
else
{
if (l9_1319==2)
{
float l9_1320=fract(l9_1318);
float l9_1321=l9_1318-l9_1320;
float l9_1322=step(0.25,fract(l9_1321*0.5));
l9_1318=mix(l9_1320,1.0-l9_1320,fast::clamp(l9_1322,0.0,1.0));
}
}
l9_1302.y=l9_1318;
if (l9_1306)
{
bool l9_1323=l9_1308;
bool l9_1324;
if (l9_1323)
{
l9_1324=l9_1305.x==3;
}
else
{
l9_1324=l9_1323;
}
float l9_1325=l9_1302.x;
float l9_1326=l9_1307.x;
float l9_1327=l9_1307.z;
bool l9_1328=l9_1324;
float l9_1329=l9_1312;
float l9_1330=fast::clamp(l9_1325,l9_1326,l9_1327);
float l9_1331=step(abs(l9_1325-l9_1330),9.9999997e-06);
l9_1329*=(l9_1331+((1.0-float(l9_1328))*(1.0-l9_1331)));
l9_1325=l9_1330;
l9_1302.x=l9_1325;
l9_1312=l9_1329;
bool l9_1332=l9_1308;
bool l9_1333;
if (l9_1332)
{
l9_1333=l9_1305.y==3;
}
else
{
l9_1333=l9_1332;
}
float l9_1334=l9_1302.y;
float l9_1335=l9_1307.y;
float l9_1336=l9_1307.w;
bool l9_1337=l9_1333;
float l9_1338=l9_1312;
float l9_1339=fast::clamp(l9_1334,l9_1335,l9_1336);
float l9_1340=step(abs(l9_1334-l9_1339),9.9999997e-06);
l9_1338*=(l9_1340+((1.0-float(l9_1337))*(1.0-l9_1340)));
l9_1334=l9_1339;
l9_1302.y=l9_1334;
l9_1312=l9_1338;
}
float2 l9_1341=l9_1302;
bool l9_1342=l9_1303;
float3x3 l9_1343=l9_1304;
if (l9_1342)
{
l9_1341=float2((l9_1343*float3(l9_1341,1.0)).xy);
}
float2 l9_1344=l9_1341;
float2 l9_1345=l9_1344;
float2 l9_1346=l9_1345;
l9_1302=l9_1346;
float l9_1347=l9_1302.x;
int l9_1348=l9_1305.x;
bool l9_1349=l9_1311;
float l9_1350=l9_1312;
if ((l9_1348==0)||(l9_1348==3))
{
float l9_1351=l9_1347;
float l9_1352=0.0;
float l9_1353=1.0;
bool l9_1354=l9_1349;
float l9_1355=l9_1350;
float l9_1356=fast::clamp(l9_1351,l9_1352,l9_1353);
float l9_1357=step(abs(l9_1351-l9_1356),9.9999997e-06);
l9_1355*=(l9_1357+((1.0-float(l9_1354))*(1.0-l9_1357)));
l9_1351=l9_1356;
l9_1347=l9_1351;
l9_1350=l9_1355;
}
l9_1302.x=l9_1347;
l9_1312=l9_1350;
float l9_1358=l9_1302.y;
int l9_1359=l9_1305.y;
bool l9_1360=l9_1311;
float l9_1361=l9_1312;
if ((l9_1359==0)||(l9_1359==3))
{
float l9_1362=l9_1358;
float l9_1363=0.0;
float l9_1364=1.0;
bool l9_1365=l9_1360;
float l9_1366=l9_1361;
float l9_1367=fast::clamp(l9_1362,l9_1363,l9_1364);
float l9_1368=step(abs(l9_1362-l9_1367),9.9999997e-06);
l9_1366*=(l9_1368+((1.0-float(l9_1365))*(1.0-l9_1368)));
l9_1362=l9_1367;
l9_1358=l9_1362;
l9_1361=l9_1366;
}
l9_1302.y=l9_1358;
l9_1312=l9_1361;
float2 l9_1369=l9_1302;
int l9_1370=l9_1300;
int l9_1371=l9_1301;
float l9_1372=l9_1310;
float2 l9_1373=l9_1369;
int l9_1374=l9_1370;
int l9_1375=l9_1371;
float3 l9_1376=float3(0.0);
if (l9_1374==0)
{
l9_1376=float3(l9_1373,0.0);
}
else
{
if (l9_1374==1)
{
l9_1376=float3(l9_1373.x,(l9_1373.y*0.5)+(0.5-(float(l9_1375)*0.5)),0.0);
}
else
{
l9_1376=float3(l9_1373,float(l9_1375));
}
}
float3 l9_1377=l9_1376;
float3 l9_1378=l9_1377;
float2 l9_1379=l9_1378.xy;
float l9_1380=l9_1372;
float4 l9_1381=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1379,level(l9_1380));
float4 l9_1382=l9_1381;
float4 l9_1383=l9_1382;
if (l9_1308)
{
l9_1383=mix(l9_1309,l9_1383,float4(l9_1312));
}
float4 l9_1384=l9_1383;
l9_1293=l9_1384;
float3 l9_1385=float3(0.0);
l9_1385=float3(l9_1293.x,l9_1293.y,l9_1293.z);
l9_1262=l9_1385;
l9_1260+=l9_1262;
param_44=l9_1260;
float3 l9_1386=param_44;
ssGlobals l9_1387=param_45;
float3 l9_1388=float3(0.0);
l9_1387.Loop_Index_ID0=1.0;
l9_1387.Loop_Ratio_ID0=0.142857;
float2 l9_1389=float2(0.0);
float2 l9_1390=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1389=l9_1390;
float2 l9_1391=float2(0.0);
l9_1391=l9_1387.gScreenCoord;
float2 l9_1392=float2(0.0);
l9_1392=l9_1391;
float2 l9_1393=float2(0.0);
float2 l9_1394=(*sc_set0.UserUniforms).ratio;
l9_1393=l9_1394;
float2 l9_1395=float2(0.0);
l9_1395=l9_1389*l9_1393;
float2 l9_1396=float2(0.0);
l9_1396=l9_1395;
float l9_1397=0.0;
float l9_1398=(*sc_set0.UserUniforms).blurSize;
l9_1397=l9_1398;
float l9_1399=0.0;
l9_1399=l9_1397;
float l9_1400=0.0;
l9_1400=exp2(l9_1399);
float l9_1401=0.0;
l9_1401=l9_1387.Loop_Index_ID0;
float l9_1402=0.0;
l9_1402=mod(l9_1401,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1403=float2(0.0);
float l9_1404=l9_1402;
float2 l9_1405=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1406=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1407=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1408=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1409=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1410=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1411=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1412=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1413[8];
l9_1413[0]=l9_1405;
l9_1413[1]=l9_1406;
l9_1413[2]=l9_1407;
l9_1413[3]=l9_1408;
l9_1413[4]=l9_1409;
l9_1413[5]=l9_1410;
l9_1413[6]=l9_1411;
l9_1413[7]=l9_1412;
int l9_1414=int(fast::clamp(l9_1404+9.9999997e-05,0.0,7.0));
float2 l9_1415=l9_1413[l9_1414];
l9_1403=l9_1415;
float2 l9_1416=float2(0.0);
l9_1416=(l9_1396*float2(l9_1400))*l9_1403;
float2 l9_1417=float2(0.0);
l9_1417=l9_1392+l9_1416;
float l9_1418=0.0;
l9_1418=l9_1399+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1419=float4(0.0);
int l9_1420=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1421=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1421=0;
}
else
{
l9_1421=in.varStereoViewID;
}
int l9_1422=l9_1421;
l9_1420=1-l9_1422;
}
else
{
int l9_1423=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1423=0;
}
else
{
l9_1423=in.varStereoViewID;
}
int l9_1424=l9_1423;
l9_1420=l9_1424;
}
int l9_1425=l9_1420;
int l9_1426=glowTextureLayout_tmp;
int l9_1427=l9_1425;
float2 l9_1428=l9_1417;
bool l9_1429=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1430=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1431=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1432=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1433=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1434=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1435=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1436=l9_1418;
bool l9_1437=l9_1434&&(!l9_1432);
float l9_1438=1.0;
float l9_1439=l9_1428.x;
int l9_1440=l9_1431.x;
if (l9_1440==1)
{
l9_1439=fract(l9_1439);
}
else
{
if (l9_1440==2)
{
float l9_1441=fract(l9_1439);
float l9_1442=l9_1439-l9_1441;
float l9_1443=step(0.25,fract(l9_1442*0.5));
l9_1439=mix(l9_1441,1.0-l9_1441,fast::clamp(l9_1443,0.0,1.0));
}
}
l9_1428.x=l9_1439;
float l9_1444=l9_1428.y;
int l9_1445=l9_1431.y;
if (l9_1445==1)
{
l9_1444=fract(l9_1444);
}
else
{
if (l9_1445==2)
{
float l9_1446=fract(l9_1444);
float l9_1447=l9_1444-l9_1446;
float l9_1448=step(0.25,fract(l9_1447*0.5));
l9_1444=mix(l9_1446,1.0-l9_1446,fast::clamp(l9_1448,0.0,1.0));
}
}
l9_1428.y=l9_1444;
if (l9_1432)
{
bool l9_1449=l9_1434;
bool l9_1450;
if (l9_1449)
{
l9_1450=l9_1431.x==3;
}
else
{
l9_1450=l9_1449;
}
float l9_1451=l9_1428.x;
float l9_1452=l9_1433.x;
float l9_1453=l9_1433.z;
bool l9_1454=l9_1450;
float l9_1455=l9_1438;
float l9_1456=fast::clamp(l9_1451,l9_1452,l9_1453);
float l9_1457=step(abs(l9_1451-l9_1456),9.9999997e-06);
l9_1455*=(l9_1457+((1.0-float(l9_1454))*(1.0-l9_1457)));
l9_1451=l9_1456;
l9_1428.x=l9_1451;
l9_1438=l9_1455;
bool l9_1458=l9_1434;
bool l9_1459;
if (l9_1458)
{
l9_1459=l9_1431.y==3;
}
else
{
l9_1459=l9_1458;
}
float l9_1460=l9_1428.y;
float l9_1461=l9_1433.y;
float l9_1462=l9_1433.w;
bool l9_1463=l9_1459;
float l9_1464=l9_1438;
float l9_1465=fast::clamp(l9_1460,l9_1461,l9_1462);
float l9_1466=step(abs(l9_1460-l9_1465),9.9999997e-06);
l9_1464*=(l9_1466+((1.0-float(l9_1463))*(1.0-l9_1466)));
l9_1460=l9_1465;
l9_1428.y=l9_1460;
l9_1438=l9_1464;
}
float2 l9_1467=l9_1428;
bool l9_1468=l9_1429;
float3x3 l9_1469=l9_1430;
if (l9_1468)
{
l9_1467=float2((l9_1469*float3(l9_1467,1.0)).xy);
}
float2 l9_1470=l9_1467;
float2 l9_1471=l9_1470;
float2 l9_1472=l9_1471;
l9_1428=l9_1472;
float l9_1473=l9_1428.x;
int l9_1474=l9_1431.x;
bool l9_1475=l9_1437;
float l9_1476=l9_1438;
if ((l9_1474==0)||(l9_1474==3))
{
float l9_1477=l9_1473;
float l9_1478=0.0;
float l9_1479=1.0;
bool l9_1480=l9_1475;
float l9_1481=l9_1476;
float l9_1482=fast::clamp(l9_1477,l9_1478,l9_1479);
float l9_1483=step(abs(l9_1477-l9_1482),9.9999997e-06);
l9_1481*=(l9_1483+((1.0-float(l9_1480))*(1.0-l9_1483)));
l9_1477=l9_1482;
l9_1473=l9_1477;
l9_1476=l9_1481;
}
l9_1428.x=l9_1473;
l9_1438=l9_1476;
float l9_1484=l9_1428.y;
int l9_1485=l9_1431.y;
bool l9_1486=l9_1437;
float l9_1487=l9_1438;
if ((l9_1485==0)||(l9_1485==3))
{
float l9_1488=l9_1484;
float l9_1489=0.0;
float l9_1490=1.0;
bool l9_1491=l9_1486;
float l9_1492=l9_1487;
float l9_1493=fast::clamp(l9_1488,l9_1489,l9_1490);
float l9_1494=step(abs(l9_1488-l9_1493),9.9999997e-06);
l9_1492*=(l9_1494+((1.0-float(l9_1491))*(1.0-l9_1494)));
l9_1488=l9_1493;
l9_1484=l9_1488;
l9_1487=l9_1492;
}
l9_1428.y=l9_1484;
l9_1438=l9_1487;
float2 l9_1495=l9_1428;
int l9_1496=l9_1426;
int l9_1497=l9_1427;
float l9_1498=l9_1436;
float2 l9_1499=l9_1495;
int l9_1500=l9_1496;
int l9_1501=l9_1497;
float3 l9_1502=float3(0.0);
if (l9_1500==0)
{
l9_1502=float3(l9_1499,0.0);
}
else
{
if (l9_1500==1)
{
l9_1502=float3(l9_1499.x,(l9_1499.y*0.5)+(0.5-(float(l9_1501)*0.5)),0.0);
}
else
{
l9_1502=float3(l9_1499,float(l9_1501));
}
}
float3 l9_1503=l9_1502;
float3 l9_1504=l9_1503;
float2 l9_1505=l9_1504.xy;
float l9_1506=l9_1498;
float4 l9_1507=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1505,level(l9_1506));
float4 l9_1508=l9_1507;
float4 l9_1509=l9_1508;
if (l9_1434)
{
l9_1509=mix(l9_1435,l9_1509,float4(l9_1438));
}
float4 l9_1510=l9_1509;
l9_1419=l9_1510;
float3 l9_1511=float3(0.0);
l9_1511=float3(l9_1419.x,l9_1419.y,l9_1419.z);
l9_1388=l9_1511;
l9_1386+=l9_1388;
param_44=l9_1386;
float3 l9_1512=param_44;
ssGlobals l9_1513=param_45;
float3 l9_1514=float3(0.0);
l9_1513.Loop_Index_ID0=2.0;
l9_1513.Loop_Ratio_ID0=0.285714;
float2 l9_1515=float2(0.0);
float2 l9_1516=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1515=l9_1516;
float2 l9_1517=float2(0.0);
l9_1517=l9_1513.gScreenCoord;
float2 l9_1518=float2(0.0);
l9_1518=l9_1517;
float2 l9_1519=float2(0.0);
float2 l9_1520=(*sc_set0.UserUniforms).ratio;
l9_1519=l9_1520;
float2 l9_1521=float2(0.0);
l9_1521=l9_1515*l9_1519;
float2 l9_1522=float2(0.0);
l9_1522=l9_1521;
float l9_1523=0.0;
float l9_1524=(*sc_set0.UserUniforms).blurSize;
l9_1523=l9_1524;
float l9_1525=0.0;
l9_1525=l9_1523;
float l9_1526=0.0;
l9_1526=exp2(l9_1525);
float l9_1527=0.0;
l9_1527=l9_1513.Loop_Index_ID0;
float l9_1528=0.0;
l9_1528=mod(l9_1527,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1529=float2(0.0);
float l9_1530=l9_1528;
float2 l9_1531=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1532=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1533=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1534=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1535=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1536=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1537=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1538=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1539[8];
l9_1539[0]=l9_1531;
l9_1539[1]=l9_1532;
l9_1539[2]=l9_1533;
l9_1539[3]=l9_1534;
l9_1539[4]=l9_1535;
l9_1539[5]=l9_1536;
l9_1539[6]=l9_1537;
l9_1539[7]=l9_1538;
int l9_1540=int(fast::clamp(l9_1530+9.9999997e-05,0.0,7.0));
float2 l9_1541=l9_1539[l9_1540];
l9_1529=l9_1541;
float2 l9_1542=float2(0.0);
l9_1542=(l9_1522*float2(l9_1526))*l9_1529;
float2 l9_1543=float2(0.0);
l9_1543=l9_1518+l9_1542;
float l9_1544=0.0;
l9_1544=l9_1525+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1545=float4(0.0);
int l9_1546=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1547=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1547=0;
}
else
{
l9_1547=in.varStereoViewID;
}
int l9_1548=l9_1547;
l9_1546=1-l9_1548;
}
else
{
int l9_1549=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1549=0;
}
else
{
l9_1549=in.varStereoViewID;
}
int l9_1550=l9_1549;
l9_1546=l9_1550;
}
int l9_1551=l9_1546;
int l9_1552=glowTextureLayout_tmp;
int l9_1553=l9_1551;
float2 l9_1554=l9_1543;
bool l9_1555=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1556=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1557=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1558=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1559=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1560=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1561=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1562=l9_1544;
bool l9_1563=l9_1560&&(!l9_1558);
float l9_1564=1.0;
float l9_1565=l9_1554.x;
int l9_1566=l9_1557.x;
if (l9_1566==1)
{
l9_1565=fract(l9_1565);
}
else
{
if (l9_1566==2)
{
float l9_1567=fract(l9_1565);
float l9_1568=l9_1565-l9_1567;
float l9_1569=step(0.25,fract(l9_1568*0.5));
l9_1565=mix(l9_1567,1.0-l9_1567,fast::clamp(l9_1569,0.0,1.0));
}
}
l9_1554.x=l9_1565;
float l9_1570=l9_1554.y;
int l9_1571=l9_1557.y;
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
l9_1554.y=l9_1570;
if (l9_1558)
{
bool l9_1575=l9_1560;
bool l9_1576;
if (l9_1575)
{
l9_1576=l9_1557.x==3;
}
else
{
l9_1576=l9_1575;
}
float l9_1577=l9_1554.x;
float l9_1578=l9_1559.x;
float l9_1579=l9_1559.z;
bool l9_1580=l9_1576;
float l9_1581=l9_1564;
float l9_1582=fast::clamp(l9_1577,l9_1578,l9_1579);
float l9_1583=step(abs(l9_1577-l9_1582),9.9999997e-06);
l9_1581*=(l9_1583+((1.0-float(l9_1580))*(1.0-l9_1583)));
l9_1577=l9_1582;
l9_1554.x=l9_1577;
l9_1564=l9_1581;
bool l9_1584=l9_1560;
bool l9_1585;
if (l9_1584)
{
l9_1585=l9_1557.y==3;
}
else
{
l9_1585=l9_1584;
}
float l9_1586=l9_1554.y;
float l9_1587=l9_1559.y;
float l9_1588=l9_1559.w;
bool l9_1589=l9_1585;
float l9_1590=l9_1564;
float l9_1591=fast::clamp(l9_1586,l9_1587,l9_1588);
float l9_1592=step(abs(l9_1586-l9_1591),9.9999997e-06);
l9_1590*=(l9_1592+((1.0-float(l9_1589))*(1.0-l9_1592)));
l9_1586=l9_1591;
l9_1554.y=l9_1586;
l9_1564=l9_1590;
}
float2 l9_1593=l9_1554;
bool l9_1594=l9_1555;
float3x3 l9_1595=l9_1556;
if (l9_1594)
{
l9_1593=float2((l9_1595*float3(l9_1593,1.0)).xy);
}
float2 l9_1596=l9_1593;
float2 l9_1597=l9_1596;
float2 l9_1598=l9_1597;
l9_1554=l9_1598;
float l9_1599=l9_1554.x;
int l9_1600=l9_1557.x;
bool l9_1601=l9_1563;
float l9_1602=l9_1564;
if ((l9_1600==0)||(l9_1600==3))
{
float l9_1603=l9_1599;
float l9_1604=0.0;
float l9_1605=1.0;
bool l9_1606=l9_1601;
float l9_1607=l9_1602;
float l9_1608=fast::clamp(l9_1603,l9_1604,l9_1605);
float l9_1609=step(abs(l9_1603-l9_1608),9.9999997e-06);
l9_1607*=(l9_1609+((1.0-float(l9_1606))*(1.0-l9_1609)));
l9_1603=l9_1608;
l9_1599=l9_1603;
l9_1602=l9_1607;
}
l9_1554.x=l9_1599;
l9_1564=l9_1602;
float l9_1610=l9_1554.y;
int l9_1611=l9_1557.y;
bool l9_1612=l9_1563;
float l9_1613=l9_1564;
if ((l9_1611==0)||(l9_1611==3))
{
float l9_1614=l9_1610;
float l9_1615=0.0;
float l9_1616=1.0;
bool l9_1617=l9_1612;
float l9_1618=l9_1613;
float l9_1619=fast::clamp(l9_1614,l9_1615,l9_1616);
float l9_1620=step(abs(l9_1614-l9_1619),9.9999997e-06);
l9_1618*=(l9_1620+((1.0-float(l9_1617))*(1.0-l9_1620)));
l9_1614=l9_1619;
l9_1610=l9_1614;
l9_1613=l9_1618;
}
l9_1554.y=l9_1610;
l9_1564=l9_1613;
float2 l9_1621=l9_1554;
int l9_1622=l9_1552;
int l9_1623=l9_1553;
float l9_1624=l9_1562;
float2 l9_1625=l9_1621;
int l9_1626=l9_1622;
int l9_1627=l9_1623;
float3 l9_1628=float3(0.0);
if (l9_1626==0)
{
l9_1628=float3(l9_1625,0.0);
}
else
{
if (l9_1626==1)
{
l9_1628=float3(l9_1625.x,(l9_1625.y*0.5)+(0.5-(float(l9_1627)*0.5)),0.0);
}
else
{
l9_1628=float3(l9_1625,float(l9_1627));
}
}
float3 l9_1629=l9_1628;
float3 l9_1630=l9_1629;
float2 l9_1631=l9_1630.xy;
float l9_1632=l9_1624;
float4 l9_1633=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1631,level(l9_1632));
float4 l9_1634=l9_1633;
float4 l9_1635=l9_1634;
if (l9_1560)
{
l9_1635=mix(l9_1561,l9_1635,float4(l9_1564));
}
float4 l9_1636=l9_1635;
l9_1545=l9_1636;
float3 l9_1637=float3(0.0);
l9_1637=float3(l9_1545.x,l9_1545.y,l9_1545.z);
l9_1514=l9_1637;
l9_1512+=l9_1514;
param_44=l9_1512;
float3 l9_1638=param_44;
ssGlobals l9_1639=param_45;
float3 l9_1640=float3(0.0);
l9_1639.Loop_Index_ID0=3.0;
l9_1639.Loop_Ratio_ID0=0.42857099;
float2 l9_1641=float2(0.0);
float2 l9_1642=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1641=l9_1642;
float2 l9_1643=float2(0.0);
l9_1643=l9_1639.gScreenCoord;
float2 l9_1644=float2(0.0);
l9_1644=l9_1643;
float2 l9_1645=float2(0.0);
float2 l9_1646=(*sc_set0.UserUniforms).ratio;
l9_1645=l9_1646;
float2 l9_1647=float2(0.0);
l9_1647=l9_1641*l9_1645;
float2 l9_1648=float2(0.0);
l9_1648=l9_1647;
float l9_1649=0.0;
float l9_1650=(*sc_set0.UserUniforms).blurSize;
l9_1649=l9_1650;
float l9_1651=0.0;
l9_1651=l9_1649;
float l9_1652=0.0;
l9_1652=exp2(l9_1651);
float l9_1653=0.0;
l9_1653=l9_1639.Loop_Index_ID0;
float l9_1654=0.0;
l9_1654=mod(l9_1653,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1655=float2(0.0);
float l9_1656=l9_1654;
float2 l9_1657=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1658=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1659=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1660=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1661=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1662=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1663=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1664=(*sc_set0.UserUniforms).Port_Item7_N043;
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
l9_1668=(l9_1648*float2(l9_1652))*l9_1655;
float2 l9_1669=float2(0.0);
l9_1669=l9_1644+l9_1668;
float l9_1670=0.0;
l9_1670=l9_1651+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1671=float4(0.0);
int l9_1672=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
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
int l9_1678=glowTextureLayout_tmp;
int l9_1679=l9_1677;
float2 l9_1680=l9_1669;
bool l9_1681=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1682=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1683=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1684=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1685=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1686=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1687=(*sc_set0.UserUniforms).glowTextureBorderColor;
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
float4 l9_1759=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1757,level(l9_1758));
float4 l9_1760=l9_1759;
float4 l9_1761=l9_1760;
if (l9_1686)
{
l9_1761=mix(l9_1687,l9_1761,float4(l9_1690));
}
float4 l9_1762=l9_1761;
l9_1671=l9_1762;
float3 l9_1763=float3(0.0);
l9_1763=float3(l9_1671.x,l9_1671.y,l9_1671.z);
l9_1640=l9_1763;
l9_1638+=l9_1640;
param_44=l9_1638;
float3 l9_1764=param_44;
ssGlobals l9_1765=param_45;
float3 l9_1766=float3(0.0);
l9_1765.Loop_Index_ID0=4.0;
l9_1765.Loop_Ratio_ID0=0.57142901;
float2 l9_1767=float2(0.0);
float2 l9_1768=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1767=l9_1768;
float2 l9_1769=float2(0.0);
l9_1769=l9_1765.gScreenCoord;
float2 l9_1770=float2(0.0);
l9_1770=l9_1769;
float2 l9_1771=float2(0.0);
float2 l9_1772=(*sc_set0.UserUniforms).ratio;
l9_1771=l9_1772;
float2 l9_1773=float2(0.0);
l9_1773=l9_1767*l9_1771;
float2 l9_1774=float2(0.0);
l9_1774=l9_1773;
float l9_1775=0.0;
float l9_1776=(*sc_set0.UserUniforms).blurSize;
l9_1775=l9_1776;
float l9_1777=0.0;
l9_1777=l9_1775;
float l9_1778=0.0;
l9_1778=exp2(l9_1777);
float l9_1779=0.0;
l9_1779=l9_1765.Loop_Index_ID0;
float l9_1780=0.0;
l9_1780=mod(l9_1779,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1781=float2(0.0);
float l9_1782=l9_1780;
float2 l9_1783=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1784=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1785=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1786=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1787=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1788=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1789=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1790=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1791[8];
l9_1791[0]=l9_1783;
l9_1791[1]=l9_1784;
l9_1791[2]=l9_1785;
l9_1791[3]=l9_1786;
l9_1791[4]=l9_1787;
l9_1791[5]=l9_1788;
l9_1791[6]=l9_1789;
l9_1791[7]=l9_1790;
int l9_1792=int(fast::clamp(l9_1782+9.9999997e-05,0.0,7.0));
float2 l9_1793=l9_1791[l9_1792];
l9_1781=l9_1793;
float2 l9_1794=float2(0.0);
l9_1794=(l9_1774*float2(l9_1778))*l9_1781;
float2 l9_1795=float2(0.0);
l9_1795=l9_1770+l9_1794;
float l9_1796=0.0;
l9_1796=l9_1777+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1797=float4(0.0);
int l9_1798=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1799=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1799=0;
}
else
{
l9_1799=in.varStereoViewID;
}
int l9_1800=l9_1799;
l9_1798=1-l9_1800;
}
else
{
int l9_1801=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1801=0;
}
else
{
l9_1801=in.varStereoViewID;
}
int l9_1802=l9_1801;
l9_1798=l9_1802;
}
int l9_1803=l9_1798;
int l9_1804=glowTextureLayout_tmp;
int l9_1805=l9_1803;
float2 l9_1806=l9_1795;
bool l9_1807=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1808=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1809=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1810=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1811=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1812=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1813=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1814=l9_1796;
bool l9_1815=l9_1812&&(!l9_1810);
float l9_1816=1.0;
float l9_1817=l9_1806.x;
int l9_1818=l9_1809.x;
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
l9_1806.x=l9_1817;
float l9_1822=l9_1806.y;
int l9_1823=l9_1809.y;
if (l9_1823==1)
{
l9_1822=fract(l9_1822);
}
else
{
if (l9_1823==2)
{
float l9_1824=fract(l9_1822);
float l9_1825=l9_1822-l9_1824;
float l9_1826=step(0.25,fract(l9_1825*0.5));
l9_1822=mix(l9_1824,1.0-l9_1824,fast::clamp(l9_1826,0.0,1.0));
}
}
l9_1806.y=l9_1822;
if (l9_1810)
{
bool l9_1827=l9_1812;
bool l9_1828;
if (l9_1827)
{
l9_1828=l9_1809.x==3;
}
else
{
l9_1828=l9_1827;
}
float l9_1829=l9_1806.x;
float l9_1830=l9_1811.x;
float l9_1831=l9_1811.z;
bool l9_1832=l9_1828;
float l9_1833=l9_1816;
float l9_1834=fast::clamp(l9_1829,l9_1830,l9_1831);
float l9_1835=step(abs(l9_1829-l9_1834),9.9999997e-06);
l9_1833*=(l9_1835+((1.0-float(l9_1832))*(1.0-l9_1835)));
l9_1829=l9_1834;
l9_1806.x=l9_1829;
l9_1816=l9_1833;
bool l9_1836=l9_1812;
bool l9_1837;
if (l9_1836)
{
l9_1837=l9_1809.y==3;
}
else
{
l9_1837=l9_1836;
}
float l9_1838=l9_1806.y;
float l9_1839=l9_1811.y;
float l9_1840=l9_1811.w;
bool l9_1841=l9_1837;
float l9_1842=l9_1816;
float l9_1843=fast::clamp(l9_1838,l9_1839,l9_1840);
float l9_1844=step(abs(l9_1838-l9_1843),9.9999997e-06);
l9_1842*=(l9_1844+((1.0-float(l9_1841))*(1.0-l9_1844)));
l9_1838=l9_1843;
l9_1806.y=l9_1838;
l9_1816=l9_1842;
}
float2 l9_1845=l9_1806;
bool l9_1846=l9_1807;
float3x3 l9_1847=l9_1808;
if (l9_1846)
{
l9_1845=float2((l9_1847*float3(l9_1845,1.0)).xy);
}
float2 l9_1848=l9_1845;
float2 l9_1849=l9_1848;
float2 l9_1850=l9_1849;
l9_1806=l9_1850;
float l9_1851=l9_1806.x;
int l9_1852=l9_1809.x;
bool l9_1853=l9_1815;
float l9_1854=l9_1816;
if ((l9_1852==0)||(l9_1852==3))
{
float l9_1855=l9_1851;
float l9_1856=0.0;
float l9_1857=1.0;
bool l9_1858=l9_1853;
float l9_1859=l9_1854;
float l9_1860=fast::clamp(l9_1855,l9_1856,l9_1857);
float l9_1861=step(abs(l9_1855-l9_1860),9.9999997e-06);
l9_1859*=(l9_1861+((1.0-float(l9_1858))*(1.0-l9_1861)));
l9_1855=l9_1860;
l9_1851=l9_1855;
l9_1854=l9_1859;
}
l9_1806.x=l9_1851;
l9_1816=l9_1854;
float l9_1862=l9_1806.y;
int l9_1863=l9_1809.y;
bool l9_1864=l9_1815;
float l9_1865=l9_1816;
if ((l9_1863==0)||(l9_1863==3))
{
float l9_1866=l9_1862;
float l9_1867=0.0;
float l9_1868=1.0;
bool l9_1869=l9_1864;
float l9_1870=l9_1865;
float l9_1871=fast::clamp(l9_1866,l9_1867,l9_1868);
float l9_1872=step(abs(l9_1866-l9_1871),9.9999997e-06);
l9_1870*=(l9_1872+((1.0-float(l9_1869))*(1.0-l9_1872)));
l9_1866=l9_1871;
l9_1862=l9_1866;
l9_1865=l9_1870;
}
l9_1806.y=l9_1862;
l9_1816=l9_1865;
float2 l9_1873=l9_1806;
int l9_1874=l9_1804;
int l9_1875=l9_1805;
float l9_1876=l9_1814;
float2 l9_1877=l9_1873;
int l9_1878=l9_1874;
int l9_1879=l9_1875;
float3 l9_1880=float3(0.0);
if (l9_1878==0)
{
l9_1880=float3(l9_1877,0.0);
}
else
{
if (l9_1878==1)
{
l9_1880=float3(l9_1877.x,(l9_1877.y*0.5)+(0.5-(float(l9_1879)*0.5)),0.0);
}
else
{
l9_1880=float3(l9_1877,float(l9_1879));
}
}
float3 l9_1881=l9_1880;
float3 l9_1882=l9_1881;
float2 l9_1883=l9_1882.xy;
float l9_1884=l9_1876;
float4 l9_1885=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_1883,level(l9_1884));
float4 l9_1886=l9_1885;
float4 l9_1887=l9_1886;
if (l9_1812)
{
l9_1887=mix(l9_1813,l9_1887,float4(l9_1816));
}
float4 l9_1888=l9_1887;
l9_1797=l9_1888;
float3 l9_1889=float3(0.0);
l9_1889=float3(l9_1797.x,l9_1797.y,l9_1797.z);
l9_1766=l9_1889;
l9_1764+=l9_1766;
param_44=l9_1764;
float3 l9_1890=param_44;
ssGlobals l9_1891=param_45;
float3 l9_1892=float3(0.0);
l9_1891.Loop_Index_ID0=5.0;
l9_1891.Loop_Ratio_ID0=0.71428603;
float2 l9_1893=float2(0.0);
float2 l9_1894=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_1893=l9_1894;
float2 l9_1895=float2(0.0);
l9_1895=l9_1891.gScreenCoord;
float2 l9_1896=float2(0.0);
l9_1896=l9_1895;
float2 l9_1897=float2(0.0);
float2 l9_1898=(*sc_set0.UserUniforms).ratio;
l9_1897=l9_1898;
float2 l9_1899=float2(0.0);
l9_1899=l9_1893*l9_1897;
float2 l9_1900=float2(0.0);
l9_1900=l9_1899;
float l9_1901=0.0;
float l9_1902=(*sc_set0.UserUniforms).blurSize;
l9_1901=l9_1902;
float l9_1903=0.0;
l9_1903=l9_1901;
float l9_1904=0.0;
l9_1904=exp2(l9_1903);
float l9_1905=0.0;
l9_1905=l9_1891.Loop_Index_ID0;
float l9_1906=0.0;
l9_1906=mod(l9_1905,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_1907=float2(0.0);
float l9_1908=l9_1906;
float2 l9_1909=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_1910=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_1911=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_1912=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_1913=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_1914=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_1915=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_1916=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_1917[8];
l9_1917[0]=l9_1909;
l9_1917[1]=l9_1910;
l9_1917[2]=l9_1911;
l9_1917[3]=l9_1912;
l9_1917[4]=l9_1913;
l9_1917[5]=l9_1914;
l9_1917[6]=l9_1915;
l9_1917[7]=l9_1916;
int l9_1918=int(fast::clamp(l9_1908+9.9999997e-05,0.0,7.0));
float2 l9_1919=l9_1917[l9_1918];
l9_1907=l9_1919;
float2 l9_1920=float2(0.0);
l9_1920=(l9_1900*float2(l9_1904))*l9_1907;
float2 l9_1921=float2(0.0);
l9_1921=l9_1896+l9_1920;
float l9_1922=0.0;
l9_1922=l9_1903+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_1923=float4(0.0);
int l9_1924=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_1925=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1925=0;
}
else
{
l9_1925=in.varStereoViewID;
}
int l9_1926=l9_1925;
l9_1924=1-l9_1926;
}
else
{
int l9_1927=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_1927=0;
}
else
{
l9_1927=in.varStereoViewID;
}
int l9_1928=l9_1927;
l9_1924=l9_1928;
}
int l9_1929=l9_1924;
int l9_1930=glowTextureLayout_tmp;
int l9_1931=l9_1929;
float2 l9_1932=l9_1921;
bool l9_1933=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_1934=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_1935=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_1936=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_1937=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_1938=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_1939=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_1940=l9_1922;
bool l9_1941=l9_1938&&(!l9_1936);
float l9_1942=1.0;
float l9_1943=l9_1932.x;
int l9_1944=l9_1935.x;
if (l9_1944==1)
{
l9_1943=fract(l9_1943);
}
else
{
if (l9_1944==2)
{
float l9_1945=fract(l9_1943);
float l9_1946=l9_1943-l9_1945;
float l9_1947=step(0.25,fract(l9_1946*0.5));
l9_1943=mix(l9_1945,1.0-l9_1945,fast::clamp(l9_1947,0.0,1.0));
}
}
l9_1932.x=l9_1943;
float l9_1948=l9_1932.y;
int l9_1949=l9_1935.y;
if (l9_1949==1)
{
l9_1948=fract(l9_1948);
}
else
{
if (l9_1949==2)
{
float l9_1950=fract(l9_1948);
float l9_1951=l9_1948-l9_1950;
float l9_1952=step(0.25,fract(l9_1951*0.5));
l9_1948=mix(l9_1950,1.0-l9_1950,fast::clamp(l9_1952,0.0,1.0));
}
}
l9_1932.y=l9_1948;
if (l9_1936)
{
bool l9_1953=l9_1938;
bool l9_1954;
if (l9_1953)
{
l9_1954=l9_1935.x==3;
}
else
{
l9_1954=l9_1953;
}
float l9_1955=l9_1932.x;
float l9_1956=l9_1937.x;
float l9_1957=l9_1937.z;
bool l9_1958=l9_1954;
float l9_1959=l9_1942;
float l9_1960=fast::clamp(l9_1955,l9_1956,l9_1957);
float l9_1961=step(abs(l9_1955-l9_1960),9.9999997e-06);
l9_1959*=(l9_1961+((1.0-float(l9_1958))*(1.0-l9_1961)));
l9_1955=l9_1960;
l9_1932.x=l9_1955;
l9_1942=l9_1959;
bool l9_1962=l9_1938;
bool l9_1963;
if (l9_1962)
{
l9_1963=l9_1935.y==3;
}
else
{
l9_1963=l9_1962;
}
float l9_1964=l9_1932.y;
float l9_1965=l9_1937.y;
float l9_1966=l9_1937.w;
bool l9_1967=l9_1963;
float l9_1968=l9_1942;
float l9_1969=fast::clamp(l9_1964,l9_1965,l9_1966);
float l9_1970=step(abs(l9_1964-l9_1969),9.9999997e-06);
l9_1968*=(l9_1970+((1.0-float(l9_1967))*(1.0-l9_1970)));
l9_1964=l9_1969;
l9_1932.y=l9_1964;
l9_1942=l9_1968;
}
float2 l9_1971=l9_1932;
bool l9_1972=l9_1933;
float3x3 l9_1973=l9_1934;
if (l9_1972)
{
l9_1971=float2((l9_1973*float3(l9_1971,1.0)).xy);
}
float2 l9_1974=l9_1971;
float2 l9_1975=l9_1974;
float2 l9_1976=l9_1975;
l9_1932=l9_1976;
float l9_1977=l9_1932.x;
int l9_1978=l9_1935.x;
bool l9_1979=l9_1941;
float l9_1980=l9_1942;
if ((l9_1978==0)||(l9_1978==3))
{
float l9_1981=l9_1977;
float l9_1982=0.0;
float l9_1983=1.0;
bool l9_1984=l9_1979;
float l9_1985=l9_1980;
float l9_1986=fast::clamp(l9_1981,l9_1982,l9_1983);
float l9_1987=step(abs(l9_1981-l9_1986),9.9999997e-06);
l9_1985*=(l9_1987+((1.0-float(l9_1984))*(1.0-l9_1987)));
l9_1981=l9_1986;
l9_1977=l9_1981;
l9_1980=l9_1985;
}
l9_1932.x=l9_1977;
l9_1942=l9_1980;
float l9_1988=l9_1932.y;
int l9_1989=l9_1935.y;
bool l9_1990=l9_1941;
float l9_1991=l9_1942;
if ((l9_1989==0)||(l9_1989==3))
{
float l9_1992=l9_1988;
float l9_1993=0.0;
float l9_1994=1.0;
bool l9_1995=l9_1990;
float l9_1996=l9_1991;
float l9_1997=fast::clamp(l9_1992,l9_1993,l9_1994);
float l9_1998=step(abs(l9_1992-l9_1997),9.9999997e-06);
l9_1996*=(l9_1998+((1.0-float(l9_1995))*(1.0-l9_1998)));
l9_1992=l9_1997;
l9_1988=l9_1992;
l9_1991=l9_1996;
}
l9_1932.y=l9_1988;
l9_1942=l9_1991;
float2 l9_1999=l9_1932;
int l9_2000=l9_1930;
int l9_2001=l9_1931;
float l9_2002=l9_1940;
float2 l9_2003=l9_1999;
int l9_2004=l9_2000;
int l9_2005=l9_2001;
float3 l9_2006=float3(0.0);
if (l9_2004==0)
{
l9_2006=float3(l9_2003,0.0);
}
else
{
if (l9_2004==1)
{
l9_2006=float3(l9_2003.x,(l9_2003.y*0.5)+(0.5-(float(l9_2005)*0.5)),0.0);
}
else
{
l9_2006=float3(l9_2003,float(l9_2005));
}
}
float3 l9_2007=l9_2006;
float3 l9_2008=l9_2007;
float2 l9_2009=l9_2008.xy;
float l9_2010=l9_2002;
float4 l9_2011=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_2009,level(l9_2010));
float4 l9_2012=l9_2011;
float4 l9_2013=l9_2012;
if (l9_1938)
{
l9_2013=mix(l9_1939,l9_2013,float4(l9_1942));
}
float4 l9_2014=l9_2013;
l9_1923=l9_2014;
float3 l9_2015=float3(0.0);
l9_2015=float3(l9_1923.x,l9_1923.y,l9_1923.z);
l9_1892=l9_2015;
l9_1890+=l9_1892;
param_44=l9_1890;
float3 l9_2016=param_44;
ssGlobals l9_2017=param_45;
float3 l9_2018=float3(0.0);
l9_2017.Loop_Index_ID0=6.0;
l9_2017.Loop_Ratio_ID0=0.85714298;
float2 l9_2019=float2(0.0);
float2 l9_2020=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_2019=l9_2020;
float2 l9_2021=float2(0.0);
l9_2021=l9_2017.gScreenCoord;
float2 l9_2022=float2(0.0);
l9_2022=l9_2021;
float2 l9_2023=float2(0.0);
float2 l9_2024=(*sc_set0.UserUniforms).ratio;
l9_2023=l9_2024;
float2 l9_2025=float2(0.0);
l9_2025=l9_2019*l9_2023;
float2 l9_2026=float2(0.0);
l9_2026=l9_2025;
float l9_2027=0.0;
float l9_2028=(*sc_set0.UserUniforms).blurSize;
l9_2027=l9_2028;
float l9_2029=0.0;
l9_2029=l9_2027;
float l9_2030=0.0;
l9_2030=exp2(l9_2029);
float l9_2031=0.0;
l9_2031=l9_2017.Loop_Index_ID0;
float l9_2032=0.0;
l9_2032=mod(l9_2031,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_2033=float2(0.0);
float l9_2034=l9_2032;
float2 l9_2035=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_2036=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_2037=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_2038=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_2039=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_2040=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_2041=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_2042=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_2043[8];
l9_2043[0]=l9_2035;
l9_2043[1]=l9_2036;
l9_2043[2]=l9_2037;
l9_2043[3]=l9_2038;
l9_2043[4]=l9_2039;
l9_2043[5]=l9_2040;
l9_2043[6]=l9_2041;
l9_2043[7]=l9_2042;
int l9_2044=int(fast::clamp(l9_2034+9.9999997e-05,0.0,7.0));
float2 l9_2045=l9_2043[l9_2044];
l9_2033=l9_2045;
float2 l9_2046=float2(0.0);
l9_2046=(l9_2026*float2(l9_2030))*l9_2033;
float2 l9_2047=float2(0.0);
l9_2047=l9_2022+l9_2046;
float l9_2048=0.0;
l9_2048=l9_2029+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_2049=float4(0.0);
int l9_2050=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_2051=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2051=0;
}
else
{
l9_2051=in.varStereoViewID;
}
int l9_2052=l9_2051;
l9_2050=1-l9_2052;
}
else
{
int l9_2053=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2053=0;
}
else
{
l9_2053=in.varStereoViewID;
}
int l9_2054=l9_2053;
l9_2050=l9_2054;
}
int l9_2055=l9_2050;
int l9_2056=glowTextureLayout_tmp;
int l9_2057=l9_2055;
float2 l9_2058=l9_2047;
bool l9_2059=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_2060=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_2061=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_2062=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_2063=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_2064=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_2065=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_2066=l9_2048;
bool l9_2067=l9_2064&&(!l9_2062);
float l9_2068=1.0;
float l9_2069=l9_2058.x;
int l9_2070=l9_2061.x;
if (l9_2070==1)
{
l9_2069=fract(l9_2069);
}
else
{
if (l9_2070==2)
{
float l9_2071=fract(l9_2069);
float l9_2072=l9_2069-l9_2071;
float l9_2073=step(0.25,fract(l9_2072*0.5));
l9_2069=mix(l9_2071,1.0-l9_2071,fast::clamp(l9_2073,0.0,1.0));
}
}
l9_2058.x=l9_2069;
float l9_2074=l9_2058.y;
int l9_2075=l9_2061.y;
if (l9_2075==1)
{
l9_2074=fract(l9_2074);
}
else
{
if (l9_2075==2)
{
float l9_2076=fract(l9_2074);
float l9_2077=l9_2074-l9_2076;
float l9_2078=step(0.25,fract(l9_2077*0.5));
l9_2074=mix(l9_2076,1.0-l9_2076,fast::clamp(l9_2078,0.0,1.0));
}
}
l9_2058.y=l9_2074;
if (l9_2062)
{
bool l9_2079=l9_2064;
bool l9_2080;
if (l9_2079)
{
l9_2080=l9_2061.x==3;
}
else
{
l9_2080=l9_2079;
}
float l9_2081=l9_2058.x;
float l9_2082=l9_2063.x;
float l9_2083=l9_2063.z;
bool l9_2084=l9_2080;
float l9_2085=l9_2068;
float l9_2086=fast::clamp(l9_2081,l9_2082,l9_2083);
float l9_2087=step(abs(l9_2081-l9_2086),9.9999997e-06);
l9_2085*=(l9_2087+((1.0-float(l9_2084))*(1.0-l9_2087)));
l9_2081=l9_2086;
l9_2058.x=l9_2081;
l9_2068=l9_2085;
bool l9_2088=l9_2064;
bool l9_2089;
if (l9_2088)
{
l9_2089=l9_2061.y==3;
}
else
{
l9_2089=l9_2088;
}
float l9_2090=l9_2058.y;
float l9_2091=l9_2063.y;
float l9_2092=l9_2063.w;
bool l9_2093=l9_2089;
float l9_2094=l9_2068;
float l9_2095=fast::clamp(l9_2090,l9_2091,l9_2092);
float l9_2096=step(abs(l9_2090-l9_2095),9.9999997e-06);
l9_2094*=(l9_2096+((1.0-float(l9_2093))*(1.0-l9_2096)));
l9_2090=l9_2095;
l9_2058.y=l9_2090;
l9_2068=l9_2094;
}
float2 l9_2097=l9_2058;
bool l9_2098=l9_2059;
float3x3 l9_2099=l9_2060;
if (l9_2098)
{
l9_2097=float2((l9_2099*float3(l9_2097,1.0)).xy);
}
float2 l9_2100=l9_2097;
float2 l9_2101=l9_2100;
float2 l9_2102=l9_2101;
l9_2058=l9_2102;
float l9_2103=l9_2058.x;
int l9_2104=l9_2061.x;
bool l9_2105=l9_2067;
float l9_2106=l9_2068;
if ((l9_2104==0)||(l9_2104==3))
{
float l9_2107=l9_2103;
float l9_2108=0.0;
float l9_2109=1.0;
bool l9_2110=l9_2105;
float l9_2111=l9_2106;
float l9_2112=fast::clamp(l9_2107,l9_2108,l9_2109);
float l9_2113=step(abs(l9_2107-l9_2112),9.9999997e-06);
l9_2111*=(l9_2113+((1.0-float(l9_2110))*(1.0-l9_2113)));
l9_2107=l9_2112;
l9_2103=l9_2107;
l9_2106=l9_2111;
}
l9_2058.x=l9_2103;
l9_2068=l9_2106;
float l9_2114=l9_2058.y;
int l9_2115=l9_2061.y;
bool l9_2116=l9_2067;
float l9_2117=l9_2068;
if ((l9_2115==0)||(l9_2115==3))
{
float l9_2118=l9_2114;
float l9_2119=0.0;
float l9_2120=1.0;
bool l9_2121=l9_2116;
float l9_2122=l9_2117;
float l9_2123=fast::clamp(l9_2118,l9_2119,l9_2120);
float l9_2124=step(abs(l9_2118-l9_2123),9.9999997e-06);
l9_2122*=(l9_2124+((1.0-float(l9_2121))*(1.0-l9_2124)));
l9_2118=l9_2123;
l9_2114=l9_2118;
l9_2117=l9_2122;
}
l9_2058.y=l9_2114;
l9_2068=l9_2117;
float2 l9_2125=l9_2058;
int l9_2126=l9_2056;
int l9_2127=l9_2057;
float l9_2128=l9_2066;
float2 l9_2129=l9_2125;
int l9_2130=l9_2126;
int l9_2131=l9_2127;
float3 l9_2132=float3(0.0);
if (l9_2130==0)
{
l9_2132=float3(l9_2129,0.0);
}
else
{
if (l9_2130==1)
{
l9_2132=float3(l9_2129.x,(l9_2129.y*0.5)+(0.5-(float(l9_2131)*0.5)),0.0);
}
else
{
l9_2132=float3(l9_2129,float(l9_2131));
}
}
float3 l9_2133=l9_2132;
float3 l9_2134=l9_2133;
float2 l9_2135=l9_2134.xy;
float l9_2136=l9_2128;
float4 l9_2137=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_2135,level(l9_2136));
float4 l9_2138=l9_2137;
float4 l9_2139=l9_2138;
if (l9_2064)
{
l9_2139=mix(l9_2065,l9_2139,float4(l9_2068));
}
float4 l9_2140=l9_2139;
l9_2049=l9_2140;
float3 l9_2141=float3(0.0);
l9_2141=float3(l9_2049.x,l9_2049.y,l9_2049.z);
l9_2018=l9_2141;
l9_2016+=l9_2018;
param_44=l9_2016;
float3 l9_2142=param_44;
ssGlobals l9_2143=param_45;
float3 l9_2144=float3(0.0);
l9_2143.Loop_Index_ID0=7.0;
l9_2143.Loop_Ratio_ID0=1.0;
float2 l9_2145=float2(0.0);
float2 l9_2146=(*sc_set0.UserUniforms).glowTextureSize.zw;
l9_2145=l9_2146;
float2 l9_2147=float2(0.0);
l9_2147=l9_2143.gScreenCoord;
float2 l9_2148=float2(0.0);
l9_2148=l9_2147;
float2 l9_2149=float2(0.0);
float2 l9_2150=(*sc_set0.UserUniforms).ratio;
l9_2149=l9_2150;
float2 l9_2151=float2(0.0);
l9_2151=l9_2145*l9_2149;
float2 l9_2152=float2(0.0);
l9_2152=l9_2151;
float l9_2153=0.0;
float l9_2154=(*sc_set0.UserUniforms).blurSize;
l9_2153=l9_2154;
float l9_2155=0.0;
l9_2155=l9_2153;
float l9_2156=0.0;
l9_2156=exp2(l9_2155);
float l9_2157=0.0;
l9_2157=l9_2143.Loop_Index_ID0;
float l9_2158=0.0;
l9_2158=mod(l9_2157,(*sc_set0.UserUniforms).Port_Input1_N041);
float2 l9_2159=float2(0.0);
float l9_2160=l9_2158;
float2 l9_2161=(*sc_set0.UserUniforms).Port_Item0_N043;
float2 l9_2162=(*sc_set0.UserUniforms).Port_Item1_N043;
float2 l9_2163=(*sc_set0.UserUniforms).Port_Item2_N043;
float2 l9_2164=(*sc_set0.UserUniforms).Port_Item3_N043;
float2 l9_2165=(*sc_set0.UserUniforms).Port_Item4_N043;
float2 l9_2166=(*sc_set0.UserUniforms).Port_Item5_N043;
float2 l9_2167=(*sc_set0.UserUniforms).Port_Item6_N043;
float2 l9_2168=(*sc_set0.UserUniforms).Port_Item7_N043;
float2 l9_2169[8];
l9_2169[0]=l9_2161;
l9_2169[1]=l9_2162;
l9_2169[2]=l9_2163;
l9_2169[3]=l9_2164;
l9_2169[4]=l9_2165;
l9_2169[5]=l9_2166;
l9_2169[6]=l9_2167;
l9_2169[7]=l9_2168;
int l9_2170=int(fast::clamp(l9_2160+9.9999997e-05,0.0,7.0));
float2 l9_2171=l9_2169[l9_2170];
l9_2159=l9_2171;
float2 l9_2172=float2(0.0);
l9_2172=(l9_2152*float2(l9_2156))*l9_2159;
float2 l9_2173=float2(0.0);
l9_2173=l9_2148+l9_2172;
float l9_2174=0.0;
l9_2174=l9_2155+(*sc_set0.UserUniforms).Port_Input1_N036;
float4 l9_2175=float4(0.0);
int l9_2176=0;
if ((int(glowTextureHasSwappedViews_tmp)!=0))
{
int l9_2177=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2177=0;
}
else
{
l9_2177=in.varStereoViewID;
}
int l9_2178=l9_2177;
l9_2176=1-l9_2178;
}
else
{
int l9_2179=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2179=0;
}
else
{
l9_2179=in.varStereoViewID;
}
int l9_2180=l9_2179;
l9_2176=l9_2180;
}
int l9_2181=l9_2176;
int l9_2182=glowTextureLayout_tmp;
int l9_2183=l9_2181;
float2 l9_2184=l9_2173;
bool l9_2185=(int(SC_USE_UV_TRANSFORM_glowTexture_tmp)!=0);
float3x3 l9_2186=(*sc_set0.UserUniforms).glowTextureTransform;
int2 l9_2187=int2(SC_SOFTWARE_WRAP_MODE_U_glowTexture_tmp,SC_SOFTWARE_WRAP_MODE_V_glowTexture_tmp);
bool l9_2188=(int(SC_USE_UV_MIN_MAX_glowTexture_tmp)!=0);
float4 l9_2189=(*sc_set0.UserUniforms).glowTextureUvMinMax;
bool l9_2190=(int(SC_USE_CLAMP_TO_BORDER_glowTexture_tmp)!=0);
float4 l9_2191=(*sc_set0.UserUniforms).glowTextureBorderColor;
float l9_2192=l9_2174;
bool l9_2193=l9_2190&&(!l9_2188);
float l9_2194=1.0;
float l9_2195=l9_2184.x;
int l9_2196=l9_2187.x;
if (l9_2196==1)
{
l9_2195=fract(l9_2195);
}
else
{
if (l9_2196==2)
{
float l9_2197=fract(l9_2195);
float l9_2198=l9_2195-l9_2197;
float l9_2199=step(0.25,fract(l9_2198*0.5));
l9_2195=mix(l9_2197,1.0-l9_2197,fast::clamp(l9_2199,0.0,1.0));
}
}
l9_2184.x=l9_2195;
float l9_2200=l9_2184.y;
int l9_2201=l9_2187.y;
if (l9_2201==1)
{
l9_2200=fract(l9_2200);
}
else
{
if (l9_2201==2)
{
float l9_2202=fract(l9_2200);
float l9_2203=l9_2200-l9_2202;
float l9_2204=step(0.25,fract(l9_2203*0.5));
l9_2200=mix(l9_2202,1.0-l9_2202,fast::clamp(l9_2204,0.0,1.0));
}
}
l9_2184.y=l9_2200;
if (l9_2188)
{
bool l9_2205=l9_2190;
bool l9_2206;
if (l9_2205)
{
l9_2206=l9_2187.x==3;
}
else
{
l9_2206=l9_2205;
}
float l9_2207=l9_2184.x;
float l9_2208=l9_2189.x;
float l9_2209=l9_2189.z;
bool l9_2210=l9_2206;
float l9_2211=l9_2194;
float l9_2212=fast::clamp(l9_2207,l9_2208,l9_2209);
float l9_2213=step(abs(l9_2207-l9_2212),9.9999997e-06);
l9_2211*=(l9_2213+((1.0-float(l9_2210))*(1.0-l9_2213)));
l9_2207=l9_2212;
l9_2184.x=l9_2207;
l9_2194=l9_2211;
bool l9_2214=l9_2190;
bool l9_2215;
if (l9_2214)
{
l9_2215=l9_2187.y==3;
}
else
{
l9_2215=l9_2214;
}
float l9_2216=l9_2184.y;
float l9_2217=l9_2189.y;
float l9_2218=l9_2189.w;
bool l9_2219=l9_2215;
float l9_2220=l9_2194;
float l9_2221=fast::clamp(l9_2216,l9_2217,l9_2218);
float l9_2222=step(abs(l9_2216-l9_2221),9.9999997e-06);
l9_2220*=(l9_2222+((1.0-float(l9_2219))*(1.0-l9_2222)));
l9_2216=l9_2221;
l9_2184.y=l9_2216;
l9_2194=l9_2220;
}
float2 l9_2223=l9_2184;
bool l9_2224=l9_2185;
float3x3 l9_2225=l9_2186;
if (l9_2224)
{
l9_2223=float2((l9_2225*float3(l9_2223,1.0)).xy);
}
float2 l9_2226=l9_2223;
float2 l9_2227=l9_2226;
float2 l9_2228=l9_2227;
l9_2184=l9_2228;
float l9_2229=l9_2184.x;
int l9_2230=l9_2187.x;
bool l9_2231=l9_2193;
float l9_2232=l9_2194;
if ((l9_2230==0)||(l9_2230==3))
{
float l9_2233=l9_2229;
float l9_2234=0.0;
float l9_2235=1.0;
bool l9_2236=l9_2231;
float l9_2237=l9_2232;
float l9_2238=fast::clamp(l9_2233,l9_2234,l9_2235);
float l9_2239=step(abs(l9_2233-l9_2238),9.9999997e-06);
l9_2237*=(l9_2239+((1.0-float(l9_2236))*(1.0-l9_2239)));
l9_2233=l9_2238;
l9_2229=l9_2233;
l9_2232=l9_2237;
}
l9_2184.x=l9_2229;
l9_2194=l9_2232;
float l9_2240=l9_2184.y;
int l9_2241=l9_2187.y;
bool l9_2242=l9_2193;
float l9_2243=l9_2194;
if ((l9_2241==0)||(l9_2241==3))
{
float l9_2244=l9_2240;
float l9_2245=0.0;
float l9_2246=1.0;
bool l9_2247=l9_2242;
float l9_2248=l9_2243;
float l9_2249=fast::clamp(l9_2244,l9_2245,l9_2246);
float l9_2250=step(abs(l9_2244-l9_2249),9.9999997e-06);
l9_2248*=(l9_2250+((1.0-float(l9_2247))*(1.0-l9_2250)));
l9_2244=l9_2249;
l9_2240=l9_2244;
l9_2243=l9_2248;
}
l9_2184.y=l9_2240;
l9_2194=l9_2243;
float2 l9_2251=l9_2184;
int l9_2252=l9_2182;
int l9_2253=l9_2183;
float l9_2254=l9_2192;
float2 l9_2255=l9_2251;
int l9_2256=l9_2252;
int l9_2257=l9_2253;
float3 l9_2258=float3(0.0);
if (l9_2256==0)
{
l9_2258=float3(l9_2255,0.0);
}
else
{
if (l9_2256==1)
{
l9_2258=float3(l9_2255.x,(l9_2255.y*0.5)+(0.5-(float(l9_2257)*0.5)),0.0);
}
else
{
l9_2258=float3(l9_2255,float(l9_2257));
}
}
float3 l9_2259=l9_2258;
float3 l9_2260=l9_2259;
float2 l9_2261=l9_2260.xy;
float l9_2262=l9_2254;
float4 l9_2263=sc_set0.glowTexture.sample(sc_set0.glowTextureSmpSC,l9_2261,level(l9_2262));
float4 l9_2264=l9_2263;
float4 l9_2265=l9_2264;
if (l9_2190)
{
l9_2265=mix(l9_2191,l9_2265,float4(l9_2194));
}
float4 l9_2266=l9_2265;
l9_2175=l9_2266;
float3 l9_2267=float3(0.0);
l9_2267=float3(l9_2175.x,l9_2175.y,l9_2175.z);
l9_2144=l9_2267;
l9_2142+=l9_2144;
param_44=l9_2142;
param_44/=float3(8.0);
Output_N51=param_44;
float3 Output_N52=float3(0.0);
Output_N52=mix(Output_N74,Output_N51,float3((*sc_set0.UserUniforms).Port_Input2_N052));
float3 Export_N53=float3(0.0);
Export_N53=Output_N52;
float3 Output_N30=float3(0.0);
Output_N30=(Export_N106+Export_N27)+Export_N53;
float Output_N58=0.0;
float param_46=(*sc_set0.UserUniforms).luminance;
Output_N58=param_46;
float3 Output_N11=float3(0.0);
Output_N11=Output_N30*float3(Output_N58);
float4 Output_N75=float4(0.0);
Output_N75=float4(Output_N11.x,Output_N11.y,Output_N11.z,1.0);
FinalColor=Output_N75;
float param_47=FinalColor.w;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (param_47<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_2268=gl_FragCoord;
float2 l9_2269=floor(mod(l9_2268.xy,float2(4.0)));
float l9_2270=(mod(dot(l9_2269,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (param_47<l9_2270)
{
discard_fragment();
}
}
float4 param_48=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_2271=param_48;
float4 l9_2272=l9_2271;
float l9_2273=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2273=l9_2272.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_2273=fast::clamp(l9_2272.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2273=fast::clamp(dot(l9_2272.xyz,float3(l9_2272.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_2273=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_2273=(1.0-dot(l9_2272.xyz,float3(0.33333001)))*l9_2272.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2273=(1.0-fast::clamp(dot(l9_2272.xyz,float3(1.0)),0.0,1.0))*l9_2272.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_2273=fast::clamp(dot(l9_2272.xyz,float3(1.0)),0.0,1.0)*l9_2272.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_2273=fast::clamp(dot(l9_2272.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_2273=fast::clamp(dot(l9_2272.xyz,float3(1.0)),0.0,1.0)*l9_2272.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_2273=dot(l9_2272.xyz,float3(0.33333001))*l9_2272.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_2273=1.0-fast::clamp(dot(l9_2272.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_2273=fast::clamp(dot(l9_2272.xyz,float3(1.0)),0.0,1.0);
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
float l9_2274=l9_2273;
float l9_2275=l9_2274;
float l9_2276=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_2275;
float3 l9_2277=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_2271.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_2278=float4(l9_2277.x,l9_2277.y,l9_2277.z,l9_2276);
param_48=l9_2278;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_48=float4(param_48.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_2279=param_48;
float4 l9_2280=float4(0.0);
float4 l9_2281=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_2282=out.FragColor0;
float4 l9_2283=l9_2282;
if ((int(sc_UseFramebufferFetchMarker_tmp)!=0))
{
l9_2283.x+=(*sc_set0.UserUniforms)._sc_framebufferFetchMarker;
}
float4 l9_2284=l9_2283;
l9_2281=l9_2284;
}
else
{
float4 l9_2285=gl_FragCoord;
float2 l9_2286=l9_2285.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_2287=l9_2286;
float2 l9_2288=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_2289=1;
int l9_2290=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2290=0;
}
else
{
l9_2290=in.varStereoViewID;
}
int l9_2291=l9_2290;
int l9_2292=l9_2291;
float3 l9_2293=float3(l9_2287,0.0);
int l9_2294=l9_2289;
int l9_2295=l9_2292;
if (l9_2294==1)
{
l9_2293.y=((2.0*l9_2293.y)+float(l9_2295))-1.0;
}
float2 l9_2296=l9_2293.xy;
l9_2288=l9_2296;
}
else
{
l9_2288=l9_2287;
}
float2 l9_2297=l9_2288;
float2 l9_2298=l9_2297;
float2 l9_2299=l9_2298;
int l9_2300=0;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_2301=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2301=0;
}
else
{
l9_2301=in.varStereoViewID;
}
int l9_2302=l9_2301;
l9_2300=1-l9_2302;
}
else
{
int l9_2303=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_2303=0;
}
else
{
l9_2303=in.varStereoViewID;
}
int l9_2304=l9_2303;
l9_2300=l9_2304;
}
int l9_2305=l9_2300;
float2 l9_2306=l9_2299;
int l9_2307=l9_2305;
float2 l9_2308=l9_2306;
int l9_2309=l9_2307;
float l9_2310=0.0;
float4 l9_2311=float4(0.0);
float2 l9_2312=l9_2308;
int l9_2313=sc_ScreenTextureLayout_tmp;
int l9_2314=l9_2309;
float l9_2315=l9_2310;
float2 l9_2316=l9_2312;
int l9_2317=l9_2313;
int l9_2318=l9_2314;
float3 l9_2319=float3(0.0);
if (l9_2317==0)
{
l9_2319=float3(l9_2316,0.0);
}
else
{
if (l9_2317==1)
{
l9_2319=float3(l9_2316.x,(l9_2316.y*0.5)+(0.5-(float(l9_2318)*0.5)),0.0);
}
else
{
l9_2319=float3(l9_2316,float(l9_2318));
}
}
float3 l9_2320=l9_2319;
float3 l9_2321=l9_2320;
float2 l9_2322=l9_2321.xy;
float l9_2323=l9_2315;
float4 l9_2324=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_2322,bias(l9_2323));
float4 l9_2325=l9_2324;
l9_2311=l9_2325;
float4 l9_2326=l9_2311;
float4 l9_2327=l9_2326;
float4 l9_2328=l9_2327;
l9_2281=l9_2328;
}
float4 l9_2329=l9_2281;
float4 l9_2330=l9_2329;
float3 l9_2331=l9_2330.xyz;
float3 l9_2332=l9_2331;
float3 l9_2333=l9_2279.xyz;
float3 l9_2334=definedBlend(l9_2332,l9_2333,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_2280=float4(l9_2334.x,l9_2334.y,l9_2334.z,l9_2280.w);
float3 l9_2335=mix(l9_2331,l9_2280.xyz,float3(l9_2279.w));
l9_2280=float4(l9_2335.x,l9_2335.y,l9_2335.z,l9_2280.w);
l9_2280.w=1.0;
float4 l9_2336=l9_2280;
param_48=l9_2336;
}
else
{
float4 l9_2337=param_48;
float4 l9_2338=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_2338=float4(mix(float3(1.0),l9_2337.xyz,float3(l9_2337.w)),l9_2337.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_2339=l9_2337.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_2339=fast::clamp(l9_2339,0.0,1.0);
}
l9_2338=float4(l9_2337.xyz*l9_2339,l9_2339);
}
else
{
l9_2338=l9_2337;
}
}
float4 l9_2340=l9_2338;
param_48=l9_2340;
}
}
}
float4 l9_2341=param_48;
FinalColor=l9_2341;
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
float4 l9_2342=float4(0.0);
if ((int(sc_ShaderComplexityAnalyzer_tmp)!=0))
{
l9_2342=float4((*sc_set0.UserUniforms).shaderComplexityValue/255.0,0.0,0.0,1.0);
}
else
{
l9_2342=float4(0.0);
}
float4 l9_2343=l9_2342;
float4 Cost=l9_2343;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_49=in.varPos;
float4 param_50=FinalColor;
FinalColor=outputMotionVectorsIfNeeded(param_49,param_50,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_51=FinalColor;
float4 l9_2344=param_51;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_2344.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_2344;
return out;
}
} // FRAGMENT SHADER
