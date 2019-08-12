class CreateSportifs < ActiveRecord::Migration[5.2]
  def change
    create_table :sportifs do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :photo
      t.string :offers

      t.timestamps
    end
  end
end
