class Sportif < ApplicationRecord
  belongs_to :user
  has_many :reservations
<<<<<<< HEAD
  has_many :users, through: :reservations
=======
  mount_uploader :photo, PhotoUploader
>>>>>>> master

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :offers, presence: true
  validates :description, presence: true
end
