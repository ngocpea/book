FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }
    password "password"
  end

  factory :book do
    title 'Harry Potter'
    author 'JK Rowling'
    user
  end
end
