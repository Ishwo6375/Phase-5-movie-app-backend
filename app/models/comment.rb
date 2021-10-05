class Comment < ApplicationRecord
  belongs_to :actor

  validates :comment, presence: true
  validates :username, presence: true
end
