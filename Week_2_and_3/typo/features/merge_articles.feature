Feature: Merge Articles
	As a blog administrator
	In order to link related articles
	I want to be able to merge related blog posts

	Background:
		Given the blog is set up

	Scenario: A non-admin cannot merge two articles
		Given I am logged into the non-admin panel
		And the following article exists:
			| title     | published |
			| Article 1 | true      |
		When I go to the edit page for "Article 1"
		Then I should not see "Merge Articles"

	Scenario: new articles cannot be merged
		Given I am logged into the admin panel
		And I am on the new article page
		Then I should not see "Merge Articles"

	Scenario: admin users can merge articles
		Given I am logged into the admin panel
		And the following article exists:
			| title     |
			| Article 1 |
		When I go to the edit page for "Article 1"
		Then I should see "Merge Articles"

	Scenario: When articles are merged, the merged article should contain the text of both previous articles
		Given I am logged into the admin panel
		And the following articles exist:
			| title     | body 	            |
			| Article 1 | Article 1 content |
			| Article 2 | Article 2 content |
		When I go to the edit page for "Article 1"
		And I fill in "merge_with" with "2"
		And I press "Merge"
		Then I should be on the admin content page
		When I go to the view page for "Article 1"
		Then I should see "Article 1 content"
		And I should see "Article 2 content"

	Scenario: When articles are merged, the merged article should have one author (either one of the authors of the two original articles)
		Given I am logged into the admin panel
		And the following articles exist:
			| title     | author |
			| Article 1 | Alice  |
			| Article 2 | Bob    |
		When I go to the edit page for "Article 1"
		And I fill in "merge_with" with "2"
		And I press "Merge"
		Then I should be on the admin content page
		When I go to the view page for "Article 1"
		Then I should see "Alice"
		And I should not see "Bob"

	Scenario: Comments on each of the two original articles need to all carry over and point to the new, merged article
		Given I am logged into the admin panel
		And the following articles exist:
			| title     |
			| Article 1 |
			| Article 2 |
		And article "Article 1" has 1 comment
		And article "Article 2" has 2 comments
		When I go to the edit page for "Article 1"
		And I fill in "merge_with" with "2"
		And I press "Merge"
		Then I should be on the admin content page
		When I go to the view page for "Article 1"
		Then I should see "3 comments"
		
	Scenario: The title of the new article should be the title from either one of the merged articles
		Given I am logged into the admin panel
		And the following articles exist:
			| title     |
			| Article 1 |
			| Article 2 |
		When I go to the edit page for "Article 1"
		And I fill in "merge_with" with "2"
		And I press "Merge"
		Then I should be on the admin content page
		When I go to the view page for "Article 1"
		Then I should see "Article 1"
		And I should not see "Article 2"

