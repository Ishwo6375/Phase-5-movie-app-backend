class ActorSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :age, :image, :comments
end
