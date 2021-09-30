class Movie < ApplicationRecord
  belongs_to :director
    has_many :reviews, dependent: :destroy
    has_many :contracts, dependent: :destroy
    has_many :actors, through: :contracts

  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :language, presence: true
  validates :runtime, presence: true
  validates :rating, presence: true
  validates :image, presence: true
  validates :video_url, presence: true
  validates :genre, presence: true
end
