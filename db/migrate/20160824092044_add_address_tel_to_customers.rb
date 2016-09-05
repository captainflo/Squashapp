class AddAddressTelToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :address, :string
    add_column :customers, :tel, :integer
  end
end
