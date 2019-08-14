class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :sportif

  enum status: [:pending, :accepted, :refused]
end
