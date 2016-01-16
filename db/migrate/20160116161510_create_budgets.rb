class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.integer :user_id
      t.decimal :revenue
      t.decimal :expense
      t.date :date

      t.timestamps null: false
    end
  end
end
