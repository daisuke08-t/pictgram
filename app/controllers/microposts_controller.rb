class MicropostsController < ApplicationController
  
  
  def new
    @micropost = Micropost.new
    @topicid = params[:topic_id]
    @topic = Topic.find(params[:topic_id])
  end
  
  def create
    
    #binding.pry
    
    @micropost = Micropost.new(micropost_params)
    @micropost.user_id = current_user.id
    @micropost.topic_id = params[:micropost][:topic_id]
      
    if @micropost.save
      redirect_to topics_path, success: 'コメントを投稿しました'
    else
      flash[:danger] = "コメントの投稿に失敗しました"
      render :new
    end
  end
  
  
  private
  
  def micropost_params
   params.require(:micropost).permit(:coment)
  end
    
  
end
