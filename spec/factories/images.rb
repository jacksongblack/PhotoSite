# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :image do
    photo "MyString"
    theme_id 1
    describer "MyString"
  end
end
