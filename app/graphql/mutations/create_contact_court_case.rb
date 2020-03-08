class Mutations::CreateContactCourtCase < Mutations::BaseMutation
  description "Create a contact, a court case and link both"
  argument :first_name, String, required: true
  argument :last_name, String, required: true
  argument :case_role, Types::Enums::Role, required: true
  argument :email, String, required: true

  argument :title, String, required: true
  argument :description, String, required: false
  argument :value, Float, required: true
  argument :court_date, String, required: true

  field :court_case, Types::CourtCaseType, null: false
  field :contact, Types::ContactType, null: false
  field :errors, [String], null: false

  def resolve(first_name:, last_name:, case_role:, email:, title:, description: nil, value:, court_date:)
    court_case = CourtCase.new(title: title, description: description, value: value, court_date: court_date)
    contact = Contact.new(first_name: first_name, last_name: last_name, case_role: case_role, email: email)

    if court_case.save
      contact.court_case_id = court_case.id
      if contact.save
        {
          contact: contact,
          court_case: court_case,
          errors: [],
        }
      else
        {
          contact: nil,
          court_case: nil,
          errors: contact.errors.full_messages,
        }
      end
    else
      {
        contact: nil,
        court_case: nil,
        errors: contact.errors.full_messages,
      }
    end
  end
end
