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

## BOTTOM BAR
    Then I should see "Meetup"
    Then I should see "@atlrug"
    Then I should see "Wiki"
    Then I should see "Linkedin"
    Then I should see "Slack/Tech404/Rails"
    Then I should see "Code of Conduct"

## MIDDLE/LEFT
    Then I should see "Platinum Sponsors"
    Then I should see "Pardot"
    Then I should see "Mandrill"

## MIDDLE/RIGHT
  Scenario: Check "Go to Meetings" Link
    Given I go to the home page
    When I follow "Go to Meetings"
    Then I should see "Monthly Meetup"
    Then I should see "Future Meetings"
    Then I should see "See more on Meetup.com/atlantaruby"

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
    Then I should see "How to hire a Ruby developer."
    Then I should see "Have a new job?"
    Then I should see "Please click here to submit your new job"
    Then I should see "Current jobs"

  Scenario: Check "Have a new job?" Link
    Given I go to the home page
    When I follow "Find a Job"
    When I follow "Please click here to submit your new job"
    Then I should see "ATLRUG Job Proposal"
    Then I should see "Title"
    Then I should see "Description"
    Then I should see "Requirement"
    Then I should see "Start date"
    Then I should see "End date"
    Then I should see "Contact name"
    Then I should see "Email"

  Scenario: Check "Find Presentations" Link
    Given I go to the home page
    When I follow "Find Presentations"
    Then I should see "Other videos"
    Then I should see "See more newer stuff on Atlanta Ruby Users' Group Talk Series on YouTube"
    Then I should see "Past Talks on our Wiki page"
    Then I should see "Older Videos"
