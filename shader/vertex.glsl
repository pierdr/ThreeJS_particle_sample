uniform float time;
varying vec2 vUv;
varying vec4 vPosition;
uniform vec2 pixels;

void main() {
  vUv = uv;
  vec4 mvPosition = modelViewMatrix * vec4(position,1.);
  gl_PointSize = 500. * (1.0 /  ( - mvPosition.z) );
  gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
}
