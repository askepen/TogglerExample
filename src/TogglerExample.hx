import flash.events.Event;
import flash.display.Sprite;
import flash.Lib;
import com.grapefrukt.utils.Toggler;

/**
 * ...
 * @author Aske Ching
 */
 
 
class TogglerExample extends Sprite 
{
	var inited:Bool = false;
	var circle:Sprite = new Sprite();


	public function new () 
	{
		super ();
		addEventListener(Event.ADDED_TO_STAGE, added);
	}
	
	
	function added(event) 
	{
		removeEventListener(Event.ADDED_TO_STAGE, added);
		init();
	}
	

	function init() 
	{
		if (inited) return;
		inited = true;
		
		addEventListener(Event.ENTER_FRAME, enterFrame);
		
		addChild(circle);
		
#if debug
		//if we are in a debug build, then add the toggler
		var t = new Toggler(Settings,true,300);
        this.addChild(t);
#end
	}
	
	
	function enterFrame(e)
	{
		circle.graphics.clear();
		
		//make it red:
		circle.graphics.beginFill(0xff3333);
		
		//get the current settings for the circles position:
		circle.graphics.drawCircle(Settings.PLAYER_X, Settings.PLAYER_Y, 30); 
		
		circle.graphics.endFill();
		
	}
}
