class AdddefaultToStatusToReservation < ActiveRecord::Migration[5.2]
  def change
    change_column :reservations, :status, :string, default: "pending"
  end
end
