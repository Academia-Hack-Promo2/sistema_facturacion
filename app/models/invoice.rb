class Invoice < ActiveRecord::Base
  belongs_to :associated
  belongs_to :user    
  belongs_to :product
  validates :quantity, :rate, :date, presence: true
  validates :description, length: { maximum: 150 }
  validates :name_product, length: { maximum: 30 }
  validates :document, length: { maximum: 150 }
  validates :payment_proof, length: { maximum: 150 }
  validates :rate, length: { maximum: 7 }
  validates :tax, length: { maximum: 12 }
  validates :quantity, numericality: { only_integer: true }
  validates :subtotal, length: { maximum: 12 }
  validates :total, length: { maximum: 12 } 
  validates :balance, length: { maximum: 12 } 
  validates :kind_payment, inclusion: { in: :kind_payment }
  validates :kind_operation, inclusion: { in: :kind_operation }
  validates :kind_invoice, inclusion: { in: :kind_invoice }
  enum kind_payment: [ :Cash, :Credit ]
  enum kind_operation: [ :Sale, :Purchase ]
  enum kind_invoice: [ :Draft, :Invoice ]

  def self.bill product, invoice, associated 
      quantity = invoice[:quantity].to_i
      rate = invoice[:rate].to_i
      balance = invoice[:balance].to_i
      subtotal = product.price*quantity
      tax = ((subtotal*rate)/100)
      total = (subtotal+tax)
      invoice[:name_associated] = associated.name
      invoice[:ci_associated] = associated.ci_rif
      invoice[:address_associated] = associated.address
      invoice[:name_product] = product.name
      invoice[:description] = product.description
      invoice[:subtotal] = subtotal
      invoice[:tax] = tax
      invoice[:total] = total
  end

  def self.change product, invoice, associated 
      quantity = invoice.quantity.to_i
      rate = invoice[:rate].to_i
      balance = invoice[:balance].to_i
      subtotal = product.price*quantity
      tax = ((subtotal*rate)/100)
      total = (subtotal+tax)
      invoice[:name_associated] = associated.name
      invoice[:ci_associated] = associated.ci_rif
      invoice[:address_associated] = associated.address
      invoice[:name_product] = product.name
      invoice[:description] = product.description
      invoice[:subtotal] = subtotal
      invoice[:tax] = tax
      invoice[:total] = total    
  end
end
