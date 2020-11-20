class RemoveHerosIdFromReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :heros_id, :bigint
  end
end
