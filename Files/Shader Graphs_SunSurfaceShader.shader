Shader "Shader Graphs/SunSurfaceShader" {
	Properties {
		Color_fd4a9d27ca76424a9ea321f80ea496f2 ("Color", Vector) = (0.9150943,0.8423542,0.6431559,0)
		Vector1_8cf60997e5764c5eac9532c84c79da8f ("Float", Float) = 2
		Vector1_d1193f84cde844ef81a29b71cc83df77 ("Fresnel Edge A", Float) = -1
		Vector1_ff9560c6f48d47be8f7b3ef17b69771b ("Fresnel Edge B", Float) = 1
		Vector1_2b7daf35c59b40418d24b1aa6580a07e ("Cell Size A", Float) = 15
		Vector1_c63e0cb08fbf4157a00aed6dea92da2e ("Cell Size B", Float) = 5
		Vector1_94d380e0b53242e2a9f89f6d225378ac ("Blend", Float) = 1
		Vector1_002c974f7c024650a4d5f6a687dc1437 ("Cell Cotrast", Range(-1, 1)) = 0.5
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			GpuProgramID 22483
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ColorMask 0 -1
			GpuProgramID 87931
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ColorMask 0 -1
			GpuProgramID 139686
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			GpuProgramID 241214
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
		Pass {
			Name "Pass"
			Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			GpuProgramID 278632
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ColorMask 0 -1
			GpuProgramID 376334
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ColorMask 0 -1
			GpuProgramID 427870
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			GpuProgramID 522639
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}