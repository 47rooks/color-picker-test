package;

import haxe.ui.components.OptionBox;
import haxe.ui.containers.VBox;
import haxe.ui.util.Color;

/**
 * UI is basically a bean class providing programmatic access to all properties which may set by
 * HaxeUI widgets as defined in ui.xml.
 */
@:build(haxe.ui.ComponentBuilder.build("assets/ui.xml"))
class UI extends VBox
{
	@:bind(lightAmbient.value)
	public var lightAmbientColor(default, null):Color;

	public function new()
	{
		super();
		controls.visible = false;
		hudKeyMessage.visible = true;
	}

	public function toggleVisibility():Void
	{
		controls.visible = !controls.visible;
	}
}

