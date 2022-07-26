package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.math.FlxPoint;

class PlayerState extends FlxSprite
{
    var Player:FlxSprite;
    private var velocityInt:Float;
    
    public function new(X: Float, Y: Float)
        {
            super(X, Y);
            //Character's Sprite Code
            Player = new FlxSprite();
            loadGraphic('assets/images/playerSprites.png', true, 59, 88);
            animation.add("up", [4, 5, 6, 7, 4], 6, false);
            animation.add("down", [0, 1, 2, 3, 0], 6, false);
            animation.add("left", [8, 9, 10, 11, 8], 6, false);
            animation.add("right", [12, 13, 14, 13], 6, false);
            //Character's Max Velocity
            maxVelocity.x = 130;
            maxVelocity.y = 130;
            //Character Size
            scale.set(1, 1);
            //For The Character To Stop
            drag.x = 500;
            drag.y = 500;
            
            //Character Velocity
            velocityInt = 120;

        }
        override public function update(elapsed:Float)
            {
                super.update(elapsed);
                //Move The Characters With The Keys
                if (FlxG.keys.pressed.A || FlxG.keys.pressed.LEFT)
                    {
                        velocity.x = -velocityInt;
                        animation.play("left");
                    }
                else if (FlxG.keys.pressed.D || FlxG.keys.pressed.RIGHT)
                    {
                        velocity.x = velocityInt;
                        animation.play("right");
                    }
                else if (FlxG.keys.pressed.W || FlxG.keys.pressed.UP)
                    {
                        velocity.y = -velocityInt;
                        animation.play("up");
                    }
                else if (FlxG.keys.pressed.S || FlxG.keys.pressed.DOWN)
                    {
                        velocity.y = velocityInt;
                        animation.play("down");
                    }
                else
                    {
                        velocity.x = 0;
                        velocity.y = 0;
                    }
                

            }
}