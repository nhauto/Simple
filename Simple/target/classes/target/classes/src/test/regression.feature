Feature: Online Joining successfull flows

Scenario: Anytime  12 months current - One Time Payment - success

Given I open the page "waf"
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
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
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


Scenario: Anytime  12 months Wellbeing current - One Time Payment - success

Given I open the page "waf"
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
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
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


Scenario: Anytime  3 months current - One Time Payment - success

Given I open the page "waf"
#When I click on "Aberdeen Fitness & Wellbeing Gym"
Then I am on page "aber"
When I click on fieldset element "choose_membership_package_form_payment_type_once"
When I scroll up
When I click on fieldset element "choose_membership_package_form_commitment_3"
When I click on basket
Then I wait
Then I get amount value "total"
Then I get amount "member"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I can see all figures good "3"
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
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
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
Then I can see "Site" filled with "Aberdeen"
Then I can see "Amount" filled with "total"
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

Scenario: Off peak -  12 months current - One Time Payment - success

Given I open the page "waf"
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
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
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


Scenario: Off Peak  12 months Wellbeing current - One Time Payment - success

Given I open the page "waf"
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
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
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

Scenario: Anytime  12 months current - Direct Debit - success

Given I open the page "waf"
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


Scenario: Anytime  12 months WB - current date - Direct Debit - success

Given I open the page "waf"
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


Scenario: Anytime  3 months current - Direct Debit - success

Given I open the page "waf"
Then I am on page "aber"
When I click span "3 month minimum commitment"
When I click on basket
Then I wait
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I am on page "aber"
Then I check figures "3"
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
Then I can see total is accurate "3"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save

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
Then I wait
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


Scenario: Offpeak  12 months WB - current date - Direct Debit - success

Given I open the page "waf"
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




Scenario: Offpeak  3 months current - Direct Debit - success

Given I open the page "waf"
Then I am on page "aber"
When I click text "Off peak"
When I click span "3 month minimum commitment"
When I click on basket
Then I wait
Then I get amount value "total"
Then I grab amount "fee"
Then I grab amount "prorata"
Then I get amount "monthly"
Then I am on page "aber"
Then I check figures "3"
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
When I press button named "commit"
Then I am on page "aber"
When I scroll down
When I click on fieldset element "summary_form_marketing_email"
When I scroll down "900"
When I click on class "form__row form__row--limestone form__custom-check"
Then I wait
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
Then I can see total is accurate "3"
#Then I can see checked "00N8E000000Y1ux_chkbox"
#When I click on contact link
Then I can see "Order Reference" filled with "orid"
Then I can see "Payment Reference" filled with "pay"
Then I do save


