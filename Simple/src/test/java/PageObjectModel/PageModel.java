package PageObjectModel;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class PageModel {
	
	public WebDriver driver;
	
	public PageModel(WebDriver dr)
	{
		driver = dr;
		init();
	}
	
	@FindBy(id = "text")
	public WebElement txt;
	
	
	final void init()
	{
		PageFactory.initElements(driver, this);
	}

}
