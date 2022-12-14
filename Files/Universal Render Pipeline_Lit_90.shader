Shader "Universal Render Pipeline/Lit" {
	Properties {
		[HideInInspector] _WorkflowMode ("WorkflowMode", Float) = 1
		_BaseMap ("Albedo", 2D) = "white" {}
		_BaseColor ("Color", Vector) = (1,1,1,1)
		_Cutoff ("Alpha Cutoff", Range(0, 1)) = 0.5
		_Smoothness ("Smoothness", Range(0, 1)) = 0.5
		_GlossMapScale ("Smoothness Scale", Range(0, 1)) = 1
		_SmoothnessTextureChannel ("Smoothness texture channel", Float) = 0
		_Metallic ("Metallic", Range(0, 1)) = 0
		_MetallicGlossMap ("Metallic", 2D) = "white" {}
		_SpecColor ("Specular", Vector) = (0.2,0.2,0.2,1)
		_SpecGlossMap ("Specular", 2D) = "white" {}
		[ToggleOff] _SpecularHighlights ("Specular Highlights", Float) = 1
		[ToggleOff] _EnvironmentReflections ("Environment Reflections", Float) = 1
		_BumpScale ("Scale", Float) = 1
		_BumpMap ("Normal Map", 2D) = "bump" {}
		_Parallax ("Scale", Range(0.005, 0.08)) = 0.005
		_ParallaxMap ("Height Map", 2D) = "black" {}
		_OcclusionStrength ("Strength", Range(0, 1)) = 1
		_OcclusionMap ("Occlusion", 2D) = "white" {}
		[HDR] _EmissionColor ("Color", Vector) = (0,0,0,1)
		_EmissionMap ("Emission", 2D) = "white" {}
		_DetailMask ("Detail Mask", 2D) = "white" {}
		_DetailAlbedoMapScale ("Scale", Range(0, 2)) = 1
		_DetailAlbedoMap ("Detail Albedo x2", 2D) = "linearGrey" {}
		_DetailNormalMapScale ("Scale", Range(0, 2)) = 1
		[Normal] _DetailNormalMap ("Normal Map", 2D) = "bump" {}
		[HideInInspector] _ClearCoatMask ("_ClearCoatMask", Float) = 0
		[HideInInspector] _ClearCoatSmoothness ("_ClearCoatSmoothness", Float) = 0
		[HideInInspector] _Surface ("__surface", Float) = 0
		[HideInInspector] _Blend ("__blend", Float) = 0
		[HideInInspector] _AlphaClip ("__clip", Float) = 0
		[HideInInspector] _SrcBlend ("__src", Float) = 1
		[HideInInspector] _DstBlend ("__dst", Float) = 0
		[HideInInspector] _ZWrite ("__zw", Float) = 1
		[HideInInspector] _Cull ("__cull", Float) = 2
		_ReceiveShadows ("Receive Shadows", Float) = 1
		[HideInInspector] _QueueOffset ("Queue offset", Float) = 0
		[HideInInspector] _MainTex ("BaseMap", 2D) = "white" {}
		[HideInInspector] _Color ("Base Color", Vector) = (1,1,1,1)
		[HideInInspector] _GlossMapScale ("Smoothness", Float) = 0
		[HideInInspector] _Glossiness ("Smoothness", Float) = 0
		[HideInInspector] _GlossyReflections ("EnvironmentReflections", Float) = 0
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		LOD 300
		Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "ForwardLit"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "UniversalForward" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "Lit" }
			Blend Zero Zero, Zero Zero
			ZWrite Off
			Cull Off
			GpuProgramID 48450
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "SHADOWCASTER" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 108339
			// No subprograms found
		}
		Pass {
			Name "GBuffer"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "UniversalGBuffer" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "Lit" }
			ZWrite Off
			Cull Off
			GpuProgramID 156315
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthOnly" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 235670
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthNormals" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "Lit" }
			Cull Off
			GpuProgramID 306752
			// No subprograms found
		}
		Pass {
			Name "Universal2D"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "Universal2D" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "Lit" }
			Blend Zero Zero, Zero Zero
			ZWrite Off
			Cull Off
			GpuProgramID 436783
			// No subprograms found
		}
	}
	SubShader {
		LOD 300
		Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "Lit" }
		Pass {
			Name "ForwardLit"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "UniversalForward" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "Lit" }
			Blend Zero Zero, Zero Zero
			ZWrite Off
			Cull Off
			GpuProgramID 472412
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "SHADOWCASTER" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 552083
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthOnly" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "Lit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 624191
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthNormals" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "Lit" }
			Cull Off
			GpuProgramID 712143
			// No subprograms found
		}
		Pass {
			Name "Universal2D"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "Universal2D" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "Lit" }
			Blend Zero Zero, Zero Zero
			ZWrite Off
			Cull Off
			GpuProgramID 819563
			// No subprograms found
		}
	}
	Fallback "Hidden/Universal Render Pipeline/FallbackError"
	CustomEditor "UnityEditor.Rendering.Universal.ShaderGUI.LitShader"
}