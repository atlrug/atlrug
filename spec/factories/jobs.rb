# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    title "MyString"
    description "MyText"
    name "MyString"
    email "MyString"
    start_date "2014-02-14"
    end_date "2014-02-14"
  end
end
