module BigosApp
  class Product < ActiveRecord::Base
    attr_accessible :description, :name, :position, :price, :product_category_id, :type
  end
end
