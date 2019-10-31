class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @my_bookings = Booking.joins(:camera).where(cameras: {user: current_user})

    @future_listings = @my_bookings.where("rental_date > ?", "#{Date.today}")
    @past_listings = @my_bookings.where("rental_date < ?", "#{Date.today}")
    @past_bookings = Booking.where(user: current_user).where("rental_date < ?", "#{Date.today}")
    @future_bookings = Booking.where(user: current_user).where("rental_date > ?", "#{Date.today}")
  end

  def profile

  end

  def error

  end
end
