class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
      t.string :description
      t.integer :user_id
      t.integer :category_id
      t.integer :account_id
      t.date :date
      t.decimal :value

      t.timestamps null: false
    end
  end
end
