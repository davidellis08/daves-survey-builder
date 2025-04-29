Feature: Create a survey with multiple sections, pages and questions

  As an Admin user  
  I want to create a survey organized by sections  
  So that I can structure questions effectively
  
  @positive
  Scenario: Create a new assessment with title and description  
    Given I am on the assessment creation page  
    When I enter a title and description and click "Next"  
    Then I should be taken to the section builder page  

  @positive
  Scenario: Add a section to the assessment  
    Given I am on the section builder page  
    When I add a new section with a title and description  
    Then the section should appear with one page
    And with options to add questions and pages  
    
  @positive
  Scenario: Add a Text Response question to a section page
    Given I am on the section builder page
    And I have added a section  
    When I add a Text Response question with required set to true  
    Then the Text Response question should appear under the section page  
    
  @positive
  Scenario: Add another section with a Multiple Choice question  
    Given I am still on the section builder page  
    When I add a second section
    And I add a Multiple Choice question with two options  
    Then the new section is displayed
    And the Multiple Choice question with two options is displayed  
    
  @positive
  Scenario: Add another page to a section with a Checkbox question 
    Given I am still on the section builder page 
    And I have added a section
    When I add another page to a section  
    And I add a Checkbox question with two options
    Then the page is displayed
    And the Checkbox question with two options is displayed
    
  @positive
  Scenario: Add another page to a section with a Rating question 
    Given I am still on the section builder page 
    And I have added a section
    When I add another page to a section  
    And I add a Rating question
    Then the page is displayed
    And the Rating question is displayed
    
  @positive    
  Scenario: Review and confirm survey setup  
    Given I have added sections and pages with questions  
    When I click "Next"  
    Then I should see a summary with section titles, pages and their questions  
    And I should see the option to create the assessment  
    
  @positive
  Scenario: Complete and publish the assessment  
    Given I am on the review page  
    When I click "Create Assessment"  
    Then I should see a confirmation message that the survey is live  
    And a button to copy the link and buttons to view or list the survey should be available 
    
  @negative
  Scenario: Survey creation fails without without a title and description
  @negative
  Scenario: Survey creation fails with no section
  @negative
  Scenario: Survey creation fails when a page has no questions
  @negative
  Scenario: Text Response question without title should fail
  @negative
  Scenario: Multiple Choice question without title and options should fail
  @negative
  Scenario: Checkbox question without title and options should fail
  @negative
  Scenario: Rating question without title should fail

