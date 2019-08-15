class AddDatesToReservations < ActiveRecord::Migration[5.2]
  def change
    add_column :reservations, :date_begin, :date
    add_column :reservations, :date_end, :date
  end
end
