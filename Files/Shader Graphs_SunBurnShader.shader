Shader "Shader Graphs/SunBurnShader" {
	Properties {
		Color_2e47952d91c44b5e9460518c76706636 ("Color", Vector) = (1,0.8870745,0.5424528,0)
		Vector1_aa26307b330f42c6a539f4a2800540ca ("Alpha", Range(0, 1)) = 0.5
		[NoScaleOffset] Texture2D_043d39b52ad34ab3b1a284715135f6b9 ("Texture2D", 2D) = "white" {}
		Vector1_c1394934573a493bbf7fee5459226783 ("Noise Scale", Float) = 1
		Vector1_f552b142a79548b0a9c1f574eb48bbe2 ("Speed", Float) = 0
		Vector1_95f0140dcc0146ecb418262ff277965e ("Float (1)", Float) = 1
		Vector1_0103de6919d742cfac621c29863253bc ("Float (2)", Float) = 10000
		Vector1_c9f7ca28b9ef4690b50d0b7d13c34785 ("Fresnel Power", Float) = 0
		Vector1_ff9ef64d5ccb44cf952b4177b25ef7e6 ("Flare End Distance", Float) = 1
		Vector1_bf1b8ec8021742b7939f44b24afa03a4 ("Edge 1", Float) = 0
		Vector1_bf1b8ec8021742b7939f44b24afa03a4_1 ("Edge 2", Float) = 1
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
			Cull Off
			GpuProgramID 44485
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			Cull Off
			GpuProgramID 113716
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			Cull Off
			GpuProgramID 151993
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			Cull Off
			GpuProgramID 224347
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
			Cull Off
			GpuProgramID 291163
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			Cull Off
			GpuProgramID 336552
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			Cull Off
			GpuProgramID 429507
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			Cull Off
			GpuProgramID 512607
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}