Shader "Shader Graphs/CutOffShader" {
	Properties {
		Color_DC182511 ("Color", Vector) = (0,0,0,0)
		Vector1_AE6CCA50 ("Alpha", Range(0, 1)) = 0
		Vector1_5BB1B57 ("AlphaClip", Range(0, 1)) = 0
		[NoScaleOffset] Texture2D_90B6F32D ("Texture2D", 2D) = "white" {}
		Color_AB2B49D1 ("SectionColor", Vector) = (0,0,0,0)
		Vector3_F4FB2F3F ("SectionPoint", Vector) = (0,0,0,0)
		Vector3_214B217 ("SectionPlane", Vector) = (1,1,-0.21,0)
		Vector1_6ED30417 ("Smoothness", Float) = 0
		Vector1_B389A8C7 ("Occlusion", Float) = 0
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