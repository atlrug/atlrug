Feature: Visit Web Site
  As a visitor to the website
  I want to see something on the homepage
  so I can know that the site is working

  Scenario: Check stuff on home page
    When I go to the home page
    Then I should see "How do I ..."
    Then I should see "Go to a meeting?"
    Then I should see "Watch old presentations?"
    Then I should see "Learn Ruby?"
    Then I should see "Get a job?"
    Then I should see "Hire someone?"
    Then I should see "Sponsors!"
    Then I should see "Platinum Sponsors"
    Then I should see "Others (also important!)"
    Then I should see "Follow @atlrug"
    Then I should see "ThoughtWorks – bronze sponsor"
    Then I should see "ATDC — supplies room for monthly meetings"
    Then I should see "Primedia — supplies room for Emerald City Meetings"
## UNDER "Learn Ruby?"
    Then I should see "Suggestions for learning Ruby and/or Rails" 
    Then I should see "Interwubs/Books"
## UNDER "Get a job?"
    Then I should see "Our sponsors are usually hiring"
    Then I should see "Networking"

  Scenario: Check Meetings sub-links
    Given I go to the home page
    When I follow "Go to a meeting?"
    Then I should see "Monthly Meetup"
    Then I should see "Future Meetings"
    Then I should see "See more on meetup.com"

  Scenario: Check Presentations sub-links
    Given I go to the home page
    When I follow "Watch old presentations?"
    Then I should see "Other videos"
    Then I should see "See more on Blip.tv"
