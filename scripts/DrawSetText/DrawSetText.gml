/// @desc DrawSetColor(colour,font,halign,valign)
/// @arg colour	
/// @arg font
/// @arg halign 
/// @arg valign
function DrawSetText(colour, font, halign,valign)
{
	draw_set_colour(colour);
	draw_set_font(font);
	draw_set_halign(halign);
	draw_set_valign(valign);
}

