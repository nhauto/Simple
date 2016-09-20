Feature: 3 months


Scenario: Anytime  12 months current - One Time Payment

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
When I check box id "summary_form_marketing_email"
When I check box id "summary_form_terms_and_conditions"
