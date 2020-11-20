class RenameDateToStartDateInBookings < ActiveRecord::Migration[6.0]
  def up
    rename_column :bookings, :date, :start_date
  end
end
