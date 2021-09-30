class Movie < ApplicationRecord
  belongs_to :director
    has_many :reviews, dependent: :destroy
    has_many :contracts, dependent: :destroy
    has_many :actors, through: :contracts
end
