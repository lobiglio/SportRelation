class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.references :user, foreign_key: true
      t.references :sportif, foreign_key: true
      t.integer :total_price
      t.string :status

      t.timestamps
    end
  end
end
