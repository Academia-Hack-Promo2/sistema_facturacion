class Associated < ActiveRecord::Base
  belongs_to :user
  validates :name, :ci_rif, :alias,:email, :phone, :address, :kind, :description, :status, :user, presence: true
  validates :frequency, :status, inclusion: { in: %w(0 1),
    message: "%{value} El status o frequency no esta permitido" }
    validates :kind, inclusion: { in: %w(0 1 2),
    message: "%{value} El tipo no esta permitido" }
end
