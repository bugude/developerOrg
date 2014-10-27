public with sharing class MyComponentController extends ComponentControllerBase {
	
	public void MyComponentController() {
		System.debug('MyComponentController - Constructor');
	}

  private Integer myValue = 3;
    
  public Integer getIntValue() {
  	System.debug('MyComponentController - getIntValue');
    return myValue; 
  }
    
  public void incrementValue() {
  	System.debug('MyComponentController - incrementValue');
    myValue++;
  }
}