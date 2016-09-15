Feature: 3 months


Scenario: Off peak  12 months current - Direct Debit - success

Given I open the page "waf"
Then I am on page "aber"
When I click text "Off peak"
When I click on basket
Then I wait
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I check figures "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill "fname" with "David"
When I fill "lname" with "Archer"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set to date "1/2/1947"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "530"
When I fill "postcode" with "BA133BN"
When I click on button name "btn"
When I fill "mail" with "max.karpov@nuffieldhealth.com"
When I fill "emailconfirmation" with "max.karpov@nuffieldhealth.com"
When I fill "phone" with "07482716718"
When I fill "mobile" with "07482716718"
When I click on fieldset element "personal_details_form_unable_to_exercise_no"
When I am ready to continue
When I press button named "commit"
Then I am on page "aber"
When I scroll down
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
When I click on button name "commit"
Then I am on page "aber"
When I click on label "direct_debit_form_confirm"
When I click on button name "commit"
When I fill number field "direct_debit_account_details_form_account_number" with "40308669"
When I fill number field "direct_debit_account_details_form_sort_code_p1" with "56"
When I fill number field "direct_debit_account_details_form_sort_code_p2" with "00"
When I fill number field "direct_debit_account_details_form_sort_code_p3" with "36"
When I fill "holder" with "David Archer"
When I press button named "commit"
Then I am on page "aber"
When I press button named "commit"
Then I am on page "aber"
When I click on "NEXT"
Then I wait
Given I navigate to salesforce
When I enter Login and Password
Then I should login to Salesforce
When I switch to tab "Opportunities"
Then I am on page "Opportunities"
When I click on button name "go"
Then I am on page "Opportunities"
Then I open opportunity
Then I am on page "Opportunity"
Then I can see "Site" filled with "Aberdeen"
Then I can see total is accurate "12"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save
