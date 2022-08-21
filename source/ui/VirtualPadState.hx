package ui;

import flixel.ui.FlxVirtualPad;

class VirtualPadState extends FlxVirtualPad
{
    public var virtualPad:FlxVirtualPad;
    
    public function new()
        {
            virtualPad = new FlxVirtualPad(FlxDPadMode.FULL, FlxActionMode.NONE);
		    add(virtualPad);
		    super();
        }
}