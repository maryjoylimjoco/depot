FactoryGirl.define do
  factory :user do
    sequence(:name) {|n| "User #{n + 1}"}
    password "password"
  end
end
