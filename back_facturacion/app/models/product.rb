class Product < ActiveRecord::Base
  belongs_to :user
  belongs_to :invoice
end
