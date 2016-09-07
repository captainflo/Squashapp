class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
    add_reference :categories, :company, foreign_key: true
  end
end
