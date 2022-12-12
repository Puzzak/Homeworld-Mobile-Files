Shader "Custom/TerritoriesOwnershipRegionFill" {
	Properties {
		_FactionBannerTexArray ("Faction Banner Array", 2DArray) = "" {}
		[Header(Banner scaling controls)] _BannerScaleFloorCeiling ("Scale|Floor|Ceiling|-", Vector) = (2,0.5,10,0)
		[Header(Banner fading controls)] _FadeSmoothFloorCeiling ("Smooth|Floor|Ceiling|-", Vector) = (0.25,0.25,80,0)
		_BannerAlphaAccumulation ("Banner Alpha Accumulation", Float) = 2
		[PerRendererData] _RegionsOpacity ("Regions Opacity", Float) = 1
		_DimmedOpacityReduction ("Dimmed Opacity Reduction", Range(0, 1)) = 0.5
		_BlinkRate ("Blink Rate", Float) = 0.2
		_WarningBlinkRate ("Warning Blink Rate", Float) = 0.4
		_ColorWarning ("Warning Color", Vector) = (1,0,0.24,0)
		[NoScaleOffset] _BlinkWarnOpacityTex ("Blink Warn Opacity Texture", 2D) = "white" {}
		[NoScaleOffset] _PatternTex ("Pattern Texture", 2D) = "white" {}
		_TilingX ("Tiling X", Float) = 1
		_TilingY ("Tiling Y", Float) = 1
		[ToggleUI] _Flicker ("Flicker", Float) = 0
		[ToggleUI] _Move ("Move", Float) = 0
		[ToggleUI] _TestBlinking ("Test Blinking", Float) = 0
		[ToggleUI] _TestWarning ("Test Warning", Float) = 0
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
			GpuProgramID 60782
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}