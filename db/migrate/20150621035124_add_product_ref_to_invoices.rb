class AddProductRefToInvoices < ActiveRecord::Migration
  def change
    add_reference :invoices, :product, index: true, foreign_key: true
  end
end
