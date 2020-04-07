module FavoritesHelper
  
  def favorite
    @favorite_topics = current_user.favorite_topics
  end
  
end
