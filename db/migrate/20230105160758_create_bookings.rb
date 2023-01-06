class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, default: false, null: false
      t.references :movie
      t.time :start_time

      t.timestamps
    end
  end
end
