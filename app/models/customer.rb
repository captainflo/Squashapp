class Customer < ApplicationRecord
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :tel, presence: true
  validates :email, presence: true
  validates :company_id, presence: true

  mount_uploader :avatar, AvatarUploader
  belongs_to :company
  has_many :cards
  has_many :comments
end
