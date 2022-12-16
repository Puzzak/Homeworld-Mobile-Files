Shader "StrikeCraftTeamLODShader" {
	Properties {
		[NoScaleOffset] Texture2D_B52FF92C ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] _TeamTex ("Team", 2D) = "white" {}
		_Color_Team ("TeamColor", Vector) = (0.3235294,0.6920893,1,1)
		_Color_Stripe ("StripeColor", Vector) = (0.9339623,0.9339623,0.9339623,1)
		_Color_Detail ("DetailColor", Vector) = (1,0,0,0)
		Vector1_2ae55e4316384005a1301d9282d10a7a ("Tier", Range(1, 3)) = 1
		Vector1_ca6a212f490f467e9b18babf9c8d2020 ("Smoothness", Range(0, 1)) = 0.4
		Vector1_373cc62494794a619e2e9eb0c9e49bf2 ("SpecularPower", Range(0, 1)) = 0.05
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