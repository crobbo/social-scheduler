json.extract! post, :id, :content, :user_id, :schedule_time, :created_at, :updated_at
json.url post_url(post, format: :json)
