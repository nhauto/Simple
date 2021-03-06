Feature: my test


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

