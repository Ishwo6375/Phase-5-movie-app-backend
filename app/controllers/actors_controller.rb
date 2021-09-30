class ActorsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity

 def index
  actors = Actor.all
  render json: actors
 end

 def show
  actor = find_actor
  render json: actor, include: :comments
 end

 def create
  actor = Actor.create!(actor_params)
  render json: actor
 end

 def update
   actor = find_actor
   actor.update!(actor_params)
   render json: actor
  end

  def destroy
    actor = find_actor
    actor.destroy
    head :no_content
   end

   private

   def actor_params
    params.require(:actor).permit(:name, :bio, :age, :image)
   end

   def find_actor
      Actor.find(params[:id])
   end

    def render_not_found
        render json: { error: "Actor not found"}, status: :not_found
    end

    def render_unprocessable_entity(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
 
end
