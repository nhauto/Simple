Feature: Online Joining successful flows, with and without discounts and promotions

Scenario: OLJPLAIN01 Anytime  12 months current - One Time Payment

Given I start "aberdeen"
Then I am on page "aber"
When I click on fieldset element "choose_membership_package_form_payment_type_once"
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click on basket
Then I wait
Then I get amount value "total"
Then I get amount "member"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I can see all figures good "12"
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
Then I wait
When I press button named "commit"
#Then I wait
Then I am on page "aber"
When I scroll down
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
#Then I wait
When I click on button name "commit"
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
#Then I wait
Given I navigate to salesforce
When I enter Login and Password
#Then I wait
Then I should login to Salesforce
When I switch to tab "Opportunities"
Then I am on page "Opportunities"
When I click on button name "go"
Then I am on page "Opportunities"
#When I click on opportunity
Then I open opportunity
Then I am on page "Opportunity"
#Then I wait
Then I can see "Site" filled with "Aberdeen"
Then I can see "Amount" filled with "total"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OLJPLAIN02 Anytime  12 months Wellbeing current - One Time Payment

Given I start "aberdeen"
#When I click on "Aberdeen Fitness & Wellbeing Gym"
Then I am on page "aber"
When I scroll down "800"
When I click on fieldset element "choose_membership_package_form_payment_type_once"
When I click on fieldset element "choose_membership_package_form_commitment_12wellbeing"

When I click on basket
Then I wait
Then I get amount value "total"
Then I get amount "member"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I can see all figures good "12"
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
Then I wait
When I press button named "commit"
#Then I wait
Then I am on page "aber"
When I scroll down
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
#Then I wait
Then I can see "Site" filled with "Aberdeen"
Then I can see "Amount" filled with "total"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OLJPLAIN03 Off peak -  12 months current - One Time Payment

Given I start "aberdeen"
#When I click on "Aberdeen Fitness & Wellbeing Gym"
Then I am on page "aber"
When I scroll down "390"
When I click text "Off peak"
When I scroll down "350"
When I click on fieldset element "choose_membership_package_form_payment_type_once"
When I click on basket
Then I wait
Then I get amount value "total"
Then I get amount "member"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I can see all figures good "12"
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
Then I wait
When I press button named "commit"
#Then I wait
Then I am on page "aber"
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
When I click on button name "commit"
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
#Then I wait
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
#Then I wait
Then I can see "Site" filled with "Aberdeen"
Then I can see "Amount" filled with "total"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OLJPLAIN04 Off Peak  12 months Wellbeing current - One Time Payment

Given I start "aberdeen"
Then I am on page "aber"
When I click on fieldset element "choose_membership_package_form_commitment_12wellbeing"
When I click on fieldset element "choose_membership_package_form_payment_type_once"
When I click span "Off peak"
When I click on basket
Then I wait
Then I get amount value "total"
Then I get amount "member"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I can see all figures good "12"
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
Then I wait
When I press button named "commit"
#Then I wait
Then I am on page "aber"
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
When I click on button name "commit"
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
#Then I wait
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
#Then I wait
Then I can see "Site" filled with "Aberdeen"
Then I can see "Amount" filled with "total"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OLJPLAIN05 Anytime  12 months current - Direct Debit

Given I start "aberdeen"
Then I am on page "aber"
When I click on basket
#Then I wait
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I am on page "aber"
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
#Then I wait
When I press button named "commit"
Then I am on page "aber"
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
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
Then I am on page "pay"
Then I wait
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
Then I open opportunity
Then I am on page "Opportunity"
#Then I wait
Then I can see "Site" filled with "Aberdeen"
Then I can see total is accurate "12"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OLJPLAIN06 Anytime  12 months WB - current date - Direct Debit

Given I start "aberdeen"
Then I am on page "aber"
When I click on fieldset element "choose_membership_package_form_commitment_12wellbeing"
When I click on fieldset element "choose_membership_package_form_payment_type_monthly"
When I click on basket
Then I wait
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I am on page "aber"
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
Then I wait
When I press button named "commit"
Then I am on page "aber"
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
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
Then I am on page "pay"
Then I wait
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
Then I open opportunity
Then I am on page "Opportunity"
#Then I wait
Then I can see "Site" filled with "Aberdeen"
#
Then I can see total is accurate "12"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OLJPLAIN07 Off peak  12 months current - Direct Debit

Given I start "aberdeen"
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
Then I wait
When I press button named "commit"
Then I am on page "aber"
When I scroll down
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
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
Then I am on page "pay"
Then I wait
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
Then I open opportunity
Then I am on page "Opportunity"
Then I can see "Site" filled with "Aberdeen"
Then I can see total is accurate "12"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OLJPLAIN08 Offpeak  12 months WB - current date - Direct Debit

Given I start "aberdeen"
Then I am on page "aber"
When I click text "Off peak"
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Monthly"
When I click on basket
Then I wait
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I am on page "aber"
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
Then I wait
When I press button named "commit"
Then I am on page "aber"
When I scroll down
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
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
Then I am on page "pay"
Then I wait
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
Then I open opportunity
Then I am on page "Opportunity"
Then I can see "Site" filled with "Aberdeen"
#Then I can see field "opp7_ileinner" filled with "total"
Then I can see total is accurate "12"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG25 Anytime  12 months - PP DISCOUT 10% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "778.00"
When I verify that "fee" is "0.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG57 Anytime  12 months - PP DISCOUT 10% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "594.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save



Scenario: OJ15E2EREG26 Anytime  12 months WB - PP DISCOUT 10% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "853.00"
When I verify that "fee" is "0.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save



Scenario: OJ15E2EREG27 Anytime  12 months - DD DISCOUT 10% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "65.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG28 Anytime  12 months WB - DD DISCOUT 10% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
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
When I verify that "monthly" is "72.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG29 Off-peak  12 months - PP DISCOUT 10% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "702.00"
When I verify that "fee" is "0.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG30 Off-peak  12 months WB - PP DISCOUT 10% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "756.00"
When I verify that "fee" is "0.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OJ15E2EREG31 Anytime  12 months - DD DISCOUT 10% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "60.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG33 Anytime  12 months - PP DISCOUT 20% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "692.00"
When I verify that "fee" is "0.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG34 Anytime  12 months WB - PP DISCOUT 20% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "758.00"
When I verify that "fee" is "0.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG35 Anytime  12 months - DD DISCOUT 20% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "58.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG36 Anytime  12 months WB - DD DISCOUT 20% NOAF

Given I start "ealing"
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
When I verify that "monthly" is "64.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG37 Off-peak  12 months - PP DISCOUT 20% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "624.00"
When I verify that "fee" is "0.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG38 Off-peak  12 months WB - PP DISCOUT 20% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "672.00"
When I verify that "fee" is "0.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG39 Off-peak  12 months - DD DISCOUT 20% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "54.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG40 Off-peak  12 months WB - DD DISCOUT 20% NOAF

Given I start "ealing"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click span "12 month minimum commitment with Wellbeing upgrade"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "56.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Ealing"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG41 Anytime  12 months - PP DISCOUT 10% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "508.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG42 Anytime  12 months WB - PP DISCOUT 10% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "556.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG43 Anytime  12 months - DD DISCOUT 10% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "42.00"
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

Scenario: OJ15E2EREG45 Off-peak  12 months - PP DISCOUT 10% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "452.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG46 Off-peak  12 months WB - PP DISCOUT 10% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "506.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG47 Anytime  12 months - DD DISCOUT 10% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "42.00"
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

Scenario: OJ15E2EREG48 Off-peak  12 months WB - DD DISCOUT 10% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click span "12 month minimum commitment with Wellbeing upgrade"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "41.00"
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

Scenario: OJ15E2EREG49 Anytime  12 months - PP DISCOUT 20% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "451.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG50 Anytime  12 months WB - PP DISCOUT 20% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "494.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OJ15E2EREG51 Anytime  12 months - DD DISCOUT 20% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
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
When I verify that "monthly" is "42.00"
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

Scenario: OJ15E2EREG53 Off-peak  12 months - PP DISCOUT 20% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "402.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG54 Off-peak  12 months WB - PP DISCOUT 210% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "450.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG55 Anytime  12 months - DD DISCOUT 20% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "31.00"
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

Scenario: OJ15E2EREG56 Off-peak  12 months WB - DD DISCOUT 20% ROMF

Given I start "preston"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click span "12 month minimum commitment with Wellbeing upgrade"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "36.00"
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

Scenario: OJ15E2EREG58 Anytime  12 months WB - PP DISCOUT 10% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "677.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG59 Anytime  12 months - DD DISCOUT 10% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "50.00"
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG60 Anytime  12 months WB - DD DISCOUT 10% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
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
When I verify that "monthly" is "57.00"
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG61 Off-peak  12 months - PP DISCOUT 10% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "510.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG62 Off-peak  12 months WB - PP DISCOUT 10% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "582.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG63 Off-peak  12 months - DD DISCOUT 10% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "42.00"
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG64 Off-peak  12 months WB - DD DISCOUT 10% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Monthly"
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "46.00"
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OJ15E2EREG65 Anytime  12 months - PP DISCOUT 20% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "528.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG66 Anytime  12 months WB - PP DISCOUT 20% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "602.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG67 Anytime  12 months - DD DISCOUT 20% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "44.00"
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG68 Anytime  12 months WB - DD DISCOUT 20% NMF

Given I start "derby"
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
When I verify that "monthly" is "50.00"
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG69 Off-peak  12 months - PP DISCOUT 20% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "454.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG70 Off-peak  12 months WB - PP DISCOUT 20% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "518.00"
When I verify that "fee" is "20.00"
#Then I check total "12"
Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG71 Off-peak  12 months - DD DISCOUT 20% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG72 Off-peak  12 months WB - DD DISCOUT 20% NMF

Given I start "derby"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "VOD010916"
When I click button text "Apply code"
Then I wait
Then I wait
When I click span "Off peak"
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Monthly"
When I click on basket
Then I wait
When I get basket monthly
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
When I verify that "monthly" is "41.00"
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
Then I can see "Site" filled with "Derby"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OJ15E2EREG73 Anytime  12 months - PP DISCOUT 10% ROMF NOAF NMF

Given I start "guiseley"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "616.00"
When I verify that "fee" is "0.00"
Then I check total "12"
#Then I can see all figures good "12"
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
Then I wait
When I press button named "commit"
#Then I wait
Then I am on page "aber"
When I scroll down
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
When I check box id "summary_form_corporate_terms"
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Guiseley"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG74 Anytime  12 months WB - PP DISCOUT 10%  ROMF NOAF NMF

Given I start "guiseley"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12wellbeing"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "691.00"
When I verify that "fee" is "0.00"
Then I check total "12"
#Then I can see all figures good "12"
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
Then I wait
When I press button named "commit"
#Then I wait
Then I am on page "aber"
When I scroll down
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
When I check box id "summary_form_corporate_terms"
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Guiseley"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG75 Anytime  12 months - DD DISCOUT 10% ROMF NOAF NMF

Given I start "guiseley"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
When I verify that "monthly" is "54.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Guiseley"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG76 Anytime  12 months WB - DD DISCOUT 10% ROMF NOAF NMF

Given I start "guiseley"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Monthly"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
When I verify that "monthly" is "61.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Guiseley"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG77 Anytime  12 months - PP DISCOUT 10%  ROMF NOAF NMF

Given I start "guiseley"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_12"
When I click span "Off peak"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "540.00"
When I verify that "fee" is "0.00"
Then I check total "12"
#Then I can see all figures good "12"
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
Then I wait
When I press button named "commit"
#Then I wait
Then I am on page "aber"
When I scroll down
When I check box id "summary_form_marketing_email"
When I scroll down "900"
When I check box id "summary_form_terms_and_conditions"
When I check box id "summary_form_corporate_terms"
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Guiseley"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG78 Anytime  12 months WB - PP DISCOUT 10%  ROMF NOAF NMF

Given I start "guiseley"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Once"
When I scroll up
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click span "Off peak"
When I click on basket
Then I wait
When I get basket
When I verify that "membership" is "616.00"
When I verify that "fee" is "0.00"
Then I check total "12"
#Then I can see all figures good "12"
When I press button named "commit"
Then I am on page "aber"
When I select "Mr" in menu "personal_details_form_title"
When I fill dynamic field "personal_details_form_first_name" with "firstname"
When I fill dynamic field "personal_details_form_last_name" with "lastname"
When I click on element with id "personal_details_form_date_of_birth_day"
When I set date "1/1/1970"
When I select "Male" in menu "personal_details_form_gender"
When I fill "housenumber" with "473"
When I fill "postcode" with "IV448TZ"
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
#Then I wait
When I click on button name "commit"
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
#Then I wait
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
Then I can see "Site" filled with "Guiseley"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: OJ15E2EREG79 Off-peak  12 months - DD DISCOUT 10% ROMF NOAF NMF

Given I start "guiseley"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Monthly"
When I click text "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
When I verify that "monthly" is "47.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Guiseley"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


Scenario: OJ15E2EREG80 Off-peak  12 months WB - DD DISCOUT 10% ROMF NOAF NMF

Given I start "guiseley"
Then I am on page "aber"
When I click on link class "discount__link  "
When I fill field "_code" with text "LEA010916"
When I click button text "Apply code"
Then I wait
When I click span "Monthly"
When I click span "12 month minimum commitment with Wellbeing upgrade"
When I click text "Off peak"
Then I wait
When I click on basket
Then I wait
When I get basket monthly
When I verify that "monthly" is "54.00"
When I verify that "fee" is "0.00"
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
Then I can see "Site" filled with "Guiseley"
Then I can see "Amount" filled with "amount"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

