Shader "Shader Graphs/SunFlameShader" {
	Properties {
		Color_fd4a9d27ca76424a9ea321f80ea496f2 ("Color", Vector) = (0.9150943,0.8423542,0.6431559,0)
		Vector1_8cf60997e5764c5eac9532c84c79da8f ("Fresnel Power", Float) = 2
		Vector1_d1193f84cde844ef81a29b71cc83df77 ("Fresnel Edge A", Float) = -1
		Vector1_ff9560c6f48d47be8f7b3ef17b69771b ("Fresnel Edge B", Float) = 1
		Vector1_2b7daf35c59b40418d24b1aa6580a07e ("Cell Size A", Float) = 15
		Vector1_c63e0cb08fbf4157a00aed6dea92da2e ("Cell Size B", Float) = 5
		Vector1_94d380e0b53242e2a9f89f6d225378ac ("Blend", Float) = 1
		Vector1_002c974f7c024650a4d5f6a687dc1437 ("Cell Cotrast", Range(-1, 1)) = 0.5
		Vector1_669502aa17424a729baf9d5936bf6842 ("Float", Float) = 1
		Vector1_0c82f29bc34f48c4af656060d5ef35b2 ("Pole Fade Power", Float) = 1
		Vector2_4008dd97469740b7baebf0799ce66942 ("Pole Fade Edge", Vector) = (-1,2.49,0,0)
		Vector1_560945fa19df428db211e9bd504e3f22 ("Flow Speed", Float) = 1
		Vector1_39f741689cba4193be964128abea29a2 ("Cell A Stretch", Float) = 1
		Vector1_4c1276bf2ba64d1ba95d9a6623a3ce44 ("Cell B Stretch", Float) = 1
		Vector1_1dc2fcab55e9400f8d5d7e7c9d0bd983 ("Cell A Rotation Speed", Float) = 1
		Vector1_66d6df01e46342f5a273452ddf4fa8e3 ("Cell B Rotation Speed", Float) = 1
		[NoScaleOffset] _SampleTexture2D_21b4bae324d9497ca3dfd9e912eda7ba_Texture_1 ("Texture2D", 2D) = "white" {}
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
			GpuProgramID 22641
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 124070
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 131506
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			GpuProgramID 227046
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
			GpuProgramID 311162
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 383020
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 410434
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			GpuProgramID 505308
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}