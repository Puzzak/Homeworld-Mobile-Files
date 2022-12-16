Shader "Shader Graphs/SunCoronaShader" {
	Properties {
		Color_f91f5b17c4194f2b9d628bf1af731c1c ("Color", Vector) = (1,0.8325017,0.3726415,0)
		Vector1_7d0233fce7e64bb5bca9ee3f1c1f567a ("Float", Float) = 1
		Vector1_0560dc72edd04a11bb6e100b02dd130b ("Edge A", Float) = 0
		Vector1_b73fc2b95e224828bc4e4b6b1024e5c9 ("Edge B", Float) = 0
		Vector1_a5709b75401b4a3a854309e4018de2de ("Cell Size A", Float) = 50
		Vector1_a5709b75401b4a3a854309e4018de2de_1 ("Cell Size B", Float) = 10
		Vector1_5e8d5d46993f4852b8176927387cefe0 ("Flare A Speed", Float) = 10
		Vector1_e6a1b2640be247ab9936d1f013cb5621 ("Flare B Speed", Float) = 10
		Vector1_6220d07752d34ceeb1749c1978a9e554 ("Flare A Scale", Float) = 1.2
		Vector1_c826195c46d9444182e6d9887d0fe84d ("Float B Scale", Float) = 200
		Vector1_342b598b1c094435aa4383774a1feda5 ("Fresnel Power", Float) = 0.2
		Vector1_b2c754d563c74a74957cef4bd8881f21 ("Flare Edge Min", Float) = 0.2
		Vector1_b2c754d563c74a74957cef4bd8881f21_1 ("Flare Edge Max", Float) = 0.8
		[NoScaleOffset] _SampleTexture2D_b7e3932e962d48f2869fdc8355898bf4_Texture_1 ("Texture2D", 2D) = "white" {}
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