class Actor < ApplicationRecord
 has_many :contracts, dependent: :destroy
 has_many :movies, through: :contracts
 
end
