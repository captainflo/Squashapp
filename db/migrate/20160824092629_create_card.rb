class CreateCard < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :user_id
      t.integer :category_id
    end
  end
end
