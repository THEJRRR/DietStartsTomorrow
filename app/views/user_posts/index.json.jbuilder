json.array!(@user_posts) do |user_post|
  json.extract! user_post, :id, :post, :time
  json.url user_post_url(user_post, format: :json)
end
