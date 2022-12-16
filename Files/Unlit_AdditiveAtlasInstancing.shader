Shader "Unlit/AdditiveAtlasInstancing" {
	Properties {
		[NoScaleOffset] _MainTex ("Sprite Texture", 2D) = "white" {}
		_QuadSizeMult ("Quad Size Multiplier", Float) = 1
		[PerRendererData] _AtlasST ("Sprite Texture", Vector) = (1,1,1,1)
		[PerRendererData] _FlipX ("Flip X", Float) = 0
		[PerRendererData] _FlipY ("Flip Y", Float) = 0
		_Color ("Tint", Vector) = (1,1,1,1)
	}
	SubShader {
		Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
		Pass {
			Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
			Blend SrcAlpha One, SrcAlpha One
			ZWrite Off
			Cull Off
			GpuProgramID 44190
			// No subprograms found
		}
	}
}