#version 330 compatibility


#include "/lib/lighting.glsl"


uniform sampler2D gtexture;

uniform float sunAngle;


varying vec2 texcoord;


void main()
{

    vec4 textureColor =
        texture2D(gtexture, texcoord);


    float sunHeight =
        sin(sunAngle);


    vec3 result =
        applySketchLighting(
            textureColor.rgb,
            1.0,
            sunHeight
        );


    gl_FragColor =
        vec4(result, textureColor.a);

}