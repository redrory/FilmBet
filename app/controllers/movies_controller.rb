class MoviesController < ApplicationController

	def create
		Movie.create params[:movie]
		redirect_to :back, :notice => "Movies saved"
	end
end
