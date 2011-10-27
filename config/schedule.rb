#every 2.minutes do	
every :monday, :at => '3pm' do
	runner "FeedEntry.update_from_feed('http://www.fandango.com/rss/top10boxoffice.rss')" , :environment => :development
end

every 3.days do
	runner "NewFeedEntry.update_from_feed('http://www.fandango.com/rss/newmovies.rss')" , :environment => :development
end