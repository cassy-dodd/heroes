class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.text :superpower
      t.integer :price
      t.text :description
      t.text :city
      t.time :availability

      t.timestamps
    end
  end
end
