module BigosApp
  class Page < ActiveRecord::Base
    attr_accessible :elements, :is_visible, :label, :name, :page_template_id, :position, :type, :parent_page_id
    belongs_to :parent_page, :foreign_key=>:parent_page_id, :class_name=>"BigosApp::Page"
    has_many :subpages, :foreign_key=>:parent_page_id, :class_name=>"BigosApp::Page"
    has_many :page_elements, :dependent => :destroy
    belongs_to :page_template
    before_update :check_template

    scope :root, ->{where(:parent_page_id=>nil)}

    def check_template
      if Page.find(self.id).page_template_id != self.page_template_id
        self.page_elements.destroy_all
        page_template =  BigosApp::PageTemplate.find self.page_template_id
        page_template.getPageElements self.id
      end
    end

  end
end
