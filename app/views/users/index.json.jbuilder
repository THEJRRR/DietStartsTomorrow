json.array!(@users) do |user|
  json.extract! user, :id, :Name, :Email, :DateOfBirth, :Bio, :Age
  json.url user_url(user, format: :json)
end
