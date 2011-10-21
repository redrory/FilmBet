class NewFeedEntry < ActiveRecord::Base
	def self.update_from_feed(feed_url)
    new_movie_feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    new_movie_feed.entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :title         => entry.title,
          :guid         => entry.id
        )
      end
    end
  end 
end

#feed_url = http://www.fandango.com/rss/newmovies.rss