#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void metalBlue_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, Texture2D gradient_68666, Texture2D gradient_68674, Texture2D gradient_68676, Texture2D gradient_68696, Texture2D gradient_68704, Texture2D gradient_68710, out float4 colourOut)
{
	
	float4 _Mapping_68700 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_68688_fac; float4 _SimpleNoiseTexture_68688_col; node_simple_noise_texture_full(_Mapping_68700, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_68688_fac, _SimpleNoiseTexture_68688_col);
	float4 _MixRGB_68670 = mix_blend(0.05, _Mapping_68700, _SimpleNoiseTexture_68688_col);
	float _VoronoiTexture_68684_dis; float4 _VoronoiTexture_68684_col; float3 _VoronoiTexture_68684_pos; float _VoronoiTexture_68684_w; float _VoronoiTexture_68684_rad; voronoi_tex_getValue(_MixRGB_68670, 0, 16, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_68684_dis, _VoronoiTexture_68684_col, _VoronoiTexture_68684_pos, _VoronoiTexture_68684_w, _VoronoiTexture_68684_rad);
	float4 _ColorRamp_68666 = color_ramp(gradient_68666, _VoronoiTexture_68684_col);
	float4 _ColorRamp_68710 = color_ramp(gradient_68710, _ColorRamp_68666);
	float4 _Mapping_68672 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_68686_fac; float4 _SimpleNoiseTexture_68686_col; node_simple_noise_texture_full(_Mapping_68672, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_68686_fac, _SimpleNoiseTexture_68686_col);
	float4 _MixRGB_68694 = mix_blend(0.05, _Mapping_68672, _SimpleNoiseTexture_68686_col);
	float _VoronoiTexture_68678_dis; float4 _VoronoiTexture_68678_col; float3 _VoronoiTexture_68678_pos; float _VoronoiTexture_68678_w; float _VoronoiTexture_68678_rad; voronoi_tex_getValue(_MixRGB_68694, 0, 20, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_68678_dis, _VoronoiTexture_68678_col, _VoronoiTexture_68678_pos, _VoronoiTexture_68678_w, _VoronoiTexture_68678_rad);
	float4 _ColorRamp_68674 = color_ramp(gradient_68674, _VoronoiTexture_68678_col);
	float4 _ColorRamp_68676 = color_ramp(gradient_68676, _ColorRamp_68674);
	float4 _MixRGB_68698 = mix_overlay(0.6, _ColorRamp_68710, _ColorRamp_68676);
	float4 _Mapping_68692 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_68682_fac; float4 _SimpleNoiseTexture_68682_col; node_simple_noise_texture_full(_Mapping_68692, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_68682_fac, _SimpleNoiseTexture_68682_col);
	float4 _MixRGB_68680 = mix_blend(0.05, _Mapping_68692, _SimpleNoiseTexture_68682_col);
	float _VoronoiTexture_68690_dis; float4 _VoronoiTexture_68690_col; float3 _VoronoiTexture_68690_pos; float _VoronoiTexture_68690_w; float _VoronoiTexture_68690_rad; voronoi_tex_getValue(_MixRGB_68680, 0, 30, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_68690_dis, _VoronoiTexture_68690_col, _VoronoiTexture_68690_pos, _VoronoiTexture_68690_w, _VoronoiTexture_68690_rad);
	float4 _ColorRamp_68696 = color_ramp(gradient_68696, _VoronoiTexture_68690_col);
	float4 _ColorRamp_68704 = color_ramp(gradient_68704, _ColorRamp_68696);
	float4 _MixRGB_68708 = mix_overlay(0.6, _MixRGB_68698, _ColorRamp_68704);

	colourOut = _MixRGB_68708;
}