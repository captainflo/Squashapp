class AddCardIdToCustomers < ActiveRecord::Migration[5.0]
  def change
  end
  add_reference :customers, :card, foreign_key: true
end
