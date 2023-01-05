class CreateCinemas < ActiveRecord::Migration[6.1]
  def change
    create_table :cinemas do |t|
      t.integer :seat
      t.timestamps
    end
  end
end
