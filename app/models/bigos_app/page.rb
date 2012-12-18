module BigosApp
  class Page < ActiveRecord::Base
    attr_accessible :elements, :is_visible, :label, :name, :page_template_id, :position, :type, :parent_page_id
    belongs_to :parent_page, :foreign_key=>:parent_page_id, :class_name=>"BigosApp::Page"
    has_many :subpages, :foreign_key=>:parent_page_id, :class_name=>"BigosApp::Page"
    belongs_to :page_template

    scope :root, ->{where(:parent_page_id=>nil)}

  end
end
