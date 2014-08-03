When /^I submit a resume proposal with good values$/ do
  fill_in "Full name", :with => 'A full name'
  fill_in "Email", :with => 'example@example.com'
  fill_in "Your personal info", :with => 'personal info'
  fill_in "Education", :with => 'educ text'
  fill_in "Career objective", :with => 'career obj'
  fill_in "Work experience", :with => 'work exp'
  fill_in "Skill", :with => 'a skill'
  fill_in "Hobby", :with => 'a hobby'

  click_button "Submit Resume"

  expect(page.body).to match /Your resume has been submitted!/
end

When(/^I submit a resume proposal with empty "(.*?)"$/) do |field|
  fill_in "Full name", :with => 'A full name'
  fill_in "Email", :with => 'example@example.com'
  fill_in "Your personal info", :with => 'personal info'
  fill_in "Education", :with => 'educ text'
  fill_in "Career objective", :with => 'career obj'
  fill_in "Work experience", :with => 'work exp'
  fill_in "Skill", :with => 'a skill'
  fill_in "Hobby", :with => 'a hobby'

  # Undo the empty given field.
  fill_in field, :with => ''

  click_button "Submit Resume"

  expect(page.body).to match /Your resume couldn\'t be submitted!/
  expect(page.body).to match /can\'t be blank/
end

When(/^I submit a resume proposal with an invalid email$/) do
  fill_in "Full name", :with => 'A full name'
  fill_in "Your personal info", :with => 'personal info'
  fill_in "Education", :with => 'educ text'
  fill_in "Career objective", :with => 'career obj'
  fill_in "Work experience", :with => 'work exp'
  fill_in "Skill", :with => 'a skill'
  fill_in "Hobby", :with => 'a hobby'

  # Bad Email
  fill_in "Email", :with => 'bademail'

  click_button "Submit Resume"

  expect(page.body).to match /Your resume couldn\'t be submitted!/
  expect(page.body).to match /is invalid/
end

When(/^I submit a resume proposal with optional "(.*?)" input$/) do |arg1|
  fill_in "Full name", :with => 'A full name'
  fill_in "Email", :with => 'example@example.com'
  fill_in "Your personal info", :with => 'personal info'
  fill_in "Education", :with => 'educ text'
  fill_in "Career objective", :with => 'career obj'
  fill_in "Work experience", :with => 'work exp'
  fill_in "Skill", :with => 'a skill'
# NO "Hobby" input.

  click_button "Submit Resume"

  expect(page.body).to match /Your resume has been submitted!/
end
