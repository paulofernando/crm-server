module Types
  class ContactType < Types::BaseObject
    field :id, ID, null: false
    field :first_name, String, null: false
    field :last_name, String, null: false
    field :case_role, String, null: false
    field :email, String, null: false
    field :court_case, Types::CourtCaseType, null: true
  end
end
