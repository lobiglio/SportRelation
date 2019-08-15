class AddPriceToSportif < ActiveRecord::Migration[5.2]
  def change
    add_column :sportifs, :price, :integer
  end
end
