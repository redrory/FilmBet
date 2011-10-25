every 2.minutes do
	runner "FeedEntry.update_from_feed('http://www.fandango.com/rss/top10boxoffice.rss')"
end