class ReviewsController < ApplicationController

  def new
    @hero = Hero.find(params[:hero_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @hero = Hero.find(params[:hero_id])
    @review.hero = @hero
    if @review.save
      redirect_to hero_path(@hero)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
