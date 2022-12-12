Shader "Shader Graphs/RepairBeamShader" {
	Properties {
		[NoScaleOffset] Texture2D_371DBBEB ("Diffuse", 2D) = "white" {}
		Vector2_F6FE98F4 ("Tiling", Vector) = (1,1,0,0)
		Vector1_4AA399D5 ("Noise", Float) = 3
		Vector1_38142F70 ("Noise Speed", Float) = 1
		Vector1_D94F2706 ("Noise Strength", Float) = 0
		Vector1_718B37E5 ("Flow Speed", Float) = 0
		Vector1_2705CAB3 ("Vector1", Float) = 0
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha One, One One
			ZWrite Off
			GpuProgramID 474
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 112161
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 140073
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			GpuProgramID 235853
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha One, One One
			ZWrite Off
			GpuProgramID 297173
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 328228
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 396199
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			GpuProgramID 507743
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}