Shader "Shader Graphs/sGraph_AsteroidBase" {
	Properties {
		Color_FDA369FD ("Color", Vector) = (1,1,1,0)
		[NoScaleOffset] Texture2D_792B1478 ("UV0 - Mesh Norm", 2D) = "bump" {}
		[NoScaleOffset] Texture2D_5CC8ED65 ("UV0 - Mesh Mask", 2D) = "white" {}
		[NoScaleOffset] Texture2D_98255A1D ("UV1/2 - Tilling Diff", 2D) = "white" {}
		[NoScaleOffset] Texture2D_6D4FB3A8 ("UV1/2 - Tilling Norm", 2D) = "white" {}
		Vector1_FCAB0EDF ("Tilling Normal Strength", Range(0, 2)) = 1
		Vector1_BAC5CF81 ("Smoothness", Range(0, 1)) = 0.5
		Vector1_BAC8160D ("Occlussion", Float) = 0
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
	//CustomEditor "ShaderGraph.PBRMasterGUI"
}