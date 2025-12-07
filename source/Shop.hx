import flixel.FlxG;
import flixel.FlxState;

class Shop extends FlxState
{
	public var desk:PixelSprite;
	public var keeper:PixelSprite;

	public function setKeeperState(state:KeeperStates)
		keeper.loadGraphic('assets/images/shop/keeper-' + state + '.png');

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
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		PlayState.tick++;
		FlxG.watch.addQuick('Tick', PlayState.tick);
	}
}
