Shader "Shader Graphs/DwarfBakerShader" {
	Properties {
		[NoScaleOffset] _MainTex ("MainTex", 2D) = "white" {}
		[NoScaleOffset] _HeightA ("HeightA", 2D) = "white" {}
		[NoScaleOffset] _FeaturesA ("FeaturesA", 2D) = "white" {}
		[NoScaleOffset] _NormalEquirectA ("NormalEquirectA", 2D) = "white" {}
		[NoScaleOffset] _NormalPlanarA ("NormalPlanarA", 2D) = "white" {}
		[NoScaleOffset] _HeightB ("HeightB", 2D) = "white" {}
		[NoScaleOffset] _NormalEquirectB ("NormalEquirectB", 2D) = "white" {}
		[NoScaleOffset] _NormalPlanarB ("NormalPlanarB", 2D) = "white" {}
		PolesLiftA ("PolesLiftA", Range(-2, 2)) = 0
		PolesLiftB ("PolesLiftB", Range(-2, 2)) = 0
		LowFrequencyA ("LowFrequencyA", Range(0, 1)) = 0
		LowFrequencyScaleA ("LowFrequencyScaleA", Range(0.5, 1.5)) = 1
		LowFrequencyRotationA ("LowFrequencyRotationA", Range(-180, 180)) = 0
		MediumFrequencyA ("MediumFrequencyA", Range(-0.5, 0.5)) = 0
		MediumFrequencyColorA ("MediumFrequencyColorA", Vector) = (0,0,0,0)
		HighFrequencyA ("HighFrequencyA", Range(0, 0.5)) = 0.5
		HighFrequencyColorA ("HighFrequencyColorA", Vector) = (0,0,0,0)
		NormalMapStrength ("NormalStrenght", Range(0.5, 2)) = 1
		BlendSoftness ("BlendSoftness", Range(0.01, 1)) = 0.01
		LerpHeightMaps ("LerpHeightMaps", Range(0, 1)) = 0
		Vector1_6d92e925b2794ee8b22a32e906e6bbf7 ("FadePolesNormalLow", Range(0, 1)) = 0
		Vector1_caac8448be094e1bab8af1b32e425459 ("FadePolesNormalHigh", Range(0, 1)) = 0
		[ToggleUI] SwitchProjection ("SwitchProjection", Float) = 0
		[ToggleUI] SwitchToNMap ("SwitchToNMap", Float) = 0
		[ToggleUI] SwitchToMask ("SwitchToMask", Float) = 0
		[ToggleUI] SwitchToHeight ("SwitchToHeight", Float) = 0
		[ToggleUI] RotateB ("RotateB", Float) = 0
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			GpuProgramID 16390
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			GpuProgramID 83061
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			GpuProgramID 134912
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			GpuProgramID 225540
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			GpuProgramID 297657
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			GpuProgramID 390563
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			GpuProgramID 419638
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			GpuProgramID 504724
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}