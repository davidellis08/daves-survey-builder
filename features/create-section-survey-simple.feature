Feature: Create a survey with sections and questions

  As an Admin user  
  I want to create a survey organized by sections  
  So that I can structure questions effectively

  Scenario: Create a new assessment with title and description  
    Given I am on the assessment creation page  
    When I enter a title and description and click "Next"  
    Then I should be taken to the section builder page  

  Scenario: Add a section to the assessment  
    Given I am on the section builder page  
    When I add a new section with a title and description  
    Then the section should appear with options to add questions and pages  

  Scenario: Add a Text Response question to a section  
    Given I have added a section  
    When I add a Text Response question with required set to true  
    Then the question should appear under the section  

  Scenario: Add another section with a Multiple Choice question  
    Given I am still on the section builder page  
    When I add a second section and a Multiple Choice question with two options  
    Then both the new section and its question should be displayed  

  Scenario: Review and confirm survey setup  
    Given I have added two sections with questions  
    When I click "Next"  
    Then I should see a summary with section titles and their questions  
    And I should see the option to create the assessment  

  Scenario: Complete and publish the assessment  
    Given I am on the review page  
    When I click "Create Assessment"  
    Then I should see a confirmation message that the survey is live  
    And a button to copy the link and buttons to view or list the survey should be available  
