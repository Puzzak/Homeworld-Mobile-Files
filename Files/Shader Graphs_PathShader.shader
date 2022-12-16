Shader "Shader Graphs/PathShader" {
	Properties {
		Color_AFB7198A ("Color", Vector) = (1,1,1,0)
		[NoScaleOffset] Texture2D_C544E50C ("Flow Texture", 2D) = "white" {}
		Vector1_507931B5 ("MoveSpeed", Float) = 1
		Vector1_8BFF4C12 ("TilingX", Float) = 1
		Vector1_33F60295 ("TilingY", Float) = 1
		[ToggleUI] Boolean_A737BB9C ("Pattern", Float) = 0
		[NoScaleOffset] Texture2D_6D5D8D19 ("Pattern Texture", 2D) = "white" {}
		Vector1_11D9EBC1 ("PatternTilingX", Float) = 1
		Vector1_BB2BFC1 ("PatternTilingY", Float) = 1
		Opacity ("Opacity", Range(0, 1)) = 1
		_alpha ("Alpha", Range(0, 1)) = 1
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