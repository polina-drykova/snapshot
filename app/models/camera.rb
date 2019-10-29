class Camera < ApplicationRecord

  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :name, :address, :description, :price_per_day, presence: true
  validates_numericality_of :price_per_day
  mount_uploader :photo, PhotoUploader

end
