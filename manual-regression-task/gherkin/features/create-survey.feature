Feature: Create a survey with multiple sections, pages and questions

  As an Admin user  
  I want to create a survey with sections, pages and questions
  So that I can collect feedback from respondants
  
  @positive
  Scenario: Create a new survey with title and description  
    Given I am on the survey creation page  
    When I enter a title and description and click "Next"  
    Then I should be taken to the section builder page  

  @positive
  Scenario: Add a section to the survey  
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
    Given I am on the section builder page  
    When I add a second section
    And I add a Multiple Choice question with two options  
    Then the new section is displayed
    And the Multiple Choice question with two options is displayed  
    
  @positive
  Scenario: Add another page to a section with a Checkbox question 
    Given I am on the section builder page 
    And I have added a section
    When I add another page to a section  
    And I add a Checkbox question with two options
    Then the page is displayed
    And the Checkbox question with two options is displayed
    
  @positive
  Scenario: Add another page to a section with a Rating question 
    Given I am on the section builder page 
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
  Scenario: Survey creation fails with no sections
  Scenario: Survey creation fails when a page has no questions
  Scenario: Text Response question without title should fail
  Scenario: Multiple Choice question without title and options should fail
  Scenario: Checkbox question without title and options should fail
  Scenario: Rating question without title should fail

----------
Feature: Create a survey with multiple sections, pages, and questions

  As an Admin user
  I want to create a survey with sections, pages, and questions
  So that I can collect feedback from respondents

  @positive
  Scenario Outline: Create a new survey and add elements
    Given I am on the survey creation page
    When I enter a survey title "<survey_title>" and description "<survey_description>" and click "Next"
    Then I should be taken to the section builder page

    When I add a new section with title "<section_1_title>" and description "<section_1_description>"
    Then the section should appear with one page
    And with options to add questions and pages

    When I add a "<question_type_1>" question with required set to <"question_required_1"> and text "<question_1_text>" <"question_1_options">
    Then the "<question_type_1>" question with text "<question_1_text>" <"question_1_options"> should appear under the "<section_1_title>" page

    When I add a second section with title "<section_2_title>" and description "<section_2_description>"
    Then the section should appear with one page
    And with options to add questions and pages

    When I add a "<question_type_2>" question with required set to <"question_required_2"> and text "<question_2_text>" <"question_2_options"> to the  "<section_2_title>" 
    Then the "<question_type_2>" question with text "<question_2_text>" <"question_2_options"> is displayed

    When I add another page to the "<section_2_title>"
    And I add a "<question_type_3>" question with required set to <"question_required_3"> and text "<question_3_text>" <"question_3_options"> to the new page
    Then the new page is displayed
    And the "<question_type_3>" question with text "<question_3_text>" <"question_3_options"> is displayed

    When I add a "<question_type_4>" question with required set to <"question_required_4"> and text "<question_4_text>" <"question_4_options"> to the  "<section_2_title>" 
    Then the "<question_type_4>" question with text "<question_4_text>" <"question_4_options"> is displayed

    When I click "Next"
    Then I should see a summary with section titles, pages and their questions
    And I should see the option to create the assessment

    When I click "Create Assessment"
    Then I should see a confirmation message that the survey is live
    And a button to copy the link and buttons to view or list the survey should be available

    Examples:
      | survey_title  | survey_description                                     | section_1_title | section_1_description | question_type_1 | question_required_1 | question_1_text | question_1_options | section_2_title | section_2_description      | question_type_2 | question_required_2 | question_2_text | question_2_options | question_type_3 | question_3_required | question_3_text | question_3_options | question_type_4 | question_4_required | question_4_text | question_4_options |
      | Test Survey 1 | multiple sections, pages, all questions, all mandatory | section 1 title | section 1 description | Text Response   | true                | question text   | true               | section 2       | section 2 description text | Multiple Choice | true                | make a Choice?  | good, bad          | Checkbox        | true                | Select Checkbox | option 1, option 2 | Rating          | true                | Select rating   | 1, 2, 3, 4, 5      |
      | Test survey 2 | multiple sections, pages, all questions, 1 mandatory   | section 1 title | section 1 description | Text Response   | true                | question text   | false              | section 2       | section 2 description text | Multiple Choice | false               | make a Choice?  | good, bad          | Checkbox        | false               | Select Checkbox | option 1, option 2 | Rating          | false               | Select rating   | 1, 2, 3, 4, 5      |

