package;

import flixel.FlxSubState;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import flixel.tweens.FlxTween;

class GameOverSubState extends FlxSubState
{
    var alphaFloat:Float;
    override public function create()
        {
            alphaFloat = 0.3;
            
            new FlxTimer().start(0.4, function(tmr:FlxTimer)
                {
                    var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
                    bg.alpha = alphaFloat;
                    bg.scrollFactor.set();
                    add(bg);
                });
            

            super.create();
        }
    
        override public function update(elapsed:Float)
        {
            if (FlxG.keys.pressed.ESCAPE)
                {
                    close();
                }
            super.update(elapsed);
        }
}