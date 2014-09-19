# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :jobber do
    first_job_at "2014-09-19 09:18:10"
    last_job_at "2014-09-19 09:18:10"
    person nil
  end
end
