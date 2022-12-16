Shader "Unlit/TerritorialMapPinsShader" {
	Properties {
		[NoScaleOffset] _StarSquareAtlasTex ("Star Square Atlas", 2D) = "white" {}
		_AtlasTileNumber ("Atlas Tile Number", Float) = 4
		_StarOpacity ("Star Opacity", Float) = 1
		[Header(Star scaling controls)] _StarScaleFloorCeiling ("Scale|Floor|Ceiling|-", Vector) = (1,0.5,10,0)
		[Header(Bounding Triangle Controls)] _RadiusCutoff ("Radius Cutoff", Range(0, 1)) = 0.5
		[Toggle] _DisplayTriangles ("Display Triangles", Float) = 0
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType" = "Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			o.Albedo = 1;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}