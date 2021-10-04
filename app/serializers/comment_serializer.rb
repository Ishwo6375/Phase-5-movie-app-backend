class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :username, :actor_id
end
