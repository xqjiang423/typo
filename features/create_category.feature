Feature: create category
  As a blog administrator
  In order to manage my blogs
  I want to be able to create categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully create a category
    Given I am on the new categories page
    When I fill in "category_name" with "newname"
    And I fill in "category_keywords" with "newkeyword"
    And I fill in "category_permalink" with "JXQ"
    And I fill in "category_description" with "myself"
    And I press "Save"
    Then I should see "newname"
    Then I should see "newkeyword"
    Then I should see "JXQ"
    Then I should see "myself"