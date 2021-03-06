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
import cucumber.api.java.Before;
import org.openqa.selenium.Cookie;
import org.apache.commons.io.IOUtils;
import org.junit.After;
 

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.Point;
import org.openqa.selenium.Rectangle;

import cucumber.api.DataTable;
import cucumber.api.Scenario;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import helper.Compare;
import helper.Helper;
import helper.Person;
import junit.framework.Assert;
import main.java.Cred;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxBinary;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.WebDriverWait;

import PageObjectModel.CardPayment;
import PageObjectModel.Confirmation;
import PageObjectModel.DDConfirm;
import PageObjectModel.DDSetup;
import PageObjectModel.DDSummary;
import PageObjectModel.FieldSelector;
import PageObjectModel.PayPlan;
import PageObjectModel.PaymentType;
import PageObjectModel.PersonalDetails;
import PageObjectModel.SFLanding;
import PageObjectModel.SFLogin;
import PageObjectModel.ThankYou;
import PageObjectModel.WebField;
import PageObjectModel.MemberSummary;
import PageObjectModel.Opportunities;
import PageObjectModel.OpportunityRecord;
import PageObjectModel.POM;

import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;

public class LoginTest {

	protected WebDriver driver;
	protected WebDriverWait wait;
	protected boolean leap = true;
	protected List<String> lead=new ArrayList<String>();
	protected String forename;
	public String error;
	protected String surname;
	protected int count=0;
	protected String comsite="";
	protected String orid="";
	protected String total="";
	protected String monthly="";
	protected String fee="";
	public boolean cutoffset;
	protected String membership="";
	protected String memcost="";
	protected String prorata="";
	protected String mysite;
	protected String payref="";
	protected String hidprorata;
	protected String discount;
	protected String hidfee;
	protected String disc;
	protected String next;
	protected String hidnext;
	protected String site;
	protected String myamount;
	protected boolean DD;
	protected Scena scena;
	private boolean postDD = false;
	public boolean cutoff;
	public PayPlan payplan;
	public PersonalDetails personaldetails;
	public MemberSummary membersummary;
	public PaymentType paymenttype;
	public CardPayment cardpayment;
	public Confirmation confirmation;
	public SFLogin sflogin;
	public SFLanding sflanding;
	public Opportunities opportunities;
	public OpportunityRecord opportunityrecord;
	public DDConfirm ddconfirm;
	public DDSetup ddsetup;
	public DDSummary ddsummary;
	public ThankYou thankyou;
	protected Person person;
	protected Payment pay;
	protected POM currentPage;
	protected String[] vles = {"Next","Set up Direct Debit", "Proceed to payment","VISA_brand"};
	protected String[] amounts={total,membership,fee,prorata,monthly,hidprorata,hidfee,disc,next,hidnext};
	
	List<String> vals = new ArrayList<>();
	public Scenario scenario;
	
	public enum page
	{
		salesforce,vione,waf
	}
	


	@Before
	public void before(Scenario scenario) 
	{
	   
		this.scenario = scenario;
	    this.scena = new Scena(scenario.getName());
	   
	}
	
	
	//actual givens
	
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
	
	@Given("^I start ie \"([^\"]*)\"$")
	public void i_start_ie(String st) throws Throwable
	{
		site=Help.capitalize(st);
		System.out.println("TEST STARTED IN IE: "+scenario.getName());
		String path = Cred.waf+st;
		System.setProperty("webdriver.ie.driver", "C:\\SeleniumDrivers\\IEDriverServer.exe");
		driver = new InternetExplorerDriver();	
		
		 wait=new WebDriverWait(driver,45);			
		 driver.get(path);
		 driver.manage().window().maximize();
		
	}
	
	
	@Given("^I start chrome \"([^\"]*)\"$")
	public void i_start_chrome(String st) throws Throwable
	{
		site=Help.capitalize(st);
		System.out.println("TEST STARTED IN CHROM: "+scenario.getName());
		String path = Cred.waf+st;
		System.setProperty("webdriver.chrome.driver", "C:\\SeleniumDrivers\\chromedriver.exe");
		driver = new ChromeDriver();	
		
		wait=new WebDriverWait(driver,45);			
		 driver.get(path);
		 driver.manage().window().maximize();
		
	}	
	
	@Given("^I start \"([^\"]*)\"$")
	public void i_start(String st) throws Throwable
	{
		site=Help.capitalize(st);
		System.out.println("TEST STARTED: "+scenario.getName());
		String path = Cred.waf+st;
		
		File pathBinary=new File("C:\\NB\\firefox-sdk\\bin\\firefox.exe");
		FirefoxBinary Binary=new FirefoxBinary(pathBinary);
		FirefoxProfile fprofile=new FirefoxProfile();
	//	fprofile.setPreference("dom.forms.number", false);
		driver=new FirefoxDriver(Binary,fprofile);
		
		wait=new WebDriverWait(driver,45);			
		 driver.get(path);
		 driver.manage().window().maximize();
		
		
		
	}
	
	
	@Given("^I open yandex$")
	public void i_open_yandex() 
	{
		String path = "http://yandex.ru";
		File pathBinary=new File("C:\\NB\\firefox-sdk\\bin\\firefox.exe");
		FirefoxBinary Binary=new FirefoxBinary(pathBinary);
		FirefoxProfile fprofile=new FirefoxProfile();
	//	fprofile.setPreference("dom.forms.number", false);
		driver=new FirefoxDriver(Binary,fprofile);
		
		wait=new WebDriverWait(driver,45);			
		 driver.get(path);
		 driver.manage().window().maximize();
	}
	
	@Given("^I open the page \"([^\"]*)\"$")
	public void i_open_the_page(String st)  {


		System.out.println("TEST STARTED: "+scenario.getName());
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
	
	//new Whens
	
	@Then("^I should be on DDSummary page$")
	public void i_should_be_on_DDSummary_page() 
    {
			sleep(4000);
			ddsummary = new DDSummary(driver);
			currentPage = ddsummary;
			
			wait.until(ExpectedConditions.elementToBeClickable(currentPage.proceed));
	}
	
	@Then("^I should be done setting DD$")
	public void i_should_be_done_setting_DD() 
	{
		thankyou = new ThankYou(driver);
		currentPage = thankyou;
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("ThankYou_next")));
	}
	
	@When("^I continue to payment$")
	public void i_continue_to_payment() 
	{
		WebElement el = currentPage.get("ThankYou_next");
		clickElement(el);
	}

	
	@When("^I enter bank details$")
	public void i_enter_bank_details() 
	{
		WebElement acc = currentPage.get("DDSetup_account");
		acc.clear();
		populateElement(acc,person.getAccount());
		
		WebElement sc1 = currentPage.get("DDSetup_SortCode1");
		sc1.clear();
		populateElement(sc1,person.getSortCode()[0]);

		WebElement sc2 = currentPage.get("DDSetup_SortCode2");
		sc2.clear();
		sc2.sendKeys(person.getSortCode()[1]);
		WebElement sc3 = currentPage.get("DDSetup_SortCode3");
		sc3.clear();
		populateElement(sc3,person.getSortCode()[2]);
		
		WebElement hold = currentPage.get("DDSetup_holder");
		hold.clear();
		hold.sendKeys(person.firstName + " " + person.lastName);
		
		currentPage.proceed.click();
		
		
	}
	
	@When("^I confirm details$")
	public void i_confirm_details() 
	{
		WebElement el = currentPage.get("DDConfirm_confirm");
		clickElement(el);
	}
	
	@When("^I proceed to next page$")
	public void i_proceed_to_next_page() 
	{
		WebElement el = currentPage.proceed;
		clickElement(el);
	}
	
	@When("^I set marketing preferences to \"([^\"]*)\"$")
	public void i_set_marketing_preferences_to(String st) throws Throwable {
		
		 WebElement el = currentPage.get(st);
		 clickElement(el);
		
	}
	
	@When("^I proceed to payment$")
	public void i_proceed_to_payment() 
    {
		String st = "MemberSummary_proceed";
		if(DD&!postDD)
		{
			st = "MemberSummary_DD";
		}
		
		
		
		WebElement el = currentPage.get(st);
		clickElement(el);
	}

	@Then("^I save results$")
	public void i_save_results() throws Throwable 
	{
		String[] temp=new String[11];
		 
		String url = driver.getCurrentUrl();
		
		String id=url.substring(Cred.salesforce.length());
		
	
		
		WebElement mel = (new Helper()).getCell(driver, "Membership Reference");
		
		membership = mel.getText();
		
		//total,membership,fee,prorata,monthly
		//String[] capt=new String[10];
		
		String capt[] = {"scenario","forename","surname","total","monthly","fee","prorata","orid","payref","membership","id"};
		
		if(forename==null)
		{
			forename = "David";
			surname = "Archer";
		}
		String monthly = "";
		if(pay.getMontlyString()!=null)
		{
			monthly = pay.getMontlyString();
		}
		
		temp[0] = scenario.getName();
		temp[1] = person.firstName;
		temp[2] = person.lastName;
		temp[3] = myamount;
		temp[4] = pay.getMontlyString();
		temp[5] = pay.getFeeString();
		temp[6] = pay.getProrataString();
		temp[7] = orid;
		temp[8] = payref;	
		temp[9] = membership;
		temp[10] = id;
		
		
		
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
		System.out.println("TEST COMPLETED: "+scenario.getName()+" STATUS: "+scenario.getStatus());
		
		if(!person.lastName.equals("Archer"))
		{
		help.writeFile("firstname", person.firstName);
		help.writeFile("lastname", person.lastName);			
		}

		driver.close();
	}

	// New Thens
	
	@Then("^I should be on DDSetup page$")
	public void i_should_be_on_DDSetup_page() 
	{
		sleep(3000);
		ddsetup = new DDSetup(driver);
		currentPage = ddsetup;
		
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("DDSetup_account")));
		
	}
	
	
	@Then("^I should be on DD page$")
	public void i_should_be_on_DD_page()
    {
		sleep(3000);
		ddconfirm = new DDConfirm(driver);
		currentPage = ddconfirm;
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("DDConfirm_edit")));
		
	}
	
	@Then("^I should see following values$")
	public void i_should_see_following_values(DataTable dt) 
	{
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e2) {
			// TODO Auto-generated catch block
			 
		}
		pay = new Payment();
		String scn = scenario.getName();
		Scena sc = new Scena(scn);
		
		if(!DD)
		{
		WebElement mb = currentPage.get("PayPlan_membership");
		pay.setMembership(mb.getAttribute("innerText"));			
		}

		WebElement fe = currentPage.get("PayPlan_fee");
		pay.setFee(fe.getAttribute("innerText"));
		
		WebElement pr = currentPage.get("PayPlan_prorata");
		pay.setProrata(pr.getAttribute("innerText"));
		
		if(DD)
		{
		WebElement mn = currentPage.get("PayPlan_month");
		pay.setMonthly(mn.getAttribute("innerText"));			
		}

		 
		
		WebElement nx = currentPage.get("PayPlan_nex");
		
		String nextm = "";
		
		
		try {
			nextm = nx.getAttribute("innerText");
		} catch (Exception e1) {
			// TODO Auto-generated catch block
		//	e1.printStackTrace();
		}
		
		pay.setNextMonth(nextm);
		
		WebElement to = currentPage.get("PayPlan_total");
		pay.setTotal(to.getAttribute("innerText"));
		
		if(sc.isROMF)
		{
			
		WebElement proprom = currentPage.get("PayPlan_prorataProm");
		String ppm = "";

		try {
			ppm = proprom.getAttribute("innerText");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		pay.setProrataProm(ppm);			
			
		}
		
		double prorata = 0;
		Compare comp;
		if(!DD)
		{
			
			comp = new Compare(pay.getMembershipCost(),Double.parseDouble(Help.get2TableValue(dt, "membership")),Compare.type.membership);
			comp.compare();
			
	
			prorata = Help.getProrataOnce(pay.getMembershipCost());
//			
		}else
		{
			
			comp = new Compare(pay.getMonthlyCost(),Double.parseDouble(Help.get2TableValue(dt, "monthly")),Compare.type.monthly);
			comp.compare();
						
			prorata = Help.getProrataMonthly(pay.getMonthlyCost());
		}
		
		Compare compro;
		
		if(!sc.isROMF)
		{
			
			compro = new Compare(pay.getProrataCost(),prorata,Compare.type.prorata);
			compro.compare();
			
		}else
		{
			compro = new Compare(pay.getProrataPromCost(),prorata,Compare.type.prorata);
			comp.compare();

		}
		
			Compare compfee = new Compare(pay.getFeeCost(),Double.parseDouble(Help.get2TableValue(dt, "activation")),Compare.type.fee);
			compfee.compare();
			
		
		double expectedTotal = 0;
		
		if(DD)
		{
			double nxt = 0;
			
			if(Help.isCutOff())
			{
				nxt = pay.getMonthlyCost();
			}
			
			expectedTotal = prorata + Double.parseDouble(Help.get2TableValue(dt, "activation"))+nxt;
		}else
		{
			expectedTotal = prorata + Double.parseDouble(Help.get2TableValue(dt, "activation")) + pay.getMembershipCost(); 
		}
		
		Compare compex = new Compare(pay.getTotalCost(),expectedTotal,Compare.type.total);
		compex.compare();
		

	}
	
	@Then("^I should be on MemberSummary page$")
	public void i_should_be_on_MemberSummary_page() {
 
		membersummary = new MemberSummary(driver);
		currentPage = membersummary;
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("MemberSummary_MarketingEmail")));
		
	}
	
	@Then("^I am on SF Landing page$")
	public void i_am_on_SF_Landing_page() throws Throwable 
	{
		try {
			Thread.sleep(7000);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		sflanding = new SFLanding(driver);
		currentPage = sflanding;
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("SFLanding_opportunities")));
		
	}

	
	@Then("^I should be on CardPayment page$")
	public void i_should_be_on_CardPayment_page() 
    {
		cardpayment = new CardPayment(driver);
		currentPage = cardpayment;
		
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("CardPayment_number")));	
		
	}
	
	@Then("^I should be on login page$")
	public void i_should_be_on_log_in_page()
    {
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		sflogin = new SFLogin(driver);
		currentPage = sflogin;
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("SFLogin_username")));
	}
	
	@Then("^I should be on Confirmation page$")
	public void i_should_be_on_Confirmation_page() 
	{
		
		try {
			Thread.sleep(15000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		
		confirmation  = new Confirmation(driver);
		currentPage = confirmation;

		
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("Confirmation_total")));
		WebElement sp = currentPage.get("Confirmation_order");
		orid = sp.getText();

	}

	
	@Then("^I select pay plan$")
	public void i_select_pay_plan(DataTable tb) throws Throwable {
		
 
		
		String type = Help.get2TableValue(tb, "type");
		String plan = Help.get2TableValue(tb, "plan");
		String pay = Help.get2TableValue(tb, "pay");
		
		WebElement typel = null;
		
		if(type.equals("Anytime"))
		{
			typel = currentPage.get("PayPlan_anytime");
		}else
		{
			typel = currentPage.get("PayPlan_offpeak");
		}
		 
		clickElement(typel);
		
		WebElement payel = null;
		
		if(pay.equals("Once"))
		{
			payel = currentPage.get("PayPlan_once");
			DD = false;
		}else
		{
			payel = currentPage.get("PayPlan_monthly");
			DD = true;
		}
		
	     clickElement(payel);
	     
	     WebElement plael = null;
	     
	     switch(plan)
	     {
	     case "12 months WB":
	     {
	    	 plael = currentPage.get("PayPlan_12monthsWB");
	    	 break;
	     }
	     case "12 months":
	     {
	    	 plael = currentPage.get("PayPlan_12months");
	    	 break;
	     }
	     
	     }
	     
	     clickElement(plael);
	}

	
	@Given ("^I navigate to salesforce$")
	public void Given_I_navigate_to_salesforce()
	{
		driver.navigate().to(Cred.salesforce);
	}
	
	@Then("^I should see all fields accurate$")
	public void i_should_see_all_fields_accurate() throws Throwable {
 
		sleep(5000);
		
		opportunityrecord = new OpportunityRecord(driver);
		currentPage = opportunityrecord;
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("OpportunityRecord_stage")));
		
		String Amount =currentPage.get("OpportunityRecord_amount").getText();
		myamount = Amount;
		String Site = Help.getCell(driver, "Site").getText();
		String Name = currentPage.get("OpportunityRecord_name").getText();
		String Order = currentPage.get("OpportunityRecord_order").getText();
		String Pay = currentPage.get("OpportunityRecord_payment").getText();
		payref = Pay;
		String Member = currentPage.get("OpportunityRecord_member").getText();
		membership = Member;
		String name = person.firstName+" "+person.lastName;
		String amount = "";
		
		if(!DD)
		{
			amount = pay.getTotalString();
		}else
		{
			amount = Double.toString((pay.getMonthlyCost()*12)+pay.getProrataCost()+pay.getFeeCost()+pay.getNextCost());
		}
		
		Compare comp = new Compare(Amount,amount,Compare.type.amount);
		comp.compare();
		
		//compareStrings(amount,Amount, "amount");
		compareStrings(site,Site,"site");
		compareStrings(orid,Order,"order id");
		compareStrings(name,Name,"opportunity name");
		
		if(Member.length()<1)
		{
			System.out.println("Membership number not populated in SF");
		}
		if(Pay.length()<1)
		{
			System.out.println("Payment number not populated in SF");
		}
		
	}
	
	@Then("^I should be on PayPlan page$")
	public void i_should_be_on_PayPlan_page() 
	{
		 payplan = new PayPlan(driver);
		 currentPage = payplan;
		 wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("PayPlan_basket")));
	}
	
	@Then("^I search for my record$")
	public void i_search_for_my_record()
	{
		sleep(5000);
		opportunities = new Opportunities(driver);
		currentPage = opportunities;
		
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("Opportunities_go")));
		currentPage.get("Opportunities_go").click();
		sleep(3000);
		
		WebElement opp = driver.findElement(By.xpath("//div[text()='"+orid+"']"));
		
		WebElement td = opp.findElement(By.xpath("parent::*"));
		
		WebElement tr = td.findElement(By.xpath("parent::*"));
		
		List<WebElement> ople = new ArrayList<>();
		
		ople = tr.findElements(By.tagName("td"));
		
		if(ople.size()>1)
		{
			WebElement op = ople.get(2).findElement(By.tagName("a"));
			clickElement(op);
		}
		
		
		
	}

	
	@When("^I fill in discount code \"([^\"]*)\"$")
	public void i_fill_in_discount_code(String st)
	{
		WebElement el = currentPage.get("PayPlan_discount");
		el.click();
		WebElement iel = currentPage.get("PayPlan_code");
		iel.clear();
		iel.sendKeys(st);
		WebElement ap = currentPage.get("PayPlan_apply");
		ap.click();
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@When("^I log in$")
	public void i_log_in()
    {
	  
		WebElement user = currentPage.get("SFLogin_username");
		user.clear();
		user.sendKeys(Cred.Box.login);
		
		WebElement password = currentPage.get("SFLogin_password");
		password.clear();
		password.sendKeys(Cred.Box.password);
		
		WebElement submit = currentPage.get("SFLogin_login");
		clickElement(submit);
	}

	
	@When("^I do fill field \"([^\"]*)\" with \"([^\"]*)\"$")
	public void i_do_fill_field_with(String fl, String vl) 
	{
		WebElement el = currentPage.get(fl);
		el.sendKeys(vl);
	}
	
	@When("^I fill number field \"([^\"]*)\" with \"([^\"]*)\"$")
	public void When_I_fill_number_field(String fl,String st)
	{
		 
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("document.getElementById('"+fl+"').value='"+st+"';");
		
		
	}
	
	@When("^I switch to Opportunities tab$")
	public void i_switch_to_Opportunities_tab()
	{
		WebElement el = currentPage.get("SFLanding_opportunities");
		clickElement(el);
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
		
		WebElement lo = driver.findElement(By.id("username"));
		WebElement pa = driver.findElement(By.id("password"));
		
		populateElement(lo,Cred.max.Login);
		populateElement(pa,Cred.max.Password);
		
	//	driver.findElement(By.id("username")).sendKeys(Cred.max.Login);
	//	driver.findElement(By.id("password")).sendKeys(Cred.max.Password);
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
	
	
	@When("^I fill \"([^\"]*)\"$")
	public void i_fill(String st)
	{
		
		FieldSelector ele = new FieldSelector(st,payplan);
		WebElement el = ele.element;
		el.sendKeys("test");
		
	}
	
	
	@When("^I fill in card details$")
	public void i_fill_in_card_details()
	{
		WebElement num = currentPage.get("CardPayment_number");
		num.clear();
		num.sendKeys(person.card); 
		
		WebElement month = currentPage.get("CardPayment_ExpirationMonth");
		Select mon = new Select(month);
		mon.selectByIndex(person.expMonth);
		
		
		WebElement year = currentPage.get("CardPayment_ExpirationYear");
		Select yer = new Select(year);
		yer.selectByIndex(person.expYear);
		
		WebElement cod = currentPage.get("CardPayment_code");
		cod.clear();
		cod.sendKeys(person.code);
		
		WebElement pay = currentPage.get("CardPayment_pay");
		clickElement(pay);
		
		
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
			String cont = wel.getText().replace("�", "").replace(" ", "");

			 
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
	
	@When("^I get basket monthly$")
	public void i_get_basket_monthly() throws Throwable 
	{
		String disce = "basket-drawer__value basket-drawer__value--discount-amount";
		String mem = "basket-drawer__value js-basket-membership";
		String feee = "basket-drawer__value js-basket-activation";
		String removedfee = "basket-drawer__value basket-drawer__value--promotion js-basket-activation-promotion";
		String proratae = "basket-drawer__value js-basket-prorata";
		String removedprorata = "basket-drawer__value basket-drawer__value--promotion js-basket-prorata-promo";
		String nexte = "basket-drawer__value js-basket-next-month";
		String removednext = "basket-drawer__value basket-drawer__value--promotion js-basket-monthly";
		String totale = "basket-drawer__value js-basket-today";
		String monthlye = "js-basket-monthly";
		 
		String[] vals = {totale,mem,feee,proratae,monthlye,removedprorata,removedfee,disce,nexte,removednext};
		
		for(int i = 0; i<vals.length; i++)
		{
			if(i!=4)
			{
			amounts[i] = getClassText(vals[i]);
			
				
			}else
			{
				amounts[i] = getClassText(vals[9]);
				if(amounts[i].equals(""))
				{
					amounts[i] = getClassSpanText(vals[i]);
				}
			}
		}
		
	//	protected String[] amounts={total,membership,fee,prorata,monthly,hidprorata,hidfee,disc,next,hidnext};
	//                                 0       1       2    3       4         5        6     7    8    9	
			
		
		
	}
	@When("^I get basket$")
	public void i_get_basket() throws Throwable 
	{
		String disce = "basket-drawer__value basket-drawer__value--discount-amount";
		String mem = "basket-drawer__value js-basket-membership";
		String feee = "basket-drawer__value js-basket-activation";
		String removedfee = "basket-drawer__value basket-drawer__value--promotion js-basket-activation-promotion";
		String proratae = "basket-drawer__value js-basket-prorata";
		String removedprorata = "basket-drawer__value basket-drawer__value--promotion js-basket-prorata-promo";
		String nexte = "basket-drawer__value js-basket-next-month";
		String removednext = "basket-drawer__value basket-drawer__value--promotion js-basket-monthly";
		String totale = "basket-drawer__value js-basket-today";
		String monthlye = "js-basket-monthly";
		 
		String[] vals = {totale,mem,feee,proratae,monthlye,removedprorata,removedfee,disce,nexte,removednext};
		
		for(int i = 0; i<vals.length; i++)
		{
			if(i!=4)
			{
			amounts[i] = getClassText(vals[i]);
				
			}else
			{
				amounts[i] = getClassSpanText(vals[i]);
			}
		}
		
	//	protected String[] amounts={total,membership,fee,prorata,monthly,hidprorata,hidfee,disc,next,hidnext};
	//    0      1          2    3      4          5	
		
		
		
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
			
			WebElement wel = getClassElement(cls);
					//driver.findElement(By.className(cls));
			
			List<WebElement> ele = new ArrayList<>();
			
			ele = wel.findElements(By.tagName("div"));
			String cont = "";
			cont = wel.getText();
			
			if(!isThing(cont))
			{
			for(int i = 0; i<ele.size(); i++)
			{
				WebElement we = ele.get(i);
				
				String txt = we.getText();
				
			//	String text = txt.replace("�", "");

				
				if(txt.contains("�"))
				{
					 cont = txt;
				}
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
			case "proratahid":
			{
				 
				amounts[5] = cont;
				break;
			}	
			case "fee":
			{
				amounts[2] = cont;
				break;
			}	
			case "feehid":
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
		double vue = Double.parseDouble(value.replace("�", ""));
		value = "�"+help.norm(vue);

		double month = help.getNum(amounts[4]);
		int mts = Integer.parseInt(st);
		double pro = help.getNum(amounts[3]);
		double fee = help.getNum(amounts[2]);
		double tot = (month * mts) + pro + fee;
		String amount = help.norm(tot);
		
		
		//String amount = Double.toString(tot);
		
		if(!value.equals("�"+amount))
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
	
	@Then("^I check total monthly$")
	public void i_check_total_monthly() throws Throwable 
	{
		//{total,membership,fee,prorata,monthly,hidprorata,hidfee,disc,next,hidnext};
		 //   0    1         2   3        4        5        6      7     8    9
		String[] labels = {"total","membership","activation fee","prorata","removed prorata","removed fee","discount","next month fee","removed next month"};
		Helper help = new Helper();
		double[] db = new double[amounts.length];
		
		for(int i = 0; i<db.length; i++)
		{
			try {
				db[i] = Double.parseDouble(amounts[i].replace("�", ""));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		Double tot = 0.0;
		double nex = 0.00;
		double pro =0.00;
		
		int romf = scenario.getName().indexOf("ROMF");
		
		int nmf = scenario.getName().indexOf("NMF");
		
		if(romf>-1)
		{
			pro = db[5];
		}else
			{
			pro = db[3];
			}
					
		
		if(nmf>-1)
		{
			nex = db[8];
		}else
		{nex = db[9];}
		
		if(cutoffset)
		{
			if(cutoff)
			{
				tot = db[2]+db[3]+nex;
			}else
			{
				tot = db[2]+db[3];
				
			}
			
			
		}else
		{
			if(help.isCutOff())
			{
				tot = db[2]+db[3]+nex;
			}else
			{
				tot = db[2]+db[3];
			}
			
		}
		

		
		double calt = (double) Math.round(tot * 100) / 100;
		double totl = (double) Math.round(db[0] * 100) / 100;
		double comp = Double.compare(calt,totl);
		
		boolean com = compare(tot,db[0]);
		 if(!com)
		 {
			 interact("error: total of "+amounts[0]+" in basket doesn't match expected "+Double.toString(tot));
		 }
		 	Date date = new Date();
		    Calendar cal = Calendar.getInstance();
		    cal.setTime(date);
		    int year = cal.get(Calendar.YEAR);
		    int month = cal.get(Calendar.MONTH);
		    int day = cal.get(Calendar.DAY_OF_MONTH);
			
		    int dim = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		    int diy = cal.getActualMaximum(Calendar.DAY_OF_YEAR);
		     
//		    double dy = mon/dim;
//		    
		   int rem = dim-day+1;
		   
		   double pr =0;
		 

		   double dy = db[9]/dim;
		   double pror = dy*rem;
		   
		   if((double) Math.round(pror * 100) / 100!=(double) Math.round(pro * 100) / 100)
		   {
			   interact("error: prorata in basket of "+pro+" does not match expected "+Double.toString(pror));
		   }
		 		
	
	
	}
	
	@Then("^I check total \"([^\"]*)\"$")
	public void i_check_total(String st) throws Throwable 
	{
		//{total,membership,fee,prorata,monthly,hidprorata,hidfee,disc,next,hidnext};
		 //   0    1         2   3        4        5        6      7     8    9
		String[] labels = {"total","membership","activation fee","prorata","removed prorata","removed fee","discount","next month fee","removed next month"};
		Helper help = new Helper();
		double[] db = new double[amounts.length];
		
		for(int i = 0; i<db.length; i++)
		{
			try {
				db[i] = Double.parseDouble(amounts[i].replace("�", ""));
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		Double tot = 0.0;
		if(help.isCutOff())
		{
			tot = db[1]+db[2]+db[3];
		}else
		{
			tot = db[1]+db[2]+db[3];
		}
		
		double calt = (double) Math.round(tot * 100) / 100;
		double totl = (double) Math.round(db[0] * 100) / 100;
		double comp = Double.compare(calt,totl);
		
		boolean com = compare(tot,db[0]);
		 if(!com)
		 {
			 interact("error: total of "+amounts[0]+" in basket doesn't match expected "+Double.toString(tot));
		 }
		 	Date date = new Date();
		    Calendar cal = Calendar.getInstance();
		    cal.setTime(date);
		    int year = cal.get(Calendar.YEAR);
		    int month = cal.get(Calendar.MONTH);
		    int day = cal.get(Calendar.DAY_OF_MONTH);
			
		    int dim = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
		    int diy = cal.getActualMaximum(Calendar.DAY_OF_YEAR);
		     
//		    double dy = mon/dim;
//		    
		   int rem = dim-day+1;
		   
		   double pr =0;
		 

		   double dy = db[1]/diy;
		   double pror = dy*rem;
		   
		   if((double) Math.round(pror * 100) / 100!=(double) Math.round(db[5] * 100) / 100)
		   {
			   interact("error: removed prorata in basket of "+amounts[5]+" does not match expected "+Double.toString(pror));
		   }
		 
		 
		 
	}
	
	
	@Then("^I check figures \"([^\"]*)\"$")
	public void i_check_figures(String st) 
	{
		
		int m = Integer.parseInt(st);
		Helper help = new Helper();
		double ttl = Double.parseDouble(amounts[0].replace("�", ""));
		
		double fee = Double.parseDouble(amounts[2].replace("�", ""));
		double pro = Double.parseDouble(amounts[3].replace("�", ""));
		double mon = Double.parseDouble(amounts[4].replace("�", ""));	
		
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
			ttl = Double.parseDouble(amounts[0].replace("�", ""));
		} catch (NumberFormatException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		double mem = 0;
		try {
			mem = Double.parseDouble(amounts[1].replace("�", ""));
		} catch (NumberFormatException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		double fee = 0;
				try {
					fee = Double.parseDouble(amounts[2].replace("�", ""));
				} catch (NumberFormatException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
		double pro = 0;
		try {
			
			if(scenario.getName().contains("ROMF"))
			{
				pro = Double.parseDouble(amounts[5].replace("�", ""));		
				
			}
			else
			{
				
			pro = Double.parseDouble(amounts[3].replace("�", ""));	
			}
			
		} catch (NumberFormatException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		double mon = 0;
		try {
			mon = Double.parseDouble(amounts[4].replace("�", ""));
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
		case "amount":
		{
			filled=0;
			//{total,membership,fee,prorata,monthly,hidprorata,hidfee,disc,next,hidnext};
			//   0      1         2   3        4       5          6    7     8      9
			
			double mnt = Double.parseDouble(amounts[4].replace("�", ""));
			if(mnt == 0.00)
			{
				mnt = Double.parseDouble(amounts[1].replace("�", ""));
			}
			double f = Double.parseDouble(amounts[2].replace("�", ""));
			double pro = Double.parseDouble(amounts[3].replace("�", ""));
			double yr = (mnt*12)+f+pro;
			
			double sm = (double) Math.round(yr * 100) / 100;
			vl = "�"+Double.toString(sm);
			String[] aft = vl.split("\\.");
			if(aft[1].length()<2)
			{
				vl = vl+"0";
			}
			
			break;
		}
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
		case "Shoreditch":
		{
			vl = "Shoreditch";
			break;
		}
		case "Guiseley":
		{
			vl = "Guiseley";
			break;
		}
		case "Ealing":
		{
			vl = "Ealing";
			break;
		}
		case "Preston":
		{
			vl = "Preston";
			break;
		}
		case "Derby":
		{
			vl = "Derby";
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
	
	@Then("^I set cutoff \"([^\"]*)\"$")
	public void i_set_cutoff(String st)
	{
		cutoffset = true;
		switch(st)
		{
			case "true":
				{
					cutoff = true;
					break;
				}
			case "false":
				{
					cutoff = false;
					break;
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
		String[] temp=new String[11];
		 
		String url = driver.getCurrentUrl();
		
		String id=url.substring(Cred.salesforce.length());
		
		//WebElement mel = driver.findElement(By.id("00N8E000000e9lj_ileinner"));
		
		WebElement mel = (new Helper()).getCell(driver, "Membership Reference");
		
		membership = mel.getText();
		
		//total,membership,fee,prorata,monthly
		//String[] capt=new String[10];
		
		String capt[] = {"scenario","forename","surname","total","monthly","fee","prorata","orid","payref","membership","id"};
		
		if(forename==null)
		{
			forename = "David";
			surname = "Archer";
		}
		temp[0] = scenario.getName();
		temp[1] = forename;
		temp[2] = surname;
		temp[3] = amounts[0];
		temp[4] = amounts[4];
		temp[5] = amounts[2];
		temp[6] = amounts[3];
		temp[7] = orid;
		temp[8] = payref;	
		temp[9] = membership;
		temp[10] = id;
		
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
		System.out.println("TEST COMPLETED: "+scenario.getName()+" STATUS: "+scenario.getStatus());
		driver.close();
	}
	
	@When("^I do click \"([^\"]*)\"$")
	public void i_do_click(String st)
	{
		WebElement el = payplan.get(st);
		clickElement(el);
		
	}
	
	@Then("^I expand basket$")
	public void i_expand_basket()
	{
		WebElement el = currentPage.get("PayPlan_basket");
		clickElement(el);
	}
	
	@Then("^I should be on PersonalDetails page$")
	public void i_should_be_on_PersonalDetails_page()
	{
		personaldetails = new PersonalDetails(driver);
		currentPage = personaldetails;
		wait.until(ExpectedConditions.elementToBeClickable(currentPage.get("nameform")));
		
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
	
	@Then("^I should be on PaymentType page$")
	public void i_should_be_on_PaymentType_page()
    {
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		paymenttype = new PaymentType(driver);
		currentPage = paymenttype;

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
	
	@When("^I set medical condition to \"([^\"]*)\"$")
	public void i_set_medical_condition_to(String st) 
    {
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			
		}
		WebElement condition = currentPage.get(st);
		clickElement(condition);
		
	}

	@When("^I agree to terms and conditions$")
	public void i_agree_to_terms_and_conditions() 
	{
		WebElement el = currentPage.get("MemberSummary_Conditions");
		clickElement(el);
	}

	
	@When("^I populate personal details$")
	public void i_populate_personal_details()
	{
		WebElement title = currentPage.get("PersonalDetails_title");
		Select ttl = new Select(title);
		ttl.selectByIndex(1);
		
		person = new Person(DD);
		
		WebElement first = currentPage.get("PersonalDetails_firstname");
		first.clear();
		first.sendKeys(person.firstName);
		
		WebElement last = currentPage.get("PersonalDetails_lastname");
		last.clear();
		last.sendKeys(person.lastName);
		
		WebElement day = currentPage.get("PersonalDetails_dobDay");
		populateElement(day,person.dob_day);
		
		WebElement month = currentPage.get("PersonalDetails_dobMonth");
		populateElement(month,person.dob_month);
		
		WebElement year = currentPage.get("PersonalDetails_dobYear");
		populateElement(year,person.dob_year);
		
		WebElement gender = currentPage.get("PersonalDetails_gender");
		Select gend = new Select(gender);
		gend.selectByIndex(person.gender);
		
		WebElement house = currentPage.get("PersonalDetails_house");
		house.clear();
		house.sendKeys(person.house);
		
		WebElement postcode = currentPage.get("PersonalDetails_postcode");
		postcode.clear();
		postcode.sendKeys(person.postcode);
		
		WebElement lookup = currentPage.get("PersonalDetails_lookup");
		lookup.click();
		
		try {
			Thread.sleep(2000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		WebElement email = currentPage.get("PersonalDetails_email");
		email.clear();
		email.sendKeys(person.email);
		
		WebElement email2 = currentPage.get("PersonalDetails_email2");
		email2.clear();
		email2.sendKeys(person.email);
		
		WebElement phone = currentPage.get("PersonalDetails_phone");
		phone.clear();
		phone.sendKeys(person.phone);
		
		WebElement mobile = currentPage.get("PersonalDetails_mobile");
		mobile.clear();
		mobile.sendKeys(person.phone);
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

	
	@When("^I select Visa payment$")
	public void i_select_Visa_payment()
    {
		WebElement el = currentPage.get("PaymentType_visa");
		clickElement(el);
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
			 
			 
			 //this is what we had
		//	 element.sendKeys(str);
			 
			 populateElement(element,str);
			 
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
		String ss = "ERROR IN THE METHOD: 'WHEN I CLICK ON BUTTON NAME "+st+"'";
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
			try {
				Thread.sleep(5000);
				ele=driver.findElements(By.name(st));
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
				
				
				
			} catch (InterruptedException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				error = e.getMessage();
			}
			
			if(el == null)
			{
				System.out.print(ss+" "+error);
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
		//	element.sendKeys(value);
			
			populateElement(element,value);
			
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
			
			//here is what we use to have
			//element.sendKeys(value);
			
			populateElement(element,value);
			
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

	@When("^I verify that \"([^\"]*)\" is \"([^\"]*)\"$")
	public void i_verify_that_is(String fn, String st) throws Throwable
	{
		String am = "";
		switch(fn)
		{
		case "fee":
		{
			am = amounts[2];
			
			
			break;
		}
		case "monthly":
		{
			am = amounts[9];
			
			
			break;
		}
		
		case "membership":
		{
			am = amounts[1];
			break;
		}
		
		}
		
		
		if(!am.equals("�"+st))
		{
			String er = fn+ " amount of "+am+" in the basket is not equal to expected �"+st;
			
			interact(er);
			
			
		}
		
		
	}
	
	@When ("^I do click on \"([^\"]*)\"$")
	public void When_I_do_click_on(String st)
	{
		WebElement el = getElement(st);
		clickElement(el);
		
	}
	
	@When ("^I click on \"([^\"]*)\"$")
	public void When_I_click_on(String st)
	{
		
		WebElement el=driver.findElement(By.linkText(st));
		el.click();
		//driver.findElement(By.linkText(st)).click();
	}
	
	
	@When ("^I click on link text \"([^\"]*)\"$")
	public void When_I_click_on_link_text(String st)
	{
	
		WebElement wel = getLinkText(st);
		
		clickElement(wel);
				
		
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

	@When("^I set date \"([^\"]*)\"$")
	public void When_I_set_date(String date)
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
		
		JavascriptExecutor executor = (JavascriptExecutor)driver;
		executor.executeScript("arguments[0].value='"+dat[0]+"';", dy);	
		executor.executeScript("arguments[0].value='"+dat[1]+"';", mn);	
		executor.executeScript("arguments[0].value='"+dat[2]+"';", yr);	
		
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
	
	@When("^I check box id \"([^\"]*)\"$")
	public void i_check_box_id(String st) throws Throwable
	{
		
		String ss = "ERROR AT METHOD: WHEN I CHECK BOX ID '"+st+"'";
		
		try {
			Thread.sleep(5000);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		WebElement wel = getElement(st);
		
		if(wel!=null)
		{
			clickElement(wel);
			
			
		}else
		{
			try {
				Thread.sleep(5000);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			wel = getElement(st);
			if(wel!=null)
			{
				clickElement(wel);
				
				
			}else
			{
				System.out.println(ss);
			}
			
			
		}
		
		
		
		
	}
	
	@When ("^I click on fieldset element \"([^\"]*)\"$")
	public void When_I_click_on_fieldset_element(String st)
	{
		
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		List<WebElement> ele=new ArrayList<WebElement>();
		
		ele=driver.findElements(By.tagName("fieldset"));
		JavascriptExecutor jse = (JavascriptExecutor)driver;
		jse.executeScript("window.scrollBy(0,250)", "");
		WebElement wel;
		
		for(int i=0;i<ele.size();i++)
		{
			wel=ele.get(i);
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
			//element.sendKeys(txt);
			populateElement(element,txt);
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
				//element.sendKeys(date);
				
				populateElement(element,date);
				
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
				//element.sendKeys(mid);
				
				populateElement(element,mid);
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
				//element.sendKeys(txt);
				populateElement(element,txt);
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
		ele = driver.findElements(By.xpath("div[@class='"+st+"']"));
		
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
	
	void interact(String st)
	{
		System.out.println(st);
		BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
		try {
			String dob=reader.readLine();
			System.out.println(dob);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	String getClassText(String cls)
	{
		String result = null;
		List<WebElement> ele = new ArrayList<>();
		ele = driver.findElements(By.xpath("//div[@class='"+cls+"']"));
		WebElement wel = null;
		if(ele.size()>0)
		{wel = ele.get(0);}
		if(wel!=null)
		{
			result = wel.getAttribute("innerText");
		}
		
		
		return result;
	}
	String getClassSpanText(String cls)
	{
		String result = null;
		
		WebElement wel = driver.findElement(By.xpath("//span[@class='"+cls+"']"));
		result = wel.getText();
		
		return result;
	}
	WebElement getClassElement(String cls)
	{
		WebElement result = null;
		
		result = driver.findElement(By.xpath("//div[@class='"+cls+"']"));
		 
		
		return result;
	}
	
	void clickElement(WebElement el)
	{
		JavascriptExecutor executor = (JavascriptExecutor)driver;
		executor.executeScript("arguments[0].click();", el);	
	}
	
	void populateElement(WebElement el,String st)
	{
		JavascriptExecutor executor = (JavascriptExecutor)driver;
		executor.executeScript("arguments[0].value='"+st+"';", el);	
	}
	
 
	
	boolean isThing(String st)
	{
		boolean result = false;
		
		if(st!=null)
		{
			if(st.length()>0)
			{
				result = true;
			}
		}
		
		
		return result;
		
	}
	
	boolean compare(Double s1,Double s2)
	{
		boolean result = true;
		
		Double S1 = (double) Math.round(s1 * 100) / 100;
		Double S2 = (double) Math.round(s2 * 100) / 100;
		
		int co =(Integer)Double.compare(S1, S2);
		
		if(co!=0)
		{
			result = false;
		}
		
		return result;
	}
	
	
	
	
	WebElement getLinkText(String st)
	{
		WebElement result = driver.findElement(By.xpath("a[text()='"+st+"']"));
		return result;
		
	}
	
	private void sleep(long tm)
	{
		try {
			Thread.sleep(tm);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	private void compareStrings(String bsk,String ex,String tp)
	{
		if(!bsk.equals(ex))
		{
			interact("The value of "+tp+"("+bsk+") in the page doesn't match expected "+ex);
		}
	}
}
