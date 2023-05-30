#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void metalBronzeGraph_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, Texture2D gradient_29798, Texture2D gradient_29808, Texture2D gradient_29816, Texture2D gradient_29824, Texture2D gradient_29826, Texture2D gradient_29832, out float4 colourOut)
{
	
	float4 _Mapping_29820 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_29796_fac; float4 _SimpleNoiseTexture_29796_col; node_simple_noise_texture_full(_Mapping_29820, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_29796_fac, _SimpleNoiseTexture_29796_col);
	float4 _MixRGB_29822 = mix_blend(0.05, _Mapping_29820, _SimpleNoiseTexture_29796_col);
	float _VoronoiTexture_29800_dis; float4 _VoronoiTexture_29800_col; float3 _VoronoiTexture_29800_pos; float _VoronoiTexture_29800_w; float _VoronoiTexture_29800_rad; voronoi_tex_getValue(_MixRGB_29822, 0, 16, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_29800_dis, _VoronoiTexture_29800_col, _VoronoiTexture_29800_pos, _VoronoiTexture_29800_w, _VoronoiTexture_29800_rad);
	float4 _ColorRamp_29832 = color_ramp(gradient_29832, _VoronoiTexture_29800_col);
	float4 _ColorRamp_29826 = color_ramp(gradient_29826, _ColorRamp_29832);
	float4 _Mapping_29806 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_29804_fac; float4 _SimpleNoiseTexture_29804_col; node_simple_noise_texture_full(_Mapping_29806, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_29804_fac, _SimpleNoiseTexture_29804_col);
	float4 _MixRGB_29838 = mix_blend(0.05, _Mapping_29806, _SimpleNoiseTexture_29804_col);
	float _VoronoiTexture_29810_dis; float4 _VoronoiTexture_29810_col; float3 _VoronoiTexture_29810_pos; float _VoronoiTexture_29810_w; float _VoronoiTexture_29810_rad; voronoi_tex_getValue(_MixRGB_29838, 0, 20, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_29810_dis, _VoronoiTexture_29810_col, _VoronoiTexture_29810_pos, _VoronoiTexture_29810_w, _VoronoiTexture_29810_rad);
	float4 _ColorRamp_29824 = color_ramp(gradient_29824, _VoronoiTexture_29810_col);
	float4 _ColorRamp_29798 = color_ramp(gradient_29798, _ColorRamp_29824);
	float4 _MixRGB_29834 = mix_overlay(0.6, _ColorRamp_29826, _ColorRamp_29798);
	float4 _Mapping_29836 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_29830_fac; float4 _SimpleNoiseTexture_29830_col; node_simple_noise_texture_full(_Mapping_29836, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_29830_fac, _SimpleNoiseTexture_29830_col);
	float4 _MixRGB_29814 = mix_blend(0.05, _Mapping_29836, _SimpleNoiseTexture_29830_col);
	float _VoronoiTexture_29828_dis; float4 _VoronoiTexture_29828_col; float3 _VoronoiTexture_29828_pos; float _VoronoiTexture_29828_w; float _VoronoiTexture_29828_rad; voronoi_tex_getValue(_MixRGB_29814, 0, 30, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_29828_dis, _VoronoiTexture_29828_col, _VoronoiTexture_29828_pos, _VoronoiTexture_29828_w, _VoronoiTexture_29828_rad);
	float4 _ColorRamp_29808 = color_ramp(gradient_29808, _VoronoiTexture_29828_col);
	float4 _ColorRamp_29816 = color_ramp(gradient_29816, _ColorRamp_29808);
	float4 _MixRGB_29844 = mix_overlay(0.6, _MixRGB_29834, _ColorRamp_29816);

	colourOut = _MixRGB_29844;
}