class Booking < ApplicationRecord
  belongs_to :pool
  has_many :users

  validates :start_date, presence: true
  validates :end_date, presence: true
end
