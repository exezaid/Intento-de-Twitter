class CreateRetweets < ActiveRecord::Migration
  def self.up
    create_table :retweets do |t|
      t.belongs_to :tweet
      t.belongs_to :user
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :retweets
  end
end
