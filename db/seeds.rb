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
  title: "Interview with John - 9:30am",
  criteria: "Please provide your feedback for this candidate."
)

Topic.create(
  title: "Interview with Stephanie - 11:00am",
  criteria: "Please provide your feedback for this candidate."
)

Topic.create(
  title: "Interview with Chris - 1:30pm",
  criteria: "Please provide your feedback for this candidate."
)

Topic.create(
  title: "Interview with Jessica - 4:00pm",
  criteria: "Please provide your feedback for this candidate."
)
