class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :title
      t.string :superpower
      t.integer :price
      t.text :description
      t.string :city
      t.time :availability

      t.timestamps
    end
  end
end
