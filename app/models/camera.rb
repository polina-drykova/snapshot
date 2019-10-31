class Camera < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings

  CATEGORY = ["Camera", "Lenses/Filters", "Camera Bag", "Tripod & Support", "Flash", "Lighting & Studio", "Batteries & Power Accessories", "Mobile Accessories", "Other Accessories"]

  validates :name, :address, :description, :price_per_day, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates_numericality_of :price_per_day
  mount_uploader :photo, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

 def unavailable_dates
    bookings.pluck(:rental_date, :return_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end

def previous_camera
  Camera.where(["id < ?", self.id]).last
end

def next_camera
  Camera.where(["id > ?", self.id]).first
end

end

