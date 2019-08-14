class ChangeStatusToReservations < ActiveRecord::Migration[5.2]
  def change
    remove_column :reservations, :status
    add_column :reservations, :status, :integer, default: 0
  end
end
