declare_plugin("USN North Carolina by Markindel Cadarth",
----- NCB =  North Carolina Battleship
{
image     	 = "NCB.bmp",
installed 	 = true, 
dirName	  	 = current_mod_path,

fileMenuName = _("NCB"),
version		 = "1.2.14",		 
state		 = "installed",
info		 = _("Wood by Markindel"),


encyclopedia_path = current_mod_path .. '/Encyclopedia',
})
----------------------------------------------------------------------------------------
dofile(current_mod_path..'/NorthCarolina.lua')
dofile(current_mod_path..'/NorthCarolina_Ammo.lua')

plugin_done()