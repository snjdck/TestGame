package snjdck.tesla.modules.main
{
	import flash.mvc.Module;
	
	import snjdck.tesla.modules.main.s.MainService;
	import snjdck.tesla.services.IMainService;
	
	public class MainModule extends Module
	{
		public function MainModule()
		{
			super();
		}
		
		override public function initAllControllers():void
		{
			// TODO Auto Generated method stub
			super.initAllControllers();
		}
		
		override public function initAllModels():void
		{
			// TODO Auto Generated method stub
			super.initAllModels();
		}
		
		override public function initAllServices():void
		{
			regService(IMainService, MainService);
		}
		
		override public function initAllViews():void
		{
			// TODO Auto Generated method stub
			super.initAllViews();
		}
		
	}
}