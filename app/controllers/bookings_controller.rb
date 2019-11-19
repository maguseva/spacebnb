class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :success]

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
      redirect_to successfull_booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to home_path
  end

  def success
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests, :planet_id)
  end
end
