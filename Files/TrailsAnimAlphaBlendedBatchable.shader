Shader "TrailsAnimAlphaBlendedBatchable" {
	Properties {
		_TintColor ("Tint Color", Vector) = (0.5,0.5,0.5,0.5)
		_MainTex ("Particle Texture", 2D) = "white" {}
		_InvFade ("Soft Particles Factor", Range(0.01, 3)) = 1
		_XOffsetSpeed ("X Offset Speed", Range(-10, 10)) = -0.8
	}
	SubShader {
		Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent+3" "RenderType" = "Transparent" }
		Pass {
			Tags { "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent+3" "RenderType" = "Transparent" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			ColorMask RGB -1
			ZWrite Off
			Cull Off
			GpuProgramID 43079
			// No subprograms found
		}
	}
}