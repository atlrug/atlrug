When /^I submit a job proposal with good values$/ do
  fill_in "Title", :with => 'A Title'
  fill_in "Description", :with => 'A Description'
  fill_in "Requirement", :with => 'A Requirement'

  select "2014",  :from => "job_start_date_1i"
  select "April", :from => "job_start_date_2i"
  select "1",     :from => "job_start_date_3i"

  select "2014",  :from => "job_end_date_1i"
  select "April", :from => "job_end_date_2i"
  select "2",     :from => "job_end_date_3i"

  fill_in "Contact name", :with => 'A Contact name'
  fill_in "Email", :with => 'example@example.com'

  click_button "Submit Proposal"

  expect(page.body).to match /Your job has been submitted!/
end

When(/^I submit a job proposal with empty "(.*?)"$/) do |field|
  fill_in "Title", :with => 'A Title'
  fill_in "Description", :with => 'A Description'
  fill_in "Requirement", :with => 'A Requirement'

  select "2014",  :from => "job_start_date_1i"
  select "April", :from => "job_start_date_2i"
  select "1",     :from => "job_start_date_3i"

  select "2014",  :from => "job_end_date_1i"
  select "April", :from => "job_end_date_2i"
  select "2",     :from => "job_end_date_3i"

  fill_in "Contact name", :with => 'A Contact name'
  fill_in "Email", :with => 'example@example.com'
  # Undo the empty given field.
  fill_in field, :with => ''
  click_button "Submit Proposal"

  expect(page.body).to match /Your proposal couldn\'t be submitted!/
  expect(page.body).to match /can&#39;t be blank/
end

When(/^I submit a job proposal with start date greater than end date$/) do
  fill_in "Title", :with => 'A Title'
  fill_in "Description", :with => 'A Description'
  fill_in "Requirement", :with => 'A Requirement'

  select "2014",  :from => "job_start_date_1i"
  select "April", :from => "job_start_date_2i"
  select "2",     :from => "job_start_date_3i"

  select "2014",  :from => "job_end_date_1i"
  select "April", :from => "job_end_date_2i"
  select "1",     :from => "job_end_date_3i"

  fill_in "Contact name", :with => 'A Contact name'
  fill_in "Email", :with => 'example@example.com'

  click_button "Submit Proposal"

  expect(page.body).to match /Your proposal couldn\'t be submitted!/
  expect(page.body).to match /End date must be greater than start date./
end

When(/^I submit a job proposal with an invalid email$/) do
  fill_in "Title", :with => 'A Title'
  fill_in "Description", :with => 'A Description'
  fill_in "Requirement", :with => 'A Requirement'

  select "2014",  :from => "job_start_date_1i"
  select "April", :from => "job_start_date_2i"
  select "2",     :from => "job_start_date_3i"

  select "2014",  :from => "job_end_date_1i"
  select "April", :from => "job_end_date_2i"
  select "1",     :from => "job_end_date_3i"

  fill_in "Contact name", :with => 'A Contact name'
  fill_in "Email", :with => 'bademail'

  click_button "Submit Proposal"

  expect(page.body).to match /Your proposal couldn\'t be submitted!/
  expect(page.body).to match /is invalid/
end
