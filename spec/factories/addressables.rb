# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :addressable do
    address nil
    addressable_type "MyString"
    addressable_id 1
  end
end
