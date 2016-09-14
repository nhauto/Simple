Feature: Take path as input and complete application, proceed to creating PPs

Scenario: Complete application and fill opportunity


Given I entered link to community
Then I can see view "Reset_Password"
When I fill static field "apassword"
When I click on element with id "confirmpassword"
When I fill static field "conpassword"
When I click on element with id "password-button"
Then I can see view "Community_Landing"
When I click on element with id "01rg00000009JWf_Tab"
Then I can see view "Applications"
When I click on button "Create New Application"
Then I can see view "Select_Application"
#When I click on button "Continue"
Then I can see view "New_Application"
When I set all text fields
When I fill dynamic field "appname"
When I save values for form "New_Application"
When I set all menu to "1"
When I select item "19" in menu "00Ng0000001NfyR"
When I select item "1" in menu "00Ng0000001Mxqd"
When I set all multiple select to "1"
When I fill field "00Ng0000001Mxqi" with text "01/10/2015"
When I fill field "00Ng0000001Mxqs" with text "01/10/2015"
When I fill field "00Ng0000001MxrM" with text "01/10/2015"
When I fill field "00Ng0000001N2Vp" with text "01/10/2015"
When I fill field "00Ng0000001N2Wn" with text "01/10/2015"
When I fill field "00Ng0000001N2XC" with text "01/10/2015"
When I fill field "00Ng0000001N4XT" with text "01/10/2015"
When I fill field "00Ng0000001N2WE" with text "01/10/2015"
When I fill field "00Ng0000001Mxpk" with text "01/10/2015"
When I fill field "00Ng0000001Mxrl" with text "01/10/2015"
When I fill field "00Ng0000001N2Ws" with text "01/10/2017"
When I fill field "00Ng0000001N2XW" with text "01/10/2017"
When I fill field "CF00Ng0000001N2aQ" with text "Newcastle"
When I fill field "CF00Ng0000001N2az" with text ""
When I fill field "00Ng0000001N2XM" with text "mkarpoff@mail.ru"
When I fill field "00Ng0000001N2WT" with text "mkarpoff@mail.ru"
When I click on button " Save "
Then I am on page "Application_Form"
Given I navigate to salesforce
When I switch to tab "Opportunities"
Then I am on page "Opportunities"
When I click "company"
Then I am on page "Opportunity"
When I click on button " Edit "
Then I am on page "Edit_Opportunity"
When I set all menu to "1"
When I set all multiple select to "1"
When I fill field "00Ng0000001N4Nx" with text "1234345"
When I fill field "00Ng0000001N4OW" with text "11/11/2017"
When I fill field "00Ng0000001MpBI" with text "Test Professional Regulatory Details"
When I fill field "00Ng0000001Mkqp" with text "11/11/2015"
When I fill field "00Ng0000001Mkph" with text "11/11/2017"
When I fill field "00Ng0000001Mkpc" with text "0387472"
When I select item "2" in menu "opp11"
When I click on button " Save "
