class AddPriceToCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :price, :integer
  end

end
