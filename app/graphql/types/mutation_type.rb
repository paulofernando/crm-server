module Types
  class MutationType < Types::BaseObject
    field :create_contact, mutation: Mutations::CreateContact
    field :update_contact, mutation: Mutations::UpdateContact
    field :destroy_contact, mutation: Mutations::DestroyContact
    field :create_court_case, mutation: Mutations::CreateCourtCase
    field :update_court_case, mutation: Mutations::UpdateCourtCase
    field :create_contact_court_case, mutation: Mutations::CreateContactCourtCase
  end
end
