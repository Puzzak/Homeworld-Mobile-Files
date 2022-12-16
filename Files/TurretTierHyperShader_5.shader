Shader "TurretTierHyperShader" {
	Properties {
		[NoScaleOffset] Texture2D_B52FF92C ("Diffuse", 2D) = "white" {}
		Color_6E41E159 ("TierColor", Vector) = (1,0.7568628,0.3058824,1)
		[NoScaleOffset] Texture2D_C6D91F27 ("TierMask", 2D) = "white" {}
		[NoScaleOffset] _NormalTex ("Normal", 2D) = "white" {}
		Vector1_E58D347B ("Smoothness", Range(0, 1)) = 0.5
		[NoScaleOffset] Texture2D_4009A52A ("Emission", 2D) = "white" {}
		Color_94C4F3D3 ("EmissionColor", Vector) = (0,0,0,1)
		_TurretTier ("Tier", Range(1, 3)) = 1
		Vector1_D7A12F9 ("Specular Power", Float) = 0.25
		Color_26B289CB ("HyperspaceColor", Vector) = (0.2588235,0.5960785,1,0)
		Vector1_F2812699 ("GateEdge", Float) = 0.025
		Vector1_B8BA8402 ("NoisePower", Float) = 100
		_JumpProgress ("HyperSpaceProgress", Range(0, 1)) = 1
		_ModuleLength ("ModuleLength", Float) = 5
		[ToggleUI] Boolean_2E07750A ("DirectionCorretion", Float) = 0
		_HyperJumpDirection ("HyperJumpDirection", Float) = 1
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