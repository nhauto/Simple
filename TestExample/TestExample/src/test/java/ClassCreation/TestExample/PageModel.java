package ClassCreation.TestExample;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PageModel {
	
	WebDriver driver;
	
	public PageModel(WebDriver dr)
	{
		driver = dr;
		
	}
	
	@FindBy(id = "ctl00_MainContent_NameBox")
	public WebElement pageName;
	
	@FindBy(id = "ctl00_MainContent_EmailBox")
	public WebElement pageMail;

	@FindBy(id = "ctl00_MainContent_MessageBox")
	public WebElement pageMessage;
	
	@FindBy(id = "ctl00_MainContent_SendButton")
	public WebElement pageSend;
	
	@FindBy(linkText = "Contact")
	public WebElement pageContact;
	
	public void init()
	{
		PageFactory.initElements(driver, this);
	}

}
