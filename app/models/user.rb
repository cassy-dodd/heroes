class User < ApplicationRecord
  has_many :heros, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :heros

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
