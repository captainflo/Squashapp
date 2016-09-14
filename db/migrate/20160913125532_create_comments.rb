class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :comment
      t.timestamps
    end
    add_index :comments, :customer_id
  end
end
