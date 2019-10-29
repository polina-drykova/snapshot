class ReviewsController < ApplicationController
  before_action :set_booking, only: [:new, :create]

  def new
    @review = Review.new
  end

  def create
    review = Review.new(review_params)
    @review.booking = @booking
    review.save
    redirect_to camera_booking_path
  end

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params_require(:review).permit(:content, :rating)
  end
end
