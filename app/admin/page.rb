ActiveAdmin.register Page do

  menu :priority => 1

  index do
    column :title
    default_actions
  end
  
  show :title => :title do
    h3 page.title
    attributes_table do
      row :title
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
      f.input :title
      f.input :header_image, as: :file, hint: (f.template.image_tag(f.object.header_image.small_thumb.url) if f.object.header_image?)
    end
    f.inputs "Body Content" do
      f.text_area :body, :class => 'ckeditor', :label => "Body Content"
    end
    f.buttons
  end

end
