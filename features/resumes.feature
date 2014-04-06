Feature: Submit a Resume
  As a visitor to the website
  I want to post my resume
  so recruiter can found me for a Rails job

  Scenario: Check Resume Form with correct data
    Given I go to the new_resume page
    When I submit a resume proposal with good values

  Scenario: Check Resume Form with empty (missing required) inputs
    Given I go to the new_resume page
    When I submit a resume proposal with empty "Full name"
    When I submit a resume proposal with empty "Email"
    When I submit a resume proposal with empty "Your personal info"
    When I submit a resume proposal with empty "Education"
    When I submit a resume proposal with empty "Career objective"
    When I submit a resume proposal with empty "Work experience"
    When I submit a resume proposal with empty "Skill"

  Scenario: Check Resume Form with bad email input
    Given I go to the new_resume page
    When I submit a resume proposal with an invalid email

  Scenario: Check Resume Form with optional "Hobby" input
    Given I go to the new_resume page
    When I submit a resume proposal with optional "Hobby" input
