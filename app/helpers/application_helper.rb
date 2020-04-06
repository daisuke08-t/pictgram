module ApplicationHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  
  def logged_in?
    !current_user.nil?
  end
  
  def logged_in_user
    unless logged_in?
    flash[:danger] = "ログインして下さい"
    redirect_to login_path
    end
  end
  
end
