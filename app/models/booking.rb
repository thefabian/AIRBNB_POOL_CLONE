class Booking < ApplicationRecord
  belongs_to :pool
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :guest, presence: true, inclusion: { in: [1,2] }
end
