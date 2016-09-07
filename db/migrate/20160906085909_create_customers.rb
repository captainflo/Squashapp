class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :tel
      t.string :email
      t.string :address
      t.string :avatar
      t.string :avatar_cache
      t.timestamps
    end
    add_reference :customers, :company, foreign_key: true
  end
end
