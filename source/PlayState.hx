package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.ui.FlxVirtualPad;

class PlayState extends FlxState
{
	var Player: PlayerState;
	var vPad:FlxVirtualPad;
	
	//some player state thingos
	var leftKey:Bool = vPad.buttonLeft.pressed || FlxG.keys.anyPressed([LEFT, A]);
	var rightKey:Bool = vPad.buttonRight.pressed || FlxG.keys.anyPressed([RIGHT, D]);
    var upKey:Bool = vPad.buttonUp.pressed || FlxG.keys.anyPressed([UP, W]);
	var downKey:Bool = vPad.buttonDown.pressed || FlxG.keys.anyPressed([DOWN, S]);

	override public function create()
	{
		Player = new PlayerState(100, 100);
		Player.screenCenter();
		add(Player);
		
		vPad = new FlxVirtualPad(FlxDPadMode.FULL, FlxActionMode.NONE);
		add(vPad);

		super.create();
	}

	override public function update(elapsed:Float)
	{
		if (Player.x = width || Player.x = width || Player.y = width || Player.y = width)
			{
				openSubState(new GameOverSubState());	
			}
		if (FlxG.keys.justPressed.ESCAPE)
			{
				openSubState(new PauseSubState());	
			}
			
		super.update(elapsed);
	}
}
