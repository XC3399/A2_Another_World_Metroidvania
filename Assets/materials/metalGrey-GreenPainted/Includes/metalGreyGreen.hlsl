#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void metalGreyGreen_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, Texture2D gradient_99318, Texture2D gradient_99326, Texture2D gradient_99334, Texture2D gradient_99344, Texture2D gradient_99346, Texture2D gradient_99362, out float4 colourOut)
{
	
	float4 _Mapping_99322 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_99328_fac; float4 _SimpleNoiseTexture_99328_col; node_simple_noise_texture_full(_Mapping_99322, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_99328_fac, _SimpleNoiseTexture_99328_col);
	float4 _MixRGB_99342 = mix_blend(0.05, _Mapping_99322, _SimpleNoiseTexture_99328_col);
	float _VoronoiTexture_99338_dis; float4 _VoronoiTexture_99338_col; float3 _VoronoiTexture_99338_pos; float _VoronoiTexture_99338_w; float _VoronoiTexture_99338_rad; voronoi_tex_getValue(_MixRGB_99342, 0, 16, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_99338_dis, _VoronoiTexture_99338_col, _VoronoiTexture_99338_pos, _VoronoiTexture_99338_w, _VoronoiTexture_99338_rad);
	float4 _ColorRamp_99326 = color_ramp(gradient_99326, _VoronoiTexture_99338_col);
	float4 _ColorRamp_99362 = color_ramp(gradient_99362, _ColorRamp_99326);
	float4 _Mapping_99356 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_99352_fac; float4 _SimpleNoiseTexture_99352_col; node_simple_noise_texture_full(_Mapping_99356, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_99352_fac, _SimpleNoiseTexture_99352_col);
	float4 _MixRGB_99332 = mix_blend(0.05, _Mapping_99356, _SimpleNoiseTexture_99352_col);
	float _VoronoiTexture_99320_dis; float4 _VoronoiTexture_99320_col; float3 _VoronoiTexture_99320_pos; float _VoronoiTexture_99320_w; float _VoronoiTexture_99320_rad; voronoi_tex_getValue(_MixRGB_99332, 0, 20, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_99320_dis, _VoronoiTexture_99320_col, _VoronoiTexture_99320_pos, _VoronoiTexture_99320_w, _VoronoiTexture_99320_rad);
	float4 _ColorRamp_99346 = color_ramp(gradient_99346, _VoronoiTexture_99320_col);
	float4 _ColorRamp_99334 = color_ramp(gradient_99334, _ColorRamp_99346);
	float4 _MixRGB_99358 = mix_overlay(0.6, _ColorRamp_99362, _ColorRamp_99334);
	float4 _Mapping_99330 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_99324_fac; float4 _SimpleNoiseTexture_99324_col; node_simple_noise_texture_full(_Mapping_99330, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_99324_fac, _SimpleNoiseTexture_99324_col);
	float4 _MixRGB_99350 = mix_blend(0.05, _Mapping_99330, _SimpleNoiseTexture_99324_col);
	float _VoronoiTexture_99336_dis; float4 _VoronoiTexture_99336_col; float3 _VoronoiTexture_99336_pos; float _VoronoiTexture_99336_w; float _VoronoiTexture_99336_rad; voronoi_tex_getValue(_MixRGB_99350, 0, 30, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_99336_dis, _VoronoiTexture_99336_col, _VoronoiTexture_99336_pos, _VoronoiTexture_99336_w, _VoronoiTexture_99336_rad);
	float4 _ColorRamp_99318 = color_ramp(gradient_99318, _VoronoiTexture_99336_col);
	float4 _ColorRamp_99344 = color_ramp(gradient_99344, _ColorRamp_99318);
	float4 _MixRGB_99360 = mix_overlay(0.6, _MixRGB_99358, _ColorRamp_99344);

	colourOut = _MixRGB_99360;
}