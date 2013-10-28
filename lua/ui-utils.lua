local _ = wesnoth.textdomain "wesnoth-utbs"
local old_unit_status = wesnoth.theme_items.unit_status
	
function wesnoth.theme_items.unit_status()
	local u = wesnoth.get_displayed_unit()
	if not u then return {} end
	local s = old_unit_status()
		
	if u.status.stunned then
		table.insert(s, { "element",  { image = "misc/stunned-status-icon.png",
		                                tooltip = _"stunned: This unit is stunned. It cannot enforce its Zone of Control."
		} } )
	end

	if u.status.dehydrated then
		table.insert(s, { "element",  { image = "misc/dehydration-status.png",
		                                tooltip = _"dehydrated: This unit is dehydrated. Its attack power has been reduced until it has been rehydrated."
		} } )
	end
		
	return s
end
