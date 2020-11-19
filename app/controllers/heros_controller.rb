class HerosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @heros = Hero.all
     @markers = @heros.map do |hero|
      {
        lat: hero.latitude,
        lng: hero.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { hero: hero }),
        image_url: helpers.asset_url('final marker.png')
      }
      end
  end

  def show
    @hero = Hero.find(params[:id])
    @booking = Booking.new
  end

  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    @hero.user = current_user
    if @hero.save
      redirect_to hero_path(@hero), notice: "You are a hero now !"
    else
      render :new
    end
  end

  def destroy
    @hero = Hero.find(params[:id])
    @hero.destroy
    redirect_to heros_path
  end

  private

  def hero_params
    params.require(:hero).permit(:title, :superpower, :price, :description, :city, :availability, :photo, :user_id)
  end
end
