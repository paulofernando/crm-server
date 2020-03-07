class Contact < ApplicationRecord
  belongs_to :court_case, optional: true
  validate :court_case_cannot_have_contacts_with_same_role

  def court_case_cannot_have_contacts_with_same_role
    if court_case_id.present?
      court_case = CourtCase.find(court_case_id)
      if (court_case.contacts.where(:case_role => case_role).exists?)
        errors.add(:case_role, "Another contact with same role is already attached to case")
      end
    end
  end
end
