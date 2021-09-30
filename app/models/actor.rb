class Actor < ApplicationRecord
 has_many :comments, dependent: :destroy
 has_many :contracts, dependent: :destroy
 has_many :movies, through: :contracts
 
end
