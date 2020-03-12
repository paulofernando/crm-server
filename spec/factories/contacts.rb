FactoryBot.define do
  factory :contact do
    sequence(:first_name) { |n| "John (#{n})" }
    sequence(:last_name) { |n| "Smith (#{n})" }
    case_role { "Judge" }
    sequence(:email) { |n| "js@gmail.com (#{n})" }
    court_case
  end
end
