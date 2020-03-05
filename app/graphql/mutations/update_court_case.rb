module CourtCases
  class Mutations::UpdateCourtCase < Mutations::BaseMutation
    description "Update a court case and return the updated case"
    argument :id, ID, required: true
    argument :title, String, required: false
    argument :description, String, required: false
    argument :value, Float, required: false
    argument :court_date, String, required: false

    field :court_case, Types::CourtCaseType, null: false
    field :errors, [String], null: false

    def resolve(id:, **args)
      court_case = CourtCase.find(id)
      if court_case.update(args)
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
