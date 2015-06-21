class Invoice < ActiveRecord::Base
  belongs_to :associated
  belongs_to :user  
  belongs_to :invoices_products
  has_and_belongs_to_many :product, dependent: :destroy
  validates :description, length: { maximum: 150 }
  validates :document, length: { maximum: 150 }
  validates :payment_proof, length: { maximum: 150 }
  validates :subtotal, length: { maximum: 12 }
  validates :tax, length: { maximum: 12 }
  validates :total, length: { maximum: 12 }
  validates :balance, length: { maximum: 12 }
  validates :kind_payment, inclusion: { in: :kind_payment }
  validates :kind_operation, inclusion: { in: :kind_operation }
  validates :kind_invoice, inclusion: { in: :kind_invoice }
  enum kind_payment: [ :Cash, :Credit ]
  enum kind_operation: [ :Sale, :Purchase ]
  enum kind_invoice: [ :Draft, :Legal ]
end
