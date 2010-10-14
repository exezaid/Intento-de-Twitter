class TweetsController < ApplicationController
  def index
    @tweets = Tweet.where("user_id = ?", params[:user_id] )

    respond_to do |format|
      format.html
      format.xml  { render :xml => @tweet }
    end
  end
  def timeline
    @all_tweets = Tweet.order("created_at desc").limit(20)

  end
  def rt
    @user_rt = Retweet.where("user_id = ?", params[:user_id])
  end
end

