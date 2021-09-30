class MoviesController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

 def index
  movies = Movie.all
  render json: movies
 end

  def show
   movie = find_movie
   render json: movie, include: :reviews
  end

  def create
   movie = Movie.create!(movie_params)
   render json: movie
  end

  def update
   movie = find_movie
   movie.update!(movie_params)
   render json: movie
  end

   def destroy
    movie = find_movie
    movie.destroy
    head :no_content
   end

   private

   def movie_params
    params.require(:movie).permit(:title, :description, :language, :runtime, :rating, :image, :video_url, :genre, :director_id)
   end

   def find_movie
    Movie.find(params[:id])
   end

    def render_not_found
        render json: { error: "Movie not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
