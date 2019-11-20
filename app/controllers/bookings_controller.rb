class BookingsController < ApplicationController
  before_action :set_booking, only: [:destroy, :success]
  skip_before_action :authenticate_user!, only: [:index, :success, :destroy]

  def new
    @planet = Planet.find(params[:planet_id])
    @booking = Booking.new
    authorize @booking
    @booking.planet = @planet
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.planet = Planet.find(params[:planet_id])
    @booking.user = current_user
    @booking.start_date = Date.parse(@booking.start_date.split(' ')[0]).strftime("%B %e, %Y")
    @booking.total_price = (Date.parse(@booking.end_date) - Date.parse(@booking.start_date)).to_i * @booking.planet.price.to_i
    confirm_booking(@booking)
    if @booking.save
      redirect_to successfull_booking_path(@booking)
    else
      render :new
    end
  end

  def index
    @bookings = policy_scope(Booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def success; end

  private

  def confirm_booking(booking)
    booking.status = "confirmed"
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :guests, :planet_id)
  end
end
