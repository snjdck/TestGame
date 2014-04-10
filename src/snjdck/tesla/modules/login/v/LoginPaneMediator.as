package snjdck.tesla.modules.login.v
{
	import flash.mvc.view.Mediator;
	import flash.mvc.view.argType.ArgType;
	
	import org.aswing.AsWingUtils;
	import org.aswing.JFrame;
	import org.aswing.event.AWEvent;
	
	import snjdck.tesla.modules.login.LoginMsg;
	import snjdck.tesla.modules.login.ui.LoginPane;
	import snjdck.tesla.services.IMainService;
	
	public class LoginPaneMediator extends Mediator
	{
		[Inject]
		public var mainService:IMainService;
		
		private var _loginPane:LoginPane;
		private var _frame:JFrame;
		
		public function LoginPaneMediator(viewComponent:LoginPane)
		{
			super(viewComponent);
			_loginPane = viewComponent;
			
			_frame = new JFrame(null, "LoginPane");
			_frame.setResizable(false);
			_frame.setContentPane(_loginPane);
			_frame.pack();
		}
		
		override protected function onReg():void
		{
			addMsgHandler(LoginMsg.SHOW_LOGIN_PANE, __onShowPane);
			
			addEvtHandler(_frame.getTitleBar().getCloseButton(), AWEvent.ACT, __onClose);
			addEvtHandler(_loginPane.getLoginButton(), AWEvent.ACT, __onLogin);
		}
		
		private function __onLogin(evt:AWEvent):void
		{
			mainService.show();
			_frame.hide();
		}
		
		private function __onClose(evt:AWEvent):void
		{
			trace("closed");
		}
		
		private function __onShowPane():void
		{
			AsWingUtils.centerLocate(_frame);
			_frame.show();
		}
		
		override protected function onDel():void
		{
		}
	}
}