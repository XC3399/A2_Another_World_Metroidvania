#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void metalGreen_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, Texture2D gradient_84338, Texture2D gradient_84346, Texture2D gradient_84348, Texture2D gradient_84368, Texture2D gradient_84376, Texture2D gradient_84386, out float4 colourOut)
{
	
	float4 _Mapping_84372 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_84360_fac; float4 _SimpleNoiseTexture_84360_col; node_simple_noise_texture_full(_Mapping_84372, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_84360_fac, _SimpleNoiseTexture_84360_col);
	float4 _MixRGB_84342 = mix_blend(0.05, _Mapping_84372, _SimpleNoiseTexture_84360_col);
	float _VoronoiTexture_84356_dis; float4 _VoronoiTexture_84356_col; float3 _VoronoiTexture_84356_pos; float _VoronoiTexture_84356_w; float _VoronoiTexture_84356_rad; voronoi_tex_getValue(_MixRGB_84342, 0, 16, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_84356_dis, _VoronoiTexture_84356_col, _VoronoiTexture_84356_pos, _VoronoiTexture_84356_w, _VoronoiTexture_84356_rad);
	float4 _ColorRamp_84338 = color_ramp(gradient_84338, _VoronoiTexture_84356_col);
	float4 _ColorRamp_84386 = color_ramp(gradient_84386, _ColorRamp_84338);
	float4 _Mapping_84344 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_84358_fac; float4 _SimpleNoiseTexture_84358_col; node_simple_noise_texture_full(_Mapping_84344, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_84358_fac, _SimpleNoiseTexture_84358_col);
	float4 _MixRGB_84366 = mix_blend(0.05, _Mapping_84344, _SimpleNoiseTexture_84358_col);
	float _VoronoiTexture_84350_dis; float4 _VoronoiTexture_84350_col; float3 _VoronoiTexture_84350_pos; float _VoronoiTexture_84350_w; float _VoronoiTexture_84350_rad; voronoi_tex_getValue(_MixRGB_84366, 0, 20, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_84350_dis, _VoronoiTexture_84350_col, _VoronoiTexture_84350_pos, _VoronoiTexture_84350_w, _VoronoiTexture_84350_rad);
	float4 _ColorRamp_84346 = color_ramp(gradient_84346, _VoronoiTexture_84350_col);
	float4 _ColorRamp_84348 = color_ramp(gradient_84348, _ColorRamp_84346);
	float4 _MixRGB_84370 = mix_overlay(0.6, _ColorRamp_84386, _ColorRamp_84348);
	float4 _Mapping_84364 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_84354_fac; float4 _SimpleNoiseTexture_84354_col; node_simple_noise_texture_full(_Mapping_84364, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_84354_fac, _SimpleNoiseTexture_84354_col);
	float4 _MixRGB_84352 = mix_blend(0.05, _Mapping_84364, _SimpleNoiseTexture_84354_col);
	float _VoronoiTexture_84362_dis; float4 _VoronoiTexture_84362_col; float3 _VoronoiTexture_84362_pos; float _VoronoiTexture_84362_w; float _VoronoiTexture_84362_rad; voronoi_tex_getValue(_MixRGB_84352, 0, 30, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_84362_dis, _VoronoiTexture_84362_col, _VoronoiTexture_84362_pos, _VoronoiTexture_84362_w, _VoronoiTexture_84362_rad);
	float4 _ColorRamp_84368 = color_ramp(gradient_84368, _VoronoiTexture_84362_col);
	float4 _ColorRamp_84376 = color_ramp(gradient_84376, _ColorRamp_84368);
	float4 _MixRGB_84382 = mix_overlay(0.6, _MixRGB_84370, _ColorRamp_84376);

	colourOut = _MixRGB_84382;
}