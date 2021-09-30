class DirectorsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

 def index
  directors = Director.all
  render json: directors
 end

  def show
   director = find_director
   render json: director, include: :movies
  end

  def create
   director = Director.create!(director_params)
   render json: director
  end

  def update
   director = find_director
   director.update!(director_params)
   render json: director
  end

   def destroy
    director = find_director
    director.destroy
    head :no_content
   end

   private

   def director_params
    params.require(:director).permit(:name, :bio, :age, :image)
   end

   def find_director
    Director.find(params[:id])
   end

    def render_not_found
        render json: { error: "Director not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
