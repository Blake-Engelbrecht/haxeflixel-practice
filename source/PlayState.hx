package;

import flixel.text.FlxText;
import flixel.FlxState;
import flixel.util.FlxColor;

class PlayState extends FlxState
{
	var hero:Hero;
	var helloText:FlxText;

	override public function create()
	{	
		
		hero = new Hero(20, 20);
		add(hero);

		super.create();

		var helloText = new flixel.text.FlxText(0, 0, 0, "Hello World!", 64);
		helloText.screenCenter();
		add(helloText);
	}

	override public function update(elapsed:Float):Void
	{

		if (hero.x <= 0)
			{
				hero.x = 640;
				hero.color = 0xFFFF00FF;
			}
			else if (hero.x >= 640)
				{
					hero.x = 0;
					hero.color = 0xFFFF0000;
				}
			else if (hero.y <= 0)
				{
					hero.y = 520;
					hero.color =0xFF00FF00;
				}
			else if (hero.y >= 520)
				{
					hero.y = 0;
					hero.color = 0xFF0000FF;
				}

		super.update(elapsed);
	}
}
