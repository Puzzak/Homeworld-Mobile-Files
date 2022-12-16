Shader "ShipTeamBadgeHyperShader" {
	Properties {
		[NoScaleOffset] Texture2D_B52FF92C ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] _TeamTex ("Team", 2D) = "white" {}
		_Color_Team ("TeamColor", Vector) = (0.3235294,0.6920893,1,1)
		_Color_Stripe ("StripeColor", Vector) = (0.9339623,0.9339623,0.9339623,1)
		_Color_Detail ("DetailColor", Vector) = (1,0.8169879,0.5518868,0)
		[NoScaleOffset] _NormalTex ("Normal", 2D) = "white" {}
		Vector1_E58D347B ("Smoothness", Range(0, 1)) = 0.45
		[NoScaleOffset] Texture2D_4009A52A ("Emission", 2D) = "white" {}
		Color_94C4F3D3 ("EmissionColor", Vector) = (0,0,0,1)
		Vector1_8B338C13 ("Normal Power", Float) = 2
		Vector1_4C81683E ("Specular Power", Float) = 0.25
		Color_8520FDF9 ("HyperspaceColor", Vector) = (0.259434,0.5971258,1,0)
		Vector1_35B5B2F6 ("GateEdge", Float) = 0.025
		Vector1_C946828 ("NoisePower", Float) = 100
		_JumpProgress ("HyperSpaceProgress", Range(0, 1)) = 0
		_ShipLength ("ShipLength", Float) = 10
		[NoScaleOffset] _BadgeTex ("BadgeTexture", 2D) = "white" {}
		_HyperJumpDirection ("HyperJumpDirection", Float) = 1
		[ToggleUI] _AsymmetricTeamPattern ("Asymetric Team Pattern", Float) = 0
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