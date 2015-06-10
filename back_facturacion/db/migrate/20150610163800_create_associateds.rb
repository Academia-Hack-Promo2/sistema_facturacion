class CreateAssociateds < ActiveRecord::Migration
  def change
    create_table :associateds do |t|
      t.string :name
      t.string :ci_rif
      t.string :alias
      t.string :correo
      t.string :mail
      t.string :phone
      t.string :address
      t.integer :kind
      t.integer :frequency
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
