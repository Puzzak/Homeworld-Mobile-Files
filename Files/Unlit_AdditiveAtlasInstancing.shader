Shader "Unlit/AdditiveAtlasInstancing" {
	Properties {
		[NoScaleOffset] _MainTex ("Sprite Texture", 2D) = "white" {}
		_QuadSizeMult ("Quad Size Multiplier", Float) = 1
		[PerRendererData] _AtlasST ("Sprite Texture", Vector) = (1,1,1,1)
		[PerRendererData] _FlipX ("Flip X", Float) = 0
		[PerRendererData] _FlipY ("Flip Y", Float) = 0
		_Color ("Tint", Vector) = (1,1,1,1)
	}
	//DummyShaderTextExporter
	SubShader{
		Tags { "RenderType"="Opaque" }
		LOD 200
		CGPROGRAM
#pragma surface surf Standard
#pragma target 3.0

		sampler2D _MainTex;
		fixed4 _Color;
		struct Input
		{
			float2 uv_MainTex;
		};
		
		void surf(Input IN, inout SurfaceOutputStandard o)
		{
			fixed4 c = tex2D(_MainTex, IN.uv_MainTex) * _Color;
			o.Albedo = c.rgb;
			o.Alpha = c.a;
		}
		ENDCG
	}
}