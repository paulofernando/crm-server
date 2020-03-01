module CourtCases
  class Mutations::CreateCourtCase < Mutations::BaseMutation
    description "Create a court case and retrieve it"
    argument :title, String, required: true
    argument :description, String, required: false
    argument :value, Float, required: true
    argument :court_date, String, required: true

    field :case, Types::CourtCaseType, null: false
    field :errors, [String], null: false

    def resolve(title:, description: nil, value:, court_date:)
      courtCase = CourtCase.new(title: title, description: description, value: value, court_date: court_date)
      if courtCase.save
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
