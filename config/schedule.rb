#every :monday, :at => '3pm' do
#every 2.minutes do	
#every :monday, :at => '3pm' do

every 3.minutes do	
	runner "FeedEntry.deleteTable",  :environment => :development,  :environment => :production
	runner "FeedEntry.update_from_feed('http://www.fandango.com/rss/top10boxoffice.rss')" ,  :environment => :development, :environment => :production
end

#every :monday, :at => '5pm' do
every 3.minutes do	
	runner "NewFeedEntry.deleteTable",  :environment => :development,  :environment => :production
	runner "NewFeedEntry.update_from_feed('http://www.fandango.com/rss/newmovies.rss')" ,  :environment => :development,  :environment => :production
end