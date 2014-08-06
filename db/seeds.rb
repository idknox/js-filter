User.destroy_all
TaskList.destroy_all

User.create!(
  name: "Some User",
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password'
)

User.create!(
  name: "Bob",
  email: 'user2@example.com',
  password: 'password',
  password_confirmation: 'password'
)

TaskList.create!(name: "Work List")
TaskList.create!(name: "Household Chores")

TaskList.destroy_all
