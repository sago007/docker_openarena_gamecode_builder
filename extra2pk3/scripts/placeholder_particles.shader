// SPECIAL OA 0.x Particle shader file
// for TESTING ONLY
//  This shader is not OA3 data
psmoke-blend
{
	{
		map sprites/le/smoke3.tga
		blendfunc blend
		rgbGen Vertex
		alphaGen Vertex
	}
}

pwatersplash
{
	cull disable
	{
		map sprites/le/splash.tga
		blendfunc add
		rgbGen Vertex
	}
}

pwaterburst
{
	{
		map sprites/le/smoke4.tga
		blendfunc add
		rgbGen Vertex
	}
}

pfireball
{
	{
		map sprites/le/blast.tga
		blendfunc add
		rgbGen Vertex
	}
}

psmoke-add
{
	{
		map sprites/le/smoke1.tga
		blendfunc add
		rgbGen Vertex
	}
}

psmoke-mod
{
	{
		map gfx/misc/hastesmoke.tga
		blendfunc gl_dst_color gl_one
		rgbGen Vertex
	}
}

psmoke-sub
{
	{
		map gfx/misc/hastesmoke.tga
		blendfunc gl_zero gl_one_minus_src_color
		rgbGen Vertex
	}
}

pshock-add
{
	cull disable
	{
		map models/weapons2/railgun/f_railgun2.tga
		blendfunc add
		rgbGen Vertex
	}
}

pshock-blend
{
	cull disable
	{
		map models/weapons2/railgun/f_railgun2.tga
		blendfunc blend
		rgbGen Vertex
		alphaGen Vertex
	}
}

pshock-mod
{
	cull disable
	{
		map models/weapons2/railgun/f_railgun2.tga
		blendfunc gl_dst_color gl_one
		rgbGen Vertex
	}
}

pring-add
{
	cull disable
	{
		map models/weaphits/smokering.tga
		blendfunc gl_src_alpha gl_one
		rgbGen Vertex
		tcMod stretch sin 2 0 0 1 
	}
}

pring-blend
{
	cull disable
	{
		map models/weaphits/smokering.tga
		blendfunc blend
		rgbGen Vertex
		tcMod stretch sin 2 0 0 1 
		alphaGen Vertex
	}
}

pring-mod
{
	cull disable
	{
		map models/weapons2/railgun/f_railgun2.tga
		blendfunc gl_dst_color gl_one
		rgbGen Vertex
	}
}

pball-add
{
	cull disable
	{
		map gfx/fx/flares/standard.tga
		blendfunc add
		rgbGen Vertex
	}
}

pball-blend
{
	cull disable
	{
		map gfx/fx/flares/largeglow.tga
		blendfunc blend
		rgbGen Vertex
		alphaGen Vertex
	}
}

pball-mod
{
	cull disable
	{
		map gfx/fx/flares/standard.tga
		blendfunc gl_dst_color gl_one
		rgbGen Vertex
	}
}

pblood1
{
	cull disable
	{
		map gfx/newbg/blood_spurt.tga
		rgbGen Vertex
		alphaFunc GE128
		alphaGen Vertex
	}
}

pblood2
{
	cull disable
	{
		map gfx/newbg/blood_spurt.tga
		rgbGen Vertex
		alphaFunc GE128
		alphaGen Vertex
	}
}

