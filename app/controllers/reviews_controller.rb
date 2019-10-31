class ReviewsController < ApplicationController
  before_action :set_booking, only: [:new, :create]

  def new
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    authorize @review
    if review.save
      redirect_to camera_path
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params_require(:review).permit(:content, :rating)
  end
end
