class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :kind_operation, default: 0
      t.integer :status_operation, default: 0
      t.string :kind_payment, limit: 30
      t.string :description, limit: 150
      t.decimal :total, precision: 10, scale: 2
      t.date :date
      t.string :document, limit: 150
      t.string :payment_proof, limit: 150
      t.references :associated, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end