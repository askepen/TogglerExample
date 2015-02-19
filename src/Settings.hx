import com.grapefrukt.utils.Toggler;


/**
 * ...
 * @author Aske Ching
*/
 
class Settings
{
		//@hidden hides the the variable from the toggler
		@hidden() public static var SOME_HIDDEN_VAR		:Int	= 42;
		
		//The letters before first underscore indicates what category they are in.
		//In this example it's "CAT1" and "CAT2" and so on
		
		public static var CAT1_ITEM_1					:Int	= 404;
		public static var CAT1_ITEM_2					:Float	= 22.4;
		public static var CAT1_ITEM_3					:Int	= 666;
		
		public static var CAT2_ITEM_1					:Int	= 11;
		public static var CAT2_ITEM_2					:Float	= 10000;
		public static var CAT2_ITEM_3					:Bool	= false;

        //@range sets the range of the scaler
        @range(-700,700) public static var CAT3_ITEM1	:Int	= 550;
        
        
        
        @range(0,600) public static var PLAYER_X		:Int	= 200;
        @range(0,400) public static var PLAYER_Y		:Int	= 400;
}