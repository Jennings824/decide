User.destroy_all
User.create(
  email: "MichaelJennings@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

User.create(
  email: "Alexx@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

User.create(
  email: "cmtern@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

User.create(
  email: "AJFlattery@gmail.com",
  password: "123456",
  password_confirmation: "123456"
)

Topic.destroy_all
Topic.create(
  title: "Interview",
  criteria: "Interview with John"
)

Topic.create(
  title: "Interview 2",
  criteria: "Interview with Stephanie"
)

Topic.create(
  title: "Interview 3",
  criteria: "Interview with Chris"
)

Topic.create(
  title: "Interview 4",
  criteria: "Interview with Andrew"
)
