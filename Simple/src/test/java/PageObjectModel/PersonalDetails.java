package PageObjectModel;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class PersonalDetails extends POM{
	
	
	public PersonalDetails(WebDriver dr)
	{
		super(dr);
	}

	@FindBy(css = "form[id='new_personal_details_form']")
	public WebElement nameform;
	
	@FindBy(css = "select[id='personal_details_form_title']")
	public WebElement PersonalDetails_title;
	
	@FindBy(css = "input[id='personal_details_form_first_name']")
	public WebElement PersonalDetails_firstname;
	
	@FindBy(css = "input[id='personal_details_form_last_name']")
	public WebElement PersonalDetails_lastname;
	
	@FindBy(css = "input[id='personal_details_form_date_of_birth_day']")
	public WebElement PersonalDetails_dobDay;
	
	@FindBy(css = "input[id='personal_details_form_date_of_birth_month']")
	public WebElement PersonalDetails_dobMonth;
	
	@FindBy(css = "input[id='personal_details_form_date_of_birth_year']")
	public WebElement PersonalDetails_dobYear;
	
	@FindBy(css = "select[id='personal_details_form_gender']")
	public WebElement PersonalDetails_gender;
	
	@FindBy(css = "input[id='personal_details_form_house_number']")
	public WebElement PersonalDetails_house;
	
	@FindBy(css = "input[id='personal_details_form_postcode']")
	public WebElement PersonalDetails_postcode;
	
	@FindBy(css = "button[class='button--invert form__field-button js-address-lookup no-js-hide']")
	public WebElement PersonalDetails_lookup;
	
	@FindBy(css = "input[id='email']")
	public WebElement PersonalDetails_email;
	
	@FindBy(css = "input[id='personal_details_form_email_confirmation']")
	public WebElement PersonalDetails_email2;
	
	@FindBy(css = "input[id='personal_details_form_phone']")
	public WebElement PersonalDetails_phone;
	
	@FindBy(css = "input[id='personal_details_form_mobile']")
	public WebElement PersonalDetails_mobile;
	
	@FindBy(css = "input[id='personal_details_form_unable_to_exercise_yes']")
	public WebElement PersonalDetails_UnableYes;
	
	@FindBy(css = "input[id='personal_details_form_unable_to_exercise_not_sure']")
	public WebElement PersonalDetails_UnableNotSure;
	
	@FindBy(css = "input[id='personal_details_form_unable_to_exercise_no']")
	public WebElement PersonalDetails_UnableNo;
	
}
