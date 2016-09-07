class Company < ApplicationRecord

  validates :name, presence: true
  validates :tel, presence: true
  validates :address, presence: true
  validates :siret, presence: true

  mount_uploader :logo, LogoUploader

  has_many :users
  has_many :customers
  has_many :categories
end
