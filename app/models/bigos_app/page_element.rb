module BigosApp

  class PageElement < ActiveRecord::Base

    attr_accessible :is_admin_visible, :name, :type, :page_id, :position
    has_one :page_module

    default_scope order('position')

    class << self

      def subclasses
        BigosApp::InstalledModule.all.map(&:page_element)
      end

      def class_name
        self.name
      end

    end

  end

end
