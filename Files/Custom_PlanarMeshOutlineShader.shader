Shader "Custom/PlanarMeshOutlineShader" {
	Properties {
		_OutlineThickness ("Outline Thickness", Float) = 1
		_Color_Outline ("Outline Color", Vector) = (1,0.0039,0.2627,0)
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
				Ref 127
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Zero
			}
			GpuProgramID 62924
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
				Ref 127
				Comp NotEqual
				Pass Replace
				Fail Keep
				ZFail DecrementWrap
			}
			GpuProgramID 87199
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}