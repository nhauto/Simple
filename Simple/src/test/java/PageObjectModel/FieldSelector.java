package PageObjectModel;

import org.openqa.selenium.WebElement;

import java.lang.reflect.Field;

public class FieldSelector 
{
	public WebElement element;
	private POM page;
	
	public FieldSelector(String name,POM p)
	{
		page = p;
		
		populate(name);
		
	}
	
	final void populate(String st)
	{
	
		
		try {
			

			Field field = page.getClass().getField(st);
			field.setAccessible(true);
			 
			
			element = (WebElement)field.get(page);
			
			
		} catch (NoSuchFieldException 
				| IllegalAccessException
				//| InstantiationException
				x) {

			System.out.print(x.getMessage());
			 
		}
		
	}
	
}
