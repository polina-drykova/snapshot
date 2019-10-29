class Camera < ApplicationRecord

  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  validates :name, :address, :description, :price_per_day, presence: true
  validates_numericality_of :price_per_day
  mount_uploader :photo, PhotoUploader

 def unavailable_dates
    bookings.pluck(:rental_date, :return_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
