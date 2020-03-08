module CourtCases
  class Mutations::CreateCourtCase < Mutations::BaseMutation
    description "Create a court case and retrieve it"
    argument :title, String, required: true
    argument :description, String, required: false
    argument :value, Float, required: true
    argument :court_date, String, required: true

    field :court_case, Types::CourtCaseType, null: false
    field :errors, [String], null: false

    def resolve(**args)
      court_case = CourtCase.new(**args)
      if court_case.save
        {
          court_case: court_case,
          errors: [],
        }
      else
        {
          court_case: nil,
          errors: court_case.errors.full_messages,
        }
      end
    end
  end
end
