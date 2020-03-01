module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
    field :update_contact, mutation: Mutations::UpdateContact
    field :destroy_contact, mutation: Mutations::DestroyContact
    field :create_case, mutation: Mutations::CreateCourtCase
    field :update_case, mutation: Mutations::UpdateCourtCase
    field :destroy_case, mutation: Mutations::DestroyCourtCase
  end
end
