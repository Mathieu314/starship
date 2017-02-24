require 'cairo'

red,green,blue,alpha=0.32,0.698,0.72,1

-- Tab --

function conky_draw_tab(width, height)	
	x1,y1=3,10
	x2,y2=80,10
	x3,y3=87,30
	x4,y4=width+9,30
	x5,y5=x4,33
	x6,y6=0,33
	cairo_set_line_width (cr,1)
	cairo_move_to (cr,x1,y1)
	cairo_line_to (cr,x2,y2)
	cairo_line_to (cr,x3,y3)
	cairo_line_to (cr,x4,y4)
	cairo_line_to (cr,x5,y5)
	cairo_line_to (cr,x6,y6)
	cairo_set_line_join(cr,1)
	cairo_fill(cr)
end

-- Bottom --
function conky_draw_bottom_angle()
	cairo_set_line_width (cr,1)
	cairo_set_source_rgba (cr,red,green,blue,alpha)
	cairo_move_to (cr,x7,y7)
	cairo_line_to (cr,x8,y8)
	cairo_line_to (cr,x9,y9)
	cairo_stroke(cr)
	
end

function conky_draw_bottom(width, height)
	x7,y7=1,height-10
	x8,y8=x7,height+10
	x9,y9=x7+20,y8
	conky_draw_bottom_angle()
	x7,y7=width+9,y7
	x8,y8=x7,y9
	x9,y9=x7-20,y8
	conky_draw_bottom_angle()
	cairo_set_line_width (cr,1)
	cairo_set_source_rgba (cr,red,green,blue,alpha)
	x7,y7=(width+12)/2-25,y8
	x8,y8=(width+12)/2+25,y8
	cairo_move_to (cr,x7,y7)
	cairo_line_to (cr,x8,y8)
	cairo_stroke(cr)
end

-- Background --
function conky_draw_background(width, height)
	cairo_set_source_rgba (cr,0,0,0,0.38)
	cairo_rectangle(cr,1,32,width+8,height-24)
	cairo_fill(cr)
end

-- Window --
function conky_draw_window(width, height)
	conky_draw_tab(width, height)
	conky_draw_bottom(width, height)
	conky_draw_background(width, height)
end

function conky_main(width, height)
	if conky_window == nil then return end
	local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
	cr = cairo_create(cs)
	
	cairo_set_source_rgba (cr,red,green,blue,alpha)
	conky_draw_window(width, height)
	
	cairo_destroy(cr)
	cairo_surface_destroy(cs)
	cr = nil
end
