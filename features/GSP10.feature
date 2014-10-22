
 Feature: As a User, I want to search People10 Technosoft using google search engine

   
   Background: Given I have a valid browser

    Scenario: Search People10 Technosoft in Google 

	Given I am on the Google homepage
	Then I will search for "People10 Technosoft"
	Then I should see "People10 | Product Development Outsourcing"
	

   Scenario Outline: Search People10 Technosoft in Google 

	Given I am on the Google homepage
	Then I will search for "<Request>"
	Then I should see "<Response>"
	
 	Examples: 
 	|Request            | Response ||
    |People10 Technosoft| People10 | Product Development Outsourcing|
    |People10 			| People10 | Product Development Outsourcing|
