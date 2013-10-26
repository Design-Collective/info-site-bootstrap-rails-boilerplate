class SliderImageUploader < BaseUploader
  
  version :small_thumb do
    process :resize_to_fill => [60, 60]
  end
  
end
