json.array!(@image_posts) do |image_post|
  json.extract! image_post, :id, :name
  json.url image_post_url(image_post, format: :json)
end
