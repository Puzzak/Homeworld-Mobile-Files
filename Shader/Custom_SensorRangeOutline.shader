Shader "Custom/SensorRangeOutline" {
	Properties {
		_OutlineThickness ("Outline Thickness", Float) = 1
		_OutlineOpacity ("Outline Opacity", Float) = 0.5
		_Color_Outline ("Outline Color", Vector) = (1,0.0039,0.2627,0)
		_StencilReference ("Stencil Reference", Float) = 101
		[PerRendererData] _LossyScale ("Lossy Scale", Float) = 0.001
	}
	SubShader {
		Tags { "QUEUE" = "Transparent+1" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Outline"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent+1" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			ZTest Less
			ZWrite Off
			Cull Off
			Stencil {
				Comp NotEqual
				Pass Replace
				Fail Keep
				ZFail Zero
			}
			GpuProgramID 31244
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}