Feature: 3 months

Scenario: OJ15E2EREG52 Anytime  12 months WB - DD DISCOUT 20% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
When I click span "12 month minimum commitment with Wellbeing upgrade"
Then I wait
Then I wait
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "38.00"
When I verify that "fee" is "20.00"
Then I check total monthly
#Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill "fname" with "David"
When I fill "lname" with "Archer"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/2/1947"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "530"
When I fill "postcode" with "BA133BN"
When I click on button name "btn"
When I fill "mail" with "max.karpov@nuffieldhealth.com"
When I fill "emailconfirmation" with "max.karpov@nuffieldhealth.com"
When I fill "phone" with "07482716718"
When I fill "mobile" with "07482716718"
When I click on fieldset element "personal_details_form_unable_to_exercise_no"
Then I wait
When I press button named "commit"
#Then I wait
Then I am on page "aber"
When I scroll down
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
When I check box id "summary_form_corporate_terms"
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
Then I wait
When I click on "NEXT"
Then I wait
Then I wait
Then I wait
When I click on button name "VISA_brand"
When I fill "cardname" with "xyz"
When I fill "cardnumber" with "4111111111111111"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Month"
When I select item "2" in menu "Ecom_Payment_Card_ExpDate_Year"
When I fill "cardyear" with "2017"
When I fill "cardcvs" with "737"
#Then I wait
When I click on button name "payment"
Then I wait for order id
Then I wait
Then I wait for order id
Given I navigate to salesforce
When I enter Login and Password
#Then I wait
Then I should login to Salesforce
When I switch to tab "Opportunities"
Then I am on page "Opportunities"
When I click on button name "go"
Then I am on page "Opportunities"
Then I open opportunity
Then I am on page "Opportunity"
Then I can see "Site" filled with "Preston"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save
