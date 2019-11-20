class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :success]

  def new; end

  def create
    @booking = Booking.new(booking_params)
    @booking.planet = Planet.find(params[:planet_id])
    @booking.user = current_user
    @booking.start_date = Date.parse(@booking.start_date.split(' ')[0]).strftime("%B %e, %Y")
    confirm_booking(@booking)
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

  def confirm_booking(booking)
    booking.status = "confirmed"
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests, :planet_id)
  end
end
