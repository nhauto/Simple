package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class ThankYou extends POM
{
	public ThankYou(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy (css = "a[href='/proceed']")
	public WebElement ThankYou_next;
	
}
