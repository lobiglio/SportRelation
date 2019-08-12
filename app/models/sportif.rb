class Sportif < ApplicationRecord
  belongs_to :user
  has_many :reservations

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :email, presence: true, uniqueness: true
  validates :offers, presence: true
  validates :description, presence: true
end
