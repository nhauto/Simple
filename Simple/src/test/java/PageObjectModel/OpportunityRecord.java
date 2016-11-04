package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class OpportunityRecord extends POM{

	public OpportunityRecord(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy(css = "div[id='opp11_ileinner']")
	public WebElement OpportunityRecord_stage;
	
	@FindBy (css = "div[id='opp3_ileinner']")
	public WebElement OpportunityRecord_name;
	
	@FindBy (css = "a[id='lookupa008E000004C58p00Nw00000089yuY']")					 
	public WebElement OpportunityRecord_site;
	
	@FindBy (css = "div[id='opp7_ileinner']")
	public WebElement OpportunityRecord_amount;
	// 00N8E000000e9la_ileinner
	@FindBy (css = "div[id='00N8E000000e9ll_ileinner']")
	public WebElement OpportunityRecord_order;
	
	@FindBy(css = "div[id='00N8E000000e9lq_ileinner']")
	public WebElement OpportunityRecord_payment;
	
	@FindBy(css = "div[id='00N8E000000e9lj_ileinner']")
	public WebElement OpportunityRecord_member;
	
	@FindBy (css = "div[id='00N8E000000e9lZ_ileinner']")
	public WebElement OpportunityRecord_CardHolder;
	
	@FindBy (css = "div[id='00N8E000000e9lb_ileinner']")
	public WebElement OpportunityRecord_SortCode;
	
	@FindBy (css = "div[id='00N8E000000e9la_ileinner']")
	public WebElement OpportunityRecord_account;
}
