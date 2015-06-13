class CreateInvoicesProducts < ActiveRecord::Migration
  def change
    create_table :invoices_products do |t|
      t.references :invoice, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
    end
  end
end
