class AddCoordinatesToHeros < ActiveRecord::Migration[6.0]
  def change
    add_column :heros, :latitude, :float
    add_column :heros, :longitude, :float
  end
end
