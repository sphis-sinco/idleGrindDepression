package;

import flixel.ui.FlxButton;
import flixel.FlxG;
import lime.app.Application;
import flixel.FlxState;

class PlayState extends FlxState
{
	public var player:PixelSprite;
	public var playerState:PlayerStates;

	public function setPlayerState(state:PlayerStates):Void
	{
		player.loadGraphic('assets/images/player/' + state + '.png');
		playerState = state;
		trace("New player state: " + playerState);
	}

	public var tick:Int = 0;

	public var shopButton:FlxButton;

	public static var instance:PlayState;

	override public function create()
	{
		super.create();

		if (instance != null)
		{
			this.tick = instance.tick;
			
			instance = null;
		}
		instance = this;

		player = new PixelSprite();
		setPlayerState(regular);
		player.screenCenter();
		add(player);

		shopButton = new FlxButton(0, 0, "Shop", () -> FlxG.switchState(() -> new Shop()));
		add(shopButton);

		shopButton.screenCenter();
		shopButton.y += shopButton.height * 2;
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);

		tick++;
		FlxG.watch.addQuick('Tick', tick);
	}
}
