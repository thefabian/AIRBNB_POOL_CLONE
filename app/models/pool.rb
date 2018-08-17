class Pool < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :reviews
  has_many :bookings
  belongs_to :user

  validates :title, presence: true, length: { minimum: 6 }
  validates :address, uniqueness: true, presence: true
  validates :price, presence: true, numericality: true
  validates :capacity, presence: true, numericality: true
  validates :category, presence: true, inclusion: { in: ["indoor", "outdoor"] }
  validates :description, uniqueness: true, presence: true, length: { minimum: 90 }
  validates :length, presence: true, numericality: true
  validates :width, presence: true, numericality: true
  validates :depth, presence: true, numericality: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

include PgSearch
  pg_search_scope :global_search,
    against: [ :title, :address, :description, :category ],
    using: {
      tsearch: { prefix: true }
    }


    def average_rating
      sum = reviews.map { |review| review.rating }.sum
      sum.fdiv(reviews.count)
    end
end
