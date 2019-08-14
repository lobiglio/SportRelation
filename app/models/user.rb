class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :sportifs, dependent: :destroy # ceux que j'ai créée
  has_many :manager_reservations, through: :sportifs, source: :reservations

  has_many :reservations, dependent: :destroy
  # has_many :booked_sportifs, through: :reservations, source: :sportif

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
end
