json.array!(@users) do |user|
  json.extract! user, :id, :fullname, :email, :repo, :url, :oop, :modular, :workflow, :testing, :database, :problem, :javascript, :html, :css, :team, :self, :communication, :debugging
  json.url user_url(user, format: :json)
end
