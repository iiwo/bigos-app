module BigosApp
  class TextBlockElement < PageElement
    has_one :text_block
    after_save :add_text_block, :dependent => :destroy

    def add_text_block
      self.text_block = BigosApp::TextBlock.create if self.text_block.blank?
    end

    def self.class_name
      "Text Block"
    end

  end
end
