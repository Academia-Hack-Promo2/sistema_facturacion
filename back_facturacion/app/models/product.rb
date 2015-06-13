class Product < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :invoice
  validates :name, :price, presence: true
  validates :name, length: { maximum: 30 }
  validates :description, length: { maximum: 150 }
  validates :price, length: { maximum: 10 }
  validates :quantity, numericality: { only_integer: true }
end
