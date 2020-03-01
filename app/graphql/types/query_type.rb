module Types
  class QueryType < Types::BaseObject
    # /courtCases
    field :courtCases, [Types::CourtCaseType], null: false

    def courtCases
      CourtCase.all
    end

    # /courtCase/:id
    field :courtCase, Types::CourtCaseType, null: false do
      description "Find a case by ID"
      argument :id, ID, required: true
    end

    def courtCase(id:)
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
