Shader "Shader Graphs/ReseachProjectHoloShader" {
	Properties {
		Color_5e410088e2514e80880e18b5be338aa3 ("Color", Vector) = (0,0.3708868,1,0)
		Color_436897f7c2d646d59f8e80fabb9811a0 ("FillColor", Vector) = (0,0,0,0)
		[NoScaleOffset] Texture2D_807e24d1d1654ee1bb6cef4aba351e94 ("Texture2D", 2D) = "white" {}
		Vector1_d6760276fe5f4c0fbe502067579ffe6e ("FresnelPower", Float) = 3
		Vector1_74948e7e01844dce9ce1c48d6bbb3973 ("Alpha", Float) = 0
		Vector2_20a4f75dfd074bdda8dda12f21910283 ("Vector2", Vector) = (1,1,0,0)
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
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