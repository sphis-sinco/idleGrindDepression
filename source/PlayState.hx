package;

import lime.app.Application;
import flixel.text.FlxText;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var versionText:FlxText = new FlxText(2, 2, 0, Application.current.meta.get("version"), 8);

	override public function create()
	{
		super.create();

		versionText.alpha = 0.25;
		add(versionText);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
