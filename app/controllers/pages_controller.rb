class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  end

  def dashboard
    @my_cameras = Camera.where(cameras: {user: current_user})
    @my_bookings = Booking.joins(:camera).where(cameras: {user: current_user})
    @rejected_bookings = Booking.where(user: current_user).where(accepted: "refused")
    @pending_bookings = Booking.where(user: current_user).where(accepted: "waiting")
    @future_listings = @my_bookings.where("rental_date > ?", "#{Date.today}").where(accepted: "waiting")
    @past_listings = @my_bookings.where("rental_date < ?", "#{Date.today}")
    @past_bookings = Booking.where(user: current_user).where("rental_date < ?", "#{Date.today}") + @rejected_bookings
    @future_bookings = Booking.where(user: current_user).where("rental_date > ?", "#{Date.today}").where(accepted: "accepted")
    @future_pendings = Booking.where(user: current_user).where("rental_date > ?", "#{Date.today}").where(accepted: "waiting")
  end

  def accept_booking
    @booking = Booking.find(params[:id])
    @booking.accepted = "accepted"
    @booking.save
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.js  # <-- will render `app/views/reviews/create.js.erb
      end
  end

  def refuse_booking
    @booking = Booking.find(params[:id])
    @booking.accepted = "refused"
    @booking.save
      respond_to do
       |format|
        format.html { redirect_to dashboard_path }
        format.js  #
      end
  end

  def profile

  end

  def error

  end
end
