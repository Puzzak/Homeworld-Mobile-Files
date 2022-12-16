Shader "Unlit/VertexSkyboxShaderDithered" {
	Properties {
		_VertexColor ("Vertex Color", Vector) = (0.4811321,0.4811321,0.4811321,0)
		_ToneColor ("Tone Color", Vector) = (0.5660378,0.5660378,0.5660378,0)
		_ToneColorPower ("Tone Color Power", Range(0, 4)) = 0.5
		_Contrast ("Contrast", Range(0, 1.5)) = 1
		_DebandingDitherPower ("Debanding Dither Power", Range(0, 0.0625)) = 0.023529412
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Dithered Vertex Skybox"
			Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ZTest Always
			ZWrite Off
			GpuProgramID 18754
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}