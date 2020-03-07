class Contact < ApplicationRecord
  belongs_to :court_case, optional: true
end
