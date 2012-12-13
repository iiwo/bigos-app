module BigosApp
  class PageTemplate < ActiveRecord::Base
    attr_accessible :elements, :is_visible, :name, :position, :type
    has_many :pages
  end
end
