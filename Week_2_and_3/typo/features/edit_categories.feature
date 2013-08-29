Feature: Edit categories
	As an administrator
	In order to create and maintain blog categories
	I should be able to view and edit existing categories and create new categories

	Background:
		Given the blog is set up
		And I am logged into the admin panel

	Scenario: view categories
		When I go to the Categories page
		Then I should see "Categories"

	Scenario: add category
		When I go to the Categories page
		And I fill in the following:
			| category_name			| Test       	|
		    | category_keywords		| key 		 	|
		    | category_permalink	| general	 	|
    		| category_description	| description	|
    	When I press "Save"
    	Then I should see "Test"
    	And I should see "key"
    	And I should see "general"
    	And I should see "description"
