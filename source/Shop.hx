import flixel.ui.FlxButton;
import flixel.FlxG;
import flixel.FlxState;

class Shop extends FlxState
{
	public var desk:PixelSprite;
	public var keeper:PixelSprite;

	public function setKeeperState(state:KeeperStates)
		keeper.loadGraphic('assets/images/shop/keeper-' + state + '.png');

	public var backButton:FlxButton;

	override function create()
	{
		super.create();

		keeper = new PixelSprite();
		add(keeper);

		setKeeperState(idle);
		keeper.screenCenter();

		desk = new PixelSprite();
		add(desk);
		desk.loadGraphic('assets/images/shop/desk.png');

		desk.screenCenter();

		backButton = new FlxButton(0,0, "Back", () -> FlxG.switchState(() -> new PlayState()));
		add(backButton);

		backButton.screenCenter();
		backButton.y += backButton.height * 15;
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		PlayState.tick++;
		FlxG.watch.addQuick('Tick', PlayState.tick);
	}
}
