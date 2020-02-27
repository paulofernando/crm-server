module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
    field :create_case, mutation: Mutations::CreateCase
  end
end
