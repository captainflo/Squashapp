class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
    end
    add_reference :cards, :customer, foreign_key: true
    add_reference :cards, :category, foreign_key: true
  end
end
