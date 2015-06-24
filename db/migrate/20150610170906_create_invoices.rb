class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :kind_operation, default: 0
      t.integer :kind_payment, default: 0
      t.integer :kind_invoice, default: 0
      t.string :name_associated, limit: 30
      t.string :ci_associated, limit: 12
      t.string :address_associated, limit: 150
      t.string :name_product, null: false, limit: 30
      t.string :description, limit: 150  
      t.integer :quantity, limit: 4, null: false
      t.decimal :subtotal, precision: 10, scale: 2
      t.decimal :rate, precision: 5, scale: 2, default: 12
      t.decimal :tax, precision: 10, scale: 2
      t.decimal :total, precision: 10, scale: 2
      t.decimal :balance, precision: 10, scale: 2 
      t.date :date
      t.string :document, limit: 150
      t.string :payment_proof, limit: 150
      t.references :associated, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
