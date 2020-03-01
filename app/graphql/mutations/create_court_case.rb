module CourtCases
  class Mutations::CreateCourtCase < Mutations::BaseMutation
    description "Create a court case and retrieve it"
    argument :title, String, required: true
    argument :description, String, required: false
    argument :value, Float, required: true
    argument :court_date, String, required: true

    field :court_case, Types::CourtCaseType, null: false
    field :errors, [String], null: false

    def resolve(title:, description: nil, value:, court_date:)
      courtCase = CourtCase.new(title: title, description: description, value: value, court_date: court_date)
      if courtCase.save
        {
          court_case: courtCase,
          errors: [],
        }
      else
        {
          court_case: nil,
          errors: courtCase.errors.full_messages,
        }
      end
    end
  end
end
