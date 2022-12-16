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
	SubShader {
		Tags { "RenderPipeline" = "UniversalRenderPipeline" "RenderType" = "Opaque" }
		Pass {
			Tags { "LIGHTMODE" = "UniversalForward" "RenderPipeline" = "UniversalRenderPipeline" "RenderType" = "Opaque" }
			ZTest Always
			ZWrite Off
			Cull Off
			GpuProgramID 105338
			// No subprograms found
		}
		Pass {
			Tags { "RenderPipeline" = "UniversalRenderPipeline" "RenderType" = "Opaque" }
			Blend One SrcAlpha, One SrcAlpha
			ZTest Less
			ZWrite Off
			GpuProgramID 63362
			// No subprograms found
		}
	}
}