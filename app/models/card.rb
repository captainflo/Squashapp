class Card < ApplicationRecord
  belongs_to :category
  belongs_to :customer

  has_many :card_entries
end
