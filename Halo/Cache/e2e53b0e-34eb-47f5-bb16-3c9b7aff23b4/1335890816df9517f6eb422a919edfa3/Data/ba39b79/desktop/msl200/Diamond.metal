#include <metal_stdlib>
#include <simd/simd.h>
using namespace metal;
#if 0
NGS_BACKEND_SHADER_FLAGS_BEGIN__
NGS_FLAG_IS_NORMAL_MAP normalTex
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
//output uvec4 position_and_mask 0
//output uvec4 normal_and_more 1
//sampler sampler backgroundSmpSC 0:30
//sampler sampler baseTexSmpSC 0:31
//sampler sampler intensityTextureSmpSC 0:32
//sampler sampler normalTexSmpSC 0:33
//sampler sampler opacityTexSmpSC 0:34
//sampler sampler roughnessTexSmpSC 0:35
//sampler sampler sc_EnvmapSpecularSmpSC 0:37
//sampler sampler sc_RayTracedAoTextureSmpSC 0:39
//sampler sampler sc_RayTracedReflectionTextureSmpSC 0:41
//sampler sampler sc_RayTracedShadowTextureSmpSC 0:42
//sampler sampler sc_SSAOTextureSmpSC 0:43
//sampler sampler sc_ScreenTextureSmpSC 0:44
//sampler sampler sc_ShadowTextureSmpSC 0:45
//sampler sampler z_hitIdAndBarycentricSmp 0:47
//sampler sampler z_rayDirectionsSmpSC 0:48
//texture texture2D background 0:4:0:30
//texture texture2D baseTex 0:5:0:31
//texture texture2D intensityTexture 0:6:0:32
//texture texture2D normalTex 0:7:0:33
//texture texture2D opacityTex 0:8:0:34
//texture texture2D roughnessTex 0:9:0:35
//texture texture2D sc_EnvmapSpecular 0:11:0:37
//texture texture2D sc_RayTracedAoTexture 0:20:0:39
//texture texture2D sc_RayTracedReflectionTexture 0:22:0:41
//texture texture2D sc_RayTracedShadowTexture 0:23:0:42
//texture texture2D sc_SSAOTexture 0:24:0:43
//texture texture2D sc_ScreenTexture 0:25:0:44
//texture texture2D sc_ShadowTexture 0:26:0:45
//texture utexture2D z_hitIdAndBarycentric 0:28:0:47
//texture texture2D z_rayDirections 0:29:0:48
//ubo float sc_BonesUBO 0:3:96 {
//sc_Bone_t sc_Bones 0:[]:96
//float4 sc_Bones.boneMatrix 0:[3]:16
//float4 sc_Bones.normalMatrix 48:[3]:16
//}
//ubo int UserUniforms 0:49:5424 {
//sc_PointLight_t sc_PointLights 0:[3]:80
//bool sc_PointLights.falloffEnabled 0
//float sc_PointLights.falloffEndDistance 4
//float sc_PointLights.negRcpFalloffEndDistance4 8
//float sc_PointLights.angleScale 12
//float sc_PointLights.angleOffset 16
//float3 sc_PointLights.direction 32
//float3 sc_PointLights.position 48
//float4 sc_PointLights.color 64
//sc_DirectionalLight_t sc_DirectionalLights 240:[5]:32
//float3 sc_DirectionalLights.direction 0
//float4 sc_DirectionalLights.color 16
//sc_LightEstimationData_t sc_LightEstimationData 496
//sc_SphericalGaussianLight_t sc_LightEstimationData.sg 0:[12]:48
//float3 sc_LightEstimationData.sg.color 0
//float sc_LightEstimationData.sg.sharpness 16
//float3 sc_LightEstimationData.sg.axis 32
//float3 sc_LightEstimationData.ambientLight 576
//float4 sc_EnvmapSpecularSize 1136
//float3 sc_EnvmapRotation 1184
//float sc_EnvmapExposure 1200
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
//bool receivesRayTracedReflections 3824
//bool isProxyMode 3828
//bool receivesRayTracedShadows 3832
//bool receivesRayTracedAo 3840
//float receiver_mask 4048
//float3 OriginNormalizationScale 4064
//float3 OriginNormalizationOffset 4096
//int receiverId 4112
//int instance_id 4116
//int lray_triangles_last 4120
//bool noEarlyZ 4124
//bool has_animated_pn 4128
//int emitter_stride 4132
//int proxy_offset_position 4136
//int proxy_offset_normal 4140
//int proxy_offset_tangent 4144
//int proxy_offset_color 4148
//int proxy_offset_texture0 4152
//int proxy_offset_texture1 4156
//int proxy_offset_texture2 4160
//int proxy_offset_texture3 4164
//int proxy_format_position 4168
//int proxy_format_normal 4172
//int proxy_format_tangent 4176
//int proxy_format_color 4180
//int proxy_format_texture0 4184
//int proxy_format_texture1 4188
//int proxy_format_texture2 4192
//int proxy_format_texture3 4196
//float correctedIntensity 4256
//float3x3 intensityTextureTransform 4320
//float4 intensityTextureUvMinMax 4368
//float4 intensityTextureBorderColor 4384
//int overrideTimeEnabled 4412
//float overrideTimeElapsed 4416
//float overrideTimeDelta 4420
//int PreviewEnabled 4424
//float alphaTestThreshold 4432
//float3x3 baseTexTransform 4496
//float4 baseTexUvMinMax 4544
//float4 baseTexBorderColor 4560
//float3 baseColor 4576
//float3x3 backgroundTransform 4640
//float4 backgroundUvMinMax 4688
//float4 backgroundBorderColor 4704
//float3x3 normalTexTransform 4768
//float4 normalTexUvMinMax 4816
//float4 normalTexBorderColor 4832
//float indexOfRefraction 4848
//float intensity 4852
//float chromaticAberration 4856
//float thickness 4860
//float exponent 4864
//float darken 4868
//float3x3 opacityTexTransform 4928
//float4 opacityTexUvMinMax 4976
//float4 opacityTexBorderColor 4992
//float3x3 roughnessTexTransform 5056
//float4 roughnessTexUvMinMax 5104
//float4 roughnessTexBorderColor 5120
//float metallic 5136
//float roughness 5140
//float3 Port_Default_N098 5152
//float3 Port_Default_N097 5168
//float Port_Input0_N005 5232
//float Port_Input2_N012 5296
//float Port_Input0_N025 5308
//float Port_Default_N085 5328
//float3 Port_Albedo_N006 5344
//float Port_Opacity_N006 5360
//float3 Port_Emissive_N006 5376
//float3 Port_Default_N083 5392
//float Port_Value3_N100 5408
//float depthRef 5412
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
//spec_const bool SC_USE_CLAMP_TO_BORDER_baseTex 32
//spec_const bool SC_USE_CLAMP_TO_BORDER_intensityTexture 33
//spec_const bool SC_USE_CLAMP_TO_BORDER_normalTex 34
//spec_const bool SC_USE_CLAMP_TO_BORDER_opacityTex 35
//spec_const bool SC_USE_CLAMP_TO_BORDER_roughnessTex 36
//spec_const bool SC_USE_UV_MIN_MAX_background 37
//spec_const bool SC_USE_UV_MIN_MAX_baseTex 38
//spec_const bool SC_USE_UV_MIN_MAX_intensityTexture 39
//spec_const bool SC_USE_UV_MIN_MAX_normalTex 40
//spec_const bool SC_USE_UV_MIN_MAX_opacityTex 41
//spec_const bool SC_USE_UV_MIN_MAX_roughnessTex 42
//spec_const bool SC_USE_UV_TRANSFORM_background 43
//spec_const bool SC_USE_UV_TRANSFORM_baseTex 44
//spec_const bool SC_USE_UV_TRANSFORM_intensityTexture 45
//spec_const bool SC_USE_UV_TRANSFORM_normalTex 46
//spec_const bool SC_USE_UV_TRANSFORM_opacityTex 47
//spec_const bool SC_USE_UV_TRANSFORM_roughnessTex 48
//spec_const bool Tweak_N38 49
//spec_const bool Tweak_N56 50
//spec_const bool Tweak_N58 51
//spec_const bool Tweak_N64 52
//spec_const bool Tweak_N91 53
//spec_const bool Tweak_N95 54
//spec_const bool UseViewSpaceDepthVariant 55
//spec_const bool backgroundHasSwappedViews 56
//spec_const bool baseTexHasSwappedViews 57
//spec_const bool intensityTextureHasSwappedViews 58
//spec_const bool normalTexHasSwappedViews 59
//spec_const bool opacityTexHasSwappedViews 60
//spec_const bool roughnessTexHasSwappedViews 61
//spec_const bool sc_BlendMode_AddWithAlphaFactor 62
//spec_const bool sc_BlendMode_Add 63
//spec_const bool sc_BlendMode_AlphaTest 64
//spec_const bool sc_BlendMode_AlphaToCoverage 65
//spec_const bool sc_BlendMode_ColoredGlass 66
//spec_const bool sc_BlendMode_Custom 67
//spec_const bool sc_BlendMode_Max 68
//spec_const bool sc_BlendMode_Min 69
//spec_const bool sc_BlendMode_MultiplyOriginal 70
//spec_const bool sc_BlendMode_Multiply 71
//spec_const bool sc_BlendMode_Normal 72
//spec_const bool sc_BlendMode_PremultipliedAlphaAuto 73
//spec_const bool sc_BlendMode_PremultipliedAlphaHardware 74
//spec_const bool sc_BlendMode_PremultipliedAlpha 75
//spec_const bool sc_BlendMode_Screen 76
//spec_const bool sc_DepthOnly 77
//spec_const bool sc_EnvmapSpecularHasSwappedViews 78
//spec_const bool sc_FramebufferFetch 79
//spec_const bool sc_LightEstimation 80
//spec_const bool sc_MotionVectorsPass 81
//spec_const bool sc_OITCompositingPass 82
//spec_const bool sc_OITDepthBoundsPass 83
//spec_const bool sc_OITDepthGatherPass 84
//spec_const bool sc_ProjectiveShadowsCaster 85
//spec_const bool sc_ProjectiveShadowsReceiver 86
//spec_const bool sc_ProxyAlphaOne 87
//spec_const bool sc_RayTracedAoTextureHasSwappedViews 88
//spec_const bool sc_RayTracedReflectionTextureHasSwappedViews 89
//spec_const bool sc_RayTracedShadowTextureHasSwappedViews 90
//spec_const bool sc_RenderAlphaToColor 91
//spec_const bool sc_SSAOEnabled 92
//spec_const bool sc_ScreenTextureHasSwappedViews 93
//spec_const bool sc_ShaderComplexityAnalyzer 94
//spec_const bool sc_TAAEnabled 95
//spec_const bool sc_UseFramebufferFetchMarker 96
//spec_const bool sc_VertexBlendingUseNormals 97
//spec_const bool sc_VertexBlending 98
//spec_const int SC_DEVICE_CLASS 99
//spec_const int SC_SOFTWARE_WRAP_MODE_U_background 100
//spec_const int SC_SOFTWARE_WRAP_MODE_U_baseTex 101
//spec_const int SC_SOFTWARE_WRAP_MODE_U_intensityTexture 102
//spec_const int SC_SOFTWARE_WRAP_MODE_U_normalTex 103
//spec_const int SC_SOFTWARE_WRAP_MODE_U_opacityTex 104
//spec_const int SC_SOFTWARE_WRAP_MODE_U_roughnessTex 105
//spec_const int SC_SOFTWARE_WRAP_MODE_V_background 106
//spec_const int SC_SOFTWARE_WRAP_MODE_V_baseTex 107
//spec_const int SC_SOFTWARE_WRAP_MODE_V_intensityTexture 108
//spec_const int SC_SOFTWARE_WRAP_MODE_V_normalTex 109
//spec_const int SC_SOFTWARE_WRAP_MODE_V_opacityTex 110
//spec_const int SC_SOFTWARE_WRAP_MODE_V_roughnessTex 111
//spec_const int backgroundLayout 112
//spec_const int baseTexLayout 113
//spec_const int intensityTextureLayout 114
//spec_const int normalTexLayout 115
//spec_const int opacityTexLayout 116
//spec_const int roughnessTexLayout 117
//spec_const int sc_AmbientLightMode_EnvironmentMap 118
//spec_const int sc_AmbientLightMode_FromCamera 119
//spec_const int sc_DepthBufferMode 120
//spec_const int sc_DirectionalLightsCount 121
//spec_const int sc_EnvLightMode 122
//spec_const int sc_EnvmapSpecularLayout 123
//spec_const int sc_LightEstimationSGCount 124
//spec_const int sc_PointLightsCount 125
//spec_const int sc_RayTracedAoTextureLayout 126
//spec_const int sc_RayTracedReflectionTextureLayout 127
//spec_const int sc_RayTracedShadowTextureLayout 128
//spec_const int sc_RenderingSpace 129
//spec_const int sc_ScreenTextureLayout 130
//spec_const int sc_ShaderCacheConstant 131
//spec_const int sc_SkinBonesCount 132
//spec_const int sc_StereoRenderingMode 133
//spec_const int sc_StereoRendering_IsClipDistanceEnabled 134
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
constant bool SC_USE_CLAMP_TO_BORDER_baseTex [[function_constant(32)]];
constant bool SC_USE_CLAMP_TO_BORDER_baseTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_baseTex) ? SC_USE_CLAMP_TO_BORDER_baseTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture [[function_constant(33)]];
constant bool SC_USE_CLAMP_TO_BORDER_intensityTexture_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_intensityTexture) ? SC_USE_CLAMP_TO_BORDER_intensityTexture : false;
constant bool SC_USE_CLAMP_TO_BORDER_normalTex [[function_constant(34)]];
constant bool SC_USE_CLAMP_TO_BORDER_normalTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_normalTex) ? SC_USE_CLAMP_TO_BORDER_normalTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex [[function_constant(35)]];
constant bool SC_USE_CLAMP_TO_BORDER_opacityTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_opacityTex) ? SC_USE_CLAMP_TO_BORDER_opacityTex : false;
constant bool SC_USE_CLAMP_TO_BORDER_roughnessTex [[function_constant(36)]];
constant bool SC_USE_CLAMP_TO_BORDER_roughnessTex_tmp = is_function_constant_defined(SC_USE_CLAMP_TO_BORDER_roughnessTex) ? SC_USE_CLAMP_TO_BORDER_roughnessTex : false;
constant bool SC_USE_UV_MIN_MAX_background [[function_constant(37)]];
constant bool SC_USE_UV_MIN_MAX_background_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_background) ? SC_USE_UV_MIN_MAX_background : false;
constant bool SC_USE_UV_MIN_MAX_baseTex [[function_constant(38)]];
constant bool SC_USE_UV_MIN_MAX_baseTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_baseTex) ? SC_USE_UV_MIN_MAX_baseTex : false;
constant bool SC_USE_UV_MIN_MAX_intensityTexture [[function_constant(39)]];
constant bool SC_USE_UV_MIN_MAX_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_intensityTexture) ? SC_USE_UV_MIN_MAX_intensityTexture : false;
constant bool SC_USE_UV_MIN_MAX_normalTex [[function_constant(40)]];
constant bool SC_USE_UV_MIN_MAX_normalTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_normalTex) ? SC_USE_UV_MIN_MAX_normalTex : false;
constant bool SC_USE_UV_MIN_MAX_opacityTex [[function_constant(41)]];
constant bool SC_USE_UV_MIN_MAX_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_opacityTex) ? SC_USE_UV_MIN_MAX_opacityTex : false;
constant bool SC_USE_UV_MIN_MAX_roughnessTex [[function_constant(42)]];
constant bool SC_USE_UV_MIN_MAX_roughnessTex_tmp = is_function_constant_defined(SC_USE_UV_MIN_MAX_roughnessTex) ? SC_USE_UV_MIN_MAX_roughnessTex : false;
constant bool SC_USE_UV_TRANSFORM_background [[function_constant(43)]];
constant bool SC_USE_UV_TRANSFORM_background_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_background) ? SC_USE_UV_TRANSFORM_background : false;
constant bool SC_USE_UV_TRANSFORM_baseTex [[function_constant(44)]];
constant bool SC_USE_UV_TRANSFORM_baseTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_baseTex) ? SC_USE_UV_TRANSFORM_baseTex : false;
constant bool SC_USE_UV_TRANSFORM_intensityTexture [[function_constant(45)]];
constant bool SC_USE_UV_TRANSFORM_intensityTexture_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_intensityTexture) ? SC_USE_UV_TRANSFORM_intensityTexture : false;
constant bool SC_USE_UV_TRANSFORM_normalTex [[function_constant(46)]];
constant bool SC_USE_UV_TRANSFORM_normalTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_normalTex) ? SC_USE_UV_TRANSFORM_normalTex : false;
constant bool SC_USE_UV_TRANSFORM_opacityTex [[function_constant(47)]];
constant bool SC_USE_UV_TRANSFORM_opacityTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_opacityTex) ? SC_USE_UV_TRANSFORM_opacityTex : false;
constant bool SC_USE_UV_TRANSFORM_roughnessTex [[function_constant(48)]];
constant bool SC_USE_UV_TRANSFORM_roughnessTex_tmp = is_function_constant_defined(SC_USE_UV_TRANSFORM_roughnessTex) ? SC_USE_UV_TRANSFORM_roughnessTex : false;
constant bool Tweak_N38 [[function_constant(49)]];
constant bool Tweak_N38_tmp = is_function_constant_defined(Tweak_N38) ? Tweak_N38 : false;
constant bool Tweak_N56 [[function_constant(50)]];
constant bool Tweak_N56_tmp = is_function_constant_defined(Tweak_N56) ? Tweak_N56 : false;
constant bool Tweak_N58 [[function_constant(51)]];
constant bool Tweak_N58_tmp = is_function_constant_defined(Tweak_N58) ? Tweak_N58 : false;
constant bool Tweak_N64 [[function_constant(52)]];
constant bool Tweak_N64_tmp = is_function_constant_defined(Tweak_N64) ? Tweak_N64 : false;
constant bool Tweak_N91 [[function_constant(53)]];
constant bool Tweak_N91_tmp = is_function_constant_defined(Tweak_N91) ? Tweak_N91 : false;
constant bool Tweak_N95 [[function_constant(54)]];
constant bool Tweak_N95_tmp = is_function_constant_defined(Tweak_N95) ? Tweak_N95 : false;
constant bool UseViewSpaceDepthVariant [[function_constant(55)]];
constant bool UseViewSpaceDepthVariant_tmp = is_function_constant_defined(UseViewSpaceDepthVariant) ? UseViewSpaceDepthVariant : true;
constant bool backgroundHasSwappedViews [[function_constant(56)]];
constant bool backgroundHasSwappedViews_tmp = is_function_constant_defined(backgroundHasSwappedViews) ? backgroundHasSwappedViews : false;
constant bool baseTexHasSwappedViews [[function_constant(57)]];
constant bool baseTexHasSwappedViews_tmp = is_function_constant_defined(baseTexHasSwappedViews) ? baseTexHasSwappedViews : false;
constant bool intensityTextureHasSwappedViews [[function_constant(58)]];
constant bool intensityTextureHasSwappedViews_tmp = is_function_constant_defined(intensityTextureHasSwappedViews) ? intensityTextureHasSwappedViews : false;
constant bool normalTexHasSwappedViews [[function_constant(59)]];
constant bool normalTexHasSwappedViews_tmp = is_function_constant_defined(normalTexHasSwappedViews) ? normalTexHasSwappedViews : false;
constant bool opacityTexHasSwappedViews [[function_constant(60)]];
constant bool opacityTexHasSwappedViews_tmp = is_function_constant_defined(opacityTexHasSwappedViews) ? opacityTexHasSwappedViews : false;
constant bool roughnessTexHasSwappedViews [[function_constant(61)]];
constant bool roughnessTexHasSwappedViews_tmp = is_function_constant_defined(roughnessTexHasSwappedViews) ? roughnessTexHasSwappedViews : false;
constant bool sc_BlendMode_AddWithAlphaFactor [[function_constant(62)]];
constant bool sc_BlendMode_AddWithAlphaFactor_tmp = is_function_constant_defined(sc_BlendMode_AddWithAlphaFactor) ? sc_BlendMode_AddWithAlphaFactor : false;
constant bool sc_BlendMode_Add [[function_constant(63)]];
constant bool sc_BlendMode_Add_tmp = is_function_constant_defined(sc_BlendMode_Add) ? sc_BlendMode_Add : false;
constant bool sc_BlendMode_AlphaTest [[function_constant(64)]];
constant bool sc_BlendMode_AlphaTest_tmp = is_function_constant_defined(sc_BlendMode_AlphaTest) ? sc_BlendMode_AlphaTest : false;
constant bool sc_BlendMode_AlphaToCoverage [[function_constant(65)]];
constant bool sc_BlendMode_AlphaToCoverage_tmp = is_function_constant_defined(sc_BlendMode_AlphaToCoverage) ? sc_BlendMode_AlphaToCoverage : false;
constant bool sc_BlendMode_ColoredGlass [[function_constant(66)]];
constant bool sc_BlendMode_ColoredGlass_tmp = is_function_constant_defined(sc_BlendMode_ColoredGlass) ? sc_BlendMode_ColoredGlass : false;
constant bool sc_BlendMode_Custom [[function_constant(67)]];
constant bool sc_BlendMode_Custom_tmp = is_function_constant_defined(sc_BlendMode_Custom) ? sc_BlendMode_Custom : false;
constant bool sc_BlendMode_Max [[function_constant(68)]];
constant bool sc_BlendMode_Max_tmp = is_function_constant_defined(sc_BlendMode_Max) ? sc_BlendMode_Max : false;
constant bool sc_BlendMode_Min [[function_constant(69)]];
constant bool sc_BlendMode_Min_tmp = is_function_constant_defined(sc_BlendMode_Min) ? sc_BlendMode_Min : false;
constant bool sc_BlendMode_MultiplyOriginal [[function_constant(70)]];
constant bool sc_BlendMode_MultiplyOriginal_tmp = is_function_constant_defined(sc_BlendMode_MultiplyOriginal) ? sc_BlendMode_MultiplyOriginal : false;
constant bool sc_BlendMode_Multiply [[function_constant(71)]];
constant bool sc_BlendMode_Multiply_tmp = is_function_constant_defined(sc_BlendMode_Multiply) ? sc_BlendMode_Multiply : false;
constant bool sc_BlendMode_Normal [[function_constant(72)]];
constant bool sc_BlendMode_Normal_tmp = is_function_constant_defined(sc_BlendMode_Normal) ? sc_BlendMode_Normal : false;
constant bool sc_BlendMode_PremultipliedAlphaAuto [[function_constant(73)]];
constant bool sc_BlendMode_PremultipliedAlphaAuto_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaAuto) ? sc_BlendMode_PremultipliedAlphaAuto : false;
constant bool sc_BlendMode_PremultipliedAlphaHardware [[function_constant(74)]];
constant bool sc_BlendMode_PremultipliedAlphaHardware_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlphaHardware) ? sc_BlendMode_PremultipliedAlphaHardware : false;
constant bool sc_BlendMode_PremultipliedAlpha [[function_constant(75)]];
constant bool sc_BlendMode_PremultipliedAlpha_tmp = is_function_constant_defined(sc_BlendMode_PremultipliedAlpha) ? sc_BlendMode_PremultipliedAlpha : false;
constant bool sc_BlendMode_Screen [[function_constant(76)]];
constant bool sc_BlendMode_Screen_tmp = is_function_constant_defined(sc_BlendMode_Screen) ? sc_BlendMode_Screen : false;
constant bool sc_DepthOnly [[function_constant(77)]];
constant bool sc_DepthOnly_tmp = is_function_constant_defined(sc_DepthOnly) ? sc_DepthOnly : false;
constant bool sc_EnvmapSpecularHasSwappedViews [[function_constant(78)]];
constant bool sc_EnvmapSpecularHasSwappedViews_tmp = is_function_constant_defined(sc_EnvmapSpecularHasSwappedViews) ? sc_EnvmapSpecularHasSwappedViews : false;
constant bool sc_FramebufferFetch [[function_constant(79)]];
constant bool sc_FramebufferFetch_tmp = is_function_constant_defined(sc_FramebufferFetch) ? sc_FramebufferFetch : false;
constant bool sc_LightEstimation [[function_constant(80)]];
constant bool sc_LightEstimation_tmp = is_function_constant_defined(sc_LightEstimation) ? sc_LightEstimation : false;
constant bool sc_MotionVectorsPass [[function_constant(81)]];
constant bool sc_MotionVectorsPass_tmp = is_function_constant_defined(sc_MotionVectorsPass) ? sc_MotionVectorsPass : false;
constant bool sc_OITCompositingPass [[function_constant(82)]];
constant bool sc_OITCompositingPass_tmp = is_function_constant_defined(sc_OITCompositingPass) ? sc_OITCompositingPass : false;
constant bool sc_OITDepthBoundsPass [[function_constant(83)]];
constant bool sc_OITDepthBoundsPass_tmp = is_function_constant_defined(sc_OITDepthBoundsPass) ? sc_OITDepthBoundsPass : false;
constant bool sc_OITDepthGatherPass [[function_constant(84)]];
constant bool sc_OITDepthGatherPass_tmp = is_function_constant_defined(sc_OITDepthGatherPass) ? sc_OITDepthGatherPass : false;
constant bool sc_ProjectiveShadowsCaster [[function_constant(85)]];
constant bool sc_ProjectiveShadowsCaster_tmp = is_function_constant_defined(sc_ProjectiveShadowsCaster) ? sc_ProjectiveShadowsCaster : false;
constant bool sc_ProjectiveShadowsReceiver [[function_constant(86)]];
constant bool sc_ProjectiveShadowsReceiver_tmp = is_function_constant_defined(sc_ProjectiveShadowsReceiver) ? sc_ProjectiveShadowsReceiver : false;
constant bool sc_ProxyAlphaOne [[function_constant(87)]];
constant bool sc_ProxyAlphaOne_tmp = is_function_constant_defined(sc_ProxyAlphaOne) ? sc_ProxyAlphaOne : false;
constant bool sc_RayTracedAoTextureHasSwappedViews [[function_constant(88)]];
constant bool sc_RayTracedAoTextureHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracedAoTextureHasSwappedViews) ? sc_RayTracedAoTextureHasSwappedViews : false;
constant bool sc_RayTracedReflectionTextureHasSwappedViews [[function_constant(89)]];
constant bool sc_RayTracedReflectionTextureHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracedReflectionTextureHasSwappedViews) ? sc_RayTracedReflectionTextureHasSwappedViews : false;
constant bool sc_RayTracedShadowTextureHasSwappedViews [[function_constant(90)]];
constant bool sc_RayTracedShadowTextureHasSwappedViews_tmp = is_function_constant_defined(sc_RayTracedShadowTextureHasSwappedViews) ? sc_RayTracedShadowTextureHasSwappedViews : false;
constant bool sc_RenderAlphaToColor [[function_constant(91)]];
constant bool sc_RenderAlphaToColor_tmp = is_function_constant_defined(sc_RenderAlphaToColor) ? sc_RenderAlphaToColor : false;
constant bool sc_SSAOEnabled [[function_constant(92)]];
constant bool sc_SSAOEnabled_tmp = is_function_constant_defined(sc_SSAOEnabled) ? sc_SSAOEnabled : false;
constant bool sc_ScreenTextureHasSwappedViews [[function_constant(93)]];
constant bool sc_ScreenTextureHasSwappedViews_tmp = is_function_constant_defined(sc_ScreenTextureHasSwappedViews) ? sc_ScreenTextureHasSwappedViews : false;
constant bool sc_ShaderComplexityAnalyzer [[function_constant(94)]];
constant bool sc_ShaderComplexityAnalyzer_tmp = is_function_constant_defined(sc_ShaderComplexityAnalyzer) ? sc_ShaderComplexityAnalyzer : false;
constant bool sc_TAAEnabled [[function_constant(95)]];
constant bool sc_TAAEnabled_tmp = is_function_constant_defined(sc_TAAEnabled) ? sc_TAAEnabled : false;
constant bool sc_UseFramebufferFetchMarker [[function_constant(96)]];
constant bool sc_UseFramebufferFetchMarker_tmp = is_function_constant_defined(sc_UseFramebufferFetchMarker) ? sc_UseFramebufferFetchMarker : false;
constant bool sc_VertexBlendingUseNormals [[function_constant(97)]];
constant bool sc_VertexBlendingUseNormals_tmp = is_function_constant_defined(sc_VertexBlendingUseNormals) ? sc_VertexBlendingUseNormals : false;
constant bool sc_VertexBlending [[function_constant(98)]];
constant bool sc_VertexBlending_tmp = is_function_constant_defined(sc_VertexBlending) ? sc_VertexBlending : false;
constant int SC_DEVICE_CLASS [[function_constant(99)]];
constant int SC_DEVICE_CLASS_tmp = is_function_constant_defined(SC_DEVICE_CLASS) ? SC_DEVICE_CLASS : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_background [[function_constant(100)]];
constant int SC_SOFTWARE_WRAP_MODE_U_background_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_background) ? SC_SOFTWARE_WRAP_MODE_U_background : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex [[function_constant(101)]];
constant int SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_baseTex) ? SC_SOFTWARE_WRAP_MODE_U_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture [[function_constant(102)]];
constant int SC_SOFTWARE_WRAP_MODE_U_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_U_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex [[function_constant(103)]];
constant int SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_normalTex) ? SC_SOFTWARE_WRAP_MODE_U_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex [[function_constant(104)]];
constant int SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_opacityTex) ? SC_SOFTWARE_WRAP_MODE_U_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_U_roughnessTex [[function_constant(105)]];
constant int SC_SOFTWARE_WRAP_MODE_U_roughnessTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_U_roughnessTex) ? SC_SOFTWARE_WRAP_MODE_U_roughnessTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_background [[function_constant(106)]];
constant int SC_SOFTWARE_WRAP_MODE_V_background_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_background) ? SC_SOFTWARE_WRAP_MODE_V_background : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex [[function_constant(107)]];
constant int SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_baseTex) ? SC_SOFTWARE_WRAP_MODE_V_baseTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture [[function_constant(108)]];
constant int SC_SOFTWARE_WRAP_MODE_V_intensityTexture_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_intensityTexture) ? SC_SOFTWARE_WRAP_MODE_V_intensityTexture : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex [[function_constant(109)]];
constant int SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_normalTex) ? SC_SOFTWARE_WRAP_MODE_V_normalTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex [[function_constant(110)]];
constant int SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_opacityTex) ? SC_SOFTWARE_WRAP_MODE_V_opacityTex : -1;
constant int SC_SOFTWARE_WRAP_MODE_V_roughnessTex [[function_constant(111)]];
constant int SC_SOFTWARE_WRAP_MODE_V_roughnessTex_tmp = is_function_constant_defined(SC_SOFTWARE_WRAP_MODE_V_roughnessTex) ? SC_SOFTWARE_WRAP_MODE_V_roughnessTex : -1;
constant int backgroundLayout [[function_constant(112)]];
constant int backgroundLayout_tmp = is_function_constant_defined(backgroundLayout) ? backgroundLayout : 0;
constant int baseTexLayout [[function_constant(113)]];
constant int baseTexLayout_tmp = is_function_constant_defined(baseTexLayout) ? baseTexLayout : 0;
constant int intensityTextureLayout [[function_constant(114)]];
constant int intensityTextureLayout_tmp = is_function_constant_defined(intensityTextureLayout) ? intensityTextureLayout : 0;
constant int normalTexLayout [[function_constant(115)]];
constant int normalTexLayout_tmp = is_function_constant_defined(normalTexLayout) ? normalTexLayout : 0;
constant int opacityTexLayout [[function_constant(116)]];
constant int opacityTexLayout_tmp = is_function_constant_defined(opacityTexLayout) ? opacityTexLayout : 0;
constant int roughnessTexLayout [[function_constant(117)]];
constant int roughnessTexLayout_tmp = is_function_constant_defined(roughnessTexLayout) ? roughnessTexLayout : 0;
constant int sc_AmbientLightMode_EnvironmentMap [[function_constant(118)]];
constant int sc_AmbientLightMode_EnvironmentMap_tmp = is_function_constant_defined(sc_AmbientLightMode_EnvironmentMap) ? sc_AmbientLightMode_EnvironmentMap : 0;
constant int sc_AmbientLightMode_FromCamera [[function_constant(119)]];
constant int sc_AmbientLightMode_FromCamera_tmp = is_function_constant_defined(sc_AmbientLightMode_FromCamera) ? sc_AmbientLightMode_FromCamera : 0;
constant int sc_DepthBufferMode [[function_constant(120)]];
constant int sc_DepthBufferMode_tmp = is_function_constant_defined(sc_DepthBufferMode) ? sc_DepthBufferMode : 0;
constant int sc_DirectionalLightsCount [[function_constant(121)]];
constant int sc_DirectionalLightsCount_tmp = is_function_constant_defined(sc_DirectionalLightsCount) ? sc_DirectionalLightsCount : 0;
constant int sc_EnvLightMode [[function_constant(122)]];
constant int sc_EnvLightMode_tmp = is_function_constant_defined(sc_EnvLightMode) ? sc_EnvLightMode : 0;
constant int sc_EnvmapSpecularLayout [[function_constant(123)]];
constant int sc_EnvmapSpecularLayout_tmp = is_function_constant_defined(sc_EnvmapSpecularLayout) ? sc_EnvmapSpecularLayout : 0;
constant int sc_LightEstimationSGCount [[function_constant(124)]];
constant int sc_LightEstimationSGCount_tmp = is_function_constant_defined(sc_LightEstimationSGCount) ? sc_LightEstimationSGCount : 0;
constant int sc_PointLightsCount [[function_constant(125)]];
constant int sc_PointLightsCount_tmp = is_function_constant_defined(sc_PointLightsCount) ? sc_PointLightsCount : 0;
constant int sc_RayTracedAoTextureLayout [[function_constant(126)]];
constant int sc_RayTracedAoTextureLayout_tmp = is_function_constant_defined(sc_RayTracedAoTextureLayout) ? sc_RayTracedAoTextureLayout : 0;
constant int sc_RayTracedReflectionTextureLayout [[function_constant(127)]];
constant int sc_RayTracedReflectionTextureLayout_tmp = is_function_constant_defined(sc_RayTracedReflectionTextureLayout) ? sc_RayTracedReflectionTextureLayout : 0;
constant int sc_RayTracedShadowTextureLayout [[function_constant(128)]];
constant int sc_RayTracedShadowTextureLayout_tmp = is_function_constant_defined(sc_RayTracedShadowTextureLayout) ? sc_RayTracedShadowTextureLayout : 0;
constant int sc_RenderingSpace [[function_constant(129)]];
constant int sc_RenderingSpace_tmp = is_function_constant_defined(sc_RenderingSpace) ? sc_RenderingSpace : -1;
constant int sc_ScreenTextureLayout [[function_constant(130)]];
constant int sc_ScreenTextureLayout_tmp = is_function_constant_defined(sc_ScreenTextureLayout) ? sc_ScreenTextureLayout : 0;
constant int sc_ShaderCacheConstant [[function_constant(131)]];
constant int sc_ShaderCacheConstant_tmp = is_function_constant_defined(sc_ShaderCacheConstant) ? sc_ShaderCacheConstant : 0;
constant int sc_SkinBonesCount [[function_constant(132)]];
constant int sc_SkinBonesCount_tmp = is_function_constant_defined(sc_SkinBonesCount) ? sc_SkinBonesCount : 0;
constant int sc_StereoRenderingMode [[function_constant(133)]];
constant int sc_StereoRenderingMode_tmp = is_function_constant_defined(sc_StereoRenderingMode) ? sc_StereoRenderingMode : 0;
constant int sc_StereoRendering_IsClipDistanceEnabled [[function_constant(134)]];
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
int receivesRayTracedReflections;
int isProxyMode;
int receivesRayTracedShadows;
int receivesRayTracedDiffuseIndirect;
int receivesRayTracedAo;
float4 sc_RayTracedReflectionTextureSize;
float4 sc_RayTracedReflectionTextureDims;
float4 sc_RayTracedReflectionTextureView;
float4 sc_RayTracedShadowTextureSize;
float4 sc_RayTracedShadowTextureDims;
float4 sc_RayTracedShadowTextureView;
float4 sc_RayTracedDiffIndTextureSize;
float4 sc_RayTracedDiffIndTextureDims;
float4 sc_RayTracedDiffIndTextureView;
float4 sc_RayTracedAoTextureSize;
float4 sc_RayTracedAoTextureDims;
float4 sc_RayTracedAoTextureView;
float receiver_mask;
float3 OriginNormalizationScale;
float3 OriginNormalizationScaleInv;
float3 OriginNormalizationOffset;
int receiverId;
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
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float3 baseColor;
float4 backgroundSize;
float4 backgroundDims;
float4 backgroundView;
float3x3 backgroundTransform;
float4 backgroundUvMinMax;
float4 backgroundBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float indexOfRefraction;
float intensity;
float chromaticAberration;
float thickness;
float exponent;
float darken;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 roughnessTexSize;
float4 roughnessTexDims;
float4 roughnessTexView;
float3x3 roughnessTexTransform;
float4 roughnessTexUvMinMax;
float4 roughnessTexBorderColor;
float metallic;
float roughness;
float3 Port_Default_N098;
float3 Port_Default_N097;
float3 Port_Import_N032;
float3 Port_Import_N031;
float3 Port_Import_N041;
float Port_Input0_N005;
float Port_Import_N029;
float Port_Import_N049;
float2 Port_Import_N003;
float Port_Import_N040;
float Port_Import_N007;
float3 Port_Import_N072;
float3 Port_Import_N101;
float Port_Input2_N012;
float Port_Import_N043;
float Port_Import_N010;
float Port_Input0_N025;
float Port_Import_N075;
float Port_Import_N021;
float Port_Import_N076;
float Port_Import_N026;
float Port_Default_N085;
float3 Port_Albedo_N006;
float Port_Opacity_N006;
float3 Port_Emissive_N006;
float3 Port_Default_N083;
float Port_Value3_N100;
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
texture2d<float> baseTex [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> normalTex [[id(7)]];
texture2d<float> opacityTex [[id(8)]];
texture2d<float> roughnessTex [[id(9)]];
texture2d<float> sc_EnvmapSpecular [[id(11)]];
texture2d<float> sc_RayTracedAoTexture [[id(20)]];
texture2d<float> sc_RayTracedReflectionTexture [[id(22)]];
texture2d<float> sc_RayTracedShadowTexture [[id(23)]];
texture2d<float> sc_SSAOTexture [[id(24)]];
texture2d<float> sc_ScreenTexture [[id(25)]];
texture2d<float> sc_ShadowTexture [[id(26)]];
texture2d<uint> z_hitIdAndBarycentric [[id(28)]];
texture2d<float> z_rayDirections [[id(29)]];
sampler backgroundSmpSC [[id(30)]];
sampler baseTexSmpSC [[id(31)]];
sampler intensityTextureSmpSC [[id(32)]];
sampler normalTexSmpSC [[id(33)]];
sampler opacityTexSmpSC [[id(34)]];
sampler roughnessTexSmpSC [[id(35)]];
sampler sc_EnvmapSpecularSmpSC [[id(37)]];
sampler sc_RayTracedAoTextureSmpSC [[id(39)]];
sampler sc_RayTracedReflectionTextureSmpSC [[id(41)]];
sampler sc_RayTracedShadowTextureSmpSC [[id(42)]];
sampler sc_SSAOTextureSmpSC [[id(43)]];
sampler sc_ScreenTextureSmpSC [[id(44)]];
sampler sc_ShadowTextureSmpSC [[id(45)]];
sampler z_hitIdAndBarycentricSmp [[id(47)]];
sampler z_rayDirectionsSmpSC [[id(48)]];
constant userUniformsObj* UserUniforms [[id(49)]];
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
struct SurfaceProperties
{
float3 albedo;
float opacity;
float3 normal;
float3 positionWS;
float3 viewDirWS;
float metallic;
float roughness;
float3 emissive;
float3 ao;
float3 specularAo;
float3 bakedShadows;
float3 specColor;
};
struct LightingComponents
{
float3 directDiffuse;
float3 directSpecular;
float3 indirectDiffuse;
float3 indirectSpecular;
float3 emitted;
float3 transmitted;
};
struct LightProperties
{
float3 direction;
float3 color;
float attenuation;
};
struct sc_SphericalGaussianLight_t
{
float3 color;
float sharpness;
float3 axis;
};
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float4 VertexColor;
float2 Surface_UVCoord0;
float2 gScreenCoord;
float3 ViewDirWS;
float3 SurfacePosition_WorldSpace;
float gFrontFacing;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float3 BumpedNormal;
float3 PositionWS;
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
int receivesRayTracedReflections;
int isProxyMode;
int receivesRayTracedShadows;
int receivesRayTracedDiffuseIndirect;
int receivesRayTracedAo;
float4 sc_RayTracedReflectionTextureSize;
float4 sc_RayTracedReflectionTextureDims;
float4 sc_RayTracedReflectionTextureView;
float4 sc_RayTracedShadowTextureSize;
float4 sc_RayTracedShadowTextureDims;
float4 sc_RayTracedShadowTextureView;
float4 sc_RayTracedDiffIndTextureSize;
float4 sc_RayTracedDiffIndTextureDims;
float4 sc_RayTracedDiffIndTextureView;
float4 sc_RayTracedAoTextureSize;
float4 sc_RayTracedAoTextureDims;
float4 sc_RayTracedAoTextureView;
float receiver_mask;
float3 OriginNormalizationScale;
float3 OriginNormalizationScaleInv;
float3 OriginNormalizationOffset;
int receiverId;
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
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float3 baseColor;
float4 backgroundSize;
float4 backgroundDims;
float4 backgroundView;
float3x3 backgroundTransform;
float4 backgroundUvMinMax;
float4 backgroundBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float indexOfRefraction;
float intensity;
float chromaticAberration;
float thickness;
float exponent;
float darken;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 roughnessTexSize;
float4 roughnessTexDims;
float4 roughnessTexView;
float3x3 roughnessTexTransform;
float4 roughnessTexUvMinMax;
float4 roughnessTexBorderColor;
float metallic;
float roughness;
float3 Port_Default_N098;
float3 Port_Default_N097;
float3 Port_Import_N032;
float3 Port_Import_N031;
float3 Port_Import_N041;
float Port_Input0_N005;
float Port_Import_N029;
float Port_Import_N049;
float2 Port_Import_N003;
float Port_Import_N040;
float Port_Import_N007;
float3 Port_Import_N072;
float3 Port_Import_N101;
float Port_Input2_N012;
float Port_Import_N043;
float Port_Import_N010;
float Port_Input0_N025;
float Port_Import_N075;
float Port_Import_N021;
float Port_Import_N076;
float Port_Import_N026;
float Port_Default_N085;
float3 Port_Albedo_N006;
float Port_Opacity_N006;
float3 Port_Emissive_N006;
float3 Port_Default_N083;
float Port_Value3_N100;
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
struct sc_PointLight_t_1
{
bool falloffEnabled;
float falloffEndDistance;
float negRcpFalloffEndDistance4;
float angleScale;
float angleOffset;
float3 direction;
float3 position;
float4 color;
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
texture2d<float> baseTex [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> normalTex [[id(7)]];
texture2d<float> opacityTex [[id(8)]];
texture2d<float> roughnessTex [[id(9)]];
texture2d<float> sc_EnvmapSpecular [[id(11)]];
texture2d<float> sc_RayTracedAoTexture [[id(20)]];
texture2d<float> sc_RayTracedReflectionTexture [[id(22)]];
texture2d<float> sc_RayTracedShadowTexture [[id(23)]];
texture2d<float> sc_SSAOTexture [[id(24)]];
texture2d<float> sc_ScreenTexture [[id(25)]];
texture2d<float> sc_ShadowTexture [[id(26)]];
texture2d<uint> z_hitIdAndBarycentric [[id(28)]];
texture2d<float> z_rayDirections [[id(29)]];
sampler backgroundSmpSC [[id(30)]];
sampler baseTexSmpSC [[id(31)]];
sampler intensityTextureSmpSC [[id(32)]];
sampler normalTexSmpSC [[id(33)]];
sampler opacityTexSmpSC [[id(34)]];
sampler roughnessTexSmpSC [[id(35)]];
sampler sc_EnvmapSpecularSmpSC [[id(37)]];
sampler sc_RayTracedAoTextureSmpSC [[id(39)]];
sampler sc_RayTracedReflectionTextureSmpSC [[id(41)]];
sampler sc_RayTracedShadowTextureSmpSC [[id(42)]];
sampler sc_SSAOTextureSmpSC [[id(43)]];
sampler sc_ScreenTextureSmpSC [[id(44)]];
sampler sc_ShadowTextureSmpSC [[id(45)]];
sampler z_hitIdAndBarycentricSmp [[id(47)]];
sampler z_rayDirectionsSmpSC [[id(48)]];
constant userUniformsObj* UserUniforms [[id(49)]];
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
float3 CalculateProxyFaceNormal(constant userUniformsObj& UserUniforms,thread texture2d<uint> z_hitIdAndBarycentric,thread sampler z_hitIdAndBarycentricSmp,thread float4& gl_FragCoord,const device layoutVertices_obj& layoutVertices,const device layoutVerticesPN_obj& layoutVerticesPN,const device layoutIndices_obj& layoutIndices)
{
float4 l9_0=gl_FragCoord;
int2 screenPos=int2(l9_0.xy);
int2 param=screenPos;
uint4 l9_1=z_hitIdAndBarycentric.read(uint2(param),0);
uint4 id_and_barycentric=l9_1;
if (id_and_barycentric.x!=uint(UserUniforms.instance_id))
{
return float3(0.0,1.0,0.0);
}
uint param_1=id_and_barycentric.y;
uint l9_2=min(param_1,uint(UserUniforms.lray_triangles_last));
uint l9_3=l9_2*6u;
uint l9_4=l9_3&4294967292u;
uint4 l9_5=(uint4(uint2(layoutIndices._Triangles[l9_4/4u]),uint2(layoutIndices._Triangles[(l9_4/4u)+1u]))&uint4(65535u,4294967295u,65535u,4294967295u))>>uint4(0u,16u,0u,16u);
int3 l9_6;
if (l9_3==l9_4)
{
l9_6=int3(l9_5.xyz);
}
else
{
l9_6=int3(l9_5.yzw);
}
int3 l9_7=l9_6;
int3 i=l9_7;
float3 pos0=float3(0.0);
float3 pos1;
float3 pos2;
if (UserUniforms.has_animated_pn!=0)
{
int param_2=i.x*6;
float3 l9_8=float3(layoutVerticesPN._VerticesPN[param_2],layoutVerticesPN._VerticesPN[param_2+1],layoutVerticesPN._VerticesPN[param_2+2]);
pos0=l9_8;
int param_3=i.y*6;
float3 l9_9=float3(layoutVerticesPN._VerticesPN[param_3],layoutVerticesPN._VerticesPN[param_3+1],layoutVerticesPN._VerticesPN[param_3+2]);
pos1=l9_9;
int param_4=i.z*6;
float3 l9_10=float3(layoutVerticesPN._VerticesPN[param_4],layoutVerticesPN._VerticesPN[param_4+1],layoutVerticesPN._VerticesPN[param_4+2]);
pos2=l9_10;
}
else
{
if (UserUniforms.proxy_format_position==5)
{
int param_5=(i.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position;
float3 l9_11=float3(layoutVertices._Vertices[param_5],layoutVertices._Vertices[param_5+1],layoutVertices._Vertices[param_5+2]);
pos0=l9_11;
int param_6=(i.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position;
float3 l9_12=float3(layoutVertices._Vertices[param_6],layoutVertices._Vertices[param_6+1],layoutVertices._Vertices[param_6+2]);
pos1=l9_12;
int param_7=(i.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position;
float3 l9_13=float3(layoutVertices._Vertices[param_7],layoutVertices._Vertices[param_7+1],layoutVertices._Vertices[param_7+2]);
pos2=l9_13;
}
else
{
if (UserUniforms.proxy_format_position==6)
{
int param_8=(i.x*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position;
float3 l9_14=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[param_8]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[param_8+1]))).x);
pos0=l9_14;
int param_9=(i.y*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position;
float3 l9_15=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[param_9]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[param_9+1]))).x);
pos1=l9_15;
int param_10=(i.z*UserUniforms.emitter_stride)+UserUniforms.proxy_offset_position;
float3 l9_16=float3(float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[param_10]))),float2(as_type<half2>(as_type<uint>(layoutVertices._Vertices[param_10+1]))).x);
pos2=l9_16;
}
else
{
return float3(0.0,1.0,0.0);
}
}
}
float3 faceNormalOS=cross(pos1-pos0,pos2-pos0);
float3 faceNormalWS=normalize(UserUniforms.sc_NormalMatrix*faceNormalOS);
return faceNormalWS;
}
float3 evaluateSSAO(thread const float3& positionWS,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC)
{
if ((int(sc_SSAOEnabled_tmp)!=0))
{
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
float4 clipSpaceCoord=UserUniforms.sc_ViewProjectionMatrixArray[l9_1]*float4(positionWS,1.0);
float3 l9_2=clipSpaceCoord.xyz/float3(clipSpaceCoord.w);
clipSpaceCoord=float4(l9_2.x,l9_2.y,l9_2.z,clipSpaceCoord.w);
float4 shadowSample=sc_SSAOTexture.sample(sc_SSAOTextureSmpSC,((clipSpaceCoord.xy*0.5)+float2(0.5)));
return float3(shadowSample.x);
}
else
{
return float3(1.0);
}
}
float3 calculateDirectSpecular(thread const SurfaceProperties& surfaceProperties,thread const float3& L,thread const float3& V,constant userUniformsObj& UserUniforms)
{
float r=fast::max(surfaceProperties.roughness,0.029999999);
float3 F0=surfaceProperties.specColor;
float3 N=surfaceProperties.normal;
float3 H=normalize(L+V);
float param=dot(N,L);
float l9_0=fast::clamp(param,0.0,1.0);
float NdotL=l9_0;
float param_1=dot(N,V);
float l9_1=fast::clamp(param_1,0.0,1.0);
float NdotV=l9_1;
float param_2=dot(N,H);
float l9_2=fast::clamp(param_2,0.0,1.0);
float NdotH=l9_2;
float param_3=dot(V,H);
float l9_3=fast::clamp(param_3,0.0,1.0);
float VdotH=l9_3;
if (SC_DEVICE_CLASS_tmp>=2)
{
float param_4=NdotH;
float param_5=r;
float l9_4=param_5*param_5;
float l9_5=l9_4*l9_4;
float l9_6=param_4*param_4;
float l9_7=(l9_6*(l9_5-1.0))+1.0;
float l9_8=l9_7*l9_7;
float l9_9=9.9999999e-09;
bool l9_10=UserUniforms.isProxyMode!=0;
if (l9_10)
{
l9_9=1e-07;
}
float l9_11=l9_5/(l9_8+l9_9);
float param_6=NdotL;
float param_7=NdotV;
float param_8=r;
float l9_12=param_6;
float l9_13=param_8;
float l9_14=l9_13+1.0;
l9_14=(l9_14*l9_14)*0.125;
float l9_15=(l9_12*(1.0-l9_14))+l9_14;
float l9_16=param_7;
float l9_17=param_8;
float l9_18=l9_17+1.0;
l9_18=(l9_18*l9_18)*0.125;
float l9_19=(l9_16*(1.0-l9_18))+l9_18;
float l9_20=1.0/(l9_15*l9_19);
float param_9=VdotH;
float3 param_10=F0;
float l9_21=param_9;
float3 l9_22=param_10;
float3 l9_23=float3(1.0);
float l9_24=1.0-l9_21;
float l9_25=l9_24*l9_24;
float l9_26=(l9_25*l9_25)*l9_24;
float3 l9_27=l9_22+((l9_23-l9_22)*l9_26);
float3 l9_28=l9_27;
return l9_28*(((l9_11*l9_20)*0.25)*NdotL);
}
else
{
float specPower=exp2(11.0-(10.0*r));
float param_11=VdotH;
float3 param_12=F0;
float l9_29=param_11;
float3 l9_30=param_12;
float3 l9_31=float3(1.0);
float l9_32=1.0-l9_29;
float l9_33=l9_32*l9_32;
float l9_34=(l9_33*l9_33)*l9_32;
float3 l9_35=l9_30+((l9_31-l9_30)*l9_34);
float3 l9_36=l9_35;
return ((l9_36*((specPower*0.125)+0.25))*pow(NdotH,specPower))*NdotL;
}
}
float computeDistanceAttenuation(thread const float& distanceToLight,thread const float& falloffEndDistance)
{
float distanceToLightSquared=distanceToLight*distanceToLight;
if (falloffEndDistance==0.0)
{
return 1.0/distanceToLightSquared;
}
float distanceToLightToTheFourth=distanceToLightSquared*distanceToLightSquared;
float falloffEndDistanceToTheFourth=pow(falloffEndDistance,4.0);
return fast::max(fast::min(1.0-(distanceToLightToTheFourth/falloffEndDistanceToTheFourth),1.0),0.0)/distanceToLightSquared;
}
float3 getSpecularDominantDir(thread const float3& N,thread const float3& R,thread const float& roughness)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float lerpFactor=(roughness*roughness)*roughness;
return normalize(mix(R,N,float3(lerpFactor)));
}
else
{
return R;
}
}
float2 calcSeamlessPanoramicUvsForSampling(thread const float2& uv,thread const float2& topMipRes,thread const float& lod)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float2 thisMipRes=fast::max(float2(1.0),topMipRes/float2(exp2(lod)));
return ((uv*(thisMipRes-float2(1.0)))/thisMipRes)+(float2(0.5)/thisMipRes);
}
else
{
return uv;
}
}
float4 sampleRayTracedReflections(thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_RayTracedReflectionTexture,thread sampler sc_RayTracedReflectionTextureSmpSC,thread float4& gl_FragCoord)
{
bool l9_0=UserUniforms.receivesRayTracedReflections!=0;
if (!l9_0)
{
return float4(0.0);
}
else
{
float4 l9_1=gl_FragCoord;
float2 l9_2=l9_1.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 p=l9_2;
float2 param=p;
int l9_3=0;
if ((int(sc_RayTracedReflectionTextureHasSwappedViews_tmp)!=0))
{
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
l9_3=1-l9_5;
}
else
{
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=varStereoViewID;
}
int l9_7=l9_6;
l9_3=l9_7;
}
int l9_8=l9_3;
float2 l9_9=param;
int l9_10=l9_8;
float2 l9_11=l9_9;
int l9_12=l9_10;
float l9_13=0.0;
float4 l9_14=float4(0.0);
float2 l9_15=l9_11;
int l9_16=sc_RayTracedReflectionTextureLayout_tmp;
int l9_17=l9_12;
float l9_18=l9_13;
float2 l9_19=l9_15;
int l9_20=l9_16;
int l9_21=l9_17;
float3 l9_22=float3(0.0);
if (l9_20==0)
{
l9_22=float3(l9_19,0.0);
}
else
{
if (l9_20==1)
{
l9_22=float3(l9_19.x,(l9_19.y*0.5)+(0.5-(float(l9_21)*0.5)),0.0);
}
else
{
l9_22=float3(l9_19,float(l9_21));
}
}
float3 l9_23=l9_22;
float3 l9_24=l9_23;
float2 l9_25=l9_24.xy;
float l9_26=l9_18;
float4 l9_27=sc_RayTracedReflectionTexture.sample(sc_RayTracedReflectionTextureSmpSC,l9_25,bias(l9_26));
float4 l9_28=l9_27;
l9_14=l9_28;
float4 l9_29=l9_14;
float4 l9_30=l9_29;
float4 l9_31=l9_30;
return l9_31;
}
}
float3 envBRDFApprox(thread const SurfaceProperties& surfaceProperties,thread const float& NdotV)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
float4 r=(float4(-1.0,-0.0275,-0.57200003,0.022)*surfaceProperties.roughness)+float4(1.0,0.0425,1.04,-0.039999999);
float a004=(fast::min(r.x*r.x,exp2((-9.2799997)*NdotV))*r.x)+r.y;
float2 AB=(float2(-1.04,1.04)*a004)+r.zw;
return fast::max((surfaceProperties.specColor*AB.x)+float3(AB.y),float3(0.0));
}
else
{
float3 fresnelMax=fast::max(float3(1.0-surfaceProperties.roughness),surfaceProperties.specColor);
float param=NdotV;
float3 param_1=surfaceProperties.specColor;
float3 param_2=fresnelMax;
float l9_0=1.0-param;
float l9_1=l9_0*l9_0;
float l9_2=(l9_1*l9_1)*l9_0;
float3 l9_3=param_1+((param_2-param_1)*l9_2);
return l9_3;
}
}
float sampleRayTracedAo(thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_RayTracedAoTexture,thread sampler sc_RayTracedAoTextureSmpSC,thread float4& gl_FragCoord)
{
bool l9_0=UserUniforms.receivesRayTracedAo!=0;
if (l9_0)
{
float4 l9_1=gl_FragCoord;
float2 l9_2=l9_1.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 p=l9_2;
float2 param=p;
int l9_3=0;
if ((int(sc_RayTracedAoTextureHasSwappedViews_tmp)!=0))
{
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
l9_3=1-l9_5;
}
else
{
int l9_6=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_6=0;
}
else
{
l9_6=varStereoViewID;
}
int l9_7=l9_6;
l9_3=l9_7;
}
int l9_8=l9_3;
float2 l9_9=param;
int l9_10=l9_8;
float2 l9_11=l9_9;
int l9_12=l9_10;
float l9_13=0.0;
float4 l9_14=float4(0.0);
float2 l9_15=l9_11;
int l9_16=sc_RayTracedAoTextureLayout_tmp;
int l9_17=l9_12;
float l9_18=l9_13;
float2 l9_19=l9_15;
int l9_20=l9_16;
int l9_21=l9_17;
float3 l9_22=float3(0.0);
if (l9_20==0)
{
l9_22=float3(l9_19,0.0);
}
else
{
if (l9_20==1)
{
l9_22=float3(l9_19.x,(l9_19.y*0.5)+(0.5-(float(l9_21)*0.5)),0.0);
}
else
{
l9_22=float3(l9_19,float(l9_21));
}
}
float3 l9_23=l9_22;
float3 l9_24=l9_23;
float2 l9_25=l9_24.xy;
float l9_26=l9_18;
float4 l9_27=sc_RayTracedAoTexture.sample(sc_RayTracedAoTextureSmpSC,l9_25,bias(l9_26));
float4 l9_28=l9_27;
l9_14=l9_28;
float4 l9_29=l9_14;
float4 l9_30=l9_29;
float4 l9_31=l9_30;
return l9_31.x;
}
return 0.0;
}
float srgbToLinear(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,2.2);
}
else
{
return x*x;
}
}
float linearToSrgb(thread const float& x)
{
if (SC_DEVICE_CLASS_tmp>=2)
{
return pow(x,0.45454547);
}
else
{
return sqrt(x);
}
}
float4 ngsCalculateLighting(thread const float3& albedo,thread const float& opacity,thread const float3& normal,thread const float3& position,thread const float3& viewDir,thread const float3& emissive,thread const float& metallic,thread const float& roughness,thread const float3& ao,thread const float3& specularAO,thread int& varStereoViewID,constant userUniformsObj& UserUniforms,thread texture2d<float> sc_EnvmapSpecular,thread sampler sc_EnvmapSpecularSmpSC,thread texture2d<float> sc_ScreenTexture,thread sampler sc_ScreenTextureSmpSC,thread texture2d<float> sc_ShadowTexture,thread sampler sc_ShadowTextureSmpSC,thread texture2d<float> sc_SSAOTexture,thread sampler sc_SSAOTextureSmpSC,thread texture2d<float> sc_RayTracedReflectionTexture,thread sampler sc_RayTracedReflectionTextureSmpSC,thread texture2d<float> sc_RayTracedShadowTexture,thread sampler sc_RayTracedShadowTextureSmpSC,thread texture2d<float> sc_RayTracedAoTexture,thread sampler sc_RayTracedAoTextureSmpSC,thread float4& gl_FragCoord,thread float2& varShadowTex,thread float4& FragColor0)
{
SurfaceProperties l9_0;
l9_0.albedo=float3(0.0);
l9_0.opacity=1.0;
l9_0.normal=float3(0.0);
l9_0.positionWS=float3(0.0);
l9_0.viewDirWS=float3(0.0);
l9_0.metallic=0.0;
l9_0.roughness=0.0;
l9_0.emissive=float3(0.0);
l9_0.ao=float3(1.0);
l9_0.specularAo=float3(1.0);
l9_0.bakedShadows=float3(1.0);
SurfaceProperties l9_1=l9_0;
SurfaceProperties surfaceProperties=l9_1;
surfaceProperties.opacity=opacity;
float3 param=albedo;
float3 l9_2;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_2=float3(pow(param.x,2.2),pow(param.y,2.2),pow(param.z,2.2));
}
else
{
l9_2=param*param;
}
float3 l9_3=l9_2;
surfaceProperties.albedo=l9_3;
surfaceProperties.normal=normalize(normal);
surfaceProperties.positionWS=position;
surfaceProperties.viewDirWS=viewDir;
float3 param_1=emissive;
float3 l9_4;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_4=float3(pow(param_1.x,2.2),pow(param_1.y,2.2),pow(param_1.z,2.2));
}
else
{
l9_4=param_1*param_1;
}
float3 l9_5=l9_4;
surfaceProperties.emissive=l9_5;
surfaceProperties.metallic=metallic;
surfaceProperties.roughness=roughness;
surfaceProperties.ao=ao;
surfaceProperties.specularAo=specularAO;
if ((int(sc_SSAOEnabled_tmp)!=0))
{
float3 param_2=surfaceProperties.positionWS;
surfaceProperties.ao=evaluateSSAO(param_2,varStereoViewID,UserUniforms,sc_SSAOTexture,sc_SSAOTextureSmpSC);
}
SurfaceProperties param_3=surfaceProperties;
SurfaceProperties l9_6=param_3;
float3 l9_7=mix(float3(0.039999999),l9_6.albedo*l9_6.metallic,float3(l9_6.metallic));
float3 l9_8=mix(l9_6.albedo*(1.0-l9_6.metallic),float3(0.0),float3(l9_6.metallic));
param_3.albedo=l9_8;
param_3.specColor=l9_7;
SurfaceProperties l9_9=param_3;
surfaceProperties=l9_9;
SurfaceProperties param_4=surfaceProperties;
LightingComponents l9_10;
l9_10.directDiffuse=float3(0.0);
l9_10.directSpecular=float3(0.0);
l9_10.indirectDiffuse=float3(1.0);
l9_10.indirectSpecular=float3(0.0);
l9_10.emitted=float3(0.0);
l9_10.transmitted=float3(0.0);
LightingComponents l9_11=l9_10;
LightingComponents l9_12=l9_11;
float3 l9_13=param_4.viewDirWS;
int l9_14=0;
float4 l9_15=float4(param_4.bakedShadows,1.0);
if (sc_DirectionalLightsCount_tmp>0)
{
sc_DirectionalLight_t l9_16;
LightProperties l9_17;
int l9_18=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_18<sc_DirectionalLightsCount_tmp)
{
l9_16.direction=UserUniforms.sc_DirectionalLights[l9_18].direction;
l9_16.color=UserUniforms.sc_DirectionalLights[l9_18].color;
l9_17.direction=l9_16.direction;
l9_17.color=l9_16.color.xyz;
l9_17.attenuation=l9_16.color.w;
l9_17.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
l9_14++;
LightingComponents l9_19=l9_12;
LightProperties l9_20=l9_17;
SurfaceProperties l9_21=param_4;
float3 l9_22=l9_13;
SurfaceProperties l9_23=l9_21;
float3 l9_24=l9_20.direction;
float l9_25=dot(l9_23.normal,l9_24);
float l9_26=fast::clamp(l9_25,0.0,1.0);
float3 l9_27=float3(l9_26);
l9_19.directDiffuse+=((l9_27*l9_20.color)*l9_20.attenuation);
SurfaceProperties l9_28=l9_21;
float3 l9_29=l9_20.direction;
float3 l9_30=l9_22;
l9_19.directSpecular+=((calculateDirectSpecular(l9_28,l9_29,l9_30,UserUniforms)*l9_20.color)*l9_20.attenuation);
LightingComponents l9_31=l9_19;
l9_12=l9_31;
l9_18++;
continue;
}
else
{
break;
}
}
}
if (sc_PointLightsCount_tmp>0)
{
sc_PointLight_t_1 l9_32;
LightProperties l9_33;
int l9_34=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_34<sc_PointLightsCount_tmp)
{
l9_32.falloffEnabled=UserUniforms.sc_PointLights[l9_34].falloffEnabled!=0;
l9_32.falloffEndDistance=UserUniforms.sc_PointLights[l9_34].falloffEndDistance;
l9_32.negRcpFalloffEndDistance4=UserUniforms.sc_PointLights[l9_34].negRcpFalloffEndDistance4;
l9_32.angleScale=UserUniforms.sc_PointLights[l9_34].angleScale;
l9_32.angleOffset=UserUniforms.sc_PointLights[l9_34].angleOffset;
l9_32.direction=UserUniforms.sc_PointLights[l9_34].direction;
l9_32.position=UserUniforms.sc_PointLights[l9_34].position;
l9_32.color=UserUniforms.sc_PointLights[l9_34].color;
float3 l9_35=l9_32.position-param_4.positionWS;
l9_33.direction=normalize(l9_35);
l9_33.color=l9_32.color.xyz;
l9_33.attenuation=l9_32.color.w;
l9_33.attenuation*=l9_15[(l9_14<3) ? l9_14 : 3];
float3 l9_36=l9_33.direction;
float3 l9_37=l9_32.direction;
float l9_38=l9_32.angleScale;
float l9_39=l9_32.angleOffset;
float l9_40=dot(l9_36,l9_37);
float l9_41=fast::clamp((l9_40*l9_38)+l9_39,0.0,1.0);
float l9_42=l9_41*l9_41;
l9_33.attenuation*=l9_42;
if (l9_32.falloffEnabled)
{
float l9_43=length(l9_35);
float l9_44=l9_32.falloffEndDistance;
l9_33.attenuation*=computeDistanceAttenuation(l9_43,l9_44);
}
l9_14++;
LightingComponents l9_45=l9_12;
LightProperties l9_46=l9_33;
SurfaceProperties l9_47=param_4;
float3 l9_48=l9_13;
SurfaceProperties l9_49=l9_47;
float3 l9_50=l9_46.direction;
float l9_51=dot(l9_49.normal,l9_50);
float l9_52=fast::clamp(l9_51,0.0,1.0);
float3 l9_53=float3(l9_52);
l9_45.directDiffuse+=((l9_53*l9_46.color)*l9_46.attenuation);
SurfaceProperties l9_54=l9_47;
float3 l9_55=l9_46.direction;
float3 l9_56=l9_48;
l9_45.directSpecular+=((calculateDirectSpecular(l9_54,l9_55,l9_56,UserUniforms)*l9_46.color)*l9_46.attenuation);
LightingComponents l9_57=l9_45;
l9_12=l9_57;
l9_34++;
continue;
}
else
{
break;
}
}
}
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float3 l9_58=float3(0.0);
if ((int(sc_ProjectiveShadowsReceiver_tmp)!=0))
{
float2 l9_59=abs(varShadowTex-float2(0.5));
float l9_60=fast::max(l9_59.x,l9_59.y);
float l9_61=step(l9_60,0.5);
float4 l9_62=sc_ShadowTexture.sample(sc_ShadowTextureSmpSC,varShadowTex)*l9_61;
float3 l9_63=mix(UserUniforms.sc_ShadowColor.xyz,UserUniforms.sc_ShadowColor.xyz*l9_62.xyz,float3(UserUniforms.sc_ShadowColor.w));
float l9_64=l9_62.w*UserUniforms.sc_ShadowDensity;
l9_58=mix(float3(1.0),l9_63,float3(l9_64));
}
else
{
l9_58=float3(1.0);
}
float3 l9_65=l9_58;
float3 l9_66=l9_65;
l9_12.directDiffuse*=l9_66;
l9_12.directSpecular*=l9_66;
}
bool l9_67=UserUniforms.receivesRayTracedShadows!=0;
if (l9_67)
{
float4 l9_68=gl_FragCoord;
float2 l9_69=l9_68.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_70=l9_69;
float2 l9_71=l9_70;
int l9_72=0;
if ((int(sc_RayTracedShadowTextureHasSwappedViews_tmp)!=0))
{
int l9_73=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_73=0;
}
else
{
l9_73=varStereoViewID;
}
int l9_74=l9_73;
l9_72=1-l9_74;
}
else
{
int l9_75=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_75=0;
}
else
{
l9_75=varStereoViewID;
}
int l9_76=l9_75;
l9_72=l9_76;
}
int l9_77=l9_72;
float2 l9_78=l9_71;
int l9_79=l9_77;
float2 l9_80=l9_78;
int l9_81=l9_79;
float l9_82=0.0;
float4 l9_83=float4(0.0);
float2 l9_84=l9_80;
int l9_85=sc_RayTracedShadowTextureLayout_tmp;
int l9_86=l9_81;
float l9_87=l9_82;
float2 l9_88=l9_84;
int l9_89=l9_85;
int l9_90=l9_86;
float3 l9_91=float3(0.0);
if (l9_89==0)
{
l9_91=float3(l9_88,0.0);
}
else
{
if (l9_89==1)
{
l9_91=float3(l9_88.x,(l9_88.y*0.5)+(0.5-(float(l9_90)*0.5)),0.0);
}
else
{
l9_91=float3(l9_88,float(l9_90));
}
}
float3 l9_92=l9_91;
float3 l9_93=l9_92;
float2 l9_94=l9_93.xy;
float l9_95=l9_87;
float4 l9_96=sc_RayTracedShadowTexture.sample(sc_RayTracedShadowTextureSmpSC,l9_94,bias(l9_95));
float4 l9_97=l9_96;
l9_83=l9_97;
float4 l9_98=l9_83;
float4 l9_99=l9_98;
float4 l9_100=l9_99;
float l9_101=l9_100.x;
float3 l9_102=float3(l9_101);
float3 l9_103=l9_102;
l9_12.directDiffuse*=(float3(1.0)-l9_103);
l9_12.directSpecular*=(float3(1.0)-l9_103);
}
l9_12.directDiffuse=float3(0.0);
l9_12.indirectDiffuse=float3(0.0);
SurfaceProperties l9_104=param_4;
float3 l9_105=l9_13;
float3 l9_106=float3(0.0);
if ((sc_EnvLightMode_tmp==sc_AmbientLightMode_EnvironmentMap_tmp)||(sc_EnvLightMode_tmp==sc_AmbientLightMode_FromCamera_tmp))
{
SurfaceProperties l9_107=l9_104;
float3 l9_108=l9_105;
float3 l9_109=l9_107.normal;
float3 l9_110=reflect(-l9_108,l9_109);
float3 l9_111=l9_109;
float3 l9_112=l9_110;
float l9_113=l9_107.roughness;
l9_110=getSpecularDominantDir(l9_111,l9_112,l9_113);
float l9_114=l9_107.roughness;
float l9_115=pow(l9_114,0.66666669);
float l9_116=fast::clamp(l9_115,0.0,1.0);
float l9_117=l9_116*5.0;
float l9_118=l9_117;
float l9_119=l9_118;
float3 l9_120=l9_110;
float l9_121=l9_119;
float3 l9_122=l9_120;
float l9_123=l9_121;
float4 l9_124=float4(0.0);
float3 l9_125=l9_122;
float l9_126=UserUniforms.sc_EnvmapRotation.y;
float2 l9_127=float2(0.0);
float l9_128=l9_125.x;
float l9_129=-l9_125.z;
float l9_130=(l9_128<0.0) ? (-1.0) : 1.0;
float l9_131=l9_130*acos(fast::clamp(l9_129/length(float2(l9_128,l9_129)),-1.0,1.0));
l9_127.x=l9_131-1.5707964;
l9_127.y=acos(l9_125.y);
l9_127/=float2(6.2831855,3.1415927);
l9_127.y=1.0-l9_127.y;
l9_127.x+=(l9_126/360.0);
l9_127.x=fract((l9_127.x+floor(l9_127.x))+1.0);
float2 l9_132=l9_127;
float2 l9_133=l9_132;
if (SC_DEVICE_CLASS_tmp>=2)
{
float l9_134=floor(l9_123);
float l9_135=ceil(l9_123);
float l9_136=l9_123-l9_134;
float2 l9_137=l9_133;
float2 l9_138=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_139=l9_134;
float2 l9_140=calcSeamlessPanoramicUvsForSampling(l9_137,l9_138,l9_139);
float2 l9_141=l9_140;
float l9_142=l9_134;
float2 l9_143=l9_141;
float l9_144=l9_142;
int l9_145=0;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_146=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_146=0;
}
else
{
l9_146=varStereoViewID;
}
int l9_147=l9_146;
l9_145=1-l9_147;
}
else
{
int l9_148=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_148=0;
}
else
{
l9_148=varStereoViewID;
}
int l9_149=l9_148;
l9_145=l9_149;
}
int l9_150=l9_145;
float2 l9_151=l9_143;
int l9_152=l9_150;
float l9_153=l9_144;
float4 l9_154=float4(0.0);
float2 l9_155=l9_151;
int l9_156=sc_EnvmapSpecularLayout_tmp;
int l9_157=l9_152;
float l9_158=l9_153;
float2 l9_159=l9_155;
int l9_160=l9_156;
int l9_161=l9_157;
float3 l9_162=float3(0.0);
if (l9_160==0)
{
l9_162=float3(l9_159,0.0);
}
else
{
if (l9_160==1)
{
l9_162=float3(l9_159.x,(l9_159.y*0.5)+(0.5-(float(l9_161)*0.5)),0.0);
}
else
{
l9_162=float3(l9_159,float(l9_161));
}
}
float3 l9_163=l9_162;
float3 l9_164=l9_163;
float2 l9_165=l9_164.xy;
float l9_166=l9_158;
float4 l9_167=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_165,level(l9_166));
float4 l9_168=l9_167;
l9_154=l9_168;
float4 l9_169=l9_154;
float4 l9_170=l9_169;
float4 l9_171=l9_170;
float4 l9_172=l9_171;
float2 l9_173=l9_133;
float2 l9_174=UserUniforms.sc_EnvmapSpecularSize.xy;
float l9_175=l9_135;
float2 l9_176=calcSeamlessPanoramicUvsForSampling(l9_173,l9_174,l9_175);
float2 l9_177=l9_176;
float l9_178=l9_135;
float2 l9_179=l9_177;
float l9_180=l9_178;
int l9_181=0;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_182=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_182=0;
}
else
{
l9_182=varStereoViewID;
}
int l9_183=l9_182;
l9_181=1-l9_183;
}
else
{
int l9_184=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_184=0;
}
else
{
l9_184=varStereoViewID;
}
int l9_185=l9_184;
l9_181=l9_185;
}
int l9_186=l9_181;
float2 l9_187=l9_179;
int l9_188=l9_186;
float l9_189=l9_180;
float4 l9_190=float4(0.0);
float2 l9_191=l9_187;
int l9_192=sc_EnvmapSpecularLayout_tmp;
int l9_193=l9_188;
float l9_194=l9_189;
float2 l9_195=l9_191;
int l9_196=l9_192;
int l9_197=l9_193;
float3 l9_198=float3(0.0);
if (l9_196==0)
{
l9_198=float3(l9_195,0.0);
}
else
{
if (l9_196==1)
{
l9_198=float3(l9_195.x,(l9_195.y*0.5)+(0.5-(float(l9_197)*0.5)),0.0);
}
else
{
l9_198=float3(l9_195,float(l9_197));
}
}
float3 l9_199=l9_198;
float3 l9_200=l9_199;
float2 l9_201=l9_200.xy;
float l9_202=l9_194;
float4 l9_203=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_201,level(l9_202));
float4 l9_204=l9_203;
l9_190=l9_204;
float4 l9_205=l9_190;
float4 l9_206=l9_205;
float4 l9_207=l9_206;
float4 l9_208=l9_207;
l9_124=mix(l9_172,l9_208,float4(l9_136));
}
else
{
float2 l9_209=l9_133;
float l9_210=l9_123;
float2 l9_211=l9_209;
float l9_212=l9_210;
int l9_213=0;
if ((int(sc_EnvmapSpecularHasSwappedViews_tmp)!=0))
{
int l9_214=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_214=0;
}
else
{
l9_214=varStereoViewID;
}
int l9_215=l9_214;
l9_213=1-l9_215;
}
else
{
int l9_216=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_216=0;
}
else
{
l9_216=varStereoViewID;
}
int l9_217=l9_216;
l9_213=l9_217;
}
int l9_218=l9_213;
float2 l9_219=l9_211;
int l9_220=l9_218;
float l9_221=l9_212;
float4 l9_222=float4(0.0);
float2 l9_223=l9_219;
int l9_224=sc_EnvmapSpecularLayout_tmp;
int l9_225=l9_220;
float l9_226=l9_221;
float2 l9_227=l9_223;
int l9_228=l9_224;
int l9_229=l9_225;
float3 l9_230=float3(0.0);
if (l9_228==0)
{
l9_230=float3(l9_227,0.0);
}
else
{
if (l9_228==1)
{
l9_230=float3(l9_227.x,(l9_227.y*0.5)+(0.5-(float(l9_229)*0.5)),0.0);
}
else
{
l9_230=float3(l9_227,float(l9_229));
}
}
float3 l9_231=l9_230;
float3 l9_232=l9_231;
float2 l9_233=l9_232.xy;
float l9_234=l9_226;
float4 l9_235=sc_EnvmapSpecular.sample(sc_EnvmapSpecularSmpSC,l9_233,level(l9_234));
float4 l9_236=l9_235;
l9_222=l9_236;
float4 l9_237=l9_222;
float4 l9_238=l9_237;
float4 l9_239=l9_238;
l9_124=l9_239;
}
float4 l9_240=l9_124;
float3 l9_241=l9_240.xyz*(1.0/l9_240.w);
float3 l9_242=l9_241;
float3 l9_243=l9_242*UserUniforms.sc_EnvmapExposure;
l9_243+=float3(1e-06);
float3 l9_244=l9_243;
float3 l9_245=l9_244;
bool l9_246=UserUniforms.receivesRayTracedReflections!=0;
if (l9_246)
{
float4 l9_247=sampleRayTracedReflections(varStereoViewID,UserUniforms,sc_RayTracedReflectionTexture,sc_RayTracedReflectionTextureSmpSC,gl_FragCoord);
l9_245=mix(l9_245,l9_247.xyz,float3(l9_247.w));
}
SurfaceProperties l9_248=l9_107;
float l9_249=abs(dot(l9_109,l9_108));
float3 l9_250=l9_245*envBRDFApprox(l9_248,l9_249);
l9_106+=l9_250;
}
if ((int(sc_LightEstimation_tmp)!=0))
{
SurfaceProperties l9_251=l9_104;
float3 l9_252=l9_105;
float l9_253=fast::clamp(l9_251.roughness*l9_251.roughness,0.0099999998,1.0);
float3 l9_254=UserUniforms.sc_LightEstimationData.ambientLight*l9_251.specColor;
sc_SphericalGaussianLight_t l9_255;
sc_SphericalGaussianLight_t l9_256;
sc_SphericalGaussianLight_t l9_257;
int l9_258=0;
for (int snapLoopIndex=0; snapLoopIndex==0; snapLoopIndex+=0)
{
if (l9_258<sc_LightEstimationSGCount_tmp)
{
l9_255.color=UserUniforms.sc_LightEstimationData.sg[l9_258].color;
l9_255.sharpness=UserUniforms.sc_LightEstimationData.sg[l9_258].sharpness;
l9_255.axis=UserUniforms.sc_LightEstimationData.sg[l9_258].axis;
float3 l9_259=l9_251.normal;
float l9_260=l9_253;
float3 l9_261=l9_252;
float3 l9_262=l9_251.specColor;
float3 l9_263=l9_259;
float l9_264=l9_260;
l9_256.axis=l9_263;
float l9_265=l9_264*l9_264;
l9_256.sharpness=2.0/l9_265;
l9_256.color=float3(1.0/(3.1415927*l9_265));
sc_SphericalGaussianLight_t l9_266=l9_256;
sc_SphericalGaussianLight_t l9_267=l9_266;
sc_SphericalGaussianLight_t l9_268=l9_267;
float3 l9_269=l9_261;
l9_257.axis=reflect(-l9_269,l9_268.axis);
l9_257.color=l9_268.color;
l9_257.sharpness=l9_268.sharpness;
l9_257.sharpness/=(4.0*fast::max(dot(l9_268.axis,l9_269),9.9999997e-05));
sc_SphericalGaussianLight_t l9_270=l9_257;
sc_SphericalGaussianLight_t l9_271=l9_270;
sc_SphericalGaussianLight_t l9_272=l9_271;
sc_SphericalGaussianLight_t l9_273=l9_255;
float l9_274=length((l9_272.axis*l9_272.sharpness)+(l9_273.axis*l9_273.sharpness));
float3 l9_275=(l9_272.color*exp((l9_274-l9_272.sharpness)-l9_273.sharpness))*l9_273.color;
float l9_276=1.0-exp((-2.0)*l9_274);
float3 l9_277=((l9_275*6.2831855)*l9_276)/float3(l9_274);
float3 l9_278=l9_277;
float3 l9_279=l9_271.axis;
float l9_280=l9_260*l9_260;
float l9_281=dot(l9_259,l9_279);
float l9_282=fast::clamp(l9_281,0.0,1.0);
float l9_283=l9_282;
float l9_284=dot(l9_259,l9_261);
float l9_285=fast::clamp(l9_284,0.0,1.0);
float l9_286=l9_285;
float3 l9_287=normalize(l9_271.axis+l9_261);
float l9_288=l9_280;
float l9_289=l9_283;
float l9_290=1.0/(l9_289+sqrt(l9_288+(((1.0-l9_288)*l9_289)*l9_289)));
float l9_291=l9_280;
float l9_292=l9_286;
float l9_293=1.0/(l9_292+sqrt(l9_291+(((1.0-l9_291)*l9_292)*l9_292)));
l9_278*=(l9_290*l9_293);
float l9_294=dot(l9_279,l9_287);
float l9_295=fast::clamp(l9_294,0.0,1.0);
float l9_296=pow(1.0-l9_295,5.0);
l9_278*=(l9_262+((float3(1.0)-l9_262)*l9_296));
l9_278*=l9_283;
float3 l9_297=l9_278;
l9_254+=l9_297;
l9_258++;
continue;
}
else
{
break;
}
}
float3 l9_298=l9_254;
l9_106+=l9_298;
}
float3 l9_299=l9_106;
l9_12.indirectSpecular=l9_299;
LightingComponents l9_300=l9_12;
LightingComponents lighting=l9_300;
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
lighting.directDiffuse=float3(0.0);
lighting.indirectDiffuse=float3(0.0);
float4 l9_301=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_302=FragColor0;
float4 l9_303=l9_302;
if ((int(sc_UseFramebufferFetchMarker_tmp)!=0))
{
l9_303.x+=UserUniforms._sc_framebufferFetchMarker;
}
float4 l9_304=l9_303;
l9_301=l9_304;
}
else
{
float4 l9_305=gl_FragCoord;
float2 l9_306=l9_305.xy*UserUniforms.sc_CurrentRenderTargetDims.zw;
float2 l9_307=l9_306;
float2 l9_308=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_309=1;
int l9_310=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_310=0;
}
else
{
l9_310=varStereoViewID;
}
int l9_311=l9_310;
int l9_312=l9_311;
float3 l9_313=float3(l9_307,0.0);
int l9_314=l9_309;
int l9_315=l9_312;
if (l9_314==1)
{
l9_313.y=((2.0*l9_313.y)+float(l9_315))-1.0;
}
float2 l9_316=l9_313.xy;
l9_308=l9_316;
}
else
{
l9_308=l9_307;
}
float2 l9_317=l9_308;
float2 l9_318=l9_317;
float2 l9_319=l9_318;
int l9_320=0;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_321=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_321=0;
}
else
{
l9_321=varStereoViewID;
}
int l9_322=l9_321;
l9_320=1-l9_322;
}
else
{
int l9_323=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_323=0;
}
else
{
l9_323=varStereoViewID;
}
int l9_324=l9_323;
l9_320=l9_324;
}
int l9_325=l9_320;
float2 l9_326=l9_319;
int l9_327=l9_325;
float2 l9_328=l9_326;
int l9_329=l9_327;
float l9_330=0.0;
float4 l9_331=float4(0.0);
float2 l9_332=l9_328;
int l9_333=sc_ScreenTextureLayout_tmp;
int l9_334=l9_329;
float l9_335=l9_330;
float2 l9_336=l9_332;
int l9_337=l9_333;
int l9_338=l9_334;
float3 l9_339=float3(0.0);
if (l9_337==0)
{
l9_339=float3(l9_336,0.0);
}
else
{
if (l9_337==1)
{
l9_339=float3(l9_336.x,(l9_336.y*0.5)+(0.5-(float(l9_338)*0.5)),0.0);
}
else
{
l9_339=float3(l9_336,float(l9_338));
}
}
float3 l9_340=l9_339;
float3 l9_341=l9_340;
float2 l9_342=l9_341.xy;
float l9_343=l9_335;
float4 l9_344=sc_ScreenTexture.sample(sc_ScreenTextureSmpSC,l9_342,bias(l9_343));
float4 l9_345=l9_344;
l9_331=l9_345;
float4 l9_346=l9_331;
float4 l9_347=l9_346;
float4 l9_348=l9_347;
l9_301=l9_348;
}
float4 l9_349=l9_301;
float4 l9_350=l9_349;
float3 param_5=l9_350.xyz;
float3 l9_351;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_351=float3(pow(param_5.x,2.2),pow(param_5.y,2.2),pow(param_5.z,2.2));
}
else
{
l9_351=param_5*param_5;
}
float3 l9_352=l9_351;
float3 framebuffer=l9_352;
lighting.transmitted=framebuffer*mix(float3(1.0),surfaceProperties.albedo,float3(surfaceProperties.opacity));
surfaceProperties.opacity=1.0;
}
bool enablePremultipliedAlpha=false;
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
enablePremultipliedAlpha=true;
}
SurfaceProperties param_6=surfaceProperties;
LightingComponents param_7=lighting;
bool param_8=enablePremultipliedAlpha;
float3 l9_353=float3(0.0);
bool l9_354=UserUniforms.receivesRayTracedAo!=0;
if (l9_354)
{
l9_353=param_6.albedo*(param_7.directDiffuse+(param_7.indirectDiffuse*float3(1.0-sampleRayTracedAo(varStereoViewID,UserUniforms,sc_RayTracedAoTexture,sc_RayTracedAoTextureSmpSC,gl_FragCoord))));
}
else
{
l9_353=param_6.albedo*(param_7.directDiffuse+(param_7.indirectDiffuse*param_6.ao));
}
float3 l9_355=param_7.directSpecular+(param_7.indirectSpecular*param_6.specularAo);
float3 l9_356=param_6.emissive;
float3 l9_357=param_7.transmitted;
if (param_8)
{
float l9_358=param_6.opacity;
l9_353*=srgbToLinear(l9_358);
}
float3 l9_359=((l9_353+l9_355)+l9_356)+l9_357;
float3 l9_360=l9_359;
float4 Output=float4(l9_360,surfaceProperties.opacity);
bool l9_361=UserUniforms.isProxyMode!=0;
if (l9_361)
{
return Output;
}
if (!(int(sc_BlendMode_Multiply_tmp)!=0))
{
float3 param_9=Output.xyz;
float l9_362=1.8;
float l9_363=1.4;
float l9_364=0.5;
float l9_365=1.5;
float3 l9_366=(param_9*((param_9*l9_362)+float3(l9_363)))/((param_9*((param_9*l9_362)+float3(l9_364)))+float3(l9_365));
Output=float4(l9_366.x,l9_366.y,l9_366.z,Output.w);
}
float3 param_10=Output.xyz;
float l9_367=param_10.x;
float l9_368=param_10.y;
float l9_369=param_10.z;
float3 l9_370=float3(linearToSrgb(l9_367),linearToSrgb(l9_368),linearToSrgb(l9_369));
Output=float4(l9_370.x,l9_370.y,l9_370.z,Output.w);
return Output;
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
fragment main_frag_out main_frag(main_frag_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]],bool gl_FrontFacing [[front_facing]])
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
Globals.VertexColor=rhp.color;
Globals.Surface_UVCoord0=rhp.uv0;
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
float4 emitterPositionCS=(*sc_set0.UserUniforms).sc_ViewProjectionMatrixArray[l9_8]*float4(rhp.positionWS,1.0);
Globals.gScreenCoord=((emitterPositionCS.xy/float2(emitterPositionCS.w))*0.5)+float2(0.5);
Globals.SurfacePosition_WorldSpace=rhp.positionWS;
Globals.ViewDirWS=rhp.viewDirWS;
bool l9_9=gl_FrontFacing;
Globals.gFrontFacing=float(l9_9);
Globals.VertexTangent_WorldSpace=rhp.tangentWS.xyz;
Globals.VertexNormal_WorldSpace=rhp.normalWS;
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*rhp.tangentWS.w;
Globals.BumpedNormal=float3(0.0);
Globals.PositionWS=rhp.positionWS;
}
else
{
Globals.VertexColor=in.varColor;
Globals.Surface_UVCoord0=in.varPackedTex.xy;
float4 l9_10=gl_FragCoord;
float2 l9_11=l9_10.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_12=l9_11;
float2 l9_13=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_14=1;
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
int l9_17=l9_16;
float3 l9_18=float3(l9_12,0.0);
int l9_19=l9_14;
int l9_20=l9_17;
if (l9_19==1)
{
l9_18.y=((2.0*l9_18.y)+float(l9_20))-1.0;
}
float2 l9_21=l9_18.xy;
l9_13=l9_21;
}
else
{
l9_13=l9_12;
}
float2 l9_22=l9_13;
float2 l9_23=l9_22;
Globals.gScreenCoord=l9_23;
Globals.SurfacePosition_WorldSpace=in.varPos;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
bool l9_24=gl_FrontFacing;
Globals.gFrontFacing=float(l9_24);
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPos);
Globals.PositionWS=in.varPos;
}
float3 Result_N98=float3(0.0);
float3 param=float3(0.0);
float3 param_1=(*sc_set0.UserUniforms).Port_Default_N098;
ssGlobals param_3=Globals;
float3 param_2;
if ((int(Tweak_N95_tmp)!=0))
{
float4 l9_25=float4(0.0);
l9_25=param_3.VertexColor;
param=l9_25.xyz;
param_2=param;
}
else
{
param_2=param_1;
}
Result_N98=param_2;
float3 Result_N97=float3(0.0);
float3 param_4=float3(0.0);
float3 param_5=(*sc_set0.UserUniforms).Port_Default_N097;
ssGlobals param_7=Globals;
float3 param_6;
if ((int(Tweak_N58_tmp)!=0))
{
float4 l9_26=float4(0.0);
int l9_27=0;
if ((int(baseTexHasSwappedViews_tmp)!=0))
{
int l9_28=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_28=0;
}
else
{
l9_28=in.varStereoViewID;
}
int l9_29=l9_28;
l9_27=1-l9_29;
}
else
{
int l9_30=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_30=0;
}
else
{
l9_30=in.varStereoViewID;
}
int l9_31=l9_30;
l9_27=l9_31;
}
int l9_32=l9_27;
int l9_33=baseTexLayout_tmp;
int l9_34=l9_32;
float2 l9_35=param_7.Surface_UVCoord0;
bool l9_36=(int(SC_USE_UV_TRANSFORM_baseTex_tmp)!=0);
float3x3 l9_37=(*sc_set0.UserUniforms).baseTexTransform;
int2 l9_38=int2(SC_SOFTWARE_WRAP_MODE_U_baseTex_tmp,SC_SOFTWARE_WRAP_MODE_V_baseTex_tmp);
bool l9_39=(int(SC_USE_UV_MIN_MAX_baseTex_tmp)!=0);
float4 l9_40=(*sc_set0.UserUniforms).baseTexUvMinMax;
bool l9_41=(int(SC_USE_CLAMP_TO_BORDER_baseTex_tmp)!=0);
float4 l9_42=(*sc_set0.UserUniforms).baseTexBorderColor;
float l9_43=0.0;
bool l9_44=l9_41&&(!l9_39);
float l9_45=1.0;
float l9_46=l9_35.x;
int l9_47=l9_38.x;
if (l9_47==1)
{
l9_46=fract(l9_46);
}
else
{
if (l9_47==2)
{
float l9_48=fract(l9_46);
float l9_49=l9_46-l9_48;
float l9_50=step(0.25,fract(l9_49*0.5));
l9_46=mix(l9_48,1.0-l9_48,fast::clamp(l9_50,0.0,1.0));
}
}
l9_35.x=l9_46;
float l9_51=l9_35.y;
int l9_52=l9_38.y;
if (l9_52==1)
{
l9_51=fract(l9_51);
}
else
{
if (l9_52==2)
{
float l9_53=fract(l9_51);
float l9_54=l9_51-l9_53;
float l9_55=step(0.25,fract(l9_54*0.5));
l9_51=mix(l9_53,1.0-l9_53,fast::clamp(l9_55,0.0,1.0));
}
}
l9_35.y=l9_51;
if (l9_39)
{
bool l9_56=l9_41;
bool l9_57;
if (l9_56)
{
l9_57=l9_38.x==3;
}
else
{
l9_57=l9_56;
}
float l9_58=l9_35.x;
float l9_59=l9_40.x;
float l9_60=l9_40.z;
bool l9_61=l9_57;
float l9_62=l9_45;
float l9_63=fast::clamp(l9_58,l9_59,l9_60);
float l9_64=step(abs(l9_58-l9_63),9.9999997e-06);
l9_62*=(l9_64+((1.0-float(l9_61))*(1.0-l9_64)));
l9_58=l9_63;
l9_35.x=l9_58;
l9_45=l9_62;
bool l9_65=l9_41;
bool l9_66;
if (l9_65)
{
l9_66=l9_38.y==3;
}
else
{
l9_66=l9_65;
}
float l9_67=l9_35.y;
float l9_68=l9_40.y;
float l9_69=l9_40.w;
bool l9_70=l9_66;
float l9_71=l9_45;
float l9_72=fast::clamp(l9_67,l9_68,l9_69);
float l9_73=step(abs(l9_67-l9_72),9.9999997e-06);
l9_71*=(l9_73+((1.0-float(l9_70))*(1.0-l9_73)));
l9_67=l9_72;
l9_35.y=l9_67;
l9_45=l9_71;
}
float2 l9_74=l9_35;
bool l9_75=l9_36;
float3x3 l9_76=l9_37;
if (l9_75)
{
l9_74=float2((l9_76*float3(l9_74,1.0)).xy);
}
float2 l9_77=l9_74;
float2 l9_78=l9_77;
float2 l9_79=l9_78;
l9_35=l9_79;
float l9_80=l9_35.x;
int l9_81=l9_38.x;
bool l9_82=l9_44;
float l9_83=l9_45;
if ((l9_81==0)||(l9_81==3))
{
float l9_84=l9_80;
float l9_85=0.0;
float l9_86=1.0;
bool l9_87=l9_82;
float l9_88=l9_83;
float l9_89=fast::clamp(l9_84,l9_85,l9_86);
float l9_90=step(abs(l9_84-l9_89),9.9999997e-06);
l9_88*=(l9_90+((1.0-float(l9_87))*(1.0-l9_90)));
l9_84=l9_89;
l9_80=l9_84;
l9_83=l9_88;
}
l9_35.x=l9_80;
l9_45=l9_83;
float l9_91=l9_35.y;
int l9_92=l9_38.y;
bool l9_93=l9_44;
float l9_94=l9_45;
if ((l9_92==0)||(l9_92==3))
{
float l9_95=l9_91;
float l9_96=0.0;
float l9_97=1.0;
bool l9_98=l9_93;
float l9_99=l9_94;
float l9_100=fast::clamp(l9_95,l9_96,l9_97);
float l9_101=step(abs(l9_95-l9_100),9.9999997e-06);
l9_99*=(l9_101+((1.0-float(l9_98))*(1.0-l9_101)));
l9_95=l9_100;
l9_91=l9_95;
l9_94=l9_99;
}
l9_35.y=l9_91;
l9_45=l9_94;
float2 l9_102=l9_35;
int l9_103=l9_33;
int l9_104=l9_34;
float l9_105=l9_43;
float2 l9_106=l9_102;
int l9_107=l9_103;
int l9_108=l9_104;
float3 l9_109=float3(0.0);
if (l9_107==0)
{
l9_109=float3(l9_106,0.0);
}
else
{
if (l9_107==1)
{
l9_109=float3(l9_106.x,(l9_106.y*0.5)+(0.5-(float(l9_108)*0.5)),0.0);
}
else
{
l9_109=float3(l9_106,float(l9_108));
}
}
float3 l9_110=l9_109;
float3 l9_111=l9_110;
float2 l9_112=l9_111.xy;
float l9_113=l9_105;
float4 l9_114=sc_set0.baseTex.sample(sc_set0.baseTexSmpSC,l9_112,bias(l9_113));
float4 l9_115=l9_114;
float4 l9_116=l9_115;
if (l9_41)
{
l9_116=mix(l9_42,l9_116,float4(l9_45));
}
float4 l9_117=l9_116;
l9_26=l9_117;
param_4=l9_26.xyz;
param_6=param_4;
}
else
{
param_6=param_5;
}
Result_N97=param_6;
float3 Output_N42=float3(0.0);
float3 param_8=(*sc_set0.UserUniforms).baseColor;
Output_N42=param_8;
float3 Output_N96=float3(0.0);
Output_N96=Result_N97*Output_N42;
float3 Output_N99=float3(0.0);
Output_N99=Result_N98*Output_N96;
float3 Value_N32=float3(0.0);
Value_N32=Output_N99;
float3 Value_N31=float3(0.0);
Value_N31=Value_N32;
float2 ScreenCoord_N11=float2(0.0);
ScreenCoord_N11=Globals.gScreenCoord;
float3 ViewVector_N36=float3(0.0);
ViewVector_N36=-Globals.ViewDirWS;
float3 Output_N136=float3(0.0);
float param_9=1.0;
float3 param_10=float3(1.0);
float3 param_11=float3(0.0);
ssGlobals param_13=Globals;
float l9_118=0.0;
l9_118=param_13.gFrontFacing;
float l9_119=0.0;
float l9_120;
if ((int(Tweak_N91_tmp)!=0))
{
l9_120=1.001;
}
else
{
l9_120=0.001;
}
l9_120-=0.001;
l9_119=l9_120;
float l9_121=0.0;
float l9_122=l9_118;
bool l9_123=(l9_122*1.0)!=0.0;
bool l9_124;
if (!l9_123)
{
l9_124=(l9_119*1.0)!=0.0;
}
else
{
l9_124=l9_123;
}
l9_121=float(l9_124);
param_9=l9_121;
float3 param_12;
if ((param_9*1.0)!=0.0)
{
float3 l9_125=float3(0.0);
float3 l9_126=float3(0.0);
float3 l9_127=float3(0.5,0.5,1.0);
ssGlobals l9_128=param_13;
float3 l9_129;
if ((int(Tweak_N38_tmp)!=0))
{
float3 l9_130=float3(0.0);
l9_130=l9_128.VertexTangent_WorldSpace;
float3 l9_131=float3(0.0);
l9_131=l9_128.VertexBinormal_WorldSpace;
float3 l9_132=float3(0.0);
float3 l9_133=float3(0.0);
float3 l9_134=float3(0.0);
ssGlobals l9_135=l9_128;
float3 l9_136;
if ((int(Tweak_N91_tmp)!=0))
{
float3 l9_137=float3(0.0);
ssGlobals l9_138=l9_135;
bool l9_139=(*sc_set0.UserUniforms).isProxyMode!=0;
float3 l9_140;
if (l9_139)
{
l9_140=CalculateProxyFaceNormal((*sc_set0.UserUniforms),sc_set0.z_hitIdAndBarycentric,sc_set0.z_hitIdAndBarycentricSmp,gl_FragCoord,(*sc_set0.layoutVertices),(*sc_set0.layoutVerticesPN),(*sc_set0.layoutIndices));
}
else
{
float3 l9_141=l9_138.SurfacePosition_WorldSpace;
float3 l9_142=float3(dfdx(l9_141.x),dfdx(l9_141.y),dfdx(l9_141.z));
float3 l9_143=float3(dfdy(l9_141.x),dfdy(l9_141.y),dfdy(l9_141.z));
l9_140=cross(l9_142,l9_143);
l9_140/=float3(length(l9_140));
}
l9_137=l9_140;
l9_133=l9_137;
l9_136=l9_133;
}
else
{
float3 l9_144=float3(0.0);
l9_144=l9_135.VertexNormal_WorldSpace;
l9_134=l9_144;
l9_136=l9_134;
}
l9_132=l9_136;
float3x3 l9_145=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_145=float3x3(float3(l9_130),float3(l9_131),float3(l9_132));
float4 l9_146=float4(0.0);
ssGlobals l9_147=l9_128;
int l9_148=0;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_149=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_149=0;
}
else
{
l9_149=in.varStereoViewID;
}
int l9_150=l9_149;
l9_148=1-l9_150;
}
else
{
int l9_151=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_151=0;
}
else
{
l9_151=in.varStereoViewID;
}
int l9_152=l9_151;
l9_148=l9_152;
}
int l9_153=l9_148;
int l9_154=normalTexLayout_tmp;
int l9_155=l9_153;
float2 l9_156=l9_147.Surface_UVCoord0;
bool l9_157=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_158=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_159=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_160=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_161=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_162=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_163=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_164=0.0;
bool l9_165=l9_162&&(!l9_160);
float l9_166=1.0;
float l9_167=l9_156.x;
int l9_168=l9_159.x;
if (l9_168==1)
{
l9_167=fract(l9_167);
}
else
{
if (l9_168==2)
{
float l9_169=fract(l9_167);
float l9_170=l9_167-l9_169;
float l9_171=step(0.25,fract(l9_170*0.5));
l9_167=mix(l9_169,1.0-l9_169,fast::clamp(l9_171,0.0,1.0));
}
}
l9_156.x=l9_167;
float l9_172=l9_156.y;
int l9_173=l9_159.y;
if (l9_173==1)
{
l9_172=fract(l9_172);
}
else
{
if (l9_173==2)
{
float l9_174=fract(l9_172);
float l9_175=l9_172-l9_174;
float l9_176=step(0.25,fract(l9_175*0.5));
l9_172=mix(l9_174,1.0-l9_174,fast::clamp(l9_176,0.0,1.0));
}
}
l9_156.y=l9_172;
if (l9_160)
{
bool l9_177=l9_162;
bool l9_178;
if (l9_177)
{
l9_178=l9_159.x==3;
}
else
{
l9_178=l9_177;
}
float l9_179=l9_156.x;
float l9_180=l9_161.x;
float l9_181=l9_161.z;
bool l9_182=l9_178;
float l9_183=l9_166;
float l9_184=fast::clamp(l9_179,l9_180,l9_181);
float l9_185=step(abs(l9_179-l9_184),9.9999997e-06);
l9_183*=(l9_185+((1.0-float(l9_182))*(1.0-l9_185)));
l9_179=l9_184;
l9_156.x=l9_179;
l9_166=l9_183;
bool l9_186=l9_162;
bool l9_187;
if (l9_186)
{
l9_187=l9_159.y==3;
}
else
{
l9_187=l9_186;
}
float l9_188=l9_156.y;
float l9_189=l9_161.y;
float l9_190=l9_161.w;
bool l9_191=l9_187;
float l9_192=l9_166;
float l9_193=fast::clamp(l9_188,l9_189,l9_190);
float l9_194=step(abs(l9_188-l9_193),9.9999997e-06);
l9_192*=(l9_194+((1.0-float(l9_191))*(1.0-l9_194)));
l9_188=l9_193;
l9_156.y=l9_188;
l9_166=l9_192;
}
float2 l9_195=l9_156;
bool l9_196=l9_157;
float3x3 l9_197=l9_158;
if (l9_196)
{
l9_195=float2((l9_197*float3(l9_195,1.0)).xy);
}
float2 l9_198=l9_195;
float2 l9_199=l9_198;
float2 l9_200=l9_199;
l9_156=l9_200;
float l9_201=l9_156.x;
int l9_202=l9_159.x;
bool l9_203=l9_165;
float l9_204=l9_166;
if ((l9_202==0)||(l9_202==3))
{
float l9_205=l9_201;
float l9_206=0.0;
float l9_207=1.0;
bool l9_208=l9_203;
float l9_209=l9_204;
float l9_210=fast::clamp(l9_205,l9_206,l9_207);
float l9_211=step(abs(l9_205-l9_210),9.9999997e-06);
l9_209*=(l9_211+((1.0-float(l9_208))*(1.0-l9_211)));
l9_205=l9_210;
l9_201=l9_205;
l9_204=l9_209;
}
l9_156.x=l9_201;
l9_166=l9_204;
float l9_212=l9_156.y;
int l9_213=l9_159.y;
bool l9_214=l9_165;
float l9_215=l9_166;
if ((l9_213==0)||(l9_213==3))
{
float l9_216=l9_212;
float l9_217=0.0;
float l9_218=1.0;
bool l9_219=l9_214;
float l9_220=l9_215;
float l9_221=fast::clamp(l9_216,l9_217,l9_218);
float l9_222=step(abs(l9_216-l9_221),9.9999997e-06);
l9_220*=(l9_222+((1.0-float(l9_219))*(1.0-l9_222)));
l9_216=l9_221;
l9_212=l9_216;
l9_215=l9_220;
}
l9_156.y=l9_212;
l9_166=l9_215;
float2 l9_223=l9_156;
int l9_224=l9_154;
int l9_225=l9_155;
float l9_226=l9_164;
float2 l9_227=l9_223;
int l9_228=l9_224;
int l9_229=l9_225;
float3 l9_230=float3(0.0);
if (l9_228==0)
{
l9_230=float3(l9_227,0.0);
}
else
{
if (l9_228==1)
{
l9_230=float3(l9_227.x,(l9_227.y*0.5)+(0.5-(float(l9_229)*0.5)),0.0);
}
else
{
l9_230=float3(l9_227,float(l9_229));
}
}
float3 l9_231=l9_230;
float3 l9_232=l9_231;
float2 l9_233=l9_232.xy;
float l9_234=l9_226;
float4 l9_235=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_233,bias(l9_234));
float4 l9_236=l9_235;
float4 l9_237=l9_236;
if (l9_162)
{
l9_237=mix(l9_163,l9_237,float4(l9_166));
}
float4 l9_238=l9_237;
float4 l9_239=l9_238;
float3 l9_240=(l9_239.xyz*1.9921875)-float3(1.0);
l9_239=float4(l9_240.x,l9_240.y,l9_240.z,l9_239.w);
l9_146=l9_239;
float3 l9_241=float3(0.0);
l9_241=l9_145*l9_146.xyz;
float3 l9_242=float3(0.0);
float3 l9_243=l9_241;
float l9_244=dot(l9_243,l9_243);
float l9_245;
if (l9_244>0.0)
{
l9_245=1.0/sqrt(l9_244);
}
else
{
l9_245=0.0;
}
float l9_246=l9_245;
float3 l9_247=l9_243*l9_246;
l9_242=l9_247;
l9_126=l9_242;
l9_129=l9_126;
}
else
{
float3 l9_248=float3(0.0);
float3 l9_249=float3(0.0);
float3 l9_250=float3(0.0);
ssGlobals l9_251=l9_128;
float3 l9_252;
if ((int(Tweak_N91_tmp)!=0))
{
float3 l9_253=float3(0.0);
ssGlobals l9_254=l9_251;
bool l9_255=(*sc_set0.UserUniforms).isProxyMode!=0;
float3 l9_256;
if (l9_255)
{
l9_256=CalculateProxyFaceNormal((*sc_set0.UserUniforms),sc_set0.z_hitIdAndBarycentric,sc_set0.z_hitIdAndBarycentricSmp,gl_FragCoord,(*sc_set0.layoutVertices),(*sc_set0.layoutVerticesPN),(*sc_set0.layoutIndices));
}
else
{
float3 l9_257=l9_254.SurfacePosition_WorldSpace;
float3 l9_258=float3(dfdx(l9_257.x),dfdx(l9_257.y),dfdx(l9_257.z));
float3 l9_259=float3(dfdy(l9_257.x),dfdy(l9_257.y),dfdy(l9_257.z));
l9_256=cross(l9_258,l9_259);
l9_256/=float3(length(l9_256));
}
l9_253=l9_256;
l9_249=l9_253;
l9_252=l9_249;
}
else
{
float3 l9_260=float3(0.0);
l9_260=l9_251.VertexNormal_WorldSpace;
l9_250=l9_260;
l9_252=l9_250;
}
l9_248=l9_252;
l9_127=l9_248;
l9_129=l9_127;
}
l9_125=l9_129;
param_10=l9_125;
param_12=param_10;
}
else
{
float3 l9_261=float3(0.0);
float3 l9_262=float3(0.0);
float3 l9_263=float3(0.5,0.5,1.0);
ssGlobals l9_264=param_13;
float3 l9_265;
if ((int(Tweak_N38_tmp)!=0))
{
float3 l9_266=float3(0.0);
l9_266=l9_264.VertexTangent_WorldSpace;
float3 l9_267=float3(0.0);
l9_267=l9_264.VertexBinormal_WorldSpace;
float3 l9_268=float3(0.0);
float3 l9_269=float3(0.0);
float3 l9_270=float3(0.0);
ssGlobals l9_271=l9_264;
float3 l9_272;
if ((int(Tweak_N91_tmp)!=0))
{
float3 l9_273=float3(0.0);
ssGlobals l9_274=l9_271;
bool l9_275=(*sc_set0.UserUniforms).isProxyMode!=0;
float3 l9_276;
if (l9_275)
{
l9_276=CalculateProxyFaceNormal((*sc_set0.UserUniforms),sc_set0.z_hitIdAndBarycentric,sc_set0.z_hitIdAndBarycentricSmp,gl_FragCoord,(*sc_set0.layoutVertices),(*sc_set0.layoutVerticesPN),(*sc_set0.layoutIndices));
}
else
{
float3 l9_277=l9_274.SurfacePosition_WorldSpace;
float3 l9_278=float3(dfdx(l9_277.x),dfdx(l9_277.y),dfdx(l9_277.z));
float3 l9_279=float3(dfdy(l9_277.x),dfdy(l9_277.y),dfdy(l9_277.z));
l9_276=cross(l9_278,l9_279);
l9_276/=float3(length(l9_276));
}
l9_273=l9_276;
l9_269=l9_273;
l9_272=l9_269;
}
else
{
float3 l9_280=float3(0.0);
l9_280=l9_271.VertexNormal_WorldSpace;
l9_270=l9_280;
l9_272=l9_270;
}
l9_268=l9_272;
float3x3 l9_281=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_281=float3x3(float3(l9_266),float3(l9_267),float3(l9_268));
float4 l9_282=float4(0.0);
ssGlobals l9_283=l9_264;
int l9_284=0;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_285=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_285=0;
}
else
{
l9_285=in.varStereoViewID;
}
int l9_286=l9_285;
l9_284=1-l9_286;
}
else
{
int l9_287=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_287=0;
}
else
{
l9_287=in.varStereoViewID;
}
int l9_288=l9_287;
l9_284=l9_288;
}
int l9_289=l9_284;
int l9_290=normalTexLayout_tmp;
int l9_291=l9_289;
float2 l9_292=l9_283.Surface_UVCoord0;
bool l9_293=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_294=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_295=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_296=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_297=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_298=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_299=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_300=0.0;
bool l9_301=l9_298&&(!l9_296);
float l9_302=1.0;
float l9_303=l9_292.x;
int l9_304=l9_295.x;
if (l9_304==1)
{
l9_303=fract(l9_303);
}
else
{
if (l9_304==2)
{
float l9_305=fract(l9_303);
float l9_306=l9_303-l9_305;
float l9_307=step(0.25,fract(l9_306*0.5));
l9_303=mix(l9_305,1.0-l9_305,fast::clamp(l9_307,0.0,1.0));
}
}
l9_292.x=l9_303;
float l9_308=l9_292.y;
int l9_309=l9_295.y;
if (l9_309==1)
{
l9_308=fract(l9_308);
}
else
{
if (l9_309==2)
{
float l9_310=fract(l9_308);
float l9_311=l9_308-l9_310;
float l9_312=step(0.25,fract(l9_311*0.5));
l9_308=mix(l9_310,1.0-l9_310,fast::clamp(l9_312,0.0,1.0));
}
}
l9_292.y=l9_308;
if (l9_296)
{
bool l9_313=l9_298;
bool l9_314;
if (l9_313)
{
l9_314=l9_295.x==3;
}
else
{
l9_314=l9_313;
}
float l9_315=l9_292.x;
float l9_316=l9_297.x;
float l9_317=l9_297.z;
bool l9_318=l9_314;
float l9_319=l9_302;
float l9_320=fast::clamp(l9_315,l9_316,l9_317);
float l9_321=step(abs(l9_315-l9_320),9.9999997e-06);
l9_319*=(l9_321+((1.0-float(l9_318))*(1.0-l9_321)));
l9_315=l9_320;
l9_292.x=l9_315;
l9_302=l9_319;
bool l9_322=l9_298;
bool l9_323;
if (l9_322)
{
l9_323=l9_295.y==3;
}
else
{
l9_323=l9_322;
}
float l9_324=l9_292.y;
float l9_325=l9_297.y;
float l9_326=l9_297.w;
bool l9_327=l9_323;
float l9_328=l9_302;
float l9_329=fast::clamp(l9_324,l9_325,l9_326);
float l9_330=step(abs(l9_324-l9_329),9.9999997e-06);
l9_328*=(l9_330+((1.0-float(l9_327))*(1.0-l9_330)));
l9_324=l9_329;
l9_292.y=l9_324;
l9_302=l9_328;
}
float2 l9_331=l9_292;
bool l9_332=l9_293;
float3x3 l9_333=l9_294;
if (l9_332)
{
l9_331=float2((l9_333*float3(l9_331,1.0)).xy);
}
float2 l9_334=l9_331;
float2 l9_335=l9_334;
float2 l9_336=l9_335;
l9_292=l9_336;
float l9_337=l9_292.x;
int l9_338=l9_295.x;
bool l9_339=l9_301;
float l9_340=l9_302;
if ((l9_338==0)||(l9_338==3))
{
float l9_341=l9_337;
float l9_342=0.0;
float l9_343=1.0;
bool l9_344=l9_339;
float l9_345=l9_340;
float l9_346=fast::clamp(l9_341,l9_342,l9_343);
float l9_347=step(abs(l9_341-l9_346),9.9999997e-06);
l9_345*=(l9_347+((1.0-float(l9_344))*(1.0-l9_347)));
l9_341=l9_346;
l9_337=l9_341;
l9_340=l9_345;
}
l9_292.x=l9_337;
l9_302=l9_340;
float l9_348=l9_292.y;
int l9_349=l9_295.y;
bool l9_350=l9_301;
float l9_351=l9_302;
if ((l9_349==0)||(l9_349==3))
{
float l9_352=l9_348;
float l9_353=0.0;
float l9_354=1.0;
bool l9_355=l9_350;
float l9_356=l9_351;
float l9_357=fast::clamp(l9_352,l9_353,l9_354);
float l9_358=step(abs(l9_352-l9_357),9.9999997e-06);
l9_356*=(l9_358+((1.0-float(l9_355))*(1.0-l9_358)));
l9_352=l9_357;
l9_348=l9_352;
l9_351=l9_356;
}
l9_292.y=l9_348;
l9_302=l9_351;
float2 l9_359=l9_292;
int l9_360=l9_290;
int l9_361=l9_291;
float l9_362=l9_300;
float2 l9_363=l9_359;
int l9_364=l9_360;
int l9_365=l9_361;
float3 l9_366=float3(0.0);
if (l9_364==0)
{
l9_366=float3(l9_363,0.0);
}
else
{
if (l9_364==1)
{
l9_366=float3(l9_363.x,(l9_363.y*0.5)+(0.5-(float(l9_365)*0.5)),0.0);
}
else
{
l9_366=float3(l9_363,float(l9_365));
}
}
float3 l9_367=l9_366;
float3 l9_368=l9_367;
float2 l9_369=l9_368.xy;
float l9_370=l9_362;
float4 l9_371=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_369,bias(l9_370));
float4 l9_372=l9_371;
float4 l9_373=l9_372;
if (l9_298)
{
l9_373=mix(l9_299,l9_373,float4(l9_302));
}
float4 l9_374=l9_373;
float4 l9_375=l9_374;
float3 l9_376=(l9_375.xyz*1.9921875)-float3(1.0);
l9_375=float4(l9_376.x,l9_376.y,l9_376.z,l9_375.w);
l9_282=l9_375;
float3 l9_377=float3(0.0);
l9_377=l9_281*l9_282.xyz;
float3 l9_378=float3(0.0);
float3 l9_379=l9_377;
float l9_380=dot(l9_379,l9_379);
float l9_381;
if (l9_380>0.0)
{
l9_381=1.0/sqrt(l9_380);
}
else
{
l9_381=0.0;
}
float l9_382=l9_381;
float3 l9_383=l9_379*l9_382;
l9_378=l9_383;
l9_262=l9_378;
l9_265=l9_262;
}
else
{
float3 l9_384=float3(0.0);
float3 l9_385=float3(0.0);
float3 l9_386=float3(0.0);
ssGlobals l9_387=l9_264;
float3 l9_388;
if ((int(Tweak_N91_tmp)!=0))
{
float3 l9_389=float3(0.0);
ssGlobals l9_390=l9_387;
bool l9_391=(*sc_set0.UserUniforms).isProxyMode!=0;
float3 l9_392;
if (l9_391)
{
l9_392=CalculateProxyFaceNormal((*sc_set0.UserUniforms),sc_set0.z_hitIdAndBarycentric,sc_set0.z_hitIdAndBarycentricSmp,gl_FragCoord,(*sc_set0.layoutVertices),(*sc_set0.layoutVerticesPN),(*sc_set0.layoutIndices));
}
else
{
float3 l9_393=l9_390.SurfacePosition_WorldSpace;
float3 l9_394=float3(dfdx(l9_393.x),dfdx(l9_393.y),dfdx(l9_393.z));
float3 l9_395=float3(dfdy(l9_393.x),dfdy(l9_393.y),dfdy(l9_393.z));
l9_392=cross(l9_394,l9_395);
l9_392/=float3(length(l9_392));
}
l9_389=l9_392;
l9_385=l9_389;
l9_388=l9_385;
}
else
{
float3 l9_396=float3(0.0);
l9_396=l9_387.VertexNormal_WorldSpace;
l9_386=l9_396;
l9_388=l9_386;
}
l9_384=l9_388;
l9_263=l9_384;
l9_265=l9_263;
}
l9_261=l9_265;
float3 l9_397=float3(0.0);
l9_397=-l9_261;
param_11=l9_397;
param_12=param_11;
}
Output_N136=param_12;
float3 Value_N41=float3(0.0);
Value_N41=Output_N136;
float Output_N8=0.0;
float param_14=(*sc_set0.UserUniforms).indexOfRefraction;
Output_N8=param_14;
float Value_N29=0.0;
Value_N29=Output_N8;
float Output_N5=0.0;
Output_N5=(*sc_set0.UserUniforms).Port_Input0_N005/Value_N29;
float3 Output_N45=float3(0.0);
Output_N45=refract(ViewVector_N36,Value_N41,Output_N5);
float2 Output_N47=float2(0.0);
Output_N47=float2(Output_N45.x,Output_N45.y);
float Output_N60=0.0;
float param_15=(*sc_set0.UserUniforms).intensity;
Output_N60=param_15;
float Value_N49=0.0;
Value_N49=Output_N60;
float2 Output_N48=float2(0.0);
Output_N48=Output_N47*float2(Value_N49);
float2 Value_N3=float2(0.0);
Value_N3=Output_N48;
float2 Output_N14=float2(0.0);
Output_N14=ScreenCoord_N11+Value_N3;
float Output_N57=0.0;
float param_16=(*sc_set0.UserUniforms).chromaticAberration;
Output_N57=param_16;
float Value_N40=0.0;
Value_N40=Output_N57;
float Value_N7=0.0;
Value_N7=Value_N40;
float Depth_N24=0.0;
float l9_398=(*sc_set0.UserUniforms).sc_Camera.clipPlanes.x;
float l9_399=(*sc_set0.UserUniforms).sc_Camera.clipPlanes.y;
float4 l9_400=gl_FragCoord;
float param_17=(l9_399*l9_398)/(l9_399+(l9_400.z*(l9_398-l9_399)));
param_17=(param_17-l9_398)/(l9_399-l9_398);
Depth_N24=param_17;
float Output_N66=0.0;
Output_N66=1.0-Depth_N24;
float Output_N37=0.0;
Output_N37=(Value_N7*Output_N66)*Output_N66;
float3 ViewVector_N120=float3(0.0);
ViewVector_N120=Globals.ViewDirWS;
float3 Value_N72=float3(0.0);
Value_N72=Value_N41;
float3 Value_N101=float3(0.0);
Value_N101=Value_N72;
float Output_N178=0.0;
Output_N178=dot(ViewVector_N120,Value_N101);
float Output_N180=0.0;
Output_N180=1.0-Output_N178;
float Export_N182=0.0;
Export_N182=Output_N180;
float Output_N12=0.0;
Output_N12=(Output_N37*Export_N182)*(*sc_set0.UserUniforms).Port_Input2_N012;
float2 Output_N15=float2(0.0);
Output_N15=Output_N14+float2(Output_N12);
float Output_N59=0.0;
float param_18=(*sc_set0.UserUniforms).thickness;
Output_N59=param_18;
float Value_N43=0.0;
Value_N43=Output_N59;
float Value_N10=0.0;
Value_N10=Value_N43;
float4 Color_N1=float4(0.0);
int l9_401=0;
if ((int(backgroundHasSwappedViews_tmp)!=0))
{
int l9_402=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_402=0;
}
else
{
l9_402=in.varStereoViewID;
}
int l9_403=l9_402;
l9_401=1-l9_403;
}
else
{
int l9_404=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_404=0;
}
else
{
l9_404=in.varStereoViewID;
}
int l9_405=l9_404;
l9_401=l9_405;
}
int l9_406=l9_401;
int param_19=backgroundLayout_tmp;
int param_20=l9_406;
float2 param_21=Output_N15;
bool param_22=(int(SC_USE_UV_TRANSFORM_background_tmp)!=0);
float3x3 param_23=(*sc_set0.UserUniforms).backgroundTransform;
int2 param_24=int2(SC_SOFTWARE_WRAP_MODE_U_background_tmp,SC_SOFTWARE_WRAP_MODE_V_background_tmp);
bool param_25=(int(SC_USE_UV_MIN_MAX_background_tmp)!=0);
float4 param_26=(*sc_set0.UserUniforms).backgroundUvMinMax;
bool param_27=(int(SC_USE_CLAMP_TO_BORDER_background_tmp)!=0);
float4 param_28=(*sc_set0.UserUniforms).backgroundBorderColor;
float param_29=Value_N10;
bool l9_407=param_27&&(!param_25);
float l9_408=1.0;
float l9_409=param_21.x;
int l9_410=param_24.x;
if (l9_410==1)
{
l9_409=fract(l9_409);
}
else
{
if (l9_410==2)
{
float l9_411=fract(l9_409);
float l9_412=l9_409-l9_411;
float l9_413=step(0.25,fract(l9_412*0.5));
l9_409=mix(l9_411,1.0-l9_411,fast::clamp(l9_413,0.0,1.0));
}
}
param_21.x=l9_409;
float l9_414=param_21.y;
int l9_415=param_24.y;
if (l9_415==1)
{
l9_414=fract(l9_414);
}
else
{
if (l9_415==2)
{
float l9_416=fract(l9_414);
float l9_417=l9_414-l9_416;
float l9_418=step(0.25,fract(l9_417*0.5));
l9_414=mix(l9_416,1.0-l9_416,fast::clamp(l9_418,0.0,1.0));
}
}
param_21.y=l9_414;
if (param_25)
{
bool l9_419=param_27;
bool l9_420;
if (l9_419)
{
l9_420=param_24.x==3;
}
else
{
l9_420=l9_419;
}
float l9_421=param_21.x;
float l9_422=param_26.x;
float l9_423=param_26.z;
bool l9_424=l9_420;
float l9_425=l9_408;
float l9_426=fast::clamp(l9_421,l9_422,l9_423);
float l9_427=step(abs(l9_421-l9_426),9.9999997e-06);
l9_425*=(l9_427+((1.0-float(l9_424))*(1.0-l9_427)));
l9_421=l9_426;
param_21.x=l9_421;
l9_408=l9_425;
bool l9_428=param_27;
bool l9_429;
if (l9_428)
{
l9_429=param_24.y==3;
}
else
{
l9_429=l9_428;
}
float l9_430=param_21.y;
float l9_431=param_26.y;
float l9_432=param_26.w;
bool l9_433=l9_429;
float l9_434=l9_408;
float l9_435=fast::clamp(l9_430,l9_431,l9_432);
float l9_436=step(abs(l9_430-l9_435),9.9999997e-06);
l9_434*=(l9_436+((1.0-float(l9_433))*(1.0-l9_436)));
l9_430=l9_435;
param_21.y=l9_430;
l9_408=l9_434;
}
float2 l9_437=param_21;
bool l9_438=param_22;
float3x3 l9_439=param_23;
if (l9_438)
{
l9_437=float2((l9_439*float3(l9_437,1.0)).xy);
}
float2 l9_440=l9_437;
float2 l9_441=l9_440;
float2 l9_442=l9_441;
param_21=l9_442;
float l9_443=param_21.x;
int l9_444=param_24.x;
bool l9_445=l9_407;
float l9_446=l9_408;
if ((l9_444==0)||(l9_444==3))
{
float l9_447=l9_443;
float l9_448=0.0;
float l9_449=1.0;
bool l9_450=l9_445;
float l9_451=l9_446;
float l9_452=fast::clamp(l9_447,l9_448,l9_449);
float l9_453=step(abs(l9_447-l9_452),9.9999997e-06);
l9_451*=(l9_453+((1.0-float(l9_450))*(1.0-l9_453)));
l9_447=l9_452;
l9_443=l9_447;
l9_446=l9_451;
}
param_21.x=l9_443;
l9_408=l9_446;
float l9_454=param_21.y;
int l9_455=param_24.y;
bool l9_456=l9_407;
float l9_457=l9_408;
if ((l9_455==0)||(l9_455==3))
{
float l9_458=l9_454;
float l9_459=0.0;
float l9_460=1.0;
bool l9_461=l9_456;
float l9_462=l9_457;
float l9_463=fast::clamp(l9_458,l9_459,l9_460);
float l9_464=step(abs(l9_458-l9_463),9.9999997e-06);
l9_462*=(l9_464+((1.0-float(l9_461))*(1.0-l9_464)));
l9_458=l9_463;
l9_454=l9_458;
l9_457=l9_462;
}
param_21.y=l9_454;
l9_408=l9_457;
float2 l9_465=param_21;
int l9_466=param_19;
int l9_467=param_20;
float l9_468=param_29;
float2 l9_469=l9_465;
int l9_470=l9_466;
int l9_471=l9_467;
float3 l9_472=float3(0.0);
if (l9_470==0)
{
l9_472=float3(l9_469,0.0);
}
else
{
if (l9_470==1)
{
l9_472=float3(l9_469.x,(l9_469.y*0.5)+(0.5-(float(l9_471)*0.5)),0.0);
}
else
{
l9_472=float3(l9_469,float(l9_471));
}
}
float3 l9_473=l9_472;
float3 l9_474=l9_473;
float2 l9_475=l9_474.xy;
float l9_476=l9_468;
float4 l9_477=sc_set0.background.sample(sc_set0.backgroundSmpSC,l9_475,bias(l9_476));
float4 l9_478=l9_477;
float4 l9_479=l9_478;
if (param_27)
{
l9_479=mix(param_28,l9_479,float4(l9_408));
}
float4 l9_480=l9_479;
Color_N1=l9_480;
float Output_N61=0.0;
Output_N61=Color_N1.x;
float4 Color_N13=float4(0.0);
int l9_481=0;
if ((int(backgroundHasSwappedViews_tmp)!=0))
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
int param_30=backgroundLayout_tmp;
int param_31=l9_486;
float2 param_32=Output_N14;
bool param_33=(int(SC_USE_UV_TRANSFORM_background_tmp)!=0);
float3x3 param_34=(*sc_set0.UserUniforms).backgroundTransform;
int2 param_35=int2(SC_SOFTWARE_WRAP_MODE_U_background_tmp,SC_SOFTWARE_WRAP_MODE_V_background_tmp);
bool param_36=(int(SC_USE_UV_MIN_MAX_background_tmp)!=0);
float4 param_37=(*sc_set0.UserUniforms).backgroundUvMinMax;
bool param_38=(int(SC_USE_CLAMP_TO_BORDER_background_tmp)!=0);
float4 param_39=(*sc_set0.UserUniforms).backgroundBorderColor;
float param_40=Value_N10;
bool l9_487=param_38&&(!param_36);
float l9_488=1.0;
float l9_489=param_32.x;
int l9_490=param_35.x;
if (l9_490==1)
{
l9_489=fract(l9_489);
}
else
{
if (l9_490==2)
{
float l9_491=fract(l9_489);
float l9_492=l9_489-l9_491;
float l9_493=step(0.25,fract(l9_492*0.5));
l9_489=mix(l9_491,1.0-l9_491,fast::clamp(l9_493,0.0,1.0));
}
}
param_32.x=l9_489;
float l9_494=param_32.y;
int l9_495=param_35.y;
if (l9_495==1)
{
l9_494=fract(l9_494);
}
else
{
if (l9_495==2)
{
float l9_496=fract(l9_494);
float l9_497=l9_494-l9_496;
float l9_498=step(0.25,fract(l9_497*0.5));
l9_494=mix(l9_496,1.0-l9_496,fast::clamp(l9_498,0.0,1.0));
}
}
param_32.y=l9_494;
if (param_36)
{
bool l9_499=param_38;
bool l9_500;
if (l9_499)
{
l9_500=param_35.x==3;
}
else
{
l9_500=l9_499;
}
float l9_501=param_32.x;
float l9_502=param_37.x;
float l9_503=param_37.z;
bool l9_504=l9_500;
float l9_505=l9_488;
float l9_506=fast::clamp(l9_501,l9_502,l9_503);
float l9_507=step(abs(l9_501-l9_506),9.9999997e-06);
l9_505*=(l9_507+((1.0-float(l9_504))*(1.0-l9_507)));
l9_501=l9_506;
param_32.x=l9_501;
l9_488=l9_505;
bool l9_508=param_38;
bool l9_509;
if (l9_508)
{
l9_509=param_35.y==3;
}
else
{
l9_509=l9_508;
}
float l9_510=param_32.y;
float l9_511=param_37.y;
float l9_512=param_37.w;
bool l9_513=l9_509;
float l9_514=l9_488;
float l9_515=fast::clamp(l9_510,l9_511,l9_512);
float l9_516=step(abs(l9_510-l9_515),9.9999997e-06);
l9_514*=(l9_516+((1.0-float(l9_513))*(1.0-l9_516)));
l9_510=l9_515;
param_32.y=l9_510;
l9_488=l9_514;
}
float2 l9_517=param_32;
bool l9_518=param_33;
float3x3 l9_519=param_34;
if (l9_518)
{
l9_517=float2((l9_519*float3(l9_517,1.0)).xy);
}
float2 l9_520=l9_517;
float2 l9_521=l9_520;
float2 l9_522=l9_521;
param_32=l9_522;
float l9_523=param_32.x;
int l9_524=param_35.x;
bool l9_525=l9_487;
float l9_526=l9_488;
if ((l9_524==0)||(l9_524==3))
{
float l9_527=l9_523;
float l9_528=0.0;
float l9_529=1.0;
bool l9_530=l9_525;
float l9_531=l9_526;
float l9_532=fast::clamp(l9_527,l9_528,l9_529);
float l9_533=step(abs(l9_527-l9_532),9.9999997e-06);
l9_531*=(l9_533+((1.0-float(l9_530))*(1.0-l9_533)));
l9_527=l9_532;
l9_523=l9_527;
l9_526=l9_531;
}
param_32.x=l9_523;
l9_488=l9_526;
float l9_534=param_32.y;
int l9_535=param_35.y;
bool l9_536=l9_487;
float l9_537=l9_488;
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
param_32.y=l9_534;
l9_488=l9_537;
float2 l9_545=param_32;
int l9_546=param_30;
int l9_547=param_31;
float l9_548=param_40;
float2 l9_549=l9_545;
int l9_550=l9_546;
int l9_551=l9_547;
float3 l9_552=float3(0.0);
if (l9_550==0)
{
l9_552=float3(l9_549,0.0);
}
else
{
if (l9_550==1)
{
l9_552=float3(l9_549.x,(l9_549.y*0.5)+(0.5-(float(l9_551)*0.5)),0.0);
}
else
{
l9_552=float3(l9_549,float(l9_551));
}
}
float3 l9_553=l9_552;
float3 l9_554=l9_553;
float2 l9_555=l9_554.xy;
float l9_556=l9_548;
float4 l9_557=sc_set0.background.sample(sc_set0.backgroundSmpSC,l9_555,bias(l9_556));
float4 l9_558=l9_557;
float4 l9_559=l9_558;
if (param_38)
{
l9_559=mix(param_39,l9_559,float4(l9_488));
}
float4 l9_560=l9_559;
Color_N13=l9_560;
float Output_N62=0.0;
Output_N62=Color_N13.y;
float2 Output_N16=float2(0.0);
Output_N16=Output_N14-float2(Output_N12);
float4 Color_N17=float4(0.0);
int l9_561=0;
if ((int(backgroundHasSwappedViews_tmp)!=0))
{
int l9_562=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_562=0;
}
else
{
l9_562=in.varStereoViewID;
}
int l9_563=l9_562;
l9_561=1-l9_563;
}
else
{
int l9_564=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_564=0;
}
else
{
l9_564=in.varStereoViewID;
}
int l9_565=l9_564;
l9_561=l9_565;
}
int l9_566=l9_561;
int param_41=backgroundLayout_tmp;
int param_42=l9_566;
float2 param_43=Output_N16;
bool param_44=(int(SC_USE_UV_TRANSFORM_background_tmp)!=0);
float3x3 param_45=(*sc_set0.UserUniforms).backgroundTransform;
int2 param_46=int2(SC_SOFTWARE_WRAP_MODE_U_background_tmp,SC_SOFTWARE_WRAP_MODE_V_background_tmp);
bool param_47=(int(SC_USE_UV_MIN_MAX_background_tmp)!=0);
float4 param_48=(*sc_set0.UserUniforms).backgroundUvMinMax;
bool param_49=(int(SC_USE_CLAMP_TO_BORDER_background_tmp)!=0);
float4 param_50=(*sc_set0.UserUniforms).backgroundBorderColor;
float param_51=Value_N10;
bool l9_567=param_49&&(!param_47);
float l9_568=1.0;
float l9_569=param_43.x;
int l9_570=param_46.x;
if (l9_570==1)
{
l9_569=fract(l9_569);
}
else
{
if (l9_570==2)
{
float l9_571=fract(l9_569);
float l9_572=l9_569-l9_571;
float l9_573=step(0.25,fract(l9_572*0.5));
l9_569=mix(l9_571,1.0-l9_571,fast::clamp(l9_573,0.0,1.0));
}
}
param_43.x=l9_569;
float l9_574=param_43.y;
int l9_575=param_46.y;
if (l9_575==1)
{
l9_574=fract(l9_574);
}
else
{
if (l9_575==2)
{
float l9_576=fract(l9_574);
float l9_577=l9_574-l9_576;
float l9_578=step(0.25,fract(l9_577*0.5));
l9_574=mix(l9_576,1.0-l9_576,fast::clamp(l9_578,0.0,1.0));
}
}
param_43.y=l9_574;
if (param_47)
{
bool l9_579=param_49;
bool l9_580;
if (l9_579)
{
l9_580=param_46.x==3;
}
else
{
l9_580=l9_579;
}
float l9_581=param_43.x;
float l9_582=param_48.x;
float l9_583=param_48.z;
bool l9_584=l9_580;
float l9_585=l9_568;
float l9_586=fast::clamp(l9_581,l9_582,l9_583);
float l9_587=step(abs(l9_581-l9_586),9.9999997e-06);
l9_585*=(l9_587+((1.0-float(l9_584))*(1.0-l9_587)));
l9_581=l9_586;
param_43.x=l9_581;
l9_568=l9_585;
bool l9_588=param_49;
bool l9_589;
if (l9_588)
{
l9_589=param_46.y==3;
}
else
{
l9_589=l9_588;
}
float l9_590=param_43.y;
float l9_591=param_48.y;
float l9_592=param_48.w;
bool l9_593=l9_589;
float l9_594=l9_568;
float l9_595=fast::clamp(l9_590,l9_591,l9_592);
float l9_596=step(abs(l9_590-l9_595),9.9999997e-06);
l9_594*=(l9_596+((1.0-float(l9_593))*(1.0-l9_596)));
l9_590=l9_595;
param_43.y=l9_590;
l9_568=l9_594;
}
float2 l9_597=param_43;
bool l9_598=param_44;
float3x3 l9_599=param_45;
if (l9_598)
{
l9_597=float2((l9_599*float3(l9_597,1.0)).xy);
}
float2 l9_600=l9_597;
float2 l9_601=l9_600;
float2 l9_602=l9_601;
param_43=l9_602;
float l9_603=param_43.x;
int l9_604=param_46.x;
bool l9_605=l9_567;
float l9_606=l9_568;
if ((l9_604==0)||(l9_604==3))
{
float l9_607=l9_603;
float l9_608=0.0;
float l9_609=1.0;
bool l9_610=l9_605;
float l9_611=l9_606;
float l9_612=fast::clamp(l9_607,l9_608,l9_609);
float l9_613=step(abs(l9_607-l9_612),9.9999997e-06);
l9_611*=(l9_613+((1.0-float(l9_610))*(1.0-l9_613)));
l9_607=l9_612;
l9_603=l9_607;
l9_606=l9_611;
}
param_43.x=l9_603;
l9_568=l9_606;
float l9_614=param_43.y;
int l9_615=param_46.y;
bool l9_616=l9_567;
float l9_617=l9_568;
if ((l9_615==0)||(l9_615==3))
{
float l9_618=l9_614;
float l9_619=0.0;
float l9_620=1.0;
bool l9_621=l9_616;
float l9_622=l9_617;
float l9_623=fast::clamp(l9_618,l9_619,l9_620);
float l9_624=step(abs(l9_618-l9_623),9.9999997e-06);
l9_622*=(l9_624+((1.0-float(l9_621))*(1.0-l9_624)));
l9_618=l9_623;
l9_614=l9_618;
l9_617=l9_622;
}
param_43.y=l9_614;
l9_568=l9_617;
float2 l9_625=param_43;
int l9_626=param_41;
int l9_627=param_42;
float l9_628=param_51;
float2 l9_629=l9_625;
int l9_630=l9_626;
int l9_631=l9_627;
float3 l9_632=float3(0.0);
if (l9_630==0)
{
l9_632=float3(l9_629,0.0);
}
else
{
if (l9_630==1)
{
l9_632=float3(l9_629.x,(l9_629.y*0.5)+(0.5-(float(l9_631)*0.5)),0.0);
}
else
{
l9_632=float3(l9_629,float(l9_631));
}
}
float3 l9_633=l9_632;
float3 l9_634=l9_633;
float2 l9_635=l9_634.xy;
float l9_636=l9_628;
float4 l9_637=sc_set0.background.sample(sc_set0.backgroundSmpSC,l9_635,bias(l9_636));
float4 l9_638=l9_637;
float4 l9_639=l9_638;
if (param_49)
{
l9_639=mix(param_50,l9_639,float4(l9_568));
}
float4 l9_640=l9_639;
Color_N17=l9_640;
float Output_N63=0.0;
Output_N63=Color_N17.z;
float3 Value_N23=float3(0.0);
Value_N23.x=Output_N61;
Value_N23.y=Output_N62;
Value_N23.z=Output_N63;
float Output_N19=0.0;
Output_N19=abs(Export_N182);
float Output_N73=0.0;
float param_52=(*sc_set0.UserUniforms).exponent;
Output_N73=param_52;
float Value_N75=0.0;
Value_N75=Output_N73;
float Value_N21=0.0;
Value_N21=Value_N75;
float Output_N20=0.0;
float l9_641;
if (Output_N19<=0.0)
{
l9_641=0.0;
}
else
{
l9_641=pow(Output_N19,Value_N21);
}
Output_N20=l9_641;
float Output_N22=0.0;
Output_N22=1.0-Output_N20;
float Output_N74=0.0;
float param_53=(*sc_set0.UserUniforms).darken;
Output_N74=param_53;
float Value_N76=0.0;
Value_N76=Output_N74;
float Value_N26=0.0;
Value_N26=Value_N76;
float Output_N25=0.0;
Output_N25=mix((*sc_set0.UserUniforms).Port_Input0_N025,Output_N22,Value_N26);
float Output_N30=0.0;
Output_N30=Output_N25*Output_N25;
float3 Output_N28=float3(0.0);
Output_N28=(Value_N31*Value_N23)*float3(Output_N30);
float3 Export_N34=float3(0.0);
Export_N34=Output_N28;
float3 Export_N54=float3(0.0);
Export_N54=Export_N34;
float Result_N85=0.0;
float param_54=0.0;
float param_55=(*sc_set0.UserUniforms).Port_Default_N085;
ssGlobals param_57=Globals;
float param_56;
if ((int(Tweak_N64_tmp)!=0))
{
float4 l9_642=float4(0.0);
int l9_643=0;
if ((int(opacityTexHasSwappedViews_tmp)!=0))
{
int l9_644=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_644=0;
}
else
{
l9_644=in.varStereoViewID;
}
int l9_645=l9_644;
l9_643=1-l9_645;
}
else
{
int l9_646=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_646=0;
}
else
{
l9_646=in.varStereoViewID;
}
int l9_647=l9_646;
l9_643=l9_647;
}
int l9_648=l9_643;
int l9_649=opacityTexLayout_tmp;
int l9_650=l9_648;
float2 l9_651=param_57.Surface_UVCoord0;
bool l9_652=(int(SC_USE_UV_TRANSFORM_opacityTex_tmp)!=0);
float3x3 l9_653=(*sc_set0.UserUniforms).opacityTexTransform;
int2 l9_654=int2(SC_SOFTWARE_WRAP_MODE_U_opacityTex_tmp,SC_SOFTWARE_WRAP_MODE_V_opacityTex_tmp);
bool l9_655=(int(SC_USE_UV_MIN_MAX_opacityTex_tmp)!=0);
float4 l9_656=(*sc_set0.UserUniforms).opacityTexUvMinMax;
bool l9_657=(int(SC_USE_CLAMP_TO_BORDER_opacityTex_tmp)!=0);
float4 l9_658=(*sc_set0.UserUniforms).opacityTexBorderColor;
float l9_659=0.0;
bool l9_660=l9_657&&(!l9_655);
float l9_661=1.0;
float l9_662=l9_651.x;
int l9_663=l9_654.x;
if (l9_663==1)
{
l9_662=fract(l9_662);
}
else
{
if (l9_663==2)
{
float l9_664=fract(l9_662);
float l9_665=l9_662-l9_664;
float l9_666=step(0.25,fract(l9_665*0.5));
l9_662=mix(l9_664,1.0-l9_664,fast::clamp(l9_666,0.0,1.0));
}
}
l9_651.x=l9_662;
float l9_667=l9_651.y;
int l9_668=l9_654.y;
if (l9_668==1)
{
l9_667=fract(l9_667);
}
else
{
if (l9_668==2)
{
float l9_669=fract(l9_667);
float l9_670=l9_667-l9_669;
float l9_671=step(0.25,fract(l9_670*0.5));
l9_667=mix(l9_669,1.0-l9_669,fast::clamp(l9_671,0.0,1.0));
}
}
l9_651.y=l9_667;
if (l9_655)
{
bool l9_672=l9_657;
bool l9_673;
if (l9_672)
{
l9_673=l9_654.x==3;
}
else
{
l9_673=l9_672;
}
float l9_674=l9_651.x;
float l9_675=l9_656.x;
float l9_676=l9_656.z;
bool l9_677=l9_673;
float l9_678=l9_661;
float l9_679=fast::clamp(l9_674,l9_675,l9_676);
float l9_680=step(abs(l9_674-l9_679),9.9999997e-06);
l9_678*=(l9_680+((1.0-float(l9_677))*(1.0-l9_680)));
l9_674=l9_679;
l9_651.x=l9_674;
l9_661=l9_678;
bool l9_681=l9_657;
bool l9_682;
if (l9_681)
{
l9_682=l9_654.y==3;
}
else
{
l9_682=l9_681;
}
float l9_683=l9_651.y;
float l9_684=l9_656.y;
float l9_685=l9_656.w;
bool l9_686=l9_682;
float l9_687=l9_661;
float l9_688=fast::clamp(l9_683,l9_684,l9_685);
float l9_689=step(abs(l9_683-l9_688),9.9999997e-06);
l9_687*=(l9_689+((1.0-float(l9_686))*(1.0-l9_689)));
l9_683=l9_688;
l9_651.y=l9_683;
l9_661=l9_687;
}
float2 l9_690=l9_651;
bool l9_691=l9_652;
float3x3 l9_692=l9_653;
if (l9_691)
{
l9_690=float2((l9_692*float3(l9_690,1.0)).xy);
}
float2 l9_693=l9_690;
float2 l9_694=l9_693;
float2 l9_695=l9_694;
l9_651=l9_695;
float l9_696=l9_651.x;
int l9_697=l9_654.x;
bool l9_698=l9_660;
float l9_699=l9_661;
if ((l9_697==0)||(l9_697==3))
{
float l9_700=l9_696;
float l9_701=0.0;
float l9_702=1.0;
bool l9_703=l9_698;
float l9_704=l9_699;
float l9_705=fast::clamp(l9_700,l9_701,l9_702);
float l9_706=step(abs(l9_700-l9_705),9.9999997e-06);
l9_704*=(l9_706+((1.0-float(l9_703))*(1.0-l9_706)));
l9_700=l9_705;
l9_696=l9_700;
l9_699=l9_704;
}
l9_651.x=l9_696;
l9_661=l9_699;
float l9_707=l9_651.y;
int l9_708=l9_654.y;
bool l9_709=l9_660;
float l9_710=l9_661;
if ((l9_708==0)||(l9_708==3))
{
float l9_711=l9_707;
float l9_712=0.0;
float l9_713=1.0;
bool l9_714=l9_709;
float l9_715=l9_710;
float l9_716=fast::clamp(l9_711,l9_712,l9_713);
float l9_717=step(abs(l9_711-l9_716),9.9999997e-06);
l9_715*=(l9_717+((1.0-float(l9_714))*(1.0-l9_717)));
l9_711=l9_716;
l9_707=l9_711;
l9_710=l9_715;
}
l9_651.y=l9_707;
l9_661=l9_710;
float2 l9_718=l9_651;
int l9_719=l9_649;
int l9_720=l9_650;
float l9_721=l9_659;
float2 l9_722=l9_718;
int l9_723=l9_719;
int l9_724=l9_720;
float3 l9_725=float3(0.0);
if (l9_723==0)
{
l9_725=float3(l9_722,0.0);
}
else
{
if (l9_723==1)
{
l9_725=float3(l9_722.x,(l9_722.y*0.5)+(0.5-(float(l9_724)*0.5)),0.0);
}
else
{
l9_725=float3(l9_722,float(l9_724));
}
}
float3 l9_726=l9_725;
float3 l9_727=l9_726;
float2 l9_728=l9_727.xy;
float l9_729=l9_721;
float4 l9_730=sc_set0.opacityTex.sample(sc_set0.opacityTexSmpSC,l9_728,bias(l9_729));
float4 l9_731=l9_730;
float4 l9_732=l9_731;
if (l9_657)
{
l9_732=mix(l9_658,l9_732,float4(l9_661));
}
float4 l9_733=l9_732;
l9_642=l9_733;
float l9_734=0.0;
l9_734=l9_642.x;
param_54=l9_734;
param_56=param_54;
}
else
{
param_56=param_55;
}
Result_N85=param_56;
float3 Output_N87=float3(0.0);
Output_N87=mix(Export_N54,Output_N99,float3(Result_N85));
float3 Output_N130=float3(0.0);
float3 param_58=Output_N87;
float3 l9_735;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_735=float3(pow(param_58.x,2.2),pow(param_58.y,2.2),pow(param_58.z,2.2));
}
else
{
l9_735=param_58*param_58;
}
float3 l9_736=l9_735;
Output_N130=l9_736;
float3 Result_N83=float3(0.0);
float3 param_59=float3(1.0);
float3 param_60=(*sc_set0.UserUniforms).Port_Default_N083;
ssGlobals param_62=Globals;
float3 param_61;
if ((int(Tweak_N56_tmp)!=0))
{
float4 l9_737=float4(0.0);
int l9_738=0;
if ((int(roughnessTexHasSwappedViews_tmp)!=0))
{
int l9_739=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_739=0;
}
else
{
l9_739=in.varStereoViewID;
}
int l9_740=l9_739;
l9_738=1-l9_740;
}
else
{
int l9_741=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_741=0;
}
else
{
l9_741=in.varStereoViewID;
}
int l9_742=l9_741;
l9_738=l9_742;
}
int l9_743=l9_738;
int l9_744=roughnessTexLayout_tmp;
int l9_745=l9_743;
float2 l9_746=param_62.Surface_UVCoord0;
bool l9_747=(int(SC_USE_UV_TRANSFORM_roughnessTex_tmp)!=0);
float3x3 l9_748=(*sc_set0.UserUniforms).roughnessTexTransform;
int2 l9_749=int2(SC_SOFTWARE_WRAP_MODE_U_roughnessTex_tmp,SC_SOFTWARE_WRAP_MODE_V_roughnessTex_tmp);
bool l9_750=(int(SC_USE_UV_MIN_MAX_roughnessTex_tmp)!=0);
float4 l9_751=(*sc_set0.UserUniforms).roughnessTexUvMinMax;
bool l9_752=(int(SC_USE_CLAMP_TO_BORDER_roughnessTex_tmp)!=0);
float4 l9_753=(*sc_set0.UserUniforms).roughnessTexBorderColor;
float l9_754=0.0;
bool l9_755=l9_752&&(!l9_750);
float l9_756=1.0;
float l9_757=l9_746.x;
int l9_758=l9_749.x;
if (l9_758==1)
{
l9_757=fract(l9_757);
}
else
{
if (l9_758==2)
{
float l9_759=fract(l9_757);
float l9_760=l9_757-l9_759;
float l9_761=step(0.25,fract(l9_760*0.5));
l9_757=mix(l9_759,1.0-l9_759,fast::clamp(l9_761,0.0,1.0));
}
}
l9_746.x=l9_757;
float l9_762=l9_746.y;
int l9_763=l9_749.y;
if (l9_763==1)
{
l9_762=fract(l9_762);
}
else
{
if (l9_763==2)
{
float l9_764=fract(l9_762);
float l9_765=l9_762-l9_764;
float l9_766=step(0.25,fract(l9_765*0.5));
l9_762=mix(l9_764,1.0-l9_764,fast::clamp(l9_766,0.0,1.0));
}
}
l9_746.y=l9_762;
if (l9_750)
{
bool l9_767=l9_752;
bool l9_768;
if (l9_767)
{
l9_768=l9_749.x==3;
}
else
{
l9_768=l9_767;
}
float l9_769=l9_746.x;
float l9_770=l9_751.x;
float l9_771=l9_751.z;
bool l9_772=l9_768;
float l9_773=l9_756;
float l9_774=fast::clamp(l9_769,l9_770,l9_771);
float l9_775=step(abs(l9_769-l9_774),9.9999997e-06);
l9_773*=(l9_775+((1.0-float(l9_772))*(1.0-l9_775)));
l9_769=l9_774;
l9_746.x=l9_769;
l9_756=l9_773;
bool l9_776=l9_752;
bool l9_777;
if (l9_776)
{
l9_777=l9_749.y==3;
}
else
{
l9_777=l9_776;
}
float l9_778=l9_746.y;
float l9_779=l9_751.y;
float l9_780=l9_751.w;
bool l9_781=l9_777;
float l9_782=l9_756;
float l9_783=fast::clamp(l9_778,l9_779,l9_780);
float l9_784=step(abs(l9_778-l9_783),9.9999997e-06);
l9_782*=(l9_784+((1.0-float(l9_781))*(1.0-l9_784)));
l9_778=l9_783;
l9_746.y=l9_778;
l9_756=l9_782;
}
float2 l9_785=l9_746;
bool l9_786=l9_747;
float3x3 l9_787=l9_748;
if (l9_786)
{
l9_785=float2((l9_787*float3(l9_785,1.0)).xy);
}
float2 l9_788=l9_785;
float2 l9_789=l9_788;
float2 l9_790=l9_789;
l9_746=l9_790;
float l9_791=l9_746.x;
int l9_792=l9_749.x;
bool l9_793=l9_755;
float l9_794=l9_756;
if ((l9_792==0)||(l9_792==3))
{
float l9_795=l9_791;
float l9_796=0.0;
float l9_797=1.0;
bool l9_798=l9_793;
float l9_799=l9_794;
float l9_800=fast::clamp(l9_795,l9_796,l9_797);
float l9_801=step(abs(l9_795-l9_800),9.9999997e-06);
l9_799*=(l9_801+((1.0-float(l9_798))*(1.0-l9_801)));
l9_795=l9_800;
l9_791=l9_795;
l9_794=l9_799;
}
l9_746.x=l9_791;
l9_756=l9_794;
float l9_802=l9_746.y;
int l9_803=l9_749.y;
bool l9_804=l9_755;
float l9_805=l9_756;
if ((l9_803==0)||(l9_803==3))
{
float l9_806=l9_802;
float l9_807=0.0;
float l9_808=1.0;
bool l9_809=l9_804;
float l9_810=l9_805;
float l9_811=fast::clamp(l9_806,l9_807,l9_808);
float l9_812=step(abs(l9_806-l9_811),9.9999997e-06);
l9_810*=(l9_812+((1.0-float(l9_809))*(1.0-l9_812)));
l9_806=l9_811;
l9_802=l9_806;
l9_805=l9_810;
}
l9_746.y=l9_802;
l9_756=l9_805;
float2 l9_813=l9_746;
int l9_814=l9_744;
int l9_815=l9_745;
float l9_816=l9_754;
float2 l9_817=l9_813;
int l9_818=l9_814;
int l9_819=l9_815;
float3 l9_820=float3(0.0);
if (l9_818==0)
{
l9_820=float3(l9_817,0.0);
}
else
{
if (l9_818==1)
{
l9_820=float3(l9_817.x,(l9_817.y*0.5)+(0.5-(float(l9_819)*0.5)),0.0);
}
else
{
l9_820=float3(l9_817,float(l9_819));
}
}
float3 l9_821=l9_820;
float3 l9_822=l9_821;
float2 l9_823=l9_822.xy;
float l9_824=l9_816;
float4 l9_825=sc_set0.roughnessTex.sample(sc_set0.roughnessTexSmpSC,l9_823,bias(l9_824));
float4 l9_826=l9_825;
float4 l9_827=l9_826;
if (l9_752)
{
l9_827=mix(l9_753,l9_827,float4(l9_756));
}
float4 l9_828=l9_827;
l9_737=l9_828;
param_59=l9_737.xyz;
param_61=param_59;
}
else
{
param_61=param_60;
}
Result_N83=param_61;
float Output_N81=0.0;
float param_63=(*sc_set0.UserUniforms).metallic;
Output_N81=param_63;
float Output_N9=0.0;
float param_64=(*sc_set0.UserUniforms).roughness;
Output_N9=param_64;
float3 Value_N100=float3(0.0);
Value_N100.x=Output_N81;
Value_N100.y=Output_N9;
Value_N100.z=(*sc_set0.UserUniforms).Port_Value3_N100;
float3 Output_N68=float3(0.0);
Output_N68=Result_N83*Value_N100;
float Value1_N89=0.0;
float Value2_N89=0.0;
float Value3_N89=0.0;
float3 param_65=Output_N68;
float param_66=param_65.x;
float param_67=param_65.y;
float param_68=param_65.z;
Value1_N89=param_66;
Value2_N89=param_67;
Value3_N89=param_68;
float4 Output_N6=float4(0.0);
float3 param_69=(*sc_set0.UserUniforms).Port_Albedo_N006;
float param_70=(*sc_set0.UserUniforms).Port_Opacity_N006;
float3 param_71=Output_N136;
float3 param_72=(*sc_set0.UserUniforms).Port_Emissive_N006;
float param_73=Value1_N89;
float param_74=Value2_N89;
float3 param_75=float3(Value3_N89);
ssGlobals param_77=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_77.BumpedNormal=param_71;
}
float l9_829=param_70;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_829<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_830=gl_FragCoord;
float2 l9_831=floor(mod(l9_830.xy,float2(4.0)));
float l9_832=(mod(dot(l9_831,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_829<l9_832)
{
discard_fragment();
}
}
float4 param_76;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_76=float4(param_69,param_70);
}
else
{
param_73=fast::clamp(param_73,0.0,1.0);
param_74=fast::clamp(param_74,0.0,1.0);
float3 l9_833=float3(1.0);
param_75=fast::clamp(param_75,float3(0.0),float3(1.0));
float3 l9_834=param_69;
float l9_835=param_70;
float3 l9_836=param_77.BumpedNormal;
float3 l9_837=param_77.PositionWS;
float3 l9_838=param_77.ViewDirWS;
float3 l9_839=param_72;
float l9_840=param_73;
float l9_841=param_74;
float3 l9_842=l9_833;
float3 l9_843=param_75;
param_76=ngsCalculateLighting(l9_834,l9_835,l9_836,l9_837,l9_838,l9_839,l9_840,l9_841,l9_842,l9_843,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.sc_EnvmapSpecular,sc_set0.sc_EnvmapSpecularSmpSC,sc_set0.sc_ScreenTexture,sc_set0.sc_ScreenTextureSmpSC,sc_set0.sc_ShadowTexture,sc_set0.sc_ShadowTextureSmpSC,sc_set0.sc_SSAOTexture,sc_set0.sc_SSAOTextureSmpSC,sc_set0.sc_RayTracedReflectionTexture,sc_set0.sc_RayTracedReflectionTextureSmpSC,sc_set0.sc_RayTracedShadowTexture,sc_set0.sc_RayTracedShadowTextureSmpSC,sc_set0.sc_RayTracedAoTexture,sc_set0.sc_RayTracedAoTextureSmpSC,gl_FragCoord,in.varShadowTex,out.FragColor0);
}
param_76=fast::max(param_76,float4(0.0));
Output_N6=param_76;
float4 Output_N340=float4(0.0);
float4 param_78=Output_N6;
float4 l9_844;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_844=float4(pow(param_78.x,2.2),pow(param_78.y,2.2),pow(param_78.z,2.2),pow(param_78.w,2.2));
}
else
{
l9_844=param_78*param_78;
}
float4 l9_845=l9_844;
Output_N340=l9_845;
float3 Output_N342=float3(0.0);
Output_N342=Output_N130+Output_N340.xyz;
float3 Output_N344=float3(0.0);
float3 param_79=Output_N342;
float3 l9_846;
if (SC_DEVICE_CLASS_tmp>=2)
{
l9_846=float3(pow(param_79.x,0.45454544),pow(param_79.y,0.45454544),pow(param_79.z,0.45454544));
}
else
{
l9_846=sqrt(param_79);
}
float3 l9_847=l9_846;
Output_N344=l9_847;
float4 Output_N53=float4(0.0);
Output_N53=float4(Output_N344.x,Output_N344.y,Output_N344.z,1.0);
FinalColor=Output_N53;
bool l9_848=(*sc_set0.UserUniforms).isProxyMode!=0;
if (l9_848)
{
float4 param_80=FinalColor;
if ((int(sc_ProxyAlphaOne_tmp)!=0))
{
param_80.w=1.0;
}
float4 l9_849=fast::max(param_80,float4(0.0));
float4 param_81=l9_849;
if (sc_ShaderCacheConstant_tmp!=0)
{
param_81.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=param_81;
return out;
}
float4 param_82=FinalColor;
if ((int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
float4 l9_850=param_82;
float4 l9_851=l9_850;
float l9_852=1.0;
if ((((int(sc_BlendMode_Normal_tmp)!=0)||(int(sc_BlendMode_AlphaToCoverage_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaHardware_tmp)!=0))||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_852=l9_851.w;
}
else
{
if ((int(sc_BlendMode_PremultipliedAlpha_tmp)!=0))
{
l9_852=fast::clamp(l9_851.w*2.0,0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_852=fast::clamp(dot(l9_851.xyz,float3(l9_851.w)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
l9_852=1.0;
}
else
{
if ((int(sc_BlendMode_Multiply_tmp)!=0))
{
l9_852=(1.0-dot(l9_851.xyz,float3(0.33333001)))*l9_851.w;
}
else
{
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_852=(1.0-fast::clamp(dot(l9_851.xyz,float3(1.0)),0.0,1.0))*l9_851.w;
}
else
{
if ((int(sc_BlendMode_ColoredGlass_tmp)!=0))
{
l9_852=fast::clamp(dot(l9_851.xyz,float3(1.0)),0.0,1.0)*l9_851.w;
}
else
{
if ((int(sc_BlendMode_Add_tmp)!=0))
{
l9_852=fast::clamp(dot(l9_851.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_AddWithAlphaFactor_tmp)!=0))
{
l9_852=fast::clamp(dot(l9_851.xyz,float3(1.0)),0.0,1.0)*l9_851.w;
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0))
{
l9_852=dot(l9_851.xyz,float3(0.33333001))*l9_851.w;
}
else
{
if ((int(sc_BlendMode_Min_tmp)!=0))
{
l9_852=1.0-fast::clamp(dot(l9_851.xyz,float3(1.0)),0.0,1.0);
}
else
{
if ((int(sc_BlendMode_Max_tmp)!=0))
{
l9_852=fast::clamp(dot(l9_851.xyz,float3(1.0)),0.0,1.0);
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
float l9_853=l9_852;
float l9_854=l9_853;
float l9_855=(*sc_set0.UserUniforms).sc_ShadowDensity*l9_854;
float3 l9_856=mix((*sc_set0.UserUniforms).sc_ShadowColor.xyz,(*sc_set0.UserUniforms).sc_ShadowColor.xyz*l9_850.xyz,float3((*sc_set0.UserUniforms).sc_ShadowColor.w));
float4 l9_857=float4(l9_856.x,l9_856.y,l9_856.z,l9_855);
param_82=l9_857;
}
else
{
if ((int(sc_RenderAlphaToColor_tmp)!=0))
{
param_82=float4(param_82.w);
}
else
{
if ((int(sc_BlendMode_Custom_tmp)!=0))
{
float4 l9_858=param_82;
float4 l9_859=float4(0.0);
float4 l9_860=float4(0.0);
if ((int(sc_FramebufferFetch_tmp)!=0))
{
float4 l9_861=out.FragColor0;
float4 l9_862=l9_861;
if ((int(sc_UseFramebufferFetchMarker_tmp)!=0))
{
l9_862.x+=(*sc_set0.UserUniforms)._sc_framebufferFetchMarker;
}
float4 l9_863=l9_862;
l9_860=l9_863;
}
else
{
float4 l9_864=gl_FragCoord;
float2 l9_865=l9_864.xy*(*sc_set0.UserUniforms).sc_CurrentRenderTargetDims.zw;
float2 l9_866=l9_865;
float2 l9_867=float2(0.0);
if (sc_StereoRenderingMode_tmp==1)
{
int l9_868=1;
int l9_869=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_869=0;
}
else
{
l9_869=in.varStereoViewID;
}
int l9_870=l9_869;
int l9_871=l9_870;
float3 l9_872=float3(l9_866,0.0);
int l9_873=l9_868;
int l9_874=l9_871;
if (l9_873==1)
{
l9_872.y=((2.0*l9_872.y)+float(l9_874))-1.0;
}
float2 l9_875=l9_872.xy;
l9_867=l9_875;
}
else
{
l9_867=l9_866;
}
float2 l9_876=l9_867;
float2 l9_877=l9_876;
float2 l9_878=l9_877;
int l9_879=0;
if ((int(sc_ScreenTextureHasSwappedViews_tmp)!=0))
{
int l9_880=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_880=0;
}
else
{
l9_880=in.varStereoViewID;
}
int l9_881=l9_880;
l9_879=1-l9_881;
}
else
{
int l9_882=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_882=0;
}
else
{
l9_882=in.varStereoViewID;
}
int l9_883=l9_882;
l9_879=l9_883;
}
int l9_884=l9_879;
float2 l9_885=l9_878;
int l9_886=l9_884;
float2 l9_887=l9_885;
int l9_888=l9_886;
float l9_889=0.0;
float4 l9_890=float4(0.0);
float2 l9_891=l9_887;
int l9_892=sc_ScreenTextureLayout_tmp;
int l9_893=l9_888;
float l9_894=l9_889;
float2 l9_895=l9_891;
int l9_896=l9_892;
int l9_897=l9_893;
float3 l9_898=float3(0.0);
if (l9_896==0)
{
l9_898=float3(l9_895,0.0);
}
else
{
if (l9_896==1)
{
l9_898=float3(l9_895.x,(l9_895.y*0.5)+(0.5-(float(l9_897)*0.5)),0.0);
}
else
{
l9_898=float3(l9_895,float(l9_897));
}
}
float3 l9_899=l9_898;
float3 l9_900=l9_899;
float2 l9_901=l9_900.xy;
float l9_902=l9_894;
float4 l9_903=sc_set0.sc_ScreenTexture.sample(sc_set0.sc_ScreenTextureSmpSC,l9_901,bias(l9_902));
float4 l9_904=l9_903;
l9_890=l9_904;
float4 l9_905=l9_890;
float4 l9_906=l9_905;
float4 l9_907=l9_906;
l9_860=l9_907;
}
float4 l9_908=l9_860;
float4 l9_909=l9_908;
float3 l9_910=l9_909.xyz;
float3 l9_911=l9_910;
float3 l9_912=l9_858.xyz;
float3 l9_913=definedBlend(l9_911,l9_912,in.varStereoViewID,(*sc_set0.UserUniforms),sc_set0.intensityTexture,sc_set0.intensityTextureSmpSC);
l9_859=float4(l9_913.x,l9_913.y,l9_913.z,l9_859.w);
float3 l9_914=mix(l9_910,l9_859.xyz,float3(l9_858.w));
l9_859=float4(l9_914.x,l9_914.y,l9_914.z,l9_859.w);
l9_859.w=1.0;
float4 l9_915=l9_859;
param_82=l9_915;
}
else
{
float4 l9_916=param_82;
float4 l9_917=float4(0.0);
if ((int(sc_BlendMode_MultiplyOriginal_tmp)!=0))
{
l9_917=float4(mix(float3(1.0),l9_916.xyz,float3(l9_916.w)),l9_916.w);
}
else
{
if ((int(sc_BlendMode_Screen_tmp)!=0)||(int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
float l9_918=l9_916.w;
if ((int(sc_BlendMode_PremultipliedAlphaAuto_tmp)!=0))
{
l9_918=fast::clamp(l9_918,0.0,1.0);
}
l9_917=float4(l9_916.xyz*l9_918,l9_918);
}
else
{
l9_917=l9_916;
}
}
float4 l9_919=l9_917;
param_82=l9_919;
}
}
}
float4 l9_920=param_82;
FinalColor=l9_920;
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
float4 l9_921=float4(0.0);
if ((int(sc_ShaderComplexityAnalyzer_tmp)!=0))
{
l9_921=float4((*sc_set0.UserUniforms).shaderComplexityValue/255.0,0.0,0.0,1.0);
}
else
{
l9_921=float4(0.0);
}
float4 l9_922=l9_921;
float4 Cost=l9_922;
if (Cost.w>0.0)
{
FinalColor=Cost;
}
FinalColor=fast::max(FinalColor,float4(0.0));
float3 param_83=in.varPos;
float4 param_84=FinalColor;
FinalColor=outputMotionVectorsIfNeeded(param_83,param_84,in.varStereoViewID,(*sc_set0.UserUniforms));
float4 param_85=FinalColor;
float4 l9_923=param_85;
if (sc_ShaderCacheConstant_tmp!=0)
{
l9_923.x+=((*sc_set0.UserUniforms).sc_UniformConstants.x*float(sc_ShaderCacheConstant_tmp));
}
out.FragColor0=l9_923;
return out;
}
} // FRAGMENT SHADER

namespace SNAP_RECV {
struct ssGlobals
{
float gTimeElapsed;
float gTimeDelta;
float gTimeElapsedShifted;
float4 VertexColor;
float2 Surface_UVCoord0;
float2 gScreenCoord;
float3 ViewDirWS;
float3 SurfacePosition_WorldSpace;
float gFrontFacing;
float3 VertexTangent_WorldSpace;
float3 VertexNormal_WorldSpace;
float3 VertexBinormal_WorldSpace;
float3 BumpedNormal;
float3 PositionWS;
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
int receivesRayTracedReflections;
int isProxyMode;
int receivesRayTracedShadows;
int receivesRayTracedDiffuseIndirect;
int receivesRayTracedAo;
float4 sc_RayTracedReflectionTextureSize;
float4 sc_RayTracedReflectionTextureDims;
float4 sc_RayTracedReflectionTextureView;
float4 sc_RayTracedShadowTextureSize;
float4 sc_RayTracedShadowTextureDims;
float4 sc_RayTracedShadowTextureView;
float4 sc_RayTracedDiffIndTextureSize;
float4 sc_RayTracedDiffIndTextureDims;
float4 sc_RayTracedDiffIndTextureView;
float4 sc_RayTracedAoTextureSize;
float4 sc_RayTracedAoTextureDims;
float4 sc_RayTracedAoTextureView;
float receiver_mask;
float3 OriginNormalizationScale;
float3 OriginNormalizationScaleInv;
float3 OriginNormalizationOffset;
int receiverId;
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
float4 baseTexSize;
float4 baseTexDims;
float4 baseTexView;
float3x3 baseTexTransform;
float4 baseTexUvMinMax;
float4 baseTexBorderColor;
float3 baseColor;
float4 backgroundSize;
float4 backgroundDims;
float4 backgroundView;
float3x3 backgroundTransform;
float4 backgroundUvMinMax;
float4 backgroundBorderColor;
float4 normalTexSize;
float4 normalTexDims;
float4 normalTexView;
float3x3 normalTexTransform;
float4 normalTexUvMinMax;
float4 normalTexBorderColor;
float indexOfRefraction;
float intensity;
float chromaticAberration;
float thickness;
float exponent;
float darken;
float4 opacityTexSize;
float4 opacityTexDims;
float4 opacityTexView;
float3x3 opacityTexTransform;
float4 opacityTexUvMinMax;
float4 opacityTexBorderColor;
float4 roughnessTexSize;
float4 roughnessTexDims;
float4 roughnessTexView;
float3x3 roughnessTexTransform;
float4 roughnessTexUvMinMax;
float4 roughnessTexBorderColor;
float metallic;
float roughness;
float3 Port_Default_N098;
float3 Port_Default_N097;
float3 Port_Import_N032;
float3 Port_Import_N031;
float3 Port_Import_N041;
float Port_Input0_N005;
float Port_Import_N029;
float Port_Import_N049;
float2 Port_Import_N003;
float Port_Import_N040;
float Port_Import_N007;
float3 Port_Import_N072;
float3 Port_Import_N101;
float Port_Input2_N012;
float Port_Import_N043;
float Port_Import_N010;
float Port_Input0_N025;
float Port_Import_N075;
float Port_Import_N021;
float Port_Import_N076;
float Port_Import_N026;
float Port_Default_N085;
float3 Port_Albedo_N006;
float Port_Opacity_N006;
float3 Port_Emissive_N006;
float3 Port_Default_N083;
float Port_Value3_N100;
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
texture2d<float> baseTex [[id(5)]];
texture2d<float> intensityTexture [[id(6)]];
texture2d<float> normalTex [[id(7)]];
texture2d<float> opacityTex [[id(8)]];
texture2d<float> roughnessTex [[id(9)]];
texture2d<float> sc_EnvmapSpecular [[id(11)]];
texture2d<float> sc_RayTracedAoTexture [[id(20)]];
texture2d<float> sc_RayTracedReflectionTexture [[id(22)]];
texture2d<float> sc_RayTracedShadowTexture [[id(23)]];
texture2d<float> sc_SSAOTexture [[id(24)]];
texture2d<float> sc_ScreenTexture [[id(25)]];
texture2d<float> sc_ShadowTexture [[id(26)]];
texture2d<uint> z_hitIdAndBarycentric [[id(28)]];
texture2d<float> z_rayDirections [[id(29)]];
sampler backgroundSmpSC [[id(30)]];
sampler baseTexSmpSC [[id(31)]];
sampler intensityTextureSmpSC [[id(32)]];
sampler normalTexSmpSC [[id(33)]];
sampler opacityTexSmpSC [[id(34)]];
sampler roughnessTexSmpSC [[id(35)]];
sampler sc_EnvmapSpecularSmpSC [[id(37)]];
sampler sc_RayTracedAoTextureSmpSC [[id(39)]];
sampler sc_RayTracedReflectionTextureSmpSC [[id(41)]];
sampler sc_RayTracedShadowTextureSmpSC [[id(42)]];
sampler sc_SSAOTextureSmpSC [[id(43)]];
sampler sc_ScreenTextureSmpSC [[id(44)]];
sampler sc_ShadowTextureSmpSC [[id(45)]];
sampler z_hitIdAndBarycentricSmp [[id(47)]];
sampler z_rayDirectionsSmpSC [[id(48)]];
constant userUniformsObj* UserUniforms [[id(49)]];
};
struct main_recv_out
{
uint4 position_and_mask [[color(0)]];
uint4 normal_and_more [[color(1)]];
};
struct main_recv_in
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
fragment main_recv_out main_recv(main_recv_in in [[stage_in]],constant sc_Set0& sc_set0 [[buffer(0)]],float4 gl_FragCoord [[position]],bool gl_FrontFacing [[front_facing]])
{
main_recv_out out={};
if ((int(sc_DepthOnly_tmp)!=0))
{
return out;
}
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
Globals.VertexColor=in.varColor;
Globals.Surface_UVCoord0=in.varPackedTex.xy;
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
Globals.SurfacePosition_WorldSpace=in.varPos;
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-Globals.SurfacePosition_WorldSpace);
bool l9_16=gl_FrontFacing;
Globals.gFrontFacing=float(l9_16);
Globals.VertexTangent_WorldSpace=normalize(in.varTangent.xyz);
Globals.VertexNormal_WorldSpace=normalize(in.varNormal);
Globals.VertexBinormal_WorldSpace=cross(Globals.VertexNormal_WorldSpace,Globals.VertexTangent_WorldSpace)*in.varTangent.w;
Globals.BumpedNormal=float3(0.0);
Globals.ViewDirWS=normalize((*sc_set0.UserUniforms).sc_Camera.position-in.varPos);
Globals.PositionWS=in.varPos;
float3 Output_N136=float3(0.0);
float param=1.0;
float3 param_1=float3(1.0);
float3 param_2=float3(0.0);
ssGlobals param_4=Globals;
float l9_17=0.0;
l9_17=param_4.gFrontFacing;
float l9_18=0.0;
float l9_19;
if ((int(Tweak_N91_tmp)!=0))
{
l9_19=1.001;
}
else
{
l9_19=0.001;
}
l9_19-=0.001;
l9_18=l9_19;
float l9_20=0.0;
float l9_21=l9_17;
bool l9_22=(l9_21*1.0)!=0.0;
bool l9_23;
if (!l9_22)
{
l9_23=(l9_18*1.0)!=0.0;
}
else
{
l9_23=l9_22;
}
l9_20=float(l9_23);
param=l9_20;
float3 param_3;
if ((param*1.0)!=0.0)
{
float3 l9_24=float3(0.0);
float3 l9_25=float3(0.0);
float3 l9_26=float3(0.5,0.5,1.0);
ssGlobals l9_27=param_4;
float3 l9_28;
if ((int(Tweak_N38_tmp)!=0))
{
float3 l9_29=float3(0.0);
l9_29=l9_27.VertexTangent_WorldSpace;
float3 l9_30=float3(0.0);
l9_30=l9_27.VertexBinormal_WorldSpace;
float3 l9_31=float3(0.0);
float3 l9_32=float3(0.0);
float3 l9_33=float3(0.0);
ssGlobals l9_34=l9_27;
float3 l9_35;
if ((int(Tweak_N91_tmp)!=0))
{
float3 l9_36=float3(0.0);
ssGlobals l9_37=l9_34;
float3 l9_38=l9_37.SurfacePosition_WorldSpace;
float3 l9_39=float3(dfdx(l9_38.x),dfdx(l9_38.y),dfdx(l9_38.z));
float3 l9_40=float3(dfdy(l9_38.x),dfdy(l9_38.y),dfdy(l9_38.z));
float3 l9_41=cross(l9_39,l9_40);
l9_41/=float3(length(l9_41));
l9_36=l9_41;
l9_32=l9_36;
l9_35=l9_32;
}
else
{
float3 l9_42=float3(0.0);
l9_42=l9_34.VertexNormal_WorldSpace;
l9_33=l9_42;
l9_35=l9_33;
}
l9_31=l9_35;
float3x3 l9_43=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_43=float3x3(float3(l9_29),float3(l9_30),float3(l9_31));
float4 l9_44=float4(0.0);
ssGlobals l9_45=l9_27;
int l9_46=0;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_47=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_47=0;
}
else
{
l9_47=in.varStereoViewID;
}
int l9_48=l9_47;
l9_46=1-l9_48;
}
else
{
int l9_49=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_49=0;
}
else
{
l9_49=in.varStereoViewID;
}
int l9_50=l9_49;
l9_46=l9_50;
}
int l9_51=l9_46;
int l9_52=normalTexLayout_tmp;
int l9_53=l9_51;
float2 l9_54=l9_45.Surface_UVCoord0;
bool l9_55=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_56=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_57=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_58=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_59=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_60=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_61=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_62=0.0;
bool l9_63=l9_60&&(!l9_58);
float l9_64=1.0;
float l9_65=l9_54.x;
int l9_66=l9_57.x;
if (l9_66==1)
{
l9_65=fract(l9_65);
}
else
{
if (l9_66==2)
{
float l9_67=fract(l9_65);
float l9_68=l9_65-l9_67;
float l9_69=step(0.25,fract(l9_68*0.5));
l9_65=mix(l9_67,1.0-l9_67,fast::clamp(l9_69,0.0,1.0));
}
}
l9_54.x=l9_65;
float l9_70=l9_54.y;
int l9_71=l9_57.y;
if (l9_71==1)
{
l9_70=fract(l9_70);
}
else
{
if (l9_71==2)
{
float l9_72=fract(l9_70);
float l9_73=l9_70-l9_72;
float l9_74=step(0.25,fract(l9_73*0.5));
l9_70=mix(l9_72,1.0-l9_72,fast::clamp(l9_74,0.0,1.0));
}
}
l9_54.y=l9_70;
if (l9_58)
{
bool l9_75=l9_60;
bool l9_76;
if (l9_75)
{
l9_76=l9_57.x==3;
}
else
{
l9_76=l9_75;
}
float l9_77=l9_54.x;
float l9_78=l9_59.x;
float l9_79=l9_59.z;
bool l9_80=l9_76;
float l9_81=l9_64;
float l9_82=fast::clamp(l9_77,l9_78,l9_79);
float l9_83=step(abs(l9_77-l9_82),9.9999997e-06);
l9_81*=(l9_83+((1.0-float(l9_80))*(1.0-l9_83)));
l9_77=l9_82;
l9_54.x=l9_77;
l9_64=l9_81;
bool l9_84=l9_60;
bool l9_85;
if (l9_84)
{
l9_85=l9_57.y==3;
}
else
{
l9_85=l9_84;
}
float l9_86=l9_54.y;
float l9_87=l9_59.y;
float l9_88=l9_59.w;
bool l9_89=l9_85;
float l9_90=l9_64;
float l9_91=fast::clamp(l9_86,l9_87,l9_88);
float l9_92=step(abs(l9_86-l9_91),9.9999997e-06);
l9_90*=(l9_92+((1.0-float(l9_89))*(1.0-l9_92)));
l9_86=l9_91;
l9_54.y=l9_86;
l9_64=l9_90;
}
float2 l9_93=l9_54;
bool l9_94=l9_55;
float3x3 l9_95=l9_56;
if (l9_94)
{
l9_93=float2((l9_95*float3(l9_93,1.0)).xy);
}
float2 l9_96=l9_93;
float2 l9_97=l9_96;
float2 l9_98=l9_97;
l9_54=l9_98;
float l9_99=l9_54.x;
int l9_100=l9_57.x;
bool l9_101=l9_63;
float l9_102=l9_64;
if ((l9_100==0)||(l9_100==3))
{
float l9_103=l9_99;
float l9_104=0.0;
float l9_105=1.0;
bool l9_106=l9_101;
float l9_107=l9_102;
float l9_108=fast::clamp(l9_103,l9_104,l9_105);
float l9_109=step(abs(l9_103-l9_108),9.9999997e-06);
l9_107*=(l9_109+((1.0-float(l9_106))*(1.0-l9_109)));
l9_103=l9_108;
l9_99=l9_103;
l9_102=l9_107;
}
l9_54.x=l9_99;
l9_64=l9_102;
float l9_110=l9_54.y;
int l9_111=l9_57.y;
bool l9_112=l9_63;
float l9_113=l9_64;
if ((l9_111==0)||(l9_111==3))
{
float l9_114=l9_110;
float l9_115=0.0;
float l9_116=1.0;
bool l9_117=l9_112;
float l9_118=l9_113;
float l9_119=fast::clamp(l9_114,l9_115,l9_116);
float l9_120=step(abs(l9_114-l9_119),9.9999997e-06);
l9_118*=(l9_120+((1.0-float(l9_117))*(1.0-l9_120)));
l9_114=l9_119;
l9_110=l9_114;
l9_113=l9_118;
}
l9_54.y=l9_110;
l9_64=l9_113;
float2 l9_121=l9_54;
int l9_122=l9_52;
int l9_123=l9_53;
float l9_124=l9_62;
float2 l9_125=l9_121;
int l9_126=l9_122;
int l9_127=l9_123;
float3 l9_128=float3(0.0);
if (l9_126==0)
{
l9_128=float3(l9_125,0.0);
}
else
{
if (l9_126==1)
{
l9_128=float3(l9_125.x,(l9_125.y*0.5)+(0.5-(float(l9_127)*0.5)),0.0);
}
else
{
l9_128=float3(l9_125,float(l9_127));
}
}
float3 l9_129=l9_128;
float3 l9_130=l9_129;
float2 l9_131=l9_130.xy;
float l9_132=l9_124;
float4 l9_133=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_131,bias(l9_132));
float4 l9_134=l9_133;
float4 l9_135=l9_134;
if (l9_60)
{
l9_135=mix(l9_61,l9_135,float4(l9_64));
}
float4 l9_136=l9_135;
float4 l9_137=l9_136;
float3 l9_138=(l9_137.xyz*1.9921875)-float3(1.0);
l9_137=float4(l9_138.x,l9_138.y,l9_138.z,l9_137.w);
l9_44=l9_137;
float3 l9_139=float3(0.0);
l9_139=l9_43*l9_44.xyz;
float3 l9_140=float3(0.0);
float3 l9_141=l9_139;
float l9_142=dot(l9_141,l9_141);
float l9_143;
if (l9_142>0.0)
{
l9_143=1.0/sqrt(l9_142);
}
else
{
l9_143=0.0;
}
float l9_144=l9_143;
float3 l9_145=l9_141*l9_144;
l9_140=l9_145;
l9_25=l9_140;
l9_28=l9_25;
}
else
{
float3 l9_146=float3(0.0);
float3 l9_147=float3(0.0);
float3 l9_148=float3(0.0);
ssGlobals l9_149=l9_27;
float3 l9_150;
if ((int(Tweak_N91_tmp)!=0))
{
float3 l9_151=float3(0.0);
ssGlobals l9_152=l9_149;
float3 l9_153=l9_152.SurfacePosition_WorldSpace;
float3 l9_154=float3(dfdx(l9_153.x),dfdx(l9_153.y),dfdx(l9_153.z));
float3 l9_155=float3(dfdy(l9_153.x),dfdy(l9_153.y),dfdy(l9_153.z));
float3 l9_156=cross(l9_154,l9_155);
l9_156/=float3(length(l9_156));
l9_151=l9_156;
l9_147=l9_151;
l9_150=l9_147;
}
else
{
float3 l9_157=float3(0.0);
l9_157=l9_149.VertexNormal_WorldSpace;
l9_148=l9_157;
l9_150=l9_148;
}
l9_146=l9_150;
l9_26=l9_146;
l9_28=l9_26;
}
l9_24=l9_28;
param_1=l9_24;
param_3=param_1;
}
else
{
float3 l9_158=float3(0.0);
float3 l9_159=float3(0.0);
float3 l9_160=float3(0.5,0.5,1.0);
ssGlobals l9_161=param_4;
float3 l9_162;
if ((int(Tweak_N38_tmp)!=0))
{
float3 l9_163=float3(0.0);
l9_163=l9_161.VertexTangent_WorldSpace;
float3 l9_164=float3(0.0);
l9_164=l9_161.VertexBinormal_WorldSpace;
float3 l9_165=float3(0.0);
float3 l9_166=float3(0.0);
float3 l9_167=float3(0.0);
ssGlobals l9_168=l9_161;
float3 l9_169;
if ((int(Tweak_N91_tmp)!=0))
{
float3 l9_170=float3(0.0);
ssGlobals l9_171=l9_168;
float3 l9_172=l9_171.SurfacePosition_WorldSpace;
float3 l9_173=float3(dfdx(l9_172.x),dfdx(l9_172.y),dfdx(l9_172.z));
float3 l9_174=float3(dfdy(l9_172.x),dfdy(l9_172.y),dfdy(l9_172.z));
float3 l9_175=cross(l9_173,l9_174);
l9_175/=float3(length(l9_175));
l9_170=l9_175;
l9_166=l9_170;
l9_169=l9_166;
}
else
{
float3 l9_176=float3(0.0);
l9_176=l9_168.VertexNormal_WorldSpace;
l9_167=l9_176;
l9_169=l9_167;
}
l9_165=l9_169;
float3x3 l9_177=float3x3(float3(0.0),float3(0.0),float3(0.0));
l9_177=float3x3(float3(l9_163),float3(l9_164),float3(l9_165));
float4 l9_178=float4(0.0);
ssGlobals l9_179=l9_161;
int l9_180=0;
if ((int(normalTexHasSwappedViews_tmp)!=0))
{
int l9_181=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_181=0;
}
else
{
l9_181=in.varStereoViewID;
}
int l9_182=l9_181;
l9_180=1-l9_182;
}
else
{
int l9_183=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_183=0;
}
else
{
l9_183=in.varStereoViewID;
}
int l9_184=l9_183;
l9_180=l9_184;
}
int l9_185=l9_180;
int l9_186=normalTexLayout_tmp;
int l9_187=l9_185;
float2 l9_188=l9_179.Surface_UVCoord0;
bool l9_189=(int(SC_USE_UV_TRANSFORM_normalTex_tmp)!=0);
float3x3 l9_190=(*sc_set0.UserUniforms).normalTexTransform;
int2 l9_191=int2(SC_SOFTWARE_WRAP_MODE_U_normalTex_tmp,SC_SOFTWARE_WRAP_MODE_V_normalTex_tmp);
bool l9_192=(int(SC_USE_UV_MIN_MAX_normalTex_tmp)!=0);
float4 l9_193=(*sc_set0.UserUniforms).normalTexUvMinMax;
bool l9_194=(int(SC_USE_CLAMP_TO_BORDER_normalTex_tmp)!=0);
float4 l9_195=(*sc_set0.UserUniforms).normalTexBorderColor;
float l9_196=0.0;
bool l9_197=l9_194&&(!l9_192);
float l9_198=1.0;
float l9_199=l9_188.x;
int l9_200=l9_191.x;
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
l9_188.x=l9_199;
float l9_204=l9_188.y;
int l9_205=l9_191.y;
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
l9_188.y=l9_204;
if (l9_192)
{
bool l9_209=l9_194;
bool l9_210;
if (l9_209)
{
l9_210=l9_191.x==3;
}
else
{
l9_210=l9_209;
}
float l9_211=l9_188.x;
float l9_212=l9_193.x;
float l9_213=l9_193.z;
bool l9_214=l9_210;
float l9_215=l9_198;
float l9_216=fast::clamp(l9_211,l9_212,l9_213);
float l9_217=step(abs(l9_211-l9_216),9.9999997e-06);
l9_215*=(l9_217+((1.0-float(l9_214))*(1.0-l9_217)));
l9_211=l9_216;
l9_188.x=l9_211;
l9_198=l9_215;
bool l9_218=l9_194;
bool l9_219;
if (l9_218)
{
l9_219=l9_191.y==3;
}
else
{
l9_219=l9_218;
}
float l9_220=l9_188.y;
float l9_221=l9_193.y;
float l9_222=l9_193.w;
bool l9_223=l9_219;
float l9_224=l9_198;
float l9_225=fast::clamp(l9_220,l9_221,l9_222);
float l9_226=step(abs(l9_220-l9_225),9.9999997e-06);
l9_224*=(l9_226+((1.0-float(l9_223))*(1.0-l9_226)));
l9_220=l9_225;
l9_188.y=l9_220;
l9_198=l9_224;
}
float2 l9_227=l9_188;
bool l9_228=l9_189;
float3x3 l9_229=l9_190;
if (l9_228)
{
l9_227=float2((l9_229*float3(l9_227,1.0)).xy);
}
float2 l9_230=l9_227;
float2 l9_231=l9_230;
float2 l9_232=l9_231;
l9_188=l9_232;
float l9_233=l9_188.x;
int l9_234=l9_191.x;
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
l9_188.x=l9_233;
l9_198=l9_236;
float l9_244=l9_188.y;
int l9_245=l9_191.y;
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
l9_188.y=l9_244;
l9_198=l9_247;
float2 l9_255=l9_188;
int l9_256=l9_186;
int l9_257=l9_187;
float l9_258=l9_196;
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
float4 l9_267=sc_set0.normalTex.sample(sc_set0.normalTexSmpSC,l9_265,bias(l9_266));
float4 l9_268=l9_267;
float4 l9_269=l9_268;
if (l9_194)
{
l9_269=mix(l9_195,l9_269,float4(l9_198));
}
float4 l9_270=l9_269;
float4 l9_271=l9_270;
float3 l9_272=(l9_271.xyz*1.9921875)-float3(1.0);
l9_271=float4(l9_272.x,l9_272.y,l9_272.z,l9_271.w);
l9_178=l9_271;
float3 l9_273=float3(0.0);
l9_273=l9_177*l9_178.xyz;
float3 l9_274=float3(0.0);
float3 l9_275=l9_273;
float l9_276=dot(l9_275,l9_275);
float l9_277;
if (l9_276>0.0)
{
l9_277=1.0/sqrt(l9_276);
}
else
{
l9_277=0.0;
}
float l9_278=l9_277;
float3 l9_279=l9_275*l9_278;
l9_274=l9_279;
l9_159=l9_274;
l9_162=l9_159;
}
else
{
float3 l9_280=float3(0.0);
float3 l9_281=float3(0.0);
float3 l9_282=float3(0.0);
ssGlobals l9_283=l9_161;
float3 l9_284;
if ((int(Tweak_N91_tmp)!=0))
{
float3 l9_285=float3(0.0);
ssGlobals l9_286=l9_283;
float3 l9_287=l9_286.SurfacePosition_WorldSpace;
float3 l9_288=float3(dfdx(l9_287.x),dfdx(l9_287.y),dfdx(l9_287.z));
float3 l9_289=float3(dfdy(l9_287.x),dfdy(l9_287.y),dfdy(l9_287.z));
float3 l9_290=cross(l9_288,l9_289);
l9_290/=float3(length(l9_290));
l9_285=l9_290;
l9_281=l9_285;
l9_284=l9_281;
}
else
{
float3 l9_291=float3(0.0);
l9_291=l9_283.VertexNormal_WorldSpace;
l9_282=l9_291;
l9_284=l9_282;
}
l9_280=l9_284;
l9_160=l9_280;
l9_162=l9_160;
}
l9_158=l9_162;
float3 l9_292=float3(0.0);
l9_292=-l9_158;
param_2=l9_292;
param_3=param_2;
}
Output_N136=param_3;
float3 Result_N83=float3(0.0);
float3 param_5=float3(1.0);
float3 param_6=(*sc_set0.UserUniforms).Port_Default_N083;
ssGlobals param_8=Globals;
float3 param_7;
if ((int(Tweak_N56_tmp)!=0))
{
float4 l9_293=float4(0.0);
int l9_294=0;
if ((int(roughnessTexHasSwappedViews_tmp)!=0))
{
int l9_295=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_295=0;
}
else
{
l9_295=in.varStereoViewID;
}
int l9_296=l9_295;
l9_294=1-l9_296;
}
else
{
int l9_297=0;
if (sc_StereoRenderingMode_tmp==0)
{
l9_297=0;
}
else
{
l9_297=in.varStereoViewID;
}
int l9_298=l9_297;
l9_294=l9_298;
}
int l9_299=l9_294;
int l9_300=roughnessTexLayout_tmp;
int l9_301=l9_299;
float2 l9_302=param_8.Surface_UVCoord0;
bool l9_303=(int(SC_USE_UV_TRANSFORM_roughnessTex_tmp)!=0);
float3x3 l9_304=(*sc_set0.UserUniforms).roughnessTexTransform;
int2 l9_305=int2(SC_SOFTWARE_WRAP_MODE_U_roughnessTex_tmp,SC_SOFTWARE_WRAP_MODE_V_roughnessTex_tmp);
bool l9_306=(int(SC_USE_UV_MIN_MAX_roughnessTex_tmp)!=0);
float4 l9_307=(*sc_set0.UserUniforms).roughnessTexUvMinMax;
bool l9_308=(int(SC_USE_CLAMP_TO_BORDER_roughnessTex_tmp)!=0);
float4 l9_309=(*sc_set0.UserUniforms).roughnessTexBorderColor;
float l9_310=0.0;
bool l9_311=l9_308&&(!l9_306);
float l9_312=1.0;
float l9_313=l9_302.x;
int l9_314=l9_305.x;
if (l9_314==1)
{
l9_313=fract(l9_313);
}
else
{
if (l9_314==2)
{
float l9_315=fract(l9_313);
float l9_316=l9_313-l9_315;
float l9_317=step(0.25,fract(l9_316*0.5));
l9_313=mix(l9_315,1.0-l9_315,fast::clamp(l9_317,0.0,1.0));
}
}
l9_302.x=l9_313;
float l9_318=l9_302.y;
int l9_319=l9_305.y;
if (l9_319==1)
{
l9_318=fract(l9_318);
}
else
{
if (l9_319==2)
{
float l9_320=fract(l9_318);
float l9_321=l9_318-l9_320;
float l9_322=step(0.25,fract(l9_321*0.5));
l9_318=mix(l9_320,1.0-l9_320,fast::clamp(l9_322,0.0,1.0));
}
}
l9_302.y=l9_318;
if (l9_306)
{
bool l9_323=l9_308;
bool l9_324;
if (l9_323)
{
l9_324=l9_305.x==3;
}
else
{
l9_324=l9_323;
}
float l9_325=l9_302.x;
float l9_326=l9_307.x;
float l9_327=l9_307.z;
bool l9_328=l9_324;
float l9_329=l9_312;
float l9_330=fast::clamp(l9_325,l9_326,l9_327);
float l9_331=step(abs(l9_325-l9_330),9.9999997e-06);
l9_329*=(l9_331+((1.0-float(l9_328))*(1.0-l9_331)));
l9_325=l9_330;
l9_302.x=l9_325;
l9_312=l9_329;
bool l9_332=l9_308;
bool l9_333;
if (l9_332)
{
l9_333=l9_305.y==3;
}
else
{
l9_333=l9_332;
}
float l9_334=l9_302.y;
float l9_335=l9_307.y;
float l9_336=l9_307.w;
bool l9_337=l9_333;
float l9_338=l9_312;
float l9_339=fast::clamp(l9_334,l9_335,l9_336);
float l9_340=step(abs(l9_334-l9_339),9.9999997e-06);
l9_338*=(l9_340+((1.0-float(l9_337))*(1.0-l9_340)));
l9_334=l9_339;
l9_302.y=l9_334;
l9_312=l9_338;
}
float2 l9_341=l9_302;
bool l9_342=l9_303;
float3x3 l9_343=l9_304;
if (l9_342)
{
l9_341=float2((l9_343*float3(l9_341,1.0)).xy);
}
float2 l9_344=l9_341;
float2 l9_345=l9_344;
float2 l9_346=l9_345;
l9_302=l9_346;
float l9_347=l9_302.x;
int l9_348=l9_305.x;
bool l9_349=l9_311;
float l9_350=l9_312;
if ((l9_348==0)||(l9_348==3))
{
float l9_351=l9_347;
float l9_352=0.0;
float l9_353=1.0;
bool l9_354=l9_349;
float l9_355=l9_350;
float l9_356=fast::clamp(l9_351,l9_352,l9_353);
float l9_357=step(abs(l9_351-l9_356),9.9999997e-06);
l9_355*=(l9_357+((1.0-float(l9_354))*(1.0-l9_357)));
l9_351=l9_356;
l9_347=l9_351;
l9_350=l9_355;
}
l9_302.x=l9_347;
l9_312=l9_350;
float l9_358=l9_302.y;
int l9_359=l9_305.y;
bool l9_360=l9_311;
float l9_361=l9_312;
if ((l9_359==0)||(l9_359==3))
{
float l9_362=l9_358;
float l9_363=0.0;
float l9_364=1.0;
bool l9_365=l9_360;
float l9_366=l9_361;
float l9_367=fast::clamp(l9_362,l9_363,l9_364);
float l9_368=step(abs(l9_362-l9_367),9.9999997e-06);
l9_366*=(l9_368+((1.0-float(l9_365))*(1.0-l9_368)));
l9_362=l9_367;
l9_358=l9_362;
l9_361=l9_366;
}
l9_302.y=l9_358;
l9_312=l9_361;
float2 l9_369=l9_302;
int l9_370=l9_300;
int l9_371=l9_301;
float l9_372=l9_310;
float2 l9_373=l9_369;
int l9_374=l9_370;
int l9_375=l9_371;
float3 l9_376=float3(0.0);
if (l9_374==0)
{
l9_376=float3(l9_373,0.0);
}
else
{
if (l9_374==1)
{
l9_376=float3(l9_373.x,(l9_373.y*0.5)+(0.5-(float(l9_375)*0.5)),0.0);
}
else
{
l9_376=float3(l9_373,float(l9_375));
}
}
float3 l9_377=l9_376;
float3 l9_378=l9_377;
float2 l9_379=l9_378.xy;
float l9_380=l9_372;
float4 l9_381=sc_set0.roughnessTex.sample(sc_set0.roughnessTexSmpSC,l9_379,bias(l9_380));
float4 l9_382=l9_381;
float4 l9_383=l9_382;
if (l9_308)
{
l9_383=mix(l9_309,l9_383,float4(l9_312));
}
float4 l9_384=l9_383;
l9_293=l9_384;
param_5=l9_293.xyz;
param_7=param_5;
}
else
{
param_7=param_6;
}
Result_N83=param_7;
float Output_N81=0.0;
float param_9=(*sc_set0.UserUniforms).metallic;
Output_N81=param_9;
float Output_N9=0.0;
float param_10=(*sc_set0.UserUniforms).roughness;
Output_N9=param_10;
float3 Value_N100=float3(0.0);
Value_N100.x=Output_N81;
Value_N100.y=Output_N9;
Value_N100.z=(*sc_set0.UserUniforms).Port_Value3_N100;
float3 Output_N68=float3(0.0);
Output_N68=Result_N83*Value_N100;
float Value2_N89=0.0;
float3 param_11=Output_N68;
float param_12=param_11.y;
Value2_N89=param_12;
float param_13=(*sc_set0.UserUniforms).Port_Opacity_N006;
float3 param_14=Output_N136;
float param_15=Value2_N89;
ssGlobals param_16=Globals;
if (!(int(sc_ProjectiveShadowsCaster_tmp)!=0))
{
param_16.BumpedNormal=param_14;
}
float l9_385=param_13;
if ((int(sc_BlendMode_AlphaTest_tmp)!=0))
{
if (l9_385<(*sc_set0.UserUniforms).alphaTestThreshold)
{
discard_fragment();
}
}
if ((int(ENABLE_STIPPLE_PATTERN_TEST_tmp)!=0))
{
float4 l9_386=gl_FragCoord;
float2 l9_387=floor(mod(l9_386.xy,float2(4.0)));
float l9_388=(mod(dot(l9_387,float2(4.0,1.0))*9.0,16.0)+1.0)/17.0;
if (l9_385<l9_388)
{
discard_fragment();
}
}
float3 l9_389=param_16.PositionWS;
float3 l9_390=param_16.BumpedNormal;
float l9_391=param_15;
float3 l9_392=normalize((*sc_set0.UserUniforms).sc_Camera.position-l9_389);
if (dot(l9_392,l9_390)>=(-0.050000001))
{
uint3 l9_393=uint3(round((l9_389-(*sc_set0.UserUniforms).OriginNormalizationOffset)*(*sc_set0.UserUniforms).OriginNormalizationScale));
out.position_and_mask=uint4(l9_393.x,l9_393.y,l9_393.z,out.position_and_mask.w);
out.position_and_mask.w=uint((*sc_set0.UserUniforms).receiver_mask);
float3 l9_394=l9_390;
float l9_395=dot(abs(l9_394),float3(1.0));
l9_394/=float3(l9_395);
float l9_396=fast::clamp(-l9_394.z,0.0,1.0);
float2 l9_397=l9_394.xy;
float l9_398;
if (l9_394.x>=0.0)
{
l9_398=l9_396;
}
else
{
l9_398=-l9_396;
}
l9_397.x+=l9_398;
float l9_399;
if (l9_394.y>=0.0)
{
l9_399=l9_396;
}
else
{
l9_399=-l9_396;
}
l9_397.y+=l9_399;
float2 l9_400=l9_397;
float2 l9_401=l9_400;
uint2 l9_402=uint2(as_type<uint>(half2(float2(l9_401.x,0.0))),as_type<uint>(half2(float2(l9_401.y,0.0))));
out.normal_and_more=uint4(l9_402.x,l9_402.y,out.normal_and_more.z,out.normal_and_more.w);
out.normal_and_more.z=as_type<uint>(half2(float2(0.0)));
uint l9_403;
if (l9_391<0.0)
{
l9_403=1023u;
}
else
{
l9_403=uint(fast::clamp(l9_391,0.0,1.0)*1000.0);
}
uint l9_404=l9_403;
l9_404 |= uint(((*sc_set0.UserUniforms).receiverId%32)<<int(10u));
out.normal_and_more.w=l9_404;
}
else
{
out.position_and_mask=uint4(0u);
out.normal_and_more=uint4(0u);
}
return out;
}
} // RECEIVER MODE SHADER
