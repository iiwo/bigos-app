module BigosApp
  class PageElement < ActiveRecord::Base
    attr_accessible :is_admin_visible, :name, :type
    has_one :page_module
  end
end
