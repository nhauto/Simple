Feature: Log in to Salesforce and complete Opportunity

Scenario: Complete opportunity

Given I open the test instance of salesforce
When I enter Login and Password
Then I should login to Salesforce
When I click on "Setup"
Then I can see view "Setup_Menu"
When I click on "Manage Users"
Then I am on page "Users"
When I click on "Users"
Then I can see view "Select"
When I select item "6" in menu "fcf"
When I click on "Login"
When I switch to tab "Leads"
When I press button "New"
Then I can see view "New_Lead"
When I select "Mr." in menu "name_salutationlea2"
When I fill dynamic field "firstname"
When I fill dynamic field "lastname"
When I fill dynamic field "company"
When I fill dynamic field "gmcnum"
When I fill dynamic field "othernum"
When I fill static field "email"
When I fill static field "phone"
When I populate static field "Date of Birth"
When I select "Male" in menu "00Ng0000001N4rn"
When I select "GMC" in menu "00Ng0000001Mh6e"
When I select "Letter" in menu "lea5"
When I select "Newcastle" in menu "00Nw0000008Lght"
When I select "Surgery" in menu "00Ng0000001NFro"
When I click on button " Save "
Then I can see view "Created_Lead"
When I save values for form "Lead"
When I click on button "Convert"
Then I can see view "Convert"
#When I populate static field "Subject"
When I click on button "Convert"
Then I can see view "Account"
When I click on link "Contact"
Then I can see view "Contact"
When I click on layer "workWithPortalLabel"
Then I can see view "New_User"
When I fill static field "Email"
When I fill dynamic field "username"
When I fill dynamic field "nickname"
When I select item "2" in menu "Profile"
When I click on button " Save "
Then I can see view "User_Detail"
When I save values for form "User_Detail"
Given I entered link to community site
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
When I fill "GMC_Renewal" with text "dummy"
When I populate "GMC_Register" with "02/12/2015"
#When I fill field "00Ng0000001MxrM" with text "03/10/2015"
When I populate "Other_Renewal" with "04/10/2015"
When I populate "Last_Appraisal" with "05/10/2015"
When I fill "Appraisal_Revalidation" with text "dummy"
When I populate "Qualification_Date" with "07/10/2015"
When I populate "CCST_Date" with "08/10/2015"
When I fill "Indemnity_Renewal" with text "dummy"
When I fill "Next_Appraisal" with text "dummy"
When I populate "Next_Revalidation" with "24/11/2018"
When I populate "Hospital" with "Newcastle"
When I populate "Leaving_Post" with "24/11/2015"
When I populate "RO_Email" with "mkarpoff@mail.ru"
When I populate "Reference_Email" with "mkarpoff@mail.ru"
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
When I fill "Controller_Renewal" with text "dummy"
When I fill field "00Ng0000001MpBI" with text "Test Professional Regulatory Details"
#When I fill field "00Ng0000001Mkqp" with text "11/11/2015"
When I fill "DBS_Renewal" with text "dummy"
When I fill field "00Ng0000001Mkpc" with text "0387472"
#When I select item "2" in menu "00Ng0000001MpAy"
When I select item "2" in menu "opp11"
