class ReviewSerializer < ActiveModel::Serializer
   attributes :id, :comment, :rating, :username, :movie
end
