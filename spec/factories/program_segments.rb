# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :program_segment do
    name "MyString"
    date "2014-08-18 15:29:14"
    cost "9.99"
    capacity 1
    enrolled 1
    program_model nil
  end
end
