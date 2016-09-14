class AddNbEntriesToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :nb_card_entries, :integer
  end
end
