class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :address
      t.string :tel
      t.string :siret
      t.string :logo
      t.string :logo_cache
      t.timestamps
    end

    add_index :companies, :name
    add_index :companies, :siret
    add_index :companies, :tel

    add_reference :users, :company, foreign_key: true
  end
end
