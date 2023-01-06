class CreateCinemas < ActiveRecord::Migration[6.1]
  def change
    create_table :cinemas do |t|
      t.references :movie, null: false, foreign_key: true
      t.integer :seats

      t.timestamps
    end
  end
end
