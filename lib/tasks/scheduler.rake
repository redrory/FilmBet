desc "This take is called by the Heroku scheduler add-on"

task :update_feed => :environment do
    puts "Updating feed..."
    FeedEntry.deleteTable
    FeedEntry.update_from_feed('http://movies.msn.com/rss/topboxoffice')

    puts "done."
end

task :update_new_movies => :environment do
    puts "rottentomatoes grab"
    NewFeedEntry.deleteTable
    NewFeedEntry.update_from_feed('http://www.rottentomatoes.com/syndication/rss/opening.xml')

    puts "done."
end