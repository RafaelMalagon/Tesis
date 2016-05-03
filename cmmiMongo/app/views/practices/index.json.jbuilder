json.array!(@practices) do |practice|
  json.extract! practice, :id, :t_name, :t_description, :n_goal
  json.url practice_url(practice, format: :json)
end
