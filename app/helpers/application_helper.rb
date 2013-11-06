module ApplicationHelper
  def find_user
     User.find_by_id(session[:user_id])
  end
end
