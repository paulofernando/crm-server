# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ----------------------------------------------------------------------------------------------

# AMOUNT_PER_ROLE = 3

# accused = Array.new
# barristers = Array.new
# judges = Array.new
# prosecutors = Array.new

# AMOUNT_PER_ROLE.times do
#     accused.push(Contact.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:'Accused', email:Faker::Internet.email))
# end

# AMOUNT_PER_ROLE.times do
#     judges.push(Contact.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:'Judge', email:Faker::Internet.email))
# end

# AMOUNT_PER_ROLE.times do
#     barristers.push(Contact.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:'Barrister', email:Faker::Internet.email))
# end

# AMOUNT_PER_ROLE.times do
#     prosecutors.push(Contact.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:'Prosecutor', email:Faker::Internet.email))
# end

# 5.times do
#     m_case = Case.create(title:Faker::Lorem.sentence(word_count: 3), description:Faker::Lorem.sentence(word_count: 5), value:Faker::Number.decimal(l_digits: 2),
#         court_date:Faker::Date.forward(days: 100))

#     m_case.contacts.push(accused[rand(AMOUNT_PER_ROLE - 1)])
#     m_case.contacts.push(judges[rand(AMOUNT_PER_ROLE - 1)])
#     m_case.contacts.push(barristers[rand(AMOUNT_PER_ROLE - 1)])
#     m_case.contacts.push(prosecutors[rand(AMOUNT_PER_ROLE - 1)])
# end

# ----------------------------------------------------------------------------------------------

5.times do
  court_case = CourtCase.create(title: Faker::Lorem.sentence(word_count: 3), description: Faker::Lorem.sentence(word_count: 5), value: Faker::Number.decimal(l_digits: 2),
                                court_date: Faker::Date.forward(days: 100))

  court_case.contacts.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, case_role: "Accused", email: Faker::Internet.email)
  court_case.contacts.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, case_role: "Barrister", email: Faker::Internet.email)
  court_case.contacts.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, case_role: "Prosecutor", email: Faker::Internet.email)
  court_case.contacts.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, case_role: "Judge", email: Faker::Internet.email)
end
