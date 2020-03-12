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
end
