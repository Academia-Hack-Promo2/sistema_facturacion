class Associated < ActiveRecord::Base
  belongs_to :user
  validates :name, :ci_rif, :alias,:email, :phone, :address, :description, :user_id, presence: true
  #validates :kind, inclusion: { in: :kind }
  #enum kind: [ :customer, :sponsor, :provider ]
	  #enum status: [ :active, :inactive ]
	  #enum frequency: [ :recurrent, :punctual ]
	  #   message: "%{value} El status o frequency no esta permitido" }
	  # validates :kind, inclusion: { in: %w(0 1 2),
	  #   message: "%{value} El tipo no esta permitido" }
end
