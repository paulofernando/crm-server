# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# accused = Array.new
# barristers = Array.new
# judges = Array.new
# prosecutors = Array.new

# 3.times do
#     accused.push(create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:"ACCUSED", email:Faker::Internet.email))
# end

# 3.times do
#     judges.push(create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:"JUDGE", email:Faker::Internet.email))
# end

# 3.times do
#     barristers.push(create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:"BARRISTER", email:Faker::Internet.email))
# end

# 3.times do
#     prosecutors.push(create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:"PROSECUTOR", email:Faker::Internet.email))
# end

5.times do
    m_case = Case.create(title:Faker::Lorem.sentence(word_count: 3), description:Faker::Lorem.sentence(word_count: 5), value:Faker::Number.decimal(l_digits: 2),
        court_date:Faker::Date.forward(days: 100))
    
    m_case.contacts.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:"ACCUSED", email:Faker::Internet.email)
    m_case.contacts.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:"BARRISTER", email:Faker::Internet.email)
    m_case.contacts.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:"PROSECUTOR", email:Faker::Internet.email)
    m_case.contacts.create(first_name: Faker::Name.first_name, last_name:Faker::Name.last_name, case_role:"JUDGE", email:Faker::Internet.email)
end