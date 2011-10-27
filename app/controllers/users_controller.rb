class UsersController < ApplicationController
  def index
    if current_user
      redirect_to :show
    end

  end

  def show
    @title = "Filmbet"
  	@movie = Movie.new

  	#@firstMovie  = FeedEntry.first.title
  	#@secondMovie  = FeedEntry.find(2).title
  	#@thirdMovie  = FeedEntry.find(3).title
  	#@fourthMovie  = FeedEntry.find(4).title
  	@movie_list = FeedEntry.limit(5)
    @new_movie_list = NewFeedEntry.limit(10) + FeedEntry.limit(5)
  end

  def compare
    @firstChoice  = FeedEntry.first.title
    @firstSelection = Movie.find_by_user_id(1).movie_one 
  end

 
end
