class HeroesController < ApplicationController
  def new
    @hero = Hero.new
  end

  def create
    @hero = Hero.new(hero_params)
    if @hero.save
      redirect_to hero_path(@hero)
    else
      render :new
    end
  end

  def show
    @hero = Hero.find(params[:id])
    @hero = Hero.new
  end

  private

  def hero_params
    params.require(:hero).permit(:superpower,:price,:description,:city,:availability)
  end
end
