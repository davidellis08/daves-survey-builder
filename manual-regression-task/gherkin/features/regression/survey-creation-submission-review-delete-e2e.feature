@regression
Feature: End to end regression test for survey builder
# Survey builder regression plan covering creation of survey with multiple sections, pages, and questions. 
# Covers response submission, results review and deletion of survey.

  Scenario: Survey creation page is accessible
    Given I am a survey creator
    When I select the create assessment button
    Then I should see the "Create Assessment" page

  Scenario: Survey can be created
    Given I am a survey creator
    And I am on the "Create Assessment" page
    When I create a survey titled "Regression Test Survey"
    And I add multiple sections
    And I add multiple pages
    And I add multiple questions
    Then a link should be generated for the survey
    And the survey should appear in the list of surveys on "Assessment Templates" page

  Scenario: Survey can be accessed by link
    Given a survey titled "Regression Test Survey" exists and is published
    And I am a survey respondant
    When I select the link to the survey
    Then I should be taken to the survey completion page

  Scenario: Survey response answers can be reviewed
    Given I have completed a survey titled "Regression Test Survey"
    And I am on the survey submission page
    When I complete a survey with valid answers
    And I click the "Review Answers" button
    Then I should see the 'Review your answers' page
    And answers should match the ones I provided
    And I should see a button to submit the answers

  Scenario: Survey response can be submitted
    Given I am on the 'Review your answers' page
    When I click the "Submit Answers" button
    Then I should see a confirmation message that my response has been submitted
    And I should be taken to the survey completion page

  Scenario: View survey response analytics
    Given multiple responses have been submitted to "Regression Test Survey"
    And I am on the "Assessment templates" page
    When I view responses to "Regression Test survey"
    Then I should see the submitted response data
    And response data should be anonymous

  Scenario: Survey can be deleted
    Given I am on the "Assessment templates" page
    When I select to view "Regression Test Survey"
    And I click the "Delete" button
    Then the survey and responses should be removed from the system
