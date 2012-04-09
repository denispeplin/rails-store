class Brand < ActiveRecord::Base
  has_many :product, dependent: :restrict
  has_and_belongs_to_many :categories

  validates_presence_of :name
end
