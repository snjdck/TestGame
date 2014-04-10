package snjdck.tesla.modules.login.v
{
	import flash.mvc.view.Mediator;
	import flash.mvc.view.argType.ArgType;
	
	import org.aswing.AsWingUtils;
	import org.aswing.JFrame;
	import org.aswing.event.AWEvent;
	
	import snjdck.tesla.modules.login.LoginMsg;
	import snjdck.tesla.modules.login.ui.LoginPanel;
	import snjdck.tesla.services.IMainService;
	
	public class LoginPaneMediator extends Mediator
	{
		[Inject]
		public var mainService:IMainService;
		
		private var _loginPanel:LoginPanel;
		
		public function LoginPaneMediator(viewComponent:LoginPanel)
		{
			super(viewComponent);
			_loginPanel = viewComponent;
			_loginPanel.pack();
		}
		
		override protected function onReg():void
		{
			addMsgHandler(LoginMsg.SHOW_LOGIN_PANE, __onShowPane);
			
			addEvtHandler(_loginPanel.getTitleBar().getCloseButton(), AWEvent.ACT, __onClose);
			addEvtHandler(_loginPanel.getLoginButton(), AWEvent.ACT, __onLogin);
		}
		
		private function __onLogin(evt:AWEvent):void
		{
			mainService.show();
			_loginPanel.hide();
		}
		
		private function __onClose(evt:AWEvent):void
		{
			trace("closed");
		}
		
		private function __onShowPane():void
		{
			AsWingUtils.centerLocate(_loginPanel);
			_loginPanel.show();
		}
		
		override protected function onDel():void
		{
		}
	}
}