#every :monday, :at => '3pm' do
#every 2.minutes do	
every :monday, :at => '3pm' do
	runner "FeedEntry.deleteTable", :environment => :development
	runner "FeedEntry.update_from_feed('http://www.fandango.com/rss/top10boxoffice.rss')" , :environment => :development
end

every :monday, :at => '5pm' do
	runner "NewFeedEntry.deleteTable", :environment => :development
	runner "NewFeedEntry.update_from_feed('http://www.fandango.com/rss/newmovies.rss')" , :environment => :development
end