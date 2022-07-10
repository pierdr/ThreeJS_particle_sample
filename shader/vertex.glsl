uniform float time;
varying vec2 vUv;
varying vec4 vPosition;
uniform vec2 pixels;

attribute vec3 aCoordinates;
varying vec2 vCoordinates;



void main() {
  vUv = uv;
  vec4 mvPosition = modelViewMatrix * vec4(position,1.);
  gl_PointSize = 1800. * (1.0 /  ( - mvPosition.z) );
  gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
  vCoordinates = aCoordinates.xy;
}
