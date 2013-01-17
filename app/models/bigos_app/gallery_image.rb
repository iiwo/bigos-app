module BigosApp
  class GalleryImage < ActiveRecord::Base
    attr_accessible :gallery_id, :href, :image, :position, :title, :type

    mount_uploader :image, GalleryImageUploader

  end
end
