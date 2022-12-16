Shader "Shader Graphs/JovianPlanetShader" {
	Properties {
		[NoScaleOffset] _MainTex ("MainTex", 2D) = "white" {}
		[NoScaleOffset] _HeightA ("HeightA", 2D) = "white" {}
		[NoScaleOffset] _NormalEquirectA ("NormalEquirectA", 2D) = "white" {}
		[NoScaleOffset] _HeightB ("HeightB", 2D) = "white" {}
		[NoScaleOffset] _NormalEquirectB ("NormalEquirectB", 2D) = "white" {}
		LowFrequencyA ("LowFrequencyA", Range(0, 1)) = 0
		LowFrequencyScaleA ("LowFrequencyScaleA", Range(0.5, 1.5)) = 1
		LowFrequencyRotationA ("LowFrequencyRotationA", Range(-180, 180)) = 0
		NormalMapStrength ("NormalStrenght", Range(0.5, 2)) = 1
		BlendSoftness ("BlendSoftness", Range(0.01, 1)) = 0.01
		LerpHeightMaps ("LerpHeightMaps", Range(0, 1)) = 0
		Vector1_ac2f49821f9e42dbbe0b142b78025257 ("AmbientOcc", Range(0, 1)) = 0
		[ToggleUI] RotateB ("RotateB", Float) = 0
		Vector1_8e754f6a739143888eed9ab12c1a6acf ("NoiseSpeed", Float) = 0.02
		Vector1_28dadbb91609419fbac68f4bbab4c60c ("NoiseScale", Float) = 10
		Vector1_d5cccc73b3584aa483b63cd49389b3a6 ("NoiseExtent", Float) = 4
		Vector1_664728d972fe454b9c46a2426eb6fe20 ("NoiseVelocity", Float) = 0.03
		Vector1_2aba642dc8184ab5bdf131dab36deba8 ("NoisePower", Float) = 0.4
		Vector1_ba62b70b6d3240b7901c575b8d5fffa0 ("NoiseExponential", Float) = 2
		Vector1_e33a27c2c1a24ef2a96918915e77f44f ("RotationSpeed", Float) = 0.0002
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
	//CustomEditor "ShaderGraph.PBRMasterGUI"
}