Feature: As a user I should be able to login to Salesforce

Scenario: Login to Salesforce

Given I open the test instance of salesforce
When I enter Login and Password
Then I should login to Salesforce
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
When I fill static field "DOB"
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
When I fill static field "Subject"
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
When I click on button "Continue"
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















 













