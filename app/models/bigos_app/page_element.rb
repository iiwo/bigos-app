module BigosApp

  class PageElement < ActiveRecord::Base
    attr_accessible :is_admin_visible, :name, :type, :page_id, :position,
                    :text_block_attributes, :gallery_attributes, :product_category_attributes
    has_one :page_module


    class << self

      def subclasses
        [BigosApp::TextBlockElement, BigosApp::GalleryElement, BigosApp::ProductElement]
      end

      def class_name
        self.name
      end

    end

  end

end
