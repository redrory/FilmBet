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
    @firstBox  = FeedEntry.first.title
    @secondBox = FeedEntry.limit(1).offset(1).first.title
    @thirdBox = FeedEntry.limit(1).offset(2).first.title
    @fourthBox = FeedEntry.limit(1).offset(3).first.title


    @firstSelection = Movie.find_by_user_id(session[:user_id]).movie_one 
    @secondSelection = Movie.find_by_user_id(session[:user_id]).movie_two
    @thirdSelection = Movie.find_by_user_id(session[:user_id]).movie_three
    @fourthSelection = Movie.find_by_user_id(session[:user_id]).movie_four 
  end

 
end
