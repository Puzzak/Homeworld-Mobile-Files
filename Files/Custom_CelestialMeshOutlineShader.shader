Shader "Custom/CelestialMeshOutlineShader" {
	Properties {
		_OutlineThickness ("Outline Thickness", Float) = 1
		_Color_Outline ("Outline Color", Vector) = (1,0.0039,0.2627,0)
		[ToggleUI] _ObjectspaceOrScreenspace ("Objectspace/Screenspace", Float) = 1
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Region Cutout"
			Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			ZTest Less
			ZWrite Off
			Stencil {
				Ref 128
				Comp Always
				Pass Replace
				Fail Keep
				ZFail Zero
			}
			GpuProgramID 51921
			// No subprograms found
		}
		Pass {
			Name "Outline"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ZTest Less
			ZWrite Off
			Cull Front
			Stencil {
				Ref 128
				Comp Greater
				Pass Zero
				Fail Zero
				ZFail Zero
			}
			GpuProgramID 98631
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}