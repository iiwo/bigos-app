module BigosApp
  class InstalledModule < ActiveRecord::Base
    attr_accessible :name, :page_element
  end
end
