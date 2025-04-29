Feature: Submit a survey anonymously with multiple sections, pages and questions
    As an Anonymous user
    I want to submit a survey
    So that I can provide feedback or information

Background: Survey is created with multiple sections, pages and questions
    Given A survey with multiple sections, pages and questions exists
    And I have selected the shareable link
    And I am on the survey submission page

@positive        
    Scenario: Submit a survey completing all mandatory questions
    Scenario: Submit multiple surveys completing mandatory questions

@negative
    Scenario: Submit a survey fails without completing mandatory questions
