class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :avatar, PhotoUploader
  has_many :cameras, dependent: :destroy

  has_many :customer_bookings, foreign_key: 'user_id', class_name: "Booking"
  has_many :owner_bookings, through: :cameras, foreign_key: 'user_id', source: 'user', class_name: 'Booking', dependent: :destroy

  has_many :reviews, through: :customer_bookings
end
