package;

import flixel.FlxState;
import flixel.FlxG;
import flixel.FlxSprite;

class WowYouDidItState extends MusicBeatState
{
    override public function create():Void
    {
        var thing:FlxSprite = new FlxSprite(0,0);
        thing.loadGraphic(Paths.image('bye'));
        add(thing);
        FlxG.save.data.finished = true;
        super.create();
    }

    override public function update(elapsed:Float):Void
    {
        if(FlxG.keys.justPressed.ENTER)
        {
            if(PlayState.isStoryMode)
                FlxG.switchState(new MainMenuState());
            else
                FlxG.switchState(new FreeplayState());
        }
        super.update(elapsed);
    }
}