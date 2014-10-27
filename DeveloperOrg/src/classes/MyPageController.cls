public with sharing class MyPageController extends PageControllerBase {
	public void MyPageController() {
		System.debug('MyPageController - Constructor');
	}

  public MyComponentController myComponentController { get; set; }
    
  public override void setComponentController(ComponentControllerBase compController) {
  	System.debug('MyPageController - setComponentController');
    myComponentController = (MyComponentController)compController;
  }
    
  public override ComponentControllerBase getMyComponentController() {
  	System.debug('MyPageController - getMyComponentController');
    return myComponentController;
  }
    
  public PageReference callComponentControllerMethod() {
  	System.debug('MyPageController - callComponentControllerMethod');
    myComponentController.incrementValue(); 
    return null;
  } 
}