#include <Packages/com.blendernodesgraph.core/Editor/Includes/Importers.hlsl>

void metalGreyBlue_float(float3 _POS, float3 _PVS, float3 _PWS, float3 _NOS, float3 _NVS, float3 _NWS, float3 _NTS, float3 _TWS, float3 _BTWS, float3 _UV, float3 _SP, float3 _VVS, float3 _VWS, Texture2D gradient_8088, Texture2D gradient_8100, Texture2D gradient_8112, Texture2D gradient_8114, Texture2D gradient_8116, Texture2D gradient_8118, out float4 colourOut)
{
	
	float4 _Mapping_8084 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_8080_fac; float4 _SimpleNoiseTexture_8080_col; node_simple_noise_texture_full(_Mapping_8084, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_8080_fac, _SimpleNoiseTexture_8080_col);
	float4 _MixRGB_8082 = mix_blend(0.05, _Mapping_8084, _SimpleNoiseTexture_8080_col);
	float _VoronoiTexture_8078_dis; float4 _VoronoiTexture_8078_col; float3 _VoronoiTexture_8078_pos; float _VoronoiTexture_8078_w; float _VoronoiTexture_8078_rad; voronoi_tex_getValue(_MixRGB_8082, 0, 16, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_8078_dis, _VoronoiTexture_8078_col, _VoronoiTexture_8078_pos, _VoronoiTexture_8078_w, _VoronoiTexture_8078_rad);
	float4 _ColorRamp_8088 = color_ramp(gradient_8088, _VoronoiTexture_8078_col);
	float4 _ColorRamp_8118 = color_ramp(gradient_8118, _ColorRamp_8088);
	float4 _Mapping_8094 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_8090_fac; float4 _SimpleNoiseTexture_8090_col; node_simple_noise_texture_full(_Mapping_8094, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_8090_fac, _SimpleNoiseTexture_8090_col);
	float4 _MixRGB_8092 = mix_blend(0.05, _Mapping_8094, _SimpleNoiseTexture_8090_col);
	float _VoronoiTexture_8098_dis; float4 _VoronoiTexture_8098_col; float3 _VoronoiTexture_8098_pos; float _VoronoiTexture_8098_w; float _VoronoiTexture_8098_rad; voronoi_tex_getValue(_MixRGB_8092, 0, 20, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_8098_dis, _VoronoiTexture_8098_col, _VoronoiTexture_8098_pos, _VoronoiTexture_8098_w, _VoronoiTexture_8098_rad);
	float4 _ColorRamp_8100 = color_ramp(gradient_8100, _VoronoiTexture_8098_col);
	float4 _ColorRamp_8116 = color_ramp(gradient_8116, _ColorRamp_8100);
	float4 _MixRGB_8120 = mix_overlay(0.6, _ColorRamp_8118, _ColorRamp_8116);
	float4 _Mapping_8106 = float4(mapping_point(float4(_UV, 0), float3(0, 0, 0), float3(0, 0, -0.3), float3(1, 1, 1)), 0);
	float _SimpleNoiseTexture_8102_fac; float4 _SimpleNoiseTexture_8102_col; node_simple_noise_texture_full(_Mapping_8106, 0, 40, 4.1, 1, 0, 1, _SimpleNoiseTexture_8102_fac, _SimpleNoiseTexture_8102_col);
	float4 _MixRGB_8104 = mix_blend(0.05, _Mapping_8106, _SimpleNoiseTexture_8102_col);
	float _VoronoiTexture_8110_dis; float4 _VoronoiTexture_8110_col; float3 _VoronoiTexture_8110_pos; float _VoronoiTexture_8110_w; float _VoronoiTexture_8110_rad; voronoi_tex_getValue(_MixRGB_8104, 0, 30, 1, 0.5, 1, 0, 2, 0, _VoronoiTexture_8110_dis, _VoronoiTexture_8110_col, _VoronoiTexture_8110_pos, _VoronoiTexture_8110_w, _VoronoiTexture_8110_rad);
	float4 _ColorRamp_8112 = color_ramp(gradient_8112, _VoronoiTexture_8110_col);
	float4 _ColorRamp_8114 = color_ramp(gradient_8114, _ColorRamp_8112);
	float4 _MixRGB_8122 = mix_overlay(0.6, _MixRGB_8120, _ColorRamp_8114);

	colourOut = _MixRGB_8122;
}