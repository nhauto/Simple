Feature: Join Gym online - regression scope - Anytime One time payment

Scenario: Anytime  12 months current - One Time Payment - success

Given I open the page "waf"
Then I am on page "aber"
When I click on fieldset element "choose_membership_package_form_payment_type_once"
When I click on fieldset element "choose_membership_package_form_commitment_12"
 
When I click on basket
Then I get amount value "total"
#Then I get amount "member"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
#When I am ready to continue
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set to date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
When I click on button name "btn"
When I fill "mail" with "max.karpov@nuffieldhealth.com"
When I fill "emailconfirmation" with "max.karpov@nuffieldhealth.com"
When I fill "phone" with "07482716718"
When I fill "mobile" with "07482716718"
When I click on fieldset element "personal_details_form_unable_to_exercise_no"
#When I am ready to continue
When I press button named "commit"
#When I am ready to continue
Then I am on page "aber"
When I scroll down
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
#When I am ready to continue
When I click on button name "commit"
When I click on button name "VISA_brand"
When I fill "cardname" with "xyz"
When I fill "cardnumber" with "4111111111111111"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Month"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Year"
When I fill "cardyear" with "2017"
When I fill "cardcvs" with "737"
#When I am ready to continue
When I click on button name "payment"
Then I wait for order id
#When I am ready to continue
Given I navigate to salesforce
When I enter Login and Password
#When I am ready to continue
Then I should login to Salesforce
When I switch to tab "Opportunities"
Then I am on page "Opportunities"
When I click on button name "go"
Then I am on page "Opportunities"
#When I click on opportunity
Then I open david
Then I am on page "Opportunity"
#When I am ready to continue
Then I can see "Site" filled with "Aberdeen"
#Then I can see static field "opp6_ileinner" filled with "Online Joining"
Then I can see "Amount" filled with "total"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: Anytime  12 months Wellbeing current - One Time Payment - success

Given I open the page "waf"
#When I click on "Aberdeen Fitness & Wellbeing Gym"
Then I am on page "aber"
When I scroll down "800"
When I click on fieldset element "choose_membership_package_form_commitment_12wellbeing"
When I click on fieldset element "choose_membership_package_form_payment_type_once"
 
When I click on basket
Then I get amount value "total"
#Then I get amount "member"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
#When I am ready to continue
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set to date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
When I click on button name "btn"
When I fill "mail" with "max.karpov@nuffieldhealth.com"
When I fill "emailconfirmation" with "max.karpov@nuffieldhealth.com"
When I fill "phone" with "07482716718"
When I fill "mobile" with "07482716718"
When I click on fieldset element "personal_details_form_unable_to_exercise_no"
#When I am ready to continue
When I press button named "commit"
#When I am ready to continue
Then I am on page "aber"
When I scroll down
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
#When I am ready to continue
When I click on button name "commit"
When I click on button name "VISA_brand"
When I fill "cardname" with "xyz"
When I fill "cardnumber" with "4111111111111111"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Month"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Year"
When I fill "cardyear" with "2017"
When I fill "cardcvs" with "737"
#When I am ready to continue
When I click on button name "payment"
Then I wait for order id
#When I am ready to continue
Given I navigate to salesforce
When I enter Login and Password
#When I am ready to continue
Then I should login to Salesforce
When I switch to tab "Opportunities"
Then I am on page "Opportunities"
When I click on button name "go"
Then I am on page "Opportunities"
Then I open david
Then I am on page "Opportunity"
#When I am ready to continue
Then I can see "Site" filled with "Aberdeen"
#Then I can see static field "opp6_ileinner" filled with "Online Joining"
Then I can see "Amount" filled with "total"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: Anytime  3 months current - One Time Payment - success

Given I open the page "waf"
#When I click on "Aberdeen Fitness & Wellbeing Gym"
Then I am on page "aber"
When I click on fieldset element "choose_membership_package_form_payment_type_once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_3"
When I click on basket
Then I get amount value "total"
#Then I get amount "member"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
#When I am ready to continue
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set to date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
When I click on button name "btn"
When I fill "mail" with "max.karpov@nuffieldhealth.com"
When I fill "emailconfirmation" with "max.karpov@nuffieldhealth.com"
When I fill "phone" with "07482716718"
When I fill "mobile" with "07482716718"
When I click on fieldset element "personal_details_form_unable_to_exercise_no"
#When I am ready to continue
When I press button named "commit"
#When I am ready to continue
Then I am on page "aber"
When I scroll down
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
#When I am ready to continue
When I click on button name "commit"
When I click on button name "VISA_brand"
When I fill "cardname" with "xyz"
When I fill "cardnumber" with "4111111111111111"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Month"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Year"
When I fill "cardyear" with "2017"
When I fill "cardcvs" with "737"
#When I am ready to continue
When I click on button name "payment"
Then I wait for order id
#When I am ready to continue
Given I navigate to salesforce
When I enter Login and Password
#When I am ready to continue
Then I should login to Salesforce
When I switch to tab "Opportunities"
Then I am on page "Opportunities"
When I click on button name "go"
Then I am on page "Opportunities"
Then I open david
Then I am on page "Opportunity"
#When I am ready to continue
Then I can see "Site" filled with "Aberdeen"
#Then I can see static field "opp6_ileinner" filled with "Online Joining"
Then I can see "Amount" filled with "total"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save



