class ActorsController < ApplicationController
	def index
		@actor = Actor.all		
	end

	def new
		@actor = Actor.new
	end

 def create
  @actor = Actor.create(actors_params)
  if @actor.save
   redirect_to actors_path     
 else
  render 'new'
 end
end

private
def actors_params
  params.require(:actor).permit(:name, :bio, :birth_date, :birth_place, :alive, :death_date, :death_pĺace, :image_url)
end
end
