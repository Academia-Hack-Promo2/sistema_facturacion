class Product < ActiveRecord::Base
  belongs_to :user
  has_many :invoice, dependent: :destroy
  validates :name, :price, presence: true
  validates :name, length: { maximum: 30 }
  validates :description, length: { maximum: 150 }
  validates :price, length: { maximum: 10 }  
end
