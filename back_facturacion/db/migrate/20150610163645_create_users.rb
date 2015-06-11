class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      #t.string :first_name, limit: 12
      #t.string :last_name, limit: 12
      #t.string :username, null: false, limit: 12

      t.timestamps null: false
    end
  end
end
