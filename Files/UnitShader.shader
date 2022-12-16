Shader "UnitShader" {
	Properties {
		[NoScaleOffset] Texture2D_381DF4E9 ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] Texture2D_FB6241B3 ("Emission", 2D) = "white" {}
		[NoScaleOffset] Texture2D_F30E6F7E ("Normal", 2D) = "white" {}
		Vector1_B9EADC8E ("Strength", Float) = 0
		Vector1_2AD8659C ("Factor", Float) = -1
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