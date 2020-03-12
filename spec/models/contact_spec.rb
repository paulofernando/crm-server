require "rails_helper"

describe Contact do
  it "valid if first name, last name, case role and email are not nil" do
    contact = Contact.new(first_name: "John",
                          last_name: "Smith",
                          case_role: "Judge",
                          email: "js@gmail.com")

    expect(contact).to be_valid
  end

  it "invalid because fields are nil" do
    contact = Contact.new(first_name: nil,
                          last_name: nil,
                          case_role: nil,
                          email: nil)

    contact.valid?
    expect(contact.errors[:first_name]).to include("can't be blank")
    expect(contact.errors[:last_name]).to include("can't be blank")
    expect(contact.errors[:case_role]).to include("can't be blank")
    expect(contact.errors[:email]).to include("can't be blank")
  end

  it "valid contact linked to one case" do
    court_case = CourtCase.create(:title => "Title 2",
                                  :description => "Description 2",
                                  :value => 1000.00,
                                  :court_date => "01-01-2020")

    court_case.contacts.create(:first_name => "John",
                               :last_name => "Smith",
                               :case_role => "Judge",
                               :email => "js@gmail.com",
                               :court_case_id => court_case.id)

    expect(court_case).to be_valid
  end

  it "invalid because another contact with same role is liked to court case" do
    court_case = CourtCase.create(:title => "Title 2",
                                  :description => "Description 2",
                                  :value => 1000.00,
                                  :court_date => "01-01-2020")

    contact = Contact.create(:first_name => "John",
                             :last_name => "Smith",
                             :case_role => "Judge",
                             :email => "js@gmail.com",
                             :court_case_id => court_case.id)

    contact_2 = Contact.create(:first_name => "Maria",
                               :last_name => "Souza",
                               :case_role => "Judge",
                               :email => "js2@gmail.com",
                               :court_case_id => court_case.id)

    court_case.contacts.push(contact)
    court_case.contacts.push(contact_2)

    expect(court_case).to_not be_valid
    expect(contact_2.errors[:case_role]).to include("Another contact with same role is already attached to case")
  end

  it "four valid contacts linked to same case" do
    court_case = CourtCase.create(:title => "Title 2",
                                  :description => "Description 2",
                                  :value => 1000.00,
                                  :court_date => "01-01-2020")

    court_case.contacts.create(:first_name => "John",
                               :last_name => "Smith",
                               :case_role => "Judge",
                               :email => "js@gmail.com",
                               :court_case_id => court_case.id)

    court_case.contacts.create(:first_name => "Maria",
                               :last_name => "Souza",
                               :case_role => "Prosecutor",
                               :email => "ms@gmail.com",
                               :court_case_id => court_case.id)

    court_case.contacts.create(:first_name => "Adriano",
                               :last_name => "Silva",
                               :case_role => "Barrister",
                               :email => "as@gmail.com",
                               :court_case_id => court_case.id)

    court_case.contacts.create(:first_name => "Bob",
                               :last_name => "Lee",
                               :case_role => "Accused",
                               :email => "bl@gmail.com",
                               :court_case_id => court_case.id)

    expect(court_case).to be_valid
  end
end
