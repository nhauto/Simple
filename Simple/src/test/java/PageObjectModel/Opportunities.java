package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class Opportunities extends POM
{

	public Opportunities(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy(css = "input[name='go']")
	public WebElement Opportunities_go;
	
	 
}
