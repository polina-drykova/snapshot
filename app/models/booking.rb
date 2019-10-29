class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :camera
  has_one :review

  validates :rental_date, :return_date, :total_price, :service_fee, presence: true
  validate :check_date

  def check_date
    if return_date.nil? || rental_date.nil?
      return errors.add(:rental_date, "Please enter both dates.")
    elsif return_date < rental_date
      return errors.add(:rental_date, "Return date must come after rental date.")
    end
  end
end
