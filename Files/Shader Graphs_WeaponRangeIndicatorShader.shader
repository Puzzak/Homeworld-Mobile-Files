Shader "Shader Graphs/WeaponRangeIndicatorShader" {
	Properties {
		_Color ("Color", Vector) = (0.4245283,0.4245283,0.4245283,0)
		[NoScaleOffset] Texture2D_e48eece160d4414eba77b353e1c41881 ("Pattern Texture", 2D) = "white" {}
		Vector2_c8ee2c74130b4b9db3878469b26fc154 ("Pattern Tiling", Vector) = (1,1,0,0)
		_Opacity ("Opacity", Range(0, 1)) = 1
		_DropoffStart ("Range Start", Range(0, 1)) = 0.9
		Vector1_c212efc7736b45da90ca5dd16c9f3012 ("Dropoff Factor", Float) = 2
		_DropoffOffset ("DropoffOffset", Range(0, 1)) = 0
		Vector1_1b3b93c8634d43e9a23a42b2fb089aa0 ("CamDisScaleUp Factor", Float) = 10
		Vector1_16dbd96dd57c4feda2af8f46a2face6b ("CamDisMin", Float) = 0
		Vector1_a0eab1881f9a4c3b9c09af9ae8d74928 ("CamDisMax", Float) = 0
		[ToggleUI] Boolean_ab5d08185adb45178c8a8f9fc32f2673 ("Pattern", Float) = 0
		[ToggleUI] Boolean_09929ea062ab41cdaa64be46cd46b34f ("CamDisScale", Float) = 0
		[ToggleUI] Boolean_81f2666d11d5456a8915cb3dfb06f1ef ("Dropoff", Float) = 0
		[ToggleUI] Boolean_bc8ef8a47f8f419ebf8c609f7908870c ("Inverted Dropoff", Float) = 0
		[ToggleUI] _MinRangeFill ("MinRangeFill", Float) = 0
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
			GpuProgramID 30425
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 85988
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 140762
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			GpuProgramID 250813
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
			GpuProgramID 324932
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 344944
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			ColorMask 0 -1
			GpuProgramID 445424
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Unlit" }
			Blend One One, One One
			GpuProgramID 491452
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
}