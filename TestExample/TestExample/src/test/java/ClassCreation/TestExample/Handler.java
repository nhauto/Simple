package ClassCreation.TestExample;


import java.io.File;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import cucumber.api.java.Before;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import cucumber.api.DataTable;
import cucumber.api.Scenario;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.support.ui.WebDriverWait;



public class Handler {
	
	public Scenario scenario;
	protected WebDriver driver;
	protected WebDriverWait wait;
	public PageModel page;
	
	
	@Before
	public void before(Scenario scenario) 
	{
	   
		this.scenario = scenario;
		File pathBinary=new File("C:\\NB\\firefox-sdk\\bin\\firefox.exe");
		FirefoxBinary Binary=new FirefoxBinary(pathBinary);
		FirefoxProfile fprofile=new FirefoxProfile();
 
		driver=new FirefoxDriver(Binary,fprofile);
		
		wait=new WebDriverWait(driver,45);		
		
	}
	
	
	@Given("^I am on the QAWorks Site$")
	public void i_am_on_the_QAWorks_Site() throws Throwable 
	{
		System.out.println("TEST STARTED: "+scenario.getName());
		String path = "http://QAWorks.com";
		
	
		 driver.get(path);
		 driver.manage().window().maximize();
		 
		 // creating and initialising page object here
		 
		 page = new PageModel(driver);
		 page.init();
	
	}

	@Then("^I should be able to contact QAWorks with the following information$")
	public void i_should_be_able_to_contact_QAWorks_with_the_following_information(DataTable tb) throws Throwable {
	    
		List<List<String>> table = tb.raw();
		page.pageContact.click();

		Thread.sleep(2000);

		for(int i = 0; i<table.size(); i++)
		{
			List<String> row = table.get(i);
			
			if(!row.isEmpty())
			{
			
			String rw = row.get(0);

				String val = getValue(table,rw);

				
				WebElement wel = selectElement(rw);
				wel.sendKeys(val);
				
			}
			
			
		}
		
	
		clickElement(page.pageSend);
	}
	
	// this clicks on link with certain text
	
	void ClickLinkText(String st)
	{
		
		List<WebElement> elements = new ArrayList<>();
		WebElement element = null;
		elements = driver.findElements(By.linkText(st));
		
		if(elements.size()>0)
		{
			element = elements.get(0);
			element.click();
		}
	
	}
	
	//this gets value from the datatable based on the first element of the row
	
	String getValue(List<List<String>> table,String name)
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
				
				System.out.println("DataTable is corrupted in row "+i+" scenario: "+scenario.getName());
				
				
			}
			
		}
		
		
		return result;
	}
	
	
	// this gets field value from field.properties file
	
	public String getPropValue(String ar)throws Exception
	{
		String result="";
		
		Properties prop=new Properties();
		String name="field.properties";
		InputStream str=getClass().getClassLoader().getResourceAsStream(name);
		
		if(str!=null)
		{
			prop.load(str);
			result=prop.getProperty(ar);
		}
		
		
		return result;
	}
	
	// method fetches elements by id
	
	WebElement getElement(String ID)
	{
		WebElement result = null;
		
			List<WebElement> ele = new ArrayList<>();
			
			ele = driver.findElements(By.id(ID));
			
			for(int i = 0; i<ele.size(); i++)
			{
				result = ele.get(i);
				break;
			}
		return result;
	}
	
	// returns page model element based on the name
	
		WebElement selectElement(String el)
	{
		WebElement element = null;
		
			switch(el)
			{
			case "name":
			{
				element = page.pageName;
				break;
			}
			case "email":
			{
				element = page.pageMail;
				break;
			}
			case "message":
			{
				element = page.pageMessage;
				break;
			}
			
			
			}
		
		
		return element;
	}
		
	// this method allows for to click on hidden elements with javascript
	
	
	
	void clickElement(WebElement el)
	{
		JavascriptExecutor executor = (JavascriptExecutor)driver;
		executor.executeScript("arguments[0].click();", el);	
	}
}
