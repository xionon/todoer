json.array!(@todos) do |todo|
  json.extract! todo, :id, :list_id
  json.url todo_url(todo, format: :json)
end
