module BigosApp
  class Page < ActiveRecord::Base
    extend FriendlyId
    friendly_id :name, use: :slugged

    attr_accessible :elements, :is_visible, :label, :name, :page_template_id, :position, :type, :template, :slug,
                    :parent_page_id, :page_elements_attributes
    belongs_to :parent_page, :foreign_key=>:parent_page_id, :class_name=>"BigosApp::Page"
    has_many :subpages, :foreign_key=>:parent_page_id, :class_name=>"BigosApp::Page"
    has_many :page_elements, :dependent => :destroy
    belongs_to :page_template
    before_update :check_template


    validates :page_template, :label, :name, :position, :presence => true

    accepts_nested_attributes_for :page_elements

    scope :root, ->{where(:parent_page_id=>nil).order(:position)}
    default_scope order('position')

    def check_template
      if Page.find(self.id).page_template_id != self.page_template_id
        self.page_elements.destroy_all
        page_template =  BigosApp::PageTemplate.find self.page_template_id
        page_template.getPageElements self.id
      end
    end

    def render_template
      unless self.template.blank?
        "../../" + self.template
      else
        "bigos_app/pages/show"
      end
    end

  end
end
