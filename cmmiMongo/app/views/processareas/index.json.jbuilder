json.array!(@processareas) do |processarea|
  json.extract! processarea, :id, :n_level, :t_name, :t_description
  json.url processarea_url(processarea, format: :json)
end
