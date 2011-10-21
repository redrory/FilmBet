class CreateNewFeedEntries < ActiveRecord::Migration
  def change
    create_table :new_feed_entries do |t|
      t.string :title
      t.string :guid

      t.timestamps
    end
  end
end
