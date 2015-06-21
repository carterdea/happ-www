def user_attributes(overrides = {})
  {
    name: "John Doe",
    username: "jdoe12",
    email: "user@example.com",
    password: "secret",
  }.merge(overrides)
end