class Mutations::CreateContact < Mutations::BaseMutation
    argument :first_name, String, required: true
    argument :last_name, String, required: true    
    argument :case_role, Types::Enums::Role, required: true
    argument :email, String, required: true
    argument :case_id, ID, required: true
  
    field :contact, Types::ContactType, null: false
    field :errors, [String], null: false
  
    def resolve(first_name:, last_name:, case_role:, email:, case_id:)
        contact = Contact.new(first_name: first_name, last_name: last_name, case_role: case_role, email: email, case_id: case_id)
        if contact.save
            {
              contact: contact,
              errors: []
            }
          else
            {
              contact: nil,
              errors: contact.errors.full_messages
            }
      end
    end
  end