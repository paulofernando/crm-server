module Cases
  class Mutations::DestroyCase < Mutations::BaseMutation
    argument :id, ID, required: true

    field :case, Types::CaseType, null: false
    field :errors, [String], null: false

    def resolve(id:)
      courtCase = Case.find(id)
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
