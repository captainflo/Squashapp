class AddCategoryIdToCustomers < ActiveRecord::Migration[5.0]
  def change
  end
  add_reference :customers, :category, foreign_key: true
end
