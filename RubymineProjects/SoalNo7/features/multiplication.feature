Feature: Qa Fabelio 2 Scenario
  Scenario: Login On fabelio without wrong email
    Given I am on the qa.fabelio homepage
    When I tap button account and input email
    Then Show Error Login
  Scenario: Login On fabelio without valid email
    Given I tap button account and input email&password
    When I tap button Login
    Then Show Login successful

