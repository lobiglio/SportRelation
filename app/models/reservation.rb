class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :sportif


  enum status: [:pending, :accepted, :refused]

  validates :date_begin, presence: true
  validates :date_end, presence: true

end
