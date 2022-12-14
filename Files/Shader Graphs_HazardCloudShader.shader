Shader "Shader Graphs/HazardCloudShader" {
	Properties {
		Color_4549FFC2 ("Color", Vector) = (1,1,1,0)
		[ToggleUI] Boolean_d45a6f6d60a14b429b4d6461b449caf6 ("Use Fog Color", Float) = 0
		Vector1_7eecd16bbd1a44469c38a362f38679f7 ("Fog Color Ratio", Range(0, 1)) = 0.5
		Vector1_5C3D63C0 ("Occlusion", Range(0, 1)) = 0.2
		[NoScaleOffset] Texture2D_BA2001C6 ("Normal Map", 2D) = "white" {}
		Vector1_C2CAEAD9 ("Texture Tiling", Range(0, 0.1)) = 0.1
		Vector1_3AD0B535 ("Size", Float) = -2.5
		Vector1_6D9C4D21 ("Fade Distance", Float) = 20
		Vector1_8AF01B7F ("Noise 1", Range(0, 10)) = 1
		Vector1_41EB2280 ("Noise 2", Range(0, 0.1)) = 0
		Vector1_C1A158D0 ("Noise 1 Power", Float) = 0.2
		Vector1_408BF844 ("Noise 2 Power", Float) = 0
		Vector1_E15D73FD ("Density 1", Range(0, 1)) = 0.1
		Vector1_D99DA5C3 ("Density 2", Range(0, 10)) = 0
		Vector1_A99C2BD6 ("Density 3", Float) = 0.23
		Vector1_72E8F981 ("Density 4", Float) = 2.33
		Vector1_5EBD774F ("Density", Float) = 0
		Vector1_E8BEB433 ("Edge Tiling", Float) = 0
		[NoScaleOffset] Texture2D_D899C164 ("Edge Texture", 2D) = "white" {}
		Vector1_d9edd9fd705c475181ca82da7a383097 ("Edge Fade 1", Range(-0.5, 0.5)) = -0.001
		Vector1_7dfcd31947334799a048501a129cb940 ("Edge Fade 2", Range(0, 0.5)) = 0.1
		Vector1_7d1a578bd6ce46bb9b2725523cf4d2e9 ("Alpah Master", Range(0, 1)) = 0.5
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			GpuProgramID 11463
			// No subprograms found
		}
		Pass {
			Name "GBuffer"
			Tags { "LIGHTMODE" = "UniversalGBuffer" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			GpuProgramID 77465
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ColorMask 0 -1
			GpuProgramID 156879
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ColorMask 0 -1
			GpuProgramID 247413
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			GpuProgramID 280533
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			GpuProgramID 410109
			// No subprograms found
		}
	}
	SubShader {
		Tags { "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "Universal Forward"
			Tags { "LIGHTMODE" = "UniversalForward" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			GpuProgramID 514266
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			Tags { "LIGHTMODE" = "SHADOWCASTER" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ColorMask 0 -1
			GpuProgramID 573859
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			Tags { "LIGHTMODE" = "DepthOnly" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ColorMask 0 -1
			GpuProgramID 603537
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			Tags { "LIGHTMODE" = "DepthNormals" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			GpuProgramID 700332
			// No subprograms found
		}
		Pass {
			Tags { "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "UniversalMaterialType" = "Lit" }
			Blend SrcAlpha OneMinusSrcAlpha, One OneMinusSrcAlpha
			ZWrite Off
			GpuProgramID 848254
			// No subprograms found
		}
	}
	Fallback "Hidden/Shader Graph/FallbackError"
	CustomEditor "ShaderGraph.PBRMasterGUI"
}