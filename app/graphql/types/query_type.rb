module Types
  class QueryType < Types::BaseObject
    # /cases
    field :cases, [Types::CourtCaseType], null: false

    def cases
      CourtCase.all
    end

    # /case/:id
    field :case, Types::CourtCaseType, null: false do
      description "Find a case by ID"
      argument :id, ID, required: true
    end

    def case(id:)
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
