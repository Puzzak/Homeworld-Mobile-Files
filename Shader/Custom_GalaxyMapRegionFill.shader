Shader "Custom/GalaxyMapRegionFill" {
	Properties {
		_Color ("Color", Vector) = (0.509434,0.509434,0.509434,0)
		[NoScaleOffset] _MainTex ("Texture", 2D) = "white" {}
		[NoScaleOffset] _PatternTex ("Pattern Texture", 2D) = "white" {}
		_TilingX ("Tiling X", Float) = 1
		_TilingY ("Tiling Y", Float) = 1
		[ToggleUI] _ScreenspaceOrViewspace ("Screenspace/Viewspace", Float) = 0
		[ToggleUI] _Flicker ("Flicker", Float) = 0
		[ToggleUI] _Move ("Move", Float) = 0
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Region Fill"
			Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask RGB -1
			ZTest Less
			ZWrite Off
			Cull Off
			Stencil {
				Ref 128
				Comp Always
				Pass Zero
				Fail Keep
				ZFail Keep
			}
			GpuProgramID 16951
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}