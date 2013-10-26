class Slide < ActiveRecord::Base
	belongs_to :page
	mount_uploader :carousel_bg_img, SliderImageUploader
end
