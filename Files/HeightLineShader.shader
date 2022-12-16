Shader "HeightLineShader" {
	Properties {
		Color_B9B00C60 ("Color", Vector) = (0.004716992,0.2135053,1,0)
		[NoScaleOffset] Texture2D_B9A3D28D ("Diffuse", 2D) = "white" {}
		Vector1_FFA9A2F1 ("Smoothness", Float) = 0
		Vector1_2486698E ("Tiling", Float) = 0
		Vector1_E2D92F8A ("Offset", Float) = 0
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