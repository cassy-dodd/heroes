class BookingsController < ApplicationController
  def new
    @hero = Hero.find(params[:id])
    @booking = Booking.new
  end

  def create
    @hero = Hero.find(params[:hero_id])
    @booking = Booking.new(bookings_params)
    @booking.hero = @hero
    @booking.user = current_user
    if @booking.save
      redirect_to heros_path
    else
      render 'heros/show'
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:date, :start_time, :end_time)
  end
end
