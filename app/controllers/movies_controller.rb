class MoviesController < ApplicationController
	
	def create

		@movie = current_user.movies.find_or_create_by_user_id(params[:movie])
		if @movie.update_attributes(params[:movie])
			#@movie = current_user.movies.build(params[:movie])
	    @movie.save
			redirect_to :back, :notice => "Movies saved"
		else
			redirect_to "www.google.com", :notice => "Negative"
		end
	end
end
