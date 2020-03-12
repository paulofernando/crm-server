require "rails_helper"

describe Contact do
  it "valid if first name, last name, case role and email are not null" do
    contact = Contact.new(first_name: "John",
                          last_name: "Smith",
                          case_role: "Judge",
                          email: "js@gmail.com")

    expect(contact).to be_valid
  end
end
