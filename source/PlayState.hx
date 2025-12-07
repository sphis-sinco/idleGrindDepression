package;

import flixel.ui.FlxButton;
import flixel.FlxG;
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

	public static var tick:Null<Int> = null;

	public var shopButton:FlxButton;

	override public function create()
	{
		super.create();
		
		if (tick == null)
			tick = 0;

		player = new PixelSprite();
		setPlayerState(regular);
		player.screenCenter();
		add(player);

		shopButton = new FlxButton(0,0, "Shop", () -> FlxG.switchState(() -> new Shop()));
		add(shopButton);

		versionText.alpha = 0.25;
		add(versionText);
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		tick++;
		FlxG.watch.addQuick('Tick', tick);
	}
}
