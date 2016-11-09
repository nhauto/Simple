Feature: Online Joining successfull flows

Scenario: OLJPLAIN01 Anytime  12 months current - One Time Payment

Given I start "aberdeen"
Then I should be on PayPlan page
And I select pay plan
|type | Anytime      |
|plan | 12 months    |
|pay  | Once         |
And I expand basket
Then I should see following values
|membership| 781.0|
|activation| 20   |
When I proceed to next page
Then I should be on PersonalDetails page
When I populate personal details
And I set medical condition to "PersonalDetails_UnableNo"
And I proceed to next page
Then I should be on MemberSummary page
When I set marketing preferences to "MemberSummary_MarketingEmail"
And I agree to terms and conditions
And I proceed to payment
Then I should be on PaymentType page
When I select Visa payment
Then I should be on CardPayment page
When I fill in card details
Then I should be on Confirmation page
Given I navigate to salesforce
Then I should be on login page
When I log in
Then I am on SF Landing page
When I switch to Opportunities tab
Then I search for my record
And I should see all fields accurate
And I save results


Scenario: OLJPLAIN02 Anytime  12 months WB current - One Time Payment

Given I start "aberdeen"
Then I should be on PayPlan page
And I select pay plan
|type | Anytime      |
|plan | 12 months WB |
|pay  | Once         |
And I expand basket
Then I should see following values
|membership| 869.0|
|activation| 20   |
When I proceed to next page
Then I should be on PersonalDetails page
When I populate personal details
And I set medical condition to "PersonalDetails_UnableNo"
And I proceed to next page
Then I should be on MemberSummary page
When I set marketing preferences to "MemberSummary_MarketingEmail"
And I agree to terms and conditions
And I proceed to payment
Then I should be on PaymentType page
When I select Visa payment
Then I should be on CardPayment page
When I fill in card details
Then I should be on Confirmation page
Given I navigate to salesforce
Then I should be on login page
When I log in
Then I am on SF Landing page
When I switch to Opportunities tab
Then I search for my record
And I should see all fields accurate
And I save results

Scenario: OLJPLAIN03 Offpeak  12 months current - One Time Payment

Given I start "aberdeen"
Then I should be on PayPlan page
And I select pay plan
|type | Offpeak      |
|plan | 12 months    |
|pay  | Once         |
And I expand basket
Then I should see following values
|membership| 649.0|
|activation| 20   |
When I proceed to next page
Then I should be on PersonalDetails page
When I populate personal details
And I set medical condition to "PersonalDetails_UnableNo"
And I proceed to next page
Then I should be on MemberSummary page
When I set marketing preferences to "MemberSummary_MarketingEmail"
And I agree to terms and conditions
And I proceed to payment
Then I should be on PaymentType page
When I select Visa payment
Then I should be on CardPayment page
When I fill in card details
Then I should be on Confirmation page
Given I navigate to salesforce
Then I should be on login page
When I log in
Then I am on SF Landing page
When I switch to Opportunities tab
Then I search for my record
And I should see all fields accurate
And I save results

Scenario: OLJPLAIN04 Offpeak  12 months WB current - One Time Payment

Given I start "aberdeen"
Then I should be on PayPlan page
And I select pay plan
|type | Offpeak      |
|plan | 12 months WB |
|pay  | Once         |
And I expand basket
Then I should see following values
|membership| 748.0|
|activation| 20   |
When I proceed to next page
Then I should be on PersonalDetails page
When I populate personal details
And I set medical condition to "PersonalDetails_UnableNo"
And I proceed to next page
Then I should be on MemberSummary page
When I set marketing preferences to "MemberSummary_MarketingEmail"
And I agree to terms and conditions
And I proceed to payment
Then I should be on PaymentType page
When I select Visa payment
Then I should be on CardPayment page
When I fill in card details
Then I should be on Confirmation page
Given I navigate to salesforce
Then I should be on login page
When I log in
Then I am on SF Landing page
When I switch to Opportunities tab
Then I search for my record
And I should see all fields accurate
And I save results


Scenario: OLJPLAIN05 Anytime  12 months current - DD

Given I start "aberdeen"
Then I should be on PayPlan page
And I select pay plan
|type | Anytime      |
|plan | 12 months    |
|pay  | Monthly      |
And I expand basket
Then I should see following values
|monthly   | 71.0 |
|activation| 20   |
When I proceed to next page
Then I should be on PersonalDetails page
When I populate personal details
And I set medical condition to "PersonalDetails_UnableNo"
And I proceed to next page
Then I should be on MemberSummary page
When I set marketing preferences to "MemberSummary_MarketingEmail"
And I agree to terms and conditions
And I proceed to payment
Then I should be on DD page
When I confirm details
And I proceed to next page
Then I should be on DDSetup page
When I enter bank details
Then I should be done setting DD
When I proceed to payment
Then I should be on PaymentType page
When I select Visa payment
Then I should be on CardPayment page
When I fill in card details
Then I should be on Confirmation page
Given I navigate to salesforce
Then I should be on login page
When I log in
Then I am on SF Landing page
When I switch to Opportunities tab
Then I search for my record
And I should see all fields accurate
And I save results

Scenario: OLJPLAIN06 Anytime  12 months current - DD

Given I start "aberdeen"
Then I should be on PayPlan page
And I select pay plan
|type | Anytime      |
|plan | 12 months WB |
|pay  | Monthly      |
And I expand basket
Then I should see following values
|monthly   | 79.0 |
|activation| 20   |
When I proceed to next page
Then I should be on PersonalDetails page
When I populate personal details
And I set medical condition to "PersonalDetails_UnableNo"
And I proceed to next page
Then I should be on MemberSummary page
When I set marketing preferences to "MemberSummary_MarketingEmail"
And I agree to terms and conditions
And I proceed to payment
Then I should be on DD page
When I confirm details
And I proceed to next page
Then I should be on DDSetup page
When I proceed to next page
Then I should be on DDSetup page
When I enter bank details
Then I should be on DDSummary page
When I proceed to next page
Then I should be done setting DD
When I proceed to payment
Then I should be on PaymentType page
When I select Visa payment
Then I should be on CardPayment page
When I fill in card details
Then I should be on Confirmation page
Given I navigate to salesforce
Then I should be on login page
When I log in
Then I am on SF Landing page
When I switch to Opportunities tab
Then I search for my record
And I should see all fields accurate
And I save results

Scenario: OLJPLAIN07 Anytime  12 months current - DD

Given I start "aberdeen"
Then I should be on PayPlan page
And I select pay plan
|type | Offpeak      |
|plan | 12 months    |
|pay  | Monthly      |
And I expand basket
Then I should see following values
|monthly   | 59.0 |
|activation| 20   |
When I proceed to next page
Then I should be on PersonalDetails page
When I populate personal details
And I set medical condition to "PersonalDetails_UnableNo"
And I proceed to next page
Then I should be on MemberSummary page
When I set marketing preferences to "MemberSummary_MarketingEmail"
And I agree to terms and conditions
And I proceed to payment
Then I should be on DD page
When I confirm details
And I proceed to next page
Then I should be on DDSetup page
When I proceed to next page
Then I should be on DDSetup page
When I enter bank details
Then I should be on DDSummary page
When I proceed to next page
Then I should be done setting DD
When I proceed to payment
Then I should be on PaymentType page
When I select Visa payment
Then I should be on CardPayment page
When I fill in card details
Then I should be on Confirmation page
Given I navigate to salesforce
Then I should be on login page
When I log in
Then I am on SF Landing page
When I switch to Opportunities tab
Then I search for my record
And I should see all fields accurate
And I save results

Scenario: OLJPLAIN08 Offpeak  12 months current - DD

Given I start "aberdeen"
Then I should be on PayPlan page
And I select pay plan
|type | Offpeak      |
|plan | 12 months WB |
|pay  | Monthly      |
And I expand basket
Then I should see following values
|monthly   | 68.0 |
|activation| 20   |
When I proceed to next page
Then I should be on PersonalDetails page
When I populate personal details
And I set medical condition to "PersonalDetails_UnableNo"
And I proceed to next page
Then I should be on MemberSummary page
When I set marketing preferences to "MemberSummary_MarketingEmail"
And I agree to terms and conditions
And I proceed to payment
Then I should be on DD page
When I confirm details
And I proceed to next page
Then I should be on DDSetup page
When I proceed to next page
Then I should be on DDSetup page
When I enter bank details
Then I should be on DDSummary page
When I proceed to next page
Then I should be done setting DD
When I proceed to payment
Then I should be on PaymentType page
When I select Visa payment
Then I should be on CardPayment page
When I fill in card details
Then I should be on Confirmation page
Given I navigate to salesforce
Then I should be on login page
When I log in
Then I am on SF Landing page
When I switch to Opportunities tab
Then I search for my record
And I should see all fields accurate
And I save results

