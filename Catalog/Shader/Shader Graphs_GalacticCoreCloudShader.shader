Shader "Shader Graphs/GalacticCoreCloudShader" {
	Properties {
		Color_7197C702 ("Color", Vector) = (0.7735849,0.7735849,0.7735849,0)
		[NoScaleOffset] Texture2D_80F0988E ("Diffuse", 2D) = "white" {}
		Vector1_75AEA68D ("Alpha", Float) = 1
		[NoScaleOffset] Texture2D_EC726EB3 ("Mask", 2D) = "white" {}
		Vector1_C3783CAB ("Core Direction", Range(0, 360)) = 0
		Vector1_83E82B0E ("Glow Power", Range(0, 1)) = 0
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