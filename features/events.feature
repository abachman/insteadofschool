Feature: Events are useable
  Scenario: Visiting index
    Given an event exists with name: "Event 1"
    When  I am on the events page
    Then  I should see "Event 1" within ".listing"

  Scenario: Creating an event
    Given I am on the events page
    And   I follow "New event"
    And   I fill in the following:
      | Name        | new event |
      | Description | a desc        |
      | Audience    | kids          |
    And I press "Create"
    Then I should be on the events page
    And  I should see "new event"
    And  I should see "a desc"
    And  I should see "kids"

  Scenario: Editing an event
    Given an event exists with name: "Event 1"
    When  I am on the events page
    And   I follow "edit"
    And   I fill in the following:
      | Name        | updated event |
      | Description | a desc        |
      | Audience    | kids          |
    And I press "Update"
    Then I should be on the events page
    And  I should not see "Event 1"
    And  I should see "updated event"
    And  I should see "a desc"
    And  I should see "kids"

