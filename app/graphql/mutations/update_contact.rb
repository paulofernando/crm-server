module Contacts
  class Mutations::UpdateContact < Mutations::BaseMutation
    description "Update a contact and return the updated contact"
    argument :id, ID, required: true
    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :case_role, Types::Enums::Role, required: false
    argument :email, String, required: false
    argument :court_case_id, ID, required: false

    field :contact, Types::ContactType, null: false
    field :errors, [String], null: false

    def resolve(id:, **args)
      contact = Contact.find(id)
      if contact.update(args)
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
