class AddCustomerIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_reference :comments, :customer_id, foreign_key: true
  end
end
