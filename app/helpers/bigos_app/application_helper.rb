module BigosApp
  module ApplicationHelper

    def get_gallery_images_json gallery
      images_tab = Array.new
      gallery.gallery_images.each do |bi|
        images_tab.push({'image' => bi.image.url(:medium), 'title' => "", 'thumb' => bi.image.url(:thumb)})
      end
      images_tab.to_json
    end
  end
end
