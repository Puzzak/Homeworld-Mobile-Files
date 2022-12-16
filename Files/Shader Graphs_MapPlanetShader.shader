Shader "Shader Graphs/MapPlanetShader" {
	Properties {
		Color_56079210 ("Color", Vector) = (0.7735849,0.7735849,0.7735849,0)
		[NoScaleOffset] Texture2D_F4C394E5 ("Texture2D", 2D) = "white" {}
		Vector1_9976130A ("Fresnel Power", Float) = 2
		Vector1_FD481109 ("Fresnel Edge", Float) = 0
		Color_575B1752 ("Fresnel Color", Vector) = (0,0,0,0)
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