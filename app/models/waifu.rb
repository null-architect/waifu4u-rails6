class Waifu < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_one_attached :image

  validates :name, presence: true, length: { minimum: 1 }
end
