FactoryGirl.define do
  factory :product do
    sequence(:name) { |i| "MyBrand #{i}" }
    sequence(:price) { |i| "#{i * 10.0}" }
    association :brand
    association :category
  end
end
