class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def new
    @booking = Booking.new
    authorize @booking
    @camera = Camera.find(params[:camera_id])
  end

  def create
    @camera = Camera.find(params[:camera_id])
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.camera = @camera
    @booking.user = current_user
    # @booking.status = "Pending owner validation"
    if @booking.save
      redirect_to dashboard_path
    else
      render 'cameras/show'
    end
  end

  def show
    @camera = @booking.camera
  end

  def update
    # @booking.status = "Pending owner validation"
    booking.save!
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to camera_bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:rental_date, :return_date, :total_price)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
