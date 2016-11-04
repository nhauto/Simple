package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class CardPayment extends POM
{
	public CardPayment(WebDriver dr)
	{
		super(dr);
		
	}
	
	@FindBy (css = "input[id='Ecom_Payment_Card_Number']")
	public WebElement CardPayment_number;
	
	@FindBy (css = "select[id='Ecom_Payment_Card_ExpDate_Month']")
	public WebElement CardPayment_ExpirationMonth;
	
	@FindBy (css = "select[id='Ecom_Payment_Card_ExpDate_Year']")
	public WebElement CardPayment_ExpirationYear;	
	
	@FindBy (css = "input[id='Ecom_Payment_Card_Verification']")
	public WebElement CardPayment_code;
	
	@FindBy (css = "input[value='Yes, I confirm my payment']")
	public WebElement CardPayment_pay;
}
