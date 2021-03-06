class ToppagesController < ApplicationController
  def index
    if logged_in? 
      @micropost = current_user.microposts.build
      @microposts = current_user.feed_microposts.order('created_at DESC').page(params[:page])
      @favorites = current_user.favorites.build
    end
  end
end
