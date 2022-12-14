Shader "Unlit/GradientSkyboxShaderDithered" {
	Properties {
		_Color ("Color", Vector) = (1,0.3503101,0,0)
		_Edge_A ("Edge A", Float) = 0
		_Edge_B ("Edge B", Float) = 5
		_Alpha ("Alpha", Float) = 0.65
		_DebandingDitherPower ("Debanding Dither Power", Range(0, 0.1)) = 0.02
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Dithered Gradient Skybox"
			Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			GpuProgramID 42035
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}