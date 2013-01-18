module BigosApp
  class Gallery < ActiveRecord::Base
    attr_accessible :gallery_element_id, :title, :type, :is_background, :gallery_images_attributes
    has_many :gallery_images, :dependent => :destroy

    accepts_nested_attributes_for :gallery_images

  end
end
