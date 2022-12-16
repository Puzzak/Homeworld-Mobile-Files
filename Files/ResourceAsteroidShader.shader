Shader "ResourceAsteroidShader" {
	Properties {
		Color_6574C2E3 ("Color Full", Vector) = (1,1,1,0)
		Color_BE98C2AB ("Color Empty", Vector) = (1,1,1,0)
		Color_21BCC19D ("SpecularColorFull", Vector) = (0,0,0,0)
		Color_E678C078 ("SpecularColorEmpty", Vector) = (0,0,0,0)
		[NoScaleOffset] Texture2D_1224555F ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] Texture2D_6FC7836D ("Normal", 2D) = "white" {}
		Vector1_7061C5CF ("Smoothness", Range(0, 1)) = 0
		Vector1_88C7E91F ("Progress", Range(0, 1)) = 0
		Vector1_D5F6806C ("Contrast", Float) = 1
		Vector1_6939AED9 ("Occlusion", Range(0, 1)) = 0
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