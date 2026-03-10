//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 temp = texture2D( gm_BaseTexture, v_vTexcoord ) * 1.0 ;
	
	vec4 modif = temp ;
	
	modif.rgb = (modif.r + modif.g + modif.b) / 3.0 ;
	
	gl_FragColor = modif ;
	
}
