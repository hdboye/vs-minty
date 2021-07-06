package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;

class ProPiracy extends MusicBeatState
{
    override public function create():Void
    {
        var thing:FlxSprite = new FlxSprite(0,0);
        thing.loadGraphic(Paths.image('piracy'));
        add(thing);
        super.create();
    }

    override public function update(elapsed:Float):Void
    {
        if(FlxG.keys.justPressed.ENTER)
        {
            FlxG.switchState(new MainMenuState());
        }
        super.update(elapsed);
    }
}