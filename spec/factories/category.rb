FactoryGirl.define do
  factory :category do
    sequence(:name) { |i| "MyCategory #{i}" }
  end
end
