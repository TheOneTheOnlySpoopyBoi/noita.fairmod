local ui = dofile_once("mods/noita.fairmod/files/content/instruction_booklet/gui.lua") --- @class instruction_booklet_gui

ui:update()

function enabled_changed(entity_id, is_enabled)
	if is_enabled then
		ui.gui = GuiCreate()
	else
		GuiDestroy(ui.gui)
	end
end