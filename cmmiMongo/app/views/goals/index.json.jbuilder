json.array!(@goals) do |goal|
  json.extract! goal, :id, :n_processArea, :t_name, :t_description, :t_type
  json.url goal_url(goal, format: :json)
end
