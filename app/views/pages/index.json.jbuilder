json.array!(@pages) do |page|
  json.extract! page, :meta_title, :meta_description, :title, :header_image, :body
  json.url page_url(page, format: :json)
end
