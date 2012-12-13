module BigosApp
  class PageModule < ActiveRecord::Base
    attr_accessible :module_id, :name, :page_element_id
    belongs_to :page_element
  end
end
