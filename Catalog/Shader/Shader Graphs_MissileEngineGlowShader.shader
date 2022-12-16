Shader "Shader Graphs/MissileEngineGlowShader" {
	Properties {
		_color ("Color", Vector) = (1,1,1,0)
		[NoScaleOffset] Texture2D_938abb0818d04d8f8381700be9a3cc3c ("Texture2D", 2D) = "white" {}
		Vector1_c7cc2b89a9c04b3c93dfc57d33beb087 ("FlickerAlphaMin", Float) = 0
		Vector1_3ed8245bef63448e81ddc0839aa622fd ("FlickerAlphaMax", Float) = 1
		[ToggleUI] Boolean_bee2b2f291184cd2a25d9beefb29ff35 ("DoublePower", Float) = 0
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