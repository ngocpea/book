FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "test#{n}@example.com" }
    password "password"
  end

  # factory :book do
  #   author 'Sample Book'
  #   title 'Sample Author'
  #   user
  # end
end
