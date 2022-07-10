uniform float time;
uniform float progress;
uniform sampler2D texture1;
uniform sampler2D texture2;
uniform vec4 resolution;
varying vec2 vUv;
varying vec4 vPosition;

varying vec2 vCoordinates;

uniform sampler2D t1;
uniform sampler2D t2;
uniform sampler2D mask;

void main()	{
	//   vec2 newUV = (vUv - vec2(0.5))*resolution.zw + vec2(0.5);
	// gl_FragColor = vec4(0.0,newUV,0.0);
	
	//ADD MASK TO THE PARTICLE
	vec4 maskTexture = texture2D(mask,gl_PointCoord);

	//ADD COLOR TO THE PARTICLE
	vec2 myUV =  vec2(vCoordinates.x/512.0,vCoordinates.y/512.0);
	vec4 image = texture2D(t2,myUV);
	gl_FragColor = image;

	gl_FragColor.a *= maskTexture.a;

	// gl_FragColor = vec4(vCoordinates.x/512.0,vCoordinates.y/512.0,0.2,1.0);
}
