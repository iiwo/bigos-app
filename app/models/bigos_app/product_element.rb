module BigosApp

  class ProductElement < PageElement
    has_one :product_category, :dependent => :destroy
    after_save :add_product_category

    accepts_nested_attributes_for :product_category

    def add_product_category
      self.product_category = BigosApp::ProductCategory.create if self.product_category.blank?
    end

    def self.class_name
      "Product"
    end

    def name
      self.product_category.name
    end
  end

end
