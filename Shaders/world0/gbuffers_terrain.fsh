#version 330 compatibility

uniform sampler2D gtexture;

varying vec2 texcoord;

void main()
{
    vec4 color = texture2D(gtexture, texcoord);

    gl_FragColor = color;
}