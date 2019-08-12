class AddUserToSportifs < ActiveRecord::Migration[5.2]
  def change
    add_reference :sportifs, :user, foreign_key: true
  end
end
