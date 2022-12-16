Shader "Shader Graphs/EventGridShader" {
	Properties {
		Color_2fca536b7c294ff1a2b27d9341cad930 ("Color", Vector) = (0.145098,0.1764706,0.2470588,0)
		[NoScaleOffset] Texture2D_7db968a1976c4309a388b77694ab95db ("Texture", 2D) = "white" {}
		Vector1_cff4063326784fb08e0849f05a749313 ("FadeDistance", Float) = 15
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