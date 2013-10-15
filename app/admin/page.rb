ActiveAdmin.register Page do

  menu :priority => 1
  show :page_title => :name do
  end
  index do
    column :page_title
    default_actions
  end

  show do |page|
    h3 page.page_title
    attributes_table do
      row :page_title
      row :header_image do
         image_tag page.header_image_url(:small_thumb)
      end
      row :body
    end

  end
  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Details" do
      f.input :meta_title
      f.input :meta_description
      f.input :page_title
      f.input :header_image, as: :file, hint: (f.template.image_tag(f.object.header_image.small_thumb.url) if f.object.header_image?)
    end
    f.inputs "Body Content" do
      f.text_area :body, :class => 'ckeditor', :label => "Body Content"
    end
    f.buttons
  end

end
