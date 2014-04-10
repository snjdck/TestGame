package snjdck.tesla.modules.login
{
	import flash.mvc.Module;
	import flash.viewport.IViewPort;
	import flash.viewport.IViewPortLayer;
	import flash.viewport.ViewPortLayerName;
	
	import snjdck.tesla.modules.login.ui.LoginPane;
	import snjdck.tesla.modules.login.v.LoginPaneMediator;
	
	public class LoginModule extends Module
	{
		[Inject]
		public var viewport:IViewPort;
		
		public function LoginModule()
		{
			super();
		}
		
		override public function initAllControllers():void
		{
		}
		
		override public function initAllModels():void
		{
		}
		
		override public function initAllServices():void
		{
		}
		
		override public function initAllViews():void
		{
			mapView(LoginPane, LoginPaneMediator);
		}
		
		override public function onStartup():void
		{
			notify(LoginMsg.SHOW_LOGIN_PANE);
		}
	}
}