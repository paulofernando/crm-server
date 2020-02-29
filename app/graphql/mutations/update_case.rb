module Cases
  class Mutations::UpdateCase < Mutations::BaseMutation
    description "Update a case and return the updated case"
    argument :id, ID, required: true
    argument :title, String, required: true
    argument :description, String, required: true
    argument :value, Float, required: true
    argument :court_date, String, required: true

    field :case, Types::CaseType, null: false
    field :errors, [String], null: false

    def resolve(id:, title:, description:, value:, court_date:)
      courtCase = Case.find(id)

      if courtCase.update(title: title, description: description, value: value, court_date: court_date)
        {
          case: courtCase,
          errors: [],
        }
      else
        {
          case: nil,
          errors: courtCase.errors.full_messages,
        }
      end
    end
  end
end
