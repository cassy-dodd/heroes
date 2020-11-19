class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @heros = Hero.all
  end

  def profile
    @user = current_user
    @user_booking = current_user.bookings
  end
end
