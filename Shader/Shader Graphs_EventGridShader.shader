Shader "Shader Graphs/EventGridShader" {
	Properties {
		Color_2fca536b7c294ff1a2b27d9341cad930 ("Color", Vector) = (0.145098,0.1764706,0.2470588,0)
		[NoScaleOffset] Texture2D_7db968a1976c4309a388b77694ab95db ("Texture", 2D) = "white" {}
		Vector1_cff4063326784fb08e0849f05a749313 ("FadeDistance", Float) = 15
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
			GpuProgramID 10695
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 71156
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 150644
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			GpuProgramID 201095
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
			GpuProgramID 326523
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 351297
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 402152
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			GpuProgramID 499596
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}