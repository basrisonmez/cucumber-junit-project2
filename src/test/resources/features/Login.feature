@Regression
Feature: Library app login feature
  User Story:As a user, I should be able to login with correct credentials to different accounts.
  and dashboard should be displayed.
 //Similar to TestNG @BeforeMethod. Background is running before each scenario
  Accounts are: librarian, student, admin
Background: For each scenario user is on library login page
  Given user is on the library login page
  @librarian @employee
  Scenario: Login as librarian
    When user enters librarian username
    And user enters librarian password
    Then user should see dashboard



    @student
    Scenario: Login as student
      When user enters student username
      And user enters student password
      Then user should see dashboard

      Scenario: Login as admin
        When user enters admin username
        And user enters admin password
        Then user should see dashboard