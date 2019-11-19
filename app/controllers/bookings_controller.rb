class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy]

  def new
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
    @booking.planet = @planet
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.planet = Planet.find(params[:planet_id])
    @booking.user = current_user
    if @booking.save
      redirect_to success_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to home_path
  end

  private

  def set_booking
    Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests, :planet_id)
  end
end
