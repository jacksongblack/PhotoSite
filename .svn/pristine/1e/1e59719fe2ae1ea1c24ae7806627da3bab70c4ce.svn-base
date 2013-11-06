#encoding:utf-8
class HomeController < ApplicationController
  layout 'application'
  skip_before_filter :authorize

  def home_page
    @theme = Theme.find_by_name("主页")
  begin @album =  @theme.albums.first
  rescue
    redirect_to error_path
  end
    @images =  @album.images.order("created_at").paginate :page=>params[:page]||1,:per_page=>10
  end
end