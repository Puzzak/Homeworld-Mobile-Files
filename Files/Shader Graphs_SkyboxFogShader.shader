Shader "Shader Graphs/SkyboxFogShader" {
	Properties {
		[NoScaleOffset] Texture2D_ece44448fc75483e8314165a662e0826 ("Texture2D", 2D) = "white" {}
		Vector1_d7c218dbd8b34a94b61269808350f1d5 ("Fade Edge A", Range(-2, 2)) = 0.5
		Vector1_bfcf509a3fbd4f2a8a029e1d7f904612 ("Fade Edge B", Range(-2, 2)) = 0.5
		Vector1_8bcd47e1aca543779e12f6ddf4d1bfe6 ("Cloud Tiling", Float) = 0
		_Density ("Density", Float) = 0.5
		[ToggleUI] Boolean_ddfe4c883b8d4311a1ccdb7a6b969c09 ("World Position", Float) = 0
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