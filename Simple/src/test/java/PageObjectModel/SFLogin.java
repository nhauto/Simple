package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class SFLogin extends POM{

	public SFLogin(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy (css = "input[id='username']")
	public WebElement SFLogin_username;
	
	@FindBy (css = "input[id='password']")
	public WebElement SFLogin_password;
	
	@FindBy (css = "input[id='Login']")
	public WebElement SFLogin_login;
	
	
}
