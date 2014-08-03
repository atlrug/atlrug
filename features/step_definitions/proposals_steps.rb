When /^I submit a talk named "([^\"]*)" with length of (\d+) minutes$/ do |title, duration|
  visit new_talk_url
  fill_in "Title", :with => title
  fill_in "Email", :with => 'mike@atlrug.com'
  fill_in "Duration (minutes)", :with => duration
  fill_in "Description", :with => 'This talk will blow your mind!'
  fill_in "Twitter Username", :with => 'skalnik'
  click_button "Submit Proposal"
end

When /^I submit an incomplete talk named "([^\"]*)" with length of (\d+) minutes$/ do |title, duration|
  visit new_talk_url
  fill_in "Title", :with => title
  fill_in "Duration (minutes)", :with => duration
  fill_in "Description", :with => 'This talk will blow your mind!'
  fill_in "Twitter Username", :with => 'skalnik'
  click_button "Submit Proposal"
end

Then /^I should see the talk was submitted successfully$/ do
  expect(page.body).to match /submitted for review/
end

Then(/^I should see the talk was not submitted successfully$/) do
  expect(page.body).not_to match /submitted for review/
end

Given /^I\'m logged in as an admin$/ do
  user = FactoryGirl.create(:user)
  allow_any_instance_of(User).to receive_messages(:atlrug_organizer? => true) and
    allow(user).to receive_messages(:atlrug_team_id => 1)

  OmniAuth.config.add_mock(:github, { :uid  => user.uid })
  visit "/auth/github/"
end

Given /^a talk has been submitted$/ do
  FactoryGirl.create(:talk)
end

When /^I go approve a talk$/ do
  visit approve_talks_path
  click_link "Approve"
end

Then /^I should see it scheduled for the next meetup$/ do
  expect(page.body).to match(/scheduled for next meetup/)
end
