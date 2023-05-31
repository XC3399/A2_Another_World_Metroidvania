#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void floor_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, Texture2D gradient_12888, Texture2D gradient_12896, Texture2D gradient_12912, Texture2D gradient_12932, Texture2D gradient_12934, Texture2D gradient_12936, out float4 colourOut)
{
	
	float4 _Mapping_12892 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_12898_fac; float4 _SimpleNoiseTexture_12898_col; node_simple_noise_texture_full(_Mapping_12892, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_12898_fac, _SimpleNoiseTexture_12898_col);
	float4 _MixRGB_12910 = mix_blend(0.05, _Mapping_12892, _SimpleNoiseTexture_12898_col);
	float _VoronoiTexture_12906_dis; float4 _VoronoiTexture_12906_col; float3 _VoronoiTexture_12906_pos; float _VoronoiTexture_12906_w; float _VoronoiTexture_12906_rad; voronoi_tex_getValue(_MixRGB_12910, 0, 16, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_12906_dis, _VoronoiTexture_12906_col, _VoronoiTexture_12906_pos, _VoronoiTexture_12906_w, _VoronoiTexture_12906_rad);
	float4 _ColorRamp_12896 = color_ramp(gradient_12896, _VoronoiTexture_12906_col);
	float4 _ColorRamp_12936 = color_ramp(gradient_12936, _ColorRamp_12896);
	float4 _Mapping_12922 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_12918_fac; float4 _SimpleNoiseTexture_12918_col; node_simple_noise_texture_full(_Mapping_12922, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_12918_fac, _SimpleNoiseTexture_12918_col);
	float4 _MixRGB_12902 = mix_blend(0.05, _Mapping_12922, _SimpleNoiseTexture_12918_col);
	float _VoronoiTexture_12890_dis; float4 _VoronoiTexture_12890_col; float3 _VoronoiTexture_12890_pos; float _VoronoiTexture_12890_w; float _VoronoiTexture_12890_rad; voronoi_tex_getValue(_MixRGB_12902, 0, 20, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_12890_dis, _VoronoiTexture_12890_col, _VoronoiTexture_12890_pos, _VoronoiTexture_12890_w, _VoronoiTexture_12890_rad);
	float4 _ColorRamp_12912 = color_ramp(gradient_12912, _VoronoiTexture_12890_col);
	float4 _ColorRamp_12932 = color_ramp(gradient_12932, _ColorRamp_12912);
	float4 _MixRGB_12924 = mix_overlay(0.6, _ColorRamp_12936, _ColorRamp_12932);
	float4 _Mapping_12900 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_12894_fac; float4 _SimpleNoiseTexture_12894_col; node_simple_noise_texture_full(_Mapping_12900, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_12894_fac, _SimpleNoiseTexture_12894_col);
	float4 _MixRGB_12916 = mix_blend(0.05, _Mapping_12900, _SimpleNoiseTexture_12894_col);
	float _VoronoiTexture_12904_dis; float4 _VoronoiTexture_12904_col; float3 _VoronoiTexture_12904_pos; float _VoronoiTexture_12904_w; float _VoronoiTexture_12904_rad; voronoi_tex_getValue(_MixRGB_12916, 0, 30, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_12904_dis, _VoronoiTexture_12904_col, _VoronoiTexture_12904_pos, _VoronoiTexture_12904_w, _VoronoiTexture_12904_rad);
	float4 _ColorRamp_12888 = color_ramp(gradient_12888, _VoronoiTexture_12904_col);
	float4 _ColorRamp_12934 = color_ramp(gradient_12934, _ColorRamp_12888);
	float4 _MixRGB_12928 = mix_overlay(0.6, _MixRGB_12924, _ColorRamp_12934);

	colourOut = _MixRGB_12928;
}