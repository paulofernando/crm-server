module Contacts
  class Mutations::UpdateContact < Mutations::BaseMutation
    description "Update a contact and return the updated contact"
    argument :id, ID, required: true
    argument :first_name, String, required: true
    argument :last_name, String, required: true
    argument :case_role, Types::Enums::Role, required: true
    argument :email, String, required: true
    argument :court_case_id, ID, required: true

    field :contact, Types::ContactType, null: false
    field :errors, [String], null: false

    def resolve(id:, first_name:, last_name:, case_role:, email:, court_case_id:)
      contact = Contact.find(id)
      if contact.update(first_name: first_name, last_name: last_name, case_role: case_role, email: email, court_case_id: court_case_id)
        {
          contact: contact,
          errors: [],
        }
      else
        {
          contact: nil,
          errors: contact.errors.full_messages,
        }
      end
    end
  end
end
