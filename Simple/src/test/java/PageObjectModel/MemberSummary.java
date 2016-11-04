package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class MemberSummary extends POM{
	
	public MemberSummary(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy(css = "label[for='summary_form_marketing_email']")
	public WebElement MemberSummary_MarketingEmail;

	@FindBy(css = "label[for='summary_form_marketing_sms']")
	public WebElement MemberSummary_MarketingText;

	@FindBy(css = "label[for='summary_form_marketing_opt_out']")
	public WebElement MemberSummary_MarketingNotAtAll;
 
	@FindBy(css = "input[id='summary_form_terms_and_conditions']")
	public WebElement MemberSummary_Conditions;
	
	@FindBy(css = "input[value='Proceed to payment']")
	public WebElement MemberSummary_proceed;
	
	@FindBy(css = "input[value='Set up Direct Debit']")
	public WebElement MemberSummary_DD;
	
	
}
