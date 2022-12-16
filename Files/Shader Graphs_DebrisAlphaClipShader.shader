Shader "Shader Graphs/DebrisAlphaClipShader" {
	Properties {
		Color_2EFE7B6C ("Color", Vector) = (1,1,1,0)
		[NoScaleOffset] Texture2D_C4C943EF ("Diffuse", 2D) = "white" {}
		[NoScaleOffset] Texture2D_449319CD ("Normal", 2D) = "white" {}
		Vector1_987CE8C8 ("Smoothness", Range(0, 1)) = 0.5
		Vector1_5FE82F96 ("Specular Power", Float) = 0
		[NoScaleOffset] Texture2D_7cec476363a347119f7df43d31fd9276 ("Alpha", 2D) = "white" {}
		Vector1_845c005f501749adb6cd6cbe522c03c9 ("AlphaClip", Range(0, 1)) = 0.1
		Vector2_6247f484d0ae4d0f8cd3837803c2e487 ("Tiling", Vector) = (1,1,0,0)
		Vector2_d0920542da954f61906c8dcbea2a1d21 ("Offset", Vector) = (1,1,0,0)
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			Cull Off
			GpuProgramID 61102
			// No subprograms found
		}
		Pass {
			Name "GBuffer"
			Tags { "LIGHTMODE" = "UniversalGBuffer" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			Cull Off
			GpuProgramID 124294
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 164665
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 222993
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			Cull Off
			GpuProgramID 320583
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			Cull Off
			GpuProgramID 414606
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			Cull Off
			GpuProgramID 466281
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 560192
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 644076
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			Cull Off
			GpuProgramID 713078
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "AlphaTest" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Lit" }
			Cull Off
			GpuProgramID 845965
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	CustomEditor "ShaderGraph.PBRMasterGUI"
}