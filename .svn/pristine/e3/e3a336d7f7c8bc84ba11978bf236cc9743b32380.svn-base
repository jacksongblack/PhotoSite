#encoding:utf-8
class ImagesController < ApplicationController
  # GET /images
  # GET /images.
  def index
    @images = Image.order("created_at").paginate :page=>params[:page]||1,:per_page=>9

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @images }
    end
  end

  # GET /images/1
  # GET /images/1.json
  def show
    @image = Image.find(params[:id])

    respond_to do |format|
      format.html # error.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/new
  # GET /images/new.json
  def new
    @image = Image.new
    @image.album = Album.find(params[:album_id])
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @image }
    end
  end

  # GET /images/1/edit
  def edit
    @image = Image.find(params[:id])
  end

  # POST /images
  # POST /images.jshttp://0.0.0.0:3001on
  def create
    @image = Image.new(params[:image])
    unless @image.album.images.count.eql?(10)


    respond_to do |format|
      if @image.save
        format.html { redirect_to new_image_path(:album_id=>@image.album_id), alert: '保存成功' }
        format.json { render json: @image, status: :created, location: @image }
      else
        format.html { render action: "new" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
    else
      redirect_to home_path,:alert => "超过图片张数限制"
    end
  end

  # PUT /images/1
  # PUT /images/1.json
  def update
    @image = Image.find(params[:id])

    respond_to do |format|
      if @image.update_attributes(params[:image])
        format.html { redirect_to @image, alert: '更新成功' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to home_path,:alert => "删除完成"
  end
end
