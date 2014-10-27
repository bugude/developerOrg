public with sharing virtual class ComponentControllerBase {
	
	public void ComponentControllerBase() {
		System.debug('ComponentControllerBase - Constructor');
	}

  public PageControllerBase pageController { get; 
    set {
    	System.debug('ComponentControllerBase - pageController - Setter');
      if (value != null) {
      	System.debug('ComponentControllerBase - pageController - Setter - If');
    pageController = value;
    pageController.setComponentController(this);
      }
    }
  }
}