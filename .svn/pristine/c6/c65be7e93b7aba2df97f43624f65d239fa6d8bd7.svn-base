#encoding:utf-8
class UsersController < ApplicationController
  # GET /users
  # GET /users.json

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(session[:user_id])
  end

  # GET /users/new
  # GET /users/new.json

  # GET /users/1/edit
  def edit
    @user = User.find(session[:user_id])
  end


  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(session[:user_id])
    respond_to do |format|
      if @user.update_attributes(name:params[:post][:name],password:params[:password])
        format.html { redirect_to home_path, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
