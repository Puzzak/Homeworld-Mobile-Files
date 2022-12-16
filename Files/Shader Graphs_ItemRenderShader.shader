Shader "Shader Graphs/ItemRenderShader" {
	Properties {
		Color_D0C455CF ("ColorBase", Vector) = (0.02242791,0.07506976,0.2264151,1)
		Color_F76E5788 ("Color Line", Vector) = (0.7294118,0.9686275,1,1)
		Vector1_DA7E0255 ("LinePower", Float) = 9
		[NoScaleOffset] Texture2D_2C17134F ("Normal Map", 2D) = "white" {}
		[ToggleUI] Boolean_BF3C7958 ("Mode1", Float) = 0
		Vector1_199AC0D2 ("LineContrast", Range(1, 3)) = 1
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