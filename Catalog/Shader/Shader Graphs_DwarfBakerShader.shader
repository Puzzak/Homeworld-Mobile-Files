Shader "Shader Graphs/DwarfBakerShader" {
	Properties {
		[NoScaleOffset] _MainTex ("MainTex", 2D) = "white" {}
		[NoScaleOffset] _HeightA ("HeightA", 2D) = "white" {}
		[NoScaleOffset] _FeaturesA ("FeaturesA", 2D) = "white" {}
		[NoScaleOffset] _NormalEquirectA ("NormalEquirectA", 2D) = "white" {}
		[NoScaleOffset] _NormalPlanarA ("NormalPlanarA", 2D) = "white" {}
		[NoScaleOffset] _HeightB ("HeightB", 2D) = "white" {}
		[NoScaleOffset] _NormalEquirectB ("NormalEquirectB", 2D) = "white" {}
		[NoScaleOffset] _NormalPlanarB ("NormalPlanarB", 2D) = "white" {}
		PolesLiftA ("PolesLiftA", Range(-2, 2)) = 0
		PolesLiftB ("PolesLiftB", Range(-2, 2)) = 0
		LowFrequencyA ("LowFrequencyA", Range(0, 1)) = 0
		LowFrequencyScaleA ("LowFrequencyScaleA", Range(0.5, 1.5)) = 1
		LowFrequencyRotationA ("LowFrequencyRotationA", Range(-180, 180)) = 0
		MediumFrequencyA ("MediumFrequencyA", Range(-0.5, 0.5)) = 0
		MediumFrequencyColorA ("MediumFrequencyColorA", Vector) = (0,0,0,0)
		HighFrequencyA ("HighFrequencyA", Range(0, 0.5)) = 0.5
		HighFrequencyColorA ("HighFrequencyColorA", Vector) = (0,0,0,0)
		NormalMapStrength ("NormalStrenght", Range(0.5, 2)) = 1
		BlendSoftness ("BlendSoftness", Range(0.01, 1)) = 0.01
		LerpHeightMaps ("LerpHeightMaps", Range(0, 1)) = 0
		Vector1_6d92e925b2794ee8b22a32e906e6bbf7 ("FadePolesNormalLow", Range(0, 1)) = 0
		Vector1_caac8448be094e1bab8af1b32e425459 ("FadePolesNormalHigh", Range(0, 1)) = 0
		[ToggleUI] SwitchProjection ("SwitchProjection", Float) = 0
		[ToggleUI] SwitchToNMap ("SwitchToNMap", Float) = 0
		[ToggleUI] SwitchToMask ("SwitchToMask", Float) = 0
		[ToggleUI] SwitchToHeight ("SwitchToHeight", Float) = 0
		[ToggleUI] RotateB ("RotateB", Float) = 0
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		struct Input
		{
			float2 uv_MainTex;
		};

		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}