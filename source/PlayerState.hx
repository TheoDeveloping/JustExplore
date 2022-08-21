package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.math.FlxPoint;

import flixel.ui.FlxVirtualPad;

class PlayerState extends FlxSprite
{
    var Player:FlxSprite;
    
    public var vpad:FlxVirtualPad;
    
	var leftKey:Bool = vpad.buttonLeft.pressed || FlxG.keys.anyPressed([LEFT, A]);
	var rightKey:Bool = vpad.buttonRight.pressed || FlxG.keys.anyPressed([RIGHT, D]);
    var upKey:Bool = vpad.buttonUp.pressed || FlxG.keys.anyPressed([UP, W]);
	var downKey:Bool = vpad.buttonDown.pressed || FlxG.keys.anyPressed([DOWN, S]);

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

        /*changed to VirtualPadState xd
        override function create()
        {
            vpad = new FlxVirtualPad(FlxDPadMode.FULL, FlxActionMode.NONE);
		    add(vpad);
		    
		    super.create();
        }
        */

        override public function update(elapsed:Float)
            {
                super.update(elapsed);
                //Move The Characters With The Keys

                if (leftKey)

                    {
                        velocity.x = -velocityInt;
                        animation.play("left");
                    }
                else if (rightKey)
                    {
                        velocity.x = velocityInt;
                        animation.play("right");
                    }

                else if (upKey)

                    {
                        velocity.y = -velocityInt;
                        animation.play("up");
                    }

                else if (downKey)

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