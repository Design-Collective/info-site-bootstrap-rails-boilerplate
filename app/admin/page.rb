ActiveAdmin.register Page do

  menu :priority => 2
  
  #sidebar "Category and Tags", only: [:show, :edit] do
  #  ul do
  #    li link_to("Page Categories", admin_page_category_path(page))
  #  end
  #end

  index do
    column :title
    #column :categories do |post|
    #  table_for pages.categories.order('title ASC') do
    #    column do |category|
    #      link_to category.title, [ :admin, category ]
    #    end
    #  end
    #end
    default_actions
  end
  
  show :title => :title do
    h3 page.title
    attributes_table do
      row :title
      row :header_image do
         image_tag page.header_image_url(:small_thumb)
      end
      #table_for page.categories do
      #  column "Categories" do |category|
      #    link_to category [ :admin, category ]
      #  end
      #end
      row :body
    end
  end
  
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Details" do
      f.input :meta_title
      f.input :meta_description
      f.input :title
      f.input :slug, hint: 'Add dashes between words: "this-is-a-page-slug"'
      f.input :header_image, as: :file, hint: (f.template.image_tag(f.object.header_image.small_thumb.url) if f.object.header_image?)
    end
    f.inputs "Category / Tags" do
      f.input :categories, :as => :check_boxes 
    end
    f.inputs "Sliders" do
      f.has_many :page_sliders do |slider_f|
        if !slider_f.object.nil?
          # show the destroy checkbox only if it is an existing appointment
          # else, there's already dynamic JS to add / remove 
          slider_f.input :_destroy, :as => :boolean, :label => "Mark for Deletion?"
        end

        slider_f.input :carousel_title # it should automatically generate a drop-down select to choose from your existing patients
        slider_f.text_area :carousel_content
        slider_f.input :carousel_bg_img, as: :file
      end
    end
    f.inputs "Body Content" do
      f.text_area :body, :class => 'ckeditor', :label => "Body Content"
    end
    f.buttons
  end

end
