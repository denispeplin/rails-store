class Category < ActiveRecord::Base
  has_many :product, dependent: :restrict
  has_and_belongs_to_many :brands

  validates_presence_of :name
end
