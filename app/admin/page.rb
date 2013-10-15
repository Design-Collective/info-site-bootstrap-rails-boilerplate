ActiveAdmin.register Page do
  index do
    column :page_title
    default_actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    f.inputs "Details" do
      f.input :meta_title
      f.input :meta_description
      f.input :page_title
      f.input :header_image
    end
    f.inputs "Body Content" do
      f.text_area :body, :class => 'ckeditor', :label => "Body Content"
    end
    f.buttons
  end

end
