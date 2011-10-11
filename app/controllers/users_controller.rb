class UsersController < ApplicationController
  def index
  end

  def show
  	@movie = Movie.new
  	@firstMovie  = FeedEntry.first.title
  	@secondMovie  = FeedEntry.find(2).title
  	@thirdMovie  = FeedEntry.find(3).title
  	@fourthMovie  = FeedEntry.find(4).title
  	@movie_list = FeedEntry.all

  end

end
