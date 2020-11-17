class Hero < ApplicationRecord
  belongs_to :user

  has_one_attached :photo

  validates :title, presence: true
  validates :superpower, presence: true
  validates :city, presence: true
  validates :description, presence: true
  validates :availability, presence: true
  validates :price, presence: true
end
