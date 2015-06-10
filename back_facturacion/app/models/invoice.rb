class Invoice < ActiveRecord::Base
  belongs_to :associated
  belongs_to :user
end
