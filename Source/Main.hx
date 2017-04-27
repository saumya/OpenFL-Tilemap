package;


import openfl.display.BitmapData;
import openfl.display.Bitmap;
import openfl.display.Sprite;
import openfl.Assets;


class Main extends Sprite {
	
	
	public function new () {
		
		super ();
		/*
		var bitmapData = Assets.getBitmapData ("assets/91825.png");
		var bitmap = new Bitmap (bitmapData);
		addChild (bitmap);
		*/
		addChild(new MyGame());
	}
	
	
}