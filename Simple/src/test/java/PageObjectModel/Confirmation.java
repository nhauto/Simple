package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class Confirmation extends POM {

	public Confirmation(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy (css = "span[style='pointer-events: none; text-decoration: none;']")
	public WebElement Confirmation_order;
	
	@FindBy (css = "div[class='basket-drawer__value js-basket-today']")
	public WebElement Confirmation_total;
}