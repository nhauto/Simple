import static org.junit.Assert.*;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.Cookie;
import org.apache.commons.io.IOUtils;
import org.junit.After;
import org.junit.Before;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.Point;
import org.openqa.selenium.Rectangle;

import cucumber.api.Scenario;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import junit.framework.Assert;
import main.java.Cred;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;

 

import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;

public class LoginTest {

	protected WebDriver driver;
	protected WebDriverWait wait;
	
	protected List<String> lead=new ArrayList<String>();
	protected String forename;
	protected String surname;
	protected int count=0;
	protected String comsite="";
	protected String orid="";
	protected String total="";
	protected String monthly="";
	protected String fee="";
	protected String membership="";
	protected String memcost="";
	protected String prorata="";
	protected String payref="";
	protected String[] vles = {"Next","Set up Direct Debit", "Proceed to payment","VISA_brand"};
	protected String[] amounts={total,membership,fee,prorata,monthly};
	public Scenario scenario;
	public enum page
	{
		salesforce,vione,waf
	}
	
	@Before
	public void setup() throws Exception 
	{
		File pathBinary=new File("C:\\NB\firefox-sdk\bin\firefox.exe");
		FirefoxBinary Binary=new FirefoxBinary(pathBinary);
		FirefoxProfile fprofile=new FirefoxProfile();
		
		driver=new FirefoxDriver(Binary,fprofile);
		
		wait=new WebDriverWait(driver,30);		
	}

	@Before
	public void before(Scenario scenario) {
	    this.scenario = scenario;
	    
	    System.out.println(this.scenario.getName());
	}
	
	
	
	@Given("^I open the test instance of salesforce$")
	public void i_open_the_test_instance_of_salesforce()  {

		File pathBinary=new File("C:\\NB\firefox-sdk\bin\firefox.exe");
		FirefoxBinary Binary=new FirefoxBinary(pathBinary);
		FirefoxProfile fprofile=new FirefoxProfile();
		
		driver=new FirefoxDriver(Binary,fprofile);
		
		wait=new WebDriverWait(driver,45);			
		 driver.get(Cred.salesforce);
		 driver.manage().window().maximize();
	}
	
	
	@Given("^I open the page \"([^\"]*)\"$")
	public void i_open_the_page(String st)  {

		page pg=page.valueOf(st);
		String path="";
		
		switch(pg)
		{
		case salesforce:
		{
			path=Cred.salesforce;
			break;
		}
		case vione:
		{
			path=Cred.vione;
			
			break;
		}
		case waf:
		{
			path=Cred.waf;
			break;
			
		}
		
		}
		
		
		
		File pathBinary=new File("C:\\NB\\firefox-sdk\\bin\\firefox.exe");
		FirefoxBinary Binary=new FirefoxBinary(pathBinary);
		FirefoxProfile fprofile=new FirefoxProfile();
	//	fprofile.setPreference("dom.forms.number", false);
		driver=new FirefoxDriver(Binary,fprofile);
		
		wait=new WebDriverWait(driver,45);			
		 driver.get(path);
		 driver.manage().window().maximize();
	}	
	
	
	@Given ("^I navigate to salesforce$")
	public void Given_I_navigate_to_salesforce()
	{
		driver.navigate().to(Cred.salesforce);
	}
	
	@When("^I fill number field \"([^\"]*)\" with \"([^\"]*)\"$")
	public void When_I_fill_number_field(String fl,String st)
	{
		 
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("document.getElementById('"+fl+"').value='"+st+"';");
		
		
	}
	
	@When("^I click on link class \"([^\"]*)\"$")
	public void i_click_on_link_class(String st)
	{
		List<WebElement> ele = new ArrayList<>();
		
		ele = driver.findElements(By.className(st));
		WebElement el = null;
		for(int i = 0; i<ele.size(); i++)
		{
			el = ele.get(0);
			break;
		}
		
		
		
		if(el == null)
		{
			System.out.println("element not found, please enter manually");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else
		{
			JavascriptExecutor executor = (JavascriptExecutor)driver;
			executor.executeScript("arguments[0].click();", el);	
		}
		
	}
	
	@When ("^I enter Login and Password$")
	public void I_enter_Login_and_Passwor()
	{
		wait.until(ExpectedConditions.elementToBeClickable(By.id("username")));
		driver.findElement(By.id("username")).sendKeys(Cred.max.Login);
		driver.findElement(By.id("password")).sendKeys(Cred.max.Password);
		driver.findElement(By.id("Login")).click();
	}
	@SuppressWarnings("deprecation")
	@Then ("^I should login to Salesforce$")
	public void I_should_login_to_Salesforce()
	{
		boolean result=false;
		
		if(wait.until(ExpectedConditions.elementToBeClickable(By.linkText("Home")))!=null)
		{
			result=true;
		}
		Assert.assertTrue(result);
	}
	
	 
	@Then ("^I am on flash page \"([^\"]*)\"$")
	public void Then_am_on_flash_page(String st)
	{
		
		FlashObjectWebDriver flashDriver=new FlashObjectWebDriver(driver,"");
		flashDriver.callFlashObject("SetVariable","/:message","Learn Flash testing with Webdriver");
		
	}
	
	@Then("^I get amount \"([^\"]*)\"$")
	public void Then_I_get_amount(String fn)
	{
		Helper help = new Helper();
		String cls = "";
		String txt = "0";
		try {
			cls = help.getPropValue(fn, "field");
			// 0       1        2    3       4
			//total,membership,fee,prorata,monthly
			
			if(isClassThing(cls))
			{
				
				WebElement wel = driver.findElement(By.className(cls));
				
				String taw = wel.getTagName();
				String taid = wel.getAttribute("id");
				
				txt = wel.getText();
				if(txt.equals(""))
				{
				List<WebElement> ele = new ArrayList<>();
				ele = driver.findElements(By.className(cls));
				for(int i = 0; i<ele.size(); i++)
				{
					
					WebElement le = ele.get(i);
					
					if(le.getText().length()>0)
					{
						txt = le.getText();
						break;
					}
					
					
				}
								
				}

			}		
				switch(fn)
				{
				case "monthly":
				{
					amounts[4] = txt;
					break;
				}
				case "prorata":
				{
					amounts[3] = txt;
					break;
				}			
				case "fee":
				{
					amounts[2] = txt;
					break;
				}		
				case "member":
				{
					amounts[1] = txt;
					break;
				}
				}
								
				
				
				
			
			

			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@When("^I verify amount \"([^\"]*)\" is \"([^\"]*)\"$")
	public void i_verify_amount_is(String fn, String st)
	{
		Helper help = new Helper();
		String cls = "";
		
		try {
			cls = help.getPropValue(fn, "field");
			// 0       1        2    3       4
			//total,membership,fee,prorata,monthly
			
			WebElement wel = driver.findElement(By.className(cls));
			
			List<WebElement> ele = new ArrayList<>();
			
			ele = wel.findElements(By.tagName("div"));
			String cont = wel.getText().replace("£", "").replace(" ", "");

			 
			if(!cont.equals(st))
			{
				System.out.println("Error was captured in field amount "+cont+" does not match "+st+". Continue?");
				BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
				try {
					String dob=reader.readLine();
					System.out.println(dob);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
			
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	@Then("^I grab amount \"([^\"]*)\"$")
	public void Then_I_grab_amount(String fn)
	{
		Helper help = new Helper();
		String cls = "";
		
		try {
			cls = help.getPropValue(fn, "field");
			// 0       1        2    3       4
			//total,membership,fee,prorata,monthly
			
			WebElement wel = driver.findElement(By.className(cls));
			
			List<WebElement> ele = new ArrayList<>();
			
			ele = wel.findElements(By.tagName("div"));
			String cont = "";
			for(int i = 0; i<ele.size(); i++)
			{
				WebElement we = ele.get(i);
				
				String txt = we.getText();
				
			//	String text = txt.replace("£", "");

				
				if(txt.contains("£"))
				{
					 cont = txt;
				}
			}
			
			 
			
			
			switch(fn)
			{
			case "monthly":
			{
				amounts[4] = cont;
				break;
			}
			case "prorata":
			{
				amounts[3] = cont;
				break;
			}			
			case "fee":
			{
				amounts[2] = cont;
				break;
			}		
			case "member":
			{
				memcost = cont;
				break;
			}
			}
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@SuppressWarnings("deprecation")
	@Then ("^I am on page \"([^\"]*)\"$")
	public void Then_I_am_on_page(String st)
	{
		boolean result=false;
		
		String s="";
		Helper help=new Helper();
		try {
			s=help.getPropValue(st);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(wait.until(ExpectedConditions.elementToBeClickable(By.linkText(s)))!=null)
		{
			result=true;
		}
				
		
		if(result)
		{
			List<WebElement> elle= new ArrayList<>();
			elle=driver.findElements(By.id("new_summary_form"));
			
			if(elle.size()>0)
			{
				
				try
				{
					if(forename!=null)
					{
				help.writeFile("firstname", forename);	
				help.writeFile("lastname", surname);						
						
						
					}
		
				}catch(Exception xex)
				{
					
				}
				
				
			}
		}
		
		Assert.assertTrue(result);
	}
	
	@Then("^I wait$")
	public void i_wait()
	{
		
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Then("^I open opportunity$")
	public void i_open_opportunity()
	{
		List<WebElement> dv = new ArrayList<>();
		
		dv = driver.findElements(By.tagName("div"));
		
		WebElement row = null;
		if(orid.length()>1)
		{
			for(int i = 0; i<dv.size(); i++)
			{
				String cnt = dv.get(i).getText();
				
				if(cnt.equals(orid))
				{
				row = dv.get(i);
			    break;
					
				}
				
			}			
		}else
		{
			long ordi = 0;
			for(int i = 0; i<dv.size(); i++)
			{
				String cnt = dv.get(i).getText();
				
				if(cnt.indexOf("63100000019") == 0)
				{
					System.out.println(cnt);
				}
				
				long cint = 0;
				try
				{
					cint = Long.parseLong(cnt);
					
				}
				catch(Exception xx)
				{
					
				}
				
				if(cint>ordi)
				{
				row = null;
				row = dv.get(i);
			    ordi =cint;
					
				}
				
			}			
		}

		
		WebElement td = row.findElement(By.xpath("parent::*"));
		
		WebElement tr = td.findElement(By.xpath("parent::*"));
		
		List<WebElement> le = new ArrayList<>();
		
		le = tr.findElements(By.tagName("td"));
		
		if(le.size()>1)
		{
			WebElement cell = le.get(2);
			List<WebElement> ar = new ArrayList<>();
			ar = cell.findElements(By.tagName("a"));
			
			if(ar.size()>0)
			{
				ar.get(0).click();
			}
		}
		 
		
		
	}
	
	@Then("^I open david$")
	public void Then_I_open_david()
	{
		//int count = 10;
		

		List<WebElement> dv = new ArrayList<>();
		
		//String cls = "x-grid3-cell-inner x-grid3-col-00N7E000000Qeup";
		String cls = "x-grid3-cell-inner x-grid3-col-00N8E000000e9ll";
					  
		dv = driver.findElements(By.xpath("//div[@class='"+cls+"']"));

		
		WebElement wel = null;
		
		for(int i = 0; i<dv.size(); i++)
		{
			WebElement w = dv.get(i);
			String wt = w.getTagName();
			String wid = w.getAttribute("id");
			String tox = w.getText();
			
			if(tox.equals(orid))
			{
				wel = w;
				//break;
			}
		}
		
		
				
				//dv.findElement(By.xpath("//div[contains(., '"+orid+"')]"));
		
		String weltag = wel.getTagName();
		String welid = wel.getAttribute("id");
		String twx = wel.getText();
		WebElement td = wel.findElement(By.xpath("parent::*"));
		

		
		
		WebElement tr = td.findElement(By.xpath("parent::*"));
		
		String tdtag = td.getTagName();
		String tdid = td.getAttribute("id");
		
		String trtag = tr.getTagName();
		String trid = tr.getAttribute("id");
		
		List<WebElement> ele = new ArrayList<>();
		
		//ele = tr.findElements(By.xpath("//span[contains(., 'David Archer')]"));
		
		ele = tr.findElements(By.xpath("./*"));
		
		
		for(int j = 0; j<ele.size();j++)
		{
			
			if(j == 2)
			{
				ele.get(j).click();
			}

			
		}
		
	}
	
	@Then("^I get amount value \"([^\"]*)\"$")
	public void Then_I_get_amount_value(String st)
	{

		String spaclass="";
		int tofill=-1;
 
			switch(st)
			{
			case "total":
			{

				spaclass="js-basket-today";
				tofill=0;
				break;
			}
			case "membership":
			{

				tofill=1;
				break;
			}
			case "fee":
			{

				tofill=2;
				break;
			}		
			
			case "prorata":
			{

				tofill=3;
				break;
			}
			case "monthly":
			{

				tofill=4;
				break;
			}
			}
			
			 
		
			List<WebElement> ele=new ArrayList<>();
			ele=driver.findElements(By.tagName("span"));
			
			WebElement wel=null;
			
			for(int i=0;i<ele.size();i++)
			{
				String cls=ele.get(i).getAttribute("class");
				
				if(cls.equals(spaclass))
				{
					wel=ele.get(i);
					
					String txt=wel.getText();
					
					amounts[tofill] = txt;
					

					
				}
			}
			
		
	}
	
	 
	
	@Then("^I can see total is accurate \"([^\"]*)\"$")
	public void Then_I_can_see_total_is_accurate(String st)
	{
		Helper help = new Helper();
		//WebElement wel=driver.findElement(By.id("opp7_ileinner"));
		WebElement wel = help.getCell(driver, "Amount");
		
		
		String value = wel.getText().replace(",", "");
		double vue = Double.parseDouble(value.replace("£", ""));
		value = "£"+help.norm(vue);

		double month = help.getNum(amounts[4]);
		int mts = Integer.parseInt(st);
		double pro = help.getNum(amounts[3]);
		double fee = help.getNum(amounts[2]);
		double tot = (month * mts) + pro + fee;
		String amount = help.norm(tot);
		
		
		//String amount = Double.toString(tot);
		
		if(!value.equals("£"+amount))
		{
			System.out.println("Error was captured in field amount "+value+" does not match "+amount+". Continue?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}		
		
		
	}
	
	
	@Then("^I check figures \"([^\"]*)\"$")
	public void i_check_figures(String st) 
	{
		
		int m = Integer.parseInt(st);
		Helper help = new Helper();
		double ttl = Double.parseDouble(amounts[0].replace("£", ""));
		
		double fee = Double.parseDouble(amounts[2].replace("£", ""));
		double pro = Double.parseDouble(amounts[3].replace("£", ""));
		double mon = Double.parseDouble(amounts[4].replace("£", ""));	
		
		double ann = mon*m;
		
		String cof = null;
		try {
			cof = help.getPropValue("cutoff", "value");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		double tot = 0;
		if(help.isCutOff())
		{
			tot = fee+mon+pro;
		}else
		{
			tot = fee+pro;
		}
		
		if(!help.norm(ttl).equals(help.norm(tot)))
		{
			System.out.println("Error was captured in field total to pay today "+Double.toString(ttl)+"does not match "+Double.toString(tot)+". Continue?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
Date date = new Date();
		
	    Calendar cal = Calendar.getInstance();
	    cal.setTime(date);
	    int year = cal.get(Calendar.YEAR);
	    int month = cal.get(Calendar.MONTH);
	    int day = cal.get(Calendar.DAY_OF_MONTH);
		
	    int dim = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	    int diy = cal.getActualMaximum(Calendar.DAY_OF_YEAR);
	    
	    double dy = mon/dim;
	    
	   int rem = dim-day+1;
	   
	   double pr = rem*dy;
	   
	   String prorota = help.norm(pr);
		
	   if(!prorota.equals(Double.toString(pro)))
	   {
		   
			System.out.println("Error was captured in field membership amount "+Double.toString(pro)+"does not match due "+prorota+". Continue?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}				   
		   
		   
		   
	   }
	}
	
	@Then("^I can see all figures good \"([^\"]*)\"$")
	public void Then_I_can_see_all_figures_good(String st)
	{
		//	protected String[] amounts={total,membership,fee,prorata,monthly};
		
		int m = Integer.parseInt(st);
		Helper help = new Helper();
		double ttl = 0;
		try {
			ttl = Double.parseDouble(amounts[0].replace("£", ""));
		} catch (NumberFormatException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		double mem = 0;
		try {
			mem = Double.parseDouble(amounts[1].replace("£", ""));
		} catch (NumberFormatException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		double fee = 0;
				try {
					fee = Double.parseDouble(amounts[2].replace("£", ""));
				} catch (NumberFormatException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
		double pro = 0;
		try {
			pro = Double.parseDouble(amounts[3].replace("£", ""));
		} catch (NumberFormatException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		double mon = 0;
		try {
			mon = Double.parseDouble(amounts[4].replace("£", ""));
		} catch (NumberFormatException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		boolean monthlyOK = false;
		boolean proOK = false;
		boolean totalOK = false;
		double annual = (double) Math.round(mon*m);

		
		if(mem == annual)
		{
			monthlyOK = true;
		}else
		{
			System.out.println("Error was captured in field membership amount "+Double.toString(annual)+"does not match "+Double.toString(mem)+". Continue?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		SimpleDateFormat df = new SimpleDateFormat("dd-M-yyyy");
		
		Date date = new Date();
		
	    Calendar cal = Calendar.getInstance();
	    cal.setTime(date);
	    int year = cal.get(Calendar.YEAR);
	    int month = cal.get(Calendar.MONTH);
	    int day = cal.get(Calendar.DAY_OF_MONTH);
		
	    int dim = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
	    int diy = cal.getActualMaximum(Calendar.DAY_OF_YEAR);
	    
	    if(!st.equals("12"))
	    {
	    	//int mnt = Integer.parseInt(st);
	    	
	    	diy = 92;
	    }
	    
	    double dy = mem/diy;
	    
	   int rem = dim-day+1;
	   
	   double pr = rem*dy;
	   
	   String prorota = help.norm(pr).replace('"', '\0');
	   

	   
	   if(prorota.equals(Double.toString(pro)))
	   {
		   proOK = true;
	   }else
	   {
			System.out.println("Error was captured in field membership amount "+Double.toString(pro)+"does not match due "+prorota+". Continue?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}		   
	   }
		
	}
	
	
	@Then("^I can see \"([^\"]*)\" filled with \"([^\"]*)\"$")
	public void Then_I_can_see(String fn,String st)
	{
		
		
		
		String vl="";
		int filled=-1;
		
		switch(st)
		{
		case "total":
		{
			filled=0;
			
			vl=amounts[filled];
			
			break;
		}
		case "membership":
		{
			
			filled=1;
			vl=amounts[filled];
			 
			break;
		}
		case "fee":
		{
			filled=2;
			vl=amounts[filled];
 			break;
		}		
		
		case "prorata":
		{
			filled=3;
			vl=amounts[filled];
 			break;
		}
		case "monthly":
		{
			filled=4;
			vl=amounts[filled];
			
			break;
		}
		case "orid":
		{
			//filled=4;
			vl=orid;
			
			break;
		}		
		
		case "pay":
		{
			payref=(new Helper()).getCell(driver, "Payment Reference").getText();
			vl=payref;
			
			break;
		}	
		case "Aberdeen":
		{
			vl = "Aberdeen";
			break;
		}

		case "Bolton":
		{
			vl = "Bolton";
			break;
		}
		}
		
		Helper help = new Helper();
		
		WebElement well = help.getCell(driver,fn);
		
		WebElement dv = well.findElement(By.tagName("div"));
		
		String value = dv.getText();
		
/*		if(payref.equals(""))
		{
			payref=value;
			vl=payref;
		}*/
		
		
		if(!value.equals(vl)&!st.equals("pay"))
		{
			System.out.println("Error was captured in field "+fn+" "+value+" does not match "+vl+". Continue?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) 
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
	}
	
	@Then("^I can see field \"([^\"]*)\" filled with \"([^\"]*)\"$")
	public void Then_I_can_see_field(String fn,String st)
	{
		
		WebElement wel=driver.findElement(By.id(fn));
		
		String vl="";
		int filled=-1;
		
		switch(st)
		{
		case "total":
		{
			filled=0;
			
			vl=amounts[filled];
			
			break;
		}
		case "membership":
		{
			
			filled=1;
			vl=amounts[filled];
			 
			break;
		}
		case "fee":
		{
			filled=2;
			vl=amounts[filled];
 			break;
		}		
		
		case "prorata":
		{
			filled=3;
			vl=amounts[filled];
 			break;
		}
		case "monthly":
		{
			filled=4;
			vl=amounts[filled];
			
			break;
		}
		case "orid":
		{
			//filled=4;
			vl=orid;
			
			break;
		}		
		
		case "pay":
		{
			payref=driver.findElement(By.id("00N8E000000e9lq_ileinner")).getText();
			vl=payref;
			
			break;
		}			

		
		}
		
		String value=wel.getText();
		
/*		if(payref.equals(""))
		{
			payref=value;
			vl=payref;
		}*/
		
		
		if(!value.equals(vl)&!st.equals("pay"))
		{
			System.out.println("Error was captured in field "+fn+" "+value+" does not match "+vl+". Continue?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
		
	}
	
	@Then("^I do save$")
	public void Then_I_do_save()
	{
		String[] temp=new String[10];
		
		String url = driver.getCurrentUrl();
		
		String id=url.substring(Cred.salesforce.length());
		
		//WebElement mel = driver.findElement(By.id("00N8E000000e9lj_ileinner"));
		
		WebElement mel = (new Helper()).getCell(driver, "Membership Reference");
		
		membership = mel.getText();
		
		//total,membership,fee,prorata,monthly
		//String[] capt=new String[10];
		
		String capt[] = {"forename","surname","total","monthly","fee","prorata","orid","payref","membership","id"};
		
		if(forename==null)
		{
			forename = "David";
			surname = "Archer";
		}
		
		temp[0] = forename;
		temp[1] = surname;
		temp[2] = amounts[0];
		temp[3] = amounts[4];
		temp[4] = amounts[2];
		temp[5] = amounts[3];
		temp[6] = orid;
		temp[7] = payref;	
		temp[8] = membership;
		temp[9] = id;
		
		List<String[]> l = new ArrayList<>();
		l.add(capt);
		l.add(temp);
		Helper help = new Helper();
		
		try {
			help.writeResults(l);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("TEST COMPLETED: "+scenario.getName());
		driver.close();
	}
	
	
	@When("^I click on basket$")
	public void When_I_click_on_basket()
	{
		List<WebElement> ele = new ArrayList<>();
		
		ele = driver.findElements(By.className("basket"));
		
		for(int i=0;i<ele.size();i++)
		{
			WebElement wel = ele.get(i);
			wel.click();
		}
			
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	
	
	
	@When("^I click on contact link$")
	public void When_I_click_on_contact_link()
	{
		String cont=forename+" "+surname;
		WebElement link=driver.findElement(By.id("CF00Nw0000008LnSM_ileinner"));
		link.click();

		
		
	}
	
	@When ("^I switch to tab \"([^\"]*)\"$")
	public void I_switch_to_tab(String tb)
	{
		driver.findElement(By.linkText(tb)).click();
	}
	
 
	@Then("^I can see static field \"([^\"]*)\" filled with \"([^\"]*)\"$")
	public void Then_I_can_see_static_field(String fn,String st)
	{
		
		WebElement wel=driver.findElement(By.id(fn));
		
 		
		String str=wel.getText();
		
 
		 
		if(!str.equals(st))
		{
			System.out.println("Error was captured in field "+fn+" "+st+" does not match "+str+". Continue?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		
	}
		
	
	@Then("^I can see checked \"([^\"]*)\"$")
	public void Then_I_can_see_checked(String st)
	{
		WebElement wel=driver.findElement(By.id(st));
		String src=wel.getAttribute("src");
		
		if(!src.contains("_checked.gif"))
		{
			
			System.out.println("The was error. field '"+st+"' is not checked. continue?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
						
			
		}
		 
		
		
		
	}
	
	
	@Then("^I wait for order id$")
	public void Then_I_wait_for_order_id()
	{
		wait.until(ExpectedConditions.elementToBeClickable(By.xpath("//h2[contains(., 'Your order number is')]")));
		WebElement txt=driver.findElement(By.xpath("//h2[contains(., 'Your order number is')]"));
		WebElement par=txt.findElement(By.xpath("parent::*"));
		
		List<WebElement> list=new ArrayList<>();
		
		list=par.findElements(By.tagName("span"));
		if(list.size()>0)
		{
			WebElement spn=list.get(0);
			
			orid=spn.getText();
			
		}
		
		
		//WebElement element=driver.findElement(By.xpath("//*[@Your order number is]"));
	}
	
	@Then("^I wait for payment$")
	public void Then_I_wait_for_payment()
	{
		List<WebElement> ele = new ArrayList<>();
		ele = driver.findElements(By.tagName("small"));
		if(ele!=null)
		{
				for(int i=0;i<ele.size();i++)
				{
					String pr=ele.get(i).getText();
					if(pr.equals("Payment reference: "))
					{
						if(i<ele.size()-1)
						{
							WebElement le=ele.get(i+1);
							payref=le.getText();
						}
					}
				}
		}
	}
	
	@When ("I press button \"([^\"]*)\"$")
	public void When_I_press_button(String bt)
	{
		wait.until(ExpectedConditions.elementToBeClickable(By.name("new")));
		driver.findElement(By.name("new")).click();
	}
	
	@SuppressWarnings("deprecation")
	@Then ("^I can see view \"([^\"]*)\"$")
	public void Then_I_can_see_view(String view)
	{
		String el="";
		String rt="";
		if(view.equals("Application"))
		{
			rt=el;
		}
		rt=rt+"";
		
		Helper help=new Helper();
		try {
			el=help.getPropValue(view);
		} catch (Exception e) {
			
			el=null;
		}
		boolean result=false;
		if(el!=null)
		{
			if(wait.until(ExpectedConditions.elementToBeClickable(By.id(el)))!=null)
			{
				result=true;
			}
		}
		Assert.assertTrue(result);
	}
	
	@SuppressWarnings("deprecation")
	@Then ("^I can see this page \"([^\"]*)\"$")
	public void Then_I_can_see_page(String view)
	{
		String el="";
		String rt="";
		if(view.equals("Application"))
		{
			rt=el;
		}
		rt=rt+"";
		
		Helper help=new Helper();
		try {
			el=help.getPropValue(view);
		} catch (Exception e) {
			
			el=null;
		}
		boolean result=false;
		if(el!=null)
		{
			if(wait.until(ExpectedConditions.elementToBeClickable(By.id(el)))!=null)
			{
				result=true;
			}
		}
		Assert.assertTrue(result);
	}
	
	

	@When ("^I click on opportunity$")
	public void When_I_click_on_opportunity()
	{
		List<WebElement> ele=new ArrayList<>();
		ele = driver.findElements(By.xpath("//span[contains(., '"+forename+" "+surname+"')]"));
		WebElement wel=null;
		
		if(ele.size()>1)
		{
			wel=ele.get(1);
		}else
		{
			wel=ele.get(0);
		}
		
		//WebElement wel=driver.findElement(By.xpath("//span[contains(., '"+forename+" "+surname+"')]"));
		WebElement par=wel.findElement(By.xpath("parent::*"));
		par.click();
		
		
	}
	
	
	@When ("^I am ready to continue$")
	public void When_I_am_ready_to_continue()
	{
		System.out.println("ready?");
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		try {
			String dob=reader.readLine();
			System.out.println(dob);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(comsite.length()>0)
		{
			driver.navigate().to(comsite);
		}		
	}
	
	
	@When("^I click text \"([^\"]*)\"$")
	public void When_I_click_text(String fn)
	{
		WebElement wel = driver.findElement(By.xpath("//span[contains(., '"+fn+"')]"));
		
		wel.click();
		
		
	}
	
	@When("^I scroll up$")
	public void When_I_scroll_up()
	{
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,-250)", "");
	}

	
	@When("^I scroll up\"([^\"]*)\"$")
	public void When_I_scroll_up(String st)
	{
		int len = Integer.parseInt(st);
		
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,-"+st+")", "");
	}
	
	@When("^I scroll down \"([^\"]*)\"$")
	public void When_I_scroll_down(String st)
	{
		int len = Integer.parseInt(st);
		
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,"+st+")", "");
	}
	
	@When("^I scroll down$")
	public void When_I_scroll_down()
	{
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,250)", "");
	}
	
	
	@When("^I wait for seconds \"([^\"]*)\"$")
	public void When_I_wait_for_seconds(String st)
	{
		int i = Integer.parseInt(st);
		
		driver.manage().timeouts().implicitlyWait(i, TimeUnit.SECONDS);
	}
	
	@When ("^I select \"([^\"]*)\" in menu \"([^\"]*)\"$")
	public void When_I_select_in_menu(String op,String sel)
	{
		WebElement drop=driver.findElement(By.id(sel));
		Select dropdown=new Select(drop);
		dropdown.selectByValue(op);
		 
	}
	
	@When("^I fill dynamic field \"([^\"]*)\" with \"([^\"]*)\"$")
	public void When_I_fill_dynamic_field_with(String ID,String fn)
	{

		String str="";
		//String ID="";
		Helper.text t;
		try
		{
		
		t=Helper.text.valueOf(fn);
		Helper help=new Helper();
			str=help.getText(t);
			 
		}catch(Exception ex)
		{
			
			str=null;
		}
		
		if(str!=null)
		{

			 WebElement element=driver.findElement(By.id(ID));
			 element.clear();
			 element.sendKeys(str);
			 //values for salesforce
			 //name_firstlea2
			 //name_lastlea2
			 
				if(ID.equals("personal_details_form_first_name"))
				{
					forename=str;
				}
				if(ID.equals("personal_details_form_last_name"))
				{
					surname=str;
				}
				
			 
			 lead.add(str);

		}
		
		
	}
	
	@When ("^I click on button name \"([^\"]*)\"$")
	public void When_I_click_on_button_name(String st)
	{
		List<WebElement> ele = new ArrayList<>();
		ele=driver.findElements(By.name(st));
		Helper help = new Helper();
		
		WebElement el = null;
		
		if(ele.size()>1)
		{
		for(int i = 0; i<ele.size();i++)
		{
			String vl = ele.get(i).getAttribute("value");
			if(help.contains(vles, vl))
			{
				el = ele.get(i);
				break;
				
			}else
			{
				if(!st.equals("commit"))
				{
					el = ele.get(i);
					break;
				}
			}
				
			
		}			
		}else
		{
			if(ele.size() == 1)
			{
				el = driver.findElement(By.name(st));
			}
			
		}
		

		if(el!=null)
		{
			JavascriptExecutor executor = (JavascriptExecutor)driver;
			executor.executeScript("arguments[0].click();", el);			
		}else
		{
			System.out.println("ready?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
 
	 
	}
	
	@When ("^I click on screen x  \"([^\"]*)\"$ y \"([^\"]*)\"$")
	public void When_I_click_on_xy(String x,String y)
	{
		int X = Integer.parseInt(x);
		int Y = Integer.parseInt(y);
		
		
	}
	
	@When("^I click on class \"([^\"]*)\"$")
	public void When_I_click_on_class(String st)
	{
		List<WebElement> ele = new ArrayList<>();
		
		ele = driver.findElements(By.tagName("div"));
		
 
 
		
		
		for(int i = 0; i<ele.size(); i++)
		{
			WebElement wel = ele.get(i);
			
			String s = wel.getAttribute("class");
			
			if(s.equals(st))
			{
				
				
				List<WebElement> wle = new ArrayList<>();
				
				wle = wel.findElements(By.tagName("input"));
				
				for(int j = 0; j<wle.size(); j++)
				{
					WebElement element = wle.get(j);
					
					String tp = element.getAttribute("type");
					
					if(!tp.equals("hidden"))
					{
						Rectangle req = element.getRect();
						
						JavascriptExecutor executor = (JavascriptExecutor)driver;
						executor.executeScript("arguments[0].click();", element);
					}
				}
			}
		}
	}
	
	@When("^I click span class \"([^\"]*)\"$")
	public void i_click_span_class(String st) 
	{
		
	}
	
	@When("^I click span \"([^\"]*)\"$")
	public void When_I_click_span(String st)
	{
		List<WebElement> ele = new ArrayList<>();
		
		ele = driver.findElements(By.tagName("span"));
		
		
		for(int i = 0; i<ele.size(); i++)
		{
			
			WebElement wel = ele.get(i);
			
			String txt = wel.getText();
			
			if(txt.equals(st))
			{
				JavascriptExecutor executor = (JavascriptExecutor)driver;
				executor.executeScript("arguments[0].click();", wel);			
			}
		}
		
		
	}
	
	
	@When ("^I fill dynamic field \"([^\"]*)\"$")
	public void When_I_fill_dynamic_field(String s)
	{

		String str="";
		String ID="";
		Helper.text t;
		try
		{
		
		t=Helper.text.valueOf(s);
		Helper help=new Helper();
			str=help.getText(t);
			ID=help.getPropValue(s,"field");
		}catch(Exception ex)
		{
			
			str=null;
		}
		
		if(str!=null)
		{

			 WebElement element=driver.findElement(By.id(ID));
			 element.clear();
			 element.sendKeys(str);
				if(ID.equals("name_firstlea2"))
				{
					forename=str;
				}
				if(ID.equals("name_lastlea2"))
				{
					surname=str;
				}
			 
			 lead.add(str);

		}
		
		
	}
	
	@When ("^I click \"([^\"]*)\"$")
	public void When_I_click(String st)
	{
		String s="";
		List<WebElement> ele=new ArrayList<WebElement>();
		Helper help=new Helper();
		
		try {
			s=help.readLine(st)+"-";
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		ele=driver.findElements(By.linkText(s));
		
		for(int i=0;i<ele.size();i++)
		{
			WebElement element=ele.get(i);
			
			if(element.getTagName().equals("a"))
			{
				element.click();
				break;
			}
		}
		
	}
	
	@When ("^I populate static field \"([^\"]*)\"$")
	public void I_populate_field(String st)
	{
		String stroke="";	
		if(st.equals("Email"))
		{
			stroke=st;
		}
		
		Parser par=new Parser(driver);
		String fieldId=par.getId(st, Parser.field.input);		
		
		Helper help=new Helper();
		String field=null;
		String value=null;
		

		

		
		try {
			

		 
			field=help.getPropValue(st, "field");
			value=help.getPropValue(st.replace(" ", "_"),"value");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(fieldId!=null)
		{
			WebElement element=driver.findElement(By.id(fieldId));
			if(value!=null)
			{
			element.clear();
			element.sendKeys(value);
			}else
			{
				element.sendKeys("ERROR");
			}
			
		}
	}	
	
	@When ("^I fill static field \"([^\"]*)\"$")
	public void I_fill_static_field(String st)
	{
		Helper help=new Helper();
		String field=null;
		String value=null;
		try {
			
		//	Parser par=new Parser(driver);
		//	String fieldId=par.getId("First Name", Parser.field.input);
		//	String dfe=fieldId;
			field=help.getPropValue(st, "field");
			value=help.getPropValue(st,"value");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(field!=null)
		{
			WebElement element=driver.findElement(By.id(field));
			if(value!=null)
			{
			element.clear();
			element.sendKeys(value);
			}else
			{
				element.sendKeys("ERROR");
			}
			
		}
	}
	
	@When ("^I click on button \"([^\"]*)\"$")
	public void I_click_on_button(String st)
	{
		WebElement element=driver.findElement(By.xpath("//*[@value='"+st+"']"));
		element.click();
	}
	 
	
	@When ("^I save values for form \"([^\"]*)\"$")
	public void I_save_values_for_form(String st)
	{
		String[] val={};
		List<String> list=new ArrayList<String>();
		
	//	if(st.equals("Lead"))
		//{
			String[] leadval={"firstname","lastname","company","gmcnum","othernum","username","nickname","appname"};
			val=leadval;
			list=lead;
	//	}

		
		Helper help=new Helper();
		String temp="";
		if(st.equals("User_Detail"))
		{
			temp=st;
		}
		
		
		for(int i=0;i<list.size();i++)
		{
			try {
				if(list.get(i).length()>0)
				{
					if(count<=i)
					{
				help.writeFile(val[i], list.get(i));
				 count++;
					}

				}
				

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}


	
	@When ("^I do click on \"([^\"]*)\"$")
	public void When_I_do_click_on(String st)
	{
		driver.findElement(By.id(st)).click();
		
	}
	
	@When ("^I click on \"([^\"]*)\"$")
	public void When_I_click_on(String st)
	{
		
		WebElement el=driver.findElement(By.linkText(st));
		el.click();
		//driver.findElement(By.linkText(st)).click();
	}
	
	
	
	
	@When ("^I click on link \"([^\"]*)\"$")
	public void When_I_click_on_link(String st)
	{
		String contact=forename+" "+surname;
		List<WebElement> ele=new ArrayList<WebElement>();
		ele=driver.findElements(By.linkText(contact));
		
		for(int i=0;i<ele.size();i++)
		{
			WebElement element=ele.get(i);
			String tn=element.getTagName();
			Point p=element.getLocation();
			
			if(tn.equals("a"))
			{
				if(p.y>500)
				{
				element.click();
				break;
				}
			}
			
		}
		 

		//	ele.click();
		 
	}
	
	@When ("^I take manual input$")
	public void When_I_take_manual_input()
	{
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		try {
			String s=reader.readLine();
			driver.findElement(By.id("00Ng0000001Mxqi")).clear();
			driver.findElement(By.id("00Ng0000001Mxqi")).sendKeys(s);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		
		//TODO here
		
	}
	
	
	@Given ("^I manually enter page url$")
	public void Given_I_manually_enter_page_url()
	{
		System.out.println("enter url here2");
		System.out.println("");
		String path="";
		
		
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		try {
			path=reader.readLine();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		File pathBinary=new File("C:\\Documents and Settings\\maxkarpov\\Local Settings\\Application Data\\Mozilla Firefox\\firefox.exe");
		FirefoxBinary Binary=new FirefoxBinary(pathBinary);
		FirefoxProfile fprofile=new FirefoxProfile();
		
		driver=new FirefoxDriver(Binary,fprofile);
		
		wait=new WebDriverWait(driver,45);			
		driver.get(path);
	}
	
	@When ("^I click on layer \"([^\"]*)\"$")
	public void When_I_click_on_layer(String st)
	{
		WebElement element=driver.findElement(By.id(st));
		Point p=element.getLocation();
		element.click();
		WebElement enab=driver.findElement(By.linkText("Enable Customer User"));
		enab.click();
	//	Point point=new Point(p.x+20,p.y+20);
		
	//	Actions act=new Actions(driver);
	//	act.moveByOffset(point.x, point.y).click().build().perform();
		
	}
	@Given ("^I entered link to community site$")
	public void Given_I_entered_link_to_community_site()
	{
		System.out.println("Please check email and enter the link to the community site here");
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		try {
			comsite=reader.readLine();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(comsite.length()>0)
		{
			driver.navigate().to(comsite);
		}
		
	}
	
	@Given ("^I entered link to community$")
	public void Given_I_entered_link_to_community()
	{
		File pathBinary=new File("C:\\Documents and Settings\\maxkarpov\\Local Settings\\Application Data\\Mozilla Firefox\\firefox.exe");
		FirefoxBinary Binary=new FirefoxBinary(pathBinary);
		FirefoxProfile fprofile=new FirefoxProfile();
		
		driver=new FirefoxDriver(Binary,fprofile);
		
		wait=new WebDriverWait(driver,45);	
		
		
		System.out.println("Please check email and enter the link to the community site here");
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		try {
			comsite=reader.readLine();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(comsite.length()>0)
		{
			driver.navigate().to(comsite);
		}
		
	}
	
	

	@When("^I click on element with id \"([^\"]*)\"$")
	public void When_I_click_on_element_with_id(String st)
	{
		
		
		WebElement el = driver.findElement(By.id(st));
		clickElement(el);
	}
	
	@When("^I click on on element with id \"([^\"]*)\"$")
	public void i_click_on_on_element_with_id(String st) throws Throwable {
	    
		driver.findElement(By.id(st)).click();
	}
	
	@When("^I send up to \"([^\"]*)\"$")
	public void When_I_send_up(String st)
	{
		WebElement el=driver.findElement(By.id(st));
		
		el.click();
		el.clear();
		el.sendKeys(Keys.ARROW_UP);
		
	}
	
	@When("^I set to date \"([^\"]*)\"$")
	public void When_I_set_to_date(String date)
	{
		String[] dat=date.split("/");
		int day=1;
		int month=1;
		int year=70;
		
		if(dat.length==3)
		{
			day=Integer.parseInt(dat[0]);
			month=Integer.parseInt(dat[1]);
			year=Integer.parseInt(dat[2])-1900+1;
		}
		
		WebElement dy=driver.findElement(By.id("personal_details_form_date_of_birth_day"));
		WebElement mn=driver.findElement(By.id("personal_details_form_date_of_birth_month"));
		WebElement yr=driver.findElement(By.id("personal_details_form_date_of_birth_year"));
		
		int[] clicks={day,month,year};
		WebElement[] ele={dy,mn,yr};
		
		for(int i=0;i<ele.length;i++)
		{
			WebElement wel=ele[i];
			
			int cl=clicks[i];
			
			for(int j=0;j<cl;j++)
			{
				wel.sendKeys(Keys.ARROW_UP);
			}
			
		}
		
		
	}
	
	
	
	@When ("^I click on fieldset element \"([^\"]*)\"$")
	public void When_I_click_on_fieldset_element(String st)
	{
		List<WebElement> ele=new ArrayList<WebElement>();
		
		ele=driver.findElements(By.tagName("fieldset"));
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,250)", "");
		for(int i=0;i<ele.size();i++)
		{
			WebElement wel=ele.get(i);
			wel.click();
			List<WebElement> felem=new ArrayList<>();
			List<WebElement> lalem=new ArrayList<>();
			felem=wel.findElements(By.tagName("input"));
			List<WebElement> chlem = new ArrayList<>();
			
			for(int no = 0; no<felem.size(); no++)
			{
				String tp = felem.get(no).getAttribute("type");
				
				if(!tp.equals("hidden"))
				{
					chlem.add(felem.get(no));
				}
			}
			
			lalem=wel.findElements(By.tagName("label"));
			
			for(int j=0;j<chlem.size();j++)
			{
				if(lalem.size()==chlem.size())
				{
				WebElement le=lalem.get(j);
				
				if(le.getAttribute("for").equals(st))
				{
					le.click();
					
				}					
				}else
				{
					WebElement ale = driver.findElement(By.id(st));
					ale.click();
				}

				
				
				
			}
			
			


			
			
		}
		
	}
	
	
	@When("^I click on label \"([^\"]*)\"$")
	public void When_I_click_on_label(String st)
	{
		List<WebElement> ele = new ArrayList<>();
		
		ele = driver.findElements(By.tagName("label"));
		
		
		for(int i = 0; i<ele.size(); i++)
		{
			WebElement wel = ele.get(i);
			
			String fr = wel.getAttribute("for");
			
			if(fr.equals(st))
			{
				wel.click();
				break;
			}
		}
		
		
		
	}
	
	@When("^I press button named \"([^\"]*)\"$")
	public void When_I_press_button_named(String st)
	{
		List<WebElement> ele = new ArrayList<>();
		ele=driver.findElements(By.name(st));
		Helper help = new Helper();
		WebElement el = null;
		
		for(int i = 0; i<ele.size();i++)
		{
			String vl = ele.get(i).getAttribute("value");
			if(help.contains(vles, vl))
			{
				el = ele.get(i);
				break;
				
			}
			
		}
		if(el!=null)
		{
			JavascriptExecutor executor = (JavascriptExecutor)driver;
			executor.executeScript("arguments[0].click();", el);			
		}else
		{
			System.out.println("ready?");
			BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
			try {
				String dob=reader.readLine();
				System.out.println(dob);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
 
	 
		
		
		
	}
	
	@When ("^I set all menu to \"([^\"]*)\"$")
	public void When_I_set_all_menu_to(String st)
	{
		int n=Integer.parseInt(st);
		
		List<WebElement> ele=new ArrayList<WebElement>();
		
		ele=driver.findElements(By.tagName("select"));
		
		for(int i=0;i<ele.size();i++)
		{
			try {
				WebElement element=ele.get(i);
				Select drop=new Select(element);
				drop.selectByIndex(n);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	
	@When ("^I set all multiple select to \"([^\"]*)\"$")
	public void When_I_set_all_multiple_select_to(String st)
	{
		int n=Integer.parseInt(st);
		List<WebElement> ele=new ArrayList<WebElement>();
		
		ele=driver.findElements(By.xpath("//*[@multiple='multiple']"));
		
		for(int i=0;i<ele.size();i++)
		{
			try {
				WebElement element=ele.get(i);
				Select drop=new Select(element);
				drop.selectByIndex(n);

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}		
		
		List<WebElement> ars=new ArrayList<WebElement>();
		
		ars=driver.findElements(By.xpath("//*[@title='Add']"));
		
		for(int j=0;j<ars.size();j++)
		{
			try {
				WebElement arrow=ars.get(j);
				arrow.click();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}
	
	
	@When ("^I populate \"([^\"]*)\" with \"([^\"]*)\"$")
	public void When_I_populate_with(String fl,String txt)
	{
		Helper helper=new Helper();
		String id=null;
		
				try {
					id=helper.getPropValue(fl, "id");
				} catch (Exception e2) {
					// TODO Auto-generated catch block
					e2.printStackTrace();
				}
		if(id!=null)
		{
		WebElement element=driver.findElement(By.id(id));		
		try {

			element.clear();
			element.sendKeys(txt);
		} catch (Exception e) {
 

			
			try {
				((JavascriptExecutor)driver).executeScript("document.getElementById('"+fl+"').type='text';");				
				element.clear();
				if(txt.length()>0)
				{
				element.sendKeys(txt);
				}
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}		
			
		}		
	}
	}
	
	@When("^I press value \"([^\"]*)\"$")
	public void i_press_value(String st)
	{
		WebElement el = getElementByValue(st);
		
		JavascriptExecutor executor = (JavascriptExecutor)driver;
		executor.executeScript("arguments[0].click();", el);	
	}
	
	@When("^I fill input id \"([^\"]*)\" with text \"([^\"]*)\"$")
	public void i_fill_input_id_with_text(String fl, String st)
	{
		
		WebElement el = getElement(fl);
		
		if(el!=null)
		{
			el.sendKeys(st);
		}
		
		
		
	}
	
	@When ("^I fill \"([^\"]*)\" with text \"([^\"]*)\"$")
	public void When_I_fill_with_text(String fl,String txt)
	{
		Helper helper=new Helper();
		
		String id="";
		String date=txt;
		
		
		
		try {
			id=helper.getPropValue(fl, "value");
			Helper.range rng=Helper.range.valueOf(id);
			
			date=helper.getDate(id);
			
			
		} catch (Exception e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		
		
		try {
			
			String mid=helper.getPropValue(fl, "id");
			WebElement element=driver.findElement(By.id(mid));		
			
			try {

				element.clear();
				element.sendKeys(date);
			} catch (Exception e) {
	 

			
			
			
			}
			
			
			
		}catch(Exception ex)
		{}
		
		
	}
	
	@When("^I fill \"([^\"]*)\" with \"([^\"]*)\"$")
	public void When_I_fill_with(String fl,String txt)
	{
		Helper helper=new Helper();
		
		String id="";
		
		
		
		
		try {
			id=helper.getPropValue(fl, "element");

			
			
		} catch (Exception e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}
		
		
		try {
			
			String mid=txt;
			WebElement element=driver.findElement(By.id(id));		
			
			try {

				element.clear();
				element.sendKeys(mid);
			} catch (Exception e) {
	 

			
			
			
			}
			
			
			
		}catch(Exception ex)
		{}
		
		
	}	
	
	@When ("^I fill field \"([^\"]*)\" with text \"([^\"]*)\"$")
    public void When_I_fill_field_with_text(String fl,String txt)
    {
		WebElement element=driver.findElement(By.id(fl));		
		try {

			element.clear();
			element.sendKeys(txt);
		} catch (Exception e) {
 

			
			try {
				((JavascriptExecutor)driver).executeScript("document.getElementById('"+fl+"').type='text';");				
				element.clear();
				if(txt.length()>0)
				{
				element.sendKeys(txt);
				}
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}		
			
		}
	
	
    }
	
	@When ("^I focus on element \"([^\"]*)\"$")
	public void When_I_focus_on_element(String st)
	{
		WebElement element=driver.findElement(By.id(st));
		Actions act=new Actions(driver);
		act.moveToElement(element).build().perform();
	}
	
	@When ("^I select item \"([^\"]*)\" in menu \"([^\"]*)\"$")
	public void When_I_select_item_in_menu(String nt, String st)
	{
		int dssf=0;
		if(st.equals("00Ng0000001MpAy"))
		{
		dssf=1;	
		}
		
		
		int n=Integer.parseInt(nt);
		WebElement drop=driver.findElement(By.id(st));
		Select dropdown=new Select(drop);
		dropdown.selectByIndex(n);;		
	}
	
	@When ("^I set all text fields$")
	public void When_I_set_all_text_fields()
	{
		List<WebElement> txt=new ArrayList<WebElement>();
		
		txt=driver.findElements(By.xpath("//*[@type='text']"));
		
		for(int i=0;i<txt.size();i++)
		{
			WebElement element=txt.get(i);
			element.sendKeys("Test Text:Ignore");
		}
		
	}
	
	@When("^I click button text \"([^\"]*)\"$")
	public void i_click_button_text(String st)
	{
		List<WebElement> ele = new ArrayList<>();
		ele = driver.findElements(By.xpath("//*[@value='"+st+"']"));
		for(int i = 0; i < ele.size(); i++)
		{
			WebElement el = ele.get(i);
			clickElement(el);
			break;
		}
	}
	
	@When ("^I open page \"([^\"]*)\"$")
	public void When_I_open_page(String st)
	{
	 	driver.navigate().to(st);
	}
	@After
	public void TydyUp()
	{
		driver.close();
		
	}
	
	boolean isClassThing(String st)
	{
		boolean result = true;
		
		List<WebElement> ele = new ArrayList<>();
		ele = driver.findElements(By.className(st));
		
		if(ele.size()<1)
		{
			result = false;
		}
		
		return result;
	}
	boolean isIdThing(String st)
	{
		boolean result = true;
		
		List<WebElement> ele = new ArrayList<>();
		ele = driver.findElements(By.id(st));
		
		if(ele.size()<1)
		{
			result = false;
		}
		
		return result;
	}
	
	
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
	
	WebElement getElementByValue(String val)
	{
		WebElement result = null;
		
			List<WebElement> ele = new ArrayList<>();
			
			ele = driver.findElements(By.xpath("//input[@value='"+val+"']"));
			
			for(int i = 0; i<ele.size(); i++)
			{
				result = ele.get(i);
				break;
			}
		return result;
	}
	
	
	void clickElement(WebElement el)
	{
		JavascriptExecutor executor = (JavascriptExecutor)driver;
		executor.executeScript("arguments[0].click();", el);	
	}
	
	
	
}
