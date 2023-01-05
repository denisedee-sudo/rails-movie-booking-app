class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.boolean :admin, default: false, null: false
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :password_digest

      t.timestamps
    end
  end
end
