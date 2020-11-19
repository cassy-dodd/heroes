class ReviewsController < ApplicationController
  def create
    @hero = Hero.find(params[:hero_id])
    @review = Review.new(review_params)
    @review.hero = @hero
    if @hero.save
      redirect_to hero_path(@hero)
    else
      render hero_path(@hero)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
