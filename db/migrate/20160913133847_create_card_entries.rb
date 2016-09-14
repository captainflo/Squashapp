class CreateCardEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :card_entries do |t|
      t.timestamps
    end
    add_reference :card_entries, :card, foreign_key: true
  end
end
