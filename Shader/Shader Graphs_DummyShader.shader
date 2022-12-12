Shader "Shader Graphs/DummyShader" {
	Properties {
		[NoScaleOffset] Texture2D_a7a3a403c9934c6f8e743b2cba16c5a1 ("Texture2D", 2D) = "white" {}
		Vector1_19d41e3d85b8477ca218d42c7d1dcd06 ("Index", Float) = 0
		Vector1_7a9867e5030c497ab43678109708fe7d ("blend", Float) = 0
		Vector2_7ac7ddc4937e4c6796fbd357ffe3b155 ("offset", Vector) = (0,0,0,0)
		[NoScaleOffset] _SampleTexture2DArray_5757d0cb03004d829e004d1440ea7ae4_TextureArray_1 ("Texture2D Array", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			GpuProgramID 27306
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			GpuProgramID 105498
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			GpuProgramID 152610
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			GpuProgramID 212182
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			GpuProgramID 271047
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			GpuProgramID 361329
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			ColorMask 0 -1
			GpuProgramID 426940
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Geometry" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "UniversalMaterialType" = "Unlit" }
			GpuProgramID 481890
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}