json.array!(@users) do |user|
  json.extract! user, :id, :firstName, :lastName, :nickName, :school, :job, :birthdate
  json.url user_url(user, format: :json)
end
