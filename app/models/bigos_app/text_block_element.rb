module BigosApp
  class TextBlockElement < PageElement
    has_one :text_block, :dependent => :destroy
    after_save :add_text_block

    accepts_nested_attributes_for :text_block

    def add_text_block
      self.text_block = BigosApp::TextBlock.create if self.text_block.blank?
    end

    def self.class_name
      "Text Block"
    end

    def name
      self.text_block.title
    end

  end
end
