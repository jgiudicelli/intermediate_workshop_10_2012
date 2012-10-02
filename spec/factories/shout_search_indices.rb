# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :shout_search_index do
    shout nil
    shout_index "MyString"
  end
end
