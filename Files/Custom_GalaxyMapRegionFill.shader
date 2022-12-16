Shader "Custom/GalaxyMapRegionFill" {
	Properties {
		_Color ("Color", Vector) = (0.509434,0.509434,0.509434,0)
		[NoScaleOffset] _MainTex ("Texture", 2D) = "white" {}
		[NoScaleOffset] _PatternTex ("Pattern Texture", 2D) = "white" {}
		_TilingX ("Tiling X", Float) = 1
		_TilingY ("Tiling Y", Float) = 1
		[ToggleUI] _ScreenspaceOrViewspace ("Screenspace/Viewspace", Float) = 0
		[ToggleUI] _Flicker ("Flicker", Float) = 0
		[ToggleUI] _Move ("Move", Float) = 0
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
	Fallback "Hidden/Shader Graph/FallbackError"
}