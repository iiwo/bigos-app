module BigosApp
  class ProductCategory < ActiveRecord::Base
    attr_accessible :name, :parent_product_catagory_id, :product_element_id, :subcategories_attributes, :products_attributes
    has_many :subcategories, :foreign_key => :parent_product_catagory_id, :class_name => "BigosApp::ProductCategory", :dependent => :destroy
    has_many :products, :dependent => :destroy

    accepts_nested_attributes_for :subcategories, :products

  end
end
