package;

import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public static var versionText:FlxText = new FlxText(2, 2, 0, Application.current.meta.get("version"), 8);

	public function new()
	{
		super();
		addChild(new FlxGame(0, 0, PlayState));

		versionText.alpha = 0.25;
		addChild(versionText);
	}
}
