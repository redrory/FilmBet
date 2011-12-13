class NewFeedEntry < ActiveRecord::Base
	def self.update_from_feed(feed_url)
    new_movie_feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    new_movie_feed.entries.each do |entry|
      #unless exists? :guid => entry.id
        create(
          :title         => entry.title,
          :guid         => entry.id
        )
      end
    end
 

  def self.deleteTable
    NewFeedEntry.destroy_all
  end 
end

