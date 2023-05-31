#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void rubberBlack_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, Texture2D gradient_129602, Texture2D gradient_129612, Texture2D gradient_129620, Texture2D gradient_129628, Texture2D gradient_129634, Texture2D gradient_129644, out float4 colourOut)
{
	
	float4 _Mapping_129624 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_129600_fac; float4 _SimpleNoiseTexture_129600_col; node_simple_noise_texture_full(_Mapping_129624, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_129600_fac, _SimpleNoiseTexture_129600_col);
	float4 _MixRGB_129626 = mix_blend(0.05, _Mapping_129624, _SimpleNoiseTexture_129600_col);
	float _VoronoiTexture_129604_dis; float4 _VoronoiTexture_129604_col; float3 _VoronoiTexture_129604_pos; float _VoronoiTexture_129604_w; float _VoronoiTexture_129604_rad; voronoi_tex_getValue(_MixRGB_129626, 0, 16, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_129604_dis, _VoronoiTexture_129604_col, _VoronoiTexture_129604_pos, _VoronoiTexture_129604_w, _VoronoiTexture_129604_rad);
	float4 _ColorRamp_129634 = color_ramp(gradient_129634, _VoronoiTexture_129604_col);
	float4 _ColorRamp_129644 = color_ramp(gradient_129644, _ColorRamp_129634);
	float4 _Mapping_129610 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_129608_fac; float4 _SimpleNoiseTexture_129608_col; node_simple_noise_texture_full(_Mapping_129610, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_129608_fac, _SimpleNoiseTexture_129608_col);
	float4 _MixRGB_129640 = mix_blend(0.05, _Mapping_129610, _SimpleNoiseTexture_129608_col);
	float _VoronoiTexture_129614_dis; float4 _VoronoiTexture_129614_col; float3 _VoronoiTexture_129614_pos; float _VoronoiTexture_129614_w; float _VoronoiTexture_129614_rad; voronoi_tex_getValue(_MixRGB_129640, 0, 20, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_129614_dis, _VoronoiTexture_129614_col, _VoronoiTexture_129614_pos, _VoronoiTexture_129614_w, _VoronoiTexture_129614_rad);
	float4 _ColorRamp_129628 = color_ramp(gradient_129628, _VoronoiTexture_129614_col);
	float4 _ColorRamp_129602 = color_ramp(gradient_129602, _ColorRamp_129628);
	float4 _MixRGB_129636 = mix_overlay(0.6, _ColorRamp_129644, _ColorRamp_129602);
	float4 _Mapping_129638 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_129632_fac; float4 _SimpleNoiseTexture_129632_col; node_simple_noise_texture_full(_Mapping_129638, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_129632_fac, _SimpleNoiseTexture_129632_col);
	float4 _MixRGB_129618 = mix_blend(0.05, _Mapping_129638, _SimpleNoiseTexture_129632_col);
	float _VoronoiTexture_129630_dis; float4 _VoronoiTexture_129630_col; float3 _VoronoiTexture_129630_pos; float _VoronoiTexture_129630_w; float _VoronoiTexture_129630_rad; voronoi_tex_getValue(_MixRGB_129618, 0, 30, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_129630_dis, _VoronoiTexture_129630_col, _VoronoiTexture_129630_pos, _VoronoiTexture_129630_w, _VoronoiTexture_129630_rad);
	float4 _ColorRamp_129612 = color_ramp(gradient_129612, _VoronoiTexture_129630_col);
	float4 _ColorRamp_129620 = color_ramp(gradient_129620, _ColorRamp_129612);
	float4 _MixRGB_129642 = mix_overlay(0.6, _MixRGB_129636, _ColorRamp_129620);

	colourOut = _MixRGB_129642;
}