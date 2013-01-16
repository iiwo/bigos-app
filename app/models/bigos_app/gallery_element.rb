module BigosApp
  class GalleryElement < PageElement
    has_one :gallery
    after_save :add_gallery

    accepts_nested_attributes_for :gallery

    def add_gallery
      self.gallery = BigosApp::Gallery.create if self.gallery.blank?
    end

    def self.class_name
      "Gallery"
    end

  end
end
