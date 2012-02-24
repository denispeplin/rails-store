class Category < ActiveRecord::Base
  has_many :product
  before_destroy :check_products

  def check_products
    product.count == 0
  end
end
