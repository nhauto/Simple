package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class DDSetup extends POM
{
	public DDSetup(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy (css = "input[id='direct_debit_account_details_form_account_number']")
	public WebElement DDSetup_account;
	
	@FindBy (css = "input[id='direct_debit_account_details_form_sort_code_p1']")
	public WebElement DDSetup_SortCode1;
	
	@FindBy (css = "input[id='direct_debit_account_details_form_sort_code_p2']")
	public WebElement DDSetup_SortCode2;
	
	@FindBy (css = "input[id='direct_debit_account_details_form_sort_code_p3']")
	public WebElement DDSetup_SortCode3;
	
	@FindBy (css = "input[id='direct_debit_account_details_form_name']")
	public WebElement DDSetup_holder;
}

