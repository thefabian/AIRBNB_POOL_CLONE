class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  has_many :pools
  has_many :reviews
  has_many :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
end
