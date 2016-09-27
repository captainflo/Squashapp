class AddCheckedAtToCardEntries < ActiveRecord::Migration[5.0]
  def change
    add_column :card_entries, :checked_at, :datetime
  end
end
