module BigosApp
  class GalleryImage < ActiveRecord::Base
    attr_accessible :gallery_id, :href, :image, :position, :title, :type
  end
end
