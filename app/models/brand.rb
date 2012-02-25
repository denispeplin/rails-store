class Brand < ActiveRecord::Base
  has_many :product
  has_and_belongs_to_many :categories
  before_destroy :check_products

  validates_presence_of :name

  def check_products
    product.count == 0
  end
end
