class Invoice < ActiveRecord::Base
  belongs_to :associated
  belongs_to :user  
  validates :kind_payment, length: { maximum: 30 }
  validates :description, length: { maximum: 150 }
  validates :document, length: { maximum: 150 }
  validates :payment_proof, length: { maximum: 150 }
  validates :total, length: { maximum: 12 }
  validates :kind_operation, inclusion: { in: :kind_operation }
  validates :status_operation, inclusion: { in: :status_operation }
  enum kind_operation: [ :Sale, :Purchase ]
  enum status_operation: [ :Active, :Inactive ]
end
