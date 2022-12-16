Shader "Unlit/Atmosphere" {
	Properties {
		_BlueNoise ("BlueNoise", 2D) = "white" {}
		_BakedOpticalDepth ("OptiDepth", 2D) = "white" {}
		planetCentre ("Planet center", Vector) = (0,0,0,1)
		planetRadius ("Planet radius", Float) = 1
		atmosphereRadius ("Atmosphere radius", Float) = 1
		densityFalloff ("Atmosphere density falloff", Float) = 1
		numInScatteringPoints ("Scattering points", Float) = 2
		numOpticalDepthPoints ("OpticalDepthPoints", Float) = 2
		dirToSun ("Direction to sun", Vector) = (1,1,1,1)
		intensity ("Intensity", Float) = 1
		scatteringCoefficients ("Coefficients", Vector) = (1,1,1,1)
		ditherStrength ("Dither Strength", Float) = 1
		ditherScale ("Dither Scale", Float) = 1
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
}