class Restaurant < ApplicationRecord
  CATEGORIES = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

  has_many :reviews, dependent: :destroy

  validates :name, :address, :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
