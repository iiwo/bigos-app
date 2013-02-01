module BigosApp

  class PageElement < ActiveRecord::Base

    attr_accessible :is_admin_visible, :name, :type, :page_id, :position,
                    :text_block_attributes, :gallery_attributes, :product_category_attributes
    has_one :page_module

    default_scope order('position')

    class << self

      def subclasses

        a = [
            BigosApp::TextBlockElement.name,
            BigosApp::GalleryElement.name,
        ]

        BigosApp::InstalledModule.all.each do |m|
          a << m.page_element
        end

        a
      end

      def class_name
        self.name
      end

    end

  end

end
