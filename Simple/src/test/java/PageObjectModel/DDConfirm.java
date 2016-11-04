package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class DDConfirm extends POM
{
	public DDConfirm(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy (css = "input[id='direct_debit_form_confirm']")
	public WebElement DDConfirm_confirm;
	
	@FindBy (css = "a[href='/directdebit-1-edit']")
	public WebElement DDConfirm_edit;
	
	
}
