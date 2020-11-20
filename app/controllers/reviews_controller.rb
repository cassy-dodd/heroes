class ReviewsController < ApplicationController

  def create
    @booking = Booking.new
    @review = Review.new(review_params)
    @hero = Hero.find(params[:hero_id])
    @review.hero = @hero
    @review.user = current_user
    if @review.save!
      redirect_to hero_path(@hero)
    else
      render "heros/show"
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
