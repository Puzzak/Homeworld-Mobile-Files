Shader "CloudShader" {
	Properties {
		Color_98C4891A ("Color", Vector) = (0,0,0,0)
		[NoScaleOffset] Texture2D_15C5415D ("Diffuse", 2D) = "white" {}
		Vector1_13886341 ("NormalForce", Float) = 1
		Vector1_97D968AE ("Smoothness", Range(0, 1)) = 0
		Vector1_FF7A8F5A ("Atmosphere", Float) = 2
		Vector1_D0CDDF8 ("Thickness", Float) = 0
		Vector1_65865B8E ("Occlusion", Float) = 1
		Vector1_1883C7B4 ("MoveSpeed", Float) = 0
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha One, One One
			ZWrite Off
			GpuProgramID 52105
			// No subprograms found
		}
		Pass {
			Name "GBuffer"
			Tags { "LIGHTMODE" = "UniversalGBuffer" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha One, One One
			ZWrite Off
			GpuProgramID 112144
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 132650
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 248206
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend One One, One One
			GpuProgramID 305439
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha One, One One
			ZWrite Off
			GpuProgramID 428365
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha One, One One
			ZWrite Off
			GpuProgramID 510850
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 573502
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 594850
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend One One, One One
			GpuProgramID 709758
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha One, One One
			ZWrite Off
			GpuProgramID 823612
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	CustomEditor "ShaderGraph.PBRMasterGUI"
}