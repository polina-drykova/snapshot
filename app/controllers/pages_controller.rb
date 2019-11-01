class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @my_bookings = Booking.joins(:camera).where(cameras: {user: current_user})
    @rejected_bookings = Booking.where(user: current_user).where(accepted: "refused")
    @pending_bookings = Booking.where(user: current_user).where(accepted: "waiting")
    @future_listings = @my_bookings.where("rental_date > ?", "#{Date.today}")
    @past_listings = @my_bookings.where("rental_date < ?", "#{Date.today}")
    @past_bookings = Booking.where(user: current_user).where("rental_date < ?", "#{Date.today}") + @rejected_bookings
    @future_bookings = Booking.where(user: current_user).where("rental_date > ?", "#{Date.today}").where(accepted: "accepted")
    @future_pendings = Booking.where(user: current_user).where("rental_date > ?", "#{Date.today}").where(accepted: "waiting")
    # raise
  end

  def acceptBooking
    booking = Booking.find(params[:id])
    booking.accepted = "accepted"
    if booking.save
      redirect_to dashboard_path
    else
      render :dashboard
    end
  end

  def refuseBooking
     booking = Booking.find(params[:id])
    booking.accepted = "refused"
    if booking.save
      redirect_to dashboard_path
    else
      render :dashboard
    end
  end

  def profile

  end

  def error

  end
end
