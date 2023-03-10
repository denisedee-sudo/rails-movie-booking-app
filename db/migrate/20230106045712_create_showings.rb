class CreateShowings < ActiveRecord::Migration[6.1]
  def change
    create_table :showings do |t|
      t.references :cinema, null: false, foreign_key: true
      t.references :movie, null: false, foreign_key: true
      t.datetime :show_time

      t.timestamps
    end
  end
end
