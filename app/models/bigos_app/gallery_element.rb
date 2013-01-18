module BigosApp
  class GalleryElement < PageElement
    has_one :gallery, :dependent => :destroy
    has_many :gallery_images, :through => :gallery
    after_save :add_gallery

    accepts_nested_attributes_for :gallery

    scope :is_background, lambda{ where(is_background: true) }

    def add_gallery
      self.gallery = BigosApp::Gallery.create if self.gallery.blank?
    end

    def self.class_name
      "Gallery"
    end

    def name
      self.gallery.title
    end

  end
end
