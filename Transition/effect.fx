/////////////////////////////////////////////////////////
// Transition mask effect
varying mediump vec2 vTex;
uniform lowp sampler2D samplerFront;

uniform lowp float cutOff;

void main(void)
{
	lowp float pixel = texture2D(samplerFront, vTex).r;

	lowp vec4 outColor = vec4(0, 0, 0, 0);
	if(pixel < cutOff) outColor.a = 1.0;
	gl_FragColor = outColor;
}
