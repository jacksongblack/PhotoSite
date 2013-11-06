class Image < ActiveRecord::Base
  attr_accessible :describer, :photo, :album_id,:photo_cache
  mount_uploader :photo, PhotoUploader
  belongs_to :album
end
