class MovieSerializer < ActiveModel::Serializer
   attributes :id, :title, :description, :language, :runtime, :rating, :image, :video_url, :genre, :director_id, :reviews 
end
