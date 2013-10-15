class Page < ActiveRecord::Base
  validates :page_title, presence: true,
                    length: { minimum: 5 }

  mount_uploader :header_image, HeaderImageUploader

  def display_name
    @page_title
  end

  # Mercury Editing (Still not Init)
  MERCURY_FIELDS = [:page_title, :body]

  def save_from_mercury(params)
    MERCURY_FIELDS.each do |field|
      if params && params[:content] && params[:content][field] && params[:content][field][:value]
        send "#{field}=", params[:content][field][:value]
      end
    end
    save!
  end
end
