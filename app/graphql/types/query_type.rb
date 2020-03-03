module Types
  class QueryType < Types::BaseObject
    # /courtCases
    field :court_cases, [Types::CourtCaseType], null: false

    def court_cases
      CourtCase.all
    end

    # /courtCase/:id
    field :court_case, Types::CourtCaseType, null: false do
      description "Find a case by ID"
      argument :id, ID, required: true
    end

    def court_case(id:)
      CourtCase.find(id)
    end

    # /contacts
    field :contacts, [Types::ContactType], null: false

    def contacts
      Contact.all
    end

    # /contact/:id
    field :contact, Types::ContactType, null: false do
      description "Find a contact by ID"
      argument :id, ID, required: true
    end

    def contact(id:)
      Contact.find(id)
    end
  end
end
