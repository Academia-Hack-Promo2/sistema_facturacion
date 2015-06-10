class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :kind_operation
      t.integer :status_operartons
      t.string :kind_payment
      t.string :description
      t.integer :total
      t.date :date
      t.string :document
      t.string :payment_proof
      t.references :associated, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
