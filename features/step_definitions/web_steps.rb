Then /^(?:|I )should see "([^\"]*)"$/ do |text|
  if page.respond_to? :should
    expect(page).to have_content(text)
  else
    puts assert page.has_content?(text)
  end
end

Then /^I should see the image "(.+)"$/ do |image|
  expect(page).to have_xpath("//img[@alt=\"#{image}\"]")
end

When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

When /^(?:|I )follow "([^\"]*)"$/ do |link|
  click_link(link)
end
