class Tweet < ActiveRecord::Base
  belongs_to :user
  validates :user, :presence => true
  validates :body, :presence => true, :length => {:minimum => 1, :maximum => 140}
  has_many :mentions 
  has_many :users, :through => :mentions
  has_many :retweets
  has_many :users_retweets, :through => :retweets, :source => :user
end
