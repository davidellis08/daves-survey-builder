Feature: Analyse results of survey with multiple sections, pages and questions
    As an Admin user
    I want to view the results of a survey
    So that I can analyse the feedback or information provided
    
Background: Survey is created with multiple sections, pages and questions
    Given I am on the survey management page
    And I have a survey with multiple sections, pages and questions
    And I have multiple responses to the survey

    @positive
    Scenario: View survey results with no responses
    Scenario: View survey results with multiple responses

    @negative
    Scenarios: View the user details of the respondents