json.extract! blog, :id, :name, :owner, :user_id, :description, :image, :created_at, :updated_at
json.url blog_url(blog, format: :json)
