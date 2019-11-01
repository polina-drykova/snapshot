class Camera < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :cameraphotos, dependent: :destroy

  CATEGORY = ["Camera", "Lenses/Filters", "Camera Bag", "Tripod & Support", "Flash", "Lighting & Studio", "Batteries & Power Accessories", "Mobile Accessories", "Other Accessories"]

  validates :name, :address, :description, :price_per_day, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }
  validates_numericality_of :price_per_day
  mount_uploader :photos, PhotoUploader

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

 def check_rating(rating)
   case rating
   when 5
     return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i>".html_safe
   when 4
     return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='far fa-star'></i>".html_safe
   when 3
     return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i>".html_safe
   when 2
     return "<i class='fas fa-star'></i> <i class='fas fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i>".html_safe
   when 1
     return "<i class='fas fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i> <i class='far fa-star'></i>".html_safe
   else
     return "No reviews yet!"
   end
 end

 def display_rating_count(count)
  if count > 0
    return " (#{count})"
  elsif count = 0
    return ""
  end
 end
end

