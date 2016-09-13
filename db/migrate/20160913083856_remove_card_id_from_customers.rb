class RemoveCardIdFromCustomers < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :card_id
  end
end
