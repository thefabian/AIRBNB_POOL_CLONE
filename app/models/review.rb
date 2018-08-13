class Review < ApplicationRecord
  belongs_to :user
  belongs_to :pool

  validates :description, presence: true
  validates :rating, presence: true, numericality: true, inclusion: { in: [1, 2, 3, 4, 5] }
end
