class User < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_one_attached :avatar
end
