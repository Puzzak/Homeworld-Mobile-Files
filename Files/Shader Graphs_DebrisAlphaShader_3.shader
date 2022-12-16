Shader "Shader Graphs/DebrisAlphaShader" {
	Properties {
		Color_2EFE7B6C ("Color", Vector) = (1,1,1,0)
		[NoScaleOffset] Texture2D_C4C943EF ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] _AO ("AO", 2D) = "white" {}
		[NoScaleOffset] Texture2D_449319CD ("Normal", 2D) = "white" {}
		[NoScaleOffset] Texture2D_7cec476363a347119f7df43d31fd9276 ("Alpha", 2D) = "white" {}
		Vector1_987CE8C8 ("Smoothness", Range(0, 1)) = 0.5
		Vector1_5FE82F96 ("Specular Power", Float) = 0
		_Occlusion ("Occlusion", Float) = 0
		_GlowStrength ("Glow Strength", Float) = 0
		_AOOpacity ("AO Opacity", Range(0, 1)) = 0
		_AOPower ("AO Power", Range(1, 4)) = 1
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