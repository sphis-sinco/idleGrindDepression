import flixel.FlxG;
import flixel.FlxState;

class Shop extends FlxState
{
	override function create()
	{
		super.create();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

        PlayState.tick++;
		FlxG.watch.addQuick('Tick', PlayState.tick);
	}
}
