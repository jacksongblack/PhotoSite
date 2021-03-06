#encoding:utf-8
class AlbumsController < ApplicationController
  # GET /albums
  # GET /albums.json
  before_filter :authorize ,:except => :index

  def index
    params_theme = {"Wedding tracking" => "婚纱跟拍", "Personalized wedding" => "个性婚纱", "Art Gallery" => "艺术写真", "Makeup show" => "妆面展示"}
    @theme = Theme.find_by_name(params_theme[params[:theme_name]]) ||Theme.find_by_id(params[:theme_id])
   begin
    @albums = @theme.albums.paginate :page=>params[:page]||1,:per_page=>9
  rescue
    redirect_to error_path
   end
    respond_to do |format|
      format.html # index.html.erb
      format.js
    end
  end

  # GET /albums/1
  # GET /albums/1.json
  def show
    @album = Album.find(params[:id])

    respond_to do |format|
      format.html # error.html.erb
      format.json { render json: @album }
    end
  end

  # GET /albums/new
  # GET /albums/new.json
  def new
    @album = Album.new
    @album.theme =Theme.find_by_id(params[:theme_id])
  end

  # GET /albums/1/edit
  def edit
    @album = Album.find(params[:id])
  end

  # POST /albums
  # POST /albums.json
  def create
    @album = Album.new(params[:album])
    respond_to do |format|
      if @album.save
        format.html { redirect_to new_album_path(:theme_id=>@album.theme_id), :alert =>  '新相册创建成功' }
        format.json { render json: @album, status: :created, location: @album }
      else
        format.html { render action: "new" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /albums/1
  # PUT /albums/1.json
  def update
    @album = Album.find(params[:id])

    respond_to do |format|
      if @album.update_attributes(params[:album])
        format.html { redirect_to :back, :alert=>'修改成功' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albums/1
  # DELETE /albums/1.json
  def destroy
    @album = Album.find(params[:id])
    @album.destroy

    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end
end
