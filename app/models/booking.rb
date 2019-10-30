class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :camera
  has_one :review

  validates :rental_date, :return_date, presence: true
  validate :end_date_after_start_date
  # validate :check_date
  after_create :set_total_price

   def end_date_after_start_date
    return if return_date.blank? || rental_date.blank?

    if return_date < rental_date
      errors.add(:return_date, "must be after the start date")
      end
   end

  def set_total_price
   self.total_price = ((((-(self.rental_date - self.return_date))).to_i )*self.camera.price_per_day) + (((((-(self.rental_date - self.return_date))).to_i )*self.camera.price_per_day)*0.02)
   self.service_fee = (0.02 * self.total_price)
   self.save
  end
end

#   def check_date
#     if return_date.nil? || rental_date.nil?
#       return errors.add(:rental_date, "Please enter both dates.")
#     elsif return_date < rental_date
#       return errors.add(:rental_date, "Return date must come after rental date.")
#     end
#   end
# end
