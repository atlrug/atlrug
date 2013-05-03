When /^I submit a talk named "([^"]*)" with length of (\d+) minutes$/ do |title, duration|
  visit new_talk_url
  fill_in "Title", :with => title
  fill_in "Duration (minutes)", :with => duration
  fill_in "Email", :with => 'mike@atlrug.com'
  fill_in "Twitter Username", :with => 'skalnik'
  fill_in "Description", :with => 'This talk will blow your mind!'
  click_button "Submit Proposal"
end

Then /^I should see the talk was submitted successfully$/ do
  page.body.should match /submitted for review/
end

Given /^I'm logged in as an admin$/ do
  user = FactoryGirl.create(:user)
  User.any_instance.stub(:atlrug_organizer? => true) and user.stub(:atlrug_team_id => 1)
  OmniAuth.config.add_mock(:github, { :uid  => user.uid })
  visit "/auth/github/"
end

Given /^a talk has been submitted$/ do
  FactoryGirl.create(:talk)
end

When /^I go approve a talk$/ do
  pending
  visit "/talks/approve"
  click_link "approve"
end

Then /^I should see it scheduled for the next meetup$/ do
  page.body.should match /scheduled for next meetup/
end
