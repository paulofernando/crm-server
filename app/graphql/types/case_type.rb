module Types
  class CaseType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :description, String, null: true
    field :value, String, null: false
    field :court_date, String, null: false
    field :contacts, [Types::ContactType], null: true
  end
end
