# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :attendee do
    name "MyString"
    allergies "MyString"
    special_needs "MyString"
    age 1
    program_segment nil
    emmergencycontactphone "MyString"
    media_release false
    registrant nil
  end
end
