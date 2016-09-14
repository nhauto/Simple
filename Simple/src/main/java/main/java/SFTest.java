package main.java;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.support.ui.WebDriverWait;
 

public class SFTest {

public static boolean Login()
{
	boolean result=false;
	
		WebDriver driver=new FirefoxDriver();
		WebDriverWait dr=new WebDriverWait(driver,30);
		
		driver.get("https://nuffieldhealth-crm--crmdev2.cs17.my.salesforce.com/");
		
		try
		{
			driver.findElement(By.id("username")).sendKeys(Cred.max.Login);
			driver.findElement(By.id("password")).sendKeys(Cred.max.Password);
			driver.findElement(By.id("Login")).click();
			
		 
		}catch(Exception ex)
		{}
	
	return result;
}
	
	
}
