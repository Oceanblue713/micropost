class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:id])
    current_user.favorite(micropost)
    flash[:success] = 'Favorite'
    redirect_to users_path
  end

  def destroy
  end
end
