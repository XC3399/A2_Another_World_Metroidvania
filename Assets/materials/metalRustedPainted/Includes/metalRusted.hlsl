#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void metalRusted_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, Texture2D gradient_31174, Texture2D gradient_31176, Texture2D gradient_31190, Texture2D gradient_31194, Texture2D gradient_31202, Texture2D gradient_31204, out float4 colourOut)
{
	
	float4 _Mapping_31170 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_31198_fac; float4 _SimpleNoiseTexture_31198_col; node_simple_noise_texture_full(_Mapping_31170, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_31198_fac, _SimpleNoiseTexture_31198_col);
	float4 _MixRGB_31186 = mix_blend(0.05, _Mapping_31170, _SimpleNoiseTexture_31198_col);
	float _VoronoiTexture_31200_dis; float4 _VoronoiTexture_31200_col; float3 _VoronoiTexture_31200_pos; float _VoronoiTexture_31200_w; float _VoronoiTexture_31200_rad; voronoi_tex_getValue(_MixRGB_31186, 0, 16, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_31200_dis, _VoronoiTexture_31200_col, _VoronoiTexture_31200_pos, _VoronoiTexture_31200_w, _VoronoiTexture_31200_rad);
	float4 _ColorRamp_31194 = color_ramp(gradient_31194, _VoronoiTexture_31200_col);
	float4 _ColorRamp_31190 = color_ramp(gradient_31190, _ColorRamp_31194);
	float4 _Mapping_31188 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_31164_fac; float4 _SimpleNoiseTexture_31164_col; node_simple_noise_texture_full(_Mapping_31188, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_31164_fac, _SimpleNoiseTexture_31164_col);
	float4 _MixRGB_31166 = mix_blend(0.05, _Mapping_31188, _SimpleNoiseTexture_31164_col);
	float _VoronoiTexture_31192_dis; float4 _VoronoiTexture_31192_col; float3 _VoronoiTexture_31192_pos; float _VoronoiTexture_31192_w; float _VoronoiTexture_31192_rad; voronoi_tex_getValue(_MixRGB_31166, 0, 20, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_31192_dis, _VoronoiTexture_31192_col, _VoronoiTexture_31192_pos, _VoronoiTexture_31192_w, _VoronoiTexture_31192_rad);
	float4 _ColorRamp_31174 = color_ramp(gradient_31174, _VoronoiTexture_31192_col);
	float4 _ColorRamp_31204 = color_ramp(gradient_31204, _ColorRamp_31174);
	float4 _MixRGB_31206 = mix_overlay(0.6, _ColorRamp_31190, _ColorRamp_31204);
	float4 _Mapping_31182 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_31178_fac; float4 _SimpleNoiseTexture_31178_col; node_simple_noise_texture_full(_Mapping_31182, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_31178_fac, _SimpleNoiseTexture_31178_col);
	float4 _MixRGB_31196 = mix_blend(0.05, _Mapping_31182, _SimpleNoiseTexture_31178_col);
	float _VoronoiTexture_31168_dis; float4 _VoronoiTexture_31168_col; float3 _VoronoiTexture_31168_pos; float _VoronoiTexture_31168_w; float _VoronoiTexture_31168_rad; voronoi_tex_getValue(_MixRGB_31196, 0, 30, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_31168_dis, _VoronoiTexture_31168_col, _VoronoiTexture_31168_pos, _VoronoiTexture_31168_w, _VoronoiTexture_31168_rad);
	float4 _ColorRamp_31176 = color_ramp(gradient_31176, _VoronoiTexture_31168_col);
	float4 _ColorRamp_31202 = color_ramp(gradient_31202, _ColorRamp_31176);
	float4 _MixRGB_31208 = mix_overlay(0.6, _MixRGB_31206, _ColorRamp_31202);

	colourOut = _MixRGB_31208;
}