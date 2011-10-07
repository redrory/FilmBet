class FeedEntry < ActiveRecord::Base
	 def self.update_from_feed(feed_url)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    feed.entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :title         => entry.title,
          :guid         => entry.id
        )
      end
    end
  end
end
