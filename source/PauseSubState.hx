package;

import flixel.FlxSubState;
import flixel.FlxG;
import flixel.text.FlxText;
import flixel.FlxSprite;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class PauseSubState extends FlxSubState
{
    var aboutTxt:FlxText;
    var menuTxt:FlxText;
    var resetTxt:FlxText;
    var returnTxt:FlxText;

    override public function create()
        {
            var bg:FlxSprite = new FlxSprite().makeGraphic(FlxG.width, FlxG.height, FlxColor.BLACK);
            bg.alpha = 0.3;
            bg.scrollFactor.set();
            add(bg);

            aboutTxt = new FlxText();
            aboutTxt.text = "Pause Menu";
            aboutTxt.setBorderStyle(FlxTextBorderStyle.SHADOW, 4);
            aboutTxt.size = 23;
            aboutTxt.y = 50;
            aboutTxt.screenCenter(X);
            add(aboutTxt);

                new FlxTimer().start(0.4, function(tmr:FlxTimer)
                    {
                        menuTxt = new FlxText();
                        menuTxt.text = "Go To Menu (M)";
                        menuTxt.setBorderStyle(FlxTextBorderStyle.SHADOW, 4);
                        menuTxt.size = 23;
                        menuTxt.y = 200;
                        menuTxt.x = 350;
                        add(menuTxt);

                        resetTxt = new FlxText();
                        resetTxt.text = "Reset Game (R)";
                        resetTxt.setBorderStyle(FlxTextBorderStyle.SHADOW, 4);
                        resetTxt.size = 23;
                        resetTxt.y = 200;
                        resetTxt.x = 60;
                        add(resetTxt);

                        returnTxt = new FlxText();
                        returnTxt.text = "Return (Esc)";
                        returnTxt.setBorderStyle(FlxTextBorderStyle.SHADOW, 4);
                        returnTxt.size = 23;
                        returnTxt.screenCenter(X);
                        returnTxt.y = 300;
                        add(returnTxt);
                    });

            super.create();
        }
    override public function update(elapsed:Float)
        {
            if (FlxG.keys.justPressed.ESCAPE)
                {
                    close();
                }
            if (FlxG.keys.justPressed.R)
                {
                    FlxG.switchState(new PlayState());
                }
            if (FlxG.keys.justPressed.M)
                {
                    FlxG.switchState(new StartMenuState());
                    FlxG.sound.playMusic("assets/music/title.ogg", 1, true);
                }
            super.update(elapsed);
        }
}