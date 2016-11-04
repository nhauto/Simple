package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class PaymentType extends POM{

	public PaymentType(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy(css = "input[name='VISA_brand']")
	public WebElement PaymentType_visa;
	
}
