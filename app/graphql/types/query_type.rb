module Types
  class QueryType < Types::BaseObject
    # /cases
    field :cases, [Types::CaseType], null: false

    def cases
      Case.all
    end

    # /case/:id
    field :case, Types::CaseType, null: false do
      description 'Find a case by ID'
      argument :id, ID, required: true
    end

    def case(id:)
      Case.find(id)
    end

    # /contacts
    field :contacts, [Types::ContactType], null: false

    def contacts
      Contact.all
    end

    # /contact/:id
    field :contact, Types::ContactType, null: false do
      description 'Find a contact by ID'
      argument :id, ID, required: true
    end

    def contact(id:)
      Contact.find(id)
    end

  end
end
