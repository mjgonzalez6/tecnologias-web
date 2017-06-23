json.extract! comment, :id, :suggestion_id, :user_id, :text, :created_at, :updated_at
json.url comment_url(comment, format: :json)
