package PageObjectModel;
import org.openqa.selenium.WebDriver;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

 
public class POM {
	
	protected WebDriver driver;
 
	
	public POM(WebDriver dr)
	{
		driver = dr;
		 
		init();
	}
	
	@FindBy(css = "input[value='Next']")
	public WebElement proceed;
	
	public WebElement get(String st)
	{
		WebElement result = null;
		
		FieldSelector sel = new FieldSelector(st,this);
		
		result = sel.element;
		
		
		return result;
		
	}
	
	public static POM getPage(String name,WebDriver drv)
	{
		POM result = null;
		
		String cls = name.split("_")[0];
		
		try {
			Class<?> pm = Class.forName("PageObjectModel."+cls);
			Class<POM> pom = (Class<POM>)pm;
			result = pom.cast(new POM(drv));
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	final void init()
	{
		PageFactory.initElements(driver, this);
	}

}
