class Card < ApplicationRecord
  belongs_to :category
  belongs_to :customer
end
