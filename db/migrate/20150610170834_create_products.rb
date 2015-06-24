class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false, limit: 30
      t.string :description, limit: 150
      t.decimal :price, precision: 8, scale: 2, null: false      
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
