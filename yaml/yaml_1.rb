require "yaml/store"

db = YAML::Store.new("db/test.yml")

db.transaction do
  db[:name] = "Bob"
end

db.transaction(true) do
  p db[:name]
end