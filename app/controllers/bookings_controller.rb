class BookingsController < ApplicationController

  def create
    @camera = Camera.find(params[:camera_id])
    @booking = Booking.new(booking_params)
    @booking.camera = @camera
    @booking.user = current_user
    # @booking.status = "Pending owner validation"
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render 'cameras/show'
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
    @review = Review.new
  end

  def show
    set_booking
    @camera = @booking.camera
  end

  def update
    set_booking
    @booking.status = "Pending owner validation"
    booking.save!
    redirect_to booking_path(@booking)
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to bookings_index_path
  end

  private

  def booking_params
    params.require(:booking).permit(:rental_date, :return_date, :total_price)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
