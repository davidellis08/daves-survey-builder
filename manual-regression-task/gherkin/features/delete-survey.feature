Feature: Delete an existing survey
    As an Admin user  
    I want to delete a survey  
    So that I can remove surveys

Background: Survey is created with multiple sections, pages and questions
    Given I am on the survey management page
    And I have a survey with multiple sections, pages and questions

@positive
    Scenario: Delete a survey with no responses
    Scenario: Delete a survey with multiple responses