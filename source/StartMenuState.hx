package;

import flixel.text.FlxText;
import flixel.FlxG;
import flixel.util.FlxColor;
import flixel.FlxState;
import flixel.util.FlxTimer;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;

class StartMenuState extends FlxState
{
    var titleText:FlxText;
    var aboutText:FlxText;
    var startText:FlxText;

    var enterCounter:Int;

	        override public function create()
            {  
                titleText = new FlxText();
                titleText.text = "Explorin' World";
                titleText.color = FlxColor.CYAN;
                titleText.setBorderStyle(FlxTextBorderStyle.SHADOW, FlxColor.BLUE, 4);
                titleText.alignment = FlxTextAlign.CENTER; 
                titleText.size = 32;
                titleText.screenCenter(X);
                titleText.y = 200;
                add(titleText);

                bgColor = new FlxColor(0xFF12A8E8);

                super.create();

                enterCounter = 0;

                FlxTween.tween(titleText,{y:120}, 0.6, {type: PINGPONG, ease: FlxEase.quadInOut});
            }
            override public function update(elapsed:Float)
                {

                    if (FlxG.keys.justPressed.ENTER)
                        {
                            enterCounter ++;
                        }
                    if (enterCounter == 1)
                        {
                            aboutText = new FlxText();
                            aboutText.text = "This Is My First Game, Please Rate Them :b";
                            aboutText.setBorderStyle(FlxTextBorderStyle.SHADOW, 4);
                            aboutText.size = 23;
                            aboutText.y = 50;
                            aboutText.screenCenter(X);
                            add(aboutText);
                        }
                    else if (enterCounter == 2)
                        {
                            startText = new FlxText();
                            startText.text = "Press Space To Play The Game";
                            startText.setBorderStyle(FlxTextBorderStyle.SHADOW, 4);
                            startText.size = 23;
                            startText.y = 80;
                            startText.screenCenter(X);
                            add(startText);
                        }

                    if (FlxG.keys.justPressed.SPACE && enterCounter > 1)
                        {
                            FlxG.sound.music.stop();

                            FlxG.camera.flash(FlxColor.WHITE, 1);

                            FlxG.sound.load("assets/sounds/titleShoot.ogg", 1, true);
                            
                            new FlxTimer().start(0.5, function(tmr:FlxTimer)
                                    {
                                        FlxG.switchState(new PlayState());
                                    });
                        }

                    if (FlxG.sound.music == null)
                        {
                            FlxG.sound.playMusic("assets/music/title.ogg", 1, true);
                        }

                    super.update(elapsed);

                }
}