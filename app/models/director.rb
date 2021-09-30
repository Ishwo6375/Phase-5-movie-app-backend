class Director < ApplicationRecord
 has_many :movies, dependent: :destroy

 validates :name, presence: true
 validates :image, presence: true, uniqueness: true
 validates :bio, presence: true
 validates :age, presence: true, numericality: { only_integer: true, greater_than: 0, less_than: 120}
end
