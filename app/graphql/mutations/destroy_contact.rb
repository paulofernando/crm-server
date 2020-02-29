module Contacts
  class Mutations::DestroyContact < Mutations::BaseMutation
    argument :id, ID, required: true

    field :contact, Types::ContactType, null: false
    field :errors, [String], null: false

    def resolve(id:)
      contact = Contact.find(id)
      if contact.destroy()
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
