module Cases
  class Mutations::DestroyCourtCase < Mutations::BaseMutation
    description "Destroy a court case and return the destroyed case"
    argument :id, ID, required: true

    field :case, Types::CourtCaseType, null: false
    field :errors, [String], null: false

    def resolve(id:)
      courtCase = CourtCase.find(id)
      if courtCase.destroy()
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
