Shader "Shader Graphs/HeatBurnShader" {
	Properties {
		Color_95d4ea5f905f457182425633451e9de8 ("Color", Vector) = (0.6214224,0.5518868,1,0)
		[NoScaleOffset] Texture2D_2657615fa3894d9cb3fd26c12d8d40da ("Mask", 2D) = "white" {}
		Vector1_272c1f992ccc425c88db1c67dd50d022 ("Noise Speed A", Float) = 5
		Vector1_1 ("Noise Speed B", Float) = 1
		Vector1_d969f9448e01472d8de22acd6718e8d9 ("Noise Size A", Float) = 5
		Vector1_d969f9448e01472d8de22acd6718e8d9_1 ("Noise Size B", Float) = 5
		Vector1_3fede34fe46e495b919a2866deae87d3 ("Noise Opacity", Float) = 0.2
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