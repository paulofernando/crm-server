module Types
  class ContactType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :case_role, String, null: true
    field :email, String, null: true
  end
end
