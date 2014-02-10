json.array!(@profiles) do |profile|
  json.extract! profile, :id, :name, :location, :facebook, :github, :bio, :user_id
  json.url profile_url(profile, format: :json)
end
