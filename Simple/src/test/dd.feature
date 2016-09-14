Feature: Join Gym online

Scenario: Anytime  12 months current - Direct Debit - success

Given I open the page "waf"
Then I am on page "aber"

#When I click on "Aberdeen Fitness & Wellbeing Gym"
When I am ready to continue
When I click on basket
Then I get amount value "total"

#Then I get amount "member"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I am on page "aber"

When I press button named "commit"

Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill "fname" with "David"
When I fill "lname" with "Archer"

#When I am ready to continue
#When I fill dynamic field "personal_details_form_first_name" with "firstname"
#When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set to date "1/2/1947"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "530"
When I fill "postcode" with "BA133BN"
#When I am ready to continue
When I click on button name "btn"
When I fill "mail" with "max.karpov@nuffieldhealth.com"
When I fill "emailconfirmation" with "max.karpov@nuffieldhealth.com"
When I fill "phone" with "07482716718"
When I fill "mobile" with "07482716718"
When I click on fieldset element "personal_details_form_unable_to_exercise_no"
When I press button named "commit"
Then I am on page "aber"
When I click on on element with id "summary_form_marketing_email"
When I click on element with id "summary_form_terms_and_conditions"
When I click on button name "commit"
Then I am on page "aber"
When I click on element with id "direct_debit_form_confirm"
When I click on button name "commit"
When I fill number field "direct_debit_account_details_form_account_number" with "40308669"
When I fill number field "direct_debit_account_details_form_sort_code_p1" with "56"
When I fill number field "direct_debit_account_details_form_sort_code_p2" with "00"
When I fill number field "direct_debit_account_details_form_sort_code_p3" with "36"
When I fill "holder" with "David Archer"
#When I am ready to continue
When I press button named "commit"
Then I am on page "aber"
When I press button named "commit"
Then I am on page "aber"
When I click on "NEXT"
#When I am ready to continue
Then I am on page "pay"
When I click on button name "VISA_brand"
When I fill "cardname" with "xyz"
When I fill "cardnumber" with "4111111111111111"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Month"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Year"
When I fill "cardyear" with "2017"
When I fill "cardcvs" with "737"
When I click on button name "payment"
Then I wait for order id
Given I navigate to salesforce
When I enter Login and Password
Then I should login to Salesforce
When I switch to tab "Opportunities"
Then I am on page "Opportunities"
When I click on button name "go"
Then I am on page "Opportunities"
Then I open david
Then I am on page "Opportunity"
Then I can see static field "CF00Nw00000089yuY_ileinner" filled with "Aberdeen"
Then I can see static field "opp6_ileinner" filled with "Online Joining"
#Then I can see field "opp7_ileinner" filled with "total"
Then I see total is accurate("12)
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see field "00N8E000000e9ll_ileinner" filled with "orid"
Then I can see field "00N8E000000e9lq_ileinner" filled with "pay"
Then I do save

