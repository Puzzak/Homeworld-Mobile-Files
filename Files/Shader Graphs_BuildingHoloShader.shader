Shader "Shader Graphs/BuildingHoloShader" {
	Properties {
		Color_5e410088e2514e80880e18b5be338aa3 ("Color", Vector) = (0,0.3708868,1,0)
		Vector1_d6760276fe5f4c0fbe502067579ffe6e ("FresnelPower", Float) = 3
		[NoScaleOffset] Texture2D_61012a1a167e4b659b8ca6664dd40ea1 ("PatternTexture", 2D) = "white" {}
		Vector1_3cbf6765ebbd4595bd1c9b8827c2d01d ("Pattern Blend", Float) = 1
		Vector1_57701c8d5d2a4ebba3bd086521fc2d0b ("PatternMoveSpeed", Float) = -0.5
		Vector2_994af5e5a7cf49ee9a5583f70686959a ("PatternTiling", Vector) = (1,1,0,0)
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