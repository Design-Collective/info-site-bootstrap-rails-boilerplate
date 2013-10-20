class Page < ActiveRecord::Base
  has_and_belongs_to_many :categories, join_table: "categories_pages"

  validates :categories, presence: true

  validates :title, presence: true,
                    length: { minimum: 5 }

  mount_uploader :header_image, HeaderImageUploader

  #@categories = @page.categories

  # Mercury Editing (Still not Init)
  MERCURY_FIELDS = [:title, :body]

  def save_from_mercury(params)
    MERCURY_FIELDS.each do |field|
      if params && params[:content] && params[:content][field] && params[:content][field][:value]
        send "#{field}=", params[:content][field][:value]
      end
    end
    save!
  end
end
