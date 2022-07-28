package;

import flixel.FlxState;
import flixel.FlxG;


class PlayState extends FlxState
{
<<<<<<< HEAD
	var Player: PlayerState;
=======
<<<<<<< HEAD
	var Player: PlayerState;
=======
	var Player:PlayerState;
>>>>>>> 6b1228c (added with termux bc i am a fuking pro turi ip ip)
>>>>>>> c3f8ff3 (a cool commit message)

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
