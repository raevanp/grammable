class Gram < ApplicationRecord
  validates :message, presence: true
  validates :picture, presence: true
  has_many :comments
  has_many :photos

  mount_uploader :picture, PictureUploader

  belongs_to :user
end
