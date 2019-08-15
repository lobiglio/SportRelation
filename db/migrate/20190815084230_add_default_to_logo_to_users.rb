class AddDefaultToLogoToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :logo, :string, default: "https://res.cloudinary.com/diugseuio/image/upload/v1565860158/unknown_dcwpys.jpg"
  end
end
