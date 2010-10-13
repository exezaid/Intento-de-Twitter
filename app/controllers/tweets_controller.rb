class TweetsController < ApplicationController
  def index
#    @user = User.find(params[:user_id])
    @tweets = Tweet.where("user_id = ?", params[:user_id] )

    respond_to do |format|
      format.html
      format.xml  { render :xml => @tweet }
    end
  end
  def timeline
    @all_tweets = Tweet.order("created_at desc").limit(20)
    
  end
end
