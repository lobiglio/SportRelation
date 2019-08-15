class Sportif < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  belongs_to :user

  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  mount_uploader :photo, PhotoUploader

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :offers, presence: true
  validates :description, presence: true
  validates :photo, presence: true
end
