Shader "Shader Graphs/DwarfPlanetShader" {
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
		Vector1_ac2f49821f9e42dbbe0b142b78025257 ("AmbientOcc", Range(0, 1)) = 0
		[ToggleUI] RotateB ("RotateB", Float) = 0
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 2625
			// No subprograms found
		}
		Pass {
			Name "GBuffer"
			Tags { "LIGHTMODE" = "UniversalGBuffer" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 73632
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 154321
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 202561
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 322940
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 401505
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 506593
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 536462
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 602823
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 697915
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 839223
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	CustomEditor "ShaderGraph.PBRMasterGUI"
}