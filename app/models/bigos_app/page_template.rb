module BigosApp
  class PageTemplate < ActiveRecord::Base
    attr_accessible :elements, :is_visible, :name, :position, :type
    has_many :pages

    def getPageElements page_id
      @elements = JSON.parse(self.elements) unless self.elements.blank?
      @elements.each do |element|
        element.last.to_i.times do
          page_element = eval(element.first).create(:page_id => page_id)
        end
      end unless @elements.blank?
    end
  end
end
