#encoding:utf-8
class PortfolioTwoController < ApplicationController
  skip_before_filter :authorize
  def show
    @album = Album.find(params[:album_id])
    @images = @album.images.paginate(:page => params[:page], :per_page => 12, :order => 'updated_at DESC')
  end
end
