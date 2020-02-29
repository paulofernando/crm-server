module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
    field :update_contact, mutation: Mutations::UpdateContact
    field :create_case, mutation: Mutations::CreateCase
    field :update_case, mutation: Mutations::UpdateCase
  end
end
