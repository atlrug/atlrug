# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :resume do
    name "MyString"
    email "MyString"
    description "MyText"
    job_history "MyText"
  end
end
