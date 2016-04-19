json.array!(@problems) do |problem|
  json.extract! problem, :id, :name, :solution
  json.url problem_url(problem, format: :json)
end
