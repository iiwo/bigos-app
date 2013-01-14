module BigosApp

  class TextBlock < ActiveRecord::Base

    attr_accessible :content, :page_element_id, :position, :title, :type

  end

end
