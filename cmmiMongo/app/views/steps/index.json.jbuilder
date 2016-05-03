json.array!(@steps) do |step|
  json.extract! step, :id, :t_description, :n_practice, :n_yestStep, :n_noStep, :t_typeStep, :n_rol
  json.url step_url(step, format: :json)
end
