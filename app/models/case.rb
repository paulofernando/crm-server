class Case < ApplicationRecord
    has_many :contacts
    validates_associated :contacts
    validates :title, presence: true
    validates :title, uniqueness: { message: "title should be unique, please try another one" }
    validates :value, numericality: { greater_than: 0 }
end
