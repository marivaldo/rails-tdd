FactoryBot.define do
  factory :order do
    sequence(:description) { |n| "Customer ##{n}" }
    customer
  end
end
