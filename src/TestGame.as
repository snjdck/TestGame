package
{
	import flash.display.Sprite;
	import flash.mvc.Application;
	
	import org.aswing.AsWingManager;
	
	import snjdck.tesla.GameEngine;
	import snjdck.tesla.modules.bag.BagModule;
	import snjdck.tesla.modules.chat.ChatModule;
	import snjdck.tesla.modules.debug.DebugModule;
	import snjdck.tesla.modules.friend.FriendModule;
	import snjdck.tesla.modules.loading.LoadingModule;
	import snjdck.tesla.modules.login.LoginModule;
	import snjdck.tesla.modules.main.MainModule;
	import snjdck.tesla.modules.mission.MissionModule;
	import snjdck.tesla.modules.notification.NotificationModule;
	import snjdck.tesla.modules.player.PlayerModule;
	import snjdck.tesla.modules.shop.ShopModule;
	
	public class TestGame extends Sprite
	{
		private var app:Application;
		
		public function TestGame()
		{
			AsWingManager.initAsStandard(this);
			
			app = new GameEngine(this);
			
			app.regModule(new LoginModule());
			app.regModule(new BagModule());
			app.regModule(new ChatModule());
			app.regModule(new DebugModule());
			app.regModule(new FriendModule());
			app.regModule(new LoadingModule());
			app.regModule(new MainModule());
			app.regModule(new MissionModule());
			app.regModule(new NotificationModule());
			app.regModule(new PlayerModule());
			app.regModule(new ShopModule());
			
			app.startup();
		}
	}
}