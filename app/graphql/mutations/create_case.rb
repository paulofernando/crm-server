class Mutations::CreateCase < Mutations::BaseMutation
    argument :title, String, required: true
    argument :description, String, required: true
    argument :value, String, required: true
    argument :court_date, String, required: true
  
    field :case, Types::CaseType, null: false
    field :errors, [String], null: false
  
    def resolve(title:, description:, value:, court_date:)
        courtCase = Case.new(title: title, description: description, value: value, court_date: court_date)
        if courtCase.save
            {
              case: courtCase,
              errors: []
            }
          else
            {
              case: nil,
              errors: courtCase.errors.full_messages
            }
      end
    end
  end