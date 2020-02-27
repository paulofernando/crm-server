module Types
  class CaseType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :description, String, null: true
    field :value, String, null: true
    field :court_date, String, null: true
    field :contacts, [Types::ContactType], null: true
  end
end
