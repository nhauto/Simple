package main.java;

public class Sandbox {

	public enum box
	{
		qa,uat,preprod,prod
	}
	
	public String salesforce;
	public String waf;
	public String login;
	public String password;
	public box bx;
	
	public Sandbox(box b)
	{
		bx=b;
		populate();
	}
	
	final void populate()
	{
		switch(bx)
		{
		
		case qa:
		{
			salesforce = "https://nuffieldhealth-crm--crmqa.cs87.my.salesforce.com/";
			waf = "https://payments.nuffield.qa.fridayengineering.net/join/aberdeen";
			//waf = "https://payments.nuffield.qanext.fridayengineering.net/join/aberdeen";
			login = "max.karpov@nuffieldhealth.com.crmqa";
			password = "baraban234";
			
			
			break;
		}
		case uat:
		{
			
			salesforce = "https://nuffieldhealth-crm--crmuat.cs87.my.salesforce.com/";
			waf = "https://payments.nuffield.uat.fridayengineering.net/join/aberdeen";
			login = "max.karpov@nuffieldhealth.com.crmuat";
			password = "topor345";		
			
			
			break;
		}
		case preprod:
		{
			salesforce = "https://nuffieldhealth-crm--crmpreprod.cs86.my.salesforce.com/";
			waf = "https://staging-join.nuffieldhealth.com/join/aberdeen";
			login = "max.karpov@nuffieldhealth.com.preprod";
			password = "Baraban22";
			break;
		}
		case prod:
		{
			salesforce = "https://salesforce.com/";
			waf = "";
			login = "";
			password = "";			
			break;
		}
		
		}
	}
}
