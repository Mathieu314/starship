require 'cairo'

click_start=1
buttons={}

function conky_main()
if conky_window == nil then return end
local cs = cairo_xlib_surface_create(conky_window.display, conky_window.drawable, conky_window.visual, conky_window.width, conky_window.height)
cr = cairo_create(cs)
local updates=tonumber(conky_parse('${updates}'))
if updates>5 then
	localx, localy, localnowx, localnowy=clickfunction()
	
	-- Set defaults
	default_font="mono"
	default_font_size=7.768
	default_color=0xffffff
	default_alpha=1
	default_image_width=50
	default_image_height=50

	-- button setup
	local button_name="cpu"
	local blx=100.5
	local bly=100.5
	local height=20
	local width=30

	-- setup cpu section position
	local cpu_blx=blx+width+2
	local cpu_bly=100.5
	local overlap=width


	--######
	-- calculate if click was inside box and set actions
	if localx>=blx and localx<=blx+width and localy<=bly and localy>=bly-height and buttons[tostring(button_name)]~=1 then
		buttons[tostring(button_name)]=1
	else if localx>=blx and localx<=blx+width and localy<=bly and localy>=bly-height and buttons[tostring(button_name)]==1 then
		buttons[tostring(button_name)]=0
	else if localx<blx and localx>blx+width and localy<bly and localy>bly-height and buttons[tostring(button_name)]~=1 then
		buttons[tostring(button_name)]=0 end
	-- end of calculations ######

	-- mouseover
