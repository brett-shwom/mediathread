Feature: Public Compositions
        
    Scenario: 1. Public Composition - create by test_instructor, verify visibility 
        Using selenium
        Given I am test_instructor in Sample Course
        Given there are no projects
        Given publish to world is enabled
        
        # Create a project from the home page
        There is a Create Composition button
        When I click the Create Composition button
        Then I am at the Untitled page
        I see "by Instructor One"
        And I see "Private"
        
        # Add a title and some text
        Then I call the Composition "Composition Public: Scenario 1"
        And I write some text for the Composition
        
        # Insert an asset
        Then I insert "MAAP Award Reception" into the text
        
        # Insert an annotation
        Then I insert "Left Corner" into the text
        
        # Save
        When I click the Save button
        Then I see a Save Changes dialog        
        Then I set the project visibility to "Whole World - a public url is provided"
        Then I save the changes
        Then there is a "permalink" link
        And there is a "Published to World" link
        
        Then I remember the "permalink" link
        Then I log out
        Then I navigate to the "permalink" link
        
        # Public Composition elements
        There is an open Composition panel
        I see "Instructor One"
        And I see "Composition Public: Scenario 1"
        And there is a "permalink" link
        
        The Composition panel does not have a Revisions button
        And the Composition panel does not have an Edit button
        And the Composition panel does not have a Preview button
        And the Composition panel does not have a Save button
        And the Composition panel does not have a +/- Author button
        
        When I click the "MAAP Award Reception" citation in the Composition panel
        Then the Composition panel media window displays "MAAP Award Reception"
        When I click the "Left Corner" citation in the Composition panel
        Then the Composition panel media window displays "Left Corner"
        
        Finished using Selenium


        
        