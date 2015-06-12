class CreateAssociateds < ActiveRecord::Migration
  def change
    create_table :associateds do |t|
      t.string :name, limit: 30
      t.string :ci_rif, limit: 12
      t.string :alias, limit: 50
      t.string :email, limit: 30
      t.string :phone, limit: 36
      t.string :address, limit: 150
      t.integer :kind, limit: 1
      t.integer :frequency, limit: 1
      t.string :description, limit: 150
      t.integer :status, limit: 1
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
