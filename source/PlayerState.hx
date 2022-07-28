package;

import flixel.FlxSprite;
import flixel.FlxG;
import flixel.FlxState;
import flixel.util.FlxColor;
import flixel.math.FlxPoint;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
import ui.VirtualPadState;
>>>>>>> 6b1228c (added with termux bc i am a fuking pro turi ip ip)
>>>>>>> c3f8ff3 (a cool commit message)

class PlayerState extends FlxSprite
{
    var Player:FlxSprite;
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
    
    public var vpad:VirtualPadState;
    
	var leftKey:Bool = vpad.buttonLeft.pressed || FlxG.keys.anyPressed([LEFT, A]);
	var rightKey:Bool = vpad.buttonRight.pressed || FlxG.keys.anyPressed([RIGHT, D]);
    var upKey:Bool = vpad.buttonUp.pressed || FlxG.keys.anyPressed([UP, W]);
	var downKey:Bool = vpad.buttonDown.pressed || FlxG.keys.anyPressed([DOWN, S]);

    
>>>>>>> 6b1228c (added with termux bc i am a fuking pro turi ip ip)
>>>>>>> c3f8ff3 (a cool commit message)
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
<<<<<<< HEAD
=======
<<<<<<< HEAD
=======
        /*
        override function create()
        {
            vpad = new FlxVirtualPad(FlxDPadMode.FULL, FlxActionMode.NONE);
		    add(vpad);
		    
		    super.create();
        }
        */
>>>>>>> 6b1228c (added with termux bc i am a fuking pro turi ip ip)
>>>>>>> c3f8ff3 (a cool commit message)
        override public function update(elapsed:Float)
            {
                super.update(elapsed);
                //Move The Characters With The Keys
<<<<<<< HEAD
                if (FlxG.keys.pressed.A || FlxG.keys.pressed.LEFT)
=======
<<<<<<< HEAD
                if (FlxG.keys.pressed.A || FlxG.keys.pressed.LEFT)
=======
                if (FlxG.keys.anyPressed([LEFT, A]))
>>>>>>> 6b1228c (added with termux bc i am a fuking pro turi ip ip)
>>>>>>> c3f8ff3 (a cool commit message)
                    {
                        velocity.x = -velocityInt;
                        animation.play("left");
                    }
<<<<<<< HEAD
                else if (FlxG.keys.pressed.D || FlxG.keys.pressed.RIGHT)
=======
<<<<<<< HEAD
                else if (FlxG.keys.pressed.D || FlxG.keys.pressed.RIGHT)
=======
                else if (FlxG.keys.anyPressed([RIGHT, D]))
>>>>>>> 6b1228c (added with termux bc i am a fuking pro turi ip ip)
>>>>>>> c3f8ff3 (a cool commit message)
                    {
                        velocity.x = velocityInt;
                        animation.play("right");
                    }
<<<<<<< HEAD
                else if (FlxG.keys.pressed.W || FlxG.keys.pressed.UP)
=======
<<<<<<< HEAD
                else if (FlxG.keys.pressed.W || FlxG.keys.pressed.UP)
=======
                else if (FlxG.keys.anyPressed([UP, W]))
>>>>>>> 6b1228c (added with termux bc i am a fuking pro turi ip ip)
>>>>>>> c3f8ff3 (a cool commit message)
                    {
                        velocity.y = -velocityInt;
                        animation.play("up");
                    }
<<<<<<< HEAD
                else if (FlxG.keys.pressed.S || FlxG.keys.pressed.DOWN)
=======
<<<<<<< HEAD
                else if (FlxG.keys.pressed.S || FlxG.keys.pressed.DOWN)
=======
                else if (FlxG.keys.anyPressed([DOWN, S]))
>>>>>>> 6b1228c (added with termux bc i am a fuking pro turi ip ip)
>>>>>>> c3f8ff3 (a cool commit message)
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