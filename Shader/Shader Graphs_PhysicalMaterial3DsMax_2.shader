Shader "Shader Graphs/PhysicalMaterial3DsMax" {
	Properties {
		_BASE_COLOR_WEIGHT ("BaseColorWeight", Range(0, 1)) = 1
		_BASE_COLOR ("BaseColor", Vector) = (1,1,1,1)
		[NoScaleOffset] _BASE_COLOR_MAP ("BaseColorMap", 2D) = "white" {}
		_REFLECTIONS_WEIGHT ("ReflectionsWeight", Float) = 1
		_REFLECTIONS_COLOR ("ReflectionsColor", Vector) = (1,1,1,1)
		[NoScaleOffset] _REFLECTIONS_COLOR_MAP ("ReflectionsColorMap", 2D) = "white" {}
		_REFLECTIONS_ROUGHNESS ("ReflectionsRoughness", Range(0, 1)) = 1
		[NoScaleOffset] _REFLECTIONS_ROUGHNESS_MAP ("ReflectionsRoughnessMap", 2D) = "white" {}
		_METALNESS ("Metalness", Range(0, 1)) = 0
		[NoScaleOffset] _METALNESS_MAP ("MetalnessMap", 2D) = "white" {}
		_REFLECTIONS_IOR ("ReflectionsIOR", Range(0, 50)) = 1.52
		[NoScaleOffset] _REFLECTIONS_IOR_MAP ("ReflectionsIORMap", 2D) = "white" {}
		_TRANSPARENCY ("Transparency", Range(0, 1)) = 0
		[NoScaleOffset] _TRANSPARENCY_MAP ("TransparencyMap", 2D) = "white" {}
		_EMISSION_WEIGHT ("EmissionWeight", Range(0, 1)) = 1
		_EMISSION_COLOR ("Emission", Vector) = (0,0,0,0)
		[NoScaleOffset] _EMISSION_COLOR_MAP ("EmissionMap", 2D) = "white" {}
		_BUMP_MAP_STRENGTH ("BumpMapStrength", Range(0, 10)) = 0.3
		[NoScaleOffset] _BUMP_MAP ("BumpMap", 2D) = "white" {}
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 62919
			// No subprograms found
		}
		Pass {
			Name "GBuffer"
			Tags { "LIGHTMODE" = "UniversalGBuffer" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 112016
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 131676
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 252921
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 266440
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 405460
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 479844
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 524619
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 629417
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 676242
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 795084
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	CustomEditor "ShaderGraph.PBRMasterGUI"
}