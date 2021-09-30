class Contract < ApplicationRecord
  belongs_to :movie
  belongs_to :actor
  
   validates :contract_length, presence: true
end
