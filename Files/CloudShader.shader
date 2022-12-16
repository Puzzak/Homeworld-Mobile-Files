Shader "CloudShader" {
	Properties {
		Color_98C4891A ("Color", Vector) = (0,0,0,0)
		[NoScaleOffset] Texture2D_15C5415D ("Diffuse", 2D) = "white" {}
		Vector1_13886341 ("NormalForce", Float) = 1
		Vector1_97D968AE ("Smoothness", Range(0, 1)) = 0
		Vector1_FF7A8F5A ("Atmosphere", Float) = 2
		Vector1_D0CDDF8 ("Thickness", Float) = 0
		Vector1_65865B8E ("Occlusion", Float) = 1
		Vector1_1883C7B4 ("MoveSpeed", Float) = 0
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