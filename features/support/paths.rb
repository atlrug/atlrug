
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name
    when /the home\s?page/
      '/'
    when /the new_jobs page/
      '/jobs/new'
    when /the new_resume page/
      '/resumes/new'
    end
  end
end

World(NavigationHelpers)
