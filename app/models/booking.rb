class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :camera
  has_one :review

  validates :rental_date, :return_date, presence: true
  validate :check_date
  after_create :set_total_price

  def set_total_price
   self.total_price = ( (self.return_date - self.rental_date).to_i + 1 ) * self.camera.price_per_day
   self.service_fee = (0.05 * self.total_price)
   self.save
  end


  def check_date
    if return_date.nil? || rental_date.nil?
      return errors.add(:rental_date, "Please enter both dates.")
    elsif return_date < rental_date
      return errors.add(:rental_date, "Return date must come after rental date.")
    end
  end
end
