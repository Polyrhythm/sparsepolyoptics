#version 420
uniform float minDepth;

layout(location = 0) in vec2 vert;
layout(location = 1) in vec2 tc;

layout(location = 0) out data
{
  vec2 sensorPosVertex;
};

void main()
{
  sensorPosVertex = (tc - 0.5f) * vec2(36, 24);
  gl_Position = vec4(vert, 0, 1);
}
