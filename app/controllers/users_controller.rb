class UsersController < ApplicationController
  def index
  end

  def show
    @title = "Filmbet"
  	@movie = Movie.new

  	@firstMovie  = FeedEntry.first.title
  	@secondMovie  = FeedEntry.find(2).title
  	@thirdMovie  = FeedEntry.find(3).title
  	@fourthMovie  = FeedEntry.find(4).title
  	@movie_list = FeedEntry.limit(5)
    @new_movie_list = NewFeedEntry.limit(5) + FeedEntry.limit(5)
  end

 
end
