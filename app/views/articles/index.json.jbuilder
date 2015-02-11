json.array!(@articles) do |article|
  json.extract! article, :id, :name, :email, :title, :comment, :url, :delete_key
  json.url article_url(article, format: :json)
end
