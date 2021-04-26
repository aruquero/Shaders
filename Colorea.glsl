#ifdef GL_ES	
precision mediump float;
#endif

uniform vec2 resolution;
uniform vec2 fPosition;
uniform float time;

void main()
{
  vec2 mouse = fPosition/resolution;
  gl_FragColor = vec4(mouse.x,mouse.y,abs(time), 1.0);
}