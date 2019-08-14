class AddCoordinatesToSportifs < ActiveRecord::Migration[5.2]
  def change
    add_column :sportifs, :latitude, :float
    add_column :sportifs, :longitude, :float
  end
end
