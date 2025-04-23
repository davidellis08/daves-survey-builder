@regression
Feature: Create a survey with sections and questions

  As an Admin user
  I want to create a survey organized by sections
  So that I can structure questions effectively


Scenario: Admin creates asssessment with title and description
  Given I am on the "Create Assessment Step 1 of 4" page
  And I have entered valid values into "Title" and "Description" fields
  When I click the "Next" button
  Then I should be taken to the "Create Assessment Step 2 of 4" page
  
Scenario: Admin adds section to assessment
  Given I am on the "Create Assessment - Step 2 of 4" page
  And the following buttons are present:
    | Button               |
    | Add Section          |
    | Add Your First Section |
    | Back                 |
    | Next                 |
  When I click the "Add Your First Section" button
  Then I input the following for "Section 1":
    | Field         | Value                     |
    | Section Title | Test Section 1             |
    | Description   | Test Section 1 description |
  And the following fields should be displayed for "Page Content":
    | Field      | Value  |
    | Page Title | Page 1 |
  And the following buttons should be present:
    | Button       |
    | Add Question |
    | Add Section  |
    | Add Page     |
    | Back         |
    | Next         |

Scenario: Admin adds Text Response question to section
  Given I am on the "Create Assessment - Step 2 of 4" page
  And data is present for the section title and description
  And I click the "Add Question" button
  When I input the following:
    | Field             | Value                        |
    | Question Type     | Text Response                |
    | Question Text     | Text reponse format question |
    | Required question | True                         |
  Then the question should be displayed in "Section 1"

Scenario: Admin adds another section to assessment
  Given I am on the "Create Assessment - Step 2 of 4" page
  And the following buttons are present:
    | Button       |
    | Add Section  |
    | Add Page     |
    | Add Question |
    | Back         |
    | Next         |
  When I click the "Add Section" button
  Then I input the following for "Section 2":
    | Field         | Value                     |
    | Section Title | Test Section 2            |
    | Description   | Text Section 2 description |
  And the following fields should be displayed for "Page Content":
    | Field      | Value  |
    | Page Title | Page 1 |
  And the following buttons should be present:
    | Button       |
    | Add Question |
    | Add Section  |
    | Back         |
    | Next         |

Scenario: Admin adds Multiple Choice question to section 2
  Given I am on the "Create Assessment - Step 2 of 4" page
  And data is present for the section title and description
  And I click the "Add Question" button
  When I input the following:
    | Field             | Value                           |
    | Question Type     | Multiple Choice                 |
    | Question Text     | Multiple choice format question |
    | Options           | Option 1, Option 2              |
    | Required question | False                           |
  Then the question should be displayed in the section
  
Scenario: Admin confirm survey is configured correctly
  Given I am on the "Create Assessment - Step 2 of 4" page
  And I have added sections and questions
  When I click the "Next" button
  Then I should be taken to the "Create Assessment Step 3 of 4" page
  And the following sections should be displayed:
        | Section Title  | Description                | Question Text                |
        | Test Section 1 | Test Section 1 description | Text reponse format question |
        | Test Section 2| Text Section 2 description  | Multiple choice format question |
  And the following buttons should be present:
        | Button            |
        | Back              |
        | Create Assessment |

Scenario: Admin creates section based assessment
    Given I am on the "Create Assessment - Step 3 of 4" page
    And I have added 2 sections and 2 questions
    When I click the "Create Assessment" button
    Then I should be taken to the "Your survey is live" page
    And the following message should be displayed:
            | Message            |
            | your survey is live|
    And a link to the survey should be displayed
    And the following buttons should be present:
            | Button              |
            | Copy                | 
            | View Survey Details |
            | Go to My Surveys    |