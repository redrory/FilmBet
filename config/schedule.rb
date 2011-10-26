#every 2.minutes do	
every :monday, :at => '3pm' do
	runner "FeedEntry.deleteTable", :environment => :development
	runner "FeedEntry.update_from_feed('http://www.fandango.com/rss/top10boxoffice.rss')" , :environment => :development
end