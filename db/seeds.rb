5.times do
  court_case = CourtCase.create(title: Faker::Lorem.sentence(word_count: 3), description: Faker::Lorem.sentence(word_count: rand(50..150)), value: Faker::Number.decimal(l_digits: 2),
                                court_date: Faker::Date.forward(days: 100))

  court_case.contacts.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, case_role: "Accused", email: Faker::Internet.email)
  court_case.contacts.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, case_role: "Barrister", email: Faker::Internet.email)
  court_case.contacts.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, case_role: "Prosecutor", email: Faker::Internet.email)
  court_case.contacts.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, case_role: "Judge", email: Faker::Internet.email)
end
