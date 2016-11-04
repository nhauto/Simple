package PageObjectModel;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class PayPlan extends POM{
	
	public PayPlan(WebDriver dr)
	{
		super(dr);
	}
	
	@FindBy(css = "a[class='discount__link  ']")
	public WebElement PayPlan_discount;
	
	@FindBy(css = "div[class='basket']")
	public WebElement PayPlan_basket;
	
	@FindBy(css = "input[id='_code']")
	public WebElement PayPlan_code;
	
	@FindBy(css = "input[class='form__field-button js-apply-discount']")
	public WebElement PayPlan_apply;
	
	@FindBy(css = "input[id='choose_membership_package_form_entry_type_anytime']")
	public WebElement PayPlan_anytime;
	
	@FindBy(css = "input[id='choose_membership_package_form_entry_type_offpeak']")
	public WebElement PayPlan_offpeak;
	
	@FindBy(css = "input[id='choose_membership_package_form_payment_type_once']")
	public WebElement PayPlan_once;
	
	@FindBy(css = "input[id='choose_membership_package_form_payment_type_monthly']")
	public WebElement PayPlan_monthly;
	
	@FindBy(css = "input[id='choose_membership_package_form_commitment_12']")
	public WebElement PayPlan_12months;
	
	@FindBy(css = "input[id='choose_membership_package_form_commitment_12wellbeing']")
	public WebElement PayPlan_12monthsWB;
	
	@FindBy(css = "input[value='Next']")
	public WebElement PayPlan_next;
	
	@FindBy(css = "li[class='basket-drawer__membership js-payment-once'] div[class='basket-drawer__value js-basket-membership']")
	public WebElement PayPlan_membership;
	
	@FindBy(css = "li[class='basket-drawer__fee'] div[class='basket-drawer__value js-basket-activation']")
	public WebElement PayPlan_fee;	
	
	@FindBy(css = "li[class='basket-drawer__fee'] div[class='basket-drawer__value basket-drawer__value--promotion js-basket-activation-promotion']")
	public WebElement PayPlan_feeProm;
	
	
	@FindBy(css = "li[class='basket-drawer__prorata'] div[class='basket-drawer__value js-basket-prorata']")
	public WebElement PayPlan_prorata;	
	
	@FindBy(css = "li[class='basket-drawer__prorata'] div[class='basket-drawer__value basket-drawer__value--promotion js-basket-prorata-promo']")
	public WebElement PayPlan_prorataProm;	
	
	
	@FindBy(css = "div[class='js-payment-monthly'] span[class='js-basket-monthly']")
	public WebElement PayPlan_month;	
	
	@FindBy(css = "li[class='basket-drawer__prorata js-payment-next-month'] div[class='basket-drawer__value js-basket-membership']")
	public WebElement PayPlan_nex;	
	
	@FindBy(css = "li[class='basket-drawer__total'] div[class='basket-drawer__value js-basket-today']")
	public WebElement PayPlan_total;	
}
