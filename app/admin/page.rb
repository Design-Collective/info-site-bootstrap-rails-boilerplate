ActiveAdmin.register Page do
  
  form do |f|
    f.inputs do
      f.text_area :body, :class => 'ckeditor'
    end
    f.buttons
  end

end
