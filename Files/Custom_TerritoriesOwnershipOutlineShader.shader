Shader "Custom/TerritoriesOwnershipOutlineShader" {
	Properties {
		_OutlineThickness ("Outline Thickness", Float) = 1
		_RegionsOpacity ("Regions Opacity", Float) = 1
		_DimmedOpacityReduction ("Dimmed Opacity Reduction", Range(0, 1)) = 0.5
		_StencilRef ("Stencil Ref", Float) = 127
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
				ZFail Zero
			}
			GpuProgramID 16070
			// No subprograms found
		}
		Pass {
			Name "Outline"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ZTest Less
			ZWrite Off
			Cull Off
			Stencil {
				Comp NotEqual
				Pass Replace
				Fail Keep
				ZFail DecrementWrap
			}
			GpuProgramID 106843
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}