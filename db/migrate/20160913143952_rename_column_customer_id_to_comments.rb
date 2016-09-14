class RenameColumnCustomerIdToComments < ActiveRecord::Migration[5.0]
  def change
    rename_column(:comments, :customer_id_id, :customer_id)
  end
end
