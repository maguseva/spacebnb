class PlanetsController < ApplicationController
  before_action :set_planet, only: :show
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @planets = policy_scope(Planet)
  end

  def show
    @planet = Planet.find(params[:id])
    @booking = Booking.new
  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
    authorize @planet
  end
end
