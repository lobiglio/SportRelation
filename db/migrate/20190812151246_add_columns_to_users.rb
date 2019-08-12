class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    has_many :sportifs
    add_column :users, :name, :string
    add_column :users, :address, :string
    add_column :users, :logo, :string
    validates :name, uniqueness: true, presence: true
    validates :address, presence: true

  end
end
