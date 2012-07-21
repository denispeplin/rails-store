FactoryGirl.define do
  factory :brand do
    sequence(:name) { |i| "MyBrand #{i}" }
  end
end
