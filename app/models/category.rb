class Category < ApplicationRecord
  belongs_to :company
  has_many :cards
end
