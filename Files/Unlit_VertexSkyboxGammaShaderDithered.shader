Shader "Unlit/VertexSkyboxGammaShaderDithered" {
	Properties {
		_Color ("Color", Vector) = (0.4811321,0.4811321,0.4811321,0)
		_ToneColor ("Tone Color", Vector) = (0.5660378,0.5660378,0.5660378,0)
		_ToneColorPower ("Tone Color Power", Range(0, 4)) = 0.5
		_Contrast ("Contrast", Range(0, 1.5)) = 1
		_Gamma ("Gamma", Range(1, 10)) = 6
		[ToggleUI] _Falloff ("Falloff", Float) = 1
		[NoScaleOffset] _FalloffCloudMaskTex ("Falloff Cloud Mask", 2D) = "white" {}
		_FalloffCloudMaskTiling ("Falloff Cloud Mask Tiling", Float) = 1
		_DarkFalloffEdge ("Dark Falloff Edge", Float) = 1
		_DarkFalloffOffset ("Dark Falloff Offset", Float) = 0
		_FalloffBlend ("Falloff Blend", Range(0, 1)) = 1
		_DebandingDitherPower ("Debanding Dither Power", Range(0, 0.0625)) = 0.023529412
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Dithered Vertex Skybox"
			Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ZTest Always
			ZWrite Off
			GpuProgramID 4585
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}