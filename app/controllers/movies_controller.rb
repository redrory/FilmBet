class MoviesController < ApplicationController
	
	def create
		#@current_user.pages.build(params[:page].merge(:other_id => other_id) build(:id => params[:contact_id])
		@movie = current_user.movies.build(params[:movie])
    @movie.save
    
		redirect_to :back, :notice => "Movies saved"
	end



end
