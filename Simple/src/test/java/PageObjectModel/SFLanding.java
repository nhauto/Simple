package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class SFLanding extends POM{

	public SFLanding(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy (css = "a[title='Opportunities Tab']")
	public WebElement SFLanding_opportunities;
}
