class FeedEntry < ActiveRecord::Base
  #feed_url ="http://www.fandango.com/rss/top10boxoffice.rss"
  feed_url = "http://movies.msn.com/rss/topboxoffice"
	 def self.update_from_feed(feed_url)
    feed = Feedzirra::Feed.fetch_and_parse(feed_url)
    feed.entries.each do |entry|
      #unless exists? :guid => entry.id
        create(
          :title         => entry.title[0..-10],
          :guid         => entry.id
        )
      end
    end
  #end 
  
  def self.deleteTable
    FeedEntry.destroy_all
  end 

end

