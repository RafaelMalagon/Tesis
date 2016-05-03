json.array!(@companies) do |company|
  json.extract! company, :id, :t_name, :t_logo, :t_slogan
  json.url company_url(company, format: :json)
end
