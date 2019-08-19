class User < ApplicationRecord
  has_many :flats
  has_many :bookings
  has_many :booked_flats, through: :bookings, source: :flat

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
