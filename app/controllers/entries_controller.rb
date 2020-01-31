class EntriesController < ApplicationController

	def index
		entries = Entry.all 
		render json: entries
	end

	def show
		entry = Entry.find_by(id: params[:id])
		if entry
		  render json: {id: entry.id, date: entry.date, body: entry.body, notes: entry.notes}	
		else
		 render json: {message: "Sorry, can't find that entry"}
		end
	end
end

# could use slice: 
# def show
#   bird = Bird.find_by(id: params[:id])
#   render json: bird.slice(:id, :name, :species)
# end

# Really is: def index
#   birds = Bird.all
#   render json: birds.to_json(except: [:created_at, :updated_at])
# end
