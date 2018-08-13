class Pool < ApplicationRecord
  has_many :reviews
  has_many :bookings
  belongs_to :user

  validates :title, presence: true, length: { minimum: 6 }
  validates :address, uniqueness: true, presence: true
  validates :price, presence: true, numericality: true
  validates :capacity, presence: true, numericality: true
  validates :type, presence: true, inclusion: { in: ["indoor", "outdoor"] }
  validates :description, uniqueness: true, presence: true, length: { minimum: 90 }
  validates :length, presence: true, numericality: true
  validates :width, presence: true, numericality: true
  validates :depth, presence: true, numericality: true
end
