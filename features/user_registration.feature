Feature: User registration
  As a user,
  In order to have be able to finalise an order
  I would like to be able to register an account

  Background:
    Given I visit the site
    And I click the "Sign Up" button

  Scenario: Visitor can create an account to become a registered user[Hapy path]
    When I fill the "Name" with "John"
    And I fill the "Email" with "john@doe.com"
    And I fill the "Password" with "password1"
    And I fill the "Password confirmation" with "password1"
    And I click the "Sign up" button
    Then I should see "Hello, John"

  Scenario: Visitor can't create an account with invalid credentials[Sad path]
    When I fill the "Email" with ""
    And I fill the "Password" with ""
    And I fill the "Password confirmation" with ""
    And I click the "Sign up" button
    Then I should see "Email can't be blank"
    And I should see "Password can't be blank"