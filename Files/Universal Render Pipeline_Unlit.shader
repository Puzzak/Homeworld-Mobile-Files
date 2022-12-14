Shader "Universal Render Pipeline/Unlit" {
	Properties {
		_BaseMap ("Texture", 2D) = "white" {}
		_BaseColor ("Color", Vector) = (1,1,1,1)
		_Cutoff ("AlphaCutout", Range(0, 1)) = 0.5
		[HideInInspector] _Surface ("__surface", Float) = 0
		[HideInInspector] _Blend ("__blend", Float) = 0
		[HideInInspector] _AlphaClip ("__clip", Float) = 0
		[HideInInspector] _SrcBlend ("Src", Float) = 1
		[HideInInspector] _DstBlend ("Dst", Float) = 0
		[HideInInspector] _ZWrite ("ZWrite", Float) = 1
		[HideInInspector] _Cull ("__cull", Float) = 2
		[HideInInspector] _QueueOffset ("Queue offset", Float) = 0
		[HideInInspector] _MainTex ("BaseMap", 2D) = "white" {}
		[HideInInspector] _Color ("Base Color", Vector) = (0.5,0.5,0.5,1)
		[HideInInspector] _SampleGI ("SampleGI", Float) = 0
	}
	SubShader {
		LOD 100
		Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" }
		Pass {
			Name "Unlit"
			LOD 100
			Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" }
			Blend Zero Zero, Zero Zero
			ZWrite Off
			Cull Off
			GpuProgramID 2342
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			LOD 100
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthOnly" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "4.5" }
			Blend Zero Zero, Zero Zero
			ColorMask 0 -1
			Cull Off
			GpuProgramID 117066
			// No subprograms found
		}
	}
	SubShader {
		LOD 100
		Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" }
		Pass {
			Name "Unlit"
			LOD 100
			Tags { "IGNOREPROJECTOR" = "true" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" }
			Blend Zero Zero, Zero Zero
			ZWrite Off
			Cull Off
			GpuProgramID 210587
			// No subprograms found
		}
		Pass {
			Name "DepthOnly"
			LOD 100
			Tags { "IGNOREPROJECTOR" = "true" "LIGHTMODE" = "DepthOnly" "RenderPipeline" = "UniversalPipeline" "RenderType" = "Opaque" "ShaderModel" = "2.0" }
			Blend Zero Zero, Zero Zero
			ColorMask 0 -1
			Cull Off
			GpuProgramID 285426
			// No subprograms found
		}
	}
	Fallback "Hidden/Universal Render Pipeline/FallbackError"
	CustomEditor "UnityEditor.Rendering.Universal.ShaderGUI.UnlitShader"
}