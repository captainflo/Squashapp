class CreateComment < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :contenu
      t.integer :user_id
    end
  end
end