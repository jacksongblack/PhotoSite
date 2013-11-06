#encoding:utf-8
class ApplicationController < ActionController::Base

  rescue_from ActionView::MissingTemplate,:with => :show_error
  rescue_from ActionView::Template::Error,:with => :show_error
  rescue_from ActionController::RoutingError, :with => :show_error
  rescue_from ActionController::UnknownController, :with => :show_error
  rescue_from ActiveRecord::RecordNotFound, :with => :show_error

  before_filter :authorize

  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to home_path,:notice => "请登录"
    end
  end
  def show_error
    redirect_to error_path
  end
end
