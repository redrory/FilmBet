desc "This take is called by the Heroku scheduler add-on"

task :update_feed => :environment do
    puts "Updating feed..."
    FeedEntry.deleteTable
    FeedEntry.update_from_feed('http://www.fandango.com/rss/top10boxoffice.rss')

    puts "done."
end