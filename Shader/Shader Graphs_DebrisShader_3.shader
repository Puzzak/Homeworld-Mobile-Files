Shader "Shader Graphs/DebrisShader" {
	Properties {
		Color_2EFE7B6C ("Color", Vector) = (1,1,1,0)
		[NoScaleOffset] Texture2D_C4C943EF ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] _AO ("AO", 2D) = "white" {}
		[NoScaleOffset] _GlowTexture ("Glow", 2D) = "white" {}
		[NoScaleOffset] Texture2D_449319CD ("Normal", 2D) = "white" {}
		Vector1_987CE8C8 ("Smoothness", Range(0, 1)) = 0.5
		Vector1_DD499A0F ("Specular Power", Float) = 0.6
		_Occlusion ("Occlusion", Range(0, 1)) = 0.5
		_GlowStrength ("Glow Strength", Range(0, 1)) = 1
		_AOOpacity ("AO Opacity", Range(0, 1)) = 1
		_AOPower ("AO Power", Range(1, 4)) = 1
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 33101
			// No subprograms found
		}
		Pass {
			Name "GBuffer"
			Tags { "LIGHTMODE" = "UniversalGBuffer" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 78744
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 152080
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 252797
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 271500
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 407265
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 522020
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 563940
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			GpuProgramID 631233
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 681851
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			GpuProgramID 813324
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	CustomEditor "ShaderGraph.PBRMasterGUI"
}