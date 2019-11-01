class ReviewsController < ApplicationController
  before_action :set_booking, only: [:new, :create]

  def new
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    authorize @booking
    @review.booking = @booking
    if @review.save
      redirect_to camera_path(@booking.camera)
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
