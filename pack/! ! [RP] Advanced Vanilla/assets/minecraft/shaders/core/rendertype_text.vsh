#version 150

#moj_import <minecraft:fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

#moj_import <enchanted-games-custom-xp/config/xp-text.glsl>
#moj_import <enchanted-games-custom-xp/util.glsl>

void main() {
    gl_Position = ProjMat * ModelViewMat * vec4(Position, 1.0);

    vertexDistance = fog_distance(Position, FogShape);
	if (Position.z == 0.0 && Color.r > 0.2509 && Color.r < 0.251 && Color.r == Color.g && Color.r == Color.b) vertexColor = vec4(1.0, 1.0, 1.0, 1.0);
    else vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;

    #moj_import <enchanted-games-custom-xp/logic/xp-text/inside_main_vertex.glsl>
}
