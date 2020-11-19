class AddHeroToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :hero, null: false, foreign_key: true
  end
end
