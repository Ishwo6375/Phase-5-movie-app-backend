class Comment < ApplicationRecord
  belongs_to :actor

  validates :comment, presence: true
  validates :username, presence: true, uniqueness: true
end
