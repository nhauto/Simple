import java.util.ArrayList;
import java.util.List;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

public class Element{

	
	WebElement element;
	
	public Element(WebElement ele)
	{
		element=ele;
	}
	
	public List<WebElement> getChildrenByType(String st)
	{
		List<WebElement> result=new ArrayList<WebElement>();
		
		return result;
	}
	
	
}
