Shader "Universal Render Pipeline/Simple Lit" {
	Properties {
		_BaseMap ("Base Map (RGB) Smoothness / Alpha (A)", 2D) = "white" {}
		_BaseColor ("Base Color", Vector) = (1,1,1,1)
		_Cutoff ("Alpha Clipping", Range(0, 1)) = 0.5
		_SpecColor ("Specular Color", Vector) = (0.5,0.5,0.5,0.5)
		_SpecGlossMap ("Specular Map", 2D) = "white" {}
		[Enum(Specular Alpha,0,Albedo Alpha,1)] _SmoothnessSource ("Smoothness Source", Float) = 0
		[ToggleOff] _SpecularHighlights ("Specular Highlights", Float) = 1
		[HideInInspector] _BumpScale ("Scale", Float) = 1
		[NoScaleOffset] _BumpMap ("Normal Map", 2D) = "bump" {}
		[HDR] _EmissionColor ("Emission Color", Vector) = (0,0,0,1)
		[NoScaleOffset] _EmissionMap ("Emission Map", 2D) = "white" {}
		[HideInInspector] _Surface ("__surface", Float) = 0
		[HideInInspector] _Blend ("__blend", Float) = 0
		[HideInInspector] _AlphaClip ("__clip", Float) = 0
		[HideInInspector] _SrcBlend ("__src", Float) = 1
		[HideInInspector] _DstBlend ("__dst", Float) = 0
		[HideInInspector] _ZWrite ("__zw", Float) = 1
		[HideInInspector] _Cull ("__cull", Float) = 2
		[ToggleOff] _ReceiveShadows ("Receive Shadows", Float) = 1
		[HideInInspector] _QueueOffset ("Queue offset", Float) = 0
		[HideInInspector] _Smoothness ("Smoothness", Float) = 0.5
		[HideInInspector] _MainTex ("BaseMap", 2D) = "white" {}
		[HideInInspector] _Color ("Base Color", Vector) = (1,1,1,1)
		[HideInInspector] _Shininess ("Smoothness", Float) = 0
		[HideInInspector] _GlossinessSource ("GlossinessSource", Float) = 0
		[HideInInspector] _SpecSource ("SpecularHighlights", Float) = 0
		[HideInInspector] [NoScaleOffset] unity_Lightmaps ("unity_Lightmaps", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_LightmapsInd ("unity_LightmapsInd", 2DArray) = "" {}
		[HideInInspector] [NoScaleOffset] unity_ShadowMasks ("unity_ShadowMasks", 2DArray) = "" {}
	}
	SubShader {
		LOD 300
		Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "SimpleLit" }
		Pass {
			Name "ForwardLit"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "UniversalForward" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "SimpleLit" }
			Blend Zero Zero, Zero Zero
			ZWrite Off
			Cull Off
			GpuProgramID 51569
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "SHADOWCASTER" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "SimpleLit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 77501
			// No subprograms found
		}
		Pass {
			Name "GBuffer"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "UniversalGBuffer" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "SimpleLit" }
			ZWrite Off
			Cull Off
			GpuProgramID 140497
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthOnly" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "SimpleLit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 252942
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthNormals" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" "UniversalMaterialType" = "SimpleLit" }
			Cull Off
			GpuProgramID 319578
			// No subprograms found
		}
		Pass {
			Name "Universal2D"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "ShaderModel" = "4.5" "UniversalMaterialType" = "SimpleLit" }
			GpuProgramID 399446
			// No subprograms found
		}
	}
	SubShader {
		LOD 300
		Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "SimpleLit" }
		Pass {
			Name "ForwardLit"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "UniversalForward" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "SimpleLit" }
			Blend Zero Zero, Zero Zero
			ZWrite Off
			Cull Off
			GpuProgramID 467714
			// No subprograms found
		}
		Pass {
			Name "ShadowCaster"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "SHADOWCASTER" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "SimpleLit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 555409
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthOnly" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "SimpleLit" }
			ColorMask 0 -1
			Cull Off
			GpuProgramID 643677
			// No subprograms found
		}
		Pass {
			Name "DepthNormals"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthNormals" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" "UniversalMaterialType" = "SimpleLit" }
			Cull Off
			GpuProgramID 665017
			// No subprograms found
		}
		Pass {
			Name "Universal2D"
			LOD 300
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "Universal2D" "QUEUE" = "Transparent" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Transparent" "ShaderModel" = "2.0" "UniversalMaterialType" = "SimpleLit" }
			GpuProgramID 838492
			// No subprograms found
		}
	}
	Fallback "Hidden/Universal Render Pipeline/FallbackError"
	CustomEditor "UnityEditor.Rendering.Universal.ShaderGUI.SimpleLitShader"
}