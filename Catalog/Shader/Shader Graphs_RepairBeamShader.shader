Shader "Shader Graphs/RepairBeamShader" {
	Properties {
		[NoScaleOffset] Texture2D_371DBBEB ("Diffuse", 2D) = "white" {}
		Vector2_F6FE98F4 ("Tiling", Vector) = (1,1,0,0)
		Vector1_4AA399D5 ("Noise", Float) = 3
		Vector1_38142F70 ("Noise Speed", Float) = 1
		Vector1_D94F2706 ("Noise Strength", Float) = 0
		Vector1_718B37E5 ("Flow Speed", Float) = 0
		Vector1_2705CAB3 ("Vector1", Float) = 0
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