package;

import haxe.ui.Toolkit;
import openfl.display.Sprite;
import openfl.events.KeyboardEvent;
import openfl.ui.Keyboard;

class Main extends Sprite
{
	var _ui:UI;

	public function new()
	{
		super();

		// Create UI
		Toolkit.init();
		_ui = new UI();

		stage.addEventListener(KeyboardEvent.KEY_DOWN, keyHandler);

		addChild(_ui);

	}

	function keyHandler(event:KeyboardEvent):Void
	{
		switch (event.keyCode)
		{
			case Keyboard.H:
				_ui.toggleVisibility();
			default:
		}
	}		
}
