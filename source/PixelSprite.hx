import flixel.FlxSprite;

class PixelSprite extends FlxSprite
{
	public static var SCALE:Float = 4;

	override public function new(?X:Float, ?Y:Float)
	{
		super(X, Y);

		resetScale();
	}

	public function resetScale()
	{
		this.scale.set(SCALE, SCALE);
		updateHitbox();
	}
}
