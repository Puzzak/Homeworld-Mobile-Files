Shader "Shader Graphs/GalacticCloudShader" {
	Properties {
		Color_7197C702 ("Color", Vector) = (0.7735849,0.7735849,0.7735849,0)
		[NoScaleOffset] Texture2D_80F0988E ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] Texture2D_1A6CA51E ("Normal", 2D) = "white" {}
		Vector1_E1D43EE2 ("Smoothness", Range(0, 1)) = 0.1
		Vector1_75AEA68D ("Alpha", Float) = 1
		Vector1_C4E2B2E3 ("Thickness", Float) = 0.5
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