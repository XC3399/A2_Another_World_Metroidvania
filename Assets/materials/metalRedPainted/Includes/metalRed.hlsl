#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void metalRed_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, Texture2D gradient_110142, Texture2D gradient_110150, Texture2D gradient_110152, Texture2D gradient_110172, Texture2D gradient_110180, Texture2D gradient_110190, out float4 colourOut)
{
	
	float4 _Mapping_110176 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_110164_fac; float4 _SimpleNoiseTexture_110164_col; node_simple_noise_texture_full(_Mapping_110176, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_110164_fac, _SimpleNoiseTexture_110164_col);
	float4 _MixRGB_110146 = mix_blend(0.05, _Mapping_110176, _SimpleNoiseTexture_110164_col);
	float _VoronoiTexture_110160_dis; float4 _VoronoiTexture_110160_col; float3 _VoronoiTexture_110160_pos; float _VoronoiTexture_110160_w; float _VoronoiTexture_110160_rad; voronoi_tex_getValue(_MixRGB_110146, 0, 16, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_110160_dis, _VoronoiTexture_110160_col, _VoronoiTexture_110160_pos, _VoronoiTexture_110160_w, _VoronoiTexture_110160_rad);
	float4 _ColorRamp_110142 = color_ramp(gradient_110142, _VoronoiTexture_110160_col);
	float4 _ColorRamp_110190 = color_ramp(gradient_110190, _ColorRamp_110142);
	float4 _Mapping_110148 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_110162_fac; float4 _SimpleNoiseTexture_110162_col; node_simple_noise_texture_full(_Mapping_110148, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_110162_fac, _SimpleNoiseTexture_110162_col);
	float4 _MixRGB_110170 = mix_blend(0.05, _Mapping_110148, _SimpleNoiseTexture_110162_col);
	float _VoronoiTexture_110154_dis; float4 _VoronoiTexture_110154_col; float3 _VoronoiTexture_110154_pos; float _VoronoiTexture_110154_w; float _VoronoiTexture_110154_rad; voronoi_tex_getValue(_MixRGB_110170, 0, 20, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_110154_dis, _VoronoiTexture_110154_col, _VoronoiTexture_110154_pos, _VoronoiTexture_110154_w, _VoronoiTexture_110154_rad);
	float4 _ColorRamp_110150 = color_ramp(gradient_110150, _VoronoiTexture_110154_col);
	float4 _ColorRamp_110152 = color_ramp(gradient_110152, _ColorRamp_110150);
	float4 _MixRGB_110174 = mix_overlay(0.6, _ColorRamp_110190, _ColorRamp_110152);
	float4 _Mapping_110168 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_110158_fac; float4 _SimpleNoiseTexture_110158_col; node_simple_noise_texture_full(_Mapping_110168, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_110158_fac, _SimpleNoiseTexture_110158_col);
	float4 _MixRGB_110156 = mix_blend(0.05, _Mapping_110168, _SimpleNoiseTexture_110158_col);
	float _VoronoiTexture_110166_dis; float4 _VoronoiTexture_110166_col; float3 _VoronoiTexture_110166_pos; float _VoronoiTexture_110166_w; float _VoronoiTexture_110166_rad; voronoi_tex_getValue(_MixRGB_110156, 0, 30, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_110166_dis, _VoronoiTexture_110166_col, _VoronoiTexture_110166_pos, _VoronoiTexture_110166_w, _VoronoiTexture_110166_rad);
	float4 _ColorRamp_110172 = color_ramp(gradient_110172, _VoronoiTexture_110166_col);
	float4 _ColorRamp_110180 = color_ramp(gradient_110180, _ColorRamp_110172);
	float4 _MixRGB_110186 = mix_overlay(0.6, _MixRGB_110174, _ColorRamp_110180);

	colourOut = _MixRGB_110186;
}