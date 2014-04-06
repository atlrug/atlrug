Feature: Submit Job Proposals
  As a visitor to the website
  I want to post job proposals
  so I can recruit Rails developers

  Scenario: Check Job Proposal with correct data
    Given I go to the new_jobs page
    When I submit a job proposal with good values

  Scenario: Check Job Proposal with empty (missing required) inputs
    Given I go to the new_jobs page
    When I submit a job proposal with empty "Title"
    When I submit a job proposal with empty "Description"
    When I submit a job proposal with empty "Requirement"
#FYI: Dates can't be empty.
    When I submit a job proposal with empty "Contact name"
    When I submit a job proposal with empty "Email"

  Scenario: Check Job Proposal with start date > end date
    Given I go to the new_jobs page
    When I submit a job proposal with start date greater than end date

  Scenario: Check Job Proposal with bad email input
    Given I go to the new_jobs page
    When I submit a job proposal with an invalid email
#TODO
