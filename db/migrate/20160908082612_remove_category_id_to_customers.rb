class RemoveCategoryIdToCustomers < ActiveRecord::Migration[5.0]
  def change
  end
  remove_reference(:customers, :category, index: true, foreign_key: true)
end
