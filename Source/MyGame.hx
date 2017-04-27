package;

import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.display.Tile;
import openfl.display.Tilemap;
import openfl.display.Tileset;
import openfl.geom.Rectangle;

import openfl.events.Event;

import openfl.Assets;

/**
 * A basic example of TileMap
 * @author saumya
 */

 class MyGame extends Sprite
{
	 private var tilemap:Tilemap;
	 private var tileset:Tileset;

	public function new() 
	{
		super();
		addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
	}
	
	private function onAddedToStage(e:Event):Void{
		init();
	}
	
	public function init():Void{
		var bData:BitmapData = Assets.getBitmapData("assets/91825.png");
		tileset = new Tileset(bData);
		
		tilemap = new Tilemap(stage.stageWidth, stage.stageHeight, tileset);
		addChild(tilemap);
		
		// Adding the graphics
		var i1:Int = tileset.addRect(new Rectangle(1, 3, 24, 58));
		var i2:Int = tileset.addRect(new Rectangle(30, 3, 24, 58));
		var i3:Int = tileset.addRect(new Rectangle(62, 3, 20, 58));
		var i4:Int = tileset.addRect(new Rectangle(90, 3, 20, 58));
		var i5:Int = tileset.addRect(new Rectangle(118, 3, 22, 58));
		var i6:Int = tileset.addRect(new Rectangle(146, 3, 23, 58));
		
		var t1:Tile = new Tile(i1, 100, 100);
		tilemap.addTile(t1);
		
		var t2:Tile = new Tile(i2, 130, 100);
		tilemap.addTile(t2);
		
		var t3:Tile = new Tile(i3, 160, 100);
		tilemap.addTile(t3);
		
		var t4:Tile = new Tile(i4, 184, 100);
		tilemap.addTile(t4);
		
		var t5:Tile = new Tile(i5, 210, 100);
		tilemap.addTile(t5);
		
		var t6:Tile = new Tile(i6, 240, 100);
		tilemap.addTile(t6);
	}
	
}