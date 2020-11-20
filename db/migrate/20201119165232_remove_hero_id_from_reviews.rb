class RemoveHeroIdFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :hero_id, :bigint
  end
end
