WireToolSetup.setCategory( "Physics" )
WireToolSetup.open( "trail", "Trail", "gmod_wire_trail", WireToolMakeTrail, "Trails" )

if CLIENT then
	language.Add( "tool.wire_trail.name", "Trail Tool (Wire)" )
	language.Add( "tool.wire_trail.desc", "Spawns a wired trail." )
	language.Add( "tool.wire_trail.0", "Primary: Create/Update trail" )
	language.Add( "WireTrailTool_trail", "Trail:" )
	language.Add( "WireTrailTool_mat", "Material:" )
end
WireToolSetup.BaseLang("Trails")
WireToolSetup.SetupMax( 20, TOOL.Mode.."s" , "You've hit the Wire "..TOOL.PluralName.." limit!" )

TOOL.ClientConVar = {
	material = ""
}

TOOL.Model = "models/jaanus/wiretool/wiretool_range.mdl"

function TOOL.BuildCPanel(panel)
	WireToolHelpers.MakePresetControl(panel, "wire_trail")
	panel:AddControl( "MatSelect", { Height = "2", Label = "#WireTrailTool_mat", ConVar = "wire_trail_material", Options = list.Get( "trail_materials" ), ItemWidth = 64, ItemHeight = 64 } )
end
