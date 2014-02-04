Feature: Search
  In order to see a word definition
  As a website user
  I need to be able to search for a word

  Scenario: Searching for a page that does exist               
    Given I am on "/wiki/Main_Page"                            
    When I fill in "search" with "Behavior Driven Development" 
    And I press "searchButton"                                 
    Then I should see "agile software development" 

  Scenario: Searching for a page that does not exist               
    Given I am on "/wiki/Main_Page"                            
    When I fill in "search" with "hjhjhjjhjh" 
    And I press "searchButton"                                 
    Then I should see "There were no results matching the query." 
