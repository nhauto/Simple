import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;

import cucumber.api.DataTable;

public class Help {

	public static WebElement getCell(WebDriver driver, String td)
	{
		WebElement result = null;
		List<WebElement> ele = new ArrayList<>();
		
			ele = driver.findElements(By.tagName("td"));
			int num = -1;
			
			for(int i = 0; i<ele.size(); i ++)
			{
				WebElement wel = ele.get(i);
				
				String txt = wel.getText();
				
				if(txt.equals(td))
				{
					 
					WebElement tr = wel.findElement(By.xpath("parent::*"));
					
					List<WebElement> cells = new ArrayList<>();
					
					cells = tr.findElements(By.tagName("td"));
					num = cellNum(tr,td);
					WebElement last = cells.get(num+1);
					result = last;
					break;
					
				}
			}
		
		return result;
		
	}
	
	public static int cellNum(WebElement tr, String td)
	{
		int result = -1;
		
		List<WebElement> ele = new ArrayList<>();
		ele = tr.findElements(By.tagName("td"));
		
		for(int i = 0; i<ele.size(); i++)
		{
			WebElement cell = ele.get(i);
			
			String txt = cell.getText();
			
			if(txt.equals(td))
			{
				result = i;
				break;
			}
			
		}
		
		
		return result;
	}
	
	
	public static double getProrataMonthly(double Monthly)
	{
		double result = 0;
		Calendar cal = Calendar.getInstance();
		
				
				int day = cal.get(Calendar.DAY_OF_MONTH);
				int days = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
				int rem = days+1 - day;
				if(day == 1)
				{
					rem = 0;
				}
				double pr = (Monthly/days)*rem;
				result =  (double) Math.round(pr * 100) / 100;
		
		return result;
		
	}
	
	public static String capitalize(String st)
	{
		String result = Character.toUpperCase(st.toCharArray()[0])+st.substring(1);
				
		return result;
	}
	
	public static double getProrataOnce(double Membership)
	{
		double result = 0;
		Calendar cal = Calendar.getInstance();
		int day = cal.get(Calendar.DAY_OF_MONTH);
		int days = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		 int diy = cal.getActualMaximum(Calendar.DAY_OF_YEAR);
		int rem = days + 1 - day;		
		if(day == 1)
		{
			rem = 0;
		}
		double pr = (Membership/diy)*rem;
		result =  (double) Math.round(pr * 100) / 100;
		return result;
	}
	
	
	
	
	public static boolean isCutOff()
	{
		boolean result = false;
		
		String cof = null;
		String over = null;
		

		
		Calendar cal = Calendar.getInstance();
		int day = cal.get(Calendar.DAY_OF_MONTH);

		int total = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		
		int remaining = total - day;
		
		if(remaining < 10)
		{
			result = true;
		}
		
		 
		
		return result;
	}
	
	public static String get2TableValue(DataTable tab,String key)
	{
		
		String result = null;
		List<List<String>> table = tab.raw();
  		
		for(int i = 0; i<table.size(); i++)
		{
			List<String> row = table.get(i);
			
			if(!row.isEmpty())
			{
			
			String rw = row.get(0);

		    if(rw.equals(key))
		    {
		    	result = row.get(1);
		    	break;
		    }

				
				
				
			}
			
			
		}
		
		return result;
		
	}
	
	
	static String getValue(List<List<String>> table,String name)
	{
		String result = null;
		
		for(int i = 0; i<table.size(); i++)
		{
			List<String> row = table.get(i);
			
			if(row.size()>1)
			{
				String id = row.get(0);
				 
				
				if(id.equals(name))
				{
					result = row.get(1);
					break;
				}
				
			}else
			{
				
				 
				
				
			}
			
		}
		
		
		return result;
	}
	
	
}
