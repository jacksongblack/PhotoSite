#encoding:utf-8
class SessionsController < ApplicationController
  before_filter :create_admin
  skip_before_filter :authorize

  # GET /sessions/new
  # GET /sessions/new.json
  def new
    @user = User.new
  end
  # POST /sessions
  # POST /sessions.json
  def create
    if user = User.authenticate(params[:name],params[:password])
      session[:user_id] = user.id
      redirect_to home_url,:alert => "登录成功"
    else
      redirect_to login_url,:alert => "账户或密码错误"
    end
  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    session[:user_id] = nil
    redirect_to home_url ,:alert => "退出"
  end
  def create_admin
    puts User.all.first
    if User.all.first.nil?
      User.create({:name => "admin",
                   :password =>"admin",
                  }).save
    end

  end
end
