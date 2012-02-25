class Product < ActiveRecord::Base
  belongs_to :category
  belongs_to :brand

  delegate :name, to: :category, prefix: true
  delegate :name, to: :brand, prefix: true

  validates_presence_of :name
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
end
