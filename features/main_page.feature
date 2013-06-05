Feature: Visit Web Site
  As a visitor to the website
  I want to see something on the homepage
  so I can know that the site is working

  Scenario: Check stuff on home page
## TOP BAR
    When I go to the home page
    Then I should see "Go to Meetings"
    Then I should see "Find Presentations"
    Then I should see "Learn Ruby"
    Then I should see the image "Atlanta Ruby Logo"
    Then I should see "Find a Job"
    Then I should see "Hire Someone"
    Then I should see "Give a Talk"
    Then I should see "Admin"
## BOTTOM BAR
    Then I should see "Meetup"
    Then I should see "@atlrug"
    Then I should see "Wiki"
    Then I should see "Linkedin"
    Then I should see "IRC-Chat"
## MIDDLE/LEFT
    Then I should see "Platinum Sponsor"
    Then I should see "Mandrill"
## MIDDLE/RIGHT
    Then I should see "Other Sponsors"
    Then I should see "Atlanta Tech Village Provides Space for RHOK 2013 Rails Team"
    Then I should see "Primedia Provides Space for Emerald City Meetings"
    Then I should see "Big Nerd Ranch Pays for Meetup Account Fees"

  Scenario: Check "Go to Meetings" Link
    Given I go to the home page
    When I follow "Go to Meetings"
    Then I should see "Monthly Meetup"
    Then I should see "Future Meetings"
    Then I should see "See more on Meetup.com/atlantaruby"

  Scenario: Check "Find Presentations" Link
    Given I go to the home page
    When I follow "Find Presentations"
    Then I should see "Other videos"
    Then I should see "See more on Blip.tv"

  Scenario: Check "Learn Ruby" Link
    Given I go to the home page
    When I follow "Learn Ruby"
    Then I should see "Learn Ruby and/or Rails" 
    Then I should see "Locally"
    Then I should see "Emerald City Programming Group"
    Then I should see "Online"
    Then I should see "Reading"
    Then I should see "Rails Tutorial"

  Scenario: Check "Find a Job" Link
    Given I go to the home page
    When I follow "Find a Job"
    Then I should see "Our sponsors are usually hiring"
    Then I should see "Networking"

  Scenario: Check "Hire Someone" Link
    Given I go to the home page
    When I follow "Hire Someone"
    Then I should see "How to hire a Ruby developer."

  Scenario: Check "Admin" Link
    Given I go to the home page
    When I follow "Admin"
    Then I should see "Login"
