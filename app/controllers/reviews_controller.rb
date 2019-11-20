class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking = @booking
    if @review.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    @review = @review.booking
    redirect_to bookings_path
  end

  private

  def review_params
    params.require(:review).permit(:stars, :content)
  end
end
