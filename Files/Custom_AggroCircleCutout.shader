Shader "Custom/AggroCircleCutout" {
	Properties {
		_StencilReference ("Stencil Reference", Float) = 101
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Region Cutout"
			Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			ZTest Always
			ZWrite Off
			Stencil {
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Replace
			}
			GpuProgramID 63942
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}