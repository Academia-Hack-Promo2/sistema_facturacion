class Associated < ActiveRecord::Base
  belongs_to :user
  has_many :invoices, dependent: :destroy
  validates :name, :ci_rif, :alias,:email, :phone, :address, :description, :user_id, presence: true
  validates :kind, inclusion: { in: :kind }
  validates :status, inclusion: { in: :status }
  validates :frequency, inclusion: { in: :frequency }
  enum kind: [ :Customer, :Sponsor, :Provider ]
	enum status: [ :Active, :Inactive ]
	enum frequency: [ :Recurrent, :Punctual ]
end
