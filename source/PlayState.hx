package;

import lime.app.Application;
import flixel.text.FlxText;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var versionText:FlxText = new FlxText(2, 2, 0, Application.current.meta.get("version"), 8);

	public var player:PixelSprite;
	public var playerState:PlayerStates;

	public function setPlayerState(state:PlayerStates):Void
	{
		player.loadGraphic('assets/images/player/' + state + '.png');
		playerState = state;
		trace("New player state: " + playerState);
	}

	override public function create()
	{
		super.create();

		player = new PixelSprite();
		setPlayerState(regular);
		player.screenCenter();
		add(player);

		versionText.alpha = 0.25;
		add(versionText);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
