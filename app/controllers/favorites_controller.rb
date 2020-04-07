class FavoritesController < ApplicationController
 #before_action :favorite, only: :index
  
  def index

  end
  
  def create
    
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.topic_id = params[:topic_id]
    
    if favorite.save
      redirect_to topics_path, success: 'お気に入りに登録しました'
    else
      redirect_to topics_path, danger: 'お気に入り登録に失敗しました'
    end
  end
  
  def destroy
    unfavorite = Favorite.find_by(params[:id])
    unfavorite.destroy
     redirect_to topics_path, success: 'お気に入りを解除しました'
  end
  
    
    
  
end
