@regression

Feature: Edit a survey with sections and questions

  As an Admin user  
  I want to edit an existing survey and its structure  
  So that I can keep it up to date or correct mistakes

  Scenario: Open an existing survey in edit mode  
    Given I am on the survey list page  
    When I click "Edit" on an existing survey  
    Then I should be taken to the survey editor with existing title, description, sections, and questions pre-filled

  Scenario: Edit the survey title and description  
    Given I am editing a survey  
    When I update the title and description  
    And I click "Save"  
    Then the updated title and description should be saved and visible in the editor

  Scenario: Edit a section title and description  
    Given I am on the section builder page with an existing section  
    When I update the section title and description  
    And I click "Save Section"  
    Then the section details should be updated in the survey

  Scenario: Edit a Text Response question in a section  
    Given a section contains a Text Response question  
    When I update the question text and change required to false  
    And I click "Save Question"  
    Then the updated question should be shown under the section

  Scenario: Add a new question to an existing section  
    Given I am editing a section with existing questions  
    When I add a new Multiple Choice question with three options  
    Then the new question should appear in the section

  Scenario: Delete a question from a section  
    Given I am editing a section with at least one question  
    When I click "Delete" on a question  
    Then the question should be removed from the section

  Scenario: Review and save updated survey  
    Given I have made changes to the survey structure  
    When I click "Next"  
    Then I should see an updated summary of the survey  
    And I should see the option to update the survey

  Scenario: Confirm changes and republish the survey  
    Given I am on the updated survey review page  
    When I click "Update Survey"  
    Then I should see a confirmation message that the survey has been updated  
    And updated content should be reflected when the survey link is opened
