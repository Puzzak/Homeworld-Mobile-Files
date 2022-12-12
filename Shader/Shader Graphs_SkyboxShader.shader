Shader "Shader Graphs/SkyboxShader" {
	Properties {
		[NoScaleOffset] Cubemap_CD375CCA ("Cubemap", Cube) = "" {}
		Color_6104040 ("Color", Vector) = (0,0,0,0)
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			Cull Off
			GpuProgramID 26323
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 78092
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 184716
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			Cull Off
			GpuProgramID 197436
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			Cull Off
			GpuProgramID 310733
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 354794
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 395167
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			Cull Off
			GpuProgramID 466126
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}