Feature: Join Gym online

Scenario: Anytime  12 months current - One Time Payment - success

Given I open the page "waf"
#When I click on "Aberdeen Fitness & Wellbeing Gym"
Then I am on page "aber"
When I click text "12 months minimum commitment with Wellbeing upgrade"
When I click on fieldset element "choose_membership_package_form_payment_type_once"

When I am ready to continue
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
#When I click on on element with id "summary_form_marketing_email"
#When I click on element with id "summary_form_terms_and_conditions"
When I am ready to continue
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
When I click on opportunity
Then I am on page "Opportunity"
#When I am ready to continue
Then I can see static field "CF00Nw00000089yuY_ileinner" filled with "Aberdeen"
Then I can see static field "opp6_ileinner" filled with "Online Joining"
Then I can see field "opp7_ileinner" filled with "total"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see field "00N8E000000e9ll_ileinner" filled with "orid"
Then I can see field "00N8E000000e9lq_ileinner" filled with "pay"
Then I do save





 

 

