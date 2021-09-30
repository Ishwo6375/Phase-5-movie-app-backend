class Review < ApplicationRecord
  belongs_to :movie

  validates :comment, presence: true
  validates :rating, presence: true
  validates :username, presence: true, uniqueness: true
end
