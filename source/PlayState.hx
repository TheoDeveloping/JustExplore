package;

import flixel.FlxState;
import flixel.FlxG;


class PlayState extends FlxState
{
	var Player: PlayerState;

	override public function create()
	{
		Player = new PlayerState(100, 100);
		Player.screenCenter();
		add(Player);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (FlxG.keys.justPressed.ESCAPE)
			{
				openSubState(new PauseSubState());	
			}
		if (FlxG.keys.justPressed.G)
			{
				openSubState(new GameOverSubState());	
			}
			
		super.update(elapsed);
	}
}
