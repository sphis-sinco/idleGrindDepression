class Building extends PixelSprite
{
	public var level(default, set):Int = 1;

    function set_level(level:Int):Int
    {
        if (level > max_level) level  = max_level;
        if (level < min_level) level  = min_level;

        return level;
    }

	public var max_level(default, never):Int = 1;
	public var min_level(default, never):Int = 1;

	override public function new(level:Int = 1, ?X:Float, ?Y:Float)
	{
		super(X, Y);

		this.level = level;

		updateAsset();
	}

	public function updateAsset()
	{
		loadGraphic('assets/images/building/level_' + level + '.png');
	}
}
