package snjdck.tesla.modules.main.s
{
	import snjdck.tesla.kernel.services.support.Service;
	import snjdck.tesla.services.IMainService;
	
	public class MainService extends Service implements IMainService
	{
		public function MainService()
		{
			super();
		}
		
		public function show():void
		{
			trace("show main service");
		}
	}
}