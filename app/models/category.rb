class Category < ActiveRecord::Base
  has_many :product
  has_and_belongs_to_many :brands
  before_destroy :check_products

  def check_products
    product.count == 0
  end
end
