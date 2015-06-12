class Invoice < ActiveRecord::Base
  belongs_to :associated
  belongs_to :user
  validates :kind_payment, inclusion: { in: %w(efectivo transferencia cheque debito credito)}
end
