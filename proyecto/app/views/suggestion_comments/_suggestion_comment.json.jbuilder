json.extract! suggestion_comment, :id, :suggestion_id, :user_id, :text, :created_at, :updated_at
json.url suggestion_comment_url(suggestion_comment, format: :json)
