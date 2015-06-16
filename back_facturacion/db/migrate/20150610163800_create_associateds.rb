class CreateAssociateds < ActiveRecord::Migration
  def change
    create_table :associateds do |t|
      t.string :name, limit: 30
      t.string :ci_rif, limit: 12
      t.string :alias, limit: 50
      t.string :email, limit: 30
      t.string :phone, limit: 36
      t.string :address, limit: 150
      t.integer :kind, default: 0
      t.integer :frequency, default: 0
      t.integer :status, default: 0
      t.string :description, limit: 150
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
